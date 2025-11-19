@interface OrgApacheLuceneCodecsDocValuesConsumer
- (void)mergeBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5 withJavaUtilList:(id)a6;
- (void)mergeNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5 withJavaUtilList:(id)a6;
- (void)mergeSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5;
- (void)mergeSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5;
- (void)mergeSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5;
- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)a3;
@end

@implementation OrgApacheLuceneCodecsDocValuesConsumer

- (void)mergeWithOrgApacheLuceneIndexMergeState:(id)a3
{
  if (!a3)
  {
    goto LABEL_135;
  }

  v4 = *(a3 + 6);
  if (!v4)
  {
    goto LABEL_135;
  }

  v5 = (v4 + 24);
  v6 = v4 + 24 + 8 * *(v4 + 8);
  while (v5 < v6)
  {
    v8 = *v5++;
    v7 = v8;
    if (v8)
    {
      [v7 checkIntegrity];
    }
  }

  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v9 = *(a3 + 2);
  if (!v9)
  {
LABEL_135:
    JreThrowNullPointerException();
  }

  obj = *(a3 + 2);
  v100 = [v9 countByEnumeratingWithState:&v101 objects:v105 count:16];
  if (v100)
  {
    v99 = *v102;
    do
    {
      for (i = 0; i != v100; i = i + 1)
      {
        if (*v102 != v99)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v101 + 1) + 8 * i);
        if (!v11)
        {
          goto LABEL_135;
        }

        v19 = [*(*(&v101 + 1) + 8 * i) getDocValuesType];
        if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
        {
          sub_10005B5A0();
        }

        if (v19 != OrgApacheLuceneIndexDocValuesTypeEnum_values_)
        {
          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10005B5A0();
          }

          if (v19 == qword_100557A78)
          {
            v98 = i;
            v34 = new_JavaUtilArrayList_init();
            v35 = new_JavaUtilArrayList_init();
            v36 = *(a3 + 6);
            if (!v36)
            {
              goto LABEL_135;
            }

            v37 = v35;
            v38 = 0;
            while (v38 < *(v36 + 8))
            {
              v39 = *(v36 + 24 + 8 * v38);
              if (!v39)
              {
                goto LABEL_63;
              }

              v40 = *(a3 + 7);
              if (!v40)
              {
                goto LABEL_135;
              }

              v41 = *(v40 + 8);
              if (v38 >= v41)
              {
                IOSArray_throwOutOfBoundsWithMsg(v41, v38);
              }

              v42 = *(v40 + 24 + 8 * v38);
              if (!v42)
              {
                goto LABEL_135;
              }

              v43 = [v42 fieldInfoWithNSString:*(v11 + 8)];
              if (!v43)
              {
                goto LABEL_63;
              }

              v44 = v43;
              v45 = [v43 getDocValuesType];
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (v45 != qword_100557A78 || (v48 = [v39 getNumericWithOrgApacheLuceneIndexFieldInfo:v44], v50 = objc_msgSend(v39, "getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:", v44), !v48))
              {
LABEL_63:
                v46 = OrgApacheLuceneIndexDocValues_emptyNumeric();
                v47 = *(a3 + 12);
                if (!v47)
                {
                  goto LABEL_135;
                }

                v48 = v46;
                v49 = *(v47 + 8);
                if (v38 >= v49)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v49, v38);
                }

                v50 = new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(*(v47 + 12 + 4 * v38));
              }

              v51 = v50;
              [(JavaUtilArrayList *)v34 addWithId:v48];
              [(JavaUtilArrayList *)v37 addWithId:v51];
              ++v38;
              v36 = *(a3 + 6);
              if (!v36)
              {
                goto LABEL_135;
              }
            }

            [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeNumericFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:a3 withJavaUtilList:v34 withJavaUtilList:v37];
LABEL_94:
            i = v98;
            continue;
          }

          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10005B5A0();
          }

          if (v19 == qword_100557A80)
          {
            v98 = i;
            v52 = new_JavaUtilArrayList_init();
            v53 = new_JavaUtilArrayList_init();
            v54 = *(a3 + 6);
            if (!v54)
            {
              goto LABEL_135;
            }

            v55 = v53;
            v56 = 0;
            while (v56 < *(v54 + 8))
            {
              v57 = *(v54 + 24 + 8 * v56);
              if (!v57)
              {
                goto LABEL_84;
              }

              v58 = *(a3 + 7);
              if (!v58)
              {
                goto LABEL_135;
              }

              v59 = *(v58 + 8);
              if (v56 >= v59)
              {
                IOSArray_throwOutOfBoundsWithMsg(v59, v56);
              }

              v60 = *(v58 + 24 + 8 * v56);
              if (!v60)
              {
                goto LABEL_135;
              }

              v61 = [v60 fieldInfoWithNSString:*(v11 + 8)];
              if (!v61)
              {
                goto LABEL_84;
              }

              v62 = v61;
              v63 = [v61 getDocValuesType];
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (v63 != qword_100557A80 || (v66 = [v57 getBinaryWithOrgApacheLuceneIndexFieldInfo:v62], v68 = objc_msgSend(v57, "getDocsWithFieldWithOrgApacheLuceneIndexFieldInfo:", v62), !v66))
              {
LABEL_84:
                v64 = OrgApacheLuceneIndexDocValues_emptyBinary();
                v65 = *(a3 + 12);
                if (!v65)
                {
                  goto LABEL_135;
                }

                v66 = v64;
                v67 = *(v65 + 8);
                if (v56 >= v67)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v67, v56);
                }

                v68 = new_OrgApacheLuceneUtilBits_MatchNoBits_initWithInt_(*(v65 + 12 + 4 * v56));
              }

              v69 = v68;
              [(JavaUtilArrayList *)v52 addWithId:v66];
              [(JavaUtilArrayList *)v55 addWithId:v69];
              ++v56;
              v54 = *(a3 + 6);
              if (!v54)
              {
                goto LABEL_135;
              }
            }

            [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeBinaryFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:a3 withJavaUtilList:v52 withJavaUtilList:v55];
            goto LABEL_94;
          }

          if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
          {
            sub_10005B5A0();
          }

          if (v19 == qword_100557A88)
          {
            v70 = new_JavaUtilArrayList_init();
            v71 = *(a3 + 6);
            if (!v71)
            {
              goto LABEL_135;
            }

            v72 = v70;
            v73 = 0;
            while (v73 < *(v71 + 8))
            {
              v74 = *(v71 + 24 + 8 * v73);
              if (!v74)
              {
                goto LABEL_106;
              }

              v75 = *(a3 + 7);
              if (!v75)
              {
                goto LABEL_135;
              }

              v76 = *(v75 + 8);
              if (v73 >= v76)
              {
                IOSArray_throwOutOfBoundsWithMsg(v76, v73);
              }

              v77 = *(v75 + 24 + 8 * v73);
              if (!v77)
              {
                goto LABEL_135;
              }

              v78 = [v77 fieldInfoWithNSString:*(v11 + 8)];
              if (!v78)
              {
                goto LABEL_106;
              }

              v79 = v78;
              v80 = [v78 getDocValuesType];
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (v80 != qword_100557A88 || (v81 = [v74 getSortedWithOrgApacheLuceneIndexFieldInfo:v79]) == 0)
              {
LABEL_106:
                v81 = OrgApacheLuceneIndexDocValues_emptySorted();
              }

              [(JavaUtilArrayList *)v72 addWithId:v81];
              ++v73;
              v71 = *(a3 + 6);
              if (!v71)
              {
                goto LABEL_135;
              }
            }

            [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeSortedFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:a3 withJavaUtilList:v72];
          }

          else
          {
            if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
            {
              sub_10005B5A0();
            }

            if (v19 == qword_100557A98)
            {
              v82 = new_JavaUtilArrayList_init();
              v83 = *(a3 + 6);
              if (!v83)
              {
                goto LABEL_135;
              }

              v84 = v82;
              v85 = 0;
              while (v85 < *(v83 + 8))
              {
                v86 = *(v83 + 24 + 8 * v85);
                if (!v86)
                {
                  goto LABEL_125;
                }

                v87 = *(a3 + 7);
                if (!v87)
                {
                  goto LABEL_135;
                }

                v88 = *(v87 + 8);
                if (v85 >= v88)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v88, v85);
                }

                v89 = *(v87 + 24 + 8 * v85);
                if (!v89)
                {
                  goto LABEL_135;
                }

                v90 = [v89 fieldInfoWithNSString:*(v11 + 8)];
                if (!v90)
                {
                  goto LABEL_125;
                }

                v91 = v90;
                v92 = [v90 getDocValuesType];
                if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
                {
                  sub_10005B5A0();
                }

                if (v92 != qword_100557A98 || (v93 = [v86 getSortedSetWithOrgApacheLuceneIndexFieldInfo:v91]) == 0)
                {
LABEL_125:
                  v93 = OrgApacheLuceneIndexDocValues_emptySortedSet();
                }

                [(JavaUtilArrayList *)v84 addWithId:v93];
                ++v85;
                v83 = *(a3 + 6);
                if (!v83)
                {
                  goto LABEL_135;
                }
              }

              [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:a3 withJavaUtilList:v84];
            }

            else
            {
              if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
              {
                sub_10005B5A0();
              }

              if (v19 != qword_100557A90)
              {
                v94 = JreStrcat("$@", v12, v13, v14, v15, v16, v17, v18, @"type=");
                v95 = new_JavaLangAssertionError_initWithId_(v94);
                objc_exception_throw(v95);
              }

              v20 = new_JavaUtilArrayList_init();
              v21 = *(a3 + 6);
              if (!v21)
              {
                goto LABEL_135;
              }

              v22 = v20;
              v23 = 0;
              while (v23 < *(v21 + 8))
              {
                v24 = *(v21 + 24 + 8 * v23);
                if (!v24)
                {
                  goto LABEL_43;
                }

                v25 = *(a3 + 7);
                if (!v25)
                {
                  goto LABEL_135;
                }

                v26 = *(v25 + 8);
                if (v23 >= v26)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v26, v23);
                }

                v27 = *(v25 + 24 + 8 * v23);
                if (!v27)
                {
                  goto LABEL_135;
                }

                v28 = [v27 fieldInfoWithNSString:*(v11 + 8)];
                if (!v28)
                {
                  goto LABEL_43;
                }

                v29 = v28;
                v30 = [v28 getDocValuesType];
                if ((atomic_load_explicit(OrgApacheLuceneIndexDocValuesTypeEnum__initialized, memory_order_acquire) & 1) == 0)
                {
                  sub_10005B5A0();
                }

                if (v30 != qword_100557A90 || (v33 = [v24 getSortedNumericWithOrgApacheLuceneIndexFieldInfo:v29]) == 0)
                {
LABEL_43:
                  v31 = *(a3 + 12);
                  if (!v31)
                  {
                    goto LABEL_135;
                  }

                  v32 = *(v31 + 8);
                  if (v23 >= v32)
                  {
                    IOSArray_throwOutOfBoundsWithMsg(v32, v23);
                  }

                  v33 = OrgApacheLuceneIndexDocValues_emptySortedNumericWithInt_(*(v31 + 12 + 4 * v23));
                }

                [(JavaUtilArrayList *)v22 addWithId:v33];
                ++v23;
                v21 = *(a3 + 6);
                if (!v21)
                {
                  goto LABEL_135;
                }
              }

              [(OrgApacheLuceneCodecsDocValuesConsumer *)self mergeSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:v11 withOrgApacheLuceneIndexMergeState:a3 withJavaUtilList:v22];
            }
          }
        }
      }

      v100 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
    }

    while (v100);
  }
}

- (void)mergeNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5 withJavaUtilList:(id)a6
{
  v11 = [OrgApacheLuceneCodecsDocValuesConsumer__1 alloc];
  JreStrongAssign(&v11->val$toMerge_, a5);
  JreStrongAssign(&v11->val$docsWithField_, a6);
  JreStrongAssign(&v11->val$mergeState_, a4);
  v12 = v11;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addNumericFieldWithOrgApacheLuceneIndexFieldInfo:a3 withJavaLangIterable:v12];
}

- (void)mergeBinaryFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5 withJavaUtilList:(id)a6
{
  v11 = [OrgApacheLuceneCodecsDocValuesConsumer__2 alloc];
  JreStrongAssign(&v11->val$toMerge_, a5);
  JreStrongAssign(&v11->val$docsWithField_, a6);
  JreStrongAssign(&v11->val$mergeState_, a4);
  v12 = v11;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addBinaryFieldWithOrgApacheLuceneIndexFieldInfo:a3 withJavaLangIterable:v12];
}

- (void)mergeSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5
{
  if (!a5)
  {
    JreThrowNullPointerException();
  }

  v9 = [a5 size];
  v10 = [a5 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v9, OrgApacheLuceneIndexSortedNumericDocValues_class_())}];
  v11 = [OrgApacheLuceneCodecsDocValuesConsumer__3 alloc];
  v11->val$numReaders_ = v9;
  JreStrongAssign(&v11->val$mergeState_, a4);
  JreStrongAssign(&v11->val$dvs_, v10);
  v12 = v11;
  v13 = [OrgApacheLuceneCodecsDocValuesConsumer__4 alloc];
  v13->val$numReaders_ = v9;
  JreStrongAssign(&v13->val$dvs_, v10);
  JreStrongAssign(&v13->val$mergeState_, a4);
  v14 = v13;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addSortedNumericFieldWithOrgApacheLuceneIndexFieldInfo:a3 withJavaLangIterable:v12 withJavaLangIterable:v14];
}

- (void)mergeSortedFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5
{
  if (!a5)
  {
    goto LABEL_32;
  }

  v9 = [a5 size];
  v10 = [a5 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", v9, OrgApacheLuceneIndexSortedDocValues_class_())}];
  if (!v10)
  {
    goto LABEL_32;
  }

  v11 = v10;
  v33 = self;
  v34 = a3;
  v36 = [IOSObjectArray arrayWithLength:v10[2] type:OrgApacheLuceneIndexTermsEnum_class_()];
  v12 = [IOSLongArray arrayWithLength:v36->super.size_];
  v35 = v9;
  if (v9 >= 1)
  {
    v13 = 0;
    while (1)
    {
      v14 = v11[2];
      if (v13 >= v14)
      {
        IOSArray_throwOutOfBoundsWithMsg(v14, v13);
      }

      if (!a4)
      {
        break;
      }

      v15 = *(a4 + 8);
      if (!v15)
      {
        break;
      }

      v16 = *&v11[2 * v13 + 6];
      v17 = *(v15 + 8);
      if (v13 >= v17)
      {
        IOSArray_throwOutOfBoundsWithMsg(v17, v13);
      }

      v18 = *(a4 + 12);
      if (!v18)
      {
        break;
      }

      v19 = *(v15 + 24 + 8 * v13);
      v20 = *(v18 + 8);
      if (v13 >= v20)
      {
        IOSArray_throwOutOfBoundsWithMsg(v20, v13);
      }

      if (v19)
      {
        if (!v16)
        {
          break;
        }

        v21 = *(v18 + 12 + 4 * v13);
        v22 = new_OrgApacheLuceneUtilLongBitSet_initWithLong_([*&v11[2 * v13 + 6] getValueCount]);
        if (v21 >= 1)
        {
          v23 = 0;
          do
          {
            if ([v19 getWithInt:v23])
            {
              v24 = [v16 getOrdWithInt:v23];
              if ((v24 & 0x80000000) == 0)
              {
                [(OrgApacheLuceneUtilLongBitSet *)v22 setWithLong:v24];
              }
            }

            v23 = (v23 + 1);
          }

          while (v21 != v23);
        }

        v25 = new_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_([v16 termsEnum], v22);
        IOSObjectArray_SetAndConsume(v36, v13, v25);
        v26 = [(OrgApacheLuceneUtilLongBitSet *)v22 cardinality];
        size = v12->super.size_;
        if (v13 >= size)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (!v16)
        {
          break;
        }

        IOSObjectArray_Set(v36, v13, [*&v11[2 * v13 + 6] termsEnum]);
        v26 = [v16 getValueCount];
        size = v12->super.size_;
        if (v13 >= size)
        {
LABEL_28:
          IOSArray_throwOutOfBoundsWithMsg(size, v13);
        }
      }

      v12->buffer_[v13++] = v26;
      if (v13 == v35)
      {
        goto LABEL_29;
      }
    }

LABEL_32:
    JreThrowNullPointerException();
  }

LABEL_29:
  v28 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(v33, v36, v12, 0.0);
  v29 = [OrgApacheLuceneCodecsDocValuesConsumer__5 alloc];
  JreStrongAssign(&v29->val$map_, v28);
  JreStrongAssign(&v29->val$dvs_, v11);
  v30 = v29;
  v31 = [OrgApacheLuceneCodecsDocValuesConsumer__6 alloc];
  v31->val$numReaders_ = v35;
  JreStrongAssign(&v31->val$map_, v28);
  JreStrongAssign(&v31->val$mergeState_, a4);
  JreStrongAssign(&v31->val$dvs_, v11);
  v32 = v31;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)v33 addSortedFieldWithOrgApacheLuceneIndexFieldInfo:v34 withJavaLangIterable:v30 withJavaLangIterable:v32];
}

- (void)mergeSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:(id)a3 withOrgApacheLuceneIndexMergeState:(id)a4 withJavaUtilList:(id)a5
{
  if (!a5)
  {
    goto LABEL_33;
  }

  v7 = [a5 toArrayWithNSObjectArray:{+[IOSObjectArray arrayWithLength:type:](IOSObjectArray, "arrayWithLength:type:", objc_msgSend(a5, "size"), OrgApacheLuceneIndexSortedSetDocValues_class_())}];
  if (!a4)
  {
    goto LABEL_33;
  }

  v8 = *(a4 + 12);
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = v7;
  if (!v7)
  {
    goto LABEL_33;
  }

  v41 = a3;
  v10 = &OBJC_IVAR___IOSArray_size_;
  v40 = *(v8 + 8);
  v11 = [IOSObjectArray arrayWithLength:v7[2] type:OrgApacheLuceneIndexTermsEnum_class_()];
  v12 = [IOSLongArray arrayWithLength:v11->super.size_];
  v13 = 8;
  if (v11->super.size_ >= 1)
  {
    v14 = 0;
    v43 = v9;
    while (1)
    {
      v15 = *(v9 + v13);
      if (v14 >= v15)
      {
        IOSArray_throwOutOfBoundsWithMsg(v15, v14);
      }

      v16 = *(a4 + 8);
      if (!v16)
      {
        break;
      }

      v17 = v9[v14 + 3];
      v18 = *v10;
      v19 = *(v16 + v18);
      if (v14 >= v19)
      {
        IOSArray_throwOutOfBoundsWithMsg(v19, v14);
      }

      v20 = *(v16 + 24 + 8 * v14);
      v21 = *(a4 + 12);
      v22 = *(v21 + v18);
      if (v14 >= v22)
      {
        IOSArray_throwOutOfBoundsWithMsg(v22, v14);
      }

      if (v20)
      {
        if (!v17)
        {
          break;
        }

        v23 = a4;
        v24 = v10;
        v25 = *(v21 + 12 + 4 * v14);
        v26 = new_OrgApacheLuceneUtilLongBitSet_initWithLong_([v17 getValueCount]);
        if (v25 >= 1)
        {
          v27 = 0;
          do
          {
            if ([v20 getWithInt:v27])
            {
              [v17 setDocumentWithInt:v27];
              v28 = [v17 nextOrd];
              if (v28 != -1)
              {
                for (i = v28; i != -1; i = [v17 nextOrd])
                {
                  [(OrgApacheLuceneUtilLongBitSet *)v26 setWithLong:i];
                }
              }
            }

            v27 = (v27 + 1);
          }

          while (v27 != v25);
        }

        v30 = new_OrgApacheLuceneCodecsDocValuesConsumer_BitsFilteredTermsEnum_initWithOrgApacheLuceneIndexTermsEnum_withOrgApacheLuceneUtilLongBitSet_([v17 termsEnum], v26);
        IOSObjectArray_SetAndConsume(v11, v14, v30);
        v31 = [(OrgApacheLuceneUtilLongBitSet *)v26 cardinality];
        v10 = v24;
        v32 = *(&v12->super.super.isa + *v24);
        if (v14 >= v32)
        {
          goto LABEL_29;
        }

        a4 = v23;
        v9 = v43;
      }

      else
      {
        if (!v17)
        {
          break;
        }

        IOSObjectArray_Set(v11, v14, [v9[v14 + 3] termsEnum]);
        v31 = [v17 getValueCount];
        v32 = *(&v12->super.super.isa + *v10);
        if (v14 >= v32)
        {
LABEL_29:
          IOSArray_throwOutOfBoundsWithMsg(v32, v14);
        }
      }

      v12->buffer_[v14++] = v31;
      v13 = *v10;
      if (v14 >= *(&v11->super.super.isa + v13))
      {
        goto LABEL_30;
      }
    }

LABEL_33:
    JreThrowNullPointerException();
  }

LABEL_30:
  v33 = OrgApacheLuceneIndexMultiDocValues_OrdinalMap_buildWithId_withOrgApacheLuceneIndexTermsEnumArray_withLongArray_withFloat_(self, v11, v12, 0.0);
  v34 = [OrgApacheLuceneCodecsDocValuesConsumer__7 alloc];
  JreStrongAssign(&v34->val$map_, v33);
  JreStrongAssign(&v34->val$dvs_, v9);
  v35 = v34;
  v36 = [OrgApacheLuceneCodecsDocValuesConsumer__8 alloc];
  v36->val$numReaders_ = v40;
  JreStrongAssign(&v36->val$mergeState_, a4);
  JreStrongAssign(&v36->val$dvs_, v9);
  v37 = v36;
  v38 = [OrgApacheLuceneCodecsDocValuesConsumer__9 alloc];
  v38->val$numReaders_ = v40;
  JreStrongAssign(&v38->val$map_, v33);
  JreStrongAssign(&v38->val$mergeState_, a4);
  JreStrongAssign(&v38->val$dvs_, v9);
  v39 = v38;

  [(OrgApacheLuceneCodecsDocValuesConsumer *)self addSortedSetFieldWithOrgApacheLuceneIndexFieldInfo:v41 withJavaLangIterable:v35 withJavaLangIterable:v37 withJavaLangIterable:v39];
}

@end