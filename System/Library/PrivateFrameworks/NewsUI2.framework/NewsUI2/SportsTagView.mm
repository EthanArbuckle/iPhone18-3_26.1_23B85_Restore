@interface SportsTagView
- (NSArray)accessibilityCustomActions;
- (void)setAccessibilityCustomActions:(id)actions;
@end

@implementation SportsTagView

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_218EDB43C();

  if (v3)
  {
    sub_218C957B0();
    v4 = sub_219BF5904();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setAccessibilityCustomActions:(id)actions
{
  ObjectType = swift_getObjectType();
  if (actions)
  {
    sub_218C957B0();
    sub_219BF5924();
    selfCopy = self;
    actions = sub_219BF5904();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(SportsTagView *)&v8 setAccessibilityCustomActions:actions];
}

@end