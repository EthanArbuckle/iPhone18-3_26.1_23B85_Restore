@interface GTDisplayRequestToken
- (GTDisplayRequestToken)initWithID:(unint64_t)d;
@end

@implementation GTDisplayRequestToken

- (GTDisplayRequestToken)initWithID:(unint64_t)d
{
  v10.receiver = self;
  v10.super_class = GTDisplayRequestToken;
  v4 = [(GTDisplayRequestToken *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_requestID = d;
    v6 = dispatch_semaphore_create(0);
    sem = v5->_sem;
    v5->_sem = v6;

    v8 = v5;
  }

  return v5;
}

@end