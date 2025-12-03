@interface IDSServiceMetricContext
- (IDSServiceMetricContext)initWithCoder:(id)coder;
- (IDSServiceMetricContext)initWithTimestamp:(id)timestamp identifier:(id)identifier;
- (IDSServiceMetricContext)initWithTimestampDictionary:(id)dictionary identifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSServiceMetricContext

- (IDSServiceMetricContext)initWithTimestamp:(id)timestamp identifier:(id)identifier
{
  timestampCopy = timestamp;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = IDSServiceMetricContext;
  v9 = [(IDSServiceMetricContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestamp, timestamp);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

- (IDSServiceMetricContext)initWithTimestampDictionary:(id)dictionary identifier:(id)identifier
{
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  v12.receiver = self;
  v12.super_class = IDSServiceMetricContext;
  v9 = [(IDSServiceMetricContext *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_timestampDictionary, dictionary);
    objc_storeStrong(&v10->_identifier, identifier);
  }

  return v10;
}

- (IDSServiceMetricContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = IDSServiceMetricContext;
  v5 = [(IDSServiceMetricContext *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"timestamp"];
    timestamp = v5->_timestamp;
    v5->_timestamp = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"timestampDictionary"];
    timestampDictionary = v5->_timestampDictionary;
    v5->_timestampDictionary = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  timestamp = self->_timestamp;
  coderCopy = coder;
  [coderCopy encodeObject:timestamp forKey:@"timestamp"];
  [coderCopy encodeObject:self->_timestampDictionary forKey:@"timestampDictionary"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

@end