@interface _NTKBundleBlockComplicationLoader
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)_loadClassesUsingBlock:(id)a3;
@end

@implementation _NTKBundleBlockComplicationLoader

- (void)_loadClassesUsingBlock:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  block = self->_block;
  if (block)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = block[2](block);
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v4[2](v4, *(*(&v11 + 1) + 8 * v10++));
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      block = self->_block;
      v6 = v4;
      v7 = _Block_copy(block);
      v8 = v6->_block;

      v9 = _Block_copy(v8);
      v10 = NTKEqualObjects(v7, v9);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setBlock:self->_block];
  return v4;
}

@end