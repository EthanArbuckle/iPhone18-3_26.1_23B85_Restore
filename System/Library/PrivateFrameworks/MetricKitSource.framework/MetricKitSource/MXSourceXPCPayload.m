@interface MXSourceXPCPayload
- (MXSourceXPCPayload)initWithCoder:(id)a3;
- (MXSourceXPCPayload)initWithSourceID:(int64_t)a3 withDateStamp:(id)a4 andMetrics:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MXSourceXPCPayload

- (MXSourceXPCPayload)initWithSourceID:(int64_t)a3 withDateStamp:(id)a4 andMetrics:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = MXSourceXPCPayload;
  v11 = [(MXSourceXPCPayload *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_sourceID = a3;
    objc_storeStrong(&v11->_datestamp, a4);
    objc_storeStrong(&v12->_metrics, a5);
  }

  return v12;
}

- (void)encodeWithCoder:(id)a3
{
  sourceID = self->_sourceID;
  v5 = a3;
  [v5 encodeInteger:sourceID forKey:@"sourceID"];
  [v5 encodeObject:self->_datestamp forKey:@"dateStamp"];
  [v5 encodeObject:self->_metrics forKey:@"metrics"];
}

- (MXSourceXPCPayload)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = MXSourceXPCPayload;
  v5 = [(MXSourceXPCPayload *)&v20 init];
  if (v5)
  {
    v5->_sourceID = [v4 decodeIntegerForKey:@"sourceID"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateStamp"];
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
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"metrics"];
    metrics = v5->_metrics;
    v5->_metrics = v17;
  }

  return v5;
}

@end