@interface BMRemindersContentStream
- (BMRemindersContentStream)init;
@end

@implementation BMRemindersContentStream

- (BMRemindersContentStream)init
{
  identifier = [(BMRemindersContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end