@interface ULBLEKeyManager
- (NSArray)oobKeys;
- (NSArray)sameAccountBleIdentities;
- (ULBLEKeyManager)initWithDelegate:(ULBLEKeyManagerDelegate *)a3 environment:(id)a4 andDbStore:(ULDatabaseStoreInterface *)a5;
- (id).cxx_construct;
- (void)_handleULRapportMonitorEventIdentities:(id)a3;
- (void)backupSameAccountBleIdentities;
- (void)loadSameAccountBleIdentitiesFromDb;
- (void)onBleIdentityItem:(const void *)a3;
- (void)startMonitoringEvents;
- (void)stopMonitoringEvents;
@end

@implementation ULBLEKeyManager

- (ULBLEKeyManager)initWithDelegate:(ULBLEKeyManagerDelegate *)a3 environment:(id)a4 andDbStore:(ULDatabaseStoreInterface *)a5
{
  v8 = a4;
  v13.receiver = self;
  v13.super_class = ULBLEKeyManager;
  v9 = [(ULBLEKeyManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    [(ULBLEKeyManager *)v9 setEnvironment:v8];
    [(ULBLEKeyManager *)v10 setDbStore:a5];
    [(ULBLEKeyManager *)v10 setDelegate:a3];
    v11 = [MEMORY[0x277CBEB58] set];
    [(ULBLEKeyManager *)v10 setOobKeysInternal:v11];
  }

  return v10;
}

- (void)startMonitoringEvents
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = [(ULBLEKeyManager *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager startMonitoringEvents];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    buf = 68289026;
    v14 = 2082;
    v15 = "";
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, start monitoring}", &buf, 0x12u);
  }

  objc_initWeak(&buf, self);
  v6 = [(ULBLEKeyManager *)self environment];
  v7 = [v6 rapportMonitor];
  v8 = +[(ULEvent *)ULRapportMonitorEventIdentities];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__ULBLEKeyManager_startMonitoringEvents__block_invoke;
  v11[3] = &unk_2798D4460;
  objc_copyWeak(&v12, &buf);
  [v7 addObserver:self eventName:v8 handler:v11];

  v9 = [(ULBLEKeyManager *)self bleIdentityBridge];
  [v9 startMonitoring];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&buf);
  v10 = *MEMORY[0x277D85DE8];
}

void __40__ULBLEKeyManager_startMonitoringEvents__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleULRapportMonitorEventIdentities:v5];
  }
}

- (void)stopMonitoringEvents
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = [(ULBLEKeyManager *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager startMonitoringEvents];
  }

  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 68289026;
    v10[1] = 0;
    v11 = 2082;
    v12 = "";
    _os_log_impl(&dword_258FE9000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, stop monitoring}", v10, 0x12u);
  }

  v6 = [(ULBLEKeyManager *)self environment];
  v7 = [v6 rapportMonitor];
  [v7 removeObserver:self];

  v8 = [(ULBLEKeyManager *)self bleIdentityBridge];
  [v8 stopMonitoring];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)backupSameAccountBleIdentities
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(ULBLEKeyManager *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v13 = 0;
  v14 = 0;
  v15 = 0;
  next = self->sameAccountBleIdentitiesInternal.__table_.__first_node_.__next_;
  if (next)
  {
    do
    {
      if (next[56] == 1)
      {
        if (next[55] < 0)
        {
          std::string::__init_copy_ctor_external(v16, *(next + 4), *(next + 5));
        }

        else
        {
          *v16 = *(next + 2);
          *&v16[16] = *(next + 6);
        }
      }

      else
      {
        memset(v16, 0, 24);
      }

      if (next[88] == 1)
      {
        if (next[87] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *(next + 8), *(next + 9));
        }

        else
        {
          __p = *(next + 64);
        }
      }

      else
      {
        memset(&__p, 0, sizeof(__p));
      }

      v6 = v14;
      if (v14 >= v15)
      {
        v7 = std::vector<ULBluetoothIdentityDO>::__emplace_back_slow_path<boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&>(&v13, next + 2, v16, &__p, next + 16);
      }

      else
      {
        std::construct_at[abi:ne200100]<ULBluetoothIdentityDO,boost::uuids::uuid const&,std::string &,std::string &,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&,ULBluetoothIdentityDO*>(v14, next + 2, v16, &__p, next + 16);
        v7 = v6 + 72;
      }

      v14 = v7;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if ((v16[23] & 0x80000000) != 0)
      {
        operator delete(*v16);
      }

      next = *next;
    }

    while (next);
    if (v14 != v13)
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        [ULBLEKeyManager backupSameAccountBleIdentities];
      }

      v8 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 68289282;
        *&v16[8] = 2082;
        *&v16[10] = "";
        *&v16[18] = 2050;
        *&v16[20] = 0x8E38E38E38E38E39 * ((v14 - v13) >> 3);
        _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, back up BT identities data to DB, Num Entries:%{public}lu}", v16, 0x1Cu);
      }

      v9 = [(ULBLEKeyManager *)self dbStore:__p.__r_.__value_.__r.__words[0]];
      v10 = (*(v9->var0 + 4))(v9);
      [v10 insertDataObjects:&v13];
    }
  }

  *v16 = &v13;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](v16);
  v11 = *MEMORY[0x277D85DE8];
}

- (void)loadSameAccountBleIdentitiesFromDb
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [(ULBLEKeyManager *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = cl::chrono::CFAbsoluteTimeClock::now();
  v6 = [MEMORY[0x277CBEAA8] date];
  v7 = +[ULDefaultsSingleton shared];
  v8 = [v7 defaultsDictionary];

  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"ULNumberDaysToUseBtIdentities"];
  v10 = [v8 objectForKey:v9];
  if (v10 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v11 = [v10 intValue];
  }

  else
  {
    v11 = [&unk_286A71F70 intValue];
  }

  v12 = v11;

  CLMicroLocationTimeUtils::getTimeDeltaDaysAgo(v6, ~v12);
  v14 = v13;
  v15 = [(ULBLEKeyManager *)self dbStore];
  v16 = (*(v15->var0 + 4))(v15);
  v17 = v16;
  if (v16)
  {
    [v16 fetchBtIdentityEntriesBetweenTimes:v14 toTime:v5 + 86400.0];
  }

  else
  {
    v27 = 0;
    v28 = 0;
    v29 = 0;
  }

  if (v27 != v28)
  {
    if (*(v27 + 39) < 0)
    {
      v18 = *(v27 + 24);
      if (v18)
      {
        std::string::__init_copy_ctor_external(v30, *(v27 + 16), v18);
        goto LABEL_14;
      }
    }

    else if (*(v27 + 39))
    {
      *v30 = *(v27 + 16);
      *&v30[16] = *(v27 + 32);
LABEL_14:
      v19 = 1;
      goto LABEL_16;
    }

    v19 = 0;
    v30[0] = 0;
LABEL_16:
    v30[24] = v19;
    if (*(v27 + 63) < 0)
    {
      v20 = *(v27 + 48);
      if (v20)
      {
        std::string::__init_copy_ctor_external(&__p, *(v27 + 40), v20);
        goto LABEL_21;
      }
    }

    else if (*(v27 + 63))
    {
      __p = *(v27 + 40);
LABEL_21:
      v21 = 1;
      goto LABEL_23;
    }

    v21 = 0;
    __p.__r_.__value_.__s.__data_[0] = 0;
LABEL_23:
    v26 = v21;
    std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__emplace_unique_impl<boost::uuids::uuid const&,std::optional<std::string> &,std::optional<std::string> &,std::nullopt_t const&,std::chrono::time_point<cl::chrono::CFAbsoluteTimeClock,std::chrono::duration<long double,std::ratio<1l,1l>>> const&>();
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager backupSameAccountBleIdentities];
  }

  v22 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    size = self->sameAccountBleIdentitiesInternal.__table_.__size_;
    *v30 = 68289538;
    *&v30[8] = 2082;
    *&v30[10] = "";
    *&v30[18] = 2050;
    *&v30[20] = 0x8E38E38E38E38E39 * ((v28 - v27) >> 3);
    v31 = 2050;
    v32 = size;
    _os_log_impl(&dword_258FE9000, v22, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:BleKeyManager, loadBleIdentitiesFromDb, num of entries loaded:%{public}lu, Total number of identities in memory:%{public}lu}", v30, 0x26u);
  }

  *v30 = &v27;
  std::vector<ULBluetoothIdentityDO>::__destroy_vector::operator()[abi:ne200100](v30);

  v24 = *MEMORY[0x277D85DE8];
}

- (NSArray)sameAccountBleIdentities
{
  v3 = [(ULBLEKeyManager *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [MEMORY[0x277CBEB18] array];
  if (self->sameAccountBleIdentitiesInternal.__table_.__first_node_.__next_)
  {
    operator new();
  }

  v6 = [v5 copy];

  return v6;
}

- (NSArray)oobKeys
{
  v3 = [(ULBLEKeyManager *)self environment];
  v4 = [v3 queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(ULBLEKeyManager *)self oobKeysInternal];
  v6 = [v5 allObjects];

  return v6;
}

- (void)_handleULRapportMonitorEventIdentities:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (onceToken_MicroLocation_Default != -1)
  {
    [ULBLEKeyManager startMonitoringEvents];
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v7 identities];
    *buf = 138412290;
    v18 = v9;
    _os_log_impl(&dword_258FE9000, v8, OS_LOG_TYPE_DEBUG, "_handleULRapportMonitorEventIdentities: identities: %@", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v10 = [(ULBLEKeyManager *)self environment];
  v11 = [v10 queue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__ULBLEKeyManager__handleULRapportMonitorEventIdentities___block_invoke;
  v14[3] = &unk_2798D4E30;
  objc_copyWeak(&v16, buf);
  v15 = v7;
  v12 = v7;
  dispatch_async(v11, v14);

  objc_destroyWeak(&v16);
  objc_destroyWeak(buf);

  v13 = *MEMORY[0x277D85DE8];
}

void __58__ULBLEKeyManager__handleULRapportMonitorEventIdentities___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [MEMORY[0x277CBEB58] set];
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = [*(a1 + 32) identities];
    v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
    if (v4)
    {
      v5 = *v23;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(v3);
          }

          v7 = *(*(&v22 + 1) + 8 * i);
          v8 = [v7 btAddress];
          if (v8)
          {
            v9 = [v7 btIRKData];
            v10 = v9 == 0;

            if (!v10)
            {
              v11 = [ULOobKeyInfo alloc];
              v12 = [v7 btAddress];
              v13 = [v7 btIRKData];
              v14 = [(ULOobKeyInfo *)v11 initWithAddressData:v12 andIrkData:v13];

              [v2 addObject:v14];
            }
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v22 objects:v32 count:16];
      }

      while (v4);
    }

    if (onceToken_MicroLocation_Default != -1)
    {
      [ULBLEKeyManager backupSameAccountBleIdentities];
    }

    v15 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [v2 count];
      *buf = 68289282;
      v27 = 0;
      v28 = 2082;
      v29 = "";
      v30 = 2050;
      v31 = v16;
      _os_log_impl(&dword_258FE9000, v15, OS_LOG_TYPE_INFO, "{msg%{public}.0s:BLE oobkey updated, key array size:%{public}lu}", buf, 0x1Cu);
    }

    v17 = [WeakRetained oobKeysInternal];
    v18 = [v17 isEqual:v2];

    if ((v18 & 1) == 0)
    {
      v19 = [WeakRetained delegate];
      (*(*v19 + 16))(v19);
    }

    [WeakRetained setOobKeysInternal:v2];
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)onBleIdentityItem:(const void *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = *a3;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v18, a3 + 1);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v20, a3 + 3);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v22, a3 + 5);
  v24 = *(a3 + 14);
  v5 = [(ULBLEKeyManager *)self environment];
  v6 = [v5 queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3321888768;
  v8[2] = __37__ULBLEKeyManager_onBleIdentityItem___block_invoke;
  v8[3] = &unk_286A5B6C8;
  v8[4] = self;
  v9 = v17;
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v10, &v18);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&v12, &v20);
  std::__optional_copy_base<std::string,false>::__optional_copy_base[abi:ne200100](&__p, &v22);
  v16 = v24;
  dispatch_async(v6, v8);

  if (v15 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v13 == 1 && SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (v11 == 1 && SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (v23 == 1 && SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v21 == 1 && SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (v19 == 1 && SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void *__37__ULBLEKeyManager_onBleIdentityItem___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  std::__hash_table<ULBleIdentityItem,ULBleIdentityItem::HashItem,ULBleIdentityItem::PredicateItem,std::allocator<ULBleIdentityItem>>::__emplace_unique_key_args<ULBleIdentityItem,ULBleIdentityItem const&>((v2 + 8), a1 + 40);
  result = *(a1 + 32);
  if (v3 != result[4])
  {
    v5 = *(*[result delegate] + 16);

    return v5();
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 24) = 0u;
  *(self + 8) = 0u;
  *(self + 10) = 1065353216;
  return self;
}

@end