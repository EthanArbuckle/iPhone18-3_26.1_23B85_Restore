@interface SportsTagView
- (NSArray)accessibilityCustomActions;
- (void)setAccessibilityCustomActions:(id)a3;
@end

@implementation SportsTagView

- (NSArray)accessibilityCustomActions
{
  v2 = self;
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

- (void)setAccessibilityCustomActions:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    sub_218C957B0();
    sub_219BF5924();
    v6 = self;
    a3 = sub_219BF5904();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(SportsTagView *)&v8 setAccessibilityCustomActions:a3];
}

@end