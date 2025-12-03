@interface MUIMailboxFilterGroup
+ (id)groupWithName:(id)name combinator:(int64_t)combinator selectionCardinality:(int64_t)cardinality filters:(id)filters;
- (BOOL)isEqual:(id)equal;
- (MUIMailboxFilterGroup)initWithName:(id)name combinator:(int64_t)combinator selectionCardinality:(int64_t)cardinality filters:(id)filters;
- (unint64_t)hash;
@end

@implementation MUIMailboxFilterGroup

- (MUIMailboxFilterGroup)initWithName:(id)name combinator:(int64_t)combinator selectionCardinality:(int64_t)cardinality filters:(id)filters
{
  nameCopy = name;
  filtersCopy = filters;
  if (!filtersCopy)
  {
    [MUIMailboxFilterGroup initWithName:a2 combinator:self selectionCardinality:? filters:?];
  }

  v19.receiver = self;
  v19.super_class = MUIMailboxFilterGroup;
  v13 = [(MUIMailboxFilterGroup *)&v19 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [filtersCopy copy];
    filters = v13->_filters;
    v13->_filters = v16;

    v13->_combinator = combinator;
    v13->_selectionCardinality = cardinality;
  }

  return v13;
}

+ (id)groupWithName:(id)name combinator:(int64_t)combinator selectionCardinality:(int64_t)cardinality filters:(id)filters
{
  filtersCopy = filters;
  nameCopy = name;
  v12 = [[self alloc] initWithName:nameCopy combinator:combinator selectionCardinality:cardinality filters:filtersCopy];

  return v12;
}

- (unint64_t)hash
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  filters = [(MUIMailboxFilterGroup *)self filters];
  v4 = [filters ef_prefix:3];

  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 ^= [*(*(&v15 + 1) + 8 * i) hash];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  name = [(MUIMailboxFilterGroup *)self name];
  v11 = [name hash];
  combinator = [(MUIMailboxFilterGroup *)self combinator];
  selectionCardinality = [(MUIMailboxFilterGroup *)self selectionCardinality];

  return v11 ^ v7 ^ combinator ^ selectionCardinality;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v16 = 1;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      name = [(MUIMailboxFilterGroup *)self name];
      if (!name)
      {
        name2 = [(MUIMailboxFilterGroup *)v7 name];
        if (!name2)
        {
          goto LABEL_8;
        }
      }

      name3 = [(MUIMailboxFilterGroup *)self name];
      name4 = [(MUIMailboxFilterGroup *)v7 name];
      v11 = [name3 isEqualToString:name4];

      if (name)
      {

        if (v11)
        {
          goto LABEL_8;
        }
      }

      else
      {

        if (v11)
        {
LABEL_8:
          filters = [(MUIMailboxFilterGroup *)self filters];
          filters2 = [(MUIMailboxFilterGroup *)v7 filters];
          if ([filters isEqual:filters2] && (v14 = -[MUIMailboxFilterGroup combinator](self, "combinator"), v14 == -[MUIMailboxFilterGroup combinator](v7, "combinator")))
          {
            selectionCardinality = [(MUIMailboxFilterGroup *)self selectionCardinality];
            v16 = selectionCardinality == [(MUIMailboxFilterGroup *)v7 selectionCardinality];
          }

          else
          {
            v16 = 0;
          }

          goto LABEL_17;
        }
      }

      v16 = 0;
LABEL_17:

      goto LABEL_18;
    }
  }

  v16 = 0;
LABEL_18:

  return v16;
}

- (void)initWithName:(uint64_t)a1 combinator:(uint64_t)a2 selectionCardinality:filters:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MUIMailboxFilterGroup.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"filters"}];
}

@end