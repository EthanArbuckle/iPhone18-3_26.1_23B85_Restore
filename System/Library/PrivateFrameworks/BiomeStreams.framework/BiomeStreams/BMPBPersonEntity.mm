@interface BMPBPersonEntity
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAddresses:(id)a3;
- (void)addAttributes:(id)a3;
- (void)addEmailAddresses:(id)a3;
- (void)addNames:(id)a3;
- (void)addPhoneNumbers:(id)a3;
- (void)addSocialMediaHandles:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBPersonEntity

- (void)addNames:(id)a3
{
  v4 = a3;
  names = self->_names;
  v8 = v4;
  if (!names)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_names;
    self->_names = v6;

    v4 = v8;
    names = self->_names;
  }

  [(NSMutableArray *)names addObject:v4];
}

- (void)addEmailAddresses:(id)a3
{
  v4 = a3;
  emailAddresses = self->_emailAddresses;
  v8 = v4;
  if (!emailAddresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_emailAddresses;
    self->_emailAddresses = v6;

    v4 = v8;
    emailAddresses = self->_emailAddresses;
  }

  [(NSMutableArray *)emailAddresses addObject:v4];
}

- (void)addAddresses:(id)a3
{
  v4 = a3;
  addresses = self->_addresses;
  v8 = v4;
  if (!addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_addresses;
    self->_addresses = v6;

    v4 = v8;
    addresses = self->_addresses;
  }

  [(NSMutableArray *)addresses addObject:v4];
}

- (void)addPhoneNumbers:(id)a3
{
  v4 = a3;
  phoneNumbers = self->_phoneNumbers;
  v8 = v4;
  if (!phoneNumbers)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_phoneNumbers;
    self->_phoneNumbers = v6;

    v4 = v8;
    phoneNumbers = self->_phoneNumbers;
  }

  [(NSMutableArray *)phoneNumbers addObject:v4];
}

- (void)addSocialMediaHandles:(id)a3
{
  v4 = a3;
  socialMediaHandles = self->_socialMediaHandles;
  v8 = v4;
  if (!socialMediaHandles)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_socialMediaHandles;
    self->_socialMediaHandles = v6;

    v4 = v8;
    socialMediaHandles = self->_socialMediaHandles;
  }

  [(NSMutableArray *)socialMediaHandles addObject:v4];
}

- (void)addAttributes:(id)a3
{
  v4 = a3;
  attributes = self->_attributes;
  v8 = v4;
  if (!attributes)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_attributes;
    self->_attributes = v6;

    v4 = v8;
    attributes = self->_attributes;
  }

  [(NSMutableArray *)attributes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPersonEntity;
  v4 = [(BMPBPersonEntity *)&v8 description];
  v5 = [(BMPBPersonEntity *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v47 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_names count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_names, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v5 = self->_names;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v41;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v41 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v40 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v40 objects:v46 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"names"];
  }

  customId = self->_customId;
  if (customId)
  {
    [v3 setObject:customId forKey:@"customId"];
  }

  contactId = self->_contactId;
  if (contactId)
  {
    [v3 setObject:contactId forKey:@"contactId"];
  }

  emailAddresses = self->_emailAddresses;
  if (emailAddresses)
  {
    [v3 setObject:emailAddresses forKey:@"emailAddresses"];
  }

  addresses = self->_addresses;
  if (addresses)
  {
    [v3 setObject:addresses forKey:@"addresses"];
  }

  phoneNumbers = self->_phoneNumbers;
  if (phoneNumbers)
  {
    [v3 setObject:phoneNumbers forKey:@"phoneNumbers"];
  }

  if ([(NSMutableArray *)self->_socialMediaHandles count])
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_socialMediaHandles, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = self->_socialMediaHandles;
    v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [*(*(&v36 + 1) + 8 * j) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKey:@"socialMediaHandles"];
  }

  if ([(NSMutableArray *)self->_attributes count])
  {
    v23 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_attributes, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v24 = self->_attributes;
    v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v33;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v33 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = [*(*(&v32 + 1) + 8 * k) dictionaryRepresentation];
          [v23 addObject:v29];
        }

        v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v26);
    }

    [v3 setObject:v23 forKey:@"attributes"];
  }

  v30 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v72 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v5 = self->_names;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v63;
    do
    {
      v9 = 0;
      do
      {
        if (*v63 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v62 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v62 objects:v71 count:16];
    }

    while (v7);
  }

  if (self->_customId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contactId)
  {
    PBDataWriterWriteStringField();
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v11 = self->_emailAddresses;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v59;
    do
    {
      v15 = 0;
      do
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v58 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v58 objects:v70 count:16];
    }

    while (v13);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v17 = self->_addresses;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v54 objects:v69 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v55;
    do
    {
      v21 = 0;
      do
      {
        if (*v55 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v54 + 1) + 8 * v21);
        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v54 objects:v69 count:16];
    }

    while (v19);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v23 = self->_phoneNumbers;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v50 objects:v68 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v51;
    do
    {
      v27 = 0;
      do
      {
        if (*v51 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v50 + 1) + 8 * v27);
        PBDataWriterWriteStringField();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v50 objects:v68 count:16];
    }

    while (v25);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v29 = self->_socialMediaHandles;
  v30 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v46 objects:v67 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v47;
    do
    {
      v33 = 0;
      do
      {
        if (*v47 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v46 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSMutableArray *)v29 countByEnumeratingWithState:&v46 objects:v67 count:16];
    }

    while (v31);
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v35 = self->_attributes;
  v36 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v42 objects:v66 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v43;
    do
    {
      v39 = 0;
      do
      {
        if (*v43 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v42 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSMutableArray *)v35 countByEnumeratingWithState:&v42 objects:v66 count:16];
    }

    while (v37);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v28 = a3;
  if ([(BMPBPersonEntity *)self namesCount])
  {
    [v28 clearNames];
    v4 = [(BMPBPersonEntity *)self namesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBPersonEntity *)self namesAtIndex:i];
        [v28 addNames:v7];
      }
    }
  }

  if (self->_customId)
  {
    [v28 setCustomId:?];
  }

  if (self->_contactId)
  {
    [v28 setContactId:?];
  }

  if ([(BMPBPersonEntity *)self emailAddressesCount])
  {
    [v28 clearEmailAddresses];
    v8 = [(BMPBPersonEntity *)self emailAddressesCount];
    if (v8)
    {
      v9 = v8;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(BMPBPersonEntity *)self emailAddressesAtIndex:j];
        [v28 addEmailAddresses:v11];
      }
    }
  }

  if ([(BMPBPersonEntity *)self addressesCount])
  {
    [v28 clearAddresses];
    v12 = [(BMPBPersonEntity *)self addressesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(BMPBPersonEntity *)self addressesAtIndex:k];
        [v28 addAddresses:v15];
      }
    }
  }

  if ([(BMPBPersonEntity *)self phoneNumbersCount])
  {
    [v28 clearPhoneNumbers];
    v16 = [(BMPBPersonEntity *)self phoneNumbersCount];
    if (v16)
    {
      v17 = v16;
      for (m = 0; m != v17; ++m)
      {
        v19 = [(BMPBPersonEntity *)self phoneNumbersAtIndex:m];
        [v28 addPhoneNumbers:v19];
      }
    }
  }

  if ([(BMPBPersonEntity *)self socialMediaHandlesCount])
  {
    [v28 clearSocialMediaHandles];
    v20 = [(BMPBPersonEntity *)self socialMediaHandlesCount];
    if (v20)
    {
      v21 = v20;
      for (n = 0; n != v21; ++n)
      {
        v23 = [(BMPBPersonEntity *)self socialMediaHandlesAtIndex:n];
        [v28 addSocialMediaHandles:v23];
      }
    }
  }

  if ([(BMPBPersonEntity *)self attributesCount])
  {
    [v28 clearAttributes];
    v24 = [(BMPBPersonEntity *)self attributesCount];
    if (v24)
    {
      v25 = v24;
      for (ii = 0; ii != v25; ++ii)
      {
        v27 = [(BMPBPersonEntity *)self attributesAtIndex:ii];
        [v28 addAttributes:v27];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v6 = self->_names;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v68 objects:v77 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v69;
    do
    {
      v10 = 0;
      do
      {
        if (*v69 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v68 + 1) + 8 * v10) copyWithZone:a3];
        [v5 addNames:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v68 objects:v77 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_customId copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_contactId copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v16 = self->_emailAddresses;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v64 objects:v76 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v65;
    do
    {
      v20 = 0;
      do
      {
        if (*v65 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v64 + 1) + 8 * v20) copyWithZone:a3];
        [v5 addEmailAddresses:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v64 objects:v76 count:16];
    }

    while (v18);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v22 = self->_addresses;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v60 objects:v75 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v61;
    do
    {
      v26 = 0;
      do
      {
        if (*v61 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v60 + 1) + 8 * v26) copyWithZone:a3];
        [v5 addAddresses:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v60 objects:v75 count:16];
    }

    while (v24);
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v28 = self->_phoneNumbers;
  v29 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v56 objects:v74 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v57;
    do
    {
      v32 = 0;
      do
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = [*(*(&v56 + 1) + 8 * v32) copyWithZone:a3];
        [v5 addPhoneNumbers:v33];

        ++v32;
      }

      while (v30 != v32);
      v30 = [(NSMutableArray *)v28 countByEnumeratingWithState:&v56 objects:v74 count:16];
    }

    while (v30);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v34 = self->_socialMediaHandles;
  v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v52 objects:v73 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v53;
    do
    {
      v38 = 0;
      do
      {
        if (*v53 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = [*(*(&v52 + 1) + 8 * v38) copyWithZone:a3];
        [v5 addSocialMediaHandles:v39];

        ++v38;
      }

      while (v36 != v38);
      v36 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v52 objects:v73 count:16];
    }

    while (v36);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v40 = self->_attributes;
  v41 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v72 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v49;
    do
    {
      v44 = 0;
      do
      {
        if (*v49 != v43)
        {
          objc_enumerationMutation(v40);
        }

        v45 = [*(*(&v48 + 1) + 8 * v44) copyWithZone:{a3, v48}];
        [v5 addAttributes:v45];

        ++v44;
      }

      while (v42 != v44);
      v42 = [(NSMutableArray *)v40 countByEnumeratingWithState:&v48 objects:v72 count:16];
    }

    while (v42);
  }

  v46 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((names = self->_names, !(names | v4[6])) || -[NSMutableArray isEqual:](names, "isEqual:")) && ((customId = self->_customId, !(customId | v4[4])) || -[NSString isEqual:](customId, "isEqual:")) && ((contactId = self->_contactId, !(contactId | v4[3])) || -[NSString isEqual:](contactId, "isEqual:")) && ((emailAddresses = self->_emailAddresses, !(emailAddresses | v4[5])) || -[NSMutableArray isEqual:](emailAddresses, "isEqual:")) && ((addresses = self->_addresses, !(addresses | v4[1])) || -[NSMutableArray isEqual:](addresses, "isEqual:")) && ((phoneNumbers = self->_phoneNumbers, !(phoneNumbers | v4[7])) || -[NSMutableArray isEqual:](phoneNumbers, "isEqual:")) && ((socialMediaHandles = self->_socialMediaHandles, !(socialMediaHandles | v4[8])) || -[NSMutableArray isEqual:](socialMediaHandles, "isEqual:")))
  {
    attributes = self->_attributes;
    if (attributes | v4[2])
    {
      v13 = [(NSMutableArray *)attributes isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_names hash];
  v4 = [(NSString *)self->_customId hash]^ v3;
  v5 = [(NSString *)self->_contactId hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_emailAddresses hash];
  v7 = [(NSMutableArray *)self->_addresses hash];
  v8 = v7 ^ [(NSMutableArray *)self->_phoneNumbers hash];
  v9 = v6 ^ v8 ^ [(NSMutableArray *)self->_socialMediaHandles hash];
  return v9 ^ [(NSMutableArray *)self->_attributes hash];
}

- (void)mergeFrom:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v5 = v4[6];
  v6 = [v5 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(BMPBPersonEntity *)self addNames:*(*(&v56 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v7);
  }

  if (v4[4])
  {
    [(BMPBPersonEntity *)self setCustomId:?];
  }

  if (v4[3])
  {
    [(BMPBPersonEntity *)self setContactId:?];
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v10 = v4[5];
  v11 = [v10 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v53;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v53 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(BMPBPersonEntity *)self addEmailAddresses:*(*(&v52 + 1) + 8 * j)];
      }

      v12 = [v10 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v12);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = v4[1];
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v63 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v49;
    do
    {
      for (k = 0; k != v17; ++k)
      {
        if (*v49 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(BMPBPersonEntity *)self addAddresses:*(*(&v48 + 1) + 8 * k)];
      }

      v17 = [v15 countByEnumeratingWithState:&v48 objects:v63 count:16];
    }

    while (v17);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = v4[7];
  v21 = [v20 countByEnumeratingWithState:&v44 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v45;
    do
    {
      for (m = 0; m != v22; ++m)
      {
        if (*v45 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [(BMPBPersonEntity *)self addPhoneNumbers:*(*(&v44 + 1) + 8 * m)];
      }

      v22 = [v20 countByEnumeratingWithState:&v44 objects:v62 count:16];
    }

    while (v22);
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v4[8];
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v61 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (n = 0; n != v27; ++n)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        [(BMPBPersonEntity *)self addSocialMediaHandles:*(*(&v40 + 1) + 8 * n)];
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v61 count:16];
    }

    while (v27);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = v4[2];
  v31 = [v30 countByEnumeratingWithState:&v36 objects:v60 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v37;
    do
    {
      for (ii = 0; ii != v32; ++ii)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(v30);
        }

        [(BMPBPersonEntity *)self addAttributes:*(*(&v36 + 1) + 8 * ii), v36];
      }

      v32 = [v30 countByEnumeratingWithState:&v36 objects:v60 count:16];
    }

    while (v32);
  }

  v35 = *MEMORY[0x1E69E9840];
}

@end