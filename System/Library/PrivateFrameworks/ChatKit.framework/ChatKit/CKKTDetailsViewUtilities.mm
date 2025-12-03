@interface CKKTDetailsViewUtilities
+ (BOOL)shouldHighlightCell:(id)cell forConversation:(id)conversation;
+ (id)_commaSeparatedNamesForHandles:(id)handles;
+ (id)enableKTCellText;
+ (id)ktSecuritySectionFooterTextViewForKTStatus:(unint64_t)status withHandles:(id)handles;
+ (id)namesFromHandles:(id)handles shouldUseShortFormat:(BOOL)format;
+ (id)securityDescriptionWithPlaceholder:(id)placeholder handles:(id)handles;
+ (id)securityFooterStringForKTChatState:(unint64_t)state handles:(id)handles;
+ (id)securityHeaderString;
+ (id)verifiedHandlesInChat:(id)chat;
+ (int64_t)numberOfRowsInKTSectionForStatus:(unint64_t)status isGroupChat:(BOOL)chat;
@end

@implementation CKKTDetailsViewUtilities

+ (id)ktSecuritySectionFooterTextViewForKTStatus:(unint64_t)status withHandles:(id)handles
{
  v5 = MEMORY[0x1E69DD168];
  handlesCopy = handles;
  v7 = [v5 alloc];
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v8 setEditable:0];
  [v8 _setInteractiveTextSelectionDisabled:1];
  textContainer = [v8 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  [v8 setBackgroundColor:0];
  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:secondaryLabelColor];

  [v8 setScrollEnabled:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  headerFont = [v11 headerFont];
  [v8 setFont:headerFont];

  [v8 setAdjustsFontForContentSizeCategory:1];
  v13 = [CKKTDetailsViewUtilities securityFooterStringForKTChatState:status handles:handlesCopy];

  if (v13)
  {
    [v8 setAttributedText:v13];
  }

  return v8;
}

+ (BOOL)shouldHighlightCell:(id)cell forConversation:(id)conversation
{
  cellCopy = cell;
  conversationCopy = conversation;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    chat = [conversationCopy chat];
    hasKnownParticipants = [chat hasKnownParticipants];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hasKnownParticipants = 1;
    }

    else
    {
      objc_opt_class();
      hasKnownParticipants = objc_opt_isKindOfClass() ^ 1;
    }
  }

  return hasKnownParticipants & 1;
}

+ (int64_t)numberOfRowsInKTSectionForStatus:(unint64_t)status isGroupChat:(BOOL)chat
{
  if (chat || status - 4 > 0xE)
  {
    return 1;
  }

  else
  {
    return qword_190DD11D0[status - 4];
  }
}

+ (id)verifiedHandlesInChat:(id)chat
{
  v18 = *MEMORY[0x1E69E9840];
  participants = [chat participants];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = participants;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 isKTVerified])
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)namesFromHandles:(id)handles shouldUseShortFormat:(BOOL)format
{
  formatCopy = format;
  v31 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_opt_new();
  v8 = v7;
  if (formatCopy)
  {
    v9 = 1;
  }

  else
  {
    v9 = 3;
  }

  [v7 setStyle:v9];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = handlesCopy;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v26 + 1) + 8 * i);
        v16 = objc_opt_new();
        firstName = [v15 firstName];

        if (firstName)
        {
          firstName2 = [v15 firstName];
        }

        else
        {
          displayID = [v15 displayID];

          if (!displayID)
          {
            goto LABEL_14;
          }

          firstName2 = [v15 displayID];
        }

        v20 = firstName2;
        [v16 setGivenName:firstName2];

LABEL_14:
        lastName = [v15 lastName];

        if (lastName)
        {
          lastName2 = [v15 lastName];
          [v16 setFamilyName:lastName2];
        }

        v23 = [v8 stringFromPersonNameComponents:v16];
        [v6 addObject:v23];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v12);
  }

  v24 = [v6 copy];

  return v24;
}

+ (id)_commaSeparatedNamesForHandles:(id)handles
{
  v3 = [CKKTDetailsViewUtilities namesFromHandles:handles shouldUseShortFormat:1];
  if ([v3 count])
  {
    v4 = [MEMORY[0x1E696AD08] localizedStringByJoiningStrings:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)securityDescriptionWithPlaceholder:(id)placeholder handles:(id)handles
{
  placeholderCopy = placeholder;
  v6 = [CKKTDetailsViewUtilities _commaSeparatedNamesForHandles:handles];
  v7 = MEMORY[0x1E696AEC0];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:placeholderCopy value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"KT_LEARN_MORE_FOOTER_BUTTON_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v12 = [v7 localizedStringWithFormat:v9, v6, v11];

  return v12;
}

+ (id)securityFooterStringForKTChatState:(unint64_t)state handles:(id)handles
{
  handlesCopy = handles;
  v6 = handlesCopy;
  v7 = 0;
  switch(state)
  {
    case 0uLL:
      v22 = CKFrameworkBundle();
      v12 = v22;
      v23 = @"KT_TURN_ON_FOOTER_TEXT";
      goto LABEL_22;
    case 1uLL:
    case 0xAuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0x13uLL:
      v8 = CKIsRunningInMacCatalyst();
      v9 = CKFrameworkBundle();
      v10 = v9;
      if (v8)
      {
        v11 = @"SYSTEM_SETTINGS";
      }

      else
      {
        v11 = @"SETTINGS";
      }

      v12 = [v9 localizedStringForKey:v11 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

      v13 = [CKKTDetailsViewUtilities _commaSeparatedNamesForHandles:v6];
      if ([v6 count] == 1)
      {
        v14 = @"KT_FOOTER_VIEW_TEXT_DISABLED";
      }

      else
      {
        v14 = @"KT_FOOTER_VIEW_TEXT_DISABLED_PLURAL";
      }

      v15 = MEMORY[0x1E696AEC0];
      v16 = CKFrameworkBundle();
      v17 = [v16 localizedStringForKey:v14 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
      v18 = CKFrameworkBundle();
      v19 = [v18 localizedStringForKey:@"KT_LEARN_MORE_FOOTER_BUTTON_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
      v20 = [v15 localizedStringWithFormat:v17, v13, v12, v19];

      goto LABEL_23;
    case 2uLL:
    case 0xBuLL:
    case 0xCuLL:
      v22 = CKFrameworkBundle();
      v12 = v22;
      v23 = @"KT_FOOTER_VIEW_TEXT_UNAVAILABLE";
      goto LABEL_22;
    case 3uLL:
    case 0x11uLL:
      if ([handlesCopy count] == 1)
      {
        v21 = @"KT_FOOTER_TEXT_NOT_VERIFIED";
      }

      else
      {
        v21 = @"KT_FOOTER_TEXT_NOT_VERIFIED_GROUP";
      }

      goto LABEL_10;
    case 4uLL:
    case 0x12uLL:
      if ([handlesCopy count] == 1)
      {
        v21 = @"KT_FOOTER_TEXT_VERIFIED";
LABEL_10:
        v20 = [CKKTDetailsViewUtilities securityDescriptionWithPlaceholder:v21 handles:v6];
        if (!v20)
        {
LABEL_11:
          v7 = 0;
          goto LABEL_25;
        }
      }

      else
      {
        v22 = CKFrameworkBundle();
        v12 = v22;
        v23 = @"KT_FOOTER_TEXT_VERIFIED_GROUP";
LABEL_22:
        v20 = [v22 localizedStringForKey:v23 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
LABEL_23:

        if (!v20)
        {
          goto LABEL_11;
        }
      }

      v24 = CKFrameworkBundle();
      v25 = [v24 localizedStringForKey:@"KT_LEARN_MORE_FOOTER_BUTTON_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

      v26 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v20, v25];
      v27 = [v26 rangeOfString:v25];
      v29 = v28;
      v30 = [v26 length];
      v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v26];
      v43 = v20;
      v31 = +[CKUIBehavior sharedBehaviors];
      [v31 headerFont];
      v32 = v44 = v6;
      v33 = [CKUIBehavior font:v32 adjustedForMaxSizeCategory:*MEMORY[0x1E69DDC28]];

      [v7 addAttribute:*MEMORY[0x1E69DB648] value:v33 range:{0, v30}];
      v34 = *MEMORY[0x1E69DB650];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v7 addAttribute:v34 value:secondaryLabelColor range:{0, v30}];

      v36 = +[CKUIBehavior sharedBehaviors];
      theme = [v36 theme];
      appTintColor = [theme appTintColor];
      [v7 addAttribute:v34 value:appTintColor range:{v27, v29}];

      v39 = *MEMORY[0x1E69DB670];
      v40 = [MEMORY[0x1E695DFF8] URLWithString:&stru_1F04268F8];
      v41 = v39;
      v6 = v44;
      [v7 addAttribute:v41 value:v40 range:{v27, v29}];

      [v7 addAttribute:*MEMORY[0x1E69DB758] value:MEMORY[0x1E695E110] range:{v27, v29}];
LABEL_25:

      return v7;
    case 5uLL:
    case 6uLL:
    case 7uLL:
    case 8uLL:
      v21 = @"KT_FOOTER_VIEW_TEXT_VERIFICATION_FAILURE";
      goto LABEL_10;
    case 9uLL:
      if ([handlesCopy count] == 1)
      {
        v21 = @"KT_FOOTER_VIEW_TEXT_TURNED_OFF";
      }

      else
      {
        v21 = @"KT_FOOTER_VIEW_TEXT_TURNED_OFF_PLURAL";
      }

      goto LABEL_10;
    default:
      goto LABEL_25;
  }
}

+ (id)securityHeaderString
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"KT_HEADER_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

  return v3;
}

+ (id)enableKTCellText
{
  v2 = CKFrameworkBundle();
  v3 = [v2 localizedStringForKey:@"KT_ENABLE_KT_CELL_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

  return v3;
}

@end