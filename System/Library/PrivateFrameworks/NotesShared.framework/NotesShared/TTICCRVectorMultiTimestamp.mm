@interface TTICCRVectorMultiTimestamp
- (TTICCRVectorMultiTimestamp)initWithCapacity:(unint64_t)capacity;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation TTICCRVectorMultiTimestamp

- (TTICCRVectorMultiTimestamp)initWithCapacity:(unint64_t)capacity
{
  for (i = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
  {
    v6 = objc_alloc_init(ICTTCRVectorTimestamp);
    [i addObject:v6];
  }

  v9.receiver = self;
  v9.super_class = TTICCRVectorMultiTimestamp;
  v7 = [(ICTTVectorMultiTimestamp *)&v9 initWithTimestamps:i];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TTICCRVectorMultiTimestamp allocWithZone:zone];
  timestamps = [(ICTTVectorMultiTimestamp *)self timestamps];
  v6 = -[TTICCRVectorMultiTimestamp initWithCapacity:](v4, "initWithCapacity:", [timestamps count]);

  [(ICTTVectorMultiTimestamp *)v6 mergeWithTimestamp:self];
  return v6;
}

@end