@interface CHSControlDescriptorsPredicate
+ (CHSControlDescriptorsPredicate)all;
+ (CHSControlDescriptorsPredicate)hidden;
+ (CHSControlDescriptorsPredicate)visible;
- (BOOL)includeOnlyRemoteEligible;
- (BOOL)includeRemote;
- (BOOL)isEqual:(id)equal;
- (CHSControlDescriptorsPredicate)init;
- (CHSControlDescriptorsPredicate)initWithCoder:(id)coder;
- (NSString)description;
- (id)initIncludingVisible:(BOOL)visible hidden:(BOOL)hidden;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIncludeOnlyRemoteEligible:(BOOL)eligible;
- (void)setIncludeRemote:(BOOL)remote;
@end

@implementation CHSControlDescriptorsPredicate

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_195FA0E08();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
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

- (id)initIncludingVisible:(BOOL)visible hidden:(BOOL)hidden
{
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote) = 0;
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible) = 0;
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeVisible) = visible;
  *(&self->super.isa + OBJC_IVAR___CHSControlDescriptorsPredicate_includeHidden) = hidden;
  v5.receiver = self;
  v5.super_class = CHSControlDescriptorsPredicate;
  return [(CHSControlDescriptorsPredicate *)&v5 init];
}

- (void)setIncludeRemote:(BOOL)remote
{
  v5 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeRemote;
  swift_beginAccess();
  *(&self->super.isa + v5) = remote;
}

- (NSString)description
{
  selfCopy = self;
  CHSControlDescriptorsPredicate.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  CHSControlDescriptorsPredicate.encode(with:)(coderCopy);
}

- (CHSControlDescriptorsPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = sub_195EBC9F0(coderCopy);

  return v4;
}

- (BOOL)includeOnlyRemoteEligible
{
  v3 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIncludeOnlyRemoteEligible:(BOOL)eligible
{
  v5 = OBJC_IVAR___CHSControlDescriptorsPredicate_includeOnlyRemoteEligible;
  swift_beginAccess();
  *(&self->super.isa + v5) = eligible;
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
  selfCopy = self;
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