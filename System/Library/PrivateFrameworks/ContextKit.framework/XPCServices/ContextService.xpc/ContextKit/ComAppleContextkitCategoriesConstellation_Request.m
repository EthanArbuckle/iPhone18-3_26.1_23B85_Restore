@interface ComAppleContextkitCategoriesConstellation_Request
- (BOOL)hasEntriesForQIDWithNSString:(id)a3;
- (id)newQIDContainer;
- (id)trimMatches;
- (int)highlevelThemeForCategoryIdWithInt:(int)a3;
- (void)dealloc;
- (void)prepareItemsWithComAppleContextkitCategoriesConstellation_Request_QIDCountPQ:(id)a3;
- (void)subtractAncestorCounts;
- (void)trimCounts;
@end

@implementation ComAppleContextkitCategoriesConstellation_Request

- (id)newQIDContainer
{
  v2 = new_ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ_initWithComAppleContextkitCategoriesConstellation_Request_withInt_(self, self->maxQids_);

  return v2;
}

- (BOOL)hasEntriesForQIDWithNSString:(id)a3
{
  qidToCategoryIdTreasureMap = self->this$0_->qidToCategoryIdTreasureMap_;
  if (!qidToCategoryIdTreasureMap)
  {
    JreThrowNullPointerException();
  }

  v4 = [(ComAppleContextkitCategoriesQIDCategoryProvider *)qidToCategoryIdTreasureMap categoryIdsForQIDWithNSString:a3];
  if (v4)
  {
    LOBYTE(v4) = [v4 isEmpty] ^ 1;
  }

  return v4;
}

- (void)prepareItemsWithComAppleContextkitCategoriesConstellation_Request_QIDCountPQ:(id)a3
{
  if (!a3)
  {
    goto LABEL_27;
  }

  v5 = [a3 size];
  if (qword_100554430 != -1)
  {
    sub_1000C2D84();
  }

  JreStrongAssignAndConsume(&self->seenQids_, [IOSObjectArray newArrayWithLength:v5 type:qword_100554428]);
  size = self->seenQids_->super.size_;
  v7 = [ComAppleContextkitCategoriesConstellation_Request_QIDCountPQ popAllCountsFromArray]_0(a3);
  if (!v7)
  {
LABEL_27:
    JreThrowNullPointerException();
  }

  p_elementType = &v7->elementType_;
  v32 = &(&v7->elementType_)[v7->super.size_];
  if (&v7->elementType_ < v32)
  {
    v9 = &OBJC_IVAR___IOSIntArray_buffer_;
    p_superclass = (OrgApacheLuceneStoreByteArrayDataInput + 8);
    do
    {
      v11 = objc_autoreleasePoolPush();
      v13 = *p_elementType++;
      v12 = v13;
      if (v13)
      {
        v14 = size - 1;
        IOSObjectArray_Set(self->seenQids_, v14, v12);
        v15 = *(v12 + 8);
        v16 = *(v12 + 16);
        v17 = [(ComAppleContextkitCategoriesConstellation *)self->this$0_ qidToCategoryIdWithNSString:v15];
        v18 = new_JavaUtilHashSet_init();
        if (!v17)
        {
          goto LABEL_27;
        }

        v33 = v11;
        v34 = v14;
        v35 = p_elementType;
        v19 = (v17 + *v9);
        v20 = &v19[v17[2]];
        if (v19 < v20)
        {
          v21 = v18;
          do
          {
            v23 = *v19++;
            v22 = v23;
            if (v23 < self->this$0_->maxCategoryIdExcl_)
            {
              seenOrder = self->seenOrder_;
              if (!seenOrder)
              {
                goto LABEL_27;
              }

              v25 = seenOrder->super.size_;
              if ((v22 & 0x80000000) != 0 || v22 >= v25)
              {
                IOSArray_throwOutOfBoundsWithMsg(v25, v22);
              }

              v26 = *v9;
              if (!*(&seenOrder->super.super.isa + 4 * v22 + v26))
              {
                v27 = v9;
                v28 = self->seenCounter_ + 1;
                self->seenCounter_ = v28;
                v29 = self->seenOrder_;
                v30 = v29->super.size_;
                if ((v22 & 0x80000000) != 0 || v22 >= v30)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v30, v22);
                }

                *(&v29->super.super.isa + 4 * v22 + v26) = v28;
                v9 = v27;
                p_superclass = OrgApacheLuceneStoreByteArrayDataInput.superclass;
              }

              sub_1000BFD30(self, v22, v16, v21);
              v31 = objc_alloc((p_superclass + 229));
              JreStrongAssign(v31 + 1, self);
              *(v31 + 4) = v16;
              JreStrongAssign(v31 + 3, v21);
              [(ComAppleContextkitCategoriesConstellation_Request *)self iterateAncestorsForCategoryIdWithInt:v22 withComAppleContextkitCategoriesConstellation_AncestorConsumer:v31];
            }
          }

          while (v19 < v20);
        }

        size = v34;
        p_elementType = v35;
        v11 = v33;
      }

      objc_autoreleasePoolPop(v11);
    }

    while (p_elementType < v32);
  }
}

- (void)trimCounts
{
  seenQids = self->seenQids_;
  if (!seenQids)
  {
    goto LABEL_17;
  }

  size = seenQids->super.size_;
  v5 = JavaLangMath_minWithInt_withInt_(self->minQidCount_, size);
  v6 = JavaLangMath_minWithInt_withInt_(self->minWeight_, size);
  if (self->this$0_->maxCategoryIdExcl_ >= 1)
  {
    v7 = v6;
    v8 = 0;
    while (1)
    {
      qidCounts = self->qidCounts_;
      if (!qidCounts)
      {
        break;
      }

      v10 = qidCounts->super.size_;
      if (v8 >= v10)
      {
        IOSArray_throwOutOfBoundsWithMsg(v10, v8);
      }

      if (*(&qidCounts->super.size_ + v8 + 1) < v5)
      {
        goto LABEL_11;
      }

      qidWeights = self->qidWeights_;
      if (!qidWeights)
      {
        break;
      }

      v12 = qidWeights->super.size_;
      if (v8 >= v12)
      {
        IOSArray_throwOutOfBoundsWithMsg(v12, v8);
      }

      if (*(&qidWeights->super.size_ + v8 + 1) < v7 || [(ComAppleContextkitCategoriesConstellation *)self->this$0_ isIgnoredCategoryWithInt:v8])
      {
LABEL_11:
        sub_1000C0114(self, v8);
      }

      if (++v8 >= self->this$0_->maxCategoryIdExcl_)
      {
        return;
      }
    }

LABEL_17:
    JreThrowNullPointerException();
  }
}

- (int)highlevelThemeForCategoryIdWithInt:(int)a3
{
  v5 = sub_1000C01E4(self, a3);
  if (!v5)
  {
    return a3;
  }

  if (!self->in_)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)self->in_ seekWithLong:v5];
  in = self->in_;

  return [(OrgApacheLuceneStoreDataInput *)in readInt];
}

- (void)subtractAncestorCounts
{
  v3 = objc_autoreleasePoolPush();
  v4 = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(0);
  v5 = new_JavaUtilConcurrentAtomicAtomicBoolean_initWithBoolean_(0);
  qidCounts = self->qidCounts_;
  if (!qidCounts)
  {
LABEL_17:
    JreThrowNullPointerException();
  }

  v7 = v5;
  context = v3;
  size = qidCounts->super.size_;
  v9 = (size - 1);
  if (size - 1 >= 0)
  {
    do
    {
      if (![(ComAppleContextkitCategoriesConstellation *)self->this$0_ isIgnoredCategoryWithInt:v9])
      {
        v10 = self->qidCounts_;
        v11 = v10->super.size_;
        if (v9 >= v11)
        {
          IOSArray_throwOutOfBoundsWithMsg(v11, v9);
        }

        qidWeights = self->qidWeights_;
        if (!qidWeights)
        {
          goto LABEL_17;
        }

        v13 = *(&v10->super.size_ + v9 + 1);
        v14 = qidWeights->super.size_;
        if (v9 >= v14)
        {
          IOSArray_throwOutOfBoundsWithMsg(v14, v9);
        }

        v15 = *(&qidWeights->super.size_ + v9 + 1);
        if (v13 | v15)
        {
          v16 = [ComAppleContextkitCategoriesConstellation_Request__2 alloc];
          JreStrongAssign(&v16->this$0_, self);
          v16->val$count_ = v13;
          v16->val$weight_ = v15;
          JreStrongAssign(&v16->val$hasModifications_, v7);
          JreStrongAssign(&v16->val$numNonZeroesTouched_, v4);
          [(ComAppleContextkitCategoriesConstellation_Request *)self iterateAncestorsForCategoryIdWithInt:v9 withComAppleContextkitCategoriesConstellation_AncestorConsumer:v16];
        }
      }
    }

    while (v9-- > 0);
  }

  [(JavaUtilConcurrentAtomicAtomicBoolean *)v7 get];

  objc_autoreleasePoolPop(context);
}

- (id)trimMatches
{
  seenQids = self->seenQids_;
  if (!seenQids)
  {
    goto LABEL_87;
  }

  v3 = self;
  size = seenQids->super.size_;
  v85 = JavaLangMath_minWithInt_withInt_(self->minQidCount_, size);
  v88 = JavaLangMath_minWithInt_withInt_(v3->minWeight_, size);
  v5 = new_JavaUtilHashMap_init();
  v6 = [(ComAppleContextkitCategoriesConstellation_Request *)v3 getTopKCategoriesWithInt:v3->maxCategoriesFirstRun_];
  if (!v6)
  {
    goto LABEL_87;
  }

  v7 = v6;
  v8 = (v6 + 24);
  v9 = &v6[8 * *(v6 + 2) + 24];
  if ((v6 + 24) < v9)
  {
    v10 = 0;
    do
    {
      v11 = *v8;
      if (!*v8)
      {
        goto LABEL_87;
      }

      ++v8;
      v12 = JavaLangInteger_valueOfWithInt_(*(v11 + 8));
      [(JavaUtilHashMap *)v5 putWithId:v12 withId:JavaLangInteger_valueOfWithInt_(v10++)];
    }

    while (v8 < v9);
  }

  v91 = v7;
  v13 = new_JavaUtilLinkedHashMap_init();
  v14 = [ComAppleContextkitCategoriesConstellation_Request__3 alloc];
  v94 = v5;
  JreStrongAssign(&v14->val$categoryIdToRank_, v5);
  v80 = v14;
  v89 = new_JavaUtilHashMap_init();
  v15 = v3->seenQids_;
  p_elementType = &v15->elementType_;
  v95 = &(&v15->elementType_)[v15->super.size_];
  v97 = v3;
  if (&v15->elementType_ < v95)
  {
    do
    {
      v18 = *p_elementType++;
      v17 = v18;
      if (!v18)
      {
        goto LABEL_87;
      }

      v19 = *(v17 + 8);
      v20 = [(ComAppleContextkitCategoriesConstellation *)v3->this$0_ qidToCategoryIdWithNSString:v19, v80];
      v21 = v5;
      if (v20)
      {
        v22 = v20;
        [(JavaUtilHashMap *)v89 putWithId:v19 withId:JavaLangInteger_valueOfWithInt_(*(v17 + 16))];
        v23 = (v22 + 12);
        v24 = &v22[4 * *(v22 + 2) + 12];
        while (v23 < v24)
        {
          v26 = *v23++;
          v25 = v26;
          if ([(JavaUtilHashMap *)v21 containsKeyWithId:JavaLangInteger_valueOfWithInt_(v26)])
          {
            sub_1000C0C88(v13, v19, v25);
          }

          v27 = [ComAppleContextkitCategoriesConstellation_Request__4 alloc];
          v21 = v5;
          sub_1000B0CF4(&v27->super.isa, v97, v5, v13, v19);
          [(ComAppleContextkitCategoriesConstellation_Request *)v97 iterateAncestorsForCategoryIdWithInt:v25 withComAppleContextkitCategoriesConstellation_AncestorConsumer:v27];
        }
      }

      v3 = v97;
    }

    while (p_elementType < v95);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v28 = [(JavaUtilHashMap *)v13 entrySet];
  if (!v28)
  {
LABEL_87:
    JreThrowNullPointerException();
  }

  obj = v28;
  v29 = v91;
  v83 = [v28 countByEnumeratingWithState:&v106 objects:v112 count:16];
  if (!v83)
  {
    goto LABEL_77;
  }

  v84 = *v107;
  do
  {
    v30 = 0;
    do
    {
      if (*v107 != v84)
      {
        objc_enumerationMutation(obj);
      }

      v31 = *(*(&v106 + 1) + 8 * v30);
      v32 = objc_autoreleasePoolPush();
      if (!v31)
      {
        goto LABEL_87;
      }

      v33 = v32;
      v90 = [v31 getKey];
      v34 = [v31 getValue];
      if (!v34)
      {
        goto LABEL_87;
      }

      v35 = v34;
      context = v33;
      v87 = v30;
      if (([v34 isEmpty] & 1) == 0)
      {
        v36 = new_JavaUtilTreeSet_initWithJavaUtilComparator_(v81);
        [(JavaUtilTreeSet *)v36 addAllWithJavaUtilCollection:v35];
        v37 = new_JavaUtilHashMap_init();
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v93 = v36;
        v38 = [(JavaUtilTreeSet *)v36 countByEnumeratingWithState:&v102 objects:v111 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = 0;
          v41 = 0;
          v42 = 0;
          v43 = 0;
          v96 = *v103;
          v92 = v37;
          do
          {
            for (i = 0; i != v39; i = i + 1)
            {
              if (*v103 != v96)
              {
                objc_enumerationMutation(v93);
              }

              v45 = *(*(&v102 + 1) + 8 * i);
              if (!v45)
              {
                goto LABEL_87;
              }

              v46 = [v45 intValue];
              v47 = [(ComAppleContextkitCategoriesConstellation_Request *)v97 highlevelThemeForCategoryIdWithInt:v46];
              if (v47)
              {
                v48 = v47;
                if (!v43)
                {
                  if (v47 == v46)
                  {
                    v43 = 0;
                  }

                  else
                  {
                    v43 = JavaLangInteger_valueOfWithInt_(v46);
                  }
                }

                v49 = v43;
                v50 = [(JavaUtilHashMap *)v37 getWithId:JavaLangInteger_valueOfWithInt_(v48)];
                if (v50)
                {
                  v51 = v50;
                }

                else
                {
                  v52 = v37;
                  v51 = new_JavaUtilConcurrentAtomicAtomicInteger_initWithInt_(0);
                  [(JavaUtilHashMap *)v52 putWithId:JavaLangInteger_valueOfWithInt_(v48) withId:v51];
                  if (!v51)
                  {
                    goto LABEL_87;
                  }
                }

                v53 = [(JavaUtilConcurrentAtomicAtomicInteger *)v51 incrementAndGet];
                if (v53 > v42)
                {
                  v41 = v48;
                  v42 = v53;
                }

                if (v46 <= v40)
                {
                  v54 = v40;
                }

                else
                {
                  v54 = v46;
                }

                if (v48 == v41)
                {
                  v40 = v54;
                }

                v37 = v92;
                v43 = v49;
              }
            }

            v39 = [(JavaUtilTreeSet *)v93 countByEnumeratingWithState:&v102 objects:v111 count:16];
          }

          while (v39);
          v29 = v91;
          if (!v43)
          {
LABEL_52:
            v55 = [(JavaUtilTreeSet *)v93 iterator];
            if (!v55)
            {
              goto LABEL_87;
            }

            v43 = [v55 next];
          }

          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v56 = [(JavaUtilTreeSet *)v93 countByEnumeratingWithState:&v98 objects:v110 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v99;
            do
            {
              v59 = 0;
              do
              {
                if (*v99 != v58)
                {
                  objc_enumerationMutation(v93);
                }

                v60 = *(*(&v98 + 1) + 8 * v59);
                if (!v60)
                {
                  goto LABEL_87;
                }

                v61 = [v60 intValue];
                v62 = [(JavaUtilHashMap *)v94 getWithId:JavaLangInteger_valueOfWithInt_(v61)];
                if (!v62)
                {
                  goto LABEL_87;
                }

                v63 = [v62 intValue];
                v64 = *(v29 + 2);
                if (v63 < 0 || v63 >= v64)
                {
                  IOSArray_throwOutOfBoundsWithMsg(v64, v63);
                }

                if (!v43)
                {
                  goto LABEL_87;
                }

                v65 = *&v29[8 * v63 + 24];
                if (v61 == [(JavaLangInteger *)v43 intValue]|| v61 == v40)
                {
                  if (!v65)
                  {
                    goto LABEL_87;
                  }

                  sub_1000C0D14(v65, v90);
                }

                else
                {
                  if (!v65)
                  {
                    goto LABEL_87;
                  }

                  --*(v65 + 12);
                  v66 = [(JavaUtilHashMap *)v89 getWithId:v90];
                  if (!v66)
                  {
                    goto LABEL_87;
                  }

                  *(v65 + 16) -= [v66 intValue];
                }

                v59 = v59 + 1;
                v29 = v91;
              }

              while (v57 != v59);
              v67 = [(JavaUtilTreeSet *)v93 countByEnumeratingWithState:&v98 objects:v110 count:16];
              v57 = v67;
            }

            while (v67);
          }

          goto LABEL_75;
        }

        v40 = 0;
        goto LABEL_52;
      }

LABEL_75:
      objc_autoreleasePoolPop(context);
      v30 = v87 + 1;
      v3 = v97;
    }

    while ((v87 + 1) != v83);
    v83 = [obj countByEnumeratingWithState:&v106 objects:v112 count:16];
  }

  while (v83);
LABEL_77:
  v68 = sub_1000BFF80(v3, v3->maxCategories_);
  v69 = (v29 + 24);
  v70 = &v29[8 * *(v29 + 2) + 24];
  v71 = v85;
  if ((v29 + 24) < v70)
  {
    do
    {
      v73 = *v69++;
      v72 = v73;
      if (!v73)
      {
        goto LABEL_87;
      }

      if (*(v72 + 12) >= v71 && *(v72 + 16) >= v88)
      {
        [(OrgApacheLuceneUtilPriorityQueue *)v68 insertWithOverflowWithId:?];
        v71 = v85;
      }
    }

    while (v69 < v70);
  }

  v74 = [(ComAppleContextkitCategoriesConstellation_Request_CategoryCountPQ *)v68 toArray];
  if (!v74)
  {
    goto LABEL_87;
  }

  v75 = v74;
  v76 = v74 + 3;
  v77 = &v74[*(v74 + 2) + 3];
  while (v76 < v77)
  {
    v78 = *v76++;
    *(v78 + 24) = [(ComAppleContextkitCategoriesConstellation_Request *)v3 highlevelThemeForCategoryIdWithInt:*(v78 + 8)];
  }

  return v75;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_Request;
  [(ComAppleContextkitCategoriesConstellation_Request *)&v3 dealloc];
}

@end