@interface ICCRObject
+ (BOOL)resolveInstanceMethod:(SEL)a3;
+ (id)keyFromSelector:(SEL)a3;
- (BOOL)isEqual:(id)a3;
- (ICCRDocument)document;
- (ICCRObject)initWithDocument:(id)a3 identity:(id)a4;
- (ICCRObject)initWithICCRCoder:(id)a3;
- (ICCRObject)initWithIdentity:(id)a3 fields:(id)a4;
- (NSString)description;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)tombstone;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)a3;
- (void)mergeWith:(id)a3;
- (void)mergeWithObject:(id)a3;
- (void)setDocument:(id)a3;
- (void)setFieldKey:(id)a3 value:(id)a4;
- (void)walkGraph:(id)a3;
@end

@implementation ICCRObject

- (ICCRObject)initWithDocument:(id)a3 identity:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() CRProperties];
  v9 = [(ICCRObject *)self initWithIdentity:v7 fields:v8];

  if (v9)
  {
    [(ICCRObject *)v9 setDocument:v6];
  }

  return v9;
}

- (ICCRObject)initWithIdentity:(id)a3 fields:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = ICCRObject;
  v9 = [(ICCRObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, a3);
    objc_storeStrong(&v10->_fields, a4);
  }

  return v10;
}

- (ICCRObject)initWithICCRCoder:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([objc_opt_class() allowsUnknownProperties])
  {
    v5 = [v4 decodeKeys];
  }

  else
  {
    v6 = [objc_opt_class() CRProperties];
    v5 = [v6 allKeys];
  }

  v7 = [v4 decodeUUIDForKey:@"identity"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v22;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v15 = [v4 decodeObjectForKey:{v14, v21}];
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = [(ICCRObject *)self initWithIdentity:v7 fields:v8];
  if (v16)
  {
    v17 = [v4 document];
    v18 = [v17 objects];
    v19 = [(ICCRObject *)v16 identity];
    [v18 setObject:v16 forKeyedSubscript:v19];
  }

  return v16;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICCRObject *)self identity];
  [v4 encodeUUID:v5 forKey:@"identity"];

  v6 = [(ICCRObject *)self fields];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__ICCRObject_encodeWithICCRCoder___block_invoke;
  v8[3] = &unk_278196498;
  v9 = v4;
  v7 = v4;
  [v6 enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)setFieldKey:(id)a3 value:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCRObject *)self fields];
  v9 = [v8 mutableCopy];

  [(NSDictionary *)v9 setObject:v6 forKeyedSubscript:v7];
  fields = self->_fields;
  self->_fields = v9;
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid ICCRObject merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(ICCRObject *)self mergeWithObject:v5];
  }
}

- (void)mergeWithObject:(id)a3
{
  v4 = [a3 fields];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ICCRObject_mergeWithObject___block_invoke;
  v5[3] = &unk_278196498;
  v5[4] = self;
  [v4 enumerateKeysAndObjectsUsingBlock:v5];
}

void __30__ICCRObject_mergeWithObject___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v8 = [v4 fields];
  v7 = [v8 objectForKeyedSubscript:v6];

  [v7 mergeWith:v5];
}

- (void)setDocument:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_document, v4);
  v5 = [v4 objects];
  v6 = [(ICCRObject *)self identity];
  [v5 setObject:self forKeyedSubscript:v6];

  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  v8 = [(ICCRObject *)self fields];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = [(ICCRObject *)self fields];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __26__ICCRObject_setDocument___block_invoke;
  v15[3] = &unk_2781964C0;
  v16 = v4;
  v11 = v9;
  v17 = v11;
  v18 = self;
  v12 = v4;
  [v10 enumerateKeysAndObjectsUsingBlock:v15];

  fields = self->_fields;
  self->_fields = v11;
  v14 = v11;
}

void __26__ICCRObject_setDocument___block_invoke(id *a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [a1[4] localObject:a3];
  if (v5)
  {
    [a1[5] setObject:v5 forKeyedSubscript:v8];
  }

  else
  {
    v6 = [a1[6] fields];
    v7 = [v6 objectForKeyedSubscript:v8];
    [a1[5] setObject:v7 forKeyedSubscript:v8];
  }

  [v5 setDocument:a1[4]];
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = [(ICCRObject *)self fields];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __28__ICCRObject_deltaSince_in___block_invoke;
  v17[3] = &unk_2781964E8;
  v18 = v6;
  v19 = v7;
  v10 = v8;
  v20 = v10;
  v11 = v7;
  v12 = v6;
  [v9 enumerateKeysAndObjectsUsingBlock:v17];

  if ([v10 count])
  {
    v13 = objc_alloc(objc_opt_class());
    v14 = [(ICCRObject *)self identity];
    v15 = [v13 initWithIdentity:v14 fields:v10];
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void __28__ICCRObject_deltaSince_in___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = [a3 deltaSince:*(a1 + 32) in:*(a1 + 40)];
  if (v5)
  {
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }
}

- (void)walkGraph:(id)a3
{
  v4 = a3;
  v5 = [(ICCRObject *)self fields];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__ICCRObject_walkGraph___block_invoke;
  v7[3] = &unk_278196510;
  v8 = v4;
  v6 = v4;
  [v5 enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)tombstone
{
  v3 = objc_alloc(objc_opt_class());
  v4 = [(ICCRObject *)self identity];
  v5 = [v3 initWithIdentity:v4 fields:MEMORY[0x277CBEC10]];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(ICCRObject *)self identity];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCRObject *)self identity];
    v6 = [v4 identity];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  v3 = [(ICCRObject *)self fields];
  v4 = [v3 count];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = [(ICCRObject *)self identity];
  v9 = [v8 CR_shortDescription];
  v10 = v9;
  if (v4)
  {
    v11 = [(ICCRObject *)self fields];
    v12 = [v5 stringWithFormat:@"<%@ %p %@ %@>", v7, self, v10, v11];
  }

  else
  {
    v12 = [v5 stringWithFormat:@"<%@ %p %@>", v7, self, v9];
  }

  return v12;
}

+ (id)keyFromSelector:(SEL)a3
{
  v3 = NSStringFromSelector(a3);
  if ([v3 hasPrefix:@"set"])
  {
    v4 = [v3 substringWithRange:{3, objc_msgSend(v3, "length") - 4}];

    v5 = [v4 substringToIndex:1];
    v6 = [v5 lowercaseString];
    v7 = [v4 substringFromIndex:1];
    v3 = [v6 stringByAppendingString:v7];
  }

  return v3;
}

+ (BOOL)resolveInstanceMethod:(SEL)a3
{
  v5 = [ICCRObject keyFromSelector:?];
  if (v5 && ([a1 CRProperties], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = NSStringFromSelector(a3);
    v9 = [v8 hasPrefix:@"set"];

    v10 = objc_opt_class();
    if (v9)
    {
      v11 = "v@:@";
      v12 = setPropertyIMP;
    }

    else
    {
      v11 = "@@:";
      v12 = propertyIMP;
    }

    class_addMethod(v10, a3, v12, v11);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (ICCRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

@end