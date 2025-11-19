@interface CUIEncapsulatedVectorGlyphConfiguration
+ (id)newAutomaticCenterConfigurationForEncapsulation:(id)a3 adjustX:(BOOL)a4 adjustY:(BOOL)a5 sizeAdjustment:(int64_t)a6 coordinateSystem:(int64_t)a7;
+ (id)newMetricCenterConfigurationForEncapsulation:(id)a3 offsetX:(double)a4 offsetY:(double)a5 scaleFactor:(double)a6 coordinateSystem:(int64_t)a7;
- (CUIEncapsulatedVectorGlyphConfiguration)init;
@end

@implementation CUIEncapsulatedVectorGlyphConfiguration

- (CUIEncapsulatedVectorGlyphConfiguration)init
{
  v3 = objc_opt_self();
  v4 = [objc_opt_self() newRoundedRect];
  v5 = [v3 newEncapsulationWithShape:v4 rect:0.0 canvasSize:0.0 representativePointSize:{0.0, 0.0, 0.0, 0.0, 0.0}];

  v6 = self + OBJC_IVAR___CUIEncapsulatedVectorGlyphConfiguration_backing;
  *v6 = 1;
  *(v6 + 1) = v5;
  *(v6 + 2) = 0;
  *(v6 + 3) = 0;
  *(v6 + 4) = 0x3FF0000000000000;
  v6[40] = 0;
  v8.receiver = self;
  v8.super_class = CUIEncapsulatedVectorGlyphConfiguration;
  return [(CUIEncapsulatedVectorGlyphConfiguration *)&v8 init];
}

+ (id)newMetricCenterConfigurationForEncapsulation:(id)a3 offsetX:(double)a4 offsetY:(double)a5 scaleFactor:(double)a6 coordinateSystem:(int64_t)a7
{
  swift_getObjCClassMetadata();
  v12 = a3;
  v13 = sub_18DFFAD38(v12, a7, a4, a5, a6);

  return v13;
}

+ (id)newAutomaticCenterConfigurationForEncapsulation:(id)a3 adjustX:(BOOL)a4 adjustY:(BOOL)a5 sizeAdjustment:(int64_t)a6 coordinateSystem:(int64_t)a7
{
  swift_getObjCClassMetadata();
  v12 = a3;
  v13 = sub_18DFFAE68(v12, a4, a5, a6, a7);

  return v13;
}

@end