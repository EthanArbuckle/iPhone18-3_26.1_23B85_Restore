@interface PKSharingMessageDisplayInformationManager
+ (id)displayInformationForAccessPass:(id)pass share:(id)share;
+ (id)displayInformationForAccessPass:(id)pass webService:(id)service;
+ (id)displayInformationForAccessPassType:(int64_t)type pass:(id)pass webService:(id)service;
@end

@implementation PKSharingMessageDisplayInformationManager

+ (id)displayInformationForAccessPass:(id)pass share:(id)share
{
  passCopy = pass;
  v6 = [self displayInformationForAccessPassType:objc_msgSend(passCopy pass:"accessType") webService:{passCopy, 0}];

  return v6;
}

+ (id)displayInformationForAccessPass:(id)pass webService:(id)service
{
  serviceCopy = service;
  passCopy = pass;
  v8 = [self displayInformationForAccessPassType:objc_msgSend(passCopy pass:"accessType") webService:{passCopy, serviceCopy}];

  return v8;
}

+ (id)displayInformationForAccessPassType:(int64_t)type pass:(id)pass webService:(id)service
{
  serviceCopy = service;
  passCopy = pass;
  localizedDescription = [passCopy localizedDescription];
  if (type > 6)
  {
    v9 = 0;
    v10 = 0;
    v38 = 0;
    if (serviceCopy)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = off_1E79D9ED0[type];
    v10 = off_1E79D9F08[type];
    v38 = PKLocalizedShareableCredentialString(&off_1E79D9E98[type]->isa, 0);
    if (serviceCopy)
    {
      goto LABEL_6;
    }
  }

  serviceCopy = +[PKPaymentWebService sharedService];
LABEL_6:
  context = [serviceCopy context];
  configuration = [context configuration];
  passTypeIdentifier = [passCopy passTypeIdentifier];

  v14 = [context regionForIdentifier:passTypeIdentifier];
  regionCode = [v14 regionCode];
  v16 = regionCode;
  if (regionCode)
  {
    v17 = regionCode;
  }

  else
  {
    v17 = PKCurrentRegion();
  }

  v18 = v17;

  v36 = v18;
  v37 = configuration;
  v19 = [configuration featureWithType:5 inRegion:v18];
  openGraphPreviewUrls = [v19 openGraphPreviewUrls];
  v21 = PKSecureElementAccessPassTypeToString(type);
  v22 = [openGraphPreviewUrls objectForKeyedSubscript:v21];

  staticContentBaseURL = [v19 staticContentBaseURL];
  if (staticContentBaseURL)
  {
    if (v22)
    {
LABEL_11:
      v24 = serviceCopy;
      v25 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v22];
      goto LABEL_18;
    }
  }

  else
  {
    v26 = @"https://smp-device-content.apple.com/static/displayInfo";
    if (os_variant_has_internal_ui())
    {
      v27 = PKStockholmEnvironmentName();
      if ([v27 containsString:@"QA"])
      {
        v26 = @"https://smp-device-qa1.apple.com/static/displayInfo";
      }
    }

    v28 = MEMORY[0x1E695DFF8];
    v29 = v26;
    staticContentBaseURL = [[v28 alloc] initWithString:v29];

    if (v22)
    {
      goto LABEL_11;
    }
  }

  v30 = v9;
  v24 = serviceCopy;
  v25 = [staticContentBaseURL URLByAppendingPathComponent:v30];
LABEL_18:
  v31 = v25;
  v32 = [staticContentBaseURL URLByAppendingPathComponent:@"assets"];
  v33 = [v32 URLByAppendingPathComponent:v10];

  v34 = [[PKSharingMessageDisplayInformation alloc] initWithTitle:localizedDescription subtitle:v38 imageURL:v33 openGraphURL:v31];

  return v34;
}

@end