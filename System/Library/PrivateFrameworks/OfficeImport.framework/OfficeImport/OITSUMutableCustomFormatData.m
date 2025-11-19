@interface OITSUMutableCustomFormatData
+ (id)customFormatData;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation OITSUMutableCustomFormatData

+ (id)customFormatData
{
  v2 = objc_alloc_init(OITSUMutableCustomFormatData);

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[OITSUCustomFormatData allocWithZone:?]];
  [(OITSUCustomFormatData *)self p_copySelfTo:v4];
  return v4;
}

@end