@interface CKBrowserItemPayload
+ (id)browserItemFromSticker:(id)sticker;
+ (id)browserItemPayloadForCollaborationWithURL:(id)l collaborationType:(int64_t)type;
+ (id)browserItemPayloadFromIMPluginPayload:(id)payload;
+ (id)createBrowserItemPayloadWithRichLinkMetadata:(id)metadata;
+ (id)createBrowserItemPayloadWithURL:(id)l data:(id)data;
- (BOOL)isEqualToPluginPayload:(id)payload;
- (BOOL)shouldSendAsMediaObject;
- (BOOL)shouldSendAsRichLink;
- (BOOL)shouldSendAsText;
- (BOOL)shouldStageAsEmbeddedTextAttachment;
- (BOOL)supportsSendLater;
- (CKBrowserItemPayload)initWithCoder:(id)coder;
- (id)__ck_urlFromTextBodyForRichLink;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mediaObjectFromPayloadWithKeyToTrasferGUIDMap:(id)map;
- (id)transcoderUserInfo;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CKBrowserItemPayload

+ (id)browserItemPayloadFromIMPluginPayload:(id)payload
{
  payloadCopy = payload;
  v4 = objc_alloc_init(CKBrowserItemPayload);
  if (v4)
  {
    text = [payloadCopy text];
    [(CKBrowserItemPayload *)v4 setText:text];

    data = [payloadCopy data];
    [(CKBrowserItemPayload *)v4 setData:data];

    v7 = [payloadCopy url];
    [(CKBrowserItemPayload *)v4 setUrl:v7];

    breadcrumbText = [payloadCopy breadcrumbText];
    [(CKBrowserItemPayload *)v4 setBreadcrumbText:breadcrumbText];

    statusText = [payloadCopy statusText];
    [(CKBrowserItemPayload *)v4 setStatusText:statusText];

    -[CKBrowserItemPayload setUpdate:](v4, "setUpdate:", [payloadCopy isUpdate]);
    -[CKBrowserItemPayload setSticker:](v4, "setSticker:", [payloadCopy isSticker]);
    -[CKBrowserItemPayload setCustomAcknowledgement:](v4, "setCustomAcknowledgement:", [payloadCopy isCustomAcknowledgement]);
    -[CKBrowserItemPayload setShouldExpire:](v4, "setShouldExpire:", [payloadCopy shouldExpire]);
    consumedSessionPayloads = [payloadCopy consumedSessionPayloads];
    [(CKBrowserItemPayload *)v4 setConsumedSessionPayloads:consumedSessionPayloads];

    messageGUID = [payloadCopy messageGUID];
    [(CKBrowserItemPayload *)v4 setMessageGUID:messageGUID];

    associatedMessageGUID = [payloadCopy associatedMessageGUID];
    [(CKBrowserItemPayload *)v4 setAssociatedMessageGUID:associatedMessageGUID];

    pluginSessionGUID = [payloadCopy pluginSessionGUID];
    [(CKBrowserItemPayload *)v4 setPluginSessionGUID:pluginSessionGUID];

    pluginBundleID = [payloadCopy pluginBundleID];
    [(CKBrowserItemPayload *)v4 setPluginBundleID:pluginBundleID];

    dataDetectedResult = [payloadCopy dataDetectedResult];
    [(CKBrowserItemPayload *)v4 setDataDetectedResult:dataDetectedResult];

    attachments = [payloadCopy attachments];
    [(CKBrowserItemPayload *)v4 setAttachments:attachments];

    datasource = [payloadCopy datasource];
    [(CKBrowserItemPayload *)v4 setDatasource:datasource];

    -[CKBrowserItemPayload setIsFromMe:](v4, "setIsFromMe:", [payloadCopy isFromMe]);
    -[CKBrowserItemPayload setIsPlayed:](v4, "setIsPlayed:", [payloadCopy isPlayed]);
    sender = [payloadCopy sender];
    [(CKBrowserItemPayload *)v4 setSender:sender];

    -[CKBrowserItemPayload setSendAsCopy:](v4, "setSendAsCopy:", [payloadCopy sendAsCopy]);
    -[CKBrowserItemPayload setLiveEditableInEntryView:](v4, "setLiveEditableInEntryView:", [payloadCopy liveEditableInEntryView]);
  }

  return v4;
}

+ (id)createBrowserItemPayloadWithURL:(id)l data:(id)data
{
  lCopy = l;
  dataCopy = data;
  v7 = objc_alloc_init(CKBrowserItemPayload);
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x1E696ECA0]);
    [v8 setURL:lCopy];
    v9 = objc_alloc_init(MEMORY[0x1E696ECD8]);
    [v9 setMetadata:v8];
    if (dataCopy)
    {
      [(CKBrowserItemPayload *)v7 setData:dataCopy];
    }

    else
    {
      v10 = [v9 dataRepresentationWithOutOfLineAttachments:0];
      [(CKBrowserItemPayload *)v7 setData:v10];
    }

    [(CKBrowserItemPayload *)v7 setUrl:lCopy];
    [(CKBrowserItemPayload *)v7 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  }

  return v7;
}

+ (id)createBrowserItemPayloadWithRichLinkMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = objc_alloc_init(CKBrowserItemPayload);
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E696ECD8]);
    [v5 setMetadata:metadataCopy];
    v6 = [v5 dataRepresentationWithOutOfLineAttachments:0];
    [(CKBrowserItemPayload *)v4 setData:v6];

    v7 = [metadataCopy URL];
    [(CKBrowserItemPayload *)v4 setUrl:v7];

    [(CKBrowserItemPayload *)v4 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  }

  return v4;
}

+ (id)browserItemPayloadForCollaborationWithURL:(id)l collaborationType:(int64_t)type
{
  lCopy = l;
  v6 = objc_alloc_init(CKBrowserItemPayload);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  [(CKBrowserItemPayload *)v6 setMessageGUID:stringGUID];

  [(CKBrowserItemPayload *)v6 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  [(CKBrowserItemPayload *)v6 setPayloadCollaborationType:type];
  [(CKBrowserItemPayload *)v6 setUrl:lCopy];

  return v6;
}

- (BOOL)isEqualToPluginPayload:(id)payload
{
  payloadCopy = payload;
  v22.receiver = self;
  v22.super_class = CKBrowserItemPayload;
  if (![(CKBrowserItemPayload *)&v22 isEqualToPluginPayload:payloadCopy])
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = payloadCopy;
    videoComplementFileURL = [(CKBrowserItemPayload *)self videoComplementFileURL];
    videoComplementFileURL2 = [v5 videoComplementFileURL];
    v8 = CKIsEqual(videoComplementFileURL, videoComplementFileURL2);

    if (v8 && (-[CKBrowserItemPayload fileURL](self, "fileURL"), v9 = objc_claimAutoreleasedReturnValue(), [v5 fileURL], v10 = objc_claimAutoreleasedReturnValue(), v11 = CKIsEqual(v9, v10), v10, v9, v11) && (-[CKBrowserItemPayload mediaObject](self, "mediaObject"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "transferGUID"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "mediaObject"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v14, "transferGUID"), v15 = objc_claimAutoreleasedReturnValue(), v16 = CKIsEqual(v13, v15), v15, v14, v13, v12, v16))
    {
      photoShelfViewController = [(CKBrowserItemPayload *)self photoShelfViewController];
      photoShelfViewController2 = [v5 photoShelfViewController];
      v19 = CKIsEqual(photoShelfViewController, photoShelfViewController2);

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

- (CKBrowserItemPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
  v19.receiver = self;
  v19.super_class = CKBrowserItemPayload;
  v8 = [(CKBrowserItemPayload *)&v19 initWithCoder:coderCopy additionalAllowedClasses:v7];

  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_VIDEOCOMPLEMENFILETURL_KEY"];
    [(CKBrowserItemPayload *)v8 setVideoComplementFileURL:v9];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_FILEURL_KEY"];
    [(CKBrowserItemPayload *)v8 setFileURL:v10];

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_FILENAME_KEY"];
    [(CKBrowserItemPayload *)v8 setFilename:v11];

    v12 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeDictionaryWithKeysOfClasses:v12 objectsOfClasses:v15 forKey:@"CKPLUGIN_ATTRIBUTIONINFO"];
    [(CKBrowserItemPayload *)v8 setAttributionInfo:v16];

    -[CKBrowserItemPayload setRequiresValidation:](v8, "setRequiresValidation:", [coderCopy decodeBoolForKey:@"CKBROWSERITEM_REQUIRESVALIDATION_KEY"]);
    -[CKBrowserItemPayload setUseDirectSend:](v8, "setUseDirectSend:", [coderCopy decodeBoolForKey:@"CKBROWSERITEM_USEDIRECTSEND_KEY"]);
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CKBROWSERITEM_MEDIAOBJECT_KEY"];
    [(CKBrowserItemPayload *)v8 setMediaObject:v17];

    -[CKBrowserItemPayload setLiveEditableInEntryView:](v8, "setLiveEditableInEntryView:", [coderCopy decodeBoolForKey:@"CKBROWSERITEM_LIVEEDITABLE_KEY"]);
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v11 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CKBrowserItemPayload;
  [(CKBrowserItemPayload *)&v10 encodeWithCoder:coderCopy];
  videoComplementFileURL = [(CKBrowserItemPayload *)self videoComplementFileURL];
  [coderCopy encodeObject:videoComplementFileURL forKey:@"CKBROWSERITEM_VIDEOCOMPLEMENFILETURL_KEY"];

  fileURL = [(CKBrowserItemPayload *)self fileURL];
  [coderCopy encodeObject:fileURL forKey:@"CKBROWSERITEM_FILEURL_KEY"];

  filename = [(CKBrowserItemPayload *)self filename];
  [coderCopy encodeObject:filename forKey:@"CKBROWSERITEM_FILENAME_KEY"];

  attributionInfo = [(CKBrowserItemPayload *)self attributionInfo];
  [coderCopy encodeObject:attributionInfo forKey:@"CKPLUGIN_ATTRIBUTIONINFO"];

  [coderCopy encodeBool:-[CKBrowserItemPayload requiresValidation](self forKey:{"requiresValidation"), @"CKBROWSERITEM_REQUIRESVALIDATION_KEY"}];
  [coderCopy encodeBool:-[CKBrowserItemPayload useDirectSend](self forKey:{"useDirectSend"), @"CKBROWSERITEM_USEDIRECTSEND_KEY"}];
  mediaObject = [(CKBrowserItemPayload *)self mediaObject];
  [coderCopy encodeObject:mediaObject forKey:@"CKBROWSERITEM_MEDIAOBJECT_KEY"];

  [coderCopy encodeBool:-[CKBrowserItemPayload liveEditableInEntryView](self forKey:{"liveEditableInEntryView"), @"CKBROWSERITEM_LIVEEDITABLE_KEY"}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v12.receiver = self;
  v12.super_class = CKBrowserItemPayload;
  v4 = [(CKBrowserItemPayload *)&v12 copyWithZone:zone];
  if (v4)
  {
    videoComplementFileURL = [(CKBrowserItemPayload *)self videoComplementFileURL];
    [v4 setVideoComplementFileURL:videoComplementFileURL];

    fileURL = [(CKBrowserItemPayload *)self fileURL];
    [v4 setFileURL:fileURL];

    filename = [(CKBrowserItemPayload *)self filename];
    [v4 setFilename:filename];

    attributionInfo = [(CKBrowserItemPayload *)self attributionInfo];
    [v4 setAttributionInfo:attributionInfo];

    mediaObject = [(CKBrowserItemPayload *)self mediaObject];
    [v4 setMediaObject:mediaObject];

    photoShelfViewController = [(CKBrowserItemPayload *)self photoShelfViewController];
    [v4 setPhotoShelfViewController:photoShelfViewController];

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
    photoShelfViewController = [(CKBrowserItemPayload *)self photoShelfViewController];
    if (photoShelfViewController || [(CKBrowserItemPayload *)self shouldSendAsMediaObject]|| [(CKBrowserItemPayload *)self shouldSendAsText]|| [(CKBrowserItemPayload *)self shouldSendAsRichLink])
    {

LABEL_8:
      LOBYTE(v3) = 1;
      return v3;
    }

    __ck_urlFromTextBodyForRichLink = [(CKBrowserItemPayload *)self __ck_urlFromTextBodyForRichLink];

    if (__ck_urlFromTextBodyForRichLink)
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

    attachments = [(CKBrowserItemPayload *)self attachments];
    v7 = [attachments count];
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      fileURL = [(CKBrowserItemPayload *)self fileURL];
      if (fileURL)
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

    text = [(CKBrowserItemPayload *)self text];
    if (text)
    {

      v5 = 0;
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      data = [(CKBrowserItemPayload *)self data];
      v5 = data == 0;

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
  text = [(CKBrowserItemPayload *)self text];
  if (text)
  {
    fileURL = [(CKBrowserItemPayload *)self fileURL];
    if (fileURL)
    {
      v5 = 0;
    }

    else
    {
      data = [(CKBrowserItemPayload *)self data];
      if (data)
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
          breadcrumbText = [(CKBrowserItemPayload *)self breadcrumbText];
          if (breadcrumbText)
          {
            v5 = 0;
          }

          else
          {
            statusText = [(CKBrowserItemPayload *)self statusText];
            if (statusText)
            {
              v5 = 0;
            }

            else
            {
              attachments = [(CKBrowserItemPayload *)self attachments];
              v5 = [attachments count] == 0;
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
  pluginBundleID = [(CKBrowserItemPayload *)self pluginBundleID];
  v4 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A18]];

  v5 = [(CKBrowserItemPayload *)self url];
  v6 = v5;
  if (v4)
  {
    v7 = v5 != 0;
  }

  else if (v5)
  {
    data = [(CKBrowserItemPayload *)self data];
    v7 = [data length] == 0;
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
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isRichLinkImprovementsEnabled = [mEMORY[0x1E69A8070] isRichLinkImprovementsEnabled];

  if (isRichLinkImprovementsEnabled)
  {
    pluginBundleID = [(CKBrowserItemPayload *)self pluginBundleID];
    v6 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A18]];

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

        collaborationMetadata = [(CKBrowserItemPayload *)self collaborationMetadata];

        if (collaborationMetadata)
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
            payloadCollaborationType = [(CKBrowserItemPayload *)self payloadCollaborationType];
            _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Payload payloadCollaborationType (%ld) is indicative of collaboration. Do not stage plugin as text attachment.", &v14, 0xCu);
          }

          goto LABEL_16;
        }

        cloudKitShare = [(CKBrowserItemPayload *)self cloudKitShare];

        if (cloudKitShare)
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
  userInfo = [(CKBrowserItemPayload *)self userInfo];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  allKeys = [userInfo allKeys];
  v4 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
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
          objc_enumerationMutation(allKeys);
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

        v11 = [userInfo objectForKey:v9];
        [dictionary setObject:v11 forKey:v10];
      }

      v4 = [allKeys countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v4);
  }

  fileURL = [(CKBrowserItemPayload *)self fileURL];

  if (fileURL)
  {
    fileURL2 = [(CKBrowserItemPayload *)self fileURL];
    lastPathComponent = [fileURL2 lastPathComponent];
    v15 = IMUTITypeForFilename();

    v16 = +[CKMediaObjectManager sharedInstance];
    LODWORD(lastPathComponent) = [objc_msgSend(v16 classForUTIType:{v15), "isSubclassOfClass:", objc_opt_class()}];

    if (lastPathComponent)
    {
      fileURL3 = [(CKBrowserItemPayload *)self fileURL];
      v18 = CKAVURLAssetForURL(fileURL3);

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
        [dictionary setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A6F78]];
      }

      else if (IMIsHEVCWithAlphaVideo())
      {
        [dictionary setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A6F70]];
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

  return dictionary;
}

- (id)mediaObjectFromPayloadWithKeyToTrasferGUIDMap:(id)map
{
  v35 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  mediaObject = self->_mediaObject;
  if (mediaObject)
  {
    v6 = mediaObject;
  }

  else
  {
    transcoderUserInfo = [(CKBrowserItemPayload *)self transcoderUserInfo];
    fileURL = [(CKBrowserItemPayload *)self fileURL];
    if (IMIsScreenshotURL())
    {
      isCroppingAvoidanceEnabled = [MEMORY[0x1E69A80C0] isCroppingAvoidanceEnabled];
    }

    else
    {
      isCroppingAvoidanceEnabled = 0;
    }

    v10 = +[CKMediaObjectManager sharedInstance];
    fileURL2 = [(CKBrowserItemPayload *)self fileURL];
    filename = [(CKBrowserItemPayload *)self filename];
    attributionInfo = [(CKBrowserItemPayload *)self attributionInfo];
    BYTE1(v32) = isCroppingAvoidanceEnabled;
    LOBYTE(v32) = [(CKBrowserItemPayload *)self shouldHideAttachments];
    v6 = [v10 mediaObjectWithFileURL:fileURL2 filename:filename fileIsResolved:0 transcoderUserInfo:transcoderUserInfo attributionInfo:attributionInfo adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:v32 isScreenshot:?];

    v14 = [(CKMediaObject *)v6 previewCacheKeyWithOrientation:1];
    fileURL3 = [(CKBrowserItemPayload *)self fileURL];
    v16 = [mapCopy objectForKey:fileURL3];

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
      videoComplementFileURL = [(CKBrowserItemPayload *)self videoComplementFileURL];

      if (videoComplementFileURL)
      {
        videoComplementFileURL2 = [(CKBrowserItemPayload *)self videoComplementFileURL];
        fileURL4 = [(CKMediaObject *)v6 fileURL];
        v22 = CKGetTmpPathForAppendedVideoURL(videoComplementFileURL2, fileURL4);

        uRLByResolvingSymlinksInPath = [v22 URLByResolvingSymlinksInPath];

        transferGUID = [(CKMediaObject *)v6 transferGUID];
        CKLinkAndCreateAppendedVideoTransfer(uRLByResolvingSymlinksInPath, videoComplementFileURL2, transferGUID);
      }

      generativePlaygroundRecipeData = [(CKBrowserItemPayload *)self generativePlaygroundRecipeData];

      if (generativePlaygroundRecipeData)
      {
        generativePlaygroundRecipeData2 = [(CKBrowserItemPayload *)self generativePlaygroundRecipeData];
        [(CKMediaObject *)v6 setGenerativePlaygroundRecipeData:generativePlaygroundRecipeData2];
      }

      [(CKBrowserItemPayload *)self setMediaObject:v6];
    }

    else if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        fileURL5 = [(CKBrowserItemPayload *)self fileURL];
        *buf = 138412290;
        v34 = fileURL5;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "CKChatInputController. Could not create media object from file: %@", buf, 0xCu);
      }
    }

    previewFilenameExtension = [(CKMediaObject *)v6 previewFilenameExtension];
    v30 = [(CKMediaObject *)v6 previewCachesFileURLWithOrientation:1 extension:previewFilenameExtension generateIntermediaries:0 transferGUID:v14];

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
    text = [(CKBrowserItemPayload *)self text];
    v4 = [text mutableCopy];

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

+ (id)browserItemFromSticker:(id)sticker
{
  stickerCopy = sticker;
  v4 = +[CKMediaObjectManager sharedInstance];
  v5 = [v4 mediaObjectWithSticker:stickerCopy stickerUserInfo:0];

  if (v5)
  {
    v6 = objc_alloc_init(CKBrowserItemPayload);
    stickerPackGUID = [stickerCopy stickerPackGUID];
    [(CKBrowserItemPayload *)v6 setPluginBundleID:stickerPackGUID];

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