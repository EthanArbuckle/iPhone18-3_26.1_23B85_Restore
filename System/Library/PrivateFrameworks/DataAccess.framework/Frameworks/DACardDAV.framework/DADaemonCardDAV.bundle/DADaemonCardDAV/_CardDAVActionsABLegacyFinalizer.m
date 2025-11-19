@interface _CardDAVActionsABLegacyFinalizer
- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)a3 pushedActions:(id)a4 inContainer:(id)a5 changeTrackingID:(id)a6;
- (_CardDAVActionsABLegacyFinalizer)initWithAddressBook:(void *)a3;
- (void)dealloc;
@end

@implementation _CardDAVActionsABLegacyFinalizer

- (_CardDAVActionsABLegacyFinalizer)initWithAddressBook:(void *)a3
{
  v6.receiver = self;
  v6.super_class = _CardDAVActionsABLegacyFinalizer;
  v4 = [(_CardDAVActionsABLegacyFinalizer *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(a3);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _CardDAVActionsABLegacyFinalizer;
  [(_CardDAVActionsABLegacyFinalizer *)&v3 dealloc];
}

- (BOOL)clearChangeHistoriesWithChangeIdContext:(id)a3 pushedActions:(id)a4 inContainer:(id)a5 changeTrackingID:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [v12 asSource];
  v15 = v10;
  v16 = v15;
  LOBYTE(v17) = 0;
  if (v15 && v14)
  {
    v18 = [v15 abPersonChangeId];
    if (v18 == -1)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v19 = v18;
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v64 = sub_1B9C;
      v65 = &unk_3C868;
      v66 = [(_CardDAVActionsABLegacyFinalizer *)self addressBook];
      v67 = v13;
      v68 = v14;
      LODWORD(v17) = sub_1910(v66, v14, v19, 0, v13, &buf);
    }

    v20 = [v16 abGroupChangeId];
    if (v20 != -1)
    {
      v21 = v20;
      v22 = [(_CardDAVActionsABLegacyFinalizer *)self addressBook];
      *&buf = _NSConcreteStackBlock;
      *(&buf + 1) = 3221225472;
      v64 = sub_1C64;
      v65 = &unk_3C868;
      v66 = v22;
      v67 = v13;
      v68 = v14;
      LODWORD(v17) = v17 | sub_1910(v22, v14, v21, 1, v13, &buf);
    }
  }

  if ([v11 count])
  {
    v49 = v17;
    v50 = self;
    v51 = v16;
    v52 = v13;
    v53 = v12;
    Mutable = CFArrayCreateMutable(0, 0, 0);
    theArray = CFArrayCreateMutable(0, 0, 0);
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v54 = v11;
    v24 = v11;
    v25 = Mutable;
    v17 = v24;
    v26 = [v24 countByEnumeratingWithState:&v58 objects:v62 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v59;
      type = _CPLog_to_os_log_type[3];
      v29 = _CPLog_to_os_log_type[7];
      v57 = v17;
      do
      {
        for (i = 0; i != v27; i = i + 1)
        {
          if (*v59 != v28)
          {
            objc_enumerationMutation(v17);
          }

          v31 = *(*(&v58 + 1) + 8 * i);
          if ([v31 changeId] != -1)
          {
            if ([v31 itemChangeType] == &dword_0 + 2)
            {
              v32 = DALoggingwithCategory();
              if (os_log_type_enabled(v32, v29))
              {
                v33 = [v31 changeId];
                LODWORD(buf) = 67109120;
                DWORD1(buf) = v33;
                _os_log_impl(&dword_0, v32, v29, "Clearing Person change index %d", &buf, 8u);
              }

              CFArrayAppendValue(v25, [v31 changeId]);
            }

            else
            {
              v34 = [v31 changedItem];
              v35 = [v34 cardDAVRecordItem];
              v36 = [v35 isContact];

              if (v36)
              {
                v37 = DALoggingwithCategory();
                if (os_log_type_enabled(v37, v29))
                {
                  v38 = [v31 changeId];
                  LODWORD(buf) = 67109120;
                  DWORD1(buf) = v38;
                  _os_log_impl(&dword_0, v37, v29, "Clearing Person change index %d", &buf, 8u);
                }

                CFArrayAppendValue(v25, [v31 changeId]);
              }

              else
              {
                v39 = v25;
                v40 = [v34 cardDAVRecordItem];
                v41 = [v40 isGroup];

                v42 = DALoggingwithCategory();
                v43 = v42;
                if (v41)
                {
                  v25 = v39;
                  if (os_log_type_enabled(v42, v29))
                  {
                    v44 = [v31 changeId];
                    LODWORD(buf) = 67109120;
                    DWORD1(buf) = v44;
                    _os_log_impl(&dword_0, v43, v29, "Clearing Group change index %d", &buf, 8u);
                  }

                  CFArrayAppendValue(theArray, [v31 changeId]);
                }

                else
                {
                  v25 = v39;
                  if (os_log_type_enabled(v42, type))
                  {
                    LODWORD(buf) = 138412290;
                    *(&buf + 4) = v34;
                    _os_log_impl(&dword_0, v43, type, "Malformed CardDAVVCardItem: %@", &buf, 0xCu);
                  }
                }

                v17 = v57;
              }
            }
          }
        }

        v27 = [v17 countByEnumeratingWithState:&v58 objects:v62 count:16];
      }

      while (v27);
    }

    v13 = v52;
    self = v50;
    LOBYTE(v17) = v49;
    if (CFArrayGetCount(v25))
    {
      [(_CardDAVActionsABLegacyFinalizer *)v50 addressBook];
      ABChangeHistoryClearEntityChangeTableRowIDsForClient();
      LOBYTE(v17) = 1;
    }

    CFRelease(v25);
    v12 = v53;
    v16 = v51;
    if (CFArrayGetCount(theArray))
    {
      [(_CardDAVActionsABLegacyFinalizer *)v50 addressBook];
      LOBYTE(v17) = 1;
      ABChangeHistoryClearEntityChangeTableRowIDsForClient();
    }

    CFRelease(theArray);
    v11 = v54;
  }

  if ([v16 isChangeHistoryTruncated])
  {
    v45 = DALoggingwithCategory();
    v46 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v45, v46))
    {
      v47 = [v16 latestSequenceNumber];
      LODWORD(buf) = 67109120;
      DWORD1(buf) = v47;
      _os_log_impl(&dword_0, v45, v46, "Change context reports this is an initial sync or changes otherwire truncated. Setting our change history cursor the change sequence when history was fetched: %d", &buf, 8u);
    }

    [(_CardDAVActionsABLegacyFinalizer *)self addressBook];
    [v16 latestSequenceNumber];
    ABChangeHistoryClearChangesUpToSequenceNumberForClient();
    LOBYTE(v17) = 1;
  }

  return v17;
}

@end