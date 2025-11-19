@interface DiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4;
+ (id)GraphNodeWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5;
- (DiskImageGraphNode)initWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5;
- (DiskImageGraphNode)initWithTag:(id)a3 UUID:(id)a4 parentNode:(id)a5 metadata:(id)a6 isCache:(BOOL)a7;
- (DiskImageGraphNode)parent;
- (NSArray)children;
- (id)childrenInfoWithExtra:(BOOL)a3 error:(id *)a4;
- (id)getDescendants;
- (id)infoWithExtra:(BOOL)a3 error:(id *)a4;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)addDecendantsToArray:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setParent:(id)a3;
- (void)setTag:(id)a3;
- (void)setUUID:(id)a3;
@end

@implementation DiskImageGraphNode

+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4
{
  v5 = a3;
  if ([v5 validateAndPopObjectForKey:@"Tag" className:objc_opt_class() isOptional:0 error:a4] && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"UUID", objc_opt_class(), 0, a4) && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"ParentUUID", objc_opt_class(), 1, a4) && objc_msgSend(v5, "validateAndPopObjectForKey:className:isOptional:error:", @"Metadata", objc_opt_class(), 1, a4))
  {
    v6 = [v5 validateAndPopObjectForKey:@"IsCache" className:objc_opt_class() isOptional:0 error:a4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DiskImageGraphNode)initWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5
{
  v7 = a3;
  v27.receiver = self;
  v27.super_class = DiskImageGraphNode;
  v8 = [(DiskImageGraphNode *)&v27 init];
  if (v8)
  {
    v9 = [v7 objectForKey:@"Tag"];
    tag = v8->_tag;
    v8->_tag = v9;

    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [v7 objectForKey:@"UUID"];
    v13 = [v11 initWithUUIDString:v12];
    UUID = v8->_UUID;
    v8->_UUID = v13;

    v15 = [v7 objectForKey:@"IsCache"];
    v8->_isCache = [v15 BOOLValue];

    objc_storeStrong(&v8->_pstackDict, a3);
    v16 = [v7 objectForKey:@"ParentUUID"];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CCAD78]);
      v18 = [v7 objectForKey:@"ParentUUID"];
      v19 = [v17 initWithUUIDString:v18];
      parentUUID = v8->_parentUUID;
      v8->_parentUUID = v19;
    }

    v21 = [v7 objectForKey:@"Metadata"];

    if (v21)
    {
      v22 = [v7 objectForKey:@"Metadata"];
      metadata = v8->_metadata;
      v8->_metadata = v22;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableChildren = v8->_mutableChildren;
    v8->_mutableChildren = v24;
  }

  return v8;
}

+ (id)GraphNodeWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:@"PluginName"];

  v10 = off_278F803C0;
  if (v9)
  {
    v10 = off_278F803C8;
  }

  v11 = [objc_alloc(*v10) initWithDictionary:v8 workDir:v7 error:a5];

  return v11;
}

- (DiskImageGraphNode)initWithTag:(id)a3 UUID:(id)a4 parentNode:(id)a5 metadata:(id)a6 isCache:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = DiskImageGraphNode;
  v16 = [(DiskImageGraphNode *)&v24 init];
  v17 = v16;
  if (v16)
  {
    if (v12)
    {
      v18 = v12;
    }

    else
    {
      v18 = &stru_285C05C28;
    }

    objc_storeStrong(&v16->_tag, v18);
    objc_storeStrong(&v17->_UUID, a4);
    objc_storeWeak(&v17->_parent, v14);
    v19 = [v14 UUID];
    parentUUID = v17->_parentUUID;
    v17->_parentUUID = v19;

    objc_storeStrong(&v17->_metadata, a6);
    v17->_isCache = a7;
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableChildren = v17->_mutableChildren;
    v17->_mutableChildren = v21;
  }

  return v17;
}

- (void)setTag:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_tag, a3);
  v5 = [(DiskImageGraphNode *)self pstackDict];

  if (v5)
  {
    v6 = [(DiskImageGraphNode *)self pstackDict];
    [v6 setObject:v7 forKey:@"Tag"];
  }
}

- (void)setUUID:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_UUID, a3);
  v5 = [(DiskImageGraphNode *)self pstackDict];

  if (v5)
  {
    v6 = [(DiskImageGraphNode *)self pstackDict];
    v7 = [v8 UUIDString];
    [v6 setObject:v7 forKey:@"UUID"];
  }
}

- (DiskImageGraphNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)setParent:(id)a3
{
  v10 = a3;
  objc_storeWeak(&self->_parent, v10);
  v4 = [v10 UUID];
  parentUUID = self->_parentUUID;
  self->_parentUUID = v4;

  v6 = [(DiskImageGraphNode *)self pstackDict];

  if (v6)
  {
    v7 = [(DiskImageGraphNode *)self pstackDict];
    v8 = [v10 UUID];
    v9 = [v8 UUIDString];
    [v7 setObject:v9 forKey:@"ParentUUID"];
  }
}

- (void)setMetadata:(id)a3
{
  v7 = a3;
  objc_storeStrong(&self->_metadata, a3);
  v5 = [(DiskImageGraphNode *)self pstackDict];

  if (v5)
  {
    v6 = [(DiskImageGraphNode *)self pstackDict];
    [v6 setObject:v7 forKey:@"Metadata"];
  }
}

- (id)getDescendants
{
  v3 = MEMORY[0x277CBEB18];
  v4 = [(DiskImageGraphNode *)self mutableChildren];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(v4, "count")}];

  [(DiskImageGraphNode *)self addDecendantsToArray:v5];

  return v5;
}

- (void)addDecendantsToArray:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(DiskImageGraphNode *)self mutableChildren];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v4 addObject:v10];
        [v10 addDecendantsToArray:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)toDictionary
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(DiskImageGraphNode *)self tag];
  v5 = [(DiskImageGraphNode *)self UUID];
  v6 = [v5 UUIDString];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DiskImageGraphNode isCache](self, "isCache")}];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"Tag", v6, @"UUID", v7, @"IsCache", 0}];

  v9 = [(DiskImageGraphNode *)self parentUUID];

  if (v9)
  {
    v10 = [(DiskImageGraphNode *)self parentUUID];
    v11 = [v10 UUIDString];
    [v8 setObject:v11 forKey:@"ParentUUID"];
  }

  v12 = [(DiskImageGraphNode *)self metadata];

  if (v12)
  {
    v13 = [(DiskImageGraphNode *)self metadata];
    [v8 setObject:v13 forKey:@"Metadata"];
  }

  return v8;
}

- (NSArray)children
{
  v2 = [(DiskImageGraphNode *)self mutableChildren];
  v3 = [v2 copy];

  return v3;
}

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  v4 = [(DiskImageGraphNode *)self URL];
  v5 = [(DIShadowNode *)v3 initWithURL:v4 isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

- (id)childrenInfoWithExtra:(BOOL)a3 error:(id *)a4
{
  v7 = objc_opt_new();
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__3;
  v26 = __Block_byref_object_dispose__3;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = [(DiskImageGraphNode *)self mutableChildren];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__DiskImageGraphNode_Info__childrenInfoWithExtra_error___block_invoke;
  v13[3] = &unk_278F80B60;
  v17 = a3;
  v15 = &v22;
  v16 = &v18;
  v9 = v7;
  v14 = v9;
  [v8 enumerateObjectsUsingBlock:v13];

  if (a4)
  {
    v10 = v23[5];
    if (v10)
    {
      *a4 = v10;
    }
  }

  if (v19[3])
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);

  return v11;
}

void __56__DiskImageGraphNode_Info__childrenInfoWithExtra_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 40) + 8);
  obj = *(v7 + 40);
  v8 = [a2 infoWithExtra:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1 + 32) addObject:v8];
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

- (id)infoWithExtra:(BOOL)a3 error:(id *)a4
{
  v5 = a3;
  v7 = objc_opt_new();
  v8 = [(DiskImageGraphNode *)self UUID];
  v9 = [v8 UUIDString];
  [v7 setObject:v9 forKeyedSubscript:@"UUID"];

  v10 = [(DiskImageGraphNode *)self URL];
  v11 = [v10 absoluteString];
  [v7 setObject:v11 forKeyedSubscript:@"URL"];

  if ([(DiskImageGraphNode *)self isCache])
  {
    v12 = MEMORY[0x277CBEC38];
  }

  else
  {
    v12 = MEMORY[0x277CBEC28];
  }

  [v7 setObject:v12 forKeyedSubscript:@"IsCache"];
  v13 = [(DiskImageGraphNode *)self tag];
  if (v13)
  {
    v14 = v13;
    v15 = [(DiskImageGraphNode *)self tag];
    v16 = [v15 length];

    if (v16)
    {
      v17 = [(DiskImageGraphNode *)self tag];
      [v7 setObject:v17 forKeyedSubscript:@"Tag"];
    }
  }

  if (v5)
  {
    v18 = [(DiskImageGraphNode *)self URL];
    v19 = [DiskImageGraph getImageInfoDictWithURL:v18 error:a4];

    if (!v19)
    {
      goto LABEL_11;
    }

    [v7 setObject:v19 forKeyedSubscript:@"Image Info"];
  }

  v19 = v7;
LABEL_11:

  return v19;
}

@end