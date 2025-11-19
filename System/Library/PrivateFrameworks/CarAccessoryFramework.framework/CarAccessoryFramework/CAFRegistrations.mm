@interface CAFRegistrations
+ (id)registrationDictionaryForIdentifier:(id)a3;
@end

@implementation CAFRegistrations

+ (id)registrationDictionaryForIdentifier:(id)a3
{
  v4 = a3;
  if (([v4 isEqualToString:@"com.apple.caraccessoryd"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"caraccessoryd"))
  {
    v7 = [a1 caraccessoryd];
LABEL_57:
    v6 = v7;
    goto LABEL_58;
  }

  if (([v4 isEqualToString:@"com.apple.CarClimate"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Climate"))
  {
    v7 = [a1 climate];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarRadio"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Media"))
  {
    v7 = [a1 media];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.AutoSettings"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"AutoSettings"))
  {
    v7 = [a1 autoSettings];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarTrip"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Trip"))
  {
    v7 = [a1 trip];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarTirePressure"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"TirePressure"))
  {
    v7 = [a1 tirePressure];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarClosures"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Closures"))
  {
    v7 = [a1 closures];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarCharge"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Charge"))
  {
    v7 = [a1 charge];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarVitals"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Vitals"))
  {
    v7 = [a1 vitals];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarPlayApp"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"CarPlayApp"))
  {
    v7 = [a1 carPlayApp];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarCamera"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"CarCamera"))
  {
    v7 = [a1 carCamera];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarPlaySettings"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Settings"))
  {
    v7 = [a1 settings];
    goto LABEL_57;
  }

  if (![v4 caseInsensitiveCompare:@"Testing"])
  {
    v7 = [a1 testing];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.SiriAudioApp"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"CarInspector"))
  {
    v7 = [a1 carInspector];
    goto LABEL_57;
  }

  if (![v4 caseInsensitiveCompare:@"CAFTool"])
  {
    v7 = [a1 cafTool];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.AssistantServices"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"SiriCommands"))
  {
    v7 = [a1 siriCommands];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.siriknowledged"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"SiriDonations"))
  {
    v7 = [a1 siriDonations];
    goto LABEL_57;
  }

  if (![v4 caseInsensitiveCompare:@"MTBF"])
  {
    v7 = [a1 MTBF];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.Maps"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"Maps"))
  {
    v7 = [a1 maps];
    goto LABEL_57;
  }

  if (([v4 isEqualToString:@"com.apple.CarPlayTemplateUIHost"] & 1) != 0 || !objc_msgSend(v4, "caseInsensitiveCompare:", @"CarPlayTemplateUIHost"))
  {
    v7 = [a1 carPlayTemplateUIHost];
    goto LABEL_57;
  }

  if (![v4 caseInsensitiveCompare:@"CPNavTool"])
  {
    v7 = [a1 cpNavTool];
    goto LABEL_57;
  }

  if (![v4 caseInsensitiveCompare:@"FastStartup"])
  {
    v7 = [a1 fastStartup];
    goto LABEL_57;
  }

  if (![v4 caseInsensitiveCompare:@"NoLargePayload"])
  {
    v7 = [a1 noLargePayload];
    goto LABEL_57;
  }

  if (![v4 caseInsensitiveCompare:@"iOSOnly"])
  {
    v7 = [a1 iOSOnly];
    goto LABEL_57;
  }

  v5 = CAFRegistrationLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CAFRegistrations *)v4 registrationDictionaryForIdentifier:v5];
  }

  v6 = &unk_284683598;
LABEL_58:

  return v6;
}

+ (void)registrationDictionaryForIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_231618000, a2, OS_LOG_TYPE_ERROR, "Unknown registration identifier %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end