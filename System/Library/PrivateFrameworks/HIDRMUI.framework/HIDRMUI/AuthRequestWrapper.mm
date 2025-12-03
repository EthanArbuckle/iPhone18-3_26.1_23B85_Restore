@interface AuthRequestWrapper
+ (id)requestWrapperWithCompletion:(id)completion andUserNotification:(id)notification;
- (AuthRequestWrapper)init;
@end

@implementation AuthRequestWrapper

+ (id)requestWrapperWithCompletion:(id)completion andUserNotification:(id)notification
{
  completionCopy = completion;
  notificationCopy = notification;
  v7 = objc_alloc_init(AuthRequestWrapper);
  objc_initWeak(&location, v7);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__AuthRequestWrapper_requestWrapperWithCompletion_andUserNotification___block_invoke;
  v10[3] = &unk_2796A3198;
  objc_copyWeak(&v12, &location);
  v8 = completionCopy;
  v11 = v8;
  [(AuthRequestWrapper *)v7 setCompletionHandler:v10];
  [(AuthRequestWrapper *)v7 setUserNotification:notificationCopy];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v7;
}

void __71__AuthRequestWrapper_requestWrapperWithCompletion_andUserNotification___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCompletionHandler:0];
  (*(*(a1 + 32) + 16))();
}

- (AuthRequestWrapper)init
{
  v10.receiver = self;
  v10.super_class = AuthRequestWrapper;
  v2 = [(AuthRequestWrapper *)&v10 init];
  v3 = v2;
  if (v2)
  {
    completionHandler = v2->_completionHandler;
    v2->_completionHandler = 0;

    userNotification = v3->_userNotification;
    v3->_userNotification = 0;

    pairingCodeDigits = v3->_pairingCodeDigits;
    v3->_pairingStatus = 0;
    v3->_pairingCodeDigits = 0;

    array = [MEMORY[0x277CBEB18] array];
    pairingCodeDigitsEntered = v3->_pairingCodeDigitsEntered;
    v3->_pairingCodeDigitsEntered = array;

    v3->_pairingFailureCount = 0;
  }

  return v3;
}

@end