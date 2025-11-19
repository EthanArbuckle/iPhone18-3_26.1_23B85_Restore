@interface BBMaskedSet
- (BBMaskedSet)initWithMaskBits:(unint64_t)a3;
- (id)allObjects;
- (id)objectAtIndex:(unint64_t)a3;
- (id)objectsForMask:(unint64_t)a3;
- (void)_executeUsingMask:(unint64_t)a3 block:(id)a4;
- (void)addObject:(id)a3 withMask:(unint64_t)a4;
- (void)removeObject:(id)a3;
@end

@implementation BBMaskedSet

- (BBMaskedSet)initWithMaskBits:(unint64_t)a3
{
  v11.receiver = self;
  v11.super_class = BBMaskedSet;
  v4 = [(BBMaskedSet *)&v11 init];
  v5 = v4;
  if (v4)
  {
    v4->_maskBits = a3;
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:a3];
    [(BBMaskedSet *)v5 setMaskObjectSets:v6];

    if (v5->_maskBits)
    {
      v7 = 0;
      do
      {
        maskObjectSets = v5->_maskObjectSets;
        v9 = [MEMORY[0x277CBEB58] set];
        [(NSMutableArray *)maskObjectSets setObject:v9 atIndexedSubscript:v7];

        ++v7;
      }

      while (v7 < v5->_maskBits);
    }
  }

  return v5;
}

- (void)addObject:(id)a3 withMask:(unint64_t)a4
{
  v6 = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__BBMaskedSet_addObject_withMask___block_invoke;
  v8[3] = &unk_278D2B7C0;
  v9 = v6;
  v7 = v6;
  [(BBMaskedSet *)self _executeUsingMask:a4 block:v8];
}

- (void)removeObject:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_maskObjectSets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) removeObject:{v4, v11}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (id)allObjects
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_maskObjectSets;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 unionSet:{*(*(&v12 + 1) + 8 * i), v12}];
      }

      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)objectsForMask:(unint64_t)a3
{
  v5 = [MEMORY[0x277CBEB58] set];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__BBMaskedSet_objectsForMask___block_invoke;
  v9[3] = &unk_278D2B7C0;
  v10 = v5;
  v6 = v5;
  [(BBMaskedSet *)self _executeUsingMask:a3 block:v9];
  v7 = [v6 copy];

  return v7;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v3 = [(NSMutableArray *)self->_maskObjectSets objectAtIndex:a3];
  v4 = [v3 copy];

  return v4;
}

- (void)_executeUsingMask:(unint64_t)a3 block:(id)a4
{
  v10 = a4;
  maskBits = self->_maskBits;
  if (maskBits)
  {
    for (i = 0; i < maskBits; ++i)
    {
      v8 = 1 << i;
      if (v8 > a3)
      {
        break;
      }

      if ((v8 & a3) != 0)
      {
        v9 = [(NSMutableArray *)self->_maskObjectSets objectAtIndex:i];
        v10[2](v10, v9);

        maskBits = self->_maskBits;
      }
    }
  }
}

@end