@interface CNMetricsReporterSpiedEntry
- (BOOL)isEqual:(id)equal;
- (CNMetricsReporterSpiedEntry)initWithCoder:(id)coder;
- (CNMetricsReporterSpiedEntry)initWithDictionary:(id)dictionary event:(id)event logged:(BOOL)logged;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNMetricsReporterSpiedEntry

- (CNMetricsReporterSpiedEntry)initWithDictionary:(id)dictionary event:(id)event logged:(BOOL)logged
{
  dictionaryCopy = dictionary;
  eventCopy = event;
  v17.receiver = self;
  v17.super_class = CNMetricsReporterSpiedEntry;
  v10 = [(CNMetricsReporterSpiedEntry *)&v17 init];
  if (v10)
  {
    v11 = [dictionaryCopy copy];
    dictionary = v10->_dictionary;
    v10->_dictionary = v11;

    v13 = [eventCopy copy];
    event = v10->_event;
    v10->_event = v13;

    v10->_logged = logged;
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
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = 1;
  if (self != equalCopy)
  {
    if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || self->_logged != equalCopy->_logged || (event = self->_event, event | equalCopy->_event) && ![(NSString *)event isEqual:?]|| (dictionary = self->_dictionary, dictionary | equalCopy->_dictionary) && ![(NSMutableDictionary *)dictionary isEqual:?])
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

- (CNMetricsReporterSpiedEntry)initWithCoder:(id)coder
{
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dictionary"];

  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"event"];
  v10 = [coderCopy decodeBoolForKey:@"logged"];

  v11 = [(CNMetricsReporterSpiedEntry *)self initWithDictionary:v8 event:v9 logged:v10];
  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  dictionary = self->_dictionary;
  coderCopy = coder;
  [coderCopy encodeObject:dictionary forKey:@"dictionary"];
  [coderCopy encodeObject:self->_event forKey:@"event"];
  [coderCopy encodeBool:self->_logged forKey:@"logged"];
}

@end