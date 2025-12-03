@interface PKPassCredentialShare
- (BOOL)isEqual:(id)equal;
- (PKPassCredentialShare)init;
- (PKPassCredentialShare)initWithCoder:(id)coder;
- (PKPassCredentialShare)initWithInvitationData:(id)data;
- (PKPassCredentialShare)initWithSubcredentialDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithInvitationData:(id)data;
@end

@implementation PKPassCredentialShare

- (PKPassCredentialShare)init
{
  v3.receiver = self;
  v3.super_class = PKPassCredentialShare;
  return [(PKPassCredentialShare *)&v3 init];
}

- (PKPassCredentialShare)initWithSubcredentialDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (dictionaryCopy)
  {
    v16 = 0;
    v6 = [dictionaryCopy PKStringForKey:@"status"];
    v7 = PKShareStatusFromCarKeyStringStatus(v6, &v16);

    if (v16)
    {
      selfCopy = self;
      self = 0;
LABEL_14:

      selfCopy2 = self;
      goto LABEL_15;
    }

    selfCopy = [v5 PKStringForKey:@"keyID"];
    if (selfCopy)
    {
      selfCopy3 = [v5 PKStringForKey:@"sharerKeyID"];
      if (selfCopy3)
      {
        v15.receiver = self;
        v15.super_class = PKPassCredentialShare;
        v11 = [(PKPassCredentialShare *)&v15 init];
        v12 = v11;
        if (v11)
        {
          objc_storeStrong(&v11->_identifier, selfCopy);
          v12->_status = v7;
          objc_storeStrong(&v12->_senderKeyIdentifier, selfCopy3);
          v13 = [v5 PKStringForKey:@"deviceType"];
          v12->_targetDevice = PKPassCredentialShareTargetDeviceFromString(v13);
        }

        self = v12;
        goto LABEL_13;
      }
    }

    else
    {
      selfCopy3 = self;
    }

    self = 0;
LABEL_13:

    goto LABEL_14;
  }

  selfCopy2 = 0;
LABEL_15:

  return selfCopy2;
}

- (PKPassCredentialShare)initWithInvitationData:(id)data
{
  dataCopy = data;
  v5 = [(PKPassCredentialShare *)self init];
  v6 = v5;
  if (v5)
  {
    [(PKPassCredentialShare *)v5 updateWithInvitationData:dataCopy];
  }

  return v6;
}

- (void)updateWithInvitationData:(id)data
{
  dataCopy = data;
  invitationIdentifier = [dataCopy invitationIdentifier];
  [(PKPassCredentialShare *)self setIdentifier:invitationIdentifier];

  -[PKPassCredentialShare setTargetDevice:](self, "setTargetDevice:", [dataCopy sharingTargetType] == 2);
  v5 = [dataCopy invitationState] - 1;
  if (v5 > 7)
  {
    v6 = 0;
  }

  else
  {
    v6 = qword_1ADB9AA58[v5];
  }

  [(PKPassCredentialShare *)self setStatus:v6];
}

- (PKPassCredentialShare)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKPassCredentialShare;
  v5 = [(PKPassCredentialShare *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"senderKeyIdentifier"];
    senderKeyIdentifier = v5->_senderKeyIdentifier;
    v5->_senderKeyIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelTransportIdentifier"];
    channelTransportIdentifier = v5->_channelTransportIdentifier;
    v5->_channelTransportIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetDevice"];
    v5->_targetDevice = PKPassCredentialShareTargetDeviceFromString(v12);

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKShareStatusFromString(v13);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_senderKeyIdentifier forKey:@"senderKeyIdentifier"];
  [coderCopy encodeObject:self->_channelTransportIdentifier forKey:@"channelTransportIdentifier"];
  v6 = PKPassCredentialShareTargetDeviceToString(self->_targetDevice);
  [coderCopy encodeObject:v6 forKey:@"targetDevice"];

  v7 = PKShareStatusToString(self->_status);
  [coderCopy encodeObject:v7 forKey:@"status"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: ", v5];

  [v6 appendFormat:@"identifier: '%@'; ", self->_identifier];
  [v6 appendFormat:@"senderKeyIdentifier: '%@'; ", self->_senderKeyIdentifier];
  v7 = PKSharingLoggableMailboxAddress(self->_channelTransportIdentifier);
  [v6 appendFormat:@"channelTransportIdentifier: '%@'; ", v7];

  v8 = PKPassCredentialShareTargetDeviceToString(self->_targetDevice);
  [v6 appendFormat:@"targetDevice: '%@'; ", v8];

  v9 = PKShareStatusToString(self->_status);
  [v6 appendFormat:@"status: '%@'; ", v9];

  [v6 appendFormat:@">"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v10;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_identifier)
  {
    [array addObject:?];
  }

  if (self->_senderKeyIdentifier)
  {
    [v4 addObject:?];
  }

  if (self->_channelTransportIdentifier)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_targetDevice - v5 + 32 * v5;
  v7 = self->_status - v6 + 32 * v6;

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        if (!self)
        {
LABEL_25:

          goto LABEL_26;
        }

        identifier = self->_identifier;
        v8 = v6->_identifier;
        if (identifier && v8)
        {
          if (([(NSString *)identifier isEqual:?]& 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (identifier != v8)
        {
          goto LABEL_24;
        }

        senderKeyIdentifier = self->_senderKeyIdentifier;
        v10 = v6->_senderKeyIdentifier;
        if (senderKeyIdentifier && v10)
        {
          if (([(NSString *)senderKeyIdentifier isEqual:?]& 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (senderKeyIdentifier != v10)
        {
          goto LABEL_24;
        }

        channelTransportIdentifier = self->_channelTransportIdentifier;
        v12 = v6->_channelTransportIdentifier;
        if (channelTransportIdentifier && v12)
        {
          if (([(NSString *)channelTransportIdentifier isEqual:?]& 1) == 0)
          {
            goto LABEL_24;
          }
        }

        else if (channelTransportIdentifier != v12)
        {
          goto LABEL_24;
        }

        if (self->_targetDevice == v6->_targetDevice)
        {
          LOBYTE(self) = self->_status == v6->_status;
          goto LABEL_25;
        }

LABEL_24:
        LOBYTE(self) = 0;
        goto LABEL_25;
      }
    }

    LOBYTE(self) = 0;
  }

LABEL_26:

  return self;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(NSString *)self->_identifier copy];
  v6 = v4[1];
  v4[1] = v5;

  v7 = [(NSString *)self->_senderKeyIdentifier copy];
  v8 = v4[5];
  v4[5] = v7;

  v9 = [(NSString *)self->_channelTransportIdentifier copy];
  v10 = v4[2];
  v4[2] = v9;

  v4[3] = self->_targetDevice;
  v4[4] = self->_status;
  return v4;
}

@end