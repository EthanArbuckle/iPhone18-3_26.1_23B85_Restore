@interface FBKSFeedbackCount
+ (void)fetchCountsForFormWithIdentifier:(id)identifier completion:(id)completion;
- (FBKSFeedbackCount)initWithCampaign:(id)campaign campaignErrors:(id)errors feedbackSubmitted:(id)submitted declineCount:(int64_t)count;
- (FBKSFeedbackCount)initWithSwiftObject:(id)object;
- (id)debugDescription;
- (id)description;
@end

@implementation FBKSFeedbackCount

- (FBKSFeedbackCount)initWithCampaign:(id)campaign campaignErrors:(id)errors feedbackSubmitted:(id)submitted declineCount:(int64_t)count
{
  campaignCopy = campaign;
  errorsCopy = errors;
  submittedCopy = submitted;
  v17.receiver = self;
  v17.super_class = FBKSFeedbackCount;
  v14 = [(FBKSFeedbackCount *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_currentCampaign, campaign);
    objc_storeStrong(&v15->_errors, errors);
    objc_storeStrong(&v15->_feedbackFiled, submitted);
    v15->_declineCount = count;
  }

  return v15;
}

- (id)debugDescription
{
  swiftObject = [(FBKSFeedbackCount *)self swiftObject];
  v3 = [swiftObject debugDescription];

  return v3;
}

- (FBKSFeedbackCount)initWithSwiftObject:(id)object
{
  v40 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v4 = [FBKSCampaign alloc];
  currentCampaign = [objectCopy currentCampaign];
  v6 = [(FBKSCampaign *)v4 initWithSwiftObject:currentCampaign];

  v7 = objc_alloc(MEMORY[0x1E695DF70]);
  feedbackFiled = [objectCopy feedbackFiled];
  v9 = [v7 initWithCapacity:{objc_msgSend(feedbackFiled, "count")}];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  feedbackFiled2 = [objectCopy feedbackFiled];
  v11 = [feedbackFiled2 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
          objc_enumerationMutation(feedbackFiled2);
        }

        v15 = [[FBKSFeedback alloc] initWithSwiftObject:*(*(&v34 + 1) + 8 * v14)];
        if (v15)
        {
          [v9 addObject:v15];
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [feedbackFiled2 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v12);
  }

  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  errors = [objectCopy errors];
  v18 = [v16 initWithCapacity:{objc_msgSend(errors, "count")}];

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  errors2 = [objectCopy errors];
  v20 = [errors2 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
          objc_enumerationMutation(errors2);
        }

        v24 = [[FBKSCampaignError alloc] initWithSwiftObject:*(*(&v30 + 1) + 8 * v23)];
        if (v24)
        {
          [v18 addObject:v24];
        }

        ++v23;
      }

      while (v21 != v23);
      v21 = [errors2 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v21);
  }

  v25 = -[FBKSFeedbackCount initWithCampaign:campaignErrors:feedbackSubmitted:declineCount:](self, "initWithCampaign:campaignErrors:feedbackSubmitted:declineCount:", v6, v18, v9, [objectCopy declineCount]);
  v26 = v25;
  if (v25)
  {
    [(FBKSFeedbackCount *)v25 setSwiftObject:objectCopy];
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

+ (void)fetchCountsForFormWithIdentifier:(id)identifier completion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__FBKSFeedbackCount_fetchCountsForFormWithIdentifier_completion___block_invoke;
  v7[3] = &unk_1E7A8FEC0;
  v8 = completionCopy;
  v6 = completionCopy;
  [FBKSFeedbackCount_FrameworkPrivateName fetchCountsForFormWithIdentifier:identifier completion:v7];
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
  swiftObject = [(FBKSFeedbackCount *)self swiftObject];
  v3 = [swiftObject description];

  return v3;
}

@end