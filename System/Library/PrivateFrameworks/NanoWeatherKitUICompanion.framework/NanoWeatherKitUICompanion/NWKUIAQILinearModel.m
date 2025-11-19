@interface NWKUIAQILinearModel
- (NWKUIAQILinearModel)initWithName:(id)a3 label:(id)a4 categoryDescription:(id)a5 color:(id)a6 date:(id)a7 expiration:(id)a8 colorIndices:(id)a9 index:(id)a10 percentage:(double)a11;
@end

@implementation NWKUIAQILinearModel

- (NWKUIAQILinearModel)initWithName:(id)a3 label:(id)a4 categoryDescription:(id)a5 color:(id)a6 date:(id)a7 expiration:(id)a8 colorIndices:(id)a9 index:(id)a10 percentage:(double)a11
{
  v19 = a9;
  v20 = a10;
  v27.receiver = self;
  v27.super_class = NWKUIAQILinearModel;
  v21 = [(NWKUIAQIModel *)&v27 initWithName:a3 label:a4 categoryDescription:a5 color:a6 date:a7 expiration:a8];
  if (v21)
  {
    v22 = [v19 copy];
    colorIndices = v21->_colorIndices;
    v21->_colorIndices = v22;

    v24 = [v20 copy];
    index = v21->_index;
    v21->_index = v24;

    v21->_percentage = a11;
  }

  return v21;
}

@end