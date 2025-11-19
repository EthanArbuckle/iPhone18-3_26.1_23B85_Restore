@interface MUURLShorteningSessionConfiguration
- (BOOL)doNotUseCache;
- (MUURLShorteningSessionConfiguration)init;
- (MUURLShorteningSessionConfiguration)initWithTimeout:(double)a3 doNotUseCache:(BOOL)a4;
- (double)timeout;
- (void)setDoNotUseCache:(BOOL)a3;
- (void)setTimeout:(double)a3;
@end

@implementation MUURLShorteningSessionConfiguration

- (double)timeout
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setTimeout:(double)a3
{
  v5 = OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)doNotUseCache
{
  v3 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setDoNotUseCache:(BOOL)a3
{
  v5 = OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (MUURLShorteningSessionConfiguration)init
{
  ObjectType = swift_getObjectType();
  v4 = *MEMORY[0x1E696F178];
  v5 = *(MEMORY[0x1E696F178] + 8);
  GEOConfigGetDouble();
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout) = v6;
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache) = 0;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(MUURLShorteningSessionConfiguration *)&v8 init];
}

- (MUURLShorteningSessionConfiguration)initWithTimeout:(double)a3 doNotUseCache:(BOOL)a4
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_timeout) = a3;
  *(&self->super.isa + OBJC_IVAR___MUURLShorteningSessionConfiguration_doNotUseCache) = a4;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(MUURLShorteningSessionConfiguration *)&v9 init];
}

@end