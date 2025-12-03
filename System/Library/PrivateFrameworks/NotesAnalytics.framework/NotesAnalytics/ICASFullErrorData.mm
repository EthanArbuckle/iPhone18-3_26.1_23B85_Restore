@interface ICASFullErrorData
- (ICASFullErrorData)initWithFullErrorCode:(id)code errorString:(id)string;
- (id)toDict;
@end

@implementation ICASFullErrorData

- (ICASFullErrorData)initWithFullErrorCode:(id)code errorString:(id)string
{
  codeCopy = code;
  stringCopy = string;
  v12.receiver = self;
  v12.super_class = ICASFullErrorData;
  v9 = [(ICASFullErrorData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_fullErrorCode, code);
    objc_storeStrong(&v10->_errorString, string);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"fullErrorCode";
  fullErrorCode = [(ICASFullErrorData *)self fullErrorCode];
  if (fullErrorCode)
  {
    fullErrorCode2 = [(ICASFullErrorData *)self fullErrorCode];
  }

  else
  {
    fullErrorCode2 = objc_opt_new();
  }

  v5 = fullErrorCode2;
  v12[1] = @"errorString";
  v13[0] = fullErrorCode2;
  errorString = [(ICASFullErrorData *)self errorString];
  if (errorString)
  {
    errorString2 = [(ICASFullErrorData *)self errorString];
  }

  else
  {
    errorString2 = objc_opt_new();
  }

  v8 = errorString2;
  v13[1] = errorString2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end