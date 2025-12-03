@interface MusicKit_SoftLinking_MPServerObjectDatabaseImportResult
- (id)_initWithUnderlyingImportResult:(id)result;
@end

@implementation MusicKit_SoftLinking_MPServerObjectDatabaseImportResult

- (id)_initWithUnderlyingImportResult:(id)result
{
  resultCopy = result;
  v9.receiver = self;
  v9.super_class = MusicKit_SoftLinking_MPServerObjectDatabaseImportResult;
  v6 = [(MusicKit_SoftLinking_MPServerObjectDatabaseImportResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingImportResult, result);
  }

  return v7;
}

@end