@interface FBKSFeedbackCount
+ (void)fetchCountsForFormWithIdentifier:(id)a3 completion:(id)a4;
- (FBKSFeedbackCount)initWithCampaign:(id)a3 campaignErrors:(id)a4 feedbackSubmitted:(id)a5 declineCount:(int64_t)a6;
- (FBKSFeedbackCount)initWithSwiftObject:(id)a3;
- (id)debugDescription;
- (id)description;
@end

@implementation FBKSFeedbackCount

- (FBKSFeedbackCount)initWithCampaign:(id)a3 campaignErrors:(id)a4 feedbackSubmitted:(id)a5 declineCount:(int64_t)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v17.receiver = self;
  v17.super_class = FBKSFeedbackCount;
  v14 = [(FBKSFeedbackCount *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_currentCampaign, a3);
    objc_storeStrong(&v15->_errors, a4);
    objc_storeStrong(&v15->_feedbackFiled, a5);
    v15->_declineCount = a6;
  }

  return v15;
}

- (id)debugDescription
{
  v2 = [(FBKSFeedbackCount *)self swiftObject];
  v3 = [v2 debugDescription];

  return v3;
}

- (FBKSFeedbackCount)initWithSwiftObject:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [FBKSCampaign alloc];
  v5 = [v3 currentCampaign];
  v6 = [(FBKSCampaign *)v4 initWithSwiftObject:v5];

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  v8 = [v3 feedbackFiled];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [v3 feedbackFiled];
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      v14 = 0;
      do
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [[FBKSFeedback alloc] initWithSwiftObject:*(*(&v34 + 1) + 8 * v14)];
        if (v15)
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v17 = [v3 errors];
  v18 = [v16 initWithCapacity:{objc_msgSend(v17, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v19 = [v3 errors];
  v20 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v31;
    do
    {
      v23 = 0;
      do
      {
        if (*v31 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [[FBKSCampaignError alloc] initWithSwiftObject:*(*(&v30 + 1) + 8 * v23)];
        if (v24)
        {
          [v18 addObject:v24];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [v19 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v25 = -[FBKSFeedbackCount initWithCampaign:campaignErrors:feedbackSubmitted:declineCount:](self, "initWithCampaign:campaignErrors:feedbackSubmitted:declineCount:", v6, v18, v9, [v3 declineCount]);
  v26 = v25;
  if (v25)
  {
    [(FBKSFeedbackCount *)v25 setSwiftObject:v3];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (void)fetchCountsForFormWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FBKSFeedbackCount_fetchCountsForFormWithIdentifier_completion___block_invoke;
  v7[3] = &unk_1E7A8FEC0;
  v8 = v5;
  v6 = v5;
  [FBKSFeedbackCount_FrameworkPrivateName fetchCountsForFormWithIdentifier:a3 completion:v7];
}

void __65__FBKSFeedbackCount_fetchCountsForFormWithIdentifier_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (v9)
    {
      v6 = [[FBKSFeedbackCount alloc] initWithSwiftObject:v9];
      v7 = *(*(a1 + 32) + 16);
    }

    else
    {
      v8 = *(a1 + 32);
      v6 = FBKSError(-200, @"Unexpected nil FBKSFeedbackCount");
      v7 = *(v8 + 16);
    }

    v7();
  }
}

- (id)description
{
  v2 = [(FBKSFeedbackCount *)self swiftObject];
  v3 = [v2 description];

  return v3;
}

@end