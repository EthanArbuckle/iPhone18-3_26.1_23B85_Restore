@interface PKSavingsAccountAssessmentManager
- (PKSavingsAccountAssessmentManager)initWithType:(int64_t)a3;
- (id)_serviceProviderIdentifierForAssessmentType;
- (void)_restartODIAssessment;
- (void)updateAssessmentType:(int64_t)a3;
- (void)waitForAssessmentWithCompletion:(id)a3;
@end

@implementation PKSavingsAccountAssessmentManager

- (PKSavingsAccountAssessmentManager)initWithType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = PKSavingsAccountAssessmentManager;
  v4 = [(PKSavingsAccountAssessmentManager *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    [(PKSavingsAccountAssessmentManager *)v4 _restartODIAssessment];
  }

  return v5;
}

- (void)updateAssessmentType:(int64_t)a3
{
  self->_type = a3;
  [(PKSavingsAccountAssessmentManager *)self provideSessionFeedbackDiscarded];

  [(PKSavingsAccountAssessmentManager *)self _restartODIAssessment];
}

- (void)waitForAssessmentWithCompletion:(id)a3
{
  v4 = a3;
  odiServiceProviderAssessment = self->_odiServiceProviderAssessment;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__PKSavingsAccountAssessmentManager_waitForAssessmentWithCompletion___block_invoke;
  v7[3] = &unk_1E79DAFA0;
  v8 = v4;
  v6 = v4;
  [(PKODIAssessment *)odiServiceProviderAssessment waitForAssessmentWithContinueBlock:v7];
}

void __69__PKSavingsAccountAssessmentManager_waitForAssessmentWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__PKSavingsAccountAssessmentManager_waitForAssessmentWithCompletion___block_invoke_2;
  v6[3] = &unk_1E79C44A0;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

uint64_t __69__PKSavingsAccountAssessmentManager_waitForAssessmentWithCompletion___block_invoke_2(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)_restartODIAssessment
{
  v3 = [(PKSavingsAccountAssessmentManager *)self _serviceProviderIdentifierForAssessmentType];
  if (v3)
  {
    v21 = v3;
    v4 = [(PKODIServiceProviderAssessment *)self->_odiServiceProviderAssessment serviceIdentifier];
    v5 = [v21 isEqualToString:v4];

    v3 = v21;
    if ((v5 & 1) == 0)
    {
      v6 = [PKODIServiceProviderAssessment alloc];
      v7 = PKPassKitCoreBundle();
      v8 = [(PKODIServiceProviderAssessment *)v6 initWithServiceProviderIdentifier:v21 locationBundle:v7];
      odiServiceProviderAssessment = self->_odiServiceProviderAssessment;
      self->_odiServiceProviderAssessment = v8;

      [(PKODIAssessment *)self->_odiServiceProviderAssessment startAssessment];
      v10 = +[PKAppleAccountManager sharedInstance];
      v11 = [v10 appleAccountInformation];

      v12 = +[PKAppleAccountManager sharedInstance];
      v13 = [v12 appleAccountInformation];
      v14 = [v13 aaDSID];

      v15 = [v11 firstName];
      v16 = [v11 lastName];
      v17 = [v11 primaryEmailAddress];
      v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v19 = v18;
      if (v14)
      {
        [v18 setObject:v14 forKey:*MEMORY[0x1E6998528]];
      }

      if (v15)
      {
        [v19 setObject:v15 forKey:*MEMORY[0x1E6998510]];
      }

      if (v16)
      {
        [v19 setObject:v16 forKey:*MEMORY[0x1E6998538]];
      }

      if (v17)
      {
        [v19 setObject:v17 forKey:*MEMORY[0x1E6998508]];
      }

      v20 = objc_alloc_init(MEMORY[0x1E69983B0]);
      [v20 setAttributes:v19];
      [(PKODIAssessment *)self->_odiServiceProviderAssessment updateAssessment:v20];
      [(PKODIAssessment *)self->_odiServiceProviderAssessment computeAssessment];

      v3 = v21;
    }
  }
}

- (id)_serviceProviderIdentifierForAssessmentType
{
  type = self->_type;
  if (type > 8)
  {
    v3 = MEMORY[0x1E6998638];
  }

  else
  {
    v3 = qword_1E79E29D8[type];
  }

  return *v3;
}

@end