@interface HFMutableItemUpdateOutcome
- (HFMutableItemUpdateOutcome)initWithResults:(id)results type:(unint64_t)type;
- (id)allKeys;
- (id)copyWithZone:(_NSZone *)zone;
- (void)addResultsFromDictionary:(id)dictionary;
- (void)addResultsFromOutcome:(id)outcome;
- (void)removeObjectForKey:(id)key;
- (void)removeObjectsForKeys:(id)keys;
- (void)safeSetObject:(id)object forKey:(id)key;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)setResults:(id)results;
@end

@implementation HFMutableItemUpdateOutcome

- (HFMutableItemUpdateOutcome)initWithResults:(id)results type:(unint64_t)type
{
  resultsCopy = results;
  v11.receiver = self;
  v11.super_class = HFMutableItemUpdateOutcome;
  v7 = [(HFItemUpdateOutcome *)&v11 initWithResults:resultsCopy type:type];
  if (v7)
  {
    v8 = [resultsCopy mutableCopy];
    mutableResults = v7->_mutableResults;
    v7->_mutableResults = v8;
  }

  return v7;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  objectCopy = object;
  mutableResults = [(HFMutableItemUpdateOutcome *)self mutableResults];
  [mutableResults setObject:objectCopy forKeyedSubscript:subscriptCopy];
}

- (void)safeSetObject:(id)object forKey:(id)key
{
  if (object)
  {
    keyCopy = key;
    objectCopy = object;
    mutableResults = [(HFMutableItemUpdateOutcome *)self mutableResults];
    [mutableResults setObject:objectCopy forKey:keyCopy];
  }
}

- (void)setResults:(id)results
{
  v4 = [results mutableCopy];
  [(HFMutableItemUpdateOutcome *)self setMutableResults:v4];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HFItemUpdateOutcome alloc];
  results = [(HFMutableItemUpdateOutcome *)self results];
  v6 = [(HFItemUpdateOutcome *)v4 initWithResults:results type:[(HFItemUpdateOutcome *)self outcomeType]];

  return v6;
}

- (id)allKeys
{
  mutableResults = [(HFMutableItemUpdateOutcome *)self mutableResults];
  allKeys = [mutableResults allKeys];

  return allKeys;
}

- (void)addResultsFromOutcome:(id)outcome
{
  results = [outcome results];
  [(HFMutableItemUpdateOutcome *)self addResultsFromDictionary:results];
}

- (void)addResultsFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  mutableResults = [(HFMutableItemUpdateOutcome *)self mutableResults];
  [mutableResults addEntriesFromDictionary:dictionaryCopy];
}

- (void)removeObjectsForKeys:(id)keys
{
  keysCopy = keys;
  mutableResults = [(HFMutableItemUpdateOutcome *)self mutableResults];
  [mutableResults removeObjectsForKeys:keysCopy];
}

- (void)removeObjectForKey:(id)key
{
  keyCopy = key;
  mutableResults = [(HFMutableItemUpdateOutcome *)self mutableResults];
  [mutableResults removeObjectForKey:keyCopy];
}

@end