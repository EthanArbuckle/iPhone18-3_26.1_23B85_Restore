@interface AMDService
+ (id)sendReplyForBatchPEC:(id)c requestError:(id)error uuid:(id)uuid error:(id *)a6;
+ (id)sendReplyForBatchPIR:(id)r requestError:(id)error keywords:(id)keywords uuid:(id)uuid error:(id *)a7;
+ (id)sendReplyForPIRData:(id)data requestError:(id)error keyword:(id)keyword uuid:(id)uuid error:(id *)a7;
@end

@implementation AMDService

+ (id)sendReplyForPIRData:(id)data requestError:(id)error keyword:(id)keyword uuid:(id)uuid error:(id *)a7
{
  uuidCopy = uuid;
  keywordCopy = keyword;
  errorCopy = error;
  dataCopy = data;
  getAMDClientClass();
  v15 = objc_opt_new();
  v16 = [v15 sendPIRData:dataCopy forKeyword:keywordCopy withCallHandle:uuidCopy andRequestError:errorCopy error:a7];

  return v16;
}

+ (id)sendReplyForBatchPIR:(id)r requestError:(id)error keywords:(id)keywords uuid:(id)uuid error:(id *)a7
{
  uuidCopy = uuid;
  keywordsCopy = keywords;
  errorCopy = error;
  rCopy = r;
  getAMDClientClass();
  v15 = objc_opt_new();
  v16 = [v15 sendBatchedPIRData:rCopy forKeywords:keywordsCopy withCallHandle:uuidCopy andRequestError:errorCopy error:a7];

  return v16;
}

+ (id)sendReplyForBatchPEC:(id)c requestError:(id)error uuid:(id)uuid error:(id *)a6
{
  uuidCopy = uuid;
  errorCopy = error;
  cCopy = c;
  getAMDClientClass();
  v12 = objc_opt_new();
  v13 = [v12 sendBatchedPECSimilarityScores:cCopy withCallHandle:uuidCopy andRequestError:errorCopy error:a6];

  return v13;
}

@end