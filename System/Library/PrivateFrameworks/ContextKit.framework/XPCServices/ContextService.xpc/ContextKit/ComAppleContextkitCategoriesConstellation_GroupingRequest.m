@interface ComAppleContextkitCategoriesConstellation_GroupingRequest
- (JavaUtilHashMap)getNewsTopicToContentItems;
- (id)groupingResults;
- (id)overallCategories;
- (void)addTopicGroup:(id)a3;
- (void)dealloc;
@end

@implementation ComAppleContextkitCategoriesConstellation_GroupingRequest

- (void)addTopicGroup:(id)a3
{
  v5 = objc_autoreleasePoolPush();
  topicGroups = self->topicGroups_;
  if (!topicGroups || (v7 = [(JavaUtilList *)topicGroups size], [(JavaUtilList *)self->topicGroups_ addWithId:a3], v37 = 0u, v38 = 0u, v39 = 0u, v40 = 0u, !a3))
  {
LABEL_38:
    JreThrowNullPointerException();
  }

  v31 = [a3 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v31)
  {
    v32 = *v38;
    v29 = v5;
    obj = a3;
    do
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v38 != v32)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v37 + 1) + 8 * i);
        v10 = [(ComAppleContextkitCategoriesConstellation *)self->this$0_ ancestorCategoriesForQIDs:JavaUtilCollections_singletonWithId_(v9) usingMapper:[(ComAppleContextkitCategoriesConstellation *)self->this$0_ newQIDMapper]];
        if (!v10)
        {
          goto LABEL_38;
        }

        v11 = [v10 getWithId:v9];
        if (v11)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v12 = [v11 entrySet];
          if (!v12)
          {
            goto LABEL_38;
          }

          v13 = v12;
          v14 = [v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v34;
            do
            {
              for (j = 0; j != v15; j = j + 1)
              {
                if (*v34 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v33 + 1) + 8 * j);
                if (!v18)
                {
                  goto LABEL_38;
                }

                v19 = [*(*(&v33 + 1) + 8 * j) getKey];
                v20 = [v18 getValue];
                if (!v20)
                {
                  goto LABEL_38;
                }

                v21 = v20;
                if ([v20 intValue] <= self->nMaxTopicDistance_)
                {
                  newsTopicQids = self->newsTopicQids_;
                  if (!newsTopicQids)
                  {
                    goto LABEL_38;
                  }

                  if ([(JavaUtilSet *)newsTopicQids containsWithId:v19])
                  {
                    newsTopicToContentItems = self->newsTopicToContentItems_;
                    if (!newsTopicToContentItems)
                    {
                      goto LABEL_38;
                    }

                    if (([(JavaUtilMap *)newsTopicToContentItems containsKeyWithId:v19]& 1) == 0)
                    {
                      [(JavaUtilMap *)self->newsTopicToContentItems_ putWithId:v19 withId:new_JavaUtilArrayList_init()];
                    }

                    v24 = [(JavaUtilMap *)self->newsTopicToContentItems_ getWithId:v19, v29];
                    if (!v24)
                    {
                      goto LABEL_38;
                    }

                    if (([v24 containsWithId:JavaLangInteger_valueOfWithInt_(v7)] & 1) == 0)
                    {
                      v25 = [(JavaUtilMap *)self->newsTopicToContentItems_ getWithId:v19];
                      if (!v25)
                      {
                        goto LABEL_38;
                      }

                      [v25 addWithId:JavaLangInteger_valueOfWithInt_(v7)];
                    }

                    minTopicDistance = self->minTopicDistance_;
                    if (!minTopicDistance)
                    {
                      goto LABEL_38;
                    }

                    if (![(JavaUtilMap *)minTopicDistance containsKeyWithId:v19])
                    {
                      goto LABEL_32;
                    }

                    v27 = [(JavaUtilMap *)self->minTopicDistance_ getWithId:v19];
                    if (!v27)
                    {
                      goto LABEL_38;
                    }

                    v28 = [v27 intValue];
                    if (v28 > [v21 intValue])
                    {
LABEL_32:
                      [(JavaUtilMap *)self->minTopicDistance_ putWithId:v19 withId:v21];
                    }
                  }
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v33 objects:v41 count:16];
            }

            while (v15);
          }
        }
      }

      v5 = v29;
      v31 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v31);
  }

  objc_autoreleasePoolPop(v5);
}

- (id)groupingResults
{
  v3 = [ComAppleContextkitCategoriesConstellation_GroupingRequest getNewsTopicToContentItems]_0(self);
  if (!v3)
  {
    goto LABEL_39;
  }

  v4 = v3;
  if (![(JavaUtilHashMap *)v3 size])
  {
    return 0;
  }

  v5 = new_JavaUtilArrayList_initWithJavaUtilCollection_([(JavaUtilHashMap *)v4 entrySet]);
  v6 = new_JavaUtilHashMap_init();
  if ([(JavaUtilArrayList *)v5 size]< 1)
  {
    return v6;
  }

LABEL_4:
  v7 = sub_1000C25E4(self, v5);
  if (!v7)
  {
    return v6;
  }

  v8 = v7;
  v9 = [v7 getKey];
  v10 = new_JavaUtilArrayList_initWithJavaUtilCollection_([v8 getValue]);
  if (![(JavaUtilArrayList *)v10 size])
  {
    return v6;
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  desiredLanguages = self->desiredLanguages_;
  if (!desiredLanguages)
  {
LABEL_39:
    JreThrowNullPointerException();
  }

  v12 = [(JavaUtilList *)self->desiredLanguages_ countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (!v12)
  {
    goto LABEL_15;
  }

  v18 = v12;
  v19 = *v45;
LABEL_9:
  v20 = 0;
  while (1)
  {
    if (*v45 != v19)
    {
      objc_enumerationMutation(desiredLanguages);
    }

    v21 = sub_1000C27CC(self, v9, *(*(&v44 + 1) + 8 * v20), v13, v14, v15, v16, v17);
    if (v21)
    {
      break;
    }

    if (v18 == ++v20)
    {
      v18 = [(JavaUtilList *)desiredLanguages countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (!v18)
      {
LABEL_15:
        if (![(JavaUtilArrayList *)v5 removeWithId:v8])
        {
          return v6;
        }

LABEL_35:
        if ([(JavaUtilArrayList *)v5 size]<= 0)
        {
          return v6;
        }

        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v22 = new_ComAppleContextkitCategoriesConstellation_NewsCategory_initWithNSString_withNSString_(v21, v9);
  [(JavaUtilHashMap *)v6 putWithId:v22 withId:v10];
  if ([(JavaUtilArrayList *)v5 removeWithId:v8])
  {
    if (v22)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = [(JavaUtilArrayList *)v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v41;
        v35 = v6;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v41 != v25)
            {
              objc_enumerationMutation(v10);
            }

            v27 = *(*(&v40 + 1) + 8 * i);
            v36 = 0u;
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v28 = [(JavaUtilArrayList *)v5 countByEnumeratingWithState:&v36 objects:v48 count:16];
            if (v28)
            {
              v29 = v28;
              v30 = *v37;
              do
              {
                for (j = 0; j != v29; j = j + 1)
                {
                  if (*v37 != v30)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v32 = *(*(&v36 + 1) + 8 * j);
                  if (!v32)
                  {
                    goto LABEL_39;
                  }

                  v33 = [v32 getValue];
                  if (!v33)
                  {
                    goto LABEL_39;
                  }

                  [v33 removeWithId:v27];
                }

                v29 = [(JavaUtilArrayList *)v5 countByEnumeratingWithState:&v36 objects:v48 count:16];
              }

              while (v29);
            }
          }

          v24 = [(JavaUtilArrayList *)v10 countByEnumeratingWithState:&v40 objects:v49 count:16];
          v6 = v35;
        }

        while (v24);
      }
    }

    goto LABEL_35;
  }

  return v6;
}

- (JavaUtilHashMap)getNewsTopicToContentItems
{
  v2 = new_JavaUtilHashMap_init();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 24);
  if (!v3 || (v4 = [v3 entrySet]) == 0)
  {
LABEL_12:
    JreThrowNullPointerException();
  }

  v5 = v4;
  v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        if (!v10)
        {
          goto LABEL_12;
        }

        -[JavaUtilHashMap putWithId:withId:](v2, "putWithId:withId:", [*(*(&v12 + 1) + 8 * i) getKey], new_JavaUtilArrayList_initWithJavaUtilCollection_(objc_msgSend(v10, "getValue")));
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v2;
}

- (id)overallCategories
{
  v3 = [ComAppleContextkitCategoriesConstellation_GroupingRequest getNewsTopicToContentItems]_0(self);
  if (!v3)
  {
LABEL_22:
    JreThrowNullPointerException();
  }

  v4 = v3;
  if (![(JavaUtilHashMap *)v3 size])
  {
    return 0;
  }

  v5 = new_JavaUtilArrayList_init();
  v6 = new_JavaUtilArrayList_initWithJavaUtilCollection_([(JavaUtilHashMap *)v4 entrySet]);
  do
  {
    if ([(JavaUtilArrayList *)v5 size]>= self->nMaxOverallTopics_)
    {
      break;
    }

    if ([(JavaUtilArrayList *)v6 size]< 1)
    {
      break;
    }

    v7 = sub_1000C25E4(self, v6);
    if (!v7)
    {
      break;
    }

    v8 = v7;
    v9 = [v7 getKey];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    desiredLanguages = self->desiredLanguages_;
    if (!desiredLanguages)
    {
      goto LABEL_22;
    }

    v11 = v9;
    v12 = [(JavaUtilList *)self->desiredLanguages_ countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v12)
    {
      v18 = v12;
      v19 = *v25;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(desiredLanguages);
          }

          v21 = sub_1000C27CC(self, v11, *(*(&v24 + 1) + 8 * i), v13, v14, v15, v16, v17);
          if (v21)
          {
            v22 = new_ComAppleContextkitCategoriesConstellation_NewsCategory_initWithNSString_withNSString_(v21, v11);
            [(JavaUtilArrayList *)v5 addWithId:v22, v24];
            goto LABEL_18;
          }
        }

        v18 = [(JavaUtilList *)desiredLanguages countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
    ;
  }

  while ([(JavaUtilArrayList *)v6 removeWithId:v8, v24]);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitCategoriesConstellation_GroupingRequest;
  [(ComAppleContextkitCategoriesConstellation_GroupingRequest *)&v3 dealloc];
}

@end