@interface CKPinnedConversationActivityItemViewBackdropLayer
- (CKPinnedConversationActivityItemViewBackdropLayer)init;
- (void)_updateBackgroundColor;
- (void)setUserInterfaceStyle:(int64_t)a3;
@end

@implementation CKPinnedConversationActivityItemViewBackdropLayer

- (CKPinnedConversationActivityItemViewBackdropLayer)init
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = CKPinnedConversationActivityItemViewBackdropLayer;
  v2 = [(CKPinnedConversationActivityItemViewBackdropLayer *)&v10 init];
  v3 = v2;
  if (v2)
  {
    [(CKPinnedConversationActivityItemViewBackdropLayer *)v2 _updateBackgroundColor];
    v4 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v4 setValue:@"default" forKeyPath:*MEMORY[0x1E6979BA0]];
    [v4 setValue:&unk_1F04E8EA8 forKeyPath:*MEMORY[0x1E6979BA8]];
    v5 = MEMORY[0x1E695E118];
    [v4 setValue:MEMORY[0x1E695E118] forKeyPath:*MEMORY[0x1E6979B48]];
    [v4 setValue:v5 forKeyPath:*MEMORY[0x1E6979B78]];
    v6 = MEMORY[0x1E695E110];
    [v4 setValue:MEMORY[0x1E695E110] forKeyPath:*MEMORY[0x1E6979AC8]];
    [v4 setValue:v6 forKeyPath:*MEMORY[0x1E6979B68]];
    v7 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979890]];
    [v7 setValue:&unk_1F04E8EB8 forKeyPath:*MEMORY[0x1E6979990]];
    v11[0] = v4;
    v11[1] = v7;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
    [(CKPinnedConversationActivityItemViewBackdropLayer *)v3 setFilters:v8];

    [(CKPinnedConversationActivityItemViewBackdropLayer *)v3 setScale:0.25];
  }

  return v3;
}

- (void)setUserInterfaceStyle:(int64_t)a3
{
  if (self->_userInterfaceStyle != a3)
  {
    self->_userInterfaceStyle = a3;
    [(CKPinnedConversationActivityItemViewBackdropLayer *)self _updateBackgroundColor];
  }
}

- (void)_updateBackgroundColor
{
  userInterfaceStyle = self->_userInterfaceStyle;
  if (userInterfaceStyle >= 2)
  {
    if (userInterfaceStyle != 2)
    {
      v7 = 0;
      goto LABEL_7;
    }

    v4 = MEMORY[0x1E69DC888];
    v6 = 0.278431373;
    v5 = 0.75;
  }

  else
  {
    v4 = MEMORY[0x1E69DC888];
    v5 = 0.9;
    v6 = 1.0;
  }

  v7 = [v4 colorWithWhite:v6 alpha:v5];
LABEL_7:
  v9 = v7;
  v8 = v7;
  -[CKPinnedConversationActivityItemViewBackdropLayer setBackgroundColor:](self, "setBackgroundColor:", [v9 CGColor]);
}

@end