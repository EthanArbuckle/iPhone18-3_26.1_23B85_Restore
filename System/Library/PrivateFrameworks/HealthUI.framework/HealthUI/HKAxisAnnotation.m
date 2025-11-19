@interface HKAxisAnnotation
- (HKAxisAnnotation)initWithAnnotation:(id)a3 position:(id)a4;
@end

@implementation HKAxisAnnotation

- (HKAxisAnnotation)initWithAnnotation:(id)a3 position:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HKAxisAnnotation;
  v9 = [(HKAxisAnnotation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_annotationText, a3);
    objc_storeStrong(&v10->_position, a4);
  }

  return v10;
}

@end