@interface MFMailboxProvider
- (MFMailboxProvider)initWithAccountsProvider:(id)provider;
- (id)_transformMailbox:(id)mailbox legacyMailboxToMailboxMap:(id)map objectIDToLegacyMailboxMap:(id)mailboxMap;
- (id)legacyMailboxForObjectID:(id)d;
- (void)test_tearDown;
@end

@implementation MFMailboxProvider

- (MFMailboxProvider)initWithAccountsProvider:(id)provider
{
  providerCopy = provider;
  v15.receiver = self;
  v15.super_class = MFMailboxProvider;
  v5 = [(EDMailboxProvider *)&v15 initWithAccountsProvider:providerCopy];
  if (v5)
  {
    v6 = objc_alloc_init(MFMailboxUidTransformer);
    mailboxUidTransformer = v5->_mailboxUidTransformer;
    v5->_mailboxUidTransformer = v6;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v5 selector:sel__mailboxInvalidated_ name:@"MailboxUidDidBecomeInvalidNotification" object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__didChangeMailboxList_ name:@"AccountMailboxListingDidChange" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v5 selector:sel__willReloadMailboxList_ name:@"AccountMailboxListingWillLoad" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v5 selector:sel__didReloadMailboxList_ name:@"AccountMailboxListingDidLoad" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v5 selector:sel__willFetchMailboxList_ name:@"AccountMailboxListingWillFetch" object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v5 selector:sel__didFetchMailboxList_ name:@"AccountMailboxListingDidFetch" object:0];
  }

  return v5;
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMailboxProvider.m" lineNumber:40 description:{@"%s can only be called from unit tests", "-[MFMailboxProvider test_tearDown]"}];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v6.receiver = self;
  v6.super_class = MFMailboxProvider;
  [(EDMailboxProvider *)&v6 test_tearDown];
}

- (id)_transformMailbox:(id)mailbox legacyMailboxToMailboxMap:(id)map objectIDToLegacyMailboxMap:(id)mailboxMap
{
  v5 = [(MFMailboxUidTransformer *)self->_mailboxUidTransformer transformMailboxUid:mailbox uidToMailboxMap:map objectIDToUidMap:mailboxMap];

  return v5;
}

- (id)legacyMailboxForObjectID:(id)d
{
  v5.receiver = self;
  v5.super_class = MFMailboxProvider;
  v3 = [(EDMailboxProvider *)&v5 legacyMailboxForObjectID:d];

  return v3;
}

@end