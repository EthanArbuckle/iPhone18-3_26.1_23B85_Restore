@interface ML3ClientImportSessionConfiguration
- (ML3ClientImportSessionConfiguration)init;
- (ML3ClientImportSessionConfiguration)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ML3ClientImportSessionConfiguration

- (void)encodeWithCoder:(id)coder
{
  libraryPath = self->_libraryPath;
  coderCopy = coder;
  [coderCopy encodeObject:libraryPath forKey:@"libraryPath"];
  [coderCopy encodeInt32:self->_sourceType forKey:@"sourceType"];
  [coderCopy encodeBool:self->_allowAccountMerging forKey:@"allowAccountMerging"];
  [coderCopy encodeObject:self->_privacyContext forKey:@"privacyContext"];
  [coderCopy encodeInt32:LODWORD(self->_operationCount) forKey:@"operationCount"];
  [coderCopy encodeBool:self->_shouldLibraryAdd forKey:@"shouldLibraryAdd"];
}

- (ML3ClientImportSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = ML3ClientImportSessionConfiguration;
  v5 = [(ML3ClientImportSessionConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"libraryPath"];
    libraryPath = v5->_libraryPath;
    v5->_libraryPath = v6;

    v5->_sourceType = [coderCopy decodeInt32ForKey:@"sourceType"];
    v5->_allowAccountMerging = [coderCopy decodeBoolForKey:@"allowAccountMerging"];
    v5->_privacyContext = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"privacyContext"];
    v5->_operationCount = [coderCopy decodeInt32ForKey:@"operationCount"];
    v5->_shouldLibraryAdd = [coderCopy decodeBoolForKey:@"shouldLibraryAdd"];
  }

  return v5;
}

- (ML3ClientImportSessionConfiguration)init
{
  v6.receiver = self;
  v6.super_class = ML3ClientImportSessionConfiguration;
  v2 = [(ML3ClientImportSessionConfiguration *)&v6 init];
  if (v2)
  {
    v3 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
    libraryPath = v2->_libraryPath;
    v2->_libraryPath = v3;

    v2->_sourceType = 0;
    v2->_allowAccountMerging = 1;
    v2->_privacyContext = +[ML3DatabasePrivacyContext sharedContext];
    v2->_shouldLibraryAdd = 0;
  }

  return v2;
}

@end