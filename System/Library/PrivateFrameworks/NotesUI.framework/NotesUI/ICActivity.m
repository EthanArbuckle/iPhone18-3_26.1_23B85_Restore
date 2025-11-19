@interface ICActivity
- (ICActivity)init;
- (ICActivity)initWithPerformActivity:(id)a3;
- (id)actionWithCompletion:(id)a3;
- (void)performActivityWithCompletion:(id)a3;
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

- (ICActivity)initWithPerformActivity:(id)a3
{
  v4 = a3;
  v5 = [(ICActivity *)self init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    performActivityBlock = v5->_performActivityBlock;
    v5->_performActivityBlock = v6;

    [(ICActivity *)v5 commonInit];
  }

  return v5;
}

- (id)actionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69DC628];
  v6 = [(UIActivity *)self activityTitle];
  v7 = [(UIActivity *)self activityImage];
  v8 = [(ICActivity *)self actionIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__ICActivity_actionWithCompletion___block_invoke;
  v12[3] = &unk_1E846CFE0;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [v5 actionWithTitle:v6 image:v7 identifier:v8 handler:v12];

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

- (void)performActivityWithCompletion:(id)a3
{
  v8 = a3;
  v4 = [(ICActivity *)self performActivityBlock];

  if (v4)
  {
    v5 = [(ICActivity *)self performActivityBlock];
    v5[2]();
  }

  [(UIActivity *)self activityDidFinish:1];
  v6 = v8;
  if (v8)
  {
    v7 = [(UIActivity *)self activityType];
    (*(v8 + 2))(v8, 1, v7);

    v6 = v8;
  }
}

@end