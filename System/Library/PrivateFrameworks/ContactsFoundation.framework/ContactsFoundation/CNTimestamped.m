@interface CNTimestamped
+ (id)timestampedWithValue:(id)a3 timestamp:(double)a4;
+ (id)wrapTransformWithScheduler:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CNTimestamped)initWithValue:(id)a3 timestamp:(double)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation CNTimestamped

+ (id)wrapTransformWithScheduler:(id)a3
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__CNTimestamped_wrapTransformWithScheduler___block_invoke;
  v8[3] = &unk_1E6ED7598;
  v9 = v4;
  v10 = a1;
  v5 = v4;
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

+ (id)timestampedWithValue:(id)a3 timestamp:(double)a4
{
  v6 = a3;
  v7 = [[a1 alloc] initWithValue:v6 timestamp:a4];

  return v7;
}

- (CNTimestamped)initWithValue:(id)a3 timestamp:(double)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CNTimestamped;
  v8 = [(CNTimestamped *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_value, a3);
    v9->_timestamp = a4;
    v10 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD98];
  [(CNTimestamped *)self timestamp];
  v4 = [v3 numberWithDouble:?];
  v5 = [(CNTimestamped *)self value];
  v6 = [CNDescriptionBuilder descriptionForObject:self withNamesAndObjects:@"timestamp", v4, @"value", v5, 0];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __25__CNTimestamped_isEqual___block_invoke;
  v14[3] = &unk_1E6ED60C8;
  v14[4] = self;
  v15 = v4;
  aBlock = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __25__CNTimestamped_isEqual___block_invoke_2;
  v11 = &unk_1E6ED60C8;
  v12 = self;
  v13 = v15;
  v5 = v15;
  v6 = _Block_copy(&aBlock);
  LOBYTE(self) = [CNEqualsBuilder isObject:v5 memberOfSameClassAndEqualTo:self withBlocks:v14, v6, 0, aBlock, v9, v10, v11, v12];

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
  v2 = [(CNTimestamped *)self value];
  v3 = [v2 hash];

  return v3;
}

@end