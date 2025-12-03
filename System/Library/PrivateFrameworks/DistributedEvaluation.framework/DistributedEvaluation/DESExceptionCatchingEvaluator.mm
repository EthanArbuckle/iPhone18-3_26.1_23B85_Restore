@interface DESExceptionCatchingEvaluator
- (DESExceptionCatchingEvaluator)initWithEvaluator:(id)evaluator;
- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set binaryResult:(id *)result error:(id *)error;
- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set error:(id *)error;
- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error;
- (void)performEvaluation:(id)evaluation;
@end

@implementation DESExceptionCatchingEvaluator

- (DESExceptionCatchingEvaluator)initWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v9.receiver = self;
  v9.super_class = DESExceptionCatchingEvaluator;
  v6 = [(DESExceptionCatchingEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_evaluator, evaluator);
  }

  return v7;
}

- (id)evaluateRecipe:(id)recipe recordInfo:(id)info recordData:(id)data attachments:(id)attachments error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  infoCopy = info;
  dataCopy = data;
  attachmentsCopy = attachments;
  v16 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:recipeCopy recordInfo:infoCopy recordData:dataCopy attachments:attachmentsCopy error:error];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set error:(id *)error
{
  v13 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  setCopy = set;
  v10 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:recipeCopy matchingRecordSet:setCopy error:error];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)evaluateRecipe:(id)recipe matchingRecordSet:(id)set binaryResult:(id *)result error:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  recipeCopy = recipe;
  setCopy = set;
  v12 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:recipeCopy matchingRecordSet:setCopy binaryResult:result error:error];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)performEvaluation:(id)evaluation
{
  v6 = *MEMORY[0x277D85DE8];
  evaluationCopy = evaluation;
  [(DESRecipeEvaluation *)self->_evaluator performEvaluation:evaluationCopy];

  v5 = *MEMORY[0x277D85DE8];
}

@end