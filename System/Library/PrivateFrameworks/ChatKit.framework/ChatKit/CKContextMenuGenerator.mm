@interface CKContextMenuGenerator
+ (BOOL)_shouldShowPrivateMessageOptionForHandle:(id)a3 conversation:(id)a4;
+ (id)_menuActionToInitiateFaceTimeAudioForConversation:(id)a3 andContactsManager:(id)a4;
+ (id)_menuActionToInitiateFaceTimeVideoForConversation:(id)a3 andContactsManager:(id)a4;
+ (id)_menuActionToInviteHandleToShareTheirScreen:(id)a3 conversation:(id)a4 andContactsManager:(id)a5;
+ (id)_menuActionToSendEmailForConversation:(id)a3 andContactsManager:(id)a4;
+ (id)_menuActionToShareMyScreenWithHandle:(id)a3 conversation:(id)a4 andContactsManager:(id)a5;
+ (id)menuActionToCreateContactForID:(id)a3 handler:(id)a4;
+ (id)menuActionToDisplayRecipientForHandle:(id)a3;
+ (id)menuActionToInitiateFaceTimeAudioWithHandle:(id)a3 andContactsManager:(id)a4;
+ (id)menuActionToInitiateFaceTimeVideoWithHandle:(id)a3 andContactsManager:(id)a4;
+ (id)menuActionToOpenContactCardForContact:(id)a3;
+ (id)menuActionToRemoveHandle:(id)a3 fromConversation:(id)a4;
+ (id)menuActionToSendEmailToAddress:(id)a3;
+ (id)menuActionToSendPrivateMessageToHandleID:(id)a3;
+ (id)menuActionToShowIDAsLargeType:(id)a3 handler:(id)a4;
+ (id)menuActionsToInitiateRelayPhoneCallWithHandle:(id)a3;
+ (id)menuForNamedGroupConversation:(id)a3 andContactsManager:(id)a4;
+ (id)recipientSubmenuForHandle:(id)a3;
+ (id)relayPhoneCallActionTextForPhoneNumber:(id)a3;
+ (id)subMenuForScreenSharingOptionsWithHandle:(id)a3 conversation:(id)a4 andContactsManager:(id)a5;
+ (id)submenuForIndividualParticipantWithHandle:(id)a3 forConversation:(id)a4 includeAddToContactsAction:(BOOL)a5 includeRemoveAction:(BOOL)a6;
@end

@implementation CKContextMenuGenerator

+ (id)recipientSubmenuForHandle:(id)a3
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [CKContextMenuGenerator menuActionToDisplayRecipientForHandle:a3];
  v4 = v3;
  if (v3)
  {
    v5 = MEMORY[0x1E69DCC60];
    v9[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    v7 = [v5 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)menuActionToDisplayRecipientForHandle:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 ID], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    v6 = [v4 ID];
    if (((MEMORY[0x193AF5D40]() & 1) != 0 || IMStringIsEmail()) && (IMFormattedDisplayStringForNumber(), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v9 = v8;
      v7 = [MEMORY[0x1E69DC628] actionWithTitle:v8 image:0 identifier:0 handler:&__block_literal_global_61];
      [v7 setAttributes:1];
      [v7 setState:1];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)submenuForIndividualParticipantWithHandle:(id)a3 forConversation:(id)a4 includeAddToContactsAction:(BOOL)a5 includeRemoveAction:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  if (v6)
  {
    v12 = [CKContextMenuGenerator menuActionToRemoveHandle:v9 fromConversation:v10];
    if (v12)
    {
      [v11 addObject:v12];
    }
  }

  if ([a1 _shouldShowPrivateMessageOptionForHandle:v9 conversation:v10])
  {
    v13 = [v9 ID];
    v14 = [CKContextMenuGenerator menuActionToSendPrivateMessageToHandleID:v13];

    if (v14)
    {
      [v11 addObject:v14];
    }
  }

  v15 = [v9 email];

  if (v15)
  {
    v16 = [v9 email];
    v17 = [CKContextMenuGenerator menuActionToSendEmailToAddress:v16];

    if (v17)
    {
      [v11 addObject:v17];
    }
  }

  v18 = [v9 cnContactWithKeys:MEMORY[0x1E695E0F0]];
  if (v18 && [MEMORY[0x1E69A7FD0] isCNContactAKnownContact:v18])
  {
    v19 = [CKContextMenuGenerator menuActionToOpenContactCardForContact:v18];
    if (v19)
    {
      [v11 addObject:v19];
    }
  }

  if ([v11 count])
  {
    v20 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v11];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)menuActionToRemoveHandle:(id)a3 fromConversation:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = MEMORY[0x1E69DC628];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"REMOVE_RECIPIENT" value:&stru_1F04268F8 table:@"ChatKit"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __68__CKContextMenuGenerator_menuActionToRemoveHandle_fromConversation___block_invoke;
    v13[3] = &unk_1E72EFBD8;
    v14 = v7;
    v15 = v5;
    v8 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v13];
  }

  return v8;
}

void __68__CKContextMenuGenerator_menuActionToRemoveHandle_fromConversation___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v3[0] = *(a1 + 40);
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [v1 removeRecipientHandles:v2];
}

+ (id)menuActionToSendPrivateMessageToHandleID:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = MEMORY[0x1E69DC628];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SEND_PRIVATE_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67__CKContextMenuGenerator_menuActionToSendPrivateMessageToHandleID___block_invoke;
    v10[3] = &unk_1E72EC060;
    v11 = v4;
    v8 = [v5 actionWithTitle:v7 image:0 identifier:0 handler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __67__CKContextMenuGenerator_menuActionToSendPrivateMessageToHandleID___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"messages://open?addresses=%@", *(a1 + 32)];
  v5 = [MEMORY[0x1E695DFF8] URLWithString:v4];
  v6 = v5;
  if (v5)
  {
    v7 = *MEMORY[0x1E69DDA98];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __67__CKContextMenuGenerator_menuActionToSendPrivateMessageToHandleID___block_invoke_58;
    v9[3] = &unk_1E72EB9C8;
    v10 = v5;
    [v7 openURL:v10 withCompletionHandler:v9];
  }

  else if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = v4;
      _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Unable to create NSURL with urlString: %@", buf, 0xCu);
    }
  }
}

void __67__CKContextMenuGenerator_menuActionToSendPrivateMessageToHandleID___block_invoke_58(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = @"Failed";
      v6 = *(a1 + 32);
      if (a2)
      {
        v5 = @"Succeeded";
      }

      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Opening private conversation URL: %@ %@", &v7, 0x16u);
    }
  }
}

+ (id)menuActionToSendEmailToAddress:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = MEMORY[0x1E69DC628];
    v6 = CKFrameworkBundle();
    v7 = [v6 localizedStringForKey:@"SEND_EMAIL" value:&stru_1F04268F8 table:@"ChatKit"];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __57__CKContextMenuGenerator_menuActionToSendEmailToAddress___block_invoke;
    v10[3] = &unk_1E72EC060;
    v11 = v4;
    v8 = [v5 actionWithTitle:v7 image:0 identifier:0 handler:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __57__CKContextMenuGenerator_menuActionToSendEmailToAddress___block_invoke(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AB08] URLPathAllowedCharacterSet];
  v5 = [v3 stringByAddingPercentEncodingWithAllowedCharacters:v4];
  v7 = [v2 initWithFormat:@"mailto:%@", v5];

  if ([v7 length])
  {
    v6 = [MEMORY[0x1E695DFF8] URLWithString:v7];
    [*MEMORY[0x1E69DDA98] openURL:v6 withCompletionHandler:0];
  }
}

+ (id)menuActionToOpenContactCardForContact:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && ([v3 identifier], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_msgSend(v4, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v6, v8))
  {
    v9 = MEMORY[0x1E69DC628];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"SHOW_CONTACT_CARD" value:&stru_1F04268F8 table:@"ChatKit"];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__CKContextMenuGenerator_menuActionToOpenContactCardForContact___block_invoke;
    v14[3] = &unk_1E72EC060;
    v15 = v4;
    v12 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v14];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __64__CKContextMenuGenerator_menuActionToOpenContactCardForContact___block_invoke(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AD60] stringWithString:@"addressbook://"];
  v2 = [*(a1 + 32) identifier];
  [v5 appendString:v2];

  v3 = *MEMORY[0x1E69DDA98];
  v4 = [MEMORY[0x1E695DFF8] URLWithString:v5];
  [v3 openURL:v4 withCompletionHandler:0];
}

+ (id)menuActionToCreateContactForID:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 _appearsToBeBusinessID])
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E69DC628];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"ADD_TO_CONTACTS…" value:&stru_1F04268F8 table:@"ChatKit"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __65__CKContextMenuGenerator_menuActionToCreateContactForID_handler___block_invoke;
    v12[3] = &unk_1E72EFE00;
    v14 = v6;
    v13 = v5;
    v7 = [v8 actionWithTitle:v10 image:0 identifier:0 handler:v12];
  }

  return v7;
}

uint64_t __65__CKContextMenuGenerator_menuActionToCreateContactForID_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 0);
  }

  return result;
}

+ (id)menuActionToShowIDAsLargeType:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 _appearsToBeEmail] & 1) != 0 || (objc_msgSend(v5, "_appearsToBeBusinessID"))
  {
    v7 = 0;
  }

  else
  {
    v8 = MEMORY[0x1E69DC628];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"LARGE_TYPE" value:&stru_1F04268F8 table:@"ChatKit"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__CKContextMenuGenerator_menuActionToShowIDAsLargeType_handler___block_invoke;
    v12[3] = &unk_1E72EFE00;
    v14 = v6;
    v13 = v5;
    v7 = [v8 actionWithTitle:v10 image:0 identifier:0 handler:v12];
  }

  return v7;
}

uint64_t __64__CKContextMenuGenerator_menuActionToShowIDAsLargeType_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32), 1);
  }

  return result;
}

+ (id)subMenuForScreenSharingOptionsWithHandle:(id)a3 conversation:(id)a4 andContactsManager:(id)a5
{
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [CKContextMenuGenerator _menuActionToShareMyScreenWithHandle:v9 conversation:v8 andContactsManager:v7];
  v11 = [CKContextMenuGenerator _menuActionToInviteHandleToShareTheirScreen:v9 conversation:v8 andContactsManager:v7];

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v13 = MEMORY[0x1E69DCC60];
    v17[0] = v10;
    v17[1] = v11;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
    v15 = [v13 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v14];
  }

  return v15;
}

+ (id)_menuActionToShareMyScreenWithHandle:(id)a3 conversation:(id)a4 andContactsManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && ([v7 ID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = MEMORY[0x1E69DC628];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"INVITE_TO_SHARE_MY_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__CKContextMenuGenerator__menuActionToShareMyScreenWithHandle_conversation_andContactsManager___block_invoke;
    v16[3] = &unk_1E72EFBD8;
    v17 = v9;
    v18 = v8;
    v14 = [v11 actionWithTitle:v13 image:0 identifier:0 handler:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __95__CKContextMenuGenerator__menuActionToShareMyScreenWithHandle_conversation_andContactsManager___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) recipient];
  [v1 shareMyScreenWithEntity:v2];
}

+ (id)_menuActionToInviteHandleToShareTheirScreen:(id)a3 conversation:(id)a4 andContactsManager:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 && ([v7 ID], v10 = objc_claimAutoreleasedReturnValue(), v10, v10))
  {
    v11 = MEMORY[0x1E69DC628];
    v12 = CKFrameworkBundle();
    v13 = [v12 localizedStringForKey:@"ASK_TO_SHARE_THEIR_SCREEN" value:&stru_1F04268F8 table:@"ChatKit"];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __102__CKContextMenuGenerator__menuActionToInviteHandleToShareTheirScreen_conversation_andContactsManager___block_invoke;
    v16[3] = &unk_1E72EFBD8;
    v17 = v9;
    v18 = v8;
    v14 = [v11 actionWithTitle:v13 image:0 identifier:0 handler:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __102__CKContextMenuGenerator__menuActionToInviteHandleToShareTheirScreen_conversation_andContactsManager___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) recipient];
  [v1 inviteEntityToShareTheirScreen:v2];
}

+ (id)menuActionToInitiateFaceTimeAudioWithHandle:(id)a3 andContactsManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = MEMORY[0x1E69DC628];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"FACE_TIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__CKContextMenuGenerator_menuActionToInitiateFaceTimeAudioWithHandle_andContactsManager___block_invoke;
    v13[3] = &unk_1E72EFBD8;
    v14 = v5;
    v15 = v7;
    v8 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v13];
  }

  return v8;
}

void __89__CKContextMenuGenerator_menuActionToInitiateFaceTimeAudioWithHandle_andContactsManager___block_invoke(uint64_t a1)
{
  v2 = [[CKEntity alloc] initWithIMHandle:*(a1 + 32)];
  [*(a1 + 40) startCommunicationForEntity:v2 action:1 address:0];
}

+ (id)menuActionToInitiateFaceTimeVideoWithHandle:(id)a3 andContactsManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = MEMORY[0x1E69DC628];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"FACE_TIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __89__CKContextMenuGenerator_menuActionToInitiateFaceTimeVideoWithHandle_andContactsManager___block_invoke;
    v13[3] = &unk_1E72EFBD8;
    v14 = v5;
    v15 = v7;
    v8 = [v9 actionWithTitle:v11 image:0 identifier:0 handler:v13];
  }

  return v8;
}

void __89__CKContextMenuGenerator_menuActionToInitiateFaceTimeVideoWithHandle_andContactsManager___block_invoke(uint64_t a1)
{
  v2 = [[CKEntity alloc] initWithIMHandle:*(a1 + 32)];
  [*(a1 + 40) startCommunicationForEntity:v2 action:0 address:0];
}

+ (id)menuActionsToInitiateRelayPhoneCallWithHandle:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[CKContextMenuGenerator supportsRelayPhoneCallsCalls];
  v5 = MEMORY[0x1E695E0F0];
  v21 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  v6 = [v3 cnContactWithKeys:v5];
  v7 = v6;
  if (v4 && v6 != 0)
  {
    v20 = v6;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = [MEMORY[0x1E69A7FD0] phoneNumbersForCNContact:v6];
    v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v24;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v24 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v23 + 1) + 8 * i);
          if ([v15 _appearsToBePhoneNumber])
          {
            v16 = MEMORY[0x1E69DC628];
            v17 = [CKContextMenuGenerator relayPhoneCallActionTextForPhoneNumber:v15];
            v22[0] = MEMORY[0x1E69E9820];
            v22[1] = 3221225472;
            v22[2] = __72__CKContextMenuGenerator_menuActionsToInitiateRelayPhoneCallWithHandle___block_invoke;
            v22[3] = &unk_1E72EC060;
            v22[4] = v15;
            v18 = [v16 actionWithTitle:v17 image:0 identifier:0 handler:v22];

            if (v18)
            {
              [v21 addObject:v18];
            }

            v12 = v18;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
    }

    v7 = v20;
  }

  return v21;
}

void __72__CKContextMenuGenerator_menuActionsToInitiateRelayPhoneCallWithHandle___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (IMOSLoggingEnabled())
  {
    v4 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, "Initiating relay phone call.", &v12, 2u);
    }
  }

  v5 = objc_alloc_init(MEMORY[0x1E69D8A90]);
  v6 = objc_alloc(MEMORY[0x1E69D8BD0]);
  v7 = [v5 defaultProvider];
  v8 = [v6 initWithProvider:v7];

  v9 = [objc_alloc(MEMORY[0x1E69D8C00]) initWithType:2 value:*(a1 + 32)];
  [v8 setHandle:v9];
  v10 = [v8 URL];
  if (v10)
  {
    [*MEMORY[0x1E69DDA98] openURL:v10 withCompletionHandler:&__block_literal_global_105];
  }

  else if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_19020E000, v11, OS_LOG_TYPE_INFO, "CKContextMenuGenerator: Relay phone call: Couldn't get URL from dial request %@", &v12, 0xCu);
    }
  }
}

void __72__CKContextMenuGenerator_menuActionsToInitiateRelayPhoneCallWithHandle___block_invoke_103(uint64_t a1, int a2)
{
  v3 = IMOSLoggingEnabled();
  if (a2)
  {
    if (!v3)
    {
      return;
    }

    v4 = OSLogHandleForIMFoundationCategory();
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_9;
    }

    v8 = 0;
    v5 = "Successfully initiated relay phone call";
    v6 = &v8;
    goto LABEL_8;
  }

  if (!v3)
  {
    return;
  }

  v4 = OSLogHandleForIMFoundationCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v7 = 0;
    v5 = "CKContextMenuGenerator: Attempt to open relay phone call request URL failed.";
    v6 = &v7;
LABEL_8:
    _os_log_impl(&dword_19020E000, v4, OS_LOG_TYPE_INFO, v5, v6, 2u);
  }

LABEL_9:
}

+ (id)relayPhoneCallActionTextForPhoneNumber:(id)a3
{
  v3 = MEMORY[0x1E69D8A40];
  v4 = CKFormattedPhoneNumberFromNumber(a3);
  v5 = [v3 supplementalDialTelephonyCallStringForDestination:v4 isPhoneNumber:1];

  return v5;
}

+ (id)menuForNamedGroupConversation:(id)a3 andContactsManager:(id)a4
{
  v20[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 isGroupConversation] && (objc_msgSend(v5, "displayName"), v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v8 = objc_opt_new();
    v9 = objc_opt_new();
    v10 = [CKContextMenuGenerator _menuActionToInitiateFaceTimeVideoForConversation:v5 andContactsManager:v6];
    v11 = [CKContextMenuGenerator _menuActionToInitiateFaceTimeAudioForConversation:v5 andContactsManager:v6];
    if (v10)
    {
      [v9 addObject:v10];
    }

    if (v11)
    {
      [v9 addObject:v11];
    }

    if ([v9 count])
    {
      v12 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v9];
      [v8 addObject:v12];
    }

    v13 = [CKContextMenuGenerator _menuActionToSendEmailForConversation:v5 andContactsManager:v6];
    v14 = v13;
    if (v13)
    {
      v15 = MEMORY[0x1E69DCC60];
      v20[0] = v13;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
      v17 = [v15 menuWithTitle:&stru_1F04268F8 image:0 identifier:0 options:1 children:v16];
      [v8 addObject:v17];
    }

    if ([v8 count])
    {
      v18 = [MEMORY[0x1E69DCC60] menuWithTitle:&stru_1F04268F8 children:v8];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_menuActionToInitiateFaceTimeVideoForConversation:(id)a3 andContactsManager:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = MEMORY[0x1E69DC628];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"FACE_TIME" value:&stru_1F04268F8 table:@"ChatKit"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__CKContextMenuGenerator__menuActionToInitiateFaceTimeVideoForConversation_andContactsManager___block_invoke;
    v12[3] = &unk_1E72EC060;
    v13 = v6;
    v7 = [v8 actionWithTitle:v10 image:0 identifier:0 handler:v12];
  }

  return v7;
}

+ (id)_menuActionToInitiateFaceTimeAudioForConversation:(id)a3 andContactsManager:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = MEMORY[0x1E69DC628];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"FACE_TIME_AUDIO" value:&stru_1F04268F8 table:@"ChatKit"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __95__CKContextMenuGenerator__menuActionToInitiateFaceTimeAudioForConversation_andContactsManager___block_invoke;
    v12[3] = &unk_1E72EC060;
    v13 = v6;
    v7 = [v8 actionWithTitle:v10 image:0 identifier:0 handler:v12];
  }

  return v7;
}

+ (id)_menuActionToSendEmailForConversation:(id)a3 andContactsManager:(id)a4
{
  v5 = a4;
  v6 = v5;
  v7 = 0;
  if (a3 && v5)
  {
    v8 = MEMORY[0x1E69DC628];
    v9 = CKFrameworkBundle();
    v10 = [v9 localizedStringForKey:@"SEND_EMAIL" value:&stru_1F04268F8 table:@"ChatKit"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __83__CKContextMenuGenerator__menuActionToSendEmailForConversation_andContactsManager___block_invoke;
    v12[3] = &unk_1E72EC060;
    v13 = v6;
    v7 = [v8 actionWithTitle:v10 image:0 identifier:0 handler:v12];
  }

  return v7;
}

+ (BOOL)_shouldShowPrivateMessageOptionForHandle:(id)a3 conversation:(id)a4
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a4 chat];
  v5 = [v4 participants];
  v6 = [v5 count] > 1;

  return v6;
}

@end