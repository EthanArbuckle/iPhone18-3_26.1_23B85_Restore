@interface MRCodableGroupSessionParticipant
- (BOOL)isEqual:(id)equal;
- (MRCodableGroupSessionParticipant)initWithCoder:(id)coder;
- (MRCodableGroupSessionParticipant)initWithIdentifier:(id)identifier identity:(id)identity connected:(BOOL)connected guest:(BOOL)guest hidden:(BOOL)hidden;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRCodableGroupSessionParticipant

- (MRCodableGroupSessionParticipant)initWithIdentifier:(id)identifier identity:(id)identity connected:(BOOL)connected guest:(BOOL)guest hidden:(BOOL)hidden
{
  identifierCopy = identifier;
  identityCopy = identity;
  v18.receiver = self;
  v18.super_class = MRCodableGroupSessionParticipant;
  v15 = [(MRCodableGroupSessionParticipant *)&v18 init];
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
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = objc_opt_class();
  identifier = [(MRCodableGroupSessionParticipant *)self identifier];
  identity = [(MRCodableGroupSessionParticipant *)self identity];
  v18 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isLocal](self, "isLocal")}];
  stringValue = [v18 stringValue];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isPending](self, "isPending")}];
  stringValue2 = [v15 stringValue];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isConnected](self, "isConnected")}];
  stringValue3 = [v6 stringValue];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isGuest](self, "isGuest")}];
  stringValue4 = [v8 stringValue];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[MRCodableGroupSessionParticipant isHidden](self, "isHidden")}];
  stringValue5 = [v10 stringValue];
  v12 = [v3 initWithFormat:@"<%@: identifier=%@, identity=%@, local=%@, pending=%@, connected=%@, guest=%@, hidden=%@>", v17, identifier, identity, stringValue, stringValue2, stringValue3, stringValue4, stringValue5];

  return v12;
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

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_identity forKey:@"identity"];
  [coderCopy encodeBool:self->_host forKey:@"host"];
  [coderCopy encodeBool:self->_local forKey:@"local"];
  [coderCopy encodeBool:self->_pending forKey:@"pending"];
  [coderCopy encodeBool:self->_connected forKey:@"connected"];
  [coderCopy encodeBool:self->_guest forKey:@"guest"];
  [coderCopy encodeBool:self->_hidden forKey:@"hidden"];
}

- (MRCodableGroupSessionParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MRCodableGroupSessionParticipant;
  v5 = [(MRCodableGroupSessionParticipant *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identity"];
    identity = v5->_identity;
    v5->_identity = v8;

    v5->_host = [coderCopy decodeBoolForKey:@"host"];
    v5->_local = [coderCopy decodeBoolForKey:@"local"];
    v5->_pending = [coderCopy decodeBoolForKey:@"pending"];
    v5->_connected = [coderCopy decodeBoolForKey:@"connected"];
    v5->_guest = [coderCopy decodeBoolForKey:@"guest"];
    v5->_hidden = [coderCopy decodeBoolForKey:@"hidden"];
  }

  return v5;
}

@end