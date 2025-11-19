@interface INFNumber
+ (id)numberWithIdentifier:(id)a3;
- (INFNumber)initWithIdentifier:(id)a3;
- (id)contributingSentenceContext;
- (id)stringForContext:(id)a3;
@end

@implementation INFNumber

+ (id)numberWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithIdentifier:v4];

  return v5;
}

- (id)stringForContext:(id)a3
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

- (INFNumber)initWithIdentifier:(id)a3
{
  v5 = a3;
  v6 = [(INFNumber *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    value = v7->_value;
    v7->_value = &unk_28676F068;
  }

  return v7;
}

@end