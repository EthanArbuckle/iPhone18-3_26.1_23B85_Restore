@interface DKDiagnosticResult
- (DKDiagnosticResult)init;
- (DKDiagnosticResult)initWithCoder:(id)coder;
- (DKDiagnosticResult)initWithMutableResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DKDiagnosticResult

- (DKDiagnosticResult)init
{
  v11.receiver = self;
  v11.super_class = DKDiagnosticResult;
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

- (DKDiagnosticResult)initWithMutableResult:(id)result
{
  resultCopy = result;
  v5 = [(DKDiagnosticResult *)self init];
  if (v5)
  {
    statusCode = [resultCopy statusCode];
    statusCode = v5->_statusCode;
    v5->_statusCode = statusCode;

    data = [resultCopy data];
    data = v5->_data;
    v5->_data = data;

    files = [resultCopy files];
    files = v5->_files;
    v5->_files = files;

    fileSandboxTokens = [resultCopy fileSandboxTokens];
    fileSandboxTokens = v5->_fileSandboxTokens;
    v5->_fileSandboxTokens = fileSandboxTokens;

    uploadStatus = [resultCopy uploadStatus];
    uploadStatus = v5->_uploadStatus;
    v5->_uploadStatus = uploadStatus;
  }

  return v5;
}

- (DKDiagnosticResult)initWithCoder:(id)coder
{
  v25 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [(DKDiagnosticResult *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v6;

    v8 = +[DKUtilities acceptableDecoderClasses];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"data"];
    data = v5->_data;
    v5->_data = v9;

    v11 = +[DKUtilities acceptableDecoderClasses];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"files"];
    files = v5->_files;
    v5->_files = v12;

    v14 = +[DKUtilities acceptableDecoderClasses];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"fileSandboxTokens"];
    fileSandboxTokens = v5->_fileSandboxTokens;
    v5->_fileSandboxTokens = v15;

    v17 = +[DKUtilities acceptableDecoderClasses];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"uploadStatus"];
    uploadStatus = v5->_uploadStatus;
    v5->_uploadStatus = v18;

    v20 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v5;
      _os_log_impl(&dword_248B9D000, v20, OS_LOG_TYPE_DEFAULT, "Doing decode of DKDiagnosticResult: %@", &v23, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Doing encode of DKDiagnosticResult: %@", buf, 0xCu);
  }

  statusCode = [(DKDiagnosticResult *)self statusCode];
  [coderCopy encodeObject:statusCode forKey:@"statusCode"];

  data = [(DKDiagnosticResult *)self data];
  v25 = 0;
  v8 = [data dropNonSerializableDataWithError:&v25];
  v9 = v25;
  [coderCopy encodeObject:v8 forKey:@"data"];

  files = [(DKDiagnosticResult *)self files];
  v24 = v9;
  v11 = [files dropNonSerializableDataWithError:&v24];
  v12 = v24;

  [coderCopy encodeObject:v11 forKey:@"files"];
  fileSandboxTokens = [(DKDiagnosticResult *)self fileSandboxTokens];
  v23 = v12;
  v14 = [fileSandboxTokens dropNonSerializableDataWithError:&v23];
  v15 = v23;

  [coderCopy encodeObject:v14 forKey:@"fileSandboxTokens"];
  uploadStatus = [(DKDiagnosticResult *)self uploadStatus];
  v22 = v15;
  v17 = [uploadStatus dropNonSerializableDataWithError:&v22];
  v18 = v22;

  [coderCopy encodeObject:v17 forKey:@"uploadStatus"];
  if (v18)
  {
    v19 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 description];
      *buf = 138412290;
      selfCopy = v20;
      _os_log_impl(&dword_248B9D000, v19, OS_LOG_TYPE_DEFAULT, "DKDiagnosticResult decoding error encountered: %@", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  statusCode = [(DKDiagnosticResult *)self statusCode];
  data = [(DKDiagnosticResult *)self data];
  files = [(DKDiagnosticResult *)self files];
  fileSandboxTokens = [(DKDiagnosticResult *)self fileSandboxTokens];
  uploadStatus = [(DKDiagnosticResult *)self uploadStatus];
  v9 = [v3 stringWithFormat:@"Status Code: %@, Data: %@, Files: %@, Sandbox Tokens: %@ Upload Status: %@", statusCode, data, files, fileSandboxTokens, uploadStatus];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSNumber *)self->_statusCode copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_data copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSArray *)self->_files copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSArray *)self->_fileSandboxTokens copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSArray *)self->_uploadStatus copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  v16 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    selfCopy = self;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_248B9D000, v16, OS_LOG_TYPE_DEFAULT, "Copied DKDiagnosticResult: %@ -> %@", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [+[DKMutableDiagnosticResult allocWithZone:](DKMutableDiagnosticResult init];
  v6 = [(NSDictionary *)self->_data mutableCopyWithZone:zone];
  [(DKMutableDiagnosticResult *)v5 setData:v6];

  v7 = [(NSArray *)self->_files mutableCopyWithZone:zone];
  [(DKMutableDiagnosticResult *)v5 setFiles:v7];

  v8 = [(NSArray *)self->_fileSandboxTokens mutableCopyWithZone:zone];
  [(DKMutableDiagnosticResult *)v5 setFileSandboxTokens:v8];

  [(DKMutableDiagnosticResult *)v5 setStatusCode:self->_statusCode];
  v9 = [(NSArray *)self->_uploadStatus mutableCopyWithZone:zone];
  [(DKMutableDiagnosticResult *)v5 setUploadStatus:v9];

  return v5;
}

@end