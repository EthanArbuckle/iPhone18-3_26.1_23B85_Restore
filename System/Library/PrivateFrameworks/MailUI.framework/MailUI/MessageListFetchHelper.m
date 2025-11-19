@interface MessageListFetchHelper
+ (OS_os_log)log;
- (BOOL)fetchMailboxesIsUserInitiated:(BOOL)a3;
- (MessageListFetchHelper)initWithFetchController:(id)a3 mailboxes:(id)a4;
- (void)setMailboxes:(id)a3;
@end

@implementation MessageListFetchHelper

void __29__MessageListFetchHelper_log__block_invoke(uint64_t a1)
{
  v4 = NSStringFromClass(*(a1 + 32));
  v1 = v4;
  v2 = os_log_create("com.apple.email", [v4 UTF8String]);
  v3 = log_log_4;
  log_log_4 = v2;
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__MessageListFetchHelper_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (log_onceToken_4 != -1)
  {
    dispatch_once(&log_onceToken_4, block);
  }

  v2 = log_log_4;

  return v2;
}

- (MessageListFetchHelper)initWithFetchController:(id)a3 mailboxes:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = MessageListFetchHelper;
  v9 = [(MessageListFetchHelper *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(MessageListFetchHelper *)v9 setMailboxes:v8];
    objc_storeStrong(&v10->_fetchController, a3);
  }

  return v10;
}

- (void)setMailboxes:(id)a3
{
  v8 = a3;
  if (![(NSArray *)self->_mailboxes isEqualToArray:?])
  {
    v4 = [v8 ef_filter:&__block_literal_global_5];
    mailboxes = self->_mailboxes;
    self->_mailboxes = v4;
    v6 = v4;

    v7 = [(NSArray *)v6 count];
    self->_mailboxesNeedFetching = v7 != 0;
  }
}

- (BOOL)fetchMailboxesIsUserInitiated:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x277D85DE8];
  p_mailboxesNeedFetching = &self->_mailboxesNeedFetching;
  if (!self->_mailboxesNeedFetching && !a3)
  {
    v6 = +[MessageListFetchHelper log];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(MessageListFetchHelper *)p_mailboxesNeedFetching fetchMailboxesIsUserInitiated:v6];
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  self->_mailboxesNeedFetching = 0;
  v7 = [(MessageListFetchHelper *)self mailboxes];
  v8 = [v7 count];

  v6 = +[MessageListFetchHelper log];
  v9 = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (!v8)
  {
    if (v9)
    {
      [MessageListFetchHelper fetchMailboxesIsUserInitiated:v6];
    }

    goto LABEL_13;
  }

  if (v9)
  {
    v15 = [(MessageListFetchHelper *)self fetchController];
    mailboxesNeedFetching = self->_mailboxesNeedFetching;
    v17 = 134218496;
    v18 = v15;
    v19 = 1024;
    v20 = mailboxesNeedFetching;
    v21 = 1024;
    v22 = v3;
    _os_log_debug_impl(&dword_214A5E000, v6, OS_LOG_TYPE_DEBUG, "Fetching (%p). _mailboxesNeedFetching: %{BOOL}d, userInitiated: %{BOOL}d", &v17, 0x18u);
  }

  v10 = MEMORY[0x277D06BC0];
  if (!v3)
  {
    v10 = MEMORY[0x277D06BB8];
  }

  v11 = *v10;
  v6 = [(MessageListFetchHelper *)self fetchController];
  v12 = [(MessageListFetchHelper *)self mailboxes];
  [v6 performFetchOfType:v11 mailboxes:v12];

  v13 = 1;
LABEL_14:

  return v13;
}

- (void)fetchMailboxesIsUserInitiated:(unsigned __int8 *)a1 .cold.1(unsigned __int8 *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3[0] = 67109376;
  v3[1] = v2;
  v4 = 1024;
  v5 = 0;
  _os_log_debug_impl(&dword_214A5E000, a2, OS_LOG_TYPE_DEBUG, "Not fetching. _mailboxesNeedFetching: %{BOOL}d, userInitiated: %{BOOL}d", v3, 0xEu);
}

@end