@interface BMIndexRow
- (BMIndexRow)initWithIndexFields:(id)a3 storeBookmark:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation BMIndexRow

- (BMIndexRow)initWithIndexFields:(id)a3 storeBookmark:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = BMIndexRow;
  v9 = [(BMIndexRow *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_indexFields, a3);
    objc_storeStrong(&v10->_storeBookmark, a4);
  }

  return v10;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"<%@ %p> indexFields: %@, storeBookmark: %@", objc_opt_class(), self, self->_indexFields, self->_storeBookmark];

  return v2;
}

- (unint64_t)hash
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(BMStoreBookmark *)self->_storeBookmark hash];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = self->_indexFields;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 ^= [*(*(&v11 + 1) + 8 * v8++) hash];
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v3;
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
      v5 = v4;
      indexFields = self->_indexFields;
      v7 = [(BMIndexRow *)v5 indexFields];
      if ([(NSArray *)indexFields isEqual:v7])
      {
        storeBookmark = self->_storeBookmark;
        v9 = [(BMIndexRow *)v5 storeBookmark];
        v10 = [(BMStoreBookmark *)storeBookmark isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

@end