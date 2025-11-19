@interface HDDismissedPregnancyLactationInteractionInsertOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDDismissedPregnancyLactationInteractionInsertOperation)initWithCoder:(id)a3;
- (HDDismissedPregnancyLactationInteractionInsertOperation)initWithDismissedPregnancyLactationInteractions:(id)a3;
@end

@implementation HDDismissedPregnancyLactationInteractionInsertOperation

- (HDDismissedPregnancyLactationInteractionInsertOperation)initWithDismissedPregnancyLactationInteractions:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HDDismissedPregnancyLactationInteractionInsertOperation;
  v6 = [(HDDismissedPregnancyLactationInteractionInsertOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dismissedInteractions, a3);
  }

  return v7;
}

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if ([(NSArray *)self->_dismissedInteractions count])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = self->_dismissedInteractions;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if (![HDDismissedPregnancyLactationInteractionEntity _insertDismissedPregnancyLactationInteraction:v7 transaction:a5 error:?])
          {
            v13 = 0;
            goto LABEL_12;
          }
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v13 = 1;
LABEL_12:
  }

  else
  {
    v13 = 1;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (HDDismissedPregnancyLactationInteractionInsertOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HDDismissedPregnancyLactationInteractionInsertOperation;
  v5 = [(HDDismissedPregnancyLactationInteractionInsertOperation *)&v10 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"dismissed_pregnancy_lactation_interactions"];
    dismissedInteractions = v5->_dismissedInteractions;
    v5->_dismissedInteractions = v7;
  }

  return v5;
}

@end