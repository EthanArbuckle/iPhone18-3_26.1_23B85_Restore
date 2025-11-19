@interface PKPeerPaymentPreferencesNotification
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPreferencesNotification:(id)a3;
- (PKPeerPaymentPreferencesNotification)initWithCoder:(id)a3;
- (PKPeerPaymentPreferencesNotification)initWithDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPeerPaymentPreferencesNotification

- (PKPeerPaymentPreferencesNotification)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentPreferencesNotification;
  v5 = [(PKPeerPaymentPreferencesNotification *)&v10 init];
  if (v5)
  {
    v6 = [v4 PKStringForKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [v4 PKStringForKey:@"notificationType"];
    v5->_notificationType = PKPeerPaymentPreferencesNotificationTypeFromString(v8);

    v5->_value = [v4 PKBoolForKey:@"value"];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  [v3 setObject:self->_altDSID forKey:@"altDSID"];
  notificationType = self->_notificationType;
  v5 = @"unknown";
  if (notificationType)
  {
    v5 = 0;
  }

  if (notificationType == 1)
  {
    v6 = @"purchases";
  }

  else
  {
    v6 = v5;
  }

  [v3 setObject:v6 forKey:@"notificationType"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_value];
  [v3 setObject:v7 forKey:@"value"];

  v8 = [v3 copy];

  return v8;
}

- (PKPeerPaymentPreferencesNotification)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentPreferencesNotification;
  v5 = [(PKPeerPaymentPreferencesNotification *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v5->_notificationType = [v4 decodeIntegerForKey:@"notificationType"];
    v5->_value = [v4 decodeBoolForKey:@"value"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  altDSID = self->_altDSID;
  v5 = a3;
  [v5 encodeObject:altDSID forKey:@"altDSID"];
  [v5 encodeInteger:self->_notificationType forKey:@"notificationType"];
  [v5 encodeBool:self->_value forKey:@"value"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[PKPeerPaymentPreferencesNotification allocWithZone:](PKPeerPaymentPreferencesNotification init];
  v6 = [(NSString *)self->_altDSID copyWithZone:a3];
  altDSID = v5->_altDSID;
  v5->_altDSID = v6;

  v5->_notificationType = self->_notificationType;
  v5->_value = self->_value;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPreferencesNotification *)self isEqualToPreferencesNotification:v5];
  }

  return v6;
}

- (BOOL)isEqualToPreferencesNotification:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && self->_notificationType == v4[3] && self->_value == *(v4 + 8))
  {
    altDSID = self->_altDSID;
    v7 = v5[2];
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
  v5 = self->_notificationType - v4 + 32 * v4;
  v6 = self->_value - v5 + 32 * v5;

  return v6;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  notificationType = self->_notificationType;
  v5 = @"unknown";
  if (notificationType)
  {
    v5 = 0;
  }

  if (notificationType == 1)
  {
    v6 = @"purchases";
  }

  else
  {
    v6 = v5;
  }

  [v3 appendFormat:@"notificationType: '%@'; ", v6];
  if (self->_value)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"value: '%@'; ", v7];
  [v3 appendFormat:@">"];

  return v3;
}

@end