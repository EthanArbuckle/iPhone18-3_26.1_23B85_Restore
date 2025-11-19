@interface MBDomainTranscriptionSummary
- (MBDomainTranscriptionSummary)init;
@end

@implementation MBDomainTranscriptionSummary

- (MBDomainTranscriptionSummary)init
{
  v3.receiver = self;
  v3.super_class = MBDomainTranscriptionSummary;
  result = [(MBDomainTranscriptionSummary *)&v3 init];
  if (result)
  {
    result->_success = 0;
    *&result->_reusedAssetRecords = 0u;
    *&result->_unmodifiedDirectories = 0u;
    *&result->_unmodifiedSymlinks = 0u;
    *&result->_unmodifiedRegularFiles = 0u;
    *&result->_emptyDomainCount = 0u;
  }

  return result;
}

@end