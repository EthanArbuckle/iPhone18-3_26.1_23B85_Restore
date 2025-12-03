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
  transcriptEmphasizedFontAttributes = [v3 transcriptEmphasizedFontAttributes];

  sender = [(CKLocationShareActionChatItem *)self sender];
  handle = [(CKLocationShareActionChatItem *)self handle];
  name = [sender name];
  v8 = name;
  v9 = &stru_1F04268F8;
  if (name)
  {
    v10 = name;
  }

  else
  {
    v10 = &stru_1F04268F8;
  }

  v11 = v10;

  name2 = [handle name];
  v13 = name2;
  if (name2)
  {
    v14 = name2;
  }

  else
  {
    v14 = &stru_1F04268F8;
  }

  v15 = v14;

  actionType = [(CKLocationShareActionChatItem *)self actionType];
  direction = [(CKLocationShareActionChatItem *)self direction];
  if (actionType != 1)
  {
    if (actionType)
    {
      goto LABEL_23;
    }

    if (direction)
    {
      if (direction == 1)
      {
        v18 = @"LOCATION_START_YOU_STATUS";
LABEL_15:
        v19 = v11;
LABEL_19:
        v20 = MEMORY[0x1E696AEC0];
        v21 = CKFrameworkBundle();
        v22 = [v21 localizedStringForKey:v18 value:&stru_1F04268F8 table:@"ChatKit"];
        v23 = [v20 stringWithFormat:v22, v19];

        mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
        userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

        if (userInterfaceLayoutDirection == 1)
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

  if (!direction)
  {
    v18 = @"LOCATION_YOU_STOP_STATUS";
    goto LABEL_18;
  }

  if (direction == 1)
  {
    v18 = @"LOCATION_STOP_YOU_STATUS";
    goto LABEL_15;
  }

LABEL_23:
  v27 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v9 attributes:0];
  [v27 replaceCharactersInRange:0 withString:{0, @" "}];
  v28 = objc_alloc_init(MEMORY[0x1E69DB7F0]);
  v29 = +[CKUIBehavior sharedBehaviors];
  locationShareActionIcon = [v29 locationShareActionIcon];
  [v28 setImage:locationShareActionIcon];

  v31 = [MEMORY[0x1E696AAB0] attributedStringWithAttachment:v28];
  [v27 insertAttributedString:v31 atIndex:0];

  [v27 addAttributes:transcriptEmphasizedFontAttributes range:{0, objc_msgSend(v27, "length")}];

  return v27;
}

- (int64_t)actionType
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  actionType = [iMChatItem actionType];

  return actionType;
}

- (int64_t)direction
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  direction = [iMChatItem direction];

  return direction;
}

- (id)sender
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  sender = [iMChatItem sender];

  return sender;
}

- (id)handle
{
  iMChatItem = [(CKChatItem *)self IMChatItem];
  otherHandle = [iMChatItem otherHandle];

  return otherHandle;
}

@end