@interface BMRemindersContentStream
- (BMRemindersContentStream)init;
@end

@implementation BMRemindersContentStream

- (BMRemindersContentStream)init
{
  v3 = [(BMRemindersContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:v3 eventClass:objc_opt_class()];

  return v4;
}

@end