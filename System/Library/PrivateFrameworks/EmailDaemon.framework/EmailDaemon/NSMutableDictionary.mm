@interface NSMutableDictionary
- (void)addObject:(id)object toSetForKey:(id)key;
@end

@implementation NSMutableDictionary

- (void)addObject:(id)object toSetForKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  if (objectCopy && keyCopy)
  {
    v7 = [(NSMutableDictionary *)self objectForKey:keyCopy];
    if (!v7)
    {
      v7 = [[NSMutableSet alloc] initWithCapacity:0];
      [(NSMutableDictionary *)self setObject:v7 forKeyedSubscript:keyCopy];
    }

    [v7 addObject:objectCopy];
  }
}

@end