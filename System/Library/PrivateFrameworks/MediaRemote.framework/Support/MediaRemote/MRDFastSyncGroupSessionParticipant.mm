@interface MRDFastSyncGroupSessionParticipant
- (BOOL)isEqual:(id)equal;
- (MRDFastSyncGroupSessionParticipant)initWithIdentifier:(id)identifier identity:(id)identity connected:(BOOL)connected guest:(BOOL)guest hidden:(BOOL)hidden;
- (NSString)description;
@end

@implementation MRDFastSyncGroupSessionParticipant

- (MRDFastSyncGroupSessionParticipant)initWithIdentifier:(id)identifier identity:(id)identity connected:(BOOL)connected guest:(BOOL)guest hidden:(BOOL)hidden
{
  identifierCopy = identifier;
  identityCopy = identity;
  v18.receiver = self;
  v18.super_class = MRDFastSyncGroupSessionParticipant;
  v15 = [(MRDFastSyncGroupSessionParticipant *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, identifier);
    objc_storeStrong(&v16->_identity, identity);
    v16->_connected = connected;
    v16->_guest = guest;
    v16->_hidden = hidden;
  }

  return v16;
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  identifier = [(MRDFastSyncGroupSessionParticipant *)self identifier];
  identity = [(MRDFastSyncGroupSessionParticipant *)self identity];
  v7 = [NSNumber numberWithBool:[(MRDFastSyncGroupSessionParticipant *)self connected]];
  stringValue = [v7 stringValue];
  v9 = [NSNumber numberWithBool:[(MRDFastSyncGroupSessionParticipant *)self guest]];
  stringValue2 = [v9 stringValue];
  v11 = [NSNumber numberWithBool:[(MRDFastSyncGroupSessionParticipant *)self hidden]];
  stringValue3 = [v11 stringValue];
  v13 = [v3 initWithFormat:@"<%@: identifier=%@, identity=%@, connected=%@, guest=%@, hidden=%@>", v4, identifier, identity, stringValue, stringValue2, stringValue3];

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = equalCopy->_identifier;
      v7 = identifier;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSString *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

@end