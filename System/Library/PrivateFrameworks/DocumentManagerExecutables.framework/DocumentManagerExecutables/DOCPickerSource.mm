@interface DOCPickerSource
- (BOOL)isEqual:(id)equal;
- (BOOL)isValidForConfiguration:(id)configuration;
- (BOOL)supportsInteractionMode:(unint64_t)mode;
- (DOCPickerSource)initWithPicker:(id)picker providerDomain:(id)domain;
- (DOCPickerSource)initWithTitle:(id)title attributes:(id)attributes optedIn:(BOOL)in identifier:(id)identifier providerDomain:(id)domain pickerExtension:(id)extension;
- (NSString)fileProviderDocumentGroup;
- (NSString)hostApplicationBundleIdentifier;
- (id)loadIconForSize:(int64_t)size;
@end

@implementation DOCPickerSource

- (DOCPickerSource)initWithPicker:(id)picker providerDomain:(id)domain
{
  pickerCopy = picker;
  v8 = MEMORY[0x277CC1E50];
  domainCopy = domain;
  v10 = [v8 alloc];
  identifier = [pickerCopy identifier];
  v12 = [v10 initWithBundleIdentifier:identifier error:0];

  localizedName = [v12 localizedName];
  attributes = [pickerCopy attributes];
  optedIn = [pickerCopy optedIn];
  bundleIdentifier = [v12 bundleIdentifier];

  if (bundleIdentifier)
  {
    bundleIdentifier2 = [v12 bundleIdentifier];
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"DOCPickerSource.m" lineNumber:54 description:@"Picker doesn't have an identifier"];

    bundleIdentifier2 = 0;
  }

  v19 = [(DOCPickerSource *)self initWithTitle:localizedName attributes:attributes optedIn:optedIn identifier:bundleIdentifier2 providerDomain:domainCopy pickerExtension:pickerCopy];

  return v19;
}

- (DOCPickerSource)initWithTitle:(id)title attributes:(id)attributes optedIn:(BOOL)in identifier:(id)identifier providerDomain:(id)domain pickerExtension:(id)extension
{
  inCopy = in;
  v52 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  attributesCopy = attributes;
  identifierCopy = identifier;
  domainCopy = domain;
  extensionCopy = extension;
  v49.receiver = self;
  v49.super_class = DOCPickerSource;
  v19 = [(DOCPickerSource *)&v49 init];
  v20 = v19;
  if (v19)
  {
    [(DOCPickerSource *)v19 setProviderDomain:domainCopy];
    [(DOCPickerSource *)v20 setPickerExtension:extensionCopy];
    [(DOCPickerSource *)v20 setDisplayName:titleCopy];
    [(DOCPickerSource *)v20 setProviderName:titleCopy];
    [(DOCPickerSource *)v20 setIdentifier:identifierCopy];
    v21 = [attributesCopy objectForKeyedSubscript:@"UIDocumentPickerModes"];
    v22 = v21;
    if (v21)
    {
      v41 = inCopy;
      v42 = v20;
      v43 = identifierCopy;
      v44 = titleCopy;
      v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v21, "count")}];
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v48 = 0u;
      v40 = v22;
      v24 = v22;
      v25 = [v24 countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v46;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v46 != v27)
            {
              objc_enumerationMutation(v24);
            }

            v29 = *(*(&v45 + 1) + 8 * i);
            v30 = [v29 isEqualToString:{@"UIDocumentPickerModeImport", v40}];
            v31 = &unk_285CE9D78;
            if ((v30 & 1) == 0)
            {
              v32 = [v29 isEqualToString:@"UIDocumentPickerModeOpen"];
              v31 = &unk_285CE9D90;
              if ((v32 & 1) == 0)
              {
                v33 = [v29 isEqualToString:@"UIDocumentPickerModeExportToService"];
                v31 = &unk_285CE9DA8;
                if ((v33 & 1) == 0)
                {
                  v34 = [v29 isEqualToString:@"UIDocumentPickerModeMoveToService"];
                  v31 = &unk_285CE9DC0;
                  if (!v34)
                  {
                    continue;
                  }
                }
              }
            }

            [v23 addObject:v31];
          }

          v26 = [v24 countByEnumeratingWithState:&v45 objects:v51 count:16];
        }

        while (v26);
      }

      v20 = v42;
      [(DOCPickerSource *)v42 setSupportedInteractionModes:v23];

      titleCopy = v44;
      identifierCopy = v43;
      inCopy = v41;
      v22 = v40;
    }

    else
    {
      [(DOCPickerSource *)v20 setSupportedInteractionModes:MEMORY[0x277CBEBF8]];
    }

    [(DOCPickerSource *)v20 setIsExtensionOptedIn:inCopy, v40];
    v35 = [attributesCopy objectForKeyedSubscript:@"UIDocumentPickerSupportedFileTypes"];
    if (!v35 || ([MEMORY[0x277CE1CB8] doc_contentTypesForIdentifiers:v35], (v36 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v37 = *MEMORY[0x277CE1DB8];
      v50[0] = *MEMORY[0x277CE1D40];
      v50[1] = v37;
      v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
    }

    v38 = v36;
    [(DOCPickerSource *)v20 setDocumentContentTypes:v36];
  }

  return v20;
}

- (NSString)hostApplicationBundleIdentifier
{
  hostApplicationBundleIdentifier = self->_hostApplicationBundleIdentifier;
  if (!hostApplicationBundleIdentifier)
  {
    pickerExtension = [(DOCPickerSource *)self pickerExtension];
    identifier = [pickerExtension identifier];

    v6 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:identifier error:0];
    containingBundleRecord = [v6 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bundleIdentifier = [containingBundleRecord bundleIdentifier];
      v9 = self->_hostApplicationBundleIdentifier;
      self->_hostApplicationBundleIdentifier = bundleIdentifier;
    }

    hostApplicationBundleIdentifier = self->_hostApplicationBundleIdentifier;
  }

  return hostApplicationBundleIdentifier;
}

- (NSString)fileProviderDocumentGroup
{
  if (!self->_loadedFileProviderDocumentGroup)
  {
    self->_loadedFileProviderDocumentGroup = 1;
    providerDomain = [(DOCPickerSource *)self providerDomain];
    extensionBundleIdentifier = [providerDomain extensionBundleIdentifier];

    v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:extensionBundleIdentifier error:0];
    infoDictionary = [v5 infoDictionary];
    v7 = [infoDictionary objectForKey:@"NSExtensionFileProviderDocumentGroup" ofClass:objc_opt_class()];
    fileProviderDocumentGroup = self->_fileProviderDocumentGroup;
    self->_fileProviderDocumentGroup = v7;
  }

  v9 = self->_fileProviderDocumentGroup;

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8.receiver = self;
  v8.super_class = DOCPickerSource;
  if ([(DOCPickerSource *)&v8 isEqual:equalCopy])
  {
    isExtensionOptedIn = [equalCopy isExtensionOptedIn];
    v6 = isExtensionOptedIn ^ [(DOCPickerSource *)self isExtensionOptedIn]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)loadIconForSize:(int64_t)size
{
  v5 = objc_opt_class();
  hostApplicationBundleIdentifier = [(DOCPickerSource *)self hostApplicationBundleIdentifier];
  v7 = [v5 applicationIconForBundleIdentifier:hostApplicationBundleIdentifier size:size];

  return v7;
}

- (BOOL)isValidForConfiguration:(id)configuration
{
  configurationCopy = configuration;
  attributes = [(NSExtension *)self->_pickerExtension attributes];
  v6 = [attributes valueForKey:@"UIDocumentPickerVisibilityUserManageable"];

  pickerExtension = [(DOCPickerSource *)self pickerExtension];
  identifier = [pickerExtension identifier];
  v9 = [identifier isEqualToString:*MEMORY[0x277D773A0]];

  if ((v9 & 1) != 0 || [configurationCopy forPickingDocuments] && !-[DOCPickerSource supportsInteractionMode:](self, "supportsInteractionMode:", objc_msgSend(configurationCopy, "interactionMode")))
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = DOCPickerSource;
    v10 = [(DOCPickerSource *)&v12 isValidForConfiguration:configurationCopy];
  }

  return v10;
}

- (BOOL)supportsInteractionMode:(unint64_t)mode
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  supportedInteractionModes = [(DOCPickerSource *)self supportedInteractionModes];
  v5 = [supportedInteractionModes countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(supportedInteractionModes);
        }

        if ([*(*(&v11 + 1) + 8 * i) unsignedIntegerValue] == mode)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [supportedInteractionModes countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end