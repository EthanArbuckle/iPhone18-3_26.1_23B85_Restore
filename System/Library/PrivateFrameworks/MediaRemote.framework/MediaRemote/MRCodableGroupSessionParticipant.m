@interface MRCodableGroupSessionParticipant
- (BOOL)isEqual:(id)a3;
- (MRCodableGroupSessionParticipant)initWithCoder:(id)a3;
- (MRCodableGroupSessionParticipant)initWithIdentifier:(id)a3 identity:(id)a4 connected:(BOOL)a5 guest:(BOOL)a6 hidden:(BOOL)a7;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRCodableGroupSessionParticipant

- (MRCodableGroupSessionParticipant)initWithIdentifier:(id)a3 identity:(id)a4 connected:(BOOL)a5 guest:(BOOL)a6 hidden:(BOOL)a7
{
  v13 = a3;
  v14 = a4;
  v18.receiver = self;
  v18.super_class = MRCodableGroupSessionParticipant;
  v15 = [(MRCodableGroupSessionParticipant *)&v18 init];
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
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = objc_opt_class();
  v16 = [(MRCodableGroupSessionParticipant *)self identifier];
  v14 = [(MRCodableGroupSessionParticipant *)self identity];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isLocal](self, "isLocal")}];
  v4 = [v18 stringValue];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isPending](self, "isPending")}];
  v5 = [v15 stringValue];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isConnected](self, "isConnected")}];
  v7 = [v6 stringValue];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isGuest](self, "isGuest")}];
  v9 = [v8 stringValue];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isHidden](self, "isHidden")}];
  v11 = [v10 stringValue];
  v12 = [v3 initWithFormat:@"<%@: identifier=%@, identity=%@, local=%@, pending=%@, connected=%@, guest=%@, hidden=%@>", v17, v16, v14, v4, v5, v7, v9, v11];

  return v12;
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_identity forKey:@"identity"];
  [v5 encodeBool:self->_host forKey:@"host"];
  [v5 encodeBool:self->_local forKey:@"local"];
  [v5 encodeBool:self->_pending forKey:@"pending"];
  [v5 encodeBool:self->_connected forKey:@"connected"];
  [v5 encodeBool:self->_guest forKey:@"guest"];
  [v5 encodeBool:self->_hidden forKey:@"hidden"];
}

- (MRCodableGroupSessionParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = MRCodableGroupSessionParticipant;
  v5 = [(MRCodableGroupSessionParticipant *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v8;

    v5->_host = [v4 decodeBoolForKey:@"host"];
    v5->_local = [v4 decodeBoolForKey:@"local"];
    v5->_pending = [v4 decodeBoolForKey:@"pending"];
    v5->_connected = [v4 decodeBoolForKey:@"connected"];
    v5->_guest = [v4 decodeBoolForKey:@"guest"];
    v5->_hidden = [v4 decodeBoolForKey:@"hidden"];
  }

  return v5;
}

@end