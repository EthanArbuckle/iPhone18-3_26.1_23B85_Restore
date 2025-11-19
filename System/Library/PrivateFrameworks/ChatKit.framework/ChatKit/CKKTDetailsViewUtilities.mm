@interface CKKTDetailsViewUtilities
+ (BOOL)shouldHighlightCell:(id)a3 forConversation:(id)a4;
+ (id)_commaSeparatedNamesForHandles:(id)a3;
+ (id)enableKTCellText;
+ (id)ktSecuritySectionFooterTextViewForKTStatus:(unint64_t)a3 withHandles:(id)a4;
+ (id)namesFromHandles:(id)a3 shouldUseShortFormat:(BOOL)a4;
+ (id)securityDescriptionWithPlaceholder:(id)a3 handles:(id)a4;
+ (id)securityFooterStringForKTChatState:(unint64_t)a3 handles:(id)a4;
+ (id)securityHeaderString;
+ (id)verifiedHandlesInChat:(id)a3;
+ (int64_t)numberOfRowsInKTSectionForStatus:(unint64_t)a3 isGroupChat:(BOOL)a4;
@end

@implementation CKKTDetailsViewUtilities

+ (id)ktSecuritySectionFooterTextViewForKTStatus:(unint64_t)a3 withHandles:(id)a4
{
  v5 = MEMORY[0x1E69DD168];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [v7 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v8 setEditable:0];
  [v8 _setInteractiveTextSelectionDisabled:1];
  v9 = [v8 textContainer];
  [v9 setLineFragmentPadding:0.0];

  [v8 setBackgroundColor:0];
  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [v8 setTextColor:v10];

  [v8 setScrollEnabled:0];
  v11 = +[CKUIBehavior sharedBehaviors];
  v12 = [v11 headerFont];
  [v8 setFont:v12];

  [v8 setAdjustsFontForContentSizeCategory:1];
  v13 = [CKKTDetailsViewUtilities securityFooterStringForKTChatState:a3 handles:v6];

  if (v13)
  {
    [v8 setAttributedText:v13];
  }

  return v8;
}

+ (BOOL)shouldHighlightCell:(id)a3 forConversation:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 chat];
    v8 = [v7 hasKnownParticipants];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = 1;
    }

    else
    {
      objc_opt_class();
      v8 = objc_opt_isKindOfClass() ^ 1;
    }
  }

  return v8 & 1;
}

+ (int64_t)numberOfRowsInKTSectionForStatus:(unint64_t)a3 isGroupChat:(BOOL)a4
{
  if (a4 || a3 - 4 > 0xE)
  {
    return 1;
  }

  else
  {
    return qword_190DD11D0[a3 - 4];
  }
}

+ (id)verifiedHandlesInChat:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [a3 participants];
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
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

+ (id)namesFromHandles:(id)a3 shouldUseShortFormat:(BOOL)a4
{
  v4 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = objc_opt_new();
  v8 = v7;
  if (v4)
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
  v10 = v5;
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
        v17 = [v15 firstName];

        if (v17)
        {
          v18 = [v15 firstName];
        }

        else
        {
          v19 = [v15 displayID];

          if (!v19)
          {
            goto LABEL_14;
          }

          v18 = [v15 displayID];
        }

        v20 = v18;
        [v16 setGivenName:v18];

LABEL_14:
        v21 = [v15 lastName];

        if (v21)
        {
          v22 = [v15 lastName];
          [v16 setFamilyName:v22];
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

+ (id)_commaSeparatedNamesForHandles:(id)a3
{
  v3 = [CKKTDetailsViewUtilities namesFromHandles:a3 shouldUseShortFormat:1];
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

+ (id)securityDescriptionWithPlaceholder:(id)a3 handles:(id)a4
{
  v5 = a3;
  v6 = [CKKTDetailsViewUtilities _commaSeparatedNamesForHandles:a4];
  v7 = MEMORY[0x1E696AEC0];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:v5 value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

  v10 = CKFrameworkBundle();
  v11 = [v10 localizedStringForKey:@"KT_LEARN_MORE_FOOTER_BUTTON_TEXT" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v12 = [v7 localizedStringWithFormat:v9, v6, v11];

  return v12;
}

+ (id)securityFooterStringForKTChatState:(unint64_t)a3 handles:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  switch(a3)
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
      if ([v5 count] == 1)
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
      if ([v5 count] == 1)
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
      v35 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      [v7 addAttribute:v34 value:v35 range:{0, v30}];

      v36 = +[CKUIBehavior sharedBehaviors];
      v37 = [v36 theme];
      v38 = [v37 appTintColor];
      [v7 addAttribute:v34 value:v38 range:{v27, v29}];

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
      if ([v5 count] == 1)
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