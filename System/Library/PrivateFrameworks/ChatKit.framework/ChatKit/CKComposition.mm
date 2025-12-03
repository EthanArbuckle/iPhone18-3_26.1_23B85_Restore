@interface CKComposition
+ (BOOL)_shouldCreateMediaObjectForUTIType:(id)type;
+ (BOOL)isRTFDocumentWithItemProvider:(id)provider;
+ (CKComposition)compositionWithMSMessage:(id)message appExtensionIdentifier:(id)identifier;
+ (CKComposition)compositionWithMediaObject:(id)object subject:(id)subject;
+ (CKComposition)compositionWithMediaObjects:(id)objects subject:(id)subject;
+ (CKComposition)compositionWithPluginDisplayContainer:(id)container subject:(id)subject;
+ (CKComposition)compositionWithShelfMediaObject:(id)object;
+ (CKComposition)compositionWithShelfPluginPayload:(id)payload completionHandler:(id)handler;
+ (CKComposition)compositionWithText:(id)text subject:(id)subject shelfPluginPayload:(id)payload completionHandler:(id)handler;
+ (Class)_LPSharedObjectMetadataClass;
+ (id)_attributedStringAfterPostProcessingForRichLinksForText:(id)text;
+ (id)_compositionWithShelfPluginPayload:(id)payload;
+ (id)_savedCompositionDataForChatIdentifier:(id)identifier readUsingBlock:(id)block;
+ (id)_temporaryURLFromURL:(id)l;
+ (id)_transcoderUserInfoFor:(id)for filename:(id)filename type:(id)type;
+ (id)_trimUnwantedAttributesFromAttributedString:(id)string allowedAttributes:(id)attributes;
+ (id)attributedStringByTransformingNSLinksFromAttributedString:(id)string;
+ (id)composition;
+ (id)compositionForMessageParts:(id)parts preserveSubject:(BOOL)subject contextIdentifier:(id)identifier;
+ (id)compositionForTUConversationActivity:(id)activity;
+ (id)compositionForWritingToolsText:(id)text;
+ (id)finalCompositionFromAllCompositions:(id)compositions;
+ (id)richestMediaTypeForItemProvider:(id)provider;
+ (id)savedCompositionForChatIdentifier:(id)identifier;
+ (id)savedCompositionFromData:(id)data;
+ (id)trimUnwantedAttributesFromAttributedString:(id)string;
+ (void)__ck_valueForItemClass:(Class)class forItemProvider:(id)provider completion:(id)completion;
+ (void)_createPluginPayloadCompositionFromFileItemProvider:(id)provider builderContext:(id)context collaborationShareOptions:(id)options completionHandler:(id)handler;
+ (void)_fileNameFromFileURLForItemProvider:(id)provider fileType:(id)type completion:(id)completion;
+ (void)_fileNameFromURLNameForItemProvider:(id)provider fileType:(id)type completion:(id)completion;
+ (void)_pasteAttributedStringWithItemProvider:(id)provider builderContext:(id)context completionHandler:(id)handler;
+ (void)_pasteRTFDocumentWithItemProvider:(id)provider builderContext:(id)context completionHandler:(id)handler;
+ (void)_requestCompositionFromItemProviderForNonCollaboration:(id)collaboration builderContext:(id)context completion:(id)completion;
+ (void)compositionFromItemProviders:(id)providers shareOptions:(id)options completionHandler:(id)handler;
+ (void)compositionFromNonCollaborationItemProviders:(id)providers builderContext:(id)context completionHandler:(id)handler;
+ (void)createPluginPayloadCompositionFromCloudKitItemProvider:(id)provider collaborationShareOptions:(id)options completionHandler:(id)handler;
+ (void)createPluginPayloadCompositionFromCollaborativeItemProvider:(id)provider collaborationShareOptions:(id)options completionHandler:(id)handler;
+ (void)createPluginPayloadCompositionFromItemProvider:(id)provider builderContext:(id)context shareOptions:(id)options completionHandler:(id)handler;
+ (void)dataForPasteboardType:(id)type forItemProvider:(id)provider completion:(id)completion;
+ (void)deleteCompositionWithChatIdentifier:(id)identifier;
+ (void)filenameForType:(id)type forItemProvider:(id)provider completionHandler:(id)handler;
+ (void)filenameFromURLTypeForType:(id)type forItemProvider:(id)provider completionHandler:(id)handler;
+ (void)mediaObjectForItemProvider:(id)provider completion:(id)completion;
+ (void)mediaObjectFromItemAtURL:(id)l filename:(id)filename completion:(id)completion;
+ (void)mediaObjectFromPhotosAsset:(id)asset completion:(id)completion;
+ (void)pluginDisplayContainerForItemProvider:(id)provider completion:(id)completion;
+ (void)requestCompositionFromItemProvider:(id)provider shelfMediaObject:(id)object builderContext:(id)context completion:(id)completion;
+ (void)requestCompositionFromItemProviders:(id)providers completion:(id)completion;
+ (void)requestFilenameForType:(id)type forItemProvider:(id)provider completion:(id)completion;
+ (void)requestMediaObjectForItemProvider:(id)provider type:(id)type builderContext:(id)context completion:(id)completion;
+ (void)requestMediaObjectsForAttributedString:(id)string completion:(id)completion;
+ (void)requestPluginDisplayContainerForItemProvider:(id)provider completion:(id)completion;
- (BOOL)_compositionTextBeginsWithEmbeddedPluginAttachment;
- (BOOL)_saveCompositionData:(id)data atURL:(id)l forChatIdentifier:(id)identifier;
- (BOOL)canBundleAttachmentsWithMessageOnService:(id)service;
- (BOOL)compositionIsCollaboration;
- (BOOL)hasContent;
- (BOOL)hasNonwhiteSpaceContent;
- (BOOL)hasNotBeenEdited:(id)edited;
- (BOOL)hasRestorableContent;
- (BOOL)isCompatibleWithGlassSendAnimation;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPlainTextEqual:(id)equal;
- (BOOL)isSendAnimated;
- (BOOL)isTextOnly;
- (CKComposition)initWithText:(id)text subject:(id)subject shelfPluginPayload:(id)payload bizIntent:(id)intent;
- (CKComposition)initWithText:(id)text subject:(id)subject translation:(id)translation shelfPluginPayload:(id)payload bizIntent:(id)intent shelfMediaObject:(id)object collaborationOptions:(id)options proofreadingInfo:(id)self0;
- (CKComposition)initWithText:(id)text subject:(id)subject translation:(id)translation shelfPluginPayload:(id)payload bizIntent:(id)intent shelfMediaObject:(id)object collaborationShareOptions:(id)options proofreadingInfo:(id)self0;
- (CKComposition)initWithText:(id)text subject:(id)subject translation:(id)translation shelfPluginPayload:(id)payload bizIntent:(id)intent shelfMediaObject:(id)object proofreadingInfo:(id)info;
- (Class)balloonViewClass;
- (IMPluginPayload)firstEmbeddedPluginPayload;
- (NSArray)mediaObjects;
- (NSArray)pasteboardItemProviders;
- (NSArray)pluginDisplayContainers;
- (id)_attributedStringByReplacingMediaObjectsWithTransferGUIDsInText:(id)text transferGUIDs:(id *)ds mediaObjects:(id *)objects;
- (id)_attributedStringByTrimmingWhiteSpaceAroundAttachmentsInText:(id)text;
- (id)_compositionByAppendingText:(id)text isExpirable:(BOOL)expirable shelfPluginPayload:(id)payload shelfMediaObject:(id)object addingNewLineIfNedded:(BOOL)nedded;
- (id)_compositionParts;
- (id)_messageFromPayload:(id)payload firstGUID:(id)d;
- (id)compositionByAppendingCollaborativeComposition:(id)composition;
- (id)compositionByAppendingComposition:(id)composition;
- (id)compositionByAppendingMediaObject:(id)object;
- (id)compositionByAppendingMediaObjects:(id)objects;
- (id)compositionByAppendingPluginDisplayContainer:(id)container;
- (id)compositionByAppendingText:(id)text shelfPluginPayload:(id)payload shelfMediaObject:(id)object collaborationShareOptions:(id)options;
- (id)compositionByRemovingMediaObjects:(id)objects;
- (id)compositionByReplacingMediaObject:(id)object withMediaObject:(id)mediaObject;
- (id)compositionByReplacingText:(id)text;
- (id)description;
- (id)externalSourceComposition;
- (id)messageWithGUID:(id)d;
- (id)messageWithGUID:(id)d superFormatText:(id)text superFormatSubject:(id)subject fileTransferGUIDs:(id)ds mediaObjects:(id)objects balloonBundleID:(id)iD payloadData:(id)data messageSummaryInfo:(id)self0;
- (id)messageWithGUID:(id)d superFormatText:(id)text superFormatSubject:(id)subject superFormatTranslation:(id)translation fileTransferGUIDs:(id)ds mediaObjects:(id)objects balloonBundleID:(id)iD payloadData:(id)self0;
- (id)messagesFromCompositionFirstGUIDForMessage:(id)message sendingService:(id)service;
- (id)processedPartsForSuggestedReply:(id)reply;
- (id)superFormatSubject;
- (id)superFormatText:(id *)text;
- (id)superFormatText:(id)text transferGUIDs:(id *)ds mediaObjects:(id *)objects;
- (unint64_t)hash;
- (unint64_t)mediaObjectsFileSize;
- (void)_applyMessagePropertiesTo:(id)to pluginPayload:(id)payload;
- (void)_persistTextToComposition:(id)composition directoryURL:(id)l;
- (void)cleanupCKShareFromComposition;
- (void)evaluateSendMetricsWithConversation:(id)conversation shareSheetHostBundleIdentifier:(id)identifier;
- (void)removeShareURLForComposition:(id)composition;
- (void)saveCompositionWithChatIdentifier:(id)identifier;
@end

@implementation CKComposition

- (BOOL)hasContent
{
  text = [(CKComposition *)self text];
  if ([text length])
  {
    v4 = 1;
  }

  else
  {
    subject = [(CKComposition *)self subject];
    if (subject)
    {
      v4 = 1;
    }

    else
    {
      shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
      v4 = shelfPluginPayload != 0;
    }
  }

  return v4;
}

- (NSArray)mediaObjects
{
  text = [(CKComposition *)self text];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [text length];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __44__CKComposition_CKMediaObject__mediaObjects__block_invoke;
  v14[3] = &unk_1E72F84C8;
  v5 = array;
  v15 = v5;
  [text enumerateAttribute:@"MediaObjectForTextAttachment" inRange:0 options:v4 usingBlock:{0, v14}];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __44__CKComposition_CKMediaObject__mediaObjects__block_invoke_2;
  v12 = &unk_1E72F84F0;
  v13 = v5;
  v6 = v5;
  [text enumerateAttribute:@"AdaptiveImageGlyphMediaObject" inRange:0 options:v4 usingBlock:{0, &v9}];
  v7 = [v6 copy];

  return v7;
}

- (void)cleanupCKShareFromComposition
{
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  payloadCollaborationType = [shelfPluginPayload payloadCollaborationType];

  if (payloadCollaborationType == 2)
  {
    shelfPluginPayload2 = [(CKComposition *)self shelfPluginPayload];
    cloudKitShare = [shelfPluginPayload2 cloudKitShare];
    isCloudKitShareRemovable = [cloudKitShare isCloudKitShareRemovable];

    if (isCloudKitShareRemovable)
    {
      shelfPluginPayload3 = [(CKComposition *)self shelfPluginPayload];
      [(CKComposition *)self removeShareURLForComposition:shelfPluginPayload3];
    }
  }
}

- (void)removeShareURLForComposition:(id)composition
{
  compositionCopy = composition;
  v4 = MEMORY[0x193AF5EC0](@"CSCloudSharing", @"CloudSharing");
  if (objc_opt_respondsToSelector())
  {
    cloudKitShare = [compositionCopy cloudKitShare];
    containerSetupInfo = [compositionCopy containerSetupInfo];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __61__CKComposition_Collaboration__removeShareURLForComposition___block_invoke;
    v7[3] = &unk_1E72EC088;
    v8 = compositionCopy;
    [v4 removeFromShare:cloudKitShare containerSetupInfo:containerSetupInfo completionHandler:v7];
  }
}

void __61__CKComposition_Collaboration__removeShareURLForComposition___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = IMLogHandleForCategory();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __61__CKComposition_Collaboration__removeShareURLForComposition___block_invoke_cold_1(a1, v4, v6);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = [*(a1 + 32) url];
    v8 = [*(a1 + 32) containerSetupInfo];
    v9 = 138412546;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Successfully removed CloudKit share with URL: %@, containerSetupInfo: %@ ", &v9, 0x16u);
  }
}

- (CKComposition)initWithText:(id)text subject:(id)subject translation:(id)translation shelfPluginPayload:(id)payload bizIntent:(id)intent shelfMediaObject:(id)object collaborationShareOptions:(id)options proofreadingInfo:(id)self0
{
  textCopy = text;
  subjectCopy = subject;
  translationCopy = translation;
  payloadCopy = payload;
  intentCopy = intent;
  objectCopy = object;
  optionsCopy = options;
  infoCopy = info;
  v33.receiver = self;
  v33.super_class = CKComposition;
  v24 = [(CKComposition *)&v33 init];
  if (v24)
  {
    if ([textCopy length])
    {
      v25 = textCopy;
    }

    else
    {
      v25 = 0;
    }

    [(CKComposition *)v24 setText:v25];
    if ([subjectCopy length])
    {
      v26 = subjectCopy;
    }

    else
    {
      v26 = 0;
    }

    [(CKComposition *)v24 setSubject:v26];
    if ([translationCopy length])
    {
      v27 = translationCopy;
    }

    else
    {
      v27 = 0;
    }

    [(CKComposition *)v24 setTranslation:v27];
    v32 = payloadCopy;
    [(CKComposition *)v24 setShelfPluginPayload:payloadCopy];
    v28 = [intentCopy copy];
    if ([v28 count])
    {
      v29 = [intentCopy copy];
      [(CKComposition *)v24 setBizIntent:v29];
    }

    else
    {
      [(CKComposition *)v24 setBizIntent:0];
    }

    [(CKComposition *)v24 setShelfMediaObject:objectCopy];
    [(CKComposition *)v24 setCollaborationShareOptions:optionsCopy];
    optionsGroups = [optionsCopy optionsGroups];
    [(CKComposition *)v24 setCollaborationOptions:optionsGroups];

    [(CKComposition *)v24 setProofreadingInfo:infoCopy];
    payloadCopy = v32;
  }

  return v24;
}

- (CKComposition)initWithText:(id)text subject:(id)subject translation:(id)translation shelfPluginPayload:(id)payload bizIntent:(id)intent shelfMediaObject:(id)object collaborationOptions:(id)options proofreadingInfo:(id)self0
{
  v17 = MEMORY[0x1E697B720];
  infoCopy = info;
  objectCopy = object;
  intentCopy = intent;
  payloadCopy = payload;
  translationCopy = translation;
  subjectCopy = subject;
  textCopy = text;
  v25 = [v17 shareOptionsWithOptionsGroups:options];
  v26 = [(CKComposition *)self initWithText:textCopy subject:subjectCopy translation:translationCopy shelfPluginPayload:payloadCopy bizIntent:intentCopy shelfMediaObject:objectCopy collaborationShareOptions:v25 proofreadingInfo:infoCopy];

  return v26;
}

- (BOOL)compositionIsCollaboration
{
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  v3 = shelfPluginPayload;
  if (shelfPluginPayload && [shelfPluginPayload supportsCollaboration])
  {
    v4 = [v3 sendAsCopy] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (id)compositionByAppendingText:(id)text shelfPluginPayload:(id)payload shelfMediaObject:(id)object collaborationShareOptions:(id)options
{
  textCopy = text;
  payloadCopy = payload;
  objectCopy = object;
  optionsCopy = options;
  v14 = optionsCopy;
  if (textCopy || payloadCopy || objectCopy || optionsCopy)
  {
    text = [(CKComposition *)self text];
    if (text)
    {
      v17 = text;
      if (textCopy)
      {
        v18 = [text mutableCopy];
        string = [textCopy string];
        v20 = [string characterAtIndex:0];

        if (v20 != 10)
        {
          v21 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
          [v18 appendAttributedString:v21];
        }

        [v18 appendAttributedString:textCopy];
      }

      else
      {
        v18 = text;
      }
    }

    else
    {
      v18 = textCopy;
    }

    shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
    if (payloadCopy)
    {
      v23 = payloadCopy;

      shelfPluginPayload = v23;
    }

    collaborationShareOptions = [(CKComposition *)self collaborationShareOptions];
    if (v14)
    {
      v25 = v14;

      collaborationShareOptions = v25;
    }

    shelfMediaObject = [(CKComposition *)self shelfMediaObject];
    v39 = payloadCopy;
    v40 = textCopy;
    v37 = objectCopy;
    v38 = v14;
    if (objectCopy)
    {
      v27 = objectCopy;
      v28 = v18;
      v29 = v27;

      shelfMediaObject = v29;
    }

    else
    {
      v28 = v18;
    }

    v30 = [CKComposition alloc];
    subject = [(CKComposition *)self subject];
    translation = [(CKComposition *)self translation];
    bizIntent = [(CKComposition *)self bizIntent];
    proofreadingInfo = [(CKComposition *)self proofreadingInfo];
    selfCopy = [(CKComposition *)v30 initWithText:v28 subject:subject translation:translation shelfPluginPayload:shelfPluginPayload bizIntent:bizIntent shelfMediaObject:shelfMediaObject collaborationShareOptions:collaborationShareOptions proofreadingInfo:proofreadingInfo];

    expressiveSendStyleID = [(CKComposition *)self expressiveSendStyleID];
    [(CKComposition *)selfCopy setExpressiveSendStyleID:expressiveSendStyleID];

    [(CKComposition *)selfCopy setShouldHideClearPluginButton:[(CKComposition *)self shouldHideClearPluginButton]];
    payloadCopy = v39;
    textCopy = v40;
    objectCopy = v37;
    v14 = v38;
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)compositionByAppendingCollaborativeComposition:(id)composition
{
  compositionCopy = composition;
  text = [(CKComposition *)self text];
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  shelfMediaObject = [(CKComposition *)self shelfMediaObject];
  collaborationShareOptions = [(CKComposition *)self collaborationShareOptions];
  v9 = [(CKComposition *)self compositionByAppendingText:text shelfPluginPayload:shelfPluginPayload shelfMediaObject:shelfMediaObject collaborationShareOptions:collaborationShareOptions];
  text2 = [compositionCopy text];
  shelfPluginPayload2 = [compositionCopy shelfPluginPayload];
  shelfMediaObject2 = [compositionCopy shelfMediaObject];
  collaborationShareOptions2 = [compositionCopy collaborationShareOptions];

  v14 = [v9 compositionByAppendingText:text2 shelfPluginPayload:shelfPluginPayload2 shelfMediaObject:shelfMediaObject2 collaborationShareOptions:collaborationShareOptions2];

  return v14;
}

- (BOOL)isCompatibleWithGlassSendAnimation
{
  v11 = *MEMORY[0x1E69E9840];
  if (isCompatibleWithGlassSendAnimation_onceToken != -1)
  {
    [CKComposition(SendAnimation) isCompatibleWithGlassSendAnimation];
  }

  balloonViewClass = [(CKComposition *)self balloonViewClass];
  v4 = [isCompatibleWithGlassSendAnimation_supportedBalloonViewClasses containsObject:balloonViewClass];
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = NSStringFromClass(balloonViewClass);
      v8[0] = 67109378;
      v8[1] = v4;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "classSupported: %{BOOL}d balloonViewClass: %@", v8, 0x12u);
    }
  }

  return v4;
}

void __66__CKComposition_SendAnimation__isCompatibleWithGlassSendAnimation__block_invoke()
{
  v2[6] = *MEMORY[0x1E69E9840];
  v2[0] = objc_opt_class();
  v2[1] = objc_opt_class();
  v2[2] = objc_opt_class();
  v2[3] = objc_opt_class();
  v2[4] = objc_opt_class();
  v2[5] = objc_opt_class();
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:6];
  v1 = isCompatibleWithGlassSendAnimation_supportedBalloonViewClasses;
  isCompatibleWithGlassSendAnimation_supportedBalloonViewClasses = v0;
}

- (NSArray)pasteboardItemProviders
{
  array = [MEMORY[0x1E695DF70] array];
  text = [(CKComposition *)self text];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v5 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v6 = [text length];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__CKComposition_UIPasteboard__pasteboardItemProviders__block_invoke;
  v17[3] = &unk_1E72F16E0;
  v21 = &v22;
  v7 = v5;
  v18 = v7;
  v8 = text;
  v19 = v8;
  selfCopy = self;
  [v8 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v17}];
  if (*(v23 + 24) == 1)
  {
    v9 = [[CKAttributedStringItemProviderWriter alloc] initWithAttributedString:v7];
    v10 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v9];
    [array addObject:v10];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__CKComposition_UIPasteboard__pasteboardItemProviders__block_invoke_471;
    v15[3] = &unk_1E72F1708;
    v16 = array;
    [v8 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v15}];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Based on the content of the composition, we do not need to serialize the copied item as an attributed string. Using plain string serialization only.", v14, 2u);
      }
    }

    v9 = [(CKAttributedStringItemProviderWriter *)[CKPlainStringItemProviderWriter alloc] initWithAttributedString:v7];
    v10 = [objc_alloc(MEMORY[0x1E696ACA0]) initWithObject:v9];
    [array addObject:v10];
  }

  v12 = array;
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __54__CKComposition_UIPasteboard__pasteboardItemProviders__block_invoke(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKeyedSubscript:@"AdaptiveImageGlyphMediaObject"];
  v9 = [v7 objectForKeyedSubscript:@"MediaObjectForTextAttachment"];
  v10 = [v7 objectForKeyedSubscript:@"PluginDisplayContainer"];
  v11 = [v7 objectForKeyedSubscript:@"EmbeddedRichLinkConfiguration"];
  v31 = v11;
  v32 = v10;
  if (v8)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    if (a3 < a3 + a4)
    {
      v12 = MEMORY[0x1E695E0F8];
      do
      {
        v13 = [v8 adaptiveImageGlyph];
        if (v13)
        {
          v14 = [MEMORY[0x1E696AAB0] attributedStringWithAdaptiveImageGlyph:v13 attributes:v12];
          [*(a1 + 32) appendAttributedString:v14];
        }

        else
        {
          v14 = IMLogHandleForCategory();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            __54__CKComposition_UIPasteboard__pasteboardItemProviders__block_invoke_cold_1(&buf, v42, v14);
          }
        }

        --a4;
      }

      while (a4);
    }

    goto LABEL_33;
  }

  if (v9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v15 = [v9 rtfDocumentItemsWithFormatString:0 selectedTextRange:{0, objc_msgSend(*(a1 + 40), "length", v11, v10)}];
    v16 = v15;
    if (v15)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v17 = [v15 countByEnumeratingWithState:&v37 objects:v44 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v38;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v38 != v19)
            {
              objc_enumerationMutation(v16);
            }

            [*(a1 + 32) appendAttributedString:*(*(&v37 + 1) + 8 * i)];
          }

          v18 = [v16 countByEnumeratingWithState:&v37 objects:v44 count:16];
        }

        while (v18);
      }
    }

    goto LABEL_32;
  }

  if (v10)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v21 = [v10 rtfDocumentItemsWithFormatString:0 selectedTextRange:{0, objc_msgSend(*(a1 + 40), "length", v11, v10)}];
    v16 = v21;
    if (v21)
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v22 = [v21 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v34;
        do
        {
          for (j = 0; j != v23; ++j)
          {
            if (*v34 != v24)
            {
              objc_enumerationMutation(v16);
            }

            [*(a1 + 32) appendAttributedString:*(*(&v33 + 1) + 8 * j)];
          }

          v23 = [v16 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v23);
      }
    }

    goto LABEL_32;
  }

  if (v11)
  {
    v26 = [v11 url];
    v16 = [v26 absoluteString];

    v27 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
    [*(a1 + 32) appendAttributedString:v27];

LABEL_32:
    goto LABEL_33;
  }

  v28 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4, 0, v10}];
  v29 = [*(a1 + 40) ck_activeTextStylesInRange:{a3, a4}];
  if (v29 | [*(a1 + 40) ck_activeTextEffectTypeInRange:{a3, a4}])
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v30 = [objc_opt_class() trimUnwantedAttributesFromAttributedString:v28];
  [*(a1 + 32) appendAttributedString:v30];

LABEL_33:
}

void __54__CKComposition_UIPasteboard__pasteboardItemProviders__block_invoke_471(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 objectForKeyedSubscript:@"MediaObjectForTextAttachment"];
  v4 = [v3 objectForKeyedSubscript:@"PluginDisplayContainer"];

  v5 = v7;
  if (!v7)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    v5 = v4;
  }

  v6 = [v5 pasteboardItemProvider];
  if (v6)
  {
    [*(a1 + 32) addObject:v6];
  }

LABEL_7:
}

+ (BOOL)_shouldCreateMediaObjectForUTIType:(id)type
{
  v15 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  if ([&unk_1F04E6978 containsObject:typeCopy])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = +[CKMediaObjectManager sharedInstance];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    allUTITypes = [v5 allUTITypes];
    v4 = [allUTITypes countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v4)
    {
      v7 = *v11;
LABEL_5:
      v8 = 0;
      while (1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allUTITypes);
        }

        if (UTTypeConformsTo(typeCopy, *(*(&v10 + 1) + 8 * v8)))
        {
          break;
        }

        if (v4 == ++v8)
        {
          v4 = [allUTITypes countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v4)
          {
            goto LABEL_5;
          }

          goto LABEL_21;
        }
      }

      if ([*MEMORY[0x1E69DE2B0] containsObject:typeCopy] & 1) != 0 || UTTypeEqual(typeCopy, @"public.url-name") || (objc_msgSend(*MEMORY[0x1E69DE2A8], "containsObject:", typeCopy))
      {
        LOBYTE(v4) = 0;
        goto LABEL_22;
      }

      allUTITypes = [MEMORY[0x1E69DCD50] __ck_pasteboardTypeListRTFD];
      LOBYTE(v4) = ([allUTITypes containsObject:typeCopy] & 1) == 0 && !UTTypeEqual(typeCopy, *MEMORY[0x1E6963888]) && !UTTypeEqual(typeCopy, *MEMORY[0x1E69637E8]) && !UTTypeEqual(typeCopy, *MEMORY[0x1E69638F0]) && UTTypeConformsTo(typeCopy, *MEMORY[0x1E6963870]) == 0;
    }

LABEL_21:

LABEL_22:
  }

  return v4;
}

+ (void)mediaObjectForItemProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  v8 = +[CKMediaObjectManager sharedInstance];
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy__30;
  v33[4] = __Block_byref_object_dispose__30;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x2020000000;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3032000000;
  v29[3] = __Block_byref_object_copy__30;
  v29[4] = __Block_byref_object_dispose__30;
  v30 = 0;
  v9 = *MEMORY[0x1E69DE2A0];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke;
  v28[3] = &unk_1E72F1730;
  v28[4] = v33;
  v28[5] = v29;
  [v9 enumerateObjectsUsingBlock:v28];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__30;
  v26[4] = __Block_byref_object_dispose__30;
  v27 = 0;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__30;
  v24[4] = __Block_byref_object_dispose__30;
  v25 = 0;
  v10 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_2;
  v14[3] = &unk_1E72F1938;
  v18 = v29;
  v19 = v26;
  v20 = v24;
  v21 = v33;
  selfCopy = self;
  v11 = v8;
  v15 = v11;
  v12 = providerCopy;
  v16 = v12;
  v22 = v31;
  v13 = completionCopy;
  v17 = v13;
  [self __ck_valueForItemClass:v10 forItemProvider:v12 completion:v14];

  _Block_object_dispose(v24, 8);
  _Block_object_dispose(v26, 8);

  _Block_object_dispose(v29, 8);
  _Block_object_dispose(v31, 8);
  _Block_object_dispose(v33, 8);
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  inUTI = a2;
  if ([*(*(*(a1 + 32) + 8) + 40) containsObject:?])
  {
    v7 = UTTypeConformsTo(inUTI, *MEMORY[0x1E69637F8]);
    v8 = *(*(a1 + 40) + 8);
    if (v7)
    {
      v9 = *(v8 + 40);
      *(v8 + 40) = 0;

      *a4 = 1;
    }

    else
    {
      objc_storeStrong((v8 + 40), a2);
    }
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v109 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v52 = a3;
  v53 = v5;
  if (v5 && *(*(*(a1 + 56) + 8) + 40))
  {
    v6 = CKCreatePNGRepresentationFromUIImageFilterTypeNone(v5);
    v7 = *(*(a1 + 64) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    objc_storeStrong((*(*(a1 + 72) + 8) + 40), *MEMORY[0x1E6963860]);
    v9 = [*(*(*(a1 + 80) + 8) + 40) arrayByAddingObject:*(*(*(a1 + 72) + 8) + 40)];
    v10 = *(*(a1 + 80) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  v12 = objc_alloc_init(CKMultiDict);
  v13 = *(*(*(a1 + 80) + 8) + 40);
  v104[0] = MEMORY[0x1E69E9820];
  v104[1] = 3221225472;
  v104[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_3;
  v104[3] = &unk_1E72F1758;
  v107 = *(a1 + 96);
  v105 = *(a1 + 32);
  v14 = v12;
  v106 = v14;
  [v13 enumerateObjectsUsingBlock:v104];
  v102[0] = 0;
  v102[1] = v102;
  v102[2] = 0x3032000000;
  v102[3] = __Block_byref_object_copy__30;
  v102[4] = __Block_byref_object_dispose__30;
  v103 = 0;
  if ([(CKMultiDict *)v14 count])
  {
    v98 = 0;
    v99 = &v98;
    v100 = 0x2050000000;
    v101 = 0;
    v50 = [*(a1 + 32) classes];
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 3221225472;
    v95[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_4;
    v95[3] = &unk_1E72F1780;
    v15 = v14;
    v96 = v15;
    v97 = &v98;
    [v50 enumerateObjectsUsingBlock:v95];
    v16 = v99[3];
    if (v16 == objc_opt_class())
    {
      v17 = [(CKMultiDict *)v15 objectsForKey:objc_opt_class()];
      if (([v17 containsObject:*MEMORY[0x1E6963860]] & 1) != 0 || objc_msgSend(v17, "containsObject:", *MEMORY[0x1E6963808]))
      {
        v85 = 0;
        v86 = &v85;
        v87 = 0x2020000000;
        LOBYTE(v88) = 0;
        v18 = [(CKMultiDict *)v15 objectsForKey:objc_opt_class()];
        v91[0] = MEMORY[0x1E69E9820];
        v91[1] = 3221225472;
        v91[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_5;
        v91[3] = &unk_1E72F17D0;
        v94 = *(a1 + 96);
        v92 = *(a1 + 40);
        v93 = &v85;
        [v18 enumerateObjectsUsingBlock:v91];

        _Block_object_dispose(&v85, 8);
      }
    }

    v85 = 0;
    v86 = &v85;
    v87 = 0x3032000000;
    v88 = __Block_byref_object_copy__30;
    v89 = __Block_byref_object_dispose__30;
    v90 = 0;
    v51 = [(CKMultiDict *)v15 objectsForKey:v99[3]];
    v19 = v99[3];
    if (v19 == objc_opt_class())
    {
      v84[0] = MEMORY[0x1E69E9820];
      v84[1] = 3221225472;
      v84[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_7;
      v84[3] = &unk_1E72EEC20;
      v84[4] = &v85;
      [v51 enumerateObjectsUsingBlock:v84];
      if (v86[5])
      {
LABEL_15:
        v79[0] = 0;
        v79[1] = v79;
        v79[2] = 0x3032000000;
        v79[3] = __Block_byref_object_copy__30;
        v79[4] = __Block_byref_object_dispose__30;
        v80 = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_9;
        aBlock[3] = &unk_1E72F1820;
        v22 = *(a1 + 96);
        v23 = *(a1 + 40);
        *&v24 = *(a1 + 88);
        v48 = v24;
        v25 = *(a1 + 48);
        *&v26 = v23;
        *(&v26 + 1) = v25;
        *&v27 = v48;
        *(&v27 + 1) = v22;
        v77 = v26;
        v78 = v27;
        *&v48 = _Block_copy(aBlock);
        if (v86[5])
        {
          v28 = [MEMORY[0x1E6982C40] typeWithIdentifier:v48];
          v29 = v28;
          if (v28 && [v28 conformsToType:*MEMORY[0x1E6982DB8]])
          {
            v30 = [v29 identifier];
LABEL_31:

            v43 = *(a1 + 40);
            v67[0] = MEMORY[0x1E69E9820];
            v67[1] = 3221225472;
            v67[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_492;
            v67[3] = &unk_1E72F1870;
            v44 = v43;
            v45 = *(a1 + 96);
            v68 = v44;
            v71 = v45;
            v69 = v49;
            v70 = *(a1 + 48);
            v46 = [v44 loadDataRepresentationForTypeIdentifier:v30 completionHandler:v67];

            goto LABEL_32;
          }
        }

        else
        {
          v74 = 0u;
          v75 = 0u;
          v72 = 0u;
          v73 = 0u;
          v29 = *(*(*(a1 + 80) + 8) + 40);
          v31 = [v29 countByEnumeratingWithState:&v72 objects:v108 count:{16, v48}];
          if (v31)
          {
            v32 = *v73;
            v33 = *MEMORY[0x1E6982DB8];
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v73 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v72 + 1) + 8 * i);
                v36 = [MEMORY[0x1E6982C40] typeWithIdentifier:v35];
                if ([v36 conformsToType:v33])
                {
                  v30 = v35;

                  goto LABEL_31;
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v72 objects:v108 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }
        }

        if ([v86[5] isEqualToString:*MEMORY[0x1E69A6890]])
        {
          v64[0] = MEMORY[0x1E69E9820];
          v64[1] = 3221225472;
          v64[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_3_495;
          v64[3] = &unk_1E72F1898;
          v37 = *(a1 + 40);
          v65 = *(a1 + 48);
          v66 = v102;
          [v37 __ck_loadDataForAppleMapVCard:v64];
          v30 = v65;
        }

        else
        {
          v38 = *(a1 + 96);
          v39 = v86[5];
          v40 = *(a1 + 40);
          v54[0] = MEMORY[0x1E69E9820];
          v54[1] = 3221225472;
          v54[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_498;
          v54[3] = &unk_1E72F1910;
          v42 = *(a1 + 64);
          v41 = *(a1 + 72);
          v58 = v79;
          v59 = v41;
          v60 = &v85;
          v61 = v42;
          v62 = v102;
          v63 = v38;
          v55 = *(a1 + 32);
          v57 = v49;
          v56 = *(a1 + 40);
          [v38 filenameForType:v39 forItemProvider:v40 completionHandler:v54];

          v30 = v55;
        }

LABEL_32:

        _Block_object_dispose(v79, 8);
        _Block_object_dispose(&v85, 8);

        _Block_object_dispose(&v98, 8);
        goto LABEL_33;
      }

      v47 = [v51 lastObject];
      v21 = v86[5];
      v86[5] = v47;
    }

    else
    {
      v20 = [v99[3] UTITypes];
      v81[0] = MEMORY[0x1E69E9820];
      v81[1] = 3221225472;
      v81[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_8;
      v81[3] = &unk_1E72EBA68;
      v82 = v51;
      v83 = &v85;
      [v20 enumerateObjectsUsingBlock:v81];

      v21 = v82;
    }

    goto LABEL_15;
  }

  (*(*(a1 + 48) + 16))();
LABEL_33:
  _Block_object_dispose(v102, 8);
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[6] _shouldCreateMediaObjectForUTIType:?])
  {
    [a1[5] pushObject:v3 forKey:{objc_msgSend(a1[4], "classForUTIType:", v3)}];
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) peekObjectForKey:a2];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }
}

uint64_t __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[4];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_6;
  v7[3] = &unk_1E72F17A8;
  v5 = a1[6];
  v7[4] = a1[5];
  v7[5] = a4;
  return [v5 dataForPasteboardType:a2 forItemProvider:v4 completion:v7];
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[CKImageData alloc] initWithData:v3];

  if ([(CKImageData *)v5 count]>= 2)
  {
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *v4 = 1;
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_7(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((CKUTTypeIsDynamic(v8, v7) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?] && (objc_msgSend(v7, "isEqualToString:", @"com.apple.icns") & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_9(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = a1[7];
    v6 = a1[4];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_10;
    v8[3] = &unk_1E72F17F8;
    v9 = v3;
    [v5 dataForPasteboardType:@"com.apple.MobileSMS.appendedURL" forItemProvider:v6 completion:v8];
    v7 = *(a1[6] + 8);
    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      (*(a1[5] + 16))();
    }
  }

  else
  {
    (*(a1[5] + 16))();
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "appendedData %@", &v15, 0xCu);
    }
  }

  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "appendedPath %@", &v15, 0xCu);
      }
    }

    if (v8)
    {
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v10;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "appendedVideoURL %@", &v15, 0xCu);
        }
      }

      if (v10)
      {
        v12 = [*(a1 + 32) fileURL];
        v13 = CKGetTmpPathForAppendedVideoURL(v10, v12);

        v14 = [*(a1 + 32) transferGUID];
        CKLinkAndCreateAppendedVideoTransfer(v13, v10, v14);
      }
    }
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_492(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v7 = [*(a1 + 32) suggestedName];
  if (!v7)
  {
    v8 = [v6 lastPathComponent];
    v7 = [v8 stringByRemovingPercentEncoding];
  }

  v9 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_2_493;
  v10[3] = &unk_1E72F1848;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  [v9 mediaObjectFromItemAtURL:v6 filename:v7 completion:v10];
}

uint64_t __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_2_493(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_3_495(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v7 && !v9)
  {
    v11 = +[CKMediaObjectManager sharedInstance];
    v12 = [v11 mediaObjectWithData:v7 UTIType:*MEMORY[0x1E69A6890] filename:v8 transcoderUserInfo:0];
    v13 = *(*(a1 + 40) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = 138412290;
        v17 = v10;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Failed to load apple map vCard with error: %@", &v16, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_498(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__30;
  v44 = __Block_byref_object_dispose__30;
  v45 = 0;
  if (*(*(*(a1 + 64) + 8) + 40) && [*(*(*(a1 + 72) + 8) + 40) isEqualToString:?])
  {
    objc_storeStrong(v41 + 5, *(*(*(a1 + 80) + 8) + 40));
    v8 = [*(a1 + 96) _transcoderUserInfoFor:v41[5] filename:*(*(*(a1 + 56) + 8) + 40) type:*(*(*(a1 + 72) + 8) + 40)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_2_499;
    block[3] = &unk_1E72F18C0;
    v36 = *(a1 + 88);
    v9 = *(a1 + 32);
    v10 = *(a1 + 72);
    v37 = &v40;
    v38 = v10;
    v11 = *(a1 + 48);
    v39 = *(a1 + 56);
    v33 = v9;
    v34 = v8;
    v35 = v11;
    v12 = v8;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13 = *(a1 + 72);
    v14 = *(*(v13 + 8) + 40);
    if (!v14)
    {
      v19 = +[CKMediaObjectManager sharedInstance];
      v20 = [MEMORY[0x1E695DFF8] URLWithString:*(*(*(a1 + 56) + 8) + 40)];
      v21 = [v19 mediaObjectWithFileURL:v20 filename:*(*(*(a1 + 56) + 8) + 40) transcoderUserInfo:0];
      v22 = *(*(a1 + 88) + 8);
      v23 = *(v22 + 40);
      *(v22 + 40) = v21;

      (*(*(a1 + 48) + 16))();
      goto LABEL_10;
    }

    v15 = *(a1 + 96);
    v16 = *(a1 + 40);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_3_501;
    v24[3] = &unk_1E72F18E8;
    v17 = *(a1 + 56);
    v27 = &v40;
    v28 = v17;
    v18 = *(a1 + 88);
    v29 = v13;
    v30 = v18;
    v31 = v15;
    v25 = *(a1 + 32);
    v26 = *(a1 + 48);
    [v15 dataForPasteboardType:v14 forItemProvider:v16 completion:v24];

    v12 = v25;
  }

LABEL_10:
  _Block_object_dispose(&v40, 8);
}

uint64_t __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_2_499(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaObjectWithData:*(*(*(a1 + 64) + 8) + 40) UTIType:*(*(*(a1 + 72) + 8) + 40) filename:*(*(*(a1 + 80) + 8) + 40) transcoderUserInfo:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

void __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_3_501(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v5 = [*(a1 + 80) _transcoderUserInfoFor:*(*(*(a1 + 48) + 8) + 40) filename:*(*(*(a1 + 56) + 8) + 40) type:*(*(*(a1 + 64) + 8) + 40)];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_4_502;
    block[3] = &unk_1E72F18C0;
    v13 = *(a1 + 72);
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v14 = *(a1 + 48);
    v15 = vextq_s8(*(a1 + 56), *(a1 + 56), 8uLL);
    v10 = v6;
    v11 = v5;
    v12 = v7;
    v8 = v5;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }
}

uint64_t __69__CKComposition_UIPasteboard__mediaObjectForItemProvider_completion___block_invoke_4_502(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaObjectWithData:*(*(*(a1 + 64) + 8) + 40) UTIType:*(*(*(a1 + 72) + 8) + 40) filename:*(*(*(a1 + 80) + 8) + 40) transcoderUserInfo:*(a1 + 40)];
  v3 = *(*(a1 + 56) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(a1 + 48) + 16);

  return v5();
}

+ (id)_transcoderUserInfoFor:(id)for filename:(id)filename type:(id)type
{
  v21 = *MEMORY[0x1E69E9840];
  forCopy = for;
  filenameCopy = filename;
  typeCopy = type;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v11 = UTTypeConformsTo(typeCopy, *MEMORY[0x1E6963758]);
  if (forCopy && v11 && [forCopy length])
  {
    v12 = IMIsHEVCWithAlphaVideoFromData();
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = [forCopy length];
        v15 = @"NO";
        if (v12)
        {
          v15 = @"YES";
        }

        v17 = 134218242;
        v18 = v14;
        v19 = 2112;
        v20 = v15;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Checked data (size=%lu) has alpha video channel: %@", &v17, 0x16u);
      }
    }

    if (v12)
    {
      [(__CFDictionary *)Mutable setObject:MEMORY[0x1E695E118] forKey:*MEMORY[0x1E69A6F70]];
    }
  }

  return Mutable;
}

+ (void)pluginDisplayContainerForItemProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  if ([registeredTypeIdentifiers containsObject:@"com.apple.MobileSMS.PluginPayload"])
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __80__CKComposition_UIPasteboard__pluginDisplayContainerForItemProvider_completion___block_invoke;
    v9[3] = &unk_1E72F0030;
    v10 = completionCopy;
    [self dataForPasteboardType:@"com.apple.MobileSMS.PluginPayload" forItemProvider:providerCopy completion:v9];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __80__CKComposition_UIPasteboard__pluginDisplayContainerForItemProvider_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v3 = [CKPluginDisplayContainer unarchiveFromData:a2 error:&v6];
  v4 = v6;
  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3, v4);
  }
}

+ (void)__ck_valueForItemClass:(Class)class forItemProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__CKComposition_UIPasteboard____ck_valueForItemClass_forItemProvider_completion___block_invoke;
  v12[3] = &unk_1E72F1960;
  v13 = providerCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = providerCopy;
  v11 = [v10 loadObjectOfClass:class completionHandler:v12];
}

void __81__CKComposition_UIPasteboard____ck_valueForItemClass_forItemProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v6 localizedDescription];
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get itemClass for itemProvider: %@, error: %@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__CKComposition_UIPasteboard____ck_valueForItemClass_forItemProvider_completion___block_invoke_513;
  block[3] = &unk_1E72EDD88;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (void)dataForPasteboardType:(id)type forItemProvider:(id)provider completion:(id)completion
{
  providerCopy = provider;
  completionCopy = completion;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__CKComposition_UIPasteboard__dataForPasteboardType_forItemProvider_completion___block_invoke;
  v12[3] = &unk_1E72F1988;
  v13 = providerCopy;
  v14 = completionCopy;
  v9 = completionCopy;
  v10 = providerCopy;
  v11 = [v10 loadDataRepresentationForTypeIdentifier:type completionHandler:v12];
}

void __80__CKComposition_UIPasteboard__dataForPasteboardType_forItemProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6 && IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v6 localizedDescription];
      *buf = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v9;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get data for itemProvider: %@, error: %@", buf, 0x16u);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__CKComposition_UIPasteboard__dataForPasteboardType_forItemProvider_completion___block_invoke_515;
  block[3] = &unk_1E72EDD88;
  v10 = *(a1 + 40);
  v15 = v6;
  v16 = v10;
  v14 = v5;
  v11 = v6;
  v12 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

+ (void)filenameForType:(id)type forItemProvider:(id)provider completionHandler:(id)handler
{
  typeCopy = type;
  providerCopy = provider;
  handlerCopy = handler;
  v11 = +[CKMediaObjectManager sharedInstance];
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__30;
  v34[4] = __Block_byref_object_dispose__30;
  v35 = 0;
  suggestedName = [providerCopy suggestedName];
  v14 = suggestedName;
  if (suggestedName)
  {
    pathExtension = [suggestedName pathExtension];
    v16 = [pathExtension length];

    if (!v16)
    {
      v17 = [MEMORY[0x1E6982C40] typeWithIdentifier:typeCopy];
      preferredFilenameExtension = [v17 preferredFilenameExtension];

      if (preferredFilenameExtension)
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v14, preferredFilenameExtension];
      }

      else
      {
        v19 = 0;
      }

      v14 = v19;
    }
  }

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke;
  v29[3] = &unk_1E72EEC20;
  v29[4] = &v30;
  [registeredTypeIdentifiers enumerateObjectsUsingBlock:v29];
  if (*(v31 + 24) == 1)
  {
    v20 = objc_opt_class();
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke_2;
    v21[3] = &unk_1E72F19D8;
    v22 = v11;
    v23 = typeCopy;
    selfCopy = self;
    v24 = providerCopy;
    v26 = handlerCopy;
    v25 = v14;
    v27 = v34;
    [self __ck_valueForItemClass:v20 forItemProvider:v24 completion:v21];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v14, 0);
  }

  _Block_object_dispose(&v30, 8);

  _Block_object_dispose(v34, 8);
}

uint64_t __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*MEMORY[0x1E69DE2A8] containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = [*(a1 + 32) UTITypeForFilename:v4];
    v6 = v5;
    v7 = *(a1 + 40);
    if (v7)
    {
      if (v5)
      {
        if (UTTypeEqual(v5, *(a1 + 40)))
        {
          objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
          (*(*(a1 + 64) + 16))();
LABEL_11:

          goto LABEL_12;
        }

        v7 = *(a1 + 40);
      }

      v11 = *(a1 + 80);
      v12 = *(a1 + 48);
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke_4;
      v13[3] = &unk_1E72F19B0;
      v15 = *(a1 + 64);
      v14 = *(a1 + 56);
      [v11 filenameFromURLTypeForType:v7 forItemProvider:v12 completionHandler:v13];

      v10 = v15;
    }

    else
    {
      v8 = *(a1 + 80);
      v9 = *(a1 + 48);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke_3;
      v16[3] = &unk_1E72F19B0;
      v18 = *(a1 + 64);
      v17 = *(a1 + 56);
      [v8 filenameFromURLTypeForType:v6 forItemProvider:v9 completionHandler:v16];

      v10 = v18;
    }

    goto LABEL_11;
  }

  (*(*(a1 + 64) + 16))();
LABEL_12:
}

uint64_t __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

uint64_t __81__CKComposition_UIPasteboard__filenameForType_forItemProvider_completionHandler___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  if (!a2)
  {
    a2 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, a2);
}

+ (void)filenameFromURLTypeForType:(id)type forItemProvider:(id)provider completionHandler:(id)handler
{
  typeCopy = type;
  providerCopy = provider;
  handlerCopy = handler;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __92__CKComposition_UIPasteboard__filenameFromURLTypeForType_forItemProvider_completionHandler___block_invoke;
  v14[3] = &unk_1E72F1A00;
  v17 = handlerCopy;
  selfCopy = self;
  v15 = providerCopy;
  v16 = typeCopy;
  v11 = typeCopy;
  v12 = providerCopy;
  v13 = handlerCopy;
  [self _fileNameFromURLNameForItemProvider:v12 fileType:v11 completion:v14];
}

void __92__CKComposition_UIPasteboard__filenameFromURLTypeForType_forItemProvider_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 48) + 16);

    v4();
  }

  else
  {
    v12 = v2;
    v13 = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __92__CKComposition_UIPasteboard__filenameFromURLTypeForType_forItemProvider_completionHandler___block_invoke_2;
    v9[3] = &unk_1E72F19B0;
    v7 = *(a1 + 56);
    v8 = *(a1 + 48);
    v10 = 0;
    v11 = v8;
    [v7 _fileNameFromFileURLForItemProvider:v5 fileType:v6 completion:v9];
  }
}

+ (void)_fileNameFromURLNameForItemProvider:(id)provider fileType:(id)type completion:(id)completion
{
  providerCopy = provider;
  typeCopy = type;
  completionCopy = completion;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  if ([registeredTypeIdentifiers containsObject:@"public.url-name"])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__CKComposition_UIPasteboard___fileNameFromURLNameForItemProvider_fileType_completion___block_invoke;
    v12[3] = &unk_1E72F1988;
    v13 = typeCopy;
    v14 = completionCopy;
    [self dataForPasteboardType:@"public.url-name" forItemProvider:providerCopy completion:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __87__CKComposition_UIPasteboard___fileNameFromURLNameForItemProvider_fileType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v7 = [[v5 alloc] initWithData:v6 usedEncoding:0];

  if (v7)
  {
    v8 = [*(a1 + 32) pathExtension];
    v9 = [v7 stringByAppendingPathExtension:v8];

    v10 = +[CKMediaObjectManager sharedInstance];
    v11 = [v10 UTITypeForFilename:v9];

    if (!UTTypeEqual(v11, *(a1 + 32)))
    {

      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  (*(*(a1 + 40) + 16))();
}

+ (void)_fileNameFromFileURLForItemProvider:(id)provider fileType:(id)type completion:(id)completion
{
  providerCopy = provider;
  typeCopy = type;
  completionCopy = completion;
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  if ([registeredTypeIdentifiers containsObject:@"public.file-url"])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __87__CKComposition_UIPasteboard___fileNameFromFileURLForItemProvider_fileType_completion___block_invoke;
    v12[3] = &unk_1E72F1988;
    v13 = typeCopy;
    v14 = completionCopy;
    [self dataForPasteboardType:@"public.file-url" forItemProvider:providerCopy completion:v12];
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

void __87__CKComposition_UIPasteboard___fileNameFromFileURLForItemProvider_fileType_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = a2;
  v7 = [[v5 alloc] initWithData:v6 usedEncoding:0];

  if (v7)
  {
    v8 = +[CKMediaObjectManager sharedInstance];
    v9 = [v8 UTITypeForFilename:v7];

    if (!UTTypeEqual(v9, *(a1 + 32)))
    {

      v7 = 0;
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)attributedStringByTransformingNSLinksFromAttributedString:(id)string
{
  stringCopy = string;
  v4 = [stringCopy length];
  v5 = [stringCopy mutableCopy];
  v6 = *MEMORY[0x1E69DB670];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __89__CKComposition_UIPasteboard__attributedStringByTransformingNSLinksFromAttributedString___block_invoke;
  v14 = &unk_1E72F12B8;
  v15 = v5;
  v16 = stringCopy;
  v7 = stringCopy;
  v8 = v5;
  [v7 enumerateAttribute:v6 inRange:0 options:v4 usingBlock:{2, &v11}];
  v9 = [v8 copy];

  return v9;
}

void __89__CKComposition_UIPasteboard__attributedStringByTransformingNSLinksFromAttributedString___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  if (!v18)
  {
    [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB670] range:{a3, a4}];
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v18;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v18 absoluteString];

    v7 = v8;
  }

  if (v7)
  {
    v9 = [*(a1 + 40) string];
    v10 = [v9 substringWithRange:{a3, a4}];

    v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v12 = [v11 isRichLinkImprovementsEnabled];

    if (v12)
    {
      if ([_TtC7ChatKit19CKRichLinkUtilities isValidURL:v7 equalTo:v10])
      {
        v13 = v7;
LABEL_16:
        v14 = v13;
        v15 = [MEMORY[0x1E696AB08] newlineCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB670] range:{a3, a4}];
        v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v16];
        [*(a1 + 32) replaceCharactersInRange:a3 withAttributedString:{a4, v17}];

        goto LABEL_17;
      }

      if ([_TtC7ChatKit19CKRichLinkUtilities isValidURL:v7 containedWithin:v10])
      {
        v13 = v10;
        goto LABEL_16;
      }
    }

    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@)", v10, v7];
    goto LABEL_16;
  }

  [*(a1 + 32) removeAttribute:*MEMORY[0x1E69DB670] range:{a3, a4}];
LABEL_17:

LABEL_18:
}

+ (id)_trimUnwantedAttributesFromAttributedString:(id)string allowedAttributes:(id)attributes
{
  attributesCopy = attributes;
  v7 = [self attributedStringByTransformingNSLinksFromAttributedString:string];
  v8 = [v7 mutableCopy];

  [v8 ck_removeAttributesNotIn:attributesCopy];
  v9 = [v8 copy];

  return v9;
}

+ (id)trimUnwantedAttributesFromAttributedString:(id)string
{
  v4 = MEMORY[0x1E696AAB0];
  stringCopy = string;
  ck_defaultAllowedAttributesForComposition = [v4 ck_defaultAllowedAttributesForComposition];
  v7 = [self _trimUnwantedAttributesFromAttributedString:stringCopy allowedAttributes:ck_defaultAllowedAttributesForComposition];

  return v7;
}

+ (BOOL)isRTFDocumentWithItemProvider:(id)provider
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = [provider registeredTypeIdentifiers];
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    v6 = *MEMORY[0x1E6982F90];
    v7 = *MEMORY[0x1E6982F98];
    v8 = *MEMORY[0x1E6982DC0];
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        identifier = [v6 identifier];
        if ([v10 isEqualToString:identifier])
        {
          goto LABEL_14;
        }

        identifier2 = [v7 identifier];
        if ([v10 isEqualToString:identifier2])
        {

LABEL_14:
LABEL_15:
          v15 = 1;
          goto LABEL_16;
        }

        identifier3 = [v8 identifier];
        v14 = [v10 isEqualToString:identifier3];

        if (v14)
        {
          goto LABEL_15;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      v15 = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

+ (void)_pasteAttributedStringWithItemProvider:(id)provider builderContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  providerCopy = provider;
  v11 = objc_opt_class();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke;
  v14[3] = &unk_1E72F1A50;
  v16 = handlerCopy;
  selfCopy = self;
  v15 = contextCopy;
  v12 = handlerCopy;
  v13 = contextCopy;
  [self __ck_valueForItemClass:v11 forItemProvider:providerCopy completion:v14];
}

void __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [MEMORY[0x1E696AAB0] ck_defaultAllowedAttributesForComposition];
  v9 = [v8 mutableCopy];

  if (([*(a1 + 32) supportsExpressiveText] & 1) == 0)
  {
    [v9 removeObject:*MEMORY[0x1E69A7CF8]];
    [v9 removeObject:*MEMORY[0x1E69A7CF0]];
    [v9 removeObject:*MEMORY[0x1E69A7D00]];
    [v9 removeObject:*MEMORY[0x1E69A7D18]];
    [v9 removeObject:*MEMORY[0x1E69A7D08]];
  }

  v10 = [*(a1 + 48) _trimUnwantedAttributesFromAttributedString:v5 allowedAttributes:v9];

  v11 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  v12 = [v11 isExpressiveTextEnabled];

  if (v12 && [*(a1 + 32) canUseRichTextAttributes])
  {
    v13 = [v10 mutableCopy];
    [v13 ck_replaceBIUSWithIMTextStyles];
    v14 = [v13 copy];

    v10 = v14;
  }

  if ([*(a1 + 32) wantsInlinedRichLinks])
  {
    v15 = [v10 ck_attributedStringByPostProcessingURLTextForRichLinks];

    v10 = v15;
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v16 = [v10 length];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke_2;
  v21[3] = &unk_1E72F1A28;
  v17 = v7;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  v24 = v25;
  [v18 enumerateAttributesInRange:0 options:v16 usingBlock:{0, v21}];
  v19 = [*(a1 + 48) finalCompositionFromAllCompositions:v17];
  v20 = *(a1 + 40);
  if (v20)
  {
    (*(v20 + 16))(v20, v19, 0);
  }

  _Block_object_dispose(v25, 8);
}

void __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = [v7 objectForKey:*MEMORY[0x1E69A6880]];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 objectForKey:*MEMORY[0x1E69A6898]];
    v11 = [v9 objectForKey:*MEMORY[0x1E69A68A0]];
    v12 = [v9 objectForKey:*MEMORY[0x1E69A6890]];
    v52 = 0;
    v13 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v10 options:1 error:&v52];
    v14 = v52;
    v15 = v14;
    if (v13)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 0;
    }

    if (v16)
    {
      v21 = +[CKMediaObjectManager sharedInstance];
      v22 = [v21 mediaObjectWithData:v13 UTIType:v12 filename:v11 transcoderUserInfo:0];

      v23 = *(a1 + 32);
      v24 = [CKComposition compositionWithMediaObject:v22 subject:0];
      [v23 addObject:v24];
    }

    else if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v15 localizedDescription];
        *buf = 138413058;
        *&buf[4] = v12;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        v54 = v10;
        v55 = 2112;
        v56 = v18;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Unable to load map vCard data for uti type: %@, mapName: %@, URL: %@ with error: %@", buf, 0x2Au);
      }
    }

    goto LABEL_15;
  }

  v10 = [v7 objectForKey:*MEMORY[0x1E69DB5F8]];
  v11 = [v7 objectForKeyedSubscript:@"EmbeddedRichLinkConfiguration"];
  if (v11)
  {
    v19 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4}];
    v20 = [[CKComposition alloc] initWithText:v19 subject:0];
    [*(a1 + 32) addObject:v20];
    *(*(*(a1 + 48) + 8) + 24) = 0;
LABEL_12:

    goto LABEL_15;
  }

  if (!v10)
  {
    v19 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4}];
    v20 = [v19 ck_attributedStringByRemovingUnsupportedCompositionAttributes];
    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      v45 = [*(a1 + 32) lastObject];
      v31 = objc_alloc(MEMORY[0x1E696AD40]);
      v32 = [v45 text];
      v33 = [v31 initWithAttributedString:v32];

      [(CKComposition *)v33 appendAttributedString:v20];
      [*(a1 + 32) removeLastObject];

      v20 = v33;
    }

    v34 = [[CKComposition alloc] initWithText:v20 subject:0];
    [*(a1 + 32) addObject:v34];
    *(*(*(a1 + 48) + 8) + 24) = 1;

    goto LABEL_12;
  }

  v25 = [v10 fileType];
  v26 = [v25 isEqualToString:@"public.url-name"];

  if (v26)
  {
LABEL_28:
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_15;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v54) = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke_527;
  v49[3] = &unk_1E72EF8E0;
  v51 = buf;
  v27 = *(a1 + 40);
  v50 = *(a1 + 32);
  [v27 enumerateAttribute:@"com.apple.MobileSMS.PluginPayload" inRange:a3 options:a4 usingBlock:{0, v49}];
  if (*(*&buf[8] + 24))
  {
LABEL_27:

    _Block_object_dispose(buf, 8);
    goto LABEL_28;
  }

  v28 = [v10 contents];

  if (v28)
  {
    v44 = +[CKMediaObjectManager sharedInstance];
    v29 = [v10 contents];
    v30 = [v10 fileType];
    v43 = [v44 mediaObjectWithData:v29 UTIType:v30 filename:0 transcoderUserInfo:0];
LABEL_26:

    v37 = *(a1 + 40);
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke_528;
    v46[3] = &unk_1E72EF890;
    v38 = v43;
    v47 = v38;
    [v37 enumerateAttribute:@"com.apple.MobileSMS.appendedURL" inRange:a3 options:a4 usingBlock:{0, v46}];
    v39 = *(a1 + 32);
    v40 = [CKComposition compositionWithMediaObject:v38 subject:0];
    [v39 addObject:v40];

    goto LABEL_27;
  }

  v35 = [v10 fileWrapper];

  if (v35)
  {
    v44 = [v10 fileWrapper];
    v29 = [v44 preferredFilename];
    v30 = +[CKMediaObjectManager sharedInstance];
    v42 = [v44 regularFileContents];
    v36 = IMUTITypeForFilename();
    v43 = [v30 mediaObjectWithData:v42 UTIType:v36 filename:v29 transcoderUserInfo:0];

    goto LABEL_26;
  }

  if (IMOSLoggingEnabled())
  {
    v41 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *v48 = 0;
      _os_log_impl(&dword_19020E000, v41, OS_LOG_TYPE_INFO, "Pasted text attachment has no content!", v48, 2u);
    }
  }

  _Block_object_dispose(buf, 8);
LABEL_15:
}

void __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke_527(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    v3 = [CKPluginDisplayContainer unarchiveFromData:a2 error:0];
    if (v3)
    {
      v14 = v3;
      v4 = [v3 pluginPayload];
      v5 = [v4 pluginBundleID];
      v6 = [v5 isEqualToString:*MEMORY[0x1E69A6A18]];

      if (v6)
      {
        v7 = [v14 pluginPayload];
        v8 = [v7 data];
        v9 = [v14 pluginPayload];
        v10 = [v9 attachments];
        v11 = IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs();

        if (v11)
        {
          v12 = [v14 pluginPayload];
          [v12 setData:v11];
        }
      }

      v13 = [CKComposition compositionWithPluginDisplayContainer:v14 subject:0];
      [*(a1 + 32) addObject:v13];

      v3 = v14;
    }
  }
}

void __103__CKComposition_UIPasteboard___pasteAttributedStringWithItemProvider_builderContext_completionHandler___block_invoke_528(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    if (IMOSLoggingEnabled())
    {
      v4 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v3;
        _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "appendedData %@", &v12, 0xCu);
      }
    }

    v5 = [v3 absoluteString];
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v5;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "appendedPath %@", &v12, 0xCu);
      }
    }

    if (v5)
    {
      v7 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5];
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          v12 = 138412290;
          v13 = v7;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "appendedVideoURL %@", &v12, 0xCu);
        }
      }

      if (v7)
      {
        v9 = [*(a1 + 32) fileURL];
        v10 = CKGetTmpPathForAppendedVideoURL(v7, v9);

        v11 = [*(a1 + 32) transferGUID];
        CKLinkAndCreateAppendedVideoTransfer(v10, v7, v11);
      }
    }
  }
}

+ (void)_pasteRTFDocumentWithItemProvider:(id)provider builderContext:(id)context completionHandler:(id)handler
{
  providerCopy = provider;
  contextCopy = context;
  handlerCopy = handler;
  if ([self isRTFDocumentWithItemProvider:providerCopy])
  {
    [self _pasteAttributedStringWithItemProvider:providerCopy builderContext:contextCopy completionHandler:handlerCopy];
  }
}

+ (void)createPluginPayloadCompositionFromItemProvider:(id)provider builderContext:(id)context shareOptions:(id)options completionHandler:(id)handler
{
  providerCopy = provider;
  contextCopy = context;
  optionsCopy = options;
  handlerCopy = handler;
  if (([providerCopy hasItemConformingToTypeIdentifier:@"com.apple.cloudkit.sharingsupport.pre"] & 1) != 0 || objc_msgSend(providerCopy, "hasItemConformingToTypeIdentifier:", @"com.apple.cloudkit.sharingsupport.post"))
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __124__CKComposition_UIPasteboard__createPluginPayloadCompositionFromItemProvider_builderContext_shareOptions_completionHandler___block_invoke;
    v19[3] = &unk_1E72F16B8;
    v20 = handlerCopy;
    [self createPluginPayloadCompositionFromCloudKitItemProvider:providerCopy collaborationShareOptions:optionsCopy completionHandler:v19];
    v14 = v20;
  }

  else if ([providerCopy hasItemConformingToTypeIdentifier:*MEMORY[0x1E697B770]])
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __124__CKComposition_UIPasteboard__createPluginPayloadCompositionFromItemProvider_builderContext_shareOptions_completionHandler___block_invoke_530;
    v17[3] = &unk_1E72F16B8;
    v18 = handlerCopy;
    [self createPluginPayloadCompositionFromCollaborativeItemProvider:providerCopy collaborationShareOptions:optionsCopy completionHandler:v17];
    v14 = v18;
  }

  else
  {
    if (![providerCopy hasItemConformingToTypeIdentifier:*MEMORY[0x1E6963800]])
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
      goto LABEL_5;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __124__CKComposition_UIPasteboard__createPluginPayloadCompositionFromItemProvider_builderContext_shareOptions_completionHandler___block_invoke_531;
    v15[3] = &unk_1E72F16B8;
    v16 = handlerCopy;
    [self _createPluginPayloadCompositionFromFileItemProvider:providerCopy builderContext:contextCopy collaborationShareOptions:optionsCopy completionHandler:v15];
    v14 = v16;
  }

LABEL_5:
}

void __124__CKComposition_UIPasteboard__createPluginPayloadCompositionFromItemProvider_builderContext_shareOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Returning composition for CKShare.", buf, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "CloudKit returned nil composition.", v11, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

void __124__CKComposition_UIPasteboard__createPluginPayloadCompositionFromItemProvider_builderContext_shareOptions_completionHandler___block_invoke_530(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Returning composition for SWShareableContent.", buf, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Item Provider cannot load any type identifiers we tried. Returning nil composition.", v11, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

void __124__CKComposition_UIPasteboard__createPluginPayloadCompositionFromItemProvider_builderContext_shareOptions_completionHandler___block_invoke_531(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = IMOSLoggingEnabled();
  if (v5)
  {
    if (v7)
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Returning composition for FP.", buf, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (v7)
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "File Provider returned nil composition.", v11, 2u);
      }
    }

    v9 = *(*(a1 + 32) + 16);
  }

  v9();
}

+ (void)_createPluginPayloadCompositionFromFileItemProvider:(id)provider builderContext:(id)context collaborationShareOptions:(id)options completionHandler:(id)handler
{
  providerCopy = provider;
  contextCopy = context;
  optionsCopy = options;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "IN _createPluginPayloadCompositionFromFileItemProvider", buf, 2u);
    }
  }

  v15 = [providerCopy registeredTypeIdentifiersWithFileOptions:1];
  *buf = 0;
  v40 = buf;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__30;
  v43 = __Block_byref_object_dispose__30;
  firstObject = [v15 firstObject];
  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x3032000000;
  v37[3] = __Block_byref_object_copy__30;
  v37[4] = __Block_byref_object_dispose__30;
  v38 = [self richestMediaTypeForItemProvider:providerCopy];
  if (*(v40 + 5))
  {
    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke;
    aBlock[3] = &unk_1E72F1BB8;
    objc_copyWeak(v35, location);
    v35[1] = self;
    v16 = providerCopy;
    v29 = v16;
    v33 = v37;
    v30 = contextCopy;
    v32 = handlerCopy;
    v31 = optionsCopy;
    v34 = buf;
    v17 = _Block_copy(aBlock);
    if ([*(v40 + 5) isEqualToString:*MEMORY[0x1E697B750]] && objc_msgSend(v16, "hasItemConformingToTypeIdentifier:", @"public.file-url"))
    {
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_3_589;
      v26[3] = &unk_1E72F1C08;
      v27 = v17;
      [v16 loadItemForTypeIdentifier:@"public.file-url" options:0 completionHandler:v26];
      v18 = &v27;
    }

    else
    {
      v19 = *(v40 + 5);
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_594;
      v24[3] = &unk_1E72F1C58;
      v25 = v17;
      v20 = [v16 loadInPlaceFileRepresentationForTypeIdentifier:v19 completionHandler:v24];
      v18 = &v25;
    }

    objc_destroyWeak(v35);
    objc_destroyWeak(location);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v21 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Item is not of type openInPlaceType, so we can't offer Collaboration.", location, 2u);
      }
    }

    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_596;
    v22[3] = &unk_1E72ED700;
    v23 = handlerCopy;
    [self _requestCompositionFromItemProviderForNonCollaboration:providerCopy builderContext:contextCopy completion:v22];
  }

  _Block_object_dispose(v37, 8);

  _Block_object_dispose(buf, 8);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 80));

  if (WeakRetained)
  {
    if (v7 && !v8 && a3)
    {
      *buf = 0;
      v33 = buf;
      v34 = 0x3032000000;
      v35 = __Block_byref_object_copy__30;
      v36 = __Block_byref_object_dispose__30;
      v37 = 0;
      v10 = *(a1 + 88);
      v11 = *(*(*(a1 + 64) + 8) + 40);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2;
      v23[3] = &unk_1E72F1B90;
      v24 = v12;
      objc_copyWeak(&v31, (a1 + 80));
      v25 = *(a1 + 40);
      v29 = buf;
      v28 = *(a1 + 56);
      v26 = v7;
      v14 = *(a1 + 48);
      v15 = *(a1 + 72);
      v27 = v14;
      v30 = v15;
      [v10 requestMediaObjectForItemProvider:v24 type:v11 builderContext:v13 completion:v23];

      objc_destroyWeak(&v31);
      _Block_object_dispose(buf, 8);
      v16 = v37;
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Item is not of type openInPlaceType, so we can't offer Collaboration.", buf, 2u);
        }
      }

      v18 = objc_loadWeakRetained((a1 + 80));
      v19 = *(a1 + 32);
      v20 = *(a1 + 40);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_586;
      v21[3] = &unk_1E72ED700;
      v22 = *(a1 + 56);
      [v18 _requestCompositionFromItemProviderForNonCollaboration:v19 builderContext:v20 completion:v21];

      v16 = v22;
    }
  }
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v45 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a2);
    v11 = objc_opt_class();
    if (([v11 isEqual:objc_opt_class()] & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v42 = objc_opt_class();
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Class %@ should go through the non collaborative flow", buf, 0xCu);
        }
      }

      v13 = *(a1 + 64);
      v14 = [CKComposition compositionWithMediaObject:v8 subject:0];
      (*(v13 + 16))(v13, v14, v10);

      goto LABEL_20;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *(a1 + 32);
        v17 = [v10 localizedDescription];
        *buf = 138412546;
        v42 = v16;
        v43 = 2112;
        v44 = v17;
        _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Failed to get mediaObject for itemProvider: %@, error: %@", buf, 0x16u);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 88));
    v19 = *(a1 + 32);
    v20 = *(a1 + 40);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_532;
    v40[3] = &unk_1E72F1A78;
    v40[4] = *(a1 + 72);
    [WeakRetained _requestCompositionFromItemProviderForNonCollaboration:v19 builderContext:v20 completion:v40];
  }

  v21 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:*(a1 + 48) data:0];
  v22 = [*(a1 + 48) startAccessingSecurityScopedResource];
  if (IMOSLoggingEnabled())
  {
    v23 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = @"NO";
      if (v22)
      {
        v24 = @"YES";
      }

      *buf = 138412290;
      v42 = v24;
      _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "File is inPlace and it's from a fileProvider. Start accessing security scoped resource: %@", buf, 0xCu);
    }
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_535;
  block[3] = &unk_1E72F1B68;
  objc_copyWeak(&v38, (a1 + 88));
  v25 = *(a1 + 32);
  v26 = *(a1 + 40);
  v36 = *(a1 + 64);
  v27 = *(a1 + 56);
  v28 = *(a1 + 48);
  *&v29 = v27;
  *(&v29 + 1) = v28;
  *&v30 = v25;
  *(&v30 + 1) = v26;
  v33 = v30;
  v34 = v29;
  v35 = v21;
  v37 = *(a1 + 72);
  v39 = v22;
  v31 = v21;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  objc_destroyWeak(&v38);
LABEL_20:
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_532(uint64_t a1, void *a2)
{
  v6 = [a2 mediaObjects];
  v3 = [v6 firstObject];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_535(uint64_t a1)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_536;
  aBlock[3] = &unk_1E72F1B40;
  objc_copyWeak(&v27, (a1 + 96));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  *&v7 = v5;
  *(&v7 + 1) = v6;
  *&v8 = v2;
  *(&v8 + 1) = v3;
  v23 = v8;
  v24 = v7;
  v20 = *(a1 + 80);
  *&v9 = *(a1 + 64);
  *(&v9 + 1) = v4;
  *&v10 = v20;
  *(&v10 + 1) = *(a1 + 88);
  v25 = v9;
  v26 = v10;
  v28 = *(a1 + 104);
  v11 = _Block_copy(aBlock);
  if (CKCloudKitPostShareType_block_invoke__pred_SWCollaborationMetadataForDocumentURLSharedWithYouCore != -1)
  {
    __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_535_cold_1();
  }

  if (CKCloudKitPostShareType_block_invoke__pred_FPProviderForShareURLFileProvider != -1)
  {
    __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_535_cold_2();
  }

  if (CKCloudKitPostShareType_block_invoke__SWCollaborationMetadataForDocumentURL && CKCloudKitPostShareType_block_invoke__FPProviderForShareURL)
  {
    if (IMOSLoggingEnabled())
    {
      v12 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Invoking SWCollaborationMetadataForDocumentURL", buf, 2u);
      }
    }

    v13 = CKCloudKitPostShareType_block_invoke__SWCollaborationMetadataForDocumentURL;
    v14 = *(a1 + 56);
    v15 = _Block_copy(v11);
    v13(v14, v15);
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "CKComposition_UIPasteboard_Collaboration: We're running on a build without SWCollaborationMetadataForDocumentURL, or the dependent FileProvider change from rdar://89285840. Falling back to the legacy SPI flow to retrieve collaboration metadata", buf, 2u);
      }
    }

    if (CKCloudKitPostShareType_block_invoke__pred_FPCollaborationMetadataForDocumentURL_PreliminaryFileProvider != -1)
    {
      __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_535_cold_3();
    }

    if (CKCloudKitPostShareType_block_invoke__FPCollaborationMetadataForDocumentURL_Preliminary)
    {
      if (IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Invoking FPCollaborationMetadataForDocumentURL_Preliminary", buf, 2u);
        }
      }

      v18 = CKCloudKitPostShareType_block_invoke__FPCollaborationMetadataForDocumentURL_Preliminary;
      v19 = *(a1 + 56);
      v15 = _Block_copy(v11);
      v18(v19, v15);
    }

    else
    {
      v15 = IMLogHandleForCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_535_cold_4();
      }
    }
  }

  objc_destroyWeak(&v27);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_536(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v6;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Error while getting collaborationMetadata: %@.", &buf, 0xCu);
      }
    }

    WeakRetained = objc_loadWeakRetained((a1 + 96));
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_537;
    v37[3] = &unk_1E72ED700;
    v38 = *(a1 + 72);
    [WeakRetained _requestCompositionFromItemProviderForNonCollaboration:v9 builderContext:v10 completion:v37];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v44 = 0x3032000000;
    v45 = __Block_byref_object_copy__30;
    v46 = __Block_byref_object_dispose__30;
    v47 = 0;
    v11 = *(a1 + 48);
    if (v11)
    {
      v12 = v11;
      v13 = v47;
      v47 = v12;
    }

    else if (objc_opt_respondsToSelector())
    {
      v13 = [v5 defaultShareOptions];
      v14 = [v13 copy];
      v15 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v14;
    }

    else
    {
      v16 = MEMORY[0x1E697B720];
      v13 = [v5 defaultOptions];
      v17 = [v13 copy];
      v18 = [v16 shareOptionsWithOptionsGroups:v17];
      v19 = *(*(&buf + 1) + 40);
      *(*(&buf + 1) + 40) = v18;
    }

    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *(*(&buf + 1) + 40);
        *v39 = 138412546;
        *&v39[4] = v5;
        *&v39[12] = 2112;
        *&v39[14] = v21;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "FileProvider returned collaborationMetadata: %@. Share options: %@", v39, 0x16u);
      }
    }

    *v39 = 0;
    *&v39[8] = v39;
    *&v39[16] = 0x3032000000;
    v40 = __Block_byref_object_copy__30;
    v41 = __Block_byref_object_dispose__30;
    v42 = v5;
    v22 = MEMORY[0x1E6994FC8];
    v23 = *(a1 + 56);
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_542;
    v26[3] = &unk_1E72F1B18;
    v25 = *(a1 + 72);
    v24 = v25;
    v31 = v25;
    objc_copyWeak(&v35, (a1 + 96));
    v27 = *(a1 + 32);
    v28 = *(a1 + 40);
    v32 = v39;
    v29 = *(a1 + 64);
    p_buf = &buf;
    v34 = *(a1 + 88);
    v30 = *(a1 + 56);
    v36 = *(a1 + 104);
    [v22 userNameAndEmail:v23 containerSetupInfo:0 completionHandler:v26];

    objc_destroyWeak(&v35);
    _Block_object_dispose(v39, 8);

    _Block_object_dispose(&buf, 8);
  }
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_537(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_538;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_542(uint64_t a1, void *a2, void *a3, void *a4)
{
  v64 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = IMOSLoggingEnabled();
  if (v9)
  {
    if (v10)
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v63 = v9;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Error while trying to get the user name and email : %@.", buf, 0xCu);
      }
    }

    if (*(*(*(a1 + 72) + 8) + 40))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_543;
      block[3] = &unk_1E72F1AA0;
      v12 = *(a1 + 64);
      v13 = *(a1 + 72);
      v60 = v12;
      v61 = v13;
      v9 = v9;
      v59 = v9;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v14 = v60;
    }

    else
    {
      WeakRetained = objc_loadWeakRetained((a1 + 104));
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_544;
      v56[3] = &unk_1E72ED700;
      v57 = *(a1 + 64);
      [WeakRetained _requestCompositionFromItemProviderForNonCollaboration:v24 builderContext:v25 completion:v56];

      v14 = v57;
    }

    goto LABEL_45;
  }

  if (v10)
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v63 = v8;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Setting initiatorHandle to: %@.", buf, 0xCu);
    }
  }

  [*(*(*(a1 + 80) + 8) + 40) setInitiatorHandle:v8];
  v14 = objc_alloc_init(MEMORY[0x1E696ADF8]);
  v16 = [v14 personNameComponentsFromString:v7];
  [*(*(*(a1 + 80) + 8) + 40) setInitiatorNameComponents:v16];
  [*(a1 + 48) setCollaborationMetadata:*(*(*(a1 + 80) + 8) + 40)];
  [*(a1 + 48) setPayloadCollaborationType:0];
  v17 = [*(*(*(a1 + 88) + 8) + 40) optionsGroups];

  v18 = IMOSLoggingEnabled();
  if (!v17)
  {
    if (v18)
    {
      v26 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v26, OS_LOG_TYPE_INFO, "FileProvider returned nil options so we don't offer collaboration.", buf, 2u);
      }
    }

    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_566;
    v47[3] = &unk_1E72F1AA0;
    v27 = *(a1 + 64);
    v28 = *(a1 + 72);
    v49 = v27;
    v50 = v28;
    v48 = 0;
    dispatch_async(MEMORY[0x1E69E96A0], v47);

    v9 = 0;
    v29 = v49;
    goto LABEL_42;
  }

  if (v18)
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = *(*(*(a1 + 88) + 8) + 40);
      *buf = 138412290;
      v63 = v20;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Received options from File Provider. Share options: %@", buf, 0xCu);
    }
  }

  if (([*(*(*(a1 + 96) + 8) + 40) containsString:@"com.apple.iwork"] & 1) == 0)
  {
    v30 = objc_alloc(MEMORY[0x1E6963630]);
    v31 = *(a1 + 56);
    v55 = 0;
    v32 = [v30 initWithURL:v31 error:&v55];
    v22 = v55;
    v33 = [v32 claimRecord];
    v34 = objc_opt_respondsToSelector();

    if (v34)
    {
      v35 = [v32 claimRecord];
      v36 = [v35 defaultShareModeCollaboration];

      v21 = v36 ^ 1u;
      if (!v22)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v21 = 0;
      if (!v22)
      {
LABEL_32:

        goto LABEL_33;
      }
    }

    v37 = IMLogHandleForCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_542_cold_1(v22, v37);
    }

    goto LABEL_32;
  }

  v21 = 0;
  v22 = 0;
LABEL_33:
  [*(a1 + 48) setSendAsCopy:v21];
  if (objc_opt_respondsToSelector())
  {
    v38 = [*(*(*(a1 + 88) + 8) + 40) summary];
    if (v38)
    {
      [*(a1 + 48) setCollaborationOptionsSummary:v38];
    }

    else
    {
      v39 = CKFrameworkBundle();
      v40 = [v39 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
      [*(a1 + 48) setCollaborationOptionsSummary:v40];
    }
  }

  v41 = [MEMORY[0x1E69673B0] defaultManager];
  v42 = [v41 itemForURL:*(a1 + 56) error:0];
  v29 = [v42 providerID];

  if ([v29 fp_isiCloudDriveIdentifier])
  {
    v43 = 1;
  }

  else
  {
    v43 = 3;
  }

  [*(a1 + 48) setPayloadCollaborationType:v43];
  v44 = *(a1 + 48);
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_564;
  v51[3] = &unk_1E72F1AF0;
  v54 = *(a1 + 88);
  v46 = *(a1 + 64);
  v45 = v46;
  v53 = v46;
  v9 = v22;
  v52 = v9;
  [CKComposition compositionWithShelfPluginPayload:v44 completionHandler:v51];

LABEL_42:
  if (*(a1 + 112) == 1)
  {
    [*(a1 + 56) stopAccessingSecurityScopedResource];
  }

LABEL_45:
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_543(void *a1)
{
  v2 = a1[5];
  v3 = [CKComposition compositionWithMediaObject:*(*(a1[6] + 8) + 40) subject:0];
  (*(v2 + 16))(v2, v3, a1[4]);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_544(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_3;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [CKComposition compositionWithShelfMediaObject:*(*(*(a1 + 48) + 8) + 40)];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_565;
  block[3] = &unk_1E72F1AC8;
  v8 = v3;
  v9 = v4;
  v12 = *(a1 + 56);
  v11 = *(a1 + 40);
  v10 = *(a1 + 32);
  v5 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_565(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionByAppendingComposition:*(a1 + 40)];
  v3 = [v2 compositionWithCollaborationShareOptions:*(*(*(a1 + 64) + 8) + 40)];

  (*(*(a1 + 56) + 16))();
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_566(void *a1)
{
  v2 = a1[5];
  v3 = [CKComposition compositionWithMediaObject:*(*(a1[6] + 8) + 40) subject:0];
  (*(v2 + 16))(v2, v3, a1[4]);
}

void *__142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_569()
{
  result = MEMORY[0x193AF5ED0]("SWCollaborationMetadataForDocumentURL", @"SharedWithYouCore");
  CKCloudKitPostShareType_block_invoke__SWCollaborationMetadataForDocumentURL = result;
  return result;
}

uint64_t __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_3_574()
{
  result = MEMORY[0x193AF5ED0]("FPProviderForShareURL", @"FileProvider");
  CKCloudKitPostShareType_block_invoke__FPProviderForShareURL = result;
  return result;
}

void *__142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_581()
{
  result = MEMORY[0x193AF5ED0]("FPCollaborationMetadataForDocumentURL_Preliminary", @"FileProvider");
  CKCloudKitPostShareType_block_invoke__FPCollaborationMetadataForDocumentURL_Preliminary = result;
  return result;
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_586(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_587;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_3_589(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = v5;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Loading NSItemProvider URL: %@, error: %@", buf, 0x16u);
    }
  }

  v8 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
  v15 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_591;
  v12[3] = &unk_1E72F1BE0;
  v9 = *(a1 + 32);
  v13 = v6;
  v14 = v9;
  v10 = v6;
  [v8 coordinateReadingItemAtURL:v5 options:1 error:&v15 byAccessor:v12];
  v11 = v15;
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_594(uint64_t a1, void *a2, int a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a4;
  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"NO";
      *buf = 138412802;
      v21 = v7;
      v22 = 2112;
      if (a3)
      {
        v10 = @"YES";
      }

      v23 = v10;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Loading NSItemProvider URL: %@, isInPlace:%@, error: %@", buf, 0x20u);
    }
  }

  v11 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_595;
  v15[3] = &unk_1E72F1C30;
  v12 = *(a1 + 32);
  v18 = a3;
  v16 = v8;
  v17 = v12;
  v13 = v8;
  [v11 coordinateReadingItemAtURL:v7 options:1 error:&v19 byAccessor:v15];
  v14 = v19;
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_596(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_2_597;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (void)createPluginPayloadCompositionFromCloudKitItemProvider:(id)provider collaborationShareOptions:(id)options completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  optionsCopy = options;
  handlerCopy = handler;
  v10 = @"com.apple.cloudkit.sharingsupport.pre";
  if ([providerCopy hasItemConformingToTypeIdentifier:@"com.apple.cloudkit.sharingsupport.pre"])
  {
    v11 = @"CKPreSharingContext";
LABEL_5:
    v12 = NSClassFromString(&v11->isa);
    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v27 = v10;
        _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Loading Cloud Kit content for type identifier: %@", buf, 0xCu);
      }
    }

    v14 = objc_opt_class();
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke;
    v22[3] = &unk_1E72F1CD0;
    v23 = optionsCopy;
    v24 = handlerCopy;
    v25 = v12;
    v15 = handlerCopy;
    v16 = [providerCopy loadObjectOfClass:v14 completionHandler:v22];

    v17 = &v23;
    goto LABEL_15;
  }

  v10 = @"com.apple.cloudkit.sharingsupport.post";
  if ([providerCopy hasItemConformingToTypeIdentifier:@"com.apple.cloudkit.sharingsupport.post"])
  {
    v11 = @"CKPostSharingContext";
    goto LABEL_5;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "Type identifer is not CKCloudKitPreShareType or CKCloudKitPostShareType. Returning nil composition;", buf, 2u);
    }
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_616;
  v20[3] = &unk_1E72EBDB8;
  v17 = &v21;
  v21 = handlerCopy;
  v19 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v20);
LABEL_15:
}

void __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v61 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v43 = a3;
  v41 = v4;
  if (v4)
  {
    v46 = v4;
    v5 = [v46 share];
    v47 = [v5 URL];
    v34 = [v46 allowedOptions];
    v6 = *(a1 + 32);
    if (v6)
    {
      v7 = v6;
    }

    else
    {
      if (objc_opt_respondsToSelector())
      {
        v10 = [v34 shareOptions];
        v11 = [v10 copy];
      }

      else
      {
        v12 = MEMORY[0x1E697B720];
        v10 = [v34 optionsGroups];
        v11 = [v12 shareOptionsWithOptionsGroups:v10];
      }

      v7 = v11;
    }

    v35 = [v47 absoluteString];
    v44 = [v47 fragment];
    v38 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695B828]];
    v40 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695B830]];
    if (v40)
    {
      v13 = [MEMORY[0x1E6982C40] typeWithIdentifier:?];
    }

    else
    {
      v13 = 0;
    }

    v14 = v44;
    if (![v13 conformsToType:*MEMORY[0x1E6982E48]] || !objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982D60]) || !objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982D80]) || (objc_msgSend(v13, "conformsToType:", *MEMORY[0x1E6982FF8]) & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v56 = v13;
          _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Setting contentType to nil for a non file type. was: %@", buf, 0xCu);
        }
      }

      v13 = 0;
      v14 = v44;
    }

    if (v14)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%@", v14];
      v36 = [v35 stringByReplacingOccurrencesOfString:v16 withString:&stru_1F04268F8];
    }

    else
    {
      v36 = &stru_1F04268F8;
    }

    v39 = [v5 currentUserParticipant];
    v17 = [v39 userIdentity];
    v42 = [v17 lookupInfo];
    v18 = [v42 phoneNumber];
    v19 = v18;
    if (v18)
    {
      v37 = v18;
    }

    else
    {
      v37 = [v42 emailAddress];
    }

    v20 = [v17 nameComponents];
    v21 = [MEMORY[0x1E697B700] instancesRespondToSelector:sel_initWithCollaborationIdentifier_title_defaultShareOptions_creationDate_contentType_initiatorHandle_initiatorNameComponents_containerSetupInfo_sourceProcessData_];
    v22 = objc_alloc(MEMORY[0x1E697B700]);
    if (v21)
    {
      v23 = [v46 containerSetupInfo];
      v24 = [v22 initWithCollaborationIdentifier:v36 title:v38 defaultShareOptions:v7 creationDate:0 contentType:v13 initiatorHandle:v37 initiatorNameComponents:v20 containerSetupInfo:v23 sourceProcessData:0];
    }

    else
    {
      v23 = [v7 optionsGroups];
      v24 = [v22 initWithCollaborationIdentifier:v36 title:v38 defaultOptions:v23 creationDate:0 contentType:v13 initiatorHandle:v37 initiatorNameComponents:v20];
    }

    v25 = v24;

    v26 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v47 data:0];
    [v26 setPayloadCollaborationType:2];
    [v26 setCloudKitShare:v5];
    [v26 setCollaborationMetadata:v25];
    if (objc_opt_respondsToSelector())
    {
      v27 = [v7 summary];
      if (v27)
      {
        [v26 setCollaborationOptionsSummary:v27];
      }

      else
      {
        v28 = CKFrameworkBundle();
        v29 = [v28 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
        [v26 setCollaborationOptionsSummary:v29];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v56 = v47;
        v57 = 2112;
        v58 = v7;
        v59 = 2112;
        v60 = v25;
        _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Received URL:%@ , Sharing Optons: %@, Metadata: %@", buf, 0x20u);
      }
    }

    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_613;
    v51[3] = &unk_1E72F1CA8;
    v52 = v7;
    v31 = *(a1 + 40);
    v53 = v43;
    v54 = v31;
    v32 = v43;
    v33 = v7;
    [CKComposition compositionWithShelfPluginPayload:v26 completionHandler:v51];
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_cold_1(a1, v43, v8);
    }

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_614;
    block[3] = &unk_1E72EE5D8;
    v9 = *(a1 + 40);
    v49 = v43;
    v50 = v9;
    v46 = v43;
    dispatch_async(MEMORY[0x1E69E96A0], block);

    v5 = v50;
  }
}

void __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_613(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_2;
  v5[3] = &unk_1E72F1C80;
  v6 = v3;
  v7 = a1[4];
  v9 = a1[6];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionWithCollaborationShareOptions:*(a1 + 40)];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_19020E000, v3, OS_LOG_TYPE_INFO, "Returning composition for CKShare. Composition.", v4, 2u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

+ (void)createPluginPayloadCompositionFromCollaborativeItemProvider:(id)provider collaborationShareOptions:(id)options completionHandler:(id)handler
{
  providerCopy = provider;
  optionsCopy = options;
  handlerCopy = handler;
  if (IMOSLoggingEnabled())
  {
    v10 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Loading SWY item provider", buf, 2u);
    }
  }

  v11 = objc_opt_class();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __135__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCollaborativeItemProvider_collaborationShareOptions_completionHandler___block_invoke;
  v15[3] = &unk_1E72F1960;
  v16 = optionsCopy;
  v17 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = [providerCopy loadObjectOfClass:v11 completionHandler:v15];
}

void __135__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCollaborativeItemProvider_collaborationShareOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Loading object of class _SWPendingCollaboration.", buf, 2u);
    }
  }

  v8 = v5;
  v9 = [v8 collaborationMetadata];
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    if (objc_opt_respondsToSelector())
    {
      v12 = [v9 defaultShareOptions];
      v11 = [v12 copy];
    }

    else
    {
      v13 = MEMORY[0x1E697B720];
      v12 = [v9 defaultOptions];
      v11 = [v13 shareOptionsWithOptionsGroups:v12];
    }
  }

  v14 = [v8 fileURL];
  v15 = [CKBrowserItemPayload createBrowserItemPayloadWithURL:v14 data:0];
  [v15 setCollaborationMetadata:v9];
  [v15 setPayloadCollaborationType:3];
  v16 = [v11 summary];
  if (v16)
  {
    [v15 setCollaborationOptionsSummary:v16];
  }

  else
  {
    v17 = CKFrameworkBundle();
    v18 = [v17 localizedStringForKey:@"DEFAULT_COLLABORATION_OPTIONS_SUMMARY" value:&stru_1F04268F8 table:@"ChatKit"];
    [v15 setCollaborationOptionsSummary:v18];
  }

  if (IMOSLoggingEnabled())
  {
    v19 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v28 = v14;
      v29 = 2112;
      v30 = v9;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_19020E000, v19, OS_LOG_TYPE_INFO, "Creating a composition with pluginPayload url: %@, metadata: %@, share options: %@", buf, 0x20u);
    }
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __135__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCollaborativeItemProvider_collaborationShareOptions_completionHandler___block_invoke_618;
  v23[3] = &unk_1E72F1CA8;
  v24 = v11;
  v20 = *(a1 + 40);
  v25 = v6;
  v26 = v20;
  v21 = v6;
  v22 = v11;
  [CKComposition compositionWithShelfPluginPayload:v15 completionHandler:v23];
}

void __135__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCollaborativeItemProvider_collaborationShareOptions_completionHandler___block_invoke_618(id *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __135__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCollaborativeItemProvider_collaborationShareOptions_completionHandler___block_invoke_2;
  v5[3] = &unk_1E72F1C80;
  v6 = v3;
  v7 = a1[4];
  v9 = a1[6];
  v8 = a1[5];
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __135__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCollaborativeItemProvider_collaborationShareOptions_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) compositionWithCollaborationShareOptions:*(a1 + 40)];
  (*(*(a1 + 56) + 16))();
}

+ (void)compositionFromItemProviders:(id)providers shareOptions:(id)options completionHandler:(id)handler
{
  providersCopy = providers;
  optionsCopy = options;
  handlerCopy = handler;
  if (![providersCopy count])
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __91__CKComposition_UIPasteboard__compositionFromItemProviders_shareOptions_completionHandler___block_invoke;
  v13[3] = &unk_1E72F1CF8;
  v15 = handlerCopy;
  selfCopy = self;
  v14 = optionsCopy;
  v11 = handlerCopy;
  v12 = optionsCopy;
  [providersCopy enumerateObjectsUsingBlock:v13];
}

void __91__CKComposition_UIPasteboard__compositionFromItemProviders_shareOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__CKComposition_UIPasteboard__compositionFromItemProviders_shareOptions_completionHandler___block_invoke_2;
  v5[3] = &unk_1E72F16B8;
  v4 = *(a1 + 48);
  v6 = *(a1 + 40);
  [v4 createPluginPayloadCompositionFromItemProvider:a2 builderContext:0 shareOptions:v3 completionHandler:v5];
}

void __91__CKComposition_UIPasteboard__compositionFromItemProviders_shareOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __91__CKComposition_UIPasteboard__compositionFromItemProviders_shareOptions_completionHandler___block_invoke_3;
  v5[3] = &unk_1E72ED1C8;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __91__CKComposition_UIPasteboard__compositionFromItemProviders_shareOptions_completionHandler___block_invoke_3(uint64_t result)
{
  if (*(result + 32))
  {
    return (*(*(result + 40) + 16))();
  }

  return result;
}

+ (void)compositionFromNonCollaborationItemProviders:(id)providers builderContext:(id)context completionHandler:(id)handler
{
  v57 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  contextCopy = context;
  handlerCopy = handler;
  v46 = 0;
  v47 = &v46;
  v48 = 0x2020000000;
  v49 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2020000000;
  v45 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x2020000000;
  v41[3] = [providersCopy count] - 1;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [providersCopy count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v12;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Beginning paste resolution for {%ld} given item providers.", &buf, 0xCu);
    }
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__30;
  v55 = __Block_byref_object_dispose__30;
  array = [MEMORY[0x1E695DF70] array];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke;
  v40[3] = &unk_1E72F1D20;
  v40[4] = &buf;
  [providersCopy enumerateObjectsUsingBlock:v40];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_2;
  v31[3] = &unk_1E72F1D48;
  selfCopy = self;
  v13 = contextCopy;
  v32 = v13;
  v14 = handlerCopy;
  v33 = v14;
  v34 = &v36;
  [providersCopy enumerateObjectsUsingBlock:v31];
  if (IMOSLoggingEnabled())
  {
    v15 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      if (*(v37 + 24))
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      *v50 = 138412290;
      v51 = v16;
      _os_log_impl(&dword_19020E000, v15, OS_LOG_TYPE_INFO, "Finished RTF evaluation – isRTF={%@}.", v50, 0xCu);
    }
  }

  if ((v37[3] & 1) == 0)
  {
    v17 = [MEMORY[0x1E695DFA8] set];
    wantsInlinedRichLinks = [v13 wantsInlinedRichLinks];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_620;
    v21[3] = &unk_1E72F1E60;
    p_buf = &buf;
    v26 = v41;
    selfCopy2 = self;
    v27 = &v42;
    v24 = v14;
    v30 = wantsInlinedRichLinks;
    v19 = v17;
    v22 = v19;
    v23 = v13;
    v28 = &v46;
    [providersCopy enumerateObjectsUsingBlock:v21];
  }

  if (*(v47 + 24) == 1 && (v43[3] & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *v50 = 0;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Tried all types, unable to resolve entire paste. Calling completion handler with nil.", v50, 2u);
      }
    }

    (*(v14 + 2))(v14, 0, 0);
  }

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v46, 8);
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(*(*(a1 + 32) + 8) + 40);
  v2 = +[CKComposition composition];
  [v1 addObject:v2];
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  if ([*(a1 + 56) isRTFDocumentWithItemProvider:?])
  {
    [*(a1 + 56) _pasteRTFDocumentWithItemProvider:v6 builderContext:*(a1 + 32) completionHandler:*(a1 + 40)];
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_620(uint64_t a1, void *a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [v5 registeredTypeIdentifiers];
      *buf = 134218242;
      v33 = a3;
      v34 = 2112;
      v35 = v7;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Resolving itemProvider at idx={%ld} with representations: %@", buf, 0x16u);
    }
  }

  v8 = *(a1 + 88);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_621;
  v28[3] = &unk_1E72F1D70;
  v9 = *(a1 + 64);
  v31 = a3;
  v30 = v9;
  v16 = *(a1 + 48);
  v10 = v16;
  v29 = v16;
  [v8 pluginDisplayContainerForItemProvider:v5 completion:v28];
  v11 = *(a1 + 88);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_623;
  v18[3] = &unk_1E72F1E38;
  v25 = a3;
  v23 = *(a1 + 64);
  v17 = *(a1 + 48);
  v12 = v17;
  v22 = v17;
  v26 = *(a1 + 88);
  v19 = v5;
  v27 = *(a1 + 96);
  v20 = *(a1 + 32);
  v13 = *(a1 + 40);
  v14 = *(a1 + 80);
  v21 = v13;
  v24 = v14;
  v15 = v5;
  [v11 mediaObjectForItemProvider:v15 completion:v18];
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_621(void *a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 pluginPayload];
    v10 = [v9 pluginBundleID];
    v11 = [v10 isEqualToString:*MEMORY[0x1E69A6A18]];

    if (v11)
    {
      v12 = [v8 pluginPayload];
      v13 = [v12 data];
      v14 = [v8 pluginPayload];
      v15 = [v14 attachments];
      v16 = IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs();

      if (v16)
      {
        v17 = [v8 pluginPayload];
        [v17 setData:v16];
      }
    }

    v18 = +[CKComposition composition];
    v19 = [v18 compositionByAppendingPluginDisplayContainer:v8];

    [*(*(a1[5] + 8) + 40) insertObject:v19 atIndex:a1[8]];
    v20 = *(a1[6] + 8);
    v21 = *(v20 + 24);
    if (!v21)
    {
      v22 = *(a1[7] + 8);
      if (*(v22 + 24))
      {
        v21 = 0;
      }

      else
      {
        *(v22 + 24) = 1;
        v23 = +[CKComposition composition];
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v24 = *(*(a1[5] + 8) + 40);
        v25 = [v24 countByEnumeratingWithState:&v31 objects:v37 count:16];
        if (v25)
        {
          v26 = *v32;
          do
          {
            v27 = 0;
            v28 = v23;
            do
            {
              if (*v32 != v26)
              {
                objc_enumerationMutation(v24);
              }

              v23 = [v28 compositionByAppendingComposition:{*(*(&v31 + 1) + 8 * v27), v31}];

              ++v27;
              v28 = v23;
            }

            while (v25 != v27);
            v25 = [v24 countByEnumeratingWithState:&v31 objects:v37 count:16];
          }

          while (v25);
        }

        if (IMOSLoggingEnabled())
        {
          v29 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            v30 = a1[8];
            *buf = 134217984;
            v36 = v30;
            _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "> Resolved itemProvider idx={%ld} as Plugin Payload. Calling completion handler.", buf, 0xCu);
          }
        }

        (*(a1[4] + 16))();

        v20 = *(a1[6] + 8);
        v21 = *(v20 + 24);
      }
    }

    *(v20 + 24) = v21 - 1;
  }
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_623(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [CKComposition compositionWithMediaObject:v5 subject:0];
    [*(*(*(a1 + 64) + 8) + 40) insertObject:v7 atIndex:*(a1 + 96)];
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 24);
    if (!v9)
    {
      v10 = *(*(a1 + 80) + 8);
      if (*(v10 + 24))
      {
        v9 = 0;
      }

      else
      {
        *(v10 + 24) = 1;
        v19 = +[CKComposition composition];
        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v20 = *(*(*(a1 + 64) + 8) + 40);
        v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v21)
        {
          v22 = *v38;
          do
          {
            v23 = 0;
            v24 = v19;
            do
            {
              if (*v38 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v19 = [v24 compositionByAppendingComposition:*(*(&v37 + 1) + 8 * v23)];

              ++v23;
              v24 = v19;
            }

            while (v21 != v23);
            v21 = [v20 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v21);
        }

        if (IMOSLoggingEnabled())
        {
          v25 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            v26 = *(a1 + 96);
            LODWORD(buf) = 134217984;
            *(&buf + 4) = v26;
            _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "> Resolved itemProvider idx={%ld} as CKMediaObject. Calling completion handler.", &buf, 0xCu);
          }
        }

        (*(*(a1 + 56) + 16))();

        v8 = *(*(a1 + 72) + 8);
        v9 = *(v8 + 24);
      }
    }

    *(v8 + 24) = v9 - 1;
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v42 = 0x3032000000;
    v43 = __Block_byref_object_copy__30;
    v44 = __Block_byref_object_dispose__30;
    v45 = 0;
    v11 = *(a1 + 104);
    v12 = objc_opt_class();
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_624;
    v27[3] = &unk_1E72F1E10;
    v13 = *(a1 + 104);
    p_buf = &buf;
    v34 = v13;
    v14 = *(a1 + 32);
    v36 = *(a1 + 112);
    v31 = *(a1 + 72);
    v35 = *(a1 + 96);
    v15 = *(a1 + 56);
    v32 = *(a1 + 64);
    v16 = *(a1 + 40);
    *&v17 = *(a1 + 48);
    *(&v17 + 1) = v15;
    *&v18 = v14;
    *(&v18 + 1) = v16;
    v28 = v18;
    v29 = v17;
    v33 = *(a1 + 88);
    [v11 __ck_valueForItemClass:v12 forItemProvider:v14 completion:v27];

    _Block_object_dispose(&buf, 8);
  }
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_624(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
  v4 = a2;
  v5 = *MEMORY[0x1E696EC00];
  v6 = *(a1 + 32);
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_2_625;
  v15[3] = &unk_1E72F1DE8;
  v24 = *(a1 + 120);
  v18 = *(a1 + 72);
  v7 = *(a1 + 104);
  v22 = *(a1 + 112);
  v8 = *(a1 + 56);
  v9 = *(a1 + 64);
  v23 = *(a1 + 104);
  v10 = *(a1 + 88);
  v19 = v9;
  v20 = v10;
  v11 = *(a1 + 40);
  v12 = *(a1 + 32);
  *&v13 = *(a1 + 48);
  *(&v13 + 1) = v8;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v16 = v14;
  v17 = v13;
  v21 = *(a1 + 96);
  [v7 dataForPasteboardType:v5 forItemProvider:v6 completion:v15];
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_2_625(uint64_t a1, void *a2, void *a3)
{
  v62[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    if (*(a1 + 120) == 1)
    {
      v7 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      v8 = [v7 isRichLinkImprovementsEnabled];

      if (v8)
      {
        v9 = [MEMORY[0x1E696ECA0] metadataWithDataRepresentation:v5];
        v10 = v9;
        if (*(*(*(a1 + 64) + 8) + 24))
        {
          v11 = 0;
        }

        else
        {
          v11 = *(*(*(a1 + 72) + 8) + 24) ^ 1;
        }

        v12 = [v9 originalURL];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [v10 URL];
        }

        v15 = v14;

        if (v10)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        v17 = !v16;
        if ((v17 & v11) == 1)
        {
          v18 = [CKEmbeddedRichLinkConfiguration richLinkConfigurationWithURL:v15];
          v19 = [CKBrowserItemPayload createBrowserItemPayloadWithRichLinkMetadata:v10];
          [v18 setPluginPayload:v19];

          v61 = @"EmbeddedRichLinkConfiguration";
          v62[0] = v18;
          v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v62 forKeys:&v61 count:1];
          v21 = objc_alloc(MEMORY[0x1E696AAB0]);
          v22 = [v21 initWithString:*MEMORY[0x1E69A5F00] attributes:v20];
          v23 = +[CKComposition composition];
          v24 = [v23 compositionByAppendingText:v22];

          *(*(*(a1 + 72) + 8) + 24) = 1;
          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = *(a1 + 104);
              *buf = 134217984;
              v60 = v26;
              _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "> Resolved itemProvider idx={%ld} as LPLinkMetadata. Calling completion handler.", buf, 0xCu);
            }
          }

          (*(*(a1 + 56) + 16))();
          --*(*(*(a1 + 64) + 8) + 24);

          goto LABEL_46;
        }
      }
    }
  }

  v27 = *(*(*(a1 + 80) + 8) + 40);
  if (v27)
  {
    v28 = [v27 scheme];
    if (([v28 isEqualToString:@"tel"] & 1) != 0 || objc_msgSend(v28, "isEqualToString:", @"mailto"))
    {
      v29 = [*(*(*(a1 + 80) + 8) + 40) resourceSpecifier];
      v10 = [v29 stringByRemovingPercentEncoding];
    }

    else
    {
      v10 = [*(*(*(a1 + 80) + 8) + 40) absoluteString];
    }

    if (*(a1 + 120) == 1)
    {
      v37 = [*(a1 + 112) _attributedStringAfterPostProcessingForRichLinksForText:v10];
      v38 = +[CKComposition composition];
      v39 = [v38 compositionByAppendingText:v37];

      [*(*(*(a1 + 88) + 8) + 40) insertObject:v39 atIndex:*(a1 + 104)];
    }

    else
    {
      v40 = +[CKComposition composition];
      if ([v10 length])
      {
        v41 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
        v37 = [v40 compositionByAppendingText:v41];
      }

      else
      {
        v37 = [v40 compositionByAppendingText:0];
      }

      [*(*(*(a1 + 88) + 8) + 40) insertObject:v37 atIndex:*(a1 + 104)];
    }

    if (v10)
    {
      [*(a1 + 32) addObject:v10];
    }

    v42 = *(*(a1 + 64) + 8);
    v43 = *(v42 + 24);
    if (!v43)
    {
      v44 = *(*(a1 + 72) + 8);
      if (*(v44 + 24))
      {
        v43 = 0;
      }

      else
      {
        *(v44 + 24) = 1;
        v45 = [*(a1 + 112) finalCompositionFromAllCompositions:*(*(*(a1 + 88) + 8) + 40)];
        if (IMOSLoggingEnabled())
        {
          v46 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            v47 = *(a1 + 104);
            *buf = 134217984;
            v60 = v47;
            _os_log_impl(&dword_19020E000, v46, OS_LOG_TYPE_INFO, "> Resolved itemProvider idx={%ld} as some form of NSURL. Calling completion handler.", buf, 0xCu);
          }
        }

        (*(*(a1 + 56) + 16))();

        v42 = *(*(a1 + 64) + 8);
        v43 = *(v42 + 24);
      }
    }

    *(v42 + 24) = v43 - 1;
  }

  else
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 48);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_635;
    v48[3] = &unk_1E72F1DC0;
    v52 = *(a1 + 88);
    v32 = *(a1 + 104);
    v33 = *(a1 + 112);
    v53 = *(a1 + 64);
    v56 = v32;
    v57 = v33;
    v51 = *(a1 + 56);
    v49 = *(a1 + 40);
    v34 = *(a1 + 32);
    v35 = *(a1 + 80);
    v50 = v34;
    v58 = *(a1 + 120);
    v36 = *(a1 + 96);
    v54 = v35;
    v55 = v36;
    [v33 _pasteAttributedStringWithItemProvider:v30 builderContext:v31 completionHandler:v48];

    v10 = v51;
  }

LABEL_46:
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_635(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 text];

  if (v7)
  {
    [*(*(*(a1 + 56) + 8) + 40) insertObject:v5 atIndex:*(a1 + 96)];
    v8 = *(*(a1 + 64) + 8);
    v9 = *(v8 + 24);
    if (!v9)
    {
      v10 = *(*(a1 + 72) + 8);
      if (*(v10 + 24))
      {
        v9 = 0;
      }

      else
      {
        *(v10 + 24) = 1;
        v20 = [*(a1 + 104) finalCompositionFromAllCompositions:*(*(*(a1 + 56) + 8) + 40)];
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            v22 = *(a1 + 96);
            *buf = 134217984;
            v34 = v22;
            _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "> Resolved itemProvider idx={%ld} as NSAttributedString via _pasteAttributedStringWithItemProvider. Calling completion handler.", buf, 0xCu);
          }
        }

        (*(*(a1 + 48) + 16))();

        v8 = *(*(a1 + 64) + 8);
        v9 = *(v8 + 24);
      }
    }

    *(v8 + 24) = v9 - 1;
  }

  else
  {
    v11 = *(a1 + 104);
    v12 = objc_opt_class();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_636;
    v23[3] = &unk_1E72F1D98;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v16 = *(a1 + 72);
    v15 = *(a1 + 80);
    v24 = v14;
    v26 = v15;
    v32 = *(a1 + 112);
    v17 = *(a1 + 96);
    v30 = *(a1 + 104);
    v31 = v17;
    v27 = *(a1 + 56);
    v28 = v16;
    v18 = *(a1 + 48);
    v19 = *(a1 + 88);
    v25 = v18;
    v29 = v19;
    [v11 __ck_valueForItemClass:v12 forItemProvider:v13 completion:v23];
  }
}

void __109__CKComposition_UIPasteboard__compositionFromNonCollaborationItemProviders_builderContext_completionHandler___block_invoke_636(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (v7)
  {
    v8 = [*(a1 + 32) containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x1E695DFF8] URLWithString:v7];
  v10 = [v9 isFileURL];
  if (v7 && (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([*(*(*(a1 + 48) + 8) + 40) absoluteString], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v7, "isEqualToString:", v12) | v8 | v11, v12, (v13 & 1) == 0))
  {
    [*(a1 + 32) addObject:v7];
    if (*(a1 + 104) == 1)
    {
      v22 = [*(a1 + 88) _attributedStringAfterPostProcessingForRichLinksForText:v7];
      v23 = +[CKComposition composition];
      v24 = [v23 compositionByAppendingText:v22];

      [*(*(*(a1 + 56) + 8) + 40) insertObject:v24 atIndex:*(a1 + 96)];
    }

    else
    {
      v25 = +[CKComposition composition];
      if ([v7 length])
      {
        v26 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
        v22 = [v25 compositionByAppendingText:v26];
      }

      else
      {
        v22 = [v25 compositionByAppendingText:0];
      }

      [*(*(*(a1 + 56) + 8) + 40) insertObject:v22 atIndex:*(a1 + 96)];
    }

    v27 = *(*(a1 + 64) + 8);
    v19 = *(v27 + 24);
    if (!v19)
    {
      v28 = *(*(a1 + 72) + 8);
      if (*(v28 + 24))
      {
        v19 = 0;
      }

      else
      {
        *(v28 + 24) = 1;
        v29 = [*(a1 + 88) finalCompositionFromAllCompositions:*(*(*(a1 + 56) + 8) + 40)];
        if (IMOSLoggingEnabled())
        {
          v30 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
          {
            v31 = *(a1 + 96);
            v32 = 134217984;
            v33 = v31;
            _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "> Resolved itemProvider idx={%ld} as some form of NSString. Calling completion handler.", &v32, 0xCu);
          }
        }

        (*(*(a1 + 40) + 16))();

        v27 = *(*(a1 + 64) + 8);
        v19 = *(v27 + 24);
      }
    }

    v20 = (v27 + 24);
  }

  else
  {
    *(*(*(a1 + 80) + 8) + 24) = 1;
    if (*(*(*(a1 + 80) + 8) + 24) == 1 && !*(*(*(a1 + 64) + 8) + 24))
    {
      v14 = *(*(a1 + 72) + 8);
      if ((*(v14 + 24) & 1) == 0)
      {
        *(v14 + 24) = 1;
        v15 = [*(a1 + 88) finalCompositionFromAllCompositions:*(*(*(a1 + 56) + 8) + 40)];
        if (IMOSLoggingEnabled())
        {
          v16 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = *(a1 + 96);
            v32 = 134217984;
            v33 = v17;
            _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "> Tried all types. Returning what we have for itemProvider idx={%ld}. Calling completion handler.", &v32, 0xCu);
          }
        }

        (*(*(a1 + 40) + 16))();
      }
    }

    v18 = *(*(a1 + 64) + 8);
    v21 = *(v18 + 24);
    v20 = (v18 + 24);
    v19 = v21;
  }

  *v20 = v19 - 1;
}

+ (id)_attributedStringAfterPostProcessingForRichLinksForText:(id)text
{
  v3 = MEMORY[0x1E696AAB0];
  textCopy = text;
  v5 = [[v3 alloc] initWithString:textCopy];

  ck_attributedStringByPostProcessingURLTextForRichLinks = [v5 ck_attributedStringByPostProcessingURLTextForRichLinks];

  return ck_attributedStringByPostProcessingURLTextForRichLinks;
}

+ (id)finalCompositionFromAllCompositions:(id)compositions
{
  v17 = *MEMORY[0x1E69E9840];
  compositionsCopy = compositions;
  v4 = +[CKComposition composition];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = compositionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = v4;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4 = [v10 compositionByAppendingComposition:{*(*(&v12 + 1) + 8 * v9), v12}];

        ++v9;
        v10 = v4;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (void)requestPluginDisplayContainerForItemProvider:(id)provider completion:(id)completion
{
  v11 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  completionCopy = completion;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__CKComposition_UIPasteboard__requestPluginDisplayContainerForItemProvider_completion___block_invoke;
  v9[3] = &unk_1E72F0030;
  v7 = completionCopy;
  v10 = v7;
  v8 = [providerCopy loadDataRepresentationForTypeIdentifier:@"com.apple.MobileSMS.PluginPayload" completionHandler:v9];
}

void __87__CKComposition_UIPasteboard__requestPluginDisplayContainerForItemProvider_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v5 = 0;
  }

  else
  {
    v5 = [CKPluginDisplayContainer unarchiveFromData:a2 error:0];
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)requestFilenameForType:(id)type forItemProvider:(id)provider completion:(id)completion
{
  v31 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  providerCopy = provider;
  completionCopy = completion;
  v10 = +[CKMediaObjectManager sharedInstance];
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  if ([providerCopy canLoadObjectOfClass:objc_opt_class()])
  {
    v12 = objc_opt_class();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __81__CKComposition_UIPasteboard__requestFilenameForType_forItemProvider_completion___block_invoke;
    v23[3] = &unk_1E72F1E88;
    v24 = v10;
    v25 = typeCopy;
    v26 = completionCopy;
    v13 = [providerCopy loadObjectOfClass:v12 completionHandler:v23];
  }

  else
  {
    v14 = [registeredTypeIdentifiers containsObject:@"public.url-name"];
    v15 = IMOSLoggingEnabled();
    if (v14)
    {
      if (v15)
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v28 = providerCopy;
          v29 = 2112;
          v30 = @"public.url-name";
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Couldn't instantiate NSString from itemProvider: %@ querying data for %@", buf, 0x16u);
        }
      }

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __81__CKComposition_UIPasteboard__requestFilenameForType_forItemProvider_completion___block_invoke_638;
      v19[3] = &unk_1E72F1EB0;
      v20 = v10;
      v21 = typeCopy;
      v22 = completionCopy;
      v17 = [providerCopy loadDataRepresentationForTypeIdentifier:@"public.url-name" completionHandler:v19];
    }

    else
    {
      if (v15)
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = providerCopy;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "No associated string data to create filename for itemProvider: %@", buf, 0xCu);
        }
      }

      (*(completionCopy + 2))(completionCopy, 0, 0);
    }
  }
}

void __81__CKComposition_UIPasteboard__requestFilenameForType_forItemProvider_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (v5 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v7 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) UTITypeForFilename:v8];
    if (UTTypeEqual(v6, *(a1 + 40)))
    {
      v7 = [v8 stringByRemovingPercentEncoding];
    }

    else
    {
      v7 = 0;
    }
  }

  (*(*(a1 + 48) + 16))();
}

void __81__CKComposition_UIPasteboard__requestFilenameForType_forItemProvider_completion___block_invoke_638(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  if (v10)
  {
    v5 = 0;
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = a2;
    v8 = [[v6 alloc] initWithData:v7 usedEncoding:0];

    if (v8)
    {
      v9 = [*(a1 + 32) UTITypeForFilename:v8];
      if (UTTypeEqual(v9, *(a1 + 40)))
      {
        v5 = v8;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  (*(*(a1 + 48) + 16))();
}

+ (void)_requestCompositionFromItemProviderForNonCollaboration:(id)collaboration builderContext:(id)context completion:(id)completion
{
  v74 = *MEMORY[0x1E69E9840];
  collaborationCopy = collaboration;
  contextCopy = context;
  completionCopy = completion;
  registeredTypeIdentifiers = [collaborationCopy registeredTypeIdentifiers];
  if ([registeredTypeIdentifiers containsObject:@"com.apple.MobileSMS.PluginPayload"])
  {
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke;
    v70[3] = &unk_1E72F1ED8;
    v71 = collaborationCopy;
    v72 = completionCopy;
    [self requestPluginDisplayContainerForItemProvider:v71 completion:v70];

    v12 = v71;
  }

  else
  {
    v12 = [self richestMediaTypeForItemProvider:collaborationCopy];
    if (v12)
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2;
      v67[3] = &unk_1E72F1F00;
      v68 = collaborationCopy;
      v69 = completionCopy;
      [self requestMediaObjectForItemProvider:v68 type:v12 builderContext:contextCopy completion:v67];

      v13 = v68;
    }

    else
    {
      wantsInlinedRichLinks = [contextCopy wantsInlinedRichLinks];
      mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
      isRichLinkImprovementsEnabled = [mEMORY[0x1E69A8070] isRichLinkImprovementsEnabled];

      if (isRichLinkImprovementsEnabled && ([collaborationCopy registeredTypeIdentifiers], v17 = objc_claimAutoreleasedReturnValue(), v18 = *MEMORY[0x1E696EC00], v19 = objc_msgSend(v17, "containsObject:", *MEMORY[0x1E696EC00]), v17, (v19 & wantsInlinedRichLinks) == 1))
      {
        v64[0] = MEMORY[0x1E69E9820];
        v64[1] = 3221225472;
        v64[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_5;
        v64[3] = &unk_1E72F1988;
        v65 = collaborationCopy;
        v66 = completionCopy;
        v20 = [v65 loadDataRepresentationForTypeIdentifier:v18 completionHandler:v64];

        v13 = v65;
      }

      else
      {
        registeredTypeIdentifiers2 = [collaborationCopy registeredTypeIdentifiers];
        v22 = [registeredTypeIdentifiers2 containsObject:@"com.apple.iCal.pasteboard.event"];

        if ((v22 & 1) != 0 || ![collaborationCopy canLoadObjectOfClass:objc_opt_class()])
        {
          suggestedName = [collaborationCopy suggestedName];
          if (!suggestedName)
          {
            goto LABEL_29;
          }

          suggestedName2 = [collaborationCopy suggestedName];
          v27 = [suggestedName2 length];

          if (!v27)
          {
            goto LABEL_29;
          }

          suggestedName3 = [collaborationCopy suggestedName];
          pathExtension = [suggestedName3 pathExtension];

          if (!pathExtension)
          {
            goto LABEL_29;
          }

          v30 = [pathExtension length];

          if (!v30)
          {
            goto LABEL_29;
          }

          if (_requestCompositionFromItemProviderForNonCollaboration_builderContext_completion__onceToken != -1)
          {
            +[CKComposition(UIPasteboard) _requestCompositionFromItemProviderForNonCollaboration:builderContext:completion:];
          }

          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          obj = _requestCompositionFromItemProviderForNonCollaboration_builderContext_completion__sFileTypes;
          v31 = [obj countByEnumeratingWithState:&v55 objects:v73 count:16];
          if (v31)
          {
            v32 = *v56;
LABEL_19:
            v33 = 0;
            while (1)
            {
              if (*v56 != v32)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v55 + 1) + 8 * v33);
              if ([collaborationCopy hasItemConformingToTypeIdentifier:v34])
              {
                break;
              }

              if (v31 == ++v33)
              {
                v31 = [obj countByEnumeratingWithState:&v55 objects:v73 count:16];
                if (v31)
                {
                  goto LABEL_19;
                }

                goto LABEL_25;
              }
            }

            v35 = v34;

            if (v35)
            {
              goto LABEL_28;
            }
          }

          else
          {
LABEL_25:
          }

          suggestedName4 = [collaborationCopy suggestedName];
          v35 = IMUTITypeForFilename();

          if (v35)
          {
LABEL_28:
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_3_654;
            v51[3] = &unk_1E72F1EB0;
            v52 = v35;
            v53 = collaborationCopy;
            v54 = completionCopy;
            v13 = v35;
            v37 = [v53 loadDataRepresentationForTypeIdentifier:v13 completionHandler:v51];
          }

          else
          {
LABEL_29:
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_656;
            aBlock[3] = &unk_1E72EE5D8;
            v38 = completionCopy;
            v50 = v38;
            v39 = collaborationCopy;
            v49 = v39;
            v40 = _Block_copy(aBlock);
            v46[0] = 0;
            v46[1] = v46;
            v46[2] = 0x3032000000;
            v46[3] = __Block_byref_object_copy__30;
            v46[4] = __Block_byref_object_dispose__30;
            v47 = 0;
            if ([self isRTFDocumentWithItemProvider:v39])
            {
              v42[0] = MEMORY[0x1E69E9820];
              v42[1] = 3221225472;
              v42[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_667;
              v42[3] = &unk_1E72F1FC8;
              v45 = v46;
              v43 = v38;
              v44 = v40;
              [self _pasteRTFDocumentWithItemProvider:v39 builderContext:contextCopy completionHandler:v42];
            }

            else
            {
              v40[2](v40);
            }

            _Block_object_dispose(v46, 8);

            v13 = v50;
          }
        }

        else
        {
          v23 = objc_opt_class();
          v59[0] = MEMORY[0x1E69E9820];
          v59[1] = 3221225472;
          v59[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2_649;
          v59[3] = &unk_1E72F1F28;
          v63 = wantsInlinedRichLinks;
          v60 = collaborationCopy;
          selfCopy = self;
          v61 = completionCopy;
          v24 = [v60 loadObjectOfClass:v23 completionHandler:v59];

          v13 = v60;
        }
      }
    }
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = [v6 localizedDescription];
        *buf = 138412546;
        v26 = v8;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get pluginDisplayContainer for itemProvider: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = [v5 pluginPayload];
    v11 = [v10 pluginBundleID];
    v12 = [v11 isEqualToString:*MEMORY[0x1E69A6A18]];

    if (v12)
    {
      v13 = [v5 pluginPayload];
      v14 = [v13 data];
      v15 = [v5 pluginPayload];
      v16 = [v15 attachments];
      v17 = IMSharedHelperCombinedPluginPayloadDictionaryDataWithAttachmentURLs();

      if (v17)
      {
        v18 = [v5 pluginPayload];
        [v18 setData:v17];
      }
    }

    if (v5)
    {
      v19 = [CKComposition compositionWithPluginDisplayContainer:v5 subject:0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_639;
      v22[3] = &unk_1E72EE5D8;
      v20 = *(a1 + 40);
      v23 = v19;
      v24 = v20;
      v21 = v19;
      dispatch_async(MEMORY[0x1E69E96A0], v22);
    }
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v46 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 32);
        v12 = [v9 localizedDescription];
        *buf = 138412546;
        v43 = v11;
        v44 = 2112;
        v45 = v12;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Failed to get mediaObject for itemProvider: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else if ([v8 length])
  {
    v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v8];
    v14 = [[CKComposition alloc] initWithText:v13 subject:0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_640;
    block[3] = &unk_1E72EE5D8;
    v15 = *(a1 + 40);
    v40 = v14;
    v41 = v15;
    v16 = v14;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else if (v7)
  {
    if (![*(a1 + 32) hasItemConformingToTypeIdentifier:@"com.apple.messages.audioMessage"])
    {
      v20 = [v7 transfer];
      if ([v20 isSticker])
      {
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v22 = [v7 sticker];
          v23 = [CKBrowserItemPayload browserItemFromSticker:v22];
          v24 = [CKComposition compositionWithShelfPluginPayload:v23];
          v33[0] = MEMORY[0x1E69E9820];
          v33[1] = 3221225472;
          v33[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_3;
          v33[3] = &unk_1E72EE5D8;
          v25 = *(a1 + 40);
          v34 = v24;
          v35 = v25;
          v26 = v24;
          dispatch_async(MEMORY[0x1E69E96A0], v33);

          goto LABEL_8;
        }
      }

      else
      {
      }

      v27 = [CKComposition compositionWithMediaObject:v7 subject:0];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_4;
      v30[3] = &unk_1E72EE5D8;
      v28 = *(a1 + 40);
      v31 = v27;
      v32 = v28;
      v29 = v27;
      dispatch_async(MEMORY[0x1E69E96A0], v30);

      goto LABEL_8;
    }

    v17 = [CKComposition audioCompositionWithMediaObject:v7];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2_644;
    v36[3] = &unk_1E72EE5D8;
    v18 = *(a1 + 40);
    v37 = v17;
    v38 = v18;
    v19 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v36);
  }

LABEL_8:
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = [v6 localizedDescription];
        *buf = 138412546;
        v29 = v8;
        v30 = 2112;
        v31 = v9;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get LPLinkMetadata representation (as NSData) for itemProvider: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else if (v5)
  {
    v10 = [MEMORY[0x1E696ECA0] metadataWithDataRepresentation:v5];
    v11 = [v10 originalURL];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v10 URL];
    }

    v14 = v13;

    v15 = [CKEmbeddedRichLinkConfiguration richLinkConfigurationWithURL:v14];
    v16 = [CKBrowserItemPayload createBrowserItemPayloadWithRichLinkMetadata:v10];
    [v15 setPluginPayload:v16];

    v26 = @"EmbeddedRichLinkConfiguration";
    v27 = v15;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v18 = objc_alloc(MEMORY[0x1E696AAB0]);
    v19 = [v18 initWithString:*MEMORY[0x1E69A5F00] attributes:v17];
    v20 = [[CKComposition alloc] initWithText:v19 subject:0];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_645;
    v23[3] = &unk_1E72EE5D8;
    v21 = *(a1 + 40);
    v24 = v20;
    v25 = v21;
    v22 = v20;
    dispatch_async(MEMORY[0x1E69E96A0], v23);
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2_649(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    v10 = v5;
    v11 = [v10 scheme];
    if (([v11 isEqualToString:@"tel"] & 1) != 0 || objc_msgSend(v11, "isEqualToString:", @"mailto"))
    {
      v12 = [v10 resourceSpecifier];
      v13 = [v12 stringByRemovingPercentEncoding];
    }

    else
    {
      v13 = [v10 absoluteString];
    }

    if (*(a1 + 56) == 1)
    {
      v14 = [*(a1 + 48) _attributedStringAfterPostProcessingForRichLinksForText:v13];
      v15 = [CKComposition alloc];
    }

    else
    {
      v16 = [CKComposition alloc];
      if (![v13 length])
      {
        v17 = [(CKComposition *)v16 initWithText:0 subject:0];
        goto LABEL_16;
      }

      v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v13];
      v15 = v16;
    }

    v17 = [(CKComposition *)v15 initWithText:v14 subject:0];

LABEL_16:
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_650;
    v20[3] = &unk_1E72EE5D8;
    v18 = *(a1 + 40);
    v21 = v17;
    v22 = v18;
    v19 = v17;
    dispatch_async(MEMORY[0x1E69E96A0], v20);

    goto LABEL_17;
  }

  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = [v6 localizedDescription];
      *buf = 138412546;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get url for itemProvider: %@, error: %@", buf, 0x16u);
    }
  }

LABEL_17:
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2_651()
{
  v9[7] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E6982F90] identifier];
  v1 = [*MEMORY[0x1E6982F98] identifier];
  v9[1] = v1;
  v2 = [*MEMORY[0x1E6982DC0] identifier];
  v9[2] = v2;
  v3 = [*MEMORY[0x1E6983058] identifier];
  v9[3] = v3;
  v4 = [*MEMORY[0x1E6983060] identifier];
  v9[4] = v4;
  v5 = [*MEMORY[0x1E6982F40] identifier];
  v9[5] = v5;
  v6 = [*MEMORY[0x1E6983020] identifier];
  v9[6] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:7];
  v8 = _requestCompositionFromItemProviderForNonCollaboration_builderContext_completion__sFileTypes;
  _requestCompositionFromItemProviderForNonCollaboration_builderContext_completion__sFileTypes = v7;
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_3_654(id *a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = a1[5];
        v10 = [v7 localizedDescription];
        *buf = 138412546;
        v17 = v9;
        v18 = 2112;
        v19 = v10;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Failed to get file data for provider: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_4_655;
    v11[3] = &unk_1E72EDE00;
    v12 = v5;
    v13 = a1[4];
    v14 = a1[5];
    v15 = a1[6];
    dispatch_async(MEMORY[0x1E69E96A0], v11);
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_4_655(uint64_t a1)
{
  v2 = +[CKMediaObjectManager sharedInstance];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = [*(a1 + 48) suggestedName];
  v7 = [v2 mediaObjectWithData:v3 UTIType:v4 filename:v5 transcoderUserInfo:0];

  v6 = [CKComposition compositionWithMediaObject:v7 subject:0];
  (*(*(a1 + 56) + 16))();
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_656(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2_657;
  aBlock[3] = &unk_1E72F1FA0;
  v29 = *(a1 + 40);
  v2 = _Block_copy(aBlock);
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x1E6982DC0];
  v5 = [*MEMORY[0x1E6982DC0] identifier];
  LODWORD(v3) = [v3 hasItemConformingToTypeIdentifier:v5];

  v6 = *(a1 + 32);
  if (v3)
  {
    v7 = [v4 identifier];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_6;
    v25[3] = &unk_1E72F1988;
    v26 = *(a1 + 32);
    v27 = v2;
    v8 = [v6 loadDataRepresentationForTypeIdentifier:v7 completionHandler:v25];
  }

  else
  {
    v9 = [v6 canLoadObjectOfClass:objc_opt_class()];
    v10 = *(a1 + 32);
    if (v9)
    {
      v11 = objc_opt_class();
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_664;
      v22[3] = &unk_1E72F1960;
      v23 = *(a1 + 32);
      v24 = v2;
      v12 = [v10 loadObjectOfClass:v11 completionHandler:v22];
    }

    else if ([v10 canLoadObjectOfClass:objc_opt_class()])
    {
      v13 = *(a1 + 32);
      v14 = objc_opt_class();
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_665;
      v19[3] = &unk_1E72F1960;
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      v15 = [v13 loadObjectOfClass:v14 completionHandler:v19];
    }

    else if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 32);
        v18 = [v17 registeredTypeIdentifiers];
        *buf = 138412546;
        v31 = v17;
        v32 = 2112;
        v33 = v18;
        _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "MobileSMS could not accept itemProvider: %@  registeredTypes: %@", buf, 0x16u);
      }
    }
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2_657(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_3_658;
  v5[3] = &unk_1E72EEAF0;
  v6 = v3;
  v7 = *(a1 + 32);
  v4 = v3;
  [CKComposition requestMediaObjectsForAttributedString:v4 completion:v5];
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_3_658(uint64_t a1, void *a2)
{
  v3 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x2020000000;
  v19[3] = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__30;
  v17[4] = __Block_byref_object_dispose__30;
  v18 = +[CKComposition composition];
  v4 = [v3 count];
  v5 = *(a1 + 32);
  v6 = [v5 length];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_4_659;
  v11[3] = &unk_1E72F1F50;
  v14 = v19;
  v16 = v4;
  v7 = v3;
  v12 = v7;
  v15 = v17;
  v13 = *(a1 + 32);
  [v5 enumerateAttributesInRange:0 options:v6 usingBlock:{0, v11}];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_5_661;
  block[3] = &unk_1E72F1F78;
  v9 = *(a1 + 40);
  v10 = v17;
  dispatch_async(MEMORY[0x1E69E96A0], block);

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v19, 8);
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_4_659(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a2 objectForKeyedSubscript:*MEMORY[0x1E69DB5F8]];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64))
    {
      return;
    }

    v19 = [*(a1 + 32) objectAtIndexedSubscript:?];
    v9 = [*(*(*(a1 + 56) + 8) + 40) compositionByAppendingMediaObject:?];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    ++*(*(*(a1 + 48) + 8) + 24);
  }

  else
  {
    v12 = [*(a1 + 40) attributedSubstringFromRange:{a3, a4}];
    v19 = [v12 string];

    v13 = *(*(*(a1 + 56) + 8) + 40);
    v14 = [v19 length];
    if (v14)
    {
      v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v19];
    }

    else
    {
      v15 = 0;
    }

    v16 = [v13 compositionByAppendingText:v15];
    v17 = *(*(a1 + 56) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;

    if (v14)
    {
    }
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = [v6 localizedDescription];
        *buf = 138412546;
        v16 = v8;
        v17 = 2112;
        v18 = v9;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get attributed string for itemProvider: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v10 = objc_alloc(MEMORY[0x1E696AAB0]);
    v13 = *MEMORY[0x1E69DB628];
    v14 = *MEMORY[0x1E69DB698];
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v12 = [v10 initWithData:v5 options:v11 documentAttributes:0 error:0];

    (*(*(a1 + 40) + 16))();
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_664(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = [v6 localizedDescription];
        v10 = 138412546;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get attributed string for itemProvider: %@, error: %@", &v10, 0x16u);
      }
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_665(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = *(a1 + 32);
        v9 = [v6 localizedDescription];
        *buf = 138412546;
        v20 = v8;
        v21 = 2112;
        v22 = v9;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "Failed to get string for itemProvider: %@, error: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v5;
      v11 = [CKComposition alloc];
      if ([v10 length])
      {
        v12 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v10];
        v13 = [(CKComposition *)v11 initWithText:v12 subject:0];
      }

      else
      {
        v13 = [(CKComposition *)v11 initWithText:0 subject:0];
      }

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_666;
      v16[3] = &unk_1E72EE5D8;
      v14 = *(a1 + 40);
      v17 = v13;
      v18 = v14;
      v15 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], v16);
    }
  }
}

void __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_667(uint64_t a1, void *a2)
{
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  if ([*(*(*(a1 + 48) + 8) + 40) hasContent])
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __112__CKComposition_UIPasteboard___requestCompositionFromItemProviderForNonCollaboration_builderContext_completion___block_invoke_2_668;
    v7[3] = &unk_1E72F1F78;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    v8 = v5;
    v9 = v6;
    dispatch_async(MEMORY[0x1E69E96A0], v7);
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

+ (void)requestCompositionFromItemProvider:(id)provider shelfMediaObject:(id)object builderContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __109__CKComposition_UIPasteboard__requestCompositionFromItemProvider_shelfMediaObject_builderContext_completion___block_invoke;
  v11[3] = &unk_1E72F16B8;
  v12 = completionCopy;
  v10 = completionCopy;
  [self createPluginPayloadCompositionFromItemProvider:provider builderContext:context shareOptions:0 completionHandler:v11];
}

void __109__CKComposition_UIPasteboard__requestCompositionFromItemProvider_shelfMediaObject_builderContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __109__CKComposition_UIPasteboard__requestCompositionFromItemProvider_shelfMediaObject_builderContext_completion___block_invoke_2;
  v6[3] = &unk_1E72EE5D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

+ (void)requestCompositionFromItemProviders:(id)providers completion:(id)completion
{
  providersCopy = providers;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__30;
  v21[4] = __Block_byref_object_dispose__30;
  v22 = +[CKComposition composition];
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__CKComposition_UIPasteboard__requestCompositionFromItemProviders_completion___block_invoke;
  block[3] = &unk_1E72F1F78;
  v9 = completionCopy;
  v19 = v9;
  v20 = v21;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);
  if ([providersCopy count] < 2)
  {
    dispatch_group_enter(v8);
    firstObject = [providersCopy firstObject];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __78__CKComposition_UIPasteboard__requestCompositionFromItemProviders_completion___block_invoke_4;
    v12[3] = &unk_1E72F2040;
    v13 = providersCopy;
    v15 = v21;
    v14 = v8;
    [self requestCompositionFromItemProvider:firstObject completion:v12];
    v10 = &v13;
  }

  else
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __78__CKComposition_UIPasteboard__requestCompositionFromItemProviders_completion___block_invoke_2;
    v16[3] = &unk_1E72F2018;
    v17[0] = v8;
    v17[1] = v21;
    v17[2] = self;
    [providersCopy enumerateObjectsUsingBlock:v16];
    v10 = v17;
  }

  dispatch_group_leave(v8);
  _Block_object_dispose(v21, 8);
}

void __78__CKComposition_UIPasteboard__requestCompositionFromItemProviders_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  dispatch_group_enter(v3);
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __78__CKComposition_UIPasteboard__requestCompositionFromItemProviders_completion___block_invoke_3;
  v8[3] = &unk_1E72F1FF0;
  v7 = *(a1 + 32);
  v6 = v7;
  v9 = v7;
  [v5 _requestCompositionFromItemProviderForNonCollaboration:v4 builderContext:0 completion:v8];
}

void __78__CKComposition_UIPasteboard__requestCompositionFromItemProviders_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  v5 = [v3 compositionByAppendingComposition:v4];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 40) + 8) + 40);
  v9 = [v4 collaborationShareOptions];

  v10 = [v8 compositionWithCollaborationShareOptions:v9];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = *(a1 + 32);

  dispatch_group_leave(v13);
}

void __78__CKComposition_UIPasteboard__requestCompositionFromItemProviders_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = [*(a1 + 32) firstObject];
  v4 = [v3 hasItemConformingToTypeIdentifier:@"com.apple.messages.audioMessage"];

  v5 = *(*(a1 + 48) + 8);
  if (v4)
  {
    v6 = v15;
    v7 = *(v5 + 40);
    *(v5 + 40) = v6;
  }

  else
  {
    v8 = [*(v5 + 40) compositionByAppendingComposition:v15];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 48) + 8) + 40);
    v7 = [v15 collaborationShareOptions];
    v12 = [v11 compositionWithCollaborationShareOptions:v7];
    v13 = *(*(a1 + 48) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }

  dispatch_group_leave(*(a1 + 40));
}

+ (id)richestMediaTypeForItemProvider:(id)provider
{
  providerCopy = provider;
  v5 = objc_alloc_init(CKMultiDict);
  registeredTypeIdentifiers = [providerCopy registeredTypeIdentifiers];
  v7 = +[CKMediaObjectManager sharedInstance];
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__30;
  v48 = __Block_byref_object_dispose__30;
  v49 = 0;
  if ([registeredTypeIdentifiers containsObject:@"com.apple.sticker.mediaPayload"])
  {
    identifier2 = @"com.apple.sticker.mediaPayload";
    goto LABEL_18;
  }

  if ([registeredTypeIdentifiers containsObject:@"com.apple.sticker"])
  {
    v9 = *MEMORY[0x1E6982F40];
    identifier = [*MEMORY[0x1E6982F40] identifier];
    v11 = [registeredTypeIdentifiers containsObject:identifier];

    if (v11)
    {
      identifier2 = [v9 identifier];
      goto LABEL_18;
    }
  }

  v12 = MEMORY[0x193AF6190]();
  if (![registeredTypeIdentifiers containsObject:v12])
  {
    if ([registeredTypeIdentifiers containsObject:@"com.apple.live-photo-bundle"])
    {
      identifier2 = @"com.apple.live-photo-bundle";
      goto LABEL_17;
    }

    if ([registeredTypeIdentifiers containsObject:@"com.apple.private.live-photo-bundle"])
    {
      identifier2 = @"com.apple.private.live-photo-bundle";
      goto LABEL_17;
    }

    if ([registeredTypeIdentifiers containsObject:@"com.apple.photos.object-reference.asset"])
    {
      identifier2 = @"com.apple.photos.object-reference.asset";
      goto LABEL_17;
    }

    if ([registeredTypeIdentifiers containsObject:@"com.apple.mapkit.map-item"])
    {
      identifier2 = @"com.apple.mapkit.map-item";
      goto LABEL_17;
    }

    firstObject = [registeredTypeIdentifiers firstObject];
    v16 = *MEMORY[0x1E6982F10];
    identifier3 = [*MEMORY[0x1E6982F10] identifier];
    v18 = [firstObject isEqualToString:identifier3];

    if (v18)
    {
      identifier4 = [v16 identifier];
      goto LABEL_8;
    }

    v19 = *MEMORY[0x1E69A6890];
    if ([registeredTypeIdentifiers containsObject:*MEMORY[0x1E69A6890]])
    {
      identifier4 = v19;
      goto LABEL_8;
    }

    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke;
    v40[3] = &unk_1E72F1758;
    selfCopy = self;
    v20 = v7;
    v41 = v20;
    v21 = v5;
    v42 = v21;
    [registeredTypeIdentifiers enumerateObjectsUsingBlock:v40];
    if (![(CKMultiDict *)v21 count])
    {
LABEL_31:
      identifier2 = v45[5];

      goto LABEL_17;
    }

    v36 = 0;
    v37 = &v36;
    v38 = 0x2050000000;
    v39 = 0;
    classes = [v20 classes];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke_2;
    v33[3] = &unk_1E72F1780;
    v23 = v21;
    v34 = v23;
    v35 = &v36;
    [classes enumerateObjectsUsingBlock:v33];
    v24 = [(CKMultiDict *)v23 objectsForKey:v37[3]];
    v25 = v37[3];
    if (v25 == objc_opt_class())
    {
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke_3;
      v32[3] = &unk_1E72EEC20;
      v32[4] = &v44;
      [v24 enumerateObjectsUsingBlock:v32];
      if (v45[5])
      {
        goto LABEL_30;
      }

      lastObject = [v24 lastObject];
      v27 = v45[5];
      v45[5] = lastObject;
    }

    else
    {
      uTITypes = [v37[3] UTITypes];
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke_4;
      v29[3] = &unk_1E72EBA68;
      v30 = v24;
      v31 = &v44;
      [uTITypes enumerateObjectsUsingBlock:v29];

      v27 = v30;
    }

LABEL_30:
    _Block_object_dispose(&v36, 8);
    goto LABEL_31;
  }

  identifier4 = v12;
LABEL_8:
  identifier2 = identifier4;
LABEL_17:

LABEL_18:
  _Block_object_dispose(&v44, 8);

  return identifier2;
}

void __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([a1[6] _shouldCreateMediaObjectForUTIType:?])
  {
    [a1[5] pushObject:v3 forKey:{objc_msgSend(a1[4], "classForUTIType:", v3)}];
  }
}

void __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) peekObjectForKey:a2];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    *a4 = 1;
  }
}

void __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if ((CKUTTypeIsDynamic(v8, v7) & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

void __63__CKComposition_UIPasteboard__richestMediaTypeForItemProvider___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

+ (id)_temporaryURLFromURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (lCopy)
  {
    v25 = 0;
    v26 = &v25;
    v27 = 0x3032000000;
    v28 = __Block_byref_object_copy__30;
    v29 = __Block_byref_object_dispose__30;
    v5 = lCopy;
    v30 = v5;
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = [defaultManager isUbiquitousItemAtURL:v5];

    if (v7)
    {
      v8 = dispatch_group_create();
      dispatch_group_enter(v8);
      v9 = [objc_alloc(MEMORY[0x1E696ABF8]) initWithFilePresenter:0];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __52__CKComposition_UIPasteboard___temporaryURLFromURL___block_invoke;
      v20[3] = &unk_1E72F2068;
      v21 = 0;
      v23 = &v25;
      v24 = 0;
      v10 = v8;
      v22 = v10;
      [v9 coordinateReadingItemAtURL:v5 options:0 error:&v24 byAccessor:v20];
      v11 = v24;
      dispatch_group_wait(v10, 0xDF8475800uLL);
    }

    v12 = MEMORY[0x1E696AEC0];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    lastPathComponent = [v26[5] lastPathComponent];
    v16 = [v12 stringWithFormat:@"%@%@", uUIDString, lastPathComponent];

    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v18 = [defaultManager2 im_randomTemporaryFileURLWithFileName:v16];

    _Block_object_dispose(&v25, 8);
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

void __52__CKComposition_UIPasteboard___temporaryURLFromURL___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (*(a1 + 32))
  {
    if (IMOSLoggingEnabled())
    {
      v5 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [*(a1 + 32) localizedDescription];
        v7 = 138412290;
        v8 = v6;
        _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_INFO, "Failed to coordinate reading for ubiquitous item: %@", &v7, 0xCu);
      }
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_group_leave(*(a1 + 40));
}

+ (void)mediaObjectFromItemAtURL:(id)l filename:(id)filename completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  filenameCopy = filename;
  completionCopy = completion;
  v11 = [self _temporaryURLFromURL:lCopy];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v13 = defaultManager;
  if (v11)
  {
    v23 = 0;
    [defaultManager copyItemAtURL:lCopy toURL:v11 error:&v23];
    v14 = v23;
    if (v14)
    {
      v15 = v14;
      if (IMOSLoggingEnabled())
      {
        v16 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_19020E000, v16, OS_LOG_TYPE_INFO, "Failed copying item to temp location for media object creation: %@", buf, 0xCu);
        }
      }

      completionCopy[2](completionCopy, 0, v15);
    }

    else
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __76__CKComposition_UIPasteboard__mediaObjectFromItemAtURL_filename_completion___block_invoke;
      block[3] = &unk_1E72F1C80;
      v19 = v11;
      v20 = filenameCopy;
      v22 = completionCopy;
      v21 = v13;
      dispatch_async(MEMORY[0x1E69E96A0], block);

      v15 = v19;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v25 = lCopy;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Failed to generate a tempURL from a pasteboard item url %@", buf, 0xCu);
      }
    }

    v15 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.Messages.CKComposition_UIPasteBoard" code:0 userInfo:0];
    completionCopy[2](completionCopy, 0, v15);
  }
}

void __76__CKComposition_UIPasteboard__mediaObjectFromItemAtURL_filename_completion___block_invoke(uint64_t a1)
{
  v13 = [[CKRemoteItemForSending alloc] initWithAttachmentURL:*(a1 + 32) description:0 blockOnPreviewCreation:0];
  v2 = +[CKMediaObjectManager sharedInstance];
  v3 = [(CKRemoteItemForSending *)v13 attachmentURL];
  v4 = [v2 mediaObjectWithFileURL:v3 filename:*(a1 + 40) transcoderUserInfo:0];

  v5 = [(CKRemoteItemForSending *)v13 appendedVideoURL];
  v6 = [v5 path];
  v7 = [v6 length];

  if (v7)
  {
    v8 = [(CKRemoteItemForSending *)v13 appendedVideoURL];
    v9 = [v4 fileURL];
    v10 = CKGetTmpPathForAppendedVideoURL(v8, v9);

    v11 = [(CKRemoteItemForSending *)v13 appendedVideoURL];
    v12 = [v4 transferGUID];
    CKLinkAndCreateAppendedVideoTransfer(v10, v11, v12);
  }

  (*(*(a1 + 56) + 16))();
  [*(a1 + 48) removeItemAtURL:*(a1 + 32) error:0];
}

+ (void)mediaObjectFromPhotosAsset:(id)asset completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  completionCopy = completion;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = [assetCopy playbackStyle];
  v22 = 0;
  v8 = [MEMORY[0x1E69786A8] exportRequestForAsset:assetCopy error:&v22];
  v9 = v22;
  if (v9)
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        localizedDescription = [v9 localizedDescription];
        *buf = 138412290;
        v25 = localizedDescription;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Error creating PHAssetExportRequest: %@", buf, 0xCu);
      }
    }

    completionCopy[2](completionCopy, 0, v9);
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x1E69786B0]);
    [v12 setVariant:1];
    [v12 setShouldBundleComplexAssetResources:1];
    deviceIsLockedDown = [MEMORY[0x1E69A8020] deviceIsLockedDown];
    if (deviceIsLockedDown)
    {
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Lockdown mode is enabled. Excluding location and caption metadata by default.", buf, 2u);
        }
      }

      v15 = 1;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.photos.shareddefaults"];
      v15 = [v16 BOOLForKey:@"ExcludeLocationWhenSharing"];
      if (v15 && IMOSLoggingEnabled())
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "Photos prefs excludes location when sharing. Excluding location metadata by default.", buf, 2u);
        }
      }
    }

    [v12 setShouldStripLocation:v15];
    [v12 setShouldStripCaption:deviceIsLockedDown];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __69__CKComposition_UIPasteboard__mediaObjectFromPhotosAsset_completion___block_invoke;
    v18[3] = &unk_1E72F2090;
    v20 = v23;
    selfCopy = self;
    v19 = completionCopy;
    [v8 exportWithOptions:v12 completionHandler:v18];
  }

  _Block_object_dispose(v23, 8);
}

void __69__CKComposition_UIPasteboard__mediaObjectFromPhotosAsset_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if ((v7 - 1) >= 2)
  {
    if ((v7 - 4) >= 2)
    {
      if (v7 == 3)
      {
        v10 = [v5 objectForKey:*MEMORY[0x1E6978B88]];
        if (v10)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_9;
    }

    v8 = [v5 objectForKey:*MEMORY[0x1E6978B80]];
    if (!v8)
    {
      v9 = [v5 objectForKey:*MEMORY[0x1E6978BA0]];
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  v8 = [v5 objectForKey:*MEMORY[0x1E6978B78]];
  if (v8)
  {
LABEL_6:
    v9 = v8;
    goto LABEL_15;
  }

  v9 = [v5 objectForKey:*MEMORY[0x1E6978B98]];
LABEL_15:
  v10 = v9;

  if (v10)
  {
LABEL_16:
    [*(a1 + 48) mediaObjectFromItemAtURL:v10 filename:0 completion:*(a1 + 32)];

    goto LABEL_17;
  }

LABEL_9:
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Unable to deterine URL from fileURLS: %@", &v12, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_17:
}

+ (void)requestMediaObjectForItemProvider:(id)provider type:(id)type builderContext:(id)context completion:(id)completion
{
  v83 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  typeCopy = type;
  contextCopy = context;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "requestMediaObjectForItemProvider", buf, 2u);
    }
  }

  if (typeCopy)
  {
    v14 = +[CKMediaObjectManager sharedInstance];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke;
    aBlock[3] = &unk_1E72F20B8;
    v40 = v14;
    v75 = v40;
    v15 = typeCopy;
    v76 = v15;
    v16 = providerCopy;
    v77 = v16;
    v17 = completionCopy;
    v78 = v17;
    v18 = _Block_copy(aBlock);
    v69[0] = MEMORY[0x1E69E9820];
    v69[1] = 3221225472;
    v69[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_711;
    v69[3] = &unk_1E72EDE78;
    v19 = v16;
    v70 = v19;
    v20 = v15;
    v71 = v20;
    selfCopy = self;
    v21 = v18;
    v72 = v21;
    v41 = _Block_copy(v69);
    v22 = MEMORY[0x193AF6190]();
    v23 = [v20 isEqualToString:v22];

    if ((v23 & 1) != 0 || ([v20 isEqualToString:{@"com.apple.live-photo-bundle", v40}] & 1) != 0 || objc_msgSend(v20, "isEqualToString:", @"com.apple.private.live-photo-bundle"))
    {
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_8;
      v67[3] = &unk_1E72F1C08;
      v68 = v17;
      v24 = [v19 loadFileRepresentationForTypeIdentifier:v20 completionHandler:v67];
    }

    else
    {
      if (![v20 isEqualToString:@"com.apple.sticker.mediaPayload"])
      {
        identifier = [*MEMORY[0x1E6982F40] identifier];
        v28 = [v20 isEqualToString:identifier];

        if (v28)
        {
          v29 = IMLogHandleForCategory();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_19020E000, v29, OS_LOG_TYPE_INFO, "Loading string representation of dragged item, e.g. for an emoji sticker inserted as text after dragging to the entry view", buf, 2u);
          }

          v62[0] = MEMORY[0x1E69E9820];
          v62[1] = 3221225472;
          v62[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_723;
          v62[3] = &unk_1E72F0030;
          v63 = v17;
          v30 = [v19 loadDataRepresentationForTypeIdentifier:v20 completionHandler:v62];

          goto LABEL_10;
        }

        if ([v20 isEqualToString:@"com.apple.mapkit.map-item"])
        {
          if (!MEMORY[0x193AF5EC0](@"MKMapItem", @"MapKit"))
          {
            if (IMOSLoggingEnabled())
            {
              v34 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
              {
                *buf = 138412546;
                v80 = @"MKMapItem";
                v81 = 2112;
                v82 = @"MapKit";
                _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Failed weak linking %@ from %@.", buf, 0x16u);
              }
            }

            goto LABEL_10;
          }

          if ([v19 canLoadObjectOfClass:objc_opt_class()])
          {
            v31 = objc_opt_class();
            v58[0] = MEMORY[0x1E69E9820];
            v58[1] = 3221225472;
            v58[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_730;
            v58[3] = &unk_1E72F2220;
            v59 = v19;
            v60 = v20;
            v61 = v21;
            v32 = [v59 loadObjectOfClass:v31 completionHandler:v58];

            goto LABEL_10;
          }
        }

        else
        {
          if ([v20 isEqualToString:*MEMORY[0x1E69A6890]])
          {
            v55[0] = MEMORY[0x1E69E9820];
            v55[1] = 3221225472;
            v55[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_4_734;
            v55[3] = &unk_1E72F2248;
            v56 = v17;
            v57 = v21;
            [v19 __ck_loadDataForAppleMapVCard:v55];

            goto LABEL_10;
          }

          if ([v20 isEqualToString:@"com.apple.finder.node"])
          {
            v51[0] = MEMORY[0x1E69E9820];
            v51[1] = 3221225472;
            v51[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_738;
            v51[3] = &unk_1E72F2270;
            v52 = v19;
            selfCopy2 = self;
            v53 = v17;
            v33 = [v52 loadDataRepresentationForTypeIdentifier:v20 completionHandler:v51];

            goto LABEL_10;
          }

          if ([v20 isEqualToString:@"com.apple.photos.object-reference.asset"])
          {
            v48[0] = MEMORY[0x1E69E9820];
            v48[1] = 3221225472;
            v48[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3_740;
            v48[3] = &unk_1E72F2298;
            v49 = v17;
            selfCopy3 = self;
            v35 = [v19 loadDataRepresentationForTypeIdentifier:@"com.apple.photos.object-reference.asset" completionHandler:v48];

            goto LABEL_10;
          }

          if ([v20 isEqualToString:@"public.file-url"])
          {
            v36 = objc_opt_class();
            v45[0] = MEMORY[0x1E69E9820];
            v45[1] = 3221225472;
            v45[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2_753;
            v45[3] = &unk_1E72F22C0;
            selfCopy4 = self;
            v46 = v17;
            v37 = [v19 loadObjectOfClass:v36 completionHandler:v45];

            goto LABEL_10;
          }

          if (![v20 isEqualToString:@"com.apple.drawing"])
          {
            if ([v20 isEqualToString:@"com.apple.pkpass"])
            {
              block[0] = MEMORY[0x1E69E9820];
              block[1] = 3221225472;
              block[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_761;
              block[3] = &unk_1E72EBDB8;
              v44 = v41;
              dispatch_async(MEMORY[0x1E69E96A0], block);
            }

            else
            {
              v41[2]();
            }

            goto LABEL_10;
          }

          if (IMOSLoggingEnabled())
          {
            v38 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "Ignoring .drawing file", buf, 2u);
            }
          }
        }

        (*(v17 + 2))(v17, 0, 0, 0);
        goto LABEL_10;
      }

      v25 = MEMORY[0x193AF5EC0](@"_MSMessageMediaPayload", @"Messages");
      v64[0] = MEMORY[0x1E69E9820];
      v64[1] = 3221225472;
      v64[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_10;
      v64[3] = &unk_1E72F21D0;
      v66 = v17;
      v65 = contextCopy;
      v26 = [v19 loadObjectOfClass:v25 completionHandler:v64];
    }

LABEL_10:

    goto LABEL_46;
  }

  v39 = IMLogHandleForCategory();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    +[CKComposition(UIPasteboard) requestMediaObjectForItemProvider:type:builderContext:completion:];
  }

  (*(completionCopy + 2))(completionCopy, 0, 0, 0);
LABEL_46:
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) mediaObjectWithData:a2 UTIType:*(a1 + 40) filename:a3 transcoderUserInfo:0];
  v5 = v4;
  if (v4)
  {
    v6 = *(a1 + 48);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2;
    v8[3] = &unk_1E72F1988;
    v9 = v4;
    v10 = *(a1 + 56);
    v7 = [v6 loadDataRepresentationForTypeIdentifier:@"com.apple.MobileSMS.appendedURL" completionHandler:v8];
  }

  else
  {
    (*(*(a1 + 56) + 16))();
  }
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "appendedData %@", &v15, 0xCu);
    }
  }

  if (v5)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v5 encoding:4];
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v15 = 138412290;
        v16 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "appendedPath %@", &v15, 0xCu);
      }
    }

    if (v8)
    {
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8];
      if (IMOSLoggingEnabled())
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = 138412290;
          v16 = v10;
          _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "appendedVideoURL %@", &v15, 0xCu);
        }
      }

      if (v10)
      {
        v12 = [*(a1 + 32) fileURL];
        v13 = CKGetTmpPathForAppendedVideoURL(v10, v12);

        v14 = [*(a1 + 32) transferGUID];
        CKLinkAndCreateAppendedVideoTransfer(v13, v10, v14);
      }
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_711(uint64_t a1)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2_712;
  v9[3] = &unk_1E72F2158;
  v2 = *(a1 + 32);
  v3 = *(a1 + 56);
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  *&v6 = *(a1 + 48);
  *(&v6 + 1) = v3;
  *&v7 = v4;
  *(&v7 + 1) = v5;
  v10 = v7;
  v11 = v6;
  v8 = [v2 loadDataRepresentationForTypeIdentifier:v4 completionHandler:v9];
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2_712(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3;
  block[3] = &unk_1E72F2130;
  v11 = *(a1 + 56);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v4 = *(a1 + 48);
  v9 = v3;
  v10 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_4;
  v10[3] = &unk_1E72F2108;
  v4 = *(a1 + 64);
  v5 = *(a1 + 56);
  v6 = *(a1 + 48);
  v7 = *(a1 + 40);
  *&v8 = *(a1 + 32);
  *(&v8 + 1) = v5;
  *&v9 = v6;
  *(&v9 + 1) = v7;
  v11 = v9;
  v12 = v8;
  [v4 requestFilenameForType:v2 forItemProvider:v3 completion:v10];
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_5;
    block[3] = &unk_1E72EDD88;
    v4 = &v15;
    v15 = *(a1 + 56);
    v5 = &v13;
    v13 = *(a1 + 32);
    v14 = v3;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_6;
    v9[3] = &unk_1E72F20E0;
    v4 = &v11;
    v11 = *(a1 + 56);
    v5 = &v10;
    v10 = *(a1 + 32);
    v8 = [v6 loadFileRepresentationForTypeIdentifier:v7 completionHandler:v9];
  }
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = [a2 lastPathComponent];
  v4 = [v3 stringByRemovingPercentEncoding];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_7;
  block[3] = &unk_1E72EDD88;
  v9 = *(a1 + 40);
  v7 = *(a1 + 32);
  v8 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_8(uint64_t a1, uint64_t a2)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_9;
  v3[3] = &unk_1E72F2180;
  v4 = *(a1 + 32);
  [CKComposition mediaObjectFromItemAtURL:a2 filename:0 completion:v3];
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_11;
  block[3] = &unk_1E72F21A8;
  v6 = v3;
  v8 = *(a1 + 40);
  v7 = *(a1 + 32);
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_11(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 stickerStoreIdentifier];
    if (!v3 || ([CKStickersFrameworkInterface uiStickerWithIdentifier:v3], (v4 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v5 = IMLogHandleForCategory();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_11_cold_1();
      }

      v6 = [MEMORY[0x1E69A82C0] stickerWithMSMessageMediaPayload:*(a1 + 32)];
      v4 = [v6 uiSticker];
    }

    v7 = [v4 _ck_plainStringEmojiText];
    if ([v7 length])
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_11_cold_2();
      }

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v10 = [*(a1 + 40) conversationSupportsInlineAdaptiveImageGlyphs];
      v11 = [v4 _ck_shouldInsertInCompositionAsAdaptiveImageGlyph];
      v12 = IMLogHandleForCategory();
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
      if (v10 && v11)
      {
        if (v13)
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Handling sticker drag to entry view as adaptive image glyph", buf, 2u);
        }

        v14 = _UIStickerCreateAdaptiveImageGlyphFromSticker();
      }

      else
      {
        if (v13)
        {
          *v18 = 0;
          _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Handling sticker drag to entry view as sticker added to shelf", v18, 2u);
        }

        v14 = 0;
      }

      v15 = [objc_alloc(MEMORY[0x1E69A82C0]) initWithUISticker:v4 adaptiveImageGlyph:v14];
      v16 = +[CKMediaObjectManager sharedInstance];
      v17 = [v16 mediaObjectWithSticker:v15 stickerUserInfo:0];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_11_cold_3();
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_723(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  (*(*(a1 + 32) + 16))();
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_730(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 _vCardRepresentation];
  v5 = [v3 _vCardFilename];

  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2_731;
  v12[3] = &unk_1E72F21F8;
  v8 = *(a1 + 48);
  v14 = v5;
  v15 = v8;
  v13 = v4;
  v9 = v5;
  v10 = v4;
  v11 = [v6 loadDataRepresentationForTypeIdentifier:v7 completionHandler:v12];
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2_731(id *a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3_732;
  block[3] = &unk_1E72EDD88;
  v5 = a1[6];
  v3 = a1[4];
  v4 = a1[5];
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_4_734(uint64_t a1, void *a2, void *a3, void *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v7 && !v9)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "Failed to load apple map vCard with error: %@", &v12, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_738(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a2;
  v5 = [[v3 alloc] initWithData:v4 encoding:4];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  v7 = [*(a1 + 32) suggestedName];
  if (!v7)
  {
    v8 = [v6 lastPathComponent];
    v7 = [v8 stringByRemovingPercentEncoding];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2_739;
  v10[3] = &unk_1E72F2180;
  v9 = *(a1 + 48);
  v11 = *(a1 + 40);
  [v9 mediaObjectFromItemAtURL:v6 filename:v7 completion:v10];
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3_740(uint64_t a1, void *a2, void *a3)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithPlistData:v5];
  v8 = [v7 objectForKey:@"localIdentifier"];
  if (v8)
  {
    v9 = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    v10 = [v9 isRedesignedDetailsViewEnabled];

    if (v10)
    {
      v11 = [v7 objectForKey:@"libraryURL"];
      if (v11)
      {
        v12 = [MEMORY[0x1E695DFF8] URLWithString:v11];
        v13 = objc_alloc(MEMORY[0x1E69789A8]);
      }

      else
      {
        v15 = objc_alloc(MEMORY[0x1E69789A8]);
        v12 = [MEMORY[0x1E69789A8] systemPhotoLibraryURL];
        v13 = v15;
      }

      v16 = [v13 initWithPhotoLibraryURL:v12];

      if (!v16)
      {
        v21 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.MobileSMS.CKComposition" code:-1000 userInfo:0];
        v24 = IMLogHandleForCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3_740_cold_1(v21, v24);
        }

        (*(*(a1 + 32) + 16))();
        goto LABEL_24;
      }

      v17 = [v16 librarySpecificFetchOptions];

      v11 = v17;
    }

    else
    {
      v11 = 0;
    }

    v18 = MEMORY[0x1E6978630];
    v29[0] = v8;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v20 = [v18 fetchAssetsWithLocalIdentifiers:v19 options:v11];
    v21 = [v20 firstObject];

    if (v21)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_752;
      v25[3] = &unk_1E72F2180;
      v22 = *(a1 + 40);
      v26 = *(a1 + 32);
      [v22 mediaObjectFromPhotosAsset:v21 completion:v25];
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v28 = v8;
          _os_log_impl(&dword_19020E000, v23, OS_LOG_TYPE_INFO, "Failed to fetch asset with identifier: %@", buf, 0xCu);
        }
      }

      (*(*(a1 + 32) + 16))();
    }

LABEL_24:

    goto LABEL_25;
  }

  if (IMOSLoggingEnabled())
  {
    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Local identifier for photo asset not found in item provider dictionary", buf, 2u);
    }
  }

  (*(*(a1 + 32) + 16))();
LABEL_25:
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_2_753(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 lastPathComponent];
    v8 = [v7 stringByRemovingPercentEncoding];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3_754;
    v11[3] = &unk_1E72F2180;
    v9 = *(a1 + 40);
    v12 = *(a1 + 32);
    [v9 mediaObjectFromItemAtURL:v5 filename:v8 completion:v11];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v14 = v6;
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_INFO, "Failed to fetch URL with error: %@", buf, 0xCu);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

+ (void)requestMediaObjectsForAttributedString:(id)string completion:(id)completion
{
  stringCopy = string;
  completionCopy = completion;
  v7 = +[CKMediaObjectManager sharedInstance];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__30;
  v21[4] = __Block_byref_object_dispose__30;
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = dispatch_group_create();
  dispatch_group_enter(v8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__CKComposition_UIPasteboard__requestMediaObjectsForAttributedString_completion___block_invoke;
  block[3] = &unk_1E72F1F78;
  v9 = completionCopy;
  v19 = v9;
  v20 = v21;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], block);
  v10 = [stringCopy length];
  v11 = *MEMORY[0x1E69DB5F8];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__CKComposition_UIPasteboard__requestMediaObjectsForAttributedString_completion___block_invoke_2;
  v14[3] = &unk_1E72F2310;
  v12 = v8;
  v15 = v12;
  v13 = v7;
  v16 = v13;
  v17 = v21;
  [stringCopy enumerateAttribute:v11 inRange:0 options:v10 usingBlock:{0, v14}];
  dispatch_group_leave(v12);

  _Block_object_dispose(v21, 8);
}

void __81__CKComposition_UIPasteboard__requestMediaObjectsForAttributedString_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(*(*(a1 + 40) + 8) + 40) copy];
  (*(v1 + 16))(v1, v2);
}

void __81__CKComposition_UIPasteboard__requestMediaObjectsForAttributedString_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    dispatch_group_enter(*(a1 + 32));
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __81__CKComposition_UIPasteboard__requestMediaObjectsForAttributedString_completion___block_invoke_3;
    v6[3] = &unk_1E72F22E8;
    v7 = *(a1 + 40);
    v8 = v4;
    v10 = *(a1 + 48);
    v9 = *(a1 + 32);
    v5 = v4;
    dispatch_async(MEMORY[0x1E69E96A0], v6);
  }
}

void __81__CKComposition_UIPasteboard__requestMediaObjectsForAttributedString_completion___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) fileWrapper];
  v4 = [v3 regularFileContents];
  v5 = [*(a1 + 40) fileType];
  v6 = [*(a1 + 40) fileWrapper];
  v7 = [v6 filename];
  v8 = [v2 mediaObjectWithData:v4 UTIType:v5 filename:v7 transcoderUserInfo:0];

  if (v8)
  {
    [*(*(*(a1 + 56) + 8) + 40) addObject:v8];
  }

  dispatch_group_leave(*(a1 + 48));
}

- (void)evaluateSendMetricsWithConversation:(id)conversation shareSheetHostBundleIdentifier:(id)identifier
{
  v107 = *MEMORY[0x1E69E9840];
  conversationCopy = conversation;
  identifierCopy = identifier;
  v7 = objc_opt_new();
  mediaObjects = [(CKComposition *)self mediaObjects];
  v9 = [mediaObjects mutableCopy];

  selfCopy = self;
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = shelfPluginPayload;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  v13 = v12;
  if (v12)
  {
    mediaObjectFromPayload = [v12 mediaObjectFromPayload];
    if (mediaObjectFromPayload)
    {
      [v9 addObject:mediaObjectFromPayload];
    }

    else
    {
      __ck_photoCompositionMediaObjects = [v13 __ck_photoCompositionMediaObjects];
      if ([__ck_photoCompositionMediaObjects count])
      {
        [v9 addObjectsFromArray:__ck_photoCompositionMediaObjects];
      }
    }
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v16 = v9;
  v17 = [v16 countByEnumeratingWithState:&v95 objects:v106 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v96;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v96 != v19)
        {
          objc_enumerationMutation(v16);
        }

        metricsCollectorMediaType = [*(*(&v95 + 1) + 8 * i) metricsCollectorMediaType];
        [v7 addObject:metricsCollectorMediaType];
      }

      v18 = [v16 countByEnumeratingWithState:&v95 objects:v106 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x1E69A7448];
  v79 = v16;
  if (CKIsRunningInMessagesViewService())
  {
    pluginBundleID = *MEMORY[0x1E69A7470];

    v24 = IMBiomeQueue();
    dispatch_async(v24, &__block_literal_global_134);

    if ([identifierCopy isEqualToString:@"com.apple.mobileslideshow"])
    {
      v25 = MEMORY[0x1E69A7478];
    }

    else
    {
      if (![identifierCopy isEqualToString:@"com.apple.mobilesafari"])
      {
        goto LABEL_33;
      }

      v25 = MEMORY[0x1E69A7480];
    }

    v29 = *v25;
  }

  else
  {
    if (!shelfPluginPayload)
    {
      pluginBundleID = v22;
      goto LABEL_33;
    }

    pluginBundleID = [shelfPluginPayload pluginBundleID];
    if ([pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]] & 1) != 0 || (IMBalloonExtensionIDWithSuffix(), v26 = objc_claimAutoreleasedReturnValue(), v27 = objc_msgSend(pluginBundleID, "isEqualToString:", v26), v26, (v27))
    {
      v28 = MEMORY[0x1E69A7468];
    }

    else
    {
      v30 = [pluginBundleID hasSuffix:*MEMORY[0x1E69A6A20]];
      v28 = MEMORY[0x1E69A7460];
      if (v30)
      {
        v28 = MEMORY[0x1E69A7450];
      }
    }

    v29 = *v28;
  }

  pluginBundleID = v29;
LABEL_33:
  v90 = pluginBundleID;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  allObjects = [v7 allObjects];
  v32 = [allObjects countByEnumeratingWithState:&v91 objects:v105 count:16];
  v81 = identifierCopy;
  if (!v32)
  {
LABEL_45:

    goto LABEL_46;
  }

  v33 = v32;
  v77 = v13;
  v78 = shelfPluginPayload;
  v88 = v7;
  v34 = 0;
  v84 = *v92;
  v35 = *MEMORY[0x1E69A74B8];
  v82 = *MEMORY[0x1E69A74C8];
  v87 = *MEMORY[0x1E69A7438];
  v86 = *MEMORY[0x1E69A7428];
  v36 = *MEMORY[0x1E69A7440];
  v85 = *MEMORY[0x1E69A7458];
  obj = allObjects;
  do
  {
    for (j = 0; j != v33; ++j)
    {
      if (*v92 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v38 = *(*(&v91 + 1) + 8 * j);
      v39 = [v88 countForObject:{v38, v77, v78, v79}];
      if (([v38 isEqualToString:v35] & 1) != 0 || objc_msgSend(v38, "isEqualToString:", v82))
      {
        v34 += v39;
      }

      recipientCount = [conversationCopy recipientCount];
      mEMORY[0x1E69A8168] = [MEMORY[0x1E69A8168] sharedInstance];
      v104[0] = v38;
      v103[0] = @"type";
      v103[1] = v86;
      v42 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v39];
      v104[1] = v42;
      v103[2] = v36;
      v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:recipientCount];
      v103[3] = v85;
      v104[2] = v43;
      v104[3] = v90;
      v44 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:4];
      [mEMORY[0x1E69A8168] trackEvent:v87 withDictionary:v44];
    }

    v33 = [obj countByEnumeratingWithState:&v91 objects:v105 count:16];
  }

  while (v33);

  v7 = v88;
  v13 = v77;
  shelfPluginPayload = v78;
  if (v34)
  {
    allObjects = [MEMORY[0x1E69A8168] sharedInstance];
    v102[0] = *MEMORY[0x1E69A7430];
    v101[0] = @"type";
    v101[1] = v86;
    v45 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v34];
    v101[2] = v85;
    v102[1] = v45;
    v102[2] = v90;
    v46 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:v101 count:3];
    [allObjects trackEvent:v87 withDictionary:v46];

    goto LABEL_45;
  }

LABEL_46:
  if (shelfPluginPayload)
  {
    pluginBundleID2 = [shelfPluginPayload pluginBundleID];
    v48 = [pluginBundleID2 containsString:*MEMORY[0x1E69A69F0]];

    v49 = v48 ^ 1;
    if (!v13)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v49 = 1;
    if (!v13)
    {
      goto LABEL_60;
    }
  }

  if ([v13 shouldSendAsMediaObject])
  {
    if (([v13 isSticker] & 1) == 0)
    {
      mEMORY[0x1E69A8168]2 = [MEMORY[0x1E69A8168] sharedInstance];
      [mEMORY[0x1E69A8168]2 trackEvent:*MEMORY[0x1E69A7708]];
    }

    mediaObject = [v13 mediaObject];
    needsAnimation = [mediaObject needsAnimation];
    mEMORY[0x1E69A8168]3 = [MEMORY[0x1E69A8168] sharedInstance];
    isSticker = [v13 isSticker];
    v55 = MEMORY[0x1E69A7700];
    if (!needsAnimation)
    {
      v55 = MEMORY[0x1E69A7728];
    }

    v56 = MEMORY[0x1E69A76F8];
    if (!needsAnimation)
    {
      v56 = MEMORY[0x1E69A7720];
    }

    if (!isSticker)
    {
      v55 = v56;
    }

    [mEMORY[0x1E69A8168]3 trackEvent:*v55];

    goto LABEL_64;
  }

LABEL_60:
  if ((v49 & 1) == 0)
  {
    mediaObject = [MEMORY[0x1E69A8168] sharedInstance];
    isUpdate = [shelfPluginPayload isUpdate];
    v58 = MEMORY[0x1E69A7730];
    if (!isUpdate)
    {
      v58 = MEMORY[0x1E69A7710];
    }

    [mediaObject trackEvent:*v58];
LABEL_64:
  }

  if (shelfPluginPayload)
  {
    pluginBundleID3 = [shelfPluginPayload pluginBundleID];

    if (pluginBundleID3)
    {
      pluginBundleID4 = [shelfPluginPayload pluginBundleID];
      v61 = IMBalloonBundleIDFromExtensionID();

      if (v61 && [v61 hasPrefix:@"com.apple."])
      {
        v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
        [v62 setObject:v61 forKeyedSubscript:*MEMORY[0x1E69A7568]];
        if ([v61 isEqualToString:*MEMORY[0x1E69A6A18]])
        {
          v63 = [shelfPluginPayload url];
          host = [v63 host];

          if ([&unk_1F04E6C18 containsObject:host])
          {
            [v62 setObject:host forKeyedSubscript:*MEMORY[0x1E69A7560]];
          }
        }

        mEMORY[0x1E69A8168]4 = [MEMORY[0x1E69A8168] sharedInstance];
        [mEMORY[0x1E69A8168]4 trackEvent:*MEMORY[0x1E69A7750] withDictionary:v62];
      }
    }
  }

  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  mEMORY[0x1E69A8168]5 = [MEMORY[0x1E69A8168] sharedInstance];
  v69 = *MEMORY[0x1E69A7698];
  v70 = *MEMORY[0x1E69A7778];
  v100[0] = Identifier;
  v71 = *MEMORY[0x1E69A7780];
  v99[0] = v70;
  v99[1] = v71;
  v72 = MEMORY[0x1E696AD98];
  text = [(CKComposition *)selfCopy text];
  v74 = [v72 numberWithLong:{objc_msgSend(text, "length")}];
  v100[1] = v74;
  v99[2] = *MEMORY[0x1E69A7788];
  v75 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(conversationCopy, "recipientCount")}];
  v100[2] = v75;
  v76 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v100 forKeys:v99 count:3];
  [mEMORY[0x1E69A8168]5 trackEvent:v69 withDictionary:v76];
}

void __93__CKComposition_Metrics__evaluateSendMetricsWithConversation_shareSheetHostBundleIdentifier___block_invoke()
{
  v0 = [MEMORY[0x1E698F350] discoverabilitySignal];
  v3 = [v0 source];

  v1 = objc_alloc(MEMORY[0x1E698F278]);
  v2 = [v1 initWithIdentifier:@"com.apple.MobileSMS.shared-via-sharesheet" bundleID:@"com.apple.MobileSMS" context:0 userInfo:MEMORY[0x1E695E0F8]];
  [v3 sendEvent:v2];
}

- (BOOL)isPlainTextEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = equalCopy;
    text = [v8 text];
    string = [text string];
    if (!string)
    {
      text2 = [(CKComposition *)self text];
      string2 = [text2 string];
      if (!string2)
      {
        v37 = 0;
        v31 = 0;
        v13 = 0;
        goto LABEL_10;
      }

      v31 = string2;
    }

    text3 = [v8 text];
    string3 = [text3 string];
    text4 = [(CKComposition *)self text];
    string4 = [text4 string];
    if (![string3 isEqual:string4])
    {
      v14 = 0;
      goto LABEL_19;
    }

    v37 = string;
    v30 = text3;
    v13 = 1;
LABEL_10:
    subject = [v8 subject];
    string5 = [subject string];
    v36 = v8;
    if (!string5)
    {
      subject2 = [(CKComposition *)self subject];
      string6 = [subject2 string];
      if (!string6)
      {
        v28 = 0;
        v14 = 1;
        goto LABEL_16;
      }

      v27 = string6;
    }

    [v8 subject];
    v34 = text;
    v18 = v35 = string3;
    [v18 string];
    v19 = v33 = text4;
    [(CKComposition *)self subject];
    v20 = string5;
    v21 = subject;
    v23 = v22 = string4;
    [v23 string];
    v25 = v24 = v13;
    v14 = [v19 isEqual:v25];

    v13 = v24;
    string4 = v22;
    subject = v21;
    string5 = v20;

    text4 = v33;
    text = v34;
    string3 = v35;
    if (v20)
    {
LABEL_17:

      string = v37;
      if (!v13)
      {
        v8 = v36;
        if (v37)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      text3 = v30;
      v8 = v36;
LABEL_19:

      if (string)
      {
LABEL_21:

        goto LABEL_22;
      }

LABEL_20:

      goto LABEL_21;
    }

LABEL_16:

    goto LABEL_17;
  }

  v14 = 0;
LABEL_22:

  return v14;
}

- (BOOL)hasNotBeenEdited:(id)edited
{
  editedCopy = edited;
  mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
  isExpressiveTextEnabled = [mEMORY[0x1E69A8070] isExpressiveTextEnabled];

  if (isExpressiveTextEnabled)
  {
    text = [(CKComposition *)self text];
    text2 = [editedCopy text];
    v9 = [text isEqualToAttributedString:text2];
  }

  else
  {
    v9 = [(CKComposition *)self isPlainTextEqual:editedCopy];
  }

  return v9;
}

- (id)description
{
  mediaObjects = [(CKComposition *)self mediaObjects];
  firstObject = [mediaObjects firstObject];

  v5 = firstObject;
  v29 = MEMORY[0x1E696AEC0];
  v33.receiver = self;
  v33.super_class = CKComposition;
  v32 = [(CKComposition *)&v33 description];
  text = [(CKComposition *)self text];
  if ([text length])
  {
    v6 = @"something";
  }

  else
  {
    v6 = @"nothing";
  }

  v26 = v6;
  subject = [(CKComposition *)self subject];
  if ([subject length])
  {
    v7 = @"something";
  }

  else
  {
    v7 = @"nothing";
  }

  v25 = v7;
  bizIntent = [(CKComposition *)self bizIntent];
  if ([bizIntent count])
  {
    v8 = @"something";
  }

  else
  {
    v8 = @"nothing";
  }

  v24 = v8;
  shelfMediaObject = [(CKComposition *)self shelfMediaObject];
  if (shelfMediaObject)
  {
    v9 = @"something";
  }

  else
  {
    v9 = @"nothing";
  }

  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  if (shelfPluginPayload)
  {
    v11 = @"something";
  }

  else
  {
    v11 = @"nothing";
  }

  collaborationShareOptions = [(CKComposition *)self collaborationShareOptions];
  if (collaborationShareOptions)
  {
    v13 = @"something";
  }

  else
  {
    v13 = @"nothing";
  }

  proofreadingInfo = [(CKComposition *)self proofreadingInfo];
  if ([proofreadingInfo count])
  {
    v15 = @"something";
  }

  else
  {
    v15 = @"nothing";
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v5 powerLevels];
    v16 = v23 = v5;
    if ([v16 count])
    {
      v17 = @"something";
    }

    else
    {
      v17 = @"nothing";
    }

    v21 = v9;
    v18 = v32;
    v19 = [v29 stringWithFormat:@"%@ text: %@ subject: %@ bizIntent: %@, shelfMediaObject:%@, shelfPluginPayload:%@, collaborationShareOptions: %@ proofreadingInfo: %@ powerLevels: %@", v32, v26, v25, v24, v21, v11, v13, v15, v17];

    v5 = v23;
  }

  else
  {
    v22 = v9;
    v18 = v32;
    v19 = [v29 stringWithFormat:@"%@ text: %@ subject: %@ bizIntent: %@, shelfMediaObject:%@, shelfPluginPayload:%@, collaborationShareOptions: %@ proofreadingInfo: %@ powerLevels: %@", v32, v26, v25, v24, v22, v11, v13, v15, @"nothing"];
  }

  return v19;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    text = [v6 text];
    if (text || ([(CKComposition *)self text], (proofreadingInfo2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      text2 = [v6 text];
      text3 = [(CKComposition *)self text];
      v10 = [text2 isEqual:text3];

      if (text)
      {

        if (v10)
        {
          goto LABEL_6;
        }
      }

      else
      {

        if (v10)
        {
          goto LABEL_6;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_70;
      }

      v40 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_69;
      }

      *v43 = 0;
      v41 = "composition text is not equal";
      goto LABEL_68;
    }

LABEL_6:
    subject = [v6 subject];
    if (subject || ([(CKComposition *)self subject], (proofreadingInfo2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      subject2 = [v6 subject];
      subject3 = [(CKComposition *)self subject];
      v14 = [subject2 isEqual:subject3];

      if (subject)
      {

        if (v14)
        {
          goto LABEL_10;
        }
      }

      else
      {

        if (v14)
        {
          goto LABEL_10;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_70;
      }

      v40 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_69;
      }

      *v43 = 0;
      v41 = "composition subject is not equal";
      goto LABEL_68;
    }

LABEL_10:
    shelfPluginPayload = [v6 shelfPluginPayload];
    if (shelfPluginPayload || ([(CKComposition *)self shelfPluginPayload], (proofreadingInfo2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      shelfPluginPayload2 = [v6 shelfPluginPayload];
      shelfPluginPayload3 = [(CKComposition *)self shelfPluginPayload];
      v18 = [shelfPluginPayload2 isEqual:shelfPluginPayload3];

      if (shelfPluginPayload)
      {

        if (v18)
        {
          goto LABEL_14;
        }
      }

      else
      {

        if (v18)
        {
          goto LABEL_14;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_70;
      }

      v40 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_69;
      }

      *v43 = 0;
      v41 = "composition shelfPluginPayload is not equal";
      goto LABEL_68;
    }

LABEL_14:
    bizIntent = [v6 bizIntent];
    if (bizIntent || ([(CKComposition *)self bizIntent], (proofreadingInfo2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      bizIntent2 = [v6 bizIntent];
      bizIntent3 = [(CKComposition *)self bizIntent];
      v22 = [bizIntent2 isEqual:bizIntent3];

      if (bizIntent)
      {

        if (v22)
        {
          goto LABEL_18;
        }
      }

      else
      {

        if (v22)
        {
          goto LABEL_18;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_70;
      }

      v40 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_69;
      }

      *v43 = 0;
      v41 = "composition bizIntent is not equal";
      goto LABEL_68;
    }

LABEL_18:
    shelfMediaObject = [v6 shelfMediaObject];
    if (shelfMediaObject || ([(CKComposition *)self shelfMediaObject], (proofreadingInfo2 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      shelfMediaObject2 = [v6 shelfMediaObject];
      shelfMediaObject3 = [(CKComposition *)self shelfMediaObject];
      v26 = [shelfMediaObject2 isEqual:shelfMediaObject3];

      if (shelfMediaObject)
      {

        if (v26)
        {
          goto LABEL_22;
        }
      }

      else
      {

        if (v26)
        {
          goto LABEL_22;
        }
      }

      if (!IMOSLoggingEnabled())
      {
        goto LABEL_70;
      }

      v40 = OSLogHandleForIMFoundationCategory();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        goto LABEL_69;
      }

      *v43 = 0;
      v41 = "composition shelfMediaObject is not equal";
      goto LABEL_68;
    }

LABEL_22:
    proofreadingInfo = [v6 proofreadingInfo];
    if (!proofreadingInfo)
    {
      proofreadingInfo2 = [(CKComposition *)self proofreadingInfo];
      if (!proofreadingInfo2)
      {
        goto LABEL_26;
      }
    }

    proofreadingInfo3 = [v6 proofreadingInfo];
    proofreadingInfo4 = [(CKComposition *)self proofreadingInfo];
    v30 = [proofreadingInfo3 isEqual:proofreadingInfo4];

    if (proofreadingInfo)
    {

      if (v30)
      {
        goto LABEL_26;
      }
    }

    else
    {

      if (v30)
      {
LABEL_26:
        collaborationShareOptions = [v6 collaborationShareOptions];
        if (!collaborationShareOptions)
        {
          proofreadingInfo2 = [(CKComposition *)self collaborationShareOptions];
          if (!proofreadingInfo2)
          {
LABEL_30:
            sendLaterPluginInfo = [v6 sendLaterPluginInfo];
            if (!sendLaterPluginInfo)
            {
              proofreadingInfo2 = [(CKComposition *)self sendLaterPluginInfo];
              if (!proofreadingInfo2)
              {
                goto LABEL_34;
              }
            }

            sendLaterPluginInfo2 = [v6 sendLaterPluginInfo];
            sendLaterPluginInfo3 = [(CKComposition *)self sendLaterPluginInfo];
            v38 = [sendLaterPluginInfo2 isEqual:sendLaterPluginInfo3];

            if (sendLaterPluginInfo)
            {

              if (v38)
              {
LABEL_34:
                v39 = 1;
LABEL_71:

                goto LABEL_72;
              }
            }

            else
            {

              if (v38)
              {
                goto LABEL_34;
              }
            }

            if (IMOSLoggingEnabled())
            {
              v40 = OSLogHandleForIMFoundationCategory();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
              {
                *v43 = 0;
                v41 = "composition sendLaterPluginInfo is not equal";
                goto LABEL_68;
              }

LABEL_69:
            }

LABEL_70:
            v39 = 0;
            goto LABEL_71;
          }
        }

        collaborationShareOptions2 = [v6 collaborationShareOptions];
        collaborationShareOptions3 = [(CKComposition *)self collaborationShareOptions];
        v34 = [collaborationShareOptions2 isEqual:collaborationShareOptions3];

        if (collaborationShareOptions)
        {

          if (v34)
          {
            goto LABEL_30;
          }
        }

        else
        {

          if (v34)
          {
            goto LABEL_30;
          }
        }

        if (!IMOSLoggingEnabled())
        {
          goto LABEL_70;
        }

        v40 = OSLogHandleForIMFoundationCategory();
        if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          goto LABEL_69;
        }

        *v43 = 0;
        v41 = "composition collaborationShareOptions are not equal";
LABEL_68:
        _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, v41, v43, 2u);
        goto LABEL_69;
      }
    }

    if (!IMOSLoggingEnabled())
    {
      goto LABEL_70;
    }

    v40 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      goto LABEL_69;
    }

    *v43 = 0;
    v41 = "composition proofreadingInfo is not equal";
    goto LABEL_68;
  }

  v39 = 0;
LABEL_72:

  return v39;
}

- (unint64_t)hash
{
  text = [(CKComposition *)self text];
  v4 = [text hash];
  subject = [(CKComposition *)self subject];
  v6 = [subject hash] + v4;
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  v8 = [shelfPluginPayload hash];
  bizIntent = [(CKComposition *)self bizIntent];
  v10 = v6 + v8 + [bizIntent hash];
  shelfMediaObject = [(CKComposition *)self shelfMediaObject];
  v12 = [shelfMediaObject hash];
  collaborationShareOptions = [(CKComposition *)self collaborationShareOptions];
  v14 = v12 + [collaborationShareOptions hash];
  proofreadingInfo = [(CKComposition *)self proofreadingInfo];
  v16 = v14 + [proofreadingInfo hash];

  return v10 + v16;
}

+ (id)composition
{
  v2 = [[CKComposition alloc] initWithText:0 subject:0];

  return v2;
}

+ (Class)_LPSharedObjectMetadataClass
{
  if (_LPSharedObjectMetadataClass_onceToken != -1)
  {
    +[CKComposition _LPSharedObjectMetadataClass];
  }

  v3 = _LPSharedObjectMetadataClass___LPSharedObjectMetadataClass;

  return v3;
}

uint64_t __45__CKComposition__LPSharedObjectMetadataClass__block_invoke()
{
  result = MEMORY[0x193AF5EC0](@"LPSharedObjectMetadata", @"LinkPresentation");
  _LPSharedObjectMetadataClass___LPSharedObjectMetadataClass = result;
  return result;
}

+ (CKComposition)compositionWithShelfPluginPayload:(id)payload completionHandler:(id)handler
{
  v115 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  handlerCopy = handler;
  v8 = objc_alloc_init(MEMORY[0x1E69A6170]);
  [v8 startTimingForKey:@"totalTimeInMethod"];
  [v8 startTimingForKey:@"beforeCompletionHandler"];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke;
  aBlock[3] = &unk_1E72F8360;
  v9 = v8;
  v109 = v9;
  v10 = handlerCopy;
  v110 = v10;
  v11 = _Block_copy(aBlock);
  [v9 startTimingForKey:@"_compositionWithShelfPluginPayload"];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__80;
  v106 = __Block_byref_object_dispose__80;
  v107 = [self _compositionWithShelfPluginPayload:payloadCopy];
  [v9 stopTimingForKey:@"_compositionWithShelfPluginPayload"];
  if (!v103[5])
  {
    v13 = dispatch_semaphore_create(0);
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__80;
    v97 = __Block_byref_object_dispose__80;
    v98 = [payloadCopy url];
    if ([v94[5] isFileURL])
    {
      [v9 startTimingForKey:@"BRShareCopyShareURLOperation"];
      if (IMOSLoggingEnabled())
      {
        v14 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "Starting BRShareCopyShareURLOperation", buf, 2u);
        }
      }

      v15 = objc_alloc(MEMORY[0x1E6994900]);
      v16 = [v15 initWithFileURL:v94[5] documentType:*MEMORY[0x1E69638B8]];
      v89[0] = MEMORY[0x1E69E9820];
      v89[1] = 3221225472;
      v89[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_290;
      v89[3] = &unk_1E72F8388;
      v92 = &v93;
      v90 = v9;
      v91 = v13;
      [v16 setCopyShareURLCompletionBlock:v89];
      v17 = objc_alloc_init(MEMORY[0x1E696ADC8]);
      [v17 setMaxConcurrentOperationCount:1];
      [v17 addOperation:v16];
    }

    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 3221225472;
    v83[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_294;
    v83[3] = &unk_1E72F83B0;
    v87 = &v93;
    v12 = v13;
    v84 = v12;
    v18 = v9;
    v85 = v18;
    v88 = &v102;
    v86 = v11;
    v67 = _Block_copy(v83);
    v19 = MEMORY[0x1E696ECD8];
    data = [payloadCopy data];
    v66 = [v19 linkWithDataRepresentationWithoutSubstitutingAttachments:data];

    if ([payloadCopy payloadCollaborationType] == 3)
    {
      cloudKitShare = objc_alloc_init(MEMORY[0x1E696ECA0]);
      v21 = objc_alloc_init(+[CKComposition _LPSharedObjectMetadataClass]);
      if (v21)
      {
        [v18 startTimingForKey:@"IMPayloadCollaborationTypePendingCollaboration"];
        collaborationMetadata = [payloadCopy collaborationMetadata];
        title = [collaborationMetadata title];
        [v21 setTitle:title];

        [v21 setIsCollaboration:{objc_msgSend(payloadCopy, "sendAsCopy") ^ 1}];
        v24 = dispatch_queue_create("com.apple.ChatKit.CKComposition.CollaborationHandshakeBundleID", 0);
        v25 = [objc_alloc(MEMORY[0x1E69D37C0]) initWithTargetSerialQueue:v24 synchronous:1];
        collaborationMetadata2 = [payloadCopy collaborationMetadata];
        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_3;
        v76[3] = &unk_1E72F83D8;
        v77 = v21;
        v78 = cloudKitShare;
        v79 = v18;
        v82 = v67;
        v80 = v66;
        v81 = payloadCopy;
        [v25 verifySourceBundleIdentifierFromMetadata:collaborationMetadata2 timeout:v76 completion:5.0];
      }

      else
      {
        (*(v67 + 2))(v67, cloudKitShare, v66, payloadCopy);
      }

      goto LABEL_52;
    }

    if ([payloadCopy payloadCollaborationType] != 2)
    {
      if (IMOSLoggingEnabled())
      {
        v38 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v38, OS_LOG_TYPE_INFO, "Starting startFetchingMetadataForURL", buf, 2u);
        }
      }

      [v18 startTimingForKey:@"startFetchingMetadataForURL"];
      v39 = objc_alloc_init(MEMORY[0x1E696ECE0]);
      v40 = [payloadCopy url];
      startAccessingSecurityScopedResource = [v40 startAccessingSecurityScopedResource];

      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_333;
      v69[3] = &unk_1E72F3DA0;
      v70 = v39;
      v71 = payloadCopy;
      v75 = startAccessingSecurityScopedResource;
      v72 = v66;
      v73 = v18;
      v74 = v67;
      cloudKitShare = v39;
      dispatch_async(MEMORY[0x1E69E96A0], v69);

      goto LABEL_52;
    }

    cloudKitShare = [payloadCopy cloudKitShare];
    if (IMOSLoggingEnabled())
    {
      v27 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v27, OS_LOG_TYPE_INFO, "Obtaining metadata for LP from CKShare", buf, 2u);
      }
    }

    if (!cloudKitShare)
    {
      if (IMOSLoggingEnabled())
      {
        v42 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v112 = payloadCopy;
          _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "Failed to obtain a CKShare from the plugin payload: %@", buf, 0xCu);
        }
      }

      goto LABEL_52;
    }

    [v18 startTimingForKey:@"IMPayloadCollaborationTypeCloudKit"];
    v65 = objc_alloc_init(MEMORY[0x1E696ED30]);
    v28 = [cloudKitShare objectForKeyedSubscript:*MEMORY[0x1E695B828]];
    [v65 setTitle:v28];

    containerSetupInfo = [payloadCopy containerSetupInfo];
    containerOptions = [containerSetupInfo containerOptions];
    applicationBundleIdentifierOverrideForContainerAccess = [containerOptions applicationBundleIdentifierOverrideForContainerAccess];

    if (![applicationBundleIdentifierOverrideForContainerAccess length])
    {
      if (IMOSLoggingEnabled())
      {
        v43 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v43, OS_LOG_TYPE_INFO, "Failed to get a bundleID from pluginPayload", buf, 2u);
        }
      }

LABEL_49:
      v47 = [cloudKitShare objectForKeyedSubscript:*MEMORY[0x1E695B820]];
      if (v47)
      {
        v48 = [objc_alloc(MEMORY[0x1E696EC68]) initWithData:v47 MIMEType:@"image/png"];
        [v65 setIcon:v48];

        goto LABEL_51;
      }

      if (IMOSLoggingEnabled())
      {
        v53 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v112 = applicationBundleIdentifierOverrideForContainerAccess;
          _os_log_impl(&dword_19020E000, v53, OS_LOG_TYPE_INFO, "Falling back to using App Icon for bundleIdentifier:%@", buf, 0xCu);
        }
      }

      if ([applicationBundleIdentifierOverrideForContainerAccess length])
      {
        if (([applicationBundleIdentifierOverrideForContainerAccess containsString:@"com.apple."] & 1) == 0)
        {
          v63 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:applicationBundleIdentifierOverrideForContainerAccess];
          v55 = objc_alloc(MEMORY[0x1E69A8A30]);
          v56 = +[CKUIBehavior sharedBehaviors];
          [v56 thumbnailSizeForAppIconInCollaborationLinks];
          v61 = [v55 initWithSize:? scale:?];

          v57 = [v63 prepareImageForDescriptor:v61];
          v58 = objc_alloc(MEMORY[0x1E696EC68]);
          v59 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v57, "CGImage")}];
          v60 = [v58 initWithPlatformImage:v59];
          [v65 setIcon:v60];

          goto LABEL_51;
        }

        if (!IMOSLoggingEnabled())
        {
LABEL_51:
          v49 = objc_alloc_init(MEMORY[0x1E696ECF8]);
          [v49 setSpecialization:v65];
          [v49 setIsCollaboration:{objc_msgSend(payloadCopy, "sendAsCopy") ^ 1}];
          v50 = objc_alloc_init(MEMORY[0x1E696ECA0]);
          v51 = [payloadCopy url];
          [v50 setOriginalURL:v51];

          [v50 setSpecialization:v49];
          [v18 stopTimingForKey:@"IMPayloadCollaborationTypeCloudKit"];
          (*(v67 + 2))(v67, v50, v66, payloadCopy);

LABEL_52:
          _Block_object_dispose(&v93, 8);

          goto LABEL_53;
        }

        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v112 = applicationBundleIdentifierOverrideForContainerAccess;
          _os_log_impl(&dword_19020E000, v54, OS_LOG_TYPE_INFO, "Not defaulting an icon for %@. Please file a radar!", buf, 0xCu);
        }
      }

      else
      {
        if (!IMOSLoggingEnabled())
        {
          goto LABEL_51;
        }

        v54 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v54, OS_LOG_TYPE_INFO, "Failed to set icon on LP since we failed to get a bundleID", buf, 2u);
        }
      }

      goto LABEL_51;
    }

    v31 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:applicationBundleIdentifierOverrideForContainerAccess allowPlaceholder:1 error:0];
    v32 = [v31 URL];

    if (v32)
    {
      v33 = MEMORY[0x1E696AAE8];
      v34 = [v31 URL];
      v35 = [v33 bundleWithURL:v34];

      if (v35)
      {
        infoDictionary = [v35 infoDictionary];
        v36 = [infoDictionary objectForKeyedSubscript:@"CFBundleDisplayName"];
        [v65 setApplication:v36];
        if (IMOSLoggingEnabled())
        {
          v37 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v112 = v36;
            v113 = 2112;
            v114 = applicationBundleIdentifierOverrideForContainerAccess;
            _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Setting application to:%@ for bundleIdentifier: %@", buf, 0x16u);
          }
        }

LABEL_48:
        goto LABEL_49;
      }
    }

    else
    {
      v44 = IMLogHandleForCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        +[CKComposition compositionWithShelfPluginPayload:completionHandler:];
      }
    }

    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        v46 = [v31 URL];
        *buf = 138412290;
        v112 = v46;
        _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "Failed to get a bundle from appRecord.URL: %@", buf, 0xCu);
      }
    }

    goto LABEL_48;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_285;
  block[3] = &unk_1E72F1F78;
  v100 = v11;
  v101 = &v102;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  v12 = v100;
LABEL_53:

  _Block_object_dispose(&v102, 8);
  return result;
}

void __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) stopTimingForKey:@"beforeCompletionHandler"];
  [*(a1 + 32) startTimingForKey:@"completionHandler"];
  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }

  [*(a1 + 32) stopTimingForKey:@"completionHandler"];
  [*(a1 + 32) stopTimingForKey:@"totalTimeInMethod"];
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "[CKComposition compositionWithShelfPluginPayload:competionHandler:] perf timer: %@", &v10, 0xCu);
    }
  }
}

void __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_290(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = 138412290;
        v14 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "CKComposition_Collaboration failed to get url with error: %@", &v13, 0xCu);
      }
    }

    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = 0;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  [*(a1 + 32) stopTimingForKey:@"BRShareCopyShareURLOperation"];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Finished BRShareCopyShareURLOperation", &v13, 2u);
    }
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

void __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_294(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = *(*(*(a1 + 56) + 8) + 40);
  v9 = a3;
  v10 = a2;
  if ([v8 isFileURL])
  {
    v11 = *(a1 + 32);
    v12 = dispatch_time(0, 30000000000);
    dispatch_semaphore_wait(v11, v12);
  }

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    [*(a1 + 40) startTimingForKey:@"updateCollaborationMetadata"];
    v13 = [v7 collaborationMetadata];
    v14 = [v13 updatedCollaborationMetadataAppBundleIDsWithSharingURL:*(*(*(a1 + 56) + 8) + 40)];
    [v7 setCollaborationMetadata:v14];

    [*(a1 + 40) stopTimingForKey:@"updateCollaborationMetadata"];
  }

  v15 = [v7 collaborationMetadata];
  [v10 setCollaborationMetadata:v15];

  [v9 setMetadata:v10];
  v16 = [v9 dataRepresentationWithOutOfLineAttachments:0];

  [v7 setData:v16];
  v17 = [[CKComposition alloc] initWithText:0 subject:0 shelfPluginPayload:v7 shelfMediaObject:0];
  v18 = *(*(a1 + 64) + 8);
  v19 = *(v18 + 40);
  *(v18 + 40) = v17;

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_2;
  v22[3] = &unk_1E72F1F78;
  v20 = *(a1 + 48);
  v21 = *(a1 + 64);
  v23 = v20;
  v24 = v21;
  dispatch_async(MEMORY[0x1E69E96A0], v22);
}

void __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v5 length];
  v8 = IMOSLoggingEnabled();
  if (v7)
  {
    if (v8)
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v21 = 138412290;
        v22 = v5;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Obtaining app name and icon for 3rd party collaboration using bundle ID: %@", &v21, 0xCu);
      }
    }

    v10 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v5 allowPlaceholder:1 error:0];
    v11 = [v10 localizedName];
    [*(a1 + 32) setSubtitle:v11];

    v12 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:v5];
    v13 = objc_alloc(MEMORY[0x1E69A8A30]);
    v14 = +[CKUIBehavior sharedBehaviors];
    [v14 thumbnailSizeForAppIconInCollaborationLinks];
    v15 = [v13 initWithSize:? scale:?];

    v16 = [v12 prepareImageForDescriptor:v15];
    v17 = objc_alloc(MEMORY[0x1E696EC68]);
    v18 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:{objc_msgSend(v16, "CGImage")}];
    v19 = [v17 initWithPlatformImage:v18];
    [*(a1 + 32) setIcon:v19];
  }

  else if (v8)
  {
    v20 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = 138412290;
      v22 = v6;
      _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Failed to obtain app name and icon for 3rd party collaboration. Error from bundle ID lookup: %@", &v21, 0xCu);
    }
  }

  [*(a1 + 40) setSpecialization:*(a1 + 32)];
  [*(a1 + 48) stopTimingForKey:@"IMPayloadCollaborationTypePendingCollaboration"];
  (*(*(a1 + 72) + 16))();
}

void __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_333(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) url];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_2_334;
  v10[3] = &unk_1E72F8400;
  v13 = *(a1 + 72);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  *&v8 = v6;
  *(&v8 + 1) = v7;
  *&v9 = v4;
  *(&v9 + 1) = v5;
  v11 = v9;
  v12 = v8;
  [v2 startFetchingMetadataForURL:v3 completionHandler:v10];
}

void __69__CKComposition_compositionWithShelfPluginPayload_completionHandler___block_invoke_2_334(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 64) == 1)
  {
    v7 = [*(a1 + 32) url];
    [v7 stopAccessingSecurityScopedResource];
  }

  v8 = objc_alloc_init(+[CKComposition _LPSharedObjectMetadataClass]);
  if (v8)
  {
    v9 = [v5 specialization];
    [v8 setSpecialization:v9];

    [v8 setIsCollaboration:{objc_msgSend(*(a1 + 32), "sendAsCopy") ^ 1}];
    [v5 setSpecialization:v8];
  }

  else
  {
    [v5 setCollaborationType:2];
    v10 = [*(a1 + 40) metadata];
    v11 = [v10 specialization];
    [v5 setSpecialization:v11];
  }

  [*(a1 + 48) stopTimingForKey:@"startFetchingMetadataForURL"];
  if (IMOSLoggingEnabled())
  {
    v12 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_19020E000, v12, OS_LOG_TYPE_INFO, "Finished startFetchingMetadataForURL", v13, 2u);
    }
  }

  (*(*(a1 + 56) + 16))();
}

+ (id)_compositionWithShelfPluginPayload:(id)payload
{
  payloadCopy = payload;
  if ([payloadCopy supportsCollaboration])
  {
    v4 = 0;
    goto LABEL_19;
  }

  __ck_urlFromTextBodyForRichLink = [payloadCopy __ck_urlFromTextBodyForRichLink];
  if ([payloadCopy shouldSendAsMediaObject])
  {
    mediaObjectFromPayload = [payloadCopy mediaObjectFromPayload];
    v7 = [CKComposition alloc];
    v8 = 0;
    v9 = payloadCopy;
  }

  else
  {
    if (([payloadCopy shouldSendAsRichLink] & 1) != 0 || __ck_urlFromTextBodyForRichLink)
    {
      if (!__ck_urlFromTextBodyForRichLink)
      {
        __ck_urlFromTextBodyForRichLink = [payloadCopy url];
      }

      v13 = [payloadCopy copy];
      stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
      [v13 setMessageGUID:stringGUID];

      absoluteString = [__ck_urlFromTextBodyForRichLink absoluteString];
      if ([absoluteString length])
      {
        v16 = objc_alloc(MEMORY[0x1E696AAB0]);
        absoluteString2 = [__ck_urlFromTextBodyForRichLink absoluteString];
        v18 = [v16 initWithString:absoluteString2];
        [v13 setText:v18];
      }

      else
      {
        [v13 setText:0];
      }

      [v13 setPluginBundleID:*MEMORY[0x1E69A6A18]];
      [v13 setUrl:__ck_urlFromTextBodyForRichLink];
      v4 = [[CKComposition alloc] initWithText:0 subject:0 shelfPluginPayload:v13];

      goto LABEL_18;
    }

    shouldSendAsText = [payloadCopy shouldSendAsText];
    v12 = [CKComposition alloc];
    __ck_urlFromTextBodyForRichLink = [payloadCopy text];
    v7 = v12;
    v8 = __ck_urlFromTextBodyForRichLink;
    if (!shouldSendAsText)
    {
      v10 = [(CKComposition *)v12 initWithText:__ck_urlFromTextBodyForRichLink subject:0 shelfPluginPayload:payloadCopy shelfMediaObject:0];
      goto LABEL_6;
    }

    v9 = 0;
  }

  v10 = [(CKComposition *)v7 initWithText:v8 subject:0 shelfPluginPayload:v9];
LABEL_6:
  v4 = v10;
LABEL_18:

LABEL_19:

  return v4;
}

+ (CKComposition)compositionWithText:(id)text subject:(id)subject shelfPluginPayload:(id)payload completionHandler:(id)handler
{
  handlerCopy = handler;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__80;
  v22 = __Block_byref_object_dispose__80;
  payloadCopy = payload;
  subjectCopy = subject;
  textCopy = text;
  v13 = [[CKComposition alloc] initWithText:textCopy subject:subjectCopy shelfPluginPayload:payloadCopy];

  v23 = v13;
  if (v19[5])
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __82__CKComposition_compositionWithText_subject_shelfPluginPayload_completionHandler___block_invoke;
    v15[3] = &unk_1E72F1F78;
    v16 = handlerCopy;
    v17 = &v18;
    dispatch_async(MEMORY[0x1E69E96A0], v15);
  }

  _Block_object_dispose(&v18, 8);

  return result;
}

+ (CKComposition)compositionWithMSMessage:(id)message appExtensionIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v7 = [MEMORY[0x1E6963678] pluginKitProxyForIdentifier:identifierCopy];
  teamID = [v7 teamID];
  v9 = teamID;
  v10 = @"0000000000";
  if (teamID)
  {
    v10 = teamID;
  }

  v11 = v10;

  bundleIdentifier = [v7 bundleIdentifier];
  v13 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v14 = bundleIdentifier;
  }

  else
  {
    v14 = identifierCopy;
  }

  v15 = v14;

  v16 = *MEMORY[0x1E69A69F0];
  v17 = [*MEMORY[0x1E69A69F0] stringByAppendingFormat:@":%@:%@", v11, v15];

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v19 = [mEMORY[0x1E69A5AD0] balloonPluginForBundleID:v17];

  identifier = [v19 identifier];
  LODWORD(v16) = [identifier isEqualToString:v16];

  if (v16)
  {
    v21 = objc_alloc(MEMORY[0x1E69A5AB0]);
    pluginBundle = [v19 pluginBundle];
    v23 = [v21 initWithPluginBundle:pluginBundle pluginKitProxy:v7 extension:0];

    v19 = v23;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    adamID = [v19 adamID];
    browserDisplayName = [v19 browserDisplayName];
    dataSourceClass = [v19 dataSourceClass];
    v27 = [v19 __ck_statusJPEGImageDataForTransportWithCompressionFactor:0.2];
    v28 = [dataSourceClass pluginPayloadFromMessagePayload:messageCopy appIconData:v27 appName:browserDisplayName adamID:adamID allowDataPayloads:0];

    [v28 setIsFromMe:1];
    identifier2 = [v19 identifier];
    [v28 setPluginBundleID:identifier2];

    v30 = [CKComposition _compositionWithShelfPluginPayload:v28];
  }

  else
  {
    v30 = 0;
  }

  return v30;
}

- (CKComposition)initWithText:(id)text subject:(id)subject shelfPluginPayload:(id)payload bizIntent:(id)intent
{
  intentCopy = intent;
  payloadCopy = payload;
  subjectCopy = subject;
  textCopy = text;
  v14 = [objc_alloc(objc_opt_class()) initWithText:textCopy subject:subjectCopy translation:0 shelfPluginPayload:payloadCopy bizIntent:intentCopy shelfMediaObject:0 proofreadingInfo:0];

  return v14;
}

- (CKComposition)initWithText:(id)text subject:(id)subject translation:(id)translation shelfPluginPayload:(id)payload bizIntent:(id)intent shelfMediaObject:(id)object proofreadingInfo:(id)info
{
  textCopy = text;
  subjectCopy = subject;
  translationCopy = translation;
  payloadCopy = payload;
  intentCopy = intent;
  objectCopy = object;
  infoCopy = info;
  v33.receiver = self;
  v33.super_class = CKComposition;
  v22 = [(CKComposition *)&v33 init];
  if (v22)
  {
    if ([textCopy length])
    {
      v23 = textCopy;
    }

    else
    {
      v23 = 0;
    }

    [(CKComposition *)v22 setText:v23];
    if ([subjectCopy length])
    {
      v24 = subjectCopy;
    }

    else
    {
      v24 = 0;
    }

    [(CKComposition *)v22 setSubject:v24];
    if ([translationCopy length])
    {
      v25 = translationCopy;
    }

    else
    {
      v25 = 0;
    }

    [(CKComposition *)v22 setTranslation:v25];
    [(CKComposition *)v22 setShelfPluginPayload:payloadCopy];
    v26 = [intentCopy copy];
    if ([v26 count])
    {
      v27 = [intentCopy copy];
      [(CKComposition *)v22 setBizIntent:v27];
    }

    else
    {
      [(CKComposition *)v22 setBizIntent:0];
    }

    [(CKComposition *)v22 setShelfMediaObject:objectCopy];
    [(CKComposition *)v22 setProofreadingInfo:infoCopy];
    if (payloadCopy)
    {
      collaborationMetadata = [payloadCopy collaborationMetadata];
      userSelectedShareOptions = [collaborationMetadata userSelectedShareOptions];

      if (userSelectedShareOptions || ([payloadCopy collaborationMetadata], v30 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v30, "defaultShareOptions"), userSelectedShareOptions = objc_claimAutoreleasedReturnValue(), v30, userSelectedShareOptions))
      {
        [(CKComposition *)v22 setCollaborationShareOptions:userSelectedShareOptions];
        optionsGroups = [userSelectedShareOptions optionsGroups];
        [(CKComposition *)v22 setCollaborationOptions:optionsGroups];
      }
    }
  }

  return v22;
}

- (IMPluginPayload)firstEmbeddedPluginPayload
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__80;
  v11 = __Block_byref_object_dispose__80;
  v12 = 0;
  text = [(CKComposition *)self text];
  v3 = [text length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__CKComposition_firstEmbeddedPluginPayload__block_invoke;
  v6[3] = &unk_1E72F8428;
  v6[4] = &v7;
  [text enumerateAttribute:@"EmbeddedRichLinkConfiguration" inRange:0 options:v3 usingBlock:{0, v6}];
  v4 = v8[5];

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __43__CKComposition_firstEmbeddedPluginPayload__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  if (a2)
  {
    v7 = [a2 pluginPayload];
    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a5 = 1;
  }
}

- (BOOL)_compositionTextBeginsWithEmbeddedPluginAttachment
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  text = [(CKComposition *)self text];
  v3 = [text length];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __67__CKComposition__compositionTextBeginsWithEmbeddedPluginAttachment__block_invoke;
  v6[3] = &unk_1E72F12E0;
  v6[4] = &v7;
  [text enumerateAttributesInRange:0 options:v3 usingBlock:{0, v6}];
  v4 = *(v8 + 24);

  _Block_object_dispose(&v7, 8);
  return v4;
}

void __67__CKComposition__compositionTextBeginsWithEmbeddedPluginAttachment__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v7 = [a2 objectForKeyedSubscript:@"EmbeddedRichLinkConfiguration"];
  if (v7)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }

  *a5 = 1;
}

- (BOOL)hasNonwhiteSpaceContent
{
  if ([(CKComposition *)self hasContent])
  {
    text = [(CKComposition *)self text];
    string = [text string];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [string __ck_containsOnlyCharactersFromSet:whitespaceAndNewlineCharacterSet] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)compositionByReplacingText:(id)text
{
  textCopy = text;
  [(CKComposition *)self isExpirableComposition];
  v5 = objc_alloc(objc_opt_class());
  subject = [(CKComposition *)self subject];
  translation = [(CKComposition *)self translation];
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  bizIntent = [(CKComposition *)self bizIntent];
  shelfMediaObject = [(CKComposition *)self shelfMediaObject];
  proofreadingInfo = [(CKComposition *)self proofreadingInfo];
  v12 = [v5 initWithText:textCopy subject:subject translation:translation shelfPluginPayload:shelfPluginPayload bizIntent:bizIntent shelfMediaObject:shelfMediaObject proofreadingInfo:proofreadingInfo];

  expressiveSendStyleID = [(CKComposition *)self expressiveSendStyleID];
  [v12 setExpressiveSendStyleID:expressiveSendStyleID];

  [v12 setShouldHideClearPluginButton:{-[CKComposition shouldHideClearPluginButton](self, "shouldHideClearPluginButton")}];
  sendLaterPluginInfo = [(CKComposition *)self sendLaterPluginInfo];
  [v12 setSendLaterPluginInfo:sendLaterPluginInfo];

  return v12;
}

- (id)compositionByAppendingComposition:(id)composition
{
  compositionCopy = composition;
  subject = [compositionCopy subject];
  v6 = -[CKComposition _compositionByAppendingText:isExpirable:shelfPluginPayload:shelfMediaObject:addingNewLineIfNedded:](self, "_compositionByAppendingText:isExpirable:shelfPluginPayload:shelfMediaObject:addingNewLineIfNedded:", subject, [compositionCopy isExpirableComposition], 0, 0, 1);
  text = [compositionCopy text];
  isExpirableComposition = [compositionCopy isExpirableComposition];
  shelfPluginPayload = [compositionCopy shelfPluginPayload];
  shelfMediaObject = [compositionCopy shelfMediaObject];

  v11 = [v6 _compositionByAppendingText:text isExpirable:isExpirableComposition shelfPluginPayload:shelfPluginPayload shelfMediaObject:shelfMediaObject addingNewLineIfNedded:1];

  return v11;
}

+ (CKComposition)compositionWithShelfMediaObject:(id)object
{
  objectCopy = object;
  v4 = [[CKComposition alloc] initWithText:0 subject:0 translation:0 shelfPluginPayload:0 bizIntent:0 shelfMediaObject:objectCopy proofreadingInfo:0];

  return v4;
}

+ (id)compositionForTUConversationActivity:(id)activity
{
  activityCopy = activity;
  v4 = objc_alloc_init(MEMORY[0x1E696ECA0]);
  v5 = objc_alloc_init(MEMORY[0x1E696ECF0]);
  concatenatedMetadataDescription = [activityCopy concatenatedMetadataDescription];
  v7 = [concatenatedMetadataDescription length];

  if (v7)
  {
    concatenatedMetadataDescription2 = [activityCopy concatenatedMetadataDescription];
    [v5 setTitle:concatenatedMetadataDescription2];
  }

  bundleIdentifier = [activityCopy bundleIdentifier];
  [v5 setApplicationBundleIdentifier:bundleIdentifier];

  localizedApplicationName = [activityCopy localizedApplicationName];
  if (localizedApplicationName)
  {
    [v5 setApplication:localizedApplicationName];
  }

  else
  {
    fallbackApplicationName = [activityCopy fallbackApplicationName];
    [v5 setApplication:fallbackApplicationName];
  }

  metadata = [activityCopy metadata];
  imageData = [metadata imageData];

  if (imageData)
  {
    v14 = MEMORY[0x1E69DCAB8];
    metadata2 = [activityCopy metadata];
    imageData2 = [metadata2 imageData];
    v17 = [v14 imageWithData:imageData2];

    if (v17)
    {
      v18 = [objc_alloc(MEMORY[0x1E696EC68]) initWithPlatformImage:v17];
      [v5 setIcon:v18];
    }
  }

  [v4 setSpecialization:v5];
  v19 = objc_alloc_init(MEMORY[0x1E696ECD8]);
  [v19 setMetadata:v4];
  v20 = [v19 dataRepresentationWithOutOfLineAttachments:0];
  v21 = objc_alloc_init(CKBrowserItemPayload);
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  [(CKBrowserItemPayload *)v21 setMessageGUID:stringGUID];

  [(CKBrowserItemPayload *)v21 setPluginBundleID:*MEMORY[0x1E69A6A18]];
  [(CKBrowserItemPayload *)v21 setData:v20];
  v23 = [[CKComposition alloc] initWithText:0 subject:0 shelfPluginPayload:v21];
  shelfPluginPayload = [(CKComposition *)v23 shelfPluginPayload];
  [shelfPluginPayload setGroupActivity:activityCopy];

  return v23;
}

- (BOOL)isSendAnimated
{
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    shelfPluginPayload2 = [(CKComposition *)self shelfPluginPayload];
  }

  else
  {
    shelfPluginPayload2 = 0;
  }

  useDirectSend = [shelfPluginPayload2 useDirectSend];
  return useDirectSend ^ 1;
}

- (Class)balloonViewClass
{
  mediaObjects = [(CKComposition *)self mediaObjects];
  v4 = [mediaObjects count];

  if (v4)
  {
    mediaObjects2 = [(CKComposition *)self mediaObjects];
    lastObject = [mediaObjects2 lastObject];

    mediaType = [lastObject mediaType];
    if (mediaType > 4)
    {
      if (mediaType <= 0xB && (((1 << mediaType) & 0xAE0) != 0 || mediaType == 8 || mediaType == 10))
      {
        goto LABEL_42;
      }

      goto LABEL_29;
    }

    if ((mediaType - 2) < 2)
    {
      mEMORY[0x1E69A7FC8] = [MEMORY[0x1E69A7FC8] sharedManager];
      isFeatureEnabled = [mEMORY[0x1E69A7FC8] isFeatureEnabled];

      if (isFeatureEnabled && ([lastObject commSafetySensitive] != 1 || objc_msgSend(lastObject, "isFromMe")))
      {
        [lastObject commSafetySensitive];
      }

      goto LABEL_42;
    }

    if (mediaType != 1 && mediaType != 4)
    {
LABEL_29:

      goto LABEL_30;
    }

    goto LABEL_42;
  }

  pluginDisplayContainers = [(CKComposition *)self pluginDisplayContainers];
  v9 = [pluginDisplayContainers count];

  if (v9)
  {
LABEL_7:
    v10 = objc_opt_class();
    goto LABEL_43;
  }

  text = [(CKComposition *)self text];
  v12 = [text length];

  if (v12)
  {
    subject = [(CKComposition *)self subject];
    v14 = [subject length];

    if (v14 || (-[CKComposition text](self, "text"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 __ck_bigEmojiStyle], v15, (v16 - 1) > 2))
    {
      [(CKComposition *)self _compositionTextBeginsWithEmbeddedPluginAttachment];
    }

    goto LABEL_7;
  }

  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  if (!shelfPluginPayload)
  {
LABEL_30:
    v10 = 0;
    goto LABEL_43;
  }

  lastObject = shelfPluginPayload;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    mediaObjectFromPayload = [lastObject mediaObjectFromPayload];
    v21 = mediaObjectFromPayload != 0;
  }

  else
  {
    v21 = 0;
  }

  pluginBundleID = [lastObject pluginBundleID];
  if ([pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]])
  {
  }

  else
  {
    pluginBundleID2 = [lastObject pluginBundleID];
    v24 = IMBalloonExtensionIDWithSuffix();
    v25 = [pluginBundleID2 isEqualToString:v24] | v21;

    if ((v25 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  mEMORY[0x1E69A7FC8]2 = [MEMORY[0x1E69A7FC8] sharedManager];
  isFeatureEnabled2 = [mEMORY[0x1E69A7FC8]2 isFeatureEnabled];

  if (isFeatureEnabled2)
  {
    mediaObjectFromPayload2 = [lastObject mediaObjectFromPayload];
    if ([mediaObjectFromPayload2 commSafetySensitive] == 1)
    {
      mediaObjectFromPayload3 = [lastObject mediaObjectFromPayload];
      isFromMe = [mediaObjectFromPayload3 isFromMe];

      if (!isFromMe)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    mediaObjectFromPayload4 = [lastObject mediaObjectFromPayload];
    [mediaObjectFromPayload4 commSafetySensitive];
  }

LABEL_42:
  v10 = objc_opt_class();

LABEL_43:

  return v10;
}

+ (CKComposition)compositionWithPluginDisplayContainer:(id)container subject:(id)subject
{
  v13[1] = *MEMORY[0x1E69E9840];
  containerCopy = container;
  subjectCopy = subject;
  if (containerCopy)
  {
    v12 = @"PluginDisplayContainer";
    v13[0] = containerCopy;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v8 = objc_alloc(MEMORY[0x1E696AAB0]);
    v9 = [v8 initWithString:*MEMORY[0x1E69A5F00] attributes:v7];
  }

  else
  {
    v9 = 0;
  }

  v10 = [[CKComposition alloc] initWithText:v9 subject:subjectCopy];

  return v10;
}

- (id)compositionByAppendingPluginDisplayContainer:(id)container
{
  v4 = [CKComposition compositionWithPluginDisplayContainer:container subject:0];
  v5 = [(CKComposition *)self compositionByAppendingComposition:v4];

  return v5;
}

+ (CKComposition)compositionWithMediaObject:(id)object subject:(id)subject
{
  v18[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  subjectCopy = subject;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = @"AdaptiveImageGlyphMediaObject";
    v18[0] = objectCopy;
    v7 = MEMORY[0x1E695DF20];
    v8 = v18;
    v9 = &v17;
LABEL_5:
    v10 = [v7 dictionaryWithObjects:v8 forKeys:v9 count:1];
    v11 = objc_alloc(MEMORY[0x1E696AAB0]);
    v12 = [v11 initWithString:*MEMORY[0x1E69A5F00] attributes:v10];

    goto LABEL_6;
  }

  if (objectCopy)
  {
    v15 = @"MediaObjectForTextAttachment";
    v16 = objectCopy;
    v7 = MEMORY[0x1E695DF20];
    v8 = &v16;
    v9 = &v15;
    goto LABEL_5;
  }

  v12 = 0;
LABEL_6:
  v13 = [[CKComposition alloc] initWithText:v12 subject:subjectCopy];

  return v13;
}

+ (CKComposition)compositionWithMediaObjects:(id)objects subject:(id)subject
{
  subjectCopy = subject;
  objectsCopy = objects;
  v7 = [[CKComposition alloc] initWithText:0 subject:subjectCopy];

  v8 = [(CKComposition *)v7 compositionByAppendingMediaObjects:objectsCopy];

  return v8;
}

- (id)compositionByAppendingMediaObject:(id)object
{
  v4 = [CKComposition compositionWithMediaObject:object subject:0];
  v5 = [(CKComposition *)self compositionByAppendingComposition:v4];

  return v5;
}

- (id)compositionByAppendingMediaObjects:(id)objects
{
  v17 = *MEMORY[0x1E69E9840];
  objectsCopy = objects;
  selfCopy = self;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      v10 = selfCopy;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(objectsCopy);
        }

        selfCopy = [(CKComposition *)v10 compositionByAppendingMediaObject:*(*(&v12 + 1) + 8 * v9)];

        ++v9;
        v10 = selfCopy;
      }

      while (v7 != v9);
      v7 = [objectsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return selfCopy;
}

- (id)compositionByReplacingMediaObject:(id)object withMediaObject:(id)mediaObject
{
  objectCopy = object;
  mediaObjectCopy = mediaObject;
  text = [(CKComposition *)self text];
  v9 = [text length];
  v10 = [text mutableCopy];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __82__CKComposition_CKMediaObject__compositionByReplacingMediaObject_withMediaObject___block_invoke;
  v29[3] = &unk_1E72F8450;
  v11 = objectCopy;
  v30 = v11;
  v12 = v10;
  v31 = v12;
  v13 = mediaObjectCopy;
  v32 = v13;
  [text enumerateAttribute:@"MediaObjectForTextAttachment" inRange:0 options:v9 usingBlock:{0, v29}];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __82__CKComposition_CKMediaObject__compositionByReplacingMediaObject_withMediaObject___block_invoke_2;
  v25 = &unk_1E72F8478;
  v26 = v11;
  v27 = v12;
  v28 = v13;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  [text enumerateAttribute:@"AdaptiveImageGlyphMediaObject" inRange:0 options:v9 usingBlock:{0, &v22}];
  v17 = [CKComposition alloc];
  v18 = [(CKComposition *)self subject:v22];
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  v20 = [(CKComposition *)v17 initWithText:v15 subject:v18 shelfPluginPayload:shelfPluginPayload];

  return v20;
}

uint64_t __82__CKComposition_CKMediaObject__compositionByReplacingMediaObject_withMediaObject___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 32) == a2)
  {
    return [*(result + 40) addAttribute:@"MediaObjectForTextAttachment" value:*(result + 48) range:{a3, a4}];
  }

  return result;
}

uint64_t __82__CKComposition_CKMediaObject__compositionByReplacingMediaObject_withMediaObject___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 32) == a2)
  {
    return [*(result + 40) addAttribute:@"AdaptiveImageGlyphMediaObject" value:*(result + 48) range:{a3, a4}];
  }

  return result;
}

- (id)compositionByRemovingMediaObjects:(id)objects
{
  objectsCopy = objects;
  text = [(CKComposition *)self text];
  v6 = [text mutableCopy];
  v7 = [text length];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __66__CKComposition_CKMediaObject__compositionByRemovingMediaObjects___block_invoke;
  v18 = &unk_1E72F84A0;
  v19 = objectsCopy;
  v20 = v6;
  v8 = v6;
  v9 = objectsCopy;
  [text enumerateAttribute:@"MediaObjectForTextAttachment" inRange:0 options:v7 usingBlock:{2, &v15}];
  v10 = [CKComposition alloc];
  v11 = [(CKComposition *)self subject:v15];
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  v13 = [(CKComposition *)v10 initWithText:v8 subject:v11 shelfPluginPayload:shelfPluginPayload];

  return v13;
}

uint64_t __66__CKComposition_CKMediaObject__compositionByRemovingMediaObjects___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    [*(a1 + 40) removeAttribute:@"MediaObjectForTextAttachment" range:{a3, a4}];
    if (a3 && ([*(a1 + 40) string], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "characterAtIndex:", a3 - 1), v8, v9 == 10))
    {
      v10 = *(a1 + 40);
      v11 = a4 + 1;
      v12 = a3 - 1;
    }

    else
    {
      v10 = *(a1 + 40);
      v12 = a3;
      v11 = a4;
    }

    return [v10 deleteCharactersInRange:{v12, v11}];
  }

  return result;
}

uint64_t __44__CKComposition_CKMediaObject__mediaObjects__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

uint64_t __44__CKComposition_CKMediaObject__mediaObjects__block_invoke_2(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) addObject:a2];
  }

  return result;
}

- (NSArray)pluginDisplayContainers
{
  text = [(CKComposition *)self text];
  array = [MEMORY[0x1E695DF70] array];
  v4 = [text length];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__CKComposition_CKMediaObject__pluginDisplayContainers__block_invoke;
  v7[3] = &unk_1E72EF890;
  v5 = array;
  v8 = v5;
  [text enumerateAttribute:@"PluginDisplayContainer" inRange:0 options:v4 usingBlock:{0, v7}];

  return v5;
}

void __55__CKComposition_CKMediaObject__pluginDisplayContainers__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 32) addObject:v3];
    }
  }
}

- (BOOL)isTextOnly
{
  text = [(CKComposition *)self text];
  if ([text containsAttribute:@"MediaObjectForTextAttachment"] & 1) != 0 || (objc_msgSend(text, "containsAttribute:", @"PluginDisplayContainer"))
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = [text containsAttribute:@"AdaptiveImageGlyphMediaObject"] ^ 1;
  }

  return v3;
}

- (unint64_t)mediaObjectsFileSize
{
  v26 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  mediaObjects = [(CKComposition *)self mediaObjects];
  v3 = [mediaObjects countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138412546;
    v16 = v4;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(mediaObjects);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        fileURL = [v8 fileURL];
        absoluteString = [fileURL absoluteString];
        v11 = IMFileSizeForItemAtPath();
        v12 = 0;

        if (!v11)
        {
          v13 = IMLogHandleForCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            fileURL2 = [v8 fileURL];
            *buf = v16;
            v22 = fileURL2;
            v23 = 2112;
            v24 = v12;
            _os_log_error_impl(&dword_19020E000, v13, OS_LOG_TYPE_ERROR, "Unable to get file size for file at path: %@, error: %@", buf, 0x16u);
          }
        }
      }

      v5 = [mediaObjects countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v5);
  }

  return 0;
}

- (id)externalSourceComposition
{
  v3 = [_CKExternalAudioComposition alloc];
  text = [(CKComposition *)self text];
  subject = [(CKComposition *)self subject];
  v6 = [(CKComposition *)v3 initWithText:text subject:subject];

  return v6;
}

- (id)superFormatSubject
{
  subject = [(CKComposition *)self subject];
  if (subject)
  {
    v3 = objc_alloc(MEMORY[0x1E696AAB0]);
    string = [subject string];
    v5 = [v3 initWithString:string];

    __im_attributedStringByAssigningMessagePartNumbers = [v5 __im_attributedStringByAssigningMessagePartNumbers];
  }

  else
  {
    __im_attributedStringByAssigningMessagePartNumbers = 0;
  }

  return __im_attributedStringByAssigningMessagePartNumbers;
}

- (id)_attributedStringByTrimmingWhiteSpaceAroundAttachmentsInText:(id)text
{
  textCopy = text;
  v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v15 = 1;
  v5 = [textCopy length];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __93__CKComposition_IMSuperFormat___attributedStringByTrimmingWhiteSpaceAroundAttachmentsInText___block_invoke;
  v10[3] = &unk_1E72F8518;
  v6 = textCopy;
  v11 = v6;
  v13 = v14;
  v7 = v4;
  v12 = v7;
  [v6 enumerateAttribute:@"MediaObjectForTextAttachment" inRange:0 options:v5 usingBlock:{0, v10}];
  v8 = [v7 copy];

  _Block_object_dispose(v14, 8);

  return v8;
}

void __93__CKComposition_IMSuperFormat___attributedStringByTrimmingWhiteSpaceAroundAttachmentsInText___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = [*(a1 + 32) length];
  v10 = v8 - 1 >= a3 && v8 - 1 - a3 < a4;
  if (!a2)
  {
    v11 = [*(a1 + 32) string];
    v12 = [v11 substringWithRange:{a3, a4}];

    v13 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    if ([v12 __ck_containsOnlyCharactersFromSet:v13])
    {
      v14 = *(*(*(a1 + 48) + 8) + 24);

      if ((v14 & 1) == 0)
      {
        a4 = 0;
        a3 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_18:

        goto LABEL_19;
      }
    }

    else
    {
    }

    v15 = [MEMORY[0x1E696AB08] newlineCharacterSet];
    if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0 && [v12 rangeOfCharacterFromSet:v15 options:8] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a3;
      --a4;
    }

    if (!v10)
    {
      a4 -= [v12 rangeOfCharacterFromSet:v15 options:12] != 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_18;
  }

LABEL_19:
  if (a4)
  {
    v16 = [*(a1 + 32) attributedSubstringFromRange:{a3, a4}];
    [*(a1 + 40) appendAttributedString:v16];
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
}

- (id)_attributedStringByReplacingMediaObjectsWithTransferGUIDsInText:(id)text transferGUIDs:(id *)ds mediaObjects:(id *)objects
{
  textCopy = text;
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v11 = [textCopy length];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __123__CKComposition_IMSuperFormat___attributedStringByReplacingMediaObjectsWithTransferGUIDsInText_transferGUIDs_mediaObjects___block_invoke;
  v23 = &unk_1E72EFEE8;
  v12 = array;
  v24 = v12;
  v13 = array2;
  v25 = v13;
  v26 = v10;
  v27 = textCopy;
  v14 = textCopy;
  v15 = v10;
  [v14 enumerateAttributesInRange:0 options:v11 usingBlock:{0, &v20}];
  if (ds)
  {
    if ([v12 count])
    {
      v16 = v12;
    }

    else
    {
      v16 = 0;
    }

    *ds = v16;
  }

  if (objects)
  {
    if ([v13 count])
    {
      v17 = v13;
    }

    else
    {
      v17 = 0;
    }

    *objects = v17;
  }

  v18 = [v15 copy];

  return v18;
}

void __123__CKComposition_IMSuperFormat___attributedStringByReplacingMediaObjectsWithTransferGUIDsInText_transferGUIDs_mediaObjects___block_invoke(id *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v19 = a2;
  v7 = [v19 objectForKeyedSubscript:@"MediaObjectForTextAttachment"];
  if (v7 || ([v19 objectForKeyedSubscript:@"AdaptiveImageGlyphMediaObject"], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v7 transferGUID];
    [a1[4] addObject:v9];
    [a1[5] addObject:v8];
    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69A5F68]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A5EF8]];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v10 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A5F50]];
    }

    v11 = *MEMORY[0x1E69A7CF8];
    v12 = [v19 objectForKeyedSubscript:*MEMORY[0x1E69A7CF8]];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 copy];
      [v10 setObject:v14 forKeyedSubscript:v11];
    }

    if (a3 < a3 + a4)
    {
      v15 = *MEMORY[0x1E69A5F00];
      do
      {
        v16 = objc_alloc(MEMORY[0x1E696AAB0]);
        v17 = [v10 copy];
        v18 = [v16 initWithString:v15 attributes:v17];

        [a1[6] appendAttributedString:v18];
        --a4;
      }

      while (a4);
    }
  }

  else
  {
    v8 = [a1[7] attributedSubstringFromRange:{a3, a4}];
    [a1[6] appendAttributedString:v8];
  }
}

- (id)superFormatText:(id)text transferGUIDs:(id *)ds mediaObjects:(id *)objects
{
  v8 = [(CKComposition *)self _attributedStringByTrimmingWhiteSpaceAroundAttachmentsInText:text];
  v16 = 0;
  v17 = 0;
  v9 = [(CKComposition *)self _attributedStringByReplacingMediaObjectsWithTransferGUIDsInText:v8 transferGUIDs:&v17 mediaObjects:&v16];
  v10 = v17;
  v11 = v16;
  __im_attributedStringByAssigningMessagePartNumbers = [v9 __im_attributedStringByAssigningMessagePartNumbers];
  if (ds)
  {
    if ([v10 count])
    {
      v13 = v10;
    }

    else
    {
      v13 = 0;
    }

    *ds = v13;
  }

  if (objects)
  {
    if ([v11 count])
    {
      v14 = v11;
    }

    else
    {
      v14 = 0;
    }

    *objects = v14;
  }

  return __im_attributedStringByAssigningMessagePartNumbers;
}

- (id)superFormatText:(id *)text
{
  text = [(CKComposition *)self text];
  v11 = 0;
  v6 = [(CKComposition *)self superFormatText:text transferGUIDs:&v11 mediaObjects:0];
  v7 = v11;
  v8 = v7;
  if (text)
  {
    if ([v7 count])
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    *text = v9;
  }

  return v6;
}

- (id)_messageFromPayload:(id)payload firstGUID:(id)d
{
  v51[1] = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  dCopy = d;
  v47 = 0;
  v48 = 0;
  v8 = [payloadCopy __ck_superFormatStringTransferGUIDs:&v48 mediaObjects:&v47];
  v9 = v48;
  v10 = v47;
  userInfo = [payloadCopy userInfo];
  v12 = [userInfo objectForKey:@"DeviceAction"];

  if (v12)
  {
    v50 = *MEMORY[0x1E69A7230];
    v51[0] = MEMORY[0x1E695E118];
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
  }

  else
  {
    v41 = 0;
  }

  data = [payloadCopy data];
  pluginBundleID = [payloadCopy pluginBundleID];
  if (dCopy)
  {
    stringGUID = dCopy;
  }

  else
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  }

  v40 = stringGUID;
  if ([pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]])
  {
    goto LABEL_8;
  }

  v16 = IMBalloonExtensionIDWithSuffix();
  if (![pluginBundleID isEqualToString:v16])
  {
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_13;
  }

  shouldSendAsMediaObject = [payloadCopy shouldSendAsMediaObject];

  if (shouldSendAsMediaObject)
  {
LABEL_8:

    data = 0;
    v16 = pluginBundleID;
    pluginBundleID = 0;
LABEL_13:
  }

  v42 = v10;
  if ([payloadCopy isUpdate])
  {
    v18 = MEMORY[0x1E69A5BD8];
    associatedMessageGUID = [payloadCopy associatedMessageGUID];
    v20 = [v18 breadcrumbMessageWithText:v8 associatedMessageGUID:associatedMessageGUID balloonBundleID:pluginBundleID fileTransferGUIDs:v9 payloadData:data threadIdentifier:0];

    objc_opt_class();
    v38 = v9;
    v39 = dCopy;
    v21 = v8;
    if (objc_opt_isKindOfClass())
    {
      v22 = [v20 _copyWithFlags:{objc_msgSend(v20, "flags") | 0x1000000}];

      v20 = v22;
    }

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v23 = v42;
    v24 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v44;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v44 != v26)
          {
            objc_enumerationMutation(v23);
          }

          transfer = [*(*(&v43 + 1) + 8 * i) transfer];
          [transfer setIMMessage:v20];
        }

        v25 = [v23 countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v25);
    }

    v8 = v21;
    v9 = v38;
    dCopy = v39;
  }

  else
  {
    v20 = [(CKComposition *)self messageWithGUID:v40 superFormatText:v8 superFormatSubject:0 fileTransferGUIDs:v9 mediaObjects:v10 balloonBundleID:pluginBundleID payloadData:data messageSummaryInfo:v41];
  }

  datasource = [payloadCopy datasource];
  if (datasource)
  {
    v30 = datasource;
    isUpdate = [payloadCopy isUpdate];

    if ((isUpdate & 1) == 0)
    {
      datasource2 = [payloadCopy datasource];
      guid = [v20 guid];
      [datasource2 datasourceWasMovedToNewGuid:guid];

      mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
      datasource3 = [payloadCopy datasource];
      guid2 = [v20 guid];
      [mEMORY[0x1E69A5AD0] insertDataSource:datasource3 forGUID:guid2];
    }
  }

  return v20;
}

- (id)_compositionParts
{
  array = [MEMORY[0x1E695DF70] array];
  text = [(CKComposition *)self text];
  v5 = IMAttributedStringByRemovingTrackingInformation();

  whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
  v7 = [v5 length];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __49__CKComposition_IMSuperFormat___compositionParts__block_invoke;
  v21 = &unk_1E72F16E0;
  v25 = &v26;
  v8 = v5;
  v22 = v8;
  v9 = whitespaceAndNewlineCharacterSet;
  v23 = v9;
  v10 = array;
  v24 = v10;
  [v8 enumerateAttributesInRange:0 options:v7 usingBlock:{0, &v18}];
  v11 = v27[3];
  if (v11 < [v8 length])
  {
    v12 = v27[3];
    v13 = [v8 length];
    v14 = [v8 attributedSubstringFromRange:{v12, v13 - v27[3]}];
    [v10 addObject:v14];
  }

  v15 = v24;
  v16 = v10;

  _Block_object_dispose(&v26, 8);

  return v16;
}

void __49__CKComposition_IMSuperFormat___compositionParts__block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v17 = [v7 objectForKeyedSubscript:@"PluginDisplayContainer"];
  v8 = [v7 objectForKeyedSubscript:@"EmbeddedRichLinkConfiguration"];

  if (v17)
  {
    v9 = *(*(*(a1 + 56) + 8) + 24);
    v10 = a3 - v9;
    if (a3 != v9)
    {
      v11 = [*(a1 + 32) attributedSubstringFromRange:?];
      v12 = [v11 __ck_attributedStringByTrimmingCharactersInSet:*(a1 + 40)];
      if ([v12 length])
      {
        [*(a1 + 48) addObject:v12];
      }
    }

    [*(a1 + 48) addObject:{v17, v10}];
    *(*(*(a1 + 56) + 8) + 24) = a3 + a4;
  }

  else if (v8)
  {
    if (a3 != *(*(*(a1 + 56) + 8) + 24))
    {
      v13 = [*(a1 + 32) attributedSubstringFromRange:?];
      v14 = [v13 __ck_attributedStringByTrimmingCharactersInSet:*(a1 + 40)];
      if ([v14 length])
      {
        [*(a1 + 48) addObject:v14];
      }
    }

    v15 = [v8 _makeSendablePluginPayload];
    v16 = [CKPluginDisplayContainer pluginDisplayContainerWithPluginPayload:v15 composeImage:0];
    [*(a1 + 48) addObject:v16];
    *(*(*(a1 + 56) + 8) + 24) = a3 + a4 + 1;
  }
}

- (BOOL)canBundleAttachmentsWithMessageOnService:(id)service
{
  serviceCopy = service;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [standardUserDefaults BOOLForKey:@"ForceNoAttachmentsWithMessage"];

  if (v5)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Forcing no attachments with messages (1 message per attachment) for RCS compatibility due to default ForceNoAttachmentsWithMessage", v9, 2u);
      }
    }

    v7 = 0;
  }

  else
  {
    v7 = [serviceCopy supportsCapability:*MEMORY[0x1E69A79B8]];
  }

  return v7;
}

- (void)_applyMessagePropertiesTo:(id)to pluginPayload:(id)payload
{
  toCopy = to;
  payloadCopy = payload;
  pluginBundleID = [payloadCopy pluginBundleID];
  if ([pluginBundleID containsString:*MEMORY[0x1E69A6A38]])
  {
  }

  else
  {
    pluginBundleID2 = [payloadCopy pluginBundleID];
    v9 = [pluginBundleID2 containsString:*MEMORY[0x1E69A6A40]];

    if (!v9)
    {
      goto LABEL_5;
    }
  }

  pluginBundleID3 = [payloadCopy pluginBundleID];
  [toCopy setAssociatedBalloonBundleID:pluginBundleID3];

LABEL_5:
  sourceApplicationID = [(CKComposition *)self sourceApplicationID];

  if (sourceApplicationID)
  {
    sourceApplicationID2 = [(CKComposition *)self sourceApplicationID];
    [toCopy setSourceApplicationID:sourceApplicationID2];
  }

  guid = [toCopy guid];
  firstMessageGUIDOverride = [(CKComposition *)self firstMessageGUIDOverride];
  v15 = [guid isEqualToString:firstMessageGUIDOverride];

  if (v15)
  {
    [toCopy setShouldNotifyOnSend:1];
  }
}

- (id)messagesFromCompositionFirstGUIDForMessage:(id)message sendingService:(id)service
{
  v102[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  serviceCopy = service;
  array = [MEMORY[0x1E695DF70] array];
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__80;
  v96 = __Block_byref_object_dispose__80;
  firstMessageGUIDOverride = [(CKComposition *)self firstMessageGUIDOverride];
  v7 = firstMessageGUIDOverride;
  v8 = messageCopy;
  if (firstMessageGUIDOverride)
  {
    v8 = firstMessageGUIDOverride;
  }

  v97 = v8;

  _compositionParts = [(CKComposition *)self _compositionParts];
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = shelfPluginPayload;
  }

  else
  {
    v11 = 0;
  }

  v62 = v11;
  v86 = 0;
  v87 = &v86;
  v88 = 0x3032000000;
  v89 = __Block_byref_object_copy__80;
  v90 = __Block_byref_object_dispose__80;
  superFormatSubject = [(CKComposition *)self superFormatSubject];
  firstObject = [_compositionParts firstObject];
  superFormatTranslation = [(CKComposition *)self superFormatTranslation];
  v63 = shelfPluginPayload;
  if (v87[5] && (!firstObject || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0)))
  {
    subject = [(CKComposition *)self subject];
    [_compositionParts insertObject:subject atIndex:0];
    v58 = subject;

    v15 = v87[5];
    v87[5] = 0;

    shelfPluginPayload = v63;
  }

  else
  {
    v58 = firstObject;
  }

  v67 = superFormatTranslation;
  pluginBundleID = [shelfPluginPayload pluginBundleID];
  v17 = [pluginBundleID isEqualToString:*MEMORY[0x1E69A6A00]];

  pluginBundleID2 = [v62 pluginBundleID];
  v19 = IMBalloonExtensionIDWithSuffix();
  if ([pluginBundleID2 isEqualToString:v19])
  {
    shouldSendAsMediaObject = [v62 shouldSendAsMediaObject];
  }

  else
  {
    shouldSendAsMediaObject = 0;
  }

  if ((v17 | shouldSendAsMediaObject))
  {
    __ck_photoCompositionString = [v63 __ck_photoCompositionString];
    goto LABEL_28;
  }

  if (!v62 || ![v62 shouldSendAsMediaObject])
  {
    if (!v63)
    {
LABEL_32:
      __ck_photoCompositionString = 0;
      goto LABEL_35;
    }

    shelfPluginPayload2 = [(CKComposition *)self shelfPluginPayload];
    sendAsCopy = [shelfPluginPayload2 sendAsCopy];

    if (!sendAsCopy)
    {
      v29 = [CKPluginDisplayContainer pluginDisplayContainerWithPluginPayload:v63 composeImage:0];
      [_compositionParts insertObject:v29 atIndex:0];
      __ck_photoCompositionString = 0;
LABEL_34:

      goto LABEL_35;
    }

    shelfMediaObject = [(CKComposition *)self shelfMediaObject];
    v22 = shelfMediaObject;
    if (shelfMediaObject)
    {
      v99 = @"MediaObjectForTextAttachment";
      v100 = shelfMediaObject;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v100 forKeys:&v99 count:1];
      v28 = objc_alloc(MEMORY[0x1E696AAB0]);
      __ck_photoCompositionString = [v28 initWithString:*MEMORY[0x1E69A5F00] attributes:v23];
      goto LABEL_24;
    }

LABEL_26:
    __ck_photoCompositionString = 0;
    goto LABEL_27;
  }

  mediaObjectFromPayload = [v62 mediaObjectFromPayload];
  v22 = mediaObjectFromPayload;
  if (!mediaObjectFromPayload)
  {
    goto LABEL_26;
  }

  v101 = @"MediaObjectForTextAttachment";
  v102[0] = mediaObjectFromPayload;
  v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v102 forKeys:&v101 count:1];
  v24 = objc_alloc(MEMORY[0x1E696AAB0]);
  __ck_photoCompositionString = [v24 initWithString:*MEMORY[0x1E69A5F00] attributes:v23];
LABEL_24:

LABEL_27:
LABEL_28:
  if (!__ck_photoCompositionString)
  {
    goto LABEL_32;
  }

  if (v58)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = [__ck_photoCompositionString mutableCopy];
      [v29 appendAttributedString:v58];
      v30 = [v29 copy];
      [_compositionParts replaceObjectAtIndex:0 withObject:v30];

      goto LABEL_34;
    }
  }

  [_compositionParts insertObject:__ck_photoCompositionString atIndex:0];
LABEL_35:
  v64 = [(CKComposition *)self canBundleAttachmentsWithMessageOnService:serviceCopy];
  v31 = [(CKComposition *)self processedPartsForSuggestedReply:_compositionParts];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  obj = v31;
  v32 = [obj countByEnumeratingWithState:&v82 objects:v98 count:16];
  if (!v32)
  {
    goto LABEL_62;
  }

  v33 = *v83;
  do
  {
    for (i = 0; i != v32; ++i)
    {
      if (*v83 != v33)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v82 + 1) + 8 * i);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v80 = 0;
        v81 = 0;
        v36 = [(CKComposition *)self superFormatText:v35 transferGUIDs:&v81 mediaObjects:&v80];
        v37 = v81;
        v38 = v80;
        if ([v36 length] || objc_msgSend(v87[5], "length"))
        {
          if (v64)
          {
            if ([v36 __im_countMessageParts] < 2)
            {
              v39 = v67;
            }

            else
            {

              v39 = 0;
            }

            v67 = v39;
            v45 = [CKComposition messageWithGUID:"messageWithGUID:superFormatText:superFormatSubject:superFormatTranslation:fileTransferGUIDs:mediaObjects:balloonBundleID:payloadData:" superFormatText:v93[5] superFormatSubject:v36 superFormatTranslation:v87[5] fileTransferGUIDs:0 mediaObjects:0 balloonBundleID:? payloadData:?];
            if (v45)
            {
              [(CKComposition *)self _applyMessagePropertiesTo:v45 pluginPayload:v63];
              [array addObject:v45];
            }

            v46 = v87[5];
            v87[5] = 0;

            v47 = v93[5];
            v93[5] = 0;

LABEL_52:
          }

          else if ([v36 length])
          {
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 3221225472;
            aBlock[2] = __90__CKComposition_IMSuperFormat__messagesFromCompositionFirstGUIDForMessage_sendingService___block_invoke;
            aBlock[3] = &unk_1E72F8540;
            v79 = v38;
            v40 = _Block_copy(aBlock);
            v76[0] = MEMORY[0x1E69E9820];
            v76[1] = 3221225472;
            v76[2] = __90__CKComposition_IMSuperFormat__messagesFromCompositionFirstGUIDForMessage_sendingService___block_invoke_2;
            v76[3] = &unk_1E72F8568;
            v41 = v40;
            v77 = v41;
            v42 = _Block_copy(v76);
            v68[0] = MEMORY[0x1E69E9820];
            v68[1] = 3221225472;
            v68[2] = __90__CKComposition_IMSuperFormat__messagesFromCompositionFirstGUIDForMessage_sendingService___block_invoke_3;
            v68[3] = &unk_1E72F8590;
            v43 = v41;
            v72 = v43;
            v68[4] = self;
            v74 = &v92;
            v69 = v63;
            v70 = array;
            v44 = v42;
            v73 = v44;
            v75 = &v86;
            v67 = v67;
            v71 = v67;
            [v36 __im_visitMessageParts:v68];

            v45 = v79;
            goto LABEL_52;
          }
        }
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v48 = v35;
        pluginPayload = [v48 pluginPayload];
        v50 = [(CKComposition *)self _messageFromPayload:pluginPayload firstGUID:v93[5]];

        v51 = v93[5];
        v93[5] = 0;

        shelfPluginPayload3 = [(CKComposition *)self shelfPluginPayload];
        groupActivity = [shelfPluginPayload3 groupActivity];
        [v50 setGroupActivity:groupActivity];

        sourceApplicationID = [(CKComposition *)self sourceApplicationID];

        if (sourceApplicationID)
        {
          sourceApplicationID2 = [(CKComposition *)self sourceApplicationID];
          [v50 setSourceApplicationID:sourceApplicationID2];
        }

        if (v50)
        {
          [array addObject:v50];
        }
      }
    }

    v32 = [obj countByEnumeratingWithState:&v82 objects:v98 count:16];
  }

  while (v32);
LABEL_62:

  v56 = array;
  _Block_object_dispose(&v86, 8);

  _Block_object_dispose(&v92, 8);

  return v56;
}

id __90__CKComposition_IMSuperFormat__messagesFromCompositionFirstGUIDForMessage_sendingService___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 transfer];
        v10 = [v9 guid];
        if ([v10 isEqualToString:v3])
        {
          v5 = v8;

          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

uint64_t __90__CKComposition_IMSuperFormat__messagesFromCompositionFirstGUIDForMessage_sendingService___block_invoke_2(uint64_t a1)
{
  v1 = (*(*(a1 + 32) + 16))();
  v2 = [v1 transfer];
  v3 = [v2 isAdaptiveImageGlyph];

  return v3;
}

void __90__CKComposition_IMSuperFormat__messagesFromCompositionFirstGUIDForMessage_sendingService___block_invoke_3(uint64_t a1, void *a2)
{
  v60[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 messagePartBody];
  v5 = [v3 transferGUID];
  if ([v5 length])
  {
    v6 = (*(*(a1 + 64) + 16))();
    v7 = v6;
    v8 = v5;
    if (v6)
    {
      v60[0] = v6;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:1];
    }

    else
    {
      v9 = 0;
    }

    v12 = *(a1 + 32);
    v13 = *(*(*(a1 + 80) + 8) + 40);
    v59 = v8;
    [MEMORY[0x1E695DEC8] arrayWithObjects:&v59 count:1];
    v15 = v14 = a1;
    v16 = [v12 messageWithGUID:v13 superFormatText:v4 superFormatSubject:0 superFormatTranslation:0 fileTransferGUIDs:v15 mediaObjects:v9 balloonBundleID:0 payloadData:0];

    [*(v14 + 32) _applyMessagePropertiesTo:v16 pluginPayload:*(v14 + 40)];
    [*(v14 + 48) addObject:v16];
    v17 = *(*(v14 + 80) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = 0;
  }

  else
  {
    v41 = v5;
    if ([v4 __im_isOnlyAdaptiveImageGlyphFileTransfersAndWhitespaceUsingIsAdaptiveImageGlyphProvider:*(a1 + 72)])
    {
      v10 = [v4 __im_transferGUIDsInAttributedString];
      v11 = [v10 array];
    }

    else
    {
      v19 = *(a1 + 72);
      v53 = 0;
      v10 = [v4 __im_attributedStringByReplacingAdaptiveImageGlyphFileTransfersUsingIsAdaptiveImageGlyphProvider:v19 replacementTextProvider:&__block_literal_global_624_1 removedTransferGUIDsOut:&v53];
      v11 = v53;
      v20 = [*(a1 + 32) messageWithGUID:*(*(*(a1 + 80) + 8) + 40) superFormatText:v10 superFormatSubject:*(*(*(a1 + 88) + 8) + 40) superFormatTranslation:*(a1 + 56) fileTransferGUIDs:0 mediaObjects:0 balloonBundleID:0 payloadData:0];
      [*(a1 + 32) _applyMessagePropertiesTo:v20 pluginPayload:*(a1 + 40)];
      [*(a1 + 48) addObject:v20];
      v21 = *(*(a1 + 88) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = 0;

      v23 = *(*(a1 + 80) + 8);
      v24 = *(v23 + 40);
      *(v23 + 40) = 0;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v9 = v11;
    v46 = [v9 countByEnumeratingWithState:&v49 objects:v58 count:16];
    if (v46)
    {
      obj = v9;
      v40 = v3;
      v45 = *v50;
      v44 = *MEMORY[0x1E69A5F68];
      v43 = *MEMORY[0x1E69A5F00];
      do
      {
        for (i = 0; i != v46; ++i)
        {
          if (*v50 != v45)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v49 + 1) + 8 * i);
          v27 = (*(*(a1 + 64) + 16))();
          v48 = v27;
          if (v27)
          {
            v57 = v27;
            v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v57 count:1];
          }

          else
          {
            v47 = 0;
          }

          v55 = v44;
          v56 = v26;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v29 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v43 attributes:v28];
          v30 = *(a1 + 32);
          v31 = *(*(*(a1 + 80) + 8) + 40);
          v32 = *(*(*(a1 + 88) + 8) + 40);
          v33 = *(a1 + 56);
          v54 = v26;
          v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v54 count:1];
          v35 = [v30 messageWithGUID:v31 superFormatText:v29 superFormatSubject:v32 superFormatTranslation:v33 fileTransferGUIDs:v34 mediaObjects:v47 balloonBundleID:0 payloadData:0];

          [*(a1 + 32) _applyMessagePropertiesTo:v35 pluginPayload:*(a1 + 40)];
          [*(a1 + 48) addObject:v35];
          v36 = *(*(a1 + 88) + 8);
          v37 = *(v36 + 40);
          *(v36 + 40) = 0;

          v38 = *(*(a1 + 80) + 8);
          v39 = *(v38 + 40);
          *(v38 + 40) = 0;
        }

        v46 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
      }

      while (v46);
      v9 = obj;
      v7 = obj;
      v3 = v40;
    }

    else
    {
      v7 = v9;
    }

    v8 = v41;
  }
}

- (id)processedPartsForSuggestedReply:(id)reply
{
  v20 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = replyCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v10 pluginPayload], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "userInfo"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectForKey:", @"suggestedReplyBody"), v13 = objc_claimAutoreleasedReturnValue(), v12, v11, v13))
        {
          [v4 addObject:v13];
        }

        else
        {
          [v4 addObject:{v10, v15}];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)messageWithGUID:(id)d superFormatText:(id)text superFormatSubject:(id)subject superFormatTranslation:(id)translation fileTransferGUIDs:(id)ds mediaObjects:(id)objects balloonBundleID:(id)iD payloadData:(id)self0
{
  v49 = *MEMORY[0x1E69E9840];
  dCopy = d;
  textCopy = text;
  subjectCopy = subject;
  translationCopy = translation;
  dsCopy = ds;
  objectsCopy = objects;
  iDCopy = iD;
  dataCopy = data;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  array = [MEMORY[0x1E695DF70] array];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __165__CKComposition_IMSuperFormat__messageWithGUID_superFormatText_superFormatSubject_superFormatTranslation_fileTransferGUIDs_mediaObjects_balloonBundleID_payloadData___block_invoke;
  v46[3] = &unk_1E72F85B8;
  v19 = array;
  v47 = v19;
  v37 = translationCopy;
  [translationCopy __im_visitMessageParts:v46];
  v32 = v19;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = [v19 copy];
  v20 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        v25 = objc_alloc(MEMORY[0x1E69A8308]);
        sourceLanguageID = [(CKComposition *)self sourceLanguageID];
        destinationLanguageID = [(CKComposition *)self destinationLanguageID];
        messagePartBody = [v24 messagePartBody];
        v29 = [v25 initWithSourceLanguage:sourceLanguageID translationLanguage:destinationLanguageID translatedText:messagePartBody];

        [v24 messagePartIndex];
        IMAddTranslatedMessagePartToMessageSummaryInfo();
      }

      v21 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v21);
  }

  v30 = [(CKComposition *)self messageWithGUID:dCopy superFormatText:textCopy superFormatSubject:subjectCopy fileTransferGUIDs:dsCopy mediaObjects:objectsCopy balloonBundleID:iDCopy payloadData:dataCopy messageSummaryInfo:v17];

  return v30;
}

- (id)messageWithGUID:(id)d superFormatText:(id)text superFormatSubject:(id)subject fileTransferGUIDs:(id)ds mediaObjects:(id)objects balloonBundleID:(id)iD payloadData:(id)data messageSummaryInfo:(id)self0
{
  v74 = *MEMORY[0x1E69E9840];
  dCopy = d;
  textCopy = text;
  subjectCopy = subject;
  dsCopy = ds;
  objectsCopy = objects;
  iDCopy = iD;
  dataCopy = data;
  infoCopy = info;
  expressiveSendStyleID = [(CKComposition *)self expressiveSendStyleID];
  string = [textCopy string];
  trimmedString = [string trimmedString];
  lowercaseString = [trimmedString lowercaseString];
  if ([lowercaseString isEqualToString:@"pew pew"])
  {
    supportsScreenEffects = [MEMORY[0x1E69A8020] supportsScreenEffects];

    if (!supportsScreenEffects)
    {
      goto LABEL_6;
    }

    string = expressiveSendStyleID;
    expressiveSendStyleID = @"com.apple.messages.effect.CKLasersEffect";
  }

  else
  {
  }

LABEL_6:
  if ([(CKComposition *)self isAudioComposition])
  {
    v22 = 2097157;
  }

  else
  {
    v22 = 5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 |= 0x1000000uLL;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 |= 0x2000000uLL;
  }

  sendLaterPluginInfo = [(CKComposition *)self sendLaterPluginInfo];

  if (sendLaterPluginInfo)
  {
    sendLaterPluginInfo2 = [(CKComposition *)self sendLaterPluginInfo];
    selectedDate = [sendLaterPluginInfo2 selectedDate];

    v26 = 1;
    v27 = 2;
  }

  else
  {
    selectedDate = [MEMORY[0x1E695DF00] date];
    v27 = 0;
    v26 = 0;
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__80;
  v71 = __Block_byref_object_dispose__80;
  v28 = objc_alloc(MEMORY[0x1E69A5BD8]);
  v29 = v28;
  if (dCopy)
  {
    v72 = [v28 initWithSender:0 time:selectedDate text:textCopy messageSubject:subjectCopy fileTransferGUIDs:dsCopy flags:v22 error:0 guid:dCopy subject:0 balloonBundleID:iDCopy payloadData:dataCopy expressiveSendStyleID:expressiveSendStyleID threadIdentifier:0 scheduleType:v27 scheduleState:v26 messageSummaryInfo:infoCopy];
  }

  else
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v72 = [v29 initWithSender:0 time:selectedDate text:textCopy messageSubject:subjectCopy fileTransferGUIDs:dsCopy flags:v22 error:0 guid:stringGUID subject:0 balloonBundleID:iDCopy payloadData:dataCopy expressiveSendStyleID:expressiveSendStyleID threadIdentifier:0 scheduleType:v27 scheduleState:v26 messageSummaryInfo:infoCopy];
  }

  v31 = objc_alloc(MEMORY[0x1E69A5BD8]);
  stringGUID2 = dCopy;
  if (!dCopy)
  {
    stringGUID2 = [MEMORY[0x1E696AEC0] stringGUID];
  }

  v33 = [v31 initWithSender:0 time:selectedDate text:textCopy messageSubject:subjectCopy fileTransferGUIDs:dsCopy flags:v22 error:0 guid:stringGUID2 subject:0 balloonBundleID:iDCopy payloadData:dataCopy expressiveSendStyleID:expressiveSendStyleID threadIdentifier:0 scheduleType:v27 scheduleState:v26 messageSummaryInfo:infoCopy];
  v34 = v68[5];
  v68[5] = v33;

  if (!dCopy)
  {
  }

  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  if (shelfPluginPayload)
  {
    mEMORY[0x1E69A8070] = [MEMORY[0x1E69A8070] sharedFeatureFlags];
    isGelatoAsyncSendingEnabled = [mEMORY[0x1E69A8070] isGelatoAsyncSendingEnabled];

    if (isGelatoAsyncSendingEnabled)
    {
      payloadCollaborationType = [shelfPluginPayload payloadCollaborationType];
      if (payloadCollaborationType == 2)
      {
        v45 = objc_alloc(MEMORY[0x1E69A7FB8]);
        cloudKitShare = [shelfPluginPayload cloudKitShare];
        containerSetupInfo = [shelfPluginPayload containerSetupInfo];
        collaborationShareOptions = [(CKComposition *)self collaborationShareOptions];
        v43 = [v45 initWithCKShare:cloudKitShare containerSetupInfo:containerSetupInfo options:collaborationShareOptions];
        goto LABEL_30;
      }

      if (payloadCollaborationType == 3)
      {
        v39 = objc_alloc(MEMORY[0x1E69A7FB8]);
        cloudKitShare = [shelfPluginPayload url];
        containerSetupInfo = [(CKComposition *)self collaborationShareOptions];
        collaborationShareOptions = [shelfPluginPayload collaborationMetadata];
        v43 = [v39 initWithURL:cloudKitShare options:containerSetupInfo metadata:collaborationShareOptions];
LABEL_30:
        v44 = v43;

        goto LABEL_31;
      }
    }

    v44 = 0;
LABEL_31:
    [v68[5] setCollaborationInitiationRequestInfo:v44];
  }

  mEMORY[0x1E69A5B48] = [MEMORY[0x1E69A5B48] sharedInstance];
  v47 = v68[5];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __161__CKComposition_IMSuperFormat__messageWithGUID_superFormatText_superFormatSubject_fileTransferGUIDs_mediaObjects_balloonBundleID_payloadData_messageSummaryInfo___block_invoke;
  v66[3] = &unk_1E72F85E0;
  v66[4] = &v67;
  [mEMORY[0x1E69A5B48] scanMessage:v47 outgoing:1 waitUntilDone:1 completionBlock:v66];

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v48 = objectsCopy;
  v49 = [v48 countByEnumeratingWithState:&v62 objects:v73 count:16];
  if (v49)
  {
    v50 = *v63;
    do
    {
      for (i = 0; i != v49; ++i)
      {
        if (*v63 != v50)
        {
          objc_enumerationMutation(v48);
        }

        transfer = [*(*(&v62 + 1) + 8 * i) transfer];
        [transfer setIMMessage:v68[5]];
      }

      v49 = [v48 countByEnumeratingWithState:&v62 objects:v73 count:16];
    }

    while (v49);
  }

  v53 = v68[5];
  _Block_object_dispose(&v67, 8);

  return v53;
}

- (id)messageWithGUID:(id)d
{
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v33 = 0;
  v5 = [(CKComposition *)self superFormatText:&v33];
  v6 = v33;
  superFormatSubject = [(CKComposition *)self superFormatSubject];
  expressiveSendStyleID = [(CKComposition *)self expressiveSendStyleID];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = 2097157;
  }

  else
  {
    v9 = 5;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 |= 0x1000000uLL;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 |= 0x2000000uLL;
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__80;
  v31 = __Block_byref_object_dispose__80;
  v10 = objc_alloc(MEMORY[0x1E69A5BD8]);
  date = [MEMORY[0x1E695DF00] date];
  if (dCopy)
  {
    v32 = [v10 initWithSender:0 time:date text:v5 messageSubject:superFormatSubject fileTransferGUIDs:v6 flags:v9 error:0 guid:dCopy subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:expressiveSendStyleID threadIdentifier:0];
  }

  else
  {
    stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
    v32 = [v10 initWithSender:0 time:date text:v5 messageSubject:superFormatSubject fileTransferGUIDs:v6 flags:v9 error:0 guid:stringGUID subject:0 balloonBundleID:0 payloadData:0 expressiveSendStyleID:expressiveSendStyleID threadIdentifier:0];
  }

  mEMORY[0x1E69A5B48] = [MEMORY[0x1E69A5B48] sharedInstance];
  v14 = v28[5];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __48__CKComposition_IMSuperFormat__messageWithGUID___block_invoke;
  v26[3] = &unk_1E72F85E0;
  v26[4] = &v27;
  [mEMORY[0x1E69A5B48] scanMessage:v14 outgoing:1 waitUntilDone:1 completionBlock:v26];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  mediaObjects = [(CKComposition *)self mediaObjects];
  v16 = [mediaObjects countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v16)
  {
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(mediaObjects);
        }

        transfer = [*(*(&v22 + 1) + 8 * i) transfer];
        [transfer setIMMessage:v28[5]];
      }

      v16 = [mediaObjects countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v16);
  }

  v20 = v28[5];
  _Block_object_dispose(&v27, 8);

  return v20;
}

+ (id)compositionForMessageParts:(id)parts preserveSubject:(BOOL)subject contextIdentifier:(id)identifier
{
  subjectCopy = subject;
  v25 = *MEMORY[0x1E69E9840];
  partsCopy = parts;
  identifierCopy = identifier;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = [partsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v12)
        {
          objc_enumerationMutation(partsCopy);
        }

        v14 = *(*(&v20 + 1) + 8 * i);
        if (v11)
        {
          v15 = [*(*(&v20 + 1) + 8 * i) compositionWithContext:identifierCopy];
          v16 = [v11 compositionByAppendingComposition:v15];

          v11 = v16;
        }

        else if (subjectCopy)
        {
          v11 = [*(*(&v20 + 1) + 8 * i) compositionWithContext:identifierCopy];
        }

        else
        {
          v17 = +[CKComposition composition];
          v18 = [v14 compositionWithContext:identifierCopy];
          v11 = [v17 compositionByAppendingComposition:v18];
        }
      }

      v10 = [partsCopy countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)saveCompositionWithChatIdentifier:(id)identifier
{
  v62 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v57 = "[CKComposition(CKPersistentComposition) saveCompositionWithChatIdentifier:]";
      v58 = 2112;
      v59 = identifierCopy;
      _os_log_impl(&dword_19020E000, v5, OS_LOG_TYPE_DEBUG, "%s chatIdentifier:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v50 = "[CKComposition(CKPersistentComposition) saveCompositionWithChatIdentifier:]";
    v51 = identifierCopy;
    _CKLog();
  }

  if (identifierCopy)
  {
    im_lastPathComponent = [identifierCopy im_lastPathComponent];
    v7 = [identifierCopy isEqualToString:im_lastPathComponent];

    if ((v7 & 1) == 0)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          im_lastPathComponent2 = [identifierCopy im_lastPathComponent];
          *buf = 138412546;
          v57 = identifierCopy;
          v58 = 2112;
          v59 = im_lastPathComponent2;
          _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "chatIdentifier has path specifiers %@. using stripped chatIdentifier instead %@", buf, 0x16u);
        }
      }

      im_lastPathComponent3 = [identifierCopy im_lastPathComponent];

      identifierCopy = im_lastPathComponent3;
    }
  }

  v11 = CKDraftsDirectoryURL();
  v53 = [v11 URLByAppendingPathComponent:identifierCopy isDirectory:1];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  [defaultManager createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:0];
  v52 = CKPluginTmpSubDirectoryURL(identifierCopy, 0);
  path = [v52 path];
  v13 = [defaultManager fileExistsAtPath:path];

  if (v13)
  {
    v14 = CKPluginDraftDirectoryURL(identifierCopy, 0);
    path2 = [v14 path];
    v16 = [defaultManager fileExistsAtPath:path2];

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = @"NO";
        *buf = 138412802;
        v57 = v14;
        v58 = 2112;
        if (v16)
        {
          v18 = @"YES";
        }

        v59 = v52;
        v60 = 2112;
        v61 = v18;
        _os_log_impl(&dword_19020E000, v17, OS_LOG_TYPE_INFO, "onSave draft %@ working %@ draftExists %@", buf, 0x20u);
      }
    }

    if (v16)
    {
      [defaultManager removeItemAtURL:v14 error:0];
    }

    v55 = 0;
    [defaultManager copyItemAtURL:v52 toURL:v14 error:{&v55, v50, v51}];
    v19 = v55;
    if (v19 && IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v57 = v19;
        _os_log_impl(&dword_19020E000, v20, OS_LOG_TYPE_INFO, "Error when backing up working dir to drafts: %@", buf, 0xCu);
      }
    }
  }

  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:5];
  v22 = [MEMORY[0x1E696AD98] numberWithBool:{-[CKComposition isAudioComposition](self, "isAudioComposition")}];
  [v21 setObject:v22 forKey:@"audioMessage"];

  if ([(CKComposition *)self isAudioComposition])
  {
    mediaObjects = [(CKComposition *)self mediaObjects];
    firstObject = [mediaObjects firstObject];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      powerLevels = [firstObject powerLevels];
      [v21 setObject:powerLevels forKeyedSubscript:@"audioPowerLevels"];
    }

    else
    {
      powerLevels = IMLogHandleForCategory();
      if (os_log_type_enabled(powerLevels, OS_LOG_TYPE_ERROR))
      {
        [_CKAudioComposition initWithText:subject:powerLevels:];
      }
    }
  }

  v26 = [(CKComposition *)self shelfPluginPayload:v50];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v28 = v26;
  }

  else
  {
    v28 = 0;
  }

  v29 = v28;
  if (v26)
  {
    if (isKindOfClass)
    {
      mediaObject = [v26 mediaObject];
      v31 = mediaObject == 0;

      if (v31)
      {
        v38 = v26;
      }

      else
      {
        mediaObject2 = [v26 mediaObject];
        v33 = [v26 copy];

        v34 = [v53 URLByAppendingPathComponent:@"Attachments" isDirectory:1];
        defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
        v36 = CKWriteMediaObjectToFileLocation(mediaObject2, v34, defaultManager2);

        [v33 setFileURL:v36];
        transcoderUserInfo = [mediaObject2 transcoderUserInfo];
        [v33 setUserInfo:transcoderUserInfo];

        v38 = v33;
        v26 = v38;
      }
    }

    else
    {
      v38 = 0;
    }

    v39 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v26 requiringSecureCoding:1 error:0];
    [v21 setObject:v39 forKey:@"shelfPluginPayload"];
  }

  else
  {
    v38 = v29;
  }

  [(CKComposition *)self _persistTextToComposition:v21 directoryURL:v53];
  subject = [(CKComposition *)self subject];
  if (subject)
  {
    v41 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:subject requiringSecureCoding:1 error:0];
    [v21 setObject:v41 forKey:@"subject"];
    if (IMOSLoggingEnabled())
    {
      v42 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v42, OS_LOG_TYPE_INFO, "-> preserving subject to draft", buf, 2u);
      }
    }
  }

  bizIntent = [(CKComposition *)self bizIntent];
  if (bizIntent)
  {
    v44 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:bizIntent requiringSecureCoding:1 error:0];
    [v21 setObject:v44 forKey:@"bizIntent"];
    if (IMOSLoggingEnabled())
    {
      v45 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v45, OS_LOG_TYPE_INFO, "-> preserving bizInent to draft", buf, 2u);
      }
    }
  }

  sendLaterPluginInfo = [(CKComposition *)self sendLaterPluginInfo];
  if (sendLaterPluginInfo)
  {
    v47 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:sendLaterPluginInfo requiringSecureCoding:1 error:0];
    [v21 setObject:v47 forKey:@"sendLaterPluginInfo"];
    if (IMOSLoggingEnabled())
    {
      v48 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v48, OS_LOG_TYPE_INFO, "-> preserving sendLaterPluginInfo to draft", buf, 2u);
      }
    }
  }

  v49 = [MEMORY[0x1E696AE40] dataWithPropertyList:v21 format:100 options:0 error:0];
  [(CKComposition *)self _saveCompositionData:v49 atURL:v53 forChatIdentifier:identifierCopy];
}

- (void)_persistTextToComposition:(id)composition directoryURL:(id)l
{
  compositionCopy = composition;
  lCopy = l;
  text = [(CKComposition *)self text];
  if (text)
  {
    v9 = [lCopy URLByAppendingPathComponent:@"Attachments" isDirectory:1];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v11 = CKPersistentTextForText(text, v9, defaultManager);

    if (!v11)
    {
      v13 = IMLogHandleForCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CKComposition(CKPersistentComposition) _persistTextToComposition:directoryURL:];
      }

      goto LABEL_13;
    }

    v16 = 0;
    v12 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v16];
    v13 = v16;
    if (v12)
    {
      [compositionCopy setObject:v12 forKey:@"text"];
      if (!IMOSLoggingEnabled())
      {
LABEL_12:

LABEL_13:
        goto LABEL_14;
      }

      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *v15 = 0;
        _os_log_impl(&dword_19020E000, v14, OS_LOG_TYPE_INFO, "-> drafted text preserved", v15, 2u);
      }
    }

    else
    {
      v14 = IMLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [CKComposition(CKPersistentComposition) _persistTextToComposition:directoryURL:];
      }
    }

    goto LABEL_12;
  }

LABEL_14:
}

- (BOOL)_saveCompositionData:(id)data atURL:(id)l forChatIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  lCopy = l;
  identifierCopy = identifier;
  v10 = [lCopy URLByAppendingPathComponent:@"composition.plist" isDirectory:0];
  v15 = 0;
  v11 = [dataCopy writeToURL:v10 options:1073741825 error:&v15];
  v12 = v15;

  if ((v11 & 1) == 0 && IMOSLoggingEnabled())
  {
    v13 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = v12;
      _os_log_impl(&dword_19020E000, v13, OS_LOG_TYPE_INFO, "Draft (%@) write failure: %@", buf, 0x16u);
    }
  }

  return v11;
}

+ (void)deleteCompositionWithChatIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v14 = "+[CKComposition(CKPersistentComposition) deleteCompositionWithChatIdentifier:]";
      v15 = 2112;
      v16 = identifierCopy;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "%s chatIdentifier:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v11 = "+[CKComposition(CKPersistentComposition) deleteCompositionWithChatIdentifier:]";
    v12 = identifierCopy;
    _CKLog();
  }

  im_lastPathComponent = [identifierCopy im_lastPathComponent];

  if ([im_lastPathComponent length])
  {
    v6 = CKDraftsDirectoryURL();
    v7 = [v6 URLByAppendingPathComponent:im_lastPathComponent isDirectory:1];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    [defaultManager removeItemAtURL:v7 error:0];
    v9 = CKPluginTmpSubDirectoryURL(im_lastPathComponent, 0);
    [defaultManager removeItemAtURL:v9 error:0];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(15);
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v14 = "+[CKComposition(CKPersistentComposition) deleteCompositionWithChatIdentifier:]";
        _os_log_impl(&dword_19020E000, v10, OS_LOG_TYPE_DEBUG, "%s chatIdentifier is invalid", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }
  }
}

+ (id)savedCompositionForChatIdentifier:(id)identifier
{
  v4 = [self savedCompositionDataForChatIdentifier:identifier];
  v5 = [self savedCompositionFromData:v4];

  return v5;
}

id __80__CKComposition_CKPersistentComposition__savedCompositionDataForChatIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E695DEF0];
  v3 = [a2 URLByAppendingPathComponent:@"composition.plist" isDirectory:0];
  v4 = [v2 dataWithContentsOfURL:v3];

  return v4;
}

+ (id)_savedCompositionDataForChatIdentifier:(id)identifier readUsingBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  blockCopy = block;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      v30 = "+[CKComposition(CKPersistentComposition) _savedCompositionDataForChatIdentifier:readUsingBlock:]";
      v31 = 2112;
      v32 = identifierCopy;
      _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_DEBUG, "%s chatIdentifier:%@", buf, 0x16u);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v26 = "+[CKComposition(CKPersistentComposition) _savedCompositionDataForChatIdentifier:readUsingBlock:]";
    v27 = identifierCopy;
    _CKLog();
  }

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  im_lastPathComponent = [identifierCopy im_lastPathComponent];
  if ([im_lastPathComponent length])
  {
    v10 = CKDraftsDirectoryURL();
    v11 = [v10 URLByAppendingPathComponent:im_lastPathComponent isDirectory:1];

    v12 = CKPluginDraftDirectoryURL(im_lastPathComponent, 0);
    path = [v12 path];
    v14 = [defaultManager fileExistsAtPath:path];

    if (v14)
    {
      v15 = CKPluginTmpSubDirectoryURL(im_lastPathComponent, 0);
      path2 = [v15 path];
      v17 = [defaultManager fileExistsAtPath:path2];

      if (IMOSLoggingEnabled())
      {
        v18 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
        {
          v19 = @"NO";
          *buf = 138412802;
          v30 = v12;
          v31 = 2112;
          if (v17)
          {
            v19 = @"YES";
          }

          v32 = v15;
          v33 = 2112;
          v34 = v19;
          _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "getSaved draft %@ working %@ workExists %@", buf, 0x20u);
        }
      }

      if (v17)
      {
        [defaultManager removeItemAtURL:v15 error:0];
      }

      v28 = 0;
      [defaultManager copyItemAtURL:v12 toURL:v15 error:&v28];
      v20 = v28;
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v30 = v20;
          _os_log_impl(&dword_19020E000, v21, OS_LOG_TYPE_INFO, "Error when restoring draft to working with error %@", buf, 0xCu);
        }
      }
    }

    v22 = blockCopy[2](blockCopy, v11);
    if (v22)
    {
      v23 = [MEMORY[0x1E696AE40] propertyListWithData:v22 options:0 format:0 error:0];
    }

    else
    {
      v23 = 0;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      CKLogCStringForType(15);
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315138;
        v30 = "+[CKComposition(CKPersistentComposition) _savedCompositionDataForChatIdentifier:readUsingBlock:]";
        _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_DEBUG, "%s chat identifier is invalid", buf, 0xCu);
      }
    }

    if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
    {
      _CKLog();
    }

    v23 = 0;
  }

  return v23;
}

+ (id)savedCompositionFromData:(id)data
{
  *&v62[5] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (IMOSLoggingEnabled())
  {
    CKLogCStringForType(15);
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      *v62 = "+[CKComposition(CKPersistentComposition) savedCompositionFromData:]";
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    }
  }

  if (os_log_shim_legacy_logging_enabled() && _CKShouldLog())
  {
    v50 = "+[CKComposition(CKPersistentComposition) savedCompositionFromData:]";
    _CKLog();
  }

  v54 = [dataCopy objectForKey:{@"shelfPluginPayload", v50}];
  if (!v54)
  {
    shouldHideAttachments = 0;
    v55 = 0;
    goto LABEL_28;
  }

  mEMORY[0x1E69A5AD0] = [MEMORY[0x1E69A5AD0] sharedInstance];
  v60 = 0;
  v55 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v54 error:&v60];
  v6 = v60;
  if (v55)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v8 = v55;
    if ((isKindOfClass & 1) == 0)
    {
      v8 = 0;
    }

    v9 = v8;
    if (isKindOfClass)
    {
      fileURL = [v55 fileURL];
      v11 = fileURL == 0;

      if (!v11)
      {
        v12 = +[CKMediaObjectManager sharedInstance];
        fileURL2 = [v55 fileURL];
        userInfo = [v55 userInfo];
        attributionInfo = [v55 attributionInfo];
        LOBYTE(v51) = [v55 shouldHideAttachments];
        v16 = [v12 mediaObjectWithFileURL:fileURL2 filename:0 transcoderUserInfo:userInfo attributionInfo:attributionInfo adaptiveImageGlyphContentIdentifier:0 adaptiveImageGlyphContentDescription:0 hideAttachment:v51];

        if (v16)
        {
          [v55 setMediaObject:v16];
          fileURL3 = [v16 fileURL];
          [v55 setFileURL:fileURL3];
        }
      }
    }

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        pluginBundleID = [v55 pluginBundleID];
        *buf = 138412290;
        *v62 = pluginBundleID;
        _os_log_impl(&dword_19020E000, v18, OS_LOG_TYPE_INFO, "-> shelf:\n'NSDATA'->'%@'", buf, 0xCu);
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v62 = v6;
      _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Error decoding composition shelf data: %@", buf, 0xCu);
    }

    goto LABEL_26;
  }

LABEL_27:
  shouldHideAttachments = [v55 shouldHideAttachments];

LABEL_28:
  v53 = [dataCopy objectForKey:@"text"];
  if (v53)
  {
    v59 = 0;
    v21 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v53 error:&v59];
    v22 = v59;
    if (v21)
    {
      v23 = +[CKMediaObjectManager sharedInstance];
      v52 = CKTextForPersistentText(v21, v23, shouldHideAttachments);

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 67109376;
          v62[0] = v52 != 0;
          LOWORD(v62[1]) = 1024;
          *(&v62[1] + 2) = 1;
          _os_log_impl(&dword_19020E000, v24, OS_LOG_TYPE_INFO, "-> has retrieved text:%{BOOL}d for persistentText:%{BOOL}d", buf, 0xEu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v25 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *v62 = v22;
          _os_log_impl(&dword_19020E000, v25, OS_LOG_TYPE_INFO, "Error decoding composition text data: %@", buf, 0xCu);
        }
      }

      v52 = 0;
    }
  }

  else
  {
    v52 = 0;
  }

  v26 = [dataCopy objectForKey:@"subject"];
  if (!v26)
  {
    v27 = 0;
    goto LABEL_53;
  }

  v58 = 0;
  v27 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v26 error:&v58];
  v28 = v58;
  v29 = IMOSLoggingEnabled();
  if (v27)
  {
    if (v29)
    {
      v30 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "-> Subject retrieved and unarchived.", buf, 2u);
      }

LABEL_51:
    }
  }

  else if (v29)
  {
    v30 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v62 = v28;
      _os_log_impl(&dword_19020E000, v30, OS_LOG_TYPE_INFO, "Error decoding composition subject data: %@", buf, 0xCu);
    }

    goto LABEL_51;
  }

LABEL_53:
  v31 = [dataCopy objectForKey:@"bizIntent"];
  if (!v31)
  {
    v34 = 0;
    goto LABEL_67;
  }

  v32 = MEMORY[0x1E696ACD0];
  v33 = objc_opt_class();
  v57 = 0;
  v34 = [v32 unarchivedDictionaryWithKeysOfClass:v33 objectsOfClass:objc_opt_class() fromData:v31 error:&v57];
  v35 = v57;
  v36 = IMOSLoggingEnabled();
  if (v34)
  {
    if (v36)
    {
      v37 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        v38 = [v34 count];
        v39 = @"something";
        if (!v38)
        {
          v39 = @"nothing";
        }

        *buf = 138412290;
        *v62 = v39;
        _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "-> bizIntent:%@", buf, 0xCu);
      }

LABEL_65:
    }
  }

  else if (v36)
  {
    v37 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v62 = v35;
      _os_log_impl(&dword_19020E000, v37, OS_LOG_TYPE_INFO, "Error decoding composition bizIntent data: %@", buf, 0xCu);
    }

    goto LABEL_65;
  }

LABEL_67:
  v40 = [dataCopy objectForKey:@"sendLaterPluginInfo"];
  if (!v40)
  {
    v41 = 0;
    goto LABEL_79;
  }

  v56 = 0;
  v41 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v40 error:&v56];
  v42 = v56;
  v43 = IMOSLoggingEnabled();
  if (v41)
  {
    if (v43)
    {
      v44 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *v62 = v41;
        _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "-> sendLaterPluginInfo:%@", buf, 0xCu);
      }

LABEL_77:
    }
  }

  else if (v43)
  {
    v44 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      *v62 = v42;
      _os_log_impl(&dword_19020E000, v44, OS_LOG_TYPE_INFO, "Error decoding composition sendLaterPluginInfo data: %@", buf, 0xCu);
    }

    goto LABEL_77;
  }

LABEL_79:
  v45 = [dataCopy objectForKey:@"audioMessage"];
  if ([v45 BOOLValue])
  {
    v46 = [dataCopy objectForKeyedSubscript:@"audioPowerLevels"];
    v47 = [[_CKAudioComposition alloc] initWithText:v52 subject:v27 powerLevels:v46];
  }

  else
  {
    v47 = [[CKComposition alloc] initWithText:v52 subject:v27 shelfPluginPayload:v55 bizIntent:v34];
    [(CKComposition *)v47 setSendLaterPluginInfo:v41];
  }

  if ([(CKComposition *)v47 hasRestorableContent])
  {
    v48 = v47;
  }

  else
  {
    v48 = 0;
  }

  return v48;
}

- (id)_compositionByAppendingText:(id)text isExpirable:(BOOL)expirable shelfPluginPayload:(id)payload shelfMediaObject:(id)object addingNewLineIfNedded:(BOOL)nedded
{
  neddedCopy = nedded;
  textCopy = text;
  payloadCopy = payload;
  objectCopy = object;
  v14 = objectCopy;
  if (!textCopy && !payloadCopy && !objectCopy)
  {
    selfCopy = self;
    goto LABEL_36;
  }

  text = [(CKComposition *)self text];
  v52 = payloadCopy;
  if (text)
  {
    v17 = text;
    if (textCopy)
    {
      v18 = [text mutableCopy];
      v19 = v18;
      if (!neddedCopy)
      {
LABEL_30:
        [v19 appendAttributedString:textCopy];

        goto LABEL_31;
      }

      v50 = v18;
      string = [textCopy string];
      v49 = [string characterAtIndex:0];

      if ([v17 length])
      {
        string2 = [v17 string];
        v22 = [string2 characterAtIndex:{objc_msgSend(v17, "length") - 1}] != 10;
      }

      else
      {
        v22 = 1;
      }

      __ck_isOnlyAdaptiveImageGlyphs = [textCopy __ck_isOnlyAdaptiveImageGlyphs];
      if ([v17 length])
      {
        v23 = [v17 attributesAtIndex:objc_msgSend(v17 effectiveRange:{"length") - 1, 0}];
      }

      else
      {
        v23 = MEMORY[0x1E695E0F8];
      }

      v24 = [v23 objectForKeyedSubscript:@"MediaObjectForTextAttachment"];

      v25 = [v23 objectForKeyedSubscript:@"PluginDisplayContainer"];

      v26 = v23;
      v27 = [v23 objectForKeyedSubscript:@"EmbeddedRichLinkConfiguration"];

      v28 = __ck_isOnlyAdaptiveImageGlyphs;
      if (v24)
      {
        v28 = 0;
      }

      if (v28 == 1)
      {
        if (v25 | v27)
        {
          v29 = v49 == 10;
        }

        else
        {
          v29 = 1;
        }

        v30 = !v29;
        v31 = v30 & v22;
        v19 = v50;
        payloadCopy = v52;
        if ((v31 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v32 = v49 != 10 && v22;
        v19 = v50;
        payloadCopy = v52;
        if (v32 != 1)
        {
LABEL_29:

          goto LABEL_30;
        }
      }

      v33 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
      [v19 appendAttributedString:v33];

      goto LABEL_29;
    }

    v19 = text;
  }

  else
  {
    v19 = textCopy;
  }

LABEL_31:
  [(CKComposition *)self isExpirableComposition];
  v34 = objc_opt_class();
  shelfPluginPayload = [(CKComposition *)self shelfPluginPayload];
  if (payloadCopy)
  {
    v36 = payloadCopy;

    shelfPluginPayload = v36;
  }

  shelfMediaObject = [(CKComposition *)self shelfMediaObject];
  v51 = v14;
  v38 = v19;
  if (v14)
  {
    v39 = v14;

    shelfMediaObject = v39;
  }

  v40 = [v34 alloc];
  subject = [(CKComposition *)self subject];
  translation = [(CKComposition *)self translation];
  bizIntent = [(CKComposition *)self bizIntent];
  proofreadingInfo = [(CKComposition *)self proofreadingInfo];
  selfCopy = [v40 initWithText:v38 subject:subject translation:translation shelfPluginPayload:shelfPluginPayload bizIntent:bizIntent shelfMediaObject:shelfMediaObject proofreadingInfo:proofreadingInfo];

  expressiveSendStyleID = [(CKComposition *)self expressiveSendStyleID];
  [(CKComposition *)selfCopy setExpressiveSendStyleID:expressiveSendStyleID];

  [(CKComposition *)selfCopy setShouldHideClearPluginButton:[(CKComposition *)self shouldHideClearPluginButton]];
  sendLaterPluginInfo = [(CKComposition *)self sendLaterPluginInfo];
  [(CKComposition *)selfCopy setSendLaterPluginInfo:sendLaterPluginInfo];

  v14 = v51;
  payloadCopy = v52;
LABEL_36:

  return selfCopy;
}

+ (id)compositionForWritingToolsText:(id)text
{
  swift_getObjCClassMetadata();
  textCopy = text;
  v5 = static CKComposition.composition(forWritingToolsText:)(textCopy);

  return v5;
}

- (BOOL)hasRestorableContent
{
  selfCopy = self;
  v3 = CKComposition.hasRestorableContent()();

  return v3;
}

void __61__CKComposition_Collaboration__removeShareURLForComposition___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [*(a1 + 32) cloudKitShare];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "Error while removing the CloudKt share: %@, Error: %@", &v6, 0x16u);
}

void __54__CKComposition_UIPasteboard__pasteboardItemProviders__block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Did not have NSAdaptiveImageGlyph for CKEmojiImageMediaObject in CKComposition", buf, 2u);
}

void __142__CKComposition_UIPasteboard___createPluginPayloadCompositionFromFileItemProvider_builderContext_collaborationShareOptions_completionHandler___block_invoke_542_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 localizedDescription];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Received an error from LSClaimBinding: %@", &v4, 0xCu);
}

void __130__CKComposition_UIPasteboard__createPluginPayloadCompositionFromCloudKitItemProvider_collaborationShareOptions_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [a2 localizedDescription];
  v8 = 138412546;
  v9 = v6;
  v10 = 2112;
  v11 = v7;
  _os_log_error_impl(&dword_19020E000, a3, OS_LOG_TYPE_ERROR, "Failed to load object of class %@ with error: %@", &v8, 0x16u);
}

void __96__CKComposition_UIPasteboard__requestMediaObjectForItemProvider_type_builderContext_completion___block_invoke_3_740_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Failed to open system photo library. Error: %@", &v2, 0xCu);
}

@end