@interface FMDGenericMessage
- (FMDGenericMessage)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDGenericMessage

- (FMDGenericMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = FMDGenericMessage;
  v5 = [(FMDGenericMessage *)&v12 init];
  if (v5)
  {
    v6 = NSStringFromSelector(sel_vibrate);
    -[FMDGenericMessage setVibrate:](v5, "setVibrate:", [v4 decodeBoolForKey:v6]);

    v7 = objc_opt_class();
    v8 = NSStringFromSelector(sel_soundName);
    v9 = [v4 decodeObjectOfClass:v7 forKey:v8];
    [(FMDGenericMessage *)v5 setSoundName:v9];

    v10 = NSStringFromSelector(sel_soundDuration);
    -[FMDGenericMessage setSoundDuration:](v5, "setSoundDuration:", [v4 decodeIntForKey:v10]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDGenericMessage *)self vibrate];
  v6 = NSStringFromSelector(sel_vibrate);
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(FMDGenericMessage *)self soundName];
  v8 = NSStringFromSelector(sel_soundName);
  [v4 encodeObject:v7 forKey:v8];

  v9 = [(FMDGenericMessage *)self soundDuration];
  v10 = NSStringFromSelector(sel_soundDuration);
  [v4 encodeInt:v9 forKey:v10];
}

@end