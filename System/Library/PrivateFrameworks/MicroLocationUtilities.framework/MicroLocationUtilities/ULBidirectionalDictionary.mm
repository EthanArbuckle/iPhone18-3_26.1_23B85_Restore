@interface ULBidirectionalDictionary
- (ULBidirectionalDictionary)init;
- (id)keyForObject:(id)object;
- (id)objectForKey:(id)key;
- (void)setObject:(id)object forKey:(id)key;
@end

@implementation ULBidirectionalDictionary

- (ULBidirectionalDictionary)init
{
  v6.receiver = self;
  v6.super_class = ULBidirectionalDictionary;
  v2 = [(ULBidirectionalDictionary *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(ULBidirectionalDictionary *)v2 setKeyToValueMap:dictionary];

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    [(ULBidirectionalDictionary *)v2 setValueToKeyMap:dictionary2];
  }

  return v2;
}

- (void)setObject:(id)object forKey:(id)key
{
  keyCopy = key;
  objectCopy = object;
  keyToValueMap = [(ULBidirectionalDictionary *)self keyToValueMap];
  [keyToValueMap setObject:objectCopy forKey:keyCopy];

  valueToKeyMap = [(ULBidirectionalDictionary *)self valueToKeyMap];
  [valueToKeyMap setObject:keyCopy forKey:objectCopy];
}

- (id)objectForKey:(id)key
{
  keyCopy = key;
  keyToValueMap = [(ULBidirectionalDictionary *)self keyToValueMap];
  v6 = [keyToValueMap objectForKey:keyCopy];

  return v6;
}

- (id)keyForObject:(id)object
{
  objectCopy = object;
  valueToKeyMap = [(ULBidirectionalDictionary *)self valueToKeyMap];
  v6 = [valueToKeyMap objectForKey:objectCopy];

  return v6;
}

@end