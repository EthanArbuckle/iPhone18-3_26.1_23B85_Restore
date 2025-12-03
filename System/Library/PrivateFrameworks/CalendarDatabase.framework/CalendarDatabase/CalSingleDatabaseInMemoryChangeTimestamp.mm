@interface CalSingleDatabaseInMemoryChangeTimestamp
- (CalSingleDatabaseInMemoryChangeTimestamp)init;
- (CalSingleDatabaseInMemoryChangeTimestamp)initWithCoder:(id)coder;
- (CalSingleDatabaseInMemoryChangeTimestamp)initWithTimestampForMyself:(unint64_t)myself others:(unint64_t)others;
- (void)encodeWithCoder:(id)coder;
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

- (CalSingleDatabaseInMemoryChangeTimestamp)initWithTimestampForMyself:(unint64_t)myself others:(unint64_t)others
{
  v7.receiver = self;
  v7.super_class = CalSingleDatabaseInMemoryChangeTimestamp;
  result = [(CalSingleDatabaseInMemoryChangeTimestamp *)&v7 init];
  if (result)
  {
    result->_others = others;
    result->_myself = myself;
  }

  return result;
}

- (CalSingleDatabaseInMemoryChangeTimestamp)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"myself"];
  v6 = [coderCopy decodeInt64ForKey:@"others"];

  return [(CalSingleDatabaseInMemoryChangeTimestamp *)self initWithTimestampForMyself:v5 others:v6];
}

- (void)encodeWithCoder:(id)coder
{
  myself = self->_myself;
  coderCopy = coder;
  [coderCopy encodeInt64:myself forKey:@"myself"];
  [coderCopy encodeInt64:self->_others forKey:@"others"];
}

@end