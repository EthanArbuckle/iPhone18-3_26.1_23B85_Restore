@interface IXAppRemovabilityMetadataList
- (BOOL)isEmpty;
- (BOOL)isEqual:(id)a3;
- (IXAppRemovabilityMetadataList)initWithCoder:(id)a3;
- (IXAppRemovabilityMetadataList)initWithInitialRemovability:(unint64_t)a3 client:(unint64_t)a4;
- (IXAppRemovabilityMetadataList)initWithInitialRemovabilityMetadata:(id)a3;
- (IXAppRemovabilityMetadataList)initWithMetadataDictionary:(id)a3;
- (IXAppRemovabilityMetadataList)initWithSerializedDictionary:(id)a3;
- (NSDictionary)propertyListRepresentation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mostRestrictiveRemovabilityMetadata;
- (unint64_t)hash;
- (unint64_t)removabilityForClient:(unint64_t)a3 notFoundRemovability:(unint64_t)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateRemovability:(unint64_t)a3 forClient:(unint64_t)a4;
- (void)updateRemovabilityWithMetadata:(id)a3;
@end

@implementation IXAppRemovabilityMetadataList

- (id)mostRestrictiveRemovabilityMetadata
{
  v2 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  if ([v2 count])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x3032000000;
    v10 = __Block_byref_object_copy__0;
    v11 = __Block_byref_object_dispose__0;
    v12 = 0;
    v6[0] = 0;
    v6[1] = v6;
    v6[2] = 0x2020000000;
    v6[3] = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __68__IXAppRemovabilityMetadataList_mostRestrictiveRemovabilityMetadata__block_invoke;
    v5[3] = &unk_1E85C5FF0;
    v5[4] = &v7;
    v5[5] = v6;
    [v2 enumerateKeysAndObjectsUsingBlock:v5];
    v3 = v8[5];
    _Block_object_dispose(v6, 8);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __68__IXAppRemovabilityMetadataList_mostRestrictiveRemovabilityMetadata__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  v8 = v7;
  v9 = *(*(a1 + 32) + 8);
  if (*(v9 + 40))
  {
    v10 = *(*(*(a1 + 40) + 8) + 24);
    if (v10 >= [v7 removability])
    {
      goto LABEL_5;
    }

    v9 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((v9 + 40), a3);
  *(*(*(a1 + 40) + 8) + 24) = [*(*(*(a1 + 32) + 8) + 40) removability];
LABEL_5:
  *a4 = 0;
}

- (IXAppRemovabilityMetadataList)initWithMetadataDictionary:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = IXAppRemovabilityMetadataList;
    v5 = [(IXAppRemovabilityMetadataList *)&v10 init];
    if (v5)
    {
      v6 = [v4 copy];
      clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
      v5->_clientToRemovabilityMetadataMap = v6;
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (IXAppRemovabilityMetadataList)initWithInitialRemovability:(unint64_t)a3 client:(unint64_t)a4
{
  v10.receiver = self;
  v10.super_class = IXAppRemovabilityMetadataList;
  v6 = [(IXAppRemovabilityMetadataList *)&v10 init];
  if (v6)
  {
    v7 = objc_opt_new();
    clientToRemovabilityMetadataMap = v6->_clientToRemovabilityMetadataMap;
    v6->_clientToRemovabilityMetadataMap = v7;

    [(IXAppRemovabilityMetadataList *)v6 updateRemovability:a3 forClient:a4];
  }

  return v6;
}

- (IXAppRemovabilityMetadataList)initWithInitialRemovabilityMetadata:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10.receiver = self;
    v10.super_class = IXAppRemovabilityMetadataList;
    v5 = [(IXAppRemovabilityMetadataList *)&v10 init];
    if (v5)
    {
      v6 = objc_opt_new();
      clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
      v5->_clientToRemovabilityMetadataMap = v6;

      [(IXAppRemovabilityMetadataList *)v5 updateRemovabilityWithMetadata:v4];
    }

    self = v5;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (IXAppRemovabilityMetadataList)initWithSerializedDictionary:(id)a3
{
  if (a3)
  {
    v4 = [a3 objectForKeyedSubscript:@"metadata"];
    objc_opt_class();
    v5 = v4;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    if (v6)
    {
      v16.receiver = self;
      v16.super_class = IXAppRemovabilityMetadataList;
      v8 = [(IXAppRemovabilityMetadataList *)&v16 init];
      if (v8)
      {
        v9 = objc_opt_new();
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __62__IXAppRemovabilityMetadataList_initWithSerializedDictionary___block_invoke;
        v14[3] = &unk_1E85C5FC8;
        v15 = v9;
        v10 = v9;
        [v6 enumerateObjectsUsingBlock:v14];
        v11 = [v10 copy];
        clientToRemovabilityMetadataMap = v8->_clientToRemovabilityMetadataMap;
        v8->_clientToRemovabilityMetadataMap = v11;
      }

      self = v8;
      v7 = self;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __62__IXAppRemovabilityMetadataList_initWithSerializedDictionary___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  objc_opt_class();
  v12 = v6;
  if (objc_opt_isKindOfClass())
  {
    v7 = v12;
    if (!v12)
    {
      goto LABEL_7;
    }

    v8 = [[IXAppRemovabilityMetadata alloc] initWithMetadataDictionary:v12];
    v9 = v8;
    if (v8)
    {
      v10 = *(a1 + 32);
      v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[IXAppRemovabilityMetadata client](v8, "client")}];
      [v10 setObject:v9 forKeyedSubscript:v11];
    }
  }

  v7 = v12;
LABEL_7:
  *a4 = 0;
}

- (void)updateRemovability:(unint64_t)a3 forClient:(unint64_t)a4
{
  v7 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v12 = [v7 mutableCopy];

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
  if (a3 == 1)
  {
    v9 = [v12 objectForKeyedSubscript:v8];

    if (v9)
    {
      [v12 removeObjectForKey:v8];
    }
  }

  else
  {
    v10 = [[IXAppRemovabilityMetadata alloc] initWithRemovability:a3 client:a4];
    [v12 setObject:v10 forKeyedSubscript:v8];
  }

  v11 = [v12 copy];
  [(IXAppRemovabilityMetadataList *)self setClientToRemovabilityMetadataMap:v11];
}

- (void)updateRemovabilityWithMetadata:(id)a3
{
  v9 = a3;
  v4 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v5 = [v4 mutableCopy];

  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v9, "client")}];
  if ([v9 removability] == 1)
  {
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      [v5 removeObjectForKey:v6];
    }
  }

  else
  {
    [v5 setObject:v9 forKeyedSubscript:v6];
  }

  v8 = [v5 copy];
  [(IXAppRemovabilityMetadataList *)self setClientToRemovabilityMetadataMap:v8];
}

- (unint64_t)removabilityForClient:(unint64_t)a3 notFoundRemovability:(unint64_t)a4
{
  if (![(IXAppRemovabilityMetadataList *)self isEmpty])
  {
    v7 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v9 = [v7 objectForKeyedSubscript:v8];

    if (v9)
    {
      a4 = [v9 removability];
    }
  }

  return a4;
}

- (BOOL)isEmpty
{
  v2 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)description
{
  v3 = objc_opt_new();
  v4 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __44__IXAppRemovabilityMetadataList_description__block_invoke;
  v11 = &unk_1E85C6018;
  v12 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v8];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5, v8, v9, v10, v11];

  return v6;
}

void __44__IXAppRemovabilityMetadataList_description__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a3 description];
  [v5 addObject:v6];

  *a4 = 0;
}

- (NSDictionary)propertyListRepresentation
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v4 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __59__IXAppRemovabilityMetadataList_propertyListRepresentation__block_invoke;
  v13 = &unk_1E85C6018;
  v14 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:&v10];

  v15 = @"metadata";
  v6 = [v5 copy];
  v16[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

void __59__IXAppRemovabilityMetadataList_propertyListRepresentation__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v5 = *(a1 + 32);
  v6 = [a3 dictionaryRepresentation];
  [v5 addObject:v6];

  *a4 = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [IXAppRemovabilityMetadataList allocWithZone:a3];
  v5 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v6 = [(IXAppRemovabilityMetadataList *)v4 initWithMetadataDictionary:v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = [(IXAppRemovabilityMetadataList *)v5 clientToRemovabilityMetadataMap];
    v7 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  v3 = [v2 hash];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IXAppRemovabilityMetadataList *)self clientToRemovabilityMetadataMap];
  [v4 encodeObject:v5 forKey:@"clientToRemovabilityMetadataMap"];
}

- (IXAppRemovabilityMetadataList)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = IXAppRemovabilityMetadataList;
  v5 = [(IXAppRemovabilityMetadataList *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"clientToRemovabilityMetadataMap"];
    clientToRemovabilityMetadataMap = v5->_clientToRemovabilityMetadataMap;
    v5->_clientToRemovabilityMetadataMap = v11;
  }

  return v5;
}

@end