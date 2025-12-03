@interface TCTaggedMessage
+ (id)taggedMessageWithMessageText:(id)text;
- (TCTaggedMessage)initWithMessageText:(id)text;
@end

@implementation TCTaggedMessage

+ (id)taggedMessageWithMessageText:(id)text
{
  textCopy = text;
  v5 = [[self alloc] initWithMessageText:textCopy];

  return v5;
}

- (TCTaggedMessage)initWithMessageText:(id)text
{
  textCopy = text;
  v11.receiver = self;
  v11.super_class = TCTaggedMessage;
  v5 = [(TCTaggedMessage *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = [TCTaggedMessage initWithMessageText:]::currentTag++;
    v5->mMessageTag = v7;
    v8 = [textCopy copy];
    mMessageText = v6->mMessageText;
    v6->mMessageText = v8;
  }

  return v6;
}

@end