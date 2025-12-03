@interface MASeries
- (BOOL)isEqual:(id)equal;
- (MASeries)initWithName:(id)name indexCache:(id)cache vector:(id)vector;
- (MASeries)initWithName:(id)name labels:(id)labels vector:(id)vector;
- (id)description;
- (id)valueByLabels;
- (id)valueForLabel:(id)label;
- (unint64_t)hash;
@end

@implementation MASeries

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  name = [(MASeries *)self name];
  labels = [(MASeries *)self labels];
  vector = [(MASeries *)self vector];
  v7 = [v3 stringWithFormat:@"%@\n%@\n%@\n", name, labels, vector];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(MAIndexCache *)self->_indexCache hash]^ v3;
  return v4 ^ [(MAFloatVector *)self->_vector hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      name = self->_name;
      if (name)
      {
        name = [(MASeries *)v5 name];
        v9 = [(NSString *)name isEqual:name];

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
        vector = [(MASeries *)v6 vector];
        v15 = [(MAFloatVector *)vector isEqual:vector];
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
  labels = [(MASeries *)self labels];
  v6 = [labels countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(labels);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(MASeries *)self valueForLabel:v10];
        [v4 setObject:v11 forKeyedSubscript:v10];
      }

      v7 = [labels countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)valueForLabel:(id)label
{
  labelCopy = label;
  v5 = self->_indexCache;
  v6 = v5;
  if (v5 && (v7 = [(MAIndexCache *)v5 indexOfLabel:labelCopy], v7 != 0x7FFFFFFFFFFFFFFFLL))
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

- (MASeries)initWithName:(id)name labels:(id)labels vector:(id)vector
{
  nameCopy = name;
  vectorCopy = vector;
  if (labels)
  {
    labelsCopy = labels;
    labels = [[MAIndexCache alloc] initWithLabels:labelsCopy];
  }

  v11 = [(MASeries *)self initWithName:nameCopy indexCache:labels vector:vectorCopy];

  return v11;
}

- (MASeries)initWithName:(id)name indexCache:(id)cache vector:(id)vector
{
  nameCopy = name;
  cacheCopy = cache;
  vectorCopy = vector;
  if (cacheCopy && ([cacheCopy labels], v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "count"), v13 = objc_msgSend(vectorCopy, "count"), v11, v12 != v13))
  {
    selfCopy = 0;
  }

  else
  {
    v21.receiver = self;
    v21.super_class = MASeries;
    v14 = [(MASeries *)&v21 init];
    if (v14)
    {
      v15 = [nameCopy copy];
      name = v14->_name;
      v14->_name = v15;

      v17 = [vectorCopy copy];
      vector = v14->_vector;
      v14->_vector = v17;

      objc_storeStrong(&v14->_indexCache, cache);
    }

    self = v14;
    selfCopy = self;
  }

  return selfCopy;
}

@end