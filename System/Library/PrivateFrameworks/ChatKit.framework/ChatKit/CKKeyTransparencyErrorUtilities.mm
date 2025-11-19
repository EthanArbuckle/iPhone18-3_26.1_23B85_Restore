@interface CKKeyTransparencyErrorUtilities
+ (id)_getLearnMoreURL:(BOOL)a3;
+ (id)contactVerificationViewControllerForHandles:(id)a3 options:(id)a4;
+ (id)keyTransparencyIDFromID:(id)a3;
+ (id)ktClearWarningAlertControllerForChat:(id)a3 confirmationHandler:(id)a4;
+ (void)handlesAndOptionsForContactVerificationUIForConversation:(id)a3 handles:(id *)a4 options:(id *)a5;
+ (void)learnMorePressedFromError:(BOOL)a3;
+ (void)reportToAppleViewControllerWithCompletion:(id)a3;
+ (void)showKTContactVerificationUIForConversation:(id)a3 fromViewController:(id)a4;
+ (void)showReportToAppleUIFromViewController:(id)a3;
@end

@implementation CKKeyTransparencyErrorUtilities

+ (id)_getLearnMoreURL:(BOOL)a3
{
  if (a3)
  {
    v3 = @"https://support.apple.com/ht213478";
  }

  else
  {
    v3 = @"https://support.apple.com/ht213465";
  }

  return [MEMORY[0x1E695DFF8] URLWithString:v3];
}

+ (void)learnMorePressedFromError:(BOOL)a3
{
  v4 = [a1 _getLearnMoreURL:a3];
  v3 = [MEMORY[0x1E69DC668] sharedApplication];
  [v3 openURL:v4 options:MEMORY[0x1E695E0F8] completionHandler:0];
}

+ (void)showReportToAppleUIFromViewController:(id)a3
{
  v3 = a3;
  objc_initWeak(&location, v3);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__CKKeyTransparencyErrorUtilities_showReportToAppleUIFromViewController___block_invoke;
  v4[3] = &unk_1E72F79E8;
  objc_copyWeak(&v5, &location);
  [CKKeyTransparencyErrorUtilities reportToAppleViewControllerWithCompletion:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __73__CKKeyTransparencyErrorUtilities_showReportToAppleUIFromViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __73__CKKeyTransparencyErrorUtilities_showReportToAppleUIFromViewController___block_invoke_2;
  v7[3] = &unk_1E72EB8D0;
  v8 = WeakRetained;
  v9 = v3;
  v5 = v3;
  v6 = WeakRetained;
  dispatch_async(MEMORY[0x1E69E96A0], v7);
}

void __73__CKKeyTransparencyErrorUtilities_showReportToAppleUIFromViewController___block_invoke_3()
{
  if (IMOSLoggingEnabled())
  {
    v0 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
    {
      *v1 = 0;
      _os_log_impl(&dword_19020E000, v0, OS_LOG_TYPE_INFO, "Presented Report To Apple KT UI", v1, 2u);
    }
  }
}

+ (void)handlesAndOptionsForContactVerificationUIForConversation:(id)a3 handles:(id *)a4 options:(id *)a5
{
  v63[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (IMOSLoggingEnabled())
  {
    v6 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19020E000, v6, OS_LOG_TYPE_INFO, "Tapped KT verify conversation cell", buf, 2u);
    }
  }

  if (([v5 hasKnownParticipants]& 1) != 0)
  {
    v7 = [v5 recipients];
    v8 = [v7 count] == 1;

    if (v8)
    {
      v9 = [v5 recipients];
      v10 = [v9 firstObject];
      v11 = [v10 defaultIMHandle];

      if (!v11)
      {
        v32 = IMLogHandleForCategory();
        v33 = v32;
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          [CKKeyTransparencyErrorUtilities handlesAndOptionsForContactVerificationUIForConversation:v5 handles:v32 options:?];
          v33 = v32;
        }

        goto LABEL_61;
      }

      v12 = *MEMORY[0x1E695C208];
      v63[0] = *MEMORY[0x1E695C330];
      v63[1] = v12;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
      v44 = [v11 cnContactWithKeys:v13];

      v14 = [v44 phoneNumberStrings];
      v15 = [v44 emailAddressStrings];
      v16 = objc_opt_new();
      v17 = [v11 ID];
      v18 = [CKKeyTransparencyErrorUtilities keyTransparencyIDFromID:v17];
      [v16 addObject:v18];

      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v19 = v14;
      v20 = [v19 countByEnumeratingWithState:&v51 objects:v62 count:16];
      if (v20)
      {
        v21 = *v52;
        do
        {
          for (i = 0; i != v20; ++i)
          {
            if (*v52 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v23 = [CKKeyTransparencyErrorUtilities keyTransparencyIDFromID:*(*(&v51 + 1) + 8 * i)];
            [v16 addObject:v23];
          }

          v20 = [v19 countByEnumeratingWithState:&v51 objects:v62 count:16];
        }

        while (v20);
      }

      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v24 = v15;
      v25 = [v24 countByEnumeratingWithState:&v47 objects:v61 count:16];
      if (v25)
      {
        v26 = *v48;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v48 != v26)
            {
              objc_enumerationMutation(v24);
            }

            v28 = [CKKeyTransparencyErrorUtilities keyTransparencyIDFromID:*(*(&v47 + 1) + 8 * j)];
            [v16 addObject:v28];
          }

          v25 = [v24 countByEnumeratingWithState:&v47 objects:v61 count:16];
        }

        while (v25);
      }

      if (![v16 count])
      {
        v30 = IMLogHandleForCategory();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v56 = v44;
          v57 = 2112;
          v58 = v19;
          v59 = 2112;
          v60 = v24;
          _os_log_error_impl(&dword_19020E000, v30, OS_LOG_TYPE_ERROR, "Unable to verify key transparency, no valid handles identified for contact: %@ with phoneNumbers: %@, emailAddresses: %@", buf, 0x20u);
        }

        goto LABEL_60;
      }

      v29 = [v5 lastAddressedHandle];
      v30 = v29;
      if (v29 && [v29 length])
      {
        v31 = objc_opt_new();
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v34 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v56 = v5;
            _os_log_impl(&dword_19020E000, v34, OS_LOG_TYPE_INFO, "Unable to find a valid last addressed handle ID for conversation: %@", buf, 0xCu);
          }
        }

        v35 = [v5 chat];
        v36 = [v35 account];
        v37 = [v36 loginIMHandle];

        if (v37)
        {
          v38 = [v37 displayID];

          v30 = v38;
        }

        else if (IMOSLoggingEnabled())
        {
          v39 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v56 = v5;
            v57 = 2112;
            v58 = 0;
            _os_log_impl(&dword_19020E000, v39, OS_LOG_TYPE_INFO, "Unable to find a valid handle ID for conversation: %@ login handle: %@", buf, 0x16u);
          }
        }

        v31 = objc_opt_new();
        if (!v30)
        {
          goto LABEL_47;
        }
      }

      if ([v30 length])
      {
        [v31 setObject:v30 forKeyedSubscript:@"lastUsedIdentifier"];
LABEL_51:
        v41 = [v44 identifier];
        if (v41)
        {
          v42 = [v44 identifier];
          [v31 setObject:v42 forKeyedSubscript:@"contactIdentifier"];

          if (a4)
          {
            *a4 = [v16 array];
          }

          if (a5)
          {
            *a5 = [v31 copy];
          }
        }

        else
        {
          v43 = IMLogHandleForCategory();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            [CKKeyTransparencyErrorUtilities handlesAndOptionsForContactVerificationUIForConversation:v43 handles:? options:?];
          }
        }

LABEL_60:
        v33 = v44;
LABEL_61:

        goto LABEL_62;
      }

LABEL_47:
      if (IMOSLoggingEnabled())
      {
        v40 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_19020E000, v40, OS_LOG_TYPE_INFO, "Cannot set the lastUsedIdentifier.", buf, 2u);
        }
      }

      goto LABEL_51;
    }

    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKKeyTransparencyErrorUtilities handlesAndOptionsForContactVerificationUIForConversation:v5 handles:v11 options:?];
    }
  }

  else
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CKKeyTransparencyErrorUtilities handlesAndOptionsForContactVerificationUIForConversation:v11 handles:? options:?];
    }
  }

LABEL_62:
}

+ (void)showKTContactVerificationUIForConversation:(id)a3 fromViewController:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v13 = 0;
  v14 = 0;
  [CKKeyTransparencyErrorUtilities handlesAndOptionsForContactVerificationUIForConversation:v5 handles:&v14 options:&v13];
  v7 = v14;
  v8 = v13;
  if ([v7 count] && objc_msgSend(v8, "count"))
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v16 = v7;
        v17 = 2112;
        v18 = v8;
        _os_log_impl(&dword_19020E000, v9, OS_LOG_TYPE_INFO, "Attempting to present KT verification for handles: %@, options: %@", buf, 0x16u);
      }
    }

    v10 = [objc_alloc(getTUIKTConversationViewControllerClass()) initForMembers:v7 options:v8];
    v11 = v6;
    [v10 setDelegate:v11];
    v12 = [objc_alloc(MEMORY[0x1E69DCCD8]) initWithRootViewController:v10];
    [v11 presentViewController:v12 animated:1 completion:0];
  }
}

+ (id)contactVerificationViewControllerForHandles:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(getTUIKTConversationViewControllerClass()) initForMembers:v6 options:v5];

  return v7;
}

+ (id)keyTransparencyIDFromID:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 _stripFZIDPrefix];
  v5 = IMChatCanonicalIDSIDsForAddress();

  if (v5)
  {
    v6 = [@"im://" stringByAppendingString:v5];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = 138412290;
        v10 = v3;
        _os_log_impl(&dword_19020E000, v7, OS_LOG_TYPE_INFO, "CKDetailsController_KT Could not get a canonical ID for the identifier: %@", &v9, 0xCu);
      }
    }

    v6 = &stru_1F04268F8;
  }

  return v6;
}

+ (id)ktClearWarningAlertControllerForChat:(id)a3 confirmationHandler:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = CKIsRunningInMacCatalyst();
  if (CKIsRunningInMacCatalyst())
  {
    v8 = CKFrameworkBundle();
    v9 = [v8 localizedStringForKey:@"KT_CLEAR_ARE_YOU_SURE" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];

    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"KT_CLEAR_YOU_WILL_SEE_A_MESSAGE" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  v12 = [MEMORY[0x1E69DC650] alertControllerWithTitle:v9 message:v11 preferredStyle:v7 != 0];
  v13 = MEMORY[0x1E69DC648];
  v14 = CKFrameworkBundle();
  v15 = [v14 localizedStringForKey:@"KT_CLEAR_WARNING" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__CKKeyTransparencyErrorUtilities_ktClearWarningAlertControllerForChat_confirmationHandler___block_invoke;
  v24[3] = &unk_1E72F35A0;
  v25 = v5;
  v26 = v6;
  v16 = v6;
  v17 = v5;
  v18 = [v13 actionWithTitle:v15 style:2 handler:v24];

  v19 = MEMORY[0x1E69DC648];
  v20 = CKFrameworkBundle();
  v21 = [v20 localizedStringForKey:@"KT_CANCEL" value:&stru_1F04268F8 table:@"ChatKit-Key-Transparency"];
  v22 = [v19 actionWithTitle:v21 style:1 handler:&__block_literal_global_234_0];

  [v12 addAction:v18];
  [v12 addAction:v22];

  return v12;
}

uint64_t __92__CKKeyTransparencyErrorUtilities_ktClearWarningAlertControllerForChat_confirmationHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) ignoreKTFailure];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

+ (void)reportToAppleViewControllerWithCompletion:(id)a3
{
  v3 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v4 = getKTStatusClass_softClass;
  v14 = getKTStatusClass_softClass;
  if (!getKTStatusClass_softClass)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __getKTStatusClass_block_invoke;
    v10[3] = &unk_1E72EB968;
    v10[4] = &v11;
    __getKTStatusClass_block_invoke(v10);
    v4 = v12[3];
  }

  v5 = v4;
  _Block_object_dispose(&v11, 8);
  v6 = [[v4 alloc] initWithApplication:@"IDS"];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __77__CKKeyTransparencyErrorUtilities_reportToAppleViewControllerWithCompletion___block_invoke;
  v8[3] = &unk_1E72F7A10;
  v9 = v3;
  v7 = v3;
  [v6 getCurrentStatus:v8];
}

void __77__CKKeyTransparencyErrorUtilities_reportToAppleViewControllerWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7 || ![v6 count])
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        *&buf[4] = v7;
        *&buf[12] = 2112;
        *&buf[14] = v6;
        _os_log_impl(&dword_19020E000, v8, OS_LOG_TYPE_INFO, "Unable to present Report to Apple UI due to error: %@ failure events: %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v9 = getTUIKTReportToAppleContextClass_softClass;
    v20 = getTUIKTReportToAppleContextClass_softClass;
    if (!getTUIKTReportToAppleContextClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getTUIKTReportToAppleContextClass_block_invoke;
      v22 = &unk_1E72EB968;
      v23 = &v17;
      __getTUIKTReportToAppleContextClass_block_invoke(buf);
      v9 = v18[3];
    }

    v10 = v9;
    _Block_object_dispose(&v17, 8);
    v11 = [v9 alloc];
    v12 = [v6 firstObject];
    [v11 setFailingValidation:v12];

    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v13 = getTUIKTReportToAppleViewControllerClass_softClass;
    v20 = getTUIKTReportToAppleViewControllerClass_softClass;
    if (!getTUIKTReportToAppleViewControllerClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getTUIKTReportToAppleViewControllerClass_block_invoke;
      v22 = &unk_1E72EB968;
      v23 = &v17;
      __getTUIKTReportToAppleViewControllerClass_block_invoke(buf);
      v13 = v18[3];
    }

    v14 = v13;
    _Block_object_dispose(&v17, 8);
    v15 = [v13 alloc];
    v16 = [v15 initWithContext:{v11, v17}];
    (*(*(a1 + 32) + 16))();
  }
}

+ (void)handlesAndOptionsForContactVerificationUIForConversation:(void *)a1 handles:(NSObject *)a2 options:.cold.2(void *a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = [a1 recipients];
  v5 = 134218242;
  v6 = [v4 count];
  v7 = 2112;
  v8 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "Invalid Conversation. There is more than one participant in the IMChat to verify. Number of participants: %lu CKConversation: %@", &v5, 0x16u);
}

+ (void)handlesAndOptionsForContactVerificationUIForConversation:(os_log_t)log handles:options:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&dword_19020E000, log, OS_LOG_TYPE_ERROR, "Unable to form options dictionary for TUIKTConversationViewController due to missing contactIdentifier. contactIdentifier: %@", &v1, 0xCu);
}

+ (void)handlesAndOptionsForContactVerificationUIForConversation:(uint64_t)a1 handles:(NSObject *)a2 options:.cold.4(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19020E000, a2, OS_LOG_TYPE_ERROR, "There are no participants in the CKConversation to verify. %@", &v2, 0xCu);
}

@end