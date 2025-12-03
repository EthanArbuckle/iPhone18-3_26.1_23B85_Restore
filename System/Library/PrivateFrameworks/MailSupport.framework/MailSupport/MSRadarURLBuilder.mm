@interface MSRadarURLBuilder
+ (BOOL)canOpenRadar;
+ (id)_URLFromQueryItems:(id)items builder:(id)builder;
+ (id)_blackPearlComponentInfo;
+ (id)_componentInfoDictionaryFromComponent:(int64_t)component;
+ (id)componentIDFromRadarComponent:(int64_t)component;
+ (id)componentNameFromRadarComponent:(int64_t)component;
+ (id)radarURLWithBuilder:(id)builder;
+ (id)stringFromRadarClassification:(int64_t)classification;
+ (id)stringFromRadarReproducibility:(int64_t)reproducibility;
- (MSRadarURLBuilder)init;
- (id)autoDiagnosticsString;
@end

@implementation MSRadarURLBuilder

- (MSRadarURLBuilder)init
{
  v6.receiver = self;
  v6.super_class = MSRadarURLBuilder;
  v2 = [(MSRadarURLBuilder *)&v6 init];
  v3 = v2;
  if (v2)
  {
    extensionIdentifiers = v2->_extensionIdentifiers;
    v2->_extensionIdentifiers = &unk_286935500;

    v3->_appendSysdiagnoseHowTo = 0;
    *&v3->_prependSystemVersionToTitle = 257;
  }

  return v3;
}

+ (BOOL)canOpenRadar
{
  v2 = objc_opt_new();
  [v2 setScheme:@"tap-to-radar"];
  [v2 setHost:@"new"];
  v3 = [v2 URL];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getUIApplicationClass_softClass_0;
  v13 = getUIApplicationClass_softClass_0;
  if (!getUIApplicationClass_softClass_0)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __getUIApplicationClass_block_invoke_0;
    v9[3] = &unk_27985B7F0;
    v9[4] = &v10;
    __getUIApplicationClass_block_invoke_0(v9);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  sharedApplication = [v4 sharedApplication];
  v7 = [sharedApplication canOpenURL:v3];

  return v7;
}

+ (id)stringFromRadarClassification:(int64_t)classification
{
  if (classification > 9)
  {
    return &stru_28692F9D8;
  }

  else
  {
    return off_27985B9F0[classification];
  }
}

+ (id)stringFromRadarReproducibility:(int64_t)reproducibility
{
  if (reproducibility > 5)
  {
    return &stru_28692F9D8;
  }

  else
  {
    return off_27985BA40[reproducibility];
  }
}

+ (id)_componentInfoDictionaryFromComponent:(int64_t)component
{
  v11[3] = *MEMORY[0x277D85DE8];
  switch(component)
  {
    case 27:
      v10[0] = @"sRadarComponentIDKey";
      v10[1] = @"sRadarComponentNameKey";
      v11[0] = @"352566";
      v11[1] = @"Mail Search Backend";
      v10[2] = @"sRadarComponentVersionKey";
      v11[2] = @"iOS";
      _blackPearlComponentInfo = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
      break;
    case 28:
      v8[0] = @"sRadarComponentIDKey";
      v8[1] = @"sRadarComponentNameKey";
      v9[0] = @"462765";
      v9[1] = @"Mail MIME";
      v8[2] = @"sRadarComponentVersionKey";
      v9[2] = @"iOS";
      _blackPearlComponentInfo = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:3];
      break;
    case 29:
      _blackPearlComponentInfo = [self _blackPearlComponentInfo];
      break;
    default:
      v6[0] = @"sRadarComponentNameKey";
      v6[1] = @"sRadarComponentIDKey";
      v7[0] = @"Mail (New Bugs)";
      v7[1] = @"224209";
      v6[2] = @"sRadarComponentVersionKey";
      v7[2] = @"iOS";
      _blackPearlComponentInfo = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];
      break;
  }

  v4 = *MEMORY[0x277D85DE8];

  return _blackPearlComponentInfo;
}

+ (id)_blackPearlComponentInfo
{
  v6[3] = *MEMORY[0x277D85DE8];
  v5[0] = @"sRadarComponentNameKey";
  v5[1] = @"sRadarComponentIDKey";
  v6[0] = @"Black Pearl";
  v6[1] = @"1596667";
  v5[2] = @"sRadarComponentVersionKey";
  v6[2] = @"Feedback";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:v5 count:3];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

+ (id)componentNameFromRadarComponent:(int64_t)component
{
  v3 = [self _componentInfoDictionaryFromComponent:component];
  v4 = [v3 objectForKeyedSubscript:@"sRadarComponentNameKey"];

  return v4;
}

+ (id)componentIDFromRadarComponent:(int64_t)component
{
  v3 = [self _componentInfoDictionaryFromComponent:component];
  v4 = [v3 objectForKeyedSubscript:@"sRadarComponentIDKey"];

  return v4;
}

- (id)autoDiagnosticsString
{
  autoDiagnostics = [(MSRadarURLBuilder *)self autoDiagnostics];
  if ((autoDiagnostics - 1) > 5)
  {
    return 0;
  }

  else
  {
    return off_27985BA70[autoDiagnostics - 1];
  }
}

+ (id)radarURLWithBuilder:(id)builder
{
  v47[7] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSRadarURLBuilder.m" lineNumber:243 description:{@"Invalid parameter not satisfying: %@", @"builderBlock"}];
  }

  v5 = objc_opt_new();
  builderCopy[2](builderCopy, v5);
  if ([v5 appendStandardDisclaimerToDescription])
  {
    radarDescription = [v5 radarDescription];
    if ([v5 appendSysdiagnoseHowTo])
    {
      v7 = [radarDescription stringByAppendingString:@"\n\n*** REQUIRED DIAGNOSTICS\nPlease attach Mail-targeted sysdiagnose (run sudo sysdiagnose Mail in Terminal).\n"];

      radarDescription = v7;
    }

    if (([v5 customFooter] & 1) == 0)
    {
      v8 = [radarDescription stringByAppendingString:{@"\n\n*** Note: If you have allowed Mail to collect privacy sensitive logs in Tap-to-Radar, Mail will attach the content of the email currently displayed to this radar. This is the EML file inside the Mail Logs folder, you can remove this attachment using the Tap-To-Radar app. ***"}];

      radarDescription = v8;
    }

    [v5 setRadarDescription:radarDescription];
  }

  v45 = [self stringFromRadarClassification:{objc_msgSend(v5, "classification")}];
  v43 = [self stringFromRadarReproducibility:{objc_msgSend(v5, "reproducibility")}];
  v35 = [self _componentInfoDictionaryFromComponent:{objc_msgSend(v5, "component")}];
  v41 = [v35 objectForKeyedSubscript:@"sRadarComponentNameKey"];
  v44 = [v35 objectForKeyedSubscript:@"sRadarComponentIDKey"];
  selfCopy = self;
  v42 = [v35 objectForKeyedSubscript:@"sRadarComponentVersionKey"];
  v9 = MEMORY[0x277CBEB18];
  v10 = MEMORY[0x277CCAD18];
  title = [v5 title];
  v39 = [v10 queryItemWithName:@"Title" value:?];
  v47[0] = v39;
  v11 = MEMORY[0x277CCAD18];
  radarDescription2 = [v5 radarDescription];
  v37 = [v11 queryItemWithName:@"Description" value:?];
  v47[1] = v37;
  v12 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentID" value:v44];
  v47[2] = v12;
  v13 = [MEMORY[0x277CCAD18] queryItemWithName:@"Classification" value:v45];
  v47[3] = v13;
  v14 = [MEMORY[0x277CCAD18] queryItemWithName:@"Reproducibility" value:v43];
  v47[4] = v14;
  v15 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentName" value:v41];
  v47[5] = v15;
  v16 = [MEMORY[0x277CCAD18] queryItemWithName:@"ComponentVersion" value:v42];
  v47[6] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:7];
  v18 = [v9 arrayWithArray:v17];

  attachmentPath = [v5 attachmentPath];

  if (attachmentPath)
  {
    v20 = MEMORY[0x277CCAD18];
    attachmentPath2 = [v5 attachmentPath];
    v22 = [v20 queryItemWithName:@"attachments" value:attachmentPath2];
    [v18 addObject:v22];
  }

  extensionIdentifiers = [v5 extensionIdentifiers];
  v24 = [extensionIdentifiers componentsJoinedByString:{@", "}];

  if (v24)
  {
    v25 = [MEMORY[0x277CCAD18] queryItemWithName:@"ExtensionIdentifiers" value:v24];
    [v18 addObject:v25];
  }

  autoDiagnosticsString = [v5 autoDiagnosticsString];
  if (autoDiagnosticsString)
  {
    v27 = [MEMORY[0x277CCAD18] queryItemWithName:@"AutoDiagnostics" value:autoDiagnosticsString];
    [v18 addObject:v27];
  }

  v28 = MEMORY[0x277CCAD18];
  if ([v5 prependSystemVersionToTitle])
  {
    v29 = @"1";
  }

  else
  {
    v29 = @"0";
  }

  v30 = [v28 queryItemWithName:@"IncludeDevicePrefixInTitle" value:v29];
  [v18 addObject:v30];

  v31 = [selfCopy _URLFromQueryItems:v18 builder:v5];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

+ (id)_URLFromQueryItems:(id)items builder:(id)builder
{
  itemsCopy = items;
  v5 = objc_opt_new();
  [v5 setQueryItems:itemsCopy];
  [v5 setScheme:@"tap-to-radar"];
  [v5 setHost:@"new"];
  v6 = [v5 URL];

  return v6;
}

@end