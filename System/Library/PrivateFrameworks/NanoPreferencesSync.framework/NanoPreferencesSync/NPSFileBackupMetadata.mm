@interface NPSFileBackupMetadata
- (NPSFileBackupMetadata)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NPSFileBackupMetadata

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(NSUUID *)self->_uuid UUIDString];
  v6 = [NSString stringWithFormat:@"<%@ %p uuid = (%@); url = (%@)>", v4, self, v5, self->_url];;

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  uuid = self->_uuid;
  v5 = a3;
  [v5 encodeObject:uuid forKey:@"uuid"];
  [v5 encodeObject:self->_url forKey:@"url"];
}

- (NPSFileBackupMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = NPSFileBackupMetadata;
  v5 = [(NPSFileBackupMetadata *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;
  }

  return v5;
}

@end