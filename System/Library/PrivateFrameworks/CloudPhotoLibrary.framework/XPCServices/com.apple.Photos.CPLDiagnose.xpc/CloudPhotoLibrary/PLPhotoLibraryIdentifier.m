@interface PLPhotoLibraryIdentifier
- (PLPhotoLibraryIdentifier)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLPhotoLibraryIdentifier

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibraryIdentifier *)self name];
  [v4 encodeObject:v5 forKey:@"Name"];

  v6 = [(PLPhotoLibraryIdentifier *)self userDescription];
  [v4 encodeObject:v6 forKey:@"UserDescription"];

  v7 = [(PLPhotoLibraryIdentifier *)self uuid];
  [v4 encodeObject:v7 forKey:@"UUID"];

  v8 = [(PLPhotoLibraryIdentifier *)self path];
  [v4 encodeObject:v8 forKey:@"Path"];

  v9 = [(PLPhotoLibraryIdentifier *)self containerIdentifier];
  [v4 encodeObject:v9 forKey:@"ContainerIdentifier"];
}

- (PLPhotoLibraryIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PLPhotoLibraryIdentifier;
  v5 = [(PLPhotoLibraryIdentifier *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UserDescription"];
    userDescription = v5->_userDescription;
    v5->_userDescription = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
    uuid = v5->_uuid;
    v5->_uuid = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Path"];
    path = v5->_path;
    v5->_path = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ContainerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v14;
  }

  return v5;
}

@end