@interface CPUIGridViewBaseViewModelImagePlaceholder
+ (id)cpuiPlaceholder:(int64_t)placeholder;
+ (id)image:(id)image;
+ (id)systemImage:(id)image;
- (CPUIGridViewBaseViewModelImagePlaceholder)init;
- (CPUIGridViewBaseViewModelImagePlaceholder)initWithCPUIPlaceholder:(int64_t)placeholder;
- (CPUIGridViewBaseViewModelImagePlaceholder)initWithImage:(id)image;
- (CPUIGridViewBaseViewModelImagePlaceholder)initWithSystemImage:(id)image;
- (NSString)systemImage;
@end

@implementation CPUIGridViewBaseViewModelImagePlaceholder

- (NSString)systemImage
{
  v2 = *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_systemImage + 8);
  if (v2)
  {
    v3 = *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_systemImage);

    v4 = MEMORY[0x245D2BBE0](v3, v2);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CPUIGridViewBaseViewModelImagePlaceholder)initWithImage:(id)image
{
  *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_type) = 0;
  *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_image) = image;
  v3 = (self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_systemImage);
  *v3 = 0;
  v3[1] = 0;
  v4 = self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_cpuiPlaceholder;
  *v4 = 0;
  v4[8] = 1;
  v7.receiver = self;
  v7.super_class = CPUIGridViewBaseViewModelImagePlaceholder;
  imageCopy = image;
  return [(CPUIGridViewBaseViewModelImagePlaceholder *)&v7 init];
}

- (CPUIGridViewBaseViewModelImagePlaceholder)initWithSystemImage:(id)image
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_type) = 1;
  *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_image) = 0;
  v5 = (self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_systemImage);
  *v5 = v4;
  v5[1] = v6;
  v7 = self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_cpuiPlaceholder;
  *v7 = 0;
  v7[8] = 1;
  v9.receiver = self;
  v9.super_class = CPUIGridViewBaseViewModelImagePlaceholder;
  return [(CPUIGridViewBaseViewModelImagePlaceholder *)&v9 init];
}

- (CPUIGridViewBaseViewModelImagePlaceholder)initWithCPUIPlaceholder:(int64_t)placeholder
{
  *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_type) = 2;
  *(self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_image) = 0;
  v3 = (self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_systemImage);
  *v3 = 0;
  v3[1] = 0;
  v4 = self + OBJC_IVAR___CPUIGridViewBaseViewModelImagePlaceholder_cpuiPlaceholder;
  *v4 = placeholder;
  v4[8] = 0;
  v6.receiver = self;
  v6.super_class = CPUIGridViewBaseViewModelImagePlaceholder;
  return [(CPUIGridViewBaseViewModelImagePlaceholder *)&v6 init];
}

+ (id)image:(id)image
{
  swift_getObjCClassMetadata();
  imageCopy = image;
  v5 = static CPUIGridViewBaseViewModelImagePlaceholder.image(_:)(imageCopy, &selRef_initWithImage_);

  return v5;
}

+ (id)systemImage:(id)image
{
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;
  swift_getObjCClassMetadata();
  v6 = static CPUIGridViewBaseViewModelImagePlaceholder.systemImage(_:)(v3, v5);

  return v6;
}

+ (id)cpuiPlaceholder:(int64_t)placeholder
{
  swift_getObjCClassMetadata();
  v4 = static CPUIGridViewBaseViewModelImagePlaceholder.image(_:)(placeholder, &selRef_initWithCPUIPlaceholder_);

  return v4;
}

- (CPUIGridViewBaseViewModelImagePlaceholder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end