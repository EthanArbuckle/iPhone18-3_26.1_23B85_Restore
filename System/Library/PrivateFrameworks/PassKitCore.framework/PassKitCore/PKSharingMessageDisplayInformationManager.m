@interface PKSharingMessageDisplayInformationManager
+ (id)displayInformationForAccessPass:(id)a3 share:(id)a4;
+ (id)displayInformationForAccessPass:(id)a3 webService:(id)a4;
+ (id)displayInformationForAccessPassType:(int64_t)a3 pass:(id)a4 webService:(id)a5;
@end

@implementation PKSharingMessageDisplayInformationManager

+ (id)displayInformationForAccessPass:(id)a3 share:(id)a4
{
  v5 = a3;
  v6 = [a1 displayInformationForAccessPassType:objc_msgSend(v5 pass:"accessType") webService:{v5, 0}];

  return v6;
}

+ (id)displayInformationForAccessPass:(id)a3 webService:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 displayInformationForAccessPassType:objc_msgSend(v7 pass:"accessType") webService:{v7, v6}];

  return v8;
}

+ (id)displayInformationForAccessPassType:(int64_t)a3 pass:(id)a4 webService:(id)a5
{
  v7 = a5;
  v8 = a4;
  v39 = [v8 localizedDescription];
  if (a3 > 6)
  {
    v9 = 0;
    v10 = 0;
    v38 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = off_1E79D9ED0[a3];
    v10 = off_1E79D9F08[a3];
    v38 = PKLocalizedShareableCredentialString(&off_1E79D9E98[a3]->isa, 0);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v7 = +[PKPaymentWebService sharedService];
LABEL_6:
  v11 = [v7 context];
  v12 = [v11 configuration];
  v13 = [v8 passTypeIdentifier];

  v14 = [v11 regionForIdentifier:v13];
  v15 = [v14 regionCode];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = PKCurrentRegion();
  }

  v18 = v17;

  v36 = v18;
  v37 = v12;
  v19 = [v12 featureWithType:5 inRegion:v18];
  v20 = [v19 openGraphPreviewUrls];
  v21 = PKSecureElementAccessPassTypeToString(a3);
  v22 = [v20 objectForKeyedSubscript:v21];

  v23 = [v19 staticContentBaseURL];
  if (v23)
  {
    if (v22)
    {
LABEL_11:
      v24 = v7;
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
    v23 = [[v28 alloc] initWithString:v29];

    if (v22)
    {
      goto LABEL_11;
    }
  }

  v30 = v9;
  v24 = v7;
  v25 = [v23 URLByAppendingPathComponent:v30];
LABEL_18:
  v31 = v25;
  v32 = [v23 URLByAppendingPathComponent:@"assets"];
  v33 = [v32 URLByAppendingPathComponent:v10];

  v34 = [[PKSharingMessageDisplayInformation alloc] initWithTitle:v39 subtitle:v38 imageURL:v33 openGraphURL:v31];

  return v34;
}

@end