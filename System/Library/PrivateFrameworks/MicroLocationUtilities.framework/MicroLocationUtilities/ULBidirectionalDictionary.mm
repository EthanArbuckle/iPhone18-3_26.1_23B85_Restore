@interface ULBidirectionalDictionary
- (ULBidirectionalDictionary)init;
- (id)keyForObject:(id)a3;
- (id)objectForKey:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
@end

@implementation ULBidirectionalDictionary

- (ULBidirectionalDictionary)init
{
  v6.receiver = self;
  v6.super_class = ULBidirectionalDictionary;
  v2 = [(ULBidirectionalDictionary *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    [(ULBidirectionalDictionary *)v2 setKeyToValueMap:v3];

    v4 = [MEMORY[0x277CBEB38] dictionary];
    [(ULBidirectionalDictionary *)v2 setValueToKeyMap:v4];
  }

  return v2;
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ULBidirectionalDictionary *)self keyToValueMap];
  [v8 setObject:v7 forKey:v6];

  v9 = [(ULBidirectionalDictionary *)self valueToKeyMap];
  [v9 setObject:v6 forKey:v7];
}

- (id)objectForKey:(id)a3
{
  v4 = a3;
  v5 = [(ULBidirectionalDictionary *)self keyToValueMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (id)keyForObject:(id)a3
{
  v4 = a3;
  v5 = [(ULBidirectionalDictionary *)self valueToKeyMap];
  v6 = [v5 objectForKey:v4];

  return v6;
}

@end