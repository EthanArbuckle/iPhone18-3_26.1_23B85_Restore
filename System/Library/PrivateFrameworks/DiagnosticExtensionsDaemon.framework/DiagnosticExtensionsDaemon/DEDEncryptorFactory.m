@interface DEDEncryptorFactory
+ (id)getEncryptorForExtensionIdentifier:(id)a3;
@end

@implementation DEDEncryptorFactory

+ (id)getEncryptorForExtensionIdentifier:(id)a3
{
  v13[10] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc(MEMORY[0x277CBEB98]);
  v13[0] = @"com.apple.DiagnosticExtensions.Cinnamon";
  v13[1] = @"com.apple.DiagnosticExtensions.sysdiagnose";
  v13[2] = @"com.apple.AppleElementsSupport.AppleElementsSleepDiagnostic";
  v13[3] = @"com.apple.AppleElementsSupport.AppleElementsDiagnostic";
  v13[4] = @"com.apple.HealthAlgorithms.CycleTrackingDiagnosticExtension";
  v13[5] = @"com.apple.HeartRhythmAlgorithms.IRNDiagnosticExtension";
  v13[6] = @"com.apple.HealthLite.KaliDiagnosticExtension";
  v13[7] = @"com.apple.AfibBurden.AfibBurdenDiagnosticExtension";
  v13[8] = @"healthwrap";
  v13[9] = @"AppleEncryptedArchive";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:10];
  v6 = [v4 initWithArray:v5];

  if ([v6 containsObject:v3])
  {
    v7 = [v3 isEqualToString:@"AppleEncryptedArchive"];
    v8 = off_278F64AF0;
    if (!v7)
    {
      v8 = off_278F64C10;
    }

    v9 = *v8;
    v10 = objc_opt_new();
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end