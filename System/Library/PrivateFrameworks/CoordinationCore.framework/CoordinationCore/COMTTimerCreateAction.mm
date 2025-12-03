@interface COMTTimerCreateAction
- (COMTTimerCreateAction)initWithCoder:(id)coder;
- (COMTTimerCreateAction)initWithTimer:(id)timer;
- (void)encodeWithCoder:(id)coder;
@end

@implementation COMTTimerCreateAction

- (COMTTimerCreateAction)initWithTimer:(id)timer
{
  timerCopy = timer;
  v9.receiver = self;
  v9.super_class = COMTTimerCreateAction;
  v5 = [(COMTAction *)&v9 init];
  if (v5)
  {
    v6 = [timerCopy copy];
    timer = v5->_timer;
    v5->_timer = v6;
  }

  return v5;
}

- (COMTTimerCreateAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = COMTTimerCreateAction;
  v5 = [(COMTAction *)&v11 initWithCoder:coderCopy];
  if (!v5)
  {
    goto LABEL_4;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CT"];
  v7 = v6;
  if (v6)
  {
    v8 = [(COMTTimerCreateAction *)v6 copy];
    timer = v5->_timer;
    v5->_timer = v8;

LABEL_4:
    v7 = v5;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = COMTTimerCreateAction;
  coderCopy = coder;
  [(COMTAction *)&v6 encodeWithCoder:coderCopy];
  v5 = [(COMTTimerCreateAction *)self timer:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"CT"];
}

@end