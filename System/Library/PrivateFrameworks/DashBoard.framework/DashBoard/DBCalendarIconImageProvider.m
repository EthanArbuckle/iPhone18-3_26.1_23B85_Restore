@interface DBCalendarIconImageProvider
+ (id)sharedInstance;
- (DBCalendarIconImageProvider)init;
- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (id)iconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5;
- (void)calendarIconImageProviderHasChanged:(id)a3;
- (void)registerObserver:(id)a3;
- (void)unregisterObserver:(id)a3;
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

- (id)iconImageWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [(DBCalendarIconImageProvider *)self imageProvider];
  v17 = [v16 iconImageWithInfo:v15 traitCollection:a4 options:{v13, v12, v11, v10}];

  return v17;
}

- (id)iconLayerWithInfo:(SBIconImageInfo *)a3 traitCollection:(id)a4 options:(unint64_t)a5
{
  v10 = v8;
  v11 = v7;
  v12 = v6;
  v13 = v5;
  v15 = a3;
  v16 = [(DBCalendarIconImageProvider *)self imageProvider];
  v17 = [v16 iconLayerWithInfo:v15 traitCollection:a4 options:{v13, v12, v11, v10}];

  return v17;
}

- (void)calendarIconImageProviderHasChanged:(id)a3
{
  v3 = [(DBCalendarIconImageProvider *)self observers];
  [v3 didUpdateImage];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBCalendarIconImageProvider *)self observers];
  [v5 unregisterObserver:v4];
}

- (void)registerObserver:(id)a3
{
  v4 = a3;
  v5 = [(DBCalendarIconImageProvider *)self observers];
  [v5 registerObserver:v4];
}

@end