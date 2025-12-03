@interface DBCalendarIconImageProvider
+ (id)sharedInstance;
- (DBCalendarIconImageProvider)init;
- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (id)iconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options;
- (void)calendarIconImageProviderHasChanged:(id)changed;
- (void)registerObserver:(id)observer;
- (void)unregisterObserver:(id)observer;
@end

@implementation DBCalendarIconImageProvider

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[DBCalendarIconImageProvider sharedInstance];
  }

  v3 = sharedInstance___iconImageProvider;

  return v3;
}

uint64_t __45__DBCalendarIconImageProvider_sharedInstance__block_invoke()
{
  sharedInstance___iconImageProvider = objc_alloc_init(DBCalendarIconImageProvider);

  return MEMORY[0x2821F96F8]();
}

- (DBCalendarIconImageProvider)init
{
  v8.receiver = self;
  v8.super_class = DBCalendarIconImageProvider;
  v2 = [(DBCalendarIconImageProvider *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D660A8]);
    imageProvider = v2->_imageProvider;
    v2->_imageProvider = v3;

    [(SBCalendarIconImageProvider *)v2->_imageProvider setDelegate:v2];
    v5 = [objc_alloc(MEMORY[0x277CF89C0]) initWithProtocol:&unk_285AE8458];
    observers = v2->_observers;
    v2->_observers = v5;
  }

  return v2;
}

- (id)iconImageWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  imageProvider = [(DBCalendarIconImageProvider *)self imageProvider];
  v17 = [imageProvider iconImageWithInfo:infoCopy traitCollection:collection options:{v13, v12, v11, v10}];

  return v17;
}

- (id)iconLayerWithInfo:(SBIconImageInfo *)info traitCollection:(id)collection options:(unint64_t)options
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  infoCopy = info;
  imageProvider = [(DBCalendarIconImageProvider *)self imageProvider];
  v17 = [imageProvider iconLayerWithInfo:infoCopy traitCollection:collection options:{v13, v12, v11, v10}];

  return v17;
}

- (void)calendarIconImageProviderHasChanged:(id)changed
{
  observers = [(DBCalendarIconImageProvider *)self observers];
  [observers didUpdateImage];
}

- (void)unregisterObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBCalendarIconImageProvider *)self observers];
  [observers unregisterObserver:observerCopy];
}

- (void)registerObserver:(id)observer
{
  observerCopy = observer;
  observers = [(DBCalendarIconImageProvider *)self observers];
  [observers registerObserver:observerCopy];
}

@end