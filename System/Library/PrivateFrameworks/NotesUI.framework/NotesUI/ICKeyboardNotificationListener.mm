@interface ICKeyboardNotificationListener
+ (id)sharedListener;
- (CGRect)keyboardFrame;
- (ICKeyboardNotificationListener)init;
- (void)dealloc;
- (void)handleKeyboardDidChangeFrame:(id)frame;
- (void)handleKeyboardWillShow:(id)show;
@end

@implementation ICKeyboardNotificationListener

+ (id)sharedListener
{
  if (sharedListener_onceToken != -1)
  {
    +[ICKeyboardNotificationListener sharedListener];
  }

  v3 = sharedListener_listener;

  return v3;
}

uint64_t __48__ICKeyboardNotificationListener_sharedListener__block_invoke()
{
  sharedListener_listener = objc_alloc_init(ICKeyboardNotificationListener);

  return MEMORY[0x1EEE66BB8]();
}

- (ICKeyboardNotificationListener)init
{
  v9.receiver = self;
  v9.super_class = ICKeyboardNotificationListener;
  v2 = [(ICKeyboardNotificationListener *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v4 = *(MEMORY[0x1E695F050] + 16);
    *(v2 + 8) = *MEMORY[0x1E695F050];
    *(v2 + 24) = v4;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel_handleKeyboardWillShow_ name:*MEMORY[0x1E69DE080] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel_handleKeyboardDidChangeFrame_ name:*MEMORY[0x1E69DDF68] object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v3 selector:sel_handleKeyboardWillHide_ name:*MEMORY[0x1E69DE078] object:0];
  }

  return v3;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICKeyboardNotificationListener;
  [(ICKeyboardNotificationListener *)&v4 dealloc];
}

- (void)handleKeyboardWillShow:(id)show
{
  userInfo = [show userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(ICKeyboardNotificationListener *)self setKeyboardFrame:v7, v9, v11, v13];
}

- (void)handleKeyboardDidChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v5 = [userInfo objectForKey:*MEMORY[0x1E69DDFA0]];
  [v5 CGRectValue];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(ICKeyboardNotificationListener *)self setKeyboardFrame:v7, v9, v11, v13];
}

- (CGRect)keyboardFrame
{
  x = self->_keyboardFrame.origin.x;
  y = self->_keyboardFrame.origin.y;
  width = self->_keyboardFrame.size.width;
  height = self->_keyboardFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end