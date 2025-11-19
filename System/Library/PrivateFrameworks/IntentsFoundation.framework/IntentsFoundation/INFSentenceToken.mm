@interface INFSentenceToken
- (id)dictionaryRepresentation;
- (id)stringForContext:(id)a3;
@end

@implementation INFSentenceToken

- (id)dictionaryRepresentation
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"You must override %@ in a subclass", v4}];

  return 0;
}

- (id)stringForContext:(id)a3
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];

  return 0;
}

@end