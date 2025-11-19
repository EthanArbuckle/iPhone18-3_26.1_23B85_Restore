@interface _ICContactRecord
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToContactRecord:(id)a3;
- (_ICContactRecord)initWithIdentifier:(id)a3 contact:(id)a4 changeType:(unsigned __int8)a5 source:(unsigned __int8)a6;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation _ICContactRecord

- (_ICContactRecord)initWithIdentifier:(id)a3 contact:(id)a4 changeType:(unsigned __int8)a5 source:(unsigned __int8)a6
{
  v11 = a3;
  v12 = a4;
  v16.receiver = self;
  v16.super_class = _ICContactRecord;
  v13 = [(_ICContactRecord *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    objc_storeStrong(&v14->_contact, a4);
    v14->_changeType = a5;
    v14->_source = a6;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_ICContactRecord alloc];
  identifier = self->_identifier;
  contact = self->_contact;
  changeType = self->_changeType;
  source = self->_source;

  return [(_ICContactRecord *)v4 initWithIdentifier:identifier contact:contact changeType:changeType source:source];
}

- (BOOL)isEqualToContactRecord:(id)a3
{
  v4 = a3;
  v5 = [(NSString *)self->_identifier isEqualToString:v4[2]]&& [(_ICContact *)self->_contact isEqual:v4[3]]&& self->_changeType == *(v4 + 8);

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(_ICContactRecord *)self isEqualToContactRecord:v5];
  }

  return v6;
}

@end