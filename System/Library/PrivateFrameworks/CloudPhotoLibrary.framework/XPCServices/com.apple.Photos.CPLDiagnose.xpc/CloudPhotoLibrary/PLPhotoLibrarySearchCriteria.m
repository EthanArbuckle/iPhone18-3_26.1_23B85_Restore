@interface PLPhotoLibrarySearchCriteria
- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PLPhotoLibrarySearchCriteria

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PLPhotoLibrarySearchCriteria *)self uuid];
  [v4 encodeObject:v5 forKey:@"uuid"];

  [v4 encodeInteger:-[PLPhotoLibrarySearchCriteria domain](self forKey:{"domain"), @"domain"}];
  v6 = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  [v4 encodeObject:v6 forKey:@"containerIdentifier"];

  v7 = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  [v4 encodeObject:v7 forKey:@"internalTestOptions"];
}

- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = PLPhotoLibrarySearchCriteria;
  v5 = [(PLPhotoLibrarySearchCriteria *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_domain = [v4 decodeIntegerForKey:@"domain"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v8;

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"internalTestOptions"];
    internalTestOptions = v5->_internalTestOptions;
    v5->_internalTestOptions = v13;
  }

  return v5;
}

@end