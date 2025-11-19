@interface ICPaperDocumentTextAttachment
+ (BOOL)isEnabled;
+ (void)initialize;
- (BOOL)isLegacyMediaType;
- (ICPDFEncryptionStateChecker)encryptionStateChecker;
- (ICPaperDocumentTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (NSURL)pdfURL;
- (id)_paperBundleURL;
- (id)attachmentAsNSTextAttachment;
- (id)inlineViews;
- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 textContainer:(id)a5;
- (id)supportedPresentationSizes;
- (signed)effectiveAttachmentViewSizeForTextContainer:(id)a3;
- (void)attachmentView:(id)a3 didMoveToWindow:(id)a4;
- (void)attachmentView:(id)a3 willMoveToWindow:(id)a4;
- (void)paperDidChange;
@end

@implementation ICPaperDocumentTextAttachment

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = MEMORY[0x1E69DB7F0];
    v3 = NSClassFromString(&cfstr_Icpaperdocumen.isa);
    v4 = *MEMORY[0x1E69B7A10];

    [v2 registerTextAttachmentViewProviderClass:v3 forFileType:v4];
  }
}

+ (BOOL)isEnabled
{
  v5.receiver = a1;
  v5.super_class = &OBJC_METACLASS___ICPaperDocumentTextAttachment;
  if (!objc_msgSendSuper2(&v5, sel_isEnabled) || !ICInternalSettingsIsPDFsInNotesEnabled())
  {
    return 0;
  }

  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 ic_canEditNotes];

  return v3;
}

- (ICPaperDocumentTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v5 = a3;
  v6 = [(ICPaperDocumentTextAttachment *)self fileType];
  v9.receiver = self;
  v9.super_class = ICPaperDocumentTextAttachment;
  v7 = [(ICSystemPaperTextAttachment *)&v9 initWithData:v5 ofType:v6];

  return v7;
}

- (id)attachmentAsNSTextAttachment
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(ICPaperDocumentTextAttachment *)self isLegacyMediaType];
  v4 = [(ICAbstractTextAttachment *)self attachment];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 attachmentType];

    if (v6 == 6 || (-[ICAbstractTextAttachment attachment](self, "attachment"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 attachmentType], v13, v14 == 11))
    {
      v15 = objc_opt_class();
    }

    else
    {
      v15 = 0;
    }

    v21 = [v15 alloc];
    v20 = [(ICAbstractTextAttachment *)self attachment];
    v19 = [v21 initWithAttachment:v20];
    v12 = [v19 attachmentAsNSTextAttachment];
  }

  else
  {
    v7 = [v4 isPasswordProtected];

    if (v7)
    {
      v8 = [(ICAbstractTextAttachment *)self attachment];
      v9 = [v8 fallbackPDFData];

      v10 = objc_alloc(MEMORY[0x1E69DB7F0]);
      v11 = [MEMORY[0x1E69B7680] fallbackPDFUTI];
      v12 = [v10 initWithData:v9 ofType:v11];

      goto LABEL_13;
    }

    v16 = objc_alloc(MEMORY[0x1E696AC38]);
    v17 = [(ICAbstractTextAttachment *)self attachment];
    v18 = [v17 previewItemURL];
    v26 = 0;
    v19 = [v16 initWithURL:v18 options:0 error:&v26];
    v20 = v26;

    if (v19)
    {
      v12 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
      [v12 setFileWrapper:v19];
    }

    else
    {
      v23 = os_log_create("com.apple.notes", "UI");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = [(ICAbstractTextAttachment *)self attachment];
        v25 = [v24 shortLoggingDescription];
        *buf = 138412546;
        v28 = v25;
        v29 = 2112;
        v30 = v20;
        _os_log_impl(&dword_1D4171000, v23, OS_LOG_TYPE_DEFAULT, "Failed to create fallback PDF file wrapper for attachment %@ error: %@", buf, 0x16u);
      }

      v12 = 0;
    }
  }

LABEL_13:

  return v12;
}

- (void)paperDidChange
{
  v1 = [a1 ic_loggingIdentifier];
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
    v3 = [(ICAbstractTextAttachment *)self attachment];
    v4 = [v3 attachmentType];

    if (v4 == 6)
    {
      v5 = [(ICAbstractTextAttachment *)self attachment];
      v6 = [v5 media];
      v7 = [v6 mediaURL];

      if (v7)
      {
        v8 = [[ICPDFEncryptionStateChecker alloc] initWithPDFURL:v7];
        encryptionStateChecker = self->_encryptionStateChecker;
        self->_encryptionStateChecker = v8;
      }
    }
  }

  v10 = self->_encryptionStateChecker;

  return v10;
}

- (signed)effectiveAttachmentViewSizeForTextContainer:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ICPaperDocumentTextAttachment;
  v5 = [(ICBaseTextAttachment *)&v12 effectiveAttachmentViewSizeForTextContainer:v4];
  if (v5 != 1)
  {
    v6 = ICProtocolCast();
    if ([v6 insideSystemPaper])
    {
      LOWORD(v5) = 1;
    }

    else
    {
      v7 = [(ICAbstractTextAttachment *)self attachment];
      v8 = [v7 attachmentType];

      if (v8 == 6)
      {
        v9 = [(ICPaperDocumentTextAttachment *)self encryptionStateChecker];
        v10 = [v9 encryptionState];

        if (v10 != 2)
        {
          LOWORD(v5) = 1;
        }
      }
    }
  }

  return v5;
}

- (void)attachmentView:(id)a3 willMoveToWindow:(id)a4
{
  if (!a4)
  {
    v6 = a3;
    v7 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [v7 removeObject:v6];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 postNotificationName:@"ICSystemPaperTextAttachmentWillDisappearNotification" object:v6];
  }
}

- (void)attachmentView:(id)a3 didMoveToWindow:(id)a4
{
  if (a4)
  {
    v5 = a3;
    v6 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
    [v6 addObject:v5];

    [(ICInlineCanvasTextAttachment *)self updatePaletteVisibility];
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 postNotificationName:@"ICSystemPaperTextAttachmentDidAppearNotification" object:v5];
  }
}

- (id)inlineViews
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [(ICSystemPaperTextAttachment *)self systemPaperViews];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v4);
        }

        ICGatherInterestingSubviewsFromViewInArray(*(*(&v11 + 1) + 8 * i), v3);
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];

  return v9;
}

- (BOOL)isLegacyMediaType
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 attachmentType];

  v5 = v4 - 3;
  if (v4 - 3) < 0xD && ((0x1909u >> v5))
  {
    v6 = 0x109u >> v5;
  }

  else
  {
    v7 = MEMORY[0x1E69B7A38];
    v8 = [(ICAbstractTextAttachment *)self attachment];
    v6 = [v8 attachmentType];
    v9 = [(ICAbstractTextAttachment *)self attachment];
    v10 = [v9 shortLoggingDescription];
    v12 = v6;
    LOBYTE(v6) = 1;
    [v7 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICPaperDocumentTextAttachment isLegacyMediaType]" simulateCrash:1 showAlert:0 format:{@"Unexpected type %hd for attachment %@", v12, v10}];
  }

  return v6 & 1;
}

- (NSURL)pdfURL
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  if ([v3 attachmentType] == 6)
  {
    v4 = [(ICAbstractTextAttachment *)self attachment];
    v5 = [v4 media];
    v6 = [v5 mediaURL];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_paperBundleURL
{
  if ([(ICPaperDocumentTextAttachment *)self isLegacyMediaType])
  {
    v3 = [(ICAbstractTextAttachment *)self attachment];
    v4 = [v3 temporaryPaperBundleURL];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = ICPaperDocumentTextAttachment;
    v4 = [(ICSystemPaperTextAttachment *)&v6 _paperBundleURL];
  }

  return v4;
}

- (id)printableTextContentForAppearanceType:(unint64_t)a3 traitCollection:(id)a4 textContainer:(id)a5
{
  v6 = [(ICAbstractTextAttachment *)self attachment:a3];
  v7 = [v6 preferredViewSize];

  if (v7 != 1)
  {
    v9 = [(ICAbstractTextAttachment *)self attachment];
    v10 = [v9 attachmentType];

    if (v10 == 11)
    {
      v11 = [(ICAbstractTextAttachment *)self attachment];
      v12 = [v11 galleryModel];
      v13 = [v12 firstSubAttachment];

      if (v13)
      {
        v14 = [ICGalleryAttachmentUtilities imageForSubAttachment:v13 rotateForMacImageGallery:1 allowCached:1];
        v15 = MEMORY[0x1E6982C40];
        v16 = [v13 typeUTI];
        v17 = [v15 typeWithIdentifier:v16];
LABEL_11:

LABEL_14:
        if (v14)
        {
          v28 = [ICPrintableTextAttachment alloc];
          v29 = [MEMORY[0x1E695DEF0] data];
          v30 = [v17 identifier];
          v31 = [(ICPrintableTextAttachment *)v28 initWithData:v29 ofType:v30];

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
      v18 = [(ICAbstractTextAttachment *)self attachment];
      v19 = [v18 attachmentType];

      if (v19 == 6)
      {
        v20 = MEMORY[0x1E695DEF0];
        v21 = [(ICPaperDocumentTextAttachment *)self pdfURL];
        [v20 dataWithContentsOfURL:v21];
      }

      else
      {
        v21 = [(ICAbstractTextAttachment *)self attachment];
        [v21 fallbackPDFData];
      }
      v13 = ;

      if (v13)
      {
        v16 = [objc_alloc(MEMORY[0x1E6978028]) initWithData:v13];
        v22 = [v16 pageAtIndex:0];
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