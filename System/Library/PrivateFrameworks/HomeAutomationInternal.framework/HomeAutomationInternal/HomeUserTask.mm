@interface HomeUserTask
- (HomeUserTask)initWithCoder:(id)coder;
- (HomeUserTask)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint;
@end

@implementation HomeUserTask

- (HomeUserTask)initWithIdentifier:(id)identifier displayString:(id)string pronunciationHint:(id)hint
{
  if (identifier)
  {
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = sub_252E36F34();
  v11 = v10;
  if (hint)
  {
    v12 = sub_252E36F34();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  return HomeUserTask.init(identifier:display:pronunciationHint:)(v6, v8, v9, v11, v12, v14);
}

- (HomeUserTask)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for HomeUserTask();
  coderCopy = coder;
  v5 = [(HomeUserTask *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end