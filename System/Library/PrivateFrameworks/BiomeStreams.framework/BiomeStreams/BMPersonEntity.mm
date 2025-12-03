@interface BMPersonEntity
- (BMPersonEntity)initWithNames:(id)names customId:(id)id contactId:(id)contactId emailAddresses:(id)addresses addresses:(id)a7 phoneNumbers:(id)numbers socialMediaHandles:(id)handles attributes:(id)self0;
- (BMPersonEntity)initWithProto:(id)proto;
- (BMPersonEntity)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (id)encodeAsProto;
- (id)proto;
@end

@implementation BMPersonEntity

- (BMPersonEntity)initWithNames:(id)names customId:(id)id contactId:(id)contactId emailAddresses:(id)addresses addresses:(id)a7 phoneNumbers:(id)numbers socialMediaHandles:(id)handles attributes:(id)self0
{
  namesCopy = names;
  idCopy = id;
  contactIdCopy = contactId;
  addressesCopy = addresses;
  v23 = a7;
  numbersCopy = numbers;
  handlesCopy = handles;
  attributesCopy = attributes;
  v28.receiver = self;
  v28.super_class = BMPersonEntity;
  v19 = [(BMPersonEntity *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_names, names);
    objc_storeStrong(&v20->_customId, id);
    objc_storeStrong(&v20->_contactId, contactId);
    objc_storeStrong(&v20->_emailAddresses, addresses);
    objc_storeStrong(&v20->_addresses, a7);
    objc_storeStrong(&v20->_phoneNumbers, numbers);
    objc_storeStrong(&v20->_socialMediaHandles, handles);
    objc_storeStrong(&v20->_attributes, attributes);
  }

  return v20;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    customId = self->_customId;
    customId = [v5 customId];
    if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:customId target:customId])
    {
      contactId = self->_contactId;
      contactId = [v5 contactId];
      if ([BMEntityRelationshipEventUtilities checkNullableStringEqualityForSource:contactId target:contactId])
      {
        names = self->_names;
        names = [v5 names];
        if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:names target:names])
        {
          emailAddresses = self->_emailAddresses;
          emailAddresses = [v5 emailAddresses];
          if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:emailAddresses target:emailAddresses])
          {
            phoneNumbers = self->_phoneNumbers;
            phoneNumbers = [v5 phoneNumbers];
            if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:phoneNumbers target:?])
            {
              socialMediaHandles = self->_socialMediaHandles;
              socialMediaHandles = [v5 socialMediaHandles];
              if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:socialMediaHandles target:?])
              {
                addresses = self->_addresses;
                addresses = [v5 addresses];
                v18 = addresses;
                v19 = addresses;
                if ([BMEntityRelationshipEventUtilities checkNullableArrayEqualityForSource:v18 target:addresses])
                {
                  attributes = self->_attributes;
                  attributes = [v5 attributes];
                  v22 = [BMEntityRelationshipEventUtilities checkNullableDictionaryEqualityForSource:attributes target:attributes];
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
  proto = [(BMPersonEntity *)self proto];
  data = [proto data];

  return data;
}

- (BMPersonEntity)initWithProto:(id)proto
{
  v65 = *MEMORY[0x1E69E9840];
  protoCopy = proto;
  if (protoCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    selfCopy = self;
    v48 = protoCopy;
    v5 = protoCopy;
    if ([v5 namesCount])
    {
      v6 = objc_opt_new();
      v58 = 0u;
      v59 = 0u;
      v60 = 0u;
      v61 = 0u;
      names = [v5 names];
      v8 = [names countByEnumeratingWithState:&v58 objects:v64 count:16];
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
              objc_enumerationMutation(names);
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

          v9 = [names countByEnumeratingWithState:&v58 objects:v64 count:16];
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
      socialMediaHandles = [v5 socialMediaHandles];
      v18 = [socialMediaHandles countByEnumeratingWithState:&v54 objects:v63 count:16];
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
              objc_enumerationMutation(socialMediaHandles);
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

          v19 = [socialMediaHandles countByEnumeratingWithState:&v54 objects:v63 count:16];
        }

        while (v19);
      }
    }

    else
    {
      v16 = 0;
    }

    attributes = [v5 attributes];

    if (attributes)
    {
      attributes = objc_opt_new();
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v26 = v5;
      attributes2 = [v5 attributes];
      v28 = [attributes2 countByEnumeratingWithState:&v50 objects:v62 count:16];
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
              objc_enumerationMutation(attributes2);
            }

            v32 = *(*(&v50 + 1) + 8 * k);
            value = [v32 value];
            v34 = [v32 key];
            [attributes setValue:value forKey:v34];
          }

          v29 = [attributes2 countByEnumeratingWithState:&v50 objects:v62 count:16];
        }

        while (v29);
      }

      v5 = v26;
    }

    v49 = [v6 copy];
    customId = [v5 customId];
    [v5 contactId];
    v36 = v35 = v5;
    [v35 emailAddresses];
    v37 = v46 = v35;
    addresses = [v35 addresses];
    phoneNumbers = [v35 phoneNumbers];
    v40 = [v16 copy];
    v41 = [attributes copy];
    v42 = addresses;
    self = [(BMPersonEntity *)selfCopy initWithNames:v49 customId:customId contactId:v36 emailAddresses:v37 addresses:addresses phoneNumbers:phoneNumbers socialMediaHandles:v40 attributes:v41];

    selfCopy2 = self;
    protoCopy = v48;
  }

  else
  {
    selfCopy2 = 0;
  }

  v43 = *MEMORY[0x1E69E9840];
  return selfCopy2;
}

- (BMPersonEntity)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[BMPBPersonEntity alloc] initWithData:dataCopy];

    self = [(BMPersonEntity *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)proto
{
  v62 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  names = [(BMPersonEntity *)self names];

  if (names)
  {
    v5 = objc_opt_new();
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    names2 = [(BMPersonEntity *)self names];
    v7 = [names2 countByEnumeratingWithState:&v55 objects:v61 count:16];
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
            objc_enumerationMutation(names2);
          }

          proto = [*(*(&v55 + 1) + 8 * i) proto];
          [v5 addObject:proto];
        }

        v8 = [names2 countByEnumeratingWithState:&v55 objects:v61 count:16];
      }

      while (v8);
    }

    v12 = [v5 copy];
    [v3 setNames:v12];
  }

  socialMediaHandles = [(BMPersonEntity *)self socialMediaHandles];

  if (socialMediaHandles)
  {
    v14 = objc_opt_new();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    socialMediaHandles2 = [(BMPersonEntity *)self socialMediaHandles];
    v16 = [socialMediaHandles2 countByEnumeratingWithState:&v51 objects:v60 count:16];
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
            objc_enumerationMutation(socialMediaHandles2);
          }

          proto2 = [*(*(&v51 + 1) + 8 * j) proto];
          [v14 addObject:proto2];
        }

        v17 = [socialMediaHandles2 countByEnumeratingWithState:&v51 objects:v60 count:16];
      }

      while (v17);
    }

    v21 = [v14 copy];
    [v3 setSocialMediaHandles:v21];
  }

  attributes = [(BMPersonEntity *)self attributes];

  if (attributes)
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

  customId = [(BMPersonEntity *)self customId];
  [v3 setCustomId:customId];

  contactId = [(BMPersonEntity *)self contactId];
  [v3 setContactId:contactId];

  emailAddresses = [(BMPersonEntity *)self emailAddresses];
  v38 = [emailAddresses mutableCopy];
  [v3 setEmailAddresses:v38];

  addresses = [(BMPersonEntity *)self addresses];
  v40 = [addresses mutableCopy];
  [v3 setAddresses:v40];

  phoneNumbers = [(BMPersonEntity *)self phoneNumbers];
  v42 = [phoneNumbers mutableCopy];
  [v3 setPhoneNumbers:v42];

  v43 = *MEMORY[0x1E69E9840];

  return v3;
}

@end