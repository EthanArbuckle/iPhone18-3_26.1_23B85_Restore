@interface CalCalendarMigrationExchangePrincipal
- (BOOL)addressIsAccountOwner:(id)a3;
- (BOOL)addressURLIsAccountOwner:(id)a3;
- (CalCalendarMigrationExchangePrincipal)initWithUid:(id)a3 mailbox:(id)a4;
- (id)dictionaryForAccountProperties;
@end

@implementation CalCalendarMigrationExchangePrincipal

- (CalCalendarMigrationExchangePrincipal)initWithUid:(id)a3 mailbox:(id)a4
{
  if (self)
  {
    v6 = a4;
    v7 = [a3 copy];
    uid = self->_uid;
    self->_uid = v7;

    v9 = [v6 copy];
    mailbox = self->_mailbox;
    self->_mailbox = v9;
  }

  return self;
}

- (id)dictionaryForAccountProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  v4 = [(CalCalendarMigrationExchangePrincipal *)self mailbox];
  [v3 setObject:v4 forKeyedSubscript:*MEMORY[0x277CF7948]];

  v5 = [(CalCalendarMigrationExchangePrincipal *)self name];
  [v3 setObject:v5 forKeyedSubscript:*MEMORY[0x277CF7950]];

  v6 = [(CalCalendarMigrationExchangePrincipal *)self title];
  [v3 setObject:v6 forKeyedSubscript:*MEMORY[0x277CF7958]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationExchangePrincipal isDelegate](self, "isDelegate")}];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CF7940]];

  v8 = [v3 copy];

  return v8;
}

- (BOOL)addressIsAccountOwner:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  v4 = [a3 stringRemovingMailto];
  v5 = [(CalCalendarMigrationExchangePrincipal *)self mailbox];
  v6 = [v5 stringRemovingMailto];
  v7 = [v4 isEqualToString:v6];

  return v7;
}

- (BOOL)addressURLIsAccountOwner:(id)a3
{
  v4 = [a3 absoluteString];
  LOBYTE(self) = [(CalCalendarMigrationExchangePrincipal *)self addressIsAccountOwner:v4];

  return self;
}

@end