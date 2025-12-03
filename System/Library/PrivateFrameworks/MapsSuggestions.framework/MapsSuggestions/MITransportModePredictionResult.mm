@interface MITransportModePredictionResult
- (MITransportModePredictionResult)init;
- (MITransportModePredictionResult)initWithTransportType:(int)type metadata:(id)metadata;
- (NSDictionary)metadata;
- (int)transportType;
- (void)setMetadata:(id)metadata;
- (void)setTransportType:(int)type;
@end

@implementation MITransportModePredictionResult

- (int)transportType
{
  v3 = OBJC_IVAR___MITransportModePredictionResult_transportType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTransportType:(int)type
{
  v5 = OBJC_IVAR___MITransportModePredictionResult_transportType;
  swift_beginAccess();
  *(&self->super.isa + v5) = type;
}

- (NSDictionary)metadata
{
  v3 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMetadata:(id)metadata
{
  v5 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = metadata;
  metadataCopy = metadata;
}

- (MITransportModePredictionResult)initWithTransportType:(int)type metadata:(id)metadata
{
  v6 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  *(&self->super.isa + OBJC_IVAR___MITransportModePredictionResult_metadata) = 0;
  *(&self->super.isa + OBJC_IVAR___MITransportModePredictionResult_transportType) = type;
  swift_beginAccess();
  *(&self->super.isa + v6) = metadata;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MITransportModePredictionManagerResult();
  metadataCopy = metadata;
  return [(MITransportModePredictionResult *)&v9 init];
}

- (MITransportModePredictionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end