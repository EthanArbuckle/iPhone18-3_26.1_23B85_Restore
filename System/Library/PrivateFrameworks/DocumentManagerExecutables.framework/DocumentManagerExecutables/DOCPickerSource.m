@interface DOCPickerSource
- (BOOL)isEqual:(id)a3;
- (BOOL)isValidForConfiguration:(id)a3;
- (BOOL)supportsInteractionMode:(unint64_t)a3;
- (DOCPickerSource)initWithPicker:(id)a3 providerDomain:(id)a4;
- (DOCPickerSource)initWithTitle:(id)a3 attributes:(id)a4 optedIn:(BOOL)a5 identifier:(id)a6 providerDomain:(id)a7 pickerExtension:(id)a8;
- (NSString)fileProviderDocumentGroup;
- (NSString)hostApplicationBundleIdentifier;
- (id)loadIconForSize:(int64_t)a3;
@end

@implementation DOCPickerSource

- (DOCPickerSource)initWithPicker:(id)a3 providerDomain:(id)a4
{
  v7 = a3;
  v8 = MEMORY[0x277CC1E50];
  v9 = a4;
  v10 = [v8 alloc];
  v11 = [v7 identifier];
  v12 = [v10 initWithBundleIdentifier:v11 error:0];

  v13 = [v12 localizedName];
  v14 = [v7 attributes];
  v15 = [v7 optedIn];
  v16 = [v12 bundleIdentifier];

  if (v16)
  {
    v17 = [v12 bundleIdentifier];
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"DOCPickerSource.m" lineNumber:54 description:@"Picker doesn't have an identifier"];

    v17 = 0;
  }

  v19 = [(DOCPickerSource *)self initWithTitle:v13 attributes:v14 optedIn:v15 identifier:v17 providerDomain:v9 pickerExtension:v7];

  return v19;
}

- (DOCPickerSource)initWithTitle:(id)a3 attributes:(id)a4 optedIn:(BOOL)a5 identifier:(id)a6 providerDomain:(id)a7 pickerExtension:(id)a8
{
  v11 = a5;
  v52 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v49.receiver = self;
  v49.super_class = DOCPickerSource;
  v19 = [(DOCPickerSource *)&v49 init];
  v20 = v19;
  if (v19)
  {
    [(DOCPickerSource *)v19 setProviderDomain:v17];
    [(DOCPickerSource *)v20 setPickerExtension:v18];
    [(DOCPickerSource *)v20 setDisplayName:v14];
    [(DOCPickerSource *)v20 setProviderName:v14];
    [(DOCPickerSource *)v20 setIdentifier:v16];
    v21 = [v15 objectForKeyedSubscript:@"UIDocumentPickerModes"];
    v22 = v21;
    if (v21)
    {
      v41 = v11;
      v42 = v20;
      v43 = v16;
      v44 = v14;
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

      v14 = v44;
      v16 = v43;
      v11 = v41;
      v22 = v40;
    }

    else
    {
      [(DOCPickerSource *)v20 setSupportedInteractionModes:MEMORY[0x277CBEBF8]];
    }

    [(DOCPickerSource *)v20 setIsExtensionOptedIn:v11, v40];
    v35 = [v15 objectForKeyedSubscript:@"UIDocumentPickerSupportedFileTypes"];
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
    v4 = [(DOCPickerSource *)self pickerExtension];
    v5 = [v4 identifier];

    v6 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v5 error:0];
    v7 = [v6 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 bundleIdentifier];
      v9 = self->_hostApplicationBundleIdentifier;
      self->_hostApplicationBundleIdentifier = v8;
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
    v3 = [(DOCPickerSource *)self providerDomain];
    v4 = [v3 extensionBundleIdentifier];

    v5 = [objc_alloc(MEMORY[0x277CC1E50]) initWithBundleIdentifier:v4 error:0];
    v6 = [v5 infoDictionary];
    v7 = [v6 objectForKey:@"NSExtensionFileProviderDocumentGroup" ofClass:objc_opt_class()];
    fileProviderDocumentGroup = self->_fileProviderDocumentGroup;
    self->_fileProviderDocumentGroup = v7;
  }

  v9 = self->_fileProviderDocumentGroup;

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DOCPickerSource;
  if ([(DOCPickerSource *)&v8 isEqual:v4])
  {
    v5 = [v4 isExtensionOptedIn];
    v6 = v5 ^ [(DOCPickerSource *)self isExtensionOptedIn]^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)loadIconForSize:(int64_t)a3
{
  v5 = objc_opt_class();
  v6 = [(DOCPickerSource *)self hostApplicationBundleIdentifier];
  v7 = [v5 applicationIconForBundleIdentifier:v6 size:a3];

  return v7;
}

- (BOOL)isValidForConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(NSExtension *)self->_pickerExtension attributes];
  v6 = [v5 valueForKey:@"UIDocumentPickerVisibilityUserManageable"];

  v7 = [(DOCPickerSource *)self pickerExtension];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:*MEMORY[0x277D773A0]];

  if ((v9 & 1) != 0 || [v4 forPickingDocuments] && !-[DOCPickerSource supportsInteractionMode:](self, "supportsInteractionMode:", objc_msgSend(v4, "interactionMode")))
  {
    v10 = 0;
  }

  else
  {
    v12.receiver = self;
    v12.super_class = DOCPickerSource;
    v10 = [(DOCPickerSource *)&v12 isValidForConfiguration:v4];
  }

  return v10;
}

- (BOOL)supportsInteractionMode:(unint64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(DOCPickerSource *)self supportedInteractionModes];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        if ([*(*(&v11 + 1) + 8 * i) unsignedIntegerValue] == a3)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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