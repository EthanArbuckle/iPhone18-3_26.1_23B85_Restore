@interface MFSearchableIndexManager_iOS
+ (BOOL)shouldCancelSearchQuery;
+ (void)addSearchQueryCancelable:(id)cancelable;
+ (void)removeSearchQueryCancelable:(id)cancelable;
- (MFSearchableIndexManager_iOS)initWithDatabase:(id)database messagePersistence:(id)persistence richLinkPersistence:(id)linkPersistence hookResponder:(id)responder;
@end

@implementation MFSearchableIndexManager_iOS

+ (BOOL)shouldCancelSearchQuery
{
  v2 = +[MFActivityMonitor currentMonitor];
  shouldCancel = [v2 shouldCancel];

  return shouldCancel;
}

+ (void)addSearchQueryCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 addCancelable:cancelableCopy];
}

+ (void)removeSearchQueryCancelable:(id)cancelable
{
  cancelableCopy = cancelable;
  v3 = +[MFActivityMonitor currentMonitor];
  [v3 removeCancelable:cancelableCopy];
}

- (MFSearchableIndexManager_iOS)initWithDatabase:(id)database messagePersistence:(id)persistence richLinkPersistence:(id)linkPersistence hookResponder:(id)responder
{
  databaseCopy = database;
  persistenceCopy = persistence;
  linkPersistenceCopy = linkPersistence;
  responderCopy = responder;
  v22.receiver = self;
  v22.super_class = MFSearchableIndexManager_iOS;
  v14 = [(EDSearchableIndexManager *)&v22 initWithDatabase:databaseCopy messagePersistence:persistenceCopy richLinkPersistence:linkPersistenceCopy hookResponder:responderCopy];
  if (v14)
  {
    v15 = [(EDSearchableIndexPersistence *)[MFSearchableIndexPersistence_iOS alloc] initWithDatabase:databaseCopy messagePersistence:persistenceCopy richLinkPersistence:linkPersistenceCopy hookResponder:responderCopy];
    persistence = v14->_persistence;
    v14->_persistence = &v15->super;

    analytics = [(EDSearchableIndexManager *)v14 analytics];
    [(EDSearchableIndexPersistence *)v14->_persistence setAnalytics:analytics];

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create("com.apple.email.MFSearchableIndexManager_iOS.contentProtectionQueue", v18);
    contentProtectionQueue = v14->_contentProtectionQueue;
    v14->_contentProtectionQueue = v19;
  }

  return v14;
}

@end