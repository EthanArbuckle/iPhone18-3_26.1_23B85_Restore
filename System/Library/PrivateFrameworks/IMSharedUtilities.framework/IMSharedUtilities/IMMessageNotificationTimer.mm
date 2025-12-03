@interface IMMessageNotificationTimer
- (IMMessageNotificationTimer)initWithDate:(id)date;
- (void)dealloc;
- (void)reduceNumberDingsLeft;
@end

@implementation IMMessageNotificationTimer

- (IMMessageNotificationTimer)initWithDate:(id)date
{
  v6.receiver = self;
  v6.super_class = IMMessageNotificationTimer;
  v4 = [(IMMessageNotificationTimer *)&v6 init];
  if (v4)
  {
    v4->_date = date;
    v4->_numberDingsLeft = &unk_1F1BFA778;
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = IMMessageNotificationTimer;
  [(IMMessageNotificationTimer *)&v3 dealloc];
}

- (void)reduceNumberDingsLeft
{
  if ([(NSNumber *)self->_numberDingsLeft intValue]>= 1)
  {
    self->_numberDingsLeft = [MEMORY[0x1E696AD98] numberWithInt:{-[NSNumber intValue](self->_numberDingsLeft, "intValue") - 1}];
  }
}

@end