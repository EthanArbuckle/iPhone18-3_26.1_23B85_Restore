@interface CAFRegistrations
+ (id)registrationDictionaryForIdentifier:(id)identifier;
@end

@implementation CAFRegistrations

+ (id)registrationDictionaryForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (([identifierCopy isEqualToString:@"com.apple.caraccessoryd"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"caraccessoryd"))
  {
    caraccessoryd = [self caraccessoryd];
LABEL_57:
    v6 = caraccessoryd;
    goto LABEL_58;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarClimate"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Climate"))
  {
    caraccessoryd = [self climate];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarRadio"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Media"))
  {
    caraccessoryd = [self media];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.AutoSettings"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"AutoSettings"))
  {
    caraccessoryd = [self autoSettings];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarTrip"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Trip"))
  {
    caraccessoryd = [self trip];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarTirePressure"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"TirePressure"))
  {
    caraccessoryd = [self tirePressure];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarClosures"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Closures"))
  {
    caraccessoryd = [self closures];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarCharge"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Charge"))
  {
    caraccessoryd = [self charge];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarVitals"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Vitals"))
  {
    caraccessoryd = [self vitals];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarPlayApp"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"CarPlayApp"))
  {
    caraccessoryd = [self carPlayApp];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarCamera"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"CarCamera"))
  {
    caraccessoryd = [self carCamera];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarPlaySettings"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Settings"))
  {
    caraccessoryd = [self settings];
    goto LABEL_57;
  }

  if (![identifierCopy caseInsensitiveCompare:@"Testing"])
  {
    caraccessoryd = [self testing];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.SiriAudioApp"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"CarInspector"))
  {
    caraccessoryd = [self carInspector];
    goto LABEL_57;
  }

  if (![identifierCopy caseInsensitiveCompare:@"CAFTool"])
  {
    caraccessoryd = [self cafTool];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.AssistantServices"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"SiriCommands"))
  {
    caraccessoryd = [self siriCommands];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.siriknowledged"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"SiriDonations"))
  {
    caraccessoryd = [self siriDonations];
    goto LABEL_57;
  }

  if (![identifierCopy caseInsensitiveCompare:@"MTBF"])
  {
    caraccessoryd = [self MTBF];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.Maps"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"Maps"))
  {
    caraccessoryd = [self maps];
    goto LABEL_57;
  }

  if (([identifierCopy isEqualToString:@"com.apple.CarPlayTemplateUIHost"] & 1) != 0 || !objc_msgSend(identifierCopy, "caseInsensitiveCompare:", @"CarPlayTemplateUIHost"))
  {
    caraccessoryd = [self carPlayTemplateUIHost];
    goto LABEL_57;
  }

  if (![identifierCopy caseInsensitiveCompare:@"CPNavTool"])
  {
    caraccessoryd = [self cpNavTool];
    goto LABEL_57;
  }

  if (![identifierCopy caseInsensitiveCompare:@"FastStartup"])
  {
    caraccessoryd = [self fastStartup];
    goto LABEL_57;
  }

  if (![identifierCopy caseInsensitiveCompare:@"NoLargePayload"])
  {
    caraccessoryd = [self noLargePayload];
    goto LABEL_57;
  }

  if (![identifierCopy caseInsensitiveCompare:@"iOSOnly"])
  {
    caraccessoryd = [self iOSOnly];
    goto LABEL_57;
  }

  v5 = CAFRegistrationLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [(CAFRegistrations *)identifierCopy registrationDictionaryForIdentifier:v5];
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