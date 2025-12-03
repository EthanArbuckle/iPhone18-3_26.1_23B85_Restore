@interface ICCRObject
+ (BOOL)resolveInstanceMethod:(SEL)method;
+ (id)keyFromSelector:(SEL)selector;
- (BOOL)isEqual:(id)equal;
- (ICCRDocument)document;
- (ICCRObject)initWithDocument:(id)document identity:(id)identity;
- (ICCRObject)initWithICCRCoder:(id)coder;
- (ICCRObject)initWithIdentity:(id)identity fields:(id)fields;
- (NSString)description;
- (id)deltaSince:(id)since in:(id)in;
- (id)tombstone;
- (unint64_t)hash;
- (void)encodeWithICCRCoder:(id)coder;
- (void)mergeWith:(id)with;
- (void)mergeWithObject:(id)object;
- (void)setDocument:(id)document;
- (void)setFieldKey:(id)key value:(id)value;
- (void)walkGraph:(id)graph;
@end

@implementation ICCRObject

- (ICCRObject)initWithDocument:(id)document identity:(id)identity
{
  documentCopy = document;
  identityCopy = identity;
  cRProperties = [objc_opt_class() CRProperties];
  v9 = [(ICCRObject *)self initWithIdentity:identityCopy fields:cRProperties];

  if (v9)
  {
    [(ICCRObject *)v9 setDocument:documentCopy];
  }

  return v9;
}

- (ICCRObject)initWithIdentity:(id)identity fields:(id)fields
{
  identityCopy = identity;
  fieldsCopy = fields;
  v12.receiver = self;
  v12.super_class = ICCRObject;
  v9 = [(ICCRObject *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identity, identity);
    objc_storeStrong(&v10->_fields, fields);
  }

  return v10;
}

- (ICCRObject)initWithICCRCoder:(id)coder
{
  v26 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([objc_opt_class() allowsUnknownProperties])
  {
    decodeKeys = [coderCopy decodeKeys];
  }

  else
  {
    cRProperties = [objc_opt_class() CRProperties];
    decodeKeys = [cRProperties allKeys];
  }

  v7 = [coderCopy decodeUUIDForKey:@"identity"];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v9 = decodeKeys;
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
        v15 = [coderCopy decodeObjectForKey:{v14, v21}];
        [v8 setObject:v15 forKeyedSubscript:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v11);
  }

  v16 = [(ICCRObject *)self initWithIdentity:v7 fields:v8];
  if (v16)
  {
    document = [coderCopy document];
    objects = [document objects];
    identity = [(ICCRObject *)v16 identity];
    [objects setObject:v16 forKeyedSubscript:identity];
  }

  return v16;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  identity = [(ICCRObject *)self identity];
  [coderCopy encodeUUID:identity forKey:@"identity"];

  fields = [(ICCRObject *)self fields];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__ICCRObject_encodeWithICCRCoder___block_invoke;
  v8[3] = &unk_278196498;
  v9 = coderCopy;
  v7 = coderCopy;
  [fields enumerateKeysAndObjectsUsingBlock:v8];
}

- (void)setFieldKey:(id)key value:(id)value
{
  valueCopy = value;
  keyCopy = key;
  fields = [(ICCRObject *)self fields];
  v9 = [fields mutableCopy];

  [(NSDictionary *)v9 setObject:valueCopy forKeyedSubscript:keyCopy];
  fields = self->_fields;
  self->_fields = v9;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  if (withCopy)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid ICCRObject merge userInfo:{classes must be equal for merge.", 0}];
      objc_exception_throw(v4);
    }

    [(ICCRObject *)self mergeWithObject:withCopy];
  }
}

- (void)mergeWithObject:(id)object
{
  fields = [object fields];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __30__ICCRObject_mergeWithObject___block_invoke;
  v5[3] = &unk_278196498;
  v5[4] = self;
  [fields enumerateKeysAndObjectsUsingBlock:v5];
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

- (void)setDocument:(id)document
{
  documentCopy = document;
  objc_storeWeak(&self->_document, documentCopy);
  objects = [documentCopy objects];
  identity = [(ICCRObject *)self identity];
  [objects setObject:self forKeyedSubscript:identity];

  v7 = objc_alloc(MEMORY[0x277CBEB38]);
  fields = [(ICCRObject *)self fields];
  v9 = [v7 initWithCapacity:{objc_msgSend(fields, "count")}];

  fields2 = [(ICCRObject *)self fields];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __26__ICCRObject_setDocument___block_invoke;
  v15[3] = &unk_2781964C0;
  v16 = documentCopy;
  v11 = v9;
  v17 = v11;
  selfCopy = self;
  v12 = documentCopy;
  [fields2 enumerateKeysAndObjectsUsingBlock:v15];

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

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  fields = [(ICCRObject *)self fields];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __28__ICCRObject_deltaSince_in___block_invoke;
  v17[3] = &unk_2781964E8;
  v18 = sinceCopy;
  v19 = inCopy;
  v10 = v8;
  v20 = v10;
  v11 = inCopy;
  v12 = sinceCopy;
  [fields enumerateKeysAndObjectsUsingBlock:v17];

  if ([v10 count])
  {
    v13 = objc_alloc(objc_opt_class());
    identity = [(ICCRObject *)self identity];
    v15 = [v13 initWithIdentity:identity fields:v10];
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

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  fields = [(ICCRObject *)self fields];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __24__ICCRObject_walkGraph___block_invoke;
  v7[3] = &unk_278196510;
  v8 = graphCopy;
  v6 = graphCopy;
  [fields enumerateKeysAndObjectsUsingBlock:v7];
}

- (id)tombstone
{
  v3 = objc_alloc(objc_opt_class());
  identity = [(ICCRObject *)self identity];
  v5 = [v3 initWithIdentity:identity fields:MEMORY[0x277CBEC10]];

  return v5;
}

- (unint64_t)hash
{
  identity = [(ICCRObject *)self identity];
  v3 = [identity hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identity = [(ICCRObject *)self identity];
    identity2 = [equalCopy identity];
    v7 = [identity isEqual:identity2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (NSString)description
{
  fields = [(ICCRObject *)self fields];
  v4 = [fields count];

  v5 = MEMORY[0x277CCACA8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  identity = [(ICCRObject *)self identity];
  cR_shortDescription = [identity CR_shortDescription];
  v10 = cR_shortDescription;
  if (v4)
  {
    fields2 = [(ICCRObject *)self fields];
    v12 = [v5 stringWithFormat:@"<%@ %p %@ %@>", v7, self, v10, fields2];
  }

  else
  {
    v12 = [v5 stringWithFormat:@"<%@ %p %@>", v7, self, cR_shortDescription];
  }

  return v12;
}

+ (id)keyFromSelector:(SEL)selector
{
  v3 = NSStringFromSelector(selector);
  if ([v3 hasPrefix:@"set"])
  {
    v4 = [v3 substringWithRange:{3, objc_msgSend(v3, "length") - 4}];

    v5 = [v4 substringToIndex:1];
    lowercaseString = [v5 lowercaseString];
    v7 = [v4 substringFromIndex:1];
    v3 = [lowercaseString stringByAppendingString:v7];
  }

  return v3;
}

+ (BOOL)resolveInstanceMethod:(SEL)method
{
  v5 = [ICCRObject keyFromSelector:?];
  if (v5 && ([self CRProperties], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKey:", v5), v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = NSStringFromSelector(method);
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

    class_addMethod(v10, method, v12, v11);
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