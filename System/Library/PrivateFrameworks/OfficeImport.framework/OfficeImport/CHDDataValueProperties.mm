@interface CHDDataValueProperties
+ (id)dataValueProperties;
- (CHDDataValueProperties)init;
- (NSString)description;
- (id)shallowCopyWithIndex:(unint64_t)index;
- (void)setDataLabel:(id)label;
- (void)setGraphicProperties:(id)properties;
- (void)setMarker:(id)marker;
@end

@implementation CHDDataValueProperties

- (CHDDataValueProperties)init
{
  v3.receiver = self;
  v3.super_class = CHDDataValueProperties;
  result = [(CHDDataValueProperties *)&v3 init];
  if (result)
  {
    result->mDataValueIndex = -1;
  }

  return result;
}

+ (id)dataValueProperties
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (id)shallowCopyWithIndex:(unint64_t)index
{
  dataValueProperties = [objc_opt_class() dataValueProperties];
  v6 = dataValueProperties;
  if (dataValueProperties)
  {
    [dataValueProperties setDataValueIndex:index];
    [v6 setGraphicProperties:self->mGraphicProperties];
    [v6 setMarker:self->mMarker];
    [v6 setDataLabel:self->mDataLabel];
    v7 = v6;
  }

  return v6;
}

- (void)setDataLabel:(id)label
{
  labelCopy = label;
  mDataLabel = self->mDataLabel;
  p_mDataLabel = &self->mDataLabel;
  if (mDataLabel != labelCopy)
  {
    v8 = labelCopy;
    objc_storeStrong(p_mDataLabel, label);
    labelCopy = v8;
  }
}

- (void)setGraphicProperties:(id)properties
{
  propertiesCopy = properties;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != propertiesCopy)
  {
    v8 = propertiesCopy;
    objc_storeStrong(p_mGraphicProperties, properties);
    propertiesCopy = v8;
  }
}

- (void)setMarker:(id)marker
{
  markerCopy = marker;
  mMarker = self->mMarker;
  p_mMarker = &self->mMarker;
  if (mMarker != markerCopy)
  {
    v8 = markerCopy;
    objc_storeStrong(p_mMarker, marker);
    markerCopy = v8;
  }
}

- (NSString)description
{
  v4.receiver = self;
  v4.super_class = CHDDataValueProperties;
  v2 = [(CHDDataValueProperties *)&v4 description];

  return v2;
}

@end