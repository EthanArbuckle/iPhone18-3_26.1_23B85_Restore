@interface DeepThoughtPlugin
- (DeepThoughtPlugin)init;
- (id)performTask:(id)a3 outError:(id *)a4;
- (void)stop;
@end

@implementation DeepThoughtPlugin

- (id)performTask:(id)a3 outError:(id *)a4
{
  v5 = a3;
  v6 = self;
  v7 = DeepThoughtPlugin.perform(_:)(v5);

  return v7;
}

- (void)stop
{
  v2 = self;
  DeepThoughtPlugin.stop()();
}

- (DeepThoughtPlugin)init
{
  Logger.init(subsystem:category:)();
  *(&self->super.isa + OBJC_IVAR___DeepThoughtPlugin_processor) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DeepThoughtPlugin();
  return [(DeepThoughtPlugin *)&v4 init];
}

@end