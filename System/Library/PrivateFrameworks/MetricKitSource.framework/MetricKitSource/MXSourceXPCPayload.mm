@interface MXSourceXPCPayload
- (MXSourceXPCPayload)initWithCoder:(id)coder;
- (MXSourceXPCPayload)initWithSourceID:(int64_t)d withDateStamp:(id)stamp andMetrics:(id)metrics;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MXSourceXPCPayload

- (MXSourceXPCPayload)initWithSourceID:(int64_t)d withDateStamp:(id)stamp andMetrics:(id)metrics
{
  stampCopy = stamp;
  metricsCopy = metrics;
  v14.receiver = self;
  v14.super_class = MXSourceXPCPayload;
  v11 = [(MXSourceXPCPayload *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_sourceID = d;
    objc_storeStrong(&v11->_datestamp, stamp);
    objc_storeStrong(&v12->_metrics, metrics);
  }

  return v12;
}

- (void)encodeWithCoder:(id)coder
{
  sourceID = self->_sourceID;
  coderCopy = coder;
  [coderCopy encodeInteger:sourceID forKey:@"sourceID"];
  [coderCopy encodeObject:self->_datestamp forKey:@"dateStamp"];
  [coderCopy encodeObject:self->_metrics forKey:@"metrics"];
}

- (MXSourceXPCPayload)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = MXSourceXPCPayload;
  v5 = [(MXSourceXPCPayload *)&v20 init];
  if (v5)
  {
    v5->_sourceID = [coderCopy decodeIntegerForKey:@"sourceID"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateStamp"];
    datestamp = v5->_datestamp;
    v5->_datestamp = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v8 setWithObjects:{v9, v10, v11, v12, v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v17;
  }

  return v5;
}

@end