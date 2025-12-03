@interface WFContentLocation
+ (WFContentLocation)airdropLocation;
+ (WFContentLocation)appleScriptLocation;
+ (WFContentLocation)cellularDataStatisticsLocation;
+ (WFContentLocation)clipboardLocation;
+ (WFContentLocation)controlOtherAppsLocation;
+ (WFContentLocation)dataRoamingLocation;
+ (WFContentLocation)defaultLineLocation;
+ (WFContentLocation)focusLocation;
+ (WFContentLocation)genericLocation;
+ (WFContentLocation)javaScript;
+ (WFContentLocation)javaScriptForAutomationLocation;
+ (WFContentLocation)locationLocation;
+ (WFContentLocation)locationWithCalendarSource:(id)source;
+ (WFContentLocation)locationWithNotesAccountIdentifier:(id)identifier;
+ (WFContentLocation)microphoneLocation;
+ (WFContentLocation)networkLocation;
+ (WFContentLocation)notificationLocation;
+ (WFContentLocation)onScreenContentLocation;
+ (WFContentLocation)personalHotspotPasswordLocation;
+ (WFContentLocation)printLocation;
+ (WFContentLocation)publicICloud;
+ (WFContentLocation)screenshotLocation;
+ (WFContentLocation)shareExtensionLocation;
+ (WFContentLocation)shellLocation;
+ (WFContentLocation)speechRecognitionLocation;
+ (WFContentLocation)toggleLineLocation;
+ (WFContentLocation)wallpaperLocation;
+ (WFContentLocation)webpagesLocation;
+ (WFContentLocation)windowsLocation;
+ (id)allContentLocationClasses;
+ (id)appDescriptorForFileProviderHandlingURL:(id)l error:(id *)error;
+ (id)contentLocationForFile:(id)file;
+ (id)objectWithWFSerializedRepresentation:(id)representation;
+ (void)getContentLocationFromFile:(id)file completionHandler:(id)handler;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (NSString)localizedTitle;
- (WFContentLocation)initWithCoder:(id)coder;
- (WFContentLocation)initWithIdentifier:(id)identifier promptingBehaviour:(unint64_t)behaviour;
- (id)wfSerializedRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFContentLocation

+ (id)appDescriptorForFileProviderHandlingURL:(id)l error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentLocation+FileProviders.m" lineNumber:66 description:{@"Invalid parameter not satisfying: %@", @"URL"}];
  }

  startAccessingSecurityScopedResource = [lCopy startAccessingSecurityScopedResource];
  defaultManager = [MEMORY[0x277CC6408] defaultManager];
  v10 = [defaultManager itemForURL:lCopy error:error];

  if (error && *error)
  {
    v11 = getWFSecurityLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *error;
      *buf = 136315394;
      v25 = "+[WFContentLocation(FileProviders) appDescriptorForFileProviderHandlingURL:error:]";
      v26 = 2112;
      v27 = v12;
      _os_log_impl(&dword_21E1BD000, v11, OS_LOG_TYPE_DEBUG, "%s Could not create FPItem from URL: %@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    if (startAccessingSecurityScopedResource)
    {
      [lCopy stopAccessingSecurityScopedResource];
    }

    if (!v10)
    {
      v13 = 0;
      goto LABEL_21;
    }

    v23 = 0;
    v14 = [MEMORY[0x277CC6420] providerDomainForItem:v10 error:&v23];
    v15 = v23;
    v11 = v15;
    if (v14)
    {
      topLevelBundleIdentifier = [v14 topLevelBundleIdentifier];
      v17 = [objc_alloc(MEMORY[0x277CD3A58]) initWithBundleIdentifier:topLevelBundleIdentifier];
      mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
      v13 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v17];
    }

    else
    {
      if (error)
      {
        v19 = v15;
        *error = v11;
      }

      topLevelBundleIdentifier = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(topLevelBundleIdentifier, OS_LOG_TYPE_ERROR))
      {
        providerID = [v10 providerID];
        *buf = 136315650;
        v25 = "+[WFContentLocation(FileProviders) appDescriptorForFileProviderHandlingURL:error:]";
        v26 = 2112;
        v27 = providerID;
        v28 = 2112;
        v29 = v11;
        _os_log_impl(&dword_21E1BD000, topLevelBundleIdentifier, OS_LOG_TYPE_ERROR, "%s Couldn't resolve file provider with id %@: %@", buf, 0x20u);
      }

      v13 = 0;
    }
  }

LABEL_21:

  return v13;
}

+ (void)getContentLocationFromFile:(id)file completionHandler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  handlerCopy = handler;
  v8 = handlerCopy;
  if (fileCopy)
  {
    if ([fileCopy numberOfItems] >= 2)
    {
      v9 = getWFSecurityLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315138;
        v14 = "+[WFContentLocation(FileProviders) getContentLocationFromFile:completionHandler:]";
        _os_log_impl(&dword_21E1BD000, v9, OS_LOG_TYPE_FAULT, "%s getContentLocationFromFile is being called with multiple input items. The calling action should not allow for multiple input", buf, 0xCu);
      }
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __81__WFContentLocation_FileProviders__getContentLocationFromFile_completionHandler___block_invoke;
    v10[3] = &unk_278347AE8;
    v11 = v8;
    selfCopy = self;
    [fileCopy getFileRepresentation:v10 forType:0];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }
}

void __81__WFContentLocation_FileProviders__getContentLocationFromFile_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v5 = [*(a1 + 40) contentLocationForFile:a2];
    (*(v2 + 16))(v2, v5, 0);
  }

  else
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4);
  }
}

+ (id)contentLocationForFile:(id)file
{
  v21 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  if ([fileCopy representationType])
  {
    fileURL = [fileCopy fileURL];
    v14 = 0;
    v6 = [self appDescriptorForFileProviderHandlingURL:fileURL error:&v14];
    v7 = v14;
    if (v7)
    {
      v8 = getWFSecurityLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        absoluteString = [fileURL absoluteString];
        *buf = 136315651;
        v16 = "+[WFContentLocation(FileProviders) contentLocationForFile:]";
        v17 = 2113;
        v18 = absoluteString;
        v19 = 2114;
        v20 = v7;
        _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_DEBUG, "%s Could not determine appDescriptor managing path %{private}@: %{public}@", buf, 0x20u);
      }
    }

    if ([v6 isInstalled])
    {
      v10 = [WFAppContentLocation locationWithAppDescriptor:v6];
    }

    else
    {
      v12 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v16 = "+[WFContentLocation(FileProviders) contentLocationForFile:]";
        _os_log_impl(&dword_21E1BD000, v12, OS_LOG_TYPE_DEBUG, "%s File provider application is not installed or could not be resolved; defaulting to platform file manager destination", buf, 0xCu);
      }

      v10 = +[WFAppContentLocation platformFileManagerLocation];
    }

    v11 = v10;
  }

  else
  {
    fileURL = getWFFilesLogObject();
    if (os_log_type_enabled(fileURL, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v16 = "+[WFContentLocation(FileProviders) contentLocationForFile:]";
      _os_log_impl(&dword_21E1BD000, fileURL, OS_LOG_TYPE_FAULT, "%s Should not get content origin for in-memory data blob", buf, 0xCu);
    }

    v11 = 0;
  }

  return v11;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  identifier = [(WFContentLocation *)self identifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, promptingBehaviour: %tu>", v5, self, identifier, -[WFContentLocation promptingBehaviour](self, "promptingBehaviour")];

  return v7;
}

- (id)wfSerializedRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [(WFContentLocation *)self identifier];
  [dictionary setValue:identifier forKey:@"identifier"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(WFContentLocation *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[WFContentLocation promptingBehaviour](self forKey:{"promptingBehaviour"), @"promptingBehaviour"}];
}

- (WFContentLocation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  if (v5)
  {
    self = -[WFContentLocation initWithIdentifier:promptingBehaviour:](self, "initWithIdentifier:promptingBehaviour:", v5, [coderCopy decodeIntegerForKey:@"promptingBehaviour"]);
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (unint64_t)hash
{
  identifier = [(WFContentLocation *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    identifier = [(WFContentLocation *)self identifier];
    identifier2 = [equalCopy identifier];
    v7 = [identifier isEqual:identifier2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)localizedTitle
{
  v16 = *MEMORY[0x277D85DE8];
  localizedTitle = self->_localizedTitle;
  if (localizedTitle)
  {
    goto LABEL_4;
  }

  identifier = [(WFContentLocation *)self identifier];
  v5 = [WFContentLocationLocalizations localizedTitleForContentLocationWithIdentifier:identifier];

  if (v5)
  {
    v6 = [v5 copy];
    v7 = self->_localizedTitle;
    self->_localizedTitle = v6;

    localizedTitle = self->_localizedTitle;
LABEL_4:
    v8 = localizedTitle;
    goto LABEL_5;
  }

  v10 = getWFWorkflowExecutionLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    identifier2 = [(WFContentLocation *)self identifier];
    v12 = 136315394;
    v13 = "[WFContentLocation localizedTitle]";
    v14 = 2114;
    v15 = identifier2;
    _os_log_impl(&dword_21E1BD000, v10, OS_LOG_TYPE_FAULT, "%s Missing localization for content destination with identifier %{public}@", &v12, 0x16u);
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (WFContentLocation)initWithIdentifier:(id)identifier promptingBehaviour:(unint64_t)behaviour
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFContentLocation.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v14.receiver = self;
  v14.super_class = WFContentLocation;
  v9 = [(WFContentLocation *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    v10->_promptingBehaviour = behaviour;
    v11 = v10;
  }

  return v10;
}

+ (id)allContentLocationClasses
{
  v6[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6[0] = objc_opt_class();
  v6[1] = objc_opt_class();
  v6[2] = objc_opt_class();
  v6[3] = objc_opt_class();
  v6[4] = objc_opt_class();
  v6[5] = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:6];
  v4 = [v2 setWithArray:v3];

  return v4;
}

+ (id)objectWithWFSerializedRepresentation:(id)representation
{
  v20 = *MEMORY[0x277D85DE8];
  representationCopy = representation;
  v5 = [representationCopy wfObjectOfClass:objc_opt_class() forKeyPath:@"identifier"];
  v6 = v5;
  if (v5)
  {
    if ([v5 isEqualToString:@"com.apple.shortcuts.appdestination"])
    {
      v7 = WFAppContentLocation;
LABEL_15:
      v9 = [(__objc2_class *)v7 objectWithWFSerializedRepresentation:representationCopy];
      goto LABEL_16;
    }

    if ([v6 isEqualToString:@"com.apple.shortcuts.accountDestination"])
    {
      v7 = WFAccountContentLocation;
      goto LABEL_15;
    }

    if ([v6 isEqualToString:@"com.apple.shortcuts.urldestination"])
    {
      v7 = WFURLContentLocation;
      goto LABEL_15;
    }

    if ([v6 isEqualToString:@"com.apple.shortcuts.publicICloudDestination"])
    {
      v7 = WFiCloudContentLocation;
      goto LABEL_15;
    }

    v10 = +[WFModelContentLocation prefix];
    v11 = [v6 hasPrefix:v10];

    if (v11)
    {
      v7 = WFModelContentLocation;
      goto LABEL_15;
    }

    v13 = [WFContentLocationLocalizations localizedTitleForContentLocationWithIdentifier:v6];
    if (v13)
    {
      v14 = [[self alloc] initWithIdentifier:v6 promptingBehaviour:0];
    }

    else
    {
      v15 = getWFWorkflowExecutionLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = 136315394;
        v17 = "+[WFContentLocation objectWithWFSerializedRepresentation:]";
        v18 = 2114;
        v19 = v6;
        _os_log_impl(&dword_21E1BD000, v15, OS_LOG_TYPE_ERROR, "%s Returning WFUnsupportedContentLocation with identifier %{public}@", &v16, 0x16u);
      }

      v14 = [WFUnsupportedContentLocation locationWithIdentifier:v6 serializedRepresentation:representationCopy];
    }

    v9 = v14;
  }

  else
  {
    v8 = getWFWorkflowExecutionLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315138;
      v17 = "+[WFContentLocation objectWithWFSerializedRepresentation:]";
      _os_log_impl(&dword_21E1BD000, v8, OS_LOG_TYPE_ERROR, "%s Failed to decode identifier from WFContentLocation", &v16, 0xCu);
    }

    v9 = 0;
  }

LABEL_16:

  return v9;
}

+ (WFContentLocation)publicICloud
{
  v2 = [(WFContentLocation *)[WFiCloudContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.publicICloudDestination"];

  return v2;
}

+ (WFContentLocation)windowsLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.windowsDestination"];

  return v2;
}

+ (WFContentLocation)webpagesLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.webpagesDestination"];

  return v2;
}

+ (WFContentLocation)wallpaperLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.wallpaperDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)toggleLineLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.toggleCellularLineDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)speechRecognitionLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.speechRecognitionDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)screenshotLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.screenshotDestination"];

  return v2;
}

+ (WFContentLocation)shellLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.shellDestination"];

  return v2;
}

+ (WFContentLocation)shareExtensionLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.shareExtensionDestination" promptingBehaviour:0];

  return v2;
}

+ (WFContentLocation)printLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.printDestination"];

  return v2;
}

+ (WFContentLocation)personalHotspotPasswordLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.personalHotspotPasswordDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)locationLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.locationDestination"];

  return v2;
}

+ (WFContentLocation)onScreenContentLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.onScreenContentDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)notificationLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.notificationDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)networkLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.networkDestination"];

  return v2;
}

+ (WFContentLocation)microphoneLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.microphoneDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)javaScriptForAutomationLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.javaScriptForAutomationDestination"];

  return v2;
}

+ (WFContentLocation)javaScript
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.javaScript" promptingBehaviour:1];

  return v2;
}

+ (WFContentLocation)genericLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.genericDestination"];

  return v2;
}

+ (WFContentLocation)focusLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.focusDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)defaultLineLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.defaultLineDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)dataRoamingLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.dataRoamingDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)controlOtherAppsLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.controlOtherApps"];

  return v2;
}

+ (WFContentLocation)clipboardLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.clipboardDestination"];

  return v2;
}

+ (WFContentLocation)cellularDataStatisticsLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.cellularDataStatisticsDestination" promptingBehaviour:2];

  return v2;
}

+ (WFContentLocation)appleScriptLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.appleScriptDestination"];

  return v2;
}

+ (WFContentLocation)airdropLocation
{
  v2 = [[WFContentLocation alloc] initWithIdentifier:@"com.apple.shortcuts.airdropDestination" promptingBehaviour:0];

  return v2;
}

+ (WFContentLocation)locationWithNotesAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_alloc(MEMORY[0x277CD3A58]);
  v5 = [v4 initWithBundleIdentifier:*MEMORY[0x277D7A2A0]];
  mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
  v7 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v5];

  if (identifierCopy && ![identifierCopy isEqualToString:@"LocalAccount"])
  {
    v8 = [WFAccountContentLocation locationWithAccountIdentifier:identifierCopy appDescriptor:v7];
  }

  else
  {
    v8 = [WFAppContentLocation locationWithAppDescriptor:v7 managedLevel:0];
  }

  v9 = v8;

  return v9;
}

+ (WFContentLocation)locationWithCalendarSource:(id)source
{
  sourceCopy = source;
  v4 = objc_alloc(MEMORY[0x277CD3A58]);
  v5 = [v4 initWithBundleIdentifier:*MEMORY[0x277D7A220]];
  mEMORY[0x277CD3A88] = [MEMORY[0x277CD3A88] sharedResolver];
  v7 = [mEMORY[0x277CD3A88] resolvedAppMatchingDescriptor:v5];

  sourceType = [sourceCopy sourceType];
  if (sourceType != 5 && sourceType)
  {
    sourceIdentifier = [sourceCopy sourceIdentifier];
    v9 = [WFAccountContentLocation locationWithAccountIdentifier:sourceIdentifier appDescriptor:v7];
  }

  else
  {
    v9 = [WFAppContentLocation locationWithAppDescriptor:v7 managedLevel:0];
  }

  return v9;
}

@end