@interface _IKDSEPrototypeBundle
- (_IKDSEPrototypeBundle)init;
- (id)prototypeForItemAtIndex:(unint64_t)index;
- (void)addPrototype:(id)prototype forIndexes:(id)indexes;
@end

@implementation _IKDSEPrototypeBundle

- (_IKDSEPrototypeBundle)init
{
  v8.receiver = self;
  v8.super_class = _IKDSEPrototypeBundle;
  v2 = [(_IKDSEPrototypeBundle *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    prototypes = v2->_prototypes;
    v2->_prototypes = v3;

    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    entries = v2->_entries;
    v2->_entries = v5;
  }

  return v2;
}

- (id)prototypeForItemAtIndex:(unint64_t)index
{
  if (self->_flags.areEntriesDirty)
  {
    [(NSMutableArray *)self->_entries sortUsingComparator:&__block_literal_global_21];
  }

  v5 = [(NSMutableArray *)self->_entries count];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = v7 + (v6 >> 1);
      v9 = [(NSMutableArray *)self->_entries objectAtIndexedSubscript:v8];
      range = [v9 range];
      if (index < range || index - range >= v11)
      {
        range2 = [v9 range];
        if (range2 <= index)
        {
          v6 += v7 + ~v8;
        }

        else
        {
          v6 >>= 1;
        }

        if (range2 <= index)
        {
          v7 = v8 + 1;
        }

        v14 = 0;
      }

      else
      {
        v14 = v9;
      }
    }

    while (!v14 && v6);
    if (v14)
    {
      v15 = -[NSMutableArray objectAtIndexedSubscript:](self->_prototypes, "objectAtIndexedSubscript:", [v14 prototypeIndex]);
      goto LABEL_22;
    }
  }

  else
  {
    v14 = 0;
  }

  v15 = 0;
LABEL_22:

  return v15;
}

- (void)addPrototype:(id)prototype forIndexes:(id)indexes
{
  prototypes = self->_prototypes;
  indexesCopy = indexes;
  [(NSMutableArray *)prototypes addObject:prototype];
  v8 = [(NSMutableArray *)self->_prototypes count]- 1;
  v9 = self->_entries;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __49___IKDSEPrototypeBundle_addPrototype_forIndexes___block_invoke;
  v11[3] = &unk_27979B650;
  v12 = v9;
  v13 = v8;
  v10 = v9;
  [indexesCopy enumerateRangesUsingBlock:v11];

  self->_flags.areEntriesDirty = 1;
}

@end