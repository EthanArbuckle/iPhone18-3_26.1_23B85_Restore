@interface FKAddressBook
+ (id)sharedInstance;
+ (void)performBlock:(id)a3;
- (FKAddressBook)init;
- (void)dealloc;
@end

@implementation FKAddressBook

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FKAddressBook sharedInstance];
  }

  v3 = sharedInstance__sharedFKAddressBook;

  return v3;
}

uint64_t __31__FKAddressBook_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance__sharedFKAddressBook;
  sharedInstance__sharedFKAddressBook = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (FKAddressBook)init
{
  v12.receiver = self;
  v12.super_class = FKAddressBook;
  v2 = [(FKAddressBook *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v4 = dispatch_queue_create("FriendKitAddressBookQueue", v3);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v4;

    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v11[3] = 0;
    v6 = v2->_operationQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __21__FKAddressBook_init__block_invoke;
    v8[3] = &unk_27916A5E8;
    v10 = v11;
    v9 = v2;
    dispatch_sync(v6, v8);

    _Block_object_dispose(v11, 8);
  }

  return v2;
}

void __21__FKAddressBook_init__block_invoke(uint64_t a1)
{
  error = 0;
  *(*(*(a1 + 40) + 8) + 24) = ABAddressBookCreateWithOptions(0, &error);
  v2 = *(*(*(a1 + 40) + 8) + 24);
  if (!v2)
  {
    v3 = _FKGetLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __21__FKAddressBook_init__block_invoke_cold_1(&error, v3);
    }

    v2 = *(*(*(a1 + 40) + 8) + 24);
  }

  *(*(a1 + 32) + 8) = v2;
}

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  v4.receiver = self;
  v4.super_class = FKAddressBook;
  [(FKAddressBook *)&v4 dealloc];
}

+ (void)performBlock:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [objc_opt_class() sharedInstance];
    v5 = [v4 operationQueue];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __30__FKAddressBook_performBlock___block_invoke;
    v7[3] = &unk_27916A610;
    v8 = v4;
    v9 = v3;
    v6 = v4;
    dispatch_sync(v5, v7);
  }
}

uint64_t __30__FKAddressBook_performBlock___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) addressBook];
  v3 = *(v1 + 16);

  return v3(v1, v2);
}

void __21__FKAddressBook_init__block_invoke_cold_1(uint64_t *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v4 = 136315650;
  v5 = "[FKAddressBook init]_block_invoke";
  v6 = 1024;
  v7 = 44;
  v8 = 2112;
  v9 = v2;
  _os_log_error_impl(&dword_24BC19000, a2, OS_LOG_TYPE_ERROR, "%s (%d) FriendKit failed to create an address book instance: %@", &v4, 0x1Cu);
  v3 = *MEMORY[0x277D85DE8];
}

@end