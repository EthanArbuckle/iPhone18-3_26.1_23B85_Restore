@interface SGCuratedChangeNotificationsCalendarListener
- (void)startListening;
- (void)stopListening;
@end

@implementation SGCuratedChangeNotificationsCalendarListener

- (void)stopListening
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self->_notificationCenterToken];
}

- (void)startListening
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CC5948];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SGCuratedChangeNotificationsCalendarListener_startListening__block_invoke;
  v7[3] = &unk_27894EB18;
  objc_copyWeak(&v8, &location);
  v5 = [defaultCenter addObserverForName:v4 object:0 queue:0 usingBlock:v7];
  notificationCenterToken = self->_notificationCenterToken;
  self->_notificationCenterToken = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__SGCuratedChangeNotificationsCalendarListener_startListening__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained fire];
}

@end