@interface DBSmartWidgetCarousel
- (BOOL)carouselForeground;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (BOOL)isShowingDecorations;
- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithEnvironment:(id)environment engine:(id)engine predictedSmartSize:(CGSize)size;
- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithNibName:(id)name bundle:(id)bundle;
- (id)decorationsStateChanged;
- (id)linearFocusItems;
- (void)_handleLongPressGesture:(id)gesture;
- (void)_handleLongPressKnobGesture:(id)gesture;
- (void)_handleTapGesture;
- (void)_wheelChangedWithEvent:(id)event;
- (void)prepareInitialPredictionsWithCompletion:(id)completion;
- (void)setCarouselForeground:(BOOL)foreground;
- (void)setDecorationsStateChanged:(id)changed;
- (void)setIsShowingDecorations:(BOOL)decorations;
- (void)updateCarouselElements;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)widgetViewTapped;
@end

@implementation DBSmartWidgetCarousel

- (BOOL)isShowingDecorations
{
  v3 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsShowingDecorations:(BOOL)decorations
{
  v5 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_isShowingDecorations;
  swift_beginAccess();
  *(self + v5) = decorations;
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x168);
  selfCopy = self;
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

- (void)setDecorationsStateChanged:(id)changed
{
  v4 = _Block_copy(changed);
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
  selfCopy = self;
  sub_248167864(v7);
}

- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithEnvironment:(id)environment engine:(id)engine predictedSmartSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  swift_unknownObjectRetain();
  return DBSmartWidgetCarousel.init(environment:engine:predictedSmartSize:)(width, height, environment, engine);
}

- (void)prepareInitialPredictionsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  v7 = *(self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_readyCompletion);
  *v6 = sub_24825D51C;
  v6[1] = v5;
  selfCopy = self;

  sub_248167864(v7);
  sub_2483682F8();
}

- (BOOL)carouselForeground
{
  v3 = OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_carouselForeground;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCarouselForeground:(BOOL)foreground
{
  selfCopy = self;
  DBSmartWidgetCarousel.carouselForeground.setter(foreground);
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  DBSmartWidgetCarousel.viewWillAppear(_:)(appear);
}

- (id)linearFocusItems
{
  selfCopy = self;
  v3.super.isa = DBSmartWidgetCarousel.linearFocusItems()().super.isa;

  return v3.super.isa;
}

- (void)widgetViewTapped
{
  if (*(self + OBJC_IVAR____TtC9DashBoard21DBSmartWidgetCarousel_model))
  {
    selfCopy = self;

    sub_2483819B0();
  }
}

- (void)updateCarouselElements
{
  selfCopy = self;
  DBSmartWidgetCarousel.updateCarouselElements()();
}

- (_TtC9DashBoard21DBSmartWidgetCarousel)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = event;
  DBSmartWidgetCarousel._wheelChanged(with:)(v9);
}

- (void)viewDidLoad
{
  selfCopy = self;
  DBSmartWidgetCarousel.viewDidLoad()();
}

- (void)_handleLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  sub_24836A200(gestureCopy);
}

- (void)_handleLongPressKnobGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  parentViewController = [(DBSmartWidgetCarousel *)selfCopy parentViewController];
  if (parentViewController)
  {
    v6 = parentViewController;
    view = [parentViewController view];
    if (!view)
    {
      __break(1u);
      return;
    }

    v8 = view;
    isFocused = [view isFocused];

    if (isFocused)
    {
      [(DBSmartWidgetCarousel *)selfCopy _handleLongPressGesture:gestureCopy];
    }
  }
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  view = [(DBSmartWidgetCarousel *)selfCopy view];
  if (view)
  {
    v7 = view;
    [view bounds];
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;

    view2 = [(DBSmartWidgetCarousel *)selfCopy view];
    [beginCopy locationInView_];
    v18 = v17;
    v20 = v19;

    v23.origin.x = v9;
    v23.origin.y = v11;
    v23.size.width = v13;
    v23.size.height = v15;
    v22.x = v18;
    v22.y = v20;
    LOBYTE(view2) = CGRectContainsPoint(v23, v22);

    LOBYTE(view) = view2;
  }

  else
  {
    __break(1u);
  }

  return view;
}

- (void)_handleTapGesture
{
  selfCopy = self;
  sub_24836AF2C();
}

@end