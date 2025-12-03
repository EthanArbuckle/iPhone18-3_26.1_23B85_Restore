@interface INFNumber
+ (id)numberWithIdentifier:(id)identifier;
- (INFNumber)initWithIdentifier:(id)identifier;
- (id)contributingSentenceContext;
- (id)stringForContext:(id)context;
@end

@implementation INFNumber

+ (id)numberWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[self alloc] initWithIdentifier:identifierCopy];

  return v5;
}

- (id)stringForContext:(id)context
{
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  [v4 setNumberStyle:1];
  v5 = [v4 stringFromNumber:self->_value];

  return v5;
}

- (id)contributingSentenceContext
{
  v3 = +[INFSentenceContext sentenceContext];
  [v3 setNumber:self->_value];

  return v3;
}

- (INFNumber)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6 = [(INFNumber *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, identifier);
    value = v7->_value;
    v7->_value = &unk_28676F068;
  }

  return v7;
}

@end