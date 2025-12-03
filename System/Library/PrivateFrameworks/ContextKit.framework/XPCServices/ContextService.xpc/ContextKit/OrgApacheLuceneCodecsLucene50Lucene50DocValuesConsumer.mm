@interface OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer
- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable;
- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withBoolean:(BOOL)boolean;
- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable;
- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable;
- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaLangIterable:(id)javaLangIterable;
- (void)close;
- (void)dealloc;
- (void)writeMissingBitsetWithJavaLangIterable:(id)iterable;
@end

@implementation OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer

- (void)addNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withBoolean:(BOOL)boolean
{
  if (boolean)
  {
    v7 = new_JavaUtilHashSet_init();
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    if (!iterable)
    {
      goto LABEL_124;
    }

    v8 = v7;
    infoCopy = info;
    obj = iterable;
    v9 = [iterable countByEnumeratingWithState:&v107 objects:v115 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v87 = 0;
      v89 = *v108;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0x8000000000000000;
      do
      {
        v16 = 0;
        v83 = v13;
        v84 = -v13;
        do
        {
          v17 = v12;
          if (*v108 != v89)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v107 + 1) + 8 * v16);
          if (v18)
          {
            longLongValue = [v18 longLongValue];
            v20 = longLongValue == 0;
          }

          else
          {
            longLongValue = 0;
            ++v87;
            v20 = 1;
          }

          if (v12 == 1)
          {
            v12 = 1;
          }

          else
          {
            v12 = 1;
            if (((longLongValue - 0x4000000000000000) & 0x8000000000000000) != 0)
            {
              if (v84 == v16)
              {
                v12 = v17;
              }

              else
              {
                v12 = OrgApacheLuceneUtilMathUtil_gcdWithLong_withLong_(v17, longLongValue - v14);
              }
            }
          }

          v14 = JavaLangMath_minWithLong_withLong_(v14, longLongValue);
          v15 = JavaLangMath_maxWithLong_withLong_(v15, longLongValue);
          if (v8 && [(JavaUtilHashSet *)v8 addWithId:JavaLangLong_valueOfWithLong_(longLongValue)]&& [(JavaUtilHashSet *)v8 size]> 256)
          {
            v8 = 0;
          }

          v11 += v20;
          ++v16;
        }

        while (v10 != v16);
        v13 = &v10[v83];
        v10 = [obj countByEnumeratingWithState:&v107 objects:v115 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
      v87 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v15 = 0x8000000000000000;
    }

    v24 = v13;
    v30 = v15 - v14;
    v31 = OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v15 - v14);
    v90 = v31;
    if (v8)
    {
      v32 = [(JavaUtilHashSet *)v8 size];
      v40 = OrgApacheLuceneUtilPackedDirectWriter_bitsRequiredWithLong_((v32 - 1), v33, v34, v35, v36, v37, v38, v39);
      infoCopy2 = infoCopy;
      if (v24 <= 0x7FFFFFFF)
      {
        if ([(JavaUtilHashSet *)v8 size]== 1)
        {
          v85 = 0;
          v42 = 4;
LABEL_48:
          v11 = v87;
          goto LABEL_52;
        }

        if ([(JavaUtilHashSet *)v8 size]== 2 && v87 >= 1 && v11 == v87)
        {
          v85 = 0;
          v42 = 4;
          goto LABEL_52;
        }
      }

      if (v40 < v31)
      {
        v85 = 0;
        v42 = 2;
        goto LABEL_48;
      }
    }

    else
    {
      v40 = 0x7FFFFFFF;
      infoCopy2 = infoCopy;
    }

    v11 = v87;
    v85 = v8 == 0;
    v42 = v12 >= 2 && OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v30 / v12) < v31;
  }

  else
  {
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    if (!iterable)
    {
      goto LABEL_124;
    }

    v22 = [iterable countByEnumeratingWithState:&v103 objects:v114 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v104;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = 0x8000000000000000;
      do
      {
        v27 = 0;
        v24 += v23;
        do
        {
          if (*v104 != v25)
          {
            objc_enumerationMutation(iterable);
          }

          v28 = *(*(&v103 + 1) + 8 * v27);
          if (!v28)
          {
            goto LABEL_124;
          }

          longLongValue2 = [v28 longLongValue];
          v14 = JavaLangMath_minWithLong_withLong_(v14, longLongValue2);
          v26 = JavaLangMath_maxWithLong_withLong_(v26, longLongValue2);
          v27 = v27 + 1;
        }

        while (v23 != v27);
        v23 = [iterable countByEnumeratingWithState:&v103 objects:v114 count:16];
      }

      while (v23);
    }

    else
    {
      v24 = 0;
      v14 = 0x7FFFFFFFFFFFFFFFLL;
      v26 = 0x8000000000000000;
    }

    obj = iterable;
    v30 = v26 - v14;
    v90 = OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v30);
    v8 = 0;
    v11 = 0;
    v12 = 0;
    v42 = 0;
    v85 = 1;
    v40 = 0x7FFFFFFF;
    infoCopy2 = info;
  }

LABEL_52:
  meta = self->meta_;
  if (!meta || !infoCopy2)
  {
    goto LABEL_124;
  }

  v88 = v40;
  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:infoCopy2[4]];
  selfCopy3 = self;
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:0];
  [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v42];
  if (!v11)
  {
    v45 = self->meta_;
    v46 = -1;
    goto LABEL_58;
  }

  if (v11 == v24)
  {
    selfCopy3 = self;
    v45 = self->meta_;
    v46 = -2;
LABEL_58:
    [(OrgApacheLuceneStoreDataOutput *)v45 writeLongWithLong:v46];
    goto LABEL_61;
  }

  selfCopy3 = self;
  data = self->data_;
  if (!data)
  {
    goto LABEL_124;
  }

  [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)data getFilePointer]];
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self writeMissingBitsetWithJavaLangIterable:obj];
LABEL_61:
  v48 = selfCopy3->data_;
  if (!v48)
  {
    goto LABEL_124;
  }

  [(OrgApacheLuceneStoreDataOutput *)selfCopy3->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)v48 getFilePointer]];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy3->meta_ writeVLongWithLong:v24];
  if (v42 > 1)
  {
    if (v42 == 2)
    {
      if (!v85)
      {
        v67 = [(JavaUtilAbstractCollection *)v8 toArrayWithNSObjectArray:[IOSObjectArray arrayWithLength:[(JavaUtilHashSet *)v8 size] type:JavaLangLong_class_()]];
        JavaUtilArrays_sortWithNSObjectArray_(v67);
        v68 = new_JavaUtilHashMap_init();
        selfCopy7 = self;
        if (v67)
        {
          v69 = v68;
          [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v67[2]];
          if (v67[2] < 1)
          {
LABEL_102:
            [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v88];
            InstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt = OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(self->data_, v24, v88);
            v91 = 0u;
            v92 = 0u;
            v93 = 0u;
            v94 = 0u;
            if (!obj)
            {
              goto LABEL_124;
            }

            v74 = InstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt;
            v75 = [obj countByEnumeratingWithState:&v91 objects:v111 count:16];
            if (v75)
            {
              v76 = v75;
              v77 = *v92;
              do
              {
                for (i = 0; i != v76; i = i + 1)
                {
                  if (*v92 != v77)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (!v74)
                  {
                    goto LABEL_124;
                  }

                  longLongValue3 = *(*(&v91 + 1) + 8 * i);
                  if (longLongValue3)
                  {
                    longLongValue3 = [longLongValue3 longLongValue];
                  }

                  v80 = [(JavaUtilHashMap *)v69 getWithId:JavaLangLong_valueOfWithLong_(longLongValue3)];
                  if (!v80)
                  {
                    goto LABEL_124;
                  }

                  -[OrgApacheLuceneUtilPackedDirectWriter addWithLong:](v74, "addWithLong:", [v80 intValue]);
                }

                v76 = [obj countByEnumeratingWithState:&v91 objects:v111 count:16];
              }

              while (v76);
            }

            else if (!v74)
            {
              goto LABEL_124;
            }

            [(OrgApacheLuceneUtilPackedDirectWriter *)v74 finish];
            goto LABEL_123;
          }

          v70 = 0;
          while (1)
          {
            v71 = *&v67[2 * v70 + 6];
            if (!v71)
            {
              break;
            }

            -[OrgApacheLuceneStoreDataOutput writeLongWithLong:](self->meta_, "writeLongWithLong:", [v71 longLongValue]);
            v72 = v67[2];
            if (v70 >= v72)
            {
              IOSArray_throwOutOfBoundsWithMsg(v72, v70);
            }

            [(JavaUtilHashMap *)v69 putWithId:*&v67[2 * v70 + 6] withId:JavaLangInteger_valueOfWithInt_(v70)];
            if (++v70 >= v67[2])
            {
              goto LABEL_102;
            }
          }
        }
      }

LABEL_124:
      JreThrowNullPointerException();
    }

    selfCopy7 = self;
    v58 = self->meta_;
    if (v14 < 0)
    {
      v59 = JavaUtilCollections_minWithJavaUtilCollection_(v8);
    }

    else
    {
      v59 = JavaUtilCollections_maxWithJavaUtilCollection_(v8);
    }

    -[OrgApacheLuceneStoreDataOutput writeLongWithLong:](v58, "writeLongWithLong:", [v59 longLongValue]);
  }

  else
  {
    if (v42)
    {
      selfCopy7 = self;
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v14];
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v12];
      v50 = OrgApacheLuceneUtilPackedDirectWriter_unsignedBitsRequiredWithLong_(v30 / v12);
      [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v50];
      v51 = OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(self->data_, v24, v50);
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v102 = 0u;
      if (obj)
      {
        v52 = v51;
        v53 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v100;
          do
          {
            for (j = 0; j != v54; j = j + 1)
            {
              if (*v100 != v55)
              {
                objc_enumerationMutation(obj);
              }

              longLongValue4 = *(*(&v99 + 1) + 8 * j);
              if (longLongValue4)
              {
                longLongValue4 = [longLongValue4 longLongValue];
              }

              if (!v52)
              {
                goto LABEL_124;
              }

              [(OrgApacheLuceneUtilPackedDirectWriter *)v52 addWithLong:(longLongValue4 - v14) / v12];
            }

            v54 = [obj countByEnumeratingWithState:&v99 objects:v113 count:16];
          }

          while (v54);
          goto LABEL_120;
        }

        if (v52)
        {
LABEL_120:
          [(OrgApacheLuceneUtilPackedDirectWriter *)v52 finish];
          goto LABEL_123;
        }
      }

      goto LABEL_124;
    }

    if (v30 < 0)
    {
      v14 = 0;
    }

    selfCopy7 = self;
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeLongWithLong:v14];
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:v90];
    v60 = OrgApacheLuceneUtilPackedDirectWriter_getInstanceWithOrgApacheLuceneStoreIndexOutput_withLong_withInt_(self->data_, v24, v90);
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    if (!obj)
    {
      goto LABEL_124;
    }

    v61 = v60;
    v62 = [obj countByEnumeratingWithState:&v95 objects:v112 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v96;
      do
      {
        for (k = 0; k != v63; k = k + 1)
        {
          if (*v96 != v64)
          {
            objc_enumerationMutation(obj);
          }

          longLongValue5 = *(*(&v95 + 1) + 8 * k);
          if (longLongValue5)
          {
            longLongValue5 = [longLongValue5 longLongValue];
          }

          if (!v61)
          {
            goto LABEL_124;
          }

          [(OrgApacheLuceneUtilPackedDirectWriter *)v61 addWithLong:&longLongValue5[-v14]];
        }

        v63 = [obj countByEnumeratingWithState:&v95 objects:v112 count:16];
      }

      while (v63);
    }

    else if (!v61)
    {
      goto LABEL_124;
    }

    [(OrgApacheLuceneUtilPackedDirectWriter *)v61 finish];
  }

LABEL_123:
  [(OrgApacheLuceneStoreDataOutput *)selfCopy7->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)selfCopy7->data_ getFilePointer]];
}

- (void)writeMissingBitsetWithJavaLangIterable:(id)iterable
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  if (!iterable)
  {
    goto LABEL_19;
  }

  v5 = [iterable countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    LOBYTE(v7) = 0;
    v8 = 0;
    v9 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(iterable);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if (v8 == 8)
        {
          data = self->data_;
          if (!data)
          {
            goto LABEL_19;
          }

          [(OrgApacheLuceneStoreIndexOutput *)data writeByteWithByte:v7, v16];
          LOBYTE(v7) = 0;
          v13 = 0;
        }

        else
        {
          v13 = v8;
        }

        v14 = 1 << (v13 & 7);
        if (!v11)
        {
          LOBYTE(v14) = 0;
        }

        v7 = (v14 | v7);
        v8 = v13 + 1;
      }

      v6 = [iterable countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
    if (v13 <= 0x7FFFFFFE)
    {
      v15 = self->data_;
      if (v15)
      {
        [(OrgApacheLuceneStoreIndexOutput *)v15 writeByteWithByte:v7];
        return;
      }

LABEL_19:
      JreThrowNullPointerException();
    }
  }
}

- (void)addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable
{
  meta = self->meta_;
  if (!meta)
  {
    goto LABEL_37;
  }

  if (!info)
  {
    goto LABEL_37;
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:1];
  data = self->data_;
  if (!data || (v8 = [(OrgApacheLuceneStoreIndexOutput *)data getFilePointer], v36 = 0u, v37 = 0u, v38 = 0u, v39 = 0u, !iterable))
  {
LABEL_37:
    JreThrowNullPointerException();
  }

  v29 = v8;
  selfCopy = self;
  v9 = [iterable countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = 0;
    v13 = *v37;
    v14 = 0x7FFFFFFFLL;
    v15 = 0x80000000;
    do
    {
      v30 = v11;
      iterableCopy = iterable;
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(iterableCopy);
        }

        v18 = *(*(&v36 + 1) + 8 * i);
        if (v18)
        {
          v19 = *(v18 + 20);
        }

        else
        {
          v19 = 0;
          ++v12;
        }

        v14 = JavaLangMath_minWithInt_withInt_(v14, v19);
        v15 = JavaLangMath_maxWithInt_withInt_(v15, v19);
        if (v18)
        {
          [(OrgApacheLuceneStoreIndexOutput *)selfCopy->data_ writeBytesWithByteArray:*(v18 + 8) withInt:*(v18 + 16) withInt:*(v18 + 20)];
        }
      }

      v11 = &v10[v30];
      iterable = iterableCopy;
      v10 = [iterableCopy countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v14 = 0x7FFFFFFFLL;
    v15 = 0x80000000;
  }

  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:v14 != v15];
  if (!v12)
  {
    v20 = selfCopy->meta_;
    v21 = -1;
    goto LABEL_23;
  }

  if (v12 == v11)
  {
    v20 = selfCopy->meta_;
    v21 = -2;
LABEL_23:
    [(OrgApacheLuceneStoreDataOutput *)v20 writeLongWithLong:v21];
    goto LABEL_25;
  }

  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)selfCopy->data_ getFilePointer]];
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)selfCopy writeMissingBitsetWithJavaLangIterable:iterable];
LABEL_25:
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:v14];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:v15];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVLongWithLong:v11];
  [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeLongWithLong:v29];
  if (v14 != v15)
  {
    [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeLongWithLong:[(OrgApacheLuceneStoreIndexOutput *)selfCopy->data_ getFilePointer]];
    [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:2];
    [(OrgApacheLuceneStoreDataOutput *)selfCopy->meta_ writeVIntWithInt:0x4000];
    v22 = new_OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter_initWithOrgApacheLuceneStoreDataOutput_withInt_(selfCopy->data_, 0x4000);
    [(OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *)v22 addWithLong:0];
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v23 = [iterable countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v33;
      do
      {
        for (j = 0; j != v24; j = j + 1)
        {
          if (*v33 != v26)
          {
            objc_enumerationMutation(iterable);
          }

          v28 = *(*(&v32 + 1) + 8 * j);
          if (v28)
          {
            v25 += *(v28 + 20);
          }

          [(OrgApacheLuceneUtilPackedMonotonicBlockPackedWriter *)v22 addWithLong:v25];
        }

        v24 = [iterable countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v24);
    }

    [(OrgApacheLuceneUtilPackedAbstractBlockPackedWriter *)v22 finish];
  }
}

- (void)addSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable
{
  meta = self->meta_;
  if (!meta || !info)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:2];
  sub_1000B2644(&self->super.super.isa, info, iterable);

  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:langIterable withBoolean:0];
}

- (void)addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable
{
  meta = self->meta_;
  if (!meta || !info)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:4];
  if (OrgApacheLuceneCodecsDocValuesConsumer_isSingleValuedWithJavaLangIterable_(iterable))
  {
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:1];
    v10 = OrgApacheLuceneCodecsDocValuesConsumer_singletonViewWithJavaLangIterable_withJavaLangIterable_withNSNumber_(iterable, langIterable, 0);

    [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v10];
  }

  else
  {
    v11 = sub_1000B31C8(iterable, langIterable);
    v12 = self->meta_;
    if (v11)
    {
      [(OrgApacheLuceneStoreDataOutput *)v12 writeVIntWithInt:2];
      sub_1000B33B8(self, v11);
      v13 = sub_1000B36FC(v11, iterable, langIterable);

      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v13 withBoolean:0];
    }

    else
    {
      [(OrgApacheLuceneStoreDataOutput *)v12 writeVIntWithInt:0];
      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:langIterable withBoolean:1];

      sub_1000B386C(self, info, iterable);
    }
  }
}

- (void)addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)info withJavaLangIterable:(id)iterable withJavaLangIterable:(id)langIterable withJavaLangIterable:(id)javaLangIterable
{
  meta = self->meta_;
  if (!meta || !info)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:*(info + 4)];
  [(OrgApacheLuceneStoreIndexOutput *)self->meta_ writeByteWithByte:3];
  if (OrgApacheLuceneCodecsDocValuesConsumer_isSingleValuedWithJavaLangIterable_(langIterable))
  {
    [(OrgApacheLuceneStoreDataOutput *)self->meta_ writeVIntWithInt:1];
    v12 = JavaLangLong_valueOfWithLong_(-1);
    v13 = OrgApacheLuceneCodecsDocValuesConsumer_singletonViewWithJavaLangIterable_withJavaLangIterable_withNSNumber_(langIterable, javaLangIterable, v12);

    [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addSortedFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:iterable withJavaLangIterable:v13];
  }

  else
  {
    v14 = sub_1000B31C8(langIterable, javaLangIterable);
    v15 = self->meta_;
    if (v14)
    {
      [(OrgApacheLuceneStoreDataOutput *)v15 writeVIntWithInt:2];
      sub_1000B33B8(self, v14);
      sub_1000B2644(&self->super.super.isa, info, iterable);
      v16 = sub_1000B36FC(v14, langIterable, javaLangIterable);

      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:v16 withBoolean:0];
    }

    else
    {
      [(OrgApacheLuceneStoreDataOutput *)v15 writeVIntWithInt:0];
      sub_1000B2644(&self->super.super.isa, info, iterable);
      [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:info withJavaLangIterable:javaLangIterable withBoolean:0];

      sub_1000B386C(self, info, langIterable);
    }
  }
}

- (void)close
{
  meta = self->meta_;
  if (meta)
  {
    [(OrgApacheLuceneStoreDataOutput *)meta writeVIntWithInt:0xFFFFFFFFLL];
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(self->meta_);
  }

  data = self->data_;
  if (data)
  {
    OrgApacheLuceneCodecsCodecUtil_writeFooterWithOrgApacheLuceneStoreIndexOutput_(data);
    v5 = self->data_;
  }

  else
  {
    v5 = 0;
  }

  v6 = self->meta_;
  v9[0] = v5;
  v9[1] = v6;
  v7 = [IOSObjectArray arrayWithObjects:v9 count:2 type:JavaIoCloseable_class_()];
  OrgApacheLuceneUtilIOUtils_closeWithJavaIoCloseableArray_(v7);
  v8 = JreStrongAssign(&self->data_, 0);
  JreStrongAssign(&self->meta_, v8);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer;
  [(OrgApacheLuceneCodecsLucene50Lucene50DocValuesConsumer *)&v3 dealloc];
}

@end