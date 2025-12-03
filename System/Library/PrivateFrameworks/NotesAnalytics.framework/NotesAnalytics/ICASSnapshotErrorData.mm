@interface ICASSnapshotErrorData
- (ICASSnapshotErrorData)initWithErrorDomain:(id)domain errorCode:(id)code;
- (id)toDict;
@end

@implementation ICASSnapshotErrorData

- (ICASSnapshotErrorData)initWithErrorDomain:(id)domain errorCode:(id)code
{
  domainCopy = domain;
  codeCopy = code;
  v12.receiver = self;
  v12.super_class = ICASSnapshotErrorData;
  v9 = [(ICASSnapshotErrorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_errorDomain, domain);
    objc_storeStrong(&v10->_errorCode, code);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"errorDomain";
  errorDomain = [(ICASSnapshotErrorData *)self errorDomain];
  if (errorDomain)
  {
    errorDomain2 = [(ICASSnapshotErrorData *)self errorDomain];
  }

  else
  {
    errorDomain2 = objc_opt_new();
  }

  v5 = errorDomain2;
  v12[1] = @"errorCode";
  v13[0] = errorDomain2;
  errorCode = [(ICASSnapshotErrorData *)self errorCode];
  if (errorCode)
  {
    errorCode2 = [(ICASSnapshotErrorData *)self errorCode];
  }

  else
  {
    errorCode2 = objc_opt_new();
  }

  v8 = errorCode2;
  v13[1] = errorCode2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end