@interface CalCalendarMigrationExchangePrincipal
- (BOOL)addressIsAccountOwner:(id)owner;
- (BOOL)addressURLIsAccountOwner:(id)owner;
- (CalCalendarMigrationExchangePrincipal)initWithUid:(id)uid mailbox:(id)mailbox;
- (id)dictionaryForAccountProperties;
@end

@implementation CalCalendarMigrationExchangePrincipal

- (CalCalendarMigrationExchangePrincipal)initWithUid:(id)uid mailbox:(id)mailbox
{
  if (self)
  {
    mailboxCopy = mailbox;
    v7 = [uid copy];
    uid = self->_uid;
    self->_uid = v7;

    v9 = [mailboxCopy copy];
    mailbox = self->_mailbox;
    self->_mailbox = v9;
  }

  return self;
}

- (id)dictionaryForAccountProperties
{
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:3];
  mailbox = [(CalCalendarMigrationExchangePrincipal *)self mailbox];
  [v3 setObject:mailbox forKeyedSubscript:*MEMORY[0x277CF7948]];

  name = [(CalCalendarMigrationExchangePrincipal *)self name];
  [v3 setObject:name forKeyedSubscript:*MEMORY[0x277CF7950]];

  title = [(CalCalendarMigrationExchangePrincipal *)self title];
  [v3 setObject:title forKeyedSubscript:*MEMORY[0x277CF7958]];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CalCalendarMigrationExchangePrincipal isDelegate](self, "isDelegate")}];
  [v3 setObject:v7 forKeyedSubscript:*MEMORY[0x277CF7940]];

  v8 = [v3 copy];

  return v8;
}

- (BOOL)addressIsAccountOwner:(id)owner
{
  if (!owner)
  {
    return 0;
  }

  stringRemovingMailto = [owner stringRemovingMailto];
  mailbox = [(CalCalendarMigrationExchangePrincipal *)self mailbox];
  stringRemovingMailto2 = [mailbox stringRemovingMailto];
  v7 = [stringRemovingMailto isEqualToString:stringRemovingMailto2];

  return v7;
}

- (BOOL)addressURLIsAccountOwner:(id)owner
{
  absoluteString = [owner absoluteString];
  LOBYTE(self) = [(CalCalendarMigrationExchangePrincipal *)self addressIsAccountOwner:absoluteString];

  return self;
}

@end