@interface OADStyleMatrixReference
+ (OADStyleMatrixReference)styleMatrixReferenceWithMatrixIndex:(unint64_t)a3 color:(id)a4;
- (OADStyleMatrixReference)initWithMatrixIndex:(unint64_t)a3 color:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation OADStyleMatrixReference

- (OADStyleMatrixReference)initWithMatrixIndex:(unint64_t)a3 color:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = OADStyleMatrixReference;
  v8 = [(OADStyleMatrixReference *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->mMatrixIndex = a3;
    objc_storeStrong(&v8->mColor, a4);
  }

  return v9;
}

+ (OADStyleMatrixReference)styleMatrixReferenceWithMatrixIndex:(unint64_t)a3 color:(id)a4
{
  v5 = a4;
  v6 = [[OADStyleMatrixReference alloc] initWithMatrixIndex:a3 color:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v5[1] = self->mMatrixIndex;
  v6 = [(OADColor *)self->mColor copyWithZone:a3];
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

  v5 = [v3 descriptionString];

  return v5;
}

@end