@interface OSLogEventStreamPosition
- (OSLogEventStreamPosition)initWithCoder:(id)coder;
- (OSLogEventStreamPosition)initWithSource:(const char *)source bootUUID:(const char *)d time:(unint64_t)time;
- (void)encodeWithCoder:(id)coder;
@end

@implementation OSLogEventStreamPosition

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x277CCAD78];
  coderCopy = coder;
  v7 = [[v4 alloc] initWithUUIDBytes:self->_source];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_uuid];
  [coderCopy encodeObject:v7 forKey:@"Source"];
  [coderCopy encodeObject:v6 forKey:@"UUID"];
  [coderCopy encodeInt64:self->_ct forKey:@"Time"];
}

- (OSLogEventStreamPosition)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(OSLogEventStreamPosition *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Source"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    [v6 getUUIDBytes:v5->_source];
    [v7 getUUIDBytes:v5->_uuid];
    v5->_ct = [coderCopy decodeInt64ForKey:@"Time"];
  }

  return v5;
}

- (OSLogEventStreamPosition)initWithSource:(const char *)source bootUUID:(const char *)d time:(unint64_t)time
{
  result = [(OSLogEventStreamPosition *)self init];
  if (result)
  {
    *result->_source = *source;
    *result->_uuid = *d;
    result->_ct = time;
  }

  return result;
}

@end