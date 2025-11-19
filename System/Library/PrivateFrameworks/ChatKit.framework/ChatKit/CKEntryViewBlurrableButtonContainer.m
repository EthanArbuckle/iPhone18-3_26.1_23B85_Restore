@interface CKEntryViewBlurrableButtonContainer
- (BOOL)_shouldAnimatePropertyWithKey:(id)a3;
- (CKEntryViewBlurrableButtonContainer)init;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setBlurRadius:(double)a3;
@end

@implementation CKEntryViewBlurrableButtonContainer

- (CKEntryViewBlurrableButtonContainer)init
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CKEntryViewBlurrableButtonContainer;
  v2 = [(CKEntryViewBlurrableButtonContainer *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979928]];
    [v3 setValue:&unk_1F04E7E78 forKeyPath:*MEMORY[0x1E6979BA8]];
    v8[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    v5 = [(CKEntryViewBlurrableButtonContainer *)v2 layer];
    [v5 setFilters:v4];
  }

  return v2;
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
    v7.super_class = CKEntryViewBlurrableButtonContainer;
    v5 = [(CKEntryViewBlurrableButtonContainer *)&v7 _shouldAnimatePropertyWithKey:v4];
  }

  return v5;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  v9.receiver = self;
  v9.super_class = CKEntryViewBlurrableButtonContainer;
  v5 = [(CKEntryViewBlurrableButtonContainer *)&v9 hitTest:a4 withEvent:a3.x, a3.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)setBlurRadius:(double)a3
{
  if (vabdd_f64(a3, self->_blurRadius) > 2.22044605e-16)
  {
    self->_blurRadius = a3;
    v5 = [(CKEntryViewBlurrableButtonContainer *)self layer];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    [v5 setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

@end