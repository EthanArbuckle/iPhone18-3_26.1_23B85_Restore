@interface CNQualityOfServiceSchedulerDecorator
- (CNQualityOfServiceSchedulerDecorator)initWithScheduler:(id)scheduler qualityOfService:(unint64_t)service;
- (double)timestamp;
- (id)afterDelay:(double)delay performBlock:(id)block;
- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service;
- (id)performCancelableBlock:(id)block;
- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service;
- (void)performBlock:(id)block;
- (void)performBlock:(id)block qualityOfService:(unint64_t)service;
@end

@implementation CNQualityOfServiceSchedulerDecorator

- (CNQualityOfServiceSchedulerDecorator)initWithScheduler:(id)scheduler qualityOfService:(unint64_t)service
{
  schedulerCopy = scheduler;
  v12.receiver = self;
  v12.super_class = CNQualityOfServiceSchedulerDecorator;
  v8 = [(CNQualityOfServiceSchedulerDecorator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scheduler, scheduler);
    v9->_qualityOfService = service;
    v10 = v9;
  }

  return v9;
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  [scheduler performBlock:blockCopy qualityOfService:{-[CNQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];
}

- (void)performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  [scheduler performBlock:blockCopy qualityOfService:service];
}

- (id)performCancelableBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v6 = [scheduler performCancelableBlock:blockCopy qualityOfService:{-[CNQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];

  return v6;
}

- (id)performCancelableBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [scheduler performCancelableBlock:blockCopy qualityOfService:service];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  scheduler = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [scheduler afterDelay:blockCopy performBlock:-[CNQualityOfServiceSchedulerDecorator qualityOfService](self qualityOfService:{"qualityOfService"), delay}];

  return v8;
}

- (id)afterDelay:(double)delay performBlock:(id)block qualityOfService:(unint64_t)service
{
  blockCopy = block;
  scheduler = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v10 = [scheduler afterDelay:blockCopy performBlock:service qualityOfService:delay];

  return v10;
}

- (double)timestamp
{
  scheduler = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  [scheduler timestamp];
  v4 = v3;

  return v4;
}

@end