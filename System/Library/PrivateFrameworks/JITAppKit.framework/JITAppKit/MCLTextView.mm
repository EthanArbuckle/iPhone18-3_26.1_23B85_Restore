@interface MCLTextView
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (MCLTextView)initWithFrame:(CGRect)frame;
- (void)onLongPress:(id)press;
- (void)onTap:(id)tap;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation MCLTextView

- (MCLTextView)initWithFrame:(CGRect)frame
{
  frameCopy = frame;
  v12 = a2;
  v13 = 0;
  v11.receiver = self;
  v11.super_class = MCLTextView;
  v13 = [(MCLTextView *)&v11 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  selfCopy = self;
  v12 = a2;
  actionCopy = action;
  location = 0;
  objc_storeStrong(&location, sender);
  v8.receiver = selfCopy;
  v8.super_class = MCLTextView;
  v9 = [(MCLTextView *)&v8 canPerformAction:actionCopy withSender:location];
  delegate = [(MCLTextView *)selfCopy delegate];
  if ([delegate conformsToProtocol:&unk_2867B5CC0] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = selfCopy;
    v6 = NSStringFromSelector(actionCopy);
    v14 = [delegate textView:v5 canPerformAction:? withSender:? defaultValue:?] & 1;
    MEMORY[0x277D82BD8](v6);
  }

  else
  {
    v14 = v9 & 1;
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(&location, 0);
  return v14 & 1;
}

- (void)setValue:(id)value forUndefinedKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v12 = 0;
  objc_storeStrong(&v12, key);
  if ([v12 isEqualToString:@"enablesReturnKeyAutomatically"])
  {
    bOOLValue = [location[0] BOOLValue];
    [(MCLTextView *)selfCopy setEnablesReturnKeyAutomatically:bOOLValue];
  }

  else if ([v12 isEqualToString:@"returnKeyType"])
  {
    integerValue = [location[0] integerValue];
    [(MCLTextView *)selfCopy setReturnKeyType:integerValue];
  }

  else if ([v12 isEqualToString:@"keyboardType"])
  {
    integerValue2 = [location[0] integerValue];
    [(MCLTextView *)selfCopy setKeyboardType:integerValue2];
  }

  else if ([v12 isEqualToString:@"autocorrectionType"])
  {
    integerValue3 = [location[0] integerValue];
    [(MCLTextView *)selfCopy setAutocorrectionType:integerValue3];
  }

  else if ([v12 isEqualToString:@"autocapitalizationType"])
  {
    integerValue4 = [location[0] integerValue];
    [(MCLTextView *)selfCopy setAutocapitalizationType:integerValue4];
  }

  else if ([v12 isEqualToString:@"spellCheckingType"])
  {
    integerValue5 = [location[0] integerValue];
    [(MCLTextView *)selfCopy setSpellCheckingType:integerValue5];
  }

  else
  {
    v11.receiver = selfCopy;
    v11.super_class = MCLTextView;
    [(MCLTextView *)&v11 setValue:location[0] forUndefinedKey:v12];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)onTap:(id)tap
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tap);
  delegate = [(MCLTextView *)selfCopy delegate];
  if (objc_opt_respondsToSelector())
  {
    [location[0] locationInView:selfCopy];
    v5[1] = v3;
    v5[2] = v4;
    v5[0] = 0;
    objc_storeStrong(v5, 0);
  }

  objc_storeStrong(&delegate, 0);
  objc_storeStrong(location, 0);
}

- (void)onLongPress:(id)press
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, press);
  objc_storeStrong(location, 0);
}

@end