@interface ICCRCoderUnarchiver
+ (id)decodedDocumentFromData:(id)data replica:(id)replica;
- (BOOL)willModifySelfInInitForClass:(Class)class;
- (const)currentObjectIDForKey:(id)key;
- (double)decodeDoubleForKey:(id)key;
- (id)allocedObjectAtIndex:(unint64_t)index outNeedsInit:(BOOL *)init;
- (id)decodeDataForKey:(id)key;
- (id)decodeDocumentFromData:(id)data replica:(id)replica;
- (id)decodeKeys;
- (id)decodeObjectForKey:(id)key;
- (id)decodeObjectForProtobufObjectID:(const void *)d;
- (id)decodeStringForKey:(id)key;
- (id)decodeUUIDForKey:(id)key;
- (id)decodeUUIDFromUUIDIndex:(unint64_t)index;
- (int)decodeInt32ForKey:(id)key;
- (int64_t)decodeInt64ForKey:(id)key;
- (unint64_t)decodeUInt64ForKey:(id)key;
- (unint64_t)indexForKey:(id)key;
- (unsigned)decodeUInt32ForKey:(id)key;
- (void)addDecoderCompletionHandler:(id)handler dependency:(id)dependency for:(id)for;
- (void)sortCompletionHandlers;
@end

@implementation ICCRCoderUnarchiver

+ (id)decodedDocumentFromData:(id)data replica:(id)replica
{
  dataCopy = data;
  replicaCopy = replica;
  v7 = objc_alloc_init(ICCRCoderUnarchiver);
  v8 = [(ICCRCoderUnarchiver *)v7 decodeDocumentFromData:dataCopy replica:replicaCopy];

  return v8;
}

- (BOOL)willModifySelfInInitForClass:(Class)class
{
  if (([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)class isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return [(objc_class *)class isSubclassOfClass:v5];
}

- (id)allocedObjectAtIndex:(unint64_t)index outNeedsInit:(BOOL *)init
{
  if (init)
  {
    *init = 1;
  }

  if (*([(ICCRCoderUnarchiver *)self currentDocument]+ 64) <= index)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver allocedObjectAtIndex:outNeedsInit:]" simulateCrash:1 showAlert:0 format:@"Index out of bounds"];
LABEL_7:
    v12 = 0;
    goto LABEL_45;
  }

  while (1)
  {
    allocedDocObjects = [(ICCRCoderUnarchiver *)self allocedDocObjects];
    v8 = [allocedDocObjects count];

    allocedDocObjects2 = [(ICCRCoderUnarchiver *)self allocedDocObjects];
    v10 = allocedDocObjects2;
    if (v8 > index)
    {
      break;
    }

    null = [MEMORY[0x277CBEB68] null];
    [v10 addObject:null];
  }

  v12 = [allocedDocObjects2 objectAtIndexedSubscript:index];

  null2 = [MEMORY[0x277CBEB68] null];

  if (v12 != null2)
  {
    goto LABEL_45;
  }

  v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(([(ICCRCoderUnarchiver *)self currentDocument]+ 56), index);
  v15 = off_278192AF0;
  switch(*(v14 + 48))
  {
    case 1:
      v15 = off_278192B10;
      goto LABEL_33;
    case 2:
      v15 = off_278192B08;
      goto LABEL_33;
    case 3:
      v15 = off_278192B18;
      goto LABEL_33;
    case 4:
      v15 = off_278192B30;
      goto LABEL_33;
    case 5:
      goto LABEL_33;
    case 6:
      v15 = off_278192AC8;
      goto LABEL_33;
    case 7:
      v15 = off_278192B40;
      goto LABEL_33;
    case 8:
      v15 = off_278192B68;
      goto LABEL_33;
    case 9:
      v15 = off_278192AD8;
      goto LABEL_33;
    case 0xA:
      if (init)
      {
        *init = 0;
      }

      v23 = [[ICTTMergeableAttributedString alloc] initWithICCRCoder:self];
      goto LABEL_34;
    case 0xB:
      v15 = off_278192B78;
      goto LABEL_33;
    case 0xC:
      v15 = off_278192AE8;
      goto LABEL_33;
    case 0xD:
      v16 = *(v14 + 40);
      if ((*(v16 + 32) & 1) == 0)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"customObject.has_type()" functionName:"-[ICCRCoderUnarchiver allocedObjectAtIndex:outNeedsInit:]" simulateCrash:1 showAlert:0 format:@"Type not set"];
        if ((*(v16 + 32) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      v17 = *(v16 + 64);
      typeSetForDecoding = [(ICCRCoderUnarchiver *)self typeSetForDecoding];
      v19 = [typeSetForDecoding objectAtIndex:v17];

      typeToClassDict = [(ICCRCoder *)self typeToClassDict];
      v21 = [typeToClassDict objectForKeyedSubscript:v19];

      if (!v21)
      {
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"aClass" functionName:"-[ICCRCoderUnarchiver allocedObjectAtIndex:outNeedsInit:]" simulateCrash:1 showAlert:0 format:{@"Did not find class for type: %@", v19}];
        goto LABEL_42;
      }

      if (![(ICCRCoderUnarchiver *)self willModifySelfInInitForClass:v21])
      {
LABEL_42:
        v22 = [v21 alloc];
        goto LABEL_43;
      }

      if (init)
      {
        *init = 0;
      }

      v22 = [[v21 alloc] initWithICCRCoder:self];
LABEL_43:
      v12 = v22;

      if (v12)
      {
LABEL_35:
        allocedDocObjects3 = [(ICCRCoderUnarchiver *)self allocedDocObjects];
        [allocedDocObjects3 setObject:v12 atIndexedSubscript:index];
      }

      else
      {
LABEL_44:
        v12 = 0;
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver allocedObjectAtIndex:outNeedsInit:]" simulateCrash:1 showAlert:0 format:{@"Failed to allocate memory at index %ld", index}];
      }

LABEL_45:

      return v12;
    case 0xE:
      v15 = off_278192F70;
      goto LABEL_33;
    case 0xF:
      v15 = off_278192AA0;
      goto LABEL_33;
    case 0x10:
      v15 = off_278192B48;
LABEL_33:
      v23 = objc_alloc(*v15);
LABEL_34:
      v12 = v23;
      if (v23)
      {
        goto LABEL_35;
      }

      goto LABEL_44;
    default:
      v25 = MEMORY[0x277D36198];
      (*(*v14 + 16))(__p);
      if (v29 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      [v25 handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver allocedObjectAtIndex:outNeedsInit:]" simulateCrash:1 showAlert:0 format:{@"Unable to allocate memory for unknown object of type: %s", v26}];
      if (v29 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_7;
  }
}

- (id)decodeDocumentFromData:(id)data replica:(id)replica
{
  data;
  replica;
  [(ICCRCoderUnarchiver *)self setReplica:?];
  operator new();
}

- (const)currentObjectIDForKey:(id)key
{
  keyCopy = key;
  if (*([(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) != 13)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.currentDocObjectForDecodingPtr->has_custom()" functionName:"-[ICCRCoderUnarchiver currentObjectIDForKey:]" simulateCrash:1 showAlert:0 format:@"Not a custom object"];
  }

  if (*([(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) != 13 || ((v5 = [(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr], *(v5 + 12) != 13) ? (v6 = CRDT::Document_CustomObject::default_instance(v5)) : (v6 = v5[5]), (v7 = [(ICCRCoderUnarchiver *)self indexForKey:keyCopy], v8 = v7, v7 == 0x7FFFFFFFFFFFFFFFLL) || *(v6 + 48) < 1))
  {
LABEL_15:
    v12 = 0;
  }

  else
  {
    v9 = 0;
    while (1)
    {
      v10 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(v6 + 40, v9);
      if ((~*(v10 + 32) & 3) == 0 && *(v10 + 48) == v8)
      {
        break;
      }

      if (++v9 >= *(v6 + 48))
      {
        goto LABEL_15;
      }
    }

    v12 = *(v10 + 40);
    if (!v12)
    {
      v12 = *(CRDT::Document_CustomObject_MapEntry::default_instance(v10) + 40);
    }
  }

  return v12;
}

- (id)decodeKeys
{
  if (*([(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) != 13)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.currentDocObjectForDecodingPtr->has_custom()" functionName:"-[ICCRCoderUnarchiver decodeKeys]" simulateCrash:1 showAlert:0 format:@"Not a custom object"];
  }

  if (*([(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) == 13)
  {
    array = [MEMORY[0x277CBEB18] array];
    currentDocObjectForDecodingPtr = [(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr];
    if (*(currentDocObjectForDecodingPtr + 12) == 13)
    {
      v5 = currentDocObjectForDecodingPtr[5];
    }

    else
    {
      v5 = CRDT::Document_CustomObject::default_instance(currentDocObjectForDecodingPtr);
    }

    if (*(v5 + 48) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_CustomObject_MapEntry>::TypeHandler>(v5 + 40, v7);
        if ((~*(v8 + 32) & 3) == 0)
        {
          v9 = *(v8 + 48);
          keySet = [(ICCRCoderUnarchiver *)self keySet];
          v11 = [keySet objectAtIndex:v9];
          [array ic_addNonNilObject:v11];
        }

        ++v7;
      }

      while (v7 < *(v5 + 48));
    }

    v6 = [array copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decodeObjectForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (v5)
  {
    v6 = [(ICCRCoderUnarchiver *)self decodeObjectForProtobufObjectID:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decodeObjectForProtobufObjectID:(const void *)d
{
  if (*(d + 12) == 6)
  {
    v5 = [(ICCRCoderUnarchiver *)self allocedObjectAtIndex:*(d + 10) outNeedsInit:0, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)decodeDataForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (*(v5 + 12) == 5)
  {
    v6 = v5[5];
    v7 = *(v6 + 23);
    if (v7 < 0)
    {
      v6 = *v6;
      v7 = *(v5[5] + 8);
    }

    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v6 length:v7];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeDataForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find data for key: %@", keyCopy}];
    v8 = 0;
  }

  return v8;
}

- (id)decodeStringForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (*(v5 + 12) == 4)
  {
    v6 = v5[5];
    if (*(v6 + 23) < 0)
    {
      v6 = *v6;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeStringForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find string for key: %@", keyCopy}];
    v7 = 0;
  }

  return v7;
}

- (id)decodeUUIDForKey:(id)key
{
  v3 = [(ICCRCoderUnarchiver *)self decodeStringForKey:key];
  if ([v3 length])
  {
    v4 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (double)decodeDoubleForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (*(v5 + 12) == 3)
  {
    v6 = v5[5];
  }

  else
  {
    v6 = 0.0;
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeDoubleForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find double for key: %@", keyCopy}];
  }

  return v6;
}

- (int)decodeInt32ForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (v5 && v5[12] == 1)
  {
    v6 = v5[10];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeInt32ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", keyCopy}];
    v6 = 0;
  }

  return v6;
}

- (int64_t)decodeInt64ForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (v5 && *(v5 + 12) == 1)
  {
    v6 = v5[5];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeInt64ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", keyCopy}];
    v6 = 0;
  }

  return v6;
}

- (unsigned)decodeUInt32ForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (v5 && v5[12] == 2)
  {
    v6 = v5[10];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeUInt32ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", keyCopy}];
    v6 = 0;
  }

  return v6;
}

- (unint64_t)decodeUInt64ForKey:(id)key
{
  keyCopy = key;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:keyCopy];
  if (v5 && *(v5 + 12) == 2)
  {
    v6 = v5[5];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeUInt64ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", keyCopy}];
    v6 = 0;
  }

  return v6;
}

- (id)decodeUUIDFromUUIDIndex:(unint64_t)index
{
  uuidArray = [(ICCRCoderUnarchiver *)self uuidArray];
  v6 = [uuidArray count];

  if (v6 <= index)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"index < self.uuidArray.count" functionName:"-[ICCRCoderUnarchiver decodeUUIDFromUUIDIndex:]" simulateCrash:1 showAlert:0 format:{@"Index %ld out of bounds", index}];
  }

  uuidArray2 = [(ICCRCoderUnarchiver *)self uuidArray];
  v8 = [uuidArray2 objectAtIndexedSubscript:index];

  return v8;
}

- (void)addDecoderCompletionHandler:(id)handler dependency:(id)dependency for:(id)for
{
  handlerCopy = handler;
  dependencyCopy = dependency;
  forCopy = for;
  v10 = objc_alloc_init(ICCRCoderUnarchiverCompletionHandler);
  [(ICCRCoderUnarchiverCompletionHandler *)v10 setBlock:handlerCopy];
  [(ICCRCoderUnarchiverCompletionHandler *)v10 setDependency:dependencyCopy];
  [(ICCRCoderUnarchiverCompletionHandler *)v10 setValue:forCopy];
  completionHandlers = [(ICCRCoderUnarchiver *)self completionHandlers];
  [completionHandlers addObject:v10];
}

- (void)sortCompletionHandlers
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  completionHandlers = [(ICCRCoderUnarchiver *)self completionHandlers];
  v5 = [v3 initWithCapacity:{objc_msgSend(completionHandlers, "count")}];

  while (1)
  {
    completionHandlers2 = [(ICCRCoderUnarchiver *)self completionHandlers];
    v7 = [completionHandlers2 count] == 0;

    if (v7)
    {
      break;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    completionHandlers3 = [(ICCRCoderUnarchiver *)self completionHandlers];
    v9 = [completionHandlers3 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v9)
    {
      goto LABEL_24;
    }

    v10 = *v31;
LABEL_5:
    v11 = 0;
    while (1)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(completionHandlers3);
      }

      v12 = *(*(&v30 + 1) + 8 * v11);
      dependency = [v12 dependency];
      v14 = dependency == 0;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [completionHandlers3 countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (!v9)
        {
LABEL_24:

LABEL_25:
          v25 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"No topological sort of completion handlers." userInfo:0];
          objc_exception_throw(v25);
        }

        goto LABEL_5;
      }
    }

    v15 = v12;

    if (!v15)
    {
      goto LABEL_25;
    }

    [v5 addObject:v15];
    completionHandlers4 = [(ICCRCoderUnarchiver *)self completionHandlers];
    [completionHandlers4 removeObject:v15];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    completionHandlers5 = [(ICCRCoderUnarchiver *)self completionHandlers];
    v18 = [completionHandlers5 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(completionHandlers5);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          dependency2 = [v21 dependency];
          value = [v15 value];
          v24 = dependency2 == value;

          if (v24)
          {
            [v21 setDependency:0];
          }
        }

        v18 = [completionHandlers5 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }
  }

  [(ICCRCoderUnarchiver *)self setCompletionHandlers:v5];
}

- (unint64_t)indexForKey:(id)key
{
  keyCopy = key;
  keySet = [(ICCRCoderUnarchiver *)self keySet];

  if (!keySet)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.keySet" functionName:"-[ICCRCoderUnarchiver indexForKey:]" simulateCrash:1 showAlert:0 format:@"keySet should have been allocated"];
  }

  keySet2 = [(ICCRCoderUnarchiver *)self keySet];
  v7 = [keySet2 indexOfObject:keyCopy];

  return v7;
}

@end