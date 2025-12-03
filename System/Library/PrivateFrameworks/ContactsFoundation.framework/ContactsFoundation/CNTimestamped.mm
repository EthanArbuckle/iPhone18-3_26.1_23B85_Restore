@interface CNTimestamped
+ (id)timestampedWithValue:(id)value timestamp:(double)timestamp;
+ (id)wrapTransformWithScheduler:(id)scheduler;
- (BOOL)isEqual:(id)equal;
- (CNTimestamped)initWithValue:(id)value timestamp:(double)timestamp;
- (id)description;
- (unint64_t)hash;
@end

@implementation CNTimestamped

+ (id)wrapTransformWithScheduler:(id)scheduler
{
  schedulerCopy = scheduler;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CNTimestamped_wrapTransformWithScheduler___block_invoke;
  v8[3] = &unk_1E6ED7598;
  v9 = schedulerCopy;
  selfCopy = self;
  v5 = schedulerCopy;
  v6 = [v8 copy];

  return v6;
}

id __44__CNTimestamped_wrapTransformWithScheduler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 alloc];
  [*(a1 + 32) timestamp];
  v6 = [v5 initWithValue:v4 timestamp:?];

  return v6;
}

+ (id)timestampedWithValue:(id)value timestamp:(double)timestamp
{
  valueCopy = value;
  v7 = [[self alloc] initWithValue:valueCopy timestamp:timestamp];

  return v7;
}

- (CNTimestamped)initWithValue:(id)value timestamp:(double)timestamp
{
  valueCopy = value;
  v12.receiver = self;
  v12.super_class = CNTimestamped;
  v8 = [(CNTimestamped *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, value);
    v9->_timestamp = timestamp;
    v10 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD98];
  [(CNTimestamped *)self timestamp];
  v4 = [v3 numberWithDouble:?];
  value = [(CNTimestamped *)self value];
  v6 = [CNDescriptionBuilder descriptionForObject:self withNamesAndObjects:@"timestamp", v4, @"value", value, 0];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __25__CNTimestamped_isEqual___block_invoke;
  v14[3] = &unk_1E6ED60C8;
  v14[4] = self;
  v15 = equalCopy;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __25__CNTimestamped_isEqual___block_invoke_2;
  v11 = &unk_1E6ED60C8;
  selfCopy = self;
  v13 = v15;
  v5 = v15;
  v6 = _Block_copy(&aBlock);
  LOBYTE(self) = [CNEqualsBuilder isObject:v5 memberOfSameClassAndEqualTo:self withBlocks:v14, v6, 0, aBlock, v9, v10, v11, selfCopy];

  return self;
}

BOOL __25__CNTimestamped_isEqual___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) value];
  v3 = [*(a1 + 40) value];
  v4 = [CNEqualsBuilder isObject:v2 equalToOther:v3];

  return v4;
}

BOOL __25__CNTimestamped_isEqual___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) timestamp];
  v3 = v2;
  [*(a1 + 40) timestamp];

  return [CNEqualsBuilder isDouble:v3 equalToOther:v4 withAccuracy:0.000001];
}

- (unint64_t)hash
{
  value = [(CNTimestamped *)self value];
  v3 = [value hash];

  return v3;
}

@end