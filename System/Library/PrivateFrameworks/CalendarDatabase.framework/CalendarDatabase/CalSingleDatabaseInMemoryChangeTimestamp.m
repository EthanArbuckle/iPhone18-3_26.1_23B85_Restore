@interface CalSingleDatabaseInMemoryChangeTimestamp
- (CalSingleDatabaseInMemoryChangeTimestamp)init;
- (CalSingleDatabaseInMemoryChangeTimestamp)initWithCoder:(id)a3;
- (CalSingleDatabaseInMemoryChangeTimestamp)initWithTimestampForMyself:(unint64_t)a3 others:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CalSingleDatabaseInMemoryChangeTimestamp

- (CalSingleDatabaseInMemoryChangeTimestamp)init
{
  v5.receiver = self;
  v5.super_class = CalSingleDatabaseInMemoryChangeTimestamp;
  v2 = [(CalSingleDatabaseInMemoryChangeTimestamp *)&v5 init];
  if (v2)
  {
    v3 = CalMonotonicTime();
    v2->_others = v3;
    v2->_myself = v3;
  }

  return v2;
}

- (CalSingleDatabaseInMemoryChangeTimestamp)initWithTimestampForMyself:(unint64_t)a3 others:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = CalSingleDatabaseInMemoryChangeTimestamp;
  result = [(CalSingleDatabaseInMemoryChangeTimestamp *)&v7 init];
  if (result)
  {
    result->_others = a4;
    result->_myself = a3;
  }

  return result;
}

- (CalSingleDatabaseInMemoryChangeTimestamp)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"myself"];
  v6 = [v4 decodeInt64ForKey:@"others"];

  return [(CalSingleDatabaseInMemoryChangeTimestamp *)self initWithTimestampForMyself:v5 others:v6];
}

- (void)encodeWithCoder:(id)a3
{
  myself = self->_myself;
  v5 = a3;
  [v5 encodeInt64:myself forKey:@"myself"];
  [v5 encodeInt64:self->_others forKey:@"others"];
}

@end