@interface CKTranslationMenu
+ (id)translateActionForChatItem:(id)a3 forController:(id)a4;
+ (id)translateOrbActionForChatItem:(id)a3 forController:(id)a4;
+ (void)actionTranslateIsTappedForChatItem:(id)a3 forController:(id)a4;
@end

@implementation CKTranslationMenu

+ (id)translateActionForChatItem:(id)a3 forController:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_initWeak(&location, v6);
  v7 = MEMORY[0x1E69DCB08];
  v8 = CKFrameworkBundle();
  v9 = [v8 localizedStringForKey:@"TRANSLATE_ORB_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __62__CKTranslationMenu_translateActionForChatItem_forController___block_invoke;
  v13[3] = &unk_1E72EE058;
  v10 = v5;
  v14 = v10;
  objc_copyWeak(&v15, &location);
  v11 = [v7 actionWithTitle:v9 type:0 handler:v13];
  objc_destroyWeak(&v15);

  objc_destroyWeak(&location);

  return v11;
}

void __62__CKTranslationMenu_translateActionForChatItem_forController___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [CKTranslationMenu actionTranslateIsTappedForChatItem:v4 forController:WeakRetained];

  *a3 = 1;
}

+ (id)translateOrbActionForChatItem:(id)a3 forController:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_initWeak(location, v6);
  if ([v6 shouldOfferTranslateConversationInTranslateMenu])
  {
    v7 = [v6 collectionViewController];
    v8 = [v7 balloonViewForChatItem:v5];

    v9 = MEMORY[0x1E69DC650];
    v10 = CKFrameworkBundle();
    v11 = [v10 localizedStringForKey:@"TRANSLATE_THIS_MENU_TITLE" value:&stru_1F04268F8 table:@"ChatKit"];
    v12 = [v9 alertControllerWithTitle:&stru_1F04268F8 message:v11 preferredStyle:0];

    v13 = [v12 popoverPresentationController];
    [v13 setSourceView:v8];

    v14 = [v12 popoverPresentationController];
    [v14 setPermittedArrowDirections:1];

    v15 = MEMORY[0x1E69DC648];
    v16 = CKFrameworkBundle();
    v17 = [v16 localizedStringForKey:@"TRANSLATE_THIS_MESSAGE_MENU_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke;
    v42[3] = &unk_1E72F4F30;
    v18 = v5;
    v43 = v18;
    objc_copyWeak(&v44, location);
    v19 = [v15 actionWithTitle:v17 style:0 handler:v42];
    [v12 addAction:v19];

    v20 = MEMORY[0x1E69DC648];
    v21 = CKFrameworkBundle();
    v22 = [v21 localizedStringForKey:@"TRANSLATE_THIS_CONVERSATION_MENU_ACTION" value:&stru_1F04268F8 table:@"ChatKit"];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_2;
    v39[3] = &unk_1E72F2E08;
    objc_copyWeak(&v41, location);
    v40 = v18;
    v23 = [v20 actionWithTitle:v22 style:0 handler:v39];
    [v12 addAction:v23];

    v24 = MEMORY[0x1E69DC628];
    v25 = CKFrameworkBundle();
    v26 = [v25 localizedStringForKey:@"TRANSLATE_ORB_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
    v27 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_3;
    v36[3] = &unk_1E72EBF48;
    objc_copyWeak(&v38, location);
    v28 = v12;
    v37 = v28;
    v29 = [v24 actionWithTitle:v26 image:v27 identifier:0 handler:v36];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&v44);
    v30 = v43;
  }

  else
  {
    v31 = MEMORY[0x1E69DC628];
    v8 = CKFrameworkBundle();
    v28 = [v8 localizedStringForKey:@"TRANSLATE_ORB_MENU" value:&stru_1F04268F8 table:@"ChatKit"];
    v30 = [MEMORY[0x1E69DCAB8] _systemImageNamed:@"translate"];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_5;
    v33[3] = &unk_1E72F4F58;
    v34 = v5;
    objc_copyWeak(&v35, location);
    v29 = [v31 actionWithTitle:v28 image:v30 identifier:0 handler:v33];
    objc_destroyWeak(&v35);
  }

  objc_destroyWeak(location);

  return v29;
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [CKTranslationMenu actionTranslateIsTappedForChatItem:v2 forController:WeakRetained];

  v5 = objc_loadWeakRetained((a1 + 40));
  v4 = [v5 chat];
  [v4 setHasOfferedAutomaticTranslationInTranslateMenu:1];
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained translateConversationForChatItem:*(a1 + 32)];
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained presentViewController:*(a1 + 32) animated:1 completion:&__block_literal_global_182];
}

void __65__CKTranslationMenu_translateOrbActionForChatItem_forController___block_invoke_5(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [CKTranslationMenu actionTranslateIsTappedForChatItem:v1 forController:WeakRetained];
}

+ (void)actionTranslateIsTappedForChatItem:(id)a3 forController:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v5 text];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x1E696AAB0];
      v9 = v5;
      v10 = [v8 alloc];
      v11 = [v9 audioTranscriptionText];

      v12 = [v10 initWithString:v11];
      goto LABEL_8;
    }

    v7 = [v5 transcriptText];
  }

  v12 = v7;
LABEL_8:
  v13 = [objc_alloc(MEMORY[0x1E69DB4D8]) initWithNibName:0 bundle:0];
  [v13 setIsSourceEditable:0];
  [v13 setText:v12];
  [v13 setModalPresentationStyle:7];
  v23[0] = *MEMORY[0x1E69A70F8];
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  [v13 setIgnoredAttributes:v14];

  v15 = [MEMORY[0x1E69DC938] currentDevice];
  v16 = [v15 userInterfaceIdiom];

  if (v16 == 1 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v17 = [v6 collectionViewController];
    v18 = [v17 balloonViewForChatItem:v5];

    v19 = [v13 presentationController];
    [v19 setSourceView:v18];
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__CKTranslationMenu_actionTranslateIsTappedForChatItem_forController___block_invoke;
  v21[3] = &unk_1E72EBA18;
  v20 = v6;
  v22 = v20;
  [v13 setDismissCompletionHandler:v21];
  [v20 presentViewController:v13 animated:1 completion:0];

LABEL_12:
}

uint64_t __70__CKTranslationMenu_actionTranslateIsTappedForChatItem_forController___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) entryViewWasActiveOnContextMenuPresentation])
  {
    [*(a1 + 32) showKeyboard];
  }

  v2 = *(a1 + 32);

  return [v2 reloadInputViews];
}

@end