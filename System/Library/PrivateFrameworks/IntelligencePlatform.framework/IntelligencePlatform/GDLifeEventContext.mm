@interface GDLifeEventContext
- (GDLifeEventContext)initWithGDSwiftContext:(id)context;
- (id)initAndReturnError:(id *)error;
@end

@implementation GDLifeEventContext

- (id)initAndReturnError:(id *)error
{
  v4 = [[_TtC20IntelligencePlatform24_GDSwiftLifeEventContext alloc] initAndReturnError:error];
  if (v4)
  {
    self = [(GDLifeEventContext *)self initWithGDSwiftContext:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GDLifeEventContext)initWithGDSwiftContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = GDLifeEventContext;
  v6 = [(GDLifeEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gdSwiftContext, context);
  }

  return v7;
}

@end