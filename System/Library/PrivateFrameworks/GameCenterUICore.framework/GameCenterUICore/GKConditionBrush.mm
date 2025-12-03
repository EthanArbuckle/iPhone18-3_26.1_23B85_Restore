@interface GKConditionBrush
- (CGSize)sizeForInput:(id)input;
- (id)copyWithZone:(_NSZone *)zone;
- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input;
@end

@implementation GKConditionBrush

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = GKConditionBrush;
  v4 = [(GKBrush *)&v9 copyWithZone:zone];
  predicate = [(GKConditionBrush *)self predicate];
  [v4 setPredicate:predicate];

  yesBrush = [(GKConditionBrush *)self yesBrush];
  [v4 setYesBrush:yesBrush];

  noBrush = [(GKConditionBrush *)self noBrush];
  [v4 setNoBrush:noBrush];

  return v4;
}

- (void)drawInRect:(CGRect)rect withContext:(CGContext *)context input:(id)input
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  inputCopy = input;
  predicate = [(GKConditionBrush *)self predicate];
  v12 = [predicate evaluateWithObject:inputCopy];

  v13 = &OBJC_IVAR___GKConditionBrush__noBrush;
  if (v12)
  {
    v13 = &OBJC_IVAR___GKConditionBrush__yesBrush;
  }

  [*(&self->super.super.isa + *v13) drawInRect:context withContext:inputCopy input:{x, y, width, height}];
}

- (CGSize)sizeForInput:(id)input
{
  inputCopy = input;
  predicate = [(GKConditionBrush *)self predicate];
  v6 = [predicate evaluateWithObject:inputCopy];

  v7 = &OBJC_IVAR___GKConditionBrush__noBrush;
  if (v6)
  {
    v7 = &OBJC_IVAR___GKConditionBrush__yesBrush;
  }

  [*(&self->super.super.isa + *v7) sizeForInput:inputCopy];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end