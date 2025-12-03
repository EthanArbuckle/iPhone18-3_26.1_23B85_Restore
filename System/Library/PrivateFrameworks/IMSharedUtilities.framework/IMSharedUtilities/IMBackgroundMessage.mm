@interface IMBackgroundMessage
- (IMBackgroundMessage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMBackgroundMessage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  messageText = [(IMBackgroundMessage *)self messageText];
  [coderCopy encodeObject:messageText forKey:@"kIMBackgroundMessageMessageText"];
}

- (IMBackgroundMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = IMBackgroundMessage;
  v5 = [(IMBackgroundMessage *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIMBackgroundMessageMessageText"];
    [(IMBackgroundMessage *)v5 setMessageText:v6];
  }

  return v5;
}

@end