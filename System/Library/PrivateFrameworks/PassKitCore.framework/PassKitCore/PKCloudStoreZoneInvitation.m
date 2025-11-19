@interface PKCloudStoreZoneInvitation
+ (id)cloudStoreZoneInvitationWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCloudStoreZoneInvitation:(id)a3;
- (PKCloudStoreZoneInvitation)initWithCoder:(id)a3;
- (id)description;
- (id)protobuf;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKCloudStoreZoneInvitation

+ (id)cloudStoreZoneInvitationWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKCloudStoreZoneInvitation);
  v5 = MEMORY[0x1E695DFF8];
  v6 = [v3 shareURL];
  v7 = [v5 URLWithString:v6];
  [(PKCloudStoreZoneInvitation *)v4 setShareURL:v7];

  v8 = [v3 shareInvitationToken];
  [(PKCloudStoreZoneInvitation *)v4 setShareInvitationToken:v8];

  v9 = [v3 containerIdentifier];
  [(PKCloudStoreZoneInvitation *)v4 setContainerIdentifier:v9];

  v10 = [v3 zoneName];
  [(PKCloudStoreZoneInvitation *)v4 setZoneName:v10];

  v11 = MEMORY[0x1E695DF00];
  [v3 dateCreated];
  v13 = v12;

  v14 = [v11 dateWithTimeIntervalSinceReferenceDate:v13];
  [(PKCloudStoreZoneInvitation *)v4 setDateCreated:v14];

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufCloudStoreZoneInvitation);
  v4 = [(PKCloudStoreZoneInvitation *)self shareURL];
  v5 = [v4 absoluteString];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setShareURL:v5];

  v6 = [(PKCloudStoreZoneInvitation *)self shareInvitationToken];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setShareInvitationToken:v6];

  v7 = [(PKCloudStoreZoneInvitation *)self containerIdentifier];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setContainerIdentifier:v7];

  v8 = [(PKCloudStoreZoneInvitation *)self zoneName];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setZoneName:v8];

  v9 = [(PKCloudStoreZoneInvitation *)self dateCreated];
  [v9 timeIntervalSinceReferenceDate];
  [(PKProtobufCloudStoreZoneInvitation *)v3 setDateCreated:?];

  return v3;
}

- (PKCloudStoreZoneInvitation)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKCloudStoreZoneInvitation;
  v5 = [(PKCloudStoreZoneInvitation *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareURL"];
    shareURL = v5->_shareURL;
    v5->_shareURL = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"shareInvitationToken"];
    shareInvitationToken = v5->_shareInvitationToken;
    v5->_shareInvitationToken = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"zoneName"];
    zoneName = v5->_zoneName;
    v5->_zoneName = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dateCreated"];
    dateCreated = v5->_dateCreated;
    v5->_dateCreated = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  shareURL = self->_shareURL;
  v5 = a3;
  [v5 encodeObject:shareURL forKey:@"shareURL"];
  [v5 encodeObject:self->_shareInvitationToken forKey:@"shareInvitationToken"];
  [v5 encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
  [v5 encodeObject:self->_zoneName forKey:@"zoneName"];
  [v5 encodeObject:self->_dateCreated forKey:@"dateCreated"];
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
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKCloudStoreZoneInvitation *)self isEqualToCloudStoreZoneInvitation:v5];
  }

  return v6;
}

- (BOOL)isEqualToCloudStoreZoneInvitation:(id)a3
{
  v4 = a3;
  shareURL = self->_shareURL;
  v6 = v4[1];
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
  v9 = v4[2];
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
  v11 = v4[3];
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
  v13 = v4[4];
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
  v15 = v4[5];
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