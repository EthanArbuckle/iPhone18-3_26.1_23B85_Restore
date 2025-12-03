@interface ICCROrderedSet
- (BOOL)containsObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (ICCRDocument)document;
- (ICCROrderedSet)init;
- (ICCROrderedSet)initWithICCRCoder:(id)coder;
- (NSArray)allObjects;
- (NSString)description;
- (id)_indexForIndex:(unint64_t)index;
- (id)deltaSince:(id)since in:(id)in;
- (id)objectAtIndex:(unint64_t)index;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfObject:(id)object;
- (void)_sort;
- (void)addObject:(id)object;
- (void)addObjectsFromArray:(id)array;
- (void)encodeWithICCRCoder:(id)coder;
- (void)enumerateWithBlock:(id)block;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)mergeWith:(id)with;
- (void)mergeWithSet:(id)set;
- (void)moveObject:(id)object toIndex:(unint64_t)index;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)setDocument:(id)document;
- (void)setObject:(id)object atIndex:(unint64_t)index;
- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript;
- (void)walkGraph:(id)graph;
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

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 5)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 5;
    operator new();
  }

  v6 = *(currentDocumentObjectForEncoding + 40);
  contents = [(ICCROrderedSet *)self contents];
  [contents encodeWithICCRCoder:coderCopy set:v6 elementValueCoder:&__block_literal_global_67];
}

- (ICCROrderedSet)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ICCROrderedSet *)self init];
  if (v5)
  {
    currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
    if (*(currentDocumentObjectForDecoding + 48) == 5)
    {
      v7 = [ICCRSet alloc];
      v8 = v7;
      if (*(currentDocumentObjectForDecoding + 48) == 5)
      {
        v9 = *(currentDocumentObjectForDecoding + 40);
      }

      else
      {
        v9 = CRDT::Dictionary::default_instance(v7);
      }

      v10 = [(ICCRSet *)v8 initWithICCRCoder:coderCopy set:v9 elementValueDecoder:&__block_literal_global_4_0];
      contents = v5->_contents;
      v5->_contents = v10;

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __36__ICCROrderedSet_initWithICCRCoder___block_invoke_2;
      v13[3] = &unk_27819A1C8;
      v14 = v5;
      [coderCopy addDecoderCompletionHandler:v13 dependency:0 for:v14];
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
  contents = [(ICCROrderedSet *)self contents];
  document = [contents document];

  return document;
}

- (void)setDocument:(id)document
{
  v16 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  contents = [(ICCROrderedSet *)self contents];
  [contents setDocument:documentCopy];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  contents2 = [(ICCROrderedSet *)self contents];
  v7 = [contents2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(contents2);
        }

        index = [*(*(&v11 + 1) + 8 * v9) index];
        [index setDocument:documentCopy];

        ++v9;
      }

      while (v7 != v9);
      v7 = [contents2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  contents = [(ICCROrderedSet *)self contents];
  v6 = [ICCROrderedSetElement temporaryElementWithValue:objectCopy];
  v7 = [contents containsObject:v6];

  return v7;
}

- (id)objectAtIndex:(unint64_t)index
{
  orderedArray = [(ICCROrderedSet *)self orderedArray];
  v5 = [orderedArray objectAtIndex:index];

  value = [v5 value];

  return value;
}

- (unint64_t)count
{
  contents = [(ICCROrderedSet *)self contents];
  v3 = [contents count];

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
  orderedArray = [(ICCROrderedSet *)self orderedArray];
  v5 = [orderedArray countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(orderedArray);
        }

        value = [*(*(&v10 + 1) + 8 * i) value];
        [v3 addObject:value];
      }

      v5 = [orderedArray countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  orderedArray = [(ICCROrderedSet *)self orderedArray];
  v6 = [ICCROrderedSetElement temporaryElementWithValue:objectCopy];
  v7 = [orderedArray indexOfObject:v6];

  return v7;
}

- (void)_sort
{
  orderedArray = [(ICCROrderedSet *)self orderedArray];
  [orderedArray sortUsingComparator:&__block_literal_global_9];
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

- (id)_indexForIndex:(unint64_t)index
{
  if (index)
  {
    orderedArray = [(ICCROrderedSet *)self orderedArray];
    v6 = [orderedArray count];

    [(ICCROrderedSet *)self orderedArray];
    if (v6 <= index)
      orderedArray2 = {;
      lastObject = [orderedArray2 lastObject];
      firstObject = 0;
    }

    else
      v7 = {;
      lastObject = [v7 objectAtIndex:index - 1];

      orderedArray2 = [(ICCROrderedSet *)self orderedArray];
      firstObject = [orderedArray2 objectAtIndex:index];
    }
  }

  else
  {
    orderedArray2 = [(ICCROrderedSet *)self orderedArray];
    firstObject = [orderedArray2 firstObject];
    lastObject = 0;
  }

  cR_unserialized = [MEMORY[0x277CCAD78] CR_unserialized];
  index = [lastObject index];
  contents = [index contents];
  index2 = [firstObject index];
  contents2 = [index2 contents];
  v16 = [ICCRIndex indexForReplica:cR_unserialized betweenIndex:contents andIndex:contents2];

  return v16;
}

- (void)moveObject:(id)object toIndex:(unint64_t)index
{
  objectCopy = object;
  contents = [(ICCROrderedSet *)self contents];
  v7 = [ICCROrderedSetElement temporaryElementWithValue:objectCopy];
  v8 = [contents member:v7];

  if (v8)
  {
    orderedArray = [(ICCROrderedSet *)self orderedArray];
    [orderedArray removeObject:v8];

    v10 = [(ICCROrderedSet *)self _indexForIndex:index];
    orderedArray2 = [(ICCROrderedSet *)self orderedArray];
    [orderedArray2 insertObject:v8 atIndex:index];

    index = [v8 index];
    [index setContents:v10];
  }
}

- (void)setObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  if (objectCopy)
  {
    contents = [(ICCROrderedSet *)self contents];
    v7 = [ICCROrderedSetElement temporaryElementWithValue:objectCopy];
    v8 = [contents containsObject:v7];

    if ((v8 & 1) == 0)
    {
      if ([(ICCROrderedSet *)self count]> index)
      {
        [(ICCROrderedSet *)self removeObjectAtIndex:index];
      }

      [(ICCROrderedSet *)self insertObject:objectCopy atIndex:index];
    }
  }
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  objectCopy = object;
  if (objectCopy)
  {
    contents = [(ICCROrderedSet *)self contents];
    v7 = [ICCROrderedSetElement temporaryElementWithValue:objectCopy];
    v8 = [contents containsObject:v7];

    if ((v8 & 1) == 0)
    {
      v9 = objc_alloc_init(ICCROrderedSetElement);
      [(ICCROrderedSetElement *)v9 setValue:objectCopy];
      v10 = [ICCRRegisterLatest alloc];
      v11 = [(ICCROrderedSet *)self _indexForIndex:index];
      document = [(ICCROrderedSet *)self document];
      v13 = [(ICCRRegisterLatest *)v10 initWithContents:v11 document:document];
      [(ICCROrderedSetElement *)v9 setIndex:v13];

      contents2 = [(ICCROrderedSet *)self contents];
      [contents2 addObject:v9];

      orderedArray = [(ICCROrderedSet *)self orderedArray];
      [orderedArray addObject:v9];

      [(ICCROrderedSet *)self _sort];
    }
  }
}

- (void)removeObject:(id)object
{
  v6 = [ICCROrderedSetElement temporaryElementWithValue:object];
  contents = [(ICCROrderedSet *)self contents];
  [contents removeObject:v6];

  orderedArray = [(ICCROrderedSet *)self orderedArray];
  [orderedArray removeObject:v6];
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  orderedArray = [(ICCROrderedSet *)self orderedArray];
  v5 = [orderedArray count];

  if (v5 > index)
  {
    contents = [(ICCROrderedSet *)self contents];
    orderedArray2 = [(ICCROrderedSet *)self orderedArray];
    v7 = [orderedArray2 objectAtIndex:index];
    [contents removeObject:v7];

    orderedArray3 = [(ICCROrderedSet *)self orderedArray];
    [orderedArray3 removeObjectAtIndex:index];
  }
}

- (void)removeAllObjects
{
  contents = [(ICCROrderedSet *)self contents];
  [contents removeAllObjects];

  orderedArray = [(ICCROrderedSet *)self orderedArray];
  [orderedArray removeAllObjects];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    contents = [(ICCROrderedSet *)self contents];
    contents2 = [equalCopy contents];
    v7 = [contents isEqual:contents2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  contents = [(ICCROrderedSet *)self contents];
  v3 = [contents hash];

  return v3;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v4);
  }

  [(ICCROrderedSet *)self mergeWithSet:withCopy];
}

- (void)mergeWithSet:(id)set
{
  setCopy = set;
  contents = [(ICCROrderedSet *)self contents];
  contents2 = [setCopy contents];
  [contents mergeWith:contents2];

  contents3 = [(ICCROrderedSet *)self contents];
  allObjects = [contents3 allObjects];
  v8 = [allObjects mutableCopy];
  [(ICCROrderedSet *)self setOrderedArray:v8];

  [(ICCROrderedSet *)self _sort];
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  contents = [(ICCROrderedSet *)self contents];
  graphCopy[2](graphCopy, contents);
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  v8 = objc_alloc_init(ICCROrderedSet);
  [(ICCROrderedSet *)v8 setDocument:inCopy];
  objc_opt_class();
  contents = [(ICCROrderedSet *)self contents];
  v10 = [contents deltaSince:sinceCopy in:inCopy];
  v11 = ICCheckedDynamicCast();
  [(ICCROrderedSet *)v8 setContents:v11];

  contents2 = [(ICCROrderedSet *)v8 contents];
  allObjects = [contents2 allObjects];
  v14 = [allObjects mutableCopy];
  [(ICCROrderedSet *)v8 setOrderedArray:v14];

  [(ICCROrderedSet *)v8 _sort];

  return v8;
}

- (void)enumerateWithBlock:(id)block
{
  blockCopy = block;
  v5 = 0;
  v7 = 0;
  while (v5 < [(ICCROrderedSet *)self count]&& (v7 & 1) == 0)
  {
    v6 = [(ICCROrderedSet *)self objectAtIndex:v5];
    blockCopy[2](blockCopy, v6, v5, &v7);

    ++v5;
  }
}

- (void)addObjectsFromArray:(id)array
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = array;
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
        document = [(ICCROrderedSet *)self document];
        v12 = [(ICCRRegisterLatest *)v10 initWithContents:v9 document:document];
        [(ICCROrderedSetElement *)v8 setIndex:v12];

        [(ICCRSet *)self->_contents addObject:v8];
        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  allObjects = [(ICCRSet *)self->_contents allObjects];
  v14 = [allObjects mutableCopy];
  orderedArray = self->_orderedArray;
  self->_orderedArray = v14;

  [(ICCROrderedSet *)self _sort];
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(ICCROrderedSet *)self insertObject:objectCopy atIndex:[(ICCROrderedSet *)self count]];
}

- (void)setObject:(id)object atIndexedSubscript:(unint64_t)subscript
{
  objectCopy = object;
  if (objectCopy)
  {
    [(ICCROrderedSet *)self setObject:objectCopy atIndex:subscript];
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
  orderedArray = [(ICCROrderedSet *)self orderedArray];
  v8 = [orderedArray countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(orderedArray);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        index = [v11 index];
        value = [v11 value];
        [v6 appendFormat:@"  %@ %@, \n", index, value];
      }

      v8 = [orderedArray countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [v6 replaceCharactersInRange:objc_msgSend(v6 withString:{"length") - 2, 2, @">"}]);

  return v6;
}

@end