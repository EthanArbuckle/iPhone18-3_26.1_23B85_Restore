@interface _SWCollaborationMetadata(CKUtilities)
+ (id)appBundleIDsFromSharingURL:()CKUtilities;
+ (id)contentTypeFromCKShare:()CKUtilities;
+ (uint64_t)_contentTypeIsNotFileType:()CKUtilities;
- (id)updatedCollaborationMetadataAppBundleIDsWithSharingURL:()CKUtilities;
- (id)updatedCollaborationMetadataContentTypeWithCKShare:()CKUtilities;
- (id)updatedCollaborationMetadataWithSharingURL:()CKUtilities ckShare:localIdentifier:collaborationIdentifier:title:defaultShareOptions:creationDate:contentType:ckAppBundleIDs:initiatorHandle:initiatorNameComponents:containerSetupInfo:sourceProcessData:;
- (id)updatedCollaborationMetadataWithUpdatedMetadata:()CKUtilities ckShare:sharingURL:;
- (uint64_t)checkSendReadiness;
- (void)_logSelf;
- (void)updateInitiatorName:()CKUtilities email:;
@end

@implementation _SWCollaborationMetadata(CKUtilities)

+ (uint64_t)_contentTypeIsNotFileType:()CKUtilities
{
  v3 = a3;
  if ([v3 conformsToType:*MEMORY[0x1E6982E48]] && objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982D60]) && objc_msgSend(v3, "conformsToType:", *MEMORY[0x1E6982D80]))
  {
    v4 = [v3 conformsToType:*MEMORY[0x1E6982FF8]] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

+ (id)contentTypeFromCKShare:()CKUtilities
{
  v12 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      +[_SWCollaborationMetadata(CKUtilities) contentTypeFromCKShare:];
    }

    goto LABEL_14;
  }

  v4 = [a3 objectForKeyedSubscript:*MEMORY[0x1E695B830]];
  v5 = v4;
  if (v4 && [v4 length])
  {
    v6 = [MEMORY[0x1E6982C40] typeWithFilenameExtension:v5];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      +[_SWCollaborationMetadata(CKUtilities) contentTypeFromCKShare:];
    }

    v6 = 0;
  }

  if ([self _contentTypeIsNotFileType:v6])
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Setting contentType to nil for a non file type. was: %@", &v10, 0xCu);
    }

LABEL_14:
    v6 = 0;
  }

  return v6;
}

- (id)updatedCollaborationMetadataContentTypeWithCKShare:()CKUtilities
{
  v4 = a3;
  if (v4)
  {
    v5 = [objc_opt_class() contentTypeFromCKShare:v4];
    v6 = [self updatedCollaborationMetadataWithSharingURL:0 ckShare:v4 localIdentifier:0 collaborationIdentifier:0 title:0 defaultShareOptions:0 creationDate:0 contentType:v5 ckAppBundleIDs:0 initiatorHandle:0 initiatorNameComponents:0 containerSetupInfo:0 sourceProcessData:0];
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) updatedCollaborationMetadataContentTypeWithCKShare:];
    }

    v6 = 0;
  }

  return v6;
}

+ (id)appBundleIDsFromSharingURL:()CKUtilities
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69A82D8]);
    v5 = [v4 bundleIDsForShareBearURL:v3];
    v6 = v5;
    if (!v5 || ![v5 count])
    {
      v7 = [v4 bundleIDsForCollaborationURL:v3];

      v6 = v7;
    }
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      +[_SWCollaborationMetadata(CKUtilities) appBundleIDsFromSharingURL:];
    }

    v6 = 0;
  }

  return v6;
}

- (id)updatedCollaborationMetadataWithSharingURL:()CKUtilities ckShare:localIdentifier:collaborationIdentifier:title:defaultShareOptions:creationDate:contentType:ckAppBundleIDs:initiatorHandle:initiatorNameComponents:containerSetupInfo:sourceProcessData:
{
  v56 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v51 = a4;
  v21 = a5;
  collaborationIdentifier = a6;
  v23 = a7;
  defaultShareOptions = a8;
  selfCopy = self;
  creationDate = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  sourceProcessData = a15;
  localIdentifier = v21;
  if (v21)
  {
    if (collaborationIdentifier)
    {
      goto LABEL_3;
    }
  }

  else
  {
    localIdentifier = [selfCopy localIdentifier];
    if (collaborationIdentifier)
    {
      goto LABEL_3;
    }
  }

  collaborationIdentifier = [selfCopy collaborationIdentifier];
LABEL_3:
  v47 = v28;
  v49 = collaborationIdentifier;
  if (v23 && [v23 length] || (objc_msgSend(selfCopy, "title"), v31 = objc_claimAutoreleasedReturnValue(), v23, (v23 = v31) != 0))
  {
    v32 = [v23 length];
    if (v51 && !v32)
    {
      goto LABEL_8;
    }
  }

  else if (v51)
  {
LABEL_8:
    v33 = [v51 objectForKeyedSubscript:*MEMORY[0x1E695B828]];

    v23 = v33;
  }

  if (!defaultShareOptions)
  {
    defaultShareOptions = [selfCopy defaultShareOptions];
  }

  if (!creationDate)
  {
    creationDate = [selfCopy creationDate];
  }

  v34 = v29;
  if (v25)
  {
    v35 = v50 != 0;
  }

  else
  {
    contentType = [selfCopy contentType];
    v25 = contentType;
    v35 = v50 != 0;
    if (v50 && !contentType)
    {
      v25 = [objc_opt_class() contentTypeFromCKShare:v51];
      v35 = 1;
    }
  }

  if (v26 && [v26 count])
  {
    containerSetupInfo = v34;
  }

  else
  {
    ckAppBundleIDs = [selfCopy ckAppBundleIDs];

    v39 = !v35;
    if (ckAppBundleIDs)
    {
      v39 = 1;
    }

    v26 = ckAppBundleIDs;
    containerSetupInfo = v34;
    if ((v39 & 1) == 0)
    {
      v26 = [objc_opt_class() appBundleIDsFromSharingURL:v50];
    }
  }

  if (!v27 || ![v27 length])
  {
    initiatorHandle = [selfCopy initiatorHandle];

    v27 = initiatorHandle;
  }

  initiatorNameComponents = v47;
  if (v47)
  {
    if (containerSetupInfo)
    {
      goto LABEL_32;
    }

LABEL_39:
    containerSetupInfo = [selfCopy containerSetupInfo];
    if (sourceProcessData)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  initiatorNameComponents = [selfCopy initiatorNameComponents];
  if (!containerSetupInfo)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (sourceProcessData)
  {
    goto LABEL_33;
  }

LABEL_40:
  sourceProcessData = [selfCopy sourceProcessData];
LABEL_33:
  v42 = sourceProcessData;
  v43 = initiatorNameComponents;
  v44 = [objc_alloc(MEMORY[0x1E697B700]) initWithLocalIdentifier:v26 collaborationIdentifier:v27 title:initiatorNameComponents defaultShareOptions:containerSetupInfo creationDate:sourceProcessData contentType:? ckAppBundleIDs:? initiatorHandle:? initiatorNameComponents:? containerSetupInfo:? sourceProcessData:?];
  v45 = IMLogHandleForCategory();
  if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v55 = v50;
    _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "Updating collaboration metadata for sharing url %@:", buf, 0xCu);
  }

  [v44 _logSelf];

  return v44;
}

- (void)_logSelf
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = IMLogHandleForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    localIdentifier = [self localIdentifier];
    v31 = 138412290;
    v32 = localIdentifier;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "    localIdentifier: %@", &v31, 0xCu);
  }

  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    collaborationIdentifier = [self collaborationIdentifier];
    v31 = 138412290;
    v32 = collaborationIdentifier;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "    collaborationIdentifier: %@", &v31, 0xCu);
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    title = [self title];
    v31 = 138412290;
    v32 = title;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "    title: %@", &v31, 0xCu);
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    defaultShareOptions = [self defaultShareOptions];
    v31 = 138412290;
    v32 = defaultShareOptions;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "    defaultShareOptions: %@", &v31, 0xCu);
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    creationDate = [self creationDate];
    v31 = 138412290;
    v32 = creationDate;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "    creationDate: %@", &v31, 0xCu);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    contentType = [self contentType];
    v31 = 138412290;
    v32 = contentType;
    _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "    contentType: %@", &v31, 0xCu);
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    ckAppBundleIDs = [self ckAppBundleIDs];
    v16 = [ckAppBundleIDs componentsJoinedByString:{@", "}];
    v31 = 138412290;
    v32 = v16;
    _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "    ckAppBundleIDs: %@", &v31, 0xCu);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    initiatorHandle = [self initiatorHandle];
    v31 = 138412290;
    v32 = initiatorHandle;
    _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "    initiatorHandle: %@", &v31, 0xCu);
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    initiatorHandle2 = [self initiatorHandle];
    v31 = 138412290;
    v32 = initiatorHandle2;
    _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "    initiatorNameComponents: %@", &v31, 0xCu);
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    containerSetupInfo = [self containerSetupInfo];
    v31 = 138412290;
    v32 = containerSetupInfo;
    _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "    containerSetupInfo: %@", &v31, 0xCu);
  }

  v23 = IMLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    sourceProcessData = [self sourceProcessData];
    v31 = 138412290;
    v32 = sourceProcessData;
    _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "    sourceProcessData: %@", &v31, 0xCu);
  }

  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    userSelectedShareOptions = [self userSelectedShareOptions];
    v31 = 138412290;
    v32 = userSelectedShareOptions;
    _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "    userSelectedShareOptions: %@", &v31, 0xCu);
  }

  v27 = IMLogHandleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    defaultOptions = [self defaultOptions];
    v31 = 138412290;
    v32 = defaultOptions;
    _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "    defaultOptions: %@", &v31, 0xCu);
  }

  v29 = IMLogHandleForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    defaultShareOptions2 = [self defaultShareOptions];
    v31 = 138412290;
    v32 = defaultShareOptions2;
    _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "    defaultShareOptions: %@", &v31, 0xCu);
  }
}

- (id)updatedCollaborationMetadataWithUpdatedMetadata:()CKUtilities ckShare:sharingURL:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    localIdentifier = [v8 localIdentifier];
    collaborationIdentifier = [v8 collaborationIdentifier];
    title = [v8 title];
    defaultShareOptions = [v8 defaultShareOptions];
    creationDate = [v8 creationDate];
    contentType = [v8 contentType];
    ckAppBundleIDs = [v8 ckAppBundleIDs];
    initiatorHandle = [v8 initiatorHandle];
    initiatorNameComponents = [v8 initiatorNameComponents];
    containerSetupInfo = [v8 containerSetupInfo];
    sourceProcessData = [v8 sourceProcessData];
    v24 = [self updatedCollaborationMetadataWithSharingURL:v10 ckShare:v9 localIdentifier:localIdentifier collaborationIdentifier:collaborationIdentifier title:title defaultShareOptions:defaultShareOptions creationDate:creationDate contentType:contentType ckAppBundleIDs:ckAppBundleIDs initiatorHandle:initiatorHandle initiatorNameComponents:initiatorNameComponents containerSetupInfo:containerSetupInfo sourceProcessData:sourceProcessData];

    selfCopy = v24;
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) updatedCollaborationMetadataWithUpdatedMetadata:ckShare:sharingURL:];
    }

    selfCopy = self;
  }

  return selfCopy;
}

- (id)updatedCollaborationMetadataAppBundleIDsWithSharingURL:()CKUtilities
{
  v4 = a3;
  v5 = [objc_opt_class() appBundleIDsFromSharingURL:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [self updatedCollaborationMetadataWithAppBundleIDs:v6];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_SWCollaborationMetadata(CKUtilities) *)v4 updatedCollaborationMetadataAppBundleIDsWithSharingURL:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (void)updateInitiatorName:()CKUtilities email:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7 && [v7 length])
  {
    [self setInitiatorHandle:v8];
  }

  if (v6 && [v6 length])
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v10 = [v9 personNameComponentsFromString:v6];
    [self setInitiatorNameComponents:v10];
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    initiatorHandle = [self initiatorHandle];
    initiatorNameComponents = [self initiatorNameComponents];
    v14 = 138412546;
    v15 = initiatorHandle;
    v16 = 2112;
    v17 = initiatorNameComponents;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updated initiator name: %@, components: %@", &v14, 0x16u);
  }
}

- (uint64_t)checkSendReadiness
{
  collaborationIdentifier = [self collaborationIdentifier];
  v3 = collaborationIdentifier != 0;

  if (!collaborationIdentifier)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }
  }

  localIdentifier = [self localIdentifier];

  if (!localIdentifier)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  title = [self title];
  if (!title || (v8 = title, [self title], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  defaultShareOptions = [self defaultShareOptions];

  if (!defaultShareOptions)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  ckAppBundleIDs = [self ckAppBundleIDs];
  if (!ckAppBundleIDs || (v15 = ckAppBundleIDs, [self ckAppBundleIDs], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15, !v17))
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  initiatorHandle = [self initiatorHandle];
  if (!initiatorHandle || (v20 = initiatorHandle, [self initiatorHandle], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length"), v21, v20, !v22))
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  initiatorNameComponents = [self initiatorNameComponents];

  if (initiatorNameComponents)
  {
    if (v3)
    {
      v25 = IMLogHandleForCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        *v28 = 0;
        _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "CollaborationMetadata is ready to send:", v28, 2u);
      }

      goto LABEL_37;
    }
  }

  else
  {
    v26 = IMLogHandleForCategory();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }
  }

  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
  }

LABEL_37:

  return [self _logSelf];
}

- (void)updatedCollaborationMetadataAppBundleIDsWithSharingURL:()CKUtilities .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "no bundle ids found for sharing URL: %@", &v2, 0xCu);
}

@end