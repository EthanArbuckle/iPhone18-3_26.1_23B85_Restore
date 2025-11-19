@interface ICCROrderedSet
- (BOOL)containsObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICCRDocument)document;
- (ICCROrderedSet)init;
- (ICCROrderedSet)initWithICCRCoder:(id)a3;
- (NSArray)allObjects;
- (NSString)description;
- (id)_indexForIndex:(unint64_t)a3;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfObject:(id)a3;
- (void)_sort;
- (void)addObject:(id)a3;
- (void)addObjectsFromArray:(id)a3;
- (void)encodeWithICCRCoder:(id)a3;
- (void)enumerateWithBlock:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)mergeWith:(id)a3;
- (void)mergeWithSet:(id)a3;
- (void)moveObject:(id)a3 toIndex:(unint64_t)a4;
- (void)removeAllObjects;
- (void)removeObject:(id)a3;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)setDocument:(id)a3;
- (void)setObject:(id)a3 atIndex:(unint64_t)a4;
- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4;
- (void)walkGraph:(id)a3;
@end

@implementation ICCROrderedSet

- (ICCROrderedSet)init
{
  v8.receiver = self;
  v8.super_class = ICCROrderedSet;
  v2 = [(ICCROrderedSet *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICCRSet);
    contents = v2->_contents;
    v2->_contents = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    orderedArray = v2->_orderedArray;
    v2->_orderedArray = v5;
  }

  return v2;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v8 = a3;
  v4 = [v8 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 5)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 5;
    operator new();
  }

  v6 = *(v4 + 40);
  v7 = [(ICCROrderedSet *)self contents];
  [v7 encodeWithICCRCoder:v8 set:v6 elementValueCoder:&__block_literal_global_67];
}

- (ICCROrderedSet)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [(ICCROrderedSet *)self init];
  if (v5)
  {
    v6 = [v4 currentDocumentObjectForDecoding];
    if (*(v6 + 48) == 5)
    {
      v7 = [ICCRSet alloc];
      v8 = v7;
      if (*(v6 + 48) == 5)
      {
        v9 = *(v6 + 40);
      }

      else
      {
        v9 = CRDT::Dictionary::default_instance(v7);
      }

      v10 = [(ICCRSet *)v8 initWithICCRCoder:v4 set:v9 elementValueDecoder:&__block_literal_global_4_0];
      contents = v5->_contents;
      v5->_contents = v10;

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __36__ICCROrderedSet_initWithICCRCoder___block_invoke_2;
      v13[3] = &unk_27819A1C8;
      v14 = v5;
      [v4 addDecoderCompletionHandler:v13 dependency:0 for:v14];
    }
  }

  return v5;
}

ICCROrderedSetElement *__36__ICCROrderedSet_initWithICCRCoder___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [[ICCROrderedSetElement alloc] initWithProtobufSetElement:a2 decoder:v4];

  return v5;
}

uint64_t __36__ICCROrderedSet_initWithICCRCoder___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) allObjects];
  v3 = [v2 mutableCopy];
  v4 = *(a1 + 32);
  v5 = *(v4 + 16);
  *(v4 + 16) = v3;

  v6 = *(a1 + 32);

  return [v6 _sort];
}

- (ICCRDocument)document
{
  v2 = [(ICCROrderedSet *)self contents];
  v3 = [v2 document];

  return v3;
}

- (void)setDocument:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCROrderedSet *)self contents];
  [v5 setDocument:v4];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(ICCROrderedSet *)self contents];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) index];
        [v10 setDocument:v4];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)containsObject:(id)a3
{
  v4 = a3;
  v5 = [(ICCROrderedSet *)self contents];
  v6 = [ICCROrderedSetElement temporaryElementWithValue:v4];
  v7 = [v5 containsObject:v6];

  return v7;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(ICCROrderedSet *)self orderedArray];
  v5 = [v4 objectAtIndex:a3];

  v6 = [v5 value];

  return v6;
}

- (unint64_t)count
{
  v2 = [(ICCROrderedSet *)self contents];
  v3 = [v2 count];

  return v3;
}

- (NSArray)allObjects
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[ICCROrderedSet count](self, "count")}];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [(ICCROrderedSet *)self orderedArray];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) value];
        [v3 addObject:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = a3;
  v5 = [(ICCROrderedSet *)self orderedArray];
  v6 = [ICCROrderedSetElement temporaryElementWithValue:v4];
  v7 = [v5 indexOfObject:v6];

  return v7;
}

- (void)_sort
{
  v2 = [(ICCROrderedSet *)self orderedArray];
  [v2 sortUsingComparator:&__block_literal_global_9];
}

uint64_t __23__ICCROrderedSet__sort__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 index];
  v6 = [v5 contents];
  v7 = [v4 index];
  v8 = [v7 contents];
  v9 = [v6 compare:v8];

  return v9;
}

- (id)_indexForIndex:(unint64_t)a3
{
  if (a3)
  {
    v5 = [(ICCROrderedSet *)self orderedArray];
    v6 = [v5 count];

    [(ICCROrderedSet *)self orderedArray];
    if (v6 <= a3)
      v9 = {;
      v8 = [v9 lastObject];
      v10 = 0;
    }

    else
      v7 = {;
      v8 = [v7 objectAtIndex:a3 - 1];

      v9 = [(ICCROrderedSet *)self orderedArray];
      v10 = [v9 objectAtIndex:a3];
    }
  }

  else
  {
    v9 = [(ICCROrderedSet *)self orderedArray];
    v10 = [v9 firstObject];
    v8 = 0;
  }

  v11 = [MEMORY[0x277CCAD78] CR_unserialized];
  v12 = [v8 index];
  v13 = [v12 contents];
  v14 = [v10 index];
  v15 = [v14 contents];
  v16 = [ICCRIndex indexForReplica:v11 betweenIndex:v13 andIndex:v15];

  return v16;
}

- (void)moveObject:(id)a3 toIndex:(unint64_t)a4
{
  v13 = a3;
  v6 = [(ICCROrderedSet *)self contents];
  v7 = [ICCROrderedSetElement temporaryElementWithValue:v13];
  v8 = [v6 member:v7];

  if (v8)
  {
    v9 = [(ICCROrderedSet *)self orderedArray];
    [v9 removeObject:v8];

    v10 = [(ICCROrderedSet *)self _indexForIndex:a4];
    v11 = [(ICCROrderedSet *)self orderedArray];
    [v11 insertObject:v8 atIndex:a4];

    v12 = [v8 index];
    [v12 setContents:v10];
  }
}

- (void)setObject:(id)a3 atIndex:(unint64_t)a4
{
  v9 = a3;
  if (v9)
  {
    v6 = [(ICCROrderedSet *)self contents];
    v7 = [ICCROrderedSetElement temporaryElementWithValue:v9];
    v8 = [v6 containsObject:v7];

    if ((v8 & 1) == 0)
    {
      if ([(ICCROrderedSet *)self count]> a4)
      {
        [(ICCROrderedSet *)self removeObjectAtIndex:a4];
      }

      [(ICCROrderedSet *)self insertObject:v9 atIndex:a4];
    }
  }
}

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v16 = a3;
  if (v16)
  {
    v6 = [(ICCROrderedSet *)self contents];
    v7 = [ICCROrderedSetElement temporaryElementWithValue:v16];
    v8 = [v6 containsObject:v7];

    if ((v8 & 1) == 0)
    {
      v9 = objc_alloc_init(ICCROrderedSetElement);
      [(ICCROrderedSetElement *)v9 setValue:v16];
      v10 = [ICCRRegisterLatest alloc];
      v11 = [(ICCROrderedSet *)self _indexForIndex:a4];
      v12 = [(ICCROrderedSet *)self document];
      v13 = [(ICCRRegisterLatest *)v10 initWithContents:v11 document:v12];
      [(ICCROrderedSetElement *)v9 setIndex:v13];

      v14 = [(ICCROrderedSet *)self contents];
      [v14 addObject:v9];

      v15 = [(ICCROrderedSet *)self orderedArray];
      [v15 addObject:v9];

      [(ICCROrderedSet *)self _sort];
    }
  }
}

- (void)removeObject:(id)a3
{
  v6 = [ICCROrderedSetElement temporaryElementWithValue:a3];
  v4 = [(ICCROrderedSet *)self contents];
  [v4 removeObject:v6];

  v5 = [(ICCROrderedSet *)self orderedArray];
  [v5 removeObject:v6];
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v8 = [(ICCROrderedSet *)self orderedArray];
  v5 = [v8 count];

  if (v5 > a3)
  {
    v9 = [(ICCROrderedSet *)self contents];
    v6 = [(ICCROrderedSet *)self orderedArray];
    v7 = [v6 objectAtIndex:a3];
    [v9 removeObject:v7];

    v10 = [(ICCROrderedSet *)self orderedArray];
    [v10 removeObjectAtIndex:a3];
  }
}

- (void)removeAllObjects
{
  v3 = [(ICCROrderedSet *)self contents];
  [v3 removeAllObjects];

  v4 = [(ICCROrderedSet *)self orderedArray];
  [v4 removeAllObjects];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(ICCROrderedSet *)self contents];
    v6 = [v4 contents];
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
  v2 = [(ICCROrderedSet *)self contents];
  v3 = [v2 hash];

  return v3;
}

- (void)mergeWith:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(ICCROrderedSet *)self mergeWithSet:v5];
}

- (void)mergeWithSet:(id)a3
{
  v9 = a3;
  v4 = [(ICCROrderedSet *)self contents];
  v5 = [v9 contents];
  [v4 mergeWith:v5];

  v6 = [(ICCROrderedSet *)self contents];
  v7 = [v6 allObjects];
  v8 = [v7 mutableCopy];
  [(ICCROrderedSet *)self setOrderedArray:v8];

  [(ICCROrderedSet *)self _sort];
}

- (void)walkGraph:(id)a3
{
  v5 = a3;
  v4 = [(ICCROrderedSet *)self contents];
  v5[2](v5, v4);
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(ICCROrderedSet);
  [(ICCROrderedSet *)v8 setDocument:v7];
  objc_opt_class();
  v9 = [(ICCROrderedSet *)self contents];
  v10 = [v9 deltaSince:v6 in:v7];
  v11 = ICCheckedDynamicCast();
  [(ICCROrderedSet *)v8 setContents:v11];

  v12 = [(ICCROrderedSet *)v8 contents];
  v13 = [v12 allObjects];
  v14 = [v13 mutableCopy];
  [(ICCROrderedSet *)v8 setOrderedArray:v14];

  [(ICCROrderedSet *)v8 _sort];

  return v8;
}

- (void)enumerateWithBlock:(id)a3
{
  v4 = a3;
  v5 = 0;
  v7 = 0;
  while (v5 < [(ICCROrderedSet *)self count]&& (v7 & 1) == 0)
  {
    v6 = [(ICCROrderedSet *)self objectAtIndex:v5];
    v4[2](v4, v6, v5, &v7);

    ++v5;
  }
}

- (void)addObjectsFromArray:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = *v18;
    do
    {
      v6 = 0;
      do
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v17 + 1) + 8 * v6);
        v8 = objc_alloc_init(ICCROrderedSetElement);
        v9 = [(ICCROrderedSet *)self _indexForIndex:[(NSMutableArray *)self->_orderedArray count]];
        [(ICCROrderedSetElement *)v8 setValue:v7];
        v10 = [ICCRRegisterLatest alloc];
        v11 = [(ICCROrderedSet *)self document];
        v12 = [(ICCRRegisterLatest *)v10 initWithContents:v9 document:v11];
        [(ICCROrderedSetElement *)v8 setIndex:v12];

        [(ICCRSet *)self->_contents addObject:v8];
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  v13 = [(ICCRSet *)self->_contents allObjects];
  v14 = [v13 mutableCopy];
  orderedArray = self->_orderedArray;
  self->_orderedArray = v14;

  [(ICCROrderedSet *)self _sort];
}

- (void)addObject:(id)a3
{
  v4 = a3;
  [(ICCROrderedSet *)self insertObject:v4 atIndex:[(ICCROrderedSet *)self count]];
}

- (void)setObject:(id)a3 atIndexedSubscript:(unint64_t)a4
{
  v6 = a3;
  if (v6)
  {
    [(ICCROrderedSet *)self setObject:v6 atIndex:a4];
  }
}

- (NSString)description
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAB68];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p (\n"), v5, self;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(ICCROrderedSet *)self orderedArray];
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [v11 index];
        v13 = [v11 value];
        [v6 appendFormat:@"  %@ %@, \n", v12, v13];
      }

      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);

  return v6;
}

@end