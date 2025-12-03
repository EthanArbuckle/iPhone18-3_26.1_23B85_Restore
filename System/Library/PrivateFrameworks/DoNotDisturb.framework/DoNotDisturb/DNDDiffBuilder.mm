@interface DNDDiffBuilder
- (DNDDiffBuilder)init;
- (NSArray)children;
- (id)descriptionWithIndent:(unint64_t)indent;
- (void)diffObject:(id)object againstObject:(id)againstObject withDescription:(id)description;
- (void)log:(id)log withPrefix:(id)prefix;
@end

@implementation DNDDiffBuilder

- (DNDDiffBuilder)init
{
  v3.receiver = self;
  v3.super_class = DNDDiffBuilder;
  return [(DNDDiffBuilder *)&v3 init];
}

- (NSArray)children
{
  v2 = [(NSMutableArray *)self->_children copy];

  return v2;
}

- (id)descriptionWithIndent:(unint64_t)indent
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [&stru_2833C9B78 stringByPaddingToLength:indent withString:@"\t" startingAtIndex:0];
  if (self->_children)
  {
    string = [MEMORY[0x277CCAB68] string];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = self->_children;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v26 + 1) + 8 * i) descriptionWithIndent:indent + 1];
          [string appendFormat:@"\n%@;\n", v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v9);
    }

    description = self->_description;
    if (description)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@: {%@%@}", v5, description, string, v5, v26];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@{%@%@}", v5, string, v5, v25, v26];
    }
    v17 = ;
  }

  else
  {
    object1 = self->_object1;
    v15 = objc_opt_respondsToSelector();
    v16 = self->_object1;
    if (v15)
    {
      [v16 diffDescription];
    }

    else
    {
      [v16 description];
    }
    string = ;
    object2 = self->_object2;
    v19 = objc_opt_respondsToSelector();
    v20 = self->_object2;
    if (v19)
    {
      [v20 diffDescription];
    }

    else
    {
      [v20 description];
    }
    v21 = ;
    v22 = self->_description;
    if (v22)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@: object1: %@; object2: %@", v5, v22, string, v21];
    }

    else
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%@object1: %@; object2: %@", v5, string, v21, v25];
    }
    v17 = ;
  }

  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (void)diffObject:(id)object againstObject:(id)againstObject withDescription:(id)description
{
  objectCopy = object;
  againstObjectCopy = againstObject;
  descriptionCopy = description;
  if (objectCopy != againstObjectCopy)
  {
    if (!objectCopy || !againstObjectCopy || ([objectCopy isEqual:againstObjectCopy] & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v11 = objc_alloc_init(DNDDiffBuilder);
      objc_storeStrong(&v11->_object1, object);
      objc_storeStrong(&v11->_object2, againstObject);
      v12 = [descriptionCopy copy];
      description = v11->_description;
      v11->_description = v12;

      children = self->_children;
      if (!children)
      {
        array = [MEMORY[0x277CBEB18] array];
        v16 = self->_children;
        self->_children = array;

        children = self->_children;
      }

      [(NSMutableArray *)children addObject:v11];
      if (objc_opt_respondsToSelector())
      {
        [objectCopy diffAgainstObject:againstObjectCopy usingDiffBuilder:v11 withDescription:descriptionCopy];
      }
    }
  }
}

- (void)log:(id)log withPrefix:(id)prefix
{
  v26 = *MEMORY[0x277D85DE8];
  logCopy = log;
  prefixCopy = prefix;
  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = prefixCopy;
    _os_log_impl(&dword_22002F000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] Begin diff", buf, 0xCu);
  }

  v8 = [(DNDDiffBuilder *)self description];
  v9 = [v8 componentsSeparatedByString:@"\n"];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
        {
          v15 = *(*(&v17 + 1) + 8 * i);
          *buf = 138543619;
          v22 = prefixCopy;
          v23 = 2113;
          v24 = v15;
          _os_log_impl(&dword_22002F000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] %{private}@", buf, 0x16u);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v12);
  }

  if (os_log_type_enabled(logCopy, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = prefixCopy;
    _os_log_impl(&dword_22002F000, logCopy, OS_LOG_TYPE_DEFAULT, "[%{public}@] End diff", buf, 0xCu);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end