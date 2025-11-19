@interface DiskImageGraphNode
+ (BOOL)validateWithDictionary:(id)a3 error:(id *)a4;
+ (id)GraphNodeWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5;
- (DiskImageGraphNode)initWithDictionary:(id)a3 workDir:(id)a4 error:(id *)a5;
- (DiskImageGraphNode)initWithTag:(id)a3 UUID:(id)a4 parentNode:(id)a5 metadata:(id)a6 isCache:(BOOL)a7;
- (DiskImageGraphNode)parent;
- (NSArray)children;
- (id)getDescendants;
- (id)toDIShadowNode;
- (id)toDictionary;
- (void)addDecendantsToArray:(id)a3;
- (void)setMetadata:(id)a3;
- (void)setParent:(id)a3;
- (void)setTag:(id)a3;
- (void)setUUID:(id)a3;
@end

@implementation DiskImageGraphNode

- (id)toDIShadowNode
{
  v3 = [DIShadowNode alloc];
  v4 = [(DiskImageGraphNode *)self URL];
  v5 = [(DIShadowNode *)v3 initWithURL:v4 isCache:[(DiskImageGraphNode *)self isCache]];

  return v5;
}

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

    v11 = [NSUUID alloc];
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
      v17 = [NSUUID alloc];
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

    v24 = objc_alloc_init(NSMutableArray);
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

  v10 = off_100201000;
  if (v9)
  {
    v10 = off_100201008;
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
      v18 = &stru_100234B28;
    }

    objc_storeStrong(&v16->_tag, v18);
    objc_storeStrong(&v17->_UUID, a4);
    objc_storeWeak(&v17->_parent, v14);
    v19 = [v14 UUID];
    parentUUID = v17->_parentUUID;
    v17->_parentUUID = v19;

    objc_storeStrong(&v17->_metadata, a6);
    v17->_isCache = a7;
    v21 = objc_alloc_init(NSMutableArray);
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
  v3 = [(DiskImageGraphNode *)self mutableChildren];
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);

  [(DiskImageGraphNode *)self addDecendantsToArray:v4];

  return v4;
}

- (void)addDecendantsToArray:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(DiskImageGraphNode *)self mutableChildren];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v4 addObject:v10];
        [v10 addDecendantsToArray:v4];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)toDictionary
{
  v3 = [NSMutableDictionary alloc];
  v4 = [(DiskImageGraphNode *)self tag];
  v5 = [(DiskImageGraphNode *)self UUID];
  v6 = [v5 UUIDString];
  v7 = [NSNumber numberWithBool:[(DiskImageGraphNode *)self isCache]];
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

@end