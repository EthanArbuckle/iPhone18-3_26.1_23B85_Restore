@interface MNNavTrayGuidanceEvent
- (MNNavTrayGuidanceEvent)init;
- (MNNavTrayGuidanceEvent)initWithCoder:(id)coder;
- (MNNavTrayGuidanceEvent)initWithGuidanceEvent:(id)event;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MNNavTrayGuidanceEvent

- (MNNavTrayGuidanceEvent)initWithGuidanceEvent:(id)event
{
  *(&self->super.isa + OBJC_IVAR___MNNavTrayGuidanceEvent__guidanceEvent) = event;
  v5.receiver = self;
  v5.super_class = MNNavTrayGuidanceEvent;
  eventCopy = event;
  return [(MNNavTrayGuidanceEvent *)&v5 init];
}

- (NSString)description
{
  selfCopy = self;
  MNNavTrayGuidanceEvent.description.getter();

  v3 = sub_1D32770B0();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  _guidanceEvent = [(MNNavTrayGuidanceEvent *)selfCopy _guidanceEvent];
  v6 = sub_1D32770B0();
  [coderCopy encodeObject:_guidanceEvent forKey:v6];
}

- (MNNavTrayGuidanceEvent)initWithCoder:(id)coder
{
  sub_1D3126084(0, &qword_1EC75CE08, 0x1E69A1C60);
  coderCopy = coder;
  *(&self->super.isa + OBJC_IVAR___MNNavTrayGuidanceEvent__guidanceEvent) = sub_1D32775C0();
  v8.receiver = self;
  v8.super_class = MNNavTrayGuidanceEvent;
  v6 = [(MNNavTrayGuidanceEvent *)&v8 init];

  return v6;
}

- (MNNavTrayGuidanceEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end