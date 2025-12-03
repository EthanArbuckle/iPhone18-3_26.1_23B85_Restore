@interface PLPhotoLibraryIdentifier
- (PLPhotoLibraryIdentifier)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLPhotoLibraryIdentifier

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  name = [(PLPhotoLibraryIdentifier *)self name];
  [coderCopy encodeObject:name forKey:@"Name"];

  userDescription = [(PLPhotoLibraryIdentifier *)self userDescription];
  [coderCopy encodeObject:userDescription forKey:@"UserDescription"];

  uuid = [(PLPhotoLibraryIdentifier *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"UUID"];

  path = [(PLPhotoLibraryIdentifier *)self path];
  [coderCopy encodeObject:path forKey:@"Path"];

  containerIdentifier = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  [coderCopy encodeObject:containerIdentifier forKey:@"ContainerIdentifier"];
}

- (PLPhotoLibraryIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PLPhotoLibraryIdentifier;
  v5 = [(PLPhotoLibraryIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UserDescription"];
    userDescription = v5->_userDescription;
    v5->_userDescription = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
    path = v5->_path;
    v5->_path = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v14;
  }

  return v5;
}

@end