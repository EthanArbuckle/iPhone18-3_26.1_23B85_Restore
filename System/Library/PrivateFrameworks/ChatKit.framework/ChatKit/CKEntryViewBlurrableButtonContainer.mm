@interface CKEntryViewBlurrableButtonContainer
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CKEntryViewBlurrableButtonContainer)init;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setBlurRadius:(double)radius;
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
    layer = [(CKEntryViewBlurrableButtonContainer *)v2 layer];
    [layer setFilters:v4];
  }

  return v2;
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
    v7.super_class = CKEntryViewBlurrableButtonContainer;
    v5 = [(CKEntryViewBlurrableButtonContainer *)&v7 _shouldAnimatePropertyWithKey:keyCopy];
  }

  return v5;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = CKEntryViewBlurrableButtonContainer;
  v5 = [(CKEntryViewBlurrableButtonContainer *)&v9 hitTest:event withEvent:test.x, test.y];
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

- (void)setBlurRadius:(double)radius
{
  if (vabdd_f64(radius, self->_blurRadius) > 2.22044605e-16)
  {
    self->_blurRadius = radius;
    layer = [(CKEntryViewBlurrableButtonContainer *)self layer];
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:radius];
    [layer setValue:v4 forKeyPath:@"filters.gaussianBlur.inputRadius"];
  }
}

@end