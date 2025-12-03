@interface ICInlineAttachmentView(Accessibility_iOS)
- (id)supportedRotorTypes;
- (uint64_t)textRangeInNote;
@end

@implementation ICInlineAttachmentView(Accessibility_iOS)

- (uint64_t)textRangeInNote
{
  textAttachment = [self textAttachment];
  attachment = [textAttachment attachment];

  note = [attachment note];
  v4 = [note rangeForAttachment:attachment];

  return v4;
}

- (id)supportedRotorTypes
{
  v9[1] = *MEMORY[0x277D85DE8];
  textAttachment = [self textAttachment];
  attachment = [textAttachment attachment];

  if ([attachment isMentionAttachment])
  {
    v9[0] = @"ICAccessibilityRotorTypeMentions";
    v3 = MEMORY[0x277CBEA60];
    v4 = v9;
LABEL_5:
    v5 = [v3 arrayWithObjects:v4 count:1];
    goto LABEL_9;
  }

  if ([attachment isHashtagAttachment])
  {
    v8 = @"ICAccessibilityRotorTypeTags";
    v3 = MEMORY[0x277CBEA60];
    v4 = &v8;
    goto LABEL_5;
  }

  v6 = os_log_create("com.apple.notes", "UI");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [(ICInlineAttachmentView(Accessibility_iOS) *)v6 supportedRotorTypes];
  }

  v5 = MEMORY[0x277CBEBF8];
LABEL_9:

  return v5;
}

@end