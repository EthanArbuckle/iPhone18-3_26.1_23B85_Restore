@interface CHDMarker
- (CHDMarker)init;
- (id)description;
- (void)setGraphicProperties:(id)a3;
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

- (void)setGraphicProperties:(id)a3
{
  v5 = a3;
  mGraphicProperties = self->mGraphicProperties;
  p_mGraphicProperties = &self->mGraphicProperties;
  if (mGraphicProperties != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mGraphicProperties, a3);
    v5 = v8;
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