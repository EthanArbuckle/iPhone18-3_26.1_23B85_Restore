@interface TrieNode
+ (id)nodeWithTrie:(uint64_t)trie node:(uint64_t)node offset:;
- (Trie)trie;
- (_DWORD)object;
- (id)copy;
- (id)objectForByte:(uint64_t)byte leaf:(int)leaf create:;
- (id)objectForKey:(int)key create:;
- (id)objectForKeyedSubscript:(id *)subscript;
- (uint64_t)updateForByte:(uint64_t)byte leaf:(int)leaf create:;
- (uint64_t)visit:(int)visit create:;
- (uint64_t)visit:(uint64_t)visit;
- (void)setObject:(uint64_t)object;
@end

@implementation TrieNode

- (Trie)trie
{
  WeakRetained = objc_loadWeakRetained(&self->_trie);

  return WeakRetained;
}

- (id)copy
{
  WeakRetained = objc_loadWeakRetained(&self->_trie);
  v4 = [TrieNode nodeWithTrie:self->_node node:self->_offset offset:?];

  return v4;
}

+ (id)nodeWithTrie:(uint64_t)trie node:(uint64_t)node offset:
{
  v6 = a2;
  objc_opt_self();
  v7 = objc_opt_new();
  [v7 setTrie:v6];

  [v7 setNode:trie];
  [v7 setOffset:node];

  return v7;
}

- (id)objectForByte:(uint64_t)byte leaf:(int)leaf create:
{
  WeakRetained = objc_loadWeakRetained((byte + 16));
  v5 = [TrieNode nodeWithTrie:*(byte + 8) node:*(byte + 12) offset:?];

  if ([(TrieNode *)v5 updateForByte:1 leaf:leaf create:?])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)updateForByte:(uint64_t)byte leaf:(int)leaf create:
{
  if (!self)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((self + 16));
  nodes = [WeakRetained nodes];
  v9 = *(self + 12);
  v10 = *(self + 8);
  v11 = nodes + 12 * v10;
  v12 = *(v11 + 3);
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(self + 8) == 0) & ~byte;
  }

  if (v13 == 1 && *([WeakRetained firstByteCache] + 4 * a2) >= 1)
  {
    v14 = 1;
    *(self + 8) = *([WeakRetained firstByteCache] + 4 * a2);
    *(self + 12) = 1;
    goto LABEL_40;
  }

  v31 = v13;
  v15 = v9;
  if (v9 < v12)
  {
    if ((byte & 1) == 0 && *([WeakRetained characters] + (*v11 & 0xFFFFFF) + v9) == a2)
    {
      v16 = v9 + 1;
      *(self + 8) = v10;
      goto LABEL_39;
    }

    if (leaf)
    {
      v20 = *v11;
      *(v11 + 3) = v15;
      nodeCount = [WeakRetained nodeCount];
      [WeakRetained writeNode:{(v20 - (v15 << 24)) & 0xFF000000 | (*v11 + v15) & 0xFFFFFF | (*(v11 + 4) << 32), 0}];
      *([WeakRetained nodes] + 12 * v10 + 4) = nodeCount;
      v14 = [(TrieNode *)self updateForByte:a2 leaf:byte create:1];
      goto LABEL_40;
    }

LABEL_26:
    v14 = 0;
    goto LABEL_40;
  }

  v17 = *(v11 + 4);
  if (v17 >= 1)
  {
    while (1)
    {
      v18 = v17;
      v19 = *(nodes + 12 * v17);
      if (byte)
      {
        if (!HIBYTE(v19))
        {
          goto LABEL_27;
        }
      }

      else if (HIBYTE(v19) && *([WeakRetained characters] + (*&v19 & 0xFFFFFFLL)) == a2)
      {
LABEL_27:
        v14 = 1;
        *(self + 8) = v18;
        *(self + 12) = 1;
        goto LABEL_40;
      }

      v17 = *(nodes + 12 * v18 + 8);
      if (v17 <= 0)
      {
        goto LABEL_23;
      }
    }
  }

  v18 = 0;
LABEL_23:
  if (!leaf)
  {
    goto LABEL_26;
  }

  if (byte)
  {
    nodeCount2 = [WeakRetained nodeCount];
    [WeakRetained writeNode:{0, 0}];
  }

  else
  {
    if (!*(v11 + 4))
    {
      v24 = HIBYTE(*v11);
      if (v24)
      {
        if (v24 != 255)
        {
          v23 = *v11;
          if ((v23 & 0xFFFFFF) + v24 == [WeakRetained characterCount])
          {
            [WeakRetained writeCharacter:a2];
            *(v11 + 3) = ((*(v11 + 3) << 24) + 0x1000000) >> 24;
            *(self + 8) = v10;
            v16 = v9 + 1;
            goto LABEL_39;
          }
        }
      }
    }

    nodeCount2 = [WeakRetained nodeCount];
    [WeakRetained writeNode:{objc_msgSend(WeakRetained, "characterCount") & 0xFFFFFF | 0x1000000, 0}];
    [WeakRetained writeCharacter:a2];
  }

  nodes2 = [WeakRetained nodes];
  v26 = nodes2 + 12 * v10;
  v28 = *(v26 + 4);
  v27 = (v26 + 4);
  v29 = (nodes2 + 12 * v18 + 8);
  if (!v28)
  {
    v29 = v27;
  }

  *v29 = nodeCount2;
  if (v31)
  {
    *([WeakRetained firstByteCache] + 4 * a2) = nodeCount2;
  }

  *(self + 8) = nodeCount2;
  v16 = 1;
LABEL_39:
  *(self + 12) = v16;
  v14 = 1;
LABEL_40:

  return v14;
}

- (_DWORD)object
{
  selfCopy = self;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 16));
    nodes = [WeakRetained nodes];
    v4 = selfCopy[2];
    if (v4 < 1 || (v5 = nodes + 12 * v4, *(v5 + 3)))
    {
      objects = [TrieNode objectForByte:selfCopy leaf:0 create:?];
      object = [TrieNode object];
    }

    else
    {
      v6 = *(v5 + 4);
      if (!v6)
      {
        selfCopy = 0;
        goto LABEL_8;
      }

      objects = [WeakRetained objects];
      object = [objects objectAtIndexedSubscript:v6];
    }

    selfCopy = object;

LABEL_8:
  }

  return selfCopy;
}

- (void)setObject:(uint64_t)object
{
  v11 = a2;
  if (object)
  {
    WeakRetained = objc_loadWeakRetained((object + 16));
    nodes = [WeakRetained nodes];
    v5 = *(object + 8);
    if (v5 < 1 || (v6 = nodes, v7 = nodes + 12 * v5, *(v7 + 3)))
    {
      objects2 = [TrieNode objectForByte:object leaf:1 create:?];
      [(TrieNode *)objects2 setObject:v11];
    }

    else
    {
      v8 = *(v7 + 4);
      objects = [WeakRetained objects];
      objects2 = objects;
      if (v8)
      {
        [objects setObject:v11 atIndexedSubscript:v8];
      }

      else
      {
        *(v6 + 12 * *(object + 8) + 4) = [objects count];

        objects2 = [WeakRetained objects];
        [objects2 addObject:v11];
      }
    }
  }
}

- (uint64_t)visit:(int)visit create:
{
  v5 = a2;
  v6 = v5;
  if (self && (v7 = [v5 UTF8String], v8 = objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4), v8 <= 0x200))
  {
    if (v8)
    {
      v10 = v8 - 1;
      do
      {
        v11 = *v7++;
        v12 = [(TrieNode *)self updateForByte:v11 leaf:0 create:visit];
        v9 = v12;
        v14 = v10-- != 0;
      }

      while (v12 && v14);
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)visit:(uint64_t)visit
{
  v3 = a2;
  if (visit)
  {
    WeakRetained = objc_loadWeakRetained((visit + 16));
    v5 = WeakRetained;
    if (WeakRetained && *(WeakRetained + 8) == 1)
    {
      v6 = objc_loadWeakRetained((visit + 16));
      compressed = [v6 compressed];

      if (compressed)
      {
LABEL_7:
        visit = [(TrieNode *)visit visit:v3 create:0];
        goto LABEL_8;
      }

      v5 = objc_loadWeakRetained((visit + 16));
      [(Trie *)v5 compress];
    }

    goto LABEL_7;
  }

LABEL_8:

  return visit;
}

- (id)objectForKey:(int)key create:
{
  if (self)
  {
    v5 = a2;
    WeakRetained = objc_loadWeakRetained((self + 16));
    v7 = [TrieNode nodeWithTrie:*(self + 8) node:*(self + 12) offset:?];

    v8 = [(TrieNode *)v7 visit:v5 create:key];
    if (v8)
    {
      v9 = v7;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)objectForKeyedSubscript:(id *)subscript
{
  subscriptCopy = subscript;
  if (subscript)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained(subscriptCopy + 2);
    v5 = WeakRetained;
    if (WeakRetained && *(WeakRetained + 8) == 1)
    {
      v6 = objc_loadWeakRetained(subscriptCopy + 2);
      compressed = [v6 compressed];

      if (compressed)
      {
LABEL_7:
        subscriptCopy = [(TrieNode *)subscriptCopy objectForKey:v3 create:0];

        goto LABEL_8;
      }

      v5 = objc_loadWeakRetained(subscriptCopy + 2);
      [(Trie *)v5 compress];
    }

    goto LABEL_7;
  }

LABEL_8:

  return subscriptCopy;
}

@end