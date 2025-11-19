@interface PKPassCredentialShare
- (BOOL)isEqual:(id)a3;
- (PKPassCredentialShare)init;
- (PKPassCredentialShare)initWithCoder:(id)a3;
- (PKPassCredentialShare)initWithInvitationData:(id)a3;
- (PKPassCredentialShare)initWithSubcredentialDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithInvitationData:(id)a3;
@end

@implementation PKPassCredentialShare

- (PKPassCredentialShare)init
{
  v3.receiver = self;
  v3.super_class = PKPassCredentialShare;
  return [(PKPassCredentialShare *)&v3 init];
}

- (PKPassCredentialShare)initWithSubcredentialDictionary:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v16 = 0;
    v6 = [v4 PKStringForKey:@"status"];
    v7 = PKShareStatusFromCarKeyStringStatus(v6, &v16);

    if (v16)
    {
      v8 = self;
      self = 0;
LABEL_14:

      v9 = self;
      goto LABEL_15;
    }

    v8 = [v5 PKStringForKey:@"keyID"];
    if (v8)
    {
      v10 = [v5 PKStringForKey:@"sharerKeyID"];
      if (v10)
      {
        v15.receiver = self;
        v15.super_class = PKPassCredentialShare;
        v11 = [(PKPassCredentialShare *)&v15 init];
        v12 = v11;
        if (v11)
        {
          objc_storeStrong(&v11->_identifier, v8);
          v12->_status = v7;
          objc_storeStrong(&v12->_senderKeyIdentifier, v10);
          v13 = [v5 PKStringForKey:@"deviceType"];
          v12->_targetDevice = PKPassCredentialShareTargetDeviceFromString(v13);
        }

        self = v12;
        goto LABEL_13;
      }
    }

    else
    {
      v10 = self;
    }

    self = 0;
LABEL_13:

    goto LABEL_14;
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (PKPassCredentialShare)initWithInvitationData:(id)a3
{
  v4 = a3;
  v5 = [(PKPassCredentialShare *)self init];
  v6 = v5;
  if (v5)
  {
    [(PKPassCredentialShare *)v5 updateWithInvitationData:v4];
  }

  return v6;
}

- (void)updateWithInvitationData:(id)a3
{
  v7 = a3;
  v4 = [v7 invitationIdentifier];
  [(PKPassCredentialShare *)self setIdentifier:v4];

  -[PKPassCredentialShare setTargetDevice:](self, "setTargetDevice:", [v7 sharingTargetType] == 2);
  v5 = [v7 invitationState] - 1;
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

- (PKPassCredentialShare)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKPassCredentialShare;
  v5 = [(PKPassCredentialShare *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"senderKeyIdentifier"];
    senderKeyIdentifier = v5->_senderKeyIdentifier;
    v5->_senderKeyIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelTransportIdentifier"];
    channelTransportIdentifier = v5->_channelTransportIdentifier;
    v5->_channelTransportIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"targetDevice"];
    v5->_targetDevice = PKPassCredentialShareTargetDeviceFromString(v12);

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = PKShareStatusFromString(v13);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_senderKeyIdentifier forKey:@"senderKeyIdentifier"];
  [v5 encodeObject:self->_channelTransportIdentifier forKey:@"channelTransportIdentifier"];
  v6 = PKPassCredentialShareTargetDeviceToString(self->_targetDevice);
  [v5 encodeObject:v6 forKey:@"targetDevice"];

  v7 = PKShareStatusToString(self->_status);
  [v5 encodeObject:v7 forKey:@"status"];
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
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_identifier)
  {
    [v3 addObject:?];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    LOBYTE(self) = 1;
  }

  else
  {
    if (v4)
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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