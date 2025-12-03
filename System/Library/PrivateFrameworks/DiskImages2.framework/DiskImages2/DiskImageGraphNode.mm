@interface DiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error;
+ (id)GraphNodeWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (DiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error;
- (DiskImageGraphNode)initWithTag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache;
- (DiskImageGraphNode)parent;
- (NSArray)children;
- (id)childrenInfoWithExtra:(BOOL)extra error:(id *)error;
- (id)getDescendants;
- (id)infoWithExtra:(BOOL)extra error:(id *)error;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)addDecendantsToArray:(id)array;
- (void)setMetadata:(id)metadata;
- (void)setParent:(id)parent;
- (void)setTag:(id)tag;
- (void)setUUID:(id)d;
@end

@implementation DiskImageGraphNode

+ (BOOL)validateWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  if ([dictionaryCopy validateAndPopObjectForKey:@"Tag" className:objc_opt_class() isOptional:0 error:error] && objc_msgSend(dictionaryCopy, "validateAndPopObjectForKey:className:isOptional:error:", @"UUID", objc_opt_class(), 0, error) && objc_msgSend(dictionaryCopy, "validateAndPopObjectForKey:className:isOptional:error:", @"ParentUUID", objc_opt_class(), 1, error) && objc_msgSend(dictionaryCopy, "validateAndPopObjectForKey:className:isOptional:error:", @"Metadata", objc_opt_class(), 1, error))
  {
    v6 = [dictionaryCopy validateAndPopObjectForKey:@"IsCache" className:objc_opt_class() isOptional:0 error:error];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (DiskImageGraphNode)initWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dictionaryCopy = dictionary;
  v27.receiver = self;
  v27.super_class = DiskImageGraphNode;
  v8 = [(DiskImageGraphNode *)&v27 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKey:@"Tag"];
    tag = v8->_tag;
    v8->_tag = v9;

    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [dictionaryCopy objectForKey:@"UUID"];
    v13 = [v11 initWithUUIDString:v12];
    UUID = v8->_UUID;
    v8->_UUID = v13;

    v15 = [dictionaryCopy objectForKey:@"IsCache"];
    v8->_isCache = [v15 BOOLValue];

    objc_storeStrong(&v8->_pstackDict, dictionary);
    v16 = [dictionaryCopy objectForKey:@"ParentUUID"];

    if (v16)
    {
      v17 = objc_alloc(MEMORY[0x277CCAD78]);
      v18 = [dictionaryCopy objectForKey:@"ParentUUID"];
      v19 = [v17 initWithUUIDString:v18];
      parentUUID = v8->_parentUUID;
      v8->_parentUUID = v19;
    }

    v21 = [dictionaryCopy objectForKey:@"Metadata"];

    if (v21)
    {
      v22 = [dictionaryCopy objectForKey:@"Metadata"];
      metadata = v8->_metadata;
      v8->_metadata = v22;
    }

    v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableChildren = v8->_mutableChildren;
    v8->_mutableChildren = v24;
  }

  return v8;
}

+ (id)GraphNodeWithDictionary:(id)dictionary workDir:(id)dir error:(id *)error
{
  dirCopy = dir;
  dictionaryCopy = dictionary;
  v9 = [dictionaryCopy objectForKeyedSubscript:@"PluginName"];

  v10 = off_278F803C0;
  if (v9)
  {
    v10 = off_278F803C8;
  }

  v11 = [objc_alloc(*v10) initWithDictionary:dictionaryCopy workDir:dirCopy error:error];

  return v11;
}

- (DiskImageGraphNode)initWithTag:(id)tag UUID:(id)d parentNode:(id)node metadata:(id)metadata isCache:(BOOL)cache
{
  tagCopy = tag;
  dCopy = d;
  nodeCopy = node;
  metadataCopy = metadata;
  v24.receiver = self;
  v24.super_class = DiskImageGraphNode;
  v16 = [(DiskImageGraphNode *)&v24 init];
  v17 = v16;
  if (v16)
  {
    if (tagCopy)
    {
      v18 = tagCopy;
    }

    else
    {
      v18 = &stru_285C05C28;
    }

    objc_storeStrong(&v16->_tag, v18);
    objc_storeStrong(&v17->_UUID, d);
    objc_storeWeak(&v17->_parent, nodeCopy);
    uUID = [nodeCopy UUID];
    parentUUID = v17->_parentUUID;
    v17->_parentUUID = uUID;

    objc_storeStrong(&v17->_metadata, metadata);
    v17->_isCache = cache;
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableChildren = v17->_mutableChildren;
    v17->_mutableChildren = v21;
  }

  return v17;
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  objc_storeStrong(&self->_tag, tag);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    [pstackDict2 setObject:tagCopy forKey:@"Tag"];
  }
}

- (void)setUUID:(id)d
{
  dCopy = d;
  objc_storeStrong(&self->_UUID, d);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    uUIDString = [dCopy UUIDString];
    [pstackDict2 setObject:uUIDString forKey:@"UUID"];
  }
}

- (DiskImageGraphNode)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (void)setParent:(id)parent
{
  parentCopy = parent;
  objc_storeWeak(&self->_parent, parentCopy);
  uUID = [parentCopy UUID];
  parentUUID = self->_parentUUID;
  self->_parentUUID = uUID;

  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    uUID2 = [parentCopy UUID];
    uUIDString = [uUID2 UUIDString];
    [pstackDict2 setObject:uUIDString forKey:@"ParentUUID"];
  }
}

- (void)setMetadata:(id)metadata
{
  metadataCopy = metadata;
  objc_storeStrong(&self->_metadata, metadata);
  pstackDict = [(DiskImageGraphNode *)self pstackDict];

  if (pstackDict)
  {
    pstackDict2 = [(DiskImageGraphNode *)self pstackDict];
    [pstackDict2 setObject:metadataCopy forKey:@"Metadata"];
  }
}

- (id)getDescendants
{
  v3 = MEMORY[0x277CBEB18];
  mutableChildren = [(DiskImageGraphNode *)self mutableChildren];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(mutableChildren, "count")}];

  [(DiskImageGraphNode *)self addDecendantsToArray:v5];

  return v5;
}

- (void)addDecendantsToArray:(id)array
{
  v17 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mutableChildren = [(DiskImageGraphNode *)self mutableChildren];
  v6 = [mutableChildren countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(mutableChildren);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [arrayCopy addObject:v10];
        [v10 addDecendantsToArray:arrayCopy];
      }

      v7 = [mutableChildren countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)toDictionary
{
  v3 = objc_alloc(MEMORY[0x277CBEB38]);
  v4 = [(DiskImageGraphNode *)self tag];
  uUID = [(DiskImageGraphNode *)self UUID];
  uUIDString = [uUID UUIDString];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[DiskImageGraphNode isCache](self, "isCache")}];
  v8 = [v3 initWithObjectsAndKeys:{v4, @"Tag", uUIDString, @"UUID", v7, @"IsCache", 0}];

  parentUUID = [(DiskImageGraphNode *)self parentUUID];

  if (parentUUID)
  {
    parentUUID2 = [(DiskImageGraphNode *)self parentUUID];
    uUIDString2 = [parentUUID2 UUIDString];
    [v8 setObject:uUIDString2 forKey:@"ParentUUID"];
  }

  metadata = [(DiskImageGraphNode *)self metadata];

  if (metadata)
  {
    metadata2 = [(DiskImageGraphNode *)self metadata];
    [v8 setObject:metadata2 forKey:@"Metadata"];
  }

  return v8;
}

- (NSArray)children
{
  mutableChildren = [(DiskImageGraphNode *)self mutableChildren];
  v3 = [mutableChildren copy];

  return v3;
}

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  v4 = [(DiskImageGraphNode *)self URL];
  v5 = [(DIShadowNode *)v3 initWithURL:v4 isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

- (id)childrenInfoWithExtra:(BOOL)extra error:(id *)error
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
  mutableChildren = [(DiskImageGraphNode *)self mutableChildren];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__DiskImageGraphNode_Info__childrenInfoWithExtra_error___block_invoke;
  v13[3] = &unk_278F80B60;
  extraCopy = extra;
  v15 = &v22;
  v16 = &v18;
  v9 = v7;
  v14 = v9;
  [mutableChildren enumerateObjectsUsingBlock:v13];

  if (error)
  {
    v10 = v23[5];
    if (v10)
    {
      *error = v10;
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

- (id)infoWithExtra:(BOOL)extra error:(id *)error
{
  extraCopy = extra;
  v7 = objc_opt_new();
  uUID = [(DiskImageGraphNode *)self UUID];
  uUIDString = [uUID UUIDString];
  [v7 setObject:uUIDString forKeyedSubscript:@"UUID"];

  v10 = [(DiskImageGraphNode *)self URL];
  absoluteString = [v10 absoluteString];
  [v7 setObject:absoluteString forKeyedSubscript:@"URL"];

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

  if (extraCopy)
  {
    v18 = [(DiskImageGraphNode *)self URL];
    v19 = [DiskImageGraph getImageInfoDictWithURL:v18 error:error];

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