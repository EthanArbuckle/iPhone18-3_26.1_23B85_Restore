@interface GDAppleMusicEventContext
- (GDAppleMusicEventContext)initWithGDSwiftContext:(id)context;
- (id)initAndReturnError:(id *)error;
@end

@implementation GDAppleMusicEventContext

- (id)initAndReturnError:(id *)error
{
  v4 = [[_TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext alloc] initAndReturnError:error];
  if (v4)
  {
    self = [(GDAppleMusicEventContext *)self initWithGDSwiftContext:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (GDAppleMusicEventContext)initWithGDSwiftContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = GDAppleMusicEventContext;
  v6 = [(GDAppleMusicEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gdSwiftContext, context);
  }

  return v7;
}

@end