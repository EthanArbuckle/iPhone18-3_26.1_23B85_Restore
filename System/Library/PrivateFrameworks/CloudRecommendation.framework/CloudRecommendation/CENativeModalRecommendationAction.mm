@interface CENativeModalRecommendationAction
- (CENativeModalRecommendationAction)initWithCoder:(id)coder;
- (CENativeModalRecommendationAction)initWithIdentifier:(id)identifier title:(id)title detailControllerClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CENativeModalRecommendationAction

- (CENativeModalRecommendationAction)initWithIdentifier:(id)identifier title:(id)title detailControllerClass:(Class)class
{
  v9.receiver = self;
  v9.super_class = CENativeModalRecommendationAction;
  v6 = [(CERecommendationAction *)&v9 initWithIdentifier:identifier actionTitle:title actionType:@"NativeModal"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_detailControllerClass, class);
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CENativeModalRecommendationAction;
  coderCopy = coder;
  [(CERecommendationAction *)&v6 encodeWithCoder:coderCopy];
  v5 = NSStringFromClass(self->_detailControllerClass);
  [coderCopy encodeObject:v5 forKey:{@"viewControllerClass", v6.receiver, v6.super_class}];
}

- (CENativeModalRecommendationAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CENativeModalRecommendationAction;
  v5 = [(CERecommendationAction *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"viewControllerClass"];
    v7 = NSClassFromString(v6);
    detailControllerClass = v5->_detailControllerClass;
    v5->_detailControllerClass = v7;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CENativeModalRecommendationAction;
  v4 = [(CERecommendationAction *)&v6 copyWithZone:zone];
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