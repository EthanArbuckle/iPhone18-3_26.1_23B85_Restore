@interface CENativeModalRecommendationAction
- (CENativeModalRecommendationAction)initWithCoder:(id)a3;
- (CENativeModalRecommendationAction)initWithIdentifier:(id)a3 title:(id)a4 detailControllerClass:(Class)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CENativeModalRecommendationAction

- (CENativeModalRecommendationAction)initWithIdentifier:(id)a3 title:(id)a4 detailControllerClass:(Class)a5
{
  v9.receiver = self;
  v9.super_class = CENativeModalRecommendationAction;
  v6 = [(CERecommendationAction *)&v9 initWithIdentifier:a3 actionTitle:a4 actionType:@"NativeModal"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailControllerClass, a5);
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CENativeModalRecommendationAction;
  v4 = a3;
  [(CERecommendationAction *)&v6 encodeWithCoder:v4];
  v5 = NSStringFromClass(self->_detailControllerClass);
  [v4 encodeObject:v5 forKey:{@"viewControllerClass", v6.receiver, v6.super_class}];
}

- (CENativeModalRecommendationAction)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CENativeModalRecommendationAction;
  v5 = [(CERecommendationAction *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"viewControllerClass"];
    v7 = NSClassFromString(v6);
    detailControllerClass = v5->_detailControllerClass;
    v5->_detailControllerClass = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CENativeModalRecommendationAction;
  v4 = [(CERecommendationAction *)&v6 copyWithZone:a3];
  [v4 setDetailControllerClass:self->_detailControllerClass];
  return v4;
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = CENativeModalRecommendationAction;
  v3 = [(CERecommendationAction *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" detailControllerClass: %@", self->_detailControllerClass];

  return v4;
}

@end