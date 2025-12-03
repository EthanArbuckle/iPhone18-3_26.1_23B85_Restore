@interface PKCloudStoreZoneInvitationRequest
+ (id)cloudStoreZoneInvitationRequestWithProtobuf:(id)protobuf;
+ (id)invitationErrorWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (PKCloudStoreZoneInvitationRequest)initWithCoder:(id)coder;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreZoneInvitationRequest

+ (id)cloudStoreZoneInvitationRequestWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v5 = objc_alloc_init(PKCloudStoreZoneInvitationRequest);
  invitation = [protobufCopy invitation];
  v7 = [PKCloudStoreZoneInvitation cloudStoreZoneInvitationWithProtobuf:invitation];
  [(PKCloudStoreZoneInvitationRequest *)v5 setInvitation:v7];

  v8 = [self invitationErrorWithProtobuf:protobufCopy];

  [(PKCloudStoreZoneInvitationRequest *)v5 setInvitationError:v8];

  return v5;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufCloudStoreZoneInvitationRequest);
  invitation = [(PKCloudStoreZoneInvitationRequest *)self invitation];
  protobuf = [invitation protobuf];
  [(PKProtobufCloudStoreZoneInvitationRequest *)v3 setInvitation:protobuf];

  invitationError = [(PKCloudStoreZoneInvitationRequest *)self invitationError];

  if (invitationError)
  {
    invitationError2 = [(PKCloudStoreZoneInvitationRequest *)self invitationError];
    -[PKProtobufCloudStoreZoneInvitationRequest setErrorCode:](v3, "setErrorCode:", [invitationError2 code]);

    invitationError3 = [(PKCloudStoreZoneInvitationRequest *)self invitationError];
    domain = [invitationError3 domain];
    [(PKProtobufCloudStoreZoneInvitationRequest *)v3 setErrorDomain:domain];

    invitationError4 = [(PKCloudStoreZoneInvitationRequest *)self invitationError];
    localizedDescription = [invitationError4 localizedDescription];
    [(PKProtobufCloudStoreZoneInvitationRequest *)v3 setErrorDescription:localizedDescription];
  }

  return v3;
}

+ (id)invitationErrorWithProtobuf:(id)protobuf
{
  v14[2] = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  errorDomain = [protobufCopy errorDomain];

  if (errorDomain)
  {
    errorDescription = [protobufCopy errorDescription];
    v6 = MEMORY[0x1E696ABC0];
    errorDomain2 = [protobufCopy errorDomain];
    errorCode = [protobufCopy errorCode];
    v9 = *MEMORY[0x1E696A588];
    v13[0] = *MEMORY[0x1E696A578];
    v13[1] = v9;
    v14[0] = errorDescription;
    v14[1] = errorDescription;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = [v6 errorWithDomain:errorDomain2 code:errorCode userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PKCloudStoreZoneInvitationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PKCloudStoreZoneInvitationRequest;
  v5 = [(PKCloudStoreZoneInvitationRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitation"];
    invitation = v5->_invitation;
    v5->_invitation = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitationError"];
    invitationError = v5->_invitationError;
    v5->_invitationError = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  destination = self->_destination;
  coderCopy = coder;
  [coderCopy encodeObject:destination forKey:@"destination"];
  [coderCopy encodeObject:self->_invitation forKey:@"invitation"];
  [coderCopy encodeObject:self->_invitationError forKey:@"invitationError"];
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_destination];
  [array safelyAddObject:self->_invitation];
  [array safelyAddObject:self->_invitationError];
  v4 = PKCombinedHash(17, array);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (!v6)
  {
    goto LABEL_17;
  }

  destination = self->_destination;
  v8 = v6[2];
  if (destination && v8)
  {
    if (![(PKSharingDestination *)destination isEqual:?])
    {
      goto LABEL_17;
    }
  }

  else if (destination != v8)
  {
    goto LABEL_17;
  }

  invitation = self->_invitation;
  v10 = v6[1];
  if (!invitation || !v10)
  {
    if (invitation == v10)
    {
      goto LABEL_13;
    }

LABEL_17:
    v13 = 0;
    goto LABEL_18;
  }

  if (![(PKCloudStoreZoneInvitation *)invitation isEqual:?])
  {
    goto LABEL_17;
  }

LABEL_13:
  invitationError = self->_invitationError;
  v12 = v6[3];
  if (invitationError && v12)
  {
    v13 = [(NSError *)invitationError isEqual:?];
  }

  else
  {
    v13 = invitationError == v12;
  }

LABEL_18:

  return v13;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"destination: '%@'; ", self->_destination];
  [v3 appendFormat:@"invitation: '%@'; ", self->_invitation];
  if (self->_invitationError)
  {
    [v3 appendFormat:@"invitationError: '%@'; ", self->_invitationError];
  }

  [v3 appendFormat:@">"];

  return v3;
}

@end