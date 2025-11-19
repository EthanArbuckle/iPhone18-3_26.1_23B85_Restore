@interface IDSServiceMetricContext
- (IDSServiceMetricContext)initWithCoder:(id)a3;
- (IDSServiceMetricContext)initWithTimestamp:(id)a3 identifier:(id)a4;
- (IDSServiceMetricContext)initWithTimestampDictionary:(id)a3 identifier:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSServiceMetricContext

- (IDSServiceMetricContext)initWithTimestamp:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSServiceMetricContext;
  v9 = [(IDSServiceMetricContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

- (IDSServiceMetricContext)initWithTimestampDictionary:(id)a3 identifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IDSServiceMetricContext;
  v9 = [(IDSServiceMetricContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestampDictionary, a3);
    objc_storeStrong(&v10->_identifier, a4);
  }

  return v10;
}

- (IDSServiceMetricContext)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = IDSServiceMetricContext;
  v5 = [(IDSServiceMetricContext *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"timestampDictionary"];
    timestampDictionary = v5->_timestampDictionary;
    v5->_timestampDictionary = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  timestamp = self->_timestamp;
  v5 = a3;
  [v5 encodeObject:timestamp forKey:@"timestamp"];
  [v5 encodeObject:self->_timestampDictionary forKey:@"timestampDictionary"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
}

@end