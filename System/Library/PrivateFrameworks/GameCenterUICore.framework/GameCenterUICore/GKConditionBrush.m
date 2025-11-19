@interface GKConditionBrush
- (CGSize)sizeForInput:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5;
@end

@implementation GKConditionBrush

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = GKConditionBrush;
  v4 = [(GKBrush *)&v9 copyWithZone:a3];
  v5 = [(GKConditionBrush *)self predicate];
  [v4 setPredicate:v5];

  v6 = [(GKConditionBrush *)self yesBrush];
  [v4 setYesBrush:v6];

  v7 = [(GKConditionBrush *)self noBrush];
  [v4 setNoBrush:v7];

  return v4;
}

- (void)drawInRect:(CGRect)a3 withContext:(CGContext *)a4 input:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v14 = a5;
  v11 = [(GKConditionBrush *)self predicate];
  v12 = [v11 evaluateWithObject:v14];

  v13 = &OBJC_IVAR___GKConditionBrush__noBrush;
  if (v12)
  {
    v13 = &OBJC_IVAR___GKConditionBrush__yesBrush;
  }

  [*(&self->super.super.isa + *v13) drawInRect:a4 withContext:v14 input:{x, y, width, height}];
}

- (CGSize)sizeForInput:(id)a3
{
  v4 = a3;
  v5 = [(GKConditionBrush *)self predicate];
  v6 = [v5 evaluateWithObject:v4];

  v7 = &OBJC_IVAR___GKConditionBrush__noBrush;
  if (v6)
  {
    v7 = &OBJC_IVAR___GKConditionBrush__yesBrush;
  }

  [*(&self->super.super.isa + *v7) sizeForInput:v4];
  v9 = v8;
  v11 = v10;

  v12 = v9;
  v13 = v11;
  result.height = v13;
  result.width = v12;
  return result;
}

@end