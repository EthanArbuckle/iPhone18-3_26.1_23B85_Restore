@interface CHDDataValueProperties
+ (id)dataValueProperties;
- (CHDDataValueProperties)init;
- (NSString)description;
- (id)shallowCopyWithIndex:(unint64_t)a3;
- (void)setDataLabel:(id)a3;
- (void)setGraphicProperties:(id)a3;
- (void)setMarker:(id)a3;
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

- (id)shallowCopyWithIndex:(unint64_t)a3
{
  v5 = [objc_opt_class() dataValueProperties];
  v6 = v5;
  if (v5)
  {
    [v5 setDataValueIndex:a3];
    [v6 setGraphicProperties:self->mGraphicProperties];
    [v6 setMarker:self->mMarker];
    [v6 setDataLabel:self->mDataLabel];
    v7 = v6;
  }

  return v6;
}

- (void)setDataLabel:(id)a3
{
  v5 = a3;
  mDataLabel = self->mDataLabel;
  p_mDataLabel = &self->mDataLabel;
  if (mDataLabel != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mDataLabel, a3);
    v5 = v8;
  }
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

- (void)setMarker:(id)a3
{
  v5 = a3;
  mMarker = self->mMarker;
  p_mMarker = &self->mMarker;
  if (mMarker != v5)
  {
    v8 = v5;
    objc_storeStrong(p_mMarker, a3);
    v5 = v8;
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