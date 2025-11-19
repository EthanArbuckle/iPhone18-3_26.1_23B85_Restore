@interface ML3ClientImportSessionConfiguration
- (ML3ClientImportSessionConfiguration)init;
- (ML3ClientImportSessionConfiguration)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ML3ClientImportSessionConfiguration

- (void)encodeWithCoder:(id)a3
{
  libraryPath = self->_libraryPath;
  v5 = a3;
  [v5 encodeObject:libraryPath forKey:@"libraryPath"];
  [v5 encodeInt32:self->_sourceType forKey:@"sourceType"];
  [v5 encodeBool:self->_allowAccountMerging forKey:@"allowAccountMerging"];
  [v5 encodeObject:self->_privacyContext forKey:@"privacyContext"];
  [v5 encodeInt32:LODWORD(self->_operationCount) forKey:@"operationCount"];
  [v5 encodeBool:self->_shouldLibraryAdd forKey:@"shouldLibraryAdd"];
}

- (ML3ClientImportSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ML3ClientImportSessionConfiguration;
  v5 = [(ML3ClientImportSessionConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"libraryPath"];
    libraryPath = v5->_libraryPath;
    v5->_libraryPath = v6;

    v5->_sourceType = [v4 decodeInt32ForKey:@"sourceType"];
    v5->_allowAccountMerging = [v4 decodeBoolForKey:@"allowAccountMerging"];
    v5->_privacyContext = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"privacyContext"];
    v5->_operationCount = [v4 decodeInt32ForKey:@"operationCount"];
    v5->_shouldLibraryAdd = [v4 decodeBoolForKey:@"shouldLibraryAdd"];
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