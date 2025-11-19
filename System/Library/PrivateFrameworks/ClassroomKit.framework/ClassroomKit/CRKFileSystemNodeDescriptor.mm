@interface CRKFileSystemNodeDescriptor
+ (id)dataDescriptorWithFileName:(id)a3 content:(id)a4;
+ (id)directoryDescriptorWithFileName:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CRKFileSystemNodeDescriptor)initWithType:(int64_t)a3 fileName:(id)a4 content:(id)a5;
- (unint64_t)hash;
@end

@implementation CRKFileSystemNodeDescriptor

- (CRKFileSystemNodeDescriptor)initWithType:(int64_t)a3 fileName:(id)a4 content:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = CRKFileSystemNodeDescriptor;
  v10 = [(CRKFileSystemNodeDescriptor *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v12 = [v8 copy];
    fileName = v11->_fileName;
    v11->_fileName = v12;

    v14 = [v9 copy];
    content = v11->_content;
    v11->_content = v14;
  }

  return v11;
}

+ (id)directoryDescriptorWithFileName:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithType:0 fileName:v4 content:0];

  return v5;
}

+ (id)dataDescriptorWithFileName:(id)a3 content:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithType:1 fileName:v7 content:v6];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [CFSTR(""type fileName];
  v6 = [v5 mutableCopy];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __crk_tokenized_properties_block_invoke_0;
  v28[3] = &unk_278DC1280;
  v7 = v6;
  v29 = v7;
  [v7 enumerateObjectsUsingBlock:v28];

  v8 = self;
  v9 = v4;
  v10 = v7;
  if (v8 == v9)
  {
    v21 = 1;
  }

  else if ([(CRKFileSystemNodeDescriptor *)v9 isMemberOfClass:objc_opt_class()])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v23 = v10;
      v14 = *v25;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v24 + 1) + 8 * i);
          v17 = v9;
          v18 = [(CRKFileSystemNodeDescriptor *)v8 valueForKey:v16];
          v19 = [(CRKFileSystemNodeDescriptor *)v17 valueForKey:v16];

          if (v18 | v19)
          {
            v20 = [v18 isEqual:v19];

            if (!v20)
            {
              v21 = 0;
              goto LABEL_16;
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v21 = 1;
LABEL_16:
      v10 = v23;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)hash
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [CFSTR(""type fileName];
  v4 = [v3 mutableCopy];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __crk_tokenized_properties_block_invoke_0;
  v19[3] = &unk_278DC1280;
  v5 = v4;
  v20 = v5;
  [v5 enumerateObjectsUsingBlock:v19];

  v6 = self;
  v7 = v5;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [(CRKFileSystemNodeDescriptor *)v6 valueForKey:*(*(&v15 + 1) + 8 * i)];
        v10 ^= [v13 hash];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end