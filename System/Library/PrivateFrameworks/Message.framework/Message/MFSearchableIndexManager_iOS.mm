@interface MFSearchableIndexManager_iOS
+ (BOOL)shouldCancelSearchQuery;
+ (void)addSearchQueryCancelable:(id)a3;
+ (void)removeSearchQueryCancelable:(id)a3;
- (MFSearchableIndexManager_iOS)initWithDatabase:(id)a3 messagePersistence:(id)a4 richLinkPersistence:(id)a5 hookResponder:(id)a6;
@end

@implementation MFSearchableIndexManager_iOS

+ (BOOL)shouldCancelSearchQuery
{
  v2 = +[MFActivityMonitor currentMonitor];
  v3 = [v2 shouldCancel];

  return v3;
}

+ (void)addSearchQueryCancelable:(id)a3
{
  v4 = a3;
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 addCancelable:v4];
}

+ (void)removeSearchQueryCancelable:(id)a3
{
  v4 = a3;
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 removeCancelable:v4];
}

- (MFSearchableIndexManager_iOS)initWithDatabase:(id)a3 messagePersistence:(id)a4 richLinkPersistence:(id)a5 hookResponder:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v22.receiver = self;
  v22.super_class = MFSearchableIndexManager_iOS;
  v14 = [(EDSearchableIndexManager *)&v22 initWithDatabase:v10 messagePersistence:v11 richLinkPersistence:v12 hookResponder:v13];
  if (v14)
  {
    v15 = [(EDSearchableIndexPersistence *)[MFSearchableIndexPersistence_iOS alloc] initWithDatabase:v10 messagePersistence:v11 richLinkPersistence:v12 hookResponder:v13];
    persistence = v14->_persistence;
    v14->_persistence = &v15->super;

    v17 = [(EDSearchableIndexManager *)v14 analytics];
    [(EDSearchableIndexPersistence *)v14->_persistence setAnalytics:v17];

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.email.MFSearchableIndexManager_iOS.contentProtectionQueue", v18);
    contentProtectionQueue = v14->_contentProtectionQueue;
    v14->_contentProtectionQueue = v19;
  }

  return v14;
}

@end