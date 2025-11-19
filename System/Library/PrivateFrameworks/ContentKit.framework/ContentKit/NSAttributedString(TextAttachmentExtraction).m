@interface NSAttributedString(TextAttachmentExtraction)
- (id)wf_contentAsStringsAndAttachments;
@end

@implementation NSAttributedString(TextAttachmentExtraction)

- (id)wf_contentAsStringsAndAttachments
{
  v2 = objc_opt_new();
  v3 = [a1 length];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__NSAttributedString_TextAttachmentExtraction__wf_contentAsStringsAndAttachments__block_invoke;
  v8[3] = &unk_278347748;
  v8[4] = a1;
  v4 = v2;
  v9 = v4;
  [a1 enumerateAttributesInRange:0 options:v3 usingBlock:{0, v8}];
  v5 = v9;
  v6 = v4;

  return v4;
}

@end