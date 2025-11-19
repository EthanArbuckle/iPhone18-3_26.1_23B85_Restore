@interface HKLegendPointAnnotationStyle
+ (HKLegendPointAnnotationStyle)annotationStyleWithLabelStyle:(id)a3 localizedLabelKey:(id)a4 leftOfSeries:(BOOL)a5;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation HKLegendPointAnnotationStyle

+ (HKLegendPointAnnotationStyle)annotationStyleWithLabelStyle:(id)a3 localizedLabelKey:(id)a4 leftOfSeries:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = a3;
  v9 = objc_opt_new();
  [v9 setLabelStyle:v8];

  [v9 setLeftOfSeries:v5];
  [v9 setLocalizedLabelKey:v7];

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(HKAxisLabelStyle *)self->_labelStyle copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 8) = self->_leftOfSeries;
  v7 = [(NSString *)self->_localizedLabelKey copy];
  v8 = *(v4 + 24);
  *(v4 + 24) = v7;

  return v4;
}

@end