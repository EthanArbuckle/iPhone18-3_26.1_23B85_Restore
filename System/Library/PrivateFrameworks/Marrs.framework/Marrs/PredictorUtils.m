@interface PredictorUtils
+ (id)getInitStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5;
+ (id)getPredictStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5;
+ (int64_t)handleInitException:(exception_ptr)a3;
+ (int64_t)handlePredictException:(exception_ptr)a3;
+ (void)reportInitStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5 locale:(id)a6;
+ (void)reportPredictStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5 locale:(id)a6;
@end

@implementation PredictorUtils

+ (id)getPredictStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Prediction failed with %@", v7, *MEMORY[0x277CCA450]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    a5 = [v9 initWithDomain:v8 code:a5 userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (id)getInitStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5
{
  v15[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (a5)
  {
    v9 = objc_alloc(MEMORY[0x277CCA9B8]);
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to intialize %@", v7, *MEMORY[0x277CCA450]];
    v15[0] = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    a5 = [v9 initWithDomain:v8 code:a5 userInfo:v11];
  }

  v12 = *MEMORY[0x277D85DE8];

  return a5;
}

+ (void)reportPredictStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5 locale:(id)a6
{
  v8 = a6;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.Prediction", a4, a3];
  v10 = v8;
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

+ (void)reportInitStatusWithPredictorName:(id)a3 domain:(id)a4 code:(int64_t)a5 locale:(id)a6
{
  v8 = a6;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.Initialization", a4, a3];
  v10 = v8;
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

+ (int64_t)handlePredictException:(exception_ptr)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a3.var0)
  {
    std::exception_ptr::exception_ptr(&v6, a3.var0);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  result = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

+ (int64_t)handleInitException:(exception_ptr)a3
{
  v7 = *MEMORY[0x277D85DE8];
  if (*a3.var0)
  {
    std::exception_ptr::exception_ptr(&v6, a3.var0);
    v5.__ptr_ = &v6;
    std::rethrow_exception(v5);
    __break(1u);
  }

  result = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

@end