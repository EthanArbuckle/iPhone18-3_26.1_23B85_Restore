@interface NTKUVPreviewComplication
+ (id)complicationWithEntry:(id)a3 forFamily:(int64_t)a4;
- (NTKUVPreviewComplication)initWithComplicationType:(unint64_t)a3;
@end

@implementation NTKUVPreviewComplication

- (NTKUVPreviewComplication)initWithComplicationType:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKUVPreviewComplication;
  return [(NTKComplication *)&v4 initWithComplicationType:54];
}

+ (id)complicationWithEntry:(id)a3 forFamily:(int64_t)a4
{
  v6 = a3;
  v7 = objc_alloc_init(a1);
  v8 = [v6 copy];

  v9 = v7[4];
  v7[4] = v8;

  v7[5] = a4;

  return v7;
}

@end