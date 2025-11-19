@interface SGQuickResponsesRepliesNested
+ (BOOL)isZeroBasedAndContiguous:(id)a3;
+ (id)categoryModelsFromModels:(id)a3;
+ (id)flattenedArraysFromNestedArray:(id)a3;
+ (id)indexedArraysFromNestedArray:(id)a3;
+ (id)modelSemanticClassesFromModels:(id)a3;
+ (id)nestedArrayFromFlatArray:(id)a3 nestedIndexes:(id)a4;
+ (id)nestedArrayFromModels:(id)a3;
+ (id)parentArraysFromNestedArray:(id)a3 models:(id)a4;
+ (id)replyModelsForArray:(id)a3;
+ (id)selectedPseudocountsFromModels:(id)a3;
+ (id)subclassesFromClasses:(id)a3 subclassArray:(id)a4;
- (SGQuickResponsesRepliesNested)initWithArray:(id)a3;
- (id)replyTextForIndex:(unint64_t)a3 position:(unint64_t)a4;
- (unint64_t)replyCountForIndex:(unint64_t)a3;
@end

@implementation SGQuickResponsesRepliesNested

- (SGQuickResponsesRepliesNested)initWithArray:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v63 = MEMORY[0x277D86220];
    v64 = "array";
    goto LABEL_19;
  }

  v70.receiver = self;
  v70.super_class = SGQuickResponsesRepliesNested;
  self = [(SGQuickResponsesRepliesNested *)&v70 init];
  if (self)
  {
    v6 = [objc_opt_class() replyModelsForArray:v5];
    if (v6)
    {
      models = self->_models;
      self->_models = v6;

      v8 = [objc_opt_class() nestedArrayFromModels:self->_models];
      if (v8)
      {
        v9 = v8;
        v10 = [objc_opt_class() indexedArraysFromNestedArray:v8];
        if (!v10)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[self.class indexedArraysFromNestedArray:nestedArray]", buf, 2u);
          }

          goto LABEL_34;
        }

        v11 = v10;
        if ([v10 count] <= 3)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_33;
          }

          *buf = 0;
          v65 = MEMORY[0x277D86220];
          v66 = "indexedArrays.count >= 4";
        }

        else
        {
          v12 = [v11 objectAtIndexedSubscript:1];
          semanticClasses = self->_semanticClasses;
          self->_semanticClasses = v12;

          v14 = [v11 objectAtIndexedSubscript:2];
          styleGroups = self->_styleGroups;
          self->_styleGroups = v14;

          v16 = [v11 objectAtIndexedSubscript:3];
          replyTexts = self->_replyTexts;
          self->_replyTexts = v16;

          v18 = [objc_opt_class() flattenedArraysFromNestedArray:self->_semanticClasses];
          if (v18)
          {
            semanticClassReplyTextStrings = self->_semanticClassReplyTextStrings;
            self->_semanticClassReplyTextStrings = v18;

            v20 = [objc_opt_class() parentArraysFromNestedArray:v9 models:self->_models];
            if (v20)
            {
              v21 = v20;
              if ([v20 count] <= 3)
              {
                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
LABEL_32:

                  goto LABEL_33;
                }

                *buf = 0;
                v67 = MEMORY[0x277D86220];
                v68 = "parentArrays.count >= 4";
              }

              else
              {
                v22 = [v21 objectAtIndexedSubscript:1];
                semanticClassParent = self->_semanticClassParent;
                self->_semanticClassParent = v22;

                v24 = [v21 objectAtIndexedSubscript:2];
                styleGroupParent = self->_styleGroupParent;
                self->_styleGroupParent = v24;

                v26 = [v21 objectAtIndexedSubscript:3];
                replyTextParent = self->_replyTextParent;
                self->_replyTextParent = v26;

                v28 = [objc_opt_class() categoryModelsFromModels:self->_models];
                categoryModels = self->_categoryModels;
                self->_categoryModels = v28;

                v30 = objc_opt_class();
                v31 = self->_categoryModels;
                v32 = [v11 objectAtIndexedSubscript:0];
                v33 = [v30 subclassesFromClasses:v31 subclassArray:v32];
                categorySemanticClasses = self->_categorySemanticClasses;
                self->_categorySemanticClasses = v33;

                v35 = objc_opt_class();
                v36 = self->_categorySemanticClasses;
                v37 = [v11 objectAtIndexedSubscript:1];
                v38 = [v35 subclassesFromClasses:v36 subclassArray:v37];
                categoryStyleGroups = self->_categoryStyleGroups;
                self->_categoryStyleGroups = v38;

                v40 = objc_opt_class();
                v41 = [v11 objectAtIndexedSubscript:1];
                v42 = [v40 subclassesFromClasses:0 subclassArray:v41];
                semanticClassStyleGroups = self->_semanticClassStyleGroups;
                self->_semanticClassStyleGroups = v42;

                v44 = objc_opt_class();
                v45 = self->_semanticClassStyleGroups;
                v46 = [v11 objectAtIndexedSubscript:2];
                v47 = [v44 subclassesFromClasses:v45 subclassArray:v46];
                semanticClassReplyTexts = self->_semanticClassReplyTexts;
                self->_semanticClassReplyTexts = v47;

                v49 = objc_opt_class();
                v50 = [v11 objectAtIndexedSubscript:2];
                v51 = [v49 subclassesFromClasses:0 subclassArray:v50];
                styleGroupReplyTexts = self->_styleGroupReplyTexts;
                self->_styleGroupReplyTexts = v51;

                v53 = objc_alloc(MEMORY[0x277CBEB98]);
                v54 = [(NSArray *)self->_replyTexts _pas_mappedArrayWithTransform:&__block_literal_global];
                v55 = [v53 initWithArray:v54];
                normalizedReplyTextsSet = self->_normalizedReplyTextsSet;
                self->_normalizedReplyTextsSet = v55;

                v57 = [objc_opt_class() selectedPseudocountsFromModels:self->_models];
                selectedPseudocounts = self->_selectedPseudocounts;
                self->_selectedPseudocounts = v57;

                v59 = [(NSArray *)self->_selectedPseudocounts count];
                if (v59 == [(NSArray *)self->_replyTexts count])
                {
                  v60 = [objc_opt_class() nestedArrayFromFlatArray:self->_selectedPseudocounts nestedIndexes:self->_semanticClassReplyTexts];
                  semanticClassSelectedPseudocounts = self->_semanticClassSelectedPseudocounts;
                  self->_semanticClassSelectedPseudocounts = v60;

                  goto LABEL_12;
                }

                if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
                  goto LABEL_32;
                }

                *buf = 0;
                v67 = MEMORY[0x277D86220];
                v68 = "_selectedPseudocounts.count == _replyTexts.count";
              }

              _os_log_fault_impl(&dword_24799E000, v67, OS_LOG_TYPE_FAULT, v68, buf, 2u);
              goto LABEL_32;
            }

            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
            {
              *buf = 0;
              v65 = MEMORY[0x277D86220];
              v66 = "[self.class parentArraysFromNestedArray:nestedArray models:_models]";
              goto LABEL_28;
            }

LABEL_33:

LABEL_34:
            goto LABEL_35;
          }

          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_33;
          }

          *buf = 0;
          v65 = MEMORY[0x277D86220];
          v66 = "[self.class flattenedArraysFromNestedArray:_semanticClasses]";
        }

LABEL_28:
        _os_log_fault_impl(&dword_24799E000, v65, OS_LOG_TYPE_FAULT, v66, buf, 2u);
        goto LABEL_33;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        v63 = MEMORY[0x277D86220];
        v64 = "[self.class nestedArrayFromModels:_models]";
        goto LABEL_19;
      }

LABEL_35:
      v62 = 0;
      goto LABEL_36;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      goto LABEL_35;
    }

    *buf = 0;
    v63 = MEMORY[0x277D86220];
    v64 = "[self.class replyModelsForArray:array]";
LABEL_19:
    _os_log_fault_impl(&dword_24799E000, v63, OS_LOG_TYPE_FAULT, v64, buf, 2u);
    goto LABEL_35;
  }

LABEL_12:
  self = self;
  v62 = self;
LABEL_36:

  return v62;
}

- (unint64_t)replyCountForIndex:(unint64_t)a3
{
  v3 = [(NSArray *)self->_semanticClasses objectAtIndexedSubscript:a3];
  v4 = [v3 count];

  return v4;
}

- (id)replyTextForIndex:(unint64_t)a3 position:(unint64_t)a4
{
  v5 = [(NSArray *)self->_semanticClassReplyTextStrings objectAtIndexedSubscript:a3];
  v6 = [v5 objectAtIndexedSubscript:a4];

  return v6;
}

+ (id)selectedPseudocountsFromModels:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) selectedPseudocounts];
        [v4 addObjectsFromArray:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)subclassesFromClasses:(id)a3 subclassArray:(id)a4
{
  v71 = *MEMORY[0x277D85DE8];
  v46 = a3;
  v5 = a4;
  v6 = objc_opt_new();
  v7 = objc_opt_new();
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = v5;
  v8 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
  v50 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v48 = *v64;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v64 != v48)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v63 + 1) + 8 * i);
        v13 = objc_opt_new();
        [v7 addObject:v13];

        v14 = [v12 count];
        v15 = v10;
        for (j = v14; j; --j)
        {
          v17 = [v7 lastObject];
          v18 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v15];
          [v17 addObject:v18];

          v7 = v50;
          ++v15;
        }

        v10 += v14;
      }

      v9 = [obj countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v9);
  }

  v19 = v46;
  if (!v46)
  {
    v19 = objc_opt_new();
    v20 = [obj count];
    if (v20)
    {
      v21 = v20;
      for (k = 0; k != v21; ++k)
      {
        v23 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:k];
        v24 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{v23, 0}];
        [v19 addObject:v24];
      }
    }
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v42 = v19;
  v45 = [v42 countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (v45)
  {
    v44 = *v60;
    do
    {
      v25 = 0;
      do
      {
        if (*v60 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v47 = v25;
        v26 = *(*(&v59 + 1) + 8 * v25);
        v27 = objc_opt_new();
        [v6 addObject:v27];

        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v49 = v26;
        v28 = [v49 countByEnumeratingWithState:&v55 objects:v68 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v56;
          do
          {
            for (m = 0; m != v29; ++m)
            {
              if (*v56 != v30)
              {
                objc_enumerationMutation(v49);
              }

              v32 = *(*(&v55 + 1) + 8 * m);
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v33 = [v7 objectAtIndexedSubscript:{objc_msgSend(v32, "unsignedIntegerValue")}];
              v34 = [v33 countByEnumeratingWithState:&v51 objects:v67 count:16];
              if (v34)
              {
                v35 = v34;
                v36 = *v52;
                do
                {
                  for (n = 0; n != v35; ++n)
                  {
                    if (*v52 != v36)
                    {
                      objc_enumerationMutation(v33);
                    }

                    v38 = *(*(&v51 + 1) + 8 * n);
                    v39 = [v6 lastObject];
                    [v39 addObject:v38];
                  }

                  v35 = [v33 countByEnumeratingWithState:&v51 objects:v67 count:16];
                }

                while (v35);
              }

              v7 = v50;
            }

            v29 = [v49 countByEnumeratingWithState:&v55 objects:v68 count:16];
          }

          while (v29);
        }

        v25 = v47 + 1;
      }

      while (v47 + 1 != v45);
      v45 = [v42 countByEnumeratingWithState:&v59 objects:v69 count:16];
    }

    while (v45);
  }

  v40 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)modelSemanticClassesFromModels:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SGQuickResponsesRepliesNested_modelSemanticClassesFromModels___block_invoke;
  v7[3] = &unk_278EB7468;
  v5 = v4;
  v8 = v5;
  [v3 enumerateObjectsUsingBlock:v7];

  return v5;
}

void __64__SGQuickResponsesRepliesNested_modelSemanticClassesFromModels___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = objc_opt_new();
  v4 = [v8 semanticClassIndex];
  v5 = [v8 semanticClasses];
  v6 = [v5 count];

  if (v4 < v6 + v4)
  {
    do
    {
      v7 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v4];
      [v3 addObject:v7];

      ++v4;
      --v6;
    }

    while (v6);
  }

  [*(a1 + 32) addObject:v3];
}

+ (id)categoryModelsFromModels:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForKeyPath:@"@max.category"];
  v5 = [v4 unsignedIntegerValue];

  v6 = objc_opt_new();
  if (v5 != -1)
  {
    v7 = v5 + 1;
    do
    {
      v8 = objc_opt_new();
      [v6 addObject:v8];

      --v7;
    }

    while (v7);
  }

  if ([v3 count])
  {
    v9 = 0;
    do
    {
      v10 = [v3 objectAtIndexedSubscript:v9];
      v11 = [v10 category];

      v12 = [v6 objectAtIndexedSubscript:v11];
      v13 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v9];
      [v12 addObject:v13];

      ++v9;
    }

    while (v9 < [v3 count]);
  }

  return v6;
}

+ (id)replyModelsForArray:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v22;
      v20 = v3;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          break;
        }

        v12 = [[SGQuickResponsesReplyModel alloc] initWithDictionary:v11 index:v8];
        if (!v12)
        {
          if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            goto LABEL_19;
          }

          *buf = 0;
          v16 = MEMORY[0x277D86220];
          v17 = "replyModel != nil";
          goto LABEL_28;
        }

        v13 = v12;
        [v4 addObject:v12];
        v14 = [(SGQuickResponsesReplyModel *)v13 semanticClasses];
        v8 += [v14 count];

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
          v3 = v20;
          if (v7)
          {
            goto LABEL_4;
          }

          goto LABEL_11;
        }
      }

      if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
LABEL_19:

        v15 = 0;
        v3 = v20;
        goto LABEL_23;
      }

      *buf = 0;
      v16 = MEMORY[0x277D86220];
      v17 = "[dictionary isKindOfClass:NSDictionary.class]";
LABEL_28:
      _os_log_fault_impl(&dword_24799E000, v16, OS_LOG_TYPE_FAULT, v17, buf, 2u);
      goto LABEL_19;
    }

LABEL_11:

    if ([objc_opt_class() isZeroBasedAndContiguous:v4])
    {
      v15 = v4;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[self.class isZeroBasedAndContiguous:replyModels]", buf, 2u);
      }

      v15 = 0;
    }

LABEL_23:
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[array isKindOfClass:NSArray.class]", buf, 2u);
    }

    v15 = 0;
  }

  v18 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (BOOL)isZeroBasedAndContiguous:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if ([v3 count])
  {
    v4 = objc_opt_new();
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v3;
    v6 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v23;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v23 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v22 + 1) + 8 * i);
          v11 = objc_alloc(MEMORY[0x277CCABB0]);
          v12 = [v11 initWithUnsignedInteger:{objc_msgSend(v10, "category", v22)}];
          [v4 addObject:v12];
        }

        v7 = [v5 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v7);
    }

    v13 = [v4 allObjects];
    v14 = [v13 valueForKeyPath:@"@min.unsignedIntegerValue"];
    v15 = [v14 unsignedIntegerValue];

    v16 = [v4 allObjects];
    v17 = [v16 valueForKeyPath:@"@max.unsignedIntegerValue"];
    v18 = [v17 unsignedIntegerValue];

    if (v15)
    {
      v19 = 0;
    }

    else
    {
      v19 = v18 == [v4 count] - 1;
    }
  }

  else
  {
    v19 = 1;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

+ (id)parentArraysFromNestedArray:(id)a3 models:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __68__SGQuickResponsesRepliesNested_parentArraysFromNestedArray_models___block_invoke;
  v16[3] = &unk_278EB73F0;
  v17 = v7;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __68__SGQuickResponsesRepliesNested_parentArraysFromNestedArray_models___block_invoke_2;
  v13[3] = &unk_278EB7440;
  v14 = v5;
  v8 = v17;
  v15 = v8;
  v9 = v5;
  [SGNestedArray traversalWithNestedArray:v6 depthCallback:v16 itemCallback:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __68__SGQuickResponsesRepliesNested_parentArraysFromNestedArray_models___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  [v1 addObject:v2];
}

void __68__SGQuickResponsesRepliesNested_parentArraysFromNestedArray_models___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a4)
  {
    v6 = [a3 objectAtIndexedSubscript:a4 - 1];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v8 = *(a1 + 32);
    v6 = [a3 objectAtIndexedSubscript:0];
    v9 = [v8 objectAtIndexedSubscript:{objc_msgSend(v6, "unsignedIntegerValue")}];
    v7 = [v9 category];
  }

  v11 = [*(a1 + 40) objectAtIndexedSubscript:a4];
  v10 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedInteger:v7];
  [v11 addObject:v10];
}

+ (id)nestedArrayFromFlatArray:(id)a3 nestedIndexes:(id)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v22 = objc_opt_new();
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        v12 = objc_opt_new();
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v13 = v11;
        v14 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v24;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v24 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = [v5 objectAtIndexedSubscript:{objc_msgSend(*(*(&v23 + 1) + 8 * j), "unsignedIntegerValue")}];
              [v12 addObject:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v15);
        }

        [v22 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v19 = *MEMORY[0x277D85DE8];

  return v22;
}

+ (id)flattenedArraysFromNestedArray:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__SGQuickResponsesRepliesNested_flattenedArraysFromNestedArray___block_invoke;
  v7[3] = &unk_278EB7418;
  v5 = v4;
  v8 = v5;
  [SGNestedArray traversalWithNestedArray:v3 depthCallback:0 itemCallback:v7];

  return v5;
}

void __64__SGQuickResponsesRepliesNested_flattenedArraysFromNestedArray___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, char a6)
{
  v15 = a2;
  v10 = a3;
  if (a4)
  {
    if (a6)
    {
      goto LABEL_6;
    }

    v11 = [*(a1 + 32) lastObject];
    v12 = v11;
    v13 = v15;
  }

  else
  {
    v14 = *(a1 + 32);
    v12 = objc_opt_new();
    v11 = v14;
    v13 = v12;
  }

  [v11 addObject:v13];

LABEL_6:
}

+ (id)indexedArraysFromNestedArray:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__SGQuickResponsesRepliesNested_indexedArraysFromNestedArray___block_invoke;
  v11[3] = &unk_278EB73F0;
  v12 = v4;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__SGQuickResponsesRepliesNested_indexedArraysFromNestedArray___block_invoke_2;
  v9[3] = &unk_278EB7418;
  v5 = v12;
  v10 = v5;
  [SGNestedArray traversalWithNestedArray:v3 depthCallback:v11 itemCallback:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

void __62__SGQuickResponsesRepliesNested_indexedArraysFromNestedArray___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = objc_opt_new();
  [v1 addObject:v2];
}

void __62__SGQuickResponsesRepliesNested_indexedArraysFromNestedArray___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 objectAtIndexedSubscript:a4];
  [v7 addObject:v6];
}

+ (id)nestedArrayFromModels:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v13 + 1) + 8 * i) semanticClasses];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

@end