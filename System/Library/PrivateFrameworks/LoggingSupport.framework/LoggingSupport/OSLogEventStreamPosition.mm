@interface OSLogEventStreamPosition
- (OSLogEventStreamPosition)initWithCoder:(id)a3;
- (OSLogEventStreamPosition)initWithSource:(const char *)a3 bootUUID:(const char *)a4 time:(unint64_t)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation OSLogEventStreamPosition

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x277CCAD78];
  v5 = a3;
  v7 = [[v4 alloc] initWithUUIDBytes:self->_source];
  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_uuid];
  [v5 encodeObject:v7 forKey:@"Source"];
  [v5 encodeObject:v6 forKey:@"UUID"];
  [v5 encodeInt64:self->_ct forKey:@"Time"];
}

- (OSLogEventStreamPosition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(OSLogEventStreamPosition *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Source"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    [v6 getUUIDBytes:v5->_source];
    [v7 getUUIDBytes:v5->_uuid];
    v5->_ct = [v4 decodeInt64ForKey:@"Time"];
  }

  return v5;
}

- (OSLogEventStreamPosition)initWithSource:(const char *)a3 bootUUID:(const char *)a4 time:(unint64_t)a5
{
  result = [(OSLogEventStreamPosition *)self init];
  if (result)
  {
    *result->_source = *a3;
    *result->_uuid = *a4;
    result->_ct = a5;
  }

  return result;
}

@end