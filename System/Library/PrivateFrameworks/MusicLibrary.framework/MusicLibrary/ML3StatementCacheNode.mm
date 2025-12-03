@interface ML3StatementCacheNode
- (ML3StatementCacheNode)initWithDictionaryKey:(id)key;
@end

@implementation ML3StatementCacheNode

- (ML3StatementCacheNode)initWithDictionaryKey:(id)key
{
  keyCopy = key;
  v9.receiver = self;
  v9.super_class = ML3StatementCacheNode;
  v5 = [(ML3StatementCacheNode *)&v9 init];
  if (v5)
  {
    v6 = [keyCopy copy];
    dictionaryKey = v5->_dictionaryKey;
    v5->_dictionaryKey = v6;
  }

  return v5;
}

@end