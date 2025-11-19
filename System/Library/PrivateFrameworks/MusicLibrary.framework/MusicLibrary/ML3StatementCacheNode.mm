@interface ML3StatementCacheNode
- (ML3StatementCacheNode)initWithDictionaryKey:(id)a3;
@end

@implementation ML3StatementCacheNode

- (ML3StatementCacheNode)initWithDictionaryKey:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3StatementCacheNode;
  v5 = [(ML3StatementCacheNode *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    dictionaryKey = v5->_dictionaryKey;
    v5->_dictionaryKey = v6;
  }

  return v5;
}

@end