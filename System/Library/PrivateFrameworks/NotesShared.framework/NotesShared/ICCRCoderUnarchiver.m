@interface ICCRCoderUnarchiver
+ (id)decodedDocumentFromData:(id)a3 replica:(id)a4;
- (BOOL)willModifySelfInInitForClass:(Class)a3;
- (const)currentObjectIDForKey:(id)a3;
- (double)decodeDoubleForKey:(id)a3;
- (id)allocedObjectAtIndex:(unint64_t)a3 outNeedsInit:(BOOL *)a4;
- (id)decodeDataForKey:(id)a3;
- (id)decodeDocumentFromData:(id)a3 replica:(id)a4;
- (id)decodeKeys;
- (id)decodeObjectForKey:(id)a3;
- (id)decodeObjectForProtobufObjectID:(const void *)a3;
- (id)decodeStringForKey:(id)a3;
- (id)decodeUUIDForKey:(id)a3;
- (id)decodeUUIDFromUUIDIndex:(unint64_t)a3;
- (int)decodeInt32ForKey:(id)a3;
- (int64_t)decodeInt64ForKey:(id)a3;
- (unint64_t)decodeUInt64ForKey:(id)a3;
- (unint64_t)indexForKey:(id)a3;
- (unsigned)decodeUInt32ForKey:(id)a3;
- (void)addDecoderCompletionHandler:(id)a3 dependency:(id)a4 for:(id)a5;
- (void)sortCompletionHandlers;
@end

@implementation ICCRCoderUnarchiver

+ (id)decodedDocumentFromData:(id)a3 replica:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(ICCRCoderUnarchiver);
  v8 = [(ICCRCoderUnarchiver *)v7 decodeDocumentFromData:v5 replica:v6];

  return v8;
}

- (BOOL)willModifySelfInInitForClass:(Class)a3
{
  if (([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0 || ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()]& 1) != 0)
  {
    return 1;
  }

  v5 = objc_opt_class();

  return [(objc_class *)a3 isSubclassOfClass:v5];
}

- (id)allocedObjectAtIndex:(unint64_t)a3 outNeedsInit:(BOOL *)a4
{
  if (a4)
  {
    *a4 = 1;
  }

  if (*([(ICCRCoderUnarchiver *)self currentDocument]+ 64) <= a3)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver allocedObjectAtIndex:outNeedsInit:]" simulateCrash:1 showAlert:0 format:@"Index out of bounds"];
LABEL_7:
    v12 = 0;
    goto LABEL_45;
  }

  while (1)
  {
    v7 = [(ICCRCoderUnarchiver *)self allocedDocObjects];
    v8 = [v7 count];

    v9 = [(ICCRCoderUnarchiver *)self allocedDocObjects];
    v10 = v9;
    if (v8 > a3)
    {
      break;
    }

    v11 = [MEMORY[0x277CBEB68] null];
    [v10 addObject:v11];
  }

  v12 = [v9 objectAtIndexedSubscript:a3];

  v13 = [MEMORY[0x277CBEB68] null];

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = google::protobuf::internal::RepeatedPtrFieldBase::Get<google::protobuf::RepeatedPtrField<CRDT::Document_DocObject>::TypeHandler>(([(ICCRCoderUnarchiver *)self currentDocument]+ 56), a3);
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
      if (a4)
      {
        *a4 = 0;
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
      v18 = [(ICCRCoderUnarchiver *)self typeSetForDecoding];
      v19 = [v18 objectAtIndex:v17];

      v20 = [(ICCRCoder *)self typeToClassDict];
      v21 = [v20 objectForKeyedSubscript:v19];

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

      if (a4)
      {
        *a4 = 0;
      }

      v22 = [[v21 alloc] initWithICCRCoder:self];
LABEL_43:
      v12 = v22;

      if (v12)
      {
LABEL_35:
        v24 = [(ICCRCoderUnarchiver *)self allocedDocObjects];
        [v24 setObject:v12 atIndexedSubscript:a3];
      }

      else
      {
LABEL_44:
        v12 = 0;
        [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver allocedObjectAtIndex:outNeedsInit:]" simulateCrash:1 showAlert:0 format:{@"Failed to allocate memory at index %ld", a3}];
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

- (id)decodeDocumentFromData:(id)a3 replica:(id)a4
{
  a3;
  a4;
  [(ICCRCoderUnarchiver *)self setReplica:?];
  operator new();
}

- (const)currentObjectIDForKey:(id)a3
{
  v4 = a3;
  if (*([(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) != 13)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.currentDocObjectForDecodingPtr->has_custom()" functionName:"-[ICCRCoderUnarchiver currentObjectIDForKey:]" simulateCrash:1 showAlert:0 format:@"Not a custom object"];
  }

  if (*([(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr]+ 48) != 13 || ((v5 = [(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr], *(v5 + 12) != 13) ? (v6 = CRDT::Document_CustomObject::default_instance(v5)) : (v6 = v5[5]), (v7 = [(ICCRCoderUnarchiver *)self indexForKey:v4], v8 = v7, v7 == 0x7FFFFFFFFFFFFFFFLL) || *(v6 + 48) < 1))
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
    v3 = [MEMORY[0x277CBEB18] array];
    v4 = [(ICCRCoderUnarchiver *)self currentDocObjectForDecodingPtr];
    if (*(v4 + 12) == 13)
    {
      v5 = v4[5];
    }

    else
    {
      v5 = CRDT::Document_CustomObject::default_instance(v4);
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
          v10 = [(ICCRCoderUnarchiver *)self keySet];
          v11 = [v10 objectAtIndex:v9];
          [v3 ic_addNonNilObject:v11];
        }

        ++v7;
      }

      while (v7 < *(v5 + 48));
    }

    v6 = [v3 copy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)decodeObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
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

- (id)decodeObjectForProtobufObjectID:(const void *)a3
{
  if (*(a3 + 12) == 6)
  {
    v5 = [(ICCRCoderUnarchiver *)self allocedObjectAtIndex:*(a3 + 10) outNeedsInit:0, v3];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)decodeDataForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
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
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeDataForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find data for key: %@", v4}];
    v8 = 0;
  }

  return v8;
}

- (id)decodeStringForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
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
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeStringForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find string for key: %@", v4}];
    v7 = 0;
  }

  return v7;
}

- (id)decodeUUIDForKey:(id)a3
{
  v3 = [(ICCRCoderUnarchiver *)self decodeStringForKey:a3];
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

- (double)decodeDoubleForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
  if (*(v5 + 12) == 3)
  {
    v6 = v5[5];
  }

  else
  {
    v6 = 0.0;
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeDoubleForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find double for key: %@", v4}];
  }

  return v6;
}

- (int)decodeInt32ForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
  if (v5 && v5[12] == 1)
  {
    v6 = v5[10];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeInt32ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", v4}];
    v6 = 0;
  }

  return v6;
}

- (int64_t)decodeInt64ForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
  if (v5 && *(v5 + 12) == 1)
  {
    v6 = v5[5];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeInt64ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", v4}];
    v6 = 0;
  }

  return v6;
}

- (unsigned)decodeUInt32ForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
  if (v5 && v5[12] == 2)
  {
    v6 = v5[10];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeUInt32ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", v4}];
    v6 = 0;
  }

  return v6;
}

- (unint64_t)decodeUInt64ForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self currentObjectIDForKey:v4];
  if (v5 && *(v5 + 12) == 2)
  {
    v6 = v5[5];
  }

  else
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"__objc_no" functionName:"-[ICCRCoderUnarchiver decodeUInt64ForKey:]" simulateCrash:1 showAlert:0 format:{@"Unable to find integer for key: %@", v4}];
    v6 = 0;
  }

  return v6;
}

- (id)decodeUUIDFromUUIDIndex:(unint64_t)a3
{
  v5 = [(ICCRCoderUnarchiver *)self uuidArray];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"index < self.uuidArray.count" functionName:"-[ICCRCoderUnarchiver decodeUUIDFromUUIDIndex:]" simulateCrash:1 showAlert:0 format:{@"Index %ld out of bounds", a3}];
  }

  v7 = [(ICCRCoderUnarchiver *)self uuidArray];
  v8 = [v7 objectAtIndexedSubscript:a3];

  return v8;
}

- (void)addDecoderCompletionHandler:(id)a3 dependency:(id)a4 for:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_alloc_init(ICCRCoderUnarchiverCompletionHandler);
  [(ICCRCoderUnarchiverCompletionHandler *)v10 setBlock:v12];
  [(ICCRCoderUnarchiverCompletionHandler *)v10 setDependency:v8];
  [(ICCRCoderUnarchiverCompletionHandler *)v10 setValue:v9];
  v11 = [(ICCRCoderUnarchiver *)self completionHandlers];
  [v11 addObject:v10];
}

- (void)sortCompletionHandlers
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CBEB18]);
  v4 = [(ICCRCoderUnarchiver *)self completionHandlers];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  while (1)
  {
    v6 = [(ICCRCoderUnarchiver *)self completionHandlers];
    v7 = [v6 count] == 0;

    if (v7)
    {
      break;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [(ICCRCoderUnarchiver *)self completionHandlers];
    v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v30 + 1) + 8 * v11);
      v13 = [v12 dependency];
      v14 = v13 == 0;

      if (v14)
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v35 count:16];
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
    v16 = [(ICCRCoderUnarchiver *)self completionHandlers];
    [v16 removeObject:v15];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v17 = [(ICCRCoderUnarchiver *)self completionHandlers];
    v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
    if (v18)
    {
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v17);
          }

          v21 = *(*(&v26 + 1) + 8 * i);
          v22 = [v21 dependency];
          v23 = [v15 value];
          v24 = v22 == v23;

          if (v24)
          {
            [v21 setDependency:0];
          }
        }

        v18 = [v17 countByEnumeratingWithState:&v26 objects:v34 count:16];
      }

      while (v18);
    }
  }

  [(ICCRCoderUnarchiver *)self setCompletionHandlers:v5];
}

- (unint64_t)indexForKey:(id)a3
{
  v4 = a3;
  v5 = [(ICCRCoderUnarchiver *)self keySet];

  if (!v5)
  {
    [MEMORY[0x277D36198] handleFailedAssertWithCondition:"self.keySet" functionName:"-[ICCRCoderUnarchiver indexForKey:]" simulateCrash:1 showAlert:0 format:@"keySet should have been allocated"];
  }

  v6 = [(ICCRCoderUnarchiver *)self keySet];
  v7 = [v6 indexOfObject:v4];

  return v7;
}

@end