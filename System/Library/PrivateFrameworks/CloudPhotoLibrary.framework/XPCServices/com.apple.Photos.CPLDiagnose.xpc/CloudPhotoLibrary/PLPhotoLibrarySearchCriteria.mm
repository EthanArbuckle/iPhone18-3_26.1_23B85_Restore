@interface PLPhotoLibrarySearchCriteria
- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PLPhotoLibrarySearchCriteria

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(PLPhotoLibrarySearchCriteria *)self uuid];
  [coderCopy encodeObject:uuid forKey:@"uuid"];

  [coderCopy encodeInteger:-[PLPhotoLibrarySearchCriteria domain](self forKey:{"domain"), @"domain"}];
  containerIdentifier = [(PLPhotoLibrarySearchCriteria *)self containerIdentifier];
  [coderCopy encodeObject:containerIdentifier forKey:@"containerIdentifier"];

  internalTestOptions = [(PLPhotoLibrarySearchCriteria *)self internalTestOptions];
  [coderCopy encodeObject:internalTestOptions forKey:@"internalTestOptions"];
}

- (PLPhotoLibrarySearchCriteria)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = PLPhotoLibrarySearchCriteria;
  v5 = [(PLPhotoLibrarySearchCriteria *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v5->_domain = [coderCopy decodeIntegerForKey:@"domain"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v8;

    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v10, v11, objc_opt_class(), 0];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"internalTestOptions"];
    internalTestOptions = v5->_internalTestOptions;
    v5->_internalTestOptions = v13;
  }

  return v5;
}

@end