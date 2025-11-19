@interface IMBackgroundMessage
- (IMBackgroundMessage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMBackgroundMessage

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IMBackgroundMessage *)self messageText];
  [v4 encodeObject:v5 forKey:@"kIMBackgroundMessageMessageText"];
}

- (IMBackgroundMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IMBackgroundMessage;
  v5 = [(IMBackgroundMessage *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIMBackgroundMessageMessageText"];
    [(IMBackgroundMessage *)v5 setMessageText:v6];
  }

  return v5;
}

@end