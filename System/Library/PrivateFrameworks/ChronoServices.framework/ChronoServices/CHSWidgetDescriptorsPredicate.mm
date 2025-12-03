@interface CHSWidgetDescriptorsPredicate
+ (CHSWidgetDescriptorsPredicate)visible;
- (BOOL)isEqual:(id)equal;
- (CHSWidgetDescriptorsPredicate)init;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (id)initIncludingRelevanceBacked:(BOOL)backed;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setIncludeRemote:(BOOL)remote;
@end

@implementation CHSWidgetDescriptorsPredicate

- (id)initIncludingRelevanceBacked:(BOOL)backed
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];
  v4[OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked] = backed;
  *&v4[OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions] = 0;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

- (CHSWidgetDescriptorsPredicate)init
{
  *(&self->super.isa + OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions) = 0;
  *(&self->super.isa + OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked) = 0;
  v3.receiver = self;
  v3.super_class = CHSWidgetDescriptorsPredicate;
  return [(CHSWidgetDescriptorsPredicate *)&v3 init];
}

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

  v6 = CHSWidgetDescriptorsPredicate.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  includeRelevanceBacked = [(CHSWidgetDescriptorsPredicate *)selfCopy includeRelevanceBacked];
  v6 = sub_195FA0888();
  [coderCopy encodeBool:includeRelevanceBacked forKey:v6];

  remoteWidgetInclusions = [(CHSWidgetDescriptorsPredicate *)selfCopy remoteWidgetInclusions];
  v8 = sub_195FA0888();
  [coderCopy encodeInteger:remoteWidgetInclusions forKey:v8];
}

- (void)setIncludeRemote:(BOOL)remote
{
  if (remote)
  {
    selfCopy = self;
    if (![(CHSWidgetDescriptorsPredicate *)selfCopy remoteWidgetInclusions])
    {
      [(CHSWidgetDescriptorsPredicate *)selfCopy setRemoteWidgetInclusions:1];
    }
  }

  else
  {

    [(CHSWidgetDescriptorsPredicate *)self setRemoteWidgetInclusions:0];
  }
}

+ (CHSWidgetDescriptorsPredicate)visible
{
  v2 = [objc_allocWithZone(CHSWidgetDescriptorsPredicate) init];

  return v2;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  includeRelevanceBacked = [(CHSWidgetDescriptorsPredicate *)selfCopy includeRelevanceBacked];
  remoteWidgetInclusions = [(CHSWidgetDescriptorsPredicate *)selfCopy remoteWidgetInclusions];
  v6 = [objc_allocWithZone(CHSWidgetDescriptorsPredicate) init];
  v6[OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked] = includeRelevanceBacked;
  *&v6[OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions] = remoteWidgetInclusions;

  return v6;
}

- (int64_t)hash
{
  sub_195FA13F8();
  selfCopy = self;
  [(CHSWidgetDescriptorsPredicate *)selfCopy includeRelevanceBacked];
  sub_195FA13B8();
  MEMORY[0x19A8C4970]([(CHSWidgetDescriptorsPredicate *)selfCopy remoteWidgetInclusions]);
  v4 = sub_195FA13D8();

  return v4;
}

- (NSString)description
{
  selfCopy = self;
  CHSWidgetDescriptorsPredicate.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

@end