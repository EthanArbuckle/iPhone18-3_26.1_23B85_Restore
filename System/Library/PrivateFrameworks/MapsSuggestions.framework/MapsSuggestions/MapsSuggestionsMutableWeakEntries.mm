@interface MapsSuggestionsMutableWeakEntries
- (MapsSuggestionsMutableWeakEntries)init;
- (MapsSuggestionsMutableWeakEntries)initWithEntries:(id)a3;
- (NSArray)strongArray;
- (unint64_t)count;
@end

@implementation MapsSuggestionsMutableWeakEntries

- (MapsSuggestionsMutableWeakEntries)init
{
  v7.receiver = self;
  v7.super_class = MapsSuggestionsMutableWeakEntries;
  v2 = [(MapsSuggestionsMutableWeakEntries *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    array = v2->_array;
    v2->_array = v3;

    v2->_dirty = 0;
    v5 = v2;
  }

  return v2;
}

- (MapsSuggestionsMutableWeakEntries)initWithEntries:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(MapsSuggestionsMutableWeakEntries *)self init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v7)
    {
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [(MapsSuggestionsMutableWeakEntries *)v5 addWeakObject:*(*(&v12 + 1) + 8 * v9++), v12];
        }

        while (v7 != v9);
        v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [(NSPointerArray *)v5->_array compact];
    v5->_dirty = 0;
    v10 = v5;
  }

  return v5;
}

- (unint64_t)count
{
  if (self->_dirty)
  {
    [(NSPointerArray *)self->_array compact];
    self->_dirty = 0;
  }

  array = self->_array;

  return [(NSPointerArray *)array count];
}

- (NSArray)strongArray
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[MapsSuggestionsMutableWeakEntries count](self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_array;
  v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if (*(*(&v10 + 1) + 8 * i))
        {
          [v3 addObject:v10];
        }
      }

      v5 = [(NSPointerArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v8 = [MEMORY[0x1E695DEC8] arrayWithArray:v3];

  return v8;
}

@end