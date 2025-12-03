@interface CalculateUnitsTrieNode
+ (id)nodeWithTrieNode:(id)node;
- (BOOL)containsConversionVerb;
- (BOOL)containsCurrency;
- (BOOL)isMatch;
- (CalculateUnitsTrieNode)initWithTrieNode:(id)node;
- (id)objectForKey:(id)key;
@end

@implementation CalculateUnitsTrieNode

- (BOOL)containsCurrency
{
  object = [(TrieNode *)self->_node object];
  containsCurrency = [object containsCurrency];

  return containsCurrency;
}

- (BOOL)containsConversionVerb
{
  object = [(TrieNode *)self->_node object];
  if ([object containsFrom])
  {
    containsTo = 1;
  }

  else
  {
    containsTo = [object containsTo];
  }

  return containsTo;
}

- (BOOL)isMatch
{
  object = [(TrieNode *)self->_node object];
  if ([object containsUnit] & 1) != 0 || (objc_msgSend(object, "containsFrom"))
  {
    containsTo = 1;
  }

  else
  {
    containsTo = [object containsTo];
  }

  return containsTo;
}

- (id)objectForKey:(id)key
{
  v3 = [(TrieNode *)&self->_node->super.isa objectForKeyedSubscript:key];
  if (v3)
  {
    v4 = [CalculateUnitsTrieNode nodeWithTrieNode:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CalculateUnitsTrieNode)initWithTrieNode:(id)node
{
  nodeCopy = node;
  v9.receiver = self;
  v9.super_class = CalculateUnitsTrieNode;
  v6 = [(CalculateUnitsTrieNode *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_node, node);
  }

  return v7;
}

+ (id)nodeWithTrieNode:(id)node
{
  nodeCopy = node;
  v4 = [[CalculateUnitsTrieNode alloc] initWithTrieNode:nodeCopy];

  return v4;
}

@end