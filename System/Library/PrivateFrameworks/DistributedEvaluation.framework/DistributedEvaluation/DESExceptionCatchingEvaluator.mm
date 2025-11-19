@interface DESExceptionCatchingEvaluator
- (DESExceptionCatchingEvaluator)initWithEvaluator:(id)a3;
- (id)evaluateRecipe:(id)a3 matchingRecordSet:(id)a4 binaryResult:(id *)a5 error:(id *)a6;
- (id)evaluateRecipe:(id)a3 matchingRecordSet:(id)a4 error:(id *)a5;
- (id)evaluateRecipe:(id)a3 recordInfo:(id)a4 recordData:(id)a5 attachments:(id)a6 error:(id *)a7;
- (void)performEvaluation:(id)a3;
@end

@implementation DESExceptionCatchingEvaluator

- (DESExceptionCatchingEvaluator)initWithEvaluator:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DESExceptionCatchingEvaluator;
  v6 = [(DESExceptionCatchingEvaluator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_evaluator, a3);
  }

  return v7;
}

- (id)evaluateRecipe:(id)a3 recordInfo:(id)a4 recordData:(id)a5 attachments:(id)a6 error:(id *)a7
{
  v19 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:v12 recordInfo:v13 recordData:v14 attachments:v15 error:a7];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)evaluateRecipe:(id)a3 matchingRecordSet:(id)a4 error:(id *)a5
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:v8 matchingRecordSet:v9 error:a5];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)evaluateRecipe:(id)a3 matchingRecordSet:(id)a4 binaryResult:(id *)a5 error:(id *)a6
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [(DESRecipeEvaluation *)self->_evaluator evaluateRecipe:v10 matchingRecordSet:v11 binaryResult:a5 error:a6];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (void)performEvaluation:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(DESRecipeEvaluation *)self->_evaluator performEvaluation:v4];

  v5 = *MEMORY[0x277D85DE8];
}

@end