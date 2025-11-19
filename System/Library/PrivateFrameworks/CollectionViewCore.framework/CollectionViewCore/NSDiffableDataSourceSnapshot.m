@interface NSDiffableDataSourceSnapshot
- (BOOL)isEqual:(id)a3;
- (NSDiffableDataSourceSnapshot)initWithImpl:(id)a3;
- (NSDiffableDataSourceSnapshot)initWithState:(id)a3;
- (_NSRange)sectionGlobalItemRangeForSection:(int64_t)a3;
- (id)_identifierAfterIdentifier:(id)a3;
- (id)_identifierBeforeIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)identifierForIndexPath:(id)a3;
- (id)indexPathForIdentifier:(id)a3;
- (void)validateIdentifiers;
@end

@implementation NSDiffableDataSourceSnapshot

- (NSDiffableDataSourceSnapshot)initWithState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(_UIDiffableDataSourceState);
  }

  v7 = v6;
  v8 = [[__UIDiffableDataSourceSnapshot alloc] initWithState:v6];
  v9 = [(NSDiffableDataSourceSnapshot *)self initWithImpl:v8];

  return v9;
}

- (NSDiffableDataSourceSnapshot)initWithImpl:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = NSDiffableDataSourceSnapshot;
  v6 = [(NSDiffableDataSourceSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, a3);
  }

  return v7;
}

- (id)description
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
  v4 = [(NSDiffableDataSourceSnapshot *)self numberOfSections];
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSDiffableDataSourceSnapshot numberOfItems](self, "numberOfItems")}];
  v10 = [v3 generationID];
  v11 = [v3 dataSourceSnapshot];
  v26 = self;
  v12 = [v5 initWithFormat:@"<%@ %p: numberOfSections:%@ numberOfItems:%@; generation=%@; sectionCounts=%@", v7, self, v8, v9, v10, v11];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = v3;
  obj = [v3 sections];
  v13 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v28;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v27 + 1) + 8 * i);
        [v12 appendFormat:@"\n[%@: {", v17];
        v18 = [(NSDiffableDataSourceSnapshot *)v26 itemIdentifiersInSectionWithIdentifier:v17];
        v19 = [v18 count];
        if (v19 >= 1)
        {
          v20 = v19;
          for (j = 0; j != v20; ++j)
          {
            if (j)
            {
              [v12 appendString:@" "];
            }

            v22 = [v18 objectAtIndexedSubscript:j];
            [v12 appendFormat:@"%@", v22];
          }
        }

        [v12 appendString:@"}]"];
      }

      v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v14);
  }

  [v12 appendString:@">"];

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(__UIDiffableDataSourceSnapshot *)self->_impl copy];
  v6 = [v4 initWithImpl:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(__UIDiffableDataSourceSnapshot *)self->_impl isEqual:v4[1]];

  return v5;
}

- (id)identifierForIndexPath:(id)a3
{
  impl = self->_impl;
  v4 = a3;
  v5 = [(__UIDiffableDataSourceSnapshot *)impl state];
  v6 = [v5 itemIdentifierForIndexPath:v4];

  return v6;
}

- (id)indexPathForIdentifier:(id)a3
{
  impl = self->_impl;
  v4 = a3;
  v5 = [(__UIDiffableDataSourceSnapshot *)impl state];
  v6 = [v5 indexPathForItemIdentifier:v4];

  return v6;
}

- (_NSRange)sectionGlobalItemRangeForSection:(int64_t)a3
{
  v4 = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
  v5 = [v4 dataSourceSnapshot];
  v6 = [v5 rangeForSection:a3];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_identifierBeforeIdentifier:(id)a3
{
  impl = self->_impl;
  v5 = a3;
  v6 = [(__UIDiffableDataSourceSnapshot *)impl state];
  v7 = [v6 indexOfItemIdentifier:v5];

  v8 = v7 - 1;
  if ((v7 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v11 = 0;
  }

  else
  {
    v9 = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
    v10 = [v9 identifiers];
    v11 = [v10 objectAtIndexedSubscript:v8];
  }

  return v11;
}

- (id)_identifierAfterIdentifier:(id)a3
{
  impl = self->_impl;
  v5 = a3;
  v6 = [(__UIDiffableDataSourceSnapshot *)impl state];
  v7 = [v6 indexOfItemIdentifier:v5];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7 + 1, -[__UIDiffableDataSourceSnapshot state](self->_impl, "state"), v9 = objc_claimAutoreleasedReturnValue(), [v9 identifiers], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v8 >= v11))
  {
    v14 = 0;
  }

  else
  {
    v12 = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
    v13 = [v12 identifiers];
    v14 = [v13 objectAtIndexedSubscript:v8];
  }

  return v14;
}

- (void)validateIdentifiers
{
  v4 = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
  if (objc_opt_respondsToSelector())
  {
    [v4 validateIdentifiers];
  }

  else
  {
    v2 = [v4 sections];
    _UIDiffableDataSourceValidateIdentifiers(v2, 0);

    v3 = [v4 identifiers];
    _UIDiffableDataSourceValidateIdentifiers(v3, 1);
  }
}

@end