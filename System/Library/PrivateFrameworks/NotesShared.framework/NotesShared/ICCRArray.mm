@interface ICCRArray
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsUndoCommands;
- (ICCRArray)initWithDocument:(id)document;
- (ICCRArray)initWithICCRCoder:(id)coder;
- (ICCRArray)initWithICCRCoder:(id)coder array:(const void *)array;
- (ICCRArray)initWithICTTArray:(id)array contents:(id)contents document:(id)document;
- (ICCRDocument)document;
- (ICCRUndoDelegate)delegate;
- (NSArray)allObjects;
- (NSString)description;
- (NSUUID)replicaUUID;
- (id)_addObject:(id)object;
- (id)_insertObject:(id)object atIndex:(unint64_t)index;
- (id)_insertObject:(id)object withIdentifier:(id)identifier atIndex:(unint64_t)index forUndo:(BOOL)undo;
- (id)deltaSince:(id)since in:(id)in;
- (id)objectAtIndex:(unint64_t)index;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)firstIndexOf:(id)of fromIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)addUndoCommandsForObject:(id)object block:(id)block;
- (void)encodeWithICCRCoder:(id)coder;
- (void)encodeWithICCRCoder:(id)coder array:(void *)array;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)mergeWith:(id)with;
- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)realizeLocalChangesIn:(id)in;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index forUndo:(BOOL)undo;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation ICCRArray

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 15)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 15;
    operator new();
  }

  [(ICCRArray *)self encodeWithICCRCoder:coderCopy array:*(currentDocumentObjectForEncoding + 40)];
}

- (void)encodeWithICCRCoder:(id)coder array:(void *)array
{
  coderCopy = coder;
  array = [(ICCRArray *)self array];
  *(array + 8) |= 1u;
  v7 = *(array + 5);
  if (!v7)
  {
    operator new();
  }

  [array saveToArchive:v7];

  contents = [(ICCRArray *)self contents];
  *(array + 8) |= 2u;
  v9 = *(array + 6);
  if (!v9)
  {
    operator new();
  }

  [contents encodeWithICCRCoder:coderCopy dictionary:v9];
}

- (ICCRArray)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 15)
  {
    v6 = [(ICCRArray *)self initWithICCRCoder:coderCopy array:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    document = [coderCopy document];
    v6 = [(ICCRArray *)self initWithDocument:document];
  }

  return v6;
}

- (ICCRArray)initWithICCRCoder:(id)coder array:(const void *)array
{
  coderCopy = coder;
  v7 = [ICCRDictionary alloc];
  v8 = v7;
  v9 = *(array + 6);
  if (!v9)
  {
    v9 = *(CRDT::Array::default_instance(v7) + 48);
  }

  v10 = [(ICCRDictionary *)v8 initWithICCRCoder:coderCopy dictionary:v9];
  v11 = [ICTTArray alloc];
  v12 = v11;
  v13 = *(array + 5);
  if (!v13)
  {
    v13 = *(CRDT::Array::default_instance(v11) + 40);
  }

  v14 = [(ICTTArray *)v12 initWithICCRCoder:coderCopy stringArray:v13];
  document = [coderCopy document];
  v16 = [(ICCRArray *)self initWithICTTArray:v14 contents:v10 document:document];

  return v16;
}

- (ICCRArray)initWithDocument:(id)document
{
  documentCopy = document;
  if (documentCopy)
  {
    v5 = [[ICTTArray alloc] initWithDocument:documentCopy];
    v6 = [[ICCRDictionary alloc] initWithDocument:documentCopy];
    selfCopy2 = self;
    v8 = v5;
    v9 = v6;
    v10 = documentCopy;
  }

  else
  {
    v5 = objc_alloc_init(ICTTArray);
    v6 = objc_alloc_init(ICCRDictionary);
    selfCopy2 = self;
    v8 = v5;
    v9 = v6;
    v10 = 0;
  }

  v11 = [(ICCRArray *)selfCopy2 initWithICTTArray:v8 contents:v9 document:v10];

  return v11;
}

- (ICCRArray)initWithICTTArray:(id)array contents:(id)contents document:(id)document
{
  arrayCopy = array;
  contentsCopy = contents;
  documentCopy = document;
  v13.receiver = self;
  v13.super_class = ICCRArray;
  v11 = [(ICCRArray *)&v13 init];
  if (v11)
  {
    [arrayCopy setDelegate:v11];
    [(ICCRArray *)v11 setArray:arrayCopy];
    [(ICCRArray *)v11 setContents:contentsCopy];
    [(ICCRArray *)v11 setDocument:documentCopy];
  }

  return v11;
}

- (NSArray)allObjects
{
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{-[ICCRArray count](self, "count")}];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __23__ICCRArray_allObjects__block_invoke;
  v6[3] = &unk_278197E60;
  v4 = v3;
  v7 = v4;
  [(ICCRArray *)self enumerateObjectsUsingBlock:v6];

  return v4;
}

- (id)objectAtIndex:(unint64_t)index
{
  array = [(ICCRArray *)self array];
  v6 = [array objectAtIndexedSubscript:index];

  contents = [(ICCRArray *)self contents];
  v8 = [contents objectForKeyedSubscript:v6];

  return v8;
}

- (id)_addObject:(id)object
{
  objectCopy = object;
  v5 = [(ICCRArray *)self _insertObject:objectCopy atIndex:[(ICCRArray *)self count]];

  return v5;
}

- (id)_insertObject:(id)object atIndex:(unint64_t)index
{
  v6 = MEMORY[0x277CCAD78];
  objectCopy = object;
  uUID = [v6 UUID];
  v9 = [(ICCRArray *)self _insertObject:objectCopy withIdentifier:uUID atIndex:index forUndo:0];

  return v9;
}

- (id)_insertObject:(id)object withIdentifier:(id)identifier atIndex:(unint64_t)index forUndo:(BOOL)undo
{
  objectCopy = object;
  identifierCopy = identifier;
  if (!undo)
  {
    array = [(ICCRArray *)self array];
    [array insertObject:identifierCopy atIndex:index];
  }

  contents = [(ICCRArray *)self contents];
  [contents setObject:objectCopy forKeyedSubscript:identifierCopy];

  if ([(ICCRArray *)self wantsUndoCommands])
  {
    delegate = [(ICCRArray *)self delegate];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__ICCRArray__insertObject_withIdentifier_atIndex_forUndo___block_invoke;
    v16[3] = &unk_278197E88;
    v17 = identifierCopy;
    [delegate addUndoCommandsForObject:self block:v16];
  }

  return identifierCopy;
}

void __58__ICCRArray__insertObject_withIdentifier_atIndex_forUndo___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 array];
  v4 = [v3 indexOfObject:*(a1 + 32)];

  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v5 removeObjectAtIndex:v4 forUndo:1];
  }
}

- (void)removeLastObject
{
  v3 = [(ICCRArray *)self count];
  if (v3)
  {

    [(ICCRArray *)self removeObjectAtIndex:v3 - 1];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index forUndo:(BOOL)undo
{
  array = [(ICCRArray *)self array];
  v8 = [array objectAtIndexedSubscript:index];

  if ([(ICCRArray *)self wantsUndoCommands])
  {
    v9 = [(ICCRArray *)self objectAtIndexedSubscript:index];
    delegate = [(ICCRArray *)self delegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__ICCRArray_removeObjectAtIndex_forUndo___block_invoke;
    v14[3] = &unk_278197EB0;
    v15 = v9;
    v16 = v8;
    indexCopy = index;
    v11 = v9;
    [delegate addUndoCommandsForObject:self block:v14];
  }

  if (!undo)
  {
    array2 = [(ICCRArray *)self array];
    [array2 removeObjectAtIndex:index];
  }

  contents = [(ICCRArray *)self contents];
  [contents removeObjectForKey:v8];
}

void __41__ICCRArray_removeObjectAtIndex_forUndo___block_invoke(void *a1, void *a2)
{
  v8 = a2;
  v3 = a1[4];
  v4 = a1[5];
  v5 = [v8 count];
  if (v5 >= a1[6])
  {
    v6 = a1[6];
  }

  else
  {
    v6 = v5;
  }

  v7 = [v8 _insertObject:v3 withIdentifier:v4 atIndex:v6 forUndo:1];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  [(ICCRArray *)self removeObjectAtIndex:index];
  [(ICCRArray *)self insertObject:objectCopy atIndex:index];
}

- (void)moveObjectFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  array = [(ICCRArray *)self array];
  v10 = [array objectAtIndexedSubscript:index];

  array2 = [(ICCRArray *)self array];
  [array2 removeObjectAtIndex:index];

  array3 = [(ICCRArray *)self array];
  [array3 insertObject:v10 atIndex:toIndex];

  [(ICCRArray *)self setMoveClock:1];
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  array = [(ICCRArray *)self array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ICCRArray_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_278197ED8;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  [array enumerateObjectsUsingBlock:v7];
}

void __40__ICCRArray_enumerateObjectsUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 contents];
  v6 = [v5 objectForKeyedSubscript:v4];

  (*(*(a1 + 40) + 16))();
}

- (unint64_t)count
{
  array = [(ICCRArray *)self array];
  v3 = [array count];

  return v3;
}

- (NSUUID)replicaUUID
{
  document = [(ICCRArray *)self document];
  replica = [document replica];

  return replica;
}

- (unint64_t)firstIndexOf:(id)of fromIndex:(unint64_t)index
{
  ofCopy = of;
  if ([(ICCRArray *)self count]<= index)
  {
LABEL_4:
    index = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      v7 = [(ICCRArray *)self objectAtIndexedSubscript:index];
      v8 = [v7 isEqual:ofCopy];

      if (v8)
      {
        break;
      }

      if (++index >= [(ICCRArray *)self count])
      {
        goto LABEL_4;
      }
    }
  }

  return index;
}

- (NSString)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__38;
  v11 = __Block_byref_object_dispose__38;
  v12 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2827172C0];
  v3 = [(ICCRArray *)self count];
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __24__ICCRArray_description__block_invoke;
    v6[3] = &unk_278197F00;
    v6[4] = &v7;
    v6[5] = v3;
    [(ICCRArray *)self enumerateObjectsUsingBlock:v6];
    v4 = [v8[5] copy];
  }

  else
  {
    v4 = @"[]";
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __24__ICCRArray_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v9 = v5;
  if (!a3)
  {
    [*(*(*(a1 + 32) + 8) + 40) appendString:@"["];
    v5 = v9;
  }

  v6 = *(*(*(a1 + 32) + 8) + 40);
  v7 = [v5 description];
  [v6 appendString:v7];

  if (*(a1 + 40) - 1 == a3)
  {
    v8 = @"]";
  }

  else
  {
    v8 = @", ";
  }

  [*(*(*(a1 + 32) + 8) + 40) appendString:v8];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    contents = [(ICCRArray *)self contents];
    contents2 = [v5 contents];
    if ([contents isEqual:contents2])
    {
      array = [(ICCRArray *)self array];
      array2 = [v5 array];
      v10 = [array isEqual:array2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  contents = [(ICCRArray *)self contents];
  v4 = [contents hash];
  array = [(ICCRArray *)self array];
  v6 = [array hash];

  return v6 ^ v4;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    v11 = os_log_create("com.apple.coreCRDT", "ICTTArray");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(ICCRArray *)v10 mergeWith:v11];
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICCRArray cannot merge with object of type %@.", v10];
    objc_exception_throw(v12);
  }

  v13 = withCopy;
  array = [(ICCRArray *)self array];
  array2 = [v13 array];
  [array mergeWith:array2];

  contents = [(ICCRArray *)self contents];
  contents2 = [v13 contents];

  [contents mergeWith:contents2];
}

- (id)deltaSince:(id)since in:(id)in
{
  inCopy = in;
  sinceCopy = since;
  array = [(ICCRArray *)self array];
  v9 = [array deltaSince:sinceCopy in:inCopy];

  contents = [(ICCRArray *)self contents];
  v11 = [contents deltaSince:sinceCopy in:inCopy];

  v12 = [[ICCRArray alloc] initWithICTTArray:v9 contents:v11 document:inCopy];

  return v12;
}

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  array = [(ICCRArray *)self array];
  [array realizeLocalChangesIn:inCopy];

  contents = [(ICCRArray *)self contents];
  [contents realizeLocalChangesIn:inCopy];

  if ([(ICCRArray *)self moveClock])
  {
    [inCopy setUnserializedReplicaClock:{objc_msgSend(inCopy, "unserializedReplicaClock") + -[ICCRArray moveClock](self, "moveClock")}];
  }

  [(ICCRArray *)self setMoveClock:0];
}

- (id)tombstone
{
  array = [(ICCRArray *)self array];
  tombstone = [array tombstone];

  contents = [(ICCRArray *)self contents];
  tombstone2 = [contents tombstone];

  v7 = [ICCRArray alloc];
  document = [(ICCRArray *)self document];
  v9 = [(ICCRArray *)v7 initWithICTTArray:tombstone contents:tombstone2 document:document];

  return v9;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  array = [(ICCRArray *)self array];
  [array walkGraph:graphCopy];

  contents = [(ICCRArray *)self contents];
  [contents walkGraph:graphCopy];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  objc_storeWeak(&self->_document, documentCopy);
  array = [(ICCRArray *)self array];
  [array setDocument:documentCopy];

  contents = [(ICCRArray *)self contents];
  [contents setDocument:documentCopy];
}

- (void)addUndoCommandsForObject:(id)object block:(id)block
{
  blockCopy = block;
  delegate = [(ICCRArray *)self delegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ICCRArray_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_278197F28;
  v9 = blockCopy;
  v7 = blockCopy;
  [delegate addUndoCommandsForObject:self block:v8];
}

void __44__ICCRArray_addUndoCommandsForObject_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 array];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)wantsUndoCommands
{
  delegate = [(ICCRArray *)self delegate];
  wantsUndoCommands = [delegate wantsUndoCommands];

  return wantsUndoCommands;
}

- (ICCRDocument)document
{
  WeakRetained = objc_loadWeakRetained(&self->_document);

  return WeakRetained;
}

- (ICCRUndoDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)mergeWith:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Cannot merge with object of type %@.", &v2, 0xCu);
}

@end