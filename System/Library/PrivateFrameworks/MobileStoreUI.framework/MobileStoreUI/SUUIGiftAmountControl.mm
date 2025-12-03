@interface SUUIGiftAmountControl
- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (BOOL)textFieldShouldBeginEditing:(id)editing;
- (NSString)selectedAmountString;
- (SUUIGiftAmountControl)initWithGiftConfiguration:(id)configuration;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (int64_t)selectedAmount;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_layoutForPad;
- (void)_layoutForPhone;
- (void)_reloadSelectedButton;
- (void)_textFieldDidBeginEditing:(id)editing;
- (void)_textFieldDidEndEditing:(id)editing;
- (void)_updateButtonsWithTouch:(id)touch;
- (void)dealloc;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation SUUIGiftAmountControl

- (SUUIGiftAmountControl)initWithGiftConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v50.receiver = self;
  v50.super_class = SUUIGiftAmountControl;
  v6 = [(SUUIGiftAmountControl *)&v50 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_giftConfiguration, configuration);
    fixedGiftAmountLabels = [(SUUIGiftConfiguration *)v7->_giftConfiguration fixedGiftAmountLabels];
    fixedGiftAmountValues = [(SUUIGiftConfiguration *)v7->_giftConfiguration fixedGiftAmountValues];
    v10 = [fixedGiftAmountLabels count];
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
    amountButtons = v7->_amountButtons;
    v7->_amountButtons = v13;

    if (v10 >= 1)
    {
      v15 = 0;
      v16 = 3;
      if (userInterfaceIdiom)
      {
        v16 = 4;
      }

      if (v16 >= v10)
      {
        v17 = v10;
      }

      else
      {
        v17 = v16;
      }

      do
      {
        v18 = objc_alloc_init(SUUIGiftAmountButton);
        v19 = [fixedGiftAmountValues objectAtIndex:v15];
        -[SUUIGiftAmountButton setTag:](v18, "setTag:", [v19 integerValue]);

        v20 = [fixedGiftAmountLabels objectAtIndex:v15];
        [(SUUIGiftAmountButton *)v18 setTitle:v20 forState:0];

        [(SUUIGiftAmountButton *)v18 sizeToFit];
        [(SUUIGiftAmountControl *)v7 addSubview:v18];
        [(NSMutableArray *)v7->_amountButtons addObject:v18];

        ++v15;
      }

      while (v17 != v15);
    }

    v21 = objc_alloc(MEMORY[0x277D75D18]);
    currentDevice2 = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom2 = [currentDevice2 userInterfaceIdiom];

    if ((userInterfaceIdiom2 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      v24 = 110.0;
    }

    else
    {
      v24 = 72.0;
    }

    v25 = [v21 initWithFrame:{0.0, 0.0, v24, 44.0}];
    customAmountBackgroundView = v7->_customAmountBackgroundView;
    v7->_customAmountBackgroundView = v25;

    v27 = v7->_customAmountBackgroundView;
    systemBackgroundColor = [MEMORY[0x277D75348] systemBackgroundColor];
    [(UIView *)v27 setBackgroundColor:systemBackgroundColor];

    layer = [(UIView *)v7->_customAmountBackgroundView layer];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [layer setBorderColor:{objc_msgSend(separatorColor, "CGColor")}];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [layer setBorderWidth:1.0 / v32];

    [layer setCornerRadius:7.0];
    [(SUUIGiftAmountControl *)v7 addSubview:v7->_customAmountBackgroundView];
    v33 = objc_alloc_init(MEMORY[0x277D75BB8]);
    customAmountField = v7->_customAmountField;
    v7->_customAmountField = v33;

    [(UITextField *)v7->_customAmountField setContentHorizontalAlignment:0];
    [(UITextField *)v7->_customAmountField setTextAlignment:1];
    v35 = v7->_customAmountField;
    v36 = [MEMORY[0x277D74300] systemFontOfSize:18.0];
    [(UITextField *)v35 setFont:v36];

    [(UITextField *)v7->_customAmountField setDelegate:v7];
    [(UITextField *)v7->_customAmountField setKeyboardType:4];
    v37 = v7->_customAmountField;
    labelColor = [MEMORY[0x277D75348] labelColor];
    [(UITextField *)v37 setTextColor:labelColor];

    clientContext = [(SUUIGiftConfiguration *)v7->_giftConfiguration clientContext];
    v40 = objc_alloc(MEMORY[0x277CCAB48]);
    if (clientContext)
    {
      [clientContext localizedStringForKey:@"GIFTING_AMOUNT_OTHER" inTable:@"Gifting"];
    }

    else
    {
      [SUUIClientContext localizedStringForKey:@"GIFTING_AMOUNT_OTHER" inBundles:0 inTable:@"Gifting"];
    }
    v41 = ;
    v42 = [v40 initWithString:v41];

    v43 = [v42 length];
    v44 = *MEMORY[0x277D740A8];
    font = [(UITextField *)v7->_customAmountField font];
    [v42 addAttribute:v44 value:font range:{0, v43}];

    v46 = *MEMORY[0x277D740C0];
    placeholderTextColor = [MEMORY[0x277D75348] placeholderTextColor];
    [v42 addAttribute:v46 value:placeholderTextColor range:{0, v43}];

    [(UITextField *)v7->_customAmountField setAttributedPlaceholder:v42];
    [(UITextField *)v7->_customAmountField sizeToFit];
    [(SUUIGiftAmountControl *)v7 addSubview:v7->_customAmountField];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__textFieldDidBeginEditing_ name:*MEMORY[0x277D770A8] object:v7->_customAmountField];
    [defaultCenter addObserver:v7 selector:sel__textFieldDidChange_ name:*MEMORY[0x277D770B0] object:v7->_customAmountField];
    [defaultCenter addObserver:v7 selector:sel__textFieldDidEndEditing_ name:*MEMORY[0x277D770B8] object:v7->_customAmountField];
  }

  return v7;
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770A8] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B0] object:0];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D770B8] object:0];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_amountButtons;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) removeTarget:self action:0 forControlEvents:4095];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  [(UITextField *)self->_customAmountField setDelegate:0];
  v9.receiver = self;
  v9.super_class = SUUIGiftAmountControl;
  [(SUUIGiftAmountControl *)&v9 dealloc];
}

- (int64_t)selectedAmount
{
  if (self->_selectedAmount > 0)
  {
    return self->_selectedAmount;
  }

  text = [(UITextField *)self->_customAmountField text];
  integerValue = [text integerValue];

  return integerValue;
}

- (NSString)selectedAmountString
{
  if (self->_selectedAmount)
  {
    v2 = [(SUUIGiftAmountControl *)self viewWithTag:?];
    currentTitle = [v2 currentTitle];
  }

  else
  {
    currentTitle = [(UITextField *)self->_customAmountField text];
  }

  return currentTitle;
}

- (BOOL)beginTrackingWithTouch:(id)touch withEvent:(id)event
{
  touchCopy = touch;
  firstResponder = [(SUUIGiftAmountControl *)self firstResponder];
  [firstResponder resignFirstResponder];

  [(SUUIGiftAmountControl *)self _updateButtonsWithTouch:touchCopy];
  return 1;
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  [(SUUIGiftAmountControl *)self _updateButtonsWithTouch:touch, event];
  self->_selectedAmount = self->_trackingAmount;
  [(SUUIGiftAmountControl *)self _reloadSelectedButton];
  if (self->_selectedAmount)
  {
    [(UITextField *)self->_customAmountField _setPrefix:0];
    [(UITextField *)self->_customAmountField _setSuffix:0 withColor:0];
    [(UITextField *)self->_customAmountField setText:0];
    layer = [(UIView *)self->_customAmountBackgroundView layer];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [layer setBorderColor:{objc_msgSend(separatorColor, "CGColor")}];
  }

  [(SUUIGiftAmountControl *)self sendActionsForControlEvents:4096];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  selfCopy = self;
  v10.receiver = self;
  v10.super_class = SUUIGiftAmountControl;
  v7 = [(SUUIGiftAmountControl *)&v10 hitTest:event withEvent:?];
  if (v7)
  {
    if ([(NSMutableArray *)selfCopy->_amountButtons indexOfObjectIdenticalTo:v7]!= 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_6:
      v8 = selfCopy;

      v7 = v8;
      goto LABEL_7;
    }

    if (v7 == selfCopy)
    {
      [(UIView *)selfCopy->_customAmountBackgroundView frame];
      v12.x = x;
      v12.y = y;
      if (CGRectContainsPoint(v13, v12))
      {
        selfCopy = selfCopy->_customAmountField;
        goto LABEL_6;
      }
    }
  }

LABEL_7:

  return v7;
}

- (void)layoutSubviews
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {

    [(SUUIGiftAmountControl *)self _layoutForPad];
  }

  else
  {

    [(SUUIGiftAmountControl *)self _layoutForPhone];
  }
}

- (void)_layoutForPad
{
  [(SUUIGiftAmountControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  effectiveUserInterfaceLayoutDirection = [(SUUIGiftAmountControl *)self effectiveUserInterfaceLayoutDirection];
  [(UIView *)self->_customAmountBackgroundView frame];
  v13 = v12;
  v15 = v14;
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v16 = CGRectGetMaxX(v37) + -15.0 - v13;
  v17 = (v10 - v15) * 0.5;
  v18 = floorf(v17);
  customAmountBackgroundView = self->_customAmountBackgroundView;
  v33 = v4;
  if (effectiveUserInterfaceLayoutDirection)
  {
    v20 = v4;
    v21 = v8;
    [SUUICGRectHelpers rect:v16 withFlippedOriginXRelativeTo:v18, v13, v15, v20, v6, v8, v10];
  }

  else
  {
    v21 = v8;
    v22 = v16;
    v23 = v18;
    v24 = v13;
    v25 = v15;
  }

  [(UIView *)customAmountBackgroundView setFrame:v22, v23, v24, v25];
  [(UITextField *)self->_customAmountField frame];
  v27 = (v15 - v26) * 0.5;
  v28 = v18 + floorf(v27);
  customAmountField = self->_customAmountField;
  if (effectiveUserInterfaceLayoutDirection)
  {
    [SUUICGRectHelpers rect:v16 + 5.0 withFlippedOriginXRelativeTo:v28, v13 + -10.0];
  }

  [(UITextField *)customAmountField setFrame:?];
  v30 = [(NSMutableArray *)self->_amountButtons count];
  if (v30 >= 1)
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0x402E000000000000;
    amountButtons = self->_amountButtons;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v32 = (v16 + -8.0 + -15.0 + ((v30 - 1) * -8.0)) / v30;
    v34[2] = __38__SUUIGiftAmountControl__layoutForPad__block_invoke;
    v34[3] = &unk_2798FBE90;
    v34[4] = v36;
    *&v34[5] = v33;
    *&v34[6] = v6;
    *&v34[7] = v21;
    *&v34[8] = v10;
    v34[9] = v30;
    *&v34[10] = v16 + -8.0;
    *&v34[11] = floorf(v32);
    v35 = effectiveUserInterfaceLayoutDirection == 0;
    [(NSMutableArray *)amountButtons enumerateObjectsUsingBlock:v34];
    _Block_object_dispose(v36, 8);
  }
}

void __38__SUUIGiftAmountControl__layoutForPad__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = a2;
  [v15 frame];
  v6 = v5;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  v8 = (*(a1 + 64) - v5) * 0.5;
  v9 = floorf(v8);
  if (*(a1 + 72) - 1 == a3)
  {
    v10 = *(a1 + 80) - v7;
  }

  else
  {
    v10 = *(a1 + 88);
  }

  v11 = v9;
  if (*(a1 + 96) == 1)
  {
    v12 = *(*(*(a1 + 32) + 8) + 24);
    v13 = v11;
    v14 = v10;
  }

  else
  {
    v14 = v10;
    [SUUICGRectHelpers rect:*(*(*(a1 + 32) + 8) + 24) withFlippedOriginXRelativeTo:v11];
  }

  [v15 setFrame:{v12, v13}];
  v17.origin.x = v7;
  v17.origin.y = v11;
  v17.size.width = v14;
  v17.size.height = v6;
  *(*(*(a1 + 32) + 8) + 24) = CGRectGetMaxX(v17) + 8.0;
}

- (void)_layoutForPhone
{
  [(SUUIGiftAmountControl *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  effectiveUserInterfaceLayoutDirection = [(SUUIGiftAmountControl *)self effectiveUserInterfaceLayoutDirection];
  v12 = [(NSMutableArray *)self->_amountButtons count];
  if (v12 >= 1)
  {
    v36[0] = 0;
    v36[1] = v36;
    v36[2] = 0x2020000000;
    v36[3] = 0x402E000000000000;
    amountButtons = self->_amountButtons;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v14 = (v8 + -15.0 + -15.0 + ((v12 - 1) * -8.0)) / v12;
    v34[2] = __40__SUUIGiftAmountControl__layoutForPhone__block_invoke;
    v34[3] = &unk_2798FBE90;
    v34[4] = v36;
    v34[5] = v12;
    *&v34[6] = v8 + -15.0;
    *&v34[7] = floorf(v14);
    v35 = effectiveUserInterfaceLayoutDirection == 0;
    *&v34[8] = v4;
    *&v34[9] = v6;
    *&v34[10] = v8;
    *&v34[11] = v10;
    [(NSMutableArray *)amountButtons enumerateObjectsUsingBlock:v34];
    _Block_object_dispose(v36, 8);
  }

  [(UIView *)self->_customAmountBackgroundView frame];
  v37.origin.x = v4;
  v37.origin.y = v6;
  v37.size.width = v8;
  v37.size.height = v10;
  v15 = CGRectGetMaxX(v37) + -15.0 - (v8 + -30.0);
  v16 = (v10 + -44.0) * 0.5;
  v17 = floorf(v16);
  customAmountBackgroundView = self->_customAmountBackgroundView;
  if (effectiveUserInterfaceLayoutDirection)
  {
    [SUUICGRectHelpers rect:v15 withFlippedOriginXRelativeTo:v17, v8 + -30.0, 44.0, v4, v6, v8, v10];
  }

  [(UIView *)customAmountBackgroundView setFrame:?];
  [(UITextField *)self->_customAmountField frame];
  v20 = v19;
  [(UIView *)self->_customAmountBackgroundView origin];
  v22 = v21 + 5.0;
  [(UIView *)self->_customAmountBackgroundView origin];
  v24 = v23;
  [(UIView *)self->_customAmountBackgroundView size];
  v26 = (v25 - v20) * 0.5;
  v27 = v24 + floorf(v26);
  [(UIView *)self->_customAmountBackgroundView size];
  v29 = v28 + -10.0;
  customAmountField = self->_customAmountField;
  if (effectiveUserInterfaceLayoutDirection)
  {
    [SUUICGRectHelpers rect:v22 withFlippedOriginXRelativeTo:v27, v29, v20, v4, v6, v8, v10];
    v22 = v31;
    v27 = v32;
    v20 = v33;
  }

  [(UITextField *)customAmountField setFrame:v22, v27, v29, v20];
}

void __40__SUUIGiftAmountControl__layoutForPhone__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  [v12 frame];
  v6 = v5;
  v7 = *(*(*(a1 + 32) + 8) + 24);
  if (*(a1 + 40) - 1 == a3)
  {
    v8 = *(a1 + 48) - v7;
  }

  else
  {
    v8 = *(a1 + 56);
  }

  if (*(a1 + 96) == 1)
  {
    v9 = 0.0;
    v10 = *(*(*(a1 + 32) + 8) + 24);
    v11 = v8;
  }

  else
  {
    v11 = v8;
    [SUUICGRectHelpers rect:*(*(*(a1 + 32) + 8) + 24) withFlippedOriginXRelativeTo:0.0];
  }

  [v12 setFrame:{v10, v9}];
  v14.origin.x = v7;
  v14.origin.y = 0.0;
  v14.size.width = v11;
  v14.size.height = v6;
  *(*(*(a1 + 32) + 8) + 24) = CGRectGetMaxX(v14) + 8.0;
}

- (void)setBackgroundColor:(id)color
{
  v16 = *MEMORY[0x277D85DE8];
  colorCopy = color;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_amountButtons;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) setBackgroundColor:colorCopy];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10.receiver = self;
  v10.super_class = SUUIGiftAmountControl;
  [(SUUIGiftAmountControl *)&v10 setBackgroundColor:colorCopy];
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  fieldCopy = field;
  stringCopy = string;
  text = [fieldCopy text];
  v12 = [text stringByReplacingCharactersInRange:location withString:{length, stringCopy}];

  if ([v12 length])
  {
    v13 = objc_alloc_init(MEMORY[0x277CCABB8]);
    [v13 setMaximumFractionDigits:0];
    [v13 setNumberStyle:1];
    v14 = [v13 numberFromString:v12];
    v15 = v14 != 0;
    if (v14)
    {
      currencySymbolPosition = [(SUUIGiftConfiguration *)self->_giftConfiguration currencySymbolPosition];
      if (currencySymbolPosition == 1)
      {
        [fieldCopy _setPrefix:0];
        currencySymbol = [(SUUIGiftConfiguration *)self->_giftConfiguration currencySymbol];
        textColor = [fieldCopy textColor];
        [fieldCopy _setSuffix:currencySymbol withColor:textColor];
      }

      else if (!currencySymbolPosition)
      {
        currencySymbol2 = [(SUUIGiftConfiguration *)self->_giftConfiguration currencySymbol];
        [fieldCopy _setPrefix:currencySymbol2];

        [fieldCopy _setSuffix:0 withColor:0];
      }
    }
  }

  else
  {
    [fieldCopy _setPrefix:0];
    v15 = 1;
  }

  return v15;
}

- (BOOL)textFieldShouldBeginEditing:(id)editing
{
  self->_selectedAmount = 0;
  [(SUUIGiftAmountControl *)self _reloadSelectedButton];
  return 1;
}

- (void)_textFieldDidBeginEditing:(id)editing
{
  tintColor = [(SUUIGiftAmountControl *)self tintColor];
  v7 = [tintColor colorWithAlphaComponent:0.3];

  layer = [(UIView *)self->_customAmountBackgroundView layer];
  v6 = v7;
  [layer setBorderColor:{objc_msgSend(v7, "CGColor")}];
}

- (void)_textFieldDidEndEditing:(id)editing
{
  text = [(UITextField *)self->_customAmountField text];
  v5 = [text length];

  if (!v5)
  {
    layer = [(UIView *)self->_customAmountBackgroundView layer];
    separatorColor = [MEMORY[0x277D75348] separatorColor];
    [layer setBorderColor:{objc_msgSend(separatorColor, "CGColor")}];
  }
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v7.receiver = self;
  v7.super_class = SUUIGiftAmountControl;
  [(SUUIGiftAmountControl *)&v7 _dynamicUserInterfaceTraitDidChange];
  separatorColor = [MEMORY[0x277D75348] separatorColor];
  if ([(UITextField *)self->_customAmountField isFirstResponder])
  {
    tintColor = [(SUUIGiftAmountControl *)self tintColor];
    v5 = [tintColor colorWithAlphaComponent:0.3];

    separatorColor = v5;
  }

  layer = [(UIView *)self->_customAmountBackgroundView layer];
  [layer setBorderColor:{objc_msgSend(separatorColor, "CGColor")}];
}

- (void)_reloadSelectedButton
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_amountButtons;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v8 + 1) + 8 * v7) setSelected:{objc_msgSend(*(*(&v8 + 1) + 8 * v7), "tag", v8) == self->_selectedAmount}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_updateButtonsWithTouch:(id)touch
{
  v20 = *MEMORY[0x277D85DE8];
  [touch locationInView:self];
  v5 = v4;
  v7 = v6;
  self->_trackingAmount = 0;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_amountButtons;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        [v13 frame];
        v21.x = v5;
        v21.y = v7;
        v14 = CGRectContainsPoint(v22, v21);
        if (v14)
        {
          self->_trackingAmount = [v13 tag];
        }

        [v13 setSelected:v14];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

@end