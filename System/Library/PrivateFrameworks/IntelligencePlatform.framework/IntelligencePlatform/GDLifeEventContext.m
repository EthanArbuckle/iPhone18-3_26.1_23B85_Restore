@interface GDLifeEventContext
- (GDLifeEventContext)initWithGDSwiftContext:(id)a3;
- (id)initAndReturnError:(id *)a3;
@end

@implementation GDLifeEventContext

- (id)initAndReturnError:(id *)a3
{
  v4 = [[_TtC20IntelligencePlatform24_GDSwiftLifeEventContext alloc] initAndReturnError:a3];
  if (v4)
  {
    self = [(GDLifeEventContext *)self initWithGDSwiftContext:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (GDLifeEventContext)initWithGDSwiftContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDLifeEventContext;
  v6 = [(GDLifeEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gdSwiftContext, a3);
  }

  return v7;
}

@end