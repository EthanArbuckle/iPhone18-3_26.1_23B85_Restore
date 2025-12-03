@interface ComAppleContextkitCategoriesConstellation
+ (void)initialize;
- (id)ancestorCategoriesForQIDs:(id)ds usingMapper:(id)mapper;
- (id)categoryIdsForQIDWithNSString:(id)string;
- (id)heightForQIDCategoryIdWithNSString:(id)string withInt:(int)int;
- (id)mainCategoryForQIDWithNSString:(id)string withComAppleContextkitCategoriesCatIdTitleMap:(id)map;
- (id)mainCategoryIdForQIDWithNSString:(id)string;
- (id)newGroupingRequest;
- (id)newQIDMapper;
- (id)newRequestWithMaxQids:(int)qids maxCategoriesFirstRun:(int)run maxCategories:(int)categories minQidCount:(int)count minWeight:(int)weight;
- (id)newTitleMapper;
- (id)qidToCategoryIdAndHeightWithNSString:(id)string;
- (id)qidToCategoryIdWithNSString:(id)string;
- (void)close;
- (void)dealloc;
- (void)sortUnsignedWithJavaUtilList:(id)list;
@end

@implementation ComAppleContextkitCategoriesConstellation

- (void)close
{
  inProto = self->inProto_;
  if (!inProto)
  {
    JreThrowNullPointerException();
  }

  [(OrgApacheLuceneStoreIndexInput *)inProto close];
}

- (id)newTitleMapper
{
  titleMapProto = self->titleMapProto_;
  if (!titleMapProto)
  {
    JreThrowNullPointerException();
  }

  return [(ComAppleContextkitCategoriesCatIdTitleMap *)titleMapProto clone];
}

- (id)newQIDMapper
{
  qidMapProto = self->qidMapProto_;
  if (!qidMapProto)
  {
    JreThrowNullPointerException();
  }

  return [(ComAppleContextkitCategoriesCatIdTitleMap *)qidMapProto clone];
}

- (id)categoryIdsForQIDWithNSString:(id)string
{
  qidToCategoryIdTreasureMap = self->qidToCategoryIdTreasureMap_;
  if (!qidToCategoryIdTreasureMap)
  {
    JreThrowNullPointerException();
  }

  return [(ComAppleContextkitCategoriesQIDCategoryProvider *)qidToCategoryIdTreasureMap categoryIdsForQIDWithNSString:string];
}

- (id)newRequestWithMaxQids:(int)qids maxCategoriesFirstRun:(int)run maxCategories:(int)categories minQidCount:(int)count minWeight:(int)weight
{
  v13 = [ComAppleContextkitCategoriesConstellation_Request alloc];
  sub_1000BF870(v13, self, qids, run, categories, count, weight);

  return v13;
}

- (id)qidToCategoryIdWithNSString:(id)string
{
  v3 = [(ComAppleContextkitCategoriesConstellation *)self categoryIdsForQIDWithNSString:string];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    v4 = new_JavaUtilArrayList_initWithJavaUtilCollection_(v4);
  }

  v6 = objc_autoreleasePoolPush();
  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(v4, qword_100554420);
  objc_autoreleasePoolPop(v6);
  v5 = [IOSIntArray arrayWithLength:[(JavaUtilArrayList *)v4 size]];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(JavaUtilArrayList *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        if (!v12)
        {
          JreThrowNullPointerException();
        }

        intValue = [v12 intValue];
        size = v5->super.size_;
        if ((v9 & 0x80000000) != 0 || v9 >= size)
        {
          IOSArray_throwOutOfBoundsWithMsg(size, v9);
        }

        *(&v5->super.size_ + v9 + 1) = intValue & 0xFFFFFFF;
        ++v11;
        v9 = (v9 + 1);
      }

      while (v8 != v11);
      v15 = [(JavaUtilArrayList *)v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v8 = v15;
    }

    while (v15);
  }

  return v5;
}

- (void)sortUnsignedWithJavaUtilList:(id)list
{
  v4 = objc_autoreleasePoolPush();
  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(list, qword_100554420);

  objc_autoreleasePoolPop(v4);
}

- (id)qidToCategoryIdAndHeightWithNSString:(id)string
{
  v5 = new_JavaUtilLinkedHashMap_init();
  v6 = [(ComAppleContextkitCategoriesConstellation *)self categoryIdsForQIDWithNSString:string];
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      JreThrowClassCastException();
    }
  }

  else
  {
    v7 = new_JavaUtilArrayList_initWithJavaUtilCollection_(v7);
  }

  v8 = objc_autoreleasePoolPush();
  JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(v7, qword_100554420);
  objc_autoreleasePoolPop(v8);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = [(JavaUtilArrayList *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if (!v13)
        {
          JreThrowNullPointerException();
        }

        v14 = [*(*(&v17 + 1) + 8 * i) intValue] >> 28;
        v15 = JavaLangInteger_valueOfWithInt_([v13 intValue] & 0xFFFFFFF);
        [(JavaUtilHashMap *)v5 putWithId:v15 withId:JavaLangInteger_valueOfWithInt_(v14)];
      }

      v10 = [(JavaUtilArrayList *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)heightForQIDCategoryIdWithNSString:(id)string withInt:(int)int
{
  result = [(ComAppleContextkitCategoriesConstellation *)self categoryIdsForQIDWithNSString:string];
  if (result)
  {
    v6 = result;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    result = [result countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (result)
    {
      v7 = result;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v11 + 1) + 8 * i);
          if (!v10)
          {
            JreThrowNullPointerException();
          }

          if (([*(*(&v11 + 1) + 8 * i) intValue] & 0xFFFFFFF) == int)
          {
            return JavaLangInteger_valueOfWithInt_([v10 intValue] >> 28);
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
        result = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (id)newGroupingRequest
{
  if (!self->newsTopicsEnabled_)
  {
    return 0;
  }

  newsTopicFile = self->newsTopicFile_;
  if (!newsTopicFile)
  {
    JreThrowNullPointerException();
  }

  clone = [(OrgApacheLuceneStoreIndexInput *)newsTopicFile clone];
  desiredLanguages = self->desiredLanguages_;
  v6 = [ComAppleContextkitCategoriesConstellation_GroupingRequest alloc];
  sub_1000C1C3C(v6, self, clone, desiredLanguages);

  return v6;
}

- (id)mainCategoryForQIDWithNSString:(id)string withComAppleContextkitCategoriesCatIdTitleMap:(id)map
{
  result = [(ComAppleContextkitCategoriesConstellation *)self mainCategoryIdForQIDWithNSString:string];
  if (result)
  {
    if (!map)
    {
      JreThrowNullPointerException();
    }

    intValue = [result intValue];

    return [map categoryIdToTitleWithInt:intValue];
  }

  return result;
}

- (id)mainCategoryIdForQIDWithNSString:(id)string
{
  result = [(ComAppleContextkitCategoriesConstellation *)self categoryIdsForQIDWithNSString:string];
  if (result)
  {
    v4 = result;
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    result = [result countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (result)
    {
      v5 = result;
      v6 = *v10;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if (!v8)
          {
            JreThrowNullPointerException();
          }

          if (!([*(*(&v9 + 1) + 8 * i) intValue] >> 28))
          {
            return JavaLangInteger_valueOfWithInt_([v8 intValue] & 0xFFFFFFF);
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
        result = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  return result;
}

- (id)ancestorCategoriesForQIDs:(id)ds usingMapper:(id)mapper
{
  v7 = new_JavaUtilHashMap_init();
  selfCopy = self;
  v8 = [(ComAppleContextkitCategoriesConstellation *)self newRequestWithMaxCategories:10 minQidCount:1 minWeight:0];
  v9 = new_JavaUtilHashMap_init();
  v10 = [ComAppleContextkitCategoriesConstellation__2 alloc];
  JreStrongAssign(&v10->val$idsAndHeight_, v7);
  v57 = v10;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  if (!ds)
  {
LABEL_48:
    JreThrowNullPointerException();
  }

  v11 = [ds countByEnumeratingWithState:&v70 objects:v77 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v71;
    v51 = v9;
    dsCopy = ds;
    v50 = *v71;
    do
    {
      v14 = 0;
      v53 = v12;
      do
      {
        if (*v71 != v13)
        {
          objc_enumerationMutation(ds);
        }

        v15 = *(*(&v70 + 1) + 8 * v14);
        [(JavaUtilHashMap *)v7 clear];
        if ([(JavaUtilHashMap *)v9 containsKeyWithId:v15])
        {
          goto LABEL_45;
        }

        v16 = [(ComAppleContextkitCategoriesConstellation *)selfCopy categoryIdsForQIDWithNSString:v15];
        if (!v16)
        {
          goto LABEL_45;
        }

        v17 = v16;
        v54 = v14;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        v18 = [v16 countByEnumeratingWithState:&v66 objects:v76 count:16];
        v56 = v15;
        if (!v18)
        {
          goto LABEL_22;
        }

        v19 = v18;
        v20 = *v67;
        do
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v67 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v66 + 1) + 8 * i);
            if (!v22)
            {
              goto LABEL_48;
            }

            intValue = [v22 intValue];
            v24 = JavaLangInteger_valueOfWithInt_(intValue & 0xFFFFFFF);
            v25 = [(JavaUtilHashMap *)v7 putWithId:v24 withId:JavaLangInteger_valueOfWithInt_(intValue >> 28)];
            if (v25)
            {
              v26 = v25;
              if ([v25 intValue] >= (intValue >> 28))
              {
                continue;
              }

              [(JavaUtilHashMap *)v7 putWithId:JavaLangInteger_valueOfWithInt_(intValue & 0xFFFFFFF) withId:v26];
            }

            if (!v8)
            {
              goto LABEL_48;
            }

            [v8 iterateAncestorsForCategoryIdWithInt:intValue & 0xFFFFFFF withComAppleContextkitCategoriesConstellation_AncestorConsumer:v57];
          }

          v19 = [v17 countByEnumeratingWithState:&v66 objects:v76 count:16];
        }

        while (v19);
LABEL_22:
        v27 = new_JavaUtilArrayList_initWithInt_([(JavaUtilHashMap *)v7 size]);
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        entrySet = [(JavaUtilHashMap *)v7 entrySet];
        if (!entrySet)
        {
          goto LABEL_48;
        }

        v29 = entrySet;
        v30 = [entrySet countByEnumeratingWithState:&v62 objects:v75 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v63;
          do
          {
            for (j = 0; j != v31; j = j + 1)
            {
              if (*v63 != v32)
              {
                objc_enumerationMutation(v29);
              }

              v34 = *(*(&v62 + 1) + 8 * j);
              if (!v34)
              {
                goto LABEL_48;
              }

              getKey = [*(*(&v62 + 1) + 8 * j) getKey];
              if (!getKey)
              {
                goto LABEL_48;
              }

              intValue2 = [getKey intValue];
              getValue = [v34 getValue];
              if (!getValue)
              {
                goto LABEL_48;
              }

              -[JavaUtilArrayList addWithId:](v27, "addWithId:", JavaLangInteger_valueOfWithInt_(intValue2 | ([getValue intValue] << 28)));
            }

            v31 = [v29 countByEnumeratingWithState:&v62 objects:v75 count:16];
          }

          while (v31);
        }

        v38 = objc_autoreleasePoolPush();
        JavaUtilCollections_sortWithJavaUtilList_withJavaUtilComparator_(v27, qword_100554420);
        objc_autoreleasePoolPop(v38);
        v39 = new_JavaUtilLinkedHashMap_initWithInt_([(JavaUtilHashMap *)v7 size]);
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v61 = 0u;
        v40 = [(JavaUtilArrayList *)v27 countByEnumeratingWithState:&v58 objects:v74 count:16];
        v41 = v56;
        if (v40)
        {
          v42 = v40;
          v43 = *v59;
          do
          {
            for (k = 0; k != v42; k = k + 1)
            {
              if (*v59 != v43)
              {
                objc_enumerationMutation(v27);
              }

              v45 = *(*(&v58 + 1) + 8 * k);
              if (!v45)
              {
                goto LABEL_48;
              }

              intValue3 = [v45 intValue];
              if (!mapper)
              {
                goto LABEL_48;
              }

              v47 = intValue3;
              0xFFFFFFF = [mapper categoryIdToTitleWithInt:intValue3 & 0xFFFFFFF];
              if (0xFFFFFFF)
              {
                [(JavaUtilHashMap *)v39 putWithId:0xFFFFFFF withId:JavaLangInteger_valueOfWithInt_(v47 >> 28)];
              }

              v41 = v56;
            }

            v42 = [(JavaUtilArrayList *)v27 countByEnumeratingWithState:&v58 objects:v74 count:16];
          }

          while (v42);
        }

        v9 = v51;
        [(JavaUtilHashMap *)v51 putWithId:v41 withId:v39];
        ds = dsCopy;
        v12 = v53;
        v13 = v50;
        v14 = v54;
LABEL_45:
        v14 = v14 + 1;
      }

      while (v14 != v12);
      v12 = [ds countByEnumeratingWithState:&v70 objects:v77 count:16];
    }

    while (v12);
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation;
  [(ComAppleContextkitCategoriesConstellation *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    JreStrongAssignAndConsume(&qword_100554420, [ComAppleContextkitCategoriesConstellation__1 alloc]);
    atomic_store(1u, ComAppleContextkitCategoriesConstellation__initialized);
  }
}

@end