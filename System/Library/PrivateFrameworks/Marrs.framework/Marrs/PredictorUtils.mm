@interface PredictorUtils
+ (id)getInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code;
+ (id)getPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code;
+ (int64_t)handleInitException:(exception_ptr)exception;
+ (int64_t)handlePredictException:(exception_ptr)exception;
+ (void)reportInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale;
+ (void)reportPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale;
@end

@implementation PredictorUtils

+ (id)getPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code
{
  v15[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  domainCopy = domain;
  if (code)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prediction failed with %@", nameCopy, *MEMORY[0x277CCA450]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    code = [v9 initWithDomain:domainCopy code:code userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return code;
}

+ (id)getInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code
{
  v15[1] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  domainCopy = domain;
  if (code)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to intialize %@", nameCopy, *MEMORY[0x277CCA450]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    code = [v9 initWithDomain:domainCopy code:code userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return code;
}

+ (void)reportPredictStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale
{
  localeCopy = locale;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.Prediction", domain, name];
  v10 = localeCopy;
  AnalyticsSendEventLazy();
}

id __74__PredictorUtils_reportPredictStatusWithPredictorName_domain_code_locale___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = @"failed";
  if (!*(a1 + 40))
  {
    v2 = @"success";
  }

  v10[0] = v2;
  v9[0] = @"outcome";
  v9[1] = @"statusCode";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v4 = [v3 stringValue];
  v9[2] = @"locale";
  v5 = *(a1 + 32);
  v10[1] = v4;
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (void)reportInitStatusWithPredictorName:(id)name domain:(id)domain code:(int64_t)code locale:(id)locale
{
  localeCopy = locale;
  name = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.Initialization", domain, name];
  v10 = localeCopy;
  AnalyticsSendEventLazy();
}

id __71__PredictorUtils_reportInitStatusWithPredictorName_domain_code_locale___block_invoke(uint64_t a1)
{
  v10[3] = *MEMORY[0x277D85DE8];
  v2 = @"failed";
  if (!*(a1 + 40))
  {
    v2 = @"success";
  }

  v10[0] = v2;
  v9[0] = @"outcome";
  v9[1] = @"statusCode";
  v3 = [MEMORY[0x277CCABB0] numberWithInt:?];
  v4 = [v3 stringValue];
  v9[2] = @"locale";
  v5 = *(a1 + 32);
  v10[1] = v4;
  v10[2] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (int64_t)handlePredictException:(exception_ptr)exception
{
  v7 = *MEMORY[0x277D85DE8];
  if (*exception.var0)
  {
    std::exception_ptr::exception_ptr(&v6, exception.var0);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  result = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (int64_t)handleInitException:(exception_ptr)exception
{
  v7 = *MEMORY[0x277D85DE8];
  if (*exception.var0)
  {
    std::exception_ptr::exception_ptr(&v6, exception.var0);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  result = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

@end