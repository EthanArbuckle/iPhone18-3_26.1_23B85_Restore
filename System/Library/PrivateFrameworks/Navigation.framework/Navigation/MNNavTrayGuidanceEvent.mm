@interface MNNavTrayGuidanceEvent
- (MNNavTrayGuidanceEvent)init;
- (MNNavTrayGuidanceEvent)initWithCoder:(id)a3;
- (MNNavTrayGuidanceEvent)initWithGuidanceEvent:(id)a3;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MNNavTrayGuidanceEvent

- (MNNavTrayGuidanceEvent)initWithGuidanceEvent:(id)a3
{
  *(&self->super.isa + OBJC_IVAR___MNNavTrayGuidanceEvent__guidanceEvent) = a3;
  v5.receiver = self;
  v5.super_class = MNNavTrayGuidanceEvent;
  v3 = a3;
  return [(MNNavTrayGuidanceEvent *)&v5 init];
}

- (NSString)description
{
  v2 = self;
  MNNavTrayGuidanceEvent.description.getter();

  v3 = sub_1D32770B0();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  v5 = [(MNNavTrayGuidanceEvent *)v7 _guidanceEvent];
  v6 = sub_1D32770B0();
  [v4 encodeObject:v5 forKey:v6];
}

- (MNNavTrayGuidanceEvent)initWithCoder:(id)a3
{
  sub_1D3126084(0, &qword_1EC75CE08, 0x1E69A1C60);
  v5 = a3;
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