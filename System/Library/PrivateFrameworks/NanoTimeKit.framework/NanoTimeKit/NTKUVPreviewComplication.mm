@interface NTKUVPreviewComplication
+ (id)complicationWithEntry:(id)entry forFamily:(int64_t)family;
- (NTKUVPreviewComplication)initWithComplicationType:(unint64_t)type;
@end

@implementation NTKUVPreviewComplication

- (NTKUVPreviewComplication)initWithComplicationType:(unint64_t)type
{
  v4.receiver = self;
  v4.super_class = NTKUVPreviewComplication;
  return [(NTKComplication *)&v4 initWithComplicationType:54];
}

+ (id)complicationWithEntry:(id)entry forFamily:(int64_t)family
{
  entryCopy = entry;
  v7 = objc_alloc_init(self);
  v8 = [entryCopy copy];

  v9 = v7[4];
  v7[4] = v8;

  v7[5] = family;

  return v7;
}

@end