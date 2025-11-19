@interface NSAttributedString(RichLinks)
- (id)__ck_attributedStringByApplyingRichLinkInteraction:()RichLinks toRichLinkItems:stringDidChange:;
- (id)ck_attributedStringByPostProcessingURLTextForRichLinks;
- (id)ck_linkPreviewTextAttachmentsInRange:()RichLinks;
- (uint64_t)__ck_rangeOfRichLinkItem:()RichLinks;
@end

@implementation NSAttributedString(RichLinks)

- (id)__ck_attributedStringByApplyingRichLinkInteraction:()RichLinks toRichLinkItems:stringDidChange:
{
  v8 = a4;
  v9 = a1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__23;
  v26 = __Block_byref_object_dispose__23;
  v27 = [v9 mutableCopy];
  v10 = [v9 length];
  v11 = *MEMORY[0x1E69DB5F8];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __116__NSAttributedString_RichLinks____ck_attributedStringByApplyingRichLinkInteraction_toRichLinkItems_stringDidChange___block_invoke;
  v16[3] = &unk_1E72F0AD8;
  v12 = v8;
  v17 = v12;
  v20 = a3;
  v13 = v9;
  v18 = v13;
  v19 = &v22;
  v21 = a5;
  [v13 enumerateAttribute:v11 inRange:0 options:v10 usingBlock:{0, v16}];
  v14 = [v23[5] copy];

  _Block_object_dispose(&v22, 8);

  return v14;
}

- (id)ck_attributedStringByPostProcessingURLTextForRichLinks
{
  v0 = IMAttributedStringByRemovingTrackingInformation();
  v1 = [v0 mutableCopy];
  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = __87__NSAttributedString_RichLinks__ck_attributedStringByPostProcessingURLTextForRichLinks__block_invoke;
  v14 = &unk_1E72F0B00;
  v15 = v1;
  IMRichLinkUtilitiesEnumerateRichLinksInAttributedString();
  v2 = [v15 length];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __87__NSAttributedString_RichLinks__ck_attributedStringByPostProcessingURLTextForRichLinks__block_invoke_2;
  v9 = &unk_1E72EF890;
  v10 = v15;
  v3 = v15;
  [v3 enumerateAttribute:@"EmbeddedRichLinkConfiguration" inRange:0 options:v2 usingBlock:{0, &v6}];
  v4 = [v3 copy];

  return v4;
}

- (id)ck_linkPreviewTextAttachmentsInRange:()RichLinks
{
  v20.length = [a1 length];
  v19.location = a3;
  v19.length = a4;
  v20.location = 0;
  v7 = NSIntersectionRange(v19, v20);
  if (v7.length)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__23;
    v16 = __Block_byref_object_dispose__23;
    v17 = [MEMORY[0x1E695DF70] array];
    v8 = *MEMORY[0x1E69DB5F8];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__NSAttributedString_RichLinks__ck_linkPreviewTextAttachmentsInRange___block_invoke;
    v11[3] = &unk_1E72EF840;
    v11[4] = &v12;
    [a1 enumerateAttribute:v8 inRange:v7.location options:v7.length usingBlock:{0, v11}];
    v9 = [v13[5] copy];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  return v9;
}

- (uint64_t)__ck_rangeOfRichLinkItem:()RichLinks
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3010000000;
  v16 = &unk_190F92BB2;
  v17 = xmmword_190DCEFA0;
  v5 = [a1 length];
  v6 = *MEMORY[0x1E69DB5F8];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__NSAttributedString_RichLinks____ck_rangeOfRichLinkItem___block_invoke;
  v10[3] = &unk_1E72F0AB0;
  v7 = v4;
  v11 = v7;
  v12 = &v13;
  [a1 enumerateAttribute:v6 inRange:0 options:v5 usingBlock:{0, v10}];
  v8 = v14[4];

  _Block_object_dispose(&v13, 8);
  return v8;
}

@end