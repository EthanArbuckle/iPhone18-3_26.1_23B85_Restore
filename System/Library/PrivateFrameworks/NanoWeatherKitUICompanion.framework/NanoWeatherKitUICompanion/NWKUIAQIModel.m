@interface NWKUIAQIModel
- (NWKUIAQIModel)initWithName:(id)a3 label:(id)a4 categoryDescription:(id)a5 color:(id)a6 date:(id)a7 expiration:(id)a8;
@end

@implementation NWKUIAQIModel

- (NWKUIAQIModel)initWithName:(id)a3 label:(id)a4 categoryDescription:(id)a5 color:(id)a6 date:(id)a7 expiration:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v28.receiver = self;
  v28.super_class = NWKUIAQIModel;
  v20 = [(NWKUIAQIModel *)&v28 init];
  if (v20)
  {
    v21 = [v14 copy];
    name = v20->_name;
    v20->_name = v21;

    v23 = [v15 copy];
    label = v20->_label;
    v20->_label = v23;

    v25 = [v16 copy];
    categoryDescription = v20->_categoryDescription;
    v20->_categoryDescription = v25;

    objc_storeStrong(&v20->_color, a6);
    objc_storeStrong(&v20->_date, a7);
    objc_storeStrong(&v20->_expiration, a8);
  }

  return v20;
}

@end