@interface ISIcon(CUIKIcon)
- (CUIKIcon)initWithDate:()CUIKIcon calendar:format:;
- (CUIKIcon)initWithDateComponents:()CUIKIcon calendar:format:forceNoTextEffects:;
@end

@implementation ISIcon(CUIKIcon)

- (CUIKIcon)initWithDate:()CUIKIcon calendar:format:
{
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8 && v9)
  {
    v11 = [[CUIKIcon alloc] initWithDate:v8 calendar:v9 format:a5];
  }

  else
  {
    v12 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ISIcon(CUIKIcon) initWithDate:v12 calendar:? format:?];
    }

    v11 = 0;
  }

  return v11;
}

- (CUIKIcon)initWithDateComponents:()CUIKIcon calendar:format:forceNoTextEffects:
{
  v10 = a3;
  v11 = a4;
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [[CUIKIcon alloc] initWithDateComponents:v10 calendar:v11 format:a5 forceNoTextEffects:a6];
  }

  else
  {
    v14 = +[CUIKLogSubsystem defaultCategory];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [ISIcon(CUIKIcon) initWithDateComponents:v14 calendar:? format:? forceNoTextEffects:?];
    }

    v13 = 0;
  }

  return v13;
}

@end