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

  if ([a1 _contentTypeIsNotFileType:v6])
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
    v6 = [a1 updatedCollaborationMetadataWithSharingURL:0 ckShare:v4 localIdentifier:0 collaborationIdentifier:0 title:0 defaultShareOptions:0 creationDate:0 contentType:v5 ckAppBundleIDs:0 initiatorHandle:0 initiatorNameComponents:0 containerSetupInfo:0 sourceProcessData:0];
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
  v22 = a6;
  v23 = a7;
  v53 = a8;
  v24 = a1;
  v52 = a9;
  v25 = a10;
  v26 = a11;
  v27 = a12;
  v28 = a13;
  v29 = a14;
  v30 = a15;
  v48 = v21;
  if (v21)
  {
    if (v22)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v48 = [v24 localIdentifier];
    if (v22)
    {
      goto LABEL_3;
    }
  }

  v22 = [v24 collaborationIdentifier];
LABEL_3:
  v47 = v28;
  v49 = v22;
  if (v23 && [v23 length] || (objc_msgSend(v24, "title"), v31 = objc_claimAutoreleasedReturnValue(), v23, (v23 = v31) != 0))
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

  if (!v53)
  {
    v53 = [v24 defaultShareOptions];
  }

  if (!v52)
  {
    v52 = [v24 creationDate];
  }

  v34 = v29;
  if (v25)
  {
    v35 = v50 != 0;
  }

  else
  {
    v36 = [v24 contentType];
    v25 = v36;
    v35 = v50 != 0;
    if (v50 && !v36)
    {
      v25 = [objc_opt_class() contentTypeFromCKShare:v51];
      v35 = 1;
    }
  }

  if (v26 && [v26 count])
  {
    v37 = v34;
  }

  else
  {
    v38 = [v24 ckAppBundleIDs];

    v39 = !v35;
    if (v38)
    {
      v39 = 1;
    }

    v26 = v38;
    v37 = v34;
    if ((v39 & 1) == 0)
    {
      v26 = [objc_opt_class() appBundleIDsFromSharingURL:v50];
    }
  }

  if (!v27 || ![v27 length])
  {
    v40 = [v24 initiatorHandle];

    v27 = v40;
  }

  v41 = v47;
  if (v47)
  {
    if (v37)
    {
      goto LABEL_32;
    }

LABEL_39:
    v37 = [v24 containerSetupInfo];
    if (v30)
    {
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  v41 = [v24 initiatorNameComponents];
  if (!v37)
  {
    goto LABEL_39;
  }

LABEL_32:
  if (v30)
  {
    goto LABEL_33;
  }

LABEL_40:
  v30 = [v24 sourceProcessData];
LABEL_33:
  v42 = v30;
  v43 = v41;
  v44 = [objc_alloc(MEMORY[0x1E697B700]) initWithLocalIdentifier:v26 collaborationIdentifier:v27 title:v41 defaultShareOptions:v37 creationDate:v30 contentType:? ckAppBundleIDs:? initiatorHandle:? initiatorNameComponents:? containerSetupInfo:? sourceProcessData:?];
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
    v3 = [a1 localIdentifier];
    v31 = 138412290;
    v32 = v3;
    _os_log_impl(&dword_19020E000, v2, OS_LOG_TYPE_INFO, "    localIdentifier: %@", &v31, 0xCu);
  }

  v4 = IMLogHandleForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [a1 collaborationIdentifier];
    v31 = 138412290;
    v32 = v5;
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "    collaborationIdentifier: %@", &v31, 0xCu);
  }

  v6 = IMLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = [a1 title];
    v31 = 138412290;
    v32 = v7;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "    title: %@", &v31, 0xCu);
  }

  v8 = IMLogHandleForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = [a1 defaultShareOptions];
    v31 = 138412290;
    v32 = v9;
    _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "    defaultShareOptions: %@", &v31, 0xCu);
  }

  v10 = IMLogHandleForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = [a1 creationDate];
    v31 = 138412290;
    v32 = v11;
    _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "    creationDate: %@", &v31, 0xCu);
  }

  v12 = IMLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [a1 contentType];
    v31 = 138412290;
    v32 = v13;
    _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "    contentType: %@", &v31, 0xCu);
  }

  v14 = IMLogHandleForCategory();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = [a1 ckAppBundleIDs];
    v16 = [v15 componentsJoinedByString:{@", "}];
    v31 = 138412290;
    v32 = v16;
    _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "    ckAppBundleIDs: %@", &v31, 0xCu);
  }

  v17 = IMLogHandleForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [a1 initiatorHandle];
    v31 = 138412290;
    v32 = v18;
    _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "    initiatorHandle: %@", &v31, 0xCu);
  }

  v19 = IMLogHandleForCategory();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = [a1 initiatorHandle];
    v31 = 138412290;
    v32 = v20;
    _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "    initiatorNameComponents: %@", &v31, 0xCu);
  }

  v21 = IMLogHandleForCategory();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = [a1 containerSetupInfo];
    v31 = 138412290;
    v32 = v22;
    _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "    containerSetupInfo: %@", &v31, 0xCu);
  }

  v23 = IMLogHandleForCategory();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = [a1 sourceProcessData];
    v31 = 138412290;
    v32 = v24;
    _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "    sourceProcessData: %@", &v31, 0xCu);
  }

  v25 = IMLogHandleForCategory();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = [a1 userSelectedShareOptions];
    v31 = 138412290;
    v32 = v26;
    _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "    userSelectedShareOptions: %@", &v31, 0xCu);
  }

  v27 = IMLogHandleForCategory();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = [a1 defaultOptions];
    v31 = 138412290;
    v32 = v28;
    _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "    defaultOptions: %@", &v31, 0xCu);
  }

  v29 = IMLogHandleForCategory();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = [a1 defaultShareOptions];
    v31 = 138412290;
    v32 = v30;
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
    v25 = [v8 localIdentifier];
    v23 = [v8 collaborationIdentifier];
    v22 = [v8 title];
    v21 = [v8 defaultShareOptions];
    v20 = [v8 creationDate];
    v19 = [v8 contentType];
    v18 = [v8 ckAppBundleIDs];
    v11 = [v8 initiatorHandle];
    v12 = [v8 initiatorNameComponents];
    v13 = [v8 containerSetupInfo];
    v14 = [v8 sourceProcessData];
    v24 = [a1 updatedCollaborationMetadataWithSharingURL:v10 ckShare:v9 localIdentifier:v25 collaborationIdentifier:v23 title:v22 defaultShareOptions:v21 creationDate:v20 contentType:v19 ckAppBundleIDs:v18 initiatorHandle:v11 initiatorNameComponents:v12 containerSetupInfo:v13 sourceProcessData:v14];

    v15 = v24;
  }

  else
  {
    v16 = IMLogHandleForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) updatedCollaborationMetadataWithUpdatedMetadata:ckShare:sharingURL:];
    }

    v15 = a1;
  }

  return v15;
}

- (id)updatedCollaborationMetadataAppBundleIDsWithSharingURL:()CKUtilities
{
  v4 = a3;
  v5 = [objc_opt_class() appBundleIDsFromSharingURL:v4];
  v6 = v5;
  if (v5 && [v5 count])
  {
    v7 = [a1 updatedCollaborationMetadataWithAppBundleIDs:v6];
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
    [a1 setInitiatorHandle:v8];
  }

  if (v6 && [v6 length])
  {
    v9 = objc_alloc_init(MEMORY[0x1E696ADF8]);
    v10 = [v9 personNameComponentsFromString:v6];
    [a1 setInitiatorNameComponents:v10];
  }

  v11 = IMLogHandleForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = [a1 initiatorHandle];
    v13 = [a1 initiatorNameComponents];
    v14 = 138412546;
    v15 = v12;
    v16 = 2112;
    v17 = v13;
    _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Updated initiator name: %@, components: %@", &v14, 0x16u);
  }
}

- (uint64_t)checkSendReadiness
{
  v2 = [a1 collaborationIdentifier];
  v3 = v2 != 0;

  if (!v2)
  {
    v4 = IMLogHandleForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }
  }

  v5 = [a1 localIdentifier];

  if (!v5)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  v7 = [a1 title];
  if (!v7 || (v8 = v7, [a1 title], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "length"), v9, v8, !v10))
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  v12 = [a1 defaultShareOptions];

  if (!v12)
  {
    v13 = IMLogHandleForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  v14 = [a1 ckAppBundleIDs];
  if (!v14 || (v15 = v14, [a1 ckAppBundleIDs], v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "count"), v16, v15, !v17))
  {
    v18 = IMLogHandleForCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  v19 = [a1 initiatorHandle];
  if (!v19 || (v20 = v19, [a1 initiatorHandle], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "length"), v21, v20, !v22))
  {
    v23 = IMLogHandleForCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [_SWCollaborationMetadata(CKUtilities) checkSendReadiness];
    }

    v3 = 0;
  }

  v24 = [a1 initiatorNameComponents];

  if (v24)
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

  return [a1 _logSelf];
}

- (void)updatedCollaborationMetadataAppBundleIDsWithSharingURL:()CKUtilities .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "no bundle ids found for sharing URL: %@", &v2, 0xCu);
}

@end