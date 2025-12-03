@interface CKPluginDisplayContainer
+ (id)pluginDisplayContainerWithPluginPayload:(id)payload composeImage:(id)image;
+ (id)unarchiveFromData:(id)data error:(id *)error;
- (CKPluginDisplayContainer)initWithCoder:(id)coder;
- (id)pasteboardItemProvider;
- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range;
- (id)urlForPayload:(id)payload;
- (void)_registerItemProvider:(id)provider forURL:(id)l withPluginPayload:(id)payload;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKPluginDisplayContainer

+ (id)pluginDisplayContainerWithPluginPayload:(id)payload composeImage:(id)image
{
  payloadCopy = payload;
  imageCopy = image;
  if (payloadCopy)
  {
    v7 = objc_alloc_init(CKPluginDisplayContainer);
    [(CKPluginDisplayContainer *)v7 setPluginPayload:payloadCopy];
    [(CKPluginDisplayContainer *)v7 setComposeImage:imageCopy];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "can't create a CKPluginDisplayContainer with a nil payload", v10, 2u);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (id)rtfDocumentItemsWithFormatString:(id)string selectedTextRange:(_NSRange)range
{
  v31 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  pluginPayload = [(CKPluginDisplayContainer *)self pluginPayload];
  composeImage = [(CKPluginDisplayContainer *)self composeImage];
  if (pluginPayload && ([pluginPayload pluginBundleID], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", *MEMORY[0x1E69A6A18]), v9, v10))
  {
    v11 = [pluginPayload url];

    if (v11)
    {
      v12 = [pluginPayload url];
      absoluteString = [v12 absoluteString];

      v14 = objc_alloc(MEMORY[0x1E696AAB0]);
      v15 = v14;
      if (stringCopy)
      {
        v16 = [MEMORY[0x1E696AEC0] stringWithValidatedFormat:stringCopy validFormatSpecifiers:@"%@" error:0, absoluteString];
        v17 = [v15 initWithString:v16];
        [array addObject:v17];
      }

      else
      {
        v16 = [v14 initWithString:absoluteString];
        [array addObject:v16];
      }
    }
  }

  else if (composeImage)
  {
    v18 = objc_alloc(MEMORY[0x1E69DB7F0]);
    v19 = UIImagePNGRepresentation(composeImage);
    v20 = [v18 initWithData:v19 ofType:*MEMORY[0x1E6963860]];

    v21 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v20];
    v22 = [v21 mutableCopy];

    if (pluginPayload)
    {
      v28 = 0;
      v23 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v28];
      v24 = v28;
      if (v23)
      {
        [v22 addAttribute:@"com.apple.MobileSMS.PluginPayload" value:v23 range:{0, objc_msgSend(v22, "length")}];
      }

      else if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          localizedDescription = [v24 localizedDescription];
          *buf = 138412290;
          v30 = localizedDescription;
          _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Failed to archive plugin display container on copy with error: %@", buf, 0xCu);
        }
      }
    }

    [array addObject:v22];
  }

  return array;
}

- (id)urlForPayload:(id)payload
{
  payloadCopy = payload;
  v4 = [objc_alloc(MEMORY[0x1E69A5AC8]) initWithPluginPayload:payloadCopy];
  if ([MEMORY[0x1E69A5AC8] isPayloadServiceManatee:payloadCopy])
  {
    v5 = MEMORY[0x1E69A5AC8];
    v6 = [payloadCopy url];
    v7 = MEMORY[0x1E69A5AC8];
    chat = [v4 chat];
    v9 = [v7 lastAddressedHandleIDFromChat:chat];
    v10 = [v5 URLForDugongShareURL:v6 handle:v9 payload:payloadCopy];
  }

  else
  {
    v10 = [payloadCopy url];
  }

  return v10;
}

- (void)_registerItemProvider:(id)provider forURL:(id)l withPluginPayload:(id)payload
{
  providerCopy = provider;
  lCopy = l;
  payloadCopy = payload;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRichLinkImprovementsEnabled = [mEMORY[0x1E69A8070] isRichLinkImprovementsEnabled];

  if (payloadCopy)
  {
    if (isRichLinkImprovementsEnabled)
    {
      data = [payloadCopy data];

      if (data)
      {
        v13 = MEMORY[0x1E696ECD8];
        data2 = [payloadCopy data];
        attachments = [payloadCopy attachments];
        v16 = [v13 linkWithDataRepresentation:data2 attachments:attachments];

        metadata = [v16 metadata];
        v18 = *MEMORY[0x1E696EC00];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __75__CKPluginDisplayContainer__registerItemProvider_forURL_withPluginPayload___block_invoke;
        v28[3] = &unk_1E72EC878;
        v29 = metadata;
        v19 = metadata;
        [providerCopy registerDataRepresentationForTypeIdentifier:v18 visibility:0 loadHandler:v28];
      }
    }
  }

  identifier = [*MEMORY[0x1E6983030] identifier];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __75__CKPluginDisplayContainer__registerItemProvider_forURL_withPluginPayload___block_invoke_2;
  v26[3] = &unk_1E72EC878;
  v21 = lCopy;
  v27 = v21;
  [providerCopy registerDataRepresentationForTypeIdentifier:identifier visibility:0 loadHandler:v26];

  identifier2 = [*MEMORY[0x1E6983060] identifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__CKPluginDisplayContainer__registerItemProvider_forURL_withPluginPayload___block_invoke_3;
  v24[3] = &unk_1E72EC878;
  v25 = v21;
  v23 = v21;
  [providerCopy registerDataRepresentationForTypeIdentifier:identifier2 visibility:0 loadHandler:v24];
}

uint64_t __75__CKPluginDisplayContainer__registerItemProvider_forURL_withPluginPayload___block_invoke(uint64_t a1, void (**a2)(void, void, void))
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 dataRepresentation];
  (a2)[2](v4, v5, 0);

  return 0;
}

uint64_t __75__CKPluginDisplayContainer__registerItemProvider_forURL_withPluginPayload___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 dataRepresentation];
  v3[2](v3, v4, 0);

  return 0;
}

uint64_t __75__CKPluginDisplayContainer__registerItemProvider_forURL_withPluginPayload___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 absoluteString];
  v5 = [v4 dataUsingEncoding:4];
  v3[2](v3, v5, 0);

  return 0;
}

- (id)pasteboardItemProvider
{
  v31 = *MEMORY[0x1E69E9840];
  pluginPayload = [(CKPluginDisplayContainer *)self pluginPayload];
  v4 = pluginPayload;
  if (!pluginPayload)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "plugin payload is unexpectedly nil, failed to create item provider", buf, 2u);
      }
    }

    v6 = 0;
    goto LABEL_16;
  }

  pluginBundleID = [pluginPayload pluginBundleID];
  v6 = objc_alloc_init(MEMORY[0x1E696ACA0]);
  if (![pluginBundleID isEqualToString:*MEMORY[0x1E69A6A18]])
  {
    composeImage = [(CKPluginDisplayContainer *)self composeImage];
    p_super = &composeImage->super;
    if (composeImage)
    {
      v11 = UIImagePNGRepresentation(composeImage);
      if (v11)
      {
        v12 = CKFrameworkBundle();
        v13 = [v12 localizedStringForKey:@"DROPPED_PLUGIN_PREVIEW_FILE_NAME" value:&stru_1F04268F8 table:@"ChatKit"];
        [v6 setSuggestedName:v13];

        v14 = *MEMORY[0x1E6963860];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __50__CKPluginDisplayContainer_pasteboardItemProvider__block_invoke;
        v27[3] = &unk_1E72EC878;
        v28 = v11;
        v15 = v11;
        [v6 registerDataRepresentationForTypeIdentifier:v14 visibility:0 loadHandler:v27];

        v26 = 0;
        v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v26];
        v17 = v26;
        v18 = v17;
        if (v16 && !v17)
        {
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __50__CKPluginDisplayContainer_pasteboardItemProvider__block_invoke_60;
          v24[3] = &unk_1E72EC878;
          v25 = v16;
          v19 = v16;
          [v6 registerDataRepresentationForTypeIdentifier:@"com.apple.MobileSMS.PluginPayload" visibility:0 loadHandler:v24];

          goto LABEL_15;
        }

        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v30 = v18;
            _os_log_impl(&dword_19020E000, v22, OS_LOG_TYPE_INFO, "Failed to archive the plugin display container with error: %@", buf, 0xCu);
          }
        }

        goto LABEL_35;
      }

      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Failed to create snapshot image NSData", buf, 2u);
        }

LABEL_28:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "plugin snapshot image is unexpectedly nil, failed to create item provider", buf, 2u);
      }

      goto LABEL_28;
    }

LABEL_20:

    goto LABEL_35;
  }

  v7 = [(CKPluginDisplayContainer *)self urlForPayload:v4];
  if (v7)
  {
    [(CKPluginDisplayContainer *)self _registerItemProvider:v6 forURL:v7 withPluginPayload:v4];

LABEL_15:
LABEL_16:
    v6 = v6;
    v20 = v6;
    goto LABEL_36;
  }

  if (IMOSLoggingEnabled())
  {
    p_super = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, p_super, OS_LOG_TYPE_INFO, "Unable to determine URL from rich links plugin", buf, 2u);
    }

    goto LABEL_20;
  }

LABEL_35:

  v20 = 0;
LABEL_36:

  return v20;
}

+ (id)unarchiveFromData:(id)data error:(id *)error
{
  v25 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    if (unarchiveFromData_error__onceToken != -1)
    {
      +[CKPluginDisplayContainer unarchiveFromData:error:];
    }

    v22 = 0;
    v6 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:dataCopy error:&v22];
    v7 = v22;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v15 = [v6 decodeObjectOfClasses:unarchiveFromData_error__allowlistedClasses forKey:*MEMORY[0x1E696A508]];
      v13 = v15;
      if (v15)
      {
        v16 = v15;
        v9 = 0;
      }

      else
      {
        error = [v6 error];
        v9 = error;
        if (error)
        {
          v18 = error;
          *error = v9;
        }

        if (IMOSLoggingEnabled())
        {
          v19 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            localizedDescription = [v9 localizedDescription];
            *buf = 138412290;
            v24 = localizedDescription;
            _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "failed to unarchive plugin display controller: failed to decode object with error: %@", buf, 0xCu);
          }
        }
      }
    }

    else
    {
      v9 = v7;
      if (error)
      {
        v10 = v7;
        *error = v9;
      }

      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          localizedDescription2 = [v9 localizedDescription];
          *buf = 138412290;
          v24 = localizedDescription2;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "failed to unarchive plugin display controller: failed to create unarchiver %@", buf, 0xCu);
        }
      }

      v13 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "failed to unarchive plugin display controller: data was nil", buf, 2u);
      }
    }

    v13 = 0;
  }

  return v13;
}

void __52__CKPluginDisplayContainer_unarchiveFromData_error___block_invoke()
{
  v0 = IMExtensionPayloadUnarchivingClasses();
  v1 = [v0 mutableCopy];

  [v1 addObject:objc_opt_class()];
  v2 = unarchiveFromData_error__allowlistedClasses;
  unarchiveFromData_error__allowlistedClasses = v1;
}

- (CKPluginDisplayContainer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CKPluginDisplayContainer;
  v5 = [(CKPluginDisplayContainer *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKPLUGINDISPLAYCONTAINER_PLUGINGPAYLOAD_KEY"];
    [(CKPluginDisplayContainer *)v5 setPluginPayload:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKPLUGINDISPLAYCONTAINER_COMPOSEIMAGE_KEY"];
    [(CKPluginDisplayContainer *)v5 setComposeImage:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  pluginPayload = [(CKPluginDisplayContainer *)self pluginPayload];
  [coderCopy encodeObject:pluginPayload forKey:@"CKPLUGINDISPLAYCONTAINER_PLUGINGPAYLOAD_KEY"];

  composeImage = [(CKPluginDisplayContainer *)self composeImage];
  [coderCopy encodeObject:composeImage forKey:@"CKPLUGINDISPLAYCONTAINER_COMPOSEIMAGE_KEY"];
}

@end