@interface ICTTArray
- (BOOL)isEqual:(id)equal;
- (BOOL)wantsUndoCommands;
- (ICCRDocument)document;
- (ICCRUndoDelegate)delegate;
- (ICTTArray)init;
- (ICTTArray)initWithArchive:(const void *)archive replicaID:(id)d;
- (ICTTArray)initWithContents:(id)contents;
- (ICTTArray)initWithDocument:(id)document;
- (ICTTArray)initWithICCRCoder:(id)coder;
- (ICTTArray)initWithICCRCoder:(id)coder stringArray:(const void *)array;
- (NSArray)nsArray;
- (NSString)description;
- (NSUUID)replicaUUID;
- (id)objectAtIndex:(unint64_t)index;
- (id)serializeDataFromArchive:(const void *)archive;
- (id)textAttachmentAtIndex:(unint64_t)index;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfObject:(id)object;
- (void)addObject:(id)object;
- (void)addUndoCommand:(id)command;
- (void)encodeWithICCRCoder:(id)coder;
- (void)enumerateObjectsUsingBlock:(id)block;
- (void)insertObject:(id)object atIndex:(unint64_t)index;
- (void)mergeWith:(id)with;
- (void)realizeLocalChangesIn:(id)in;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)index;
- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object;
- (void)saveToArchive:(void *)archive;
- (void)setDocument:(id)document;
- (void)walkGraph:(id)graph;
@end

@implementation ICTTArray

- (id)serializeDataFromArchive:(const void *)archive
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(*(*archive + 72))(archive)];
  mutableBytes = [v4 mutableBytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  google::protobuf::MessageLite::SerializeToArray(archive, mutableBytes, v6);

  return v4;
}

- (ICTTArray)initWithArchive:(const void *)archive replicaID:(id)d
{
  v28[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  if (*(archive + 32))
  {
    v7 = [ICTTMergeableAttributedString alloc];
    v8 = v7;
    v9 = *(archive + 5);
    if (!v9)
    {
      v9 = *(CRDT::StringArray::default_instance(v7) + 40);
    }

    v10 = [(ICTTMergeableString *)v8 initWithArchive:v9 replicaID:dCopy];
    v11 = v10;
    v12 = *(archive + 14);
    if (v12)
    {
      selfCopy = self;
      v13 = *(archive + 6);
      v14 = 8 * v12;
      do
      {
        CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(v23, *v13);
        if ((~v24 & 3) == 0)
        {
          v15 = *(v26 + 23);
          if (v15 < 0)
          {
            v15 = *(v26 + 8);
          }

          if (v15 == 16)
          {
            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:selfCopy];
            attributedString = [(ICTTMergeableString *)v11 attributedString];
            v27 = @"ICTTArrayAttachment";
            v28[0] = v16;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
            [attributedString setAttributes:v18 range:{v25, 1}];
          }
        }

        CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(v23);
        ++v13;
        v14 -= 8;
      }

      while (v14);
      v6 = v11;
      self = selfCopy;
    }

    else
    {
      v6 = v10;
    }
  }

  else
  {
    v6 = [(ICTTMergeableString *)[ICTTMergeableAttributedString alloc] initWithReplicaID:dCopy];
  }

  selfCopy = [(ICTTArray *)self initWithContents:v6, selfCopy];

  return selfCopy;
}

- (void)saveToArchive:(void *)archive
{
  v15 = *MEMORY[0x277D85DE8];
  contents = [(ICTTArray *)self contents];
  *(archive + 8) |= 1u;
  v6 = *(archive + 5);
  if (!v6)
  {
    operator new();
  }

  [contents saveToArchive:v6];

  if ([(ICTTArray *)self count])
  {
    v7 = 0;
    do
    {
      v8 = [(ICTTArray *)self objectAtIndexedSubscript:v7];
      if (v8)
      {
        v9 = *(archive + 15);
        v10 = *(archive + 14);
        if (v10 >= v9)
        {
          if (v9 == *(archive + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(archive + 48, v9 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New();
        }

        v11 = *(archive + 6);
        *(archive + 14) = v10 + 1;
        v12 = *(v11 + 8 * v10);
        *(v12 + 32) |= 1u;
        *(v12 + 40) = v7;
        v14 = 0uLL;
        [v8 getUUIDBytes:&v14];
        *(v12 + 32) |= 2u;
        if (!google::protobuf::internal::empty_string_)
        {
          __assert_rtn("GetEmptyStringAlreadyInited", "generated_message_util.h", 80, "empty_string_ != NULL");
        }

        v13 = *(v12 + 48);
        if (v13 == google::protobuf::internal::empty_string_)
        {
          operator new();
        }

        if (*(v13 + 23) < 0)
        {
          v13[1] = 16;
          v13 = *v13;
        }

        else
        {
          *(v13 + 23) = 16;
        }

        *v13 = v14;
        *(v13 + 16) = 0;
      }

      ++v7;
    }

    while ([(ICTTArray *)self count]> v7);
  }
}

- (ICTTArray)initWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForDecoding = [coderCopy currentDocumentObjectForDecoding];
  if (*(currentDocumentObjectForDecoding + 48) == 14)
  {
    v6 = [(ICTTArray *)self initWithICCRCoder:coderCopy stringArray:*(currentDocumentObjectForDecoding + 40)];
  }

  else
  {
    v6 = [(ICTTArray *)self init];
  }

  v7 = v6;

  return v7;
}

- (ICTTArray)initWithICCRCoder:(id)coder stringArray:(const void *)array
{
  v33[1] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if (*(array + 32))
  {
    v12 = [ICTTMergeableAttributedString alloc];
    v13 = v12;
    v14 = *(array + 5);
    if (!v14)
    {
      v14 = *(CRDT::StringArray::default_instance(v12) + 40);
    }

    v15 = [(ICTTMergeableAttributedString *)v13 initWithICCRCoder:coderCopy string:v14];
    v16 = v15;
    v17 = *(array + 14);
    if (v17)
    {
      selfCopy = self;
      v18 = *(array + 6);
      v19 = 8 * v17;
      do
      {
        CRDT::StringArray_ArrayAttachment::StringArray_ArrayAttachment(v28, *v18);
        if ((~v29 & 3) == 0)
        {
          v20 = *(v31 + 23);
          if (v20 < 0)
          {
            v20 = *(v31 + 8);
          }

          if (v20 == 16)
          {
            v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:selfCopy];
            attributedString = [(ICTTMergeableString *)v16 attributedString];
            v32 = @"ICTTArrayAttachment";
            v33[0] = v21;
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
            [attributedString setAttributes:v23 range:{v30, 1}];
          }
        }

        CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(v28);
        ++v18;
        v19 -= 8;
      }

      while (v19);
      v9 = v16;
      self = selfCopy;
    }

    else
    {
      v9 = v15;
    }
  }

  else
  {
    v6 = [ICTTMergeableAttributedString alloc];
    document = [coderCopy document];
    replica = [document replica];
    v9 = [(ICTTMergeableString *)v6 initWithReplicaID:replica];

    objc_opt_class();
    document2 = [coderCopy document];
    v11 = ICDynamicCast();

    if (v11)
    {
      [(ICTTMergeableString *)v9 setDocument:v11];
    }
  }

  selfCopy = [(ICTTArray *)self initWithContents:v9, selfCopy];

  return selfCopy;
}

- (void)encodeWithICCRCoder:(id)coder
{
  coderCopy = coder;
  currentDocumentObjectForEncoding = [coderCopy currentDocumentObjectForEncoding];
  v5 = currentDocumentObjectForEncoding;
  if (*(currentDocumentObjectForEncoding + 48) != 14)
  {
    CRDT::Document_DocObject::clear_contents(currentDocumentObjectForEncoding);
    *(v5 + 48) = 14;
    operator new();
  }

  [(ICTTArray *)self saveToArchive:*(currentDocumentObjectForEncoding + 40)];
}

- (ICTTArray)init
{
  v3 = [ICTTMergeableAttributedString alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  v5 = [(ICTTMergeableString *)v3 initWithReplicaID:uUID];
  v6 = [(ICTTArray *)self initWithContents:v5];

  return v6;
}

- (ICTTArray)initWithDocument:(id)document
{
  documentCopy = document;
  v5 = [ICTTMergeableAttributedString alloc];
  replica = [documentCopy replica];
  v7 = [(ICTTMergeableString *)v5 initWithReplicaID:replica];
  v8 = [(ICTTArray *)self initWithContents:v7];

  if (v8)
  {
    [(ICTTArray *)v8 setDocument:documentCopy];
  }

  return v8;
}

- (ICTTArray)initWithContents:(id)contents
{
  contentsCopy = contents;
  v8.receiver = self;
  v8.super_class = ICTTArray;
  v6 = [(ICTTArray *)&v8 init];
  if (v6)
  {
    [contentsCopy setDelegate:v6];
    objc_storeStrong(&v6->_contents, contents);
  }

  return v6;
}

- (id)objectAtIndex:(unint64_t)index
{
  v4 = [(ICTTArray *)self textAttachmentAtIndex:?];
  if (!v4)
  {
    v6 = os_log_create("com.apple.coreCRDT", "ICTTArray");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICTTArray *)index objectAtIndex:v6];
    }

    index = [MEMORY[0x277CCACA8] stringWithFormat:@"ICTTArray: no object at index %lu", index];
    objc_exception_throw(index);
  }

  return v4;
}

- (id)textAttachmentAtIndex:(unint64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__57;
  v13 = __Block_byref_object_dispose__57;
  v14 = 0;
  contents = [(ICTTArray *)self contents];
  attributedString = [contents attributedString];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__ICTTArray_textAttachmentAtIndex___block_invoke;
  v8[3] = &unk_278195358;
  v8[4] = &v9;
  [attributedString enumerateAttribute:@"ICTTArrayAttachment" inRange:index options:1 usingBlock:{0, v8}];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)addObject:(id)object
{
  objectCopy = object;
  [(ICTTArray *)self insertObject:objectCopy atIndex:[(ICTTArray *)self count]];
}

- (unint64_t)indexOfObject:(id)object
{
  objectCopy = object;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__ICTTArray_indexOfObject___block_invoke;
  v8[3] = &unk_278199F48;
  v5 = objectCopy;
  v9 = v5;
  v10 = &v11;
  [(ICTTArray *)self enumerateObjectsUsingBlock:v8];
  v6 = v12[3];

  _Block_object_dispose(&v11, 8);
  return v6;
}

uint64_t __27__ICTTArray_indexOfObject___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 CR_compare:*(a1 + 32)];
  if (!result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (void)insertObject:(id)object atIndex:(unint64_t)index
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  objectCopy = object;
  v8 = [[v6 alloc] initWithUTF8String:"\uFFFC"];
  v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
  v12 = @"ICTTArrayAttachment";
  v13[0] = objectCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v9 setAttributes:v10 range:{0, 1}];
  contents = [(ICTTArray *)self contents];
  [contents insertAttributedString:v9 atIndex:index];
}

- (void)removeLastObject
{
  v3 = [(ICTTArray *)self count];
  if (v3)
  {

    [(ICTTArray *)self removeObjectAtIndex:v3 - 1];
  }
}

- (void)removeObjectAtIndex:(unint64_t)index
{
  contents = [(ICTTArray *)self contents];
  [contents deleteCharactersInRange:{index, 1}];
}

- (void)replaceObjectAtIndex:(unint64_t)index withObject:(id)object
{
  objectCopy = object;
  [(ICTTArray *)self removeObjectAtIndex:index];
  [(ICTTArray *)self insertObject:objectCopy atIndex:index];
}

- (void)enumerateObjectsUsingBlock:(id)block
{
  blockCopy = block;
  if ([(ICTTArray *)self count])
  {
    v5 = 0;
    do
    {
      v7 = 0;
      v6 = [(ICTTArray *)self objectAtIndexedSubscript:v5];
      blockCopy[2](blockCopy, v6, v5, &v7);

      if (v7 == 1)
      {
        break;
      }

      ++v5;
    }

    while ([(ICTTArray *)self count]> v5);
  }
}

- (unint64_t)count
{
  contents = [(ICTTArray *)self contents];
  v3 = [contents length];

  return v3;
}

- (NSUUID)replicaUUID
{
  contents = [(ICTTArray *)self contents];
  replicaUUID = [contents replicaUUID];

  return replicaUUID;
}

- (NSString)description
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__57;
  v11 = __Block_byref_object_dispose__57;
  v12 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:&stru_2827172C0];
  v3 = [(ICTTArray *)self count];
  if (v3)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __24__ICTTArray_description__block_invoke;
    v6[3] = &unk_278199F70;
    v6[4] = &v7;
    v6[5] = v3;
    [(ICTTArray *)self enumerateObjectsUsingBlock:v6];
    v4 = [v8[5] copy];
  }

  else
  {
    v4 = @"[]";
  }

  _Block_object_dispose(&v7, 8);

  return v4;
}

void __24__ICTTArray_description__block_invoke(uint64_t a1, void *a2, uint64_t a3)
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
    contents = [(ICTTArray *)self contents];
    contents2 = [v5 contents];

    v8 = [contents isEqual:contents2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  contents = [(ICTTArray *)self contents];
  v3 = [contents hash];

  return v3;
}

- (NSArray)nsArray
{
  array = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __20__ICTTArray_nsArray__block_invoke;
  v7[3] = &unk_278199F98;
  v8 = array;
  v4 = array;
  [(ICTTArray *)self enumerateObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (void)mergeWith:(id)with
{
  withCopy = with;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = os_log_create("com.apple.coreCRDT", "ICTTArray");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [(ICCRArray *)v8 mergeWith:v9];
    }

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICTTArray cannot merge with object of type %@.", v8];
    objc_exception_throw(v10);
  }

  v11 = withCopy;
  contents = [(ICTTArray *)self contents];
  contents2 = [v11 contents];

  [contents mergeWith:contents2];
}

- (void)realizeLocalChangesIn:(id)in
{
  inCopy = in;
  contents = [(ICTTArray *)self contents];
  [contents realizeLocalChangesIn:inCopy];
}

- (id)tombstone
{
  contents = [(ICTTArray *)self contents];
  tombstone = [contents tombstone];

  v4 = [[ICTTArray alloc] initWithContents:tombstone];

  return v4;
}

- (void)walkGraph:(id)graph
{
  graphCopy = graph;
  contents = [(ICTTArray *)self contents];
  [contents walkGraph:graphCopy];
}

- (void)setDocument:(id)document
{
  documentCopy = document;
  objc_storeWeak(&self->_document, documentCopy);
  contents = [(ICTTArray *)self contents];
  [contents setDocument:documentCopy];
}

- (void)addUndoCommand:(id)command
{
  commandCopy = command;
  delegate = [(ICTTArray *)self delegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ICTTArray_addUndoCommand___block_invoke;
  v7[3] = &unk_278199FC0;
  v8 = commandCopy;
  v6 = commandCopy;
  [delegate addUndoCommandsForObject:self block:v7];
}

void __28__ICTTArray_addUndoCommand___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 contents];
  [v2 applyToString:v3];
}

- (BOOL)wantsUndoCommands
{
  delegate = [(ICTTArray *)self delegate];
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

- (void)objectAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "No object at index %lu", &v2, 0xCu);
}

@end