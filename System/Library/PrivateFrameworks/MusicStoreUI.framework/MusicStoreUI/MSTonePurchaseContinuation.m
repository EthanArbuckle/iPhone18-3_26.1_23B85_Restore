@interface MSTonePurchaseContinuation
- (MSTonePurchaseContinuation)initWithPurchase:(id)a3;
- (id)_copyAllowedToneStyles;
- (void)_destroyActionSheet;
- (void)_destroyAlertView;
- (void)_dismissContactPicker;
- (void)_pickAssigneeToneStyle;
- (void)_showPeoplePicker;
- (void)actionSheet:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)actionSheetCancel:(id)a3;
- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4;
- (void)alertViewCancel:(id)a3;
- (void)cancel;
- (void)contactPicker:(id)a3 didSelectContact:(id)a4;
- (void)contactPickerDidCancel:(id)a3;
- (void)dealloc;
- (void)start;
@end

@implementation MSTonePurchaseContinuation

- (MSTonePurchaseContinuation)initWithPurchase:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(MSTonePurchaseContinuation *)a2 initWithPurchase:?];
  }

  v7.receiver = self;
  v7.super_class = MSTonePurchaseContinuation;
  return [(SUPurchaseContinuation *)&v7 initWithPurchase:a3];
}

- (void)dealloc
{
  [(MSTonePurchaseContinuation *)self _destroyActionSheet];
  [(MSTonePurchaseContinuation *)self _destroyAlertView];
  [(CNContactPickerViewController *)self->_contactPicker setDelegate:0];

  self->_contactPicker = 0;
  v3.receiver = self;
  v3.super_class = MSTonePurchaseContinuation;
  [(SUPurchaseContinuation *)&v3 dealloc];
}

- (void)cancel
{
  [(UIActionSheet *)self->_actionSheet dismissWithClickedButtonIndex:[(UIActionSheet *)self->_actionSheet cancelButtonIndex] animated:0];
  [(MSTonePurchaseContinuation *)self _destroyActionSheet];
  [(UIAlertView *)self->_alertView dismissWithClickedButtonIndex:[(UIAlertView *)self->_alertView cancelButtonIndex] animated:0];
  [(MSTonePurchaseContinuation *)self _destroyAlertView];
  [(MSTonePurchaseContinuation *)self _dismissContactPicker];
  v3.receiver = self;
  v3.super_class = MSTonePurchaseContinuation;
  [(SUPurchaseContinuation *)&v3 cancel];
}

- (void)start
{
  v3 = [(MSTonePurchaseContinuation *)self _copyAllowedToneStyles];
  if ([v3 count])
  {
    v4 = objc_alloc_init(MEMORY[0x277D75118]);
    self->_alertView = v4;
    [(UIAlertView *)v4 setDelegate:self];
    -[UIAlertView setTitle:](self->_alertView, "setTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_ALERT_TITLE", &stru_286C31D20, 0}]);
    v5 = [(SUPurchaseContinuation *)self purchase];
    v6 = [v5 valueForDownloadProperty:*MEMORY[0x277D6A0E0]];
    if ([v6 length])
    {
      -[UIAlertView setBodyText:](self->_alertView, "setBodyText:", [MEMORY[0x277CCACA8] stringWithFormat:objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_BODY_FORMAT", &stru_286C31D20, 0), v6]);
    }

    if ([v3 containsObject:*MEMORY[0x277D6A2A8]])
    {
      -[UIAlertView addButtonWithTitle:](self->_alertView, "addButtonWithTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_SET_AS_DEFAULT_RINGTONE", &stru_286C31D20, 0}]);
    }

    if ([v3 containsObject:*MEMORY[0x277D6A2B0]])
    {
      -[UIAlertView addButtonWithTitle:](self->_alertView, "addButtonWithTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_SET_AS_DEFAULT_TEXT_TONE", &stru_286C31D20, 0}]);
    }

    -[UIAlertView addButtonWithTitle:](self->_alertView, "addButtonWithTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_ASSIGN_TO_CONTACT", &stru_286C31D20, 0}]);
    -[UIAlertView setCancelButtonIndex:](self->_alertView, "setCancelButtonIndex:", -[UIAlertView addButtonWithTitle:](self->_alertView, "addButtonWithTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_DONE", &stru_286C31D20, 0}]));
    [(UIAlertView *)self->_alertView show];
    v7.receiver = self;
    v7.super_class = MSTonePurchaseContinuation;
    [(SUPurchaseContinuation *)&v7 start];
  }

  else
  {
    [(SUContinuation *)self sendFinishToDelegate];
  }
}

- (void)actionSheetCancel:(id)a3
{
  [(MSTonePurchaseContinuation *)self _dismissContactPicker];
  [(SUContinuation *)self sendFinishToDelegate];

  [(MSTonePurchaseContinuation *)self _destroyActionSheet];
}

- (void)actionSheet:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  if (a4)
  {
    if (a4 != 1)
    {
      goto LABEL_6;
    }

    v5 = MEMORY[0x277D6A2B0];
  }

  else
  {
    v5 = MEMORY[0x277D6A2A8];
  }

  [-[SUPurchaseContinuation purchase](self purchase];
LABEL_6:
  [(MSTonePurchaseContinuation *)self _dismissContactPicker];
  [(SUContinuation *)self sendFinishToDelegate];

  [(MSTonePurchaseContinuation *)self _destroyActionSheet];
}

- (void)alertViewCancel:(id)a3
{
  [(SUContinuation *)self sendFinishToDelegate];

  [(MSTonePurchaseContinuation *)self _destroyAlertView];
}

- (void)alertView:(id)a3 didDismissWithButtonIndex:(int64_t)a4
{
  v10 = [(MSTonePurchaseContinuation *)self _copyAllowedToneStyles];
  if ([v10 containsObject:*MEMORY[0x277D6A2B0]])
  {
    v6 = [v10 containsObject:*MEMORY[0x277D6A2A8]];
    v7 = 2;
    v8 = 1;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6)
    {
      v9 = 0;
    }

    else
    {
      v8 = 0;
    }

    if ((v6 & 1) == 0)
    {
      v7 = 1;
    }
  }

  else
  {
    v9 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    v7 = 1;
  }

  if (v9 == a4)
  {
    [-[SUPurchaseContinuation purchase](self "purchase")];
  }

  else if (v8 == a4)
  {
    [-[SUPurchaseContinuation purchase](self "purchase")];
  }

  else if (v7 == a4)
  {
    [(MSTonePurchaseContinuation *)self _showPeoplePicker];
    goto LABEL_15;
  }

  [(SUContinuation *)self sendFinishToDelegate];
LABEL_15:
  [(MSTonePurchaseContinuation *)self _destroyAlertView];
}

- (void)contactPickerDidCancel:(id)a3
{
  [(MSTonePurchaseContinuation *)self _dismissContactPicker];

  [(SUContinuation *)self sendFinishToDelegate];
}

- (void)contactPicker:(id)a3 didSelectContact:(id)a4
{
  if (a4)
  {
    [-[SUPurchaseContinuation purchase](self purchase];
  }

  [(MSTonePurchaseContinuation *)self _pickAssigneeToneStyle];
}

- (id)_copyAllowedToneStyles
{
  v2 = [objc_msgSend(-[SUPurchaseContinuation purchase](self "purchase")];
  v3 = [v2 count];
  v4 = MEMORY[0x277D6A2A8];
  if (v3 >= 1)
  {
    v5 = *MEMORY[0x277D6A2A8];
    v6 = *MEMORY[0x277D6A2B0];
    v7 = v3 + 1;
    do
    {
      v8 = [v2 objectAtIndex:v7 - 2];
      if (([v8 isEqualToString:v5] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", v6) & 1) == 0)
      {
        [v2 removeObjectAtIndex:v7 - 2];
      }

      --v7;
    }

    while (v7 > 1);
  }

  if ((MGGetBoolAnswer() & 1) == 0)
  {
    [v2 removeObject:*v4];
  }

  return v2;
}

- (void)_destroyActionSheet
{
  [(UIActionSheet *)self->_actionSheet setDelegate:0];

  self->_actionSheet = 0;
}

- (void)_destroyAlertView
{
  [(UIAlertView *)self->_alertView setDelegate:0];

  self->_alertView = 0;
}

- (void)_dismissContactPicker
{
  [(CNContactPickerViewController *)self->_contactPicker dismissViewControllerAnimated:1 completion:0];
  [(CNContactPickerViewController *)self->_contactPicker setDelegate:0];

  self->_contactPicker = 0;
}

- (void)_pickAssigneeToneStyle
{
  v4 = [(MSTonePurchaseContinuation *)self _copyAllowedToneStyles];
  if ([v4 count] == 1)
  {
    [-[SUPurchaseContinuation purchase](self "purchase")];
    [(MSTonePurchaseContinuation *)self _dismissContactPicker];
    [(SUContinuation *)self sendFinishToDelegate];
  }

  else
  {
    v3 = objc_alloc_init(MEMORY[0x277D750D0]);
    self->_actionSheet = v3;
    [(UIActionSheet *)v3 setDelegate:self];
    -[UIActionSheet addButtonWithTitle:](self->_actionSheet, "addButtonWithTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_SET_AS_RINGTONE", &stru_286C31D20, 0}]);
    -[UIActionSheet addButtonWithTitle:](self->_actionSheet, "addButtonWithTitle:", [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"BUY_TONE_SET_AS_TEXT_TONE", &stru_286C31D20, 0}]);
    [(UIActionSheet *)self->_actionSheet showInView:[(CNContactPickerViewController *)self->_contactPicker view]];
  }
}

- (void)_showPeoplePicker
{
  v3 = ISWeakLinkedClassForString();
  if (v3)
  {
    v4 = objc_alloc_init(v3);
    self->_contactPicker = v4;
    [(CNContactPickerViewController *)v4 setDelegate:self];
    v5 = [objc_msgSend(MEMORY[0x277D7FDB8] "sharedController")];
    contactPicker = self->_contactPicker;

    [v5 presentViewController:contactPicker animated:1 completion:0];
  }

  else
  {

    [(MSTonePurchaseContinuation *)self cancel];
  }
}

- (uint64_t)initWithPurchase:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"MSPurchaseBatch.m" lineNumber:61 description:@"Must use with SSTonePurchase"];
}

@end