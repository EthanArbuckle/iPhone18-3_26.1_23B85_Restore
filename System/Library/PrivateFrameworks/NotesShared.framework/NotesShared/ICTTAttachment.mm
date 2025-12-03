@interface ICTTAttachment
+ (BOOL)isAttachment:(id)attachment equalToModelComparable:(id)comparable;
+ (BOOL)isInlineAttachment:(id)attachment;
- (BOOL)_isEmojiImage;
- (BOOL)isEqual:(id)equal;
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (NSString)description;
- (id)adaptiveImageGlyph;
- (id)attachmentInContext:(id)context;
- (id)inlineAttachmentInContext:(id)context;
@end

@implementation ICTTAttachment

+ (BOOL)isAttachment:(id)attachment equalToModelComparable:(id)comparable
{
  comparableCopy = comparable;
  attachmentIdentifier = [attachment attachmentIdentifier];
  if ([comparableCopy conformsToProtocol:&unk_282766DE0])
  {
    attachmentIdentifier2 = [comparableCopy attachmentIdentifier];
    v8 = attachmentIdentifier2;
    v9 = 0;
    if (attachmentIdentifier && attachmentIdentifier2)
    {
      v9 = [attachmentIdentifier isEqualToString:attachmentIdentifier2];
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isInlineAttachment:(id)attachment
{
  attachmentCopy = attachment;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [attachmentCopy fileType];
  }

  else
  {
    [attachmentCopy attachmentUTI];
  }
  v5 = ;

  v6 = [self typeUTIIsInlineAttachment:v5];
  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  attachmentUTI = [(ICTTAttachment *)self attachmentUTI];
  attachmentIdentifier = [(ICTTAttachment *)self attachmentIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, attachmentUTI: %@, attachmentIdentifier: %@>", v5, self, attachmentUTI, attachmentIdentifier];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = ICProtocolCast();
  if (v5)
  {
    v6 = [(ICTTAttachment *)self isEqualToModelComparable:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentInContext:(id)context
{
  contextCopy = context;
  attachmentIdentifier = [(ICTTAttachment *)self attachmentIdentifier];
  v6 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:attachmentIdentifier context:contextCopy];

  return v6;
}

- (id)inlineAttachmentInContext:(id)context
{
  contextCopy = context;
  attachmentIdentifier = [(ICTTAttachment *)self attachmentIdentifier];
  v6 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:attachmentIdentifier context:contextCopy];

  return v6;
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  v7 = *MEMORY[0x277CBF3A0];
  v8 = *(MEMORY[0x277CBF3A0] + 8);
  v9 = *(MEMORY[0x277CBF3A0] + 16);
  v10 = *(MEMORY[0x277CBF3A0] + 24);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (BOOL)_isEmojiImage
{
  v2 = os_log_create("com.apple.notes", "SimulatedCrash");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(ICTTAttachment *)v2 _isEmojiImage];
  }

  return 0;
}

- (id)adaptiveImageGlyph
{
  v2 = os_log_create("com.apple.notes", "SimulatedCrash");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    [(ICTTAttachment *)v2 _isEmojiImage];
  }

  return 0;
}

@end