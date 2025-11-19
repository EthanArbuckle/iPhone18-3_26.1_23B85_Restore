@interface GDAppleMusicEventContext
- (GDAppleMusicEventContext)initWithGDSwiftContext:(id)a3;
- (id)initAndReturnError:(id *)a3;
@end

@implementation GDAppleMusicEventContext

- (id)initAndReturnError:(id *)a3
{
  v4 = [[_TtC20IntelligencePlatform30_GDSwiftAppleMusicEventContext alloc] initAndReturnError:a3];
  if (v4)
  {
    self = [(GDAppleMusicEventContext *)self initWithGDSwiftContext:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (GDAppleMusicEventContext)initWithGDSwiftContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = GDAppleMusicEventContext;
  v6 = [(GDAppleMusicEventContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->gdSwiftContext, a3);
  }

  return v7;
}

@end