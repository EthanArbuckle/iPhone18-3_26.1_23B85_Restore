@interface IMServiceReachabilityHandleResult
- (BOOL)isEqual:(id)equal;
- (IMServiceReachabilityHandleResult)initWithCoder:(id)coder;
- (IMServiceReachabilityHandleResult)initWithHandleID:(id)d service:(id)service isReachable:(BOOL)reachable supportsEncryption:(BOOL)encryption persistentMenuDictionary:(id)dictionary brandInfoDictionary:(id)infoDictionary brandLogoData:(id)data;
- (id)brandInfoData;
- (id)createDictionary;
- (id)description;
- (id)persistentMenuData;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMServiceReachabilityHandleResult

- (IMServiceReachabilityHandleResult)initWithHandleID:(id)d service:(id)service isReachable:(BOOL)reachable supportsEncryption:(BOOL)encryption persistentMenuDictionary:(id)dictionary brandInfoDictionary:(id)infoDictionary brandLogoData:(id)data
{
  dCopy = d;
  serviceCopy = service;
  dictionaryCopy = dictionary;
  infoDictionaryCopy = infoDictionary;
  dataCopy = data;
  v24.receiver = self;
  v24.super_class = IMServiceReachabilityHandleResult;
  v18 = [(IMServiceReachabilityHandleResult *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_handleID, d);
    objc_storeStrong(&v19->_service, service);
    v19->_reachable = reachable;
    v19->_supportsEncryption = encryption;
    objc_storeStrong(&v19->_persistentMenuDictionary, dictionary);
    objc_storeStrong(&v19->_brandInfoDictionary, infoDictionary);
    objc_storeStrong(&v19->_brandLogoData, data);
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  handleID = self->_handleID;
  coderCopy = coder;
  [coderCopy encodeObject:handleID forKey:@"i"];
  [coderCopy encodeObject:self->_service forKey:@"s"];
  [coderCopy encodeBool:self->_reachable forKey:@"r"];
  [coderCopy encodeBool:self->_supportsEncryption forKey:@"e"];
  persistentMenuData = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
  [coderCopy encodeObject:persistentMenuData forKey:@"pmd"];

  brandInfoData = [(IMServiceReachabilityHandleResult *)self brandInfoData];
  [coderCopy encodeObject:brandInfoData forKey:@"bid"];

  brandLogoData = [(IMServiceReachabilityHandleResult *)self brandLogoData];
  [coderCopy encodeObject:brandLogoData forKey:@"bld"];
}

- (IMServiceReachabilityHandleResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = IMServiceReachabilityHandleResult;
  v5 = [(IMServiceReachabilityHandleResult *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"i"];
    handleID = v5->_handleID;
    v5->_handleID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"s"];
    service = v5->_service;
    v5->_service = v8;

    v5->_reachable = [coderCopy decodeBoolForKey:@"r"];
    v5->_supportsEncryption = [coderCopy decodeBoolForKey:@"e"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pmd"];
    v11 = v10;
    if (v10)
    {
      v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:0];
    }

    persistentMenuDictionary = v5->_persistentMenuDictionary;
    v5->_persistentMenuDictionary = v10;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bid"];
    v14 = v13;
    if (v13)
    {
      v13 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v13 options:0 error:0];
    }

    brandInfoDictionary = v5->_brandInfoDictionary;
    v5->_brandInfoDictionary = v13;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bld"];
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

  persistentMenuDictionary = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];

  if (persistentMenuDictionary)
  {
    persistentMenuData = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
    if (persistentMenuData)
    {
      [v7 setObject:persistentMenuData forKeyedSubscript:@"pmd"];
    }
  }

  brandInfoDictionary = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];

  if (brandInfoDictionary)
  {
    brandInfoData = [(IMServiceReachabilityHandleResult *)self brandInfoData];
    if (brandInfoData)
    {
      [v7 setObject:brandInfoData forKeyedSubscript:@"bid"];
    }
  }

  brandLogoData = [(IMServiceReachabilityHandleResult *)self brandLogoData];

  if (brandLogoData)
  {
    brandLogoData2 = [(IMServiceReachabilityHandleResult *)self brandLogoData];
    if (brandLogoData2)
    {
      [v7 setObject:brandLogoData2 forKeyedSubscript:@"bld"];
    }
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      handleID = [(IMServiceReachabilityHandleResult *)self handleID];
      service = [(IMServiceReachabilityHandleResult *)self service];
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

      v26 = handleID;
      v27 = 2112;
      v28 = service;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    persistentMenuData = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
    persistentMenuData2 = [v5 persistentMenuData];
    if (persistentMenuData == persistentMenuData2)
    {
      v10 = 1;
    }

    else
    {
      persistentMenuData3 = [(IMServiceReachabilityHandleResult *)self persistentMenuData];
      persistentMenuData4 = [v5 persistentMenuData];
      v10 = [persistentMenuData3 isEqualToData:persistentMenuData4];
    }

    brandInfoData = [(IMServiceReachabilityHandleResult *)self brandInfoData];
    brandInfoData2 = [v5 brandInfoData];
    if (brandInfoData == brandInfoData2)
    {
      v16 = 1;
    }

    else
    {
      brandInfoData3 = [(IMServiceReachabilityHandleResult *)self brandInfoData];
      brandInfoData4 = [v5 brandInfoData];
      v16 = [brandInfoData3 isEqualToData:brandInfoData4];
    }

    brandLogoData = [(IMServiceReachabilityHandleResult *)self brandLogoData];
    brandLogoData2 = [v5 brandLogoData];
    if (brandLogoData == brandLogoData2)
    {
      v21 = 1;
    }

    else
    {
      brandLogoData3 = [(IMServiceReachabilityHandleResult *)self brandLogoData];
      brandLogoData4 = [v5 brandLogoData];
      v21 = [brandLogoData3 isEqualToData:brandLogoData4];
    }

    isReachable = [v5 isReachable];
    if (isReachable == [(IMServiceReachabilityHandleResult *)self isReachable])
    {
      service = [v5 service];
      service2 = [(IMServiceReachabilityHandleResult *)self service];
      if ([service isEqualToString:service2])
      {
        handleID = [v5 handleID];
        handleID2 = [(IMServiceReachabilityHandleResult *)self handleID];
        if ([handleID isEqualToString:handleID2])
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
  handleID = [(IMServiceReachabilityHandleResult *)self handleID];
  service = [(IMServiceReachabilityHandleResult *)self service];
  if ([(IMServiceReachabilityHandleResult *)self isReachable])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  persistentMenuDictionary = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];
  brandInfoDictionary = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];
  brandLogoData = [(IMServiceReachabilityHandleResult *)self brandLogoData];
  v11 = [v3 stringWithFormat:@"<%@ %p [ID: %@ service: %@ isReachable: %@ persistentMenu: %@ brandInfo: %@ brandLogo: %lu]>", v4, self, handleID, service, v7, persistentMenuDictionary, brandInfoDictionary, objc_msgSend(brandLogoData, "length")];

  return v11;
}

- (id)persistentMenuData
{
  persistentMenuDictionary = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];

  if (persistentMenuDictionary)
  {
    v4 = MEMORY[0x1E696ACB0];
    persistentMenuDictionary2 = [(IMServiceReachabilityHandleResult *)self persistentMenuDictionary];
    v6 = [v4 dataWithJSONObject:persistentMenuDictionary2 options:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)brandInfoData
{
  brandInfoDictionary = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];

  if (brandInfoDictionary)
  {
    v4 = MEMORY[0x1E696ACB0];
    brandInfoDictionary2 = [(IMServiceReachabilityHandleResult *)self brandInfoDictionary];
    v6 = [v4 dataWithJSONObject:brandInfoDictionary2 options:0 error:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end