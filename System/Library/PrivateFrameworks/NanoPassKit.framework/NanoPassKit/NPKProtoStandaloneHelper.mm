@interface NPKProtoStandaloneHelper
+ (CGSize)passImageSize;
+ (CGSize)passThumbnailImageSize;
+ (id)_convertProtoWelcomeStepContext:(id)context requestContext:(id)requestContext;
+ (id)fromNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)context requestContext:(id)requestContext;
+ (id)sha1hash:(id)sha1hash;
+ (id)toJsonString:(id)string;
+ (id)toNPKProtoStandaloneError:(id)error;
+ (id)toNPKProtoStandalonePass:(id)pass thumbnailSize:(BOOL)size;
+ (id)toNPKProtoStandalonePaymentCredential:(id)credential;
+ (id)toNPKProtoStandalonePaymentDigitalIssuanceMetadata:(id)metadata;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:(id)context;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerItem:(id)item;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerSection:(id)section;
+ (id)toNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)context fromStep:(int)step toStep:(int)toStep;
+ (id)toNPKProtoStandalonePaymentProvisioningMethodMetadata:(id)metadata;
+ (id)toNPKProtoStandalonePaymentSetupField:(id)field;
+ (id)toNPKProtoStandalonePaymentSetupMoreInfoItem:(id)item;
+ (id)toNPKProtoStandalonePaymentSetupProduct:(id)product;
+ (id)toNPKProtoStandalonePaymentSetupProductImageAssetURLs:(id)ls;
+ (id)toNPKProtoStandalonePaymentSetupProductPaymentOption:(id)option;
+ (id)toNPKProtoStandaloneVerificationChannel:(id)channel;
+ (id)toPKPaymentSetupField:(id)field;
+ (id)toStringValue:(id)value;
+ (int)toNPKProtoStandalonePassType:(unint64_t)type;
+ (int)toNPKProtoStandalonePaymentApplicationState:(int64_t)state;
+ (int)toNPKProtoStandalonePaymentPassActivationState:(unint64_t)state;
+ (int)toNPKProtoStandalonePaymentSetupFieldType:(unint64_t)type;
+ (int)toNPKProtoStandaloneReaderModeIngestionState:(unint64_t)state;
+ (int)toNPKProtoStandaloneVerificationChannelType:(unint64_t)type;
+ (unint64_t)toPKPaymentSetupFieldType:(int)type;
+ (void)_convertChooseCredentialsStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertChooseFlowStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertChooseProductStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertDigitalIssuanceAmountStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertDigitalIssuancePaymentStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertIssuerVerificationChannelsStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertIssuerVerificationCodeStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertIssuerVerificationFieldsStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertLocalDeviceManualEntry:(id)entry protoContext:(id)context;
+ (void)_convertLocalDeviceManualEntryProgress:(id)progress protoContext:(id)context;
+ (void)_convertManualEntryStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertMoreInformationStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertPasscodeUpgradeStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertProvisioningProgressStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertProvisioningResultStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertReaderModeEntryStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertReaderModeIngestionStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertSecondaryManualEntryStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertTermsAndConditionsStepContext:(id)context protoContext:(id)protoContext;
+ (void)_convertWelcomeStepContext:(id)context protoContext:(id)protoContext;
+ (void)setPassImageSize:(CGSize)size;
+ (void)setPassThumbnailImageSize:(CGSize)size;
@end

@implementation NPKProtoStandaloneHelper

+ (void)setPassImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = *MEMORY[0x277D85DE8];
  if (size.width <= 0.0 || size.height <= 0.0)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13.width = width;
        v13.height = height;
        v10 = 138412290;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v13);
        v8 = DictionaryRepresentation;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Ignoring invalid pass image size %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    __PassImageSize_0 = *&size.width;
    __PassImageSize_1 = *&size.height;
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (CGSize)passImageSize
{
  v2 = *&__PassImageSize_0;
  v3 = *&__PassImageSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (void)setPassThumbnailImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v12 = *MEMORY[0x277D85DE8];
  if (size.width <= 0.0 || size.height <= 0.0)
  {
    v5 = pk_Payment_log();
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

    if (v6)
    {
      v7 = pk_Payment_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v13.width = width;
        v13.height = height;
        v10 = 138412290;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v13);
        v8 = DictionaryRepresentation;
        _os_log_impl(&dword_25B300000, v7, OS_LOG_TYPE_DEFAULT, "Warning: Ignoring invalid pass thumbnail image size %@", &v10, 0xCu);
      }
    }
  }

  else
  {
    __PassThumbnailImageSize_0 = *&size.width;
    __PassThumbnailImageSize_1 = *&size.height;
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (CGSize)passThumbnailImageSize
{
  v2 = *&__PassThumbnailImageSize_0;
  v3 = *&__PassThumbnailImageSize_1;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)context fromStep:(int)step toStep:(int)toStep
{
  contextCopy = context;
  v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowStepContext);
  stepIdentifier = [contextCopy stepIdentifier];
  [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)v7 setStepIdentifier:stepIdentifier];

  backStepIdentifier = [contextCopy backStepIdentifier];
  [(NPKProtoStandalonePaymentProvisioningFlowStepContext *)v7 setBackStepIdentifier:backStepIdentifier];

  -[NPKProtoStandalonePaymentProvisioningFlowStepContext setAllowsAddLater:](v7, "setAllowsAddLater:", [contextCopy allowsAddLater]);
  if (toStep > 164)
  {
    if (toStep > 199)
    {
      if (toStep > 229)
      {
        switch(toStep)
        {
          case 230:
            [NPKProtoStandaloneHelper _convertIssuerVerificationChannelsStepContext:contextCopy protoContext:v7];
            break;
          case 240:
            [NPKProtoStandaloneHelper _convertIssuerVerificationFieldsStepContext:contextCopy protoContext:v7];
            break;
          case 250:
            [NPKProtoStandaloneHelper _convertIssuerVerificationCodeStepContext:contextCopy protoContext:v7];
            break;
        }
      }

      else
      {
        switch(toStep)
        {
          case 200:
            [NPKProtoStandaloneHelper _convertTermsAndConditionsStepContext:contextCopy protoContext:v7];
            break;
          case 210:
            [NPKProtoStandaloneHelper _convertProvisioningProgressStepContext:contextCopy protoContext:v7];
            break;
          case 220:
            [NPKProtoStandaloneHelper _convertProvisioningResultStepContext:contextCopy protoContext:v7];
            break;
        }
      }
    }

    else if (toStep > 191)
    {
      switch(toStep)
      {
        case 192:
          [NPKProtoStandaloneHelper _convertLocalDeviceManualEntry:contextCopy protoContext:v7];
          break;
        case 193:
          [NPKProtoStandaloneHelper _convertLocalDeviceManualEntryProgress:contextCopy protoContext:v7];
          break;
        case 197:
          [NPKProtoStandaloneHelper _convertPasscodeUpgradeStepContext:contextCopy protoContext:v7];
          break;
      }
    }

    else
    {
      switch(toStep)
      {
        case 165:
          [NPKProtoStandaloneHelper _convertReaderModeIngestionStepContext:contextCopy protoContext:v7];
          break;
        case 180:
          [NPKProtoStandaloneHelper _convertManualEntryStepContext:contextCopy protoContext:v7];
          break;
        case 190:
          [NPKProtoStandaloneHelper _convertSecondaryManualEntryStepContext:contextCopy protoContext:v7];
          break;
      }
    }

    goto LABEL_51;
  }

  if (toStep > 143)
  {
    if (toStep > 154)
    {
      switch(toStep)
      {
        case 155:
          [NPKProtoStandaloneHelper _convertDigitalIssuancePaymentStepContext:contextCopy protoContext:v7];
          break;
        case 157:
          [NPKProtoStandaloneHelper _convertMoreInformationStepContext:contextCopy protoContext:v7];
          break;
        case 160:
          [NPKProtoStandaloneHelper _convertReaderModeEntryStepContext:contextCopy protoContext:v7];
          break;
      }
    }

    else if ((toStep - 144) < 2 || toStep == 150)
    {
      [NPKProtoStandaloneHelper _convertDigitalIssuanceAmountStepContext:contextCopy protoContext:v7];
    }

    goto LABEL_51;
  }

  if (toStep > 136)
  {
    if ((toStep - 137) >= 2)
    {
      if (toStep == 140)
      {
        [NPKProtoStandaloneHelper _convertChooseCredentialsStepContext:contextCopy protoContext:v7];
      }

      goto LABEL_51;
    }

LABEL_24:
    [NPKProtoStandaloneHelper _convertChooseProductStepContext:contextCopy protoContext:v7];
    goto LABEL_51;
  }

  switch(toStep)
  {
    case 120:
      [NPKProtoStandaloneHelper _convertWelcomeStepContext:contextCopy protoContext:v7];
      break;
    case 130:
      [NPKProtoStandaloneHelper _convertChooseFlowStepContext:contextCopy protoContext:v7];
      break;
    case 135:
      goto LABEL_24;
  }

LABEL_51:

  return v7;
}

+ (int)toNPKProtoStandalonePaymentSetupFieldType:(unint64_t)type
{
  if (type - 1 >= 5)
  {
    return 100;
  }

  else
  {
    return 10 * (type - 1) + 110;
  }
}

+ (id)toNPKProtoStandaloneError:(id)error
{
  errorCopy = error;
  v5 = objc_alloc_init(NPKProtoStandaloneError);
  -[NPKProtoStandaloneError setCode:](v5, "setCode:", [errorCopy code]);
  domain = [errorCopy domain];
  if (domain)
  {
    domain2 = [errorCopy domain];
    [(NPKProtoStandaloneError *)v5 setDomain:domain2];
  }

  else
  {
    [(NPKProtoStandaloneError *)v5 setDomain:@"com.apple.NPKStandaloneErrorDomain"];
  }

  userInfo = [errorCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [errorCopy userInfo];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __54__NPKProtoStandaloneHelper_toNPKProtoStandaloneError___block_invoke;
    v11[3] = &unk_279948A80;
    selfCopy = self;
    v12 = v5;
    [userInfo2 enumerateKeysAndObjectsUsingBlock:v11];
  }

  return v5;
}

void __54__NPKProtoStandaloneHelper_toNPKProtoStandaloneError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v8 = objc_alloc_init(NPKProtoStandaloneUserInfo);
  [(NPKProtoStandaloneUserInfo *)v8 setKey:v6];

  v7 = [*(a1 + 40) toStringValue:v5];

  [(NPKProtoStandaloneUserInfo *)v8 setValue:v7];
  [*(a1 + 32) addUserInfos:v8];
}

+ (id)toStringValue:(id)value
{
  valueCopy = value;
  if (!valueCopy)
  {
LABEL_15:
    firstObject = &stru_286C934F8;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    absoluteString = valueCopy;
LABEL_4:
    firstObject = absoluteString;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = [valueCopy absoluteString];
      goto LABEL_4;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = [valueCopy stringValue];
      goto LABEL_4;
    }

    goto LABEL_15;
  }

  v6 = valueCopy;
  if ([v6 count] && (objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v7, (isKindOfClass & 1) != 0))
  {
    firstObject = [v6 firstObject];
  }

  else
  {
    firstObject = &stru_286C934F8;
  }

LABEL_16:

  return firstObject;
}

+ (void)_convertWelcomeStepContext:(id)context protoContext:(id)protoContext
{
  v29 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  protoContextCopy = protoContext;
  welcomeStepContext = [contextCopy welcomeStepContext];
  if (welcomeStepContext)
  {
    v22 = contextCopy;
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowWelcomeStepContext);
    [protoContextCopy setWelcomeStepContext:v8];

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = [welcomeStepContext heroImages];
    v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        v12 = 0;
        do
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v24 + 1) + 8 * v12);
          v14 = objc_autoreleasePoolPush();
          v15 = objc_alloc_init(NPKProtoStandalonePaymentHeroImage);
          identifier = [v13 identifier];
          [(NPKProtoStandalonePaymentHeroImage *)v15 setIdentifier:identifier];

          PKScreenScale();
          v17 = [v13 URLForImageWithScale:?];
          absoluteString = [v17 absoluteString];
          [(NPKProtoStandalonePaymentHeroImage *)v15 setImageURL:absoluteString];

          if ([welcomeStepContext defaultImagesUsed])
          {
            v19 = 0;
          }

          else
          {
            PKScreenScale();
            v19 = [v13 imageWithScale:?];
          }

          [(NPKProtoStandalonePaymentHeroImage *)v15 setImageData:v19, v22];
          welcomeStepContext2 = [protoContextCopy welcomeStepContext];
          [welcomeStepContext2 addHeroImages:v15];

          objc_autoreleasePoolPop(v14);
          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v10);
    }

    contextCopy = v22;
  }

  v21 = *MEMORY[0x277D85DE8];
}

+ (void)_convertChooseFlowStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  chooseFlowStepContext = [context chooseFlowStepContext];
  if (chooseFlowStepContext)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseFlowStepContext);
    [protoContextCopy setChooseFlowStepContext:v8];

    sections = [chooseFlowStepContext sections];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__NPKProtoStandaloneHelper__convertChooseFlowStepContext_protoContext___block_invoke;
    v10[3] = &unk_279948AA8;
    v11 = protoContextCopy;
    selfCopy = self;
    [sections enumerateObjectsUsingBlock:v10];
  }
}

void __71__NPKProtoStandaloneHelper__convertChooseFlowStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 chooseFlowStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandalonePaymentProvisioningFlowPickerSection:v4];

  [v6 addSections:v5];
}

+ (void)_convertChooseProductStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  chooseProductStepContext = [context chooseProductStepContext];
  if (chooseProductStepContext)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseProductStepContext);
    [protoContextCopy setChooseProductStepContext:v8];

    products = [chooseProductStepContext products];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __74__NPKProtoStandaloneHelper__convertChooseProductStepContext_protoContext___block_invoke;
    v10[3] = &unk_279948AD0;
    v11 = protoContextCopy;
    selfCopy = self;
    [products enumerateObjectsUsingBlock:v10];
  }
}

void __74__NPKProtoStandaloneHelper__convertChooseProductStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 chooseProductStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupProduct:v4];

  [v6 addProducts:v5];
}

+ (void)_convertChooseCredentialsStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  chooseCredentialsStepContext = [context chooseCredentialsStepContext];
  if (chooseCredentialsStepContext)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowChooseCredentialsStepContext);
    [protoContextCopy setChooseCredentialsStepContext:v8];

    allowsManualEntry = [chooseCredentialsStepContext allowsManualEntry];
    chooseCredentialsStepContext2 = [protoContextCopy chooseCredentialsStepContext];
    [chooseCredentialsStepContext2 setAllowsManualEntry:allowsManualEntry];

    flowIdentifiers = [chooseCredentialsStepContext flowIdentifiers];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__NPKProtoStandaloneHelper__convertChooseCredentialsStepContext_protoContext___block_invoke;
    v12[3] = &unk_279948AF8;
    v13 = chooseCredentialsStepContext;
    v14 = protoContextCopy;
    selfCopy = self;
    [flowIdentifiers enumerateObjectsUsingBlock:v12];
  }
}

void __78__NPKProtoStandaloneHelper__convertChooseCredentialsStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 flowIdentifierToCredential];
  v12 = [v5 objectForKey:v4];

  v6 = [*(a1 + 40) chooseCredentialsStepContext];
  v7 = [*(a1 + 48) toNPKProtoStandalonePaymentCredentialUnion:v12 withFlowIdentifier:v4 thumbnailSize:1];

  [v6 addCredentials:v7];
  if ([v12 isRemoteCredential])
  {
    v8 = [*(a1 + 40) chooseCredentialsStepContext];
    v9 = *(a1 + 48);
    v10 = [v12 remoteCredential];
    v11 = [v9 toNPKProtoStandalonePaymentRemoteCredential:v10 thumbnailSize:1];
    [v8 addRemoteCredentials:v11];
  }
}

+ (void)_convertDigitalIssuanceAmountStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  digitalIssuanceAmountStepContext = [context digitalIssuanceAmountStepContext];
  if (digitalIssuanceAmountStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuanceAmountStepContext);
    [protoContextCopy setDigitalIssuanceAmountStepContext:v7];

    product = [digitalIssuanceAmountStepContext product];

    if (product)
    {
      product2 = [digitalIssuanceAmountStepContext product];
      v10 = [self toNPKProtoStandalonePaymentSetupProduct:product2];
      digitalIssuanceAmountStepContext2 = [protoContextCopy digitalIssuanceAmountStepContext];
      [digitalIssuanceAmountStepContext2 setProduct:v10];
    }

    allowsReaderModeEntry = [digitalIssuanceAmountStepContext allowsReaderModeEntry];
    digitalIssuanceAmountStepContext3 = [protoContextCopy digitalIssuanceAmountStepContext];
    [digitalIssuanceAmountStepContext3 setAllowsReaderModeEntry:allowsReaderModeEntry];
  }
}

+ (void)_convertDigitalIssuancePaymentStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  digitalIssuancePaymentStepContext = [context digitalIssuancePaymentStepContext];
  if (digitalIssuancePaymentStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowDigitalIssuancePaymentStepContext);
    [protoContextCopy setDigitalIssuancePaymentStepContext:v7];

    product = [digitalIssuancePaymentStepContext product];

    if (product)
    {
      product2 = [digitalIssuancePaymentStepContext product];
      v10 = [self toNPKProtoStandalonePaymentSetupProduct:product2];
      digitalIssuancePaymentStepContext2 = [protoContextCopy digitalIssuancePaymentStepContext];
      [digitalIssuancePaymentStepContext2 setProduct:v10];
    }
  }
}

+ (void)_convertReaderModeEntryStepContext:(id)context protoContext:(id)protoContext
{
  v35 = *MEMORY[0x277D85DE8];
  protoContextCopy = protoContext;
  readerModeEntryStepContext = [context readerModeEntryStepContext];
  if (readerModeEntryStepContext)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowReaderModeEntryStepContext);
    [protoContextCopy setReaderModeEntryStepContext:v8];

    title = [readerModeEntryStepContext title];
    readerModeEntryStepContext2 = [protoContextCopy readerModeEntryStepContext];
    [readerModeEntryStepContext2 setTitle:title];

    subtitle = [readerModeEntryStepContext subtitle];
    readerModeEntryStepContext3 = [protoContextCopy readerModeEntryStepContext];
    [readerModeEntryStepContext3 setSubtitle:subtitle];

    setupFields = [readerModeEntryStepContext setupFields];
    if (setupFields)
    {
      v14 = setupFields;
      setupFields2 = [readerModeEntryStepContext setupFields];
      v16 = [setupFields2 count];

      if (v16)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        setupFields3 = [readerModeEntryStepContext setupFields];
        v18 = [setupFields3 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v31;
          do
          {
            v21 = 0;
            do
            {
              if (*v31 != v20)
              {
                objc_enumerationMutation(setupFields3);
              }

              v22 = *(*(&v30 + 1) + 8 * v21);
              readerModeEntryStepContext4 = [protoContextCopy readerModeEntryStepContext];
              v24 = [self toNPKProtoStandalonePaymentSetupField:v22];
              [readerModeEntryStepContext4 addSetupFields:v24];

              ++v21;
            }

            while (v19 != v21);
            v19 = [setupFields3 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v19);
        }
      }
    }

    product = [readerModeEntryStepContext product];

    if (product)
    {
      product2 = [readerModeEntryStepContext product];
      v27 = [self toNPKProtoStandalonePaymentSetupProduct:product2];
      readerModeEntryStepContext5 = [protoContextCopy readerModeEntryStepContext];
      [readerModeEntryStepContext5 setProduct:v27];
    }
  }

  v29 = *MEMORY[0x277D85DE8];
}

+ (void)_convertReaderModeIngestionStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  readerModeIngestionStepContext = [context readerModeIngestionStepContext];
  if (readerModeIngestionStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowReaderModeIngestionStepContext);
    [protoContextCopy setReaderModeIngestionStepContext:v7];

    physicalCardImageURL = [readerModeIngestionStepContext physicalCardImageURL];

    if (physicalCardImageURL)
    {
      physicalCardImageURL2 = [readerModeIngestionStepContext physicalCardImageURL];
      absoluteString = [physicalCardImageURL2 absoluteString];
      readerModeIngestionStepContext2 = [protoContextCopy readerModeIngestionStepContext];
      [readerModeIngestionStepContext2 setPhysicalCardImageURL:absoluteString];
    }

    title = [readerModeIngestionStepContext title];
    readerModeIngestionStepContext3 = [protoContextCopy readerModeIngestionStepContext];
    [readerModeIngestionStepContext3 setTitle:title];

    subtitle = [readerModeIngestionStepContext subtitle];
    readerModeIngestionStepContext4 = [protoContextCopy readerModeIngestionStepContext];
    [readerModeIngestionStepContext4 setSubtitle:subtitle];

    v16 = [self toNPKProtoStandaloneReaderModeIngestionState:{objc_msgSend(readerModeIngestionStepContext, "ingestionState")}];
    readerModeIngestionStepContext5 = [protoContextCopy readerModeIngestionStepContext];
    [readerModeIngestionStepContext5 setIngestionState:v16];

    [readerModeIngestionStepContext ingestionProgress];
    v19 = v18;
    readerModeIngestionStepContext6 = [protoContextCopy readerModeIngestionStepContext];
    *&v21 = v19;
    [readerModeIngestionStepContext6 setIngestionProgress:v21];
  }
}

+ (void)_convertManualEntryStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  manualEntryStepContext = [context manualEntryStepContext];
  if (manualEntryStepContext)
  {
    v7 = [self toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:manualEntryStepContext];
    [protoContextCopy setManualEntryStepContext:v7];
  }
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext);
  -[NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext setCameraFirstProvisioningEnabled:](v5, "setCameraFirstProvisioningEnabled:", [contextCopy cameraFirstProvisioningEnabled]);
  setupFields = [contextCopy setupFields];
  if (setupFields)
  {
    v7 = setupFields;
    setupFields2 = [contextCopy setupFields];
    v9 = [setupFields2 count];

    if (v9)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      setupFields3 = [contextCopy setupFields];
      v11 = [setupFields3 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v19;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v19 != v13)
            {
              objc_enumerationMutation(setupFields3);
            }

            v15 = [self toNPKProtoStandalonePaymentSetupField:*(*(&v18 + 1) + 8 * i)];
            [(NPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext *)v5 addSetupFields:v15];
          }

          v12 = [setupFields3 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v12);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)toNPKProtoStandalonePaymentSetupField:(id)field
{
  fieldCopy = field;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupField);
  identifier = [fieldCopy identifier];
  [(NPKProtoStandalonePaymentSetupField *)v4 setIdentifier:identifier];

  fieldType = [fieldCopy fieldType];
  [(NPKProtoStandalonePaymentSetupField *)v4 setFieldType:[NPKProtoStandaloneHelper toNPKProtoStandalonePaymentSetupFieldType:fieldType]];

  return v4;
}

+ (void)_convertSecondaryManualEntryStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  secondaryManualEntryStepContext = [context secondaryManualEntryStepContext];
  if (secondaryManualEntryStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext);
    [protoContextCopy setSecondaryManualEntryStepContext:v7];

    v8 = [self toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:secondaryManualEntryStepContext];
    secondaryManualEntryStepContext2 = [protoContextCopy secondaryManualEntryStepContext];
    [secondaryManualEntryStepContext2 setManualEntryStepContext:v8];

    credential = [secondaryManualEntryStepContext credential];

    if (credential)
    {
      credential2 = [secondaryManualEntryStepContext credential];
      v12 = [self toNPKProtoStandalonePaymentCredentialUnion:credential2 withFlowIdentifier:0 thumbnailSize:0];
      secondaryManualEntryStepContext3 = [protoContextCopy secondaryManualEntryStepContext];
      [secondaryManualEntryStepContext3 setCredential:v12];

      credential3 = [secondaryManualEntryStepContext credential];
      LODWORD(v12) = [credential3 isRemoteCredential];

      if (v12)
      {
        credential4 = [secondaryManualEntryStepContext credential];
        remoteCredential = [credential4 remoteCredential];
        v17 = [self toNPKProtoStandalonePaymentRemoteCredential:remoteCredential thumbnailSize:0];
        secondaryManualEntryStepContext4 = [protoContextCopy secondaryManualEntryStepContext];
        [secondaryManualEntryStepContext4 setRemoteCredential:v17];
      }
    }

    allowsAddingDifferentCard = [secondaryManualEntryStepContext allowsAddingDifferentCard];
    secondaryManualEntryStepContext5 = [protoContextCopy secondaryManualEntryStepContext];
    [secondaryManualEntryStepContext5 setAllowsAddingDifferentCard:allowsAddingDifferentCard];
  }
}

+ (void)_convertLocalDeviceManualEntry:(id)entry protoContext:(id)context
{
  contextCopy = context;
  localDeviceManualEntryStepContext = [entry localDeviceManualEntryStepContext];
  if (localDeviceManualEntryStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryStepContext);
    [contextCopy setLocalDeviceManualEntryStepContext:v7];

    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowSecondaryManualEntryStepContext);
    localDeviceManualEntryStepContext2 = [contextCopy localDeviceManualEntryStepContext];
    [localDeviceManualEntryStepContext2 setSecondaryManualEntryStepContext:v8];

    v10 = [self toNPKProtoStandalonePaymentProvisioningFlowManualEntryStepContext:localDeviceManualEntryStepContext];
    localDeviceManualEntryStepContext3 = [contextCopy localDeviceManualEntryStepContext];
    secondaryManualEntryStepContext = [localDeviceManualEntryStepContext3 secondaryManualEntryStepContext];
    [secondaryManualEntryStepContext setManualEntryStepContext:v10];

    credential = [localDeviceManualEntryStepContext credential];

    if (credential)
    {
      credential2 = [localDeviceManualEntryStepContext credential];
      v15 = [self toNPKProtoStandalonePaymentCredentialUnion:credential2 withFlowIdentifier:0 thumbnailSize:0];
      localDeviceManualEntryStepContext4 = [contextCopy localDeviceManualEntryStepContext];
      secondaryManualEntryStepContext2 = [localDeviceManualEntryStepContext4 secondaryManualEntryStepContext];
      [secondaryManualEntryStepContext2 setCredential:v15];

      credential3 = [localDeviceManualEntryStepContext credential];
      LODWORD(v15) = [credential3 isRemoteCredential];

      if (v15)
      {
        credential4 = [localDeviceManualEntryStepContext credential];
        remoteCredential = [credential4 remoteCredential];
        v21 = [self toNPKProtoStandalonePaymentRemoteCredential:remoteCredential thumbnailSize:0];
        localDeviceManualEntryStepContext5 = [contextCopy localDeviceManualEntryStepContext];
        secondaryManualEntryStepContext3 = [localDeviceManualEntryStepContext5 secondaryManualEntryStepContext];
        [secondaryManualEntryStepContext3 setRemoteCredential:v21];
      }
    }

    allowsAddingDifferentCard = [localDeviceManualEntryStepContext allowsAddingDifferentCard];
    localDeviceManualEntryStepContext6 = [contextCopy localDeviceManualEntryStepContext];
    secondaryManualEntryStepContext4 = [localDeviceManualEntryStepContext6 secondaryManualEntryStepContext];
    [secondaryManualEntryStepContext4 setAllowsAddingDifferentCard:allowsAddingDifferentCard];
  }
}

+ (void)_convertLocalDeviceManualEntryProgress:(id)progress protoContext:(id)context
{
  contextCopy = context;
  localDeviceManualEntryProgressStepContext = [progress localDeviceManualEntryProgressStepContext];
  if (localDeviceManualEntryProgressStepContext)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowLocalDeviceManualEntryProgressStepContext);
    [contextCopy setLocalDeviceManualEntryProgressStepContext:v6];

    numericEntryPending = [localDeviceManualEntryProgressStepContext numericEntryPending];
    localDeviceManualEntryProgressStepContext2 = [contextCopy localDeviceManualEntryProgressStepContext];
    [localDeviceManualEntryProgressStepContext2 setNumericEntryPending:numericEntryPending];
  }
}

+ (void)_convertPasscodeUpgradeStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  passcodeUpgradeStepContext = [context passcodeUpgradeStepContext];
  if (passcodeUpgradeStepContext)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowPasscodeUpgradeStepContext);
    [protoContextCopy setPasscodeUpgradeStepContext:v6];
  }
}

+ (void)_convertTermsAndConditionsStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  termsAndConditionsStepContext = [context termsAndConditionsStepContext];
  if (termsAndConditionsStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowTermsAndConditionsStepContext);
    [protoContextCopy setTermsAndConditionsStepContext:v7];

    termsURL = [termsAndConditionsStepContext termsURL];

    if (termsURL)
    {
      termsURL2 = [termsAndConditionsStepContext termsURL];
      absoluteString = [termsURL2 absoluteString];
      termsAndConditionsStepContext2 = [protoContextCopy termsAndConditionsStepContext];
      [termsAndConditionsStepContext2 setTermsURL:absoluteString];
    }

    [termsAndConditionsStepContext setAllowNonSecureHTTP:{objc_msgSend(termsAndConditionsStepContext, "allowNonSecureHTTP")}];
    product = [termsAndConditionsStepContext product];

    if (product)
    {
      product2 = [termsAndConditionsStepContext product];
      v14 = [self toNPKProtoStandalonePaymentSetupProduct:product2];
      termsAndConditionsStepContext3 = [protoContextCopy termsAndConditionsStepContext];
      [termsAndConditionsStepContext3 setProduct:v14];
    }
  }
}

+ (void)_convertProvisioningProgressStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  provisioningProgressStepContext = [context provisioningProgressStepContext];
  if (provisioningProgressStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowProvisioningProgressStepContext);
    [protoContextCopy setProvisioningProgressStepContext:v7];

    product = [provisioningProgressStepContext product];

    if (product)
    {
      product2 = [provisioningProgressStepContext product];
      v10 = [self toNPKProtoStandalonePaymentSetupProduct:product2];
      provisioningProgressStepContext2 = [protoContextCopy provisioningProgressStepContext];
      [provisioningProgressStepContext2 setProduct:v10];
    }

    localizedProgressDescription = [provisioningProgressStepContext localizedProgressDescription];

    if (localizedProgressDescription)
    {
      localizedProgressDescription2 = [provisioningProgressStepContext localizedProgressDescription];
      provisioningProgressStepContext3 = [protoContextCopy provisioningProgressStepContext];
      [provisioningProgressStepContext3 setLocalizedProgressDescription:localizedProgressDescription2];
    }
  }
}

+ (void)_convertProvisioningResultStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  provisioningResultStepContext = [context provisioningResultStepContext];
  if (provisioningResultStepContext)
  {
    v7 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowProvisioningResultStepContext);
    [protoContextCopy setProvisioningResultStepContext:v7];

    cardAdded = [provisioningResultStepContext cardAdded];
    provisioningResultStepContext2 = [protoContextCopy provisioningResultStepContext];
    [provisioningResultStepContext2 setCardAdded:cardAdded];

    error = [provisioningResultStepContext error];

    if (error)
    {
      error2 = [provisioningResultStepContext error];
      v12 = [self toNPKProtoStandaloneError:error2];
      provisioningResultStepContext3 = [protoContextCopy provisioningResultStepContext];
      [provisioningResultStepContext3 setError:v12];
    }
  }
}

+ (void)_convertIssuerVerificationChannelsStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  verificationChannelsStepContext = [context verificationChannelsStepContext];
  if (verificationChannelsStepContext)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationChannelsStepContext);
    [protoContextCopy setIssuerVerificationChannelsStepContext:v8];

    paymentPass = [verificationChannelsStepContext paymentPass];

    if (paymentPass)
    {
      paymentPass2 = [verificationChannelsStepContext paymentPass];
      v11 = [self toNPKProtoStandalonePaymentPass:paymentPass2 thumbnailSize:0];
      issuerVerificationChannelsStepContext = [protoContextCopy issuerVerificationChannelsStepContext];
      [issuerVerificationChannelsStepContext setPaymentPass:v11];
    }

    verificationChannels = [verificationChannelsStepContext verificationChannels];

    if (verificationChannels)
    {
      verificationChannels2 = [verificationChannelsStepContext verificationChannels];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __87__NPKProtoStandaloneHelper__convertIssuerVerificationChannelsStepContext_protoContext___block_invoke;
      v15[3] = &unk_279948B20;
      v16 = protoContextCopy;
      selfCopy = self;
      [verificationChannels2 enumerateObjectsUsingBlock:v15];
    }
  }
}

void __87__NPKProtoStandaloneHelper__convertIssuerVerificationChannelsStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 issuerVerificationChannelsStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandaloneVerificationChannel:v4];

  [v6 addVerificationChannels:v5];
}

+ (void)_convertIssuerVerificationFieldsStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  verificationFieldsStepContext = [context verificationFieldsStepContext];
  if (verificationFieldsStepContext)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationFieldsStepContext);
    [protoContextCopy setIssuerVerificationFieldsStepContext:v6];
  }
}

+ (void)_convertMoreInformationStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  moreInformationStepContext = [context moreInformationStepContext];
  if (moreInformationStepContext)
  {
    v8 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowMoreInformationStepContext);
    [protoContextCopy setMoreInformationStepContext:v8];

    moreInfoItems = [moreInformationStepContext moreInfoItems];

    if (moreInfoItems)
    {
      moreInfoItems2 = [moreInformationStepContext moreInfoItems];
      v15 = MEMORY[0x277D85DD0];
      v16 = 3221225472;
      v17 = __76__NPKProtoStandaloneHelper__convertMoreInformationStepContext_protoContext___block_invoke;
      v18 = &unk_279948B48;
      v19 = protoContextCopy;
      selfCopy = self;
      [moreInfoItems2 enumerateObjectsUsingBlock:&v15];
    }

    paymentPass = [moreInformationStepContext paymentPass];

    if (paymentPass)
    {
      paymentPass2 = [moreInformationStepContext paymentPass];
      v13 = [self toNPKProtoStandalonePaymentPass:paymentPass2 thumbnailSize:0];
      moreInformationStepContext2 = [protoContextCopy moreInformationStepContext];
      [moreInformationStepContext2 setPaymentPass:v13];
    }
  }
}

void __76__NPKProtoStandaloneHelper__convertMoreInformationStepContext_protoContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 moreInformationStepContext];
  v5 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupMoreInfoItem:v4];

  [v6 addMoreInfoItems:v5];
}

+ (void)_convertIssuerVerificationCodeStepContext:(id)context protoContext:(id)protoContext
{
  protoContextCopy = protoContext;
  verificationCodeStepContext = [context verificationCodeStepContext];
  if (verificationCodeStepContext)
  {
    v6 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowIssuerVerificationCodeStepContext);
    [protoContextCopy setIssuerVerificationCodeStepContext:v6];
  }
}

+ (id)_convertProtoWelcomeStepContext:(id)context requestContext:(id)requestContext
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  requestContextCopy = requestContext;
  v6 = [[NPKPaymentProvisioningFlowControllerWelcomeStepContext alloc] initWithRequestContext:requestContextCopy];
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  heroImages = [contextCopy heroImages];
  v9 = [heroImages countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(heroImages);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_alloc(MEMORY[0x277D38060]);
        identifier = [v13 identifier];
        imageData = [v13 imageData];
        v17 = [v14 initWithIdentifier:identifier imageData:imageData credentialType:0];

        [array addObject:v17];
      }

      v10 = [heroImages countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = [array copy];
  [(NPKPaymentProvisioningFlowControllerWelcomeStepContext *)v6 setHeroImages:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)fromNPKProtoStandalonePaymentProvisioningFlowStepContext:(id)context requestContext:(id)requestContext
{
  requestContextCopy = requestContext;
  contextCopy = context;
  if ([contextCopy hasWelcomeStepContext])
  {
    welcomeStepContext = [contextCopy welcomeStepContext];

    v9 = [self _convertProtoWelcomeStepContext:welcomeStepContext requestContext:requestContextCopy];
  }

  else
  {
    hasChooseFlowStepContext = [contextCopy hasChooseFlowStepContext];

    if (hasChooseFlowStepContext)
    {
      v9 = [[NPKPaymentProvisioningFlowControllerChooseFlowStepContext alloc] initWithRequestContext:requestContextCopy];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

+ (id)toNPKProtoStandalonePaymentSetupMoreInfoItem:(id)item
{
  itemCopy = item;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupMoreInfoItem);
  title = [itemCopy title];

  if (title)
  {
    title2 = [itemCopy title];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setTitle:title2];
  }

  body = [itemCopy body];

  if (body)
  {
    body2 = [itemCopy body];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setBody:body2];
  }

  linkText = [itemCopy linkText];

  if (linkText)
  {
    linkText2 = [itemCopy linkText];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setLinkText:linkText2];
  }

  linkURL = [itemCopy linkURL];

  if (linkURL)
  {
    linkURL2 = [itemCopy linkURL];
    absoluteString = [linkURL2 absoluteString];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setLinkURL:absoluteString];
  }

  imageURL = [itemCopy imageURL];

  if (imageURL)
  {
    imageURL2 = [itemCopy imageURL];
    absoluteString2 = [imageURL2 absoluteString];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setImageURL:absoluteString2];
  }

  imageURL3 = [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 imageURL];
  if (!imageURL3)
  {
    imageData = [itemCopy imageData];

    if (!imageData)
    {
      goto LABEL_15;
    }

    imageURL3 = [itemCopy imageData];
    [(NPKProtoStandalonePaymentSetupMoreInfoItem *)v4 setImageData:imageURL3];
  }

LABEL_15:

  return v4;
}

+ (int)toNPKProtoStandalonePassType:(unint64_t)type
{
  if (type == 1)
  {
    v3 = 110;
  }

  else
  {
    v3 = 100;
  }

  if (type == -1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (int)toNPKProtoStandalonePaymentPassActivationState:(unint64_t)state
{
  if (state - 1 >= 4)
  {
    return 100;
  }

  else
  {
    return 10 * (state - 1) + 110;
  }
}

+ (id)toNPKProtoStandalonePass:(id)pass thumbnailSize:(BOOL)size
{
  sizeCopy = size;
  passCopy = pass;
  v7 = objc_alloc_init(NPKProtoStandalonePass);
  -[NPKProtoStandalonePass setPassType:](v7, "setPassType:", [self toNPKProtoStandalonePassType:{objc_msgSend(passCopy, "passType")}]);
  v8 = NPKURLForPass(passCopy);
  if (v8)
  {
    [self passImageSize];
    if (sizeCopy)
    {
      [self passThumbnailImageSize];
    }

    if (v9 == *MEMORY[0x277CBF3A8] && v10 == *(MEMORY[0x277CBF3A8] + 8))
    {
      PKScreenSize();
      PKScreenScale();
    }

    v12 = v8;
    v13 = objc_autoreleasePoolPush();
    v14 = [MEMORY[0x277D37F98] createWithFileURL:v12 warnings:0 error:0];
    v15 = [v14 imageSetLoadedIfNeeded:0];
    faceImage = [v15 faceImage];
    imageData = [faceImage imageData];

    objc_autoreleasePoolPop(v13);
    [(NPKProtoStandalonePass *)v7 setImageData:imageData];
  }

  serialNumber = [passCopy serialNumber];
  [(NPKProtoStandalonePass *)v7 setSerialNumber:serialNumber];

  passTypeIdentifier = [passCopy passTypeIdentifier];
  [(NPKProtoStandalonePass *)v7 setPassTypeIdentifier:passTypeIdentifier];

  localizedName = [passCopy localizedName];
  [(NPKProtoStandalonePass *)v7 setLocalizedName:localizedName];

  localizedDescription = [passCopy localizedDescription];
  [(NPKProtoStandalonePass *)v7 setLocalizedDescription:localizedDescription];

  organizationName = [passCopy organizationName];
  [(NPKProtoStandalonePass *)v7 setOrganizationName:organizationName];

  userInfo = [passCopy userInfo];

  if (userInfo)
  {
    userInfo2 = [passCopy userInfo];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __67__NPKProtoStandaloneHelper_toNPKProtoStandalonePass_thumbnailSize___block_invoke;
    v27[3] = &unk_279948B70;
    v28 = v7;
    [userInfo2 enumerateKeysAndObjectsUsingBlock:v27];
  }

  -[NPKProtoStandalonePass setRemotePass:](v7, "setRemotePass:", [passCopy isRemotePass]);
  deviceName = [passCopy deviceName];
  [(NPKProtoStandalonePass *)v7 setDeviceName:deviceName];

  return v7;
}

void __67__NPKProtoStandaloneHelper_toNPKProtoStandalonePass_thumbnailSize___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a3;
  v5 = a2;
  v6 = objc_alloc_init(NPKProtoStandaloneUserInfo);
  [(NPKProtoStandaloneUserInfo *)v6 setKey:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NPKProtoStandaloneUserInfo *)v6 setValue:v7];
    }
  }

  [*(a1 + 32) addUserInfos:v6];
}

+ (id)sha1hash:(id)sha1hash
{
  v9 = *MEMORY[0x277D85DE8];
  sha1hashCopy = sha1hash;
  CC_SHA1([sha1hashCopy bytes], objc_msgSend(sha1hashCopy, "length"), md);
  v4 = [MEMORY[0x277CCAB68] stringWithCapacity:40];
  for (i = 0; i != 20; ++i)
  {
    [v4 appendFormat:@"%02x", md[i]];
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (int)toNPKProtoStandaloneVerificationChannelType:(unint64_t)type
{
  if (type - 2 > 9)
  {
    return 110;
  }

  else
  {
    return dword_25B59AA70[type - 2];
  }
}

+ (id)toNPKProtoStandaloneVerificationChannel:(id)channel
{
  channelCopy = channel;
  v5 = objc_alloc_init(NPKProtoStandaloneVerificationChannel);
  identifier = [channelCopy identifier];
  [(NPKProtoStandaloneVerificationChannel *)v5 setIdentifier:identifier];

  -[NPKProtoStandaloneVerificationChannel setType:](v5, "setType:", [self toNPKProtoStandaloneVerificationChannelType:{objc_msgSend(channelCopy, "type")}]);
  typeDescriptionUnlocalized = [channelCopy typeDescriptionUnlocalized];
  [(NPKProtoStandaloneVerificationChannel *)v5 setTypeDescriptionUnlocalized:typeDescriptionUnlocalized];

  typeDescription = [channelCopy typeDescription];
  [(NPKProtoStandaloneVerificationChannel *)v5 setTypeDescription:typeDescription];

  organizationName = [channelCopy organizationName];
  [(NPKProtoStandaloneVerificationChannel *)v5 setOrganizationName:organizationName];

  -[NPKProtoStandaloneVerificationChannel setRequiresUserInteraction:](v5, "setRequiresUserInteraction:", [channelCopy requiresUserInteraction]);
  contactPoint = [channelCopy contactPoint];
  [(NPKProtoStandaloneVerificationChannel *)v5 setContactPoint:contactPoint];

  sourceAddress = [channelCopy sourceAddress];

  [(NPKProtoStandaloneVerificationChannel *)v5 setSourceAddress:sourceAddress];

  return v5;
}

+ (int)toNPKProtoStandalonePaymentApplicationState:(int64_t)state
{
  if ((state - 1) > 0xE)
  {
    return 100;
  }

  else
  {
    return dword_25B59AA98[state - 1];
  }
}

+ (id)toNPKProtoStandalonePaymentCredential:(id)credential
{
  credentialCopy = credential;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentCredential);
  sanitizedPrimaryAccountNumber = [credentialCopy sanitizedPrimaryAccountNumber];
  [(NPKProtoStandalonePaymentCredential *)v4 setSanitizedPrimaryAccountNumber:sanitizedPrimaryAccountNumber];

  expiration = [credentialCopy expiration];
  [(NPKProtoStandalonePaymentCredential *)v4 setExpiration:expiration];

  longDescription = [credentialCopy longDescription];

  [(NPKProtoStandalonePaymentCredential *)v4 setLongDescription:longDescription];

  return v4;
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerSection:(id)section
{
  sectionCopy = section;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowPickerSection);
  title = [sectionCopy title];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)v5 setTitle:title];

  footer = [sectionCopy footer];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerSection *)v5 setFooter:footer];

  items = [sectionCopy items];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __85__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerSection___block_invoke;
  v11[3] = &unk_279948B98;
  v9 = v5;
  v12 = v9;
  selfCopy = self;
  [items enumerateObjectsUsingBlock:v11];

  return v9;
}

void __85__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentProvisioningFlowPickerItem:a2];
  [v2 addItems:v3];
}

+ (id)toNPKProtoStandalonePaymentProvisioningFlowPickerItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningFlowPickerItem);
  title = [itemCopy title];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerItem *)v5 setTitle:title];

  identifier = [itemCopy identifier];
  [(NPKProtoStandalonePaymentProvisioningFlowPickerItem *)v5 setIdentifier:identifier];

  products = [itemCopy products];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerItem___block_invoke;
  v11[3] = &unk_279948AD0;
  v9 = v5;
  v12 = v9;
  selfCopy = self;
  [products enumerateObjectsUsingBlock:v11];

  return v9;
}

void __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningFlowPickerItem___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupProduct:a2];
  [v2 addProducts:v3];
}

+ (id)toNPKProtoStandalonePaymentSetupProduct:(id)product
{
  productCopy = product;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentSetupProduct);
  displayName = [productCopy displayName];
  [(NPKProtoStandalonePaymentSetupProduct *)v5 setDisplayName:displayName];

  regions = [productCopy regions];
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke;
  v44[3] = &unk_279948BC0;
  v8 = v5;
  v45 = v8;
  [regions enumerateObjectsUsingBlock:v44];

  productIdentifier = [productCopy productIdentifier];
  [(NPKProtoStandalonePaymentSetupProduct *)v8 setProductIdentifier:productIdentifier];

  partnerIdentifier = [productCopy partnerIdentifier];
  [(NPKProtoStandalonePaymentSetupProduct *)v8 setPartnerIdentifier:partnerIdentifier];

  partnerName = [productCopy partnerName];
  [(NPKProtoStandalonePaymentSetupProduct *)v8 setPartnerName:partnerName];

  requiredFields = [productCopy requiredFields];
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_2;
  v41[3] = &unk_279948BE8;
  v13 = v8;
  v42 = v13;
  selfCopy = self;
  [requiredFields enumerateObjectsUsingBlock:v41];

  supportedProtocols = [productCopy supportedProtocols];
  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_3;
  v39[3] = &unk_279945858;
  v15 = v13;
  v40 = v15;
  [supportedProtocols enumerateObjectsUsingBlock:v39];

  termsURL = [productCopy termsURL];

  if (termsURL)
  {
    termsURL2 = [productCopy termsURL];
    absoluteString = [termsURL2 absoluteString];
    [(NPKProtoStandalonePaymentSetupProduct *)v15 setTermsURL:absoluteString];
  }

  -[NPKProtoStandalonePaymentSetupProduct setSupportedProvisioningMethods:](v15, "setSupportedProvisioningMethods:", [productCopy supportedProvisioningMethods]);
  readerModeMetadata = [productCopy readerModeMetadata];
  v20 = [self toJsonString:readerModeMetadata];

  if (v20)
  {
    [(NPKProtoStandalonePaymentSetupProduct *)v15 setReaderModeMetadataJson:v20];
  }

  -[NPKProtoStandalonePaymentSetupProduct setFlags:](v15, "setFlags:", [productCopy flags]);
  -[NPKProtoStandalonePaymentSetupProduct setHsa2Requirement:](v15, "setHsa2Requirement:", [productCopy hsa2Requirement]);
  imageAssetURLs = [productCopy imageAssetURLs];

  if (imageAssetURLs)
  {
    imageAssetURLs2 = [productCopy imageAssetURLs];
    v23 = [self toNPKProtoStandalonePaymentSetupProductImageAssetURLs:imageAssetURLs2];
    [(NPKProtoStandalonePaymentSetupProduct *)v15 setImageAssetURLs:v23];
  }

  -[NPKProtoStandalonePaymentSetupProduct setSuppressPendingPurchases:](v15, "setSuppressPendingPurchases:", [productCopy suppressPendingPurchases]);
  paymentOptions = [productCopy paymentOptions];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_4;
  v36[3] = &unk_279948C10;
  v25 = v15;
  v37 = v25;
  selfCopy2 = self;
  [paymentOptions enumerateObjectsUsingBlock:v36];

  provisioningMethodTypes = [productCopy provisioningMethodTypes];
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_5;
  v32[3] = &unk_279948AF8;
  v33 = productCopy;
  selfCopy3 = self;
  v27 = v25;
  v34 = v27;
  v28 = productCopy;
  [provisioningMethodTypes enumerateObjectsUsingBlock:v32];

  v29 = v34;
  v30 = v27;

  return v27;
}

void __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupField:a2];
  [v2 addRequiredFields:v3];
}

void __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupProductPaymentOption:a2];
  [v2 addPaymentOptions:v3];
}

void __68__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentSetupProduct___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v7 = v3;
    v4 = [a1[4] provisioningMethodMetadataForType:v3];
    if (v4)
    {
      v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry);
      [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)v5 setType:v7];
      v6 = [a1[6] toNPKProtoStandalonePaymentProvisioningMethodMetadata:v4];
      [(NPKProtoStandalonePaymentProvisioningMethodMetadataDictionaryEntry *)v5 setMetadata:v6];

      [a1[5] addRequestedProvisioningMethods:v5];
    }

    v3 = v7;
  }
}

+ (id)toNPKProtoStandalonePaymentProvisioningMethodMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentProvisioningMethodMetadata);
  productIdentifier = [metadataCopy productIdentifier];

  if (productIdentifier)
  {
    productIdentifier2 = [metadataCopy productIdentifier];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setProductIdentifier:productIdentifier2];
  }

  currency = [metadataCopy currency];

  if (currency)
  {
    currency2 = [metadataCopy currency];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setCurrency:currency2];
  }

  depositAmount = [metadataCopy depositAmount];

  if (depositAmount)
  {
    depositAmount2 = [metadataCopy depositAmount];
    stringValue = [depositAmount2 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setDepositAmount:stringValue];
  }

  minLoadedBalance = [metadataCopy minLoadedBalance];

  if (minLoadedBalance)
  {
    minLoadedBalance2 = [metadataCopy minLoadedBalance];
    stringValue2 = [minLoadedBalance2 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setMinLoadedBalance:stringValue2];
  }

  maxLoadedBalance = [metadataCopy maxLoadedBalance];

  if (maxLoadedBalance)
  {
    maxLoadedBalance2 = [metadataCopy maxLoadedBalance];
    stringValue3 = [maxLoadedBalance2 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v5 setMaxLoadedBalance:stringValue3];
  }

  requiredFields = [metadataCopy requiredFields];
  v33 = MEMORY[0x277D85DD0];
  v34 = 3221225472;
  v35 = __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningMethodMetadata___block_invoke;
  v36 = &unk_279948BE8;
  v20 = v5;
  v37 = v20;
  selfCopy = self;
  [requiredFields enumerateObjectsUsingBlock:&v33];

  readerModeMetadata = [metadataCopy readerModeMetadata];
  v22 = [self toJsonString:readerModeMetadata];

  if (v22)
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setReaderModeMetadataJson:v22];
  }

  digitalIssuanceMetadata = [metadataCopy digitalIssuanceMetadata];

  if (digitalIssuanceMetadata)
  {
    digitalIssuanceMetadata2 = [metadataCopy digitalIssuanceMetadata];
    v25 = [self toNPKProtoStandalonePaymentDigitalIssuanceMetadata:digitalIssuanceMetadata2];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setDigitalIssuanceMetadata:v25];
  }

  readerModeResources = [metadataCopy readerModeResources];
  v27 = [self toJsonString:readerModeResources];

  if (v27)
  {
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setReaderModeResourcesJson:v27];
  }

  minimumReaderModeBalance = [metadataCopy minimumReaderModeBalance];

  if (minimumReaderModeBalance)
  {
    minimumReaderModeBalance2 = [metadataCopy minimumReaderModeBalance];
    stringValue4 = [minimumReaderModeBalance2 stringValue];
    [(NPKProtoStandalonePaymentProvisioningMethodMetadata *)v20 setMinimumReaderModeBalance:stringValue4];
  }

  v31 = v20;

  return v20;
}

void __82__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentProvisioningMethodMetadata___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) toNPKProtoStandalonePaymentSetupField:a2];
  [v2 addRequiredFields:v3];
}

+ (id)toNPKProtoStandalonePaymentDigitalIssuanceMetadata:(id)metadata
{
  metadataCopy = metadata;
  v5 = objc_alloc_init(NPKProtoStandalonePaymentDigitalIssuanceMetadata);
  serviceProviderIdentifier = [metadataCopy serviceProviderIdentifier];

  if (serviceProviderIdentifier)
  {
    serviceProviderIdentifier2 = [metadataCopy serviceProviderIdentifier];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v5 setServiceProviderIdentifier:serviceProviderIdentifier2];
  }

  serviceProviderCountryCode = [metadataCopy serviceProviderCountryCode];

  if (serviceProviderCountryCode)
  {
    serviceProviderCountryCode2 = [metadataCopy serviceProviderCountryCode];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v5 setServiceProviderCountryCode:serviceProviderCountryCode2];
  }

  serviceProviderCountryCode3 = [metadataCopy serviceProviderCountryCode];

  if (serviceProviderCountryCode3)
  {
    serviceProviderCountryCode4 = [metadataCopy serviceProviderCountryCode];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v5 setServiceProviderCountryCode:serviceProviderCountryCode4];
  }

  serviceProviderAcceptedNetworks = [metadataCopy serviceProviderAcceptedNetworks];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke;
  v31[3] = &unk_279945858;
  v13 = v5;
  v32 = v13;
  [serviceProviderAcceptedNetworks enumerateObjectsUsingBlock:v31];

  serviceProviderCapabilities = [metadataCopy serviceProviderCapabilities];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke_2;
  v29[3] = &unk_279945858;
  v15 = v13;
  v30 = v15;
  [serviceProviderCapabilities enumerateObjectsUsingBlock:v29];

  serviceProviderDict = [metadataCopy serviceProviderDict];
  v17 = [self toJsonString:serviceProviderDict];

  if (v17)
  {
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v15 setServiceProviderDictJson:v17];
  }

  action = [metadataCopy action];

  if (action)
  {
    action2 = [metadataCopy action];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v15 setAction:action2];
  }

  merchantID = [metadataCopy merchantID];

  if (merchantID)
  {
    merchantID2 = [metadataCopy merchantID];
    [(NPKProtoStandalonePaymentDigitalIssuanceMetadata *)v15 setMerchantID:merchantID2];
  }

  defaultSuggestions = [metadataCopy defaultSuggestions];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke_3;
  v27[3] = &unk_279948C38;
  v23 = v15;
  v28 = v23;
  [defaultSuggestions enumerateObjectsUsingBlock:v27];

  v24 = v28;
  v25 = v23;

  return v23;
}

void __79__NPKProtoStandaloneHelper_toNPKProtoStandalonePaymentDigitalIssuanceMetadata___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 stringValue];
  [v2 addDefaultSuggestions:v3];
}

+ (id)toNPKProtoStandalonePaymentSetupProductPaymentOption:(id)option
{
  optionCopy = option;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupProductPaymentOption);
  -[NPKProtoStandalonePaymentSetupProductPaymentOption setPriority:](v4, "setPriority:", [optionCopy priority]);
  -[NPKProtoStandalonePaymentSetupProductPaymentOption setCardType:](v4, "setCardType:", [optionCopy cardType]);
  supportedProtocols = [optionCopy supportedProtocols];

  [(NPKProtoStandalonePaymentSetupProductPaymentOption *)v4 setSupportedProtocols:supportedProtocols];

  return v4;
}

+ (id)toNPKProtoStandalonePaymentSetupProductImageAssetURLs:(id)ls
{
  lsCopy = ls;
  v4 = objc_alloc_init(NPKProtoStandalonePaymentSetupProductImageAssetURLs);
  digitalCardImageUrl = [lsCopy digitalCardImageUrl];

  if (digitalCardImageUrl)
  {
    digitalCardImageUrl2 = [lsCopy digitalCardImageUrl];
    absoluteString = [digitalCardImageUrl2 absoluteString];
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)v4 setDigitalCardImageUrl:absoluteString];
  }

  thumbnailImageUrl = [lsCopy thumbnailImageUrl];

  if (thumbnailImageUrl)
  {
    thumbnailImageUrl2 = [lsCopy thumbnailImageUrl];
    absoluteString2 = [thumbnailImageUrl2 absoluteString];
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)v4 setThumbnailImageUrl:absoluteString2];
  }

  logoImageUrl = [lsCopy logoImageUrl];

  if (logoImageUrl)
  {
    logoImageUrl2 = [lsCopy logoImageUrl];
    absoluteString3 = [logoImageUrl2 absoluteString];
    [(NPKProtoStandalonePaymentSetupProductImageAssetURLs *)v4 setLogoImageUrl:absoluteString3];
  }

  return v4;
}

+ (id)toJsonString:(id)string
{
  stringCopy = string;
  if (stringCopy && ([MEMORY[0x277CCAAA0] dataWithJSONObject:stringCopy options:1 error:0], (v4 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = v4;
    v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v4 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (int)toNPKProtoStandaloneReaderModeIngestionState:(unint64_t)state
{
  if (state - 1 >= 5)
  {
    return 100;
  }

  else
  {
    return 10 * (state - 1) + 110;
  }
}

+ (id)toPKPaymentSetupField:(id)field
{
  fieldCopy = field;
  v5 = [self toPKPaymentSetupFieldType:{objc_msgSend(fieldCopy, "fieldType")}];
  v6 = MEMORY[0x277D38108];
  identifier = [fieldCopy identifier];

  v8 = [v6 paymentSetupFieldWithIdentifier:identifier type:v5];

  return v8;
}

+ (unint64_t)toPKPaymentSetupFieldType:(int)type
{
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if (type != 150)
  {
    v5 = 0;
  }

  if (type != 140)
  {
    v4 = v5;
  }

  if (type != 130)
  {
    v3 = v4;
  }

  v6 = 1;
  v7 = 2;
  if (type != 120)
  {
    v7 = 0;
  }

  if (type != 110)
  {
    v6 = v7;
  }

  if (type <= 129)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

@end