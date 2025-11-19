@interface ICMentionUIModel
- (id)labelColor;
@end

@implementation ICMentionUIModel

- (id)labelColor
{
  v3 = [(ICInlineAttachmentUIModel *)self attachment];
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v4 = [v3 managedObjectContext];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __30__ICMentionUIModel_labelColor__block_invoke;
  v19[3] = &unk_1E8468FA8;
  v21 = &v22;
  v5 = v3;
  v20 = v5;
  [v4 performBlockAndWait:v19];

  if (v5 && *(v23 + 24) != 1)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__56;
    v16 = __Block_byref_object_dispose__56;
    v17 = [MEMORY[0x1E69DC888] ICUnknownInlineAttachmentTextColor];
    v7 = [v5 managedObjectContext];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__ICMentionUIModel_labelColor__block_invoke_8;
    v9[3] = &unk_1E846B1D8;
    v10 = v5;
    v11 = &v12;
    [v7 performBlockAndWait:v9];

    v6 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v18.receiver = self;
    v18.super_class = ICMentionUIModel;
    v6 = [(ICInlineAttachmentUIModel *)&v18 labelColor];
  }

  _Block_object_dispose(&v22, 8);

  return v6;
}

uint64_t __30__ICMentionUIModel_labelColor__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isUnsupported];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

void __30__ICMentionUIModel_labelColor__block_invoke_8(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) tokenContentIdentifier];
  v3 = [v2 ic_tokenSafeText];
  v4 = [MEMORY[0x1E69B77E8] allUserRecordName];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [MEMORY[0x1E69DC888] tintColor];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = [*(a1 + 32) note];
    v10 = [v9 serverShareCheckingParent];
    [v10 participants];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = v24 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * i) ic_userRecordNameInNote:{v9, v21}];
          if ([v16 isEqualToString:v2])
          {
            v17 = [v9 collaborationColorManager];
            v18 = [v17 highlightColorForUserID:v2 note:v9];
            v19 = *(*(a1 + 40) + 8);
            v20 = *(v19 + 40);
            *(v19 + 40) = v18;

            goto LABEL_13;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

@end