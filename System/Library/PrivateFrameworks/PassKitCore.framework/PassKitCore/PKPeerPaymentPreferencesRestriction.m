@interface PKPeerPaymentPreferencesRestriction
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPreferencesRestriction:(id)a3;
- (PKPeerPaymentPreferencesRestriction)initWithCoder:(id)a3;
- (PKPeerPaymentPreferencesRestriction)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentPreferencesRestriction

- (PKPeerPaymentPreferencesRestriction)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentPreferencesRestriction;
  v5 = [(PKPeerPaymentPreferencesRestriction *)&v11 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 PKStringForKey:@"restrictionType"];
    v5->_sendRestrictionType = PKPeerPaymentPreferencesSendRestrictionTypeFromString(v8);

    v9 = [v4 PKStringForKey:@"receiveRestrictionType"];
    v5->_receiveRestrictionType = PKPeerPaymentPreferencesReceiveRestrictionTypeFromString(v9);
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_altDSID forKey:@"altDSID"];
  sendRestrictionType = self->_sendRestrictionType;
  if (sendRestrictionType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79E4AA0[sendRestrictionType];
  }

  [v3 setObject:v5 forKey:@"restrictionType"];
  receiveRestrictionType = self->_receiveRestrictionType;
  if (receiveRestrictionType > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E79E4AC8[receiveRestrictionType];
  }

  [v3 setObject:v7 forKey:@"receiveRestrictionType"];
  v8 = [v3 copy];

  return v8;
}

- (PKPeerPaymentPreferencesRestriction)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKPeerPaymentPreferencesRestriction;
  v5 = [(PKPeerPaymentPreferencesRestriction *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"restrictionType"];
    v5->_sendRestrictionType = [v8 integerValue];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"receiveRestrictionType"];
    v5->_receiveRestrictionType = [v9 integerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  altDSID = self->_altDSID;
  v5 = a3;
  [v5 encodeObject:altDSID forKey:@"altDSID"];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_sendRestrictionType];
  [v5 encodeObject:v6 forKey:@"restrictionType"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_receiveRestrictionType];
  [v5 encodeObject:v7 forKey:@"receiveRestrictionType"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentPreferencesRestriction allocWithZone:](PKPeerPaymentPreferencesRestriction init];
  v6 = [(NSString *)self->_altDSID copyWithZone:a3];
  altDSID = v5->_altDSID;
  v5->_altDSID = v6;

  v5->_sendRestrictionType = self->_sendRestrictionType;
  v5->_receiveRestrictionType = self->_receiveRestrictionType;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPreferencesRestriction *)self isEqualToPreferencesRestriction:v5];
  }

  return v6;
}

- (BOOL)isEqualToPreferencesRestriction:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_sendRestrictionType == v4[2] && self->_receiveRestrictionType == v4[3])
  {
    altDSID = self->_altDSID;
    v7 = v5[1];
    if (altDSID && v7)
    {
      v8 = [(NSString *)altDSID isEqual:?];
    }

    else
    {
      v8 = altDSID == v7;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_altDSID];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_sendRestrictionType - v4 + 32 * v4;
  v6 = self->_receiveRestrictionType - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  sendRestrictionType = self->_sendRestrictionType;
  if (sendRestrictionType > 4)
  {
    v5 = 0;
  }

  else
  {
    v5 = off_1E79E4AA0[sendRestrictionType];
  }

  [v3 appendFormat:@"sendRestrictionType: '%@'; ", v5];
  receiveRestrictionType = self->_receiveRestrictionType;
  if (receiveRestrictionType > 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = off_1E79E4AC8[receiveRestrictionType];
  }

  [v3 appendFormat:@"receiveRestrictionType: '%@'; ", v7];
  [v3 appendFormat:@">"];

  return v3;
}

@end