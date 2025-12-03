@interface PKODITransactionAssessment
- (PKODITransactionAssessment)initWithAssessmentType:(unint64_t)type;
- (void)createODISession;
- (void)createODISessionWithType:(unint64_t)type;
- (void)getAssessmentWithCompletion:(id)completion;
@end

@implementation PKODITransactionAssessment

- (PKODITransactionAssessment)initWithAssessmentType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = PKODITransactionAssessment;
  result = [(PKODIAssessment *)&v5 init];
  if (result)
  {
    result->_assessmentType = type;
  }

  return result;
}

- (void)createODISession
{
  assessmentType = [(PKODITransactionAssessment *)self assessmentType];

  [(PKODITransactionAssessment *)self createODISessionWithType:assessmentType];
}

- (void)createODISessionWithType:(unint64_t)type
{
  if (!type)
  {
    v4 = MEMORY[0x1E6998600];
    goto LABEL_5;
  }

  if (type == 1)
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

- (void)getAssessmentWithCompletion:(id)completion
{
  completionCopy = completion;
  if (completionCopy)
  {
    v7 = completionCopy;
    odiSession = [(PKODIAssessment *)self odiSession];

    if (odiSession)
    {
      odiSession2 = [(PKODIAssessment *)self odiSession];
      [odiSession2 getAssessmentForTransaction:v7];
    }

    else
    {
      (*(v7 + 2))(v7, 0, 0);
    }

    completionCopy = v7;
  }
}

@end