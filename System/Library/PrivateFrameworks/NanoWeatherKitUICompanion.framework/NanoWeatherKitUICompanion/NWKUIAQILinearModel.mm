@interface NWKUIAQILinearModel
- (NWKUIAQILinearModel)initWithName:(id)name label:(id)label categoryDescription:(id)description color:(id)color date:(id)date expiration:(id)expiration colorIndices:(id)indices index:(id)self0 percentage:(double)self1;
@end

@implementation NWKUIAQILinearModel

- (NWKUIAQILinearModel)initWithName:(id)name label:(id)label categoryDescription:(id)description color:(id)color date:(id)date expiration:(id)expiration colorIndices:(id)indices index:(id)self0 percentage:(double)self1
{
  indicesCopy = indices;
  indexCopy = index;
  v27.receiver = self;
  v27.super_class = NWKUIAQILinearModel;
  v21 = [(NWKUIAQIModel *)&v27 initWithName:name label:label categoryDescription:description color:color date:date expiration:expiration];
  if (v21)
  {
    v22 = [indicesCopy copy];
    colorIndices = v21->_colorIndices;
    v21->_colorIndices = v22;

    v24 = [indexCopy copy];
    index = v21->_index;
    v21->_index = v24;

    v21->_percentage = percentage;
  }

  return v21;
}

@end