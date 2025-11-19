@interface PKODITransactionAssessment
- (PKODITransactionAssessment)initWithAssessmentType:(unint64_t)a3;
- (void)createODISession;
- (void)createODISessionWithType:(unint64_t)a3;
- (void)getAssessmentWithCompletion:(id)a3;
@end

@implementation PKODITransactionAssessment

- (PKODITransactionAssessment)initWithAssessmentType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = PKODITransactionAssessment;
  result = [(PKODIAssessment *)&v5 init];
  if (result)
  {
    result->_assessmentType = a3;
  }

  return result;
}

- (void)createODISession
{
  v3 = [(PKODITransactionAssessment *)self assessmentType];

  [(PKODITransactionAssessment *)self createODISessionWithType:v3];
}

- (void)createODISessionWithType:(unint64_t)a3
{
  if (!a3)
  {
    v4 = MEMORY[0x1E6998600];
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    v4 = MEMORY[0x1E6998608];
LABEL_5:
    v8 = *v4;
    goto LABEL_7;
  }

  v8 = 0;
LABEL_7:
  v5 = objc_alloc(MEMORY[0x1E69983C0]);
  v6 = PKPassKitCoreBundle();
  v7 = [v5 initWithServiceIdentifier:v8 forDSIDType:1 andLocationBundle:v6];
  [(PKODIAssessment *)self setOdiSession:v7];
}

- (void)getAssessmentWithCompletion:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v7 = v4;
    v5 = [(PKODIAssessment *)self odiSession];

    if (v5)
    {
      v6 = [(PKODIAssessment *)self odiSession];
      [v6 getAssessmentForTransaction:v7];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }

    v4 = v7;
  }
}

@end