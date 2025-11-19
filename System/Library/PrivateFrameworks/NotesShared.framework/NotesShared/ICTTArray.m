@interface ICTTArray
- (BOOL)isEqual:(id)a3;
- (BOOL)wantsUndoCommands;
- (ICCRDocument)document;
- (ICCRUndoDelegate)delegate;
- (ICTTArray)init;
- (ICTTArray)initWithArchive:(const void *)a3 replicaID:(id)a4;
- (ICTTArray)initWithContents:(id)a3;
- (ICTTArray)initWithDocument:(id)a3;
- (ICTTArray)initWithICCRCoder:(id)a3;
- (ICTTArray)initWithICCRCoder:(id)a3 stringArray:(const void *)a4;
- (NSArray)nsArray;
- (NSString)description;
- (NSUUID)replicaUUID;
- (id)objectAtIndex:(unint64_t)a3;
- (id)serializeDataFromArchive:(const void *)a3;
- (id)textAttachmentAtIndex:(unint64_t)a3;
- (id)tombstone;
- (unint64_t)count;
- (unint64_t)hash;
- (unint64_t)indexOfObject:(id)a3;
- (void)addObject:(id)a3;
- (void)addUndoCommand:(id)a3;
- (void)encodeWithICCRCoder:(id)a3;
- (void)enumerateObjectsUsingBlock:(id)a3;
- (void)insertObject:(id)a3 atIndex:(unint64_t)a4;
- (void)mergeWith:(id)a3;
- (void)realizeLocalChangesIn:(id)a3;
- (void)removeLastObject;
- (void)removeObjectAtIndex:(unint64_t)a3;
- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4;
- (void)saveToArchive:(void *)a3;
- (void)setDocument:(id)a3;
- (void)walkGraph:(id)a3;
@end

@implementation ICTTArray

- (id)serializeDataFromArchive:(const void *)a3
{
  v4 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:(*(*a3 + 72))(a3)];
  v5 = [v4 mutableBytes];
  v6 = ICTTBoundedCheckedCastNSUIntegerToUInt32([v4 length]);
  google::protobuf::MessageLite::SerializeToArray(a3, v5, v6);

  return v4;
}

- (ICTTArray)initWithArchive:(const void *)a3 replicaID:(id)a4
{
  v28[1] = *MEMORY[0x277D85DE8];
  v22 = a4;
  if (*(a3 + 32))
  {
    v7 = [ICTTMergeableAttributedString alloc];
    v8 = v7;
    v9 = *(a3 + 5);
    if (!v9)
    {
      v9 = *(CRDT::StringArray::default_instance(v7) + 40);
    }

    v10 = [(ICTTMergeableString *)v8 initWithArchive:v9 replicaID:v22];
    v11 = v10;
    v12 = *(a3 + 14);
    if (v12)
    {
      v21 = self;
      v13 = *(a3 + 6);
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
            v16 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v21];
            v17 = [(ICTTMergeableString *)v11 attributedString];
            v27 = @"ICTTArrayAttachment";
            v28[0] = v16;
            v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
            [v17 setAttributes:v18 range:{v25, 1}];
          }
        }

        CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(v23);
        ++v13;
        v14 -= 8;
      }

      while (v14);
      v6 = v11;
      self = v21;
    }

    else
    {
      v6 = v10;
    }
  }

  else
  {
    v6 = [(ICTTMergeableString *)[ICTTMergeableAttributedString alloc] initWithReplicaID:v22];
  }

  v19 = [(ICTTArray *)self initWithContents:v6, v21];

  return v19;
}

- (void)saveToArchive:(void *)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [(ICTTArray *)self contents];
  *(a3 + 8) |= 1u;
  v6 = *(a3 + 5);
  if (!v6)
  {
    operator new();
  }

  [v5 saveToArchive:v6];

  if ([(ICTTArray *)self count])
  {
    v7 = 0;
    do
    {
      v8 = [(ICTTArray *)self objectAtIndexedSubscript:v7];
      if (v8)
      {
        v9 = *(a3 + 15);
        v10 = *(a3 + 14);
        if (v10 >= v9)
        {
          if (v9 == *(a3 + 16))
          {
            google::protobuf::internal::RepeatedPtrFieldBase::Reserve(a3 + 48, v9 + 1);
          }

          google::protobuf::internal::GenericTypeHandler<CRDT::StringArray_ArrayAttachment>::New();
        }

        v11 = *(a3 + 6);
        *(a3 + 14) = v10 + 1;
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

- (ICTTArray)initWithICCRCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 currentDocumentObjectForDecoding];
  if (*(v5 + 48) == 14)
  {
    v6 = [(ICTTArray *)self initWithICCRCoder:v4 stringArray:*(v5 + 40)];
  }

  else
  {
    v6 = [(ICTTArray *)self init];
  }

  v7 = v6;

  return v7;
}

- (ICTTArray)initWithICCRCoder:(id)a3 stringArray:(const void *)a4
{
  v33[1] = *MEMORY[0x277D85DE8];
  v27 = a3;
  if (*(a4 + 32))
  {
    v12 = [ICTTMergeableAttributedString alloc];
    v13 = v12;
    v14 = *(a4 + 5);
    if (!v14)
    {
      v14 = *(CRDT::StringArray::default_instance(v12) + 40);
    }

    v15 = [(ICTTMergeableAttributedString *)v13 initWithICCRCoder:v27 string:v14];
    v16 = v15;
    v17 = *(a4 + 14);
    if (v17)
    {
      v26 = self;
      v18 = *(a4 + 6);
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
            v21 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v26];
            v22 = [(ICTTMergeableString *)v16 attributedString];
            v32 = @"ICTTArrayAttachment";
            v33[0] = v21;
            v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
            [v22 setAttributes:v23 range:{v30, 1}];
          }
        }

        CRDT::StringArray_ArrayAttachment::~StringArray_ArrayAttachment(v28);
        ++v18;
        v19 -= 8;
      }

      while (v19);
      v9 = v16;
      self = v26;
    }

    else
    {
      v9 = v15;
    }
  }

  else
  {
    v6 = [ICTTMergeableAttributedString alloc];
    v7 = [v27 document];
    v8 = [v7 replica];
    v9 = [(ICTTMergeableString *)v6 initWithReplicaID:v8];

    objc_opt_class();
    v10 = [v27 document];
    v11 = ICDynamicCast();

    if (v11)
    {
      [(ICTTMergeableString *)v9 setDocument:v11];
    }
  }

  v24 = [(ICTTArray *)self initWithContents:v9, v26];

  return v24;
}

- (void)encodeWithICCRCoder:(id)a3
{
  v6 = a3;
  v4 = [v6 currentDocumentObjectForEncoding];
  v5 = v4;
  if (*(v4 + 48) != 14)
  {
    CRDT::Document_DocObject::clear_contents(v4);
    *(v5 + 48) = 14;
    operator new();
  }

  [(ICTTArray *)self saveToArchive:*(v4 + 40)];
}

- (ICTTArray)init
{
  v3 = [ICTTMergeableAttributedString alloc];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5 = [(ICTTMergeableString *)v3 initWithReplicaID:v4];
  v6 = [(ICTTArray *)self initWithContents:v5];

  return v6;
}

- (ICTTArray)initWithDocument:(id)a3
{
  v4 = a3;
  v5 = [ICTTMergeableAttributedString alloc];
  v6 = [v4 replica];
  v7 = [(ICTTMergeableString *)v5 initWithReplicaID:v6];
  v8 = [(ICTTArray *)self initWithContents:v7];

  if (v8)
  {
    [(ICTTArray *)v8 setDocument:v4];
  }

  return v8;
}

- (ICTTArray)initWithContents:(id)a3
{
  v5 = a3;
  v8.receiver = self;
  v8.super_class = ICTTArray;
  v6 = [(ICTTArray *)&v8 init];
  if (v6)
  {
    [v5 setDelegate:v6];
    objc_storeStrong(&v6->_contents, a3);
  }

  return v6;
}

- (id)objectAtIndex:(unint64_t)a3
{
  v4 = [(ICTTArray *)self textAttachmentAtIndex:?];
  if (!v4)
  {
    v6 = os_log_create("com.apple.coreCRDT", "ICTTArray");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(ICTTArray *)a3 objectAtIndex:v6];
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ICTTArray: no object at index %lu", a3];
    objc_exception_throw(v7);
  }

  return v4;
}

- (id)textAttachmentAtIndex:(unint64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__57;
  v13 = __Block_byref_object_dispose__57;
  v14 = 0;
  v4 = [(ICTTArray *)self contents];
  v5 = [v4 attributedString];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__ICTTArray_textAttachmentAtIndex___block_invoke;
  v8[3] = &unk_278195358;
  v8[4] = &v9;
  [v5 enumerateAttribute:@"ICTTArrayAttachment" inRange:a3 options:1 usingBlock:{0, v8}];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (void)addObject:(id)a3
{
  v4 = a3;
  [(ICTTArray *)self insertObject:v4 atIndex:[(ICTTArray *)self count]];
}

- (unint64_t)indexOfObject:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0x7FFFFFFFFFFFFFFFLL;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__ICTTArray_indexOfObject___block_invoke;
  v8[3] = &unk_278199F48;
  v5 = v4;
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

- (void)insertObject:(id)a3 atIndex:(unint64_t)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = [[v6 alloc] initWithUTF8String:"\uFFFC"];
  v9 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v8];
  v12 = @"ICTTArrayAttachment";
  v13[0] = v7;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];

  [v9 setAttributes:v10 range:{0, 1}];
  v11 = [(ICTTArray *)self contents];
  [v11 insertAttributedString:v9 atIndex:a4];
}

- (void)removeLastObject
{
  v3 = [(ICTTArray *)self count];
  if (v3)
  {

    [(ICTTArray *)self removeObjectAtIndex:v3 - 1];
  }
}

- (void)removeObjectAtIndex:(unint64_t)a3
{
  v4 = [(ICTTArray *)self contents];
  [v4 deleteCharactersInRange:{a3, 1}];
}

- (void)replaceObjectAtIndex:(unint64_t)a3 withObject:(id)a4
{
  v6 = a4;
  [(ICTTArray *)self removeObjectAtIndex:a3];
  [(ICTTArray *)self insertObject:v6 atIndex:a3];
}

- (void)enumerateObjectsUsingBlock:(id)a3
{
  v4 = a3;
  if ([(ICTTArray *)self count])
  {
    v5 = 0;
    do
    {
      v7 = 0;
      v6 = [(ICTTArray *)self objectAtIndexedSubscript:v5];
      v4[2](v4, v6, v5, &v7);

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
  v2 = [(ICTTArray *)self contents];
  v3 = [v2 length];

  return v3;
}

- (NSUUID)replicaUUID
{
  v2 = [(ICTTArray *)self contents];
  v3 = [v2 replicaUUID];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ICTTArray *)self contents];
    v7 = [v5 contents];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(ICTTArray *)self contents];
  v3 = [v2 hash];

  return v3;
}

- (NSArray)nsArray
{
  v3 = [MEMORY[0x277CBEB18] array];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __20__ICTTArray_nsArray__block_invoke;
  v7[3] = &unk_278199F98;
  v8 = v3;
  v4 = v3;
  [(ICTTArray *)self enumerateObjectsUsingBlock:v7];
  v5 = [v4 copy];

  return v5;
}

- (void)mergeWith:(id)a3
{
  v4 = a3;
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

  v11 = v4;
  v5 = [(ICTTArray *)self contents];
  v6 = [v11 contents];

  [v5 mergeWith:v6];
}

- (void)realizeLocalChangesIn:(id)a3
{
  v4 = a3;
  v5 = [(ICTTArray *)self contents];
  [v5 realizeLocalChangesIn:v4];
}

- (id)tombstone
{
  v2 = [(ICTTArray *)self contents];
  v3 = [v2 tombstone];

  v4 = [[ICTTArray alloc] initWithContents:v3];

  return v4;
}

- (void)walkGraph:(id)a3
{
  v4 = a3;
  v5 = [(ICTTArray *)self contents];
  [v5 walkGraph:v4];
}

- (void)setDocument:(id)a3
{
  v4 = a3;
  objc_storeWeak(&self->_document, v4);
  v5 = [(ICTTArray *)self contents];
  [v5 setDocument:v4];
}

- (void)addUndoCommand:(id)a3
{
  v4 = a3;
  v5 = [(ICTTArray *)self delegate];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__ICTTArray_addUndoCommand___block_invoke;
  v7[3] = &unk_278199FC0;
  v8 = v4;
  v6 = v4;
  [v5 addUndoCommandsForObject:self block:v7];
}

void __28__ICTTArray_addUndoCommand___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 contents];
  [v2 applyToString:v3];
}

- (BOOL)wantsUndoCommands
{
  v2 = [(ICTTArray *)self delegate];
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

- (void)objectAtIndex:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "No object at index %lu", &v2, 0xCu);
}

@end