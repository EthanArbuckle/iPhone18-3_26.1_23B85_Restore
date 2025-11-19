@interface ComAppleContextkitUtilKeylessMapBase
- (id)getWithHashesWithIntArray:(id)a3;
- (id)valueForEmbeddedWithInt:(int)a3;
- (id)valueForIndexWithInt:(int)a3;
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

- (id)getWithHashesWithIntArray:(id)a3
{
  if (!a3)
  {
    goto LABEL_71;
  }

  v5 = *(a3 + 2);
  if (v5 != self->numHashFunctions_)
  {
    v57 = new_JavaLangIllegalArgumentException_initWithNSString_(@"Array is of wrong size");
    objc_exception_throw(v57);
  }

  if (v5 <= 0)
  {
    IOSArray_throwOutOfBoundsWithMsg(v5, 0);
  }

  v58 = *(a3 + 3);
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

        v26 = [(JavaUtilHashMap *)v24 entrySet];
        if (!v26)
        {
          goto LABEL_71;
        }

        v27 = [v26 iterator];
        if (!v27)
        {
          goto LABEL_71;
        }

        v28 = v27;
        if ([v27 hasNext])
        {
          do
          {
            v29 = [v28 next];
            if (!v29)
            {
              goto LABEL_71;
            }

            v30 = v29;
            if (-[JavaUtilHashMap containsKeyWithId:](v19, "containsKeyWithId:", [v29 getKey]))
            {
              v31 = [v30 getValue];
              if (!v31)
              {
                goto LABEL_71;
              }

              v32 = v31 + 12;
              while (v32 < &v31[4 * *(v31 + 2) + 12])
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

        v34 = [(JavaUtilHashMap *)v24 entrySet];
        if (!v34)
        {
          goto LABEL_71;
        }

        v35 = [v34 iterator];
        if (!v35)
        {
          goto LABEL_71;
        }

        v36 = v35;
        if ([v35 hasNext])
        {
          while (1)
          {
            v37 = [v36 next];
            if (!v37)
            {
              break;
            }

            v38 = [v37 getValue];
            if (!v38)
            {
              break;
            }

            v39 = v38 + 12;
            while (v39 < &v38[4 * *(v38 + 2) + 12])
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
      v43 = [(JavaUtilHashMap *)v19 keySet];
      if (!v43)
      {
        goto LABEL_71;
      }

      v44 = v43;
      v45 = [v43 countByEnumeratingWithState:&v63 objects:v68 count:16];
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
      v50 = [(JavaUtilHashMap *)v19 keySet];
      if (!v50)
      {
        goto LABEL_71;
      }

      v51 = v50;
      v52 = [v50 countByEnumeratingWithState:&v59 objects:v67 count:16];
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
      v10 = *(a3 + 2);
      if (v9 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v9);
      }

      v11 = *(a3 + v9 + 3);
      numBuckets = self->numBuckets_;
      v13 = JavaLangMath_absWithInt_(v11);
      input = self->input_;
      if (!input)
      {
        goto LABEL_71;
      }

      [(OrgApacheLuceneStoreIndexInput *)input seekWithLong:self->bucketsOffset_ + 4 * (v13 % numBuckets)];
      v15 = [(OrgApacheLuceneStoreDataInput *)self->input_ readInt];
      v16 = [(OrgApacheLuceneStoreDataInput *)self->input_ readInt];
      if (v16 == v15)
      {
        return 0;
      }

      v17 = v16;
      v18 = [ComAppleContextkitUtilKeylessMapBase_BucketOffset alloc];
      v18->start_ = v15;
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

- (id)valueForIndexWithInt:(int)a3
{
  input = self->input_;
  if (!input || ([(OrgApacheLuceneStoreIndexInput *)input seekWithLong:self->valuesIndexOffset_ + 4 * a3], [(OrgApacheLuceneStoreIndexInput *)self->input_ seekWithLong:[(OrgApacheLuceneStoreDataInput *)self->input_ readInt]], (valueConverter = self->valueConverter_) == 0))
  {
    JreThrowNullPointerException();
  }

  v6 = self->input_;

  return [(ComAppleContextkitUtilValueMarshalling_ValueConverter *)valueConverter readValueWithOrgApacheLuceneStoreIndexInput:v6];
}

- (id)valueForEmbeddedWithInt:(int)a3
{
  valueConverter = self->valueConverter_;
  if (!valueConverter)
  {
    JreThrowNullPointerException();
  }

  v4 = JavaLangInteger_valueOfWithInt_(a3);

  return [(ComAppleContextkitUtilValueMarshalling_ValueConverter *)valueConverter fromEmbeddedValueWithJavaLangInteger:v4];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilKeylessMapBase;
  [(ComAppleContextkitUtilKeylessMapBase *)&v3 dealloc];
}

@end