@interface CKEmoteMessageChatItem
- (id)loadTranscriptText;
@end

@implementation CKEmoteMessageChatItem

- (id)loadTranscriptText
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(CKChatItem *)self IMChatItem];
  v4 = [v3 text];
  v5 = [v4 string];

  v6 = [(CKChatItem *)self IMChatItem];
  v7 = [v6 message];
  v8 = [v7 sender];

  v9 = +[CKUIBehavior sharedBehaviors];
  v10 = [v9 transcriptRegularFontAttributes];

  v11 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5 attributes:v10];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = IMEmotePrefixes();
  v13 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [v5 rangeOfString:*(*(&v26 + 1) + 8 * i) options:{8, v26}];
        if (v18)
        {
          v19 = v17;
          v20 = v18;
          v21 = *MEMORY[0x1E69DB648];
          v22 = +[CKUIBehavior sharedBehaviors];
          v23 = [v22 transcriptBoldFont];
          [v11 addAttribute:v21 value:v23 range:{v19, v20}];

          v24 = [v8 name];
          [v11 replaceCharactersInRange:v19 withString:{v20, v24}];

          goto LABEL_11;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v11;
}

@end