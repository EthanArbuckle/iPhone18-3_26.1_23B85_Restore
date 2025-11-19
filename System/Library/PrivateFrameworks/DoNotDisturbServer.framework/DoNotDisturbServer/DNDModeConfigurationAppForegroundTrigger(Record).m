@interface DNDModeConfigurationAppForegroundTrigger(Record)
+ (uint64_t)newWithDictionaryRepresentation:()Record context:;
- (id)dictionaryRepresentationWithContext:()Record;
@end

@implementation DNDModeConfigurationAppForegroundTrigger(Record)

+ (uint64_t)newWithDictionaryRepresentation:()Record context:
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 bs_safeDictionaryForKey:@"applicationIdentifier"];
  if (v7)
  {
    v8 = [MEMORY[0x277D058C8] newWithDictionaryRepresentation:v7 context:v5];
    v9 = [v5 applicationIdentifierMapper];
    v10 = [v9 applicationIdentifierForFileWithSourceApplicationIdentifier:v8];
  }

  else
  {
    v8 = [v6 bs_safeStringForKey:@"bundleIdentifier"];
    v10 = [objc_alloc(MEMORY[0x277D058C8]) initWithBundleID:v8 platform:0];
  }

  v11 = [v6 bs_safeNumberForKey:@"enabledSetting"];

  v12 = [v11 unsignedIntegerValue];
  v13 = [objc_alloc(MEMORY[0x277D05998]) initWithApplicationIdentifier:v10 enabledSetting:v12];

  return v13;
}

- (id)dictionaryRepresentationWithContext:()Record
{
  v16[3] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 destination];
  if (!v5)
  {
    v6 = [v4 applicationIdentifierMapper];
    v7 = [a1 applicationIdentifier];
    v8 = [v6 applicationIdentifierForSyncWithSourceApplicationIdentifier:v7];
    goto LABEL_5;
  }

  if (v5 == 1)
  {
    v6 = [v4 applicationIdentifierMapper];
    v7 = [a1 applicationIdentifier];
    v8 = [v6 applicationIdentifierForFileWithSourceApplicationIdentifier:v7];
LABEL_5:
    v9 = v8;

    goto LABEL_7;
  }

  v9 = 0;
LABEL_7:
  v16[0] = @"DNDModeConfigurationAppForegroundTrigger";
  v15[0] = @"class";
  v15[1] = @"applicationIdentifier";
  v10 = [v9 dictionaryRepresentationWithContext:v4];
  v16[1] = v10;
  v15[2] = @"enabledSetting";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "enabledSetting")}];
  v16[2] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end