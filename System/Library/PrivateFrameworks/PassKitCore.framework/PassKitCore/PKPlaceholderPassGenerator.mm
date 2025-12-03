@interface PKPlaceholderPassGenerator
+ (id)addManifestIfNecessaryToPass:(id)pass;
+ (id)manifestForDirectory:(id)directory error:(id *)error;
+ (id)manifestSignatureForDirectory:(id)directory passCertificate:(id)certificate appleWWDRCertificate:(id)rCertificate certificatePassword:(id)password error:(id *)error;
- (NSArray)associatedApplicationIdentifiers;
- (NSMutableDictionary)passContent;
- (NSString)primaryAccountIdentifier;
- (NSString)serialNumber;
- (PKPlaceholderPassGenerator)initWithPassTemplate:(id)template error:(id *)error;
- (id)generateAndSignPassWithPassCertificate:(id)certificate appleWWDRCertificate:(id)rCertificate certificatePassword:(id)password error:(id *)error;
- (id)passTypeIdentifier;
- (int64_t)updatePassUpgradeRequestsWithBlock:(id)block;
- (int64_t)updatePaymentApplicationsWithBlock:(id)block;
- (void)_updatePassURLsConfigrationPassUrl:(id)url;
- (void)insertPassField:(id)field;
- (void)insertPaymentApplication:(id)application;
- (void)setAssociatedApplicationIdentifiers:(id)identifiers;
- (void)setPassTypeIdentifier:(id)identifier;
- (void)setPrimaryAccountIdentifier:(id)identifier;
- (void)setSerialNumber:(id)number;
- (void)setUpdatePassRemoteAssetConfigrationsWithBlock:(id)block;
@end

@implementation PKPlaceholderPassGenerator

+ (id)manifestForDirectory:(id)directory error:(id *)error
{
  v48 = *MEMORY[0x1E69E9840];
  uRLByStandardizingPath = [directory URLByStandardizingPath];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v36 = uRLByStandardizingPath;
  v7 = [defaultManager enumeratorAtURL:uRLByStandardizingPath includingPropertiesForKeys:0 options:0 errorHandler:0];
  v32 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
  if (!v9)
  {

    goto LABEL_22;
  }

  v10 = v9;
  errorCopy = error;
  v31 = defaultManager;
  v11 = 0;
  v12 = *v44;
  v13 = *MEMORY[0x1E695DBB8];
  v34 = *MEMORY[0x1E695DBB8];
  v35 = v8;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v44 != v12)
      {
        objc_enumerationMutation(v8);
      }

      if (!v11)
      {
        v15 = *(*(&v43 + 1) + 8 * i);
        v41 = 0;
        v42 = 0;
        v16 = [v15 getResourceValue:&v42 forKey:v13 error:&v41];
        v17 = v42;
        v11 = v41;
        if (v16 && [v17 BOOLValue])
        {
          uRLByStandardizingPath2 = [v15 URLByStandardizingPath];
          v38 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:uRLByStandardizingPath2];
          sHA1Hash = [v38 SHA1Hash];
          hexEncoding = [sHA1Hash hexEncoding];

          pathComponents = [v36 pathComponents];
          pathComponents2 = [uRLByStandardizingPath2 pathComponents];
          v37 = pathComponents;
          v22 = [pathComponents count];
          v23 = [pathComponents2 subarrayWithRange:{v22, objc_msgSend(pathComponents2, "count") - v22}];
          v24 = [MEMORY[0x1E696AEC0] pathWithComponents:v23];
          if (v24)
          {
            v25 = [@"manifest" stringByAppendingPathExtension:@"json"];
            if ([v24 isEqualToString:v25])
            {
            }

            else
            {
              v33 = [v24 isEqualToString:@"signature"];

              if ((v33 & 1) == 0)
              {
                [v32 setObject:hexEncoding forKeyedSubscript:v24];
              }
            }
          }

          v13 = v34;
          v8 = v35;
        }
      }
    }

    v10 = [v8 countByEnumeratingWithState:&v43 objects:v47 count:16];
  }

  while (v10);

  error = errorCopy;
  defaultManager = v31;
  if (!v11)
  {
LABEL_22:
    v40 = 0;
    v26 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v32 options:1 error:&v40];
    v11 = v40;
    if (!error)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v26 = 0;
  if (errorCopy)
  {
LABEL_23:
    v27 = v11;
    *error = v11;
  }

LABEL_24:
  if (v11)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  return v28;
}

+ (id)addManifestIfNecessaryToPass:(id)pass
{
  v28 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  dataAccessor = [passCopy dataAccessor];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v14 = ErrorWithCodeAndDescription(0, @"Pass must have file data accessor");
    goto LABEL_20;
  }

  dataAccessor2 = [passCopy dataAccessor];
  fileURL = [dataAccessor2 fileURL];
  v8 = [fileURL URLByAppendingPathComponent:@"signature" isDirectory:0];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [v8 path];
  v11 = [defaultManager fileExistsAtPath:path];

  if (v11)
  {
    v12 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      uniqueID = [passCopy uniqueID];
      *buf = 138412290;
      v27 = uniqueID;
      _os_log_impl(&dword_1AD337000, v12, OS_LOG_TYPE_DEFAULT, "Pass with unique ID %@ already has a signature; we will not attempt to add a manifest.", buf, 0xCu);
    }

    v14 = 0;
    goto LABEL_19;
  }

  v15 = [@"manifest" stringByAppendingPathExtension:@"json"];
  v12 = [fileURL URLByAppendingPathComponent:v15 isDirectory:0];

  path2 = [v12 path];
  v17 = [defaultManager fileExistsAtPath:path2];

  if (v17)
  {
    v18 = PKLogFacilityTypeGetObject(0);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
LABEL_16:
      v22 = 0;
      goto LABEL_17;
    }

    uniqueID2 = [passCopy uniqueID];
    *buf = 138412290;
    v27 = uniqueID2;
    _os_log_impl(&dword_1AD337000, v18, OS_LOG_TYPE_DEFAULT, "Pass with unique ID %@ already has a manifest; we will not generate a new one.", buf, 0xCu);
LABEL_15:

    goto LABEL_16;
  }

  v25 = 0;
  v18 = [PKPlaceholderPassGenerator manifestForDirectory:fileURL error:&v25];
  v20 = v25;
  if (!v20)
  {
    v24 = 0;
    [v18 writeToURL:v12 options:0 error:&v24];
    v21 = v24;
    if (v21)
    {
      v22 = v21;
LABEL_17:

      v14 = v22;
      goto LABEL_18;
    }

    uniqueID2 = PKManifestHash(fileURL);
    [passCopy setManifestHash:uniqueID2];
    goto LABEL_15;
  }

  v14 = v20;

LABEL_18:
LABEL_19:

LABEL_20:

  return v14;
}

+ (id)manifestSignatureForDirectory:(id)directory passCertificate:(id)certificate appleWWDRCertificate:(id)rCertificate certificatePassword:(id)password error:(id *)error
{
  v35[1] = *MEMORY[0x1E69E9840];
  directoryCopy = directory;
  certificateCopy = certificate;
  rCertificateCopy = rCertificate;
  passwordCopy = password;
  if (certificateCopy && rCertificateCopy)
  {
    v15 = *MEMORY[0x1E695E480];
    v16 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], rCertificateCopy);
    items = 0;
    if (passwordCopy)
    {
      v34 = *MEMORY[0x1E697B0B0];
      v35[0] = passwordCopy;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    }

    else
    {
      v17 = MEMORY[0x1E695E0F8];
    }

    v19 = SecPKCS12Import(certificateCopy, v17, &items);
    if (v16)
    {
      v20 = v19 == 0;
    }

    else
    {
      v20 = 0;
    }

    if (!v20 || CFArrayGetCount(items) != 1)
    {
      if (error)
      {
        *error = ErrorWithCodeAndDescription(0, @"Error importing certificates.");
      }

      v28 = 0;
      v18 = 0;
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(items, 0);
    CFDictionaryGetValue(ValueAtIndex, *MEMORY[0x1E697B0B8]);
    v22 = *MEMORY[0x1E697AFB0];
    v33[0] = *MEMORY[0x1E695E4D0];
    v23 = *MEMORY[0x1E697AF70];
    v32[0] = v22;
    v32[1] = v23;
    v31 = v16;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
    v33[1] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

    Mutable = CFDataCreateMutable(v15, 0);
    v27 = SecCMSCreateSignedData();
    if (v27)
    {
      if (error)
      {
        ErrorWithCodeAndDescription(v27, @"Error signing manifest.");
        *error = v28 = 0;
        if (!Mutable)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v28 = 0;
        if (!Mutable)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
      v28 = [(__CFData *)Mutable copy];
      if (!Mutable)
      {
LABEL_25:

LABEL_26:
        CFRelease(v16);
        v18 = v28;
LABEL_27:

        goto LABEL_28;
      }
    }

    CFRelease(Mutable);
    goto LABEL_25;
  }

  if (error)
  {
    ErrorWithCodeAndDescription(0, @"No certificates provided.");
    *error = v18 = 0;
  }

  else
  {
    v18 = 0;
  }

LABEL_28:

  return v18;
}

- (PKPlaceholderPassGenerator)initWithPassTemplate:(id)template error:(id *)error
{
  templateCopy = template;
  v8 = [(PKPlaceholderPassGenerator *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_templateDirectory, template);
    v20 = 0;
    v10 = [[PKFileDataAccessor alloc] initWithFileURL:templateCopy error:&v20];
    v11 = v20;
    v12 = v11;
    if (v10)
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v19 = 0;
      v14 = [(PKObject *)PKPass createWithFileDataAccessor:v10 validationOptions:1 warnings:0 error:&v19];
      v12 = v19;
      templatePass = v9->_templatePass;
      v9->_templatePass = v14;
    }

    if (error)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (error)
    {
LABEL_9:
      v16 = v12;
      *error = v12;
    }
  }

  if (v12)
  {
    v17 = 0;
  }

  else
  {
    v17 = v9;
  }

  return v17;
}

- (NSMutableDictionary)passContent
{
  passContent = self->_passContent;
  if (!passContent)
  {
    dataAccessor = [(PKObject *)self->_templatePass dataAccessor];
    dictionary = [dataAccessor dictionary];
    v6 = [dictionary mutableCopy];
    v7 = self->_passContent;
    self->_passContent = v6;

    passContent = self->_passContent;
  }

  return passContent;
}

- (id)passTypeIdentifier
{
  passContent = [(PKPlaceholderPassGenerator *)self passContent];
  v3 = [passContent objectForKeyedSubscript:@"passTypeIdentifier"];

  return v3;
}

- (void)setPassTypeIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    [passContent setObject:identifierCopy forKeyedSubscript:@"passTypeIdentifier"];
  }
}

- (NSString)serialNumber
{
  passContent = [(PKPlaceholderPassGenerator *)self passContent];
  v3 = [passContent objectForKeyedSubscript:@"serialNumber"];

  return v3;
}

- (void)setSerialNumber:(id)number
{
  if (number)
  {
    numberCopy = number;
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    [passContent setObject:numberCopy forKeyedSubscript:@"serialNumber"];
  }
}

- (NSString)primaryAccountIdentifier
{
  passContent = [(PKPlaceholderPassGenerator *)self passContent];
  v3 = [passContent objectForKeyedSubscript:@"primaryAccountIdentifier"];

  return v3;
}

- (void)setPrimaryAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = identifierCopy;
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    [passContent setObject:v8 forKeyedSubscript:@"primaryAccountIdentifier"];
    if ([v8 length] < 5)
    {
      v6 = v8;
    }

    else
    {
      v6 = [v8 substringFromIndex:{objc_msgSend(v8, "length") - 4}];
    }

    v7 = v6;
    [passContent setObject:v6 forKeyedSubscript:@"primaryAccountSuffix"];

    identifierCopy = v8;
  }
}

- (NSArray)associatedApplicationIdentifiers
{
  passContent = [(PKPlaceholderPassGenerator *)self passContent];
  v3 = [passContent objectForKeyedSubscript:@"associatedApplicationIdentifiers"];

  return v3;
}

- (void)setAssociatedApplicationIdentifiers:(id)identifiers
{
  if (identifiers)
  {
    identifiersCopy = identifiers;
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    [passContent setObject:identifiersCopy forKeyedSubscript:@"associatedApplicationIdentifiers"];
  }
}

- (void)insertPassField:(id)field
{
  v32 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  if (fieldCopy)
  {
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = [&unk_1F23B4460 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v28;
      while (2)
      {
        v10 = 0;
        v11 = v8;
        do
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(&unk_1F23B4460);
          }

          v8 = *(*(&v27 + 1) + 8 * v10);

          v12 = [passContent objectForKey:v8];
          v13 = [v12 mutableCopy];

          if (v13)
          {
            type = [fieldCopy type];
            v20 = _PKEnumValueToString(type, @"PKPassFieldType", @"PKPassFieldTypeHeader, PKPassFieldTypePrimary, PKPassFieldTypeSecondary, PKPassFieldTypeAuxiliary, PKPassFieldTypeBack, PKPassFieldTypeAdditionalInfo", v15, v16, v17, v18, v19, 0);
            if (v20)
            {
              v21 = [v13 objectForKey:v20];
              v22 = [v21 mutableCopy];
              v23 = v22;
              if (v22)
              {
                v24 = v22;
              }

              else
              {
                v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
              }

              v25 = v24;

              asDictionary = [fieldCopy asDictionary];
              [v25 addObject:asDictionary];

              [v13 setObject:v25 forKeyedSubscript:v20];
              [passContent setObject:v13 forKeyedSubscript:v8];
            }

            v8 = v13;
            goto LABEL_17;
          }

          ++v10;
          v11 = v8;
        }

        while (v7 != v10);
        v7 = [&unk_1F23B4460 countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }

LABEL_17:
    }
  }
}

- (void)insertPaymentApplication:(id)application
{
  applicationCopy = application;
  if (applicationCopy)
  {
    v15 = applicationCopy;
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    isAuxiliary = [v15 isAuxiliary];
    v7 = &PKPassKeyAuxiliaryPaymentApplications;
    if (!isAuxiliary)
    {
      v7 = &PKPassKeyPaymentApplications;
    }

    v8 = *v7;
    v9 = [passContent objectForKey:v8];
    v10 = [v9 mutableCopy];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    v13 = v12;

    asDictionary = [v15 asDictionary];
    [v13 addObject:asDictionary];

    [passContent setObject:v13 forKeyedSubscript:v8];
    applicationCopy = v15;
  }
}

- (int64_t)updatePaymentApplicationsWithBlock:(id)block
{
  blockCopy = block;
  v5 = blockCopy;
  if (blockCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __65__PKPlaceholderPassGenerator_updatePaymentApplicationsWithBlock___block_invoke;
    aBlock[3] = &unk_1E79DFAB0;
    v16 = blockCopy;
    v6 = _Block_copy(aBlock);
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    v8 = [passContent objectForKey:@"paymentApplications"];
    v9 = [v8 mutableCopy];

    v10 = [passContent objectForKey:@"auxiliaryPaymentApplications"];
    v11 = [v10 mutableCopy];

    v12 = v6[2](v6, v9, 0);
    v13 = v6[2](v6, v11, 1) + v12;
    [passContent setObject:v9 forKeyedSubscript:@"paymentApplications"];
    [passContent setObject:v11 forKeyedSubscript:@"auxiliaryPaymentApplications"];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t __65__PKPlaceholderPassGenerator_updatePaymentApplicationsWithBlock___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = 0;
  if ([v5 count])
  {
    v7 = 0;
    do
    {
      v27 = 0;
      v8 = [PKPaymentApplication alloc];
      v9 = [v5 objectAtIndexedSubscript:v7];
      v10 = [(PKPaymentApplication *)v8 initWithPaymentApplicationDictionary:v9 auxiliaryApplication:a3];

      if (v10)
      {
        v11 = (*(*(a1 + 32) + 16))();
        v12 = v11;
        v13 = v11 != 0;
        if (v11)
        {
          v14 = v11;
        }

        else
        {
          v14 = v10;
        }

        [v22 addObject:v14];
        v6 += (v13 | v27) & 1;
      }

      ++v7;
    }

    while (v7 < [v5 count]);
  }

  [v5 removeAllObjects];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v22;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*(*(&v23 + 1) + 8 * i) asDictionary];
        [v5 addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v17);
  }

  return v6;
}

- (int64_t)updatePassUpgradeRequestsWithBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (blockCopy)
  {
    passContent = [(PKPlaceholderPassGenerator *)self passContent];
    v5 = [passContent objectForKey:?];
    v6 = [v5 mutableCopy];

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = 0;
    if ([v6 count])
    {
      v8 = 0;
      do
      {
        v29 = 0;
        v9 = [v6 objectAtIndexedSubscript:v8];
        v10 = [PKPassUpgradeRequest passUpgradeRequestFromDictionary:v9];

        if (v10)
        {
          v11 = blockCopy[2](blockCopy, v10, &v29);
          v12 = v11;
          v13 = v11 != 0;
          v14 = v29;
          if ((v29 & 1) == 0)
          {
            if (v11)
            {
              v15 = v11;
            }

            else
            {
              v15 = v10;
            }

            [v24 addObject:v15];
          }

          v7 += (v13 | v14) & 1;
        }

        ++v8;
      }

      while (v8 < [v6 count]);
    }

    [v6 removeAllObjects];
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v24;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          asDictionary = [*(*(&v25 + 1) + 8 * i) asDictionary];
          [v6 addObject:asDictionary];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v18);
    }

    [passContent setObject:v6 forKeyedSubscript:@"passUpgrades"];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUpdatePassRemoteAssetConfigrationsWithBlock:(id)block
{
  v4 = _Block_copy(block);
  updateUrlsBlock = self->_updateUrlsBlock;
  self->_updateUrlsBlock = v4;
}

- (void)_updatePassURLsConfigrationPassUrl:(id)url
{
  v50[3] = *MEMORY[0x1E69E9840];
  urlCopy = url;
  if (self->_updateUrlsBlock)
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v6 = *MEMORY[0x1E695DB78];
    v50[0] = *MEMORY[0x1E695DB50];
    v50[1] = v6;
    v50[2] = *MEMORY[0x1E695DBC8];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:3];
    v33 = urlCopy;
    v8 = [defaultManager enumeratorAtURL:urlCopy includingPropertiesForKeys:v7 options:0 errorHandler:0];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v45;
      v13 = 0x1E695D000uLL;
      v34 = *v45;
      v35 = v9;
      do
      {
        v14 = 0;
        v36 = v11;
        do
        {
          if (*v45 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v44 + 1) + 8 * v14);
          pathExtension = [v15 pathExtension];
          v17 = [pathExtension isEqualToString:@"urls"];

          if (v17)
          {
            v18 = [objc_alloc(*(v13 + 3824)) initWithContentsOfURL:v15];
            if (v18)
            {
              v19 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v18 options:0 error:0];
              if (v19)
              {
                v39 = v18;
                v37 = v15;
                v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
                v40 = 0u;
                v41 = 0u;
                v42 = 0u;
                v43 = 0u;
                v38 = v19;
                v21 = v19;
                v22 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v41;
                  do
                  {
                    for (i = 0; i != v23; ++i)
                    {
                      if (*v41 != v24)
                      {
                        objc_enumerationMutation(v21);
                      }

                      v26 = *(*(&v40 + 1) + 8 * i);
                      v27 = [v21 objectForKeyedSubscript:v26];
                      v28 = (*(self->_updateUrlsBlock + 2))();
                      v29 = v28;
                      if (v28)
                      {
                        v30 = v28;
                      }

                      else
                      {
                        v30 = v27;
                      }

                      [v20 setObject:v30 forKeyedSubscript:v26];
                    }

                    v23 = [v21 countByEnumeratingWithState:&v40 objects:v48 count:16];
                  }

                  while (v23);
                }

                v31 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v20 options:1 error:0];
                v32 = v31;
                if (v31)
                {
                  [v31 writeToURL:v37 atomically:1];
                }

                v12 = v34;
                v9 = v35;
                v13 = 0x1E695D000;
                v11 = v36;
                v19 = v38;
                v18 = v39;
              }
            }
          }

          ++v14;
        }

        while (v14 != v11);
        v11 = [v9 countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v11);
    }

    urlCopy = v33;
  }
}

- (id)generateAndSignPassWithPassCertificate:(id)certificate appleWWDRCertificate:(id)rCertificate certificatePassword:(id)password error:(id *)error
{
  certificateCopy = certificate;
  rCertificateCopy = rCertificate;
  passwordCopy = password;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v14 = PKTemporaryItemURLWithExtension(@"pkpass", 1);
  PKTemporaryItemPrepareDirectory();
  if (!v14)
  {
    v17 = ErrorWithCodeAndDescription(0, @"Invalid temporary directory");
    goto LABEL_16;
  }

  v50 = 0;
  v15 = [defaultManager removeItemAtURL:v14 error:&v50];
  v16 = v50;
  v17 = v16;
  if (v15)
  {
    goto LABEL_3;
  }

  domain = [v16 domain];
  if (([domain isEqualToString:*MEMORY[0x1E696A250]] & 1) == 0)
  {

    goto LABEL_16;
  }

  code = [v17 code];

  if (code != 4)
  {
LABEL_16:
    v26 = 0;
    if (!v17)
    {
      goto LABEL_38;
    }

    goto LABEL_17;
  }

LABEL_3:

  templateDirectory = self->_templateDirectory;
  v49 = 0;
  v19 = [defaultManager copyItemAtURL:templateDirectory toURL:v14 error:&v49];
  v20 = v49;
  if (v19)
  {
    v21 = v20 == 0;
  }

  else
  {
    v21 = 0;
  }

  if (!v21)
  {
    v17 = v20;
    goto LABEL_37;
  }

  passContent = [(PKPlaceholderPassGenerator *)self passContent];
  if (!passContent)
  {
    v30 = ErrorWithCodeAndDescription(0, @"Missing pass.json");
    v31 = 0;
    goto LABEL_26;
  }

  v48 = 0;
  v41 = [MEMORY[0x1E696ACB0] dataWithJSONObject:passContent options:1 error:&v48];
  v25 = v48;
  if (!v25)
  {
    v31 = v41;
LABEL_26:
    v32 = PKPassDictionaryURLWithPassURL(v14);
    v47 = 0;
    v41 = v31;
    [v31 writeToURL:v32 options:0 error:&v47];
    v17 = v47;

    if (!v17)
    {
      [(PKPlaceholderPassGenerator *)self _updatePassURLsConfigrationPassUrl:v14];
      v46 = 0;
      v33 = [objc_opt_class() manifestForDirectory:v14 error:&v46];
      v34 = v46;
      v17 = v34;
      if (v33)
      {
        if (!v34)
        {
          v39 = [@"manifest" stringByAppendingPathExtension:@"json"];
          [v14 URLByAppendingPathComponent:v39 isDirectory:0];
          v35 = v40 = v33;
          v45 = 0;
          [v40 writeToURL:v35 options:0 error:&v45];
          v17 = v45;

          v33 = v40;
          if (!v17 && certificateCopy && rCertificateCopy)
          {
            v44 = 0;
            v36 = [objc_opt_class() manifestSignatureForDirectory:v40 passCertificate:certificateCopy appleWWDRCertificate:rCertificateCopy certificatePassword:passwordCopy error:&v44];
            v17 = v44;
            if (!v17)
            {
              v37 = [v14 URLByAppendingPathComponent:@"signature" isDirectory:0];
              v43 = 0;
              [v36 writeToURL:v37 options:0 error:&v43];
              v17 = v43;

              v33 = v40;
            }
          }
        }
      }
    }

    goto LABEL_36;
  }

  v17 = v25;
LABEL_36:

LABEL_37:
  v26 = 1;
  if (!v17)
  {
LABEL_38:
    v42 = 0;
    v38 = [[PKFileDataAccessor alloc] initWithFileURL:v14 error:&v42];
    v17 = v42;
    [(PKFileDataAccessor *)v38 setOwnsFileURL:1];
    v27 = [(PKObject *)PKPass createWithValidatedFileDataAccessor:v38];

    if (!error)
    {
      goto LABEL_21;
    }

LABEL_20:
    v28 = v17;
    *error = v17;
    goto LABEL_21;
  }

LABEL_17:
  if (v26)
  {
    [defaultManager removeItemAtURL:v14 error:0];
  }

  v27 = 0;
  if (error)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v27;
}

@end