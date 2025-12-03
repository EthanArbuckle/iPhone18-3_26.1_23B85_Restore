@interface BMMessagesContentStream
- (BMMessagesContentStream)init;
@end

@implementation BMMessagesContentStream

- (BMMessagesContentStream)init
{
  identifier = [(BMMessagesContentStream *)self identifier];
  v4 = [(BMContentStream *)self initWithStreamIdentifier:identifier eventClass:objc_opt_class()];

  return v4;
}

@end