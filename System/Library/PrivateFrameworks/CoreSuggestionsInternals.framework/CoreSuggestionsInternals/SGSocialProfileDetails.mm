@interface SGSocialProfileDetails
- (SGSocialProfileDetails)initWithCNSocialProfile:(id)profile;
- (SGSocialProfileDetails)initWithSerialized:(id)serialized;
- (SGSocialProfileDetails)initWithSocialProfile:(id)profile;
- (SGSocialProfileDetails)initWithUsername:(id)username userIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier displayName:(id)name service:(id)service teamIdentifier:(id)teamIdentifier;
- (id)serialize;
@end

@implementation SGSocialProfileDetails

- (id)serialize
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = *&self->_username;
  bundleIdentifier = self->_bundleIdentifier;
  v8 = *&self->_displayName;
  teamIdentifier = self->_teamIdentifier;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:6];
  v3 = SGDelimitedStringsSerializeArray();

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (SGSocialProfileDetails)initWithSerialized:(id)serialized
{
  v18 = *MEMORY[0x277D85DE8];
  serializedCopy = serialized;
  v5 = SGDelimitedStringsDeserialize();
  if ([v5 count] == 6)
  {
    v6 = [v5 objectAtIndexedSubscript:0];
    v7 = [v5 objectAtIndexedSubscript:1];
    v8 = [v5 objectAtIndexedSubscript:2];
    v9 = [v5 objectAtIndexedSubscript:3];
    v10 = [v5 objectAtIndexedSubscript:4];
    v11 = [v5 objectAtIndexedSubscript:5];
    self = [(SGSocialProfileDetails *)self initWithUsername:v6 userIdentifier:v7 bundleIdentifier:v8 displayName:v9 service:v10 teamIdentifier:v11];

    selfCopy = self;
  }

  else
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = serializedCopy;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "Failed to decode socialProfileData: %@", &v16, 0xCu);
    }

    selfCopy = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return selfCopy;
}

- (SGSocialProfileDetails)initWithCNSocialProfile:(id)profile
{
  profileCopy = profile;
  username = [profileCopy username];
  v26 = username;
  if (username)
  {
    v5 = username;
  }

  else
  {
    v5 = &stru_284703F00;
  }

  v23 = v5;
  userIdentifier = [profileCopy userIdentifier];
  v7 = userIdentifier;
  if (userIdentifier)
  {
    v8 = userIdentifier;
  }

  else
  {
    v8 = &stru_284703F00;
  }

  v22 = v8;
  bundleIdentifiers = [profileCopy bundleIdentifiers];
  firstObject = [bundleIdentifiers firstObject];
  v10 = firstObject;
  if (firstObject)
  {
    v11 = firstObject;
  }

  else
  {
    v11 = &stru_284703F00;
  }

  displayname = [profileCopy displayname];
  v13 = displayname;
  if (displayname)
  {
    v14 = displayname;
  }

  else
  {
    v14 = &stru_284703F00;
  }

  service = [profileCopy service];
  v16 = service;
  if (service)
  {
    v17 = service;
  }

  else
  {
    v17 = &stru_284703F00;
  }

  teamIdentifier = [profileCopy teamIdentifier];

  if (teamIdentifier)
  {
    v19 = teamIdentifier;
  }

  else
  {
    v19 = &stru_284703F00;
  }

  v20 = [(SGSocialProfileDetails *)self initWithUsername:v23 userIdentifier:v22 bundleIdentifier:v11 displayName:v14 service:v17 teamIdentifier:v19];

  return v20;
}

- (SGSocialProfileDetails)initWithSocialProfile:(id)profile
{
  profileCopy = profile;
  username = [profileCopy username];
  v5 = username;
  if (username)
  {
    v6 = username;
  }

  else
  {
    v6 = &stru_284703F00;
  }

  v22 = v6;
  userIdentifier = [profileCopy userIdentifier];
  v8 = userIdentifier;
  if (userIdentifier)
  {
    v9 = userIdentifier;
  }

  else
  {
    v9 = &stru_284703F00;
  }

  v21 = v9;
  bundleIdentifier = [profileCopy bundleIdentifier];
  displayName = [profileCopy displayName];
  v12 = displayName;
  if (displayName)
  {
    v13 = displayName;
  }

  else
  {
    v13 = &stru_284703F00;
  }

  service = [profileCopy service];
  v15 = service;
  if (service)
  {
    v16 = service;
  }

  else
  {
    v16 = &stru_284703F00;
  }

  teamIdentifier = [profileCopy teamIdentifier];

  if (teamIdentifier)
  {
    v18 = teamIdentifier;
  }

  else
  {
    v18 = &stru_284703F00;
  }

  v19 = [(SGSocialProfileDetails *)self initWithUsername:v22 userIdentifier:v21 bundleIdentifier:bundleIdentifier displayName:v13 service:v16 teamIdentifier:v18];

  return v19;
}

- (SGSocialProfileDetails)initWithUsername:(id)username userIdentifier:(id)identifier bundleIdentifier:(id)bundleIdentifier displayName:(id)name service:(id)service teamIdentifier:(id)teamIdentifier
{
  v52[2] = *MEMORY[0x277D85DE8];
  usernameCopy = username;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  nameCopy = name;
  serviceCopy = service;
  teamIdentifierCopy = teamIdentifier;
  v48.receiver = self;
  v48.super_class = SGSocialProfileDetails;
  v20 = [(SGSocialProfileDetails *)&v48 init];
  if (v20)
  {
    v21 = [usernameCopy copy];
    username = v20->_username;
    v20->_username = v21;

    v23 = [identifierCopy copy];
    userIdentifier = v20->_userIdentifier;
    v20->_userIdentifier = v23;

    v25 = [bundleIdentifierCopy copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v25;

    v27 = [nameCopy copy];
    displayName = v20->_displayName;
    v20->_displayName = v27;

    v29 = [serviceCopy copy];
    service = v20->_service;
    v20->_service = v29;

    v31 = [teamIdentifierCopy copy];
    teamIdentifier = v20->_teamIdentifier;
    v20->_teamIdentifier = v31;

    v33 = 0x277CBE000uLL;
    if ([bundleIdentifierCopy length] && objc_msgSend(identifierCopy, "length"))
    {
      v34 = v20->_bundleIdentifier;
      v52[0] = v20->_userIdentifier;
      v52[1] = v34;
      v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
      v36 = SGDelimitedStringsSerializeArray();
    }

    else
    {
      v36 = 0;
    }

    if ([bundleIdentifierCopy length] && objc_msgSend(usernameCopy, "length"))
    {
      v37 = v20->_bundleIdentifier;
      v51[0] = v20->_username;
      v51[1] = v37;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      serialize = SGDelimitedStringsSerializeArray();

      v33 = 0x277CBE000;
    }

    else
    {
      serialize = [(SGSocialProfileDetails *)v20 serialize];
    }

    if (v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = serialize;
    }

    objc_storeStrong(&v20->_preferredUniqueIdentifier, v40);
    if (v36)
    {
      v50[0] = v36;
      v50[1] = serialize;
      v41 = *(v33 + 2656);
      v42 = v50;
      v43 = 2;
    }

    else
    {
      v49 = serialize;
      v41 = *(v33 + 2656);
      v42 = &v49;
      v43 = 1;
    }

    v44 = [v41 arrayWithObjects:v42 count:v43];
    uniqueIdentifiers = v20->_uniqueIdentifiers;
    v20->_uniqueIdentifiers = v44;
  }

  v46 = *MEMORY[0x277D85DE8];
  return v20;
}

@end