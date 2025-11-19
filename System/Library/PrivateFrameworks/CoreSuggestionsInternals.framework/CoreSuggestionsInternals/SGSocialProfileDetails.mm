@interface SGSocialProfileDetails
- (SGSocialProfileDetails)initWithCNSocialProfile:(id)a3;
- (SGSocialProfileDetails)initWithSerialized:(id)a3;
- (SGSocialProfileDetails)initWithSocialProfile:(id)a3;
- (SGSocialProfileDetails)initWithUsername:(id)a3 userIdentifier:(id)a4 bundleIdentifier:(id)a5 displayName:(id)a6 service:(id)a7 teamIdentifier:(id)a8;
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

- (SGSocialProfileDetails)initWithSerialized:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

    v12 = self;
  }

  else
  {
    v13 = sgLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412290;
      v17 = v4;
      _os_log_error_impl(&dword_231E60000, v13, OS_LOG_TYPE_ERROR, "Failed to decode socialProfileData: %@", &v16, 0xCu);
    }

    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (SGSocialProfileDetails)initWithCNSocialProfile:(id)a3
{
  v3 = a3;
  v4 = [v3 username];
  v26 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = &stru_284703F00;
  }

  v23 = v5;
  v6 = [v3 userIdentifier];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = &stru_284703F00;
  }

  v22 = v8;
  v25 = [v3 bundleIdentifiers];
  v9 = [v25 firstObject];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = &stru_284703F00;
  }

  v12 = [v3 displayname];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_284703F00;
  }

  v15 = [v3 service];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = &stru_284703F00;
  }

  v18 = [v3 teamIdentifier];

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &stru_284703F00;
  }

  v20 = [(SGSocialProfileDetails *)self initWithUsername:v23 userIdentifier:v22 bundleIdentifier:v11 displayName:v14 service:v17 teamIdentifier:v19];

  return v20;
}

- (SGSocialProfileDetails)initWithSocialProfile:(id)a3
{
  v3 = a3;
  v4 = [v3 username];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_284703F00;
  }

  v22 = v6;
  v7 = [v3 userIdentifier];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_284703F00;
  }

  v21 = v9;
  v10 = [v3 bundleIdentifier];
  v11 = [v3 displayName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = &stru_284703F00;
  }

  v14 = [v3 service];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &stru_284703F00;
  }

  v17 = [v3 teamIdentifier];

  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = &stru_284703F00;
  }

  v19 = [(SGSocialProfileDetails *)self initWithUsername:v22 userIdentifier:v21 bundleIdentifier:v10 displayName:v13 service:v16 teamIdentifier:v18];

  return v19;
}

- (SGSocialProfileDetails)initWithUsername:(id)a3 userIdentifier:(id)a4 bundleIdentifier:(id)a5 displayName:(id)a6 service:(id)a7 teamIdentifier:(id)a8
{
  v52[2] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v48.receiver = self;
  v48.super_class = SGSocialProfileDetails;
  v20 = [(SGSocialProfileDetails *)&v48 init];
  if (v20)
  {
    v21 = [v14 copy];
    username = v20->_username;
    v20->_username = v21;

    v23 = [v15 copy];
    userIdentifier = v20->_userIdentifier;
    v20->_userIdentifier = v23;

    v25 = [v16 copy];
    bundleIdentifier = v20->_bundleIdentifier;
    v20->_bundleIdentifier = v25;

    v27 = [v17 copy];
    displayName = v20->_displayName;
    v20->_displayName = v27;

    v29 = [v18 copy];
    service = v20->_service;
    v20->_service = v29;

    v31 = [v19 copy];
    teamIdentifier = v20->_teamIdentifier;
    v20->_teamIdentifier = v31;

    v33 = 0x277CBE000uLL;
    if ([v16 length] && objc_msgSend(v15, "length"))
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

    if ([v16 length] && objc_msgSend(v14, "length"))
    {
      v37 = v20->_bundleIdentifier;
      v51[0] = v20->_username;
      v51[1] = v37;
      v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
      v39 = SGDelimitedStringsSerializeArray();

      v33 = 0x277CBE000;
    }

    else
    {
      v39 = [(SGSocialProfileDetails *)v20 serialize];
    }

    if (v36)
    {
      v40 = v36;
    }

    else
    {
      v40 = v39;
    }

    objc_storeStrong(&v20->_preferredUniqueIdentifier, v40);
    if (v36)
    {
      v50[0] = v36;
      v50[1] = v39;
      v41 = *(v33 + 2656);
      v42 = v50;
      v43 = 2;
    }

    else
    {
      v49 = v39;
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