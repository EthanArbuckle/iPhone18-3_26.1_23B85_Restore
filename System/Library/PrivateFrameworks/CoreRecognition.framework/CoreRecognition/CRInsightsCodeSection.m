@interface CRInsightsCodeSection
- (CRInsightsCodeSection)initWithName:(id)a3 andDescription:(id)a4;
@end

@implementation CRInsightsCodeSection

- (CRInsightsCodeSection)initWithName:(id)a3 andDescription:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CRInsightsCodeSection;
  v9 = [(CRInsightsCodeSection *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_name, a3);
    objc_storeStrong(&v10->_description, a4);
  }

  return v10;
}

@end