void _resetDataSourceState()
{
  if (sDataSourceCreators)
  {
    CFRelease(sDataSourceCreators);
    sDataSourceCreators = 0;
  }
}

uint64_t CreateDataSourceForDataClassName(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFStringRef *a5)
{
  if (a3)
  {
    if (a1)
    {
      if ((sDataSourcesInitialized & 1) == 0)
      {
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.Bookmarks", a5);
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.Calendars", a5);
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.Contacts", a5);
        _dataSourceRegisterCreatorForDataClassName(@"com.apple.MailAccounts", a5);
        sDataSourcesInitialized = 1;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      if (sDataSourceCreators && (Value = CFDictionaryGetValue(sDataSourceCreators, a1)) != 0)
      {

        return Value(a3, a2, a4, a5);
      }

      else
      {
        if (a5)
        {
          *a5 = CFStringCreateWithFormat(0, 0, @"CreateDataSourceForDataClassName: Data Source is not registered for %@", a1);
        }

        return 0xFFFFFFFFLL;
      }
    }

    v12 = @"CreateDataSourceForDataClassName: Parameter for dataClassName is NULL";
  }

  else
  {
    v12 = @"CreateDataSourceForDataClassName: Out parameter for dataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a5, v12);
}

uint64_t DataSourceDeleteDataSource(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 128))();
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceDeleteDataSource: DataSource is NULL");
  }
}

uint64_t DataSourceCanSyncWithVersion(uint64_t a1, const __CFNumber *a2, void *a3, uint64_t a4)
{
  number = 0;
  (*(a1 + 16))(a1, &number, a4);
  valuePtr = 0;
  if (a2 && number)
  {
    CFNumberGetValue(number, kCFNumberIntType, &valuePtr + 4);
    CFNumberGetValue(a2, kCFNumberIntType, &valuePtr);
    if (valuePtr != -1 && SHIDWORD(valuePtr) > valuePtr)
    {
      v10 = (*(a1 + 24))(a1, a2, a3, a4);
      goto LABEL_11;
    }

    v10 = 0;
    v9 = MEMORY[0x277CBED28];
  }

  else
  {
    v10 = 0;
    v9 = MEMORY[0x277CBED10];
  }

  *a3 = *v9;
LABEL_11:
  if (DLShouldLog())
  {
    *a3;
    *MEMORY[0x277CBED28];
    _DLLog();
  }

  return v10;
}

uint64_t DataSourceMigrateRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v5 = @"DataSourceMigrateRecords: source DataSource is NULL";
    return MEMORY[0x2821867D0](4294967293, a3, v5);
  }

  if (!a2)
  {
    v5 = @"DataSourceMigrateRecords: destination DataSource is NULL";
    return MEMORY[0x2821867D0](4294967293, a3, v5);
  }

  if (a1 == a2)
  {
    v5 = @"DataSourceMigrateRecords: What are you thinking?? You can't migrate from and to the same store.";
    return MEMORY[0x2821867D0](4294967293, a3, v5);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    return v3();
  }

  else
  {
    return 0;
  }
}

uint64_t DataSourceRemoveStore(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return MEMORY[0x2821867D0](4294967293, a3, @"DataSourceRemoveStore: DataSource is NULL");
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    return v3();
  }

  else
  {
    return 0;
  }
}

uint64_t DataSourceGetSyncTypeAndExchangeSyncAnchors(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CFTypeRef *a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    if (a2)
    {
      if (a5)
      {
        if (a6)
        {
          v8 = (*(a1 + 48))();
          if (*a5)
          {
            if (CFStringCompare(*a5, @"---DATACLASS_CLEARED---", 0) == kCFCompareEqualTo)
            {
              CFRelease(*a5);
              *a5 = 0;
            }
          }

          return v8;
        }

        v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: Out parameter for nextDeviceAnchor is NULL";
      }

      else
      {
        v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: Out parameter for previousComputerAnchor is NULL";
      }
    }

    else
    {
      v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: Out parameter for syncType is NULL";
    }
  }

  else
  {
    v10 = @"SADataSourceGetSyncTypeAndSyncAnchors: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a7, v10);
}

uint64_t DataSourceClearSyncAnchors(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceClearSyncAnchors: DataSource is NULL");
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t DataSourceClearAllRecords(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 64))();
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceClearAllRecords: DataSource is NULL");
  }
}

uint64_t DataSourceGetChanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        return (*(a1 + 72))();
      }

      v5 = @"DataSourceGetChanges: Out parameter for moreComing is NULL";
    }

    else
    {
      v5 = @"DataSourceGetChanges: Out parameter for changes is NULL";
    }
  }

  else
  {
    v5 = @"DataSourceGetChanges: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a4, v5);
}

uint64_t DataSourceGetAllRecords(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        return (*(a1 + 80))();
      }

      v5 = @"DataSourceGetAllRecords: Out parameter for moreComing is NULL";
    }

    else
    {
      v5 = @"DataSourceGetAllRecords: Out parameter for records is NULL";
    }
  }

  else
  {
    v5 = @"DataSourceGetAllRecords: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a4, v5);
}

uint64_t DataSourceGetCountOfRecords(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return (*(a1 + 88))();
    }

    v4 = @"DataSourceGetCountOfRecords: Out parameter for count is NULL";
  }

  else
  {
    v4 = @"DataSourceGetCountOfRecords: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a3, v4);
}

uint64_t DataSourceProcessChanges(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (a2)
    {
      if (a4)
      {
        return (*(a1 + 96))();
      }

      v7 = @"DataSourceProcessChanges: Out parameter for oldToNewIdentifiers is NULL";
    }

    else
    {
      v7 = @"DataSourceProcessChanges: changes parameter is NULL";
    }
  }

  else
  {
    v7 = @"DataSourceProcessChanges: DataSource is NULL";
  }

  return MEMORY[0x2821867D0](4294967293, a6, v7);
}

uint64_t DataSourceCommit(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 104))();
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceCommit: DataSource is NULL");
  }
}

uint64_t DataSourceRollback(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return (*(a1 + 112))();
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a2, @"DataSourceRollback: DataSource is NULL");
  }
}

uint64_t DataSourceGetEntityTypeProcessOrder(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return (*(a1 + 120))();
  }

  else
  {
    return MEMORY[0x2821867D0](4294967293, a3, @"DataSourceGetEntityTypeProcessOrder: DataSource is NULL");
  }
}

void _dataSourceRegisterCreatorForDataClassName(CFStringRef theString1, uint64_t a2)
{
  if (theString1)
  {
    if (!sDataSourceCreators)
    {
      sDataSourceCreators = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], 0);
    }

    v4 = CFStringCompare(theString1, @"com.apple.Bookmarks", 0);
    v5 = BookmarksDataSourceCreator;
    if (v4)
    {
      v6 = CFStringCompare(theString1, @"com.apple.Calendars", 0);
      v5 = CalendarsDataSourceCreator;
      if (v6)
      {
        v7 = CFStringCompare(theString1, @"com.apple.Contacts", 0);
        v5 = ContactsDataSourceCreator;
        if (v7)
        {
          v8 = CFStringCompare(theString1, @"com.apple.MailAccounts", 0);
          v5 = MailAccountsDataSourceCreator;
          if (v8)
          {
            v5 = 0;
          }
        }
      }
    }

    v9 = sDataSourceCreators;

    CFDictionarySetValue(v9, theString1, v5);
  }

  else
  {

    MEMORY[0x2821867D0](4294967293, a2, @"_dataSourceRegisterCreatorForDataClassName: Parameter for dataClassName is NULL");
  }
}

uint64_t ContactsDataSourceCreator(void *a1, uint64_t a2, const __CFDictionary *a3, CFStringRef *a4)
{
  v8 = malloc_type_calloc(0x1C0uLL, 1uLL, 0x10E0040ADB60193uLL);
  *a1 = v8;
  *v8 = *MEMORY[0x277CBED10];
  *(v8 + 2) = ContactsDataSourceGetVersionFunction;
  *(v8 + 3) = ContactsDataSourceCanSyncWithVersionFunction;
  *(v8 + 4) = ContactsDataSourceMigrateFunction;
  *(v8 + 5) = ContactsDataSourceRemoveStoreFunction;
  *(v8 + 6) = ContactsDataSourceGetSyncTypeAndExchangeSyncAnchors;
  *(v8 + 7) = ContactsDataSourceClearSyncAnchors;
  *(v8 + 8) = ContactsDataSourceClearAllRecords;
  *(v8 + 9) = ContactsDataSourceGetChanges;
  *(v8 + 10) = ContactsDataSourceGetAllRecords;
  *(v8 + 11) = ContactsDataSourceGetCountOfRecords;
  *(v8 + 12) = ContactsDataSourceProcessChanges;
  *(v8 + 13) = ContactsDataSourceCommit;
  *(v8 + 14) = ContactsDataSourceRollback;
  *(v8 + 16) = ContactsDataSourceDeleteDataSource;
  *(v8 + 15) = ContactsDataSourceGetEntityTypeProcessOrder;
  v8[136] = 0;
  v8[138] = 0;
  *(v8 + 35) = 0;
  *(v8 + 22) = 0;
  *(v8 + 108) = 0;
  *(v8 + 32) = 0;
  *(v8 + 14) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 12) = 0u;
  *(v8 + 13) = 0u;
  *(v8 + 280) = 0u;
  *(v8 + 296) = 0u;
  *(v8 + 312) = 0u;
  *(v8 + 328) = 0u;
  *(v8 + 344) = 0u;
  *(v8 + 360) = 0u;
  *(v8 + 376) = 0u;
  *(v8 + 392) = 0u;
  v9 = *MEMORY[0x277CBECE8];
  v10 = MEMORY[0x277CBF138];
  v11 = MEMORY[0x277CBF150];
  *(v8 + 51) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(v8 + 52) = CFDictionaryCreateMutable(v9, 0, v10, v11);
  error = 0;
  v12 = ABAddressBookCreateWithOptions(0, &error);
  *(v8 + 18) = v12;
  if (!v12)
  {
    if (DLShouldLog())
    {
      goto LABEL_98;
    }

    return 0xFFFFFFFFLL;
  }

  ABAddressBookSetIsBackgroundProcess();
  *(v8 + 220) = 0;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"UseImageChangedPlaceholder");
    if (Value)
    {
      v8[440] = CFBooleanGetValue(Value) != 0;
      if (DLShouldLog())
      {
        v8[440];
        _DLLog();
      }
    }

    v14 = CFDictionaryGetValue(a3, @"UpdateAnchorsOnPull");
    if (v14)
    {
      v8[441] = CFBooleanGetValue(v14) != 0;
      if (DLShouldLog())
      {
        v8[441];
        _DLLog();
      }
    }
  }

  v8[443] = 0;
  v52 = 0;
  v15 = *(v8 + 18);
  if (!a2)
  {
    v31 = ABAddressBookCopyLocalSource();
    *(v8 + 19) = v31;
    if (v31)
    {
      v8[443] = 1;
    }

    else if (a4)
    {
      *a4 = @"Could not get the default address book store";
    }

    goto LABEL_92;
  }

  v16 = ABAddressBookCopyArrayOfAllSourcesWithAccountIdentifier();
  v17 = v16;
  if (v16 && CFArrayGetCount(v16) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
    CFRetain(ValueAtIndex);
LABEL_19:
    CFRelease(v17);
    goto LABEL_20;
  }

  v19 = *(v8 + 18);
  v20 = ABAddressBookCopySourceWithAccountAndExternalIdentifiers();
  ValueAtIndex = v20;
  if (v20)
  {
    v21 = ABRecordCopyValue(v20, *MEMORY[0x277CE9A90]);
    if (v21)
    {
      v22 = v21;
      _makeAccountForSource(v8, ValueAtIndex);
      CFRelease(v22);
    }
  }

  if (v17)
  {
    goto LABEL_19;
  }

LABEL_20:
  v23 = ValueAtIndex == 0;
  v24 = ValueAtIndex;
  if (ValueAtIndex)
  {
    goto LABEL_102;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v32 = ABSourceCreate();
  if (!v32)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = @"Could not create an AddressBook store";
      CFRetain(@"Could not create an AddressBook store");
    }

    goto LABEL_92;
  }

  v24 = v32;
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (!_makeAccountForSource(v8, v24))
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = CFStringCreateWithFormat(0, 0, @"Could not set external identifier on AB store: %@", 0);
    }

    v35 = v24;
    goto LABEL_91;
  }

  v33 = ABAddressBookAddRecord(*(v8 + 18), v24, &v52);
  if (!v33)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = CFStringCreateWithFormat(0, 0, @"Could not add store to AddressBook: %@", v52);
    }

    CFRelease(v24);
    v24 = 0;
  }

  if (v52)
  {
    CFRelease(v52);
    v52 = 0;
  }

  v34 = !v33;
  if (!v24)
  {
    v34 = 1;
  }

  if ((v34 & 1) == 0)
  {
LABEL_102:
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a3)
    {
      v25 = CFDictionaryGetValue(a3, @"StoreDisplayName");
      if (v25)
      {
        if (!ABRecordSetValue(v24, *MEMORY[0x277CE9AC0], v25, &v52) && DLShouldLog())
        {
          _DLLog();
        }

        if (v52)
        {
          CFRelease(v52);
          v52 = 0;
        }
      }

      v26 = CFDictionaryGetValue(a3, @"StoreType");
      if (v26)
      {
        if (!ABRecordSetValue(v24, *MEMORY[0x277CE9AD0], v26, &v52) && DLShouldLog())
        {
          _DLLog();
        }

        if (v52)
        {
          CFRelease(v52);
          v52 = 0;
        }
      }

      v27 = CFDictionaryGetValue(a3, @"SetAsDefault");
      if (v27 && CFBooleanGetValue(v27))
      {
        v28 = ABAddressBookCopyDefaultSource(*(v8 + 18));
        if (v28)
        {
          v29 = v28;
          RecordID = ABRecordGetRecordID(v28);
          CFRelease(v29);
        }

        else
        {
          RecordID = -1;
        }

        v36 = CFDictionaryGetValue(a3, @"SetAsDefaultOnlyIfNotSet");
        if (v36)
        {
          CFBooleanGetValue(v36);
        }

        if (DLShouldLog())
        {
          ABRecordGetRecordID(v24);
          _DLLog();
        }

        if (!ValueAtIndex)
        {
          v37 = *(v8 + 18);
          ABAddressBookProcessAddedRecords();
        }

        v38 = *(v8 + 18);
        ABAddressBookSetDefaultSource();
        v39 = ABAddressBookCopyDefaultSource(*(v8 + 18));
        if (v39)
        {
          v40 = v39;
          v41 = ABRecordGetRecordID(v39);
          CFRelease(v40);
        }

        else
        {
          v41 = -1;
        }

        if (v41 != RecordID)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          v23 = 1;
        }
      }
    }

    v42 = *(v8 + 19);
    if (v42)
    {
      CFRelease(v42);
    }

    *(v8 + 19) = v24;
    if (!v23)
    {
      goto LABEL_92;
    }
  }

  else if (!v33)
  {
    goto LABEL_92;
  }

  v51 = 0;
  ABAddressBookSave(*(v8 + 18), &v51);
  if (v51)
  {
    *a4 = CFStringCreateWithFormat(0, 0, @"Could not save new AddressBook store: %@", v51);
    v35 = v51;
    if (v51)
    {
LABEL_91:
      CFRelease(v35);
    }
  }

LABEL_92:
  if (!*(v8 + 19))
  {
    if (DLShouldLog())
    {
LABEL_98:
      _DLLog();
    }

    return 0xFFFFFFFFLL;
  }

  *(v8 + 106) = 0;
  *(v8 + 20) = 0;
  *(v8 + 21) = 0;
  LOBYTE(v52) = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"MaxCompressedImageSize", @"com.apple.SyncAgent", &v52);
  if (v52)
  {
    v44 = AppIntegerValue;
  }

  else
  {
    v44 = 768000;
  }

  *(v8 + 107) = v44;
  v45 = *(v8 + 18);
  ABChangeHistorySetAddressBookClientIdentifier();
  v46 = *(v8 + 18);
  v47 = *(v8 + 19);
  v48 = ABChangeHistoryRegisterClientForSource();
  result = 0;
  *(v8 + 109) = v48;
  v8[442] = 0;
  return result;
}

uint64_t ContactsDataSourceGetVersionFunction(uint64_t a1, CFTypeRef *a2)
{
  v3 = sContactsDataSourceVersionNumber;
  if (!sContactsDataSourceVersionNumber)
  {
    valuePtr = 106;
    v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    sContactsDataSourceVersionNumber = v3;
  }

  *a2 = CFRetain(v3);
  return 0;
}

uint64_t ContactsDataSourceCanSyncWithVersionFunction(uint64_t a1, CFNumberRef number, void *a3)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  v5 = valuePtr;
  if (valuePtr == 104)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    goto LABEL_8;
  }

  if (valuePtr == 103)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    *(a1 + 138) = 1;
LABEL_8:
    v5 = valuePtr;
  }

  if (v5 > 105)
  {
    goto LABEL_13;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *(a1 + 440) = 0;
  if (valuePtr < 103)
  {
    v6 = MEMORY[0x277CBED10];
  }

  else
  {
LABEL_13:
    v6 = MEMORY[0x277CBED28];
  }

  *a3 = *v6;
  return 0;
}

uint64_t ContactsDataSourceMigrateFunction(uint64_t a1, uint64_t a2)
{
  result = 4294967293;
  if (a1 && a2)
  {
    if (DLShouldLog())
    {
      ABRecordGetRecordID(*(a1 + 152));
      ABRecordGetRecordID(*(a2 + 152));
      _DLLog();
    }

    v5 = *(a1 + 152);
    v6 = *(a2 + 144);
    v7 = *(a2 + 152);
    if (ABAddressBookMoveAllRecordsInSourceToSource())
    {
      ContactsDataSourceClearSyncAnchors(a1);
      ContactsDataSourceClearSyncAnchors(a2);
      return 0;
    }

    else
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t ContactsDataSourceRemoveStoreFunction(uint64_t a1, const __CFDictionary *a2)
{
  error = 0;
  _setComputerSyncAnchorForStore(a1);
  _setDeviceSyncAnchorForStore(a1);
  v4 = ABAddressBookCopyDefaultSource(*(a1 + 144));
  if (v4)
  {
    v5 = v4;
    RecordID = ABRecordGetRecordID(v4);
    CFRelease(v5);
  }

  else
  {
    RecordID = -1;
  }

  if (!ABRecordGetRecordID(*(a1 + 152)))
  {
    v8 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
    if (v8)
    {
      v9 = v8;
      Count = CFArrayGetCount(v8);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, i);
          if (!ABAddressBookRemoveRecord(*(a1 + 144), ValueAtIndex, &error) && DLShouldLog())
          {
            ABRecordGetRecordID(*(a1 + 152));
            _DLLog();
          }
        }
      }

      CFRelease(v9);
    }

    v14 = ABAddressBookCopyArrayOfAllGroupsInSource(*(a1 + 144), *(a1 + 152));
    if (v14)
    {
      v15 = v14;
      v16 = CFArrayGetCount(v14);
      if (v16 >= 1)
      {
        v17 = v16;
        for (j = 0; j != v17; ++j)
        {
          v19 = CFArrayGetValueAtIndex(v15, j);
          if (!ABAddressBookRemoveRecord(*(a1 + 144), v19, &error) && DLShouldLog())
          {
            ABRecordGetRecordID(*(a1 + 152));
            _DLLog();
          }
        }
      }

      CFRelease(v15);
    }

LABEL_26:
    if (!a2 || CFDictionaryGetValue(a2, @"ClearDefaultStore") != *MEMORY[0x277CBED28])
    {
      return (ABAddressBookSave(*(a1 + 144), &error) - 1);
    }

    goto LABEL_28;
  }

  v7 = ABRecordGetRecordID(*(a1 + 152));
  if (!ABAddressBookRemoveRecord(*(a1 + 144), *(a1 + 152), &error) && DLShouldLog())
  {
    ABRecordGetRecordID(*(a1 + 152));
    _DLLog();
  }

  if (v7 != RecordID)
  {
    goto LABEL_26;
  }

LABEL_28:
  v20 = *(a1 + 144);
  v21 = ABAddressBookCopyArrayOfAllSourcesIncludingDisabledSources();
  if (v21)
  {
    v22 = v21;
    v23 = CFArrayGetCount(v21);
    if (v23 >= 1)
    {
      v24 = v23;
      v25 = 0;
      v26 = *MEMORY[0x277CE9AD0];
      do
      {
        v27 = CFArrayGetValueAtIndex(v22, v25);
        valuePtr = -1;
        v28 = ABRecordCopyValue(v27, v26);
        if (v28)
        {
          v29 = v28;
          CFNumberGetValue(v28, kCFNumberIntType, &valuePtr);
          if (valuePtr)
          {
            CFRetain(v27);
            CFRelease(v29);
            if (v27)
            {
              goto LABEL_38;
            }
          }

          else
          {
            CFRelease(v29);
          }
        }

        ++v25;
      }

      while (v24 != v25);
    }

    v27 = 0;
LABEL_38:
    CFRelease(v22);
  }

  else
  {
    v27 = 0;
  }

  v30 = *(a1 + 152);
  if (v30)
  {
    CFRelease(v30);
  }

  *(a1 + 152) = v27;
  v31 = *(a1 + 144);
  ABAddressBookSetDefaultSource();
  return (ABAddressBookSave(*(a1 + 144), &error) - 1);
}

uint64_t ContactsDataSourceGetSyncTypeAndExchangeSyncAnchors(void *a1, CFTypeRef *a2, const __CFString *a3, const __CFString *cf, uint64_t *a5, CFTypeRef *a6)
{
  v45[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v12 = _copyComputerSyncAnchorKey(a1);
    v13 = a1[18];
    v14 = ABAddressBookCopyValue();
    if (!v14)
    {
      v15 = a1[18];
      v16 = ABAddressBookCopyValue();
      if (v16)
      {
        v17 = v16;
        if (CFStringCompare(v16, @"__UNUSED__", 0))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          v18 = a1[18];
          ABAddressBookSetValue();
          v19 = a1[18];
          ABAddressBookSetValue();
          v14 = CFRetain(v17);
        }

        else
        {
          v14 = 0;
        }

        CFRelease(v17);
      }

      else
      {
        v14 = 0;
      }
    }

    if (v12)
    {
      CFRelease(v12);
    }
  }

  else
  {
    v14 = 0;
  }

  if (cf && (a1[21] = CFRetain(cf), CFStringCompare(cf, @"---DATACLASS_CLEARED---", 0) == kCFCompareEqualTo))
  {
    v21 = a1[18];
    ABChangeHistoryUnregisterClientForSource();
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeFast");
  *a5 = v14;
  v22 = _copyDeviceSyncAnchorKey(a1);
  v23 = a1[18];
  v24 = ABAddressBookCopyValue();
  if (!v24)
  {
    v25 = a1[18];
    v26 = ABAddressBookCopyValue();
    if (v26)
    {
      v27 = v26;
      if (CFStringCompare(v26, @"__UNUSED__", 0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        v28 = a1[18];
        ABAddressBookSetValue();
        v29 = a1[18];
        ABAddressBookSetValue();
        v24 = CFRetain(v27);
      }

      else
      {
        v24 = 0;
      }

      CFRelease(v27);
    }

    else
    {
      v24 = 0;
    }
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v24)
  {
    if (a3 && CFStringCompare(v24, a3, 0) == kCFCompareEqualTo)
    {
      if (!v20)
      {
        goto LABEL_39;
      }

      v36 = *MEMORY[0x277CE9798];
      v45[0] = *MEMORY[0x277CE9798];
      [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
      v37 = 0;
      v38 = 0;
      do
      {
        v39 = dword_25A0C8424[v37];
        v40 = a1[18];
        v41 = a1[19];
        EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
        if (EntityChangesSinceSequenceNumberForClient)
        {
          v43 = EntityChangesSinceSequenceNumberForClient;
          if (CFDictionaryGetCount(EntityChangesSinceSequenceNumberForClient) >= 1)
          {
            v38 |= [CFDictionaryGetValue(v43 v36)];
          }
        }

        ++v37;
      }

      while (v37 != 3);
      if ((v38 & 1) == 0)
      {
        goto LABEL_39;
      }

      if (DLShouldLog())
      {
        goto LABEL_37;
      }
    }

    else if (DLShouldLog())
    {
LABEL_37:
      _DLLog();
    }

    *a2 = CFRetain(@"SDSyncTypeSlow");
LABEL_39:
    CFRelease(v24);
    goto LABEL_43;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeReset");
LABEL_43:
  v30 = CFLocaleCopyCurrent();
  v31 = CFDateFormatterCreate(0, v30, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
  CFDateFormatterSetFormat(v31, @"MMM dd yyyy HH:mm:ss ZZZ");
  Current = CFAbsoluteTimeGetCurrent();
  StringWithAbsoluteTime = CFDateFormatterCreateStringWithAbsoluteTime(0, v31, Current);
  a1[20] = StringWithAbsoluteTime;
  *a6 = CFRetain(StringWithAbsoluteTime);
  if (DLShouldLog())
  {
    v44 = a1[20];
    _DLLog();
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  v34 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t ContactsDataSourceClearSyncAnchors(uint64_t a1)
{
  error = 0;
  _setComputerSyncAnchorForStore(a1);
  _setDeviceSyncAnchorForStore(a1);
  v2 = ABAddressBookSave(*(a1 + 144), &error);
  if (error)
  {
    CFRelease(error);
  }

  return (v2 - 1);
}

uint64_t ContactsDataSourceClearAllRecords(uint64_t a1)
{
  v2 = ABAddressBookCopyArrayOfAllGroupsInSource(*(a1 + 144), *(a1 + 152));
  if (v2)
  {
    v3 = v2;
    _RemoveRecordsFromAddressBook(a1, v2, 0);
    CFRelease(v3);
  }

  v4 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
  if (v4)
  {
    v5 = v4;
    _RemoveRecordsFromAddressBook(a1, v4, _SaveClearedPersonsSounds);
    CFRelease(v5);
  }

  if ((*(a1 + 436) & 0x80000000) == 0)
  {
    v6 = *(a1 + 144);
    v7 = *(a1 + 152);
    ABChangeHistoryClearChangesUpToSequenceNumberForClient();
  }

  if (!*(a1 + 160))
  {
    *(a1 + 160) = CFRetain(@"---");
  }

  _setDeviceSyncAnchorForStore(a1);
  return 0;
}

uint64_t ContactsDataSourceGetChanges(uint64_t a1, __CFDictionary **a2, const __CFAllocator *a3, void *a4)
{
  v6 = a1;
  v97[5] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBED28];
  *a3 = *MEMORY[0x277CBED28];
  v8 = *(a1 + 140);
  if (v8 == 8)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    allocator = a3;
    v87 = a2;
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    v94 = Mutable;
    if (*(v6 + 176))
    {
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9888], @"com.apple.contacts.Email Address", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9A18], @"com.apple.contacts.Phone Number", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9828], @"com.apple.contacts.Street Address", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9A58], @"com.apple.contacts.URL", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9A38], @"com.apple.contacts.Related Name", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE98E8], @"com.apple.contacts.IM", Mutable);
      _AccumulatePropertiesForType(v6, *MEMORY[0x277CE9870], @"com.apple.contacts.Date", Mutable);
    }

    v21 = *MEMORY[0x277CE97C0];
    keya = *MEMORY[0x277CE97D0];
    v96[0] = *MEMORY[0x277CE97D0];
    v96[1] = v21;
    v22 = *MEMORY[0x277CE97B8];
    v96[2] = *MEMORY[0x277CE97B8];
    [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:3];
    v23 = *(v6 + 144);
    v24 = *(v6 + 152);
    EntityChangesSinceSequenceNumberForClient = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
    if (!EntityChangesSinceSequenceNumberForClient)
    {
      goto LABEL_31;
    }

    v26 = EntityChangesSinceSequenceNumberForClient;
    if (CFDictionaryGetCount(EntityChangesSinceSequenceNumberForClient) < 1)
    {
      goto LABEL_31;
    }

    Value = CFDictionaryGetValue(v26, keya);
    theArraya = CFDictionaryGetValue(v26, v21);
    v28 = CFDictionaryGetValue(v26, v22);
    Count = CFArrayGetCount(Value);
    if (Count < 1)
    {
      goto LABEL_31;
    }

    v30 = Count;
    v31 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, v31);
      v33 = CFArrayGetValueAtIndex(theArraya, v31);
      v34 = CFArrayGetValueAtIndex(v28, v31);
      PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(v6 + 144), ValueAtIndex);
      if (PersonWithRecordID)
      {
        v36 = ABRecordCopyValue(PersonWithRecordID, v33);
        if (!v36 || (v37 = v36, IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v36, v34), CFRelease(v37), v39 = IndexForIdentifier == -1, v6 = a1, v39))
        {
          v40 = CFStringCreateWithFormat(0, 0, @"%d/%d/%d", v33, ValueAtIndex, v34);
          if (!Mutable)
          {
            Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
          }

          CFDictionarySetValue(Mutable, v40, v40);
          if (v40)
          {
            CFRelease(v40);
          }

          goto LABEL_29;
        }

        if (DLShouldLog())
        {
          v81 = v33;
          v82 = ValueAtIndex;
          v79 = v34;
LABEL_28:
          _DLLog();
        }
      }

      else if (DLShouldLog())
      {
        v81 = v33;
        v82 = ValueAtIndex;
        v79 = v34;
        goto LABEL_28;
      }

LABEL_29:
      if (v30 == ++v31)
      {
        v94 = Mutable;
LABEL_31:
        v41 = *MEMORY[0x277CE97A0];
        v95[0] = keya;
        v95[1] = v41;
        [MEMORY[0x277CBEA60] arrayWithObjects:v95 count:{2, v79, v81, v82}];
        v42 = *(v6 + 144);
        v43 = *(v6 + 152);
        v44 = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
        v45 = v87;
        if (!v44)
        {
          goto LABEL_125;
        }

        v46 = v44;
        if (CFDictionaryGetCount(v44) < 1)
        {
          goto LABEL_125;
        }

        v47 = CFDictionaryGetValue(v46, keya);
        v48 = CFDictionaryGetValue(v46, v41);
        if (v47)
        {
          v49 = CFArrayGetCount(v47);
        }

        else
        {
          v49 = 0;
        }

        v66 = CFArrayGetCount(v47);
        if (v66 != CFArrayGetCount(v48))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          goto LABEL_125;
        }

        if (v49 < 1)
        {
LABEL_125:
          if (DLShouldLog())
          {
            v80 = *(v6 + 436);
            _DLLog();
          }

          if ((*(v6 + 441) & 1) == 0)
          {
            _saveDeviceSyncAnchorAndClearChangeHistory(v6);
          }

          v50 = 0;
          *v45 = v94;
          *allocator = *MEMORY[0x277CBED10];
          *(v6 + 140) = 9;
          goto LABEL_130;
        }

        if (DLShouldLog())
        {
          _DLLog();
        }

        v67 = 0;
        v68 = 0;
        v69 = 0;
        v70 = *MEMORY[0x277CBECE8];
        while (2)
        {
          v71 = CFArrayGetValueAtIndex(v47, v67);
          v72 = CFArrayGetValueAtIndex(v48, v67);
          if (v72 > 1)
          {
            if (v72 == 2)
            {
              v75 = CFStringCreateWithFormat(0, 0, @"Group/%d", v71);
              v76 = v94;
              if (!v94)
              {
                v76 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                v94 = v76;
              }

              CFDictionarySetValue(v76, v75, v75);
              if (v75)
              {
                CFRelease(v75);
              }

              goto LABEL_115;
            }

            if (!DLShouldLog())
            {
              goto LABEL_115;
            }
          }

          else
          {
            GroupWithRecordID = ABAddressBookGetGroupWithRecordID(*(a1 + 144), v71);
            if (GroupWithRecordID)
            {
              v74 = GroupWithRecordID;
              if (v68)
              {
                if (v69)
                {
                  goto LABEL_102;
                }

LABEL_118:
                v69 = CFSetCreateMutable(0, 0, 0);
              }

              else
              {
                v68 = CFArrayCreateMutable(v70, 0, MEMORY[0x277CBF128]);
                if (!v69)
                {
                  goto LABEL_118;
                }
              }

LABEL_102:
              if (!v94)
              {
                v94 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
              }

              if (!CFSetContainsValue(v69, v71))
              {
                CFSetAddValue(v69, v71);
                CFArrayAppendValue(v68, v74);
              }

LABEL_115:
              if (v49 == ++v67)
              {
                v45 = v87;
                if (v68)
                {
                  _AccumulateGroups(&v94, v68);
                  CFRelease(v68);
                }

                v6 = a1;
                if (v69)
                {
                  CFRelease(v69);
                }

                goto LABEL_125;
              }

              continue;
            }

            if (!DLShouldLog())
            {
              goto LABEL_115;
            }
          }

          break;
        }

        _DLLog();
        goto LABEL_115;
      }
    }
  }

  if (v8)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    v50 = 0;
    *a2 = 0;
    *a3 = *MEMORY[0x277CBED10];
    goto LABEL_130;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v10 = *MEMORY[0x277CE97D0];
  v11 = *MEMORY[0x277CE97A0];
  v97[0] = *MEMORY[0x277CE97D0];
  v97[1] = v11;
  v12 = *MEMORY[0x277CE97A8];
  v13 = *MEMORY[0x277CE97B0];
  v97[2] = *MEMORY[0x277CE97A8];
  v97[3] = v13;
  v97[4] = *MEMORY[0x277CE97C8];
  [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:5];
  v14 = *(v6 + 144);
  v15 = *(v6 + 152);
  v16 = ABChangeHistoryGetEntityChangesSinceSequenceNumberForClient();
  if (!v16 || (v17 = v16, CFDictionaryGetCount(v16) < 1))
  {
    v50 = 0;
    goto LABEL_85;
  }

  v18 = CFDictionaryGetValue(v17, v10);
  v19 = CFDictionaryGetValue(v17, v11);
  CFDictionaryGetValue(v17, v12);
  key = CFDictionaryGetValue(v17, v13);
  if (v18)
  {
    theArray = CFArrayGetCount(v18);
  }

  else
  {
    theArray = 0;
  }

  v51 = CFArrayGetCount(v18);
  if (v51 != CFArrayGetCount(v19))
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a4)
    {
      *a4 = @"The changedIDs and changeTypes counts do not match";
      CFRetain(@"The changedIDs and changeTypes counts do not match");
    }

    goto LABEL_82;
  }

  if (theArray < 1)
  {
LABEL_82:
    if (*a4)
    {
      v50 = 0xFFFFFFFFLL;
    }

    else
    {
      v50 = 0;
    }

    goto LABEL_85;
  }

  v83 = a4;
  v88 = a2;
  if (DLShouldLog())
  {
    v81 = v19;
    _DLLog();
  }

  v52 = 0;
  v53 = 0;
  v54 = 0;
  allocatora = *MEMORY[0x277CBECE8];
  v84 = *MEMORY[0x277CBED10];
  do
  {
    while (1)
    {
      v55 = CFArrayGetValueAtIndex(v18, v52);
      HasImageData = CFArrayGetValueAtIndex(key, v52);
      v57 = CFArrayGetValueAtIndex(v19, v52);
      v58 = v57;
      if (v57 > 1)
      {
        break;
      }

      v59 = ABAddressBookGetPersonWithRecordID(*(a1 + 144), v55);
      if (!v59)
      {
        if (!DLShouldLog())
        {
          goto LABEL_72;
        }

        goto LABEL_71;
      }

      v60 = v59;
      if (!*(a1 + 176))
      {
        *(a1 + 176) = CFArrayCreateMutable(allocatora, 0, MEMORY[0x277CBF128]);
      }

      if (v54)
      {
        if (v53)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v54 = CFSetCreateMutable(0, 0, 0);
        if (v53)
        {
LABEL_51:
          if (v54)
          {
            goto LABEL_52;
          }

          goto LABEL_76;
        }
      }

      v53 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      if (v54)
      {
LABEL_52:
        if (!CFSetContainsValue(v54, v55))
        {
          CFSetAddValue(v54, v55);
          CFArrayAppendValue(*(a1 + 176), v60);
          v61 = *(a1 + 184);
          if (!v61)
          {
            v61 = CFDictionaryCreateMutable(0, 0, 0, MEMORY[0x277CBF150]);
            *(a1 + 184) = v61;
          }

          if (!v58)
          {
            HasImageData = ABPersonHasImageData(v60);
            v61 = *(a1 + 184);
          }

          if (HasImageData)
          {
            v62 = v7;
          }

          else
          {
            v62 = v84;
          }

          CFDictionarySetValue(v61, v55, v62);
        }

        goto LABEL_72;
      }

LABEL_76:
      if (++v52 == theArray)
      {
        goto LABEL_133;
      }
    }

    if (v57 != 2)
    {
      if (!DLShouldLog())
      {
        goto LABEL_72;
      }

LABEL_71:
      _DLLog();
      goto LABEL_72;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    v63 = CFStringCreateWithFormat(0, 0, @"%d", v55, v81);
    if (!v53)
    {
      v53 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    }

    CFDictionarySetValue(v53, v63, v63);
    if (v63)
    {
      CFRelease(v63);
    }

LABEL_72:
    ++v52;
  }

  while (v52 != theArray);
  if (v54)
  {
    CFRelease(v54);
  }

LABEL_133:
  if (*v83)
  {
    v50 = 0xFFFFFFFFLL;
  }

  else
  {
    v50 = 0;
  }

  a2 = v88;
  if (!v53)
  {
LABEL_85:
    v53 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  }

  if (*(a1 + 176) && v53)
  {
    _AccumulateContacts(a1, v53);
  }

  *a2 = v53;
  v64 = *(a1 + 176);
  if (!v64 || (v65 = *(a1 + 432), CFArrayGetCount(v64) == v65))
  {
    *(a1 + 140) = 8;
  }

LABEL_130:
  v77 = *MEMORY[0x277D85DE8];
  return v50;
}

uint64_t ContactsDataSourceGetAllRecords(uint64_t a1, CFMutableDictionaryRef *a2, void *a3)
{
  *a3 = *MEMORY[0x277CBED28];
  v6 = *(a1 + 140);
  if (v6 > 3)
  {
    if (v6 <= 5)
    {
      if (v6 == 4)
      {
        v22 = *MEMORY[0x277CE9A58];
        Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
        _AccumulatePropertiesForType(a1, v22, @"com.apple.contacts.URL", Mutable);
        *a2 = Mutable;
        v9 = 5;
      }

      else
      {
        v10 = *MEMORY[0x277CE9A38];
        v11 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
        _AccumulatePropertiesForType(a1, v10, @"com.apple.contacts.Related Name", v11);
        *a2 = v11;
        v9 = 6;
      }

      goto LABEL_24;
    }

    if (v6 == 6)
    {
      v26 = *MEMORY[0x277CE98E8];
      v27 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v26, @"com.apple.contacts.IM", v27);
      *a2 = v27;
      v9 = 7;
      goto LABEL_24;
    }

    if (v6 == 7)
    {
      v14 = *MEMORY[0x277CE9870];
      v15 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v14, @"com.apple.contacts.Date", v15);
      *a2 = v15;
LABEL_28:
      *(a1 + 140) = 9;
LABEL_29:
      *a3 = *MEMORY[0x277CBED10];
      if ((*(a1 + 441) & 1) == 0 && (*(a1 + 442) & 1) == 0)
      {
        _saveDeviceSyncAnchorAndClearChangeHistory(a1);
      }

      return 0;
    }

LABEL_26:
    if (DLShouldLog())
    {
      v31 = *(a1 + 140);
      _DLLog();
    }

    goto LABEL_28;
  }

  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v24 = *MEMORY[0x277CE9A18];
      v25 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v24, @"com.apple.contacts.Phone Number", v25);
      *a2 = v25;
      v9 = 3;
    }

    else
    {
      v12 = *MEMORY[0x277CE9828];
      v13 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v12, @"com.apple.contacts.Street Address", v13);
      *a2 = v13;
      v9 = 4;
    }

    goto LABEL_24;
  }

  if (v6)
  {
    if (v6 == 1)
    {
      v7 = *MEMORY[0x277CE9888];
      v8 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      _AccumulatePropertiesForType(a1, v7, @"com.apple.contacts.Email Address", v8);
      *a2 = v8;
      v9 = 2;
LABEL_24:
      *(a1 + 140) = v9;
      return 0;
    }

    goto LABEL_26;
  }

  if (!*(a1 + 176))
  {
    v16 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
    *(a1 + 176) = v16;
    if (!v16)
    {
      *a2 = 0;
      goto LABEL_37;
    }
  }

  v17 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  _AccumulateContacts(a1, v17);
  *a2 = v17;
  if (!v17)
  {
LABEL_37:
    v21 = 9;
    goto LABEL_38;
  }

  v18 = *(a1 + 432);
  Count = CFArrayGetCount(*(a1 + 176));
  v20 = DLShouldLog();
  if (Count != v18)
  {
    if (v20)
    {
      v32 = CFArrayGetCount(*(a1 + 176)) - *(a1 + 432);
      _DLLog();
    }

    if (!*(a1 + 140))
    {
      return 0;
    }

    goto LABEL_39;
  }

  if (v20)
  {
    _DLLog();
  }

  v21 = 1;
LABEL_38:
  *(a1 + 140) = v21;
LABEL_39:
  v29 = ABAddressBookCopyArrayOfAllGroupsInSource(*(a1 + 144), *(a1 + 152));
  if (v29)
  {
    v30 = v29;
    _AccumulateGroups(a2, v29);
    CFRelease(v30);
  }

  if (*(a1 + 140) == 9)
  {
    goto LABEL_29;
  }

  return 0;
}

uint64_t ContactsDataSourceGetCountOfRecords(uint64_t a1, _DWORD *a2)
{
  v4 = *(a1 + 144);
  v3 = *(a1 + 152);
  *a2 = ABAddressBookGetPersonCountInSource();
  return 0;
}

uint64_t ContactsDataSourceProcessChanges(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, void *a4, const __CFDictionary *a5)
{
  v7 = a1;
  if (*(a1 + 443) == 1)
  {
    error = 0;
    if (!ABRecordSetValue(*(a1 + 152), *MEMORY[0x277CE9A88], *MEMORY[0x277CBED28], &error))
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (error)
      {
        CFRelease(error);
      }
    }

    *(v7 + 443) = 0;
  }

  if (*(v7 + 441) == 1 && (*(v7 + 442) & 1) == 0)
  {
    _saveDeviceSyncAnchorAndClearChangeHistory(v7);
  }

  *(v7 + 240) = 0;
  if (theDict && CFDictionaryGetCount(theDict) >= 1)
  {
    *(v7 + 137) = 0;
    CFDictionaryApplyFunction(theDict, _ChangesApplierFunction, v7);
    if (*(v7 + 137) == 1)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8 = *(v7 + 144);
      ABProcessAddedImages();
    }

    v76 = v7;
    if ((*(v7 + 136) & 1) == 0)
    {
      v9 = a5 ? CFDictionaryGetValue(a5, @"SyncDeviceLinkAllRecordsOfPulledEntityTypeSentKey") : *MEMORY[0x277CBED28];
      if ((*(v7 + 138) & 1) != 0 || v9 && CFBooleanGetValue(v9) == 1)
      {
        v10 = *(v7 + 144);
        ABAddressBookProcessAddedRecords();
        v11 = *(v7 + 200);
        if (v11)
        {
          CFDictionaryApplyFunction(v11, _UpdateContactRemapping, v7);
          v12 = *(v7 + 200);
          if (v12)
          {
            CFRelease(v12);
            *(v7 + 200) = 0;
          }
        }

        if (*(v7 + 224))
        {
          v13 = *(v7 + 208);
          if (v13)
          {
            CFDictionaryApplyFunction(v13, _UpdateGroupRemapping, v7);
            v14 = *(v7 + 208);
            if (v14)
            {
              CFRelease(v14);
              *(v7 + 208) = 0;
            }
          }

          error = 0;
          Count = CFArrayGetCount(*(v7 + 224));
          v16 = CFArrayGetCount(*(v7 + 232));
          if (v16 != Count && DLShouldLog())
          {
            v67 = *(v7 + 224);
            v68 = *(v7 + 232);
            _DLLog();
          }

          if (v16 >= Count)
          {
            v17 = Count;
          }

          else
          {
            v17 = v16;
          }

          v69 = v17;
          if (v17 >= 1)
          {
            v18 = 0;
            do
            {
              ValueAtIndex = CFArrayGetValueAtIndex(*(v7 + 224), v18);
              v20 = CFArrayGetValueAtIndex(*(v7 + 232), v18);
              v21 = v20;
              v71 = v18;
              if (v20)
              {
                v22 = CFArrayGetCount(v20);
                if (v22 >= 1)
                {
                  Mutable = CFSetCreateMutable(0, v22, MEMORY[0x277CBF158]);
                  goto LABEL_44;
                }
              }

              else
              {
                v22 = 0;
              }

              Mutable = 0;
LABEL_44:
              v24 = ABGroupCopyArrayOfAllMembersAndSubgroups();
              v25 = v24;
              if (!v24)
              {
                v26 = 0;
LABEL_50:
                theSet = 0;
                goto LABEL_51;
              }

              v26 = CFArrayGetCount(v24);
              if (v26 < 1)
              {
                goto LABEL_50;
              }

              v27 = CFSetCreateMutable(0, v26, MEMORY[0x277CBF158]);
              for (i = 0; i != v26; ++i)
              {
                v29 = CFArrayGetValueAtIndex(v25, i);
                CFSetAddValue(v27, v29);
              }

              theSet = v27;
LABEL_51:
              record = ValueAtIndex;
              if (v22 >= 1)
              {
                v30 = 0;
                *property = v21;
                do
                {
                  v31 = CFArrayGetValueAtIndex(v21, v30);
                  Value = *(v7 + 248);
                  if (Value)
                  {
                    Value = CFDictionaryGetValue(Value, v31);
                  }

                  if (Value)
                  {
                    v31 = Value;
                  }

                  if (!recordIdentifierIsLocal(v31))
                  {
                    if (DLShouldLog())
                    {
                      _DLLog();
                    }

                    goto LABEL_81;
                  }

                  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, v31, @"/");
                  v34 = ArrayBySeparatingStrings;
                  if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) == 2)
                  {
                    v35 = CFArrayGetValueAtIndex(v34, 1);
                    if (!v35)
                    {
                      goto LABEL_80;
                    }

                    IntValue = CFStringGetIntValue(v35);
                    GroupWithRecordID = ABAddressBookGetGroupWithRecordID(*(v7 + 144), IntValue);
                    v38 = 1;
                    if (!GroupWithRecordID)
                    {
                      goto LABEL_62;
                    }
                  }

                  else
                  {
                    if (!v31)
                    {
                      goto LABEL_79;
                    }

                    v39 = CFStringGetIntValue(v31);
                    GroupWithRecordID = ABAddressBookGetPersonWithRecordID(*(v7 + 144), v39);
                    v38 = 0;
                    if (!GroupWithRecordID)
                    {
LABEL_62:
                      if (DLShouldLog())
                      {
                        _DLLog();
                      }

                      goto LABEL_79;
                    }
                  }

                  CFSetAddValue(Mutable, GroupWithRecordID);
                  if (!theSet || !CFSetContainsValue(theSet, GroupWithRecordID))
                  {
                    if (DLShouldLog())
                    {
                      ABRecordGetRecordID(record);
                      v7 = v76;
                      _DLLog();
                    }

                    if (v38)
                    {
                      ABGroupAddSubgroup();
                    }

                    else
                    {
                      if (!ABGroupAddMember(record, GroupWithRecordID, &error) && DLShouldLog())
                      {
                        ABRecordGetRecordID(GroupWithRecordID);
                        ABRecordGetRecordID(record);
                        _DLLog();
                      }

                      if (error)
                      {
                        CFRelease(error);
                        error = 0;
                      }
                    }
                  }

LABEL_79:
                  v21 = *property;
                  if (v34)
                  {
LABEL_80:
                    CFRelease(v34);
                  }

LABEL_81:
                  ++v30;
                }

                while (v22 != v30);
              }

              if (v26 >= 1)
              {
                for (j = 0; j != v26; ++j)
                {
                  v41 = CFArrayGetValueAtIndex(v25, j);
                  if (!Mutable || !CFSetContainsValue(Mutable, v41))
                  {
                    if (DLShouldLog())
                    {
                      ABRecordGetRecordID(v41);
                      ABRecordGetRecordID(record);
                      v7 = v76;
                      _DLLog();
                    }

                    if (!ABGroupRemoveMember(record, v41, &error) && DLShouldLog())
                    {
                      ABRecordGetRecordID(v41);
                      ABRecordGetRecordID(record);
                      _DLLog();
                    }

                    if (error)
                    {
                      CFRelease(error);
                      error = 0;
                    }
                  }
                }
              }

              if (v25)
              {
                CFRelease(v25);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              if (theSet)
              {
                CFRelease(theSet);
              }

              v18 = v71 + 1;
            }

            while (v71 + 1 != v69);
          }

          v42 = *(v7 + 224);
          if (v42)
          {
            CFRelease(v42);
            *(v7 + 224) = 0;
          }
        }

        *(v7 + 136) = 1;
      }
    }

    v43 = *(v7 + 216);
    if (v43)
    {
      v44 = CFArrayGetCount(v43);
      if (v44 >= 1)
      {
        v45 = v44;
        v46 = 0;
        v47 = "/Library/Caches/com.apple.xbs/Sources/Sync/DataSources/ContactsDataSource.m";
        do
        {
          v48 = CFArrayGetValueAtIndex(*(v7 + 216), v46);
          v49 = CFStringCreateArrayBySeparatingStrings(0, v48, @"/");
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (!v49 || CFArrayGetCount(v49) != 3)
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            if (!v49)
            {
              goto LABEL_144;
            }

            goto LABEL_143;
          }

          v50 = v45;
          v51 = CFArrayGetValueAtIndex(v49, 0);
          v52 = CFArrayGetValueAtIndex(v49, 1);
          v53 = v47;
          v54 = CFArrayGetValueAtIndex(v49, 2);
          propertya = CFStringGetIntValue(v51);
          v55 = CFStringGetIntValue(v52);
          v56 = v54;
          v47 = v53;
          v57 = CFStringGetIntValue(v56);
          error = 0;
          if (DLShouldLog())
          {
            _DLLog();
          }

          PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(v76 + 144), v55);
          if (PersonWithRecordID)
          {
            v59 = PersonWithRecordID;
            v60 = ABRecordCopyValue(PersonWithRecordID, propertya);
            if (v60)
            {
              v61 = v60;
              IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v60, v57);
              if (IndexForIdentifier == -1)
              {
                v47 = v53;
                v45 = v50;
                if (DLShouldLog())
                {
                  _DLLog();
                }
              }

              else
              {
                v63 = IndexForIdentifier;
                if (ABMultiValueGetCount(v61) < 2)
                {
                  MutableCopy = 0;
                }

                else
                {
                  MutableCopy = ABMultiValueCreateMutableCopy(v61);
                  ABMultiValueRemoveValueAndLabelAtIndex(MutableCopy, v63);
                }

                v47 = v53;
                v45 = v50;
                if (!ABRecordRemoveValue(v59, propertya, &error) && DLShouldLog())
                {
                  ABRecordGetRecordID(v59);
                  _DLLog();
                }

                if (error)
                {
                  CFRelease(error);
                  error = 0;
                }

                if (MutableCopy)
                {
                  ABMultiValueSetImmutable();
                  if (!ABRecordSetValue(v59, propertya, MutableCopy, &error) && DLShouldLog())
                  {
                    ABRecordGetRecordID(v59);
                    _DLLog();
                  }

                  if (error)
                  {
                    CFRelease(error);
                    error = 0;
                  }

                  CFRelease(MutableCopy);
                }
              }

              CFRelease(v61);
              goto LABEL_142;
            }

            v45 = v50;
            if (DLShouldLog())
            {
LABEL_125:
              _DLLog();
            }
          }

          else
          {
            v45 = v50;
            if (DLShouldLog())
            {
              goto LABEL_125;
            }
          }

LABEL_142:
          v7 = v76;
LABEL_143:
          CFRelease(v49);
LABEL_144:
          ++v46;
        }

        while (v45 != v46);
      }

      v65 = *(v7 + 216);
      if (v65)
      {
        CFRelease(v65);
      }

      *(v7 + 216) = 0;
    }
  }

  *a4 = *(v7 + 240);
  return 0;
}

uint64_t ContactsDataSourceCommit(uint64_t a1, void *a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  v4 = ABAddressBookCopyArrayOfAllPeopleInSource(*(a1 + 144), *(a1 + 152));
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        _RestoreClearedPersonsSound(*(a1 + 408), ValueAtIndex);
        _RestoreClearedPersonsSound(*(a1 + 416), ValueAtIndex);
      }
    }

    CFRelease(v5);
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }

  if (*(a1 + 441) == 1 && (*(a1 + 442) & 1) == 0)
  {
    _saveDeviceSyncAnchorAndClearChangeHistory(a1);
  }

  error = 0;
  if (!*(a1 + 168))
  {
    *(a1 + 168) = CFRetain(@"---");
  }

  _setComputerSyncAnchorForStore(a1);
  v10 = ABAddressBookSave(*(a1 + 144), &error);
  if (!v10 && DLShouldLog())
  {
    _DLLog();
  }

  if (error)
  {
    CFRelease(error);
  }

  if (v10)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = @"Can't commit Address Book";
    CFRetain(@"Can't commit Address Book");
  }

  return 0xFFFFFFFFLL;
}

uint64_t ContactsDataSourceDeleteDataSource(void *a1)
{
  v2 = a1[18];
  if (v2)
  {
    CFRelease(v2);
    a1[18] = 0;
  }

  v3 = a1[19];
  if (v3)
  {
    CFRelease(v3);
    a1[19] = 0;
  }

  v4 = a1[20];
  if (v4)
  {
    CFRelease(v4);
    a1[20] = 0;
  }

  v5 = a1[21];
  if (v5)
  {
    CFRelease(v5);
    a1[21] = 0;
  }

  v6 = a1[22];
  if (v6)
  {
    CFRelease(v6);
    a1[22] = 0;
  }

  v7 = a1[23];
  if (v7)
  {
    CFRelease(v7);
    a1[23] = 0;
  }

  v8 = a1[24];
  if (v8)
  {
    CFRelease(v8);
    a1[24] = 0;
  }

  v9 = a1[25];
  if (v9)
  {
    CFRelease(v9);
    a1[25] = 0;
  }

  v10 = a1[26];
  if (v10)
  {
    CFRelease(v10);
    a1[26] = 0;
  }

  v11 = a1[27];
  if (v11)
  {
    CFRelease(v11);
    a1[27] = 0;
  }

  v12 = a1[28];
  if (v12)
  {
    CFRelease(v12);
    a1[28] = 0;
  }

  v13 = a1[29];
  if (v13)
  {
    CFRelease(v13);
    a1[29] = 0;
  }

  v14 = a1[31];
  if (v14)
  {
    CFRelease(v14);
    a1[31] = 0;
  }

  v15 = a1[32];
  if (v15)
  {
    CFRelease(v15);
    a1[32] = 0;
  }

  v16 = a1[33];
  if (v16)
  {
    CFRelease(v16);
    a1[33] = 0;
  }

  v17 = a1[34];
  if (v17)
  {
    CFRelease(v17);
    a1[34] = 0;
  }

  v18 = a1[35];
  if (v18)
  {
    CFRelease(v18);
    a1[35] = 0;
  }

  v19 = a1[36];
  if (v19)
  {
    CFRelease(v19);
    a1[36] = 0;
  }

  v20 = a1[37];
  if (v20)
  {
    CFRelease(v20);
    a1[37] = 0;
  }

  v21 = a1[38];
  if (v21)
  {
    CFRelease(v21);
    a1[38] = 0;
  }

  v22 = a1[39];
  if (v22)
  {
    CFRelease(v22);
    a1[39] = 0;
  }

  v23 = a1[40];
  if (v23)
  {
    CFRelease(v23);
    a1[40] = 0;
  }

  v24 = a1[41];
  if (v24)
  {
    CFRelease(v24);
    a1[41] = 0;
  }

  v25 = a1[42];
  if (v25)
  {
    CFRelease(v25);
    a1[42] = 0;
  }

  v26 = a1[43];
  if (v26)
  {
    CFRelease(v26);
    a1[43] = 0;
  }

  v27 = a1[44];
  if (v27)
  {
    CFRelease(v27);
    a1[44] = 0;
  }

  v28 = a1[45];
  if (v28)
  {
    CFRelease(v28);
    a1[45] = 0;
  }

  v29 = a1[46];
  if (v29)
  {
    CFRelease(v29);
    a1[46] = 0;
  }

  v30 = a1[47];
  if (v30)
  {
    CFRelease(v30);
    a1[47] = 0;
  }

  v31 = a1[48];
  if (v31)
  {
    CFRelease(v31);
    a1[48] = 0;
  }

  v32 = a1[49];
  if (v32)
  {
    CFRelease(v32);
    a1[49] = 0;
  }

  v33 = a1[50];
  if (v33)
  {
    CFRelease(v33);
    a1[50] = 0;
  }

  v34 = a1[52];
  if (v34)
  {
    CFRelease(v34);
    a1[52] = 0;
  }

  v35 = a1[51];
  if (v35)
  {
    CFRelease(v35);
  }

  free(a1);
  return 0;
}

uint64_t ContactsDataSourceGetEntityTypeProcessOrder(uint64_t a1, __CFArray **a2)
{
  Mutable = *(a1 + 400);
  if (!Mutable)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v7 = CFArrayCreateMutable(v5, 0, v6);
    CFArrayAppendValue(v7, @"com.apple.contacts.Contact");
    CFArrayAppendValue(v7, @"com.apple.contacts.Group");
    CFArrayAppendValue(Mutable, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v8, @"com.apple.contacts.Email Address");
    CFArrayAppendValue(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v9, @"com.apple.contacts.Phone Number");
    CFArrayAppendValue(Mutable, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v10, @"com.apple.contacts.Street Address");
    CFArrayAppendValue(Mutable, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v11, @"com.apple.contacts.URL");
    CFArrayAppendValue(Mutable, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v12, @"com.apple.contacts.Related Name");
    CFArrayAppendValue(Mutable, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    v13 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v13, @"com.apple.contacts.IM");
    CFArrayAppendValue(Mutable, v13);
    if (v13)
    {
      CFRelease(v13);
    }

    v14 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v14, @"com.apple.contacts.Date");
    CFArrayAppendValue(Mutable, v14);
    if (v14)
    {
      CFRelease(v14);
    }

    *(a1 + 400) = Mutable;
  }

  *a2 = Mutable;
  return 0;
}

uint64_t _makeAccountForSource(uint64_t a1, const void *a2)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  error = 0;
  v4 = ABAccountCreate();
  if (v4)
  {
    v5 = v4;
    if (ABAccountSetIdentifier())
    {
      if (ABAddressBookAddRecord(*(a1 + 144), v5, &error))
      {
        v6 = *(a1 + 144);
        ABAddressBookProcessAddedRecords();
        v7 = *(a1 + 144);
        if (ABAddressBookSetAccountForSource())
        {
          v8 = 1;
LABEL_21:
          CFRelease(v5);
          return v8;
        }

        if (!DLShouldLog())
        {
LABEL_18:
          if (error)
          {
            CFRelease(error);
            v8 = 0;
            error = 0;
          }

          else
          {
            v8 = 0;
          }

          goto LABEL_21;
        }

        ABRecordGetRecordID(a2);
      }

      else if (!DLShouldLog())
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (!DLShouldLog())
      {
        goto LABEL_18;
      }

      ABRecordGetRecordID(a2);
    }

    _DLLog();
    goto LABEL_18;
  }

  if (DLShouldLog())
  {
    ABRecordGetRecordID(a2);
    _DLLog();
  }

  return 1;
}

void _setComputerSyncAnchorForStore(uint64_t a1)
{
  if (a1)
  {
    v2 = _copyComputerSyncAnchorKey(a1);
    if (DLShouldLog())
    {
      _DLLog();
    }

    v3 = *(a1 + 144);
    ABAddressBookSetValue();
    if (v2)
    {

      CFRelease(v2);
    }
  }
}

void _setDeviceSyncAnchorForStore(uint64_t a1)
{
  v2 = _copyDeviceSyncAnchorKey(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v3 = *(a1 + 144);
  ABAddressBookSetValue();
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef _copyComputerSyncAnchorKey(uint64_t a1)
{
  v1 = *(a1 + 152);
  if (v1)
  {
    RecordID = ABRecordGetRecordID(v1);
  }

  else
  {
    RecordID = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"ComputerStoreSyncAnchor-%d", RecordID);
}

CFStringRef _copyDeviceSyncAnchorKey(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 152)) != 0)
  {
    RecordID = ABRecordGetRecordID(v1);
  }

  else
  {
    RecordID = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"DeviceStoreSyncAnchor-%d", RecordID);
}

void _RemoveRecordsFromAddressBook(uint64_t a1, CFArrayRef theArray, void (*a3)(uint64_t, const void *))
{
  error = 0;
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (a3)
      {
        a3(a1, ValueAtIndex);
      }

      if (!ABAddressBookRemoveRecord(*(a1 + 144), ValueAtIndex, &error) && DLShouldLog())
      {
        _DLLog();
      }

      if (error)
      {
        CFRelease(error);
        error = 0;
      }
    }
  }
}

void _SaveClearedPersonsSounds(uint64_t a1, uint64_t a2)
{
  _SaveClearedPersonsSound(*(a1 + 408), a2, 0xFFFFFFFFLL);
  v4 = *(a1 + 416);

  _SaveClearedPersonsSound(v4, a2, 4294967294);
}

void _SaveClearedPersonsSound(const __CFDictionary *a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return;
  }

  v6 = ABPersonCopyCompositeName();
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = MEMORY[0x25F849DC0](a2, a3);
  if (!v8)
  {
    v8 = CFRetain(@"<null>");
  }

  Value = CFDictionaryGetValue(a1, v7);
  if (!Value)
  {
    if (CFStringCompare(v8, @"<null>", 0) && DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(a1, v7, v8);
    goto LABEL_20;
  }

  v10 = Value;
  if (CFStringCompare(Value, v8, 0))
  {
    v11 = CFStringCompare(v10, @"<conflict>", 0);
    v12 = DLShouldLog();
    if (v11)
    {
      if (v12)
      {
        _DLLog();
      }

      CFDictionaryReplaceValue(a1, v7, @"<conflict>");
      goto LABEL_20;
    }

    if (v12)
    {
      goto LABEL_19;
    }
  }

  else if (CFStringCompare(v8, @"<null>", 0) && DLShouldLog())
  {
LABEL_19:
    _DLLog();
  }

LABEL_20:
  CFRelease(v7);
  if (v8)
  {

    CFRelease(v8);
  }
}

void _AccumulateContacts(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 176);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    property = *MEMORY[0x277CE98C0];
    v37 = *MEMORY[0x277CE9980];
    v36 = *MEMORY[0x277CE99A0];
    v35 = *MEMORY[0x277CE9A30];
    v33 = *MEMORY[0x277CE99B0];
    v34 = *MEMORY[0x277CE9A50];
    v31 = *MEMORY[0x277CE9978];
    v32 = *MEMORY[0x277CE98B8];
    v30 = *MEMORY[0x277CE9998];
    v29 = *MEMORY[0x277CE99C0];
    v27 = *MEMORY[0x277CE9878];
    v28 = *MEMORY[0x277CE9958];
    v26 = *MEMORY[0x277CE99B8];
    v4 = *MEMORY[0x277CE9858];
    v5 = *MEMORY[0x277CE9970];
    v6 = *MEMORY[0x277CE9968];
    otherNumber = *MEMORY[0x277CE9960];
    v7 = *MEMORY[0x277CBED28];
    v24 = *MEMORY[0x277CBED10];
    v8 = *(a1 + 432);
    do
    {
      if (Count <= v8)
      {
        return;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 176), v8);
      RecordID = ABRecordGetRecordID(ValueAtIndex);
      v11 = CFStringCreateWithFormat(0, 0, @"%d", RecordID);
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.contacts.Contact");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, property, @"first name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v37, @"last name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v36, @"middle name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v35, @"title");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v34, @"suffix");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v33, @"nickname");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v32, @"first name yomi");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v31, @"last name yomi");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v30, @"middle name yomi");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v29, @"company name");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v28, @"job title");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v27, @"department");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v26, @"notes");
      _SetRecordValueInDictionary(Mutable, ValueAtIndex, v4, @"birthday");
      v13 = ABRecordCopyValue(ValueAtIndex, v5);
      if (CFNumberCompare(v13, v6, 0))
      {
        if (CFNumberCompare(v13, otherNumber, 0))
        {
          goto LABEL_9;
        }

        v14 = @"company";
      }

      else
      {
        v14 = @"person";
      }

      CFDictionarySetValue(Mutable, @"display as company", v14);
LABEL_9:
      if (v13)
      {
        CFRelease(v13);
      }

      v15 = ABPersonCopyImageDataWithFormat(ValueAtIndex, 5u);
      if (!v15)
      {
        v15 = ABPersonCopyImageDataWithFormat(ValueAtIndex, kABPersonImageFormatThumbnail);
      }

      Value = v7;
      if (*(a1 + 440) == 1)
      {
        v17 = *(a1 + 184);
        if (v17)
        {
          v18 = ABRecordGetRecordID(ValueAtIndex);
          Value = CFDictionaryGetValue(v17, v18);
          if (!Value)
          {
            Value = v7;
            if (DLShouldLog())
            {
              ABRecordGetRecordID(ValueAtIndex);
              _DLLog();
              Value = v7;
            }
          }
        }

        else if (v15)
        {
          Value = v7;
        }

        else
        {
          Value = v24;
        }

        CFDictionarySetValue(Mutable, @"ImageChanged", Value);
      }

      if (Value == v7 && v15)
      {
        CFDictionarySetValue(Mutable, @"image", v15);
        Length = CFDataGetLength(v15);
LABEL_26:
        CFRelease(v15);
        v20 = Length;
        goto LABEL_27;
      }

      Length = 0;
      v20 = 0;
      if (v15)
      {
        goto LABEL_26;
      }

LABEL_27:
      v21 = *(a1 + 424) + v20;
      *(a1 + 424) = v21;
      if (v21 >= 4000001)
      {
        if (DLShouldLog())
        {
          v23 = *(a1 + 424);
          _DLLog();
        }

        v22 = *(a1 + 144);
        ABProcessAddedImages();
        *(a1 + 424) = 0;
      }

      CFDictionarySetValue(a2, v11, Mutable);
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      if (v11)
      {
        CFRelease(v11);
      }

      v8 = *(a1 + 432) + 1;
      *(a1 + 432) = v8;
    }

    while (v21 < 4000001);
  }
}

void _SetRecordValueInDictionary(__CFDictionary *a1, ABRecordRef record, ABPropertyID property, const void *a4)
{
  v6 = ABRecordCopyValue(record, property);
  if (v6)
  {
    v7 = v6;
    CFDictionarySetValue(a1, a4, v6);

    CFRelease(v7);
  }
}

void _AccumulateGroups(CFMutableDictionaryRef *a1, CFArrayRef theArray)
{
  v2 = theArray;
  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return;
  }

  v5 = Count;
  if (!*a1)
  {
    *a1 = CFDictionaryCreateMutable(0, Count, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
  }

  v6 = 0;
  property = *MEMORY[0x277CE97F8];
  v24 = a1;
  v25 = v2;
  v23 = v5;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v6);
    RecordID = ABRecordGetRecordID(ValueAtIndex);
    v9 = CFStringCreateWithFormat(0, 0, @"Group/%d", RecordID);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
    CFDictionarySetValue(*a1, v9, Mutable);
    CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.contacts.Group");
    _SetRecordValueInDictionary(Mutable, ValueAtIndex, property, @"name");
    if (v9)
    {
      CFRelease(v9);
    }

    v11 = ABGroupCopyArrayOfAllMembersAndSubgroups();
    if (!v11)
    {
      goto LABEL_24;
    }

    v12 = v11;
    v13 = CFArrayGetCount(v11);
    if (v13 < 1)
    {
      goto LABEL_23;
    }

    v14 = v13;
    v15 = CFArrayCreateMutable(0, v13, MEMORY[0x277CBF128]);
    for (i = 0; i != v14; ++i)
    {
      v17 = CFArrayGetValueAtIndex(v12, i);
      RecordType = ABRecordGetRecordType(v17);
      v19 = ABRecordGetRecordID(v17);
      if (RecordType == 1)
      {
        v20 = CFStringCreateWithFormat(0, 0, @"Group/%d", v19, v22);
LABEL_14:
        if (v20)
        {
          v21 = v20;
          CFArrayAppendValue(v15, v20);
          CFRelease(v21);
        }

        continue;
      }

      if (!RecordType)
      {
        v20 = CFStringCreateWithFormat(0, 0, @"%d", v19, v22);
        goto LABEL_14;
      }

      if (DLShouldLog())
      {
        v22 = v17;
        _DLLog();
      }
    }

    if (CFArrayGetCount(v15) >= 1)
    {
      CFDictionarySetValue(Mutable, @"members", v15);
    }

    a1 = v24;
    v2 = v25;
    v5 = v23;
    if (v15)
    {
      CFRelease(v15);
    }

LABEL_23:
    CFRelease(v12);
LABEL_24:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    ++v6;
  }

  while (v6 != v5);
}

void _AccumulatePropertiesForType(const __CFArray **a1, uint64_t a2, const void *a3, __CFDictionary *a4)
{
  v5 = a1[22];
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = 0;
      v62 = *MEMORY[0x277CBECE8];
      v65 = *MEMORY[0x277CE9828];
      v60 = *MEMORY[0x277CE98E8];
      v49 = *MEMORY[0x277CE9948];
      v50 = *MEMORY[0x277CE9920];
      v56 = *MEMORY[0x277CE9810];
      key = *MEMORY[0x277CE9838];
      v54 = *MEMORY[0x277CE9840];
      v55 = *MEMORY[0x277CE9830];
      v52 = *MEMORY[0x277CE9818];
      v53 = *MEMORY[0x277CE9820];
      v61 = *MEMORY[0x277CE9888];
      v59 = *MEMORY[0x277CE9A18];
      v43 = *MEMORY[0x277CE9A38];
      v44 = *MEMORY[0x277CE9A58];
      v42 = *MEMORY[0x277CE9870];
      v40 = *MEMORY[0x277CE9848];
      v41 = *MEMORY[0x277CE98D0];
      v47 = *MEMORY[0x277CE9AE8];
      v48 = *MEMORY[0x277CE9800];
      theString2 = *MEMORY[0x277CE99F8];
      v51 = *MEMORY[0x277CE9808];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1[22], v7);
        v9 = ABRecordCopyValue(ValueAtIndex, a2);
        if (v9)
        {
          v10 = v9;
          v46 = v7;
          RecordID = ABRecordGetRecordID(ValueAtIndex);
          v12 = ABMultiValueGetCount(v10);
          if (v12 >= 1)
          {
            v13 = v12;
            for (i = 0; v13 != i; ++i)
            {
              values = CFStringCreateWithFormat(0, 0, @"%d", RecordID);
              v15 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              IdentifierAtIndex = ABMultiValueGetIdentifierAtIndex(v10, i);
              Mutable = CFDictionaryCreateMutable(v62, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", a3);
              CFDictionarySetValue(Mutable, @"contact", v15);
              if (v15)
              {
                CFRelease(v15);
              }

              v18 = ABMultiValueCopyValueAtIndex(v10, i);
              v19 = v18;
              if (v65 == a2)
              {
                if (!v18)
                {
                  goto LABEL_36;
                }

                Value = CFDictionaryGetValue(v18, key);
                if (Value)
                {
                  CFDictionarySetValue(Mutable, @"street", Value);
                }

                v21 = CFDictionaryGetValue(v19, v56);
                if (v21)
                {
                  CFDictionarySetValue(Mutable, @"city", v21);
                }

                v22 = CFDictionaryGetValue(v19, v55);
                if (v22)
                {
                  CFDictionarySetValue(Mutable, @"state", v22);
                }

                v23 = CFDictionaryGetValue(v19, v54);
                if (v23)
                {
                  CFDictionarySetValue(Mutable, @"postal code", v23);
                }

                v24 = CFDictionaryGetValue(v19, v53);
                if (v24)
                {
                  CFDictionarySetValue(Mutable, @"country", v24);
                }

                v25 = CFDictionaryGetValue(v19, v52);
                if (!v25)
                {
                  goto LABEL_35;
                }

                v26 = v25;
                v27 = Mutable;
                v28 = @"country code";
              }

              else if (v60 == a2)
              {
                if (!v18)
                {
                  goto LABEL_36;
                }

                v29 = CFDictionaryGetValue(v18, v50);
                if (v29)
                {
                  v30 = v29;
                  v31 = a1[43];
                  if (!v31)
                  {
                    _InitializeInstantMessageServiceStringsArrays();
                    v31 = CFDictionaryCreate(0, &sABInstantMessageServiceStrings, &sSyncServicesInstantMessageServiceStrings, 10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                    a1[43] = v31;
                  }

                  v32 = CFDictionaryGetValue(v31, v30);
                  if (v32)
                  {
                    CFDictionarySetValue(Mutable, v50, v32);
                  }
                }

                v33 = CFDictionaryGetValue(v19, v49);
                if (!v33)
                {
                  goto LABEL_35;
                }

                v26 = v33;
                v27 = Mutable;
                v28 = @"user";
              }

              else
              {
                if (!v18)
                {
                  goto LABEL_36;
                }

                v27 = Mutable;
                v28 = @"value";
                v26 = v19;
              }

              CFDictionarySetValue(v27, v28, v26);
LABEL_35:
              CFRelease(v19);
LABEL_36:
              v34 = ABMultiValueCopyLabelAtIndex(v10, i);
              if (v61 == a2)
              {
                v35 = a1[33];
                if (!v35)
                {
                  if (!sABEmailTypeStrings)
                  {
                    sABEmailTypeStrings = v48;
                    *algn_27F9F29B8 = v47;
                    sSyncServicesEmailTypeStrings = @"home";
                    *algn_27F9F29C8 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABEmailTypeStrings, &sSyncServicesEmailTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[33] = v35;
                }
              }

              else if (v59 == a2)
              {
                v35 = a1[35];
                if (!v35)
                {
                  _InitializePhoneTypeStringsArrays();
                  v35 = CFDictionaryCreate(0, &sABPhoneTypeStrings, &sSyncServicesPhoneTypeStrings, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[35] = v35;
                }
              }

              else if (v65 == a2)
              {
                v35 = a1[37];
                if (!v35)
                {
                  if (!sABAddressTypeStrings)
                  {
                    sABAddressTypeStrings = v48;
                    *algn_27F9F2A48 = v47;
                    sSyncServicesAddressTypeStrings = @"home";
                    *algn_27F9F2A58 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABAddressTypeStrings, &sSyncServicesAddressTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[37] = v35;
                }
              }

              else if (v60 == a2)
              {
                v35 = a1[45];
                if (!v35)
                {
                  if (!sABInstantMessageTypeStrings)
                  {
                    sABInstantMessageTypeStrings = v48;
                    *algn_27F9F2A68 = v47;
                    sSyncServicesInstantMessageTypeStrings = @"home";
                    *algn_27F9F2A78 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABInstantMessageTypeStrings, &sSyncServicesInstantMessageTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[45] = v35;
                }
              }

              else if (v44 == a2)
              {
                v35 = a1[39];
                if (!v35)
                {
                  if (!sABURLTypeStrings)
                  {
                    sABURLTypeStrings = v41;
                    *algn_27F9F2A88 = v48;
                    qword_27F9F2A90 = v47;
                    sSyncServicesURLTypeStrings = @"home page";
                    unk_27F9F2AA0 = @"home";
                    qword_27F9F2AA8 = @"work";
                  }

                  v35 = CFDictionaryCreate(0, &sABURLTypeStrings, &sSyncServicesURLTypeStrings, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[39] = v35;
                }
              }

              else if (v43 == a2)
              {
                v35 = a1[41];
                if (!v35)
                {
                  _InitializeRelatedNamesTypeStringsArrays();
                  v35 = CFDictionaryCreate(0, &sABRelatedNamesTypeStrings, &sSyncServicesRelatedNamesTypeStrings, 11, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[41] = v35;
                }
              }

              else if (v42 == a2)
              {
                v35 = a1[47];
                if (!v35)
                {
                  if (!sABDateTypeStrings)
                  {
                    sABDateTypeStrings = v40;
                    sSyncServicesDateTypeStrings = @"anniversary";
                  }

                  v35 = CFDictionaryCreate(0, &sABDateTypeStrings, &sSyncServicesDateTypeStrings, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                  a1[47] = v35;
                }
              }

              else
              {
                v35 = 0;
              }

              if (!v34)
              {
                v34 = CFRetain(@"other");
              }

              v36 = CFDictionaryGetValue(v35, v34);
              if (v36)
              {
                goto LABEL_79;
              }

              if (CFStringCompare(v34, theString2, 0) == kCFCompareEqualTo)
              {
                v38 = @"iPhone";
LABEL_77:
                CFDictionarySetValue(Mutable, @"label", v38);
                goto LABEL_78;
              }

              if (CFStringCompare(v34, v51, 0))
              {
                v37 = CFStringCompare(v34, @"other", 0);
                if (!v34)
                {
                  v36 = @"other";
                  goto LABEL_79;
                }

                v38 = v34;
                v36 = @"other";
                if (v37 == kCFCompareEqualTo)
                {
                  goto LABEL_79;
                }

                goto LABEL_77;
              }

LABEL_78:
              v36 = @"other";
LABEL_79:
              CFDictionarySetValue(Mutable, @"type", v36);
              if (v34)
              {
                CFRelease(v34);
              }

              v39 = CFStringCreateWithFormat(0, 0, @"%d/%d/%d", a2, RecordID, IdentifierAtIndex);
              CFDictionarySetValue(a4, v39, Mutable);
              if (v39)
              {
                CFRelease(v39);
              }

              if (Mutable)
              {
                CFRelease(Mutable);
              }

              if (values)
              {
                CFRelease(values);
              }
            }
          }

          CFRelease(v10);
          v7 = v46;
        }

        ++v7;
      }

      while (v7 != Count);
    }
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }
}

void _InitializePhoneTypeStringsArrays()
{
  if (!sABPhoneTypeStrings)
  {
    v0 = *MEMORY[0x277CE9AE8];
    sABPhoneTypeStrings = *MEMORY[0x277CE9800];
    *algn_27F9F29D8 = v0;
    v1 = *MEMORY[0x277CE9A00];
    qword_27F9F29E0 = *MEMORY[0x277CE9A08];
    unk_27F9F29E8 = v1;
    v2 = *MEMORY[0x277CE9A28];
    qword_27F9F29F0 = *MEMORY[0x277CE99F0];
    unk_27F9F29F8 = v2;
    qword_27F9F2A00 = *MEMORY[0x277CE9A10];
    sSyncServicesPhoneTypeStrings = @"home";
    unk_27F9F2A10 = @"work";
    qword_27F9F2A18 = @"mobile";
    unk_27F9F2A20 = @"main";
    qword_27F9F2A28 = @"home fax";
    unk_27F9F2A30 = @"work fax";
    qword_27F9F2A38 = @"pager";
  }
}

void _InitializeRelatedNamesTypeStringsArrays()
{
  if (!sABRelatedNamesTypeStrings)
  {
    v0 = *MEMORY[0x277CE99A8];
    sABRelatedNamesTypeStrings = *MEMORY[0x277CE98B0];
    *algn_27F9F2AB8 = v0;
    v1 = *MEMORY[0x277CE9868];
    qword_27F9F2AC0 = *MEMORY[0x277CE99C8];
    unk_27F9F2AC8 = v1;
    v2 = *MEMORY[0x277CE9A40];
    qword_27F9F2AD0 = *MEMORY[0x277CE9860];
    unk_27F9F2AD8 = v2;
    v3 = *MEMORY[0x277CE9A48];
    qword_27F9F2AE0 = *MEMORY[0x277CE98C8];
    unk_27F9F2AE8 = v3;
    v4 = *MEMORY[0x277CE9850];
    qword_27F9F2AF0 = *MEMORY[0x277CE99D0];
    unk_27F9F2AF8 = v4;
    qword_27F9F2B00 = *MEMORY[0x277CE9990];
    sSyncServicesRelatedNamesTypeStrings = @"father";
    unk_27F9F2B10 = @"mother";
    qword_27F9F2B18 = @"parent";
    unk_27F9F2B20 = @"child";
    qword_27F9F2B28 = @"brother";
    unk_27F9F2B30 = @"sister";
    qword_27F9F2B38 = @"friend";
    unk_27F9F2B40 = @"spouse";
    qword_27F9F2B48 = @"partner";
    unk_27F9F2B50 = @"assistant";
    qword_27F9F2B58 = @"manager";
  }
}

void _InitializeInstantMessageServiceStringsArrays()
{
  if (!sABInstantMessageServiceStrings)
  {
    v0 = *MEMORY[0x277CE9918];
    sABInstantMessageServiceStrings = *MEMORY[0x277CE9940];
    *algn_27F9F2B78 = v0;
    v1 = *MEMORY[0x277CE9910];
    qword_27F9F2B80 = *MEMORY[0x277CE9928];
    unk_27F9F2B88 = v1;
    v2 = *MEMORY[0x277CE9930];
    qword_27F9F2B90 = *MEMORY[0x277CE98F0];
    unk_27F9F2B98 = v2;
    v3 = *MEMORY[0x277CE9938];
    qword_27F9F2BA0 = *MEMORY[0x277CE9908];
    unk_27F9F2BA8 = v3;
    v4 = *MEMORY[0x277CE9900];
    qword_27F9F2BB0 = *MEMORY[0x277CE98F8];
    unk_27F9F2BB8 = v4;
    sSyncServicesInstantMessageServiceStrings = @"yahoo";
    *algn_27F9F2BC8 = @"jabber";
    qword_27F9F2BD0 = @"msn";
    unk_27F9F2BD8 = @"icq";
    qword_27F9F2BE0 = @"aim";
    unk_27F9F2BE8 = @"qq";
    qword_27F9F2BF0 = @"googletalk";
    unk_27F9F2BF8 = @"skype";
    qword_27F9F2C00 = @"facebook";
    unk_27F9F2C08 = @"gadugadu";
  }
}

void _saveDeviceSyncAnchorAndClearChangeHistory(uint64_t a1)
{
  if ((*(a1 + 436) & 0x80000000) == 0)
  {
    v2 = *(a1 + 144);
    v3 = *(a1 + 152);
    ABChangeHistoryClearChangesUpToSequenceNumberForClient();
  }

  error = 0;
  if (!*(a1 + 160))
  {
    *(a1 + 160) = CFRetain(@"---");
  }

  _setDeviceSyncAnchorForStore(a1);
  if (!ABAddressBookSave(*(a1 + 144), &error) && DLShouldLog())
  {
    _DLLog();
  }

  *(a1 + 442) = 1;
  if (error)
  {
    CFRelease(error);
  }
}

void _ChangesApplierFunction(const __CFString *a1, const __CFDictionary *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(a2))
  {
    v12 = CFDictionaryGetValue(a2, @"com.apple.syncservices.RecordEntityName");
    if (!v12)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_30;
    }

    v13 = v12;
    if (CFStringCompare(v12, @"com.apple.contacts.Group", 0))
    {
      if (CFStringCompare(v13, @"com.apple.contacts.Contact", 0))
      {
        if (CFStringCompare(v13, @"com.apple.contacts.Email Address", 0) && CFStringCompare(v13, @"com.apple.contacts.Phone Number", 0) && CFStringCompare(v13, @"com.apple.contacts.Street Address", 0) && CFStringCompare(v13, @"com.apple.contacts.URL", 0) && CFStringCompare(v13, @"com.apple.contacts.IM", 0) && CFStringCompare(v13, @"com.apple.contacts.Related Name", 0) && CFStringCompare(v13, @"com.apple.contacts.Date", 0))
        {
          if (!DLShouldLog())
          {
            return;
          }

          goto LABEL_30;
        }

        v14 = *(a3 + 392);
        if (v14)
        {
          goto LABEL_317;
        }

        sSyncServicesEntityTypeStrings = @"com.apple.contacts.Email Address";
        *algn_27F9F2C18 = @"com.apple.contacts.Phone Number";
        qword_27F9F2C20 = @"com.apple.contacts.Street Address";
        unk_27F9F2C28 = @"com.apple.contacts.URL";
        qword_27F9F2C30 = @"com.apple.contacts.Date";
        unk_27F9F2C38 = @"com.apple.contacts.Related Name";
        qword_27F9F2C40 = @"com.apple.contacts.IM";
        v15 = *MEMORY[0x277CE9A18];
        sABPropertyNames = *MEMORY[0x277CE9888];
        unk_27F9F2C50 = v15;
        v16 = *MEMORY[0x277CE9A58];
        qword_27F9F2C58 = *MEMORY[0x277CE9828];
        unk_27F9F2C60 = v16;
        v17 = *MEMORY[0x277CE9A38];
        qword_27F9F2C68 = *MEMORY[0x277CE9870];
        unk_27F9F2C70 = v17;
        qword_27F9F2C78 = *MEMORY[0x277CE98E8];
        v14 = CFDictionaryCreate(0, &sSyncServicesEntityTypeStrings, &sABPropertyNames, 7, MEMORY[0x277CBF138], 0);
        *(a3 + 392) = v14;
        if (v14)
        {
LABEL_317:
          error = 0;
          if (CFDictionaryGetValueIfPresent(v14, v13, &error))
          {
            v18 = error;
            v19 = CFDictionaryGetValue(a2, @"contact");
            if (v19 && (v20 = v19, CFArrayGetCount(v19) == 1))
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v20, 0);
              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            else
            {
              ValueAtIndex = 0;
            }

            ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
            GroupWithRecordID = ArrayBySeparatingStrings;
            if (ArrayBySeparatingStrings && CFArrayGetCount(ArrayBySeparatingStrings) >= 2)
            {
              if (CFArrayGetCount(GroupWithRecordID) == 3)
              {
                v34 = CFArrayGetValueAtIndex(GroupWithRecordID, 1);
                v35 = CFArrayGetValueAtIndex(GroupWithRecordID, 2);
                if (v35)
                {
                  IntValue = CFStringGetIntValue(v35);
                }

                else
                {
                  IntValue = -1;
                }

                if (ValueAtIndex && v34)
                {
                  if (CFStringCompare(v34, ValueAtIndex, 0) == kCFCompareEqualTo)
                  {
                    goto LABEL_142;
                  }

                  IntValue = -1;
                  goto LABEL_133;
                }

                if (v34)
                {
                  goto LABEL_142;
                }

LABEL_132:
                if (!ValueAtIndex)
                {
                  v34 = 0;
                  goto LABEL_139;
                }

LABEL_133:
                v47 = *(a3 + 248);
                if (v47 && (v48 = CFDictionaryGetValue(v47, ValueAtIndex)) != 0)
                {
                  v34 = v48;
                  if (DLShouldLog())
                  {
                    _DLLog();
                  }
                }

                else
                {
                  v34 = ValueAtIndex;
                }

LABEL_139:
                if (DLShouldLog())
                {
                  _DLLog();
                }

                if (!v34)
                {
                  if (!DLShouldLog())
                  {
                    goto LABEL_312;
                  }

                  goto LABEL_161;
                }

LABEL_142:
                if (recordIdentifierIsLocal(v34))
                {
                  recordID = CFStringGetIntValue(v34);
                }

                else
                {
                  if (DLShouldLog())
                  {
                    _DLLog();
                  }

                  recordID = 0xFFFFFFFFLL;
                }

                v49 = *(a3 + 192);
                if (v49)
                {
                  v50 = CFDictionaryGetValue(v49, v34);
                  if (v50)
                  {
                    PersonWithRecordID = v50;
                    if (DLShouldLog())
                    {
                      _DLLog();
                    }

LABEL_155:
                    if (DLShouldLog())
                    {
                      _DLLog();
                    }

                    LODWORD(value) = IntValue;
                    error = 0;
                    v52 = ABRecordCopyValue(PersonWithRecordID, v18);
                    v53 = v52;
                    v54 = MEMORY[0x277CE9828];
                    if (v52)
                    {
                      if (IntValue == -1)
                      {
                        IndexForIdentifier = -1;
                      }

                      else
                      {
                        IndexForIdentifier = ABMultiValueGetIndexForIdentifier(v52, IntValue);
                      }

                      MutableCopy = ABMultiValueCreateMutableCopy(v53);
                    }

                    else
                    {
                      if (*MEMORY[0x277CE98E8] == v18 || *MEMORY[0x277CE9828] == v18)
                      {
                        v57 = 261;
                      }

                      else
                      {
                        v57 = 257;
                      }

                      MutableCopy = ABMultiValueCreateMutable(v57);
                      IndexForIdentifier = -1;
                    }

                    if (!MutableCopy)
                    {
                      goto LABEL_309;
                    }

                    v59 = *v54;
                    index = IndexForIdentifier;
                    multiValue = MutableCopy;
                    if (v59 == v18)
                    {
                      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                      v61 = CFDictionaryGetValue(a2, @"street");
                      if (v61)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9838], v61);
                      }

                      v62 = CFDictionaryGetValue(a2, @"city");
                      if (v62)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9810], v62);
                      }

                      v63 = CFDictionaryGetValue(a2, @"state");
                      if (v63)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9830], v63);
                      }

                      v64 = CFDictionaryGetValue(a2, @"postal code");
                      if (v64)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9840], v64);
                      }

                      v65 = CFDictionaryGetValue(a2, @"country");
                      if (v65)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9820], v65);
                      }

                      v66 = CFDictionaryGetValue(a2, @"country code");
                      if (v66)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9818], v66);
                      }

                      goto LABEL_222;
                    }

                    v89 = PersonWithRecordID;
                    v67 = v59;
                    if (*MEMORY[0x277CE98E8] == v18)
                    {
                      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                      v68 = CFDictionaryGetValue(a2, @"service");
                      if (v68)
                      {
                        v69 = v68;
                        v70 = *(a3 + 352);
                        if (!v70)
                        {
                          _InitializeInstantMessageServiceStringsArrays();
                          v70 = CFDictionaryCreate(0, &sSyncServicesInstantMessageServiceStrings, &sABInstantMessageServiceStrings, 10, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                          *(a3 + 352) = v70;
                        }

                        v71 = CFDictionaryGetValue(v70, v69);
                        if (v71)
                        {
                          CFDictionarySetValue(Mutable, *MEMORY[0x277CE9920], v71);
                        }
                      }

                      v72 = CFDictionaryGetValue(a2, @"user");
                      if (v72)
                      {
                        CFDictionarySetValue(Mutable, *MEMORY[0x277CE9948], v72);
                      }
                    }

                    else
                    {
                      v73 = *MEMORY[0x277CE9A58];
                      v74 = CFDictionaryGetValue(a2, @"value");
                      Mutable = v74;
                      if (v73 != v18)
                      {
                        v59 = v67;
                        if (!v74)
                        {
                          PersonWithRecordID = v89;
                          if (DLShouldLog())
                          {
                            _DLLog();
                          }

                          Mutable = 0;
LABEL_222:
                          v75 = CFDictionaryGetValue(a2, @"type");
                          if (!v75)
                          {
                            v79 = Mutable != 0;
                            goto LABEL_291;
                          }

                          v76 = v75;
                          if (CFStringCompare(v75, @"other", 0))
                          {
                            if (*MEMORY[0x277CE9888] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 272);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABEmailTypeStrings)
                                {
                                  v78 = *MEMORY[0x277CE9AE8];
                                  sABEmailTypeStrings = *MEMORY[0x277CE9800];
                                  *algn_27F9F29B8 = v78;
                                  sSyncServicesEmailTypeStrings = @"home";
                                  *algn_27F9F29C8 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesEmailTypeStrings, &sABEmailTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 272) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE9A18] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 288);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                _InitializePhoneTypeStringsArrays();
                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesPhoneTypeStrings, &sABPhoneTypeStrings, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 288) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (v59 == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 304);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABAddressTypeStrings)
                                {
                                  v83 = *MEMORY[0x277CE9AE8];
                                  sABAddressTypeStrings = *MEMORY[0x277CE9800];
                                  *algn_27F9F2A48 = v83;
                                  sSyncServicesAddressTypeStrings = @"home";
                                  *algn_27F9F2A58 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesAddressTypeStrings, &sABAddressTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 304) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE98E8] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 368);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABInstantMessageTypeStrings)
                                {
                                  v84 = *MEMORY[0x277CE9AE8];
                                  sABInstantMessageTypeStrings = *MEMORY[0x277CE9800];
                                  *algn_27F9F2A68 = v84;
                                  sSyncServicesInstantMessageTypeStrings = @"home";
                                  *algn_27F9F2A78 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesInstantMessageTypeStrings, &sABInstantMessageTypeStrings, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 368) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE9A58] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = *(a3 + 320);
                              if (!RelatedNamesTypeSyncServicesToAB)
                              {
                                if (!sABURLTypeStrings)
                                {
                                  v85 = *MEMORY[0x277CE9800];
                                  sABURLTypeStrings = *MEMORY[0x277CE98D0];
                                  *algn_27F9F2A88 = v85;
                                  qword_27F9F2A90 = *MEMORY[0x277CE9AE8];
                                  sSyncServicesURLTypeStrings = @"home page";
                                  unk_27F9F2AA0 = @"home";
                                  qword_27F9F2AA8 = @"work";
                                }

                                RelatedNamesTypeSyncServicesToAB = CFDictionaryCreate(0, &sSyncServicesURLTypeStrings, &sABURLTypeStrings, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                                *(a3 + 320) = RelatedNamesTypeSyncServicesToAB;
                              }
                            }

                            else if (*MEMORY[0x277CE9A38] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = _GetRelatedNamesTypeSyncServicesToAB(a3);
                            }

                            else if (*MEMORY[0x277CE9870] == v18)
                            {
                              RelatedNamesTypeSyncServicesToAB = _GetDateTypeSyncServicesToAB(a3);
                            }

                            else
                            {
                              RelatedNamesTypeSyncServicesToAB = 0;
                            }

                            v81 = CFDictionaryGetValue(RelatedNamesTypeSyncServicesToAB, v76);
                            if (DLShouldLog())
                            {
                              goto LABEL_284;
                            }
                          }

                          else
                          {
                            v80 = CFDictionaryGetValue(a2, @"label");
                            if (v80)
                            {
                              v81 = v80;
                              if (CFStringCompare(v80, @"iPhone", 0) == kCFCompareEqualTo)
                              {
                                v82 = DLShouldLog();
                                v81 = *MEMORY[0x277CE99F8];
                                if (v82)
                                {
                                  _DLLog();
                                }
                              }

                              if (DLShouldLog())
                              {
                                goto LABEL_284;
                              }
                            }

                            else
                            {
                              v81 = *MEMORY[0x277CE9808];
                              if (DLShouldLog())
                              {
LABEL_284:
                                _DLLog();
                              }
                            }
                          }

                          v79 = Mutable != 0;
                          if (Mutable && v81)
                          {
                            if (index == -1)
                            {
                              v86 = multiValue;
                              ABMultiValueAddValueAndLabel(multiValue, Mutable, v81, &value);
                              v87 = CFStringCreateWithFormat(0, 0, @"%d/%d/%d", v18, recordID, value);
                              v88 = *(a3 + 256);
                              if (!v88)
                              {
                                v88 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
                                *(a3 + 256) = v88;
                              }

                              *(a3 + 240) = v88;
                              if (DLShouldLog())
                              {
                                _DLLog();
                              }

                              CFDictionarySetValue(*(a3 + 240), a1, v87);
                              if (v87)
                              {
                                CFRelease(v87);
                              }
                            }

                            else
                            {
                              v86 = multiValue;
                              if (DLShouldLog())
                              {
                                _DLLog();
                              }

                              ABMultiValueReplaceValueAtIndex(multiValue, Mutable, index);
                              ABMultiValueReplaceLabelAtIndex(multiValue, v81, index);
                            }

                            ABMultiValueSetImmutable();
                            if (!ABRecordSetValue(PersonWithRecordID, v18, v86, &error) && DLShouldLog())
                            {
                              ABRecordGetRecordID(PersonWithRecordID);
                              _DLLog();
                            }

                            if (error)
                            {
                              CFRelease(error);
                              error = 0;
                            }

                            goto LABEL_307;
                          }

LABEL_291:
                          if (DLShouldLog())
                          {
                            _DLLog();
                            if (!v79)
                            {
                              goto LABEL_308;
                            }
                          }

                          else if (!v79)
                          {
                            goto LABEL_308;
                          }

LABEL_307:
                          CFRelease(Mutable);
LABEL_308:
                          CFRelease(multiValue);
LABEL_309:
                          if (!v53)
                          {
                            goto LABEL_312;
                          }

                          v46 = v53;
                          goto LABEL_311;
                        }

                        CFRetain(v74);
LABEL_221:
                        PersonWithRecordID = v89;
                        goto LABEL_222;
                      }

                      Mutable = CFURLCreateStringByReplacingPercentEscapes(0, v74, &stru_286BC1018);
                    }

                    v59 = v67;
                    goto LABEL_221;
                  }
                }

                if (recordID != -1)
                {
                  PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(a3 + 144), recordID);
                  if (PersonWithRecordID)
                  {
                    goto LABEL_155;
                  }
                }

                if (!DLShouldLog())
                {
                  goto LABEL_312;
                }

LABEL_161:
                _DLLog();
                goto LABEL_312;
              }

              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            IntValue = -1;
            goto LABEL_132;
          }
        }

        if (!DLShouldLog())
        {
          return;
        }

LABEL_30:
        _DLLog();
        return;
      }

      v93 = 0;
      if (recordIdentifierIsLocal(a1) && (v27 = CFStringGetIntValue(a1), (v28 = ABAddressBookGetPersonWithRecordID(*(a3 + 144), v27)) != 0))
      {
        GroupWithRecordID = v28;
        if (DLShouldLog())
        {
          _DLLog();
        }

        CFRetain(GroupWithRecordID);
      }

      else
      {
        v30 = ABPersonCreateInSource(*(a3 + 152));
        if (!v30)
        {
          if (!DLShouldLog())
          {
            return;
          }

          goto LABEL_30;
        }

        GroupWithRecordID = v30;
        if (!ABAddressBookAddRecord(*(a3 + 144), v30, &v93))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          CFRelease(GroupWithRecordID);
          v29 = v93;
          if (v93)
          {
            goto LABEL_314;
          }

          return;
        }

        if (v93)
        {
          CFRelease(v93);
          v93 = 0;
        }

        if (!*(a3 + 200))
        {
          *(a3 + 200) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        }

        if (DLShouldLog())
        {
          _DLLog();
        }

        CFDictionaryAddValue(*(a3 + 200), a1, GroupWithRecordID);
      }

      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE98C0], @"first name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9980], @"last name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99A0], @"middle name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9A30], @"title");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9A50], @"suffix");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99B0], @"nickname");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE98B8], @"first name yomi");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9978], @"last name yomi");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9998], @"middle name yomi");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99C0], @"company name");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9958], @"job title");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9878], @"department");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE99B8], @"notes");
      _SetContactValueInABPerson(a2, GroupWithRecordID, *MEMORY[0x277CE9858], @"birthday");
      v31 = CFDictionaryGetValue(a2, @"display as company");
      if (!v31)
      {
        ABRecordRemoveValue(GroupWithRecordID, *MEMORY[0x277CE9970], &v93);
        goto LABEL_172;
      }

      v32 = v31;
      if (CFStringCompare(v31, @"person", 0))
      {
        if (CFStringCompare(v32, @"company", 0))
        {
          goto LABEL_174;
        }

        if (!ABRecordSetValue(GroupWithRecordID, *MEMORY[0x277CE9970], *MEMORY[0x277CE9960], &v93) && DLShouldLog())
        {
          goto LABEL_171;
        }
      }

      else if (!ABRecordSetValue(GroupWithRecordID, *MEMORY[0x277CE9970], *MEMORY[0x277CE9968], &v93) && DLShouldLog())
      {
LABEL_171:
        ABRecordGetRecordID(GroupWithRecordID);
        _DLLog();
      }

LABEL_172:
      if (v93)
      {
        CFRelease(v93);
        v93 = 0;
      }

LABEL_174:
      value = 0;
      error = 0;
      if (*(a3 + 440) == 1 && CFDictionaryGetValue(a2, @"ImageChanged") == *MEMORY[0x277CBED10])
      {
        if (DLShouldLog())
        {
          goto LABEL_192;
        }
      }

      else
      {
        if (CFDictionaryGetValue(a2, @"SDImageUnchangedMarker"))
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (!CFDictionaryContainsKey(a2, @"image") || !DLShouldLog())
          {
            goto LABEL_313;
          }

          goto LABEL_193;
        }

        if (!ABPersonRemoveImageData(GroupWithRecordID, &error) && DLShouldLog())
        {
          ABRecordGetRecordID(GroupWithRecordID);
          _DLLog();
        }

        if (error)
        {
          CFRelease(error);
          error = 0;
        }

        if (!CFDictionaryGetValueIfPresent(a2, @"image", &value))
        {
          goto LABEL_313;
        }

        *(a3 + 137) = 1;
        if (CFDataGetLength(value) <= *(a3 + 428))
        {
          if (!ABPersonSetImageData(GroupWithRecordID, value, &error))
          {
            if (DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

            if (error)
            {
              CFRelease(error);
              error = 0;
            }
          }

          if ((ABPersonSetImageDataAndCropRect() & 1) == 0)
          {
            if (DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

            if (error)
            {
              CFRelease(error);
            }
          }

          goto LABEL_313;
        }

        if (DLShouldLog())
        {
LABEL_192:
          ABRecordGetRecordID(GroupWithRecordID);
LABEL_193:
          _DLLog();
        }
      }

LABEL_313:
      v29 = GroupWithRecordID;
LABEL_314:
      CFRelease(v29);
      return;
    }

    error = 0;
    if (recordIdentifierIsLocal(a1))
    {
      v22 = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
      v23 = v22;
      if (v22 && CFArrayGetCount(v22) == 2)
      {
        v24 = CFArrayGetValueAtIndex(v23, 1);
        v25 = CFStringGetIntValue(v24);
        GroupWithRecordID = ABAddressBookGetGroupWithRecordID(*(a3 + 144), v25);
        goto LABEL_83;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      if (v23)
      {
        GroupWithRecordID = 0;
LABEL_83:
        CFRelease(v23);
        v37 = CFDictionaryGetValue(a2, @"name");
        if (v37)
        {
          v38 = v37;
          if (GroupWithRecordID)
          {
            CFRetain(GroupWithRecordID);
            if (DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

LABEL_96:
            if (!ABRecordSetValue(GroupWithRecordID, *MEMORY[0x277CE97F8], v38, &error) && DLShouldLog())
            {
              ABRecordGetRecordID(GroupWithRecordID);
              _DLLog();
            }

            if (error)
            {
              CFRelease(error);
              error = 0;
            }

            v41 = CFDictionaryGetValue(a2, @"members");
            if (v41)
            {
              v42 = v41;
              CFRetain(v41);
            }

            else
            {
              v42 = CFArrayCreate(0, 0, 0, 0);
            }

            v43 = *(a3 + 224);
            if (!v43)
            {
              v44 = *MEMORY[0x277CBECE8];
              v45 = MEMORY[0x277CBF128];
              *(a3 + 224) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
              *(a3 + 232) = CFArrayCreateMutable(v44, 0, v45);
              v43 = *(a3 + 224);
            }

            CFArrayAppendValue(v43, GroupWithRecordID);
            CFArrayAppendValue(*(a3 + 232), v42);
            if (!v42)
            {
LABEL_312:
              if (!GroupWithRecordID)
              {
                return;
              }

              goto LABEL_313;
            }

            v46 = v42;
LABEL_311:
            CFRelease(v46);
            goto LABEL_312;
          }

LABEL_89:
          if (DLShouldLog())
          {
            _DLLog();
          }

          GroupWithRecordID = ABGroupCreateInSource(*(a3 + 152));
          if (!ABAddressBookAddRecord(*(a3 + 144), GroupWithRecordID, &error))
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            CFShow(GroupWithRecordID);
            if (GroupWithRecordID)
            {
              CFRelease(GroupWithRecordID);
            }

            v29 = error;
            if (error)
            {
              goto LABEL_314;
            }

            return;
          }

          v40 = *(a3 + 208);
          if (!v40)
          {
            v40 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            *(a3 + 208) = v40;
          }

          CFDictionaryAddValue(v40, a1, GroupWithRecordID);
          if (error)
          {
            CFRelease(error);
            error = 0;
          }

          goto LABEL_96;
        }

        goto LABEL_103;
      }
    }

    v39 = CFDictionaryGetValue(a2, @"name");
    if (v39)
    {
      v38 = v39;
      goto LABEL_89;
    }

LABEL_103:
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_30;
  }

  v7 = CFStringCreateArrayBySeparatingStrings(0, a1, @"/");
  if (v7)
  {
    v8 = v7;
    if (CFArrayGetCount(v7) >= 2)
    {
      if (CFArrayGetCount(v8) == 2)
      {
        v9 = CFArrayGetValueAtIndex(v8, 1);
        error = 0;
        if (DLShouldLog())
        {
          _DLLog();
        }

        if (recordIdentifierIsLocal(v9) && (v10 = CFStringGetIntValue(v9), (v11 = ABAddressBookGetGroupWithRecordID(*(a3 + 144), v10)) != 0))
        {
          if (!ABAddressBookRemoveRecord(*(a3 + 144), v11, &error) && DLShouldLog())
          {
            _DLLog();
          }

          if (error)
          {
            CFRelease(error);
          }
        }

        else if (DLShouldLog())
        {
          _DLLog();
        }

        v29 = v8;
        goto LABEL_314;
      }

      if (CFArrayGetCount(v8) == 3)
      {
        if (!*(a3 + 216))
        {
          *(a3 + 216) = CFArrayCreateMutable(0, 0, 0);
        }

        if (DLShouldLog())
        {
          _DLLog();
        }

        CFArrayAppendValue(*(a3 + 216), a1);
        goto LABEL_108;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    _DeleteContact(a3, a1);
LABEL_108:

    CFRelease(v8);
    return;
  }

  _DeleteContact(a3, a1);
}

void _DeleteContact(uint64_t a1, const __CFString *a2)
{
  error = 0;
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (recordIdentifierIsLocal(a2) && (IntValue = CFStringGetIntValue(a2), (PersonWithRecordID = ABAddressBookGetPersonWithRecordID(*(a1 + 144), IntValue)) != 0))
  {
    if (!ABAddressBookRemoveRecord(*(a1 + 144), PersonWithRecordID, &error) && DLShouldLog())
    {
      _DLLog();
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }
}

void _SetContactValueInABPerson(const __CFDictionary *a1, const void *a2, ABPropertyID a3, void *key)
{
  error = 0;
  Value = CFDictionaryGetValue(a1, key);
  if (Value)
  {
    if (ABRecordSetValue(a2, a3, Value, &error) || !DLShouldLog())
    {
      goto LABEL_8;
    }
  }

  else if (ABRecordRemoveValue(a2, a3, &error) || !DLShouldLog())
  {
    goto LABEL_8;
  }

  ABRecordGetRecordID(a2);
  _DLLog();
LABEL_8:
  if (error)
  {
    CFRelease(error);
  }
}

CFDictionaryRef _GetRelatedNamesTypeSyncServicesToAB(uint64_t a1)
{
  result = *(a1 + 336);
  if (!result)
  {
    _InitializeRelatedNamesTypeStringsArrays();
    result = CFDictionaryCreate(0, &sSyncServicesRelatedNamesTypeStrings, &sABRelatedNamesTypeStrings, 11, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 336) = result;
  }

  return result;
}

CFDictionaryRef _GetDateTypeSyncServicesToAB(uint64_t a1)
{
  result = *(a1 + 384);
  if (!result)
  {
    if (!sABDateTypeStrings)
    {
      sABDateTypeStrings = *MEMORY[0x277CE9848];
      sSyncServicesDateTypeStrings = @"anniversary";
    }

    result = CFDictionaryCreate(0, &sSyncServicesDateTypeStrings, &sABDateTypeStrings, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 384) = result;
  }

  return result;
}

void _UpdateRecordRemapping(const void *a1, ABRecordRef record, __CFDictionary **a3, uint64_t (*a4)(uint64_t))
{
  RecordID = ABRecordGetRecordID(record);
  if (RecordID)
  {
    v9 = RecordID;
    Mutable = a3[31];
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBED60], MEMORY[0x277CBF150]);
      a3[31] = Mutable;
    }

    a3[30] = Mutable;
    v11 = a4(v9);
    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionarySetValue(a3[30], a1, v11);
    v12 = a3[24];
    if (!v12)
    {
      v12 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      a3[24] = v12;
    }

    CFDictionaryAddValue(v12, v11, record);
    if (v11)
    {

      CFRelease(v11);
    }
  }

  else if (DLShouldLog())
  {

    _DLLog();
  }
}

void _RestoreClearedPersonsSound(const __CFDictionary *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = ABPersonCopyCompositeName();
    if (v3)
    {
      v4 = v3;
      Value = CFDictionaryGetValue(a1, v3);
      if (Value)
      {
        v6 = Value;
        if (CFStringCompare(Value, @"<null>", 0))
        {
          if (CFStringCompare(v6, @"<conflict>", 0))
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            ABPersonSetSoundIdentifierForMultiValueIdentifier();
          }

          else if (DLShouldLog())
          {
            _DLLog();
          }
        }
      }

      CFRelease(v4);
    }
  }
}

uint64_t CalendarsDataSourceCreator(void *a1, uint64_t a2, const __CFDictionary *a3, void *a4)
{
  v8 = malloc_type_calloc(0x168uLL, 1uLL, 0x10E00407F70F82FuLL);
  v9 = MEMORY[0x277CBED10];
  *a1 = v8;
  *v8 = *v9;
  *(v8 + 2) = CalendarsDataSourceGetVersionFunction;
  *(v8 + 3) = CalendarsDataSourceCanSyncWithVersionFunction;
  *(v8 + 4) = CalendarsDataSourceMigrateFunction;
  *(v8 + 5) = CalendarsDataSourceRemoveStoreFunction;
  *(v8 + 6) = CalendarsDataSourceGetSyncTypeAndExchangeSyncAnchors;
  *(v8 + 7) = CalendarsDataSourceClearSyncAnchors;
  *(v8 + 8) = CalendarsDataSourceClearAllRecords;
  *(v8 + 9) = CalendarsDataSourceGetChanges;
  *(v8 + 10) = CalendarsDataSourceGetAllRecords;
  *(v8 + 11) = CalendarsDataSourceGetCountOfRecords;
  *(v8 + 12) = CalendarsDataSourceProcessChanges;
  *(v8 + 13) = CalendarsDataSourceCommit;
  *(v8 + 14) = CalendarsDataSourceRollback;
  *(v8 + 15) = CalendarsDataSourceGetEntityTypeProcessOrder;
  *(v8 + 16) = CalendarsDataSourceDeleteDataSource;
  *(v8 + 17) = DLMemoryPoolCreate();
  *(v8 + 37) = 0;
  *(v8 + 9) = 0u;
  *(v8 + 10) = 0u;
  *(v8 + 44) = 0;
  *(v8 + 13) = 0u;
  *(v8 + 14) = 0u;
  *(v8 + 15) = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 17) = 0u;
  *(v8 + 23) = CalDatabaseCreateWithOptions();
  CalDatabaseSetClientIdentifier();
  v10 = *(v8 + 23);
  *(v8 + 24) = CalDatabaseCopyDefaultLocalCalendar();
  v11 = *(v8 + 23);
  if (!a2)
  {
    v30 = CalDatabaseCopyLocalStore();
    *(v8 + 25) = v30;
    if (v30)
    {
      v29 = 0;
      goto LABEL_45;
    }

    if (!DLShouldLog())
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v12 = CalDatabaseCopyStoreWithExternalID();
  v13 = v12;
  if (v12)
  {
    goto LABEL_7;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v14 = *(v8 + 23);
  Store = CalDatabaseCreateStore();
  if (Store)
  {
    v13 = Store;
    CalStoreSetExternalID();
LABEL_7:
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a3)
    {
      if (CFDictionaryGetValue(a3, @"StoreDisplayName"))
      {
        CalStoreSetName();
      }

      Value = CFDictionaryGetValue(a3, @"StoreType");
      if (Value)
      {
        valuePtr = -1;
        if (CFNumberGetValue(Value, kCFNumberIntType, &valuePtr))
        {
          CalStoreSetType();
        }
      }
    }

    v17 = *(v8 + 23);
    v18 = CalDatabaseCopyProperty();
    if (!v18)
    {
      goto LABEL_27;
    }

    v19 = v18;
    if (CFStringGetIntValue(v18) <= 106)
    {
      Type = CalStoreGetType();
      CFRelease(v19);
      if (Type != 3)
      {
        goto LABEL_27;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      v21 = CalStoreCopyCalendars();
      if (!v21)
      {
        goto LABEL_27;
      }

      v19 = v21;
      Count = CFArrayGetCount(v21);
      if (Count >= 1)
      {
        v23 = Count;
        for (i = 0; i != v23; ++i)
        {
          CFArrayGetValueAtIndex(v19, i);
          UID = CalCalendarGetUID();
          v26 = CFStringCreateWithFormat(0, 0, @"%d", UID);
          CalCalendarSetExternalID();
          if (v26)
          {
            CFRelease(v26);
          }
        }
      }
    }

    CFRelease(v19);
LABEL_27:
    if (!v12)
    {
      v27 = *(v8 + 23);
      CalDatabaseSave();
    }

    v28 = *(v8 + 25);
    if (v28)
    {
      CFRelease(v28);
    }

    v29 = 0;
    *(v8 + 25) = v13;
    goto LABEL_45;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (a4)
  {
    *a4 = @"Could not create a new calendar store";
    CFRetain(@"Could not create a new calendar store");
  }

  if (DLShouldLog())
  {
LABEL_41:
    _DLLog();
  }

LABEL_42:
  if (DLShouldLog())
  {
    _DLLog();
  }

  v29 = 0xFFFFFFFFLL;
LABEL_45:
  v31 = *(v8 + 23);
  v32 = *(v8 + 25);
  *(v8 + 78) = CalDatabaseRegisterClientForPersistentChangeTrackingInStore();
  *&v33 = 0x100000001;
  *(&v33 + 1) = 0x100000001;
  *(v8 + 316) = v33;
  *(v8 + 332) = 0xFFFFFFFEFFFFFFFELL;
  *(v8 + 43) = 0;
  v8[340] = 0;
  *(v8 + 88) = 257;
  v8[356] = 1;
  if (a3)
  {
    v34 = CFDictionaryGetValue(a3, @"ShouldSendAllCalendarsOnFastSync");
    if (v34)
    {
      v35 = v34;
      if (DLShouldLog())
      {
        *MEMORY[0x277CBED28];
        _DLLog();
      }

      v8[340] = CFBooleanGetValue(v35);
    }

    v36 = CFDictionaryGetValue(a3, @"OrganizerAddressSet");
    if (v36)
    {
      v37 = v36;
      if (DLShouldLog())
      {
        _DLLog();
      }

      *(v8 + 43) = CFRetain(v37);
    }

    v38 = CFDictionaryGetValue(a3, @"ShouldSyncAttendeesAndOrganizers");
    if (v38)
    {
      v39 = v38;
      if (DLShouldLog())
      {
        *MEMORY[0x277CBED28];
        _DLLog();
      }

      v8[352] = CFBooleanGetValue(v39);
    }

    v40 = CFDictionaryGetValue(a3, @"ShouldSyncCalendarColors");
    if (v40)
    {
      v41 = v40;
      if (DLShouldLog())
      {
        *MEMORY[0x277CBED28];
        _DLLog();
      }

      v8[353] = CFBooleanGetValue(v41);
    }

    v42 = CFDictionaryGetValue(a3, @"UpdateAnchorsOnPull");
    if (v42)
    {
      v43 = v42;
      if (DLShouldLog())
      {
        *MEMORY[0x277CBED28];
        _DLLog();
      }

      v8[354] = CFBooleanGetValue(v43);
    }

    v44 = CFDictionaryGetValue(a3, @"IsEventsOnly");
    if (v44)
    {
      v45 = v44;
      if (DLShouldLog())
      {
        *MEMORY[0x277CBED28];
        _DLLog();
      }

      v8[357] = CFBooleanGetValue(v45);
    }

    v46 = CFDictionaryGetValue(a3, @"IsRemindersOnly");
    if (v46)
    {
      v47 = v46;
      if (DLShouldLog())
      {
        *MEMORY[0x277CBED28];
        _DLLog();
      }

      v8[358] = CFBooleanGetValue(v47);
    }

    v48 = CFDictionaryGetValue(a3, @"IsTetheredSync");
    if (v48)
    {
      v49 = v48;
      if (DLShouldLog())
      {
        _DLLog();
      }

      v8[359] = CFBooleanGetValue(v49);
    }
  }

  return v29;
}

uint64_t CalendarsDataSourceGetVersionFunction(uint64_t a1, CFTypeRef *a2)
{
  v3 = sCalendarDataSourceVersion;
  if (!sCalendarDataSourceVersion)
  {
    v3 = CFNumberCreate(0, kCFNumberIntType, &kDefaultCalendarsDataSourceVersion);
    sCalendarDataSourceVersion = v3;
  }

  *a2 = CFRetain(v3);
  return 0;
}

uint64_t CalendarsDataSourceCanSyncWithVersionFunction(uint64_t a1, CFNumberRef number, void *a3)
{
  valuePtr = 0;
  CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
  v5 = MEMORY[0x277CBED28];
  v6 = valuePtr;
  if (valuePtr <= 102)
  {
    v5 = MEMORY[0x277CBED10];
  }

  *a3 = *v5;
  if (v6 <= 104)
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    *(a1 + 352) = 0;
    v6 = valuePtr;
  }

  if (v6 <= 107)
  {
    *(a1 + 356) = 0;
    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  return 0;
}

uint64_t CalendarsDataSourceMigrateFunction(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 200);
  CalStoreGetUID();
  v7 = *(a2 + 184);
  v8 = CalDatabaseCopyStoreWithUID();
  if (!v8)
  {
    v19 = @"CalendarsDataSourceMigrateFunction: Could not get the destination data source";
    goto LABEL_38;
  }

  v9 = v8;
  v10 = *(a2 + 184);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v11 = CalStoreCopyCalendars();
  if (v11)
  {
    v12 = v11;
    Count = CFArrayGetCount(v11);
    if (Count < 1)
    {
      CFRelease(v12);
    }

    else
    {
      v14 = Count;
      v29 = v5;
      v15 = 0;
      for (i = 0; i != v14; ++i)
      {
        CFArrayGetValueAtIndex(v12, i);
        v17 = CalCalendarCopyType();
        if ((CalCalendarIsSubscribed() & 1) != 0 || (CalCalendarIsInbox() & 1) != 0 || (CalCalendarIsNotificationsCollection() & 1) != 0 || CalCalendarGetSharingStatus() == 3 || v17 && (CFStringCompare(v17, @"caldav", 0) == kCFCompareEqualTo || CFStringCompare(v17, @"urlsubscribe", 0) == kCFCompareEqualTo) || CalCalendarGetSharingStatus() == 2 || CalCalendarIsReadOnly())
        {
          v18 = CalCalendarCopyTitle();
          if (DLShouldLog())
          {
            CalCalendarGetUID();
            _DLLog();
          }

          if (v18)
          {
            CFRelease(v18);
          }

          CalRemoveCalendar();
          v15 = 1;
        }

        if (v17)
        {
          CFRelease(v17);
        }
      }

      CFRelease(v12);
      v5 = v29;
      if (v15)
      {
        CalDatabaseSave();
      }
    }
  }

  if (!*(v5 + 357) && !*(v5 + 358))
  {
    if (!*(a2 + 357) && !*(a2 + 358))
    {
      v27 = *(a2 + 200);
      v22 = CalStoreMigrateToStore();
      goto LABEL_34;
    }

    *(a2 + 357);
  }

  v20 = *(a2 + 184);
  v21 = *(a2 + 200);
  v22 = CalDatabaseMigrateCalendarsWithEntityType();
LABEL_34:
  v23 = v22;
  CFRelease(v9);
  if (v23)
  {
    _setComputerSyncAnchorForStore_0(a2);
    _setDeviceSyncAnchorForStore_0(a2);
    v24 = *(a2 + 184);
    if (CalDatabaseSave())
    {
      v25 = 0;
    }

    else
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v25 = 0xFFFFFFFFLL;
    }

    _setComputerSyncAnchorForStore_0(v5);
    _setDeviceSyncAnchorForStore_0(v5);
    v26 = *(v5 + 184);
    if ((CalDatabaseSave() & 1) == 0)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      return 0xFFFFFFFFLL;
    }

    return v25;
  }

  v19 = @"CalendarsDataSourceMigrateFunction: could not perform cal store migration";
LABEL_38:

  return MEMORY[0x2821867D0](0xFFFFFFFFLL, a3, v19);
}

uint64_t CalendarsDataSourceRemoveStoreFunction(uint64_t a1)
{
  if (DLShouldLog())
  {
    v2 = *(a1 + 200);
    CalStoreGetUID();
    _DLLog();
  }

  _setComputerSyncAnchorForStore_0(a1);
  _setDeviceSyncAnchorForStore_0(a1);
  v3 = *(a1 + 200);
  v4 = CalStoreCopyExternalID();
  v5 = *(a1 + 200);
  CalRemoveStore();
  v6 = *(a1 + 184);
  if (CalDatabaseSave())
  {
    v7 = 0;
    if (!v4)
    {
      return v7;
    }

    goto LABEL_9;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  v7 = 0xFFFFFFFFLL;
  if (v4)
  {
LABEL_9:
    CFRelease(v4);
  }

  return v7;
}

uint64_t CalendarsDataSourceGetSyncTypeAndExchangeSyncAnchors(void *a1, CFTypeRef *a2, const __CFString *a3, const void *a4, uint64_t *a5, CFTypeRef *a6)
{
  v12 = _copyComputerSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v13 = a1[23];
  v14 = CalDatabaseCopyProperty();
  if (!v14)
  {
    v15 = a1[23];
    v16 = CalDatabaseCopyProperty();
    if (v16)
    {
      v17 = v16;
      if (CFStringCompare(v16, @"__UNUSED__", 0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        v18 = a1[23];
        CalDatabaseSetProperty();
        v19 = a1[23];
        CalDatabaseSetProperty();
        v14 = CFRetain(v17);
      }

      else
      {
        v14 = 0;
      }

      CFRelease(v17);
    }

    else
    {
      v14 = 0;
    }
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (a4)
  {
    CFRetain(a4);
    v20 = a1[17];
    a1[19] = DLMemoryPoolAddObject();
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeFast");
  *a5 = v14;
  v21 = _copyDeviceSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v22 = a1[23];
  v23 = CalDatabaseCopyProperty();
  if (!v23)
  {
    v24 = a1[23];
    v25 = CalDatabaseCopyProperty();
    if (v25)
    {
      v26 = v25;
      if (CFStringCompare(v25, @"__UNUSED__", 0))
      {
        if (DLShouldLog())
        {
          _DLLog();
        }

        v27 = a1[23];
        CalDatabaseSetProperty();
        v28 = a1[23];
        CalDatabaseSetProperty();
        v23 = CFRetain(v26);
      }

      else
      {
        v23 = 0;
      }

      CFRelease(v26);
    }

    else
    {
      v23 = 0;
    }
  }

  if (v21)
  {
    CFRelease(v21);
  }

  v29 = a1[23];
  v30 = CalDatabaseCopyProperty();
  v31 = CFStringCreateWithFormat(0, 0, @"%d", kDefaultCalendarsDataSourceVersion);
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v23)
  {
    if (v30 && CFStringCompare(v30, v31, 0) == kCFCompareEqualTo)
    {
      if (a3 && CFStringCompare(v23, a3, 0) == kCFCompareEqualTo)
      {
LABEL_40:
        CFRelease(v23);
        if (!v30)
        {
          goto LABEL_42;
        }

        goto LABEL_41;
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      v32 = @"SDSyncTypeSlow";
    }

    else
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v32 = @"SDSyncTypeReset";
    }

    *a2 = CFRetain(v32);
    goto LABEL_40;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  *a2 = CFRetain(@"SDSyncTypeReset");
  if (v30)
  {
LABEL_41:
    CFRelease(v30);
  }

LABEL_42:
  if (v31)
  {
    CFRelease(v31);
  }

  v33 = CFLocaleCopyCurrent();
  v34 = CFDateFormatterCreate(0, v33, kCFDateFormatterLongStyle, kCFDateFormatterLongStyle);
  CFDateFormatterSetFormat(v34, @"MMM dd yyyy HH:mm:ss ZZZ");
  v35 = a1[17];
  Current = CFAbsoluteTimeGetCurrent();
  CFDateFormatterCreateStringWithAbsoluteTime(0, v34, Current);
  v37 = DLMemoryPoolAddObject();
  a1[18] = v37;
  *a6 = CFRetain(v37);
  if (DLShouldLog())
  {
    v39 = a1[18];
    _DLLog();
  }

  CFRelease(v34);
  CFRelease(v33);
  return 0;
}

uint64_t CalendarsDataSourceClearSyncAnchors(uint64_t a1)
{
  _setComputerSyncAnchorForStore_0(a1);
  _setDeviceSyncAnchorForStore_0(a1);
  v2 = *(a1 + 184);
  return CalDatabaseSave() - 1;
}

uint64_t CalendarsDataSourceClearAllRecords(uint64_t a1)
{
  if (*(a1 + 357) || *(a1 + 358))
  {
    v2 = *(a1 + 200);
    v3 = CalStoreCopyCalendars();
    if (v3)
    {
      v4 = v3;
      Count = CFArrayGetCount(v3);
      if (Count >= 1)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          CFArrayGetValueAtIndex(v4, i);
          if (CalCalendarCanContainEntityType())
          {
            if (DLShouldLog())
            {
              CalCalendarGetUID();
              _DLLog();
            }

            if (CalCalendarCanContainEntityType())
            {
              v8 = *(a1 + 184);
              CalDatabaseRemoveAllCalendarItemsWithCalendarAndEntityType();
              CalCalendarSetCanContainEntityType();
            }

            else
            {
              v9 = CalCalendarCopyTitle();
              v10 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v9);
              if (v9)
              {
                CFRelease(v9);
              }

              v11 = *(a1 + 184);
              CalDatabaseSetProperty();
              if (v10)
              {
                CFRelease(v10);
              }

              CalRemoveCalendar();
            }
          }
        }
      }

      CFRelease(v4);
    }
  }

  else
  {
    if ((*(a1 + 312) & 0x80000000) == 0)
    {
      v12 = *(a1 + 184);
      CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();
    }

    v13 = *(a1 + 184);
    v14 = *(a1 + 200);
    v15 = CalDatabaseCopyOfAllCalendarsInStore();
    if (v15)
    {
      v16 = v15;
      v17 = CFArrayGetCount(v15);
      if (v17 >= 1)
      {
        v18 = v17;
        for (j = 0; j != v18; ++j)
        {
          CFArrayGetValueAtIndex(v16, j);
          v20 = CalCalendarCopyTitle();
          if (DLShouldLog())
          {
            UID = CalCalendarGetUID();
            _DLLog();
          }

          v21 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v20, UID);
          if (v20)
          {
            CFRelease(v20);
          }

          v22 = *(a1 + 184);
          CalDatabaseSetProperty();
          if (v21)
          {
            CFRelease(v21);
          }

          CalRemoveCalendar();
        }
      }

      CFRelease(v16);
    }

    if (!*(a1 + 144))
    {
      CFRetain(@"---");
      v23 = *(a1 + 136);
      *(a1 + 144) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      v26 = *(a1 + 144);
      _DLLog();
    }

    v24 = *(a1 + 144);
    _setDeviceSyncAnchorForStore_0(a1);
  }

  return 0;
}

uint64_t CalendarsDataSourceGetChanges(uint64_t a1, CFMutableDictionaryRef *a2, void *a3)
{
  *a2 = 0;
  v6 = *(a1 + 176);
  if (v6 == 2)
  {
LABEL_4:
    v9 = *(a1 + 184);
    v10 = *(a1 + 200);
    *(a1 + 320) = CalDatabaseCopyEventChangesInStore();
    v12 = *(a1 + 184);
    v13 = *(a1 + 200);
    *(a1 + 324) = CalDatabaseCopyTaskChangesInStore();
    v14 = *(a1 + 184);
    v15 = *(a1 + 200);
    *(a1 + 328) = CalDatabaseCopyAlarmChangesInStore();
    v16 = *(a1 + 184);
    v17 = *(a1 + 200);
    *(a1 + 332) = CalDatabaseCopyRecurrenceChangesInStore();
    v18 = *(a1 + 184);
    v19 = *(a1 + 200);
    *(a1 + 336) = CalDatabaseCopyAttendeeChangesInStore();
    *a3 = *MEMORY[0x277CBED10];
    _AccumulateChangedRecords(a1, 2, a2, 0, 0);
    _AccumulateChangedRecords(a1, 8, a2, 0, 0);
    _AccumulateChangedRecords(a1, 4, a2, 0, 0);
    _AccumulateChangedRecords(a1, 5, a2, 0, 0);
    _AccumulateChangedRecords(a1, 7, a2, 0, 0);
    if (!*(a1 + 354))
    {
      _saveDeviceSyncAnchorAndClearChangeHistory_0(a1);
    }

    result = 0;
    *(a1 + 176) = 6;
    return result;
  }

  if (!v6)
  {
    *(a1 + 176) = 2;
    v7 = *(a1 + 184);
    v8 = *(a1 + 200);
    *(a1 + 316) = CalDatabaseCopyCalendarChangesInStore();
    *(a1 + 304) = CFSetCreateMutable(0, 0, 0);
    if (CFArrayGetCount(0) >= 1)
    {
      v20 = 0;
      do
      {
        v21 = *(a1 + 304);
        ValueAtIndex = CFArrayGetValueAtIndex(0, v20);
        CFSetAddValue(v21, ValueAtIndex);
        ++v20;
      }

      while (v20 < CFArrayGetCount(0));
    }

    if (*(a1 + 340) == 1)
    {
      v23 = *(a1 + 184);
      v24 = *(a1 + 200);
      v25 = CalDatabaseCopyOfAllCalendarsInStore();
      if (v25)
      {
        v26 = v25;
        _AccumulateCalendars(a1, a2, v25);
        CFRelease(v26);
        if (DLShouldLog())
        {
          v28 = *a2;
          _DLLog();
        }

        if (*a2 && CFDictionaryGetCount(*a2) >= 1)
        {
          *a3 = *MEMORY[0x277CBED28];
          return 0;
        }
      }
    }

    else
    {
      _AccumulateChangedRecords(a1, 1, a2, 0, 0);
      if (DLShouldLog())
      {
        v29 = *(a1 + 316);
        v30 = *a2;
        _DLLog();
      }

      if (*a2 && CFDictionaryGetCount(*a2) >= 1)
      {
        result = 0;
        *a3 = *MEMORY[0x277CBED28];
        return result;
      }
    }

    goto LABEL_4;
  }

  if (DLShouldLog())
  {
    v27 = *(a1 + 176);
    _DLLog();
  }

  return 0xFFFFFFFFLL;
}

uint64_t CalendarsDataSourceGetAllRecords(uint64_t a1, CFMutableDictionaryRef *a2, void *a3)
{
  *a2 = 0;
  *a3 = *MEMORY[0x277CBED28];
  v6 = *(a1 + 176);
  if (v6 <= 2)
  {
    if (v6)
    {
      if (v6 != 2)
      {
LABEL_31:
        if (DLShouldLog())
        {
          v42 = *(a1 + 176);
          _DLLog();
        }

        goto LABEL_33;
      }

      v15 = *(a1 + 184);
      v16 = *(a1 + 200);
      *(a1 + 320) = CalDatabaseCopyEventChangesInStore();
      v17 = *(a1 + 184);
      v18 = *(a1 + 200);
      v19 = CalDatabaseCopyOfAllEventsInStore();
      if (v19)
      {
        v20 = v19;
        _AccumulateEvents(a1, a2, v19);
        if (*(a1 + 352) == 1)
        {
          v21 = *(a1 + 288);
          if (v21)
          {
            CFRelease(v21);
            *(a1 + 288) = 0;
          }

          _AccumulateOrganizers(a1, (a1 + 288), v20);
        }

        CFRelease(v20);
      }

      v22 = 3;
    }

    else
    {
      v35 = *(a1 + 184);
      v36 = *(a1 + 200);
      *(a1 + 316) = CalDatabaseCopyCalendarChangesInStore();
      v37 = *(a1 + 184);
      v38 = *(a1 + 200);
      v39 = CalDatabaseCopyOfAllCalendarsInStore();
      if (v39)
      {
        v40 = v39;
        _AccumulateCalendars(a1, a2, v39);
        CFRelease(v40);
      }

      v22 = 2;
    }

LABEL_30:
    *(a1 + 176) = v22;
    return 0;
  }

  if (v6 == 3)
  {
    v23 = *(a1 + 184);
    v24 = *(a1 + 200);
    *(a1 + 328) = CalDatabaseCopyAlarmChangesInStore();
    v25 = *(a1 + 184);
    v26 = *(a1 + 200);
    v27 = CalDatabaseCopyOfAllAlarmsInStore();
    if (v27)
    {
      v28 = v27;
      _AccumulateAlarms(a2, v27);
      CFRelease(v28);
    }

    v22 = 4;
    goto LABEL_30;
  }

  if (v6 == 4)
  {
    v29 = *(a1 + 184);
    v30 = *(a1 + 200);
    *(a1 + 332) = CalDatabaseCopyRecurrenceChangesInStore();
    v31 = *(a1 + 184);
    v32 = *(a1 + 200);
    v33 = CalDatabaseCopyOfAllRecurrencesInStore();
    if (v33)
    {
      v34 = v33;
      _AccumulateRecurrences(a2, v33);
      CFRelease(v34);
    }

    if (!*(a1 + 352))
    {
      goto LABEL_33;
    }

    v22 = 5;
    goto LABEL_30;
  }

  if (v6 != 5)
  {
    goto LABEL_31;
  }

  v7 = *(a1 + 184);
  v8 = *(a1 + 200);
  *(a1 + 336) = CalDatabaseCopyAttendeeChangesInStore();
  v9 = *(a1 + 184);
  v10 = *(a1 + 200);
  v11 = CalDatabaseCopyOfAllAttendeesInStore();
  if (v11)
  {
    v12 = v11;
    _AccumulateAttendees(a1, a2, v11);
    CFRelease(v12);
  }

  v13 = *(a1 + 288);
  if (v13)
  {
    Mutable = *a2;
    if (!*a2)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *a2 = Mutable;
      v13 = *(a1 + 288);
    }

    CFDictionaryApplyFunction(v13, _addOrganizersToDictionary, Mutable);
    CFRelease(*(a1 + 288));
  }

LABEL_33:
  *(a1 + 176) = 6;
  *a3 = *MEMORY[0x277CBED10];
  if (!*(a1 + 354) && !*(a1 + 355))
  {
    _saveDeviceSyncAnchorAndClearChangeHistory_0(a1);
  }

  return 0;
}

uint64_t CalendarsDataSourceGetCountOfRecords(uint64_t a1, _DWORD *a2)
{
  if (*(a1 + 357))
  {
    *a2 = 0;
    v3 = *(a1 + 184);
    v4 = *(a1 + 200);
    CountOfEventsInStore = CalDatabaseGetCountOfEventsInStore();
  }

  else
  {
    v6 = *(a1 + 358);
    *a2 = 0;
    v7 = *(a1 + 184);
    v8 = *(a1 + 200);
    if (v6)
    {
      CountOfEventsInStore = CalDatabaseGetCountOfTasksInStore();
    }

    else
    {
      CountOfEventsInStore = CalDatabaseGetCountOfCalendarItemsInStore();
    }
  }

  *a2 = CountOfEventsInStore;
  return 0;
}

uint64_t CalendarsDataSourceProcessChanges(uint64_t context, CFDictionaryRef theDict, uint64_t a3, void *a4)
{
  if (*(context + 354) && !*(context + 355))
  {
    _saveDeviceSyncAnchorAndClearChangeHistory_0(context);
  }

  if (*(context + 352) == 1 && !*(context + 344))
  {
    *(context + 344) = _copySetOfEmailAddressesFromMessageFramework(context);
  }

  v7 = *(context + 160);
  if (v7)
  {
    CFDictionaryApplyFunction(v7, _addCurrentRemappingsToAllRemappings, context);
    *(context + 160) = 0;
  }

  CFDictionaryApplyFunction(theDict, _ChangesApplierFunction_0, context);
  v8 = *(context + 184);
  CalDatabaseProcessAddedRecords();
  v9 = *(context + 208);
  if (v9)
  {
    CFDictionaryApplyFunction(v9, _UpdateCalendarRemapping, context);
    *(context + 208) = 0;
  }

  v10 = *(context + 216);
  if (v10)
  {
    CFDictionaryApplyFunction(v10, _UpdateEventRemapping, context);
    *(context + 216) = 0;
  }

  v11 = *(context + 272);
  if (v11 && CFDictionaryGetCount(v11))
  {
    if (*(context + 264))
    {
      CFDictionaryApplyFunction(*(context + 272), _UpdateDetachedEvents, context);
      v12 = *(context + 280);
      if (v12)
      {
        CFSetApplyFunction(v12, _RemoveProcessedMainRecordIds, context);
        CFSetRemoveAllValues(*(context + 280));
      }
    }

    else if (DLShouldLog())
    {
      v19 = *(context + 272);
      _DLLog();
    }
  }

  v13 = *(context + 248);
  if (v13)
  {
    CFDictionaryApplyFunction(v13, _UpdateOrganizerRemapping, context);
    *(context + 248) = 0;
  }

  v14 = *(context + 224);
  if (v14)
  {
    CFDictionaryApplyFunction(v14, _UpdateTaskRemapping, context);
    *(context + 224) = 0;
  }

  v15 = *(context + 232);
  if (v15)
  {
    CFDictionaryApplyFunction(v15, _UpdateAlarmRemapping, context);
    *(context + 232) = 0;
  }

  v16 = *(context + 240);
  if (v16)
  {
    CFDictionaryApplyFunction(v16, _UpdateRecurrenceRemapping, context);
    *(context + 240) = 0;
  }

  v17 = *(context + 256);
  if (v17)
  {
    CFDictionaryApplyFunction(v17, _UpdateAttendeeRemapping, context);
    *(context + 256) = 0;
  }

  *a4 = *(context + 160);
  return 0;
}

uint64_t CalendarsDataSourceCommit(uint64_t a1, void *a2)
{
  if (*(a1 + 354) && !*(a1 + 355))
  {
    _saveDeviceSyncAnchorAndClearChangeHistory_0(a1);
  }

  if (!*(a1 + 152))
  {
    CFRetain(@"---");
    v4 = *(a1 + 136);
    *(a1 + 152) = DLMemoryPoolAddObject();
  }

  if (DLShouldLog())
  {
    v12 = *(a1 + 152);
    _DLLog();
  }

  v5 = *(a1 + 152);
  _setComputerSyncAnchorForStore_0(a1);
  v6 = CFStringCreateWithFormat(0, 0, @"%d", kDefaultCalendarsDataSourceVersion);
  v7 = *(a1 + 184);
  CalDatabaseSetProperty();
  if (v6)
  {
    CFRelease(v6);
  }

  if (*(a1 + 359))
  {
    v8 = *(a1 + 200);
    CalStoreSetAllowsEvents();
  }

  v9 = *(a1 + 184);
  if (CalDatabaseSaveAndFlushCaches())
  {
    v10 = *(a1 + 184);
    CalDatabaseWaitForSpotlight();
    return 0;
  }

  else
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (a2)
    {
      *a2 = @"Can't commit Calendars";
      CFRetain(@"Can't commit Calendars");
    }

    return 0xFFFFFFFFLL;
  }
}

uint64_t CalendarsDataSourceGetEntityTypeProcessOrder(uint64_t a1, __CFArray **a2)
{
  Mutable = *(a1 + 296);
  if (!Mutable)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = MEMORY[0x277CBF128];
    Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
    v7 = CFArrayCreateMutable(v5, 0, v6);
    CFArrayAppendValue(v7, @"com.apple.calendars.Calendar");
    CFArrayAppendValue(Mutable, v7);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v8, @"com.apple.calendars.Event");
    CFArrayAppendValue(Mutable, v8);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v9, @"com.apple.calendars.AudioAlarm");
    CFArrayAppendValue(v9, @"com.apple.calendars.DisplayAlarm");
    CFArrayAppendValue(Mutable, v9);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v10, @"com.apple.calendars.Recurrence");
    CFArrayAppendValue(Mutable, v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v11, @"com.apple.calendars.Attendee");
    CFArrayAppendValue(v11, @"com.apple.calendars.Organizer");
    CFArrayAppendValue(Mutable, v11);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = CFArrayCreateMutable(v5, 0, MEMORY[0x277CBF128]);
    CFArrayAppendValue(v12, @"com.apple.calendars.CalendarOrder");
    CFArrayAppendValue(Mutable, v12);
    if (v12)
    {
      CFRelease(v12);
    }

    *(a1 + 296) = Mutable;
  }

  *a2 = Mutable;
  return 0;
}

uint64_t CalendarsDataSourceDeleteDataSource(void *a1)
{
  if (DLShouldLog())
  {
    _DLLog();
  }

  v2 = a1[17];
  if (v2)
  {
    CFRelease(v2);
    a1[17] = 0;
  }

  v3 = a1[37];
  if (v3)
  {
    CFRelease(v3);
    a1[37] = 0;
  }

  v4 = a1[24];
  if (v4)
  {
    CFRelease(v4);
    a1[24] = 0;
  }

  v5 = a1[25];
  if (v5)
  {
    CFRelease(v5);
    a1[25] = 0;
  }

  v6 = a1[43];
  if (v6)
  {
    CFRelease(v6);
    a1[43] = 0;
  }

  v7 = a1[23];
  if (v7)
  {
    CFRelease(v7);
    a1[23] = 0;
  }

  v8 = a1[38];
  if (v8)
  {
    CFRelease(v8);
  }

  free(a1);
  return 0;
}

id _reallyCopySetOfEmailAddressesFromMessageFramework()
{
  v14 = *MEMORY[0x277D85DE8];
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  if (_calendarSyncAccountLoader_onceToken != -1)
  {
    _reallyCopySetOfEmailAddressesFromMessageFramework_cold_1();
  }

  v1 = [_calendarSyncAccountLoader_sSyncAccountLoader mailAccounts];
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [v0 addObjectsFromArray:{objc_msgSend(*(*(&v9 + 1) + 8 * i), "emailAddresses")}];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v6 = DLShouldLog();
  if (v0)
  {
    if (v6)
    {
      goto LABEL_16;
    }
  }

  else if (v6)
  {
LABEL_16:
    _DLLog();
  }

  v7 = *MEMORY[0x277D85DE8];
  return v0;
}

uint64_t _copySetOfEmailAddressesFromMessageFramework(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = ___copySetOfEmailAddressesFromMessageFramework_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (_copySetOfEmailAddressesFromMessageFramework_onceToken != -1)
  {
    dispatch_once(&_copySetOfEmailAddressesFromMessageFramework_onceToken, block);
  }

  return _copySetOfEmailAddressesFromMessageFramework_sEmails;
}

id ___copySetOfEmailAddressesFromMessageFramework_block_invoke()
{
  result = _reallyCopySetOfEmailAddressesFromMessageFramework();
  _copySetOfEmailAddressesFromMessageFramework_sEmails = result;
  return result;
}

void _setComputerSyncAnchorForStore_0(uint64_t a1)
{
  v2 = _copyComputerSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v3 = *(a1 + 184);
  CalDatabaseSetProperty();
  if (v2)
  {

    CFRelease(v2);
  }
}

void _setDeviceSyncAnchorForStore_0(uint64_t a1)
{
  v2 = _copyDeviceSyncAnchorKey_0(a1);
  if (DLShouldLog())
  {
    _DLLog();
  }

  v3 = *(a1 + 184);
  CalDatabaseSetProperty();
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef _copyComputerSyncAnchorKey_0(uint64_t a1)
{
  if (DLShouldLog())
  {
    if (a1)
    {
      v2 = *(a1 + 200);
      if (v2)
      {
        v3 = *(a1 + 200);
        UID = CalStoreGetUID();
LABEL_7:
        v7 = v2;
        v8 = UID;
        _DLLog();
        goto LABEL_8;
      }
    }

    else
    {
      v2 = 0;
    }

    UID = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

LABEL_8:
  if (a1 && *(a1 + 200))
  {
    v5 = CalStoreGetUID();
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"ComputerStoreSyncAnchor-%d", v5, v7, v8);
}

CFStringRef _copyDeviceSyncAnchorKey_0(uint64_t a1)
{
  if (DLShouldLog())
  {
    if (a1)
    {
      v2 = *(a1 + 200);
      if (v2)
      {
        v3 = *(a1 + 200);
        UID = CalStoreGetUID();
LABEL_7:
        v7 = v2;
        v8 = UID;
        _DLLog();
        goto LABEL_8;
      }
    }

    else
    {
      v2 = 0;
    }

    UID = 0xFFFFFFFFLL;
    goto LABEL_7;
  }

LABEL_8:
  if (a1 && *(a1 + 200))
  {
    v5 = CalStoreGetUID();
  }

  else
  {
    v5 = 0xFFFFFFFFLL;
  }

  return CFStringCreateWithFormat(0, 0, @"DeviceStoreSyncAnchor-%d", v5, v7, v8);
}

void _AccumulateCalendars(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray))
  {
    v6 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      v10 = *v6;
      value = *MEMORY[0x277CBED28];
      do
      {
        if (CFArrayGetValueAtIndex(theArray, v9) == *(a1 + 192))
        {
          if (DLShouldLog())
          {
            goto LABEL_25;
          }
        }

        else if (CalCalendarIsSubscribed())
        {
          if (DLShouldLog())
          {
            goto LABEL_25;
          }
        }

        else if (CalCalendarCanContainEntityType())
        {
          UID = CalCalendarGetUID();
          v12 = CalCalendarCopyTitle();
          if (UID == -1)
          {
            v19 = v12;
            if (DLShouldLog())
            {
              _DLLog();
            }

            if (!v19)
            {
              goto LABEL_26;
            }

            goto LABEL_65;
          }

          if (v12)
          {
            cf = v12;
            key = CFStringCreateWithFormat(0, 0, @"%d/%d", 1, UID);
            Mutable = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            v14 = *(a1 + 304);
            if (v14 && CFSetContainsValue(v14, UID))
            {
              CFDictionarySetValue(Mutable, @"com.apple.MobileSync.updated", value);
            }

            CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Calendar");
            theDict = Mutable;
            CFDictionarySetValue(Mutable, @"title", cf);
            valuePtr = 0;
            v15 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", cf);
            v16 = *(a1 + 184);
            v17 = CalDatabaseCopyProperty();
            if (v17)
            {
              v18 = v17;
              if (CFStringGetIntValue(v17))
              {
                valuePtr = 1;
              }

              CFDictionarySetValue(theDict, @"com.apple.MobileSync.calDAVInfo", value);
              if (DLShouldLog())
              {
                _DLLog();
              }

              CFRelease(v18);
            }

            else
            {
              valuePtr = CalCalendarIsReadOnly();
              if (valuePtr && DLShouldLog())
              {
                _DLLog();
              }
            }

            if (v15)
            {
              CFRelease(v15);
            }

            v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
            if (v20)
            {
              v21 = v20;
              CFDictionarySetValue(theDict, @"read only", v20);
              CFRelease(v21);
            }

            else if (DLShouldLog())
            {
              _DLLog();
            }

            if (*(a1 + 353) == 1)
            {
              v38 = -1;
              v39 = -1;
              v36 = 255;
              v37 = -1;
              ColorComponents = CalCalendarGetColorComponents();
              if (DLShouldLog())
              {
                _DLLog();
              }

              v23 = CFArrayCreateMutable(v10, 0, MEMORY[0x277CBF128]);
              if ((ColorComponents & 1) == 0)
              {
                if (DLShouldLog())
                {
                  _DLLog();
                }

                v37 = -1;
                v38 = -1;
                v39 = -1;
              }

              v30 = v10;
              v31 = a2;
              v24 = CFNumberCreate(0, kCFNumberIntType, &v39);
              v25 = CFNumberCreate(0, kCFNumberIntType, &v38);
              v26 = CFNumberCreate(0, kCFNumberIntType, &v37);
              v27 = CFNumberCreate(0, kCFNumberIntType, &v36);
              CFArrayAppendValue(v23, v24);
              CFArrayAppendValue(v23, v25);
              CFArrayAppendValue(v23, v26);
              CFArrayAppendValue(v23, v27);
              if (v24)
              {
                CFRelease(v24);
              }

              if (v25)
              {
                CFRelease(v25);
              }

              if (v26)
              {
                CFRelease(v26);
              }

              a2 = v31;
              if (v27)
              {
                CFRelease(v27);
              }

              CFDictionarySetValue(theDict, @"colorComponents", v23);
              v10 = v30;
              if (v23)
              {
                CFRelease(v23);
              }
            }

            v28 = CalCalendarCopyType();
            if (v28)
            {
              v29 = v28;
              CFDictionarySetValue(theDict, @"com.apple.ical.type", v28);
              CFRelease(v29);
            }

            v19 = key;
            CFDictionarySetValue(*a2, key, theDict);
            if (DLShouldLog())
            {
              _DLLog();
            }

            CFRelease(cf);
            CFRelease(theDict);
LABEL_65:
            CFRelease(v19);
            goto LABEL_26;
          }

          if (DLShouldLog())
          {
LABEL_25:
            _DLLog();
          }
        }

        else if (DLShouldLog())
        {
          goto LABEL_25;
        }

LABEL_26:
        ++v9;
      }

      while (v8 != v9);
    }
  }
}

void _AccumulateEvents(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray))
  {
    v6 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v8 = Count;
      v9 = 0;
      allocator = *v6;
      v51 = a1;
      v10 = *MEMORY[0x277CF78F0];
      v52 = a2;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v9);
        RowID = CalCalendarItemGetRowID();
        v13 = MEMORY[0x25F84A9A0](ValueAtIndex);
        v14 = CalCalendarItemCopyCalendar();
        v15 = v14;
        if (RowID == -1)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (v13)
          {
            CFRelease(v13);
          }

          if (!v15)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (!v14)
        {
          if (DLShouldLog())
          {
            _DLLog();
          }

          v15 = v13;
          if (!v13)
          {
            goto LABEL_31;
          }

          goto LABEL_30;
        }

        if (CalCalendarIsSubscribed())
        {
          if (!DLShouldLog())
          {
            goto LABEL_28;
          }
        }

        else if (CalCalendarCanContainEntityType())
        {
          if (v15 == *(a1 + 192))
          {
            UID = 0xFFFFFFFFLL;
LABEL_34:
            key = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID, v45);
            Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Event");
            if (v15 == *(a1 + 192))
            {
              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            else
            {
              values = CFStringCreateWithFormat(0, 0, @"%d/%d", 1, UID);
              v18 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              CFDictionarySetValue(Mutable, @"calendar", v18);
              CFRelease(v18);
              CFRelease(values);
            }

            if (v13)
            {
              CFDictionarySetValue(Mutable, @"summary", v13);
            }

            v19 = CalEventCopyLocation_Deprecated();
            if (v19)
            {
              v20 = v19;
              CFDictionarySetValue(Mutable, @"location", v19);
              CFRelease(v20);
            }

            v21 = MEMORY[0x25F84A940](ValueAtIndex);
            if (v21)
            {
              v22 = v21;
              CFDictionarySetValue(Mutable, @"description", v21);
              CFRelease(v22);
            }

            if (CalEventIsAllDay())
            {
              LODWORD(values) = 1;
              v23 = CFNumberCreate(0, kCFNumberIntType, &values);
              CFDictionarySetValue(Mutable, @"all day", v23);
              if (v23)
              {
                CFRelease(v23);
              }
            }

            v24 = MEMORY[0x25F84A9B0](ValueAtIndex);
            if (v24)
            {
              v25 = v24;
              CFDictionarySetValue(Mutable, @"url", [v24 absoluteString]);
              CFRelease(v25);
            }

            *&v26 = COERCE_DOUBLE(CalEventCopyStartDate());
            v28 = v27;
            CalEventGetEndDate();
            if (v28)
            {
              v30 = v29;
              v31 = *&v26;
              if (CFStringCompare(v28, @"_float", 0))
              {
                CFDictionarySetValue(Mutable, @"start date.timezone", v28);
                goto LABEL_54;
              }

              if (CalEventIsAllDay())
              {
LABEL_54:
                v32 = CFDateCreate(0, *&v26);
                v33 = CFDateCreate(0, v30);
                if (v32)
                {
                  goto LABEL_55;
                }
              }

              else
              {
                v41 = CFTimeZoneCopyDefault();
                v46 = CFTimeZoneCopyAbbreviation(v41, v31);
                CFDictionarySetValue(Mutable, @"start date.timezone", v46);
                cf = v41;
                SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(v41, v31);
                values = SecondsFromGMT;
                v43 = CFNumberCreate(0, kCFNumberSInt64Type, &values);
                v44 = CFDateCreate(0, SecondsFromGMT + v31);
                v49 = v43;
                CFDictionarySetValue(Mutable, @"floatingOffset", v43);
                v48 = v44;
                CFDictionarySetValue(Mutable, @"floatingGMTDate", v44);
                v32 = CFDateCreate(0, v31 - SecondsFromGMT);
                v33 = CFDateCreate(0, v30 - SecondsFromGMT);
                if (DLShouldLog())
                {
                  v45 = v48;
                  _DLLog();
                }

                CFRelease(cf);
                CFRelease(v46);
                CFRelease(v48);
                CFRelease(v49);
                if (v32)
                {
LABEL_55:
                  CFDictionarySetValue(Mutable, @"start date", v32);
                  CFRelease(v32);
                }
              }

              CalDateTimeRelease();
              if (v33)
              {
                CFDictionarySetValue(Mutable, @"end date", v33);
                CFRelease(v33);
              }
            }

            else
            {
              CalDateTimeRelease();
            }

            CalEventGetOriginalStartDate();
            if (v34 != v10)
            {
              v35 = CFDateCreate(0, v34);
              CFDictionarySetValue(Mutable, @"original date", v35);
              CFRelease(v35);
            }

            v36 = CalEventCopyOriginalEvent();
            if (v36)
            {
              v37 = CalCalendarItemGetRowID();
              values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, v37);
              v38 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              CFDictionarySetValue(Mutable, @"main event", v38);
              CFRelease(v38);
              CFRelease(values);
            }

            v39 = MEMORY[0x25F84A960](ValueAtIndex);
            if (v39)
            {
              v40 = v39;
              CFDictionarySetValue(Mutable, @"exception dates", v39);
              CFRelease(v40);
            }

            CFDictionarySetValue(*v52, key, Mutable);
            if (DLShouldLog())
            {
              _DLLog();
            }

            a1 = v51;
            if (v13)
            {
              CFRelease(v13);
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (key)
            {
              CFRelease(key);
            }

            CFRelease(v15);
            v15 = v36;
            if (!v36)
            {
              goto LABEL_31;
            }

            goto LABEL_30;
          }

          UID = CalCalendarGetUID();
          if (UID != -1)
          {
            goto LABEL_34;
          }

          if (!DLShouldLog())
          {
            goto LABEL_28;
          }
        }

        else if (!DLShouldLog())
        {
          goto LABEL_28;
        }

        _DLLog();
LABEL_28:
        if (v13)
        {
          CFRelease(v13);
        }

LABEL_30:
        CFRelease(v15);
LABEL_31:
        ++v9;
      }

      while (v8 != v9);
    }
  }
}

void _AccumulateOrganizers(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (*(a1 + 352) && CFArrayGetCount(theArray))
  {
    v4 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      allocator = *v4;
      v8 = "/Library/Caches/com.apple.xbs/Sources/Sync/DataSources/CalendarsDataSource.m";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
        v10 = CalCalendarItemCopyCalendar();
        if (v10)
        {
          v11 = v10;
          if (CalCalendarIsSubscribed())
          {
            if (DLShouldLog())
            {
LABEL_31:
              _DLLog();
            }

LABEL_32:
            v24 = v11;
LABEL_33:
            CFRelease(v24);
            goto LABEL_34;
          }

          if ((CalCalendarCanContainEntityType() & 1) == 0)
          {
            if (DLShouldLog())
            {
              goto LABEL_31;
            }

            goto LABEL_32;
          }

          CFRelease(v11);
        }

        v12 = MEMORY[0x25F84A970](ValueAtIndex);
        if (v12)
        {
          v13 = v12;
          RowID = CalCalendarItemGetRowID();
          if (RowID == -1)
          {
            if (DLShouldLog())
            {
              _DLLog();
            }

            goto LABEL_34;
          }

          v15 = RowID;
          v16 = v8;
          values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
          v17 = CFStringCreateWithFormat(0, 0, @"%d/%d", 8, v15);
          v18 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
          Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Organizer");
          CFDictionarySetValue(Mutable, @"owner", v18);
          v20 = MEMORY[0x25F84AAD0](v13);
          if (v20)
          {
            v21 = v20;
            CFDictionarySetValue(Mutable, @"common name", v20);
            CFRelease(v21);
          }

          v22 = MEMORY[0x25F84AAE0](v13);
          if (v22)
          {
            v23 = v22;
            CFDictionarySetValue(Mutable, @"email", v22);
            CFRelease(v23);
          }

          CFDictionarySetValue(*a2, v17, Mutable);
          v8 = v16;
          if (DLShouldLog())
          {
            _DLLog();
          }

          if (Mutable)
          {
            CFRelease(Mutable);
          }

          if (v18)
          {
            CFRelease(v18);
          }

          if (v17)
          {
            CFRelease(v17);
          }

          if (values)
          {
            CFRelease(values);
            values = 0;
          }

          v24 = v13;
          goto LABEL_33;
        }

LABEL_34:
        ++v7;
      }

      while (v6 != v7);
    }
  }
}

void _AccumulateAlarms(CFMutableDictionaryRef *a1, CFArrayRef theArray)
{
  if (CFArrayGetCount(theArray))
  {
    v3 = MEMORY[0x277CBECE8];
    if (!*a1)
    {
      *a1 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      allocator = *v3;
      do
      {
        CFArrayGetValueAtIndex(theArray, v6);
        UID = CalAlarmGetUID();
        if (UID == -1)
        {
          if (DLShouldLog())
          {
            goto LABEL_16;
          }
        }

        else
        {
          v8 = UID;
          v9 = CalAlarmCopyOwningEntity();
          if (v9)
          {
            v10 = v9;
            v11 = _entityTypeForRecord();
            RowID = CalCalendarItemGetRowID();
            if (RowID == -1)
            {
              if (DLShouldLog())
              {
                _DLLog();
              }
            }

            else
            {
              v13 = RowID;
              v14 = CalCalendarItemCopyCalendar();
              if (v14)
              {
                v15 = v14;
                if (CalCalendarIsSubscribed())
                {
                  if (DLShouldLog())
                  {
LABEL_35:
                    _DLLog();
                  }

LABEL_36:
                  CFRelease(v10);
                  v26 = v15;
LABEL_37:
                  CFRelease(v26);
                  goto LABEL_38;
                }

                if ((CalCalendarCanContainEntityType() & 1) == 0)
                {
                  if (DLShouldLog())
                  {
                    goto LABEL_35;
                  }

                  goto LABEL_36;
                }

                CFRelease(v15);
              }

              v16 = 2;
              if (v11 != 2)
              {
                v16 = 3;
              }

              values = CFStringCreateWithFormat(0, 0, @"%d/%d", v16, v13);
              v17 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              v18 = CFStringCreateWithFormat(0, 0, @"%d/%d", 4, v8);
              Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              if (CalAlarmGetType() == 1)
              {
                v20 = Mutable;
                v21 = @"com.apple.syncservices.RecordEntityName";
                v22 = @"com.apple.calendars.AudioAlarm";
              }

              else
              {
                CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.DisplayAlarm");
                v20 = Mutable;
                v21 = @"description";
                v22 = @"Event reminder";
              }

              CFDictionarySetValue(v20, v21, v22);
              CFDictionarySetValue(Mutable, @"owner", v17);
              CalAlarmGetTriggerDate();
              if (v23 != 1.17549435e-38)
              {
                v24 = CFDateCreate(0, v23);
                CFDictionarySetValue(Mutable, @"triggerdate", v24);
                CFRelease(v24);
              }

              valuePtr = CalAlarmGetTriggerInterval();
              if (valuePtr != 0x7FFFFFFF)
              {
                v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                CFDictionarySetValue(Mutable, @"triggerduration", v25);
                CFRelease(v25);
              }

              CFDictionarySetValue(*a1, v18, Mutable);
              if (DLShouldLog())
              {
                _DLLog();
              }

              CFRelease(Mutable);
              CFRelease(values);
              CFRelease(v17);
              CFRelease(v18);
            }

            v26 = v10;
            goto LABEL_37;
          }

          if (DLShouldLog())
          {
LABEL_16:
            _DLLog();
          }
        }

LABEL_38:
        ++v6;
      }

      while (v5 != v6);
    }
  }
}

void _AccumulateRecurrences(CFMutableDictionaryRef *a1, CFArrayRef theArray)
{
  v2 = theArray;
  if (CFArrayGetCount(theArray))
  {
    v4 = MEMORY[0x277CBECE8];
    if (!*a1)
    {
      *a1 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(v2);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      allocator = *v4;
      v74 = a1;
      v8 = *MEMORY[0x277CF78F0];
      v75 = v2;
      v76 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, v7);
        UID = CalRecurrenceGetUID();
        if (UID == -1)
        {
          if (DLShouldLog())
          {
            goto LABEL_15;
          }
        }

        else
        {
          v11 = UID;
          v12 = MEMORY[0x25F84AB70](ValueAtIndex);
          if (v12)
          {
            v13 = v12;
            v14 = CalCalendarItemCopyCalendar();
            if (v14)
            {
              v15 = v14;
              if (CalCalendarIsSubscribed())
              {
                if (DLShouldLog())
                {
LABEL_26:
                  _DLLog();
                }

LABEL_27:
                CFRelease(v13);
                v21 = v15;
LABEL_28:
                CFRelease(v21);
                goto LABEL_106;
              }

              if ((CalCalendarCanContainEntityType() & 1) == 0)
              {
                if (DLShouldLog())
                {
                  goto LABEL_26;
                }

                goto LABEL_27;
              }

              CFRelease(v15);
            }

            RowID = CalCalendarItemGetRowID();
            if (RowID != -1)
            {
              values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
              v17 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
              key = CFStringCreateWithFormat(0, 0, @"%d/%d", 5, v11);
              Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Recurrence");
              cf = v17;
              CFDictionarySetValue(Mutable, @"owner", v17);
              WeekStartDirectly = CalRecurrenceGetWeekStartDirectly();
              if (WeekStartDirectly != 7)
              {
                DayOfWeekStringForDayOfWeek = _GetDayOfWeekStringForDayOfWeek(WeekStartDirectly);
                if (DayOfWeekStringForDayOfWeek)
                {
                  CFDictionarySetValue(Mutable, @"weekstartday", DayOfWeekStringForDayOfWeek);
                }

                else if (DLShouldLog())
                {
                  _DLLog();
                }
              }

              Frequency = CalRecurrenceGetFrequency();
              if (!Frequency)
              {
                goto LABEL_46;
              }

              v23 = sFrequencyStrings_0;
              if (!sFrequencyStrings_0)
              {
                v23 = @"daily";
                sFrequencyStrings_0 = @"daily";
                sFrequencyStrings_1 = @"weekly";
                sFrequencyStrings_2 = @"monthly";
                sFrequencyStrings_3 = @"yearly";
              }

              if (Frequency > 2)
              {
                if (Frequency == 4)
                {
                  v24 = &sFrequencyStrings_3;
                  goto LABEL_42;
                }

                if (Frequency == 3)
                {
                  v24 = &sFrequencyStrings_2;
                  goto LABEL_42;
                }
              }

              else
              {
                if (Frequency == 1)
                {
                  goto LABEL_43;
                }

                v24 = &sFrequencyStrings_1;
                if (Frequency != 2)
                {
                  goto LABEL_44;
                }

LABEL_42:
                v23 = *v24;
                if (*v24)
                {
LABEL_43:
                  CFDictionarySetValue(Mutable, @"frequency", v23);
LABEL_46:
                  valuePtr = CalRecurrenceGetInterval();
                  if (valuePtr)
                  {
                    v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                    CFDictionarySetValue(Mutable, @"interval", v25);
                    CFRelease(v25);
                  }

                  v81 = CalRecurrenceGetCount();
                  if (v81 >= 1)
                  {
                    v26 = CFNumberCreate(0, kCFNumberIntType, &v81);
                    CFDictionarySetValue(Mutable, @"count", v26);
                    CFRelease(v26);
                  }

                  CalRecurrenceGetEndDate();
                  if (v27 != v8)
                  {
                    v28 = CFDateCreate(0, v27);
                    CFDictionarySetValue(Mutable, @"until", v28);
                    CFRelease(v28);
                  }

                  v29 = CalRecurrenceGetByMonthMonths();
                  if (v29)
                  {
                    v30 = v29;
                    v31 = CFArrayCreateMutable(0, 12, MEMORY[0x277CBF128]);
                    v32 = 0;
                    do
                    {
                      if ((v30 >> v32))
                      {
                        v80 = ++v32;
                        v33 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v31, v33);
                        CFRelease(v33);
                      }

                      else
                      {
                        ++v32;
                      }
                    }

                    while (v32 != 12);
                    if (CFArrayGetCount(v31) >= 1)
                    {
                      CFDictionarySetValue(Mutable, @"bymonth", v31);
                    }

                    CFRelease(v31);
                  }

                  v34 = CalRecurrenceCopyByWeekWeeks();
                  if (v34)
                  {
                    v35 = v34;
                    v36 = CFArrayGetCount(v34);
                    if (v36 >= 1)
                    {
                      v37 = v36;
                      v38 = CFArrayCreateMutable(0, v36, MEMORY[0x277CBF128]);
                      for (i = 0; i != v37; ++i)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v35, i);
                        v40 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v38, v40);
                        CFRelease(v40);
                      }

                      if (CFArrayGetCount(v38) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"byweeknumber", v38);
                      }

                      CFRelease(v38);
                    }

                    CFRelease(v35);
                  }

                  v41 = CalRecurrenceCopyByYearDayDays();
                  if (v41)
                  {
                    v42 = v41;
                    v43 = CFArrayGetCount(v41);
                    if (v43 >= 1)
                    {
                      v44 = v43;
                      v45 = CFArrayCreateMutable(0, v43, MEMORY[0x277CBF128]);
                      for (j = 0; j != v44; ++j)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v42, j);
                        v47 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v45, v47);
                        CFRelease(v47);
                      }

                      if (CFArrayGetCount(v45) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"byyearday", v45);
                      }

                      CFRelease(v45);
                    }

                    CFRelease(v42);
                  }

                  v48 = CalRecurrenceCopyByMonthDayDays();
                  if (v48)
                  {
                    v49 = v48;
                    v50 = CFArrayGetCount(v48);
                    if (v50 >= 1)
                    {
                      v51 = v50;
                      v52 = CFArrayCreateMutable(0, v50, MEMORY[0x277CBF128]);
                      for (k = 0; k != v51; ++k)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v49, k);
                        v54 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v52, v54);
                        CFRelease(v54);
                      }

                      if (CFArrayGetCount(v52) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"bymonthday", v52);
                      }

                      CFRelease(v52);
                    }

                    CFRelease(v49);
                  }

                  v55 = CalRecurrenceCopyBySetPos();
                  if (v55)
                  {
                    v56 = v55;
                    v57 = CFArrayGetCount(v55);
                    if (v57 >= 1)
                    {
                      v58 = v57;
                      v59 = CFArrayCreateMutable(0, v57, MEMORY[0x277CBF128]);
                      for (m = 0; m != v58; ++m)
                      {
                        LODWORD(v80) = CFArrayGetValueAtIndex(v56, m);
                        v61 = CFNumberCreate(0, kCFNumberIntType, &v80);
                        CFArrayAppendValue(v59, v61);
                        CFRelease(v61);
                      }

                      if (CFArrayGetCount(v59) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"bysetpos", v59);
                      }

                      CFRelease(v59);
                    }

                    CFRelease(v56);
                  }

                  v62 = CalRecurrenceCopyByDayDays();
                  v6 = v76;
                  if (v62)
                  {
                    v63 = v62;
                    v64 = CFArrayGetCount(v62);
                    if (v64 >= 1)
                    {
                      v65 = v64;
                      v66 = MEMORY[0x277CBF128];
                      v67 = CFArrayCreateMutable(0, v64, MEMORY[0x277CBF128]);
                      v68 = CFArrayCreateMutable(0, v65, v66);
                      for (n = 0; n != v65; ++n)
                      {
                        v70 = CFArrayGetValueAtIndex(v63, n);
                        v71 = CFNumberCreate(0, kCFNumberIntType, v70);
                        v72 = _GetDayOfWeekStringForDayOfWeek(v70[1]);
                        if (v72)
                        {
                          CFArrayAppendValue(v67, v72);
                          CFArrayAppendValue(v68, v71);
                        }

                        CFRelease(v71);
                      }

                      if (CFArrayGetCount(v67) >= 1)
                      {
                        CFDictionarySetValue(Mutable, @"bydaydays", v67);
                        CFDictionarySetValue(Mutable, @"bydayfreq", v68);
                      }

                      CFRelease(v67);
                      CFRelease(v68);
                      v6 = v76;
                    }

                    CFRelease(v63);
                  }

                  CFDictionarySetValue(*v74, key, Mutable);
                  if (DLShouldLog())
                  {
                    _DLLog();
                  }

                  CFRelease(Mutable);
                  CFRelease(values);
                  CFRelease(cf);
                  CFRelease(key);
                  CFRelease(v13);
                  v2 = v75;
                  goto LABEL_106;
                }
              }

LABEL_44:
              if (DLShouldLog())
              {
                _DLLog();
              }

              goto LABEL_46;
            }

            if (DLShouldLog())
            {
              _DLLog();
            }

            v21 = v13;
            goto LABEL_28;
          }

          if (DLShouldLog())
          {
LABEL_15:
            _DLLog();
          }
        }

LABEL_106:
        ++v7;
      }

      while (v7 != v6);
    }
  }
}

void _AccumulateAttendees(uint64_t a1, CFMutableDictionaryRef *a2, CFArrayRef theArray)
{
  if (*(a1 + 352) && CFArrayGetCount(theArray))
  {
    v5 = MEMORY[0x277CBECE8];
    if (!*a2)
    {
      *a2 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      v34 = a2;
      allocator = *v5;
      v9 = "/Library/Caches/com.apple.xbs/Sources/Sync/DataSources/CalendarsDataSource.m";
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v8);
        v12 = MEMORY[0x25F84A400](ValueAtIndex, v11);
        if (v12 == -1)
        {
          if (DLShouldLog())
          {
            goto LABEL_17;
          }
        }

        else
        {
          v13 = v12;
          v14 = MEMORY[0x25F84A3C0](ValueAtIndex);
          if (v14)
          {
            v15 = v14;
            v16 = CalCalendarItemCopyCalendar();
            if (v16)
            {
              v17 = v16;
              if (CalCalendarIsSubscribed())
              {
                if (DLShouldLog())
                {
                  _DLLog();
                }

                CFRelease(v17);
                goto LABEL_36;
              }

              if (CalCalendarCanContainEntityType())
              {
                CFRelease(v17);
                goto LABEL_20;
              }

              if (DLShouldLog())
              {
                _DLLog();
              }

              CFRelease(v15);
              v33 = v17;
            }

            else
            {
LABEL_20:
              RowID = CalCalendarItemGetRowID();
              if (RowID != -1)
              {
                v19 = v9;
                values = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
                v20 = CFArrayCreate(0, &values, 1, MEMORY[0x277CBF128]);
                v21 = CFStringCreateWithFormat(0, 0, @"%d/%d", 7, v13);
                Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                CFDictionarySetValue(Mutable, @"com.apple.syncservices.RecordEntityName", @"com.apple.calendars.Attendee");
                CFDictionarySetValue(Mutable, @"owner", v20);
                v23 = MEMORY[0x25F84A3A0](ValueAtIndex);
                if (v23)
                {
                  v24 = v23;
                  CFDictionarySetValue(Mutable, @"common name", v23);
                  CFRelease(v24);
                }

                v25 = MEMORY[0x25F84A3B0](ValueAtIndex);
                if (v25)
                {
                  v26 = v25;
                  CFDictionarySetValue(Mutable, @"email", v25);
                  CFRelease(v26);
                }

                v27 = CalAttendeeGetType() - 1;
                v28 = @"unknown";
                if (v27 <= 3)
                {
                  v28 = off_279916BC0[v27];
                }

                CFDictionarySetValue(Mutable, @"user type", v28);
                Role = CalAttendeeGetRole();
                v30 = @"requiredparticipant";
                v9 = v19;
                if (Role <= 5)
                {
                  v30 = off_279916BE0[Role];
                }

                CFDictionarySetValue(Mutable, @"role", v30);
                Status = CalAttendeeGetStatus();
                v32 = @"tentative";
                if (Status <= 6)
                {
                  v32 = off_279916C10[Status];
                }

                CFDictionarySetValue(Mutable, @"status", v32);
                CFDictionarySetValue(*v34, v21, Mutable);
                if (DLShouldLog())
                {
                  _DLLog();
                }

                CFRelease(Mutable);
                CFRelease(values);
                CFRelease(v20);
                CFRelease(v21);
                CFRelease(v15);
                goto LABEL_41;
              }

              if (DLShouldLog())
              {
                _DLLog();
              }

LABEL_36:
              v33 = v15;
            }

            CFRelease(v33);
            goto LABEL_41;
          }

          if (DLShouldLog())
          {
LABEL_17:
            _DLLog();
          }
        }

LABEL_41:
        ++v8;
      }

      while (v7 != v8);
    }
  }
}

uint64_t _entityTypeForRecord()
{
  LODWORD(result) = CalEntityGetType();
  if ((result - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

__CFString *_GetDayOfWeekStringForDayOfWeek(int a1)
{
  result = sDayOfWeekStrings_0;
  if (!sDayOfWeekStrings_0)
  {
    result = @"sunday";
    sDayOfWeekStrings_0 = @"sunday";
    sDayOfWeekStrings_1 = @"monday";
    sDayOfWeekStrings_2 = @"tuesday";
    sDayOfWeekStrings_3 = @"wednesday";
    sDayOfWeekStrings_4 = @"thursday";
    sDayOfWeekStrings_5 = @"friday";
    sDayOfWeekStrings_6 = @"saturday";
  }

  if (a1 <= 2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return sDayOfWeekStrings_1;
      }

      else
      {
        result = 0;
        if (a1 == 2)
        {
          return sDayOfWeekStrings_2;
        }
      }
    }
  }

  else if (a1 > 4)
  {
    if (a1 == 5)
    {
      return sDayOfWeekStrings_5;
    }

    else
    {
      result = 0;
      if (a1 == 6)
      {
        return sDayOfWeekStrings_6;
      }
    }
  }

  else if (a1 == 3)
  {
    return sDayOfWeekStrings_3;
  }

  else
  {
    return sDayOfWeekStrings_4;
  }

  return result;
}

uint64_t _saveDeviceSyncAnchorAndClearChangeHistory_0(uint64_t a1)
{
  if ((*(a1 + 312) & 0x80000000) == 0)
  {
    v2 = *(a1 + 184);
    CalDatabaseClearChangedObjectIDsUpToSequenceNumberForClient();
  }

  if (!*(a1 + 144))
  {
    CFRetain(@"---");
    v3 = *(a1 + 136);
    *(a1 + 144) = DLMemoryPoolAddObject();
  }

  if (DLShouldLog())
  {
    v7 = *(a1 + 144);
    _DLLog();
  }

  v4 = *(a1 + 144);
  _setDeviceSyncAnchorForStore_0(a1);
  v5 = *(a1 + 184);
  result = CalDatabaseSave();
  if ((result & 1) == 0)
  {
    result = DLShouldLog();
    if (result)
    {
      result = _DLLog();
    }
  }

  *(a1 + 355) = 1;
  return result;
}

void _AccumulateChangedRecords(uint64_t a1, uint64_t a2, CFMutableDictionaryRef *a3, CFArrayRef theArray, const __CFArray *a5)
{
  if (!theArray)
  {
    return;
  }

  Count = CFArrayGetCount(theArray);
  if (!a5 || (v11 = Count, v12 = CFArrayGetCount(theArray), v12 != CFArrayGetCount(a5)))
  {
    if (DLShouldLog())
    {

      _DLLog();
    }

    return;
  }

  if (v11 < 1)
  {
    return;
  }

  v27 = a3;
  v13 = 0;
  Mutable = 0;
  v15 = 0;
  allocator = *MEMORY[0x277CBECE8];
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
    v17 = CFArrayGetValueAtIndex(a5, v13);
    if (v17 <= 1)
    {
      if (a2 > 4)
      {
        if (a2 == 5)
        {
          v24 = *(a1 + 184);
          v19 = CalDatabaseCopyRecurrenceWithUID();
          goto LABEL_31;
        }

        if (a2 == 7)
        {
          v19 = MEMORY[0x25F84A660](*(a1 + 184), ValueAtIndex);
          goto LABEL_31;
        }

        if (a2 != 8)
        {
          goto LABEL_27;
        }
      }

      else if ((a2 - 2) >= 2)
      {
        if (a2 != 1)
        {
          if (a2 == 4)
          {
            v18 = *(a1 + 184);
            v19 = CalDatabaseCopyAlarmWithUID();
            goto LABEL_31;
          }

LABEL_27:
          if (DLShouldLog())
          {
            _DLLog();
          }

          goto LABEL_37;
        }

        v25 = *(a1 + 184);
        v19 = CalDatabaseCopyCalendarWithUID();
LABEL_31:
        v21 = v19;
        if (v19)
        {
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(allocator, 0, 0);
            v15 = CFSetCreateMutable(0, 0, 0);
          }

          if (!CFSetContainsValue(v15, ValueAtIndex))
          {
            CFSetAddValue(v15, ValueAtIndex);
            CFArrayAppendValue(Mutable, v21);
          }

LABEL_36:
          CFRelease(v21);
          goto LABEL_43;
        }

LABEL_37:
        if (!DLShouldLog())
        {
          goto LABEL_43;
        }

        goto LABEL_42;
      }

      v23 = *(a1 + 184);
      v19 = CalDatabaseCopyCalendarItemWithRowID();
      goto LABEL_31;
    }

    if (v17 != 2)
    {
      if (!DLShouldLog())
      {
        goto LABEL_43;
      }

LABEL_42:
      _DLLog();
      goto LABEL_43;
    }

    if (a2 <= 8 && ((1 << a2) & 0x1BE) != 0)
    {
      v20 = CFStringCreateWithFormat(0, 0, @"%d/%d", a2, ValueAtIndex);
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        if (!*v27)
        {
          v22 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          *v27 = v22;
        }

        CFDictionarySetValue(v22, v21, v21);
        goto LABEL_36;
      }
    }

    else if (DLShouldLog())
    {
      _DLLog();
    }

    if (DLShouldLog())
    {
      goto LABEL_42;
    }

LABEL_43:
    ++v13;
  }

  while (v11 != v13);
  if (v15)
  {
    CFRelease(v15);
  }

  if (Mutable)
  {
    if (a2 > 4)
    {
      switch(a2)
      {
        case 5:
          _AccumulateRecurrences(v27, Mutable);
          break;
        case 7:
          _AccumulateAttendees(a1, v27, Mutable);
          break;
        case 8:
          _AccumulateOrganizers(a1, v27, Mutable);
          break;
        default:
          goto LABEL_63;
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          _AccumulateCalendars(a1, v27, Mutable);
          break;
        case 2:
          _AccumulateEvents(a1, v27, Mutable);
          break;
        case 4:
          _AccumulateAlarms(v27, Mutable);
          break;
        default:
LABEL_63:
          if (DLShouldLog())
          {
            _DLLog();
          }

          break;
      }
    }

    CFRelease(Mutable);
  }
}

objc_class *___calendarSyncAccountLoader_block_invoke()
{
  if (([objc_msgSend(MEMORY[0x277CCA8D8] bundleWithPath:{objc_msgSend(CPSystemRootDirectory(), "stringByAppendingPathComponent:", @"/System/Library/PrivateFrameworks/Message.framework", "load"}] & 1) == 0)
  {
    ___calendarSyncAccountLoader_block_invoke_cold_1();
  }

  result = NSClassFromString(&cfstr_Mailaccount.isa);
  _calendarSyncAccountLoader_sSyncAccountLoader = result;
  return result;
}

void _addCurrentRemappingsToAllRemappings(void *key, void *value, uint64_t a3)
{
  v5 = *(a3 + 168);
  if (!v5)
  {
    v7 = *(a3 + 136);
    CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v5 = DLMemoryPoolAddObject();
    *(a3 + 168) = v5;
  }

  CFDictionarySetValue(v5, key, value);
}

void _ChangesApplierFunction_0(const __CFString *a1, const void *a2, uint64_t a3)
{
  TypeID = CFStringGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    if (DLShouldLog())
    {
      _DLLog();
    }

    *valuePtr = 0;
    v148[0] = 0;
    v146 = 0;
    if (!_deconstructRecordIdentifier(a1, &v146, valuePtr, v148, &valuePtr[1]))
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    if (valuePtr[0] <= 4)
    {
      if (valuePtr[0] <= 2)
      {
        if (valuePtr[0] == 1)
        {
          v46 = *(a3 + 184);
          v47 = CalDatabaseCopyCalendarWithUID();
          if (v47)
          {
            v48 = v47;
            v49 = CalCalendarCopyTitle();
            CalRemoveCalendar();
            v50 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v49);
            if (v49)
            {
              CFRelease(v49);
            }

            if (DLShouldLog())
            {
              _DLLog();
            }

            v51 = *(a3 + 184);
            CalDatabaseSetProperty();
            if (v50)
            {
              CFRelease(v50);
            }

            if (DLShouldLog())
            {
              _DLLog();
            }

            v52 = v48;
            goto LABEL_322;
          }

          if (!DLShouldLog())
          {
            return;
          }
        }

        else
        {
          if (valuePtr[0] != 2)
          {
            return;
          }

          v7 = *(a3 + 184);
          v8 = CalDatabaseCopyCalendarItemWithRowID();
          if (v8)
          {
            v9 = v8;
            CalRemoveEvent();
            if (DLShouldLog())
            {
              goto LABEL_189;
            }

            goto LABEL_221;
          }

          if (!DLShouldLog())
          {
            return;
          }
        }

LABEL_86:
        _DLLog();
        return;
      }

      if (valuePtr[0] == 3)
      {
        v56 = *(a3 + 184);
        v57 = CalDatabaseCopyCalendarItemWithRowID();
        if (v57)
        {
          v9 = v57;
          CalRemoveTask();
          if (DLShouldLog())
          {
            goto LABEL_189;
          }

          goto LABEL_221;
        }

        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v34 = *(a3 + 184);
      v35 = CalDatabaseCopyAlarmWithUID();
      if (!v35)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v9 = v35;
      v36 = CalAlarmCopyOwningEntity();
      if (!v36)
      {
        if (!DLShouldLog())
        {
          goto LABEL_221;
        }

        goto LABEL_189;
      }

      v37 = v36;
      v148[0] = CalCalendarItemGetRowID();
      CalCalendarItemRemoveAlarm();
      if (DLShouldLog())
      {
        goto LABEL_219;
      }

LABEL_220:
      CFRelease(v37);
      goto LABEL_221;
    }

    if (valuePtr[0] > 6)
    {
      if (valuePtr[0] != 7)
      {
        if (valuePtr[0] != 8)
        {
          return;
        }

        v38 = *(a3 + 184);
        if (CalDatabaseCopyCalendarItemWithRowID())
        {
          CalCalendarItemSetOrganizer();
          if (!DLShouldLog())
          {
            return;
          }
        }

        else if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v58 = MEMORY[0x25F84A660](*(a3 + 184), valuePtr[1]);
      if (!v58)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v9 = v58;
      v59 = MEMORY[0x25F84A3C0](v58);
      if (!v59)
      {
        if (!DLShouldLog())
        {
          goto LABEL_221;
        }

        goto LABEL_189;
      }

      v37 = v59;
      v60 = _entityTypeForRecord();
      v146 = v60;
      if (v60 != 3)
      {
        if (v60 != 2)
        {
          goto LABEL_220;
        }

        MEMORY[0x25F84AA00](v37, v9);
        if (!DLShouldLog())
        {
          goto LABEL_220;
        }

        goto LABEL_219;
      }

      if (!DLShouldLog())
      {
        goto LABEL_220;
      }
    }

    else
    {
      if (valuePtr[0] != 5)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v53 = *(a3 + 184);
      v54 = CalDatabaseCopyRecurrenceWithUID();
      if (!v54)
      {
        if (!DLShouldLog())
        {
          return;
        }

        goto LABEL_86;
      }

      v9 = v54;
      v55 = MEMORY[0x25F84AB70](v54);
      if (!v55)
      {
        if (DLShouldLog())
        {
LABEL_189:
          _DLLog();
        }

LABEL_221:
        v52 = v9;
        goto LABEL_322;
      }

      v37 = v55;
      v148[0] = CalCalendarItemGetRowID();
      MEMORY[0x25F84AA10](v37, v9);
      if (!DLShouldLog())
      {
        goto LABEL_220;
      }
    }

LABEL_219:
    _DLLog();
    goto LABEL_220;
  }

  Value = CFDictionaryGetValue(a2, @"com.apple.syncservices.RecordEntityName");
  if (!Value)
  {
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_86;
  }

  v11 = Value;
  v146 = 0;
  v145 = 0;
  v144 = 0;
  v12 = _deconstructRecordIdentifier(a1, &v144, &v145, &v145 + 1, &v146);
  if (CFStringCompare(v11, @"com.apple.calendars.Calendar", 0) == kCFCompareEqualTo)
  {
    if (v145 == 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = v12;
    }

    if (v13)
    {
      goto LABEL_85;
    }

    v14 = v146;
    v15 = CFDictionaryGetValue(a2, @"title");
    if (v14 != -1)
    {
      v16 = *(a3 + 184);
      CalendarForEntityType = CalDatabaseCopyCalendarWithUID();
      v18 = DLShouldLog();
      if (CalendarForEntityType)
      {
        if (v18)
        {
          _DLLog();
        }

        v19 = CalCalendarCopyTitle();
        v20 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v15);
        v21 = *(a3 + 184);
        CalDatabaseSetProperty();
        if (v20)
        {
          CFRelease(v20);
        }

        if (v19)
        {
          CFRelease(v19);
        }

LABEL_125:
        v73 = CFDictionaryGetValue(a2, @"read only");
        if (v73)
        {
          valuePtr[1] = 0;
          if (CFNumberGetValue(v73, kCFNumberIntType, &valuePtr[1]))
          {
            v74 = valuePtr[1] == 0;
          }

          else
          {
            v74 = 1;
          }

          v75 = !v74;
          if (!v74 && DLShouldLog())
          {
            _DLLog();
          }
        }

        else
        {
          v75 = 0;
        }

        CalCalendarSetReadOnly();
        CalCalendarSetTitle();
        if (CFDictionaryGetValue(a2, @"com.apple.ical.type"))
        {
          CalCalendarSetType();
        }

        if (*(a3 + 353) == 1)
        {
          v76 = CFDictionaryGetValue(a2, @"colorComponents");
          if (v76)
          {
            v77 = v76;
            if (CFArrayGetCount(v76) >= 3)
            {
              *valuePtr = 0;
              v148[0] = 0;
              ValueAtIndex = CFArrayGetValueAtIndex(v77, 0);
              CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &valuePtr[1]);
              v79 = CFArrayGetValueAtIndex(v77, 1);
              CFNumberGetValue(v79, kCFNumberIntType, v148);
              v80 = CFArrayGetValueAtIndex(v77, 2);
              CFNumberGetValue(v80, kCFNumberIntType, valuePtr);
              if (DLShouldLog())
              {
                _DLLog();
              }

              CalCalendarSetColorComponents();
            }
          }
        }

        if (CFDictionaryGetValue(a2, @"com.apple.MobileSync.calDAVInfo"))
        {
          v81 = CFStringCreateWithFormat(0, 0, @"%d", v75);
          v82 = CFStringCreateWithFormat(0, 0, @"%@-CalDAVInfo", v15);
          if (DLShouldLog())
          {
            _DLLog();
          }

          v83 = *(a3 + 184);
          CalDatabaseSetProperty();
          if (v81)
          {
            CFRelease(v81);
          }

          if (v82)
          {
            CFRelease(v82);
          }

          CalCalendarSetReadOnly();
        }

        goto LABEL_321;
      }

      if (v18)
      {
        _DLLog();
      }
    }

    if (!v15)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    v70 = *(a3 + 184);
    CalendarForEntityType = CalDatabaseCreateCalendarForEntityType();
    v71 = *(a3 + 200);
    CalStoreAddCalendar();
    if (!*(a3 + 208))
    {
      v72 = *(a3 + 136);
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a3 + 208) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(*(a3 + 208), a1, CalendarForEntityType);
    goto LABEL_125;
  }

  if (CFStringCompare(v11, @"com.apple.calendars.Event", 0) == kCFCompareEqualTo)
  {
    if (v145 == 2)
    {
      v22 = 0;
    }

    else
    {
      v22 = v12;
    }

    if (v22)
    {
      goto LABEL_85;
    }

    v23 = v146;
    v24 = _CopyParentCalendar(a3, a2);
    if (!v24)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    CalendarForEntityType = v24;
    v25 = CFDictionaryGetValue(a2, @"summary");
    v26 = CFDictionaryGetValue(a2, @"description");
    v27 = CFDictionaryGetValue(a2, @"location");
    v140 = CFDictionaryGetValue(a2, @"all day");
    v28 = CFDictionaryGetValue(a2, @"start date");
    number = CFDictionaryGetValue(a2, @"floatingOffset");
    v29 = CFDictionaryGetValue(a2, @"end date");
    v141 = CFDictionaryGetValue(a2, @"original date");
    v143 = CFDictionaryGetValue(a2, @"exception dates");
    v142 = CFDictionaryGetValue(a2, @"main event");
    v30 = CFDictionaryGetValue(a2, @"url");
    if (!v28 || !v29)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      goto LABEL_321;
    }

    URLString = v30;
    v138 = CalendarForEntityType;
    if (v23 != -1)
    {
      v31 = *(a3 + 184);
      Event = CalDatabaseCopyCalendarItemWithRowID();
      v33 = DLShouldLog();
      if (Event)
      {
        if (v33)
        {
          _DLLog();
        }

        v136 = 0;
        goto LABEL_253;
      }

      if (v33)
      {
        _DLLog();
      }
    }

    v103 = *(a3 + 184);
    Event = CalDatabaseCreateEvent();
    if (!*(a3 + 216))
    {
      v104 = *(a3 + 136);
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CalendarForEntityType = v138;
      *(a3 + 216) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(*(a3 + 216), a1, Event);
    v136 = 1;
LABEL_253:
    MEMORY[0x25F84A460](CalendarForEntityType, Event);
    if (v25)
    {
      v105 = CFGetTypeID(v25);
      if (v105 == CFStringGetTypeID())
      {
        CalCalendarItemSetSummary();
      }
    }

    if (v26)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v106 = CFGetTypeID(v26);
      if (v106 == CFStringGetTypeID())
      {
        v107 = v26;
      }

      else
      {
        v107 = 0;
      }
    }

    else
    {
      v107 = 0;
    }

    MEMORY[0x25F84AA30](Event, v107);
    if (v27)
    {
      CFGetTypeID(v27);
      CFStringGetTypeID();
    }

    v108 = v29;
    CalEventSetLocation_Deprecated();
    if (v140 && (v109 = CFGetTypeID(v140), v109 == CFNumberGetTypeID()))
    {
      valuePtr[1] = 0;
      if (CFNumberGetValue(v140, kCFNumberIntType, &valuePtr[1]))
      {
        v110 = valuePtr[1] == 0;
      }

      else
      {
        v110 = 1;
      }

      v111 = !v110;
      CalEventSetAllDay();
      v112 = v28;
      if (v111)
      {
        v113 = @"_float";
        CalendarForEntityType = v138;
        goto LABEL_286;
      }
    }

    else
    {
      CalEventSetAllDay();
      v112 = v28;
    }

    v114 = CFDictionaryGetValue(a2, @"start date.timezone");
    CalendarForEntityType = v138;
    if (!v114)
    {
      goto LABEL_325;
    }

    v113 = v114;
    if (CFStringCompare(v114, @"LOCAL", 1uLL) == kCFCompareEqualTo)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }

      v115 = CalCopyDefaultTimeZone();
      if (v115)
      {
        v119 = v115;
        v113 = MEMORY[0x25F84A2A0](v115, v116, v117, v118);
        CFRelease(v119);
        if (!v113)
        {
LABEL_325:
          if (number)
          {
            *&valuePtr[1] = 0;
            CFNumberGetValue(number, kCFNumberSInt64Type, &valuePtr[1]);
            v120 = MEMORY[0x25F849FA0](v112);
            v112 = CFDateCreate(0, v120 + *&valuePtr[1]);
            v121 = MEMORY[0x25F849FA0](v108);
            v108 = CFDateCreate(0, v121 + *&valuePtr[1]);
            if (DLShouldLog())
            {
              _DLLog();
            }
          }

          v113 = @"_float";
        }
      }
    }

LABEL_286:
    MEMORY[0x25F849FA0](v112);
    CalEventSetStartDateDirectly();
    MEMORY[0x25F849FA0](v108);
    CalEventSetEndDate();
    v122 = CFTimeZoneCreateWithName(0, v113, 1u);
    CalCalendarItemSetEndTimeZone();
    if (v122)
    {
      CFRelease(v122);
    }

    if (v141 && (MEMORY[0x25F849FA0](v141), CalEventSetOriginalStartDate(), v142) && CFArrayGetCount(v142) == 1)
    {
      v123 = CFArrayGetValueAtIndex(v142, 0);
      valuePtr[1] = -1;
      v148[0] = 0;
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (!_deconstructRecordIdentifier(v123, 0, v148, 0, &valuePtr[1]))
      {
        goto LABEL_300;
      }

      if (v148[0] != 2)
      {
        v127 = v143;
        if (DLShouldLog())
        {
          _DLLog();
        }

        CalEventSetOriginalEvent();
        if (v143)
        {
          goto LABEL_299;
        }

        goto LABEL_312;
      }

      v124 = *(a3 + 184);
      v125 = CalDatabaseCopyCalendarItemWithRowID();
      if (v125)
      {
        v126 = v125;
        MEMORY[0x25F84A910](v125, v141);
        CalEventSetOriginalEvent();
        CFRelease(v126);
      }

      else
      {
LABEL_300:
        v128 = *(a3 + 264);
        if (!v128)
        {
          v129 = *(a3 + 136);
          CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v128 = DLMemoryPoolAddObject();
          *(a3 + 264) = v128;
        }

        if (!CFDictionaryContainsKey(v128, v123))
        {
          CFDictionarySetValue(*(a3 + 264), v123, v123);
        }

        v130 = *(a3 + 272);
        if (!v130)
        {
          v131 = *(a3 + 136);
          CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
          v130 = DLMemoryPoolAddObject();
          *(a3 + 272) = v130;
        }

        Mutable = CFDictionaryGetValue(v130, v123);
        if (!Mutable)
        {
          Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
          CFDictionarySetValue(*(a3 + 272), v123, Mutable);
          CFRelease(Mutable);
        }

        CFArrayAppendValue(Mutable, Event);
      }
    }

    else
    {
      CalEventSetOriginalEvent();
    }

    v127 = v143;
    if (v143)
    {
LABEL_299:
      MEMORY[0x25F84AA60](Event, v127);
LABEL_315:
      if (URLString)
      {
        v135 = CFURLCreateWithString(0, URLString, 0);
        MEMORY[0x25F84AAC0](Event, v135);
        if (v135)
        {
          CFRelease(v135);
        }
      }

      else
      {
        MEMORY[0x25F84AAC0](Event);
      }

      v101 = Event;
      goto LABEL_320;
    }

LABEL_312:
    if ((v136 & 1) == 0)
    {
      v133 = MEMORY[0x25F84A960](Event);
      if (v133)
      {
        v134 = v133;
        MEMORY[0x25F84AA60](Event, 0);
        CFRelease(v134);
      }
    }

    goto LABEL_315;
  }

  if (CFStringCompare(v11, @"com.apple.calendars.Task", 0) == kCFCompareEqualTo)
  {
    if (v145 == 3)
    {
      v45 = 0;
    }

    else
    {
      v45 = v12;
    }

    if (v45)
    {
      goto LABEL_85;
    }

    v61 = v146;
    v62 = _CopyParentCalendar(a3, a2);
    if (!v62)
    {
      if (!DLShouldLog())
      {
        return;
      }

      goto LABEL_86;
    }

    CalendarForEntityType = v62;
    v63 = CFDictionaryGetValue(a2, @"summary");
    v64 = CFDictionaryGetValue(a2, @"priority");
    v65 = CFDictionaryGetValue(a2, @"due date");
    v66 = CFDictionaryGetValue(a2, @"completion date");
    if (DLShouldLog())
    {
      _DLLog();
    }

    if (v61 != -1)
    {
      v67 = *(a3 + 184);
      Task = CalDatabaseCopyCalendarItemWithRowID();
      v69 = DLShouldLog();
      if (Task)
      {
        if (v69)
        {
          _DLLog();
        }

LABEL_229:
        MEMORY[0x25F84A470](CalendarForEntityType, Task);
        if (v63)
        {
          v97 = CFGetTypeID(v63);
          if (v97 == CFStringGetTypeID())
          {
            CalCalendarItemSetSummary();
          }
        }

        if (v64)
        {
          v98 = CFGetTypeID(v64);
          if (v98 == CFNumberGetTypeID())
          {
            valuePtr[1] = 0;
            if (CFNumberGetValue(v64, kCFNumberIntType, &valuePtr[1]))
            {
              CalCalendarItemSetPriority();
            }
          }
        }

        if (v65)
        {
          v99 = CFGetTypeID(v65);
          if (v99 == CFDateGetTypeID())
          {
            if (DLShouldLog())
            {
              _DLLog();
            }
          }
        }

        CalTaskSetDueDate();
        if (v66)
        {
          v100 = CFGetTypeID(v66);
          if (v100 == CFDateGetTypeID())
          {
            if (DLShouldLog())
            {
              _DLLog();
            }
          }
        }

        CalTaskSetCompletionDate();
        v101 = Task;
LABEL_320:
        CFRelease(v101);
LABEL_321:
        v52 = CalendarForEntityType;
        goto LABEL_322;
      }

      if (v69)
      {
        _DLLog();
      }
    }

    v95 = *(a3 + 184);
    Task = CalDatabaseCreateTask();
    if (!*(a3 + 224))
    {
      v96 = *(a3 + 136);
      CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a3 + 224) = DLMemoryPoolAddObject();
    }

    if (DLShouldLog())
    {
      _DLLog();
    }

    CFDictionaryAddValue(*(a3 + 224), a1, Task);
    goto LABEL_229;
  }

  if (CFStringCompare(v11, @"com.apple.calendars.AudioAlarm", 0) && CFStringCompare(v11, @"com.apple.calendars.DisplayAlarm", 0))
  {
    if (CFStringCompare(v11, @"com.apple.calendars.Recurrence", 0))
    {
      if (CFStringCompare(v11, @"com.apple.calendars.Organizer", 0))
      {
        if (CFStringCompare(v11, @"com.apple.calendars.Attendee", 0))
        {
          if (CFStringCompare(v11, @"com.apple.calendars.CalendarOrder", 0) == kCFCompareEqualTo)
          {
            v102 = CFDictionaryGetValue(a2, @"calendars");
            _HandleCalendarOrdering(a3, v102);
            return;
          }

          if (!DLShouldLog())
          {
            return;
          }

          goto LABEL_86;
        }

        if (v145 == 7)
        {
          v94 = 0;
        }

        else
        {
          v94 = v12;
        }

        if ((v94 & 1) == 0)
        {
          _HandleAddOrModifyAttendee(a3, a1, a2, v146);
          return;
        }
      }

      else
      {
        if (v145 == 8)
        {
          v85 = 0;
        }

        else
        {
          v85 = v12;
        }

        if ((v85 & 1) == 0)
        {
          _HandleAddOrModifyOrganizer(a3, a1, a2);
          return;
        }
      }
    }

    else
    {
      if (v145 == 5)
      {
        v84 = 0;
      }

      else
      {
        v84 = v12;
      }

      if ((v84 & 1) == 0)
      {
        _HandleAddOrModifyRecurrence(a3, a1, a2, v146);
        return;
      }
    }

LABEL_85:
    if (!DLShouldLog())
    {
      return;
    }

    goto LABEL_86;
  }

  if (v145 == 4)
  {
    v39 = 0;
  }

  else
  {
    v39 = v12;
  }

  if (v39)
  {
    goto LABEL_85;
  }

  v40 = v146;
  if (DLShouldLog())
  {
    _DLLog();
  }

  if (v40 != -1)
  {
    v41 = *(a3 + 184);
    Alarm = CalDatabaseCopyAlarmWithUID();
    if (Alarm)
    {
      goto LABEL_77;
    }

    if (DLShouldLog())
    {
      _DLLog();
    }
  }

  Alarm = 0;
LABEL_77:
  valuePtr[1] = 0;
  v43 = _CopyCalEntityOwner(a3, a2, &valuePtr[1]);
  if (v43)
  {
    v44 = v43;
    if (Alarm)
    {
      if (DLShouldLog())
      {
        _DLLog();
      }
    }

    else
    {
      v86 = *(a3 + 184);
      Alarm = CalDatabaseCreateAlarm();
      if (DLShouldLog())
      {
        _DLLog();
      }

      if (DLShouldLog())
      {
        _DLLog();
      }

      CalCalendarItemAddAlarm();
      v87 = *(a3 + 232);
      if (!v87)
      {
        v88 = *(a3 + 136);
        CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
        v87 = DLMemoryPoolAddObject();
        *(a3 + 232) = v87;
      }

      CFDictionaryAddValue(v87, a1, Alarm);
    }

    CFStringCompare(v11, @"com.apple.calendars.AudioAlarm", 0);
    CalAlarmSetType();
    v89 = CFDictionaryGetValue(a2, @"triggerduration");
    if (v89 && (v148[0] = 0, CFNumberGetValue(v89, kCFNumberIntType, v148)))
    {
      v90 = v148[0];
      CalAlarmSetTriggerInterval();
      if (v90 != 0x7FFFFFFF)
      {
LABEL_211:
        CFRelease(Alarm);
        Alarm = v44;
LABEL_212:
        v52 = Alarm;
LABEL_322:
        CFRelease(v52);
        return;
      }
    }

    else
    {
      CalAlarmSetTriggerInterval();
    }

    v91 = CFDictionaryGetValue(a2, @"triggerdate");
    if (v91)
    {
      v92 = v91;
      v93 = CFGetTypeID(v91);
      if (v93 == CFDateGetTypeID())
      {
        MEMORY[0x25F849FA0](v92);
        if (DLShouldLog())
        {
          _DLLog();
        }
      }
    }

    CalAlarmSetTriggerDate();
    goto LABEL_211;
  }

  if (DLShouldLog())
  {
    _DLLog();
  }

  if (Alarm)
  {
    goto LABEL_212;
  }
}

void _UpdateCalendarRemapping(const void *a1, uint64_t a2, uint64_t a3)
{
  UID = CalCalendarGetUID();
  v6 = CFStringCreateWithFormat(0, 0, @"%d/%d", 1, UID);
  _addRemapping(a3, a1, v6);
  CFRelease(v6);
  v7 = CalCalendarGetUID();
  v8 = CFStringCreateWithFormat(0, 0, @"%d", v7);
  CalCalendarSetExternalID();
  if (v8)
  {

    CFRelease(v8);
  }
}

void _UpdateEventRemapping(const void *a1, const void *a2, uint64_t a3)
{
  RowID = CalCalendarItemGetRowID();
  v7 = CFStringCreateWithFormat(0, 0, @"%d/%d", 2, RowID);
  _addRemapping(a3, a1, v7);
  v8 = *(a3 + 264);
  if (v8 && CFDictionaryContainsKey(v8, a1))
  {
    CFDictionarySetValue(*(a3 + 264), a1, a2);
  }

  CFRelease(v7);
}

void _UpdateDetachedEvents(void *key, const __CFArray *a2, uint64_t a3)
{
  Value = CFDictionaryGetValue(*(a3 + 264), key);
  if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 != CFStringGetTypeID()))
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        CFArrayGetValueAtIndex(a2, i);
        if (DLShouldLog())
        {
          CalCalendarItemGetRowID();
          CalCalendarItemGetRowID();
          _DLLog();
        }

        CalEventGetOriginalStartDate();
        v13 = CFDateCreate(0, v12);
        if (v13)
        {
          v14 = v13;
          MEMORY[0x25F84A910](v7, v13);
          CFRelease(v14);
        }

        else if (DLShouldLog())
        {
          CalEventGetOriginalStartDate();
          _DLLog();
        }

        CalEventSetOriginalEvent();
      }
    }

    v15 = *(a3 + 280);
    if (!v15)
    {
      v16 = *(a3 + 136);
      CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
      v15 = DLMemoryPoolAddObject();
      *(a3 + 280) = v15;
    }

    CFSetAddValue(v15, key);
  }

  else if (DLShouldLog())
  {
    _DLLog();
  }
}