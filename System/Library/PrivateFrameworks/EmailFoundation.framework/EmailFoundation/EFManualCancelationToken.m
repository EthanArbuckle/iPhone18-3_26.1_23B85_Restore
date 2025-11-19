@interface EFManualCancelationToken
+ (EFManualCancelationToken)tokenWithCancelationBlock:(id)a3;
+ (EFManualCancelationToken)tokenWithLabel:(id)a3 cancelationBlock:(id)a4;
- (void)addCancelable:(id)a3;
@end

@implementation EFManualCancelationToken

+ (EFManualCancelationToken)tokenWithLabel:(id)a3 cancelationBlock:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithLabel:v6];
  [v8 addCancelationBlock:v7];

  return v8;
}

+ (EFManualCancelationToken)tokenWithCancelationBlock:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  [v5 addCancelationBlock:v4];

  return v5;
}

- (void)addCancelable:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__EFManualCancelationToken_addCancelable___block_invoke;
  v6[3] = &unk_1E8248580;
  v7 = v4;
  v5 = v4;
  [(EFManualCancelationToken *)self addCancelationBlock:v6];
}

@end