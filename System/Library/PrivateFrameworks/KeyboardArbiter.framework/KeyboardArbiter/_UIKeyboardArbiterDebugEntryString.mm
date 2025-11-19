@interface _UIKeyboardArbiterDebugEntryString
+ (id)entryWithMessage:(id)a3 type:(id)a4;
- (void)enumerateContents:(id)a3;
@end

@implementation _UIKeyboardArbiterDebugEntryString

+ (id)entryWithMessage:(id)a3 type:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = objc_alloc_init(a1);
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(v9 + 2, a3);
    objc_storeStrong(v10 + 3, a4);
  }

  return v10;
}

- (void)enumerateContents:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = @"Type";
  v14[1] = @"Message";
  message = self->_message;
  v15[0] = self->_type;
  v15[1] = message;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v15 forKeys:v14 count:2];
  v8 = [v7 mutableCopy];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56___UIKeyboardArbiterDebugEntryString_enumerateContents___block_invoke;
  v12[3] = &unk_2797F4D80;
  v13 = v8;
  v11.receiver = self;
  v11.super_class = _UIKeyboardArbiterDebugEntryString;
  v9 = v8;
  [(_UIKeyboardArbiterDebugEntry *)&v11 enumerateContents:v12];
  v6[2](v6, v9);

  v10 = *MEMORY[0x277D85DE8];
}

@end