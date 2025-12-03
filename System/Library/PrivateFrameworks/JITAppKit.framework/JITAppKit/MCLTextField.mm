@interface MCLTextField
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (CGRect)borderRectForBounds:(CGRect)bounds;
- (CGRect)clearButtonRectForBounds:(CGRect)bounds;
- (CGRect)editingRectForBounds:(CGRect)bounds;
- (CGRect)leftViewRectForBounds:(CGRect)bounds;
- (CGRect)placeholderRectForBounds:(CGRect)bounds;
- (CGRect)rightViewRectForBounds:(CGRect)bounds;
- (CGRect)textRectForBounds:(CGRect)bounds;
- (void)setValue:(id)value forUndefinedKey:(id)key;
@end

@implementation MCLTextField

- (CGRect)borderRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 borderRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)selfCopy delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:selfCopy borderRect:v22 bounds:{v23, boundsCopy.origin.x, boundsCopy.origin.y, boundsCopy.size.width, boundsCopy.size.height}];
    *&v15 = v7;
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v22 = v15;
    v23 = v16;
  }

  objc_storeStrong(&location, 0);
  v12 = *(&v22 + 1);
  v11 = *&v22;
  v14 = *(&v23 + 1);
  v13 = *&v23;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)textRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 textRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)selfCopy delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:selfCopy textRect:v22 bounds:{v23, boundsCopy.origin.x, boundsCopy.origin.y, boundsCopy.size.width, boundsCopy.size.height}];
    *&v15 = v7;
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v22 = v15;
    v23 = v16;
  }

  objc_storeStrong(&location, 0);
  v12 = *(&v22 + 1);
  v11 = *&v22;
  v14 = *(&v23 + 1);
  v13 = *&v23;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)placeholderRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 placeholderRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)selfCopy delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:selfCopy placeholderRect:v22 bounds:{v23, boundsCopy.origin.x, boundsCopy.origin.y, boundsCopy.size.width, boundsCopy.size.height}];
    *&v15 = v7;
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v22 = v15;
    v23 = v16;
  }

  objc_storeStrong(&location, 0);
  v12 = *(&v22 + 1);
  v11 = *&v22;
  v14 = *(&v23 + 1);
  v13 = *&v23;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)editingRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 editingRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)selfCopy delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:selfCopy editingRect:v22 bounds:{v23, boundsCopy.origin.x, boundsCopy.origin.y, boundsCopy.size.width, boundsCopy.size.height}];
    *&v15 = v7;
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v22 = v15;
    v23 = v16;
  }

  objc_storeStrong(&location, 0);
  v12 = *(&v22 + 1);
  v11 = *&v22;
  v14 = *(&v23 + 1);
  v13 = *&v23;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)clearButtonRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 clearButtonRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)selfCopy delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:selfCopy clearButtonRect:v22 bounds:{v23, boundsCopy.origin.x, boundsCopy.origin.y, boundsCopy.size.width, boundsCopy.size.height}];
    *&v15 = v7;
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v22 = v15;
    v23 = v16;
  }

  objc_storeStrong(&location, 0);
  v12 = *(&v22 + 1);
  v11 = *&v22;
  v14 = *(&v23 + 1);
  v13 = *&v23;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)leftViewRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 leftViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)selfCopy delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:selfCopy leftViewRect:v22 bounds:{v23, boundsCopy.origin.x, boundsCopy.origin.y, boundsCopy.size.width, boundsCopy.size.height}];
    *&v15 = v7;
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v22 = v15;
    v23 = v16;
  }

  objc_storeStrong(&location, 0);
  v12 = *(&v22 + 1);
  v11 = *&v22;
  v14 = *(&v23 + 1);
  v13 = *&v23;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)rightViewRectForBounds:(CGRect)bounds
{
  boundsCopy = bounds;
  selfCopy = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 rightViewRectForBounds:bounds.origin.x, bounds.origin.y, bounds.size.width, bounds.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)selfCopy delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:selfCopy rightViewRect:v22 bounds:{v23, boundsCopy.origin.x, boundsCopy.origin.y, boundsCopy.size.width, boundsCopy.size.height}];
    *&v15 = v7;
    *(&v15 + 1) = v8;
    *&v16 = v9;
    *(&v16 + 1) = v10;
    v22 = v15;
    v23 = v16;
  }

  objc_storeStrong(&location, 0);
  v12 = *(&v22 + 1);
  v11 = *&v22;
  v14 = *(&v23 + 1);
  v13 = *&v23;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  selfCopy = self;
  v12 = a2;
  actionCopy = action;
  location = 0;
  objc_storeStrong(&location, sender);
  v8.receiver = selfCopy;
  v8.super_class = MCLTextField;
  v9 = [(MCLTextField *)&v8 canPerformAction:actionCopy withSender:location];
  delegate = [(MCLTextField *)selfCopy delegate];
  if ([delegate conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = selfCopy;
    v6 = NSStringFromSelector(actionCopy);
    v14 = [delegate textField:v5 canPerformAction:? withSender:? defaultValue:?] & 1;
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
    [(MCLTextField *)selfCopy setEnablesReturnKeyAutomatically:bOOLValue];
  }

  else if ([v12 isEqualToString:@"returnKeyType"])
  {
    integerValue = [location[0] integerValue];
    [(MCLTextField *)selfCopy setReturnKeyType:integerValue];
  }

  else if ([v12 isEqualToString:@"keyboardType"])
  {
    integerValue2 = [location[0] integerValue];
    [(MCLTextField *)selfCopy setKeyboardType:integerValue2];
  }

  else if ([v12 isEqualToString:@"autocorrectionType"])
  {
    integerValue3 = [location[0] integerValue];
    [(MCLTextField *)selfCopy setAutocorrectionType:integerValue3];
  }

  else if ([v12 isEqualToString:@"autocapitalizationType"])
  {
    integerValue4 = [location[0] integerValue];
    [(MCLTextField *)selfCopy setAutocapitalizationType:integerValue4];
  }

  else if ([v12 isEqualToString:@"spellCheckingType"])
  {
    integerValue5 = [location[0] integerValue];
    [(MCLTextField *)selfCopy setSpellCheckingType:integerValue5];
  }

  else
  {
    v11.receiver = selfCopy;
    v11.super_class = MCLTextField;
    [(MCLTextField *)&v11 setValue:location[0] forUndefinedKey:v12];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end