@interface FACacheImageMarqueeOperationWrapper
- (FACacheImageMarqueeOperationWrapper)initWithFamilyCircle:(id)a3;
- (void)createAndCacheDataWithCompletion:(id)a3;
- (void)generateMarqueeWith:(unint64_t)a3;
@end

@implementation FACacheImageMarqueeOperationWrapper

- (FACacheImageMarqueeOperationWrapper)initWithFamilyCircle:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = FACacheImageMarqueeOperationWrapper;
  v5 = [(FACacheImageMarqueeOperationWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[FACacheImageMarqueeOperation alloc] initWithFamilyCircle:v4];
    cacheImageOperation = v5->_cacheImageOperation;
    v5->_cacheImageOperation = v6;
  }

  return v5;
}

- (void)createAndCacheDataWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "FACacheImageMarqueeOperationWrapper createAndCacheDataWithCompletion", v6, 2u);
  }

  [(FACacheImageMarqueeOperation *)self->_cacheImageOperation createAndCacheDataWithCompletionHandler:v4];
}

- (void)generateMarqueeWith:(unint64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  if (a3 < 3 || a3 == 1000)
  {
    v5 = @"Return-Valid-Cache-Else-Load";
  }

  else
  {
    v5 = @"unknown";
  }

  v6 = _FALogSystem();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v5;
    _os_log_impl(&dword_21BB35000, v6, OS_LOG_TYPE_DEFAULT, "FACacheImageMarqueeOperationWrapper createAndCacheData with cachePolicy %@", &v8, 0xCu);
  }

  [(FACacheImageMarqueeOperation *)self->_cacheImageOperation generateMarqueeWith:a3];
  v7 = *MEMORY[0x277D85DE8];
}

@end