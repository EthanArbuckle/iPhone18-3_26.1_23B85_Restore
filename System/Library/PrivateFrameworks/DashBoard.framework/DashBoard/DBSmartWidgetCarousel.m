@interface DBSmartWidgetCarousel
- (BOOL)carouselForeground;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (BOOL)isShowingDecorations;
- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithEnvironment:(id)a3 engine:(id)a4 predictedSmartSize:(CGSize)a5;
- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithNibName:(id)a3 bundle:(id)a4;
- (id)decorationsStateChanged;
- (id)linearFocusItems;
- (void)_handleLongPressGesture:(id)a3;
- (void)_handleLongPressKnobGesture:(id)a3;
- (void)_handleTapGesture;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)prepareInitialPredictionsWithCompletion:(id)a3;
- (void)setCarouselForeground:(BOOL)a3;
- (void)setDecorationsStateChanged:(id)a3;
- (void)setIsShowingDecorations:(BOOL)a3;
- (void)updateCarouselElements;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)widgetViewTapped;
@end

@implementation DBSmartWidgetCarousel

- (BOOL)isShowingDecorations
{
  v3 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsShowingDecorations:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
  swift_beginAccess();
  *(self + v5) = a3;
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x168);
  v7 = self;
  v8 = v6();
  if (v8)
  {
    v9 = v8;
    v8(*(self + v5));

    sub_248167864(v9);
  }

  else
  {
  }
}

- (id)decorationsStateChanged
{
  v2 = (self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_decorationsStateChanged);
  swift_beginAccess();
  if (*v2)
  {
    v3 = v2[1];
    aBlock[4] = *v2;
    aBlock[5] = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24824BBE0;
    aBlock[3] = &block_descriptor_74;
    v4 = _Block_copy(aBlock);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setDecorationsStateChanged:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_248272D08;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_decorationsStateChanged);
  swift_beginAccess();
  v7 = *v6;
  *v6 = v4;
  v6[1] = v5;
  v8 = self;
  sub_248167864(v7);
}

- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithEnvironment:(id)a3 engine:(id)a4 predictedSmartSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  swift_unknownObjectRetain();
  return DBSmartWidgetCarousel.init(environment:engine:predictedSmartSize:)(width, height, a3, a4);
}

- (void)prepareInitialPredictionsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  v7 = *(self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  *v6 = sub_24825D51C;
  v6[1] = v5;
  v8 = self;

  sub_248167864(v7);
  sub_2483682F8();
}

- (BOOL)carouselForeground
{
  v3 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselForeground;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCarouselForeground:(BOOL)a3
{
  v4 = self;
  DBSmartWidgetCarousel.carouselForeground.setter(a3);
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  DBSmartWidgetCarousel.viewWillAppear(_:)(a3);
}

- (id)linearFocusItems
{
  v2 = self;
  v3.super.isa = DBSmartWidgetCarousel.linearFocusItems()().super.isa;

  return v3.super.isa;
}

- (void)widgetViewTapped
{
  if (*(self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {
    v2 = self;

    sub_2483819B0();
  }
}

- (void)updateCarouselElements
{
  v2 = self;
  DBSmartWidgetCarousel.updateCarouselElements()();
}

- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  DBSmartWidgetCarousel._wheelChanged(with:)(v9);
}

- (void)viewDidLoad
{
  v2 = self;
  DBSmartWidgetCarousel.viewDidLoad()();
}

- (void)_handleLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24836A200(v4);
}

- (void)_handleLongPressKnobGesture:(id)a3
{
  v4 = a3;
  v10 = self;
  v5 = [(DBSmartWidgetCarousel *)v10 parentViewController];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 view];
    if (!v7)
    {
      __break(1u);
      return;
    }

    v8 = v7;
    v9 = [v7 isFocused];

    if (v9)
    {
      [(DBSmartWidgetCarousel *)v10 _handleLongPressGesture:v4];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(DBSmartWidgetCarousel *)v5 view];
  if (v6)
  {
    v7 = v6;
    [v6 bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    v16 = [(DBSmartWidgetCarousel *)v5 view];
    [v4 locationInView_];
    v18 = v17;
    v20 = v19;

    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    v22.x = v18;
    v22.y = v20;
    LOBYTE(v16) = CGRectContainsPoint(v23, v22);

    LOBYTE(v6) = v16;
  }

  else
  {
    __break(1u);
  }

  return v6;
}

- (void)_handleTapGesture
{
  v2 = self;
  sub_24836AF2C();
}

@end