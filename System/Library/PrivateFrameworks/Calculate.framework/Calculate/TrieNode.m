@interface TrieNode
+ (id)nodeWithTrie:(uint64_t)a3 node:(uint64_t)a4 offset:;
- (Trie)trie;
- (_DWORD)object;
- (id)copy;
- (id)objectForByte:(uint64_t)a1 leaf:(int)a2 create:;
- (id)objectForKey:(int)a3 create:;
- (id)objectForKeyedSubscript:(id *)a1;
- (uint64_t)updateForByte:(uint64_t)a3 leaf:(int)a4 create:;
- (uint64_t)visit:(int)a3 create:;
- (uint64_t)visit:(uint64_t)a1;
- (void)setObject:(uint64_t)a1;
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

+ (id)nodeWithTrie:(uint64_t)a3 node:(uint64_t)a4 offset:
{
  v6 = a2;
  objc_opt_self();
  v7 = objc_opt_new();
  [v7 setTrie:v6];

  [v7 setNode:a3];
  [v7 setOffset:a4];

  return v7;
}

- (id)objectForByte:(uint64_t)a1 leaf:(int)a2 create:
{
  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v5 = [TrieNode nodeWithTrie:*(a1 + 8) node:*(a1 + 12) offset:?];

  if ([(TrieNode *)v5 updateForByte:1 leaf:a2 create:?])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)updateForByte:(uint64_t)a3 leaf:(int)a4 create:
{
  if (!a1)
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained((a1 + 16));
  v8 = [WeakRetained nodes];
  v9 = *(a1 + 12);
  v10 = *(a1 + 8);
  v11 = v8 + 12 * v10;
  v12 = *(v11 + 3);
  if (v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(a1 + 8) == 0) & ~a3;
  }

  if (v13 == 1 && *([WeakRetained firstByteCache] + 4 * a2) >= 1)
  {
    v14 = 1;
    *(a1 + 8) = *([WeakRetained firstByteCache] + 4 * a2);
    *(a1 + 12) = 1;
    goto LABEL_40;
  }

  v31 = v13;
  v15 = v9;
  if (v9 < v12)
  {
    if ((a3 & 1) == 0 && *([WeakRetained characters] + (*v11 & 0xFFFFFF) + v9) == a2)
    {
      v16 = v9 + 1;
      *(a1 + 8) = v10;
      goto LABEL_39;
    }

    if (a4)
    {
      v20 = *v11;
      *(v11 + 3) = v15;
      v21 = [WeakRetained nodeCount];
      [WeakRetained writeNode:{(v20 - (v15 << 24)) & 0xFF000000 | (*v11 + v15) & 0xFFFFFF | (*(v11 + 4) << 32), 0}];
      *([WeakRetained nodes] + 12 * v10 + 4) = v21;
      v14 = [(TrieNode *)a1 updateForByte:a2 leaf:a3 create:1];
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
      v19 = *(v8 + 12 * v17);
      if (a3)
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
        *(a1 + 8) = v18;
        *(a1 + 12) = 1;
        goto LABEL_40;
      }

      v17 = *(v8 + 12 * v18 + 8);
      if (v17 <= 0)
      {
        goto LABEL_23;
      }
    }
  }

  v18 = 0;
LABEL_23:
  if (!a4)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    v22 = [WeakRetained nodeCount];
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
            *(a1 + 8) = v10;
            v16 = v9 + 1;
            goto LABEL_39;
          }
        }
      }
    }

    v22 = [WeakRetained nodeCount];
    [WeakRetained writeNode:{objc_msgSend(WeakRetained, "characterCount") & 0xFFFFFF | 0x1000000, 0}];
    [WeakRetained writeCharacter:a2];
  }

  v25 = [WeakRetained nodes];
  v26 = v25 + 12 * v10;
  v28 = *(v26 + 4);
  v27 = (v26 + 4);
  v29 = (v25 + 12 * v18 + 8);
  if (!v28)
  {
    v29 = v27;
  }

  *v29 = v22;
  if (v31)
  {
    *([WeakRetained firstByteCache] + 4 * a2) = v22;
  }

  *(a1 + 8) = v22;
  v16 = 1;
LABEL_39:
  *(a1 + 12) = v16;
  v14 = 1;
LABEL_40:

  return v14;
}

- (_DWORD)object
{
  v1 = a1;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v3 = [WeakRetained nodes];
    v4 = v1[2];
    if (v4 < 1 || (v5 = v3 + 12 * v4, *(v5 + 3)))
    {
      v7 = [TrieNode objectForByte:v1 leaf:0 create:?];
      v8 = [TrieNode object];
    }

    else
    {
      v6 = *(v5 + 4);
      if (!v6)
      {
        v1 = 0;
        goto LABEL_8;
      }

      v7 = [WeakRetained objects];
      v8 = [v7 objectAtIndexedSubscript:v6];
    }

    v1 = v8;

LABEL_8:
  }

  return v1;
}

- (void)setObject:(uint64_t)a1
{
  v11 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v4 = [WeakRetained nodes];
    v5 = *(a1 + 8);
    if (v5 < 1 || (v6 = v4, v7 = v4 + 12 * v5, *(v7 + 3)))
    {
      v10 = [TrieNode objectForByte:a1 leaf:1 create:?];
      [(TrieNode *)v10 setObject:v11];
    }

    else
    {
      v8 = *(v7 + 4);
      v9 = [WeakRetained objects];
      v10 = v9;
      if (v8)
      {
        [v9 setObject:v11 atIndexedSubscript:v8];
      }

      else
      {
        *(v6 + 12 * *(a1 + 8) + 4) = [v9 count];

        v10 = [WeakRetained objects];
        [v10 addObject:v11];
      }
    }
  }
}

- (uint64_t)visit:(int)a3 create:
{
  v5 = a2;
  v6 = v5;
  if (a1 && (v7 = [v5 UTF8String], v8 = objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4), v8 <= 0x200))
  {
    if (v8)
    {
      v10 = v8 - 1;
      do
      {
        v11 = *v7++;
        v12 = [(TrieNode *)a1 updateForByte:v11 leaf:0 create:a3];
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

- (uint64_t)visit:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v5 = WeakRetained;
    if (WeakRetained && *(WeakRetained + 8) == 1)
    {
      v6 = objc_loadWeakRetained((a1 + 16));
      v7 = [v6 compressed];

      if (v7)
      {
LABEL_7:
        a1 = [(TrieNode *)a1 visit:v3 create:0];
        goto LABEL_8;
      }

      v5 = objc_loadWeakRetained((a1 + 16));
      [(Trie *)v5 compress];
    }

    goto LABEL_7;
  }

LABEL_8:

  return a1;
}

- (id)objectForKey:(int)a3 create:
{
  if (a1)
  {
    v5 = a2;
    WeakRetained = objc_loadWeakRetained((a1 + 16));
    v7 = [TrieNode nodeWithTrie:*(a1 + 8) node:*(a1 + 12) offset:?];

    v8 = [(TrieNode *)v7 visit:v5 create:a3];
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

- (id)objectForKeyedSubscript:(id *)a1
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    WeakRetained = objc_loadWeakRetained(v2 + 2);
    v5 = WeakRetained;
    if (WeakRetained && *(WeakRetained + 8) == 1)
    {
      v6 = objc_loadWeakRetained(v2 + 2);
      v7 = [v6 compressed];

      if (v7)
      {
LABEL_7:
        v2 = [(TrieNode *)v2 objectForKey:v3 create:0];

        goto LABEL_8;
      }

      v5 = objc_loadWeakRetained(v2 + 2);
      [(Trie *)v5 compress];
    }

    goto LABEL_7;
  }

LABEL_8:

  return v2;
}

@end