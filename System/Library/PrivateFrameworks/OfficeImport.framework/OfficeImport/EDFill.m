@interface EDFill
+ (EDFill)fillWithResources:(id)a3;
- (EDFill)initWithResources:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation EDFill

- (EDFill)initWithResources:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = EDFill;
  v5 = [(EDFill *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->mResources, v4);
  }

  return v6;
}

+ (EDFill)fillWithResources:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithResources:v3];

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  WeakRetained = objc_loadWeakRetained(&self->mResources);
  v6 = [v4 initWithResources:WeakRetained];

  return v6;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = EDFill;
  v2 = [(EDFill *)&v4 description];

  return v2;
}

@end