@interface ICCRSet
- (BOOL)containsObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICCRDocument)document;
- (ICCRSet)initWithDocument:(id)a3;
- (ICCRSet)initWithICCRCoder:(id)a3;
- (ICCRSet)initWithICCRCoder:(id)a3 set:(const void *)a4;
- (ICCRSet)initWithICCRCoder:(id)a3 set:(const void *)a4 elementValueDecoder:(id)a5;
- (NSArray)allObjects;
- (NSString)description;
- (id)anyObject;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)member:(id)a3;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
- (unint64_t)hash;
- (void)addObject:(id)a3;
- (void)addObserver:(id)a3;
- (void)encodeWithICCRCoder:(id)a3;
- (void)encodeWithICCRCoder:(id)a3 set:(void *)a4;
- (void)encodeWithICCRCoder:(id)a3 set:(void *)a4 elementValueCoder:(id)a5;
- (void)mergeWith:(id)a3;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setObject:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation ICCRSet

- (ICCRSet)initWithDocument:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ICCRSet;
  v5 = [(ICCRSet *)&v11 init];
  if (v5)
  {
    v6 = [[ICCRDictionary alloc] initWithDocument:v4];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    v8 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = v8;
  }

  return v5;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v8 = a3;
  v4 = [v8 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 4)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 4;
    operator new();
  }

  v6 = *(v4 + 40);
  v7 = [(ICCRSet *)self dictionary];
  [v7 encodeWithICCRCoder:v8 dictionary:v6 elementValueCoder:&__block_literal_global_55];
}

void __31__ICCRSet_encodeWithICCRCoder___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v11 = a2;
  v8 = a3;
  v9 = a5;
  if (v8 && [v8 conformsToProtocol:&unk_282759DF8])
  {
    *(a4 + 32) |= 2u;
    v10 = *(a4 + 48);
    if (!v10)
    {
      operator new();
    }

    [v9 encodeObject:v8 forObjectID:v10];
  }
}

- (void)encodeWithICCRCoder:(id)a3 set:(void *)a4
{
  v7 = a3;
  v6 = [(ICCRSet *)self dictionary];
  [v6 encodeWithICCRCoder:v7 dictionary:a4];
}

- (void)encodeWithICCRCoder:(id)a3 set:(void *)a4 elementValueCoder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(ICCRSet *)self dictionary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__ICCRSet_encodeWithICCRCoder_set_elementValueCoder___block_invoke;
  v12[3] = &unk_278199568;
  v11 = v9;
  v13 = v11;
  [v10 encodeWithICCRCoder:v8 dictionary:a4 elementValueCoder:v12];
}

- (ICCRSet)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 4)
  {
    v6 = [(ICCRSet *)self initWithICCRCoder:v4 set:*(v5 + 40)];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(ICCRSet *)self initWithDocument:v7];
  }

  return v6;
}

- (ICCRSet)initWithICCRCoder:(id)a3 set:(const void *)a4
{
  v6 = a3;
  v7 = [v6 document];
  v8 = [(ICCRSet *)self initWithDocument:v7];

  if (v8)
  {
    v9 = [[ICCRDictionary alloc] initWithICCRCoder:v6 dictionary:a4 elementValueDecoder:&__block_literal_global_64];
    [(ICCRSet *)v8 setDictionary:v9];
  }

  return v8;
}

id __33__ICCRSet_initWithICCRCoder_set___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if ((*(a2 + 32) & 2) != 0)
  {
    v9 = *(a2 + 48);
    if (!v9)
    {
      v9 = *(CRDT::Dictionary_Element::default_instance(v6) + 48);
    }

    v8 = [(CRDT::Dictionary_Element *)v7 decodeObjectForProtobufObjectID:v9];
  }

  else
  {
    v8 = 0;
  }

  v10 = v8;
  *a3 = v8;

  return v8;
}

- (ICCRSet)initWithICCRCoder:(id)a3 set:(const void *)a4 elementValueDecoder:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [v8 document];
  v11 = [(ICCRSet *)self initWithDocument:v10];

  if (v11)
  {
    v12 = [ICCRDictionary alloc];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__ICCRSet_initWithICCRCoder_set_elementValueDecoder___block_invoke;
    v15[3] = &unk_278199590;
    v16 = v9;
    v13 = [(ICCRDictionary *)v12 initWithICCRCoder:v8 dictionary:a4 elementValueDecoder:v15];
    [(ICCRSet *)v11 setDictionary:v13];
  }

  return v11;
}

id __53__ICCRSet_initWithICCRCoder_set_elementValueDecoder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*(*(a1 + 32) + 16))();
  *a3 = v4;

  return v4;
}

- (id)member:(id)a3
{
  v4 = a3;
  v5 = [(ICCRSet *)self dictionary];
  v6 = [v5 objectForKey:v4];

  return v6;
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v5 = [(ICCRSet *)self dictionary];
  v6 = [v5 objectForKey:v4];
  v7 = v6 != 0;

  return v7;
}

- (unint64_t)count
{
  v2 = [(ICCRSet *)self dictionary];
  v3 = [v2 count];

  return v3;
}

- (NSArray)allObjects
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[ICCRSet count](self, "count")}];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = [(ICCRSet *)self dictionary];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)anyObject
{
  v2 = [(ICCRSet *)self dictionary];
  v3 = [v2 keyEnumerator];
  v4 = [v3 nextObject];

  return v4;
}

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v8 = [(ICCRSet *)self dictionary];
  v9 = [v8 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v9;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  v4 = [(ICCRSet *)self observers];
  [v4 addObject:v5];
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  v4 = [(ICCRSet *)self observers];
  [v4 removeObject:v5];
}

- (void)addObject:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCRSet *)self dictionary];
  [v5 setObject:v4 forKey:v4];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v6 = [(ICCRSet *)self observers];
  v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v7)
  {
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v10 + 1) + 8 * v9++) setUpdated:self];
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeObject:(id)a3
{
  v5 = a3;
  v4 = [(ICCRSet *)self dictionary];
  [v4 removeObjectForKey:v5];
}

- (void)removeAllObjects
{
  v2 = [(ICCRSet *)self dictionary];
  [v2 removeAllObjects];
}

- (void)setObject:(id)a3
{
  v4 = a3;
  [(ICCRSet *)self removeAllObjects];
  if (v4)
  {
    [(ICCRSet *)self addObject:v4];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCRSet *)self dictionary];
    v6 = [v4 dictionary];
    v7 = [v5 isEqual:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(ICCRSet *)self dictionary];
  v3 = [v2 hash];

  return v3;
}

- (void)mergeWith:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v6);
  }

  v4 = [(ICCRSet *)self dictionary];
  v5 = [v7 dictionary];
  [v4 mergeWith:v5];
}

- (ICCRDocument)document
{
  v2 = [(ICCRSet *)self dictionary];
  v3 = [v2 document];

  return v3;
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ICCRSet *)self dictionary];
  v9 = [v8 deltaSince:v6 in:v7];

  if (v9)
  {
    v10 = [[ICCRSet alloc] initWithDocument:v7];
    [(ICCRSet *)v10 setDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)walkGraph:(id)a3
{
  v5 = a3;
  v4 = [(ICCRSet *)self dictionary];
  v5[2](v5, v4);
}

- (NSString)description
{
  if ([(ICCRSet *)self count])
  {
    v3 = MEMORY[0x277CCAB68];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p (\n"), v5, self;

    v7 = [(ICCRSet *)self dictionary];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __22__ICCRSet_description__block_invoke;
    v13[3] = &unk_2781995B8;
    v8 = v6;
    v14 = v8;
    [v7 enumerateKeysObjectsAndTimestampsUsingBlock:v13];

    [v8 replaceCharactersInRange:objc_msgSend(v8 withString:{"length") - 2, 2, @">"}]);
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    v8 = [v9 stringWithFormat:@"<%@ %p>", v11, self];
  }

  return v8;
}

void __22__ICCRSet_description__block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v6 = *(a1 + 32);
  v7 = [a4 shortDescription];
  [v6 appendFormat:@"  %@ %@, \n", v7, v8];
}

@end