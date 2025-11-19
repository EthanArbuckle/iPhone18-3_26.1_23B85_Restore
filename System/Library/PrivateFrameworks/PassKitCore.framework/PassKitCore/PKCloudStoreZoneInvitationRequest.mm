@interface PKCloudStoreZoneInvitationRequest
+ (id)cloudStoreZoneInvitationRequestWithProtobuf:(id)a3;
+ (id)invitationErrorWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKCloudStoreZoneInvitationRequest)initWithCoder:(id)a3;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreZoneInvitationRequest

+ (id)cloudStoreZoneInvitationRequestWithProtobuf:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PKCloudStoreZoneInvitationRequest);
  v6 = [v4 invitation];
  v7 = [PKCloudStoreZoneInvitation cloudStoreZoneInvitationWithProtobuf:v6];
  [(PKCloudStoreZoneInvitationRequest *)v5 setInvitation:v7];

  v8 = [a1 invitationErrorWithProtobuf:v4];

  [(PKCloudStoreZoneInvitationRequest *)v5 setInvitationError:v8];

  return v5;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufCloudStoreZoneInvitationRequest);
  v4 = [(PKCloudStoreZoneInvitationRequest *)self invitation];
  v5 = [v4 protobuf];
  [(PKProtobufCloudStoreZoneInvitationRequest *)v3 setInvitation:v5];

  v6 = [(PKCloudStoreZoneInvitationRequest *)self invitationError];

  if (v6)
  {
    v7 = [(PKCloudStoreZoneInvitationRequest *)self invitationError];
    -[PKProtobufCloudStoreZoneInvitationRequest setErrorCode:](v3, "setErrorCode:", [v7 code]);

    v8 = [(PKCloudStoreZoneInvitationRequest *)self invitationError];
    v9 = [v8 domain];
    [(PKProtobufCloudStoreZoneInvitationRequest *)v3 setErrorDomain:v9];

    v10 = [(PKCloudStoreZoneInvitationRequest *)self invitationError];
    v11 = [v10 localizedDescription];
    [(PKProtobufCloudStoreZoneInvitationRequest *)v3 setErrorDescription:v11];
  }

  return v3;
}

+ (id)invitationErrorWithProtobuf:(id)a3
{
  v14[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 errorDomain];

  if (v4)
  {
    v5 = [v3 errorDescription];
    v6 = MEMORY[0x1E696ABC0];
    v7 = [v3 errorDomain];
    v8 = [v3 errorCode];
    v9 = *MEMORY[0x1E696A588];
    v13[0] = *MEMORY[0x1E696A578];
    v13[1] = v9;
    v14[0] = v5;
    v14[1] = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:v13 count:2];
    v11 = [v6 errorWithDomain:v7 code:v8 userInfo:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (PKCloudStoreZoneInvitationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PKCloudStoreZoneInvitationRequest;
  v5 = [(PKCloudStoreZoneInvitationRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitation"];
    invitation = v5->_invitation;
    v5->_invitation = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitationError"];
    invitationError = v5->_invitationError;
    v5->_invitationError = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  destination = self->_destination;
  v5 = a3;
  [v5 encodeObject:destination forKey:@"destination"];
  [v5 encodeObject:self->_invitation forKey:@"invitation"];
  [v5 encodeObject:self->_invitationError forKey:@"invitationError"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_destination];
  [v3 safelyAddObject:self->_invitation];
  [v3 safelyAddObject:self->_invitationError];
  v4 = PKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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