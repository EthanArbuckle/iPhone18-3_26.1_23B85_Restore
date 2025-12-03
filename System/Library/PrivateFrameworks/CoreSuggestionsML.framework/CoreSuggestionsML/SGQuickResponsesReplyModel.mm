@interface SGQuickResponsesReplyModel
+ (id)semanticClassesForArray:(id)array;
- (SGQuickResponsesReplyModel)initWithDictionary:(id)dictionary index:(unint64_t)index;
@end

@implementation SGQuickResponsesReplyModel

- (SGQuickResponsesReplyModel)initWithDictionary:(id)dictionary index:(unint64_t)index
{
  dictionaryCopy = dictionary;
  v7 = dictionaryCopy;
  if (dictionaryCopy)
  {

    v26.receiver = self;
    v26.super_class = SGQuickResponsesReplyModel;
    self = [(SGQuickResponsesReplyModel *)&v26 init];
    if (!self)
    {
      goto LABEL_28;
    }

    v8 = [v7 arrayAssertedForKey:@"RESPONSE_CLASSES"];
    if (v8)
    {
      v9 = v8;
      self->_semanticClassIndex = index;
      v10 = [SGQuickResponsesReplyModel semanticClassesForArray:v8];
      if (!v10)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[SGQuickResponsesReplyModel semanticClassesForArray:array]";
          goto LABEL_24;
        }

LABEL_25:

        goto LABEL_26;
      }

      semanticClasses = self->_semanticClasses;
      self->_semanticClasses = v10;

      v12 = [v7 arrayAssertedForKey:@"REPLY_TEXT_SELECTED_PSEUDOCOUNTS"];
      if (!v12)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[dictionary arrayAssertedForKey:REPLY_TEXT_SELECTED_PSEUDOCOUNTS]";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      selectedPseudocounts = self->_selectedPseudocounts;
      self->_selectedPseudocounts = v12;

      v14 = [v7 numberAssertedForKey:@"MODEL_SCORE_WEIGHT"];
      if (!v14)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[dictionary numberAssertedForKey:MODEL_SCORE_WEIGHT]";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v15 = v14;
      [v14 doubleValue];
      self->_scoreWeight = v16;

      v17 = [v7 numberAssertedForKey:@"MODEL_CATEGORY"];
      if (!v17)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "[dictionary numberAssertedForKey:MODEL_CATEGORY]";
          goto LABEL_24;
        }

        goto LABEL_25;
      }

      v18 = v17;
      self->_category = [v17 unsignedIntegerValue];

      v19 = [v7 objectForKeyedSubscript:@"DYNAMIC_LABEL"];
      self->_dynamicLabel = [v19 BOOLValue];

      if (self->_scoreWeight < 0.0)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          v20 = MEMORY[0x277D86220];
          v21 = "_scoreWeight >= 0";
LABEL_24:
          _os_log_fault_impl(&dword_24799E000, v20, OS_LOG_TYPE_FAULT, v21, buf, 2u);
          goto LABEL_25;
        }

        goto LABEL_25;
      }

LABEL_28:
      self = self;
      selfCopy = self;
      goto LABEL_29;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      v22 = MEMORY[0x277D86220];
      v23 = "[dictionary arrayAssertedForKey:RESPONSE_CLASSES]";
      goto LABEL_15;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    v22 = MEMORY[0x277D86220];
    v23 = "dictionary";
LABEL_15:
    _os_log_fault_impl(&dword_24799E000, v22, OS_LOG_TYPE_FAULT, v23, buf, 2u);
  }

LABEL_26:
  selfCopy = 0;
LABEL_29:

  return selfCopy;
}

+ (id)semanticClassesForArray:(id)array
{
  v56 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v4 = 0x277CBE000uLL;
  v5 = objc_opt_new();
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    v10 = 0x277CBE000uLL;
    while (2)
    {
      v11 = 0;
      v37 = v8;
      do
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        v13 = *(v10 + 2656);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[semanticClass isKindOfClass:NSArray.class]", buf, 2u);
          }

LABEL_33:

          v31 = 0;
          goto LABEL_34;
        }

        v14 = *(v4 + 2840);
        v15 = objc_opt_new();
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v16 = v12;
        v17 = [v16 countByEnumeratingWithState:&v44 objects:v54 count:16];
        if (v17)
        {
          v18 = *v45;
          v38 = v5;
          v39 = v16;
          v34 = *v45;
          v35 = v9;
          while (2)
          {
            v19 = 0;
            v36 = v17;
            do
            {
              if (*v45 != v18)
              {
                objc_enumerationMutation(v16);
              }

              v20 = *(*(&v44 + 1) + 8 * v19);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v21 = [objc_alloc(*(v10 + 2656)) initWithObjects:{v20, 0}];
              }

              else
              {
                v21 = v20;
              }

              v22 = v21;
              v23 = *(v10 + 2656);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                {
                  *buf = 0;
                  _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[replyGroup isKindOfClass:NSArray.class]", buf, 2u);
                }

                v5 = v38;
LABEL_32:

                goto LABEL_33;
              }

              v24 = v15;
              v25 = v6;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              v22 = v22;
              v26 = [v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
              if (v26)
              {
                v27 = v26;
                v28 = *v41;
                while (2)
                {
                  for (i = 0; i != v27; ++i)
                  {
                    if (*v41 != v28)
                    {
                      objc_enumerationMutation(v22);
                    }

                    v30 = *(*(&v40 + 1) + 8 * i);
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
                      {
                        *buf = 0;
                        _os_log_fault_impl(&dword_24799E000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "[string isKindOfClass:NSString.class]", buf, 2u);
                      }

                      v6 = v25;
                      v15 = v24;
                      v5 = v38;
                      v16 = v39;
                      goto LABEL_32;
                    }
                  }

                  v27 = [v22 countByEnumeratingWithState:&v40 objects:v53 count:16];
                  if (v27)
                  {
                    continue;
                  }

                  break;
                }
              }

              v15 = v24;
              [v24 addObject:v22];

              ++v19;
              v9 = v35;
              v6 = v25;
              v4 = 0x277CBE000;
              v10 = 0x277CBE000;
              v16 = v39;
              v18 = v34;
            }

            while (v19 != v36);
            v17 = [v39 countByEnumeratingWithState:&v44 objects:v54 count:16];
            v5 = v38;
            if (v17)
            {
              continue;
            }

            break;
          }
        }

        [v5 addObject:v15];
        ++v11;
      }

      while (v11 != v37);
      v8 = [v6 countByEnumeratingWithState:&v49 objects:v55 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v31 = v5;
LABEL_34:

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

@end