@interface _EDDisplayNameGroupingTrieNode
- (NSArray)addressIDs;
- (NSDictionary)children;
- (_EDDisplayNameGroupingTrieNode)initWithValue:(id)value;
- (void)addChild:(id)child;
@end

@implementation _EDDisplayNameGroupingTrieNode

- (_EDDisplayNameGroupingTrieNode)initWithValue:(id)value
{
  valueCopy = value;
  v13.receiver = self;
  v13.super_class = _EDDisplayNameGroupingTrieNode;
  v5 = [(_EDDisplayNameGroupingTrieNode *)&v13 init];
  if (v5)
  {
    v6 = [valueCopy copy];
    value = v5->_value;
    v5->_value = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    children = v5->_children;
    v5->_children = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    addressIDs = v5->_addressIDs;
    v5->_addressIDs = v10;
  }

  return v5;
}

- (NSDictionary)children
{
  v2 = [(NSMutableDictionary *)self->_children copy];

  return v2;
}

- (NSArray)addressIDs
{
  v2 = [(NSMutableArray *)self->_addressIDs copy];

  return v2;
}

- (void)addChild:(id)child
{
  childCopy = child;
  v4 = [(NSMutableDictionary *)self->_children objectForKeyedSubscript:?];

  if (!v4)
  {
    v5 = [[_EDDisplayNameGroupingTrieNode alloc] initWithValue:childCopy];
    [(NSMutableDictionary *)self->_children setObject:v5 forKeyedSubscript:childCopy];
  }
}

@end