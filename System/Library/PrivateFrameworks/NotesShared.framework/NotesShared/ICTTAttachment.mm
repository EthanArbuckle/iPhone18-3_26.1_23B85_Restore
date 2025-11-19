@interface ICTTAttachment
+ (BOOL)isAttachment:(id)a3 equalToModelComparable:(id)a4;
+ (BOOL)isInlineAttachment:(id)a3;
- (BOOL)_isEmojiImage;
- (BOOL)isEqual:(id)a3;
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (NSString)description;
- (id)adaptiveImageGlyph;
- (id)attachmentInContext:(id)a3;
- (id)inlineAttachmentInContext:(id)a3;
@end

@implementation ICTTAttachment

+ (BOOL)isAttachment:(id)a3 equalToModelComparable:(id)a4
{
  v5 = a4;
  v6 = [a3 attachmentIdentifier];
  if ([v5 conformsToProtocol:&unk_282766DE0])
  {
    v7 = [v5 attachmentIdentifier];
    v8 = v7;
    v9 = 0;
    if (v6 && v7)
    {
      v9 = [v6 isEqualToString:v7];
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9;
}

+ (BOOL)isInlineAttachment:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 fileType];
  }

  else
  {
    [v4 attachmentUTI];
  }
  v5 = ;

  v6 = [a1 typeUTIIsInlineAttachment:v5];
  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICTTAttachment *)self attachmentUTI];
  v7 = [(ICTTAttachment *)self attachmentIdentifier];
  v8 = [v3 stringWithFormat:@"<%@: %p, attachmentUTI: %@, attachmentIdentifier: %@>", v5, self, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = ICProtocolCast();
  if (v5)
  {
    v6 = [(ICTTAttachment *)self isEqualToModelComparable:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)attachmentInContext:(id)a3
{
  v4 = a3;
  v5 = [(ICTTAttachment *)self attachmentIdentifier];
  v6 = [(ICBaseAttachment *)ICAttachment attachmentWithIdentifier:v5 context:v4];

  return v6;
}

- (id)inlineAttachmentInContext:(id)a3
{
  v4 = a3;
  v5 = [(ICTTAttachment *)self attachmentIdentifier];
  v6 = [(ICBaseAttachment *)ICInlineAttachment attachmentWithIdentifier:v5 context:v4];

  return v6;
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
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