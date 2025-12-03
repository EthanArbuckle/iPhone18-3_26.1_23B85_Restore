@interface IDSFamilyMember
- (IDSFamilyMember)initWithDictionary:(id)dictionary;
- (IDSFamilyMember)initWithiCloudID:(id)d appleID:(id)iD handles:(id)handles devices:(id)devices;
- (id)dictionaryRepresentation;
@end

@implementation IDSFamilyMember

- (IDSFamilyMember)initWithiCloudID:(id)d appleID:(id)iD handles:(id)handles devices:(id)devices
{
  dCopy = d;
  iDCopy = iD;
  handlesCopy = handles;
  devicesCopy = devices;
  v18.receiver = self;
  v18.super_class = IDSFamilyMember;
  v15 = [(IDSFamilyMember *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_DSID, d);
    objc_storeStrong(&v16->_appleID, iD);
    objc_storeStrong(&v16->_handles, handles);
    objc_storeStrong(&v16->_devices, devices);
  }

  return v16;
}

- (IDSFamilyMember)initWithDictionary:(id)dictionary
{
  v31 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = IDSFamilyMember;
  v5 = [(IDSFamilyMember *)&v29 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:@"MemberDSID"];
    DSID = v5->_DSID;
    v5->_DSID = v6;

    v8 = [dictionaryCopy objectForKey:@"MemberHandles"];
    handles = v5->_handles;
    v5->_handles = v8;

    v10 = [dictionaryCopy objectForKey:@"MemberRelationship"];
    v5->_relationship = [v10 integerValue];

    v11 = [dictionaryCopy objectForKey:@"AppleIDKey"];
    appleID = v5->_appleID;
    v5->_appleID = v11;

    v13 = [dictionaryCopy objectForKey:@"MemberDevices"];
    v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v15 = v13;
    v16 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v26;
      do
      {
        v19 = 0;
        do
        {
          if (*v26 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = *(*(&v25 + 1) + 8 * v19);
          v21 = [IDSFamilyDevice alloc];
          v22 = [(IDSFamilyDevice *)v21 initWithDictionary:v20, v25];
          [(NSArray *)v14 addObject:v22];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v17);
    }

    devices = v5->_devices;
    v5->_devices = v14;
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v3 setObject:self->_DSID forKey:@"MemberDSID"];
  allObjects = [(NSSet *)self->_handles allObjects];
  [v3 setObject:allObjects forKey:@"MemberHandles"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_relationship];
  [v3 setObject:v5 forKey:@"MemberRelationship"];

  [v3 setObject:self->_appleID forKey:@"AppleIDKey"];
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = self->_devices;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
        [v6 addObject:dictionaryRepresentation];
      }

      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  [v3 setObject:v6 forKey:@"MemberDevices"];

  return v3;
}

@end