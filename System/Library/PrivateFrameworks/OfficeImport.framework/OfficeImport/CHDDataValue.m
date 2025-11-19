@interface CHDDataValue
+ (CHDDataValue)dataValueWithIndex:(int64_t)a3 value:(EDValue *)a4;
+ (id)dataValue;
- (CHDDataValue)init;
- (CHDDataValue)initWithIndex:(int64_t)a3 value:(EDValue *)a4;
- (id)contentFormatWithResources:(id)a3;
- (id)description;
- (void)setContentFormatWithResources:(id)a3 resources:(id)a4;
- (void)setDataPoint:(CHDDataPoint *)a3;
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

- (CHDDataValue)initWithIndex:(int64_t)a3 value:(EDValue *)a4
{
  v9.receiver = self;
  v9.super_class = CHDDataValue;
  v6 = [(CHDDataValue *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->mDataPoint.index = a3;
    EDValue::operator=(&v6->mDataPoint.value, a4);
  }

  return v7;
}

+ (CHDDataValue)dataValueWithIndex:(int64_t)a3 value:(EDValue *)a4
{
  v4 = [objc_alloc(objc_opt_class()) initWithIndex:a3 value:a4];

  return v4;
}

- (void)setDataPoint:(CHDDataPoint *)a3
{
  self->mDataPoint.index = a3->index;
  EDValue::operator=(&self->mDataPoint.value, &a3->value);
  self->mDataPoint.contentFormatId = a3->contentFormatId;
}

- (id)contentFormatWithResources:(id)a3
{
  v4 = [a3 contentFormats];
  v5 = [v4 objectWithKey:self->mDataPoint.contentFormatId];

  return v5;
}

- (void)setContentFormatWithResources:(id)a3 resources:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [v10 formatId];
  if (v7 == -1)
  {
    v8 = [v6 contentFormats];
    v9 = [v8 objectAtIndex:{objc_msgSend(v8, "addOrEquivalentObject:", v10)}];
    self->mDataPoint.contentFormatId = [v9 formatId];
  }

  else
  {
    self->mDataPoint.contentFormatId = v7;
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