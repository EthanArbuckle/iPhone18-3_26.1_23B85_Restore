@interface KSAboutKeyboardPrivacyController
- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6;
- (KSAboutKeyboardPrivacyController)initWithGroupSpecifier:(id)a3 asHeader:(BOOL)a4 inListController:(id)a5;
- (void)aboutDonePressed;
- (void)addPrivacyLinkViewIfNecessaryToHeaderView:(id)a3 forSection:(int64_t)a4;
- (void)dealloc;
- (void)setSpecifier:(id)a3;
@end

@implementation KSAboutKeyboardPrivacyController

- (KSAboutKeyboardPrivacyController)initWithGroupSpecifier:(id)a3 asHeader:(BOOL)a4 inListController:(id)a5
{
  v11.receiver = self;
  v11.super_class = KSAboutKeyboardPrivacyController;
  v8 = [(KSAboutKeyboardPrivacyController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_listController = a5;
    v8->_asHeader = a4;
    [(KSAboutKeyboardPrivacyController *)v8 setSpecifier:a3];
  }

  return v9;
}

- (void)dealloc
{
  [(UITextView *)self->_infoTextView removeFromSuperview];

  v3.receiver = self;
  v3.super_class = KSAboutKeyboardPrivacyController;
  [(KSAboutKeyboardPrivacyController *)&v3 dealloc];
}

- (void)setSpecifier:(id)a3
{
  self->_specifier = a3;
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"APP_KEYBOARDS_INFO", &stru_28679E3A8, @"Keyboard"}];
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"APP_KEYBOARDS_INFO_LINK", &stru_28679E3A8, @"Keyboard"}];
  v7 = [(KSAboutKeyboardPrivacyController *)self asHeader];
  v8 = MEMORY[0x277D3FFA8];
  if (!v7)
  {
    v8 = MEMORY[0x277D3FF88];
  }

  v9 = *v8;
  v10 = [(KSAboutKeyboardPrivacyController *)self specifier];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v6];

  [(PSSpecifier *)v10 setProperty:v11 forKey:v9];
}

- (void)addPrivacyLinkViewIfNecessaryToHeaderView:(id)a3 forSection:(int64_t)a4
{
  if ([(KSAboutKeyboardPrivacyController *)self specifier])
  {
    v7 = [(PSListController *)[(KSAboutKeyboardPrivacyController *)self listController] indexPathForSpecifier:[(KSAboutKeyboardPrivacyController *)self specifier]];
    v8 = -[KSAboutKeyboardPrivacyController asHeader](self, "asHeader") ? [a3 detailTextLabel] : objc_msgSend(a3, "textLabel");
    v9 = v8;
    if ([v7 section] == a4)
    {
      v10 = [(UITextView *)self->_infoTextView superview];
      if (v10 != [a3 contentView])
      {
        [a3 layoutIfNeeded];
        [v9 setHidden:1];
        [(UITextView *)self->_infoTextView removeFromSuperview];

        v11 = objc_alloc(MEMORY[0x277D75C40]);
        [v9 frame];
        self->_infoTextView = [v11 initWithFrame:?];
        -[UITextView setBackgroundColor:](self->_infoTextView, "setBackgroundColor:", [MEMORY[0x277D75348] clearColor]);
        [(UITextView *)self->_infoTextView setShowsVerticalScrollIndicator:0];
        [(UITextView *)self->_infoTextView setEditable:0];
        [(UITextView *)self->_infoTextView setSelectable:1];
        [(UITextView *)self->_infoTextView setScrollEnabled:0];
        [(UITextView *)self->_infoTextView setTextContainerInset:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
        [(NSTextContainer *)[(UITextView *)self->_infoTextView textContainer] setLineFragmentPadding:0.0];
        [(UITextView *)self->_infoTextView setContentInsetAdjustmentBehavior:3];
        [objc_msgSend(a3 "contentView")];
        v12 = [objc_msgSend(v9 "attributedText")];
        v13 = [v9 text];
        v14 = [v13 rangeOfString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"APP_KEYBOARDS_INFO_LINK", &stru_28679E3A8, @"Keyboard"}];
        v16 = v15;
        [v12 addAttribute:*MEMORY[0x277D740C0] value:objc_msgSend(MEMORY[0x277D75348] range:{"systemBlueColor"), v14, v15}];
        [v12 addAttribute:*MEMORY[0x277D740E8] value:objc_msgSend(MEMORY[0x277CBEBC0] range:{"URLWithString:", &stru_28679E3A8), v14, v16}];
        [v12 addAttribute:*MEMORY[0x277D741F0] value:MEMORY[0x277CBEC28] range:{v14, v16}];
        [v12 removeAttribute:*MEMORY[0x277D74118] range:{0, objc_msgSend(v12, "length")}];
        [(UITextView *)self->_infoTextView setAttributedText:v12];
        [(UITextView *)self->_infoTextView setDelegate:self];
        [v9 frame];
        v18 = v17;
        v20 = v19;
        [(UITextView *)self->_infoTextView sizeThatFits:v21, 1.79769313e308];
        v23 = v22;
        v25 = v24;
        if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1)
        {
          [objc_msgSend(a3 "textLabel")];
          MaxX = CGRectGetMaxX(v30);
          [(UITextView *)self->_infoTextView frame];
          v18 = MaxX - v27;
        }

        infoTextView = self->_infoTextView;

        [(UITextView *)infoTextView setFrame:v18, v20, v23, v25];
      }
    }
  }
}

- (void)aboutDonePressed
{
  v2 = [(KSAboutKeyboardPrivacyController *)self listController];

  [(PSListController *)v2 dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)textView:(id)a3 shouldInteractWithURL:(id)a4 inRange:(_NSRange)a5 interaction:(int64_t)a6
{
  v7 = [(KSAboutKeyboardPrivacyController *)self specifier:a3];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D75D28]);
    [v8 setTitle:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ABOUT_APP_KEYBOARDS_TITLE", &stru_28679E3A8, @"Keyboard"}];
    v9 = [v8 navigationItem];
    [v9 setRightBarButtonItem:{objc_msgSend(objc_alloc(MEMORY[0x277D751E0]), "initWithBarButtonSystemItem:target:action:", 0, self, sel_aboutDonePressed)}];
    v10 = objc_alloc(MEMORY[0x277D75C40]);
    v11 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [v11 setText:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ABOUT_APP_KEYBOARDS_INFO_TEXT", &stru_28679E3A8, @"Keyboard"}];
    [v11 setFont:{objc_msgSend(MEMORY[0x277D74300], "preferredFontForTextStyle:", *MEMORY[0x277D76918])}];
    [v11 setEditable:0];
    [v11 setContentInsetAdjustmentBehavior:3];
    [v8 setView:v11];
    v12 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v8];
    [v12 setModalPresentationStyle:2];
    [(PSListController *)[(KSAboutKeyboardPrivacyController *)self listController] presentViewController:v12 animated:1 completion:0];
  }

  return v7 == 0;
}

@end