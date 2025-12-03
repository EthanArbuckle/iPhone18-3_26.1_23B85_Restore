@interface _ICContactRecord
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToContactRecord:(id)record;
- (_ICContactRecord)initWithIdentifier:(id)identifier contact:(id)contact changeType:(unsigned __int8)type source:(unsigned __int8)source;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation _ICContactRecord

- (_ICContactRecord)initWithIdentifier:(id)identifier contact:(id)contact changeType:(unsigned __int8)type source:(unsigned __int8)source
{
  identifierCopy = identifier;
  contactCopy = contact;
  v16.receiver = self;
  v16.super_class = _ICContactRecord;
  v13 = [(_ICContactRecord *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    objc_storeStrong(&v14->_contact, contact);
    v14->_changeType = type;
    v14->_source = source;
  }

  return v14;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(_ICContact *)self->_contact hash];
  v5 = self->_changeType - (v4 - v3 + 32 * v3) + 32 * (v4 - v3 + 32 * v3);
  return self->_source - v5 + 32 * v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_ICContactRecord alloc];
  identifier = self->_identifier;
  contact = self->_contact;
  changeType = self->_changeType;
  source = self->_source;

  return [(_ICContactRecord *)v4 initWithIdentifier:identifier contact:contact changeType:changeType source:source];
}

- (BOOL)isEqualToContactRecord:(id)record
{
  recordCopy = record;
  v5 = [(NSString *)self->_identifier isEqualToString:recordCopy[2]]&& [(_ICContact *)self->_contact isEqual:recordCopy[3]]&& self->_changeType == *(recordCopy + 8);

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICContactRecord *)self isEqualToContactRecord:v5];
  }

  return v6;
}

@end