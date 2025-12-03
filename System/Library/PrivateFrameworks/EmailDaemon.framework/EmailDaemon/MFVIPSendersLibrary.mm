@interface MFVIPSendersLibrary
+ (id)defaultInstance;
+ (id)log;
- (BOOL)_clearVIPSenderFlagForSenders:(id)senders retryFailedSenders:(BOOL)failedSenders;
- (BOOL)_setVIPSenderFlagForSenders:(id)senders retryFailedSenders:(BOOL)failedSenders;
- (MFVIPSendersLibrary)initWithLibrary:(id)library;
- (id)_messagesForSenders:(id)senders success:(BOOL *)success;
- (id)_newVIPFromVIP:(id)p byAddingEmailAddresses:(id)addresses;
- (id)_pendingVIPChangesPath;
- (void)_checkForAddressBookChangesNeedingRevert:(BOOL)revert;
- (void)_handleAddressBookNotification;
- (void)_libraryDidFinishReconciliation:(id)reconciliation;
- (void)_performTasksAfterProtectedDataBecomesAvailable;
- (void)_removePendingVIPChanges;
- (void)_savePendingVIPChanges_nts;
- (void)_vipsDidChange:(id)change;
- (void)checkForAddressBookChanges;
- (void)dealloc;
- (void)persistenceWillAddMessage:(id)message fromExistingMessage:(BOOL)existingMessage;
@end

@implementation MFVIPSendersLibrary

+ (id)log
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ABC5C;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185B08 != -1)
  {
    dispatch_once(&qword_100185B08, block);
  }

  v2 = qword_100185B00;

  return v2;
}

+ (id)defaultInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ABD80;
  block[3] = &unk_1001562E8;
  block[4] = self;
  if (qword_100185B18 != -1)
  {
    dispatch_once(&qword_100185B18, block);
  }

  v2 = qword_100185B10;

  return v2;
}

- (MFVIPSendersLibrary)initWithLibrary:(id)library
{
  libraryCopy = library;
  if ((+[MFMailMessageLibrary canUsePersistence]& 1) == 0)
  {
    v33 = +[NSAssertionHandler currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"MFVIPSendersLibrary.m" lineNumber:70 description:{@"App is in daemon mode, but accessing database"}];
  }

  v34.receiver = self;
  v34.super_class = MFVIPSendersLibrary;
  v7 = [(MFVIPSendersLibrary *)&v34 init];
  if (v7)
  {
    v8 = dispatch_queue_create("com.apple.mobilemail.vipaddressbook", 0);
    addressBookQueue = v7->_addressBookQueue;
    v7->_addressBookQueue = v8;

    v10 = dispatch_queue_create("com.apple.mobilemail.vipsenders.pendingaddresses", 0);
    pendingAddressQueue = v7->_pendingAddressQueue;
    v7->_pendingAddressQueue = v10;

    v12 = objc_alloc_init(EAEmailAddressSet);
    pendingAdds = v7->_pendingAdds;
    v7->_pendingAdds = v12;

    v14 = objc_alloc_init(EAEmailAddressSet);
    pendingRemoves = v7->_pendingRemoves;
    v7->_pendingRemoves = v14;

    v16 = +[VIPManager defaultInstance];
    vipManager = v7->_vipManager;
    v7->_vipManager = v16;

    v18 = [NSDictionary alloc];
    _pendingVIPChangesPath = [(MFVIPSendersLibrary *)v7 _pendingVIPChangesPath];
    v20 = [v18 initWithContentsOfFile:_pendingVIPChangesPath];

    v21 = v7->_pendingAdds;
    v22 = [v20 objectForKey:@"to-add"];
    [(EAEmailAddressSet *)v21 addObjectsFromArray:v22];

    v23 = v7->_pendingRemoves;
    v24 = [v20 objectForKey:@"to-remove"];
    [(EAEmailAddressSet *)v23 addObjectsFromArray:v24];

    v25 = +[NSUserDefaults standardUserDefaults];
    if (([v25 BOOLForKey:@"set-initial-vip-flags"] & 1) == 0)
    {
      v26 = v7->_pendingAdds;
      allVIPEmailAddresses = [(VIPManager *)v7->_vipManager allVIPEmailAddresses];
      [(EAEmailAddressSet *)v26 unionSet:allVIPEmailAddresses];

      [v25 setBool:1 forKey:@"set-initial-vip-flags"];
    }

    objc_storeStrong(&v7->_library, library);
    if (![(MFMailMessageLibrary *)v7->_library protectedDataAvailability])
    {
      [(MFVIPSendersLibrary *)v7 _performTasksAfterProtectedDataBecomesAvailable];
    }

    if ([(EAEmailAddressSet *)v7->_pendingAdds count]|| [(EAEmailAddressSet *)v7->_pendingRemoves count])
    {
      [(MFVIPSendersLibrary *)v7 _libraryDidFinishReconciliation:0];
    }

    persistence = [libraryCopy persistence];
    hookRegistry = [persistence hookRegistry];
    [hookRegistry registerMessageChangeHookResponder:v7];

    v30 = +[NSNotificationCenter defaultCenter];
    [v30 addObserver:v7 selector:"_libraryDidFinishReconciliation:" name:MailMessageLibraryDidFinishReconciliation object:v7->_library];
    [v30 addObserver:v7 selector:"_vipsDidChange:" name:EMVIPsDidChangeNotification object:v7->_vipManager];
    v31 = v7;
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  addressBook = self->_addressBook;
  if (addressBook)
  {
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = addressBook;
    addressBookQueue = self->_addressBookQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AC30C;
    block[3] = &unk_1001577E0;
    block[4] = v8;
    block[5] = self;
    dispatch_sync(addressBookQueue, block);
    _Block_object_dispose(v8, 8);
  }

  v6.receiver = self;
  v6.super_class = MFVIPSendersLibrary;
  [(MFVIPSendersLibrary *)&v6 dealloc];
}

- (void)_handleAddressBookNotification
{
  if (pthread_main_np() != 1)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"MFVIPSendersLibrary.m" lineNumber:144 description:@"Current thread must be main"];
  }

  v4 = MFLogGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#MailServices got address book change notification", buf, 2u);
  }

  atomic_fetch_add_explicit(&self->_addressBookResetCount, 1u, memory_order_relaxed);
  v5 = dispatch_time(0, 1000000000);
  addressBookQueue = self->_addressBookQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AC56C;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_after(v5, addressBookQueue, block);
}

- (void)checkForAddressBookChanges
{
  if (pthread_main_np() != 1)
  {
    v6 = +[NSAssertionHandler currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"MFVIPSendersLibrary.m" lineNumber:158 description:@"Current thread must be main"];
  }

  if (!self->_addressBook)
  {
    error = 0;
    v4 = ABAddressBookCreateWithOptions(0, &error);
    self->_addressBook = v4;
    if (v4)
    {
      ABAddressBookRegisterChangeCallback();
      ABAddressBookRegisterExternalChangeCallback(self->_addressBook, sub_1000AC424, self);
    }

    if (error)
    {
      CFRelease(error);
    }
  }

  addressBookQueue = self->_addressBookQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AC6CC;
  v7[3] = &unk_100156400;
  v7[4] = self;
  dispatch_async(addressBookQueue, v7);
}

- (void)_checkForAddressBookChangesNeedingRevert:(BOOL)revert
{
  selfCopy = self;
  if (revert)
  {
    addressBook = self->_addressBook;
    if (addressBook)
    {
      ABAddressBookRevert(addressBook);
    }
  }

  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
  v32 = objc_alloc_init(NSMutableSet);
  v31 = objc_alloc_init(NSMutableSet);
  vipManager = [(MFVIPSendersLibrary *)selfCopy vipManager];
  [vipManager allVIPs];
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  obj = v46 = 0u;
  v38 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v38)
  {
    v37 = *v46;
    *&v6 = 138412546;
    v30 = v6;
    v35 = selfCopy;
    do
    {
      for (i = 0; i != v38; i = i + 1)
      {
        if (*v46 != v37)
        {
          objc_enumerationMutation(obj);
        }

        if (selfCopy->_addressBook)
        {
          v7 = *(*(&v45 + 1) + 8 * i);
          v8 = [vipManager existingPersonForVIP:v7 usingAddressBook:?];
          if (v8)
          {
            v39 = CFDictionaryGetValue(Mutable, v8);
            if (v39)
            {
              v9 = MFLogGeneral();
              if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
              {
                *buf = v30;
                v51 = v7;
                v52 = 2112;
                v53 = v39;
                _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#MailServices merging VIPs that mapped to the same AB record (%@ -> %@)", buf, 0x16u);
              }

              emailAddresses = [v7 emailAddresses];
              emailAddresses2 = [v39 emailAddresses];
              v12 = [emailAddresses isSubsetOfSet:emailAddresses2];

              if ((v12 & 1) == 0)
              {
                emailAddresses3 = [v7 emailAddresses];
                v14 = [(MFVIPSendersLibrary *)v35 _newVIPFromVIP:v39 byAddingEmailAddresses:emailAddresses3];

                [v31 addObject:v14];
              }

              identifier = [v7 identifier];
              [v32 addObject:identifier];
            }

            else
            {
              v33 = ABPersonCopyArrayOfAllLinkedPeople(v8);
              v16 = objc_alloc_init(EAEmailAddressSet);
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              identifier = v33;
              v17 = [(__CFArray *)identifier countByEnumeratingWithState:&v41 objects:v49 count:16];
              if (v17)
              {
                v18 = *v42;
                do
                {
                  for (j = 0; j != v17; j = j + 1)
                  {
                    if (*v42 != v18)
                    {
                      objc_enumerationMutation(identifier);
                    }

                    v20 = *(*(&v41 + 1) + 8 * j);
                    CFDictionarySetValue(Mutable, v20, v7);
                    v21 = ABRecordCopyValue(v20, kABPersonEmailProperty);
                    v22 = v21;
                    if (v21)
                    {
                      v23 = ABMultiValueCopyArrayOfAllValues(v21);
                      CFRelease(v22);
                      [v16 addObjectsFromArray:v23];
                    }
                  }

                  v17 = [(__CFArray *)identifier countByEnumeratingWithState:&v41 objects:v49 count:16];
                }

                while (v17);
              }

              emailAddresses4 = [v7 emailAddresses];
              v25 = [v16 isSubsetOfSet:emailAddresses4];

              if ((v25 & 1) == 0)
              {
                v26 = [(MFVIPSendersLibrary *)v35 _newVIPFromVIP:v7 byAddingEmailAddresses:v16];
                [v31 addObject:v26];
              }
            }

            selfCopy = v35;
          }
        }
      }

      v38 = [obj countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v38);
  }

  if ([v31 count])
  {
    [vipManager saveVIPs:v31];
  }

  if ([v32 count])
  {
    v27 = MFLogGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      allObjects = [v32 allObjects];
      v29 = [allObjects componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v51 = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "#MailServices removing VIPs from cloud with identifiers {%@}", buf, 0xCu);
    }

    [vipManager removeVIPsWithIdentifiers:v32];
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

- (id)_newVIPFromVIP:(id)p byAddingEmailAddresses:(id)addresses
{
  pCopy = p;
  addressesCopy = addresses;
  emailAddresses = [pCopy emailAddresses];
  v8 = [emailAddresses mutableCopy];

  [v8 unionSet:addressesCopy];
  v9 = [EMVIP alloc];
  identifier = [pCopy identifier];
  name = [pCopy name];
  v12 = [v9 initWithIdentifier:identifier name:name emailAddresses:v8];

  return v12;
}

- (void)persistenceWillAddMessage:(id)message fromExistingMessage:(BOOL)existingMessage
{
  messageCopy = message;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (existingMessage)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v34 = +[NSAssertionHandler currentHandler];
    [v34 handleFailureInMethod:a2 object:self file:@"MFVIPSendersLibrary.m" lineNumber:248 description:{@"Invalid parameter not satisfying: %@", @"[message isKindOfClass:MFMailMessage.class]"}];

    if (existingMessage)
    {
      goto LABEL_34;
    }
  }

  firstSender = [messageCopy firstSender];
  emailAddressValue = [firstSender emailAddressValue];
  simpleAddress = [emailAddressValue simpleAddress];
  v11 = simpleAddress;
  if (simpleAddress)
  {
    stringValue = simpleAddress;
  }

  else
  {
    stringValue = [firstSender stringValue];
  }

  v13 = stringValue;

  vipManager = [(MFVIPSendersLibrary *)self vipManager];
  allVIPEmailAddresses = [vipManager allVIPEmailAddresses];

  v38 = allVIPEmailAddresses;
  if ([allVIPEmailAddresses containsObject:v13])
  {
    v16 = 1;
  }

  else
  {
    mf_copyIDNAEncodedEmailAddress = [v13 mf_copyIDNAEncodedEmailAddress];
    if ([allVIPEmailAddresses containsObject:mf_copyIDNAEncodedEmailAddress])
    {
      v16 = 1;
    }

    else
    {
      mf_copyIDNADecodedEmailAddress = [v13 mf_copyIDNADecodedEmailAddress];
      v16 = [allVIPEmailAddresses containsObject:mf_copyIDNADecodedEmailAddress];
    }
  }

  messageFlags = [messageCopy messageFlags];
  if (v16)
  {
    v20 = messageFlags | 0x1000000;
  }

  else
  {
    v20 = messageFlags;
  }

  account = [messageCopy account];
  copyReceivingEmailAddresses = [account copyReceivingEmailAddresses];

  v23 = [messageCopy to];
  v37 = v20;
  v24 = [messageCopy cc];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v25 = copyReceivingEmailAddresses;
  v26 = [v25 countByEnumeratingWithState:&v39 objects:v43 count:16];
  if (v26)
  {
    v35 = v13;
    v36 = messageCopy;
    v27 = 0;
    v28 = 0;
    v29 = *v40;
    while (2)
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(v25);
        }

        v31 = *(*(&v39 + 1) + 8 * i);
        if (!v27 && v23 != 0)
        {
          v27 = [v23 mf_indexOfRecipientWithEmailAddress:*(*(&v39 + 1) + 8 * i)] != 0x7FFFFFFFFFFFFFFFLL;
        }

        if (!v28 && v24 != 0)
        {
          v28 = [v24 mf_indexOfRecipientWithEmailAddress:v31] != 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v27 && v28)
        {

          v13 = v35;
          messageCopy = v36;
          v32 = v38;
          v33 = v37;
LABEL_31:
          v33 |= 0x18000000000uLL;
          goto LABEL_33;
        }
      }

      v26 = [v25 countByEnumeratingWithState:&v39 objects:v43 count:16];
      if (v26)
      {
        continue;
      }

      break;
    }

    v13 = v35;
    messageCopy = v36;
    v32 = v38;
    v33 = v37;
    if (v27)
    {
      if (!v28)
      {
        v33 = v37 | 0x8000000000;
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (v28)
    {
      v33 = v37 | 0x10000000000;
    }
  }

  else
  {

    v32 = v38;
    v33 = v20;
  }

LABEL_33:
  [messageCopy setMessageFlags:v33];

LABEL_34:
}

- (id)_pendingVIPChangesPath
{
  v2 = MFMailDirectory();
  v3 = [v2 stringByAppendingPathComponent:@"PendingVIPChanges"];

  return v3;
}

- (void)_savePendingVIPChanges_nts
{
  v7[0] = @"to-add";
  allObjects = [(EAEmailAddressSet *)self->_pendingAdds allObjects];
  v7[1] = @"to-remove";
  v8[0] = allObjects;
  allObjects2 = [(EAEmailAddressSet *)self->_pendingRemoves allObjects];
  v8[1] = allObjects2;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:2];

  _pendingVIPChangesPath = [(MFVIPSendersLibrary *)self _pendingVIPChangesPath];
  [v5 writeToFile:_pendingVIPChangesPath atomically:1];
}

- (void)_removePendingVIPChanges
{
  v4 = +[NSFileManager defaultManager];
  _pendingVIPChangesPath = [(MFVIPSendersLibrary *)self _pendingVIPChangesPath];
  [v4 removeItemAtPath:_pendingVIPChangesPath error:0];
}

- (void)_performTasksAfterProtectedDataBecomesAvailable
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"ToCcMigrationCompleted"];

  if ((v4 & 1) == 0)
  {
    v5 = dispatch_get_global_queue(-32768, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AD59C;
    block[3] = &unk_100156400;
    block[4] = self;
    dispatch_async(v5, block);
  }
}

- (void)_libraryDidFinishReconciliation:(id)reconciliation
{
  [(MFVIPSendersLibrary *)self _performTasksAfterProtectedDataBecomesAvailable];
  pendingAddressQueue = self->_pendingAddressQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ADCA4;
  block[3] = &unk_100156400;
  block[4] = self;
  dispatch_async(pendingAddressQueue, block);
}

- (BOOL)_clearVIPSenderFlagForSenders:(id)senders retryFailedSenders:(BOOL)failedSenders
{
  failedSendersCopy = failedSenders;
  sendersCopy = senders;
  v17 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(MFVIPSendersLibrary *)self _messagesForSenders:sendersCopy success:&v17];
  v9 = v8;
  if (v17)
  {
    if ([v8 count])
    {
      persistence = [(MFMailMessageLibrary *)self->_library persistence];
      messageChangeManager = [persistence messageChangeManager];
      [messageChangeManager applyVIPStatus:0 forMessages:v9];
    }
  }

  else if (failedSendersCopy)
  {
    pendingAddressQueue = self->_pendingAddressQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ADEB4;
    block[3] = &unk_1001563D8;
    block[4] = self;
    v16 = sendersCopy;
    dispatch_async(pendingAddressQueue, block);
  }

  objc_autoreleasePoolPop(v7);
  v13 = v17;

  return v13;
}

- (BOOL)_setVIPSenderFlagForSenders:(id)senders retryFailedSenders:(BOOL)failedSenders
{
  failedSendersCopy = failedSenders;
  sendersCopy = senders;
  v17 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = [(MFVIPSendersLibrary *)self _messagesForSenders:sendersCopy success:&v17];
  v9 = v8;
  if (v17)
  {
    if ([v8 count])
    {
      persistence = [(MFMailMessageLibrary *)self->_library persistence];
      messageChangeManager = [persistence messageChangeManager];
      [messageChangeManager applyVIPStatus:1 forMessages:v9];
    }
  }

  else if (failedSendersCopy)
  {
    pendingAddressQueue = self->_pendingAddressQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AE070;
    block[3] = &unk_1001563D8;
    block[4] = self;
    v16 = sendersCopy;
    dispatch_async(pendingAddressQueue, block);
  }

  objc_autoreleasePoolPop(v7);
  v13 = v17;

  return v13;
}

- (void)_vipsDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:EMVIPsUpdatedKey];
  if ([v6 count])
  {
    v7 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000AE280;
    block[3] = &unk_1001563D8;
    v14 = v6;
    selfCopy = self;
    dispatch_async(v7, block);
  }

  v8 = [userInfo objectForKeyedSubscript:EMVIPsRemovedKey];
  if ([v8 count])
  {
    v9 = dispatch_get_global_queue(0, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000AE3EC;
    v10[3] = &unk_1001563D8;
    v11 = v8;
    selfCopy2 = self;
    dispatch_async(v9, v10);
  }
}

- (id)_messagesForSenders:(id)senders success:(BOOL *)success
{
  sendersCopy = senders;
  if ([sendersCopy count])
  {
    allObjects = [sendersCopy allObjects];
    v8 = [EMMessageListItemPredicates predicateForMessagesWithSenders:allObjects];

    v9 = [[EMQuery alloc] initWithTargetClass:objc_opt_class() predicate:v8 sortDescriptors:&__NSArray0__struct];
    persistence = [(MFMailMessageLibrary *)self->_library persistence];
    messagePersistence = [persistence messagePersistence];
    v12 = [messagePersistence persistedMessagesMatchingQuery:v9 limit:0x7FFFFFFFFFFFFFFFLL requireProtectedData:1];

    if (!success)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
    if (!success)
    {
      goto LABEL_10;
    }
  }

  v13 = ![sendersCopy count] || objc_msgSend(v12, "count") || EFContentProtectionGetObservedState() == 0;
  *success = v13;
LABEL_10:

  return v12;
}

@end