uint64_t CMFItemCreateWithPhoneNumber(uint64_t a1)
{
  v2 = [CommunicationFilterItem alloc];

  return [(CommunicationFilterItem *)v2 initWithPhoneNumber:a1];
}

BOOL CMFBlockListIsItemBlocked(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = +[CommunicationsFilterBlockList sharedInstance];
      objc_sync_enter(v3);
      v4 = [+[CommunicationsFilterBlockList sharedInstance](CommunicationsFilterBlockList isItemInList:"isItemInList:", a1];
      objc_sync_exit(v3);
    }

    else
    {
      v5 = CMFDefaultLog();
      v4 = 0;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138412290;
        v9 = a1;
        _os_log_impl(&dword_243BDE000, v5, OS_LOG_TYPE_DEFAULT, "[WARN] received invalid object = %@", &v8, 0xCu);
        v4 = 0;
      }
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v4 = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

CommunicationFilterItem *CreateCMFItemFromString(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [a1 _appearsToBeEmail];
    v4 = [a1 _appearsToBePhoneNumber];
    if (v4)
    {
      v5 = IMPhoneNumberRefCopyForPhoneNumber();
      if (v5)
      {
        v6 = v5;
        v7 = [[CommunicationFilterItem alloc] initWithPhoneNumber:v5];
        CFRelease(v6);
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = [[CommunicationFilterItem alloc] initWithEmailAddress:a1];
    }

    v8 = CMFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218496;
      v12 = a1;
      v13 = 1024;
      v14 = v3;
      v15 = 1024;
      v16 = v4;
      _os_log_impl(&dword_243BDE000, v8, OS_LOG_TYPE_DEFAULT, "identifier:%p, isEmail:%d isPhone:%d", &v11, 0x18u);
    }

    objc_autoreleasePoolPop(v2);
  }

  else
  {
    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t CMFDefaultLog()
{
  if (CMFDefaultLog_onceToken != -1)
  {
    CMFDefaultLog_cold_1();
  }

  return CMFDefaultLog_CMFDefaultLog;
}

void CMFBlockListCopyItemsForAllServicesService(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  if (a1)
  {
    v3 = +[CommunicationsFilterBlockList sharedInstance];
    objc_sync_enter(v3);
    v4 = objc_autoreleasePoolPush();
    v5 = [+[CommunicationsFilterBlockList sharedInstance](CommunicationsFilterBlockList copyAllItems];
    objc_autoreleasePoolPop(v4);
    *a1 = v5;
    objc_sync_exit(v3);
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t CMFItemCreateWithEmailAddress(uint64_t a1)
{
  v2 = [CommunicationFilterItem alloc];

  return [(CommunicationFilterItem *)v2 initWithEmailAddress:a1];
}

void sub_243BDF8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

os_log_t __CMFDefaultLog_block_invoke()
{
  result = os_log_create("com.apple.calls.communicationsfilter", "Default");
  CMFDefaultLog_CMFDefaultLog = result;
  return result;
}

void CMFBlockListAddItemForAllServices(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (a1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = +[CommunicationsFilterBlockList sharedInstance];
    objc_sync_enter(v3);
    [+[CommunicationsFilterBlockList sharedInstance](CommunicationsFilterBlockList addItemForAllServices:"addItemForAllServices:", a1];
    objc_sync_exit(v3);
  }

  else
  {
    v4 = CMFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&dword_243BDE000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] received invalid object = %@", &v6, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

void CMFBlockListRemoveItemFromAllServices(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  if (a1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = +[CommunicationsFilterBlockList sharedInstance];
    objc_sync_enter(v3);
    [+[CommunicationsFilterBlockList sharedInstance](CommunicationsFilterBlockList removeItemForAllServices:"removeItemForAllServices:", a1];
    objc_sync_exit(v3);
  }

  else
  {
    v4 = CMFDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = a1;
      _os_log_impl(&dword_243BDE000, v4, OS_LOG_TYPE_DEFAULT, "[WARN] received invalid object = %@", &v6, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v2);
  v5 = *MEMORY[0x277D85DE8];
}

id CMFBlockListGetBlockedStatusForItems(const __CFArray *a1)
{
  if (!a1 || !CFArrayGetCount(a1))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = +[CommunicationsFilterBlockList sharedInstance];
  objc_sync_enter(v3);
  v4 = [+[CommunicationsFilterBlockList sharedInstance](CommunicationsFilterBlockList areItemsInList:"areItemsInList:", a1];
  objc_sync_exit(v3);
  objc_autoreleasePoolPop(v2);

  return v4;
}

uint64_t CMFItemGetType(void *a1)
{
  if ([a1 isPhoneNumber])
  {
    return 0;
  }

  if (MEMORY[0x245D4C530]([a1 emailAddress]))
  {
    return 2;
  }

  return 1;
}

void *CMFItemCopyPhoneNumber(void *result, void *a2)
{
  if (a2)
  {
    v3 = [result phoneNumber];
    *a2 = v3;

    return CFRetain(v3);
  }

  return result;
}

void *CMFItemCopyEmailAddress(void *result, void *a2)
{
  if (a2)
  {
    result = [objc_msgSend(result "emailAddress")];
    *a2 = result;
  }

  return result;
}

uint64_t CMFItemCreateWithBusinessID(uint64_t a1)
{
  v2 = [CommunicationFilterItem alloc];

  return [(CommunicationFilterItem *)v2 initWithEmailAddress:a1];
}

void *CMFItemCopyBusinessID(void *result, void *a2)
{
  if (a2)
  {
    result = [objc_msgSend(result "emailAddress")];
    *a2 = result;
  }

  return result;
}

void -[CommunicationsFilterBlockListCache _blockListChanged](CommunicationsFilterBlockListCache *self, SEL a2)
{
  v3 = CMFDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_243BDE000, v3, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  v4 = self;
  objc_sync_enter(v4);
  [(CommunicationsFilterBlockListCache *)v4 syncListEmptyState];
  [(NSMutableArray *)v4->_recentItems removeAllObjects];
  objc_sync_exit(v4);

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 __mainThreadPostNotificationName:@"CMFBlockListUpdatedNotification" object:0];
}

void sub_243BE1850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_243BE1B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t getEnumTagSinglePayload for Notifications(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for Notifications(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}