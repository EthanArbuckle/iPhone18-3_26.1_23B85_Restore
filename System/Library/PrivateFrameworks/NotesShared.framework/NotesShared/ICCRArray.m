@interface ICCRArray
- (BOOL)isEqual:(id)a3;
- (BOOL)wantsUndoCommands;
- (ICCRArray)initWithDocument:(id)a3;
- (ICCRArray)initWithICCRCoder:(id)a3;
- (ICCRArray)initWithICCRCoder:(id)a3 array:(const void *)a4;
- (ICCRArray)initWithICTTArray:(id)a3 contents:(id)a4 document:(id)a5;
- (ICCRDocument)document;
- (ICCRUndoDelegate)delegate;
- (NSArray)allObjects;
- (NSString)description;
- (NSUUID)replicaUUID;
- (id)_addObject:(id)a3;
- (id)_insertObject:(id)a3 atIndex:(unint64_t)a4;
- (id)_insertObject:(id)a3 withIdentifier:(id)a4 atIndex:(unint64_t)a5 forUndo:(BOOL)a6;
- (id)deltaSince:(id)a3 in:(id)a4;
- (id)objectAtIndex:(unint64_t)a3;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)firstIndexOf:(id)a3 fromIndex:(unint64_t)a4;
- (unint64_t)hash;
- (void)addUndoCommandsForObject:(id)a3 block:(id)a4;
- (void)encodeWithICCRCoder:(id)a3;
- (void)encodeWithICCRCoder:(id)a3 array:(void *)a4;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)mergeWith:(id)a3;
- (void)moveObjectFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)realizeLocalChangesIn:(id)a3;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3 forUndo:(BOOL)a4;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)setDocument:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation ICCRArray

- (void)encodeWithICCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 15)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 15;
    operator new();
  }

  [(ICCRArray *)self encodeWithICCRCoder:v6 array:*(v4 + 40)];
}

- (void)encodeWithICCRCoder:(id)a3 array:(void *)a4
{
  v10 = a3;
  v6 = [(ICCRArray *)self array];
  *(a4 + 8) |= 1u;
  v7 = *(a4 + 5);
  if (!v7)
  {
    operator new();
  }

  [v6 saveToArchive:v7];

  v8 = [(ICCRArray *)self contents];
  *(a4 + 8) |= 2u;
  v9 = *(a4 + 6);
  if (!v9)
  {
    operator new();
  }

  [v8 encodeWithICCRCoder:v10 dictionary:v9];
}

- (ICCRArray)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 15)
  {
    v6 = [(ICCRArray *)self initWithICCRCoder:v4 array:*(v5 + 40)];
  }

  else
  {
    v7 = [v4 document];
    v6 = [(ICCRArray *)self initWithDocument:v7];
  }

  return v6;
}

- (ICCRArray)initWithICCRCoder:(id)a3 array:(const void *)a4
{
  v6 = a3;
  v7 = [ICCRDictionary alloc];
  v8 = v7;
  v9 = *(a4 + 6);
  if (!v9)
  {
    v9 = *(CRDT::Array::default_instance(v7) + 48);
  }

  v10 = [(ICCRDictionary *)v8 initWithICCRCoder:v6 dictionary:v9];
  v11 = [ICTTArray alloc];
  v12 = v11;
  v13 = *(a4 + 5);
  if (!v13)
  {
    v13 = *(CRDT::Array::default_instance(v11) + 40);
  }

  v14 = [(ICTTArray *)v12 initWithICCRCoder:v6 stringArray:v13];
  v15 = [v6 document];
  v16 = [(ICCRArray *)self initWithICTTArray:v14 contents:v10 document:v15];

  return v16;
}

- (ICCRArray)initWithDocument:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[ICTTArray alloc] initWithDocument:v4];
    v6 = [[ICCRDictionary alloc] initWithDocument:v4];
    v7 = self;
    v8 = v5;
    v9 = v6;
    v10 = v4;
  }

  else
  {
    v5 = objc_alloc_init(ICTTArray);
    v6 = objc_alloc_init(ICCRDictionary);
    v7 = self;
    v8 = v5;
    v9 = v6;
    v10 = 0;
  }

  v11 = [(ICCRArray *)v7 initWithICTTArray:v8 contents:v9 document:v10];

  return v11;
}

- (ICCRArray)initWithICTTArray:(id)a3 contents:(id)a4 document:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v13.receiver = self;
  v13.super_class = ICCRArray;
  v11 = [(ICCRArray *)&v13 init];
  if (v11)
  {
    [v8 setDelegate:v11];
    [(ICCRArray *)v11 setArray:v8];
    [(ICCRArray *)v11 setContents:v9];
    [(ICCRArray *)v11 setDocument:v10];
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

- (id)objectAtIndex:(unint64_t)a3
{
  v5 = [(ICCRArray *)self array];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(ICCRArray *)self contents];
  v8 = [v7 objectForKeyedSubscript:v6];

  return v8;
}

- (id)_addObject:(id)a3
{
  v4 = a3;
  v5 = [(ICCRArray *)self _insertObject:v4 atIndex:[(ICCRArray *)self count]];

  return v5;
}

- (id)_insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v6 = MEMORY[0x277CCAD78];
  v7 = a3;
  v8 = [v6 UUID];
  v9 = [(ICCRArray *)self _insertObject:v7 withIdentifier:v8 atIndex:a4 forUndo:0];

  return v9;
}

- (id)_insertObject:(id)a3 withIdentifier:(id)a4 atIndex:(unint64_t)a5 forUndo:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  if (!a6)
  {
    v12 = [(ICCRArray *)self array];
    [v12 insertObject:v11 atIndex:a5];
  }

  v13 = [(ICCRArray *)self contents];
  [v13 setObject:v10 forKeyedSubscript:v11];

  if ([(ICCRArray *)self wantsUndoCommands])
  {
    v14 = [(ICCRArray *)self delegate];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __58__ICCRArray__insertObject_withIdentifier_atIndex_forUndo___block_invoke;
    v16[3] = &unk_278197E88;
    v17 = v11;
    [v14 addUndoCommandsForObject:self block:v16];
  }

  return v11;
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

- (void)removeObjectAtIndex:(unint64_t)a3 forUndo:(BOOL)a4
{
  v7 = [(ICCRArray *)self array];
  v8 = [v7 objectAtIndexedSubscript:a3];

  if ([(ICCRArray *)self wantsUndoCommands])
  {
    v9 = [(ICCRArray *)self objectAtIndexedSubscript:a3];
    v10 = [(ICCRArray *)self delegate];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __41__ICCRArray_removeObjectAtIndex_forUndo___block_invoke;
    v14[3] = &unk_278197EB0;
    v15 = v9;
    v16 = v8;
    v17 = a3;
    v11 = v9;
    [v10 addUndoCommandsForObject:self block:v14];
  }

  if (!a4)
  {
    v12 = [(ICCRArray *)self array];
    [v12 removeObjectAtIndex:a3];
  }

  v13 = [(ICCRArray *)self contents];
  [v13 removeObjectForKey:v8];
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

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  [(ICCRArray *)self removeObjectAtIndex:a3];
  [(ICCRArray *)self insertObject:v6 atIndex:a3];
}

- (void)moveObjectFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v7 = [(ICCRArray *)self array];
  v10 = [v7 objectAtIndexedSubscript:a3];

  v8 = [(ICCRArray *)self array];
  [v8 removeObjectAtIndex:a3];

  v9 = [(ICCRArray *)self array];
  [v9 insertObject:v10 atIndex:a4];

  [(ICCRArray *)self setMoveClock:1];
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(ICCRArray *)self array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__ICCRArray_enumerateObjectsUsingBlock___block_invoke;
  v7[3] = &unk_278197ED8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
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
  v2 = [(ICCRArray *)self array];
  v3 = [v2 count];

  return v3;
}

- (NSUUID)replicaUUID
{
  v2 = [(ICCRArray *)self document];
  v3 = [v2 replica];

  return v3;
}

- (unint64_t)firstIndexOf:(id)a3 fromIndex:(unint64_t)a4
{
  v6 = a3;
  if ([(ICCRArray *)self count]<= a4)
  {
LABEL_4:
    a4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    while (1)
    {
      v7 = [(ICCRArray *)self objectAtIndexedSubscript:a4];
      v8 = [v7 isEqual:v6];

      if (v8)
      {
        break;
      }

      if (++a4 >= [(ICCRArray *)self count])
      {
        goto LABEL_4;
      }
    }
  }

  return a4;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ICCRArray *)self contents];
    v7 = [v5 contents];
    if ([v6 isEqual:v7])
    {
      v8 = [(ICCRArray *)self array];
      v9 = [v5 array];
      v10 = [v8 isEqual:v9];
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
  v3 = [(ICCRArray *)self contents];
  v4 = [v3 hash];
  v5 = [(ICCRArray *)self array];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (void)mergeWith:(id)a3
{
  v4 = a3;
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

  v13 = v4;
  v5 = [(ICCRArray *)self array];
  v6 = [v13 array];
  [v5 mergeWith:v6];

  v7 = [(ICCRArray *)self contents];
  v8 = [v13 contents];

  [v7 mergeWith:v8];
}

- (id)deltaSince:(id)a3 in:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(ICCRArray *)self array];
  v9 = [v8 deltaSince:v7 in:v6];

  v10 = [(ICCRArray *)self contents];
  v11 = [v10 deltaSince:v7 in:v6];

  v12 = [[ICCRArray alloc] initWithICTTArray:v9 contents:v11 document:v6];

  return v12;
}

- (void)realizeLocalChangesIn:(id)a3
{
  v6 = a3;
  v4 = [(ICCRArray *)self array];
  [v4 realizeLocalChangesIn:v6];

  v5 = [(ICCRArray *)self contents];
  [v5 realizeLocalChangesIn:v6];

  if ([(ICCRArray *)self moveClock])
  {
    [v6 setUnserializedReplicaClock:{objc_msgSend(v6, "unserializedReplicaClock") + -[ICCRArray moveClock](self, "moveClock")}];
  }

  [(ICCRArray *)self setMoveClock:0];
}

- (id)tombstone
{
  v3 = [(ICCRArray *)self array];
  v4 = [v3 tombstone];

  v5 = [(ICCRArray *)self contents];
  v6 = [v5 tombstone];

  v7 = [ICCRArray alloc];
  v8 = [(ICCRArray *)self document];
  v9 = [(ICCRArray *)v7 initWithICTTArray:v4 contents:v6 document:v8];

  return v9;
}

- (void)walkGraph:(id)a3
{
  v4 = a3;
  v5 = [(ICCRArray *)self array];
  [v5 walkGraph:v4];

  v6 = [(ICCRArray *)self contents];
  [v6 walkGraph:v4];
}

- (void)setDocument:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_document, v4);
  v5 = [(ICCRArray *)self array];
  [v5 setDocument:v4];

  v6 = [(ICCRArray *)self contents];
  [v6 setDocument:v4];
}

- (void)addUndoCommandsForObject:(id)a3 block:(id)a4
{
  v5 = a4;
  v6 = [(ICCRArray *)self delegate];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__ICCRArray_addUndoCommandsForObject_block___block_invoke;
  v8[3] = &unk_278197F28;
  v9 = v5;
  v7 = v5;
  [v6 addUndoCommandsForObject:self block:v8];
}

void __44__ICCRArray_addUndoCommandsForObject_block___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 array];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)wantsUndoCommands
{
  v2 = [(ICCRArray *)self delegate];
  v3 = [v2 wantsUndoCommands];

  return v3;
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