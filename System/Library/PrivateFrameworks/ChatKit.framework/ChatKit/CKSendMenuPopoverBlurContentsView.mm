@interface CKSendMenuPopoverBlurContentsView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CKSendMenuPopoverBlurContentsView)init;
- (double)blurFilterRadius;
- (void)setBlurFilterRadius:(double)radius;
@end

@implementation CKSendMenuPopoverBlurContentsView

- (CKSendMenuPopoverBlurContentsView)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CKSendMenuPopoverBlurContentsView;
  v2 = [(CKSendMenuPopoverBlurContentsView *)&v7 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v3 setValue:&unk_1F04E7C50 forKey:*MEMORY[0x1E6979BA8]];
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    layer = [(CKSendMenuPopoverBlurContentsView *)v2 layer];
    [layer setFilters:v4];
  }

  return v2;
}

- (void)setBlurFilterRadius:(double)radius
{
  layer = [(CKSendMenuPopoverBlurContentsView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
  [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)blurFilterRadius
{
  layer = [(CKSendMenuPopoverBlurContentsView *)self layer];
  v3 = [layer valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  keyCopy = key;
  if ([keyCopy isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKSendMenuPopoverBlurContentsView;
    v5 = [(CKSendMenuPopoverBlurContentsView *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

@end