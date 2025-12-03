@interface HKLegendPointAnnotationStyle
+ (HKLegendPointAnnotationStyle)annotationStyleWithLabelStyle:(id)style localizedLabelKey:(id)key leftOfSeries:(BOOL)series;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation HKLegendPointAnnotationStyle

+ (HKLegendPointAnnotationStyle)annotationStyleWithLabelStyle:(id)style localizedLabelKey:(id)key leftOfSeries:(BOOL)series
{
  seriesCopy = series;
  keyCopy = key;
  styleCopy = style;
  v9 = objc_opt_new();
  [v9 setLabelStyle:styleCopy];

  [v9 setLeftOfSeries:seriesCopy];
  [v9 setLocalizedLabelKey:keyCopy];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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