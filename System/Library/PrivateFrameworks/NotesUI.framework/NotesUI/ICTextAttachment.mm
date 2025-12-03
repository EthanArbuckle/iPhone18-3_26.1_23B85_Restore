@interface ICTextAttachment
+ (BOOL)textAttachmentIsContent:(id)content;
+ (Class)textAttachmentClassForAttachment:(id)attachment;
+ (id)textAttachmentWithAttachment:(id)attachment;
- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins;
- (BOOL)isUnsupported;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index;
- (CGRect)attachmentBoundsIncludingMarginsFromAttachmentBounds:(CGRect)bounds;
- (CGSize)attachmentSizeForTextContainer:(id)container;
- (ICTextAttachment)initWithData:(id)data ofType:(id)type;
- (double)availableWidthForTextContainer:(id)container;
- (id)attachmentAsNSTextAttachment;
- (id)attachmentFileWrapper;
- (void)attachmentFileWrapper;
@end

@implementation ICTextAttachment

- ($01BB1521EC52D44A8E7628F5261DCEC8)attachmentBoundsMargins
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  if ([attachment preferredViewSize] == 1)
  {
    supportsMultipleThumbnailsOnSameLine = [(ICAbstractTextAttachment *)self supportsMultipleThumbnailsOnSameLine];

    if (supportsMultipleThumbnailsOnSameLine)
    {
      v5 = 2.0;
    }

    else
    {
      v5 = 0.0;
    }

    v6 = 4.0;
    if (!supportsMultipleThumbnailsOnSameLine)
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

+ (Class)textAttachmentClassForAttachment:(id)attachment
{
  attachmentCopy = attachment;
  if ([attachmentCopy isAuthenticated])
  {
    media = [attachmentCopy media];
    if (media)
    {
      media2 = [attachmentCopy media];
      isAuthenticated = [media2 isAuthenticated];
    }

    else
    {
      isAuthenticated = 1;
    }
  }

  else
  {
    isAuthenticated = 0;
  }

  if (([attachmentCopy needsInitialFetchFromCloud] & 1) != 0 || isAuthenticated & 1 | ((objc_msgSend(attachmentCopy, "isPasswordProtected") & 1) == 0))
  {
    switch([attachmentCopy attachmentType])
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
        if ((([attachmentCopy isPasswordProtected] & 1) != 0 || !objc_msgSend(attachmentCopy, "hasFallbackPDF")) && (objc_msgSend(attachmentCopy, "isPasswordProtected") & 1) == 0)
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
          if (![attachmentCopy hasFallbackPDF])
          {
LABEL_21:
            [attachmentCopy hasFallbackImage];
          }
        }

        break;
      default:
        v8 = os_log_create("com.apple.notes", "UI");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          [(ICTextAttachment *)attachmentCopy textAttachmentClassForAttachment:v8];
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

+ (id)textAttachmentWithAttachment:(id)attachment
{
  attachmentCopy = attachment;
  v5 = [objc_alloc(objc_msgSend(self textAttachmentClassForAttachment:{attachmentCopy)), "initWithAttachment:", attachmentCopy}];

  return v5;
}

+ (BOOL)textAttachmentIsContent:(id)content
{
  contentCopy = content;
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

- (ICTextAttachment)initWithData:(id)data ofType:(id)type
{
  v5.receiver = self;
  v5.super_class = ICTextAttachment;
  return [(ICAbstractTextAttachment *)&v5 initWithData:data ofType:type];
}

- (id)attachmentFileWrapper
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  media = [attachment media];
  isValid = [media isValid];

  if (!isValid)
  {
    goto LABEL_8;
  }

  attachment2 = [(ICAbstractTextAttachment *)self attachment];
  media2 = [attachment2 media];
  isPasswordProtected = [media2 isPasswordProtected];

  if (isPasswordProtected)
  {
    attachment3 = [(ICAbstractTextAttachment *)self attachment];
    media3 = [attachment3 media];
    isAuthenticated = [media3 isAuthenticated];

    if (isAuthenticated)
    {
      attachment4 = [(ICAbstractTextAttachment *)self attachment];
      media4 = [attachment4 media];
      decryptedData = [media4 decryptedData];

      if (decryptedData)
      {
        v15 = [objc_alloc(MEMORY[0x1E696AC38]) initRegularFileWithContents:decryptedData];
        attachment5 = [(ICAbstractTextAttachment *)self attachment];
        media5 = [attachment5 media];
        filename = [media5 filename];

        if (![filename length])
        {
          v19 = MEMORY[0x1E69B7680];
          attachmentUTI = [(ICBaseTextAttachment *)self attachmentUTI];
          v21 = [v19 filenameFromUTI:attachmentUTI];

          filename = v21;
        }

        [v15 setPreferredFilename:filename];
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
  attachment6 = [(ICAbstractTextAttachment *)self attachment];
  media6 = [attachment6 media];
  mediaURL = [media6 mediaURL];
  v29 = 0;
  v15 = [v23 initWithURL:mediaURL options:0 error:&v29];
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
  attachmentFileWrapper = [(ICTextAttachment *)self attachmentFileWrapper];
  if (attachmentFileWrapper)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DB7F0]) initWithData:0 ofType:0];
    [v3 setFileWrapper:attachmentFileWrapper];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)isUnsupported
{
  attachment = [(ICAbstractTextAttachment *)self attachment];
  isUnsupported = [attachment isUnsupported];

  return isUnsupported;
}

- (CGRect)attachmentBoundsForTextContainer:(id)container proposedLineFragment:(CGRect)fragment glyphPosition:(CGPoint)position characterIndex:(unint64_t)index
{
  [(ICTextAttachment *)self attachmentSizeForTextContainer:container proposedLineFragment:index, fragment.origin.x, fragment.origin.y, fragment.size.width, fragment.size.height, position.x, position.y];
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
    attachment = [(ICAbstractTextAttachment *)self attachment];
    preferredViewSize = [attachment preferredViewSize];

    if (preferredViewSize == 1)
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

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  attributesCopy = attributes;
  containerCopy = container;
  v44.receiver = self;
  v44.super_class = ICTextAttachment;
  [(ICBaseTextAttachment *)&v44 attachmentBoundsForAttributes:attributesCopy location:location textContainer:containerCopy proposedLineFragment:v12 position:v11, width, height, x, y];
  v19 = v18;
  v21 = v20;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v22 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x1E69DB648]];
      v23 = v22;
      if (v22)
      {
        [v22 descender];
        v21 = v21 + v24;
      }
    }
  }

  [(ICTextAttachment *)self attachmentSizeForTextContainer:containerCopy proposedLineFragment:v12, v11, width, height];
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
    attachment = [(ICAbstractTextAttachment *)self attachment];
    preferredViewSize = [attachment preferredViewSize];

    if (preferredViewSize == 1)
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

- (CGSize)attachmentSizeForTextContainer:(id)container
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

- (double)availableWidthForTextContainer:(id)container
{
  containerCopy = container;
  [containerCopy size];
  v5 = v4;
  [containerCopy lineFragmentPadding];
  v7 = v6;

  result = v5 + v7 * -2.0;
  if (result < 1.0)
  {
    return 1.0;
  }

  return result;
}

- (CGRect)attachmentBoundsIncludingMarginsFromAttachmentBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
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
  selfCopy = self;
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