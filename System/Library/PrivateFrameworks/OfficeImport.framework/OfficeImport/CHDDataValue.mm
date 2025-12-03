@interface CHDDataValue
+ (CHDDataValue)dataValueWithIndex:(int64_t)index value:(EDValue *)value;
+ (id)dataValue;
- (CHDDataValue)init;
- (CHDDataValue)initWithIndex:(int64_t)index value:(EDValue *)value;
- (id)contentFormatWithResources:(id)resources;
- (id)description;
- (void)setContentFormatWithResources:(id)resources resources:(id)a4;
- (void)setDataPoint:(CHDDataPoint *)point;
@end

@implementation CHDDataValue

+ (id)dataValue
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

- (CHDDataValue)init
{
  v3.receiver = self;
  v3.super_class = CHDDataValue;
  result = [(CHDDataValue *)&v3 init];
  if (result)
  {
    result->mDataPoint.index = -1;
    result->mDataPoint.contentFormatId = -1;
  }

  return result;
}

- (CHDDataValue)initWithIndex:(int64_t)index value:(EDValue *)value
{
  v9.receiver = self;
  v9.super_class = CHDDataValue;
  v6 = [(CHDDataValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mDataPoint.index = index;
    EDValue::operator=(&v6->mDataPoint.value, value);
  }

  return v7;
}

+ (CHDDataValue)dataValueWithIndex:(int64_t)index value:(EDValue *)value
{
  v4 = [objc_alloc(objc_opt_class()) initWithIndex:index value:value];

  return v4;
}

- (void)setDataPoint:(CHDDataPoint *)point
{
  self->mDataPoint.index = point->index;
  EDValue::operator=(&self->mDataPoint.value, &point->value);
  self->mDataPoint.contentFormatId = point->contentFormatId;
}

- (id)contentFormatWithResources:(id)resources
{
  contentFormats = [resources contentFormats];
  v5 = [contentFormats objectWithKey:self->mDataPoint.contentFormatId];

  return v5;
}

- (void)setContentFormatWithResources:(id)resources resources:(id)a4
{
  resourcesCopy = resources;
  v6 = a4;
  formatId = [resourcesCopy formatId];
  if (formatId == -1)
  {
    contentFormats = [v6 contentFormats];
    v9 = [contentFormats objectAtIndex:{objc_msgSend(contentFormats, "addOrEquivalentObject:", resourcesCopy)}];
    self->mDataPoint.contentFormatId = [v9 formatId];
  }

  else
  {
    self->mDataPoint.contentFormatId = formatId;
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = CHDDataValue;
  v2 = [(CHDDataValue *)&v4 description];

  return v2;
}

@end