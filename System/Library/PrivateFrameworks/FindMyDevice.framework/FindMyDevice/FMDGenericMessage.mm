@interface FMDGenericMessage
- (FMDGenericMessage)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDGenericMessage

- (FMDGenericMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = FMDGenericMessage;
  v5 = [(FMDGenericMessage *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_vibrate);
    -[FMDGenericMessage setVibrate:](v5, "setVibrate:", [coderCopy decodeBoolForKey:v6]);

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_soundName);
    v9 = [coderCopy decodeObjectOfClass:v7 forKey:v8];
    [(FMDGenericMessage *)v5 setSoundName:v9];

    v10 = NSStringFromSelector(sel_soundDuration);
    -[FMDGenericMessage setSoundDuration:](v5, "setSoundDuration:", [coderCopy decodeIntForKey:v10]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  vibrate = [(FMDGenericMessage *)self vibrate];
  v6 = NSStringFromSelector(sel_vibrate);
  [coderCopy encodeBool:vibrate forKey:v6];

  soundName = [(FMDGenericMessage *)self soundName];
  v8 = NSStringFromSelector(sel_soundName);
  [coderCopy encodeObject:soundName forKey:v8];

  soundDuration = [(FMDGenericMessage *)self soundDuration];
  v10 = NSStringFromSelector(sel_soundDuration);
  [coderCopy encodeInt:soundDuration forKey:v10];
}

@end