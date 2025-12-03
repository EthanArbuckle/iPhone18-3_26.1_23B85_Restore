@interface SFBasicDialog
- (SFBasicDialog)init;
- (id)newDialogViewRepresentation;
- (id)newViewControllerRepresentationWithCompletionHandler:(id)handler;
- (void)didCompleteWithResponse:(id)response;
@end

@implementation SFBasicDialog

- (SFBasicDialog)init
{
  v7.receiver = self;
  v7.super_class = SFBasicDialog;
  v2 = [(SFBasicDialog *)&v7 init];
  v6.receiver = v2;
  v6.super_class = SFBasicDialog;
  v2->_canceledOnProvisionalNavigation = [(SFDialog *)&v6 canceledOnProvisionalNavigation];
  v5.receiver = v2;
  v5.super_class = SFBasicDialog;
  v2->_canceledOnCommittedNavigation = [(SFDialog *)&v5 canceledOnCommittedNavigation];
  v4.receiver = v2;
  v4.super_class = SFBasicDialog;
  v2->_canceledOnApplicationBackground = [(SFDialog *)&v4 canceledOnApplicationBackground];
  return v2;
}

- (id)newDialogViewRepresentation
{
  v3 = objc_alloc_init(SFDialogView);
  title = [(SFBasicDialog *)self title];
  [(SFDialogView *)v3 setTitleText:title];

  message = [(SFBasicDialog *)self message];
  [(SFDialogView *)v3 setMessageText:message];

  defaultText = [(SFBasicDialog *)self defaultText];
  textPlaceholder = [(SFBasicDialog *)self textPlaceholder];
  [(SFDialogView *)v3 setInputText:defaultText placeholder:textPlaceholder];

  defaultPassword = [(SFBasicDialog *)self defaultPassword];
  passwordPlaceholder = [(SFBasicDialog *)self passwordPlaceholder];
  [(SFDialogView *)v3 setPasswordText:defaultPassword placeholder:passwordPlaceholder];

  actions = [(SFBasicDialog *)self actions];
  [(SFDialogView *)v3 setDialogActions:actions];

  [(SFDialogView *)v3 setUsesOpaqueAppearance:[(SFBasicDialog *)self shouldHideWebContent]];
  accessibilityIdentifier = [(SFDialog *)self accessibilityIdentifier];
  [(SFDialogView *)v3 setAccessibilityIdentifier:accessibilityIdentifier];

  return v3;
}

- (id)newViewControllerRepresentationWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  alertControllerPresentsAsActionSheet = self->_alertControllerPresentsAsActionSheet;
  v6 = objc_alloc_init(MEMORY[0x1E69DC650]);
  v7 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:self->_title];
  v8 = *MEMORY[0x1E69DB648];
  v9 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD40]];
  [v7 addAttribute:v8 value:v9 range:{0, objc_msgSend(v7, "length")}];

  [v6 _setAttributedTitle:v7];
  [v6 setTitle:self->_title];
  [v6 setMessage:self->_message];
  [v6 setPreferredStyle:!alertControllerPresentsAsActionSheet];
  [v6 setImage:self->_icon];
  accessibilityIdentifier = [(SFDialog *)self accessibilityIdentifier];
  view = [v6 view];
  [view setAccessibilityIdentifier:accessibilityIdentifier];

  v31[0] = 0;
  v31[1] = v31;
  v31[2] = 0x3042000000;
  v31[3] = __Block_byref_object_copy__4;
  v31[4] = __Block_byref_object_dispose__4;
  v32 = 0;
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x3042000000;
  v29[3] = __Block_byref_object_copy__4;
  v29[4] = __Block_byref_object_dispose__4;
  v30 = 0;
  if (*&self->_defaultText != 0)
  {
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke;
    v28[3] = &unk_1E721DB78;
    v28[4] = self;
    v28[5] = v31;
    [v6 addTextFieldWithConfigurationHandler:v28];
  }

  if (self->_defaultPassword || self->_passwordPlaceholder)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke_2;
    v27[3] = &unk_1E721DB78;
    v27[4] = self;
    v27[5] = v29;
    [v6 addTextFieldWithConfigurationHandler:v27];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke_3;
  aBlock[3] = &unk_1E721DBA0;
  v12 = handlerCopy;
  v24 = v12;
  v25 = v31;
  v26 = v29;
  v13 = _Block_copy(aBlock);
  actions = [(SFBasicDialog *)self actions];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke_4;
  v20[3] = &unk_1E721DC10;
  v15 = v13;
  v22 = v15;
  v16 = v6;
  v21 = v16;
  [actions enumerateObjectsUsingBlock:v20];

  v17 = v21;
  v18 = v16;

  _Block_object_dispose(v29, 8);
  objc_destroyWeak(&v30);
  _Block_object_dispose(v31, 8);
  objc_destroyWeak(&v32);

  return v18;
}

void __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 72);
  obj = a2;
  [obj setText:v3];
  [obj setPlaceholder:*(*(a1 + 32) + 80)];
  objc_storeWeak((*(*(a1 + 40) + 8) + 40), obj);
}

void __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(*(a1 + 32) + 88);
  obj = a2;
  [obj setText:v3];
  [obj setPlaceholder:*(*(a1 + 32) + 96)];
  [obj setSecureTextEntry:1];
  objc_storeWeak((*(*(a1 + 40) + 8) + 40), obj);
}

void __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke_3(void *a1, uint64_t a2)
{
  v4 = a1[4];
  WeakRetained = objc_loadWeakRetained((*(a1[5] + 8) + 40));
  v5 = [WeakRetained text];
  v6 = objc_loadWeakRetained((*(a1[6] + 8) + 40));
  v7 = [v6 text];
  v8 = makeBasicDialogResponse(a2, v5, v7);
  (*(v4 + 16))(v4, v8);
}

void __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke_4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = [v5 actionType];
  if (v6 == 2)
  {
    v7 = 2;
  }

  else
  {
    v7 = v6 == 1;
  }

  v8 = MEMORY[0x1E69DC648];
  v9 = [v5 title];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __70__SFBasicDialog_newViewControllerRepresentationWithCompletionHandler___block_invoke_5;
  v15 = &unk_1E721DBC8;
  v16 = *(a1 + 40);
  v17 = a3;
  v10 = [v8 _actionWithTitle:v9 image:0 style:v7 handler:&v12 shouldDismissHandler:&__block_literal_global_34];

  [*(a1 + 32) addAction:{v10, v12, v13, v14, v15}];
  v11 = [v5 isPreferredAction];

  if (v11)
  {
    [*(a1 + 32) setPreferredAction:v10];
  }
}

- (void)didCompleteWithResponse:(id)response
{
  responseCopy = response;
  completionHandler = self->_completionHandler;
  v10 = responseCopy;
  if (responseCopy)
  {
    v6 = [responseCopy safari_numberForKey:@"selectedActionIndex"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
    v8 = [v10 safari_stringForKey:@"text"];
    v9 = [v10 safari_stringForKey:@"password"];
    completionHandler[2](completionHandler, unsignedIntegerValue, v8, v9);
  }

  else
  {
    completionHandler[2](completionHandler, 0x7FFFFFFFFFFFFFFFLL, 0, 0);
  }
}

@end