@interface DKDiagnosticResult
- (DKDiagnosticResult)init;
- (DKDiagnosticResult)initWithCoder:(id)a3;
- (DKDiagnosticResult)initWithMutableResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
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

    v6 = [MEMORY[0x277CBEA60] array];
    files = v2->_files;
    v2->_files = v6;

    v8 = [MEMORY[0x277CBEA60] array];
    fileSandboxTokens = v2->_fileSandboxTokens;
    v2->_fileSandboxTokens = v8;
  }

  return v2;
}

- (DKDiagnosticResult)initWithMutableResult:(id)a3
{
  v4 = a3;
  v5 = [(DKDiagnosticResult *)self init];
  if (v5)
  {
    v6 = [v4 statusCode];
    statusCode = v5->_statusCode;
    v5->_statusCode = v6;

    v8 = [v4 data];
    data = v5->_data;
    v5->_data = v8;

    v10 = [v4 files];
    files = v5->_files;
    v5->_files = v10;

    v12 = [v4 fileSandboxTokens];
    fileSandboxTokens = v5->_fileSandboxTokens;
    v5->_fileSandboxTokens = v12;

    v14 = [v4 uploadStatus];
    uploadStatus = v5->_uploadStatus;
    v5->_uploadStatus = v14;
  }

  return v5;
}

- (DKDiagnosticResult)initWithCoder:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(DKDiagnosticResult *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v6;

    v8 = +[DKUtilities acceptableDecoderClasses];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"data"];
    data = v5->_data;
    v5->_data = v9;

    v11 = +[DKUtilities acceptableDecoderClasses];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"files"];
    files = v5->_files;
    v5->_files = v12;

    v14 = +[DKUtilities acceptableDecoderClasses];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"fileSandboxTokens"];
    fileSandboxTokens = v5->_fileSandboxTokens;
    v5->_fileSandboxTokens = v15;

    v17 = +[DKUtilities acceptableDecoderClasses];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"uploadStatus"];
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

- (void)encodeWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = self;
    _os_log_impl(&dword_248B9D000, v5, OS_LOG_TYPE_DEFAULT, "Doing encode of DKDiagnosticResult: %@", buf, 0xCu);
  }

  v6 = [(DKDiagnosticResult *)self statusCode];
  [v4 encodeObject:v6 forKey:@"statusCode"];

  v7 = [(DKDiagnosticResult *)self data];
  v25 = 0;
  v8 = [v7 dropNonSerializableDataWithError:&v25];
  v9 = v25;
  [v4 encodeObject:v8 forKey:@"data"];

  v10 = [(DKDiagnosticResult *)self files];
  v24 = v9;
  v11 = [v10 dropNonSerializableDataWithError:&v24];
  v12 = v24;

  [v4 encodeObject:v11 forKey:@"files"];
  v13 = [(DKDiagnosticResult *)self fileSandboxTokens];
  v23 = v12;
  v14 = [v13 dropNonSerializableDataWithError:&v23];
  v15 = v23;

  [v4 encodeObject:v14 forKey:@"fileSandboxTokens"];
  v16 = [(DKDiagnosticResult *)self uploadStatus];
  v22 = v15;
  v17 = [v16 dropNonSerializableDataWithError:&v22];
  v18 = v22;

  [v4 encodeObject:v17 forKey:@"uploadStatus"];
  if (v18)
  {
    v19 = DiagnosticsKitLogHandleForCategory(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [v18 description];
      *buf = 138412290;
      v27 = v20;
      _os_log_impl(&dword_248B9D000, v19, OS_LOG_TYPE_DEFAULT, "DKDiagnosticResult decoding error encountered: %@", buf, 0xCu);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DKDiagnosticResult *)self statusCode];
  v5 = [(DKDiagnosticResult *)self data];
  v6 = [(DKDiagnosticResult *)self files];
  v7 = [(DKDiagnosticResult *)self fileSandboxTokens];
  v8 = [(DKDiagnosticResult *)self uploadStatus];
  v9 = [v3 stringWithFormat:@"Status Code: %@, Data: %@, Files: %@, Sandbox Tokens: %@ Upload Status: %@", v4, v5, v6, v7, v8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSNumber *)self->_statusCode copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSDictionary *)self->_data copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSArray *)self->_files copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSArray *)self->_fileSandboxTokens copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSArray *)self->_uploadStatus copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  v16 = DiagnosticsKitLogHandleForCategory(4);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 138412546;
    v20 = self;
    v21 = 2112;
    v22 = v5;
    _os_log_impl(&dword_248B9D000, v16, OS_LOG_TYPE_DEFAULT, "Copied DKDiagnosticResult: %@ -> %@", &v19, 0x16u);
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [+[DKMutableDiagnosticResult allocWithZone:](DKMutableDiagnosticResult init];
  v6 = [(NSDictionary *)self->_data mutableCopyWithZone:a3];
  [(DKMutableDiagnosticResult *)v5 setData:v6];

  v7 = [(NSArray *)self->_files mutableCopyWithZone:a3];
  [(DKMutableDiagnosticResult *)v5 setFiles:v7];

  v8 = [(NSArray *)self->_fileSandboxTokens mutableCopyWithZone:a3];
  [(DKMutableDiagnosticResult *)v5 setFileSandboxTokens:v8];

  [(DKMutableDiagnosticResult *)v5 setStatusCode:self->_statusCode];
  v9 = [(NSArray *)self->_uploadStatus mutableCopyWithZone:a3];
  [(DKMutableDiagnosticResult *)v5 setUploadStatus:v9];

  return v5;
}

@end