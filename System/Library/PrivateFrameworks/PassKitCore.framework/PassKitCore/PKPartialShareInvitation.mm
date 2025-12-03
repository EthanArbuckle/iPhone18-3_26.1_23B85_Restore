@interface PKPartialShareInvitation
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPartialShareInvitation:(id)invitation;
- (PKPartialShareInvitation)initWithCoder:(id)coder;
- (PKPartialShareInvitation)initWithHomeInvite:(id)invite displayInformation:(id)information;
- (PKPartialShareInvitation)initWithShare:(id)share pass:(id)pass;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setRecipientHandle:(id)handle;
- (void)setRecipientNickname:(id)nickname;
@end

@implementation PKPartialShareInvitation

- (PKPartialShareInvitation)initWithShare:(id)share pass:(id)pass
{
  shareCopy = share;
  passCopy = pass;
  v12.receiver = self;
  v12.super_class = PKPartialShareInvitation;
  v9 = [(PKPartialShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_share, share);
    objc_storeStrong(&v10->_pass, pass);
  }

  return v10;
}

- (PKPartialShareInvitation)initWithHomeInvite:(id)invite displayInformation:(id)information
{
  inviteCopy = invite;
  informationCopy = information;
  v12.receiver = self;
  v12.super_class = PKPartialShareInvitation;
  v9 = [(PKPartialShareInvitation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_homeInvite, invite);
    objc_storeStrong(&v10->_displayInformation, information);
  }

  return v10;
}

- (PKPartialShareInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v30.receiver = self;
  v30.super_class = PKPartialShareInvitation;
  v5 = [(PKPartialShareInvitation *)&v30 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"share"];
    share = v5->_share;
    v5->_share = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pass"];
    pass = v5->_pass;
    v5->_pass = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeInvite"];
    homeInvite = v5->_homeInvite;
    v5->_homeInvite = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayInformation"];
    displayInformation = v5->_displayInformation;
    v5->_displayInformation = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientNickname"];
    recipientNickname = v5->_recipientNickname;
    v5->_recipientNickname = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"recipientHandle"];
    recipientHandle = v5->_recipientHandle;
    v5->_recipientHandle = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestSource"];
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
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sharingInvitationFlow"];
    v5->_sharingInvitationFlow = PKSharingInvitationFlowFromString(v28);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  share = self->_share;
  coderCopy = coder;
  [coderCopy encodeObject:share forKey:@"share"];
  [coderCopy encodeObject:self->_pass forKey:@"pass"];
  [coderCopy encodeObject:self->_homeInvite forKey:@"homeInvite"];
  [coderCopy encodeObject:self->_displayInformation forKey:@"displayInformation"];
  [coderCopy encodeObject:self->_recipientNickname forKey:@"recipientNickname"];
  [coderCopy encodeObject:self->_recipientHandle forKey:@"recipientHandle"];
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

  [coderCopy encodeObject:v8 forKey:@"requestSource"];
  v9 = PKSharingInvitationFlowToString(self->_sharingInvitationFlow);
  [coderCopy encodeObject:v9 forKey:@"sharingInvitationFlow"];
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
  array = [MEMORY[0x1E695DF70] array];
  v4 = array;
  if (self->_share)
  {
    [array addObject:?];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPartialShareInvitation *)self isEqualToPartialShareInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToPartialShareInvitation:(id)invitation
{
  invitationCopy = invitation;
  if (!invitationCopy)
  {
    goto LABEL_37;
  }

  share = self->_share;
  v6 = invitationCopy[1];
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
  v9 = invitationCopy[2];
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
  v11 = invitationCopy[5];
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
  v13 = invitationCopy[6];
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
  v15 = invitationCopy[7];
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
  v17 = invitationCopy[8];
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
  if (self->_requestSource != invitationCopy[3])
  {
    goto LABEL_37;
  }

  v18 = self->_sharingInvitationFlow == invitationCopy[4];
LABEL_38:

  return v18;
}

- (void)setRecipientHandle:(id)handle
{
  handleCopy = handle;
  objc_storeStrong(&self->_recipientHandle, handle);
  if (self->_recipientHandle)
  {
    [(PKPassShare *)self->_share setRecipientHandle:?];
  }
}

- (void)setRecipientNickname:(id)nickname
{
  nicknameCopy = nickname;
  objc_storeStrong(&self->_recipientNickname, nickname);
  if (self->_recipientNickname)
  {
    [(PKPassShare *)self->_share setRecipientNickname:nicknameCopy];
  }
}

@end