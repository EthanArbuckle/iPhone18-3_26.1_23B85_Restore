@interface PKPeerPaymentPreferencesNotification
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPreferencesNotification:(id)notification;
- (PKPeerPaymentPreferencesNotification)initWithCoder:(id)coder;
- (PKPeerPaymentPreferencesNotification)initWithDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentPreferencesNotification

- (PKPeerPaymentPreferencesNotification)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PKPeerPaymentPreferencesNotification;
  v5 = [(PKPeerPaymentPreferencesNotification *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [dictionaryCopy PKStringForKey:@"notificationType"];
    v5->_notificationType = PKPeerPaymentPreferencesNotificationTypeFromString(v8);

    v5->_value = [dictionaryCopy PKBoolForKey:@"value"];
  }

  return v5;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:self->_altDSID forKey:@"altDSID"];
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

  [dictionary setObject:v6 forKey:@"notificationType"];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_value];
  [dictionary setObject:v7 forKey:@"value"];

  v8 = [dictionary copy];

  return v8;
}

- (PKPeerPaymentPreferencesNotification)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentPreferencesNotification;
  v5 = [(PKPeerPaymentPreferencesNotification *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v5->_notificationType = [coderCopy decodeIntegerForKey:@"notificationType"];
    v5->_value = [coderCopy decodeBoolForKey:@"value"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  altDSID = self->_altDSID;
  coderCopy = coder;
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];
  [coderCopy encodeInteger:self->_notificationType forKey:@"notificationType"];
  [coderCopy encodeBool:self->_value forKey:@"value"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[PKPeerPaymentPreferencesNotification allocWithZone:](PKPeerPaymentPreferencesNotification init];
  v6 = [(NSString *)self->_altDSID copyWithZone:zone];
  altDSID = v5->_altDSID;
  v5->_altDSID = v6;

  v5->_notificationType = self->_notificationType;
  v5->_value = self->_value;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPeerPaymentPreferencesNotification *)self isEqualToPreferencesNotification:v5];
  }

  return v6;
}

- (BOOL)isEqualToPreferencesNotification:(id)notification
{
  notificationCopy = notification;
  v5 = notificationCopy;
  if (notificationCopy && self->_notificationType == notificationCopy[3] && self->_value == *(notificationCopy + 8))
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
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_altDSID];
  v4 = PKCombinedHash(17, array);
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