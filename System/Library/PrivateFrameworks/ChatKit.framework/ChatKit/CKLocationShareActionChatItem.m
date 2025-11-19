@interface CKLocationShareActionChatItem
- (id)handle;
- (id)loadTranscriptText;
- (id)sender;
- (int64_t)actionType;
- (int64_t)direction;
@end

@implementation CKLocationShareActionChatItem

- (id)loadTranscriptText
{
  v3 = +[CKUIBehavior sharedBehaviors];
  v4 = [v3 transcriptEmphasizedFontAttributes];

  v5 = [(CKLocationShareActionChatItem *)self sender];
  v6 = [(CKLocationShareActionChatItem *)self handle];
  v7 = [v5 name];
  v8 = v7;
  v9 = &stru_1F04268F8;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = &stru_1F04268F8;
  }

  v11 = v10;

  v12 = [v6 name];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F04268F8;
  }

  v15 = v14;

  v16 = [(CKLocationShareActionChatItem *)self actionType];
  v17 = [(CKLocationShareActionChatItem *)self direction];
  if (v16 != 1)
  {
    if (v16)
    {
      goto LABEL_23;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v18 = @"LOCATION_START_YOU_STATUS";
LABEL_15:
        v19 = v11;
LABEL_19:
        v20 = MEMORY[0x1E696AEC0];
        v21 = CKFrameworkBundle();
        v22 = [v21 localizedStringForKey:v18 value:&stru_1F04268F8 table:@"ChatKit"];
        v23 = [v20 stringWithFormat:v22, v19];

        v24 = [MEMORY[0x1E69DC668] sharedApplication];
        v25 = [v24 userInterfaceLayoutDirection];

        if (v25 == 1)
        {
          v26 = @"\u200F";
        }

        else
        {
          v26 = @"\u200E";
        }

        v9 = [(__CFString *)v26 stringByAppendingString:v23];

        goto LABEL_23;
      }

      goto LABEL_23;
    }

    v18 = @"LOCATION_YOU_START_STATUS";
LABEL_18:
    v19 = v15;
    goto LABEL_19;
  }

  if (!v17)
  {
    v18 = @"LOCATION_YOU_STOP_STATUS";
    goto LABEL_18;
  }

  if (v17 == 1)
  {
    v18 = @"LOCATION_STOP_YOU_STATUS";
    goto LABEL_15;
  }

LABEL_23:
  v27 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:0];
  [v27 replaceCharactersInRange:0 withString:{0, @" "}];
  v28 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v29 = +[CKUIBehavior sharedBehaviors];
  v30 = [v29 locationShareActionIcon];
  [v28 setImage:v30];

  v31 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v28];
  [v27 insertAttributedString:v31 atIndex:0];

  [v27 addAttributes:v4 range:{0, objc_msgSend(v27, "length")}];

  return v27;
}

- (int64_t)actionType
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 actionType];

  return v3;
}

- (int64_t)direction
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 direction];

  return v3;
}

- (id)sender
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 sender];

  return v3;
}

- (id)handle
{
  v2 = [(CKChatItem *)self IMChatItem];
  v3 = [v2 otherHandle];

  return v3;
}

@end