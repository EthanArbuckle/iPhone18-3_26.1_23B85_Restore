@interface ICTextAttachment
+ (BOOL)textAttachmentIsContent:(id)a3;
+ (Class)textAttachmentClassForAttachment:(id)a3;
+ (id)textAttachmentWithAttachment:(id)a3;
- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins;
- (BOOL)isUnsupported;
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6;
- (CGRect)attachmentBoundsIncludingMarginsFromAttachmentBounds:(CGRect)a3;
- (CGSize)attachmentSizeForTextContainer:(id)a3;
- (ICTextAttachment)initWithData:(id)a3 ofType:(id)a4;
- (double)availableWidthForTextContainer:(id)a3;
- (id)attachmentAsNSTextAttachment;
- (id)attachmentFileWrapper;
- (void)attachmentFileWrapper;
@end

@implementation ICTextAttachment

- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  if ([v3 preferredViewSize] == 1)
  {
    v4 = [(ICAbstractTextAttachment *)self supportsMultipleThumbnailsOnSameLine];

    if (v4)
    {
      v5 = 2.0;
    }

    else
    {
      v5 = 0.0;
    }

    v6 = 4.0;
    if (!v4)
    {
      v6 = 0.0;
    }
  }

  else
  {

    v5 = 0.0;
    v6 = 0.0;
  }

  v7 = 0.0;
  v8 = v5;
  result.var3 = v8;
  result.var2 = v5;
  result.var1 = v6;
  result.var0 = v7;
  return result;
}

+ (Class)textAttachmentClassForAttachment:(id)a3
{
  v3 = a3;
  if ([v3 isAuthenticated])
  {
    v4 = [v3 media];
    if (v4)
    {
      v5 = [v3 media];
      v6 = [v5 isAuthenticated];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  if (([v3 needsInitialFetchFromCloud] & 1) != 0 || v6 & 1 | ((objc_msgSend(v3, "isPasswordProtected") & 1) == 0))
  {
    switch([v3 attachmentType])
    {
      case 0u:
      case 2u:
      case 3u:
      case 5u:
      case 7u:
      case 8u:
      case 9u:
      case 0xAu:
      case 0xCu:
        break;
      case 1u:
        if ((([v3 isPasswordProtected] & 1) != 0 || !objc_msgSend(v3, "hasFallbackPDF")) && (objc_msgSend(v3, "isPasswordProtected") & 1) == 0)
        {
          goto LABEL_21;
        }

        break;
      case 4u:
        ICInternalSettingsIsAudioTranscriptionEnabled();
        break;
      case 6u:
      case 0xBu:
        +[ICPaperDocumentTextAttachment isEnabled];
        break;
      case 0xDu:
        if (!+[ICSystemPaperTextAttachment isEnabled])
        {
          goto LABEL_19;
        }

        break;
      case 0xEu:
      case 0xFu:
        if (!+[ICPaperDocumentTextAttachment isEnabled])
        {
LABEL_19:
          if (![v3 hasFallbackPDF])
          {
LABEL_21:
            [v3 hasFallbackImage];
          }
        }

        break;
      default:
        v8 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(ICTextAttachment *)v3 textAttachmentClassForAttachment:v8];
        }

        break;
    }

    v7 = objc_opt_class();
  }

  else
  {
    v7 = objc_opt_class();
  }

  v9 = v7;

  return v9;
}

+ (id)textAttachmentWithAttachment:(id)a3
{
  v4 = a3;
  v5 = [objc_alloc(objc_msgSend(a1 textAttachmentClassForAttachment:{v4)), "initWithAttachment:", v4}];

  return v5;
}

+ (BOOL)textAttachmentIsContent:(id)a3
{
  v3 = a3;
  if (!textAttachmentIsContent__UIDictationClass)
  {
    textAttachmentIsContent__UIDictationClass = NSClassFromString(&cfstr_Uidictationatt.isa);
  }

  if (!textAttachmentIsContent__UITextPlaceholderAttachment)
  {
    textAttachmentIsContent__UITextPlaceholderAttachment = NSClassFromString(&cfstr_Uitextplacehol.isa);
  }

  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_isKindOfClass())
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v4 = [v6 isEqualToString:@"_UIAnimatedTextAttachment"] ^ 1;
  }

  return v4;
}

- (ICTextAttachment)initWithData:(id)a3 ofType:(id)a4
{
  v5.receiver = self;
  v5.super_class = ICTextAttachment;
  return [(ICAbstractTextAttachment *)&v5 initWithData:a3 ofType:a4];
}

- (id)attachmentFileWrapper
{
  v3 = [(ICAbstractTextAttachment *)self attachment];
  v4 = [v3 media];
  v5 = [v4 isValid];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [(ICAbstractTextAttachment *)self attachment];
  v7 = [v6 media];
  v8 = [v7 isPasswordProtected];

  if (v8)
  {
    v9 = [(ICAbstractTextAttachment *)self attachment];
    v10 = [v9 media];
    v11 = [v10 isAuthenticated];

    if (v11)
    {
      v12 = [(ICAbstractTextAttachment *)self attachment];
      v13 = [v12 media];
      v14 = [v13 decryptedData];

      if (v14)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:v14];
        v16 = [(ICAbstractTextAttachment *)self attachment];
        v17 = [v16 media];
        v18 = [v17 filename];

        if (![v18 length])
        {
          v19 = MEMORY[0x1E69B7680];
          v20 = [(ICBaseTextAttachment *)self attachmentUTI];
          v21 = [v19 filenameFromUTI:v20];

          v18 = v21;
        }

        [v15 setPreferredFilename:v18];
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_9;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_9;
  }

  v23 = objc_alloc(MEMORY[0x1E696AC38]);
  v24 = [(ICAbstractTextAttachment *)self attachment];
  v25 = [v24 media];
  v26 = [v25 mediaURL];
  v29 = 0;
  v15 = [v23 initWithURL:v26 options:0 error:&v29];
  v27 = v29;

  if (v27)
  {
    v28 = os_log_create("com.apple.notes", "UI");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [(ICTextAttachment *)v27 attachmentFileWrapper];
    }
  }

LABEL_9:

  return v15;
}

- (id)attachmentAsNSTextAttachment
{
  v2 = [(ICTextAttachment *)self attachmentFileWrapper];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
    [v3 setFileWrapper:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isUnsupported
{
  v2 = [(ICAbstractTextAttachment *)self attachment];
  v3 = [v2 isUnsupported];

  return v3;
}

- (CGRect)attachmentBoundsForTextContainer:(id)a3 proposedLineFragment:(CGRect)a4 glyphPosition:(CGPoint)a5 characterIndex:(unint64_t)a6
{
  [(ICTextAttachment *)self attachmentSizeForTextContainer:a3 proposedLineFragment:a6, a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, a5.x, a5.y];
  if (v7 >= 1.0)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1.0;
  }

  if (v8 >= 1.0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 1.0;
  }

  if ([(ICAbstractTextAttachment *)self supportsMultipleThumbnailsOnSameLine])
  {
    v11 = [(ICAbstractTextAttachment *)self attachment];
    v12 = [v11 preferredViewSize];

    if (v12 == 1)
    {
      [objc_opt_class() defaultAttachmentThumbnailViewHeight];
      v10 = v13;
      v9 = fmax(v9, 30.0);
    }
  }

  [(ICTextAttachment *)self attachmentBoundsIncludingMarginsFromAttachmentBounds:0.0, 0.0, v9, v10];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  v11 = a6.origin.y;
  v12 = a6.origin.x;
  v16 = a3;
  v17 = a5;
  v44.receiver = self;
  v44.super_class = ICTextAttachment;
  [(ICBaseTextAttachment *)&v44 attachmentBoundsForAttributes:v16 location:a4 textContainer:v17 proposedLineFragment:v12 position:v11, width, height, x, y];
  v19 = v18;
  v21 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = [v16 objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
      v23 = v22;
      if (v22)
      {
        [v22 descender];
        v21 = v21 + v24;
      }
    }
  }

  [(ICTextAttachment *)self attachmentSizeForTextContainer:v17 proposedLineFragment:v12, v11, width, height];
  if (v25 >= 1.0)
  {
    v27 = v25;
  }

  else
  {
    v27 = 1.0;
  }

  if (v26 >= 1.0)
  {
    v28 = v26;
  }

  else
  {
    v28 = 1.0;
  }

  if ([(ICAbstractTextAttachment *)self supportsMultipleThumbnailsOnSameLine])
  {
    v29 = [(ICAbstractTextAttachment *)self attachment];
    v30 = [v29 preferredViewSize];

    if (v30 == 1)
    {
      [objc_opt_class() defaultAttachmentThumbnailViewHeight];
      v28 = v31;
      v27 = fmax(v27, 30.0);
    }
  }

  [(ICTextAttachment *)self attachmentBoundsIncludingMarginsFromAttachmentBounds:v19, v21, v27, v28];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;

  v40 = v33;
  v41 = v35;
  v42 = v37;
  v43 = v39;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGSize)attachmentSizeForTextContainer:(id)a3
{
  v4 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(ICTextAttachment *)self attachmentSizeForTextContainer:v4];
  }

  v5 = 320.0;
  v6 = 240.0;
  result.height = v6;
  result.width = v5;
  return result;
}

- (double)availableWidthForTextContainer:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  [v3 lineFragmentPadding];
  v7 = v6;

  result = v5 + v7 * -2.0;
  if (result < 1.0)
  {
    return 1.0;
  }

  return result;
}

- (CGRect)attachmentBoundsIncludingMarginsFromAttachmentBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(ICTextAttachment *)self attachmentBoundsMargins];
  v9 = width + v7 + v8;
  v12 = height + v10 + v11;
  v13 = x;
  v14 = y;
  v15 = v9;
  result.size.height = v12;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

+ (void)textAttachmentClassForAttachment:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1D4171000, a2, OS_LOG_TYPE_DEBUG, "Asking for a text attachment class for an unknown UT type: %@", &v2, 0xCu);
}

- (void)attachmentFileWrapper
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Error creating attachment file wrapper: %@", &v2, 0xCu);
}

- (void)attachmentSizeForTextContainer:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "Trying to get the size of an attachment with an unknown text attachment type: %@", &v2, 0xCu);
}

@end