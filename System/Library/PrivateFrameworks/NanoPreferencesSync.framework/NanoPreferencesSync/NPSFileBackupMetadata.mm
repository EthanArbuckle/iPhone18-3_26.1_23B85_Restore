@interface NPSFileBackupMetadata
- (NPSFileBackupMetadata)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NPSFileBackupMetadata

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v6 = [NSString stringWithFormat:@"<%@ %p uuid = (%@); url = (%@)>", v4, self, uUIDString, self->_url];;

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_url forKey:@"url"];
}

- (NPSFileBackupMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = NPSFileBackupMetadata;
  v5 = [(NPSFileBackupMetadata *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;
  }

  return v5;
}

@end