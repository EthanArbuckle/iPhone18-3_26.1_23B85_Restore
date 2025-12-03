@interface CRInsightsCodeSection
- (CRInsightsCodeSection)initWithName:(id)name andDescription:(id)description;
@end

@implementation CRInsightsCodeSection

- (CRInsightsCodeSection)initWithName:(id)name andDescription:(id)description
{
  nameCopy = name;
  descriptionCopy = description;
  v12.receiver = self;
  v12.super_class = CRInsightsCodeSection;
  v9 = [(CRInsightsCodeSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, name);
    objc_storeStrong(&v10->_description, description);
  }

  return v10;
}

@end