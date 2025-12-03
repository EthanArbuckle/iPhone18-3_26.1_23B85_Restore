@interface DeepThoughtPlugin
- (DeepThoughtPlugin)init;
- (id)performTask:(id)task outError:(id *)error;
- (void)stop;
@end

@implementation DeepThoughtPlugin

- (id)performTask:(id)task outError:(id *)error
{
  taskCopy = task;
  selfCopy = self;
  v7 = DeepThoughtPlugin.perform(_:)(taskCopy);

  return v7;
}

- (void)stop
{
  selfCopy = self;
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