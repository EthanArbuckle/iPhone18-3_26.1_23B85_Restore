@interface NSDiffableDataSourceSnapshot
- (BOOL)isEqual:(id)equal;
- (NSDiffableDataSourceSnapshot)initWithImpl:(id)impl;
- (NSDiffableDataSourceSnapshot)initWithState:(id)state;
- (_NSRange)sectionGlobalItemRangeForSection:(int64_t)section;
- (id)_identifierAfterIdentifier:(id)identifier;
- (id)_identifierBeforeIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identifierForIndexPath:(id)path;
- (id)indexPathForIdentifier:(id)identifier;
- (void)validateIdentifiers;
@end

@implementation NSDiffableDataSourceSnapshot

- (NSDiffableDataSourceSnapshot)initWithState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy)
  {
    v6 = stateCopy;
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

- (NSDiffableDataSourceSnapshot)initWithImpl:(id)impl
{
  implCopy = impl;
  v9.receiver = self;
  v9.super_class = NSDiffableDataSourceSnapshot;
  v6 = [(NSDiffableDataSourceSnapshot *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_impl, impl);
  }

  return v7;
}

- (id)description
{
  v32 = *MEMORY[0x277D85DE8];
  state = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
  numberOfSections = [(NSDiffableDataSourceSnapshot *)self numberOfSections];
  v5 = objc_alloc(MEMORY[0x277CCAB68]);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:numberOfSections];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSDiffableDataSourceSnapshot numberOfItems](self, "numberOfItems")}];
  generationID = [state generationID];
  dataSourceSnapshot = [state dataSourceSnapshot];
  selfCopy = self;
  v12 = [v5 initWithFormat:@"<%@ %p: numberOfSections:%@ numberOfItems:%@; generation=%@; sectionCounts=%@", v7, self, v8, v9, generationID, dataSourceSnapshot];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v24 = state;
  obj = [state sections];
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
        v18 = [(NSDiffableDataSourceSnapshot *)selfCopy itemIdentifiersInSectionWithIdentifier:v17];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  v5 = [(__UIDiffableDataSourceSnapshot *)self->_impl copy];
  v6 = [v4 initWithImpl:v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(__UIDiffableDataSourceSnapshot *)self->_impl isEqual:equalCopy[1]];

  return v5;
}

- (id)identifierForIndexPath:(id)path
{
  impl = self->_impl;
  pathCopy = path;
  state = [(__UIDiffableDataSourceSnapshot *)impl state];
  v6 = [state itemIdentifierForIndexPath:pathCopy];

  return v6;
}

- (id)indexPathForIdentifier:(id)identifier
{
  impl = self->_impl;
  identifierCopy = identifier;
  state = [(__UIDiffableDataSourceSnapshot *)impl state];
  v6 = [state indexPathForItemIdentifier:identifierCopy];

  return v6;
}

- (_NSRange)sectionGlobalItemRangeForSection:(int64_t)section
{
  state = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
  dataSourceSnapshot = [state dataSourceSnapshot];
  v6 = [dataSourceSnapshot rangeForSection:section];
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.length = v10;
  result.location = v9;
  return result;
}

- (id)_identifierBeforeIdentifier:(id)identifier
{
  impl = self->_impl;
  identifierCopy = identifier;
  state = [(__UIDiffableDataSourceSnapshot *)impl state];
  v7 = [state indexOfItemIdentifier:identifierCopy];

  v8 = v7 - 1;
  if ((v7 - 1) > 0x7FFFFFFFFFFFFFFDLL)
  {
    v11 = 0;
  }

  else
  {
    state2 = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
    identifiers = [state2 identifiers];
    v11 = [identifiers objectAtIndexedSubscript:v8];
  }

  return v11;
}

- (id)_identifierAfterIdentifier:(id)identifier
{
  impl = self->_impl;
  identifierCopy = identifier;
  state = [(__UIDiffableDataSourceSnapshot *)impl state];
  v7 = [state indexOfItemIdentifier:identifierCopy];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL || (v8 = v7 + 1, -[__UIDiffableDataSourceSnapshot state](self->_impl, "state"), v9 = objc_claimAutoreleasedReturnValue(), [v9 identifiers], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "count"), v10, v9, v8 >= v11))
  {
    v14 = 0;
  }

  else
  {
    state2 = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
    identifiers = [state2 identifiers];
    v14 = [identifiers objectAtIndexedSubscript:v8];
  }

  return v14;
}

- (void)validateIdentifiers
{
  state = [(__UIDiffableDataSourceSnapshot *)self->_impl state];
  if (objc_opt_respondsToSelector())
  {
    [state validateIdentifiers];
  }

  else
  {
    sections = [state sections];
    _UIDiffableDataSourceValidateIdentifiers(sections, 0);

    identifiers = [state identifiers];
    _UIDiffableDataSourceValidateIdentifiers(identifiers, 1);
  }
}

@end