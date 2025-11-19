@interface BMPersonEntity
- (BMPersonEntity)initWithNames:(id)a3 customId:(id)a4 contactId:(id)a5 emailAddresses:(id)a6 addresses:(id)a7 phoneNumbers:(id)a8 socialMediaHandles:(id)a9 attributes:(id)a10;
- (BMPersonEntity)initWithProto:(id)a3;
- (BMPersonEntity)initWithProtoData:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMPersonEntity

- (BMPersonEntity)initWithNames:(id)a3 customId:(id)a4 contactId:(id)a5 emailAddresses:(id)a6 addresses:(id)a7 phoneNumbers:(id)a8 socialMediaHandles:(id)a9 attributes:(id)a10
{
  v27 = a3;
  v26 = a4;
  v25 = a5;
  v24 = a6;
  v23 = a7;
  v22 = a8;
  v17 = a9;
  v18 = a10;
  v28.receiver = self;
  v28.super_class = BMPersonEntity;
  v19 = [(BMPersonEntity *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_names, a3);
    objc_storeStrong(&v20->_customId, a4);
    objc_storeStrong(&v20->_contactId, a5);
    objc_storeStrong(&v20->_emailAddresses, a6);
    objc_storeStrong(&v20->_addresses, a7);
    objc_storeStrong(&v20->_phoneNumbers, a8);
    objc_storeStrong(&v20->_socialMediaHandles, a9);
    objc_storeStrong(&v20->_attributes, a10);
  }

  return v20;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    customId = self->_customId;
    v7 = [v5 customId];
    if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:customId target:v7])
    {
      contactId = self->_contactId;
      v9 = [v5 contactId];
      if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:contactId target:v9])
      {
        names = self->_names;
        v11 = [v5 names];
        if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:names target:v11])
        {
          emailAddresses = self->_emailAddresses;
          v13 = [v5 emailAddresses];
          if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:emailAddresses target:v13])
          {
            phoneNumbers = self->_phoneNumbers;
            v25 = [v5 phoneNumbers];
            if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:phoneNumbers target:?])
            {
              socialMediaHandles = self->_socialMediaHandles;
              v24 = [v5 socialMediaHandles];
              if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:socialMediaHandles target:?])
              {
                addresses = self->_addresses;
                v17 = [v5 addresses];
                v18 = addresses;
                v19 = v17;
                if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:v18 target:v17])
                {
                  attributes = self->_attributes;
                  v21 = [v5 attributes];
                  v22 = [BMEntityRelationshipEventUtilities checkNullableDictionaryEqualityForSource:attributes target:v21];
                }

                else
                {
                  v22 = 0;
                }
              }

              else
              {
                v22 = 0;
              }
            }

            else
            {
              v22 = 0;
            }
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)encodeAsProto
{
  v2 = [(BMPersonEntity *)self proto];
  v3 = [v2 data];

  return v3;
}

- (BMPersonEntity)initWithProto:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v47 = self;
    v48 = v4;
    v5 = v4;
    if ([v5 namesCount])
    {
      v6 = objc_opt_new();
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      v7 = [v5 names];
      v8 = [v7 countByEnumeratingWithState:&v58 objects:v64 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v59;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v59 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v58 + 1) + 8 * i);
            v13 = objc_autoreleasePoolPush();
            v14 = [[BMPersonName alloc] initWithProto:v12];
            if (v14)
            {
              [v6 addObject:v14];
            }

            objc_autoreleasePoolPop(v13);
          }

          v9 = [v7 countByEnumeratingWithState:&v58 objects:v64 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v6 = 0;
    }

    if ([v5 socialMediaHandlesCount])
    {
      v16 = objc_opt_new();
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v17 = [v5 socialMediaHandles];
      v18 = [v17 countByEnumeratingWithState:&v54 objects:v63 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v55;
        do
        {
          for (j = 0; j != v19; ++j)
          {
            if (*v55 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v54 + 1) + 8 * j);
            v23 = objc_autoreleasePoolPush();
            v24 = [[BMSocialMediaHandle alloc] initWithProto:v22];
            if (v24)
            {
              [v16 addObject:v24];
            }

            objc_autoreleasePoolPop(v23);
          }

          v19 = [v17 countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v16 = 0;
    }

    v25 = [v5 attributes];

    if (v25)
    {
      v25 = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v26 = v5;
      v27 = [v5 attributes];
      v28 = [v27 countByEnumeratingWithState:&v50 objects:v62 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = *v51;
        do
        {
          for (k = 0; k != v29; ++k)
          {
            if (*v51 != v30)
            {
              objc_enumerationMutation(v27);
            }

            v32 = *(*(&v50 + 1) + 8 * k);
            v33 = [v32 value];
            v34 = [v32 key];
            [v25 setValue:v33 forKey:v34];
          }

          v29 = [v27 countByEnumeratingWithState:&v50 objects:v62 count:16];
        }

        while (v29);
      }

      v5 = v26;
    }

    v49 = [v6 copy];
    v45 = [v5 customId];
    [v5 contactId];
    v36 = v35 = v5;
    [v35 emailAddresses];
    v37 = v46 = v35;
    v38 = [v35 addresses];
    v39 = [v35 phoneNumbers];
    v40 = [v16 copy];
    v41 = [v25 copy];
    v42 = v38;
    self = [(BMPersonEntity *)v47 initWithNames:v49 customId:v45 contactId:v36 emailAddresses:v37 addresses:v38 phoneNumbers:v39 socialMediaHandles:v40 attributes:v41];

    v15 = self;
    v4 = v48;
  }

  else
  {
    v15 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return v15;
}

- (BMPersonEntity)initWithProtoData:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[BMPBPersonEntity alloc] initWithData:v4];

    self = [(BMPersonEntity *)self initWithProto:v5];
    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)proto
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(BMPersonEntity *)self names];

  if (v4)
  {
    v5 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v6 = [(BMPersonEntity *)self names];
    v7 = [v6 countByEnumeratingWithState:&v55 objects:v61 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v56;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v56 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v55 + 1) + 8 * i) proto];
          [v5 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    [v3 setNames:v12];
  }

  v13 = [(BMPersonEntity *)self socialMediaHandles];

  if (v13)
  {
    v14 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v15 = [(BMPersonEntity *)self socialMediaHandles];
    v16 = [v15 countByEnumeratingWithState:&v51 objects:v60 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v52;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v52 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v51 + 1) + 8 * j) proto];
          [v14 addObject:v20];
        }

        v17 = [v15 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v17);
    }

    v21 = [v14 copy];
    [v3 setSocialMediaHandles:v21];
  }

  v22 = [(BMPersonEntity *)self attributes];

  if (v22)
  {
    v45 = v3;
    v23 = objc_opt_new();
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    obj = [(BMPersonEntity *)self attributes];
    v24 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v48;
      do
      {
        for (k = 0; k != v25; ++k)
        {
          if (*v48 != v26)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v47 + 1) + 8 * k);
          v29 = objc_autoreleasePoolPush();
          v30 = objc_opt_new();
          [v30 setKey:v28];
          [(BMPersonEntity *)self attributes];
          v32 = v31 = self;
          v33 = [v32 objectForKeyedSubscript:v28];
          [v30 setValue:v33];

          self = v31;
          [v23 addObject:v30];

          objc_autoreleasePoolPop(v29);
        }

        v25 = [obj countByEnumeratingWithState:&v47 objects:v59 count:16];
      }

      while (v25);
    }

    v34 = [v23 copy];
    v3 = v45;
    [v45 setAttributes:v34];
  }

  v35 = [(BMPersonEntity *)self customId];
  [v3 setCustomId:v35];

  v36 = [(BMPersonEntity *)self contactId];
  [v3 setContactId:v36];

  v37 = [(BMPersonEntity *)self emailAddresses];
  v38 = [v37 mutableCopy];
  [v3 setEmailAddresses:v38];

  v39 = [(BMPersonEntity *)self addresses];
  v40 = [v39 mutableCopy];
  [v3 setAddresses:v40];

  v41 = [(BMPersonEntity *)self phoneNumbers];
  v42 = [v41 mutableCopy];
  [v3 setPhoneNumbers:v42];

  v43 = *MEMORY[0x1E69E9840];

  return v3;
}

@end