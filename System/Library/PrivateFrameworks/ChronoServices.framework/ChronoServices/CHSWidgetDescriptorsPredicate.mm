@interface CHSWidgetDescriptorsPredicate
+ (CHSWidgetDescriptorsPredicate)visible;
- (BOOL)isEqual:(id)a3;
- (CHSWidgetDescriptorsPredicate)init;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (id)initIncludingRelevanceBacked:(BOOL)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setIncludeRemote:(BOOL)a3;
@end

@implementation CHSWidgetDescriptorsPredicate

- (id)initIncludingRelevanceBacked:(BOOL)a3
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromObject()) init];
  v4[OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked] = a3;
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

  v6 = CHSWidgetDescriptorsPredicate.isEqual(_:)(v8);

  sub_195EB7914(v8);
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v9 = self;
  v5 = [(CHSWidgetDescriptorsPredicate *)v9 includeRelevanceBacked];
  v6 = sub_195FA0888();
  [v4 encodeBool:v5 forKey:v6];

  v7 = [(CHSWidgetDescriptorsPredicate *)v9 remoteWidgetInclusions];
  v8 = sub_195FA0888();
  [v4 encodeInteger:v7 forKey:v8];
}

- (void)setIncludeRemote:(BOOL)a3
{
  if (a3)
  {
    v3 = self;
    if (![(CHSWidgetDescriptorsPredicate *)v3 remoteWidgetInclusions])
    {
      [(CHSWidgetDescriptorsPredicate *)v3 setRemoteWidgetInclusions:1];
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

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  v4 = [(CHSWidgetDescriptorsPredicate *)v3 includeRelevanceBacked];
  v5 = [(CHSWidgetDescriptorsPredicate *)v3 remoteWidgetInclusions];
  v6 = [objc_allocWithZone(CHSWidgetDescriptorsPredicate) init];
  v6[OBJC_IVAR___CHSWidgetDescriptorsPredicate_includeRelevanceBacked] = v4;
  *&v6[OBJC_IVAR___CHSWidgetDescriptorsPredicate_remoteWidgetInclusions] = v5;

  return v6;
}

- (int64_t)hash
{
  sub_195FA13F8();
  v3 = self;
  [(CHSWidgetDescriptorsPredicate *)v3 includeRelevanceBacked];
  sub_195FA13B8();
  MEMORY[0x19A8C4970]([(CHSWidgetDescriptorsPredicate *)v3 remoteWidgetInclusions]);
  v4 = sub_195FA13D8();

  return v4;
}

- (NSString)description
{
  v2 = self;
  CHSWidgetDescriptorsPredicate.description.getter();

  v3 = sub_195FA0888();

  return v3;
}

@end