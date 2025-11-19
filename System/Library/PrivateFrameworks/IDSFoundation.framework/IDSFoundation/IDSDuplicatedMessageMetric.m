@interface IDSDuplicatedMessageMetric
- (IDSDuplicatedMessageMetric)init;
- (NSDictionary)dictionaryRepresentation;
@end

@implementation IDSDuplicatedMessageMetric

- (NSDictionary)dictionaryRepresentation
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);

  return v2;
}

- (IDSDuplicatedMessageMetric)init
{
  v3.receiver = self;
  v3.super_class = IDSDuplicatedMessageMetric;
  return [(IDSDuplicatedMessageMetric *)&v3 init];
}

@end