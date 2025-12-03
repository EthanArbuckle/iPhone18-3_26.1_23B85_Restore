@interface PKCloudStoreZoneInvitation
+ (id)cloudStoreZoneInvitationWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCloudStoreZoneInvitation:(id)invitation;
- (PKCloudStoreZoneInvitation)initWithCoder:(id)coder;
- (id)description;
- (id)protobuf;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKCloudStoreZoneInvitation

+ (id)cloudStoreZoneInvitationWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKCloudStoreZoneInvitation);
  v5 = MEMORY[0x1E695DFF8];
  shareURL = [protobufCopy shareURL];
  v7 = [v5 URLWithString:shareURL];
  [(PKCloudStoreZoneInvitation *)v4 setShareURL:v7];

  shareInvitationToken = [protobufCopy shareInvitationToken];
  [(PKCloudStoreZoneInvitation *)v4 setShareInvitationToken:shareInvitationToken];

  containerIdentifier = [protobufCopy containerIdentifier];
  [(PKCloudStoreZoneInvitation *)v4 setContainerIdentifier:containerIdentifier];

  zoneName = [protobufCopy zoneName];
  [(PKCloudStoreZoneInvitation *)v4 setZoneName:zoneName];

  v11 = MEMORY[0x1E695DF00];
  [protobufCopy dateCreated];
  v13 = v12;

  v14 = [v11 dateWithTimeIntervalSinceReferenceDate:v13];
  [(PKCloudStoreZoneInvitation *)v4 setDateCreated:v14];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufCloudStoreZoneInvitation);
  shareURL = [(PKCloudStoreZoneInvitation *)self shareURL];
  absoluteString = [shareURL absoluteString];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setShareURL:absoluteString];

  shareInvitationToken = [(PKCloudStoreZoneInvitation *)self shareInvitationToken];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setShareInvitationToken:shareInvitationToken];

  containerIdentifier = [(PKCloudStoreZoneInvitation *)self containerIdentifier];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setContainerIdentifier:containerIdentifier];

  zoneName = [(PKCloudStoreZoneInvitation *)self zoneName];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setZoneName:zoneName];

  dateCreated = [(PKCloudStoreZoneInvitation *)self dateCreated];
  [dateCreated timeIntervalSinceReferenceDate];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setDateCreated:?];

  return v3;
}

- (PKCloudStoreZoneInvitation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKCloudStoreZoneInvitation;
  v5 = [(PKCloudStoreZoneInvitation *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"shareInvitationToken"];
    shareInvitationToken = v5->_shareInvitationToken;
    v5->_shareInvitationToken = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  shareURL = self->_shareURL;
  coderCopy = coder;
  [coderCopy encodeObject:shareURL forKey:@"shareURL"];
  [coderCopy encodeObject:self->_shareInvitationToken forKey:@"shareInvitationToken"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
  [coderCopy encodeObject:self->_zoneName forKey:@"zoneName"];
  [coderCopy encodeObject:self->_dateCreated forKey:@"dateCreated"];
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
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCloudStoreZoneInvitation *)self isEqualToCloudStoreZoneInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToCloudStoreZoneInvitation:(id)invitation
{
  invitationCopy = invitation;
  shareURL = self->_shareURL;
  v6 = invitationCopy[1];
  if (shareURL)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (shareURL != v6)
    {
      goto LABEL_26;
    }
  }

  else if (([(NSURL *)shareURL isEqual:?]& 1) == 0)
  {
    goto LABEL_26;
  }

  shareInvitationToken = self->_shareInvitationToken;
  v9 = invitationCopy[2];
  if (shareInvitationToken && v9)
  {
    if (([(NSData *)shareInvitationToken isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (shareInvitationToken != v9)
  {
    goto LABEL_26;
  }

  containerIdentifier = self->_containerIdentifier;
  v11 = invitationCopy[3];
  if (containerIdentifier && v11)
  {
    if (([(NSString *)containerIdentifier isEqual:?]& 1) == 0)
    {
      goto LABEL_26;
    }
  }

  else if (containerIdentifier != v11)
  {
    goto LABEL_26;
  }

  zoneName = self->_zoneName;
  v13 = invitationCopy[4];
  if (!zoneName || !v13)
  {
    if (zoneName == v13)
    {
      goto LABEL_22;
    }

LABEL_26:
    v16 = 0;
    goto LABEL_27;
  }

  if (([(NSString *)zoneName isEqual:?]& 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  dateCreated = self->_dateCreated;
  v15 = invitationCopy[5];
  if (dateCreated && v15)
  {
    v16 = [(NSDate *)dateCreated isEqual:?];
  }

  else
  {
    v16 = dateCreated == v15;
  }

LABEL_27:

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"zoneName: %@; ", self->_zoneName];
  [v3 appendFormat:@"containerIdentifier: %@; ", self->_containerIdentifier];
  [v3 appendFormat:@"shareURL: %@ ", self->_shareURL];
  [v3 appendFormat:@"dateCreated: %@; ", self->_dateCreated];
  [v3 appendFormat:@"shareInvitationToken: %ld bytes; ", -[NSData length](self->_shareInvitationToken, "length")];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

@end