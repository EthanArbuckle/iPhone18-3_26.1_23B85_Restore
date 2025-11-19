@interface LACUIKeyboard
+ (id)activeKeyboard;
- (CGRect)frame;
- (void)setupInParentView:(id)a3;
- (void)updateTopLayoutGuide:(id)a3;
@end

@implementation LACUIKeyboard

+ (id)activeKeyboard
{
  if (activeKeyboard_onceToken != -1)
  {
    +[LACUIKeyboard activeKeyboard];
  }

  v3 = activeKeyboard_sharedInstance;

  return v3;
}

uint64_t __31__LACUIKeyboard_activeKeyboard__block_invoke()
{
  activeKeyboard_sharedInstance = objc_alloc_init(LACUIKeyboard);

  return MEMORY[0x2821F96F8]();
}

- (void)setupInParentView:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [LACUIKeyboardView alloc];
  v6 = [[LACUIKeyboardInternal alloc] initWithDefaultSize];
  v7 = [(LACUIKeyboardView *)v5 initWithKeyboard:v6];

  v8 = objc_alloc_init(MEMORY[0x277D75A68]);
  [v8 setAxis:1];
  [v8 setAlignment:3];
  [v8 setDistribution:3];
  [v8 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v8 addArrangedSubview:v7];
  LODWORD(v9) = 1148846080;
  [v8 setContentHuggingPriority:1 forAxis:v9];
  [v4 addSubview:v8];
  v10 = [v8 centerXAnchor];
  v11 = [v4 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  keyboardAnchorHorizontal = self->_keyboardAnchorHorizontal;
  self->_keyboardAnchorHorizontal = v12;

  v14 = [v8 bottomAnchor];
  v15 = [v4 bottomAnchor];
  v16 = [v14 constraintEqualToAnchor:v15];
  keyboardAnchorVertical = self->_keyboardAnchorVertical;
  self->_keyboardAnchorVertical = v16;

  [(NSLayoutConstraint *)self->_keyboardAnchorVertical setIdentifier:@"default.vertical"];
  [(NSLayoutConstraint *)self->_keyboardAnchorHorizontal setIdentifier:@"default.horizontal"];
  v18 = MEMORY[0x277CCAAD0];
  v19 = self->_keyboardAnchorVertical;
  v22[0] = self->_keyboardAnchorHorizontal;
  v22[1] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [v18 activateConstraints:v20];

  objc_storeWeak(&self->_keyboardContainer, v8);
  objc_storeWeak(&self->_parentView, v4);

  objc_storeWeak(&self->_keyboardView, v7);
  v21 = *MEMORY[0x277D85DE8];
}

- (void)updateTopLayoutGuide:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_parentView);
  if (WeakRetained)
  {
    v6 = WeakRetained;
    v7 = [v4 owningView];
    v8 = objc_loadWeakRetained(&self->_parentView);
    v9 = [v7 isDescendantOfView:v8];

    if (v9)
    {
      v10 = [(NSLayoutConstraint *)self->_keyboardAnchorVertical identifier];
      if ([v10 isEqualToString:@"default.vertical"])
      {
        v11 = 0.0;
      }

      else
      {
        v11 = 0.2;
      }

      objc_initWeak(&location, self);
      v12 = MEMORY[0x277D75D18];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __38__LACUIKeyboard_updateTopLayoutGuide___block_invoke;
      v13[3] = &unk_27981E848;
      objc_copyWeak(&v15, &location);
      v14 = v4;
      [v12 animateWithDuration:v13 animations:v11];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __38__LACUIKeyboard_updateTopLayoutGuide___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    [WeakRetained[4] setActive:0];
    v3 = objc_loadWeakRetained(v9 + 1);
    v4 = [v3 topAnchor];
    v5 = [*(a1 + 32) bottomAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    v7 = v9[4];
    v9[4] = v6;

    [v9[4] setActive:1];
    v8 = objc_loadWeakRetained(v9 + 2);
    [v8 layoutIfNeeded];

    WeakRetained = v9;
  }
}

- (CGRect)frame
{
  WeakRetained = objc_loadWeakRetained(&self->_keyboardContainer);
  [WeakRetained frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end