@interface PKPaymentOptionsSynchronization
+ (BOOL)shouldSyncToCloud;
- (PKPaymentOptionsSynchronization)init;
- (PKPaymentOptionsSynchronizationDelegate)delegate;
- (void)_updateSynchronizationBehavior;
@end

@implementation PKPaymentOptionsSynchronization

+ (BOOL)shouldSyncToCloud
{
  v2 = PKCurrentRegion();
  v3 = [v2 caseInsensitiveCompare:@"CN"] != 0;

  return v3;
}

- (PKPaymentOptionsSynchronization)init
{
  v6.receiver = self;
  v6.super_class = PKPaymentOptionsSynchronization;
  v2 = [(PKPaymentOptionsSynchronization *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(PKPaymentOptionsSynchronization *)v2 _updateSynchronizationBehavior];
    v4 = [MEMORY[0x1E696AD88] defaultCenter];
    [v4 addObserver:v3 selector:sel__localeDidChangeNotification_ name:*MEMORY[0x1E695D8F0] object:0];
  }

  return v3;
}

- (void)_updateSynchronizationBehavior
{
  shouldSyncToCloud = self->_shouldSyncToCloud;
  v4 = [objc_opt_class() shouldSyncToCloud];
  self->_shouldSyncToCloud = v4;
  if (shouldSyncToCloud != v4)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v9 = WeakRetained;
      v7 = objc_opt_respondsToSelector();
      v6 = v9;
      if (v7)
      {
        v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_shouldSyncToCloud];
        [v9 performSelector:sel_optionsSynchronizationDidChangeTo_ withObject:v8];

        v6 = v9;
      }
    }
  }
}

- (PKPaymentOptionsSynchronizationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end