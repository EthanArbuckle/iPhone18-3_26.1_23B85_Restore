@interface ICCRSet
- (BOOL)containsObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (ICCRDocument)document;
- (ICCRSet)initWithDocument:(id)document;
- (ICCRSet)initWithICCRCoder:(id)coder;
- (ICCRSet)initWithICCRCoder:(id)coder set:(const void *)set;
- (ICCRSet)initWithICCRCoder:(id)coder set:(const void *)set elementValueDecoder:(id)decoder;
- (NSArray)allObjects;
- (NSString)description;
- (id)anyObject;
- (id)deltaSince:(id)since in:(id)in;
- (id)member:(id)member;
- (unint64_t)count;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (unint64_t)hash;
- (void)addObject:(id)object;
- (void)addObserver:(id)observer;
- (void)encodeWithICCRCoder:(id)coder;
- (void)encodeWithICCRCoder:(id)coder set:(void *)set;
- (void)encodeWithICCRCoder:(id)coder set:(void *)set elementValueCoder:(id)valueCoder;
- (void)mergeWith:(id)with;
- (void)removeAllObjects;
- (void)removeObject:(id)object;
- (void)removeObserver:(id)observer;
- (void)setObject:(id)object;
- (void)walkGraph:(id)graph;
@end

@implementation ICCRSet

- (ICCRSet)initWithDocument:(id)document
{
  documentCopy = document;
  v11.receiver = self;
  v11.super_class = ICCRSet;
  v5 = [(ICCRSet *)&v11 init];
  if (v5)
  {
    v6 = [[ICCRDictionary alloc] initWithDocument:documentCopy];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v5->_observers;
    v5->_observers = weakObjectsHashTable;
  }

  return v5;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 4)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 4;
    operator new();
  }

  v6 = *(currentDocumentObjectForEncoding + 40);
  dictionary = [(ICCRSet *)self dictionary];
  [dictionary encodeWithICCRCoder:coderCopy dictionary:v6 elementValueCoder:&__block_literal_global_55];
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

- (void)encodeWithICCRCoder:(id)coder set:(void *)set
{
  coderCopy = coder;
  dictionary = [(ICCRSet *)self dictionary];
  [dictionary encodeWithICCRCoder:coderCopy dictionary:set];
}

- (void)encodeWithICCRCoder:(id)coder set:(void *)set elementValueCoder:(id)valueCoder
{
  coderCopy = coder;
  valueCoderCopy = valueCoder;
  dictionary = [(ICCRSet *)self dictionary];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__ICCRSet_encodeWithICCRCoder_set_elementValueCoder___block_invoke;
  v12[3] = &unk_278199568;
  v11 = valueCoderCopy;
  v13 = v11;
  [dictionary encodeWithICCRCoder:coderCopy dictionary:set elementValueCoder:v12];
}

- (ICCRSet)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 4)
  {
    v6 = [(ICCRSet *)self initWithICCRCoder:coderCopy set:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(ICCRSet *)self initWithDocument:document];
  }

  return v6;
}

- (ICCRSet)initWithICCRCoder:(id)coder set:(const void *)set
{
  coderCopy = coder;
  document = [coderCopy document];
  v8 = [(ICCRSet *)self initWithDocument:document];

  if (v8)
  {
    v9 = [[ICCRDictionary alloc] initWithICCRCoder:coderCopy dictionary:set elementValueDecoder:&__block_literal_global_64];
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

- (ICCRSet)initWithICCRCoder:(id)coder set:(const void *)set elementValueDecoder:(id)decoder
{
  coderCopy = coder;
  decoderCopy = decoder;
  document = [coderCopy document];
  v11 = [(ICCRSet *)self initWithDocument:document];

  if (v11)
  {
    v12 = [ICCRDictionary alloc];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __53__ICCRSet_initWithICCRCoder_set_elementValueDecoder___block_invoke;
    v15[3] = &unk_278199590;
    v16 = decoderCopy;
    v13 = [(ICCRDictionary *)v12 initWithICCRCoder:coderCopy dictionary:set elementValueDecoder:v15];
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

- (id)member:(id)member
{
  memberCopy = member;
  dictionary = [(ICCRSet *)self dictionary];
  v6 = [dictionary objectForKey:memberCopy];

  return v6;
}

- (BOOL)containsObject:(id)object
{
  objectCopy = object;
  dictionary = [(ICCRSet *)self dictionary];
  v6 = [dictionary objectForKey:objectCopy];
  v7 = v6 != 0;

  return v7;
}

- (unint64_t)count
{
  dictionary = [(ICCRSet *)self dictionary];
  v3 = [dictionary count];

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
  dictionary = [(ICCRSet *)self dictionary];
  v5 = [dictionary countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(dictionary);
        }

        [v3 addObject:*(*(&v9 + 1) + 8 * i)];
      }

      v5 = [dictionary countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  return v3;
}

- (id)anyObject
{
  dictionary = [(ICCRSet *)self dictionary];
  keyEnumerator = [dictionary keyEnumerator];
  nextObject = [keyEnumerator nextObject];

  return nextObject;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  dictionary = [(ICCRSet *)self dictionary];
  v9 = [dictionary countByEnumeratingWithState:state objects:objects count:count];

  return v9;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(ICCRSet *)self observers];
  [observers addObject:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(ICCRSet *)self observers];
  [observers removeObject:observerCopy];
}

- (void)addObject:(id)object
{
  v15 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dictionary = [(ICCRSet *)self dictionary];
  [dictionary setObject:objectCopy forKey:objectCopy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  observers = [(ICCRSet *)self observers];
  v7 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(observers);
        }

        [*(*(&v10 + 1) + 8 * v9++) setUpdated:self];
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)removeObject:(id)object
{
  objectCopy = object;
  dictionary = [(ICCRSet *)self dictionary];
  [dictionary removeObjectForKey:objectCopy];
}

- (void)removeAllObjects
{
  dictionary = [(ICCRSet *)self dictionary];
  [dictionary removeAllObjects];
}

- (void)setObject:(id)object
{
  objectCopy = object;
  [(ICCRSet *)self removeAllObjects];
  if (objectCopy)
  {
    [(ICCRSet *)self addObject:objectCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    dictionary = [(ICCRSet *)self dictionary];
    dictionary2 = [equalCopy dictionary];
    v7 = [dictionary isEqual:dictionary2];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  dictionary = [(ICCRSet *)self dictionary];
  v3 = [dictionary hash];

  return v3;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Invalid merge userInfo:{classes must be equal for merge.", 0}];
    objc_exception_throw(v6);
  }

  dictionary = [(ICCRSet *)self dictionary];
  dictionary2 = [withCopy dictionary];
  [dictionary mergeWith:dictionary2];
}

- (ICCRDocument)document
{
  dictionary = [(ICCRSet *)self dictionary];
  document = [dictionary document];

  return document;
}

- (id)deltaSince:(id)since in:(id)in
{
  sinceCopy = since;
  inCopy = in;
  dictionary = [(ICCRSet *)self dictionary];
  v9 = [dictionary deltaSince:sinceCopy in:inCopy];

  if (v9)
  {
    v10 = [[ICCRSet alloc] initWithDocument:inCopy];
    [(ICCRSet *)v10 setDictionary:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  dictionary = [(ICCRSet *)self dictionary];
  graphCopy[2](graphCopy, dictionary);
}

- (NSString)description
{
  if ([(ICCRSet *)self count])
  {
    v3 = MEMORY[0x277CCAB68];
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = objc_msgSend(v3, "stringWithFormat:", @"<%@ %p (\n"), v5, self;

    dictionary = [(ICCRSet *)self dictionary];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __22__ICCRSet_description__block_invoke;
    v13[3] = &unk_2781995B8;
    v8 = v6;
    v14 = v8;
    [dictionary enumerateKeysObjectsAndTimestampsUsingBlock:v13];

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