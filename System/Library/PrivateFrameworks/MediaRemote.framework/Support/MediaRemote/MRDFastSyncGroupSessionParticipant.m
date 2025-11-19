@interface MRDFastSyncGroupSessionParticipant
- (BOOL)isEqual:(id)a3;
- (MRDFastSyncGroupSessionParticipant)initWithIdentifier:(id)a3 identity:(id)a4 connected:(BOOL)a5 guest:(BOOL)a6 hidden:(BOOL)a7;
- (NSString)description;
@end

@implementation MRDFastSyncGroupSessionParticipant

- (MRDFastSyncGroupSessionParticipant)initWithIdentifier:(id)a3 identity:(id)a4 connected:(BOOL)a5 guest:(BOOL)a6 hidden:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = MRDFastSyncGroupSessionParticipant;
  v15 = [(MRDFastSyncGroupSessionParticipant *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_identifier, a3);
    objc_storeStrong(&v16->_identity, a4);
    v16->_connected = a5;
    v16->_guest = a6;
    v16->_hidden = a7;
  }

  return v16;
}

- (NSString)description
{
  v3 = [NSString alloc];
  v4 = objc_opt_class();
  v5 = [(MRDFastSyncGroupSessionParticipant *)self identifier];
  v6 = [(MRDFastSyncGroupSessionParticipant *)self identity];
  v7 = [NSNumber numberWithBool:[(MRDFastSyncGroupSessionParticipant *)self connected]];
  v8 = [v7 stringValue];
  v9 = [NSNumber numberWithBool:[(MRDFastSyncGroupSessionParticipant *)self guest]];
  v10 = [v9 stringValue];
  v11 = [NSNumber numberWithBool:[(MRDFastSyncGroupSessionParticipant *)self hidden]];
  v12 = [v11 stringValue];
  v13 = [v3 initWithFormat:@"<%@: identifier=%@, identity=%@, connected=%@, guest=%@, hidden=%@>", v4, v5, v6, v8, v10, v12];

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      identifier = self->_identifier;
      v6 = v4->_identifier;
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