@interface CKSendMenuPopoverBlurContentsView
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CKSendMenuPopoverBlurContentsView)init;
- (double)blurFilterRadius;
- (void)setBlurFilterRadius:(double)a3;
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
    v5 = [(CKSendMenuPopoverBlurContentsView *)v2 layer];
    [v5 setFilters:v4];
  }

  return v2;
}

- (void)setBlurFilterRadius:(double)a3
{
  v5 = [(CKSendMenuPopoverBlurContentsView *)self layer];
  v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
  [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
}

- (double)blurFilterRadius
{
  v2 = [(CKSendMenuPopoverBlurContentsView *)self layer];
  v3 = [v2 valueForKeyPath:@"filters.gaussianBlur.inputRadius"];
  [v3 doubleValue];
  v5 = v4;

  return v5;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"filters.gaussianBlur.inputRadius"])
  {
    v5 = 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CKSendMenuPopoverBlurContentsView;
    v5 = [(CKSendMenuPopoverBlurContentsView *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

@end