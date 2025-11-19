@interface DCBGSTask
- (DCBGSTask)initWithTaskIdentifier:(id)a3 observerIdentifier:(id)a4;
@end

@implementation DCBGSTask

- (DCBGSTask)initWithTaskIdentifier:(id)a3 observerIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = DCBGSTask;
  v8 = [(DCBGSTask *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(DCBGSTask *)v8 setTaskID:v6];
    [(DCBGSTask *)v9 setObserverID:v7];
  }

  return v9;
}

@end