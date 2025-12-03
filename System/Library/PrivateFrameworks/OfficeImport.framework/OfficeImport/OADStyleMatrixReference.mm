@interface OADStyleMatrixReference
+ (OADStyleMatrixReference)styleMatrixReferenceWithMatrixIndex:(unint64_t)index color:(id)color;
- (OADStyleMatrixReference)initWithMatrixIndex:(unint64_t)index color:(id)color;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation OADStyleMatrixReference

- (OADStyleMatrixReference)initWithMatrixIndex:(unint64_t)index color:(id)color
{
  colorCopy = color;
  v11.receiver = self;
  v11.super_class = OADStyleMatrixReference;
  v8 = [(OADStyleMatrixReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mMatrixIndex = index;
    objc_storeStrong(&v8->mColor, color);
  }

  return v9;
}

+ (OADStyleMatrixReference)styleMatrixReferenceWithMatrixIndex:(unint64_t)index color:(id)color
{
  colorCopy = color;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:index color:colorCopy];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[1] = self->mMatrixIndex;
  v6 = [(OADColor *)self->mColor copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  return v5;
}

- (id)description
{
  v3 = [OITSUDescription descriptionWithObject:self class:objc_opt_class()];
  [v3 addField:@"MatrixIndex" format:{@"%ld", self->mMatrixIndex}];
  v4 = [(OADColor *)self->mColor description];
  [v3 addField:@"Color" value:v4];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end