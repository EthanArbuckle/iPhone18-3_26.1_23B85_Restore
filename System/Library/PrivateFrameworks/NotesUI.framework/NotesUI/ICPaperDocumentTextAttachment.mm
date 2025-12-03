@interface ICPaperDocumentTextAttachment
+ (BOOL)isEnabled;
+ (void)initialize;
- (BOOL)isLegacyMediaType;
- (ICPDFEncryptionStateChecker)encryptionStateChecker;
- (ICPaperDocumentTextAttachment)initWithData:(id)data ofType:(id)type;
- (NSURL)pdfURL;
- (id)_paperBundleURL;
- (id)attachmentAsNSTextAttachment;
- (id)inlineViews;
- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection textContainer:(id)container;
- (id)supportedPresentationSizes;
- (signed)effectiveAttachmentViewSizeForTextContainer:(id)container;
- (void)attachmentView:(id)view didMoveToWindow:(id)window;
- (void)attachmentView:(id)view willMoveToWindow:(id)window;
- (void)paperDidChange;
@end

@implementation ICPaperDocumentTextAttachment

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = MEMORY[0x1E69DB7F0];
    v3 = NSClassFromString(&cfstr_Icpaperdocumen.isa);
    v4 = *MEMORY[0x1E69B7A10];

    [v2 registerTextAttachmentViewProviderClass:v3 forFileType:v4];
  }
}

+ (BOOL)isEnabled
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___ICPaperDocumentTextAttachment;
  if (!objc_msgSendSuper2(&v5, sel_isEnabled) || !ICInternalSettingsIsPDFsInNotesEnabled())
  {
    return 0;
  }

  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  ic_canEditNotes = [mainBundle ic_canEditNotes];

  return ic_canEditNotes;
}

- (ICPaperDocumentTextAttachment)initWithData:(id)data ofType:(id)type
{
  dataCopy = data;
  fileType = [(ICPaperDocumentTextAttachment *)self fileType];
  v9.receiver = self;
  v9.super_class = ICPaperDocumentTextAttachment;
  v7 = [(ICSystemPaperTextAttachment *)&v9 initWithData:dataCopy ofType:fileType];

  return v7;
}

- (id)attachmentAsNSTextAttachment
{
  v31 = *MEMORY[0x1E69E9840];
  isLegacyMediaType = [(ICPaperDocumentTextAttachment *)self isLegacyMediaType];
  attachment = [(ICAbstractTextAttachment *)self attachment];
  v5 = attachment;
  if (isLegacyMediaType)
  {
    attachmentType = [attachment attachmentType];

    if (attachmentType == 6 || (-[ICAbstractTextAttachment attachment](self, "attachment"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 attachmentType], v13, v14 == 11))
    {
      v15 = objc_opt_class();
    }

    else
    {
      v15 = 0;
    }

    v21 = [v15 alloc];
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    v19 = [v21 initWithAttachment:attachment2];
    attachmentAsNSTextAttachment = [v19 attachmentAsNSTextAttachment];
  }

  else
  {
    isPasswordProtected = [attachment isPasswordProtected];

    if (isPasswordProtected)
    {
      attachment3 = [(ICAbstractTextAttachment *)self attachment];
      fallbackPDFData = [attachment3 fallbackPDFData];

      v10 = objc_alloc(MEMORY[0x1E69DB7F0]);
      fallbackPDFUTI = [MEMORY[0x1E69B7680] fallbackPDFUTI];
      attachmentAsNSTextAttachment = [v10 initWithData:fallbackPDFData ofType:fallbackPDFUTI];

      goto LABEL_13;
    }

    v16 = objc_alloc(MEMORY[0x1E696AC38]);
    attachment4 = [(ICAbstractTextAttachment *)self attachment];
    previewItemURL = [attachment4 previewItemURL];
    v26 = 0;
    v19 = [v16 initWithURL:previewItemURL options:0 error:&v26];
    attachment2 = v26;

    if (v19)
    {
      attachmentAsNSTextAttachment = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
      [attachmentAsNSTextAttachment setFileWrapper:v19];
    }

    else
    {
      v23 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        attachment5 = [(ICAbstractTextAttachment *)self attachment];
        shortLoggingDescription = [attachment5 shortLoggingDescription];
        *buf = 138412546;
        v28 = shortLoggingDescription;
        v29 = 2112;
        v30 = attachment2;
        _os_log_impl(&dword_1D4171000, v23, OS_LOG_TYPE_DEFAULT, "Failed to create fallback PDF file wrapper for attachment %@ error: %@", buf, 0x16u);
      }

      attachmentAsNSTextAttachment = 0;
    }
  }

LABEL_13:

  return attachmentAsNSTextAttachment;
}

- (void)paperDidChange
{
  ic_loggingIdentifier = [self ic_loggingIdentifier];
  OUTLINED_FUNCTION_0_2(&dword_1D4171000, v2, v3, "Received debounced paperDidChange for paper document %@", v4, v5, v6, v7, 2u);
}

uint64_t __47__ICPaperDocumentTextAttachment_paperDidChange__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHasPaperForm:0];
  v2 = *(a1 + 32);

  return [v2 setDidRunPaperFormDetection:0];
}

void __47__ICPaperDocumentTextAttachment_paperDidChange__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) attachment];
  v3 = [v2 managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__ICPaperDocumentTextAttachment_paperDidChange__block_invoke_3;
  v5[3] = &unk_1E8468F80;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 performBlockAndWait:v5];
}

- (id)supportedPresentationSizes
{
  if (supportedPresentationSizes_onceToken != -1)
  {
    [ICPaperDocumentTextAttachment supportedPresentationSizes];
  }

  v3 = supportedPresentationSizes_supportedSizes;

  return v3;
}

void __59__ICPaperDocumentTextAttachment_supportedPresentationSizes__block_invoke()
{
  v0 = supportedPresentationSizes_supportedSizes;
  supportedPresentationSizes_supportedSizes = &unk_1F4FC3A50;
}

- (ICPDFEncryptionStateChecker)encryptionStateChecker
{
  if (!self->_encryptionStateChecker)
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];
    attachmentType = [attachment attachmentType];

    if (attachmentType == 6)
    {
      attachment2 = [(ICAbstractTextAttachment *)self attachment];
      media = [attachment2 media];
      mediaURL = [media mediaURL];

      if (mediaURL)
      {
        v8 = [[ICPDFEncryptionStateChecker alloc] initWithPDFURL:mediaURL];
        encryptionStateChecker = self->_encryptionStateChecker;
        self->_encryptionStateChecker = v8;
      }
    }
  }

  v10 = self->_encryptionStateChecker;

  return v10;
}

- (signed)effectiveAttachmentViewSizeForTextContainer:(id)container
{
  containerCopy = container;
  v12.receiver = self;
  v12.super_class = ICPaperDocumentTextAttachment;
  v5 = [(ICBaseTextAttachment *)&v12 effectiveAttachmentViewSizeForTextContainer:containerCopy];
  if (v5 != 1)
  {
    v6 = ICProtocolCast();
    if ([v6 insideSystemPaper])
    {
      LOWORD(v5) = 1;
    }

    else
    {
      attachment = [(ICAbstractTextAttachment *)self attachment];
      attachmentType = [attachment attachmentType];

      if (attachmentType == 6)
      {
        encryptionStateChecker = [(ICPaperDocumentTextAttachment *)self encryptionStateChecker];
        encryptionState = [encryptionStateChecker encryptionState];

        if (encryptionState != 2)
        {
          LOWORD(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (void)attachmentView:(id)view willMoveToWindow:(id)window
{
  if (!window)
  {
    viewCopy = view;
    systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [systemPaperViews removeObject:viewCopy];

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICSystemPaperTextAttachmentWillDisappearNotification" object:viewCopy];
  }
}

- (void)attachmentView:(id)view didMoveToWindow:(id)window
{
  if (window)
  {
    viewCopy = view;
    systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [systemPaperViews addObject:viewCopy];

    [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"ICSystemPaperTextAttachmentDidAppearNotification" object:viewCopy];
  }
}

- (id)inlineViews
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  systemPaperViews = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v5 = [systemPaperViews countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(systemPaperViews);
        }

        ICGatherInterestingSubviewsFromViewInArray(*(*(&v11 + 1) + 8 * i), array);
      }

      v6 = [systemPaperViews countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [array copy];

  return v9;
}

- (BOOL)isLegacyMediaType
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  attachmentType = [attachment attachmentType];

  v5 = attachmentType - 3;
  if (attachmentType - 3) < 0xD && ((0x1909u >> v5))
  {
    attachmentType2 = 0x109u >> v5;
  }

  else
  {
    v7 = MEMORY[0x1E69B7A38];
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    attachmentType2 = [attachment2 attachmentType];
    attachment3 = [(ICAbstractTextAttachment *)self attachment];
    shortLoggingDescription = [attachment3 shortLoggingDescription];
    v12 = attachmentType2;
    LOBYTE(attachmentType2) = 1;
    [v7 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICPaperDocumentTextAttachment isLegacyMediaType]" simulateCrash:1 showAlert:0 format:{@"Unexpected type %hd for attachment %@", v12, shortLoggingDescription}];
  }

  return attachmentType2 & 1;
}

- (NSURL)pdfURL
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  if ([attachment attachmentType] == 6)
  {
    attachment2 = [(ICAbstractTextAttachment *)self attachment];
    media = [attachment2 media];
    mediaURL = [media mediaURL];
  }

  else
  {
    mediaURL = 0;
  }

  return mediaURL;
}

- (id)_paperBundleURL
{
  if ([(ICPaperDocumentTextAttachment *)self isLegacyMediaType])
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];
    temporaryPaperBundleURL = [attachment temporaryPaperBundleURL];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ICPaperDocumentTextAttachment;
    temporaryPaperBundleURL = [(ICSystemPaperTextAttachment *)&v6 _paperBundleURL];
  }

  return temporaryPaperBundleURL;
}

- (id)printableTextContentForAppearanceType:(unint64_t)type traitCollection:(id)collection textContainer:(id)container
{
  v6 = [(ICAbstractTextAttachment *)self attachment:type];
  preferredViewSize = [v6 preferredViewSize];

  if (preferredViewSize != 1)
  {
    attachment = [(ICAbstractTextAttachment *)self attachment];
    attachmentType = [attachment attachmentType];

    if (attachmentType == 11)
    {
      attachment2 = [(ICAbstractTextAttachment *)self attachment];
      galleryModel = [attachment2 galleryModel];
      firstSubAttachment = [galleryModel firstSubAttachment];

      if (firstSubAttachment)
      {
        v14 = [ICGalleryAttachmentUtilities imageForSubAttachment:firstSubAttachment rotateForMacImageGallery:1 allowCached:1];
        v15 = MEMORY[0x1E6982C40];
        typeUTI = [firstSubAttachment typeUTI];
        v17 = [v15 typeWithIdentifier:typeUTI];
LABEL_11:

LABEL_14:
        if (v14)
        {
          v28 = [ICPrintableTextAttachment alloc];
          data = [MEMORY[0x1E695DEF0] data];
          identifier = [v17 identifier];
          v31 = [(ICPrintableTextAttachment *)v28 initWithData:data ofType:identifier];

          [(ICPrintableTextAttachment *)v31 setImage:v14];
          [v14 size];
          v33 = v32;
          [v14 size];
          [(ICPrintableTextAttachment *)v31 setBounds:0.0, 0.0, v33, v34];
          v8 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v31];
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_18;
      }

      v17 = 0;
    }

    else
    {
      v17 = *MEMORY[0x1E6982F10];
      attachment3 = [(ICAbstractTextAttachment *)self attachment];
      attachmentType2 = [attachment3 attachmentType];

      if (attachmentType2 == 6)
      {
        v20 = MEMORY[0x1E695DEF0];
        pdfURL = [(ICPaperDocumentTextAttachment *)self pdfURL];
        [v20 dataWithContentsOfURL:pdfURL];
      }

      else
      {
        pdfURL = [(ICAbstractTextAttachment *)self attachment];
        [pdfURL fallbackPDFData];
      }
      firstSubAttachment = ;

      if (firstSubAttachment)
      {
        typeUTI = [objc_alloc(MEMORY[0x1E6978028]) initWithData:firstSubAttachment];
        v22 = [typeUTI pageAtIndex:0];
        [v22 boundsForBox:1];
        TSDScaleSizeWithinSize();
        v24 = v23;
        v26 = v25;
        v27 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
        v14 = [MEMORY[0x1E69B7830] renderedImageForPage:objc_msgSend(v22 scale:"pageRef") size:v27 colorSpace:{1.0, v24, v26}];
        CFRelease(v27);

        goto LABEL_11;
      }
    }

    v14 = 0;
    goto LABEL_14;
  }

  v8 = 0;
LABEL_18:

  return v8;
}

@end