@interface MITransportModePredictionResult
- (MITransportModePredictionResult)init;
- (MITransportModePredictionResult)initWithTransportType:(int)a3 metadata:(id)a4;
- (NSDictionary)metadata;
- (int)transportType;
- (void)setMetadata:(id)a3;
- (void)setTransportType:(int)a3;
@end

@implementation MITransportModePredictionResult

- (int)transportType
{
  v3 = OBJC_IVAR___MITransportModePredictionResult_transportType;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTransportType:(int)a3
{
  v5 = OBJC_IVAR___MITransportModePredictionResult_transportType;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (NSDictionary)metadata
{
  v3 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setMetadata:(id)a3
{
  v5 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

- (MITransportModePredictionResult)initWithTransportType:(int)a3 metadata:(id)a4
{
  v6 = OBJC_IVAR___MITransportModePredictionResult_metadata;
  *(&self->super.isa + OBJC_IVAR___MITransportModePredictionResult_metadata) = 0;
  *(&self->super.isa + OBJC_IVAR___MITransportModePredictionResult_transportType) = a3;
  swift_beginAccess();
  *(&self->super.isa + v6) = a4;
  v9.receiver = self;
  v9.super_class = type metadata accessor for MITransportModePredictionManagerResult();
  v7 = a4;
  return [(MITransportModePredictionResult *)&v9 init];
}

- (MITransportModePredictionResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end