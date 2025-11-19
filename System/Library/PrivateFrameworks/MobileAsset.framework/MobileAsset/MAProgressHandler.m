@interface MAProgressHandler
- (MAProgressHandler)initWithCallBack:(id)a3;
- (void)addCallBack:(id)a3;
@end

@implementation MAProgressHandler

- (MAProgressHandler)initWithCallBack:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MAProgressHandler;
  v5 = [(MAProgressHandler *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_notificationInterval = 1;
    v7 = objc_opt_new();
    callBackArray = v6->_callBackArray;
    v6->_callBackArray = v7;

    [(MAProgressHandler *)v6 addCallBack:v4];
  }

  return v6;
}

- (void)addCallBack:(id)a3
{
  if (a3)
  {
    v6 = [a3 copy];
    callBackArray = self->_callBackArray;
    v5 = MEMORY[0x19A8EC5D0]();
    [(NSMutableArray *)callBackArray addObject:v5];
  }
}

@end