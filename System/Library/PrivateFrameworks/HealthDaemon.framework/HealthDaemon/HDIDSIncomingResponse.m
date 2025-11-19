@interface HDIDSIncomingResponse
- (NSString)description;
- (id)nanoSyncDescription;
@end

@implementation HDIDSIncomingResponse

- (id)nanoSyncDescription
{
  v3 = [(HDIDSIncomingResponse *)self pbResponse];
  v4 = HDNanoSyncDescriptionSafe(v3);

  LODWORD(v3) = [(HDIDSIncomingResponse *)self messageID];
  v5 = [(HDIDSIncomingResponse *)self idsIdentifier];
  v6 = FormattedMessageDescription(v3, 1, 0, v5, v4);

  return v6;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> messageID: %hu", v5, self, self->_messageID];

  return v6;
}

@end