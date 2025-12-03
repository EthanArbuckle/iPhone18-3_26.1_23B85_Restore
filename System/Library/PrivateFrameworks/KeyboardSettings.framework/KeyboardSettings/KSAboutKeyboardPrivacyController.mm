@interface KSAboutKeyboardPrivacyController
- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction;
- (KSAboutKeyboardPrivacyController)initWithGroupSpecifier:(id)specifier asHeader:(BOOL)header inListController:(id)controller;
- (void)aboutDonePressed;
- (void)addPrivacyLinkViewIfNecessaryToHeaderView:(id)view forSection:(int64_t)section;
- (void)dealloc;
- (void)setSpecifier:(id)specifier;
@end

@implementation KSAboutKeyboardPrivacyController

- (KSAboutKeyboardPrivacyController)initWithGroupSpecifier:(id)specifier asHeader:(BOOL)header inListController:(id)controller
{
  v11.receiver = self;
  v11.super_class = KSAboutKeyboardPrivacyController;
  v8 = [(KSAboutKeyboardPrivacyController *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_listController = controller;
    v8->_asHeader = header;
    [(KSAboutKeyboardPrivacyController *)v8 setSpecifier:specifier];
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

- (void)setSpecifier:(id)specifier
{
  self->_specifier = specifier;
  v5 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"APP_KEYBOARDS_INFO", &stru_28679E3A8, @"Keyboard"}];
  v6 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"APP_KEYBOARDS_INFO_LINK", &stru_28679E3A8, @"Keyboard"}];
  asHeader = [(KSAboutKeyboardPrivacyController *)self asHeader];
  v8 = MEMORY[0x277D3FFA8];
  if (!asHeader)
  {
    v8 = MEMORY[0x277D3FF88];
  }

  v9 = *v8;
  specifier = [(KSAboutKeyboardPrivacyController *)self specifier];
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v5, v6];

  [(PSSpecifier *)specifier setProperty:v11 forKey:v9];
}

- (void)addPrivacyLinkViewIfNecessaryToHeaderView:(id)view forSection:(int64_t)section
{
  if ([(KSAboutKeyboardPrivacyController *)self specifier])
  {
    v7 = [(PSListController *)[(KSAboutKeyboardPrivacyController *)self listController] indexPathForSpecifier:[(KSAboutKeyboardPrivacyController *)self specifier]];
    v8 = -[KSAboutKeyboardPrivacyController asHeader](self, "asHeader") ? [view detailTextLabel] : objc_msgSend(view, "textLabel");
    v9 = v8;
    if ([v7 section] == section)
    {
      superview = [(UITextView *)self->_infoTextView superview];
      if (superview != [view contentView])
      {
        [view layoutIfNeeded];
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
        [objc_msgSend(view "contentView")];
        v12 = [objc_msgSend(v9 "attributedText")];
        text = [v9 text];
        v14 = [text rangeOfString:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"APP_KEYBOARDS_INFO_LINK", &stru_28679E3A8, @"Keyboard"}];
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
          [objc_msgSend(view "textLabel")];
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
  listController = [(KSAboutKeyboardPrivacyController *)self listController];

  [(PSListController *)listController dismissViewControllerAnimated:1 completion:0];
}

- (BOOL)textView:(id)view shouldInteractWithURL:(id)l inRange:(_NSRange)range interaction:(int64_t)interaction
{
  v7 = [(KSAboutKeyboardPrivacyController *)self specifier:view];
  if (v7)
  {
    v8 = objc_alloc_init(MEMORY[0x277D75D28]);
    [v8 setTitle:{objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"ABOUT_APP_KEYBOARDS_TITLE", &stru_28679E3A8, @"Keyboard"}];
    navigationItem = [v8 navigationItem];
    [navigationItem setRightBarButtonItem:{objc_msgSend(objc_alloc(MEMORY[0x277D751E0]), "initWithBarButtonSystemItem:target:action:", 0, self, sel_aboutDonePressed)}];
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