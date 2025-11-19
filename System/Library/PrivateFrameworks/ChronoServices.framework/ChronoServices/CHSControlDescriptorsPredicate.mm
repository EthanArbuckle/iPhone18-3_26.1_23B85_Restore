@interface CHSControlDescriptorsPredicate
+ (CHSControlDescriptorsPredicate)all;
+ (CHSControlDescriptorsPredicate)hidden;
+ (CHSControlDescriptorsPredicate)visible;
- (BOOL)includeOnlyRemoteEligible;
- (BOOL)includeRemote;
- (BOOL)isEqual:(id)a3;
- (CHSControlDescriptorsPredicate)init;
- (CHSControlDescriptorsPredicate)initWithCoder:(id)a3;
- (NSString)description;
- (id)initIncludingVisible:(BOOL)a3 hidden:(BOOL)a4;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIncludeOnlyRemoteEligible:(BOOL)a3;
- (void)setIncludeRemote:(BOOL)a3;
@end

@implementation CHSControlDescriptorsPredicate

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = CHSControlDescriptorsPredicate.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6 & 1;
}

- (BOOL)includeRemote
{
  v3 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (id)initIncludingVisible:(BOOL)a3 hidden:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote) = 0;
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible) = 0;
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeVisible) = a3;
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeHidden) = a4;
  v5.receiver = self;
  v5.super_class = CHSControlDescriptorsPredicate;
  return [(CHSControlDescriptorsPredicate *)&v5 init];
}

- (void)setIncludeRemote:(BOOL)a3
{
  v5 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (NSString)description
{
  v2 = self;
  CHSControlDescriptorsPredicate.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  CHSControlDescriptorsPredicate.encode(with:)(v4);
}

- (CHSControlDescriptorsPredicate)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = sub_195EBC9F0(v3);

  return v4;
}

- (BOOL)includeOnlyRemoteEligible
{
  v3 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIncludeOnlyRemoteEligible:(BOOL)a3
{
  v5 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

+ (CHSControlDescriptorsPredicate)visible
{
  v2 = [objc_allocWithZone(CHSControlDescriptorsPredicate) initIncludingVisible:1 hidden:0];

  return v2;
}

+ (CHSControlDescriptorsPredicate)hidden
{
  v2 = [objc_allocWithZone(CHSControlDescriptorsPredicate) initIncludingVisible:0 hidden:1];

  return v2;
}

+ (CHSControlDescriptorsPredicate)all
{
  v2 = [objc_allocWithZone(CHSControlDescriptorsPredicate) initIncludingVisible:1 hidden:1];

  return v2;
}

- (int64_t)hash
{
  v2 = self;
  v3 = CHSControlDescriptorsPredicate.hash.getter();

  return v3;
}

- (CHSControlDescriptorsPredicate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end