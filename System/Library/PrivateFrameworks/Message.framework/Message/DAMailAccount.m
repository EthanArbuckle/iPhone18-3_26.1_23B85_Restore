@interface DAMailAccount
+ (id)accountIDForDirectoryName:(id)a3 isAccountDirectory:(BOOL *)a4;
+ (id)legacyPathForAccountIdentifier:(id)a3 withHostname:(id)a4 username:(id)a5;
- (BOOL)_deleteMailbox:(id)a3 reflectToServer:(BOOL)a4;
- (BOOL)addRequest:(id)a3 consumer:(id)a4 mailbox:(id)a5;
- (BOOL)isEnabledForDataclass:(id)a3;
- (BOOL)isMailboxLocalForType:(int64_t)a3;
- (BOOL)isRunningInDisallowedBundle;
- (BOOL)moveSupportedFromMailboxURL:(id)a3 toURL:(id)a4;
- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4;
- (BOOL)perMessageEncryptionEnabledForAddress:(id)a3;
- (BOOL)performRequests:(id)a3 mailbox:(id)a4;
- (BOOL)reconstituteOrphanedMeetingInMessage:(id)a3;
- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5;
- (BOOL)supportsServerDrafts;
- (BOOL)supportsUniqueServerId;
- (DAMailAccount)initWithDAAccount:(id)a3;
- (DAMailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4;
- (MFMailboxUid)virtualAllSearchMailbox;
- (id)URLStringFromLegacyURLString:(id)a3;
- (id)_URLScheme;
- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7;
- (id)_copyMailboxWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 dictionary:(id)a6;
- (id)_folderIdsForMailboxUids:(id)a3;
- (id)_inboxFolderID;
- (id)_infoForMatchingURL:(id)a3;
- (id)_relativePathForType:(int64_t)a3;
- (id)_remoteIDsForFlagChangeAction:(id)a3;
- (id)_updateWatchedFolderIdsAndNotify:(BOOL)a3;
- (id)_watchedFolderIds;
- (id)accountConduit;
- (id)accountForRenewingCredentials;
- (id)accountPropertyForKey:(id)a3;
- (id)allMailboxUids;
- (id)copyDataForRemoteEncryptionCertificatesForAddresses:(id)a3 errors:(id *)a4;
- (id)deliveryAccount;
- (id)displayName;
- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3;
- (id)fetchLimits;
- (id)folderIDForMailbox:(id)a3;
- (id)hostname;
- (id)iconString;
- (id)mailboxForFolderID:(id)a3;
- (id)mailboxUidForInfo:(id)a3;
- (id)meetingStorePersistentID;
- (id)messageDataForMessage:(id)a3;
- (id)primaryMailboxUid;
- (id)pushedMailboxUids;
- (id)replayAction:(id)a3;
- (id)signingIdentityPersistentReferenceForAddress:(id)a3;
- (id)statisticsKind;
- (id)syncAnchorForFolderID:(id)a3 mailbox:(id *)a4;
- (id)unactionableInvitationICSRepresentationInMessage:(id)a3 summary:(id *)a4;
- (id)uniqueID;
- (id)uniqueServerIdForMessage:(id)a3;
- (id)unsupportedHandoffTypes;
- (id)username;
- (int)emptyFrequencyForMailboxType:(int64_t)a3;
- (int64_t)secureCompositionEncryptionPolicyForAddress:(id)a3;
- (int64_t)secureCompositionSigningPolicyForAddress:(id)a3;
- (void)_ensureWeHaveLoadedInitialMailboxList;
- (void)_loadChildrenForParent:(id)a3 fromMap:(id)a4 intoArray:(id)a5 replacingInbox:(id)a6 withID:(id)a7;
- (void)_performFolderChange:(id)a3 completion:(id)a4;
- (void)_reachabilityChanged:(id)a3;
- (void)accountHierarchyChanged:(id)a3;
- (void)cancelSearchQuery:(id)a3;
- (void)changePushedMailboxUidsAdded:(id)a3 deleted:(id)a4;
- (void)dealloc;
- (void)fetchMailboxListExplicit;
- (void)foldersContentsChanged:(id)a3;
- (void)invalidate;
- (void)performSearchQuery:(id)a3;
- (void)pushedFoldersPrefsChanged:(id)a3;
- (void)resetSpecialMailboxes;
- (void)setDAAccount:(id)a3;
- (void)setEncryptionIdentityPersistentReference:(id)a3 forAddress:(id)a4;
- (void)setSigningIdentityPersistentReference:(id)a3 forAddress:(id)a4;
- (void)setSyncAnchor:(id)a3 forFolderID:(id)a4 mailbox:(id *)a5;
- (void)startListeningForNotifications;
- (void)stopListeningForNotifications;
@end

@implementation DAMailAccount

+ (id)legacyPathForAccountIdentifier:(id)a3 withHostname:(id)a4 username:(id)a5
{
  v6 = a3;
  v7 = [a1 defaultAccountDirectory];
  v8 = MEMORY[0x1E696AEC0];
  v9 = [a1 accountTypeString];
  v10 = [v8 stringWithFormat:@"%@%@", v9, v6];

  v11 = [v7 stringByAppendingPathComponent:v10];
  v12 = [v11 mf_betterStringByResolvingSymlinksInPath];

  return v12;
}

- (id)URLStringFromLegacyURLString:(id)a3
{
  v4 = [MEMORY[0x1E696AF20] componentsWithString:a3];
  v5 = [(DAMailAccount *)self uniqueID];
  [v4 setHost:v5];

  [v4 setUser:0];
  [v4 setPort:0];
  v6 = [v4 URL];
  v7 = [v6 absoluteString];

  return v7;
}

+ (id)accountIDForDirectoryName:(id)a3 isAccountDirectory:(BOOL *)a4
{
  v6 = a3;
  v7 = [a1 accountTypeString];
  if ([v6 hasPrefix:v7])
  {
    v8 = [v6 length];
    v9 = [a1 accountTypeString];
    v10 = [v9 length];

    if (v8 > v10)
    {
      *a4 = 1;
      v11 = [a1 accountTypeString];
      v12 = [v6 substringFromIndex:{objc_msgSend(v11, "length")}];

      goto LABEL_6;
    }
  }

  else
  {
  }

  v12 = 0;
  *a4 = 0;
LABEL_6:

  return v12;
}

- (DAMailAccount)initWithLibrary:(id)a3 persistentAccount:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = DAMailAccount;
  v8 = [(MailAccount *)&v17 initWithLibrary:v6 persistentAccount:v7];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AD10]);
    watchedFolderIdsLock = v8->_watchedFolderIdsLock;
    v8->_watchedFolderIdsLock = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    requestQueuesByFolderID = v8->_requestQueuesByFolderID;
    v8->_requestQueuesByFolderID = v11;

    v8->_supportsUniqueServerIdLock._os_unfair_lock_opaque = 0;
    v13 = MFUserAgent();
    v14 = [v13 isMobileMail];

    if (v14)
    {
      v15 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
      [v15 addNetworkReachableObserver:v8 selector:sel__reachabilityChanged_];
      v8->_isNetworkReachable = [v15 isNetworkReachable];
    }
  }

  return v8;
}

- (DAMailAccount)initWithDAAccount:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v4 accountID];
  v7 = [v5 stringWithFormat:@"%@", v6];

  v8 = MFMailDirectory();
  v9 = [v8 stringByAppendingPathComponent:v7];

  v13.receiver = self;
  v13.super_class = DAMailAccount;
  v10 = [(MailAccount *)&v13 initWithPath:v9];
  v11 = v10;
  if (v10)
  {
    [(DAMailAccount *)v10 setDAAccount:v4];
  }

  return v11;
}

- (id)statisticsKind
{
  if (self->_cachedIsHotmailAccount)
  {
    v2 = MEMORY[0x1E69ADBE8];
  }

  else
  {
    v2 = MEMORY[0x1E69ADBD8];
  }

  return *v2;
}

- (void)foldersContentsChanged:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v21 = a3;
  if ([(DAMailAccount *)self isActive])
  {
    if (!v21 || ([v21 object], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqualToString:", self->_cachedAccountID), v4, v5))
    {
      v6 = [v21 userInfo];
      v7 = [v6 objectForKey:@"DAChangedFolders"];

      if (v7)
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v20 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v8, @"MailAccountContentsDidChangeUids", 0, 0}];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [v21 userInfo];
        v10 = [v9 objectForKey:@"DAChangedFolders"];

        v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v11)
        {
          v12 = *v23;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v23 != v12)
              {
                objc_enumerationMutation(v10);
              }

              v14 = *(*(&v22 + 1) + 8 * i);
              v15 = [(DAMailAccount *)self mailboxForFolderID:v14];
              if (v15)
              {
                [v8 addObject:v15];
              }

              else
              {
                v16 = MFLogGeneral();
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v27 = self;
                  v28 = 2114;
                  v29 = v14;
                  _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "#Warning warning, %@ got ping for folder ID %{public}@, but can't find mailboxUid with that ID.", buf, 0x16u);
                }
              }
            }

            v11 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v11);
        }

        v17 = v20;
      }

      else
      {
        v17 = 0;
      }

      v18 = [MEMORY[0x1E696AD88] defaultCenter];
      [v18 postNotificationName:@"MailAccountContentsDidChange" object:self userInfo:v17];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (id)displayName
{
  if ([(NSString *)self->_cachedDisplayName length])
  {
    v3 = self->_cachedDisplayName;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DAMailAccount;
    v3 = [(MailAccount *)&v5 displayName];
  }

  return v3;
}

- (id)accountForRenewingCredentials
{
  [(DAMailAccount *)self mf_lock];
  v3 = self->_daAccount;
  [(DAMailAccount *)self mf_unlock];
  v4 = [(DAAccount *)v3 backingAccountInfo];

  return v4;
}

- (id)username
{
  [(DAMailAccount *)self mf_lock];
  v3 = self->_cachedEmailAddress;
  [(DAMailAccount *)self mf_unlock];
  v4 = [(NSString *)v3 rangeOfString:@"@"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(NSString *)v3 substringWithRange:0, v4];
  }

  return v5;
}

- (id)hostname
{
  [(DAMailAccount *)self mf_lock];
  v3 = self->_cachedEmailAddress;
  [(DAMailAccount *)self mf_unlock];
  v5 = [(NSString *)v3 rangeOfString:@"@"];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = &stru_1F273A5E0;
  }

  else
  {
    v6 = [(NSString *)v3 substringWithRange:v5 + v4, [(NSString *)v3 length]- (v5 + v4)];
  }

  return v6;
}

- (id)deliveryAccount
{
  v2 = [[DADeliveryAccount alloc] initWithDAMailAccount:self];

  return v2;
}

- (id)uniqueID
{
  [(DAMailAccount *)self mf_lock];
  v3 = self->_cachedAccountID;
  [(DAMailAccount *)self mf_unlock];

  return v3;
}

- (id)allMailboxUids
{
  if (self->_accountConduit)
  {
    v4.receiver = self;
    v4.super_class = DAMailAccount;
    v2 = [(MailAccount *)&v4 allMailboxUids];
  }

  else
  {
    v2 = [MEMORY[0x1E695DEC8] array];
  }

  return v2;
}

- (void)resetSpecialMailboxes
{
  if (self->_accountConduit)
  {
    v2.receiver = self;
    v2.super_class = DAMailAccount;
    [(MailAccount *)&v2 resetSpecialMailboxes];
  }
}

- (MFMailboxUid)virtualAllSearchMailbox
{
  virtualAllSearchMailbox = self->_virtualAllSearchMailbox;
  if (!virtualAllSearchMailbox)
  {
    [(DAMailAccount *)self mf_lock];
    if (!self->_virtualAllSearchMailbox)
    {
      v4 = MFLookupLocalizedString(@"SEARCH_ALL_MAILBOXES", @"Search", @"Delayed");
      v5 = [[MFDAMailbox alloc] initWithName:v4 attributes:0 account:self folderID:@"kDAMailAccountAllMailboxesFolderID"];
      v6 = [(MailAccount *)self rootMailbox];
      [(MFMailboxUid *)v5 setParent:v6];

      v7 = self->_virtualAllSearchMailbox;
      self->_virtualAllSearchMailbox = &v5->super;
    }

    [(DAMailAccount *)self mf_unlock];
    virtualAllSearchMailbox = self->_virtualAllSearchMailbox;
  }

  return virtualAllSearchMailbox;
}

- (int)emptyFrequencyForMailboxType:(int64_t)a3
{
  if (a3 == 3)
  {
    return -1;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = DAMailAccount;
  return [(MailAccount *)&v6 emptyFrequencyForMailboxType:?];
}

- (BOOL)isRunningInDisallowedBundle
{
  v2 = [MEMORY[0x1E696AAE8] mainBundle];
  v3 = [v2 bundleIdentifier];
  v4 = [&unk_1F2774C38 containsObject:v3];

  return v4;
}

- (void)_loadChildrenForParent:(id)a3 fromMap:(id)a4 intoArray:(id)a5 replacingInbox:(id)a6 withID:(id)a7
{
  v37 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v28 = a5;
  v13 = a6;
  v30 = v12;
  v31 = a7;
  v24 = v11;
  v29 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v12 objectForKey:v11];
  v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v14)
  {
    v26 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v18 = [v16 folderID];
        [(DAMailAccount *)self _loadChildrenForParent:v18 fromMap:v30 intoArray:v17 replacingInbox:v13 withID:v31];

        v19 = [v16 folderName];
        if ([v13 isEqual:v16])
        {
          v20 = v31;

          v19 = v20;
        }

        v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v21 setValue:v19 forKey:@"MailboxName"];
        [v21 setValue:v17 forKey:@"MailboxChildren"];
        [v21 setValue:v29 forKey:@"MailboxAttributes"];
        v22 = [v16 folderID];
        [v21 setValue:v22 forKey:@"DAFolderID"];

        [v28 addObject:v21];
        ++v15;
      }

      while (v14 != v15);
      v14 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v14);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)accountHierarchyChanged:(id)a3
{
  v77 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v54 = self;
  if (![(DAMailAccount *)self isRunningInDisallowedBundle])
  {
    if ([(DAMailAccount *)self isActive])
    {
      if (!v5 || ([v5 object], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "isEqualToString:", v54->_cachedAccountID), v6, (v7 & 1) != 0))
      {
        v8 = [MEMORY[0x1E696AF00] currentThread];
        if ([v8 isMainThread])
        {
          v9 = [(DAMailAccount *)v54 _isUnitTesting];

          if (!v9)
          {
            v10 = +[MFInvocationQueue sharedInvocationQueue];
            v11 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:a2 target:v54 object:v5];
            [v10 addInvocation:v11];

            goto LABEL_96;
          }
        }

        else
        {
        }

        v48 = v5;
        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = [(MFAccount *)v54 ef_publicDescription];
          *buf = 138543362;
          v76 = v13;
          _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "mailbox listing has changed for account %{public}@", buf, 0xCu);
        }

        v49 = [(DAMailAccount *)v54 accountConduit];
        v50 = [v49 mailboxes];
        v62 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v50, "count")}];
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        obj = v50;
        v14 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
        if (v14)
        {
          v15 = *v70;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v70 != v15)
              {
                objc_enumerationMutation(obj);
              }

              v17 = *(*(&v69 + 1) + 8 * i);
              v18 = [v17 folderID];
              [v62 setObject:v17 forKey:v18];
            }

            v14 = [obj countByEnumeratingWithState:&v69 objects:v74 count:16];
          }

          while (v14);
        }

        v64 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(obj, "count")}];
        v51 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v58 = [v49 inboxFolder];
        v55 = [v49 sentItemsFolder];
        v56 = [v49 deletedItemsFolder];
        v57 = [v49 draftsFolder];
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v19 = [v62 allValues];
        v20 = [v19 countByEnumeratingWithState:&v65 objects:v73 count:16];
        v21 = 0;
        if (v20)
        {
          v22 = 0;
          v53 = 0;
          LOBYTE(v23) = 0;
          LOBYTE(v24) = 0;
          LOBYTE(v25) = 0;
          v52 = 0;
          v61 = *v66;
          v59 = v19;
          while (1)
          {
            v63 = v20;
            for (j = 0; j != v63; ++j)
            {
              if (*v66 != v61)
              {
                objc_enumerationMutation(v59);
              }

              v27 = *(*(&v65 + 1) + 8 * j);
              if (v25)
              {
                v25 = 1;
                if (v24)
                {
                  goto LABEL_25;
                }
              }

              else
              {
                v25 = [v58 isEqual:*(*(&v65 + 1) + 8 * j)];
                if (v24)
                {
LABEL_25:
                  v24 = 1;
                  if (v21)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_30;
                }
              }

              v24 = [v55 isEqual:v27];
              if (v21)
              {
LABEL_26:
                v21 = 1;
                if (v23)
                {
                  goto LABEL_33;
                }

                goto LABEL_31;
              }

LABEL_30:
              v21 = [v56 isEqual:v27];
              if (v23)
              {
                goto LABEL_33;
              }

LABEL_31:
              if ([v57 isEqual:v27])
              {
                if (![(DAMailAccount *)v54 supportsServerDrafts])
                {
                  v23 = 0;
                  continue;
                }

LABEL_33:
                v23 = 1;
                goto LABEL_35;
              }

              v23 = 0;
LABEL_35:
              v28 = [v27 parentFolderID];
              if (v28)
              {
                v29 = [v27 parentFolderID];
              }

              else
              {
                v29 = @"0";
              }

              v30 = [v64 objectForKey:v29];
              if (!v30)
              {
                v30 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [v64 setValue:v30 forKey:v29];
              }

              [v30 addObject:v27];
              if (v22)
              {
                v22 = 1;
              }

              else
              {
                if ([@"0" isEqualToString:v29])
                {
                  v31 = [v27 folderName];
                  v32 = v31;
                  if (v31)
                  {
                    v33 = [v31 caseInsensitiveCompare:@"junk"];
                    v22 = v33 == 0;
                    if (v33)
                    {
                      if (v53)
                      {
                        v22 = 0;
                        v53 = 1;
LABEL_55:

                        goto LABEL_56;
                      }

                      if ([v32 caseInsensitiveCompare:@"junk e-mail"] && objc_msgSend(v32, "caseInsensitiveCompare:", @"junk email"))
                      {
                        v22 = 0;
                        v53 = 0;
                        goto LABEL_55;
                      }

                      v53 = 1;
                    }

                    v34 = v27;

                    v52 = v34;
                    goto LABEL_55;
                  }

                  v22 = 0;
                  goto LABEL_55;
                }

                v22 = 0;
              }

LABEL_56:
            }

            v19 = v59;
            v20 = [v59 countByEnumeratingWithState:&v65 objects:v73 count:16];
            if (!v20)
            {
              v35 = v22 | v53;
              goto LABEL_61;
            }
          }
        }

        v35 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v52 = 0;
LABEL_61:

        [(DAMailAccount *)v54 _loadChildrenForParent:@"0" fromMap:v64 intoArray:v51 replacingInbox:v58 withID:@"70FB9178-576E-4CAA-A08E-F68D57BFD01E"];
        [(DAMailAccount *)v54 mf_lock];
        if (v25)
        {
          v36 = [v58 folderID];
        }

        else
        {
          v36 = 0;
        }

        objc_storeStrong(&v54->_cachedInboxFolderID, v36);
        if (v25)
        {
        }

        if (v24)
        {
          v37 = [v55 folderID];
        }

        else
        {
          v37 = 0;
        }

        objc_storeStrong(&v54->_cachedSentMessagesFolderID, v37);
        if (v24)
        {
        }

        if (v21)
        {
          v38 = [v56 folderID];
        }

        else
        {
          v38 = 0;
        }

        objc_storeStrong(&v54->_cachedTrashFolderID, v38);
        if (v21)
        {
        }

        if (v35)
        {
          v39 = [v52 folderID];
        }

        else
        {
          v39 = 0;
        }

        objc_storeStrong(&v54->_cachedJunkFolderID, v39);
        if (v35)
        {
        }

        if (v23)
        {
          v40 = [v57 folderID];
        }

        else
        {
          v40 = 0;
        }

        objc_storeStrong(&v54->_cachedDraftsFolderID, v40);
        if (v23)
        {
        }

        v41 = [(MailAccount *)v54 rootMailbox];
        v42 = [(MailAccount *)v54 _loadMailboxListingIntoCache:0 attributes:0 children:v51 parent:v41];

        receivedInitialMailboxUpdate = v54->_receivedInitialMailboxUpdate;
        if (!((v48 == 0) | receivedInitialMailboxUpdate & 1))
        {
          receivedInitialMailboxUpdate = 1;
          v54->_receivedInitialMailboxUpdate = 1;
        }

        v44 = receivedInitialMailboxUpdate & v25 & !v54->_doneInitialInboxCheck;
        if (v44)
        {
          v54->_doneInitialInboxCheck = 1;
        }

        [(DAMailAccount *)v54 mf_unlock];
        [(DAMailAccount *)v54 resetSpecialMailboxes];
        if (v42)
        {
          flags = v54->super._flags;
          if ((*&flags & 0x20000) == 0)
          {
            v54->super._flags = (*&flags & 0xFFFD0000 | (*&flags + 1));
            [(MailAccount *)v54 _writeMailboxCacheWithPrejudice:1];
          }
        }

        [(DAMailAccount *)v54 startListeningForNotifications];
        if (v44)
        {
          [(DAMailAccount *)v54 foldersContentsChanged:0];
        }

        v46 = [(MailAccount *)v54 mailboxUidOfType:5 createIfNeeded:0];

        v5 = v48;
      }
    }
  }

LABEL_96:

  v47 = *MEMORY[0x1E69E9840];
}

- (id)accountConduit
{
  [(DAMailAccount *)self mf_lock];
  if (!self->_accountConduit)
  {
    if ([(DAMailAccount *)self isRunningInDisallowedBundle])
    {
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      v11 = [MEMORY[0x1E696AAE8] mainBundle];
      v12 = [v11 bundleIdentifier];
      [v10 handleFailureInMethod:a2 object:self file:@"DAMailAccount.m" lineNumber:609 description:{@"should never make account conduits in %@.", v12}];
    }

    v4 = [objc_alloc(objc_msgSend(objc_opt_class() "_accountConduitClass"))];
    accountConduit = self->_accountConduit;
    self->_accountConduit = v4;

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    [v6 addObserver:self selector:sel_foldersContentsChanged_ name:*MEMORY[0x1E6999810] object:0];

    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:self selector:sel_accountHierarchyChanged_ name:*MEMORY[0x1E6999818] object:0];
  }

  [(DAMailAccount *)self mf_unlock];
  v8 = self->_accountConduit;

  return v8;
}

- (void)pushedFoldersPrefsChanged:(id)a3
{
  v9 = a3;
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 isMainThread];

  if (v6)
  {
    v7 = +[MFInvocationQueue sharedInvocationQueue];
    v8 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:a2 target:self object:v9];
    [v7 addInvocation:v8];
  }

  else
  {
    [(DAMailAccount *)self stopListeningForNotifications];
    [(DAMailAccount *)self startListeningForNotifications];
  }
}

- (void)fetchMailboxListExplicit
{
  if (+[MFMailMessageLibrary canUsePersistence])
  {
    if (!self->_loadedInitialMailboxList)
    {
      self->_loadedInitialMailboxList = 1;
      [(DAMailAccount *)self accountHierarchyChanged:0];
    }

    v3 = [(DAMailAccount *)self uniqueID];
    if (v3)
    {
      v5 = v3;
      v4 = [MEMORY[0x1E69998A8] sharedConnection];
      [v4 updateFolderListForAccountID:v5 andDataclasses:1];

      v3 = v5;
    }
  }
}

- (id)_copyMailboxWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 dictionary:(id)a6
{
  v9 = a4;
  v10 = [a6 objectForKey:@"DAFolderID"];
  v11 = [objc_allocWithZone(MFDAMailbox) initWithName:v9 attributes:a5 account:self folderID:v10];

  return v11;
}

- (id)_copyMailboxUidWithParent:(id)a3 name:(id)a4 attributes:(unint64_t)a5 existingMailboxUid:(id)a6 dictionary:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  [(DAMailAccount *)self _ensureWeHaveLoadedInitialMailboxList];
  v21.receiver = self;
  v21.super_class = DAMailAccount;
  v16 = [(MailAccount *)&v21 _copyMailboxUidWithParent:v12 name:v13 attributes:a5 existingMailboxUid:v14 dictionary:v15];
  v17 = [v15 objectForKey:@"DAFolderID"];
  v18 = [v16 folderID];
  v19 = v18;
  if (v14 && v18)
  {
    if (([v18 isEqualToString:v17] & 1) == 0)
    {

      v16 = 0;
    }
  }

  else if (!v18 && v17)
  {
    [v16 setFolderID:v17];
  }

  return v16;
}

- (id)folderIDForMailbox:(id)a3
{
  v4 = a3;
  v5 = [(MailAccount *)self rootMailbox];

  if (v5 == v4)
  {
    v6 = @"0";
  }

  else if (objc_opt_respondsToSelector())
  {
    v6 = [v4 folderID];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __85__DAMailAccount__newMailboxWithParent_name_attributes_dictionary_withCreationOption___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 wasSuccessful])
  {
    v4 = [v3 folderID];

    if (!v4)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      [v17 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"DAMailAccount.m" lineNumber:711 description:@"folderID must be non-nil"];
    }

    v5 = *(a1 + 40);
    if (v5)
    {
      v6 = [v5 mutableCopy];
    }

    else
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    v7 = v6;
    v8 = [v3 folderID];
    [v7 setObject:v8 forKey:@"DAFolderID"];

    v9 = *(a1 + 32);
    v10 = *(a1 + 48);
    v11 = [v3 folderName];
    v12 = *(a1 + 80);
    v13 = *(a1 + 72);
    v18.receiver = v9;
    v18.super_class = DAMailAccount;
    v14 = objc_msgSendSuper2(&v18, sel__newMailboxWithParent_name_attributes_dictionary_withCreationOption_, v10, v11, v12, v7, v13);
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }
}

- (BOOL)renameMailbox:(id)a3 newName:(id)a4 parent:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v11 = [(DAMailAccount *)self folderIDForMailbox:v10];
  v12 = v9;
  v13 = v12;
  if (!v12)
  {
    v13 = [v8 displayName];
  }

  v14 = objc_alloc(MEMORY[0x1E69998B0]);
  v15 = [(DAMailAccount *)self folderIDForMailbox:v8];
  v16 = [v14 initFolderChangeWithChangeType:1 folderId:v15 parentFolderId:v11 displayName:v13 dataclass:1 consumer:0];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__DAMailAccount_renameMailbox_newName_parent___block_invoke;
  v21[3] = &unk_1E7AA2500;
  v25 = &v26;
  v17 = v8;
  v22 = v17;
  v18 = v10;
  v23 = v18;
  v24 = self;
  [(DAMailAccount *)self _performFolderChange:v16 completion:v21];
  v19 = *(v27 + 24);

  _Block_object_dispose(&v26, 8);
  return v19;
}

void __46__DAMailAccount_renameMailbox_newName_parent___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  if ([v3 wasSuccessful])
  {
    v4 = a1[6];
    v5 = a1[4];
    v6 = [v3 folderName];
    v7 = a1[5];
    v8.receiver = v4;
    v8.super_class = DAMailAccount;
    *(*(a1[7] + 8) + 24) = objc_msgSendSuper2(&v8, sel__renameMailbox_newName_parent_, v5, v6, v7);
  }
}

- (BOOL)_deleteMailbox:(id)a3 reflectToServer:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  if (v4)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v7 = objc_alloc(MEMORY[0x1E69998B0]);
    v8 = [(DAMailAccount *)self folderIDForMailbox:v6];
    v9 = [v7 initFolderChangeWithChangeType:2 folderId:v8 parentFolderId:0 displayName:0 dataclass:1 consumer:0];

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__DAMailAccount__deleteMailbox_reflectToServer___block_invoke;
    v12[3] = &unk_1E7AA2528;
    v12[4] = &v13;
    [(DAMailAccount *)self _performFolderChange:v9 completion:v12];
    v10 = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v10 = 1;
  }

  return v10 & 1;
}

void __48__DAMailAccount__deleteMailbox_reflectToServer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 32) + 8) + 24) = [v3 wasSuccessful];
}

- (void)_performFolderChange:(id)a3 completion:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MFDAFolderChangeConsumer);
  [v10 setConsumer:v7];
  v8 = [(DAMailAccount *)self accountConduit];
  [v8 performFolderChange:v10 isUserRequested:1];

  v9 = [(MFDAFolderChangeConsumer *)v7 waitForResult];
  v6[2](v6, v9);
}

- (BOOL)newMailboxNameIsAcceptable:(id)a3 reasonForFailure:(id *)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = DAMailAccount;
  if ([(MailAccount *)&v14 newMailboxNameIsAcceptable:v6 reasonForFailure:a4])
  {
    if (self->_cachedIsHotmailAccount)
    {
      v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"&<>:/()+'\"\\""];;
      v8 = [v6 rangeOfCharacterFromSet:v7];
      v9 = v8 == 0x7FFFFFFFFFFFFFFFLL;
      if (v8 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = [v6 substringWithRange:{v8, 1}];
        if (a4)
        {
          v11 = MEMORY[0x1E696AEC0];
          v12 = MFLookupLocalizedString(@"MAILBOX_NAME_INCLUDES_SPECIAL_CHARACTERS", @"This account does not allow mailbox names containing “%@”.", @"Delayed");
          *a4 = [v11 stringWithFormat:v12, v10];
        }
      }
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_URLScheme
{
  v2 = objc_opt_class();

  return [v2 _URLScheme];
}

- (void)setDAAccount:(id)a3
{
  v31 = a3;
  [(DAMailAccount *)self mf_lock];
  accountConduit = self->_accountConduit;
  if (accountConduit)
  {
    [(ASAccountActorMessages *)accountConduit setAccount:v31];
  }

  else
  {
    objc_storeStrong(&self->_daAccount, a3);
  }

  v6 = [v31 accountPropertyForKey:@"mcProfileUUID"];
  self->_cachedIsManaged = [v6 length] != 0;

  v7 = [v31 backingAccountInfo];
  self->_cachedIsManaged = [MFAccount accountIsManaged:v7];

  v8 = [v31 backingAccountInfo];
  self->_cachedSourceIsManaged = [MFAccount accountSourceIsManaged:v8];

  v9 = [v31 backingAccountInfo];
  self->_cachedRestrictSendingFromExternalProcesses = [(MFAccount *)MailAccount accountIsPreventedFromSendingFromExternalProcesses:v9];

  v10 = [v31 backingAccountInfo];
  self->_cachedRestrictMessageTransfersToOtherAccounts = [(MFAccount *)MailAccount accountIsRestrictedFromTransfersToOtherAccounts:v10];

  v11 = [v31 backingAccountInfo];
  self->_cachedRestrictSyncingRecents = [(MFAccount *)MailAccount accountRestrictsRecentsSyncing:v11];

  v12 = [v31 accountPropertyForKey:@"SMIMESigningEnabled"];
  self->_cachedSecureMIMEShouldSign = [v12 BOOLValue];

  v13 = [v31 accountPropertyForKey:@"SMIMEEncryptionEnabled"];
  self->_cachedSecureMIMEShouldEncrypt = [v13 BOOLValue];

  v14 = [v31 encryptionIdentityPersistentReference];

  if (v14)
  {
    if (self->_cachedIsManaged)
    {
      v15 = [v31 accountBoolPropertyForKey:@"PerMessageSMIMEEnabled"];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  self->_cachedPerMessageEncryptionEnabled = v15;
  v16 = [v31 accountPropertyForKey:@"MFAccountSupportsMailDrop"];
  self->_cachedSupportsMailDrop = [v16 BOOLValue];

  v17 = [v31 accountPropertyForKey:@"ArchiveMessages"];
  self->_cachedArchiveByDefault = [v17 BOOLValue];

  self->_cachedIsHotmailAccount = [v31 isHotmailAccount];
  self->_supportsServerDrafts = 0;
  v18 = [v31 accountPropertyForKey:@"ASStoreDraftsOnServer"];
  v19 = v18;
  if (v18)
  {
    v20 = [v18 BOOLValue];
  }

  else
  {
    v20 = 1;
  }

  self->_cachedStoreDraftsOnServer = v20;
  v21 = [v31 accountID];
  cachedAccountID = self->_cachedAccountID;
  self->_cachedAccountID = v21;

  v23 = [v31 persistentUUID];
  cachedAccountPersistentUUID = self->_cachedAccountPersistentUUID;
  self->_cachedAccountPersistentUUID = v23;

  self->_cachedIsActive = [v31 enabledForDADataclass:1];
  v25 = [v31 accountDescription];
  cachedDisplayName = self->_cachedDisplayName;
  self->_cachedDisplayName = v25;

  v27 = [v31 emailAddress];
  cachedEmailAddress = self->_cachedEmailAddress;
  self->_cachedEmailAddress = v27;

  v29 = [v31 emailAddresses];
  cachedEmailAddresses = self->_cachedEmailAddresses;
  self->_cachedEmailAddresses = v29;

  if (self->_cachedCalendarEnabled != [v31 enabledForDADataclass:4])
  {
    self->_cachedCalendarEnabled = [v31 enabledForDADataclass:4];
  }

  self->_supportsServerSearch = [v31 supportsMailboxSearch];
  self->_supportsMessageFlagging = [v31 supportsEmailFlagging];
  self->_daysToSync = [v31 mailNumberOfPastDaysToSync];
  [(DAMailAccount *)self mf_unlock];
}

- (id)_infoForMatchingURL:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionary];
  [v5 setObject:self forKey:@"Account"];
  v6 = [v4 pathComponents];
  v7 = [v6 count];

  if (v7 >= 3)
  {
    v8 = [v4 pathComponents];
    v9 = [v8 mutableCopy];

    [v9 removeObjectsInRange:{0, 2}];
    v10 = [MEMORY[0x1E696AEC0] pathWithComponents:v9];
    if ([v10 length])
    {
      [v5 setObject:v10 forKey:@"FolderID"];
    }
  }

  return v5;
}

- (id)mailboxForFolderID:(id)a3
{
  v4 = a3;
  [(DAMailAccount *)self mf_lock];
  v5 = [(MailAccount *)self rootMailbox];
  [(DAMailAccount *)self mf_unlock];
  if (v5)
  {
    v6 = _MFDescendantWithPredicate(v5, mailboxHasFolderID, v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)mailboxUidForInfo:(id)a3
{
  v4 = [a3 objectForKey:@"FolderID"];
  v5 = [(DAMailAccount *)self mailboxForFolderID:v4];

  return v5;
}

- (BOOL)addRequest:(id)a3 consumer:(id)a4 mailbox:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [MEMORY[0x1E699B848] pairWithFirst:v8 second:v9];
  v15[0] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  LOBYTE(self) = [(DAMailAccount *)self addRequests:v12 mailbox:v10];

  v13 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)performRequests:(id)a3 mailbox:(id)a4
{
  v68 = *MEMORY[0x1E69E9840];
  v43 = a3;
  v6 = a4;
  v57 = 0;
  v44 = [(DAMailAccount *)self syncAnchorForFolderID:v6 mailbox:&v57];
  v7 = v57;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __41__DAMailAccount_performRequests_mailbox___block_invoke;
  v50[3] = &unk_1E7AA2550;
  v45 = v8;
  v51 = v45;
  v52 = &v53;
  [v43 enumerateObjectsUsingBlock:v50];
  v9 = DALoggingwithCategory();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v45 count];
    v11 = [(MFAccount *)self ef_publicDescription];
    v12 = v11;
    if (*(v54 + 24))
    {
      v13 = "YES";
    }

    else
    {
      v13 = "NO";
    }

    *buf = 134219010;
    v59 = v10;
    v60 = 2114;
    v61 = v11;
    v62 = 2114;
    v63 = v6;
    v64 = 2112;
    v65 = v44;
    v66 = 2080;
    v67 = v13;
    _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_INFO, "Performing %lu mailbox requests with %{public}@, folder-id %{public}@, anchor %@, user requested %s", buf, 0x34u);
  }

  v14 = MFUserAgent();
  [v14 networkActivityStarted:self];

  if (!v44)
  {
    v15 = DALoggingwithCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(MFAccount *)self ef_publicDescription];
      *buf = 138543618;
      v59 = v16;
      v60 = 2114;
      v61 = v6;
      _os_log_impl(&dword_1B0389000, v15, OS_LOG_TYPE_DEFAULT, "Mail db had no sync anchor for %{public}@, folderID %{public}@.  Will erase local messages, perform full sync.", buf, 0x16u);
    }
  }

  v17 = [MFDAMailAccountSyncConsumer alloc];
  v18 = [(DAMailAccount *)self uniqueID];
  v19 = [(MFDAMailAccountSyncConsumer *)v17 initWithCurrentTag:v44 accountID:v18 requests:v43];

  do
  {
    [(MFDAMailAccountSyncConsumer *)v19 tag];

    v20 = objc_autoreleasePoolPush();
    v21 = [(DAMailAccount *)self accountConduit];
    v22 = [(MFDAMailAccountSyncConsumer *)v19 tag];
    v23 = [v21 performMailboxRequests:v45 mailbox:v6 previousTag:v22 clientWinsOnSyncConflict:1 isUserRequested:*(v54 + 24) consumer:v19];

    v24 = +[MFActivityMonitor currentMonitor];
    v25 = MEMORY[0x1E699B7F8];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __41__DAMailAccount_performRequests_mailbox___block_invoke_160;
    v47[3] = &unk_1E7AA2578;
    v26 = v21;
    v48 = v26;
    v49 = v23;
    v27 = [v25 tokenWithCancelationBlock:v47];
    [v24 addCancelable:v27];
    [(MFDAMailAccountConsumer *)v19 waitUntilDone];
    [v24 removeCancelable:v27];

    objc_autoreleasePoolPop(v20);
    v28 = [(MFDAMailAccountSyncConsumer *)v19 tag];
    LODWORD(v24) = v28 == 0;

    if (v24)
    {
      v29 = DALoggingwithCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = [(MFAccount *)self ef_publicDescription];
        *buf = 138543618;
        v59 = v30;
        v60 = 2114;
        v61 = v6;
        _os_log_impl(&dword_1B0389000, v29, OS_LOG_TYPE_DEFAULT, "server returned null sync key for sync of %{public}@, folderID %{public}@.  Will erase local messages, perform full sync.", buf, 0x16u);
      }
    }

    v31 = DALoggingwithCategory();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      v32 = [(MFDAMailAccountSyncConsumer *)v19 tag];
      *buf = 138412546;
      v59 = v32;
      v60 = 2114;
      v61 = v6;
      _os_log_impl(&dword_1B0389000, v31, OS_LOG_TYPE_INFO, "setting sync key %@ for mailbox %{public}@", buf, 0x16u);
    }

    v33 = [(MFDAMailAccountSyncConsumer *)v19 tag];
    v46 = v7;
    [(DAMailAccount *)self setSyncAnchor:v33 forFolderID:v6 mailbox:&v46];
    v34 = v46;

    v7 = v34;
    [(MFDAMailAccountSyncConsumer *)v19 tag];

    v35 = +[MFActivityMonitor currentMonitor];
    LODWORD(v34) = [v35 shouldCancel];

    if (v34)
    {
      v36 = DALoggingwithCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = [(MFAccount *)self ef_publicDescription];
        *buf = 138543618;
        v59 = v37;
        v60 = 2114;
        v61 = v6;
        _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_INFO, "canceled mailbox request for %{public}@, folderID %{public}@", buf, 0x16u);
      }

      v38 = 0;
    }

    else
    {
      v38 = [(MFDAMailAccountSyncConsumer *)v19 moreAvailable];
    }

    [(MFDAMailAccountSyncConsumer *)v19 reset];
  }

  while (v38);
  v39 = [(MFDAMailAccountConsumer *)v19 shouldRetryRequest];
  v40 = MFUserAgent();
  [v40 networkActivityEnded:self];

  _Block_object_dispose(&v53, 8);
  v41 = *MEMORY[0x1E69E9840];
  return !v39;
}

void __41__DAMailAccount_performRequests_mailbox___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 first];
  [*(a1 + 32) addObject:?];
  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && [v3 isUserRequested])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)_relativePathForType:(int64_t)a3
{
  if (a3 == 2)
  {
    return @"Archive";
  }

  if (a3 == 1)
  {
    return @"Junk";
  }

  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  [v7 handleFailureInMethod:a2 object:self file:@"DAMailAccount.m" lineNumber:1034 description:{@"requested relative path for unsupported mailbox type %ld", a3}];

  return 0;
}

- (BOOL)isMailboxLocalForType:(int64_t)a3
{
  if (a3 == 5)
  {
    return ![(DAMailAccount *)self supportsServerDrafts]|| !self->_cachedStoreDraftsOnServer;
  }

  else
  {
    return 0;
  }
}

- (void)_ensureWeHaveLoadedInitialMailboxList
{
  if (!self->_loadedInitialMailboxList)
  {
    self->_loadedInitialMailboxList = 1;
    [(DAMailAccount *)self accountHierarchyChanged:0];
  }
}

- (id)primaryMailboxUid
{
  [(DAMailAccount *)self _ensureWeHaveLoadedInitialMailboxList];
  v5.receiver = self;
  v5.super_class = DAMailAccount;
  v3 = [(MailAccount *)&v5 primaryMailboxUid];

  return v3;
}

- (BOOL)supportsUniqueServerId
{
  os_unfair_lock_lock(&self->_supportsUniqueServerIdLock);
  supportsUniqueServerId = self->_supportsUniqueServerId;
  if (!supportsUniqueServerId)
  {
    v4 = [(DAMailAccount *)self accountConduit];
    supportsUniqueServerId = [v4 supportsUniqueServerId];

    if (supportsUniqueServerId)
    {
      self->_supportsUniqueServerId = supportsUniqueServerId;
    }
  }

  os_unfair_lock_unlock(&self->_supportsUniqueServerIdLock);
  return supportsUniqueServerId != 2;
}

- (BOOL)supportsServerDrafts
{
  if (![(DAMailAccount *)self isRunningInDisallowedBundle]&& !self->_supportsServerDrafts)
  {
    v3 = [(DAMailAccount *)self accountConduit];
    self->_supportsServerDrafts = [v3 supportsDraftFolderSync];
  }

  return self->_supportsServerDrafts == 1;
}

- (id)uniqueServerIdForMessage:(id)a3
{
  v4 = a3;
  if ([(DAMailAccount *)self supportsUniqueServerId])
  {
    v5 = [v4 remoteID];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)accountPropertyForKey:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(DAMailAccount *)self mf_lock];
  v5 = self->_cachedEmailAddress;
  v6 = self->_cachedEmailAddresses;
  v7 = self->_cachedAccountID;
  [(DAMailAccount *)self mf_unlock];
  if ([v4 isEqual:@"EmailAddresses"])
  {
    if (v5)
    {
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObject:MEMORY[0x1E695E118] forKey:v5];
LABEL_20:
      v14 = v8;
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (![v4 isEqual:@"ReceiveEmailAliasAddresses"])
  {
    v15 = [v4 isEqual:*MEMORY[0x1E6959720]];
    if (v7)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    if (v16 == 1)
    {
      v8 = v7;
      goto LABEL_20;
    }

LABEL_19:
    v19.receiver = self;
    v19.super_class = DAMailAccount;
    v8 = [(MFAccount *)&v19 accountPropertyForKey:v4];
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = [(NSArray *)v6 mutableCopy];
    if (!v5)
    {
      goto LABEL_21;
    }

    goto LABEL_25;
  }

  v9 = [MEMORY[0x1E695DF70] array];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v6;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = *v21;
    v13 = MEMORY[0x1E695E118];
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v10);
      }

      [v9 addObject:v13];
      if (!--v11)
      {
        v11 = [(NSArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  v14 = [MEMORY[0x1E695DF90] dictionaryWithObjects:v9 forKeys:v10];

  if (v5)
  {
LABEL_25:
    [v14 removeObjectForKey:v5];
  }

LABEL_21:

  v17 = *MEMORY[0x1E69E9840];

  return v14;
}

- (void)invalidate
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = DALoggingwithCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v7 = self;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_INFO, "DAMAilAccount %p is invalidating", buf, 0xCu);
  }

  [(ASAccountActorMessages *)self->_accountConduit shutdown];
  v5.receiver = self;
  v5.super_class = DAMailAccount;
  [(MailAccount *)&v5 invalidate];
  v4 = *MEMORY[0x1E69E9840];
}

- (id)iconString
{
  cachedIconString = self->_cachedIconString;
  if (!cachedIconString)
  {
    if (self->_cachedIsHotmailAccount)
    {
      v4 = @"outlookAccountIcon";
    }

    else if ([MEMORY[0x1E6999898] isAppleInternalInstall])
    {
      v5 = [MEMORY[0x1E695E000] standardUserDefaults];
      v6 = [v5 BOOLForKey:@"HatesAppleDesign"];

      v4 = @"exchangeAccountIcon";
      if ((v6 & 1) == 0)
      {
        v7 = [(MFAccount *)self baseAccount];
        v8 = [v7 isAppleEmployeeAccount];

        if (v8)
        {
          v4 = @"appleAccountIcon";
        }
      }
    }

    else
    {
      v4 = @"exchangeAccountIcon";
    }

    v9 = self->_cachedIconString;
    self->_cachedIconString = &v4->isa;

    cachedIconString = self->_cachedIconString;
  }

  return cachedIconString;
}

- (BOOL)isEnabledForDataclass:(id)a3
{
  v4 = a3;
  if ([*MEMORY[0x1E6959B28] isEqualToString:v4])
  {
    v5 = [(DAMailAccount *)self isActive];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)dealloc
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = DALoggingwithCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = self;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_INFO, "DAMailAccount %p is deallocating", buf, 0xCu);
  }

  v4 = [MEMORY[0x1E698B6A0] sharedNetworkObserver];
  [v4 removeNetworkReachableObserver:self];

  v5 = +[MFInvocationQueue sharedInvocationQueue];
  v6 = [(NSInvocation *)MFMonitoredInvocation mf_invocationWithSelector:sel_invalidate target:self->_temporaryInbox];
  [v5 addInvocation:v6];

  [(ASAccountActorMessages *)self->_accountConduit shutdown];
  v8.receiver = self;
  v8.super_class = DAMailAccount;
  [(MailAccount *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)reconstituteOrphanedMeetingInMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 loadMeetingData];
  if (v5)
  {
    v6 = [v4 messageStore];
    v7 = [v6 mailbox];

    v8 = [(DAMailAccount *)self folderIDForMailbox:v7];
    if (v8)
    {
      v9 = [(DAMailAccount *)self accountConduit];
      v10 = [v9 reattemptInvitationLinkageForMetaData:v5 inFolderWithId:v8];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)unactionableInvitationICSRepresentationInMessage:(id)a3 summary:(id *)a4
{
  v6 = a3;
  v7 = [v6 loadMeetingData];
  if (v7)
  {
    v8 = [v6 messageStore];
    v9 = [v8 mailbox];

    v10 = [(DAMailAccount *)self folderIDForMailbox:v9];
    if (v10)
    {
      v11 = [(DAMailAccount *)self accountConduit];
      v12 = [v11 unactionableICSRepresentationForMetaData:v7 inFolderWithId:v10 outSummary:a4];
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)meetingStorePersistentID
{
  if (self->_cachedCalendarEnabled)
  {
    v3 = self->_cachedAccountPersistentUUID;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_inboxFolderID
{
  v3 = [(DAMailAccount *)self primaryMailboxUid];
  if (v3)
  {
    v4 = [(DAMailAccount *)self folderIDForMailbox:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_updateWatchedFolderIdsAndNotify:(BOOL)a3
{
  v3 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(DAMailAccount *)self accountConduit];
  v20 = 0;
  v6 = [v5 folderIDsThatExternalClientsCareAboutForDataclasses:1 withTag:&v20];
  v7 = v20;
  v8 = [v6 mutableCopy];

  if (v7)
  {
    v9 = [v7 copy];
    folderTag = self->_folderTag;
    self->_folderTag = v9;
  }

  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v11 = [(DAMailAccount *)self _inboxFolderID];
  if (v11)
  {
    [v8 addObject:v11];
  }

  v12 = [(MailAccount *)self mailboxUidOfType:4 createIfNeeded:0];
  v13 = [(DAMailAccount *)self folderIDForMailbox:v12];

  if (v13)
  {
    [v8 addObject:v13];
  }

  [(NSLock *)self->_watchedFolderIdsLock lock];
  v14 = self->_watchedFolderIds;
  objc_storeStrong(&self->_watchedFolderIds, v8);
  [(NSLock *)self->_watchedFolderIdsLock unlock];
  if (v3)
  {
    v15 = [MEMORY[0x1E696AD88] defaultCenter];
    [v15 postNotificationName:@"MFMailAccountPushedMailboxUidsDidChange" object:self userInfo:0];
  }

  if (![(NSSet *)v14 isEqualToSet:v8])
  {
    v16 = DALoggingwithCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v8;
      _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_INFO, "watched folder IDs changed: %@", buf, 0xCu);
    }
  }

  v17 = v8;

  v18 = *MEMORY[0x1E69E9840];
  return v8;
}

- (void)startListeningForNotifications
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = MFUserAgent();
  v4 = [v3 isMaild];

  if (v4)
  {
    v5 = +[MFPowerController sharedInstance];
    v6 = [v5 isBatterySaverModeEnabled];

    if (v6)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v8 = [(MFAccount *)self ef_publicDescription];
        v18 = 138543362;
        v19 = v8;
        _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "account %{public}@ will NOT start listening for notifications: battery-saver mode is ON", &v18, 0xCu);
      }
    }

    else
    {
      v11 = +[MFPowerController sharedInstance];
      v12 = [v11 gameModeEnabled];

      if (v12)
      {
        v7 = MFLogGeneral();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v13 = [(MFAccount *)self ef_publicDescription];
          v18 = 138543362;
          v19 = v13;
          _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "account %{public}@ will NOT start listening for notifications: Game Mode is ON", &v18, 0xCu);
        }
      }

      else
      {
        if (!self->_observingPushedFoldersPrefsChanged)
        {
          v14 = [MEMORY[0x1E696AD88] defaultCenter];
          [v14 addObserver:self selector:sel_pushedFoldersPrefsChanged_ name:*MEMORY[0x1E6999820] object:0];

          self->_observingPushedFoldersPrefsChanged = 1;
        }

        v15 = [(DAMailAccount *)self _updateWatchedFolderIdsAndNotify:1];
        v7 = [v15 allObjects];

        v16 = MFLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v18 = 138412290;
          v19 = v7;
          _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_INFO, "Requesting push for folders: %@", &v18, 0xCu);
        }

        if ([v7 count]&& [(DAMailAccount *)self canReceiveNewMailNotifications])
        {
          v17 = [(DAMailAccount *)self accountConduit];
          [v17 monitorFoldersForUpdates:v7 persistent:1];
        }
      }
    }
  }

  else
  {
    v7 = MFLogGeneral();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = [(MFAccount *)self ef_publicDescription];
      v18 = 138543362;
      v19 = v9;
      _os_log_impl(&dword_1B0389000, v7, OS_LOG_TYPE_INFO, "account %{public}@ will NOT start listening for notifications: Not in maild", &v18, 0xCu);
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopListeningForNotifications
{
  v2 = [(DAMailAccount *)self accountConduit];
  [v2 stopMonitoringAllFolders];
}

- (id)syncAnchorForFolderID:(id)a3 mailbox:(id *)a4
{
  v6 = a3;
  if (a4)
  {
    v7 = *a4;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  v8 = [(DAMailAccount *)self mailboxForFolderID:v6];
  v7 = v8;
  if (a4)
  {
    v9 = v8;
    *a4 = v7;
  }

  if (v7)
  {
LABEL_6:
    v10 = [(MailAccount *)self library];
    v11 = [v7 URLString];
    v12 = [v10 sequenceIdentifierForMailbox:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setSyncAnchor:(id)a3 forFolderID:(id)a4 mailbox:(id *)a5
{
  v17 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = *a5;
    if (v9)
    {
      goto LABEL_6;
    }
  }

  v10 = [(DAMailAccount *)self mailboxForFolderID:v8];
  v9 = v10;
  if (a5)
  {
    v11 = v10;
    *a5 = v9;
  }

  if (v9)
  {
LABEL_6:
    v12 = [(MailAccount *)self library];
    v13 = [v9 URLString];
    [v12 setSequenceIdentifier:v17 forMailbox:v13];
  }

  if (v17 && !self->_supportsServerSearch)
  {
    v14 = [(DAMailAccount *)self accountConduit];
    self->_supportsServerSearch = [v14 supportsMailboxSearch];
  }

  if (v17 && !self->_supportsMessageFlagging)
  {
    v15 = [(DAMailAccount *)self accountConduit];
    self->_supportsMessageFlagging = [v15 supportsEmailFlagging];
  }

  if (v17 && !self->_supportsConversations)
  {
    v16 = [(DAMailAccount *)self accountConduit];
    self->_supportsConversations = [v16 supportsConversations];
  }

  [(DAMailAccount *)self supportsUniqueServerId];
}

- (void)performSearchQuery:(id)a3
{
  v5 = a3;
  v4 = [(DAMailAccount *)self accountConduit];
  [v4 performSearchQuery:v5];
}

- (void)cancelSearchQuery:(id)a3
{
  v5 = a3;
  v4 = [(DAMailAccount *)self accountConduit];
  [v4 cancelSearchQuery:v5];
}

- (id)pushedMailboxUids
{
  v21 = *MEMORY[0x1E69E9840];
  v13 = [(DAMailAccount *)self _watchedFolderIds];
  if (!v13)
  {
    v13 = [(DAMailAccount *)self _updateWatchedFolderIdsAndNotify:0];
  }

  v3 = [MEMORY[0x1E695DFA8] set];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v13;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = [(DAMailAccount *)self mailboxForFolderID:v8];
        if (v9)
        {
          [v3 addObject:v9];
        }

        else
        {
          v10 = MFLogGeneral();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_impl(&dword_1B0389000, v10, OS_LOG_TYPE_DEFAULT, "#Warning mailboxForFolderID returned nil (folderId = %@)", buf, 0xCu);
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)_folderIdsForMailboxUids:(id)a3
{
  v3 = [a3 ef_compactMap:&__block_literal_global_3];

  return v3;
}

id __42__DAMailAccount__folderIdsForMailboxUids___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 folderID];
    if (v3)
    {
      goto LABEL_7;
    }

    v4 = MFLogGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v2 ef_publicDescription];
      v8 = 138543362;
      v9 = v5;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "#Warning Missing folder ID for mailbox: %{public}@", &v8, 0xCu);
    }
  }

  v3 = 0;
LABEL_7:

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)changePushedMailboxUidsAdded:(id)a3 deleted:(id)a4
{
  v9 = a4;
  v6 = [(DAMailAccount *)self _folderIdsForMailboxUids:a3];
  v7 = [(DAMailAccount *)self _folderIdsForMailboxUids:v9];
  if (v6 | v7)
  {
    v8 = [(DAMailAccount *)self accountConduit];
    [v8 setFolderIdsThatExternalClientsCareAboutAdded:v6 deleted:v7 foldersTag:self->_folderTag];
  }
}

- (id)_watchedFolderIds
{
  [(NSLock *)self->_watchedFolderIdsLock lock];
  v3 = self->_watchedFolderIds;
  [(NSLock *)self->_watchedFolderIdsLock unlock];

  return v3;
}

- (void)_reachabilityChanged:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 isEqualToString:*MEMORY[0x1E698B608]];

  if (v6)
  {
    v7 = [v4 userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x1E698B610]];
    v9 = [v8 BOOLValue];

    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __38__DAMailAccount__reachabilityChanged___block_invoke;
    v11[3] = &unk_1E7AA25E8;
    v11[4] = self;
    v12 = v9;
    dispatch_async(v10, v11);
  }
}

void __38__DAMailAccount__reachabilityChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 264) != *(a1 + 40))
  {
    v2 = DALoggingwithCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      v4 = "unreachable";
      if (*(a1 + 40))
      {
        v4 = "reachable";
      }

      *buf = 138412546;
      v11 = v3;
      v12 = 2080;
      v13 = v4;
      _os_log_impl(&dword_1B0389000, v2, OS_LOG_TYPE_INFO, "%@: Network became %s", buf, 0x16u);
    }

    v5 = *(a1 + 40);
    *(*(a1 + 32) + 264) = v5;
    if (v5 == 1)
    {
      v6 = [MEMORY[0x1E699B978] globalAsyncScheduler];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __38__DAMailAccount__reachabilityChanged___block_invoke_203;
      v9[3] = &unk_1E7AA25C0;
      v9[4] = *(a1 + 32);
      v7 = [v6 afterDelay:v9 performBlock:1.0];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __38__DAMailAccount__reachabilityChanged___block_invoke_203(uint64_t a1)
{
  v1 = [*(a1 + 32) replayHandler];
  [v1 connectionEstablished];
}

- (id)signingIdentityPersistentReferenceForAddress:(id)a3
{
  v3 = [(DAMailAccount *)self accountConduit];
  v4 = [v3 signingIdentityPersistentReference];

  return v4;
}

- (void)setSigningIdentityPersistentReference:(id)a3 forAddress:(id)a4
{
  v6 = a3;
  v5 = [(DAMailAccount *)self accountConduit];
  [v5 setSigningIdentityPersistentReference:v6];
}

- (id)encryptionIdentityPersistentReferenceForAddress:(id)a3
{
  v3 = [(DAMailAccount *)self accountConduit];
  v4 = [v3 encryptionIdentityPersistentReference];

  return v4;
}

- (void)setEncryptionIdentityPersistentReference:(id)a3 forAddress:(id)a4
{
  v6 = a3;
  v5 = [(DAMailAccount *)self accountConduit];
  [v5 setEncryptionIdentityPersistentReference:v6];
}

- (BOOL)perMessageEncryptionEnabledForAddress:(id)a3
{
  [(DAMailAccount *)self mf_lock];
  cachedPerMessageEncryptionEnabled = self->_cachedPerMessageEncryptionEnabled;
  [(DAMailAccount *)self mf_unlock];
  return cachedPerMessageEncryptionEnabled;
}

- (int64_t)secureCompositionSigningPolicyForAddress:(id)a3
{
  [(DAMailAccount *)self mf_lock];
  cachedSecureMIMEShouldSign = self->_cachedSecureMIMEShouldSign;
  [(DAMailAccount *)self mf_unlock];
  return cachedSecureMIMEShouldSign;
}

- (int64_t)secureCompositionEncryptionPolicyForAddress:(id)a3
{
  [(DAMailAccount *)self mf_lock];
  cachedSecureMIMEShouldEncrypt = self->_cachedSecureMIMEShouldEncrypt;
  [(DAMailAccount *)self mf_unlock];
  return cachedSecureMIMEShouldEncrypt;
}

- (id)copyDataForRemoteEncryptionCertificatesForAddresses:(id)a3 errors:(id *)a4
{
  v6 = a3;
  v7 = MFUserAgent();
  [v7 networkActivityStarted:self];

  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__1;
  v16 = __Block_byref_object_dispose__1;
  v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __76__DAMailAccount_copyDataForRemoteEncryptionCertificatesForAddresses_errors___block_invoke;
  v11[3] = &unk_1E7AA2610;
  v11[4] = self;
  v11[5] = &v18;
  v11[6] = &v12;
  [v6 ef_enumerateObjectsInBatchesOfSize:80 block:v11];
  v8 = MFUserAgent();
  [v8 networkActivityEnded:self];

  if (a4 && [v13[5] count])
  {
    *a4 = v13[5];
  }

  v9 = v19[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v9;
}

void __76__DAMailAccount_copyDataForRemoteEncryptionCertificatesForAddresses_errors___block_invoke(uint64_t a1, void *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v29 = a2;
  v36 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v29;
  v2 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v2)
  {
    v3 = *v42;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v42 != v3)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v41 + 1) + 8 * i);
        v6 = [objc_alloc(MEMORY[0x1E699B240]) initWithString:v5];
        v7 = [v6 simpleAddress];

        if (v7)
        {
          [v36 setObject:v7 forKeyedSubscript:v5];
        }
      }

      v2 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v2);
  }

  v8 = objc_alloc(MEMORY[0x1E6999858]);
  v9 = [v36 allValues];
  v30 = [v8 initWithEmailAddresses:v9];

  v31 = objc_alloc_init(_MFDAResolveRecipientsConsumer);
  v10 = [*(a1 + 32) accountConduit];
  [v10 performResolveRecipientsRequest:v30 consumer:v31];

  v11 = [(_MFDAResolveRecipientsConsumer *)v31 waitForResolvedRecipients];
  if (v11)
  {
    v35 = v11;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v32 = obj;
    v12 = 0;
    v13 = [v32 countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (!v13)
    {
      goto LABEL_30;
    }

    v14 = *v38;
    while (1)
    {
      v15 = 0;
      do
      {
        if (*v38 != v14)
        {
          objc_enumerationMutation(v32);
        }

        v16 = *(*(&v37 + 1) + 8 * v15);
        v17 = [v36 objectForKeyedSubscript:v16];
        v18 = [v35 objectForKey:v17];
        v19 = v18;
        if (!v18)
        {
          v25 = MEMORY[0x1E696AEC0];
          v22 = MFLookupLocalizedString(@"SMIME_MISSING_REMOTE_ENCRYPTION_CERT_MESSAGE", @"An encryption certificate for “%@” could not be found on the server. Without a certificate, you can’t encrypt messages sent to this address.", @"Delayed");
          v23 = [v25 stringWithFormat:v22, v16];
          v24 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v23];
LABEL_22:
          v26 = v12;
          v12 = v24;
LABEL_23:

          goto LABEL_24;
        }

        v20 = [v18 status];
        if (v20 == 2)
        {
          v22 = [v19 resolvedEmailToX509Certs];
          v23 = [v22 allValues];
          v26 = [v23 ef_flatten];
          [*(*(*(a1 + 40) + 8) + 40) setObject:v26 forKeyedSubscript:v16];
          goto LABEL_23;
        }

        if (v20 == 12 || v20 == 66)
        {
          v21 = MEMORY[0x1E696AEC0];
          v22 = MFLookupLocalizedString(@"SMIME_MISSING_REMOTE_ENCRYPTION_CERT_MESSAGE", @"An encryption certificate for “%@” could not be found on the server. Without a certificate, you can’t encrypt messages sent to this address.", @"Delayed");
          v23 = [v21 stringWithFormat:v22, v16, v29];
          v24 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1035 localizedDescription:v23];
          goto LABEL_22;
        }

LABEL_24:
        if (v12)
        {
          [*(*(*(a1 + 48) + 8) + 40) setObject:v12 forKeyedSubscript:v16];
        }

        ++v15;
      }

      while (v13 != v15);
      v27 = [v32 countByEnumeratingWithState:&v37 objects:v45 count:16];
      v13 = v27;
      if (!v27)
      {
LABEL_30:

        v11 = v35;
        break;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)fetchLimits
{
  v2 = +[MFNetworkController sharedInstance];
  v3 = [v2 isFatPipe];
  v4 = +[MFPowerController sharedInstance];
  v5 = [v4 isPluggedIn];

  if (v3 & v5)
  {
    v6 = 209715200;
  }

  else if ([v2 isFatPipe] & 1) != 0 || (objc_msgSend(v2, "is4GConnection"))
  {
    v6 = 0x800000;
  }

  else if ([v2 is3GConnection])
  {
    v6 = 0x80000;
  }

  else
  {
    v6 = 0x20000;
  }

  v7 = objc_alloc_init(MFFetchLimits);
  [(MFFetchLimits *)v7 setFetchMaxBytes:v6];

  return v7;
}

- (id)unsupportedHandoffTypes
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = *MEMORY[0x1E69ADCA8];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

- (id)replayAction:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 mailboxURL];
    v6 = [v5 absoluteString];
    v7 = [(MailAccount *)self mailboxUidForURL:v6];

    v8 = [(MailAccount *)self storeForMailboxUid:v7];
    v9 = [(ECLocalActionReplayer *)[MFDATransferActionReplayer alloc] initWithAction:v4];
    [(ECLocalActionReplayer *)v9 setDelegate:self];
    v10 = [(MFDATransferActionReplayer *)v9 replayActionUsingStore:v8];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_13;
    }

    v7 = v4;
    v11 = [v7 mailboxURL];
    v12 = [v11 absoluteString];
    v8 = [(MailAccount *)self mailboxUidForURL:v12];

    v9 = [(MailAccount *)self storeForMailboxUid:v8];
    v13 = [(DAMailAccount *)self _remoteIDsForFlagChangeAction:v7];
    v21 = -86;
    v14 = [v7 flagChange];
    v20 = 0;
    v15 = [(MFDATransferActionReplayer *)v9 replayFlagChange:v14 forRemoteIDs:v13 error:&v20 completed:&v21];
    v16 = v20;

    if (v21)
    {
      v17 = objc_alloc(MEMORY[0x1E699B2D8]);
      if (v15)
      {
        v18 = 0;
      }

      else
      {
        v18 = v16;
      }

      v10 = [v17 initWithError:v18];
    }

    else
    {
      v10 = 0;
    }
  }

LABEL_13:

  return v10;
}

- (id)_remoteIDsForFlagChangeAction:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 remoteIDs];
  v5 = [v4 mutableCopy];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v3 messages];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 remoteID];

        if (v11)
        {
          v12 = [v10 remoteID];
          [v5 addObject:v12];
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)messageDataForMessage:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"DAMailAccount.m" lineNumber:1808 description:{@"Invalid parameter not satisfying: %@", @"[message isKindOfClass:[MFMailMessage class]]"}];
  }

  v6 = [v5 messageDataIsComplete:0 downloadIfNecessary:0];

  return v6;
}

- (BOOL)moveSupportedFromMailboxURL:(id)a3 toURL:(id)a4
{
  v5 = a4;
  v6 = [MailAccount accountWithURL:a3];
  v7 = [MailAccount accountWithURL:v5];
  v8 = v6 == v7;

  return v8;
}

@end