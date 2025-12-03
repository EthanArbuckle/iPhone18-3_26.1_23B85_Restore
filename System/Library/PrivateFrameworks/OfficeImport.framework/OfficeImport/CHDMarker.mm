@interface CHDMarker
- (CHDMarker)init;
- (id)description;
- (void)setGraphicProperties:(id)properties;
@end

@implementation CHDMarker

- (CHDMarker)init
{
  v3.receiver = self;
  v3.super_class = CHDMarker;
  result = [(CHDMarker *)&v3 init];
  if (result)
  {
    *&result->mSize = 0xFFFFFFFF00000000;
  }

  return result;
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

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDMarker;
  v2 = [(CHDMarker *)&v4 description];

  return v2;
}

@end