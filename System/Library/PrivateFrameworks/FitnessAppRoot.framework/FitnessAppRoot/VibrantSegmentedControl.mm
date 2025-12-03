@interface VibrantSegmentedControl
- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithCoder:(id)coder;
- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithItems:(id)items;
- (void)_highlightSegment:(int64_t)segment;
- (void)insertSegmentWithImage:(id)image atIndex:(int64_t)index animated:(BOOL)animated;
- (void)setImage:(id)image forSegmentAtIndex:(int64_t)index;
- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation VibrantSegmentedControl

- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
  result = sub_1E5AD0168();
  __break(1u);
  return result;
}

- (void)insertSegmentWithImage:(id)image atIndex:(int64_t)index animated:(BOOL)animated
{
  imageCopy = image;
  selfCopy = self;
  sub_1E5A9D1F0(image, index, animated);
}

- (void)setImage:(id)image forSegmentAtIndex:(int64_t)index
{
  imageCopy = image;
  selfCopy = self;
  sub_1E5A9D420(image, index);
}

- (void)setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  if (attributes)
  {
    type metadata accessor for Key(0);
    sub_1E5A9E124();
    attributesCopy = sub_1E5ACFAF8();
    selfCopy = self;
    v8 = sub_1E5ACFAE8();
  }

  else
  {
    selfCopy2 = self;
    v8 = 0;
  }

  v10.receiver = self;
  v10.super_class = type metadata accessor for VibrantSegmentedControl();
  [(VibrantSegmentedControl *)&v10 setTitleTextAttributes:v8 forState:state];

  sub_1E5A9DD68(attributesCopy, state);
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  sub_1E5A7C10C(0, &qword_1ED027020, 0x1E69DD190);
  sub_1E5A9E17C();
  v6 = sub_1E5ACFE28();
  eventCopy = event;
  selfCopy = self;
  sub_1E5A9D764(v6, event);
}

- (void)_highlightSegment:(int64_t)segment
{
  selfCopy = self;
  v5 = selfCopy;
  if (segment >= 1 && [(VibrantSegmentedControl *)selfCopy selectedSegmentIndex]!= segment)
  {
    *(&v5->super.super.super.super.super.isa + OBJC_IVAR____TtC14FitnessAppRoot23VibrantSegmentedControl_lastTouchStayedOnSelectedSegment) = 0;
  }

  v6.receiver = v5;
  v6.super_class = type metadata accessor for VibrantSegmentedControl();
  [(VibrantSegmentedControl *)&v6 _highlightSegment:segment];
}

- (_TtC14FitnessAppRoot23VibrantSegmentedControl)initWithItems:(id)items
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end