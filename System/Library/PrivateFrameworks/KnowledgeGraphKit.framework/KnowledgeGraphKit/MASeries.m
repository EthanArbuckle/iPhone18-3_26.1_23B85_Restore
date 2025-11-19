@interface MASeries
- (BOOL)isEqual:(id)a3;
- (MASeries)initWithName:(id)a3 indexCache:(id)a4 vector:(id)a5;
- (MASeries)initWithName:(id)a3 labels:(id)a4 vector:(id)a5;
- (id)description;
- (id)valueByLabels;
- (id)valueForLabel:(id)a3;
- (unint64_t)hash;
@end

@implementation MASeries

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MASeries *)self name];
  v5 = [(MASeries *)self labels];
  v6 = [(MASeries *)self vector];
  v7 = [v3 stringWithFormat:@"%@\n%@\n%@\n", v4, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(MAIndexCache *)self->_indexCache hash]^ v3;
  return v4 ^ [(MAFloatVector *)self->_vector hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = v5;
      name = self->_name;
      if (name)
      {
        v8 = [(MASeries *)v5 name];
        v9 = [(NSString *)name isEqual:v8];

        if (!v9)
        {
          goto LABEL_10;
        }
      }

      indexCache = self->_indexCache;
      if (indexCache && ([(MASeries *)v6 indexCache], v11 = objc_claimAutoreleasedReturnValue(), v12 = [(MAIndexCache *)indexCache isEqual:v11], v11, !v12))
      {
LABEL_10:
        v15 = 0;
      }

      else
      {
        vector = self->_vector;
        v14 = [(MASeries *)v6 vector];
        v15 = [(MAFloatVector *)vector isEqual:v14];
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)valueByLabels
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] init];
  v4 = [v3 alloc];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(MASeries *)self labels];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(MASeries *)self valueForLabel:v10];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)valueForLabel:(id)a3
{
  v4 = a3;
  v5 = self->_indexCache;
  v6 = v5;
  if (v5 && (v7 = [(MAIndexCache *)v5 indexOfLabel:v4], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = MEMORY[0x277CCABB0];
    [(MASeries *)self valueAtIndex:v7];
    v8 = [v9 numberWithFloat:?];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (MASeries)initWithName:(id)a3 labels:(id)a4 vector:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (a4)
  {
    v10 = a4;
    a4 = [[MAIndexCache alloc] initWithLabels:v10];
  }

  v11 = [(MASeries *)self initWithName:v8 indexCache:a4 vector:v9];

  return v11;
}

- (MASeries)initWithName:(id)a3 indexCache:(id)a4 vector:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v9 && ([v9 labels], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v13 = objc_msgSend(v10, "count"), v11, v12 != v13))
  {
    v19 = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = MASeries;
    v14 = [(MASeries *)&v21 init];
    if (v14)
    {
      v15 = [v8 copy];
      name = v14->_name;
      v14->_name = v15;

      v17 = [v10 copy];
      vector = v14->_vector;
      v14->_vector = v17;

      objc_storeStrong(&v14->_indexCache, a4);
    }

    self = v14;
    v19 = self;
  }

  return v19;
}

@end