@interface MCLTextField
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (CGRect)borderRectForBounds:(CGRect)a3;
- (CGRect)clearButtonRectForBounds:(CGRect)a3;
- (CGRect)editingRectForBounds:(CGRect)a3;
- (CGRect)leftViewRectForBounds:(CGRect)a3;
- (CGRect)placeholderRectForBounds:(CGRect)a3;
- (CGRect)rightViewRectForBounds:(CGRect)a3;
- (CGRect)textRectForBounds:(CGRect)a3;
- (void)setValue:(id)a3 forUndefinedKey:(id)a4;
@end

@implementation MCLTextField

- (CGRect)borderRectForBounds:(CGRect)a3
{
  v21 = a3;
  v20 = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 borderRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)v20 delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:v20 borderRect:v22 bounds:{v23, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
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

- (CGRect)textRectForBounds:(CGRect)a3
{
  v21 = a3;
  v20 = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 textRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)v20 delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:v20 textRect:v22 bounds:{v23, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
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

- (CGRect)placeholderRectForBounds:(CGRect)a3
{
  v21 = a3;
  v20 = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 placeholderRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)v20 delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:v20 placeholderRect:v22 bounds:{v23, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
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

- (CGRect)editingRectForBounds:(CGRect)a3
{
  v21 = a3;
  v20 = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 editingRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)v20 delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:v20 editingRect:v22 bounds:{v23, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
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

- (CGRect)clearButtonRectForBounds:(CGRect)a3
{
  v21 = a3;
  v20 = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 clearButtonRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)v20 delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:v20 clearButtonRect:v22 bounds:{v23, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
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

- (CGRect)leftViewRectForBounds:(CGRect)a3
{
  v21 = a3;
  v20 = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 leftViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)v20 delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:v20 leftViewRect:v22 bounds:{v23, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
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

- (CGRect)rightViewRectForBounds:(CGRect)a3
{
  v21 = a3;
  v20 = self;
  v19 = a2;
  v22 = 0u;
  v23 = 0u;
  v18.receiver = self;
  v18.super_class = MCLTextField;
  [(MCLTextField *)&v18 rightViewRectForBounds:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  *&v22 = v3;
  *(&v22 + 1) = v4;
  *&v23 = v5;
  *(&v23 + 1) = v6;
  location = [(MCLTextField *)v20 delegate];
  if ([location conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    [location textField:v20 rightViewRect:v22 bounds:{v23, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
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

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v8.receiver = v13;
  v8.super_class = MCLTextField;
  v9 = [(MCLTextField *)&v8 canPerformAction:v11 withSender:location];
  v7 = [(MCLTextField *)v13 delegate];
  if ([v7 conformsToProtocol:&unk_2867B5D20] & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v5 = v13;
    v6 = NSStringFromSelector(v11);
    v14 = [v7 textField:v5 canPerformAction:? withSender:? defaultValue:?] & 1;
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
    [(MCLTextField *)v14 setEnablesReturnKeyAutomatically:v4];
  }

  else if ([v12 isEqualToString:@"returnKeyType"])
  {
    v5 = [location[0] integerValue];
    [(MCLTextField *)v14 setReturnKeyType:v5];
  }

  else if ([v12 isEqualToString:@"keyboardType"])
  {
    v6 = [location[0] integerValue];
    [(MCLTextField *)v14 setKeyboardType:v6];
  }

  else if ([v12 isEqualToString:@"autocorrectionType"])
  {
    v7 = [location[0] integerValue];
    [(MCLTextField *)v14 setAutocorrectionType:v7];
  }

  else if ([v12 isEqualToString:@"autocapitalizationType"])
  {
    v8 = [location[0] integerValue];
    [(MCLTextField *)v14 setAutocapitalizationType:v8];
  }

  else if ([v12 isEqualToString:@"spellCheckingType"])
  {
    v9 = [location[0] integerValue];
    [(MCLTextField *)v14 setSpellCheckingType:v9];
  }

  else
  {
    v11.receiver = v14;
    v11.super_class = MCLTextField;
    [(MCLTextField *)&v11 setValue:location[0] forUndefinedKey:v12];
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

@end