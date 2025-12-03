@interface _CardDAVActionsABLegacyHandler
- (BOOL)handleAction:(id)action forContainer:(id)container inAccount:(id)account withFolderURL:(id)l isInitialSync:(BOOL)sync arePartialResults:(BOOL)results syncInfo:(id)info heldAsideGroups:(id)self0 internalReference:(id)self1;
- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record;
- (_CardDAVActionsABLegacyHandler)initWithAddressBook:(void *)book;
- (id)wrappedRecordFromRecord:(void *)record;
- (void)_copyExistingABRecordForContact:(id)contact inStore:(void *)store;
- (void)_localRecordForExternalURL:(id)l inContainer:(void *)container withFolderURL:(id)rL;
- (void)dealloc;
- (void)moveToLocalStoreContacts:(id)contacts groups:(id)groups;
@end

@implementation _CardDAVActionsABLegacyHandler

- (_CardDAVActionsABLegacyHandler)initWithAddressBook:(void *)book
{
  v6.receiver = self;
  v6.super_class = _CardDAVActionsABLegacyHandler;
  v4 = [(_CardDAVActionsABLegacyHandler *)&v6 init];
  if (v4)
  {
    v4->_addressBook = CFRetain(book);
  }

  return v4;
}

- (void)dealloc
{
  CFRelease(self->_addressBook);
  v3.receiver = self;
  v3.super_class = _CardDAVActionsABLegacyHandler;
  [(_CardDAVActionsABLegacyHandler *)&v3 dealloc];
}

- (BOOL)handleAction:(id)action forContainer:(id)container inAccount:(id)account withFolderURL:(id)l isInitialSync:(BOOL)sync arePartialResults:(BOOL)results syncInfo:(id)info heldAsideGroups:(id)self0 internalReference:(id)self1
{
  syncCopy = sync;
  actionCopy = action;
  containerCopy = container;
  accountCopy = account;
  lCopy = l;
  infoCopy = info;
  groupsCopy = groups;
  referenceCopy = reference;
  v62 = containerCopy;
  asSource = [containerCopy asSource];
  v20 = objc_autoreleasePoolPush();
  changedItem = [actionCopy changedItem];
  if (referenceCopy)
  {
    v22 = [(_CardDAVActionsABLegacyHandler *)self _localRecordForExternalURL:referenceCopy inContainer:asSource withFolderURL:lCopy];
    if (v22)
    {
      v23 = v22;
      serverID = referenceCopy;
LABEL_6:
      CFRetain(v23);
      goto LABEL_7;
    }
  }

  serverID = [changedItem serverID];
  v25 = [(_CardDAVActionsABLegacyHandler *)self _localRecordForExternalURL:serverID inContainer:asSource withFolderURL:lCopy];
  if (v25)
  {
    v23 = v25;
    goto LABEL_6;
  }

  if (syncCopy && ([infoCopy startedWithNoContacts] & 1) == 0)
  {
    v23 = [(_CardDAVActionsABLegacyHandler *)self _copyExistingABRecordForContact:changedItem inStore:asSource];
  }

  else
  {
    v23 = 0;
  }

LABEL_7:
  itemChangeType = [actionCopy itemChangeType];
  if (itemChangeType < 2)
  {
    v64 = 0;
    [changedItem createOrphanedABRecordFromParsedVCardOutRecordType:&v64];
    v57 = v56 = v20;
    if (!syncCopy)
    {
      goto LABEL_36;
    }

    if ([v57 isContact])
    {
      [v57 asPerson];
      HIDWORD(v52) = ABPersonIsDowntimeWhitelisted();
      if (!v23)
      {
        v34 = 0;
        v33 = 0;
        goto LABEL_31;
      }

      v53 = accountCopy;
      v32 = [[DAABLegacyContact alloc] initWithABPerson:v23];
      v72 = v32;
      v33 = [NSArray arrayWithObjects:&v72 count:1];
      v34 = 0;
    }

    else
    {
      HIDWORD(v52) = 0;
      v34 = 0;
      v33 = 0;
      if (![v57 isGroup] || !v23)
      {
LABEL_31:
        if (([v62 isGuardianRestricted] & 1) != 0 || HIDWORD(v52))
        {
          [(_CardDAVActionsABLegacyHandler *)self moveToLocalStoreContacts:v33 groups:v34];
          if (v23)
          {
            CFRelease(v23);
            v23 = 0;
          }
        }

LABEL_36:
        v35 = DALoggingwithCategory();
        v36 = _CPLog_to_os_log_type[7];
        v37 = os_log_type_enabled(v35, v36);
        if (v23)
        {
          if (v37)
          {
            v38 = objc_opt_class();
            NSStringFromClass(v38);
            v39 = serverID;
            v41 = v40 = accountCopy;
            *buf = 138412290;
            v66 = v41;
            _os_log_impl(&dword_0, v35, v36, "updating %@", buf, 0xCu);

            accountCopy = v40;
            serverID = v39;
          }
        }

        else if (v37)
        {
          v42 = objc_opt_class();
          NSStringFromClass(v42);
          v43 = v54 = accountCopy;
          *buf = 138412290;
          v66 = v43;
          _os_log_impl(&dword_0, v35, v36, "adding %@", buf, 0xCu);

          accountCopy = v54;
        }

        v44 = [(_CardDAVActionsABLegacyHandler *)self wrappedRecordFromRecord:v23];
        LOBYTE(v52) = !results;
        v45 = [changedItem saveWithLocalObject:v44 toContainer:v62 containerURL:lCopy shouldMergeProperties:syncCopy outMergeDidChooseLocalProperties:0 account:accountCopy shouldSaveGroups:v52];
        if (v45 == &dword_0 + 2)
        {
          v50 = DALoggingwithCategory();
          if (os_log_type_enabled(v50, v36))
          {
            *buf = 138412290;
            v66 = serverID;
            _os_log_impl(&dword_0, v50, v36, "Holding aside group with server id %@", buf, 0xCu);
          }

          [groupsCopy addObject:actionCopy];
        }

        else if (v45 == &dword_0 + 1)
        {
          v46 = DALoggingwithCategory();
          if (os_log_type_enabled(v46, v36))
          {
            v47 = objc_opt_class();
            v48 = NSStringFromClass(v47);
            [changedItem clientID];
            v49 = v55 = accountCopy;
            *buf = 138412802;
            v66 = v48;
            v67 = 2112;
            v68 = serverID;
            v69 = 2112;
            v70 = v49;
            _os_log_impl(&dword_0, v46, v36, "saved %@, server id %@, clientID %@", buf, 0x20u);

            accountCopy = v55;
          }

          v31 = 1;
LABEL_50:

          v20 = v56;
          if (v23)
          {
            goto LABEL_51;
          }

          goto LABEL_52;
        }

        v31 = 0;
        goto LABEL_50;
      }

      v53 = accountCopy;
      v32 = [[DAABLegacyGroup alloc] initWithGroup:v23];
      v71 = v32;
      v34 = [NSArray arrayWithObjects:&v71 count:1];
      v33 = 0;
      HIDWORD(v52) = 0;
    }

    accountCopy = v53;
    goto LABEL_31;
  }

  if (itemChangeType != &dword_0 + 2)
  {
    if (itemChangeType == &dword_4 + 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      contacts = [actionCopy contacts];
      [actionCopy groups];
      v28 = serverID;
      v30 = v29 = v20;
      [(_CardDAVActionsABLegacyHandler *)self moveToLocalStoreContacts:contacts groups:v30];

      v20 = v29;
      serverID = v28;

      v31 = 1;
      if (!v23)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v31 = 0;
      if (!v23)
      {
        goto LABEL_52;
      }
    }

    goto LABEL_51;
  }

  if (v23)
  {
    [changedItem setLocalItem:v23];
    [changedItem deleteFromContainer:asSource account:accountCopy];
    v31 = 1;
LABEL_51:
    CFRelease(v23);
    goto LABEL_52;
  }

  v31 = 0;
LABEL_52:

  objc_autoreleasePoolPop(v20);
  return v31;
}

- (void)moveToLocalStoreContacts:(id)contacts groups:(id)groups
{
  contactsCopy = contacts;
  groupsCopy = groups;
  v8 = [contactsCopy count];
  if ([groupsCopy count] + v8)
  {
    [(_CardDAVActionsABLegacyHandler *)self addressBook];
    v9 = ABAddressBookCopyLocalSource();
    v10 = kABSourceEnabledProperty;
    if (!ABRecordGetIntValue())
    {
      ABRecordSetValue(v9, v10, kCFBooleanTrue, 0);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = contactsCopy;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v26 + 1) + 8 * i) asPerson];
          cf = 0;
          [(_CardDAVActionsABLegacyHandler *)self addressBook];
          ABAddressBookMovePersonToSource();
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v13);
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = groupsCopy;
    v17 = [v16 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v22;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v22 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v21 + 1) + 8 * j) asABGroup];
          cf = 0;
          [(_CardDAVActionsABLegacyHandler *)self addressBook];
          if ((ABAddressBookMoveGroupToSource() & 1) == 0 && cf)
          {
            CFRelease(cf);
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v21 objects:v30 count:16];
      }

      while (v18);
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }
}

- (id)wrappedRecordFromRecord:(void *)record
{
  if (record)
  {
    if (!ABRecordGetRecordType(record))
    {
      v4 = [[DAABLegacyContact alloc] initWithABPerson:record];
      goto LABEL_10;
    }

    if (ABRecordGetRecordType(record) == 1)
    {
      v4 = [[DAABLegacyGroup alloc] initWithGroup:record];
      goto LABEL_10;
    }

    v5 = DALoggingwithCategory();
    v6 = _CPLog_to_os_log_type[7];
    if (os_log_type_enabled(v5, v6))
    {
      v8 = 138412290;
      recordCopy = record;
      _os_log_impl(&dword_0, v5, v6, "Unexpected ABRecordType for item %@", &v8, 0xCu);
    }
  }

  v4 = 0;
LABEL_10:

  return v4;
}

- (void)_localRecordForExternalURL:(id)l inContainer:(void *)container withFolderURL:(id)rL
{
  v6 = [l da_leastInfoStringRepresentationRelativeToParentURL:rL];
  [(_CardDAVActionsABLegacyHandler *)self addressBook];
  v7 = ABAddressBookCopyArrayOfAllPeopleWithExternalIdentifierInSource();
  if ([v7 count])
  {
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = v8;
  }

  else
  {
    [(_CardDAVActionsABLegacyHandler *)self addressBook];
    v8 = ABAddressBookCopyArrayOfAllGroupsWithExternalIdentifierInSource();
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record
{
  continueCopy = continue;
  if (record)
  {
    v7 = ABRecordCopyValue(record, kABPersonExternalIdentifierProperty);
    if ([v7 length])
    {
      goto LABEL_19;
    }

    if ([(_CardDAVActionsABLegacyHandler *)self matchMode]== 1 || [(_CardDAVActionsABLegacyHandler *)self matchMode]== 2 || [(_CardDAVActionsABLegacyHandler *)self matchMode]== 3)
    {
      v8 = ABRecordCopyValue([(_CardDAVActionsABLegacyHandler *)self testRecord], kABPersonFirstNameProperty);
      v9 = ABRecordCopyValue(record, kABPersonFirstNameProperty);
      v10 = v9 != 0;

      if ((v8 == 0) == v10)
      {
        goto LABEL_19;
      }
    }

    if ([(_CardDAVActionsABLegacyHandler *)self matchMode]== 1 || [(_CardDAVActionsABLegacyHandler *)self matchMode]== 2 || [(_CardDAVActionsABLegacyHandler *)self matchMode]== 3)
    {
      v11 = ABRecordCopyValue([(_CardDAVActionsABLegacyHandler *)self testRecord], kABPersonLastNameProperty);
      v12 = ABRecordCopyValue(record, kABPersonLastNameProperty);
      v13 = v12 != 0;

      if ((v11 == 0) == v13)
      {
        goto LABEL_19;
      }
    }

    if ([(_CardDAVActionsABLegacyHandler *)self matchMode]== 1 || self->_matchMode == 2)
    {
      v14 = ABRecordCopyValue([(_CardDAVActionsABLegacyHandler *)self testRecord], kABPersonMiddleNameProperty);
      v15 = ABRecordCopyValue(record, kABPersonMiddleNameProperty);
      v16 = v15 != 0;

      if ((v14 == 0) == v16)
      {
        goto LABEL_19;
      }
    }

    if (([(_CardDAVActionsABLegacyHandler *)self matchMode]== 1 || [(_CardDAVActionsABLegacyHandler *)self matchMode]== 2 || [(_CardDAVActionsABLegacyHandler *)self matchMode]== 3) && (v17 = ABRecordCopyValue([(_CardDAVActionsABLegacyHandler *)self testRecord], kABPersonSuffixProperty), v18 = ABRecordCopyValue(record, kABPersonSuffixProperty), v19 = v18 != 0, v18, v17, (v17 == 0) == v19))
    {
LABEL_19:
      v20 = 1;
    }

    else
    {
      [(_CardDAVActionsABLegacyHandler *)self setMatchedRecord:record];
      CFRetain(record);
      v20 = 0;
    }
  }

  else
  {
    v20 = 1;
  }

  return v20;
}

- (void)_copyExistingABRecordForContact:(id)contact inStore:(void *)store
{
  v76 = 0;
  v77 = &v76;
  v78 = 0x2020000000;
  v79 = 0;
  v75 = 0;
  contactCopy = contact;
  v69 = [contactCopy createOrphanedABRecordFromParsedVCardOutRecordType:&v75];
  if ([v69 isContact])
  {
    asPerson = [v69 asPerson];
  }

  else
  {
    if (![v69 isGroup])
    {
      v6 = 0;
LABEL_86:
      v7 = v75;
      goto LABEL_87;
    }

    asPerson = [v69 asABGroup];
  }

  v6 = asPerson;
  v7 = v75;
  if (asPerson && !v75)
  {
    self->_testRecord = asPerson;
    v63 = [ABPredicate personPredicateWithGroup:0 source:store account:0];
    v8 = kABPersonExternalUUIDProperty;
    v9 = ABRecordCopyValue(v6, kABPersonExternalUUIDProperty);
    if (v9)
    {
      v61 = [ABPredicate personPredicateWithValue:v9 comparison:0 forProperty:v8];
    }

    else
    {
      v61 = 0;
    }

    v10 = ABRecordCopyValue(v6, kABPersonFirstNameProperty);
    if (v10)
    {
      v11 = [ABPredicate personPredicateWithValue:v10 comparison:0 forProperty:kABPersonFirstNameProperty];
    }

    else
    {
      v11 = 0;
    }

    v12 = ABRecordCopyValue(v6, kABPersonMiddleNameProperty);
    v56 = v9;
    v58 = v10;
    v60 = v12;
    if (v12)
    {
      v64 = [ABPredicate personPredicateWithValue:v12 comparison:0 forProperty:kABPersonMiddleNameProperty];
    }

    else
    {
      v64 = 0;
    }

    v13 = ABRecordCopyValue(v6, kABPersonLastNameProperty);
    v59 = v13;
    if (v13)
    {
      v14 = [ABPredicate personPredicateWithValue:v13 comparison:0 forProperty:kABPersonLastNameProperty];
    }

    else
    {
      v14 = 0;
    }

    v15 = ABRecordCopyValue(v6, kABPersonSuffixProperty);
    v57 = v15;
    if (v15)
    {
      v66 = [ABPredicate personPredicateWithValue:v15 comparison:0 forProperty:kABPersonSuffixProperty];
    }

    else
    {
      v66 = 0;
    }

    v16 = ABRecordCopyValue(v6, kABPersonOrganizationProperty);
    v55 = v16;
    if (v16)
    {
      v62 = [ABPredicate personPredicateWithValue:v16 comparison:0 forProperty:kABPersonOrganizationProperty, v16, v56, v57, v10, v59, v12];
    }

    else
    {
      v62 = 0;
    }

    if (v61)
    {
      v87[0] = v63;
      v87[1] = v61;
      v17 = [NSArray arrayWithObjects:v87 count:2];
      v18 = [NSCompoundPredicate andPredicateWithSubpredicates:v17];
      self->_matchMode = 0;
      [ABPredicate searchPeopleWithPredicate:v18 sortOrder:1 inAddressBook:[(_CardDAVActionsABLegacyHandler *)self addressBook] withDelegate:self];
      if (self->_matchedRecord)
      {
        v19 = DALoggingwithCategory();
        v20 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v19, v20))
        {
          RecordID = ABRecordGetRecordID([(_CardDAVActionsABLegacyHandler *)self matchedRecord]);
          *buf = 138412802;
          v82 = v18;
          v83 = 2112;
          v84 = contactCopy;
          v85 = 1024;
          v86 = RecordID;
          _os_log_impl(&dword_0, v19, v20, "Predicate %@ matched contact %@ with local id %d", buf, 0x1Cu);
        }

        v77[3] = self->_matchedRecord;
        self->_matchedRecord = 0;
      }
    }

    v22 = v77[3];
    if (!v22 && (v11 || v64 || v14 || (v22 = v66) != 0))
    {
      v23 = objc_opt_new();
      [v23 addObject:v63];
      if (v11)
      {
        [v23 addObject:v11];
      }

      if (v64)
      {
        [v23 addObject:v64];
      }

      if (v14)
      {
        [v23 addObject:v14];
      }

      if (v66)
      {
        [v23 addObject:v66];
      }

      v24 = [NSCompoundPredicate andPredicateWithSubpredicates:v23, v55];
      self->_matchMode = 1;
      [ABPredicate searchPeopleWithPredicate:v24 sortOrder:1 inAddressBook:[(_CardDAVActionsABLegacyHandler *)self addressBook] withDelegate:self];
      if (self->_matchedRecord)
      {
        v25 = DALoggingwithCategory();
        v26 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v25, v26))
        {
          v27 = ABRecordGetRecordID([(_CardDAVActionsABLegacyHandler *)self matchedRecord]);
          *buf = 138412802;
          v82 = v24;
          v83 = 2112;
          v84 = contactCopy;
          v85 = 1024;
          v86 = v27;
          _os_log_impl(&dword_0, v25, v26, "Predicate %@ matched contact %@ with local id %d", buf, 0x1Cu);
        }

        v77[3] = self->_matchedRecord;
        self->_matchedRecord = 0;
      }

      v22 = v77[3];
    }

    if (!v22 && !v11 && !v64 && !v14 && !v66 && v62)
    {
      v80[0] = v63;
      v80[1] = v62;
      v28 = [NSArray arrayWithObjects:v80 count:2];
      v29 = [NSCompoundPredicate andPredicateWithSubpredicates:v28];
      self->_matchMode = 2;
      [ABPredicate searchPeopleWithPredicate:v29 sortOrder:1 inAddressBook:[(_CardDAVActionsABLegacyHandler *)self addressBook] withDelegate:self];
      if (self->_matchedRecord)
      {
        v30 = DALoggingwithCategory();
        v31 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v30, v31))
        {
          v32 = ABRecordGetRecordID(self->_matchedRecord);
          *buf = 138412802;
          v82 = v29;
          v83 = 2112;
          v84 = contactCopy;
          v85 = 1024;
          v86 = v32;
          _os_log_impl(&dword_0, v30, v31, "Predicate %@ matched contact %@ with local id %d", buf, 0x1Cu);
        }

        v77[3] = self->_matchedRecord;
        self->_matchedRecord = 0;
      }

      v22 = v77[3];
    }

    if (!v22 && v11 | v14)
    {
      v33 = objc_opt_new();
      [v33 addObject:v63];
      if (v11)
      {
        [v33 addObject:v11];
      }

      if (v14)
      {
        [v33 addObject:v14];
      }

      if (v66)
      {
        [v33 addObject:v66];
      }

      v34 = [NSCompoundPredicate andPredicateWithSubpredicates:v33, v55];
      self->_matchMode = 3;
      [ABPredicate searchPeopleWithPredicate:v34 sortOrder:1 inAddressBook:[(_CardDAVActionsABLegacyHandler *)self addressBook] withDelegate:self];
      if (self->_matchedRecord)
      {
        v35 = DALoggingwithCategory();
        v36 = _CPLog_to_os_log_type[7];
        if (os_log_type_enabled(v35, v36))
        {
          v37 = ABRecordGetRecordID(self->_matchedRecord);
          *buf = 138412802;
          v82 = v34;
          v83 = 2112;
          v84 = contactCopy;
          v85 = 1024;
          v86 = v37;
          _os_log_impl(&dword_0, v35, v36, "Predicate %@ matched contact %@ with local id %d", buf, 0x1Cu);
        }

        v77[3] = self->_matchedRecord;
        self->_matchedRecord = 0;
      }

      v22 = v77[3];
    }

    if (!v22 && !v11 && !v64 && !v14 && !v66 && !v62)
    {
      self->_matchMode = 4;
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_1A1A8;
      v70[3] = &unk_3CC50;
      v73 = &v76;
      v74 = v6;
      v70[4] = self;
      v71 = v63;
      v72 = contactCopy;
      v38 = objc_retainBlock(v70);
      (v38[2])(v38, kABPersonEmailProperty);
      (v38[2])(v38, kABPersonPhoneProperty);
      (v38[2])(v38, kABPersonInstantMessageProperty);
      (v38[2])(v38, kABPersonSocialProfileProperty);
      (v38[2])(v38, kABPersonURLProperty);

      v22 = v77[3];
    }

    if (!v22)
    {
      v39 = DALoggingwithCategory();
      v40 = _CPLog_to_os_log_type[7];
      if (os_log_type_enabled(v39, v40))
      {
        *buf = 138412290;
        v82 = contactCopy;
        _os_log_impl(&dword_0, v39, v40, "Found no match for contact %@", buf, 0xCu);
      }
    }

    goto LABEL_86;
  }

LABEL_87:
  if (v7 == 1)
  {
    v41 = ABRecordCopyValue(v6, kABGroupExternalUUIDProperty);
    if (v41)
    {
      [(_CardDAVActionsABLegacyHandler *)self addressBook];
      v42 = ABAddressBookCopyArrayOfAllGroupsWithExternalUUIDInSource();
      if ([v42 count])
      {
        v43 = [v42 objectAtIndexedSubscript:0];
        v77[3] = v43;

        CFRetain(v77[3]);
      }
    }

    if (!v77[3])
    {
      v67 = ABRecordCopyValue(v6, kABGroupNameProperty);
      if (v67)
      {
        v44 = +[NSCharacterSet whitespaceCharacterSet];
        v45 = [v67 stringByTrimmingCharactersInSet:v44];

        v46 = ABAddressBookCopyArrayOfAllGroupsInSource([(_CardDAVActionsABLegacyHandler *)self addressBook], store);
        for (i = 0; i < [(__CFArray *)v46 count]; ++i)
        {
          v48 = [(__CFArray *)v46 objectAtIndexedSubscript:i];

          v49 = ABRecordCopyValue(v48, kABGroupNameProperty);
          v50 = +[NSCharacterSet whitespaceCharacterSet];
          v51 = [v49 stringByTrimmingCharactersInSet:v50];

          if ([v51 isEqualToString:v45])
          {
            v52 = CFRetain(v48);
            v77[3] = v52;

            break;
          }
        }
      }
    }
  }

  v53 = v77[3];

  _Block_object_dispose(&v76, 8);
  return v53;
}

@end