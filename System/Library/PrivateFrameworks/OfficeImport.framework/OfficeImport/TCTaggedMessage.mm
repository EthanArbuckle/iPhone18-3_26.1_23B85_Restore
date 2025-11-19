@interface TCTaggedMessage
+ (id)taggedMessageWithMessageText:(id)a3;
- (TCTaggedMessage)initWithMessageText:(id)a3;
@end

@implementation TCTaggedMessage

+ (id)taggedMessageWithMessageText:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithMessageText:v4];

  return v5;
}

- (TCTaggedMessage)initWithMessageText:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = TCTaggedMessage;
  v5 = [(TCTaggedMessage *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = [TCTaggedMessage initWithMessageText:]::currentTag++;
    v5->mMessageTag = v7;
    v8 = [v4 copy];
    mMessageText = v6->mMessageText;
    v6->mMessageText = v8;
  }

  return v6;
}

@end