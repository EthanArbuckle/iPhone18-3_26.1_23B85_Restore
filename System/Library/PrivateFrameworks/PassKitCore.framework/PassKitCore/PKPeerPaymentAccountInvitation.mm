@interface PKPeerPaymentAccountInvitation
- (BOOL)isEqual:(id)equal;
- (PKPeerPaymentAccountInvitation)initWithCoder:(id)coder;
- (PKPeerPaymentAccountInvitation)initWithDictionary:(id)dictionary;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPeerPaymentAccountInvitation

- (PKPeerPaymentAccountInvitation)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = PKPeerPaymentAccountInvitation;
  v5 = [(PKPeerPaymentAccountInvitation *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy PKStringForKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v8 = [dictionaryCopy PKStringForKey:@"status"];
    v9 = v8;
    if (v8 != @"pending")
    {
      if (v8)
      {
        v10 = [(__CFString *)v8 isEqualToString:@"pending"];

        if (v10)
        {
          goto LABEL_5;
        }

        v12 = v9;
        if (v12 == @"accepted" || (v13 = v12, v14 = [(__CFString *)v12 isEqualToString:@"accepted"], v13, v14))
        {
          v11 = 2;
          goto LABEL_10;
        }
      }

      v11 = 0;
      goto LABEL_10;
    }

LABEL_5:
    v11 = 1;
LABEL_10:

    v5->_status = v11;
  }

  return v5;
}

- (PKPeerPaymentAccountInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = PKPeerPaymentAccountInvitation;
  v5 = [(PKPeerPaymentAccountInvitation *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"altDSID"];
    altDSID = v5->_altDSID;
    v5->_altDSID = v6;

    v5->_status = [coderCopy decodeIntegerForKey:@"status"];
    v5->_registrationResult = [coderCopy decodeIntegerForKey:@"registrationResult"];
    v5->_remoteRegistrationRequestLevel = [coderCopy decodeIntegerForKey:@"remoteRegistrationRequestLevel"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  altDSID = self->_altDSID;
  coderCopy = coder;
  [coderCopy encodeObject:altDSID forKey:@"altDSID"];
  [coderCopy encodeInteger:self->_status forKey:@"status"];
  [coderCopy encodeInteger:self->_registrationResult forKey:@"registrationResult"];
  [coderCopy encodeInteger:self->_remoteRegistrationRequestLevel forKey:@"remoteRegistrationRequestLevel"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"altDSID: '%@'; ", self->_altDSID];
  status = self->_status;
  v5 = @"pending";
  if (status == 2)
  {
    v5 = @"accepted";
  }

  if (status)
  {
    v6 = v5;
  }

  else
  {
    v6 = @"unknown";
  }

  [v3 appendFormat:@"status: '%@'; ", v6];
  v7 = PKDeviceRegistrationResultToString(self->_registrationResult);
  [v3 appendFormat:@"registrationResult: '%@'; ", v7];

  [v3 appendFormat:@"remoteRegistrationRequestLevel: %ld; ", self->_remoteRegistrationRequestLevel];
  [v3 appendFormat:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_12;
  }

  v5 = equalCopy[1];
  v6 = self->_altDSID;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (!v6 || !v7)
    {

LABEL_12:
      v10 = 0;
      goto LABEL_13;
    }

    v9 = [(NSString *)v6 isEqualToString:v7];

    if (!v9)
    {
      goto LABEL_12;
    }
  }

  if (self->_status != equalCopy[2] || self->_registrationResult != equalCopy[3])
  {
    goto LABEL_12;
  }

  v10 = self->_remoteRegistrationRequestLevel == equalCopy[4];
LABEL_13:

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_altDSID];
  v4 = PKCombinedHash(17, array);
  v5 = self->_status - v4 + 32 * v4;
  v6 = self->_registrationResult - v5 + 32 * v5;
  v7 = self->_remoteRegistrationRequestLevel - v6 + 32 * v6;

  return v7;
}

@end