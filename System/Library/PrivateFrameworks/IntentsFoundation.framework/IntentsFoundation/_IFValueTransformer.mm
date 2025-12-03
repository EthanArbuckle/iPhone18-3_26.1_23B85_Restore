@interface _IFValueTransformer
- (_IFValueTransformer)initWithForwardTransformation:(id)transformation reverseTransformation:(id)reverseTransformation;
- (id)reverseTransformedValue:(id)value;
- (id)transformedValue:(id)value;
@end

@implementation _IFValueTransformer

- (id)reverseTransformedValue:(id)value
{
  valueCopy = value;
  reverseTransformation = [(_IFValueTransformer *)self reverseTransformation];
  v6 = (reverseTransformation)[2](reverseTransformation, valueCopy);

  return v6;
}

- (id)transformedValue:(id)value
{
  valueCopy = value;
  forwardTransformation = [(_IFValueTransformer *)self forwardTransformation];
  v6 = (forwardTransformation)[2](forwardTransformation, valueCopy);

  return v6;
}

- (_IFValueTransformer)initWithForwardTransformation:(id)transformation reverseTransformation:(id)reverseTransformation
{
  transformationCopy = transformation;
  reverseTransformationCopy = reverseTransformation;
  v14.receiver = self;
  v14.super_class = _IFValueTransformer;
  v8 = [(_IFValueTransformer *)&v14 init];
  if (v8)
  {
    v9 = [transformationCopy copy];
    forwardTransformation = v8->_forwardTransformation;
    v8->_forwardTransformation = v9;

    v11 = [reverseTransformationCopy copy];
    reverseTransformation = v8->_reverseTransformation;
    v8->_reverseTransformation = v11;
  }

  return v8;
}

@end