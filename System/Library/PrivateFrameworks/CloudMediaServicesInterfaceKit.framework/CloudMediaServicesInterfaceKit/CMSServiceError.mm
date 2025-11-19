@interface CMSServiceError
+ (id)_supportedDomains;
+ (id)serviceError:(int64_t)a3 withUnderlyingIssue:(id)a4;
+ (id)serviceErrorFromCause:(id)a3;
@end

@implementation CMSServiceError

+ (id)serviceErrorFromCause:(id)a3
{
  v3 = a3;
  v4 = +[CMSServiceError _supportedDomains];
  v5 = [v3 domain];
  v6 = [v4 containsObject:v5];

  if (v6 && ([v3 domain], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqualToString:", @"com.apple.cloudmediaservices.errorDomain"), v7, v8) && (v9 = objc_msgSend(v3, "code"), (v9 - 1004) <= 5))
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sirikitcloudmedia.errorDomain" code:qword_2439C7098[v9 - 1004] userInfo:0];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)serviceError:(int64_t)a3 withUnderlyingIssue:(id)a4
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11 = *MEMORY[0x277CCA7E8];
  v12[0] = a4;
  v5 = MEMORY[0x277CBEAC0];
  v6 = a4;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"com.apple.sirikitcloudmedia.errorDomain" code:a3 userInfo:v7];

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

+ (id)_supportedDomains
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"com.apple.cloudmediaservices.errorDomain";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end