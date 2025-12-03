@interface HOActivationManager
+ (id)sharedInstance;
- (HOActivationManager)init;
- (void)_enteredForeground:(id)foreground;
@end

@implementation HOActivationManager

+ (id)sharedInstance
{
  if (_MergedGlobals_627 != -1)
  {
    dispatch_once(&_MergedGlobals_627, &__block_literal_global_3_2);
  }

  v3 = qword_281121FA0;

  return v3;
}

void __37__HOActivationManager_sharedInstance__block_invoke_2()
{
  v0 = objc_opt_new();
  v1 = qword_281121FA0;
  qword_281121FA0 = v0;
}

- (HOActivationManager)init
{
  v6.receiver = self;
  v6.super_class = HOActivationManager;
  v2 = [(HOActivationManager *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(HOActivationManager *)v2 setLastEnteredForegroundDate:date];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__enteredForeground_ name:*MEMORY[0x277D76758] object:0];
  }

  return v2;
}

- (void)_enteredForeground:(id)foreground
{
  date = [MEMORY[0x277CBEAA8] date];
  [(HOActivationManager *)self setLastEnteredForegroundDate:date];
}

@end