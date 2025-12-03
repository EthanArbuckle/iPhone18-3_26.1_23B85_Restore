@interface MAThirdPartyCompatibility
+ (BOOL)__addTrustedSigningCertificateAuthority:(id)authority;
+ (BOOL)addTrustedSigningCertificateAuthority:(id)authority;
+ (BOOL)clearAllTrustedSigningCertificateAuthorities;
+ (BOOL)isThirdPartyAssetType:(id)type;
+ (BOOL)permitThirdPartySigningForAssetType:(id)type outOrganizations:(id *)organizations;
+ (id)compatibilityVersionForAssetType:(id)type;
+ (id)compatibilityVersionStringForAssetType:(id)type;
+ (id)defaultThirdPartyServerURLForAssetType:(id)type;
@end

@implementation MAThirdPartyCompatibility

+ (id)compatibilityVersionForAssetType:(id)type
{
  typeCopy = type;
  v4 = [objc_opt_class() compatibilityVersionStringForAssetType:typeCopy];

  if (v4)
  {
    v5 = MEMORY[0x1E696AD98];
    [v4 doubleValue];
    v6 = [v5 numberWithDouble:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)compatibilityVersionStringForAssetType:(id)type
{
  typeCopy = type;
  if (typeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _thirdPartyAssetTypeStorage = [objc_opt_class() _thirdPartyAssetTypeStorage];
    v5 = [_thirdPartyAssetTypeStorage objectForKey:typeCopy];

    if (v5)
    {
      v6 = [v5 objectForKey:@"CompatibilityVersionKey"];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isThirdPartyAssetType:(id)type
{
  typeCopy = type;
  if (typeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _thirdPartyAssetTypeStorage = [objc_opt_class() _thirdPartyAssetTypeStorage];
    v5 = [_thirdPartyAssetTypeStorage objectForKey:typeCopy];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)permitThirdPartySigningForAssetType:(id)type outOrganizations:(id *)organizations
{
  typeCopy = type;
  if (typeCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    _thirdPartyAssetTypeStorage = [objc_opt_class() _thirdPartyAssetTypeStorage];
    v7 = [_thirdPartyAssetTypeStorage objectForKey:typeCopy];

    if (v7)
    {
      v8 = [v7 objectForKey:@"OrganizationsKey"];
      v9 = v8;
      v10 = v8 != 0;
      if (organizations && v8)
      {
        *organizations = [MEMORY[0x1E695DFD8] setWithArray:v8];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)defaultThirdPartyServerURLForAssetType:(id)type
{
  v16 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([objc_opt_class() isThirdPartyAssetType:typeCopy])
  {
    v11 = 0;
    v4 = MAGetServerUrl(typeCopy, &v11);
    v5 = v11;
    v6 = v5;
    if (v4)
    {
      v7 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v13 = typeCopy;
        v14 = 2048;
        v15 = v4;
        _os_log_impl(&dword_197AD5000, v7, OS_LOG_TYPE_ERROR, "Failed to retrieve server url for:(%@) from daemon. %ld", buf, 0x16u);
      }

      v8 = 0;
    }

    else
    {
      v8 = v5;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (BOOL)addTrustedSigningCertificateAuthority:(id)authority
{
  authorityCopy = authority;
  v4 = [objc_opt_class() __addTrustedSigningCertificateAuthority:authorityCopy];

  return v4;
}

+ (BOOL)clearAllTrustedSigningCertificateAuthorities
{
  v2 = objc_opt_class();

  return [v2 __addTrustedSigningCertificateAuthority:0];
}

+ (BOOL)__addTrustedSigningCertificateAuthority:(id)authority
{
  v58[2] = *MEMORY[0x1E69E9840];
  authorityCopy = authority;
  if (os_variant_has_internal_content())
  {
    pipe = [MEMORY[0x1E696AE00] pipe];
    v5 = objc_alloc_init(MEMORY[0x1E696AED8]);
    v6 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/usr/local/bin/dvdo"];
    [v5 setExecutableURL:v6];

    v58[0] = @"/bin/cat";
    v58[1] = @"/var/protected/trustd/private/ConstrainedTestAnchors.plist";
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
    [v5 setArguments:v7];

    [v5 setStandardOutput:pipe];
    v54 = 0;
    LOBYTE(v7) = [v5 launchAndReturnError:&v54];
    v8 = v54;
    if ((v7 & 1) == 0)
    {
      v16 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v8;
        _os_log_impl(&dword_197AD5000, v16, OS_LOG_TYPE_ERROR, "Unable to launch dvdo to get trusted anchors. %@", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_54;
    }

    fileHandleForReading = [pipe fileHandleForReading];
    readDataToEndOfFile = [fileHandleForReading readDataToEndOfFile];

    [v5 waitUntilExit];
    terminationStatus = [v5 terminationStatus];
    v47 = readDataToEndOfFile;
    v48 = v8;
    if (terminationStatus)
    {
      v12 = terminationStatus;
      v13 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        LODWORD(v57) = v12;
        _os_log_impl(&dword_197AD5000, v13, OS_LOG_TYPE_DEFAULT, "Getting trusted anchors failed with status: %d", buf, 8u);
      }

      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    else
    {
      v53 = 0;
      dictionary = [MEMORY[0x1E696AE40] propertyListWithData:readDataToEndOfFile options:2 format:0 error:&v53];
      v17 = v53;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v18 = _MAClientLog(@"V2");
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v57 = v17;
          _os_log_impl(&dword_197AD5000, v18, OS_LOG_TYPE_ERROR, "Unable to parse existing trusted anchors to property list, will replace: %@", buf, 0xCu);
        }

        dictionary2 = [MEMORY[0x1E695DF90] dictionary];

        dictionary = dictionary2;
      }
    }

    v20 = [dictionary objectForKey:@"1.2.840.113635.100.1.122"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      array = [MEMORY[0x1E695DF70] array];

      [dictionary setObject:array forKey:@"1.2.840.113635.100.1.122"];
      v20 = array;
    }

    v22 = _MAClientLog(@"V2");
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (authorityCopy)
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_DEFAULT, "Requested to set trusted 3P CA Data", buf, 2u);
      }

      v24 = [authorityCopy base64EncodedStringWithOptions:0];
      [v20 addObject:v24];
    }

    else
    {
      if (v23)
      {
        *buf = 0;
        _os_log_impl(&dword_197AD5000, v22, OS_LOG_TYPE_DEFAULT, "Requested to clear trusted 3P CA Data", buf, 2u);
      }

      [v20 removeAllObjects];
    }

    v52 = 0;
    v25 = [MEMORY[0x1E696AE40] dataWithPropertyList:dictionary format:100 options:0 error:&v52];
    v26 = v52;
    v45 = v26;
    v46 = v25;
    if (!v25)
    {
      v39 = v26;
      pipe2 = _MAClientLog(@"V2");
      if (os_log_type_enabled(pipe2, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v39;
        _os_log_impl(&dword_197AD5000, pipe2, OS_LOG_TYPE_ERROR, "Unable to turn trusted anchors into Data. %@", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_53;
    }

    pipe2 = [MEMORY[0x1E696AE00] pipe];
    v28 = objc_alloc_init(MEMORY[0x1E696AED8]);
    v29 = [MEMORY[0x1E695DFF8] fileURLWithPath:@"/usr/local/bin/dvdo"];
    [v28 setExecutableURL:v29];

    v55[0] = @"/usr/bin/tee";
    v55[1] = @"/var/protected/trustd/private/ConstrainedTestAnchors.plist";
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
    [v28 setArguments:v30];

    [v28 setStandardInput:pipe2];
    fileHandleWithNullDevice = [MEMORY[0x1E696AC00] fileHandleWithNullDevice];
    [v28 setStandardOutput:fileHandleWithNullDevice];

    v51 = 0;
    LOBYTE(fileHandleWithNullDevice) = [v28 launchAndReturnError:&v51];
    v48 = v51;
    if ((fileHandleWithNullDevice & 1) == 0)
    {
      fileHandleForWriting = _MAClientLog(@"V2");
      if (os_log_type_enabled(fileHandleForWriting, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v48;
        _os_log_impl(&dword_197AD5000, fileHandleForWriting, OS_LOG_TYPE_ERROR, "Unable to launch dvdo to set trusted anchors. %@", buf, 0xCu);
      }

      v15 = 0;
      goto LABEL_52;
    }

    fileHandleForWriting = [pipe2 fileHandleForWriting];
    v50 = 0;
    v33 = [fileHandleForWriting writeData:v25 error:&v50];
    v34 = v50;
    if (v33)
    {
      v49 = 0;
      v35 = [fileHandleForWriting closeAndReturnError:&v49];
      v44 = v49;

      if (v35)
      {
        [v28 waitUntilExit];
        terminationStatus2 = [v28 terminationStatus];
        v37 = _MAClientLog(@"V2");
        v38 = v37;
        if (terminationStatus2)
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            LODWORD(v57) = terminationStatus2;
            _os_log_impl(&dword_197AD5000, v38, OS_LOG_TYPE_ERROR, "Launching dvdo to set trusted anchors failed with status: %d", buf, 8u);
          }

          v15 = 0;
        }

        else
        {
          if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_197AD5000, v38, OS_LOG_TYPE_DEFAULT, "Successfully wrote out trusted anchors, trustd will be bounced.", buf, 2u);
          }

          v15 = 1;
        }

        v34 = v44;
        goto LABEL_51;
      }

      v40 = _MAClientLog(@"V2");
      v34 = v44;
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v44;
        v41 = "Unable to to write trusted anchors because pipe failed to close. %@";
        goto LABEL_45;
      }
    }

    else
    {
      v40 = _MAClientLog(@"V2");
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v57 = v34;
        v41 = "Unable to to write trusted anchors to pipe. %@";
LABEL_45:
        _os_log_impl(&dword_197AD5000, v40, OS_LOG_TYPE_ERROR, v41, buf, 0xCu);
      }
    }

    [v28 terminate];
    v15 = 0;
LABEL_51:

LABEL_52:
LABEL_53:
    v16 = v47;

    v8 = v48;
LABEL_54:

    goto LABEL_55;
  }

  pipe = _MAClientLog(@"V2");
  if (os_log_type_enabled(pipe, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_197AD5000, pipe, OS_LOG_TYPE_DEFAULT, "This operation may only performed on Apple Internal.", buf, 2u);
  }

  v15 = 0;
LABEL_55:

  v42 = *MEMORY[0x1E69E9840];
  return v15;
}

@end