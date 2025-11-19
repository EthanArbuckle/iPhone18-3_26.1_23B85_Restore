@interface PKCloudStoreZoneInvitationResponse
+ (id)cloudStoreZoneInvitationResponseWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (PKCloudStoreZoneInvitationResponse)initWithCoder:(id)a3;
- (id)description;
- (id)protobuf;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreZoneInvitationResponse

+ (id)cloudStoreZoneInvitationResponseWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKCloudStoreZoneInvitationResponse);
  v5 = [v3 invitation];
  v6 = [PKCloudStoreZoneInvitation cloudStoreZoneInvitationWithProtobuf:v5];
  [(PKCloudStoreZoneInvitationResponse *)v4 setInvitation:v6];

  LODWORD(v6) = [v3 status];
  [(PKCloudStoreZoneInvitationResponse *)v4 setStatus:v6];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufCloudStoreZoneInvitationResponse);
  v4 = [(PKCloudStoreZoneInvitationResponse *)self invitation];
  v5 = [v4 protobuf];
  [(PKProtobufCloudStoreZoneInvitationResponse *)v3 setInvitation:v5];

  [(PKProtobufCloudStoreZoneInvitationResponse *)v3 setStatus:[(PKCloudStoreZoneInvitationResponse *)self status]];

  return v3;
}

- (PKCloudStoreZoneInvitationResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = PKCloudStoreZoneInvitationResponse;
  v5 = [(PKCloudStoreZoneInvitationResponse *)&v11 init];
  if (v5)
  {
    v5->_status = [v4 decodeIntegerForKey:@"status"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"invitation"];
    invitation = v5->_invitation;
    v5->_invitation = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destination"];
    destination = v5->_destination;
    v5->_destination = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  status = self->_status;
  v5 = a3;
  [v5 encodeInteger:status forKey:@"status"];
  [v5 encodeObject:self->_invitation forKey:@"invitation"];
  [v5 encodeObject:self->_destination forKey:@"destination"];
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_invitation];
  [v3 safelyAddObject:self->_destination];
  v4 = PKCombinedHash(17, v3);
  v5 = self->_status - v4 + 32 * v4;

  return v5;
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
  v7 = v6;
  if (!v6 || self->_status != v6[3])
  {
    goto LABEL_13;
  }

  invitation = self->_invitation;
  v9 = v7[1];
  if (!invitation || !v9)
  {
    if (invitation == v9)
    {
      goto LABEL_9;
    }

LABEL_13:
    v12 = 0;
    goto LABEL_14;
  }

  if (![(PKCloudStoreZoneInvitation *)invitation isEqual:?])
  {
    goto LABEL_13;
  }

LABEL_9:
  destination = self->_destination;
  v11 = v7[2];
  if (destination && v11)
  {
    v12 = [(PKSharingDestination *)destination isEqual:?];
  }

  else
  {
    v12 = destination == v11;
  }

LABEL_14:

  return v12;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = v3;
  status = self->_status;
  if (status > 3)
  {
    v6 = @"accepted";
  }

  else
  {
    v6 = off_1E79DA8E8[status];
  }

  [v3 appendFormat:@"status: '%@'; ", v6];
  [v4 appendFormat:@"invitation: '%@'; ", self->_invitation];
  [v4 appendFormat:@"destination: '%@'; ", self->_destination];
  [v4 appendFormat:@">"];

  return v4;
}

@end