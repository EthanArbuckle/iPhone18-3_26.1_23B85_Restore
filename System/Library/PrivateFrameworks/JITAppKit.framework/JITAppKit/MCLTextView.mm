@interface MCLTextView
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (MCLTextView)initWithFrame:(CGRect)a3;
- (void)onLongPress:(id)a3;
- (void)onTap:(id)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation MCLTextView

- (MCLTextView)initWithFrame:(CGRect)a3
{
  v14 = a3;
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = MCLTextView;
  v13 = [(MCLTextView *)&v11 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  objc_storeStrong(&v13, v13);
  if (v13)
  {
    v3 = objc_alloc(MEMORY[0x277D75B80]);
    v4 = [v3 initWithTarget:v13 action:sel_onTap_];
    tapGestureRecognizer = v13->_tapGestureRecognizer;
    v13->_tapGestureRecognizer = v4;
    MEMORY[0x277D82BD8](tapGestureRecognizer);
    [(MCLTextView *)v13 addGestureRecognizer:v13->_tapGestureRecognizer];
    v6 = objc_alloc(MEMORY[0x277D75708]);
    v7 = [v6 initWithTarget:v13 action:sel_onLongPress_];
    longPressGestureRecognizer = v13->_longPressGestureRecognizer;
    v13->_longPressGestureRecognizer = v7;
    MEMORY[0x277D82BD8](longPressGestureRecognizer);
    [(MCLTextView *)v13 addGestureRecognizer:v13->_longPressGestureRecognizer];
    [(MCLTextView *)v13 setSelectable:0];
  }

  v10 = MEMORY[0x277D82BE0](v13);
  objc_storeStrong(&v13, 0);
  return v10;
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v8.receiver = v13;
  v8.super_class = MCLTextView;
  v9 = [(MCLTextView *)&v8 canPerformAction:v11 withSender:location];
  v7 = [(MCLTextView *)v13 delegate];
  if ([v7 conformsToProtocol:&unk_2867B5CC0] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = v13;
    v6 = NSStringFromSelector(v11);
    v14 = [v7 textView:v5 canPerformAction:? withSender:? defaultValue:?] & 1;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v14 = v9 & 1;
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(&location, 0);
  return v14 & 1;
}

- (void)setValue:(id)a3 forUndefinedKey:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  if ([v12 isEqualToString:@"enablesReturnKeyAutomatically"])
  {
    v4 = [location[0] BOOLValue];
    [(MCLTextView *)v14 setEnablesReturnKeyAutomatically:v4];
  }

  else if ([v12 isEqualToString:@"returnKeyType"])
  {
    v5 = [location[0] integerValue];
    [(MCLTextView *)v14 setReturnKeyType:v5];
  }

  else if ([v12 isEqualToString:@"keyboardType"])
  {
    v6 = [location[0] integerValue];
    [(MCLTextView *)v14 setKeyboardType:v6];
  }

  else if ([v12 isEqualToString:@"autocorrectionType"])
  {
    v7 = [location[0] integerValue];
    [(MCLTextView *)v14 setAutocorrectionType:v7];
  }

  else if ([v12 isEqualToString:@"autocapitalizationType"])
  {
    v8 = [location[0] integerValue];
    [(MCLTextView *)v14 setAutocapitalizationType:v8];
  }

  else if ([v12 isEqualToString:@"spellCheckingType"])
  {
    v9 = [location[0] integerValue];
    [(MCLTextView *)v14 setSpellCheckingType:v9];
  }

  else
  {
    v11.receiver = v14;
    v11.super_class = MCLTextView;
    [(MCLTextView *)&v11 setValue:location[0] forUndefinedKey:v12];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)onTap:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(MCLTextView *)v8 delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] locationInView:v8];
    v5[1] = v3;
    v5[2] = v4;
    v5[0] = 0;
    objc_storeStrong(v5, 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)onLongPress:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

@end