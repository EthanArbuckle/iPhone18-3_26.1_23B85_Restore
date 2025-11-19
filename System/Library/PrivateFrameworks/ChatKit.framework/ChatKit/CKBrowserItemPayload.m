@interface CKBrowserItemPayload
+ (id)browserItemFromSticker:(id)a3;
+ (id)browserItemPayloadForCollaborationWithURL:(id)a3 collaborationType:(int64_t)a4;
+ (id)browserItemPayloadFromIMPluginPayload:(id)a3;
+ (id)createBrowserItemPayloadWithRichLinkMetadata:(id)a3;
+ (id)createBrowserItemPayloadWithURL:(id)a3 data:(id)a4;
- (BOOL)isEqualToPluginPayload:(id)a3;
- (BOOL)shouldSendAsMediaObject;
- (BOOL)shouldSendAsRichLink;
- (BOOL)shouldSendAsText;
- (BOOL)shouldStageAsEmbeddedTextAttachment;
- (BOOL)supportsSendLater;
- (CKBrowserItemPayload)initWithCoder:(id)a3;
- (id)__ck_urlFromTextBodyForRichLink;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mediaObjectFromPayloadWithKeyToTrasferGUIDMap:(id)a3;
- (id)transcoderUserInfo;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CKBrowserItemPayload

+ (id)browserItemPayloadFromIMPluginPayload:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKBrowserItemPayload);
  if (v4)
  {
    v5 = [v3 text];
    [(CKBrowserItemPayload *)v4 setText:v5];

    v6 = [v3 data];
    [(CKBrowserItemPayload *)v4 setData:v6];

    v7 = [v3 url];
    [(CKBrowserItemPayload *)v4 setUrl:v7];

    v8 = [v3 breadcrumbText];
    [(CKBrowserItemPayload *)v4 setBreadcrumbText:v8];

    v9 = [v3 statusText];
    [(CKBrowserItemPayload *)v4 setStatusText:v9];

    -[CKBrowserItemPayload setUpdate:](v4, "setUpdate:", [v3 isUpdate]);
    -[CKBrowserItemPayload setSticker:](v4, "setSticker:", [v3 isSticker]);
    -[CKBrowserItemPayload setCustomAcknowledgement:](v4, "setCustomAcknowledgement:", [v3 isCustomAcknowledgement]);
    -[CKBrowserItemPayload setShouldExpire:](v4, "setShouldExpire:", [v3 shouldExpire]);
    v10 = [v3 consumedSessionPayloads];
    [(CKBrowserItemPayload *)v4 setConsumedSessionPayloads:v10];

    v11 = [v3 messageGUID];
    [(CKBrowserItemPayload *)v4 setMessageGUID:v11];

    v12 = [v3 associatedMessageGUID];
    [(CKBrowserItemPayload *)v4 setAssociatedMessageGUID:v12];

    v13 = [v3 pluginSessionGUID];
    [(CKBrowserItemPayload *)v4 setPluginSessionGUID:v13];

    v14 = [v3 pluginBundleID];
    [(CKBrowserItemPayload *)v4 setPluginBundleID:v14];

    v15 = [v3 dataDetectedResult];
    [(CKBrowserItemPayload *)v4 setDataDetectedResult:v15];

    v16 = [v3 attachments];
    [(CKBrowserItemPayload *)v4 setAttachments:v16];

    v17 = [v3 datasource];
    [(CKBrowserItemPayload *)v4 setDatasource:v17];

    -[CKBrowserItemPayload setIsFromMe:](v4, "setIsFromMe:", [v3 isFromMe]);
    -[CKBrowserItemPayload setIsPlayed:](v4, "setIsPlayed:", [v3 isPlayed]);
    v18 = [v3 sender];
    [(CKBrowserItemPayload *)v4 setSender:v18];

    -[CKBrowserItemPayload setSendAsCopy:](v4, "setSendAsCopy:", [v3 sendAsCopy]);
    -[CKBrowserItemPayload setLiveEditableInEntryView:](v4, "setLiveEditableInEntryView:", [v3 liveEditableInEntryView]);
  }

  return v4;
}

+ (id)createBrowserItemPayloadWithURL:(id)a3 data:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(CKBrowserItemPayload);
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [v8 setURL:v5];
    v9 = objc_alloc_init(MEMORY[0x1E696ECD8]);
    [v9 setMetadata:v8];
    if (v6)
    {
      [(CKBrowserItemPayload *)v7 setData:v6];
    }

    else
    {
      v10 = [v9 dataRepresentationWithOutOfLineAttachments:0];
      [(CKBrowserItemPayload *)v7 setData:v10];
    }

    [(CKBrowserItemPayload *)v7 setUrl:v5];
    [(CKBrowserItemPayload *)v7 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  }

  return v7;
}

+ (id)createBrowserItemPayloadWithRichLinkMetadata:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CKBrowserItemPayload);
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ECD8]);
    [v5 setMetadata:v3];
    v6 = [v5 dataRepresentationWithOutOfLineAttachments:0];
    [(CKBrowserItemPayload *)v4 setData:v6];

    v7 = [v3 URL];
    [(CKBrowserItemPayload *)v4 setUrl:v7];

    [(CKBrowserItemPayload *)v4 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  }

  return v4;
}

+ (id)browserItemPayloadForCollaborationWithURL:(id)a3 collaborationType:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(CKBrowserItemPayload);
  v7 = [MEMORY[0x1E696AEC0] stringGUID];
  [(CKBrowserItemPayload *)v6 setMessageGUID:v7];

  [(CKBrowserItemPayload *)v6 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  [(CKBrowserItemPayload *)v6 setPayloadCollaborationType:a4];
  [(CKBrowserItemPayload *)v6 setUrl:v5];

  return v6;
}

- (BOOL)isEqualToPluginPayload:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = CKBrowserItemPayload;
  if (![(CKBrowserItemPayload *)&v22 isEqualToPluginPayload:v4])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CKBrowserItemPayload *)self videoComplementFileURL];
    v7 = [v5 videoComplementFileURL];
    v8 = CKIsEqual(v6, v7);

    if (v8 && (-[CKBrowserItemPayload fileURL](self, "fileURL"), v9 = objc_claimAutoreleasedReturnValue(), [v5 fileURL], v10 = objc_claimAutoreleasedReturnValue(), v11 = CKIsEqual(v9, v10), v10, v9, v11) && (-[CKBrowserItemPayload mediaObject](self, "mediaObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "transferGUID"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "mediaObject"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "transferGUID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = CKIsEqual(v13, v15), v15, v14, v13, v12, v16))
    {
      v17 = [(CKBrowserItemPayload *)self photoShelfViewController];
      v18 = [v5 photoShelfViewController];
      v19 = CKIsEqual(v17, v18);

      if (v19)
      {
        goto LABEL_7;
      }
    }

    else
    {
    }

LABEL_9:
    v20 = 0;
    goto LABEL_10;
  }

LABEL_7:
  v20 = 1;
LABEL_10:

  return v20;
}

- (CKBrowserItemPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v19.receiver = self;
  v19.super_class = CKBrowserItemPayload;
  v8 = [(CKBrowserItemPayload *)&v19 initWithCoder:v4 additionalAllowedClasses:v7];

  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_VIDEOCOMPLEMENFILETURL_KEY"];
    [(CKBrowserItemPayload *)v8 setVideoComplementFileURL:v9];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_FILEURL_KEY"];
    [(CKBrowserItemPayload *)v8 setFileURL:v10];

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_FILENAME_KEY"];
    [(CKBrowserItemPayload *)v8 setFilename:v11];

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeDictionaryWithKeysOfClasses:v12 objectsOfClasses:v15 forKey:@"CKPLUGIN_ATTRIBUTIONINFO"];
    [(CKBrowserItemPayload *)v8 setAttributionInfo:v16];

    -[CKBrowserItemPayload setRequiresValidation:](v8, "setRequiresValidation:", [v4 decodeBoolForKey:@"CKBROWSERITEM_REQUIRESVALIDATION_KEY"]);
    -[CKBrowserItemPayload setUseDirectSend:](v8, "setUseDirectSend:", [v4 decodeBoolForKey:@"CKBROWSERITEM_USEDIRECTSEND_KEY"]);
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_MEDIAOBJECT_KEY"];
    [(CKBrowserItemPayload *)v8 setMediaObject:v17];

    -[CKBrowserItemPayload setLiveEditableInEntryView:](v8, "setLiveEditableInEntryView:", [v4 decodeBoolForKey:@"CKBROWSERITEM_LIVEEDITABLE_KEY"]);
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CKBrowserItemPayload;
  [(CKBrowserItemPayload *)&v10 encodeWithCoder:v4];
  v5 = [(CKBrowserItemPayload *)self videoComplementFileURL];
  [v4 encodeObject:v5 forKey:@"CKBROWSERITEM_VIDEOCOMPLEMENFILETURL_KEY"];

  v6 = [(CKBrowserItemPayload *)self fileURL];
  [v4 encodeObject:v6 forKey:@"CKBROWSERITEM_FILEURL_KEY"];

  v7 = [(CKBrowserItemPayload *)self filename];
  [v4 encodeObject:v7 forKey:@"CKBROWSERITEM_FILENAME_KEY"];

  v8 = [(CKBrowserItemPayload *)self attributionInfo];
  [v4 encodeObject:v8 forKey:@"CKPLUGIN_ATTRIBUTIONINFO"];

  [v4 encodeBool:-[CKBrowserItemPayload requiresValidation](self forKey:{"requiresValidation"), @"CKBROWSERITEM_REQUIRESVALIDATION_KEY"}];
  [v4 encodeBool:-[CKBrowserItemPayload useDirectSend](self forKey:{"useDirectSend"), @"CKBROWSERITEM_USEDIRECTSEND_KEY"}];
  v9 = [(CKBrowserItemPayload *)self mediaObject];
  [v4 encodeObject:v9 forKey:@"CKBROWSERITEM_MEDIAOBJECT_KEY"];

  [v4 encodeBool:-[CKBrowserItemPayload liveEditableInEntryView](self forKey:{"liveEditableInEntryView"), @"CKBROWSERITEM_LIVEEDITABLE_KEY"}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v12.receiver = self;
  v12.super_class = CKBrowserItemPayload;
  v4 = [(CKBrowserItemPayload *)&v12 copyWithZone:a3];
  if (v4)
  {
    v5 = [(CKBrowserItemPayload *)self videoComplementFileURL];
    [v4 setVideoComplementFileURL:v5];

    v6 = [(CKBrowserItemPayload *)self fileURL];
    [v4 setFileURL:v6];

    v7 = [(CKBrowserItemPayload *)self filename];
    [v4 setFilename:v7];

    v8 = [(CKBrowserItemPayload *)self attributionInfo];
    [v4 setAttributionInfo:v8];

    v9 = [(CKBrowserItemPayload *)self mediaObject];
    [v4 setMediaObject:v9];

    v10 = [(CKBrowserItemPayload *)self photoShelfViewController];
    [v4 setPhotoShelfViewController:v10];

    [v4 setRequiresValidation:{-[CKBrowserItemPayload requiresValidation](self, "requiresValidation")}];
    [v4 setUseDirectSend:{-[CKBrowserItemPayload useDirectSend](self, "useDirectSend")}];
    [v4 setLiveEditableInEntryView:{-[CKBrowserItemPayload liveEditableInEntryView](self, "liveEditableInEntryView")}];
  }

  return v4;
}

- (BOOL)supportsSendLater
{
  if (![(CKBrowserItemPayload *)self supportsCollaboration]|| (v3 = [(CKBrowserItemPayload *)self sendAsCopy]) != 0)
  {
    v4 = [(CKBrowserItemPayload *)self photoShelfViewController];
    if (v4 || [(CKBrowserItemPayload *)self shouldSendAsMediaObject]|| [(CKBrowserItemPayload *)self shouldSendAsText]|| [(CKBrowserItemPayload *)self shouldSendAsRichLink])
    {

LABEL_8:
      LOBYTE(v3) = 1;
      return v3;
    }

    v5 = [(CKBrowserItemPayload *)self __ck_urlFromTextBodyForRichLink];

    if (v5)
    {
      goto LABEL_8;
    }

    v7.receiver = self;
    v7.super_class = CKBrowserItemPayload;
    LOBYTE(v3) = [(CKBrowserItemPayload *)&v7 supportsSendLater];
  }

  return v3;
}

- (BOOL)shouldSendAsMediaObject
{
  if (([(CKBrowserItemPayload *)self supportsCollaboration]& 1) == 0)
  {
    if (([(CKBrowserItemPayload *)self isSticker]& 1) != 0)
    {
      return 1;
    }

    v6 = [(CKBrowserItemPayload *)self attachments];
    v7 = [v6 count];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v2 = [(CKBrowserItemPayload *)self fileURL];
      if (v2)
      {
        v8 = 0;
      }

      else
      {
        v12 = [(CKBrowserItemPayload *)self url];
        if (!v12)
        {
          v5 = 0;
          goto LABEL_13;
        }

        v3 = v12;
        v8 = 1;
      }
    }

    v9 = [(CKBrowserItemPayload *)self text];
    if (v9)
    {

      v5 = 0;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v11 = [(CKBrowserItemPayload *)self data];
      v5 = v11 == 0;

      if ((v8 & 1) == 0)
      {
LABEL_12:
        if (v7)
        {
LABEL_14:

          return v5;
        }

LABEL_13:

        goto LABEL_14;
      }
    }

    goto LABEL_12;
  }

  return 0;
}

- (BOOL)shouldSendAsText
{
  v3 = [(CKBrowserItemPayload *)self text];
  if (v3)
  {
    v4 = [(CKBrowserItemPayload *)self fileURL];
    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = [(CKBrowserItemPayload *)self data];
      if (v6)
      {
        v5 = 0;
      }

      else
      {
        v7 = [(CKBrowserItemPayload *)self url];
        if (v7)
        {
          v5 = 0;
        }

        else
        {
          v8 = [(CKBrowserItemPayload *)self breadcrumbText];
          if (v8)
          {
            v5 = 0;
          }

          else
          {
            v9 = [(CKBrowserItemPayload *)self statusText];
            if (v9)
            {
              v5 = 0;
            }

            else
            {
              v10 = [(CKBrowserItemPayload *)self attachments];
              v5 = [v10 count] == 0;
            }
          }
        }
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldSendAsRichLink
{
  v3 = [(CKBrowserItemPayload *)self pluginBundleID];
  v4 = [v3 isEqualToString:*MEMORY[0x1E69A6A18]];

  v5 = [(CKBrowserItemPayload *)self url];
  v6 = v5;
  if (v4)
  {
    v7 = v5 != 0;
  }

  else if (v5)
  {
    v8 = [(CKBrowserItemPayload *)self data];
    v7 = [v8 length] == 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldStageAsEmbeddedTextAttachment
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v4 = [v3 isRichLinkImprovementsEnabled];

  if (v4)
  {
    v5 = [(CKBrowserItemPayload *)self pluginBundleID];
    v6 = [v5 isEqualToString:*MEMORY[0x1E69A6A18]];

    if (v6)
    {
      if ([(CKBrowserItemPayload *)self shouldSendAsText])
      {
        v7 = IMOSLoggingEnabled();
        if (v7)
        {
          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Payload should send as text. Do not stage plugin as text attachment.", &v14, 2u);
          }

LABEL_15:

LABEL_16:
          LOBYTE(v7) = 0;
        }
      }

      else
      {
        v9 = [(CKBrowserItemPayload *)self url];

        if (!v9)
        {
          v7 = IMOSLoggingEnabled();
          if (!v7)
          {
            return v7;
          }

          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Payload URL is nil. Do not stage plugin as text attachment.", &v14, 2u);
          }

          goto LABEL_15;
        }

        v10 = [(CKBrowserItemPayload *)self collaborationMetadata];

        if (v10)
        {
          v7 = IMOSLoggingEnabled();
          if (!v7)
          {
            return v7;
          }

          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Payload collaborationMetadata indicates collaboration context. Do not stage plugin as text attachment.", &v14, 2u);
          }

          goto LABEL_15;
        }

        if ([(CKBrowserItemPayload *)self payloadCollaborationType])
        {
          v7 = IMOSLoggingEnabled();
          if (!v7)
          {
            return v7;
          }

          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            v14 = 134217984;
            v15 = [(CKBrowserItemPayload *)self payloadCollaborationType];
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Payload payloadCollaborationType (%ld) is indicative of collaboration. Do not stage plugin as text attachment.", &v14, 0xCu);
          }

          goto LABEL_16;
        }

        v12 = [(CKBrowserItemPayload *)self cloudKitShare];

        if (v12)
        {
          v7 = IMOSLoggingEnabled();
          if (!v7)
          {
            return v7;
          }

          v8 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            LOWORD(v14) = 0;
            _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Payload cloudKitShare indicates that we should not stage as a text attachment.", &v14, 2u);
          }

          goto LABEL_15;
        }

        LOBYTE(v7) = 1;
      }
    }

    else
    {
      v7 = IMOSLoggingEnabled();
      if (v7)
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v14) = 0;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Payload is not a rich link. Do not stage plugin as text attachment.", &v14, 2u);
        }

        goto LABEL_15;
      }
    }
  }

  else
  {
    v7 = IMOSLoggingEnabled();
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Feature flag is disabled.", &v14, 2u);
      }

      goto LABEL_15;
    }
  }

  return v7;
}

- (id)transcoderUserInfo
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = [(CKBrowserItemPayload *)self userInfo];
  v29 = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v3 = [v2 allKeys];
  v4 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v4)
  {
    v5 = *v34;
    v27 = *MEMORY[0x1E69A6F68];
    v28 = *MEMORY[0x1E69A6F90];
    v6 = *MEMORY[0x1E69A6F88];
    v7 = *MEMORY[0x1E69A6F58];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v34 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v33 + 1) + 8 * i);
        v10 = v7;
        if (([v9 isEqualToString:@"CKPhotoBrowserItemAVTranscodeOptionAssetURI"] & 1) == 0)
        {
          v10 = v6;
          if (([v9 isEqualToString:@"CKPhotoBrowserItemAVTranscodeOptionMetadataDictionary"] & 1) == 0)
          {
            v10 = v28;
            if (([v9 isEqualToString:@"CKPhotoBrowserItemAVTranscodeOptionStartTime"] & 1) == 0)
            {
              v10 = v27;
              if (![v9 isEqualToString:@"CKPhotoBrowserItemAVTranscodeOptionEndTime"])
              {
                continue;
              }
            }
          }
        }

        v11 = [v2 objectForKey:v9];
        [v29 setObject:v11 forKey:v10];
      }

      v4 = [v3 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v4);
  }

  v12 = [(CKBrowserItemPayload *)self fileURL];

  if (v12)
  {
    v13 = [(CKBrowserItemPayload *)self fileURL];
    v14 = [v13 lastPathComponent];
    v15 = IMUTITypeForFilename();

    v16 = +[CKMediaObjectManager sharedInstance];
    LODWORD(v14) = [objc_msgSend(v16 classForUTIType:{v15), "isSubclassOfClass:", objc_opt_class()}];

    if (v14)
    {
      v17 = [(CKBrowserItemPayload *)self fileURL];
      v18 = CKAVURLAssetForURL(v17);

      v31 = 0;
      v32 = 0;
      v19 = [MEMORY[0x1E69C0928] readMetadataType:4 fromAVAsset:v18 value:&v32 error:&v31];
      v20 = v32;
      v21 = v31;
      if (v20)
      {
        v22 = v19;
      }

      else
      {
        v22 = 0;
      }

      if (v22 == 1 && (v23 = [v20 intValue]) != 0 && v23 != 3)
      {
        [v29 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A6F78]];
      }

      else if (IMIsHEVCWithAlphaVideo())
      {
        [v29 setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A6F70]];
      }

      else if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "Failed to load video playback style", buf, 2u);
        }
      }
    }
  }

  return v29;
}

- (id)mediaObjectFromPayloadWithKeyToTrasferGUIDMap:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  mediaObject = self->_mediaObject;
  if (mediaObject)
  {
    v6 = mediaObject;
  }

  else
  {
    v7 = [(CKBrowserItemPayload *)self transcoderUserInfo];
    v8 = [(CKBrowserItemPayload *)self fileURL];
    if (IMIsScreenshotURL())
    {
      v9 = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
    }

    else
    {
      v9 = 0;
    }

    v10 = +[CKMediaObjectManager sharedInstance];
    v11 = [(CKBrowserItemPayload *)self fileURL];
    v12 = [(CKBrowserItemPayload *)self filename];
    v13 = [(CKBrowserItemPayload *)self attributionInfo];
    BYTE1(v32) = v9;
    LOBYTE(v32) = [(CKBrowserItemPayload *)self shouldHideAttachments];
    v6 = [v10 mediaObjectWithFileURL:v11 filename:v12 fileIsResolved:0 transcoderUserInfo:v7 attributionInfo:v13 adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:v32 isScreenshot:?];

    v14 = [(CKMediaObject *)v6 previewCacheKeyWithOrientation:1];
    v15 = [(CKBrowserItemPayload *)self fileURL];
    v16 = [v4 objectForKey:v15];

    v17 = 0;
    if (([v16 isEqualToString:v14] & 1) == 0 && v16)
    {
      v18 = +[CKPreviewDispatchCache transcriptPreviewCache];
      v17 = [v18 cachedPreviewForKey:v16];
      if (v17)
      {
        [v18 setCachedPreview:v17 key:v14];
        [v18 setCachedPreview:0 key:v16];
      }
    }

    if (v6)
    {
      v19 = [(CKBrowserItemPayload *)self videoComplementFileURL];

      if (v19)
      {
        v20 = [(CKBrowserItemPayload *)self videoComplementFileURL];
        v21 = [(CKMediaObject *)v6 fileURL];
        v22 = CKGetTmpPathForAppendedVideoURL(v20, v21);

        v23 = [v22 URLByResolvingSymlinksInPath];

        v24 = [(CKMediaObject *)v6 transferGUID];
        CKLinkAndCreateAppendedVideoTransfer(v23, v20, v24);
      }

      v25 = [(CKBrowserItemPayload *)self generativePlaygroundRecipeData];

      if (v25)
      {
        v26 = [(CKBrowserItemPayload *)self generativePlaygroundRecipeData];
        [(CKMediaObject *)v6 setGenerativePlaygroundRecipeData:v26];
      }

      [(CKBrowserItemPayload *)self setMediaObject:v6];
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = [(CKBrowserItemPayload *)self fileURL];
        *buf = 138412290;
        v34 = v28;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "CKChatInputController. Could not create media object from file: %@", buf, 0xCu);
      }
    }

    v29 = [(CKMediaObject *)v6 previewFilenameExtension];
    v30 = [(CKMediaObject *)v6 previewCachesFileURLWithOrientation:1 extension:v29 generateIntermediaries:0 transferGUID:v14];

    [(CKMediaObject *)v6 savePreview:v17 toURL:v30 forOrientation:1];
  }

  return v6;
}

- (id)__ck_urlFromTextBodyForRichLink
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__79;
  v21 = __Block_byref_object_dispose__79;
  v22 = 0;
  if ([(CKBrowserItemPayload *)self shouldSendAsText])
  {
    v3 = [(CKBrowserItemPayload *)self text];
    v4 = [v3 mutableCopy];

    if ([MEMORY[0x1E69A8020] supportsDataDetectors] && (-[CKBrowserItemPayload text](self, "text"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "string"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E696AEC0], "stringGUID"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x1E695DF00], "date"), v8 = objc_claimAutoreleasedReturnValue(), v9 = IMDDScanAttributedStringWithContext(), v8, v7, v6, v5, (v9 & 1) != 0))
    {
      v10 = [v4 length];
      v11 = *MEMORY[0x1E69A5FB0];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79__CKBrowserItemPayload_CKCompositionAdditions____ck_urlFromTextBodyForRichLink__block_invoke;
      v14[3] = &unk_1E72F8318;
      v15 = v4;
      v16 = &v17;
      [v15 enumerateAttribute:v11 inRange:0 options:v10 usingBlock:{0, v14}];
      v12 = v18[5];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __79__CKBrowserItemPayload_CKCompositionAdditions____ck_urlFromTextBodyForRichLink__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v11 = a2;
  if (v11)
  {
    if (a4 == [*(a1 + 32) length])
    {
      v9 = [MEMORY[0x1E69A5AD0] sharedInstance];
      v10 = [v9 dataSourceClassForBundleID:*MEMORY[0x1E69A6A18]];

      if ([v10 supportsURL:v11])
      {
        objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      }
    }
  }

  *a5 = 1;
}

+ (id)browserItemFromSticker:(id)a3
{
  v3 = a3;
  v4 = +[CKMediaObjectManager sharedInstance];
  v5 = [v4 mediaObjectWithSticker:v3 stickerUserInfo:0];

  if (v5)
  {
    v6 = objc_alloc_init(CKBrowserItemPayload);
    v7 = [v3 stickerPackGUID];
    [(CKBrowserItemPayload *)v6 setPluginBundleID:v7];

    [(CKBrowserItemPayload *)v6 setMediaObject:v5];
    [(CKBrowserItemPayload *)v6 setSticker:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end