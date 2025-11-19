@interface CalCalendarMigrationCalDAVPrincipal
- (BOOL)_anyCalendarUserAddressIsEquivalentToURL:(id)a3;
- (BOOL)addressIsAccountOwner:(id)a3;
- (BOOL)addressURLIsAccountOwner:(id)a3;
- (CalCalendarMigrationCalDAVPrincipal)initWithUid:(id)a3;
- (NSString)principalPath;
- (id)_absoluteURLStringWithBaseComponents:(id)a3 andPath:(id)a4;
- (id)_packedPreferredCalendarUserAddresses;
- (id)dictionaryForAccountProperties;
- (void)dictionaryForAccountProperties;
@end

@implementation CalCalendarMigrationCalDAVPrincipal

- (CalCalendarMigrationCalDAVPrincipal)initWithUid:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CalCalendarMigrationCalDAVPrincipal;
  v5 = [(CalCalendarMigrationCalDAVPrincipal *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    uid = v5->_uid;
    v5->_uid = v6;
  }

  return v5;
}

- (id)dictionaryForAccountProperties
{
  v3 = [(CalCalendarMigrationCalDAVPrincipal *)self principalURL];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEB38] dictionary];
    v5 = [(CalCalendarMigrationCalDAVPrincipal *)self uid];
    [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277CF7A18]];

    v6 = MEMORY[0x277CCACE0];
    v7 = [(CalCalendarMigrationCalDAVPrincipal *)self principalURL];
    v8 = [v6 componentsWithURL:v7 resolvingAgainstBaseURL:0];

    v29 = [v8 path];
    [v8 setQuery:0];
    [v8 setFragment:0];
    v9 = [(CalCalendarMigrationCalDAVPrincipal *)self login];
    [v8 setUser:v9];

    [v4 setObject:v29 forKeyedSubscript:*MEMORY[0x277CF7A10]];
    v10 = [(CalCalendarMigrationCalDAVPrincipal *)self homePath];
    v11 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:v10];

    [v4 setObject:v11 forKeyedSubscript:*MEMORY[0x277CF7980]];
    v12 = [(CalCalendarMigrationCalDAVPrincipal *)self defaultCalendarPath];
    v13 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:v12];

    [v4 setObject:v13 forKeyedSubscript:*MEMORY[0x277CF79C8]];
    v14 = [(CalCalendarMigrationCalDAVPrincipal *)self inboxPath];
    v15 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:v14];

    [v4 setObject:v15 forKeyedSubscript:*MEMORY[0x277CF7998]];
    v16 = [(CalCalendarMigrationCalDAVPrincipal *)self outboxPath];
    v17 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:v16];

    [v4 setObject:v17 forKeyedSubscript:*MEMORY[0x277CF79B0]];
    v18 = [(CalCalendarMigrationCalDAVPrincipal *)self notificationCollectionPath];
    v19 = [(CalCalendarMigrationCalDAVPrincipal *)self _absoluteURLStringWithBaseComponents:v8 andPath:v18];

    [v4 setObject:v19 forKeyedSubscript:*MEMORY[0x277CF79F8]];
    v20 = [(CalCalendarMigrationCalDAVPrincipal *)self fullName];
    [v4 setObject:v20 forKeyedSubscript:*MEMORY[0x277CF79D0]];

    v21 = [(CalCalendarMigrationCalDAVPrincipal *)self homePushKey];
    [v4 setObject:v21 forKeyedSubscript:*MEMORY[0x277CF79B8]];

    v22 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationCalDAVPrincipal isWritable](self, "isWritable")}];
    [v4 setObject:v22 forKeyedSubscript:*MEMORY[0x277CF79F0]];

    v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationCalDAVPrincipal isDelegate](self, "isDelegate")}];
    [v4 setObject:v23 forKeyedSubscript:*MEMORY[0x277CF79D8]];

    v24 = [(CalCalendarMigrationCalDAVPrincipal *)self _packedPreferredCalendarUserAddresses];
    [v4 setObject:v24 forKeyedSubscript:*MEMORY[0x277CF7A00]];

    v25 = [(CalCalendarMigrationCalDAVPrincipal *)self pushTransports];
    [v4 setObject:v25 forKeyedSubscript:*MEMORY[0x277CF7A20]];

    v26 = [v4 copy];
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
  v3 = [(CalCalendarMigrationCalDAVPrincipal *)self principalURL];
  v4 = [v2 componentsWithURL:v3 resolvingAgainstBaseURL:0];

  v5 = [v4 path];

  return v5;
}

- (id)_absoluteURLStringWithBaseComponents:(id)a3 andPath:(id)a4
{
  v4 = a4;
  if (a4)
  {
    v5 = a3;
    [v5 setPath:v4];
    v6 = [v5 URL];

    v4 = [v6 absoluteString];
  }

  return v4;
}

- (id)_packedPreferredCalendarUserAddresses
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];

  if (v3)
  {
    v4 = MEMORY[0x277CBEB18];
    v5 = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];
    v3 = [v4 arrayWithCapacity:{objc_msgSend(v5, "count")}];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x277CF6FF0] packCalDAVUserAdress:*(*(&v14 + 1) + 8 * i)];
          if (v11)
          {
            [v3 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)addressIsAccountOwner:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] URLWithString:v4];
    if (v5 && [(CalCalendarMigrationCalDAVPrincipal *)self _anyCalendarUserAddressIsEquivalentToURL:v5])
    {
      v6 = 1;
    }

    else
    {
      v7 = MEMORY[0x277CBEBC0];
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"mailto:%@", v4];
      v9 = [v7 URLWithString:v8];

      if (v9 && [(CalCalendarMigrationCalDAVPrincipal *)self _anyCalendarUserAddressIsEquivalentToURL:v9])
      {
        v6 = 1;
      }

      else
      {
        v10 = MEMORY[0x277CBEBC0];
        v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"tel:%@", v4];
        v12 = [v10 URLWithString:v11];

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

- (BOOL)addressURLIsAccountOwner:(id)a3
{
  v4 = [a3 absoluteString];
  LOBYTE(self) = [(CalCalendarMigrationCalDAVPrincipal *)self addressIsAccountOwner:v4];

  return self;
}

- (BOOL)_anyCalendarUserAddressIsEquivalentToURL:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(CalCalendarMigrationCalDAVPrincipal *)self preferredCalendarUserAddresses];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v11 + 1) + 8 * i) isSameAsUserAddressURL:v4])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
  v3 = [a1 uid];
  v5 = 138543362;
  v6 = v3;
  _os_log_error_impl(&dword_2428EA000, a2, OS_LOG_TYPE_ERROR, "Cannot create dictionary for CalDAVPrincipal %{public}@ because it has no principal URL", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end