@interface FACacheImageMarqueeOperationWrapper
- (FACacheImageMarqueeOperationWrapper)initWithFamilyCircle:(id)circle;
- (void)createAndCacheDataWithCompletion:(id)completion;
- (void)generateMarqueeWith:(unint64_t)with;
@end

@implementation FACacheImageMarqueeOperationWrapper

- (FACacheImageMarqueeOperationWrapper)initWithFamilyCircle:(id)circle
{
  circleCopy = circle;
  v9.receiver = self;
  v9.super_class = FACacheImageMarqueeOperationWrapper;
  v5 = [(FACacheImageMarqueeOperationWrapper *)&v9 init];
  if (v5)
  {
    v6 = [[FACacheImageMarqueeOperation alloc] initWithFamilyCircle:circleCopy];
    cacheImageOperation = v5->_cacheImageOperation;
    v5->_cacheImageOperation = v6;
  }

  return v5;
}

- (void)createAndCacheDataWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _FALogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_21BB35000, v5, OS_LOG_TYPE_DEFAULT, "FACacheImageMarqueeOperationWrapper createAndCacheDataWithCompletion", v6, 2u);
  }

  [(FACacheImageMarqueeOperation *)self->_cacheImageOperation createAndCacheDataWithCompletionHandler:completionCopy];
}

- (void)generateMarqueeWith:(unint64_t)with
{
  v10 = *MEMORY[0x277D85DE8];
  if (with < 3 || with == 1000)
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

  [(FACacheImageMarqueeOperation *)self->_cacheImageOperation generateMarqueeWith:with];
  v7 = *MEMORY[0x277D85DE8];
}

@end