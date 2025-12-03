@interface EFManualCancelationToken
+ (EFManualCancelationToken)tokenWithCancelationBlock:(id)block;
+ (EFManualCancelationToken)tokenWithLabel:(id)label cancelationBlock:(id)block;
- (void)addCancelable:(id)cancelable;
@end

@implementation EFManualCancelationToken

+ (EFManualCancelationToken)tokenWithLabel:(id)label cancelationBlock:(id)block
{
  labelCopy = label;
  blockCopy = block;
  v8 = [[self alloc] initWithLabel:labelCopy];
  [v8 addCancelationBlock:blockCopy];

  return v8;
}

+ (EFManualCancelationToken)tokenWithCancelationBlock:(id)block
{
  blockCopy = block;
  v5 = objc_alloc_init(self);
  [v5 addCancelationBlock:blockCopy];

  return v5;
}

- (void)addCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __42__EFManualCancelationToken_addCancelable___block_invoke;
  v6[3] = &unk_1E8248580;
  v7 = cancelableCopy;
  v5 = cancelableCopy;
  [(EFManualCancelationToken *)self addCancelationBlock:v6];
}

@end