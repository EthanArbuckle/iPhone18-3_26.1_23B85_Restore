@interface CalculateUnitsTrie
- (CalculateUnitsTrie)init;
- (CalculateUnitsTrie)initWithLocales:(id)locales;
- (NSSet)conversionVerbs;
@end

@implementation CalculateUnitsTrie

- (NSSet)conversionVerbs
{
  conversionVerbs = self->_conversionVerbs;
  if (!conversionVerbs)
  {
    locales = self->_locales;
    if (locales)
    {
      v5 = locales;
    }

    else
    {
      v5 = +[Localize systemLocales];
    }

    v6 = v5;
    v7 = [(NSArray *)v5 count];
    v8 = objc_opt_new();
    if (v7)
    {
      v9 = 0;
      if (v7 >= 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = v7;
      }

      while (1)
      {
        v11 = [(NSArray *)v6 objectAtIndexedSubscript:v9];
        v12 = +[AvailableUnitRanks shared];
        v13 = [v12 conversionVerbsWithLocale:v11 from:0];
        if (v13)
        {
          break;
        }

        v15 = +[AvailableUnitRanks shared];
        v14 = [v15 conversionVerbsWithLocale:v11 from:1];

        if (v14)
        {
          goto LABEL_12;
        }

LABEL_13:

        if (v10 == ++v9)
        {
          goto LABEL_14;
        }
      }

      v14 = v13;

LABEL_12:
      [v8 addObjectsFromArray:v14];

      goto LABEL_13;
    }

LABEL_14:
    v16 = [v8 copy];
    v17 = self->_conversionVerbs;
    self->_conversionVerbs = v16;

    conversionVerbs = self->_conversionVerbs;
  }

  return conversionVerbs;
}

- (CalculateUnitsTrie)initWithLocales:(id)locales
{
  localesCopy = locales;
  v15.receiver = self;
  v15.super_class = CalculateUnitsTrie;
  v6 = [(CalculateUnitsTrie *)&v15 init];
  if (v6)
  {
    v7 = +[AvailableUnitRanks shared];
    v8 = [v7 ranksWithLocales:localesCopy];
    trie = v6->_trie;
    v6->_trie = v8;

    v10 = v6->_trie;
    if (v10)
    {
      v11 = [(TrieNode *)v10->_root copy];
    }

    else
    {
      v11 = 0;
    }

    v12 = [CalculateUnitsTrieNode nodeWithTrieNode:v11];
    root = v6->_root;
    v6->_root = v12;

    objc_storeStrong(&v6->_locales, locales);
  }

  return v6;
}

- (CalculateUnitsTrie)init
{
  v11.receiver = self;
  v11.super_class = CalculateUnitsTrie;
  v2 = [(CalculateUnitsTrie *)&v11 init];
  if (v2)
  {
    v3 = +[AvailableUnitRanks shared];
    ranks = [v3 ranks];
    trie = v2->_trie;
    v2->_trie = ranks;

    v6 = v2->_trie;
    if (v6)
    {
      v7 = [(TrieNode *)v6->_root copy];
    }

    else
    {
      v7 = 0;
    }

    v8 = [CalculateUnitsTrieNode nodeWithTrieNode:v7];
    root = v2->_root;
    v2->_root = v8;
  }

  return v2;
}

@end