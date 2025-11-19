@interface MFBridgeSettingsMailboxSelection
- (id)description;
@end

@implementation MFBridgeSettingsMailboxSelection

- (id)description
{
  v3 = [NSMutableString stringWithString:@"Mailbox Selection: \n"];
  [v3 appendFormat:@"Selected mailboxes id: %@\n", self->_selectedMailboxes];
  inboxesFilterTypes = self->_inboxesFilterTypes;
  if (inboxesFilterTypes)
  {
    [v3 appendString:@"Unified mailbox selected \n"];
    inboxesFilterTypes = self->_inboxesFilterTypes;
  }

  if ((inboxesFilterTypes & 2) != 0)
  {
    [v3 appendString:@"VIP mailbox selected \n"];
    inboxesFilterTypes = self->_inboxesFilterTypes;
  }

  if ((inboxesFilterTypes & 8) != 0)
  {
    [v3 appendString:@"Unread mailbox selected \n"];
    inboxesFilterTypes = self->_inboxesFilterTypes;
  }

  if ((inboxesFilterTypes & 4) != 0)
  {
    [v3 appendString:@"Flagged mailbox selected \n"];
    inboxesFilterTypes = self->_inboxesFilterTypes;
  }

  if ((inboxesFilterTypes & 0x10) != 0)
  {
    [v3 appendString:@"ToOrCC mailbox selected \n"];
    inboxesFilterTypes = self->_inboxesFilterTypes;
  }

  if ((inboxesFilterTypes & 0x20) != 0)
  {
    [v3 appendString:@"Important Threads mailbox selected \n"];
    inboxesFilterTypes = self->_inboxesFilterTypes;
  }

  if ((inboxesFilterTypes & 0x40) != 0)
  {
    [v3 appendString:@"Today mailbox selected \n"];
  }

  return v3;
}

@end