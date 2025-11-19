@interface OrgApacheLuceneDocumentDocument
+ (void)initialize;
- (NSString)description;
- (OrgApacheLuceneDocumentDocument)init;
- (id)getBinaryValueWithNSString:(id)a3;
- (id)getBinaryValuesWithNSString:(id)a3;
- (id)getFieldWithNSString:(id)a3;
- (id)getFieldsWithNSString:(id)a3;
- (id)getValuesWithNSString:(id)a3;
- (id)getWithNSString:(id)a3;
- (id)iterator;
- (void)addWithOrgApacheLuceneIndexIndexableField:(id)a3;
- (void)dealloc;
- (void)removeAllFields;
- (void)removeFieldWithNSString:(id)a3;
- (void)removeFieldsWithNSString:(id)a3;
@end

@implementation OrgApacheLuceneDocumentDocument

- (OrgApacheLuceneDocumentDocument)init
{
  v3 = new_JavaUtilArrayList_init();
  JreStrongAssignAndConsume(&self->fields_, v3);
  return self;
}

- (id)iterator
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  return [(JavaUtilList *)fields iterator];
}

- (void)addWithOrgApacheLuceneIndexIndexableField:(id)a3
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)fields addWithId:a3];
}

- (void)removeAllFields
{
  fields = self->fields_;
  if (!fields)
  {
    JreThrowNullPointerException();
  }

  [(JavaUtilList *)fields clear];
}

- (void)removeFieldWithNSString:(id)a3
{
  fields = self->fields_;
  if (!fields || (v5 = [(JavaUtilList *)fields iterator]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v6 = v5;
  while (([v6 hasNext] & 1) != 0)
  {
    v7 = [v6 next];
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = [v7 name];
    if (!v8)
    {
      goto LABEL_12;
    }

    if ([v8 isEqual:a3])
    {

      [v6 remove];
      return;
    }
  }
}

- (void)removeFieldsWithNSString:(id)a3
{
  fields = self->fields_;
  if (!fields)
  {
    goto LABEL_10;
  }

  v5 = [(JavaUtilList *)fields iterator];
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = v5;
  if ([v5 hasNext])
  {
    while (1)
    {
      v7 = [v6 next];
      if (!v7)
      {
        break;
      }

      v8 = [v7 name];
      if (!v8)
      {
        break;
      }

      if ([v8 isEqual:a3])
      {
        [v6 remove];
      }

      if (([v6 hasNext] & 1) == 0)
      {
        return;
      }
    }

LABEL_10:
    JreThrowNullPointerException();
  }
}

- (id)getBinaryValuesWithNSString:(id)a3
{
  v5 = new_JavaUtilArrayList_init();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  fields = self->fields_;
  if (!fields)
  {
LABEL_15:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = [(JavaUtilList *)fields countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(fields);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_15;
        }

        v13 = [*(*(&v16 + 1) + 8 * i) name];
        if (!v13)
        {
          goto LABEL_15;
        }

        if ([v13 isEqual:a3])
        {
          v14 = [v12 binaryValue];
          if (v14)
          {
            [(JavaUtilArrayList *)v7 addWithId:v14];
          }
        }
      }

      v9 = [(JavaUtilList *)fields countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v7 size] type:OrgApacheLuceneUtilBytesRef_class_()]];
}

- (id)getBinaryValueWithNSString:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fields = self->fields_;
  if (!fields)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  result = [(JavaUtilList *)self->fields_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(fields);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = [*(*(&v11 + 1) + 8 * v8) name];
        if (!v10)
        {
          goto LABEL_14;
        }

        if ([v10 isEqual:a3])
        {
          result = [v9 binaryValue];
          if (result)
          {
            return result;
          }
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(JavaUtilList *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
    }

    while (result);
  }

  return result;
}

- (id)getFieldWithNSString:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  fields = self->fields_;
  if (!fields)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v5 = [(JavaUtilList *)self->fields_ countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(fields);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (!v9)
        {
          goto LABEL_14;
        }

        v10 = [*(*(&v12 + 1) + 8 * i) name];
        if (!v10)
        {
          goto LABEL_14;
        }

        if ([v10 isEqual:a3])
        {
          return v9;
        }
      }

      v6 = [(JavaUtilList *)fields countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  return 0;
}

- (id)getFieldsWithNSString:(id)a3
{
  v5 = new_JavaUtilArrayList_init();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  fields = self->fields_;
  if (!fields)
  {
LABEL_14:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = [(JavaUtilList *)fields countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(fields);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_14;
        }

        v13 = [*(*(&v15 + 1) + 8 * i) name];
        if (!v13)
        {
          goto LABEL_14;
        }

        if ([v13 isEqual:a3])
        {
          [(JavaUtilArrayList *)v7 addWithId:v12];
        }
      }

      v9 = [(JavaUtilList *)fields countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v7 size] type:OrgApacheLuceneIndexIndexableField_class_()]];
}

- (id)getValuesWithNSString:(id)a3
{
  v5 = new_JavaUtilArrayList_init();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  fields = self->fields_;
  if (!fields)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  v7 = v5;
  v8 = [(JavaUtilList *)fields countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(fields);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        if (!v12)
        {
          goto LABEL_16;
        }

        v13 = [*(*(&v15 + 1) + 8 * i) name];
        if (!v13)
        {
          goto LABEL_16;
        }

        if ([v13 isEqual:a3] && objc_msgSend(v12, "stringValue"))
        {
          -[JavaUtilArrayList addWithId:](v7, "addWithId:", [v12 stringValue]);
        }
      }

      v9 = [(JavaUtilList *)fields countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ([(JavaUtilArrayList *)v7 size])
  {
    return [(JavaUtilArrayList *)v7 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilArrayList *)v7 size] type:NSString_class_()]];
  }

  else
  {
    return qword_100554790;
  }
}

- (id)getWithNSString:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  fields = self->fields_;
  if (!fields)
  {
LABEL_16:
    JreThrowNullPointerException();
  }

  result = [(JavaUtilList *)self->fields_ countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v6 = result;
    v7 = *v12;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(fields);
        }

        v9 = *(*(&v11 + 1) + 8 * v8);
        if (!v9)
        {
          goto LABEL_16;
        }

        v10 = [*(*(&v11 + 1) + 8 * v8) name];
        if (!v10)
        {
          goto LABEL_16;
        }

        if ([v10 isEqual:a3] && objc_msgSend(v9, "stringValue"))
        {
          return [v9 stringValue];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      result = [(JavaUtilList *)fields countByEnumeratingWithState:&v11 objects:v15 count:16];
      v6 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

- (NSString)description
{
  v3 = new_JavaLangStringBuilder_init();
  [(JavaLangStringBuilder *)v3 appendWithNSString:@"Document<"];
  fields = self->fields_;
  if (!fields)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  v5 = 0;
  while (v5 < [(JavaUtilList *)fields size])
  {
    v6 = [(JavaUtilList *)self->fields_ getWithInt:v5];
    if (v6)
    {
      -[JavaLangStringBuilder appendWithNSString:](v3, "appendWithNSString:", [v6 description]);
      if (v5 != [(JavaUtilList *)self->fields_ size]- 1)
      {
        [(JavaLangStringBuilder *)v3 appendWithNSString:@" "];
      }

      v5 = (v5 + 1);
      fields = self->fields_;
      if (fields)
      {
        continue;
      }
    }

    goto LABEL_8;
  }

  [(JavaLangStringBuilder *)v3 appendWithNSString:@">"];

  return [(JavaLangStringBuilder *)v3 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneDocumentDocument;
  [(OrgApacheLuceneDocumentDocument *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = [IOSObjectArray newArrayWithLength:0 type:NSString_class_()];
    JreStrongAssignAndConsume(&qword_100554790, v2);
    atomic_store(1u, OrgApacheLuceneDocumentDocument__initialized);
  }
}

@end