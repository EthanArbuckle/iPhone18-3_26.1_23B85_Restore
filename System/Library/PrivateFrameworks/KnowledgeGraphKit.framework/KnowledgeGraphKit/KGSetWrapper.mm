@interface KGSetWrapper
- (BOOL)isEqual:(id)a3;
- (KGSetWrapper)initWithArray:(id)a3;
- (KGSetWrapper)initWithSet:(id)a3;
- (unint64_t)hash;
@end

@implementation KGSetWrapper

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_set;
  v3 = [(NSSet *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v10 + 1) + 8 * i) hash];
      }

      v4 = [(NSSet *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NSSet *)self->_set isEqualToSet:v4->_set];
  }

  return v5;
}

- (KGSetWrapper)initWithArray:(id)a3
{
  v4 = MEMORY[0x277CBEB98];
  v5 = a3;
  v6 = [[v4 alloc] initWithArray:v5];

  v7 = [(KGSetWrapper *)self initWithSet:v6];
  return v7;
}

- (KGSetWrapper)initWithSet:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = KGSetWrapper;
  v5 = [(KGSetWrapper *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    set = v5->_set;
    v5->_set = v6;
  }

  return v5;
}

@end