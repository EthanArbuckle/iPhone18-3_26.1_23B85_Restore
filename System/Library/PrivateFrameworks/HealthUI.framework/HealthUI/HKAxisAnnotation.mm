@interface HKAxisAnnotation
- (HKAxisAnnotation)initWithAnnotation:(id)annotation position:(id)position;
@end

@implementation HKAxisAnnotation

- (HKAxisAnnotation)initWithAnnotation:(id)annotation position:(id)position
{
  annotationCopy = annotation;
  positionCopy = position;
  v12.receiver = self;
  v12.super_class = HKAxisAnnotation;
  v9 = [(HKAxisAnnotation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_annotationText, annotation);
    objc_storeStrong(&v10->_position, position);
  }

  return v10;
}

@end