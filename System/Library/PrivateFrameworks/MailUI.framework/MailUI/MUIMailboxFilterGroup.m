@interface MUIMailboxFilterGroup
+ (id)groupWithName:(id)a3 combinator:(int64_t)a4 selectionCardinality:(int64_t)a5 filters:(id)a6;
- (BOOL)isEqual:(id)a3;
- (MUIMailboxFilterGroup)initWithName:(id)a3 combinator:(int64_t)a4 selectionCardinality:(int64_t)a5 filters:(id)a6;
- (unint64_t)hash;
@end

@implementation MUIMailboxFilterGroup

- (MUIMailboxFilterGroup)initWithName:(id)a3 combinator:(int64_t)a4 selectionCardinality:(int64_t)a5 filters:(id)a6
{
  v11 = a3;
  v12 = a6;
  if (!v12)
  {
    [MUIMailboxFilterGroup initWithName:a2 combinator:self selectionCardinality:? filters:?];
  }

  v19.receiver = self;
  v19.super_class = MUIMailboxFilterGroup;
  v13 = [(MUIMailboxFilterGroup *)&v19 init];
  if (v13)
  {
    v14 = [v11 copy];
    name = v13->_name;
    v13->_name = v14;

    v16 = [v12 copy];
    filters = v13->_filters;
    v13->_filters = v16;

    v13->_combinator = a4;
    v13->_selectionCardinality = a5;
  }

  return v13;
}

+ (id)groupWithName:(id)a3 combinator:(int64_t)a4 selectionCardinality:(int64_t)a5 filters:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [[a1 alloc] initWithName:v11 combinator:a4 selectionCardinality:a5 filters:v10];

  return v12;
}

- (unint64_t)hash
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [(MUIMailboxFilterGroup *)self filters];
  v4 = [v3 ef_prefix:3];

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

  v10 = [(MUIMailboxFilterGroup *)self name];
  v11 = [v10 hash];
  v12 = [(MUIMailboxFilterGroup *)self combinator];
  v13 = [(MUIMailboxFilterGroup *)self selectionCardinality];

  return v11 ^ v7 ^ v12 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    if (self == v5)
    {
      v16 = 1;
      goto LABEL_18;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
      v8 = [(MUIMailboxFilterGroup *)self name];
      if (!v8)
      {
        v3 = [(MUIMailboxFilterGroup *)v7 name];
        if (!v3)
        {
          goto LABEL_8;
        }
      }

      v9 = [(MUIMailboxFilterGroup *)self name];
      v10 = [(MUIMailboxFilterGroup *)v7 name];
      v11 = [v9 isEqualToString:v10];

      if (v8)
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
          v12 = [(MUIMailboxFilterGroup *)self filters];
          v13 = [(MUIMailboxFilterGroup *)v7 filters];
          if ([v12 isEqual:v13] && (v14 = -[MUIMailboxFilterGroup combinator](self, "combinator"), v14 == -[MUIMailboxFilterGroup combinator](v7, "combinator")))
          {
            v15 = [(MUIMailboxFilterGroup *)self selectionCardinality];
            v16 = v15 == [(MUIMailboxFilterGroup *)v7 selectionCardinality];
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