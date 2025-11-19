@interface IMServiceReachabilityHandleResult
- (BOOL)isEqual:(id)a3;
- (IMServiceReachabilityHandleResult)initWithCoder:(id)a3;
- (IMServiceReachabilityHandleResult)initWithHandleID:(id)a3 service:(id)a4 isReachable:(BOOL)a5 supportsEncryption:(BOOL)a6 persistentMenuDictionary:(id)a7 brandInfoDictionary:(id)a8 brandLogoData:(id)a9;
- (id)brandInfoData;
- (id)createDictionary;
- (id)description;
- (id)persistentMenuData;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMServiceReachabilityHandleResult

- (IMServiceReachabilityHandleResult)initWithHandleID:(id)a3 service:(id)a4 isReachable:(BOOL)a5 supportsEncryption:(BOOL)a6 persistentMenuDictionary:(id)a7 brandInfoDictionary:(id)a8 brandLogoData:(id)a9
{
  v23 = a3;
  v14 = a4;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v24.receiver = self;
  v24.super_class = IMServiceReachabilityHandleResult;
  v18 = [(IMServiceReachabilityHandleResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_handleID, a3);
    objc_storeStrong(&v19->_service, a4);
    v19->_reachable = a5;
    v19->_supportsEncryption = a6;
    objc_storeStrong(&v19->_persistentMenuDictionary, a7);
    objc_storeStrong(&v19->_brandInfoDictionary, a8);
    objc_storeStrong(&v19->_brandLogoData, a9);
  }

  return v19;
}

- (void)encodeWithCoder:(id)a3
{
  handleID = self->_handleID;
  v5 = a3;
  [v5 encodeObject:handleID forKey:@"i"];
  [v5 encodeObject:self->_service forKey:@"s"];
  [v5 encodeBool:self->_reachable forKey:@"r"];
  [v5 encodeBool:self->_supportsEncryption forKey:@"e"];
  v6 = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
  [v5 encodeObject:v6 forKey:@"pmd"];

  v7 = [(IMServiceReachabilityHandleResult *)self brandInfoData];
  [v5 encodeObject:v7 forKey:@"bid"];

  v8 = [(IMServiceReachabilityHandleResult *)self brandLogoData];
  [v5 encodeObject:v8 forKey:@"bld"];
}

- (IMServiceReachabilityHandleResult)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = IMServiceReachabilityHandleResult;
  v5 = [(IMServiceReachabilityHandleResult *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    handleID = v5->_handleID;
    v5->_handleID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    service = v5->_service;
    v5->_service = v8;

    v5->_reachable = [v4 decodeBoolForKey:@"r"];
    v5->_supportsEncryption = [v4 decodeBoolForKey:@"e"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pmd"];
    v11 = v10;
    if (v10)
    {
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:0];
    }

    persistentMenuDictionary = v5->_persistentMenuDictionary;
    v5->_persistentMenuDictionary = v10;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bid"];
    v14 = v13;
    if (v13)
    {
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v13 options:0 error:0];
    }

    brandInfoDictionary = v5->_brandInfoDictionary;
    v5->_brandInfoDictionary = v13;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bld"];
    brandLogoData = v5->_brandLogoData;
    v5->_brandLogoData = v16;
  }

  return v5;
}

- (id)createDictionary
{
  v36[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF90]);
  v35[0] = @"r";
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityHandleResult isReachable](self, "isReachable")}];
  v35[1] = @"e";
  v36[0] = v4;
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IMServiceReachabilityHandleResult supportsEncryption](self, "supportsEncryption")}];
  v36[1] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v7 = [v3 initWithDictionary:v6];

  v8 = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];

  if (v8)
  {
    v9 = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
    if (v9)
    {
      [v7 setObject:v9 forKeyedSubscript:@"pmd"];
    }
  }

  v10 = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];

  if (v10)
  {
    v11 = [(IMServiceReachabilityHandleResult *)self brandInfoData];
    if (v11)
    {
      [v7 setObject:v11 forKeyedSubscript:@"bid"];
    }
  }

  v12 = [(IMServiceReachabilityHandleResult *)self brandLogoData];

  if (v12)
  {
    v13 = [(IMServiceReachabilityHandleResult *)self brandLogoData];
    if (v13)
    {
      [v7 setObject:v13 forKeyedSubscript:@"bld"];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = [(IMServiceReachabilityHandleResult *)self handleID];
      v16 = [(IMServiceReachabilityHandleResult *)self service];
      v17 = [v7 objectForKeyedSubscript:@"pmd"];
      if (v17)
      {
        v18 = @"YES";
      }

      else
      {
        v18 = @"NO";
      }

      v19 = [v7 objectForKeyedSubscript:@"bid"];
      v20 = [v7 objectForKeyedSubscript:@"bld"];
      v21 = v20;
      if (v19)
      {
        v22 = @"YES";
      }

      else
      {
        v22 = @"NO";
      }

      v25 = 138413314;
      if (v20)
      {
        v23 = @"YES";
      }

      else
      {
        v23 = @"NO";
      }

      v26 = v15;
      v27 = 2112;
      v28 = v16;
      v29 = 2112;
      v30 = v18;
      v31 = 2112;
      v32 = v22;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Handle reachability for %@, service: %@. persistentMenu: %@, brandInfo: %@, brandLogoData: %@", &v25, 0x34u);
    }
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
    v7 = [v5 persistentMenuData];
    if (v6 == v7)
    {
      v10 = 1;
    }

    else
    {
      v8 = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
      v9 = [v5 persistentMenuData];
      v10 = [v8 isEqualToData:v9];
    }

    v12 = [(IMServiceReachabilityHandleResult *)self brandInfoData];
    v13 = [v5 brandInfoData];
    if (v12 == v13)
    {
      v16 = 1;
    }

    else
    {
      v14 = [(IMServiceReachabilityHandleResult *)self brandInfoData];
      v15 = [v5 brandInfoData];
      v16 = [v14 isEqualToData:v15];
    }

    v17 = [(IMServiceReachabilityHandleResult *)self brandLogoData];
    v18 = [v5 brandLogoData];
    if (v17 == v18)
    {
      v21 = 1;
    }

    else
    {
      v19 = [(IMServiceReachabilityHandleResult *)self brandLogoData];
      v20 = [v5 brandLogoData];
      v21 = [v19 isEqualToData:v20];
    }

    v22 = [v5 isReachable];
    if (v22 == [(IMServiceReachabilityHandleResult *)self isReachable])
    {
      v23 = [v5 service];
      v24 = [(IMServiceReachabilityHandleResult *)self service];
      if ([v23 isEqualToString:v24])
      {
        v25 = [v5 handleID];
        v26 = [(IMServiceReachabilityHandleResult *)self handleID];
        if ([v25 isEqualToString:v26])
        {
          v11 = v10 & v16 & v21;
        }

        else
        {
          v11 = 0;
        }
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IMServiceReachabilityHandleResult *)self handleID];
  v6 = [(IMServiceReachabilityHandleResult *)self service];
  if ([(IMServiceReachabilityHandleResult *)self isReachable])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];
  v9 = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];
  v10 = [(IMServiceReachabilityHandleResult *)self brandLogoData];
  v11 = [v3 stringWithFormat:@"<%@ %p [ID: %@ service: %@ isReachable: %@ persistentMenu: %@ brandInfo: %@ brandLogo: %lu]>", v4, self, v5, v6, v7, v8, v9, objc_msgSend(v10, "length")];

  return v11;
}

- (id)persistentMenuData
{
  v3 = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];
    v6 = [v4 dataWithJSONObject:v5 options:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)brandInfoData
{
  v3 = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];

  if (v3)
  {
    v4 = MEMORY[0x1E696ACB0];
    v5 = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];
    v6 = [v4 dataWithJSONObject:v5 options:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end