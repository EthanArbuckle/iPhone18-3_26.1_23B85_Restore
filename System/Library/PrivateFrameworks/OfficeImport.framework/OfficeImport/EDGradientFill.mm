@interface EDGradientFill
+ (id)gradientWithType:(int)type degree:(double)degree focusRect:(CGRect)rect stops:(id)stops resources:(id)resources;
+ (id)gradientWithType:(int)type degree:(double)degree top:(double)top bottom:(double)bottom right:(double)right left:(double)left stops:(id)stops resources:(id)self0;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGradientFill:(id)fill;
- (CGRect)focusRect;
- (EDGradientFill)initWithResources:(id)resources;
- (EDGradientFill)initWithType:(int)type degree:(double)degree focusRect:(CGRect)rect stops:(id)stops resources:(id)resources;
- (EDGradientFill)initWithType:(int)type degree:(double)degree top:(double)top bottom:(double)bottom right:(double)right left:(double)left stops:(id)stops resources:(id)self0;
- (id)colorForStopAtPosition:(id)position;
- (id)copyWithZone:(_NSZone *)zone;
- (void)setStops:(id)stops;
@end

@implementation EDGradientFill

- (void)setStops:(id)stops
{
  stopsCopy = stops;
  if (self->mStops != stopsCopy)
  {
    v6 = stopsCopy;
    objc_storeStrong(&self->mStops, stops);
    stopsCopy = v6;
  }
}

- (EDGradientFill)initWithResources:(id)resources
{
  resourcesCopy = resources;
  v10.receiver = self;
  v10.super_class = EDGradientFill;
  v5 = [(EDFill *)&v10 initWithResources:resourcesCopy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v8.receiver = self;
  v8.super_class = EDGradientFill;
  v4 = [(EDFill *)&v8 copyWithZone:zone];
  v5 = [(NSMutableDictionary *)self->mStops mutableCopy];
  v6 = v4[3];
  v4[3] = v5;

  return v4;
}

- (BOOL)isEqualToGradientFill:(id)fill
{
  fillCopy = fill;
  v5 = fillCopy;
  if (self->mType == *(fillCopy + 4) && self->mDegree == *(fillCopy + 4) && CGRectEqualToRect(self->mFocusRect, *(fillCopy + 40)))
  {
    v6 = [(NSMutableDictionary *)self->mStops isEqual:v5[3]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(EDGradientFill *)self isEqualToGradientFill:v5];
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

- (id)colorForStopAtPosition:(id)position
{
  v3 = [(NSMutableDictionary *)self->mStops objectForKey:position];

  return v3;
}

- (EDGradientFill)initWithType:(int)type degree:(double)degree top:(double)top bottom:(double)bottom right:(double)right left:(double)left stops:(id)stops resources:(id)self0
{
  v16 = *&type;
  stopsCopy = stops;
  resourcesCopy = resources;
  v20 = [(EDGradientFill *)self initWithResources:resourcesCopy];
  v21 = v20;
  if (v20)
  {
    [(EDGradientFill *)v20 setType:v16];
    [(EDGradientFill *)v21 setFocusRect:left, top, right, bottom];
    [(EDGradientFill *)v21 setStops:stopsCopy];
    [(EDGradientFill *)v21 setDegree:degree];
  }

  return v21;
}

+ (id)gradientWithType:(int)type degree:(double)degree top:(double)top bottom:(double)bottom right:(double)right left:(double)left stops:(id)stops resources:(id)self0
{
  v16 = *&type;
  stopsCopy = stops;
  resourcesCopy = resources;
  v20 = [[self alloc] initWithType:v16 degree:stopsCopy top:resourcesCopy bottom:degree right:top left:bottom stops:right resources:left];

  return v20;
}

- (EDGradientFill)initWithType:(int)type degree:(double)degree focusRect:(CGRect)rect stops:(id)stops resources:(id)resources
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = *&type;
  stopsCopy = stops;
  resourcesCopy = resources;
  v17 = [(EDGradientFill *)self initWithResources:resourcesCopy];
  v18 = v17;
  if (v17)
  {
    [(EDGradientFill *)v17 setType:v13];
    [(EDGradientFill *)v18 setFocusRect:x, y, width, height];
    [(EDGradientFill *)v18 setStops:stopsCopy];
    [(EDGradientFill *)v18 setDegree:degree];
  }

  return v18;
}

+ (id)gradientWithType:(int)type degree:(double)degree focusRect:(CGRect)rect stops:(id)stops resources:(id)resources
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v13 = *&type;
  stopsCopy = stops;
  resourcesCopy = resources;
  v17 = [[self alloc] initWithType:v13 degree:stopsCopy focusRect:resourcesCopy stops:degree resources:{x, y, width, height}];

  return v17;
}

@end