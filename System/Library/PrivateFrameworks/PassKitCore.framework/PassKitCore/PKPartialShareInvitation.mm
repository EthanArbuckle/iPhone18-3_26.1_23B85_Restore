@interface PKPartialShareInvitation
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPartialShareInvitation:(id)a3;
- (PKPartialShareInvitation)initWithCoder:(id)a3;
- (PKPartialShareInvitation)initWithHomeInvite:(id)a3 displayInformation:(id)a4;
- (PKPartialShareInvitation)initWithShare:(id)a3 pass:(id)a4;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setRecipientHandle:(id)a3;
- (void)setRecipientNickname:(id)a3;
@end

@implementation PKPartialShareInvitation

- (PKPartialShareInvitation)initWithShare:(id)a3 pass:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPartialShareInvitation;
  v9 = [(PKPartialShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_share, a3);
    objc_storeStrong(&v10->_pass, a4);
  }

  return v10;
}

- (PKPartialShareInvitation)initWithHomeInvite:(id)a3 displayInformation:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = PKPartialShareInvitation;
  v9 = [(PKPartialShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeInvite, a3);
    objc_storeStrong(&v10->_displayInformation, a4);
  }

  return v10;
}

- (PKPartialShareInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = PKPartialShareInvitation;
  v5 = [(PKPartialShareInvitation *)&v30 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"share"];
    share = v5->_share;
    v5->_share = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pass"];
    pass = v5->_pass;
    v5->_pass = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeInvite"];
    homeInvite = v5->_homeInvite;
    v5->_homeInvite = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayInformation"];
    displayInformation = v5->_displayInformation;
    v5->_displayInformation = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientNickname"];
    recipientNickname = v5->_recipientNickname;
    v5->_recipientNickname = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"recipientHandle"];
    recipientHandle = v5->_recipientHandle;
    v5->_recipientHandle = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestSource"];
    v19 = v18;
    v20 = 0;
    if (v18 == @"UI" || !v18)
    {
      goto LABEL_12;
    }

    v21 = [(__CFString *)v18 isEqualToString:@"UI"];

    if ((v21 & 1) == 0)
    {
      v22 = v19;
      if (v22 == @"remoteLocalDevice" || (v23 = v22, v24 = [(__CFString *)v22 isEqualToString:@"remoteLocalDevice"], v23, (v24 & 1) != 0))
      {
        v20 = 1;
        goto LABEL_12;
      }

      v25 = v23;
      if (v25 == @"remoteExternalDevice" || (v26 = v25, v27 = [(__CFString *)v25 isEqualToString:@"remoteExternalDevice"], v26, v27))
      {
        v20 = 2;
        goto LABEL_12;
      }
    }

    v20 = 0;
LABEL_12:

    v5->_requestSource = v20;
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sharingInvitationFlow"];
    v5->_sharingInvitationFlow = PKSharingInvitationFlowFromString(v28);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  share = self->_share;
  v5 = a3;
  [v5 encodeObject:share forKey:@"share"];
  [v5 encodeObject:self->_pass forKey:@"pass"];
  [v5 encodeObject:self->_homeInvite forKey:@"homeInvite"];
  [v5 encodeObject:self->_displayInformation forKey:@"displayInformation"];
  [v5 encodeObject:self->_recipientNickname forKey:@"recipientNickname"];
  [v5 encodeObject:self->_recipientHandle forKey:@"recipientHandle"];
  requestSource = self->_requestSource;
  v7 = @"UI";
  if (requestSource == 1)
  {
    v7 = @"remoteLocalDevice";
  }

  if (requestSource == 2)
  {
    v8 = @"remoteExternalDevice";
  }

  else
  {
    v8 = v7;
  }

  [v5 encodeObject:v8 forKey:@"requestSource"];
  v9 = PKSharingInvitationFlowToString(self->_sharingInvitationFlow);
  [v5 encodeObject:v9 forKey:@"sharingInvitationFlow"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p ", v5, self];;

  [v6 appendFormat:@"share: '%@'; ", self->_share];
  [v6 appendFormat:@"pass: '%@'; ", self->_pass];
  [v6 appendFormat:@"homeInvite: '%@'; ", self->_homeInvite];
  [v6 appendFormat:@"displayInformation: '%@'; ", self->_displayInformation];
  [v6 appendFormat:@"recipientNickname: '%@'; ", self->_recipientNickname];
  [v6 appendFormat:@"recipientHandle: '%@'; ", self->_recipientHandle];
  requestSource = self->_requestSource;
  v8 = @"UI";
  if (requestSource == 1)
  {
    v8 = @"remoteLocalDevice";
  }

  if (requestSource == 2)
  {
    v9 = @"remoteExternalDevice";
  }

  else
  {
    v9 = v8;
  }

  [v6 appendFormat:@"requestSource: '%@'; ", v9];
  v10 = PKSharingInvitationFlowToString(self->_sharingInvitationFlow);
  [v6 appendFormat:@"sharingInvitationFlow: '%@'; ", v10];

  [v6 appendFormat:@">"];
  v11 = [MEMORY[0x1E696AEC0] stringWithString:v6];

  return v11;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = v3;
  if (self->_share)
  {
    [v3 addObject:?];
  }

  if (self->_pass)
  {
    [v4 addObject:?];
  }

  if (self->_homeInvite)
  {
    [v4 addObject:?];
  }

  if (self->_displayInformation)
  {
    [v4 addObject:?];
  }

  if (self->_recipientNickname)
  {
    [v4 addObject:?];
  }

  if (self->_recipientHandle)
  {
    [v4 addObject:?];
  }

  v5 = PKCombinedHash(17, v4);
  v6 = self->_requestSource - v5 + 32 * v5;
  v7 = self->_sharingInvitationFlow - v6 + 32 * v6;

  return v7;
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPartialShareInvitation *)self isEqualToPartialShareInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToPartialShareInvitation:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_37;
  }

  share = self->_share;
  v6 = v4[1];
  if (share)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (share != v6)
    {
      goto LABEL_37;
    }
  }

  else if (![(PKPassShare *)share isEqual:?])
  {
    goto LABEL_37;
  }

  pass = self->_pass;
  v9 = v4[2];
  if (pass && v9)
  {
    if (([(PKSecureElementPass *)pass isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (pass != v9)
  {
    goto LABEL_37;
  }

  homeInvite = self->_homeInvite;
  v11 = v4[5];
  if (homeInvite && v11)
  {
    if (([(NSData *)homeInvite isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (homeInvite != v11)
  {
    goto LABEL_37;
  }

  displayInformation = self->_displayInformation;
  v13 = v4[6];
  if (displayInformation && v13)
  {
    if (([(PKSharingMessageDisplayInformation *)displayInformation isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (displayInformation != v13)
  {
    goto LABEL_37;
  }

  recipientNickname = self->_recipientNickname;
  v15 = v4[7];
  if (recipientNickname && v15)
  {
    if (([(NSString *)recipientNickname isEqual:?]& 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (recipientNickname != v15)
  {
    goto LABEL_37;
  }

  recipientHandle = self->_recipientHandle;
  v17 = v4[8];
  if (!recipientHandle || !v17)
  {
    if (recipientHandle == v17)
    {
      goto LABEL_35;
    }

LABEL_37:
    v18 = 0;
    goto LABEL_38;
  }

  if (([(NSString *)recipientHandle isEqual:?]& 1) == 0)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (self->_requestSource != v4[3])
  {
    goto LABEL_37;
  }

  v18 = self->_sharingInvitationFlow == v4[4];
LABEL_38:

  return v18;
}

- (void)setRecipientHandle:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_recipientHandle, a3);
  if (self->_recipientHandle)
  {
    [(PKPassShare *)self->_share setRecipientHandle:?];
  }
}

- (void)setRecipientNickname:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_recipientNickname, a3);
  if (self->_recipientNickname)
  {
    [(PKPassShare *)self->_share setRecipientNickname:v5];
  }
}

@end