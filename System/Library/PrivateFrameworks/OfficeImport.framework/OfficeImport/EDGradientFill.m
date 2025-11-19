@interface EDGradientFill
+ (id)gradientWithType:(int)a3 degree:(double)a4 focusRect:(CGRect)a5 stops:(id)a6 resources:(id)a7;
+ (id)gradientWithType:(int)a3 degree:(double)a4 top:(double)a5 bottom:(double)a6 right:(double)a7 left:(double)a8 stops:(id)a9 resources:(id)a10;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGradientFill:(id)a3;
- (CGRect)focusRect;
- (EDGradientFill)initWithResources:(id)a3;
- (EDGradientFill)initWithType:(int)a3 degree:(double)a4 focusRect:(CGRect)a5 stops:(id)a6 resources:(id)a7;
- (EDGradientFill)initWithType:(int)a3 degree:(double)a4 top:(double)a5 bottom:(double)a6 right:(double)a7 left:(double)a8 stops:(id)a9 resources:(id)a10;
- (id)colorForStopAtPosition:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setStops:(id)a3;
@end

@implementation EDGradientFill

- (void)setStops:(id)a3
{
  v5 = a3;
  if (self->mStops != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->mStops, a3);
    v5 = v6;
  }
}

- (EDGradientFill)initWithResources:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = EDGradientFill;
  v5 = [(EDFill *)&v10 initWithResources:v4];
  v6 = v5;
  if (v5)
  {
    v5->mType = 0;
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mStops = v6->mStops;
    v6->mStops = v7;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = EDGradientFill;
  v4 = [(EDFill *)&v8 copyWithZone:a3];
  v5 = [(NSMutableDictionary *)self->mStops mutableCopy];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (BOOL)isEqualToGradientFill:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->mType == *(v4 + 4) && self->mDegree == *(v4 + 4) && CGRectEqualToRect(self->mFocusRect, *(v4 + 40)))
  {
    v6 = [(NSMutableDictionary *)self->mStops isEqual:v5[3]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDGradientFill *)self isEqualToGradientFill:v5];
  }

  return v6;
}

- (CGRect)focusRect
{
  x = self->mFocusRect.origin.x;
  y = self->mFocusRect.origin.y;
  width = self->mFocusRect.size.width;
  height = self->mFocusRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)colorForStopAtPosition:(id)a3
{
  v3 = [(NSMutableDictionary *)self->mStops objectForKey:a3];

  return v3;
}

- (EDGradientFill)initWithType:(int)a3 degree:(double)a4 top:(double)a5 bottom:(double)a6 right:(double)a7 left:(double)a8 stops:(id)a9 resources:(id)a10
{
  v16 = *&a3;
  v18 = a9;
  v19 = a10;
  v20 = [(EDGradientFill *)self initWithResources:v19];
  v21 = v20;
  if (v20)
  {
    [(EDGradientFill *)v20 setType:v16];
    [(EDGradientFill *)v21 setFocusRect:a8, a5, a7, a6];
    [(EDGradientFill *)v21 setStops:v18];
    [(EDGradientFill *)v21 setDegree:a4];
  }

  return v21;
}

+ (id)gradientWithType:(int)a3 degree:(double)a4 top:(double)a5 bottom:(double)a6 right:(double)a7 left:(double)a8 stops:(id)a9 resources:(id)a10
{
  v16 = *&a3;
  v18 = a9;
  v19 = a10;
  v20 = [[a1 alloc] initWithType:v16 degree:v18 top:v19 bottom:a4 right:a5 left:a6 stops:a7 resources:a8];

  return v20;
}

- (EDGradientFill)initWithType:(int)a3 degree:(double)a4 focusRect:(CGRect)a5 stops:(id)a6 resources:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = *&a3;
  v15 = a6;
  v16 = a7;
  v17 = [(EDGradientFill *)self initWithResources:v16];
  v18 = v17;
  if (v17)
  {
    [(EDGradientFill *)v17 setType:v13];
    [(EDGradientFill *)v18 setFocusRect:x, y, width, height];
    [(EDGradientFill *)v18 setStops:v15];
    [(EDGradientFill *)v18 setDegree:a4];
  }

  return v18;
}

+ (id)gradientWithType:(int)a3 degree:(double)a4 focusRect:(CGRect)a5 stops:(id)a6 resources:(id)a7
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v13 = *&a3;
  v15 = a6;
  v16 = a7;
  v17 = [[a1 alloc] initWithType:v13 degree:v15 focusRect:v16 stops:a4 resources:{x, y, width, height}];

  return v17;
}

@end