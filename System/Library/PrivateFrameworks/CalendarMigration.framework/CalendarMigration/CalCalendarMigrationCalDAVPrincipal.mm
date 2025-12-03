@interface CalCalendarMigrationCalDAVPrincipal
- (BOOL)_anyCalendarUserAddressIsEquivalentToURL:(id)l;
- (BOOL)addressIsAccountOwner:(id)owner;
- (BOOL)addressURLIsAccountOwner:(id)owner;
- (CalCalendarMigrationCalDAVPrincipal)initWithUid:(id)uid;
- (NSString)principalPath;
- (id)_absoluteURLStringWithBaseComponents:(id)components andPath:(id)path;
- (id)_packedPreferredCalendarUserAddresses;
- (id)dictionaryForAccountProperties;
- (void)dictionaryForAccountProperties;
@end

@implementation CalCalendarMigrationCalDAVPrincipal

- (CalCalendarMigrationCalDAVPrincipal)initWithUid:(id)uid
{
  uidCopy = uid;
  v9.receiver = self;
  v9.super_class = CalCalendarMigrationCalDAVPrincipal;
  v5 = [(CalCalendarMigrationCalDAVPrincipal *)&v9 init];
  if (v5)
  {
    v6 = [uidCopy copy];
    uid = v5->_uid;
    v5->_uid = v6;
  }

  return v5;
}

- (id)dictionaryForAccountProperties
{
  principalURL = [(CalCalendarMigrationCalDAVPrincipal *)self principalURL];

  if (principalURL)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v5 = [(CalCalendarMigrationCalDAVPrincipal *)self uid];
    [dictionary setObject:v5 forKeyedSubscript:*MEMORY[0x277CF7A18]];

    v6 = MEMORY[0x277CCACE0];
    principalURL2 = [(CalCalendarMigrationCalDAVPrincipal *)self principalURL];
    v8 = [v6 componentsWithURL:principalURL2 resolvingAgainstBaseURL:0];

    path = [v8 path];
    [v8 setQuery:0];
    [v8 setFragment:0];
    login = [(CalCalendarMigrationCalDAVPrincipal *)self login];
    [v8 setUser:login];

    [dictionary setObject:path forKeyedSubscript:*MEMORY[0x277CF7A10]];
    homePath = [(CalCalendarMigrationCalDAVPrincipal *)self homePath];
    v11 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:homePath];

    [dictionary setObject:v11 forKeyedSubscript:*MEMORY[0x277CF7980]];
    defaultCalendarPath = [(CalCalendarMigrationCalDAVPrincipal *)self defaultCalendarPath];
    v13 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:defaultCalendarPath];

    [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x277CF79C8]];
    inboxPath = [(CalCalendarMigrationCalDAVPrincipal *)self inboxPath];
    v15 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:inboxPath];

    [dictionary setObject:v15 forKeyedSubscript:*MEMORY[0x277CF7998]];
    outboxPath = [(CalCalendarMigrationCalDAVPrincipal *)self outboxPath];
    v17 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:outboxPath];

    [dictionary setObject:v17 forKeyedSubscript:*MEMORY[0x277CF79B0]];
    notificationCollectionPath = [(CalCalendarMigrationCalDAVPrincipal *)self notificationCollectionPath];
    v19 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:notificationCollectionPath];

    [dictionary setObject:v19 forKeyedSubscript:*MEMORY[0x277CF79F8]];
    fullName = [(CalCalendarMigrationCalDAVPrincipal *)self fullName];
    [dictionary setObject:fullName forKeyedSubscript:*MEMORY[0x277CF79D0]];

    homePushKey = [(CalCalendarMigrationCalDAVPrincipal *)self homePushKey];
    [dictionary setObject:homePushKey forKeyedSubscript:*MEMORY[0x277CF79B8]];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationCalDAVPrincipal isWritable](self, "isWritable")}];
    [dictionary setObject:v22 forKeyedSubscript:*MEMORY[0x277CF79F0]];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationCalDAVPrincipal isDelegate](self, "isDelegate")}];
    [dictionary setObject:v23 forKeyedSubscript:*MEMORY[0x277CF79D8]];

    _packedPreferredCalendarUserAddresses = [(CalCalendarMigrationCalDAVPrincipal *)self _packedPreferredCalendarUserAddresses];
    [dictionary setObject:_packedPreferredCalendarUserAddresses forKeyedSubscript:*MEMORY[0x277CF7A00]];

    pushTransports = [(CalCalendarMigrationCalDAVPrincipal *)self pushTransports];
    [dictionary setObject:pushTransports forKeyedSubscript:*MEMORY[0x277CF7A20]];

    v26 = [dictionary copy];
  }

  else
  {
    v27 = +[CalMigrationLog calendar];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [(CalCalendarMigrationCalDAVPrincipal *)self dictionaryForAccountProperties];
    }

    v26 = 0;
  }

  return v26;
}

- (NSString)principalPath
{
  v2 = MEMORY[0x277CCACE0];
  principalURL = [(CalCalendarMigrationCalDAVPrincipal *)self principalURL];
  v4 = [v2 componentsWithURL:principalURL resolvingAgainstBaseURL:0];

  path = [v4 path];

  return path;
}

- (id)_absoluteURLStringWithBaseComponents:(id)components andPath:(id)path
{
  pathCopy = path;
  if (path)
  {
    componentsCopy = components;
    [componentsCopy setPath:pathCopy];
    v6 = [componentsCopy URL];

    pathCopy = [v6 absoluteString];
  }

  return pathCopy;
}

- (id)_packedPreferredCalendarUserAddresses
{
  v19 = *MEMORY[0x277D85DE8];
  preferredCalendarUserAddresses = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];

  if (preferredCalendarUserAddresses)
  {
    v4 = MEMORY[0x277CBEB18];
    preferredCalendarUserAddresses2 = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];
    preferredCalendarUserAddresses = [v4 arrayWithCapacity:{objc_msgSend(preferredCalendarUserAddresses2, "count")}];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    preferredCalendarUserAddresses3 = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];
    v7 = [preferredCalendarUserAddresses3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(preferredCalendarUserAddresses3);
          }

          v11 = [MEMORY[0x277CF6FF0] packCalDAVUserAdress:*(*(&v14 + 1) + 8 * i)];
          if (v11)
          {
            [preferredCalendarUserAddresses addObject:v11];
          }
        }

        v8 = [preferredCalendarUserAddresses3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return preferredCalendarUserAddresses;
}

- (BOOL)addressIsAccountOwner:(id)owner
{
  ownerCopy = owner;
  if (ownerCopy)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:ownerCopy];
    if (v5 && [(CalCalendarMigrationCalDAVPrincipal *)self _anyCalendarUserAddressIsEquivalentToURL:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = MEMORY[0x277CBEBC0];
      ownerCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", ownerCopy];
      v9 = [v7 URLWithString:ownerCopy];

      if (v9 && [(CalCalendarMigrationCalDAVPrincipal *)self _anyCalendarUserAddressIsEquivalentToURL:v9])
      {
        v6 = 1;
      }

      else
      {
        v10 = MEMORY[0x277CBEBC0];
        ownerCopy2 = [MEMORY[0x277CCACA8] stringWithFormat:@"tel:%@", ownerCopy];
        v12 = [v10 URLWithString:ownerCopy2];

        v6 = v12 && [(CalCalendarMigrationCalDAVPrincipal *)self _anyCalendarUserAddressIsEquivalentToURL:v12];
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)addressURLIsAccountOwner:(id)owner
{
  absoluteString = [owner absoluteString];
  LOBYTE(self) = [(CalCalendarMigrationCalDAVPrincipal *)self addressIsAccountOwner:absoluteString];

  return self;
}

- (BOOL)_anyCalendarUserAddressIsEquivalentToURL:(id)l
{
  v16 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  preferredCalendarUserAddresses = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v6 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(preferredCalendarUserAddresses);
        }

        if ([*(*(&v11 + 1) + 8 * i) isSameAsUserAddressURL:lCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [preferredCalendarUserAddresses countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dictionaryForAccountProperties
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [self uid];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_2428EA000, a2, OS_LOG_TYPE_ERROR, "Cannot create dictionary for CalDAVPrincipal %{public}@ because it has no principal URL", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end