@interface DKMutableDiagnosticResult
- (DKMutableDiagnosticResult)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation DKMutableDiagnosticResult

- (DKMutableDiagnosticResult)init
{
  v11.receiver = self;
  v11.super_class = DKMutableDiagnosticResult;
  v2 = [(DKDiagnosticResult *)&v11 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInt:4294966395];
    statusCode = v2->_statusCode;
    v2->_statusCode = v3;

    data = v2->_data;
    v2->_data = MEMORY[0x277CBEC10];

    array = [MEMORY[0x277CBEA60] array];
    files = v2->_files;
    v2->_files = array;

    array2 = [MEMORY[0x277CBEA60] array];
    fileSandboxTokens = v2->_fileSandboxTokens;
    v2->_fileSandboxTokens = array2;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [DKDiagnosticResult allocWithZone:zone];

  return [(DKDiagnosticResult *)v4 initWithMutableResult:self];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v11.receiver = self;
  v11.super_class = DKMutableDiagnosticResult;
  v5 = [(DKDiagnosticResult *)&v11 mutableCopyWithZone:?];
  v6 = [(NSDictionary *)self->_data mutableCopyWithZone:zone];
  [v5 setData:v6];

  v7 = [(NSArray *)self->_files mutableCopyWithZone:zone];
  [v5 setFiles:v7];

  v8 = [(NSArray *)self->_fileSandboxTokens mutableCopyWithZone:zone];
  [v5 setFileSandboxTokens:v8];

  [v5 setStatusCode:self->_statusCode];
  v9 = [(NSArray *)self->_uploadStatus mutableCopyWithZone:zone];
  [v5 setUploadStatus:v9];

  return v5;
}

@end