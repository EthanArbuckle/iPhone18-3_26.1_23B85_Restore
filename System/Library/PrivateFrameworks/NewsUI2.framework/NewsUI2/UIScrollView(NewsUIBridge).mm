@interface UIScrollView(NewsUIBridge)
- (void)ts_performScrollTest:()NewsUIBridge iterations:length:completion:;
@end

@implementation UIScrollView(NewsUIBridge)

- (void)ts_performScrollTest:()NewsUIBridge iterations:length:completion:
{
  v9 = a6;
  v10 = objc_alloc_init(MEMORY[0x277D759C8]);
  [v10 setIterations:a5];
  [v10 setLength:a2];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __80__UIScrollView_NewsUIBridge__ts_performScrollTest_iterations_length_completion___block_invoke;
  v12[3] = &unk_2782420A0;
  v13 = v9;
  v11 = v9;
  [self _performScrollTestWithParameters:v10 completionBlock:v12];
}

@end