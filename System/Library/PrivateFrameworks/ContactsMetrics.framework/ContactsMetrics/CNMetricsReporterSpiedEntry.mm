@interface CNMetricsReporterSpiedEntry
- (BOOL)isEqual:(id)a3;
- (CNMetricsReporterSpiedEntry)initWithCoder:(id)a3;
- (CNMetricsReporterSpiedEntry)initWithDictionary:(id)a3 event:(id)a4 logged:(BOOL)a5;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNMetricsReporterSpiedEntry

- (CNMetricsReporterSpiedEntry)initWithDictionary:(id)a3 event:(id)a4 logged:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v17.receiver = self;
  v17.super_class = CNMetricsReporterSpiedEntry;
  v10 = [(CNMetricsReporterSpiedEntry *)&v17 init];
  if (v10)
  {
    v11 = [v8 copy];
    dictionary = v10->_dictionary;
    v10->_dictionary = v11;

    v13 = [v9 copy];
    event = v10->_event;
    v10->_event = v13;

    v10->_logged = a5;
    v15 = v10;
  }

  return v10;
}

- (id)description
{
  v3 = [MEMORY[0x277CFBDF0] descriptionBuilderWithObject:self];
  v4 = [v3 appendName:@"event" object:self->_event];
  v5 = [v3 appendName:@"logged" BOOLValue:self->_logged];
  v6 = [v3 appendName:@"dictionary" object:self->_dictionary];
  v7 = [v3 build];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7 = 1;
  if (self != v4)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || self->_logged != v4->_logged || (event = self->_event, event | v4->_event) && ![(NSString *)event isEqual:?]|| (dictionary = self->_dictionary, dictionary | v4->_dictionary) && ![(NSMutableDictionary *)dictionary isEqual:?])
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  logged = self->_logged;
  v4 = [MEMORY[0x277CFBE38] objectHash:self->_event] - logged + 32 * logged;
  return [MEMORY[0x277CFBE38] objectHash:self->_dictionary] - v4 + 32 * v4 + 506447;
}

- (CNMetricsReporterSpiedEntry)initWithCoder:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v5 decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  v10 = [v5 decodeBoolForKey:@"logged"];

  v11 = [(CNMetricsReporterSpiedEntry *)self initWithDictionary:v8 event:v9 logged:v10];
  return v11;
}

- (void)encodeWithCoder:(id)a3
{
  dictionary = self->_dictionary;
  v5 = a3;
  [v5 encodeObject:dictionary forKey:@"dictionary"];
  [v5 encodeObject:self->_event forKey:@"event"];
  [v5 encodeBool:self->_logged forKey:@"logged"];
}

@end