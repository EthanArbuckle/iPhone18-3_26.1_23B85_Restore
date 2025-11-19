@interface MSMediaIntentExecutor
- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5;
- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4;
- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4;
- (void)executor:(id)a3 needsValueWithRequest:(id)a4;
@end

@implementation MSMediaIntentExecutor

- (void)executor:(id)a3 needsConfirmationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22C9D5380();
}

- (void)executor:(id)a3 needsDisambiguationWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22C9D5570();
}

- (void)executor:(id)a3 needsValueWithRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22C9D5760();
}

- (void)executor:(id)a3 didPerformActionWithResult:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_22C9D5950(v11, a4);
}

@end