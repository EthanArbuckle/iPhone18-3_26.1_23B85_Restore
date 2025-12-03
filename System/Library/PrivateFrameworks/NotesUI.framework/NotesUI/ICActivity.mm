@interface ICActivity
- (ICActivity)init;
- (ICActivity)initWithPerformActivity:(id)activity;
- (id)actionWithCompletion:(id)completion;
- (void)performActivityWithCompletion:(id)completion;
@end

@implementation ICActivity

- (ICActivity)init
{
  v5.receiver = self;
  v5.super_class = ICActivity;
  v2 = [(UIActivity *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ICActivity *)v2 commonInit];
  }

  return v3;
}

- (ICActivity)initWithPerformActivity:(id)activity
{
  activityCopy = activity;
  v5 = [(ICActivity *)self init];
  if (v5)
  {
    v6 = _Block_copy(activityCopy);
    performActivityBlock = v5->_performActivityBlock;
    v5->_performActivityBlock = v6;

    [(ICActivity *)v5 commonInit];
  }

  return v5;
}

- (id)actionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69DC628];
  activityTitle = [(UIActivity *)self activityTitle];
  activityImage = [(UIActivity *)self activityImage];
  actionIdentifier = [(ICActivity *)self actionIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__ICActivity_actionWithCompletion___block_invoke;
  v12[3] = &unk_1E846CFE0;
  v12[4] = self;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = [v5 actionWithTitle:activityTitle image:activityImage identifier:actionIdentifier handler:v12];

  return v10;
}

uint64_t __35__ICActivity_actionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 presentationSourceItem];
  [*(a1 + 32) setPresentationSourceItem:v3];

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 performActivityWithCompletion:v5];
}

- (void)performActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  performActivityBlock = [(ICActivity *)self performActivityBlock];

  if (performActivityBlock)
  {
    performActivityBlock2 = [(ICActivity *)self performActivityBlock];
    performActivityBlock2[2]();
  }

  [(UIActivity *)self activityDidFinish:1];
  v6 = completionCopy;
  if (completionCopy)
  {
    activityType = [(UIActivity *)self activityType];
    (*(completionCopy + 2))(completionCopy, 1, activityType);

    v6 = completionCopy;
  }
}

@end