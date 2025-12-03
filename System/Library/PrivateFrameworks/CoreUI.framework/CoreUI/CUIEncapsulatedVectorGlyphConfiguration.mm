@interface CUIEncapsulatedVectorGlyphConfiguration
+ (id)newAutomaticCenterConfigurationForEncapsulation:(id)encapsulation adjustX:(BOOL)x adjustY:(BOOL)y sizeAdjustment:(int64_t)adjustment coordinateSystem:(int64_t)system;
+ (id)newMetricCenterConfigurationForEncapsulation:(id)encapsulation offsetX:(double)x offsetY:(double)y scaleFactor:(double)factor coordinateSystem:(int64_t)system;
- (CUIEncapsulatedVectorGlyphConfiguration)init;
@end

@implementation CUIEncapsulatedVectorGlyphConfiguration

- (CUIEncapsulatedVectorGlyphConfiguration)init
{
  v3 = objc_opt_self();
  newRoundedRect = [objc_opt_self() newRoundedRect];
  v5 = [v3 newEncapsulationWithShape:newRoundedRect rect:0.0 canvasSize:0.0 representativePointSize:{0.0, 0.0, 0.0, 0.0, 0.0}];

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

+ (id)newMetricCenterConfigurationForEncapsulation:(id)encapsulation offsetX:(double)x offsetY:(double)y scaleFactor:(double)factor coordinateSystem:(int64_t)system
{
  swift_getObjCClassMetadata();
  encapsulationCopy = encapsulation;
  v13 = sub_18DFFAD38(encapsulationCopy, system, x, y, factor);

  return v13;
}

+ (id)newAutomaticCenterConfigurationForEncapsulation:(id)encapsulation adjustX:(BOOL)x adjustY:(BOOL)y sizeAdjustment:(int64_t)adjustment coordinateSystem:(int64_t)system
{
  swift_getObjCClassMetadata();
  encapsulationCopy = encapsulation;
  v13 = sub_18DFFAE68(encapsulationCopy, x, y, adjustment, system);

  return v13;
}

@end