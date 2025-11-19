@interface CNQualityOfServiceSchedulerDecorator
- (CNQualityOfServiceSchedulerDecorator)initWithScheduler:(id)a3 qualityOfService:(unint64_t)a4;
- (double)timestamp;
- (id)afterDelay:(double)a3 performBlock:(id)a4;
- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5;
- (id)performCancelableBlock:(id)a3;
- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4;
- (void)performBlock:(id)a3;
- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4;
@end

@implementation CNQualityOfServiceSchedulerDecorator

- (CNQualityOfServiceSchedulerDecorator)initWithScheduler:(id)a3 qualityOfService:(unint64_t)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = CNQualityOfServiceSchedulerDecorator;
  v8 = [(CNQualityOfServiceSchedulerDecorator *)&v12 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_scheduler, a3);
    v9->_qualityOfService = a4;
    v10 = v9;
  }

  return v9;
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  [v5 performBlock:v4 qualityOfService:{-[CNQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];
}

- (void)performBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  [v7 performBlock:v6 qualityOfService:a4];
}

- (id)performCancelableBlock:(id)a3
{
  v4 = a3;
  v5 = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v6 = [v5 performCancelableBlock:v4 qualityOfService:{-[CNQualityOfServiceSchedulerDecorator qualityOfService](self, "qualityOfService")}];

  return v6;
}

- (id)performCancelableBlock:(id)a3 qualityOfService:(unint64_t)a4
{
  v6 = a3;
  v7 = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [v7 performCancelableBlock:v6 qualityOfService:a4];

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4
{
  v6 = a4;
  v7 = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v8 = [v7 afterDelay:v6 performBlock:-[CNQualityOfServiceSchedulerDecorator qualityOfService](self qualityOfService:{"qualityOfService"), a3}];

  return v8;
}

- (id)afterDelay:(double)a3 performBlock:(id)a4 qualityOfService:(unint64_t)a5
{
  v8 = a4;
  v9 = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  v10 = [v9 afterDelay:v8 performBlock:a5 qualityOfService:a3];

  return v10;
}

- (double)timestamp
{
  v2 = [(CNQualityOfServiceSchedulerDecorator *)self scheduler];
  [v2 timestamp];
  v4 = v3;

  return v4;
}

@end