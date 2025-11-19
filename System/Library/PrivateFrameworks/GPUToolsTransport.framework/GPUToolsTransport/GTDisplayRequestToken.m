@interface GTDisplayRequestToken
- (GTDisplayRequestToken)initWithID:(unint64_t)a3;
@end

@implementation GTDisplayRequestToken

- (GTDisplayRequestToken)initWithID:(unint64_t)a3
{
  v10.receiver = self;
  v10.super_class = GTDisplayRequestToken;
  v4 = [(GTDisplayRequestToken *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestID = a3;
    v6 = dispatch_semaphore_create(0);
    sem = v5->_sem;
    v5->_sem = v6;

    v8 = v5;
  }

  return v5;
}

@end