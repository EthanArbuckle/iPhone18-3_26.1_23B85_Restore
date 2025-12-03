@interface HDIDSIncomingResponse
- (NSString)description;
- (id)nanoSyncDescription;
@end

@implementation HDIDSIncomingResponse

- (id)nanoSyncDescription
{
  pbResponse = [(HDIDSIncomingResponse *)self pbResponse];
  v4 = HDNanoSyncDescriptionSafe(pbResponse);

  LODWORD(pbResponse) = [(HDIDSIncomingResponse *)self messageID];
  idsIdentifier = [(HDIDSIncomingResponse *)self idsIdentifier];
  v6 = FormattedMessageDescription(pbResponse, 1, 0, idsIdentifier, v4);

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