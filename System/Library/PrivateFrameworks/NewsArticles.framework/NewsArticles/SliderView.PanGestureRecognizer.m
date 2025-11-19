@interface SliderView.PanGestureRecognizer
- (_TtCC12NewsArticles10SliderViewP33_9E8B7C024EAF79BE20F276F3609F182920PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation SliderView.PanGestureRecognizer

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  ObjectType = swift_getObjectType();
  sub_1D7992EFC(0, &qword_1EC9E9358);
  sub_1D7D26568();
  sub_1D7D309AC();
  v7 = a4;
  v8 = self;
  v9 = sub_1D7D3099C();

  v10.receiver = v8;
  v10.super_class = ObjectType;
  [(SliderView.PanGestureRecognizer *)&v10 touchesBegan:v9 withEvent:v7];

  [(SliderView.PanGestureRecognizer *)v8 setState:1];
}

- (_TtCC12NewsArticles10SliderViewP33_9E8B7C024EAF79BE20F276F3609F182920PanGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1D7D3138C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1D7D24B08(v6, a4);
}

@end