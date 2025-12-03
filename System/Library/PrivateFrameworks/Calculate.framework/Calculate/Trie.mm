@interface Trie
+ (void)enumerateCharactersInKey:(uint64_t)key range:(uint64_t)range usingBlock:(void *)block;
- (Trie)init;
- (id)objectForKeyedSubscript:(uint64_t)subscript;
- (void)compress;
- (void)dealloc;
- (void)setObject:(void *)object forKeyedSubscript:;
- (void)writeCharacter:(unsigned __int8)character;
- (void)writeNode:(id)node;
@end

@implementation Trie

- (Trie)init
{
  v11.receiver = self;
  v11.super_class = Trie;
  v2 = [(Trie *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_characterSize = 100;
    v2->_characters = malloc_type_calloc(0x64uLL, 1uLL, 0x100004077774924uLL);
    v3->_nodeSize = 100;
    v3->_nodes = malloc_type_calloc(0x64uLL, 0xCuLL, 0x10000403E1C8BA9uLL);
    v3->_nodeCount = 1;
    v4 = [TrieNode nodeWithTrie:v3 node:0 offset:0];
    root = v3->_root;
    v3->_root = v4;

    v3->_firstByteCache = malloc_type_calloc(0x100uLL, 4uLL, 0x100004052888210uLL);
    v3->_autocompress = 0;
    v6 = MEMORY[0x1E695DF70];
    v7 = objc_opt_new();
    v8 = [v6 arrayWithObject:v7];
    objects = v3->_objects;
    v3->_objects = v8;
  }

  return v3;
}

- (void)writeNode:(id)node
{
  var3 = node.var3;
  nodeCopy = node;
  nodeCount = self->_nodeCount;
  nodeSize = self->_nodeSize;
  if (nodeCount >= nodeSize)
  {
    v9 = nodeSize + nodeSize / 2;
    if (v9 <= 100)
    {
      v9 = 100;
    }

    self->_nodeSize = v9;
    nodes = malloc_type_realloc(self->_nodes, 12 * v9, 0x10000403E1C8BA9uLL);
    self->_nodes = nodes;
    self->_compressed = 0;
    nodeCount = self->_nodeCount;
  }

  else
  {
    nodes = self->_nodes;
  }

  self->_nodeCount = nodeCount + 1;
  v10 = &nodes[nodeCount];
  *v10 = nodeCopy;
  v10->var3 = var3;
}

- (void)writeCharacter:(unsigned __int8)character
{
  characterCount = self->_characterCount;
  characterSize = self->_characterSize;
  if (characterCount >= characterSize)
  {
    v8 = characterSize + characterSize / 2;
    if (v8 <= 100)
    {
      v9 = 100;
    }

    else
    {
      v9 = v8;
    }

    self->_characterSize = v9;
    characters = malloc_type_realloc(self->_characters, v9, 0x100004077774924uLL);
    self->_characters = characters;
    self->_compressed = 0;
    characterCount = self->_characterCount;
  }

  else
  {
    characters = self->_characters;
  }

  self->_characterCount = characterCount + 1;
  characters[characterCount] = character;
}

- (void)dealloc
{
  characters = self->_characters;
  if (characters)
  {
    free(characters);
  }

  nodes = self->_nodes;
  if (nodes)
  {
    free(nodes);
  }

  firstByteCache = self->_firstByteCache;
  if (firstByteCache)
  {
    free(firstByteCache);
  }

  v6.receiver = self;
  v6.super_class = Trie;
  [(Trie *)&v6 dealloc];
}

- (void)compress
{
  if (result)
  {
    v1 = result;
    if ((*(result + 9) & 1) == 0)
    {
      v2 = *(result + 3);
      *(result + 4) = v2;
      result[5] = malloc_type_realloc(result[5], v2, 0x100004077774924uLL);
      v3 = *(v1 + 5);
      *(v1 + 6) = v3;
      result = malloc_type_realloc(v1[6], 12 * v3, 0x10000403E1C8BA9uLL);
      v1[6] = result;
      *(v1 + 9) = 1;
    }
  }

  return result;
}

+ (void)enumerateCharactersInKey:(uint64_t)key range:(uint64_t)range usingBlock:(void *)block
{
  blockCopy = block;
  v9 = a2;
  objc_opt_self();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__Trie_enumerateCharactersInKey_range_usingBlock___block_invoke;
  v11[3] = &unk_1E815C258;
  v12 = blockCopy;
  v10 = blockCopy;
  [v9 enumerateSubstringsInRange:key options:range usingBlock:{2, v11}];
}

- (id)objectForKeyedSubscript:(uint64_t)subscript
{
  if (subscript)
  {
    v2 = [(TrieNode *)*(subscript + 32) objectForKeyedSubscript:a2];
    v3 = v2;
    if (v2)
    {
      object = [(TrieNode *)v2 object];
    }

    else
    {
      object = 0;
    }
  }

  else
  {
    object = 0;
  }

  return object;
}

- (void)setObject:(void *)object forKeyedSubscript:
{
  if (self)
  {
    v4 = *(self + 32);
    v5 = a2;
    v6 = [(TrieNode *)v4 objectForKey:object create:1];
    [(TrieNode *)v6 setObject:v5];
  }
}

@end