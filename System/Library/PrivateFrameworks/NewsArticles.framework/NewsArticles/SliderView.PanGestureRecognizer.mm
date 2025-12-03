@interface SliderView.PanGestureRecognizer
- (_TtCC12NewsArticles10SliderViewP33_9E8B7C024EAF79BE20F276F3609F182920PanGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)began withEvent:(id)event
{
  ObjectType = swift_getObjectType();
  sub_1D7992EFC(0, &qword_1EC9E9358);
  sub_1D7D26568();
  sub_1D7D309AC();
  eventCopy = event;
  selfCopy = self;
  v9 = sub_1D7D3099C();

  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(SliderView.PanGestureRecognizer *)&v10 touchesBegan:v9 withEvent:eventCopy];

  [(SliderView.PanGestureRecognizer *)selfCopy setState:1];
}

- (_TtCC12NewsArticles10SliderViewP33_9E8B7C024EAF79BE20F276F3609F182920PanGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1D7D24B08(v6, action);
}

@end