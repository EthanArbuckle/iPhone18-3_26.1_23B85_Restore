@interface ComAppleContextkitUtilKeylessMapBase
- (id)getWithHashesWithIntArray:(id)array;
- (id)valueForEmbeddedWithInt:(int)int;
- (id)valueForIndexWithInt:(int)int;
- (void)close;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilKeylessMapBase

- (void)close
{
  input = self->input_;
  if (!input)
  {
    goto LABEL_8;
  }

  [(OrgApacheLuceneStoreIndexInput *)input close];
  if (!self->closeDir_)
  {
    return;
  }

  dir = self->dir_;
  if (!dir)
  {
LABEL_8:
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDirectory *)dir close];
}

- (id)getWithHashesWithIntArray:(id)array
{
  if (!array)
  {
    goto LABEL_71;
  }

  v5 = *(array + 2);
  if (v5 != self->numHashFunctions_)
  {
    v57 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Array is of wrong size");
    objc_exception_throw(v57);
  }

  if (v5 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 0);
  }

  v58 = *(array + 3);
  v6 = v5 - 1;
  if (qword_100554168 != -1)
  {
    sub_100076D98();
  }

  v7 = [IOSObjectArray arrayWithLength:v6 type:qword_100554160];
  numHashFunctions = self->numHashFunctions_;
  if (numHashFunctions < 2)
  {
LABEL_14:
    JavaUtilArrays_sortWithNSObjectArray_(v7);
    v19 = 0;
    p_elementType = &v7->elementType_;
    v21 = &(&v7->elementType_)[v7->super.size_];
    while (p_elementType < v21)
    {
      v23 = *p_elementType++;
      v22 = v23;
      v24 = sub_100076A3C(self, v23);
      v25 = v24;
      if (v19)
      {
        if (!v24)
        {
          goto LABEL_71;
        }

        entrySet = [(JavaUtilHashMap *)v24 entrySet];
        if (!entrySet)
        {
          goto LABEL_71;
        }

        iterator = [entrySet iterator];
        if (!iterator)
        {
          goto LABEL_71;
        }

        v28 = iterator;
        if ([iterator hasNext])
        {
          do
          {
            next = [v28 next];
            if (!next)
            {
              goto LABEL_71;
            }

            v30 = next;
            if (-[JavaUtilHashMap containsKeyWithId:](v19, "containsKeyWithId:", [next getKey]))
            {
              getValue = [v30 getValue];
              if (!getValue)
              {
                goto LABEL_71;
              }

              v32 = getValue + 12;
              while (v32 < &getValue[4 * *(getValue + 2) + 12])
              {
                if (!v22)
                {
                  goto LABEL_71;
                }

                v33 = *v32;
                v32 += 4;
                if (v33 == *(v22 + 16))
                {
                  goto LABEL_30;
                }
              }
            }

            [v28 remove];
LABEL_30:
            ;
          }

          while (([v28 hasNext] & 1) != 0);
        }
      }

      else
      {
        if (!v24)
        {
          goto LABEL_71;
        }

        entrySet2 = [(JavaUtilHashMap *)v24 entrySet];
        if (!entrySet2)
        {
          goto LABEL_71;
        }

        iterator2 = [entrySet2 iterator];
        if (!iterator2)
        {
          goto LABEL_71;
        }

        v36 = iterator2;
        if ([iterator2 hasNext])
        {
          while (1)
          {
            next2 = [v36 next];
            if (!next2)
            {
              break;
            }

            getValue2 = [next2 getValue];
            if (!getValue2)
            {
              break;
            }

            v39 = getValue2 + 12;
            while (v39 < &getValue2[4 * *(getValue2 + 2) + 12])
            {
              if (!v22)
              {
                goto LABEL_71;
              }

              v40 = *v39;
              v39 += 4;
              if (v40 == *(v22 + 16))
              {
                goto LABEL_44;
              }
            }

            [v36 remove];
LABEL_44:
            if (([v36 hasNext] & 1) == 0)
            {
              goto LABEL_45;
            }
          }

LABEL_71:
          JreThrowNullPointerException();
        }

LABEL_45:
        v19 = v25;
      }

      if ([(JavaUtilHashMap *)v19 isEmpty])
      {
        return 0;
      }
    }

    if (!v19)
    {
      goto LABEL_71;
    }

    v41 = new_JavaUtilArrayList_initWithInt_([(JavaUtilHashMap *)v19 size]);
    if (self->embeddedValues_)
    {
      v65 = 0uLL;
      v66 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      keySet = [(JavaUtilHashMap *)v19 keySet];
      if (!keySet)
      {
        goto LABEL_71;
      }

      v44 = keySet;
      v45 = [keySet countByEnumeratingWithState:&v63 objects:v68 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v64;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v64 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v63 + 1) + 8 * i);
            if (!v49)
            {
              goto LABEL_71;
            }

            -[JavaUtilArrayList addWithId:](v41, "addWithId:", -[ComAppleContextkitUtilKeylessMapBase valueForEmbeddedWithInt:](self, "valueForEmbeddedWithInt:", [v49 intValue]));
          }

          v46 = [v44 countByEnumeratingWithState:&v63 objects:v68 count:16];
        }

        while (v46);
      }
    }

    else
    {
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      keySet2 = [(JavaUtilHashMap *)v19 keySet];
      if (!keySet2)
      {
        goto LABEL_71;
      }

      v51 = keySet2;
      v52 = [keySet2 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v52)
      {
        v53 = v52;
        v54 = *v60;
        do
        {
          for (j = 0; j != v53; j = j + 1)
          {
            if (*v60 != v54)
            {
              objc_enumerationMutation(v51);
            }

            v56 = *(*(&v59 + 1) + 8 * j);
            if (!v56)
            {
              goto LABEL_71;
            }

            -[JavaUtilArrayList addWithId:](v41, "addWithId:", -[ComAppleContextkitUtilKeylessMapBase valueForIndexWithInt:](self, "valueForIndexWithInt:", [v56 intValue]));
          }

          v53 = [v51 countByEnumeratingWithState:&v59 objects:v67 count:16];
        }

        while (v53);
      }
    }
  }

  else
  {
    v9 = 1;
    while (1)
    {
      v10 = *(array + 2);
      if (v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      v11 = *(array + v9 + 3);
      numBuckets = self->numBuckets_;
      v13 = JavaLangMath_absWithInt_(v11);
      input = self->input_;
      if (!input)
      {
        goto LABEL_71;
      }

      [(OrgApacheLuceneStoreIndexInput *)input seekWithLong:self->bucketsOffset_ + 4 * (v13 % numBuckets)];
      readInt = [(OrgApacheLuceneStoreDataInput *)self->input_ readInt];
      readInt2 = [(OrgApacheLuceneStoreDataInput *)self->input_ readInt];
      if (readInt2 == readInt)
      {
        return 0;
      }

      v17 = readInt2;
      v18 = [ComAppleContextkitUtilKeylessMapBase_BucketOffset alloc];
      v18->start_ = readInt;
      v18->end_ = v17;
      v18->valueGroup_ = v11 + v58;
      IOSObjectArray_SetAndConsume(v7, v9++ - 1, v18);
      if (v9 == numHashFunctions)
      {
        goto LABEL_14;
      }
    }
  }

  return v41;
}

- (id)valueForIndexWithInt:(int)int
{
  input = self->input_;
  if (!input || ([(OrgApacheLuceneStoreIndexInput *)input seekWithLong:self->valuesIndexOffset_ + 4 * int], [(OrgApacheLuceneStoreIndexInput *)self->input_ seekWithLong:[(OrgApacheLuceneStoreDataInput *)self->input_ readInt]], (valueConverter = self->valueConverter_) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = self->input_;

  return [(ComAppleContextkitUtilValueMarshalling_ValueConverter *)valueConverter readValueWithOrgApacheLuceneStoreIndexInput:v6];
}

- (id)valueForEmbeddedWithInt:(int)int
{
  valueConverter = self->valueConverter_;
  if (!valueConverter)
  {
    JreThrowNullPointerException();
  }

  v4 = JavaLangInteger_valueOfWithInt_(int);

  return [(ComAppleContextkitUtilValueMarshalling_ValueConverter *)valueConverter fromEmbeddedValueWithJavaLangInteger:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilKeylessMapBase;
  [(ComAppleContextkitUtilKeylessMapBase *)&v3 dealloc];
}

@end