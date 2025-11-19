@interface _IFValueTransformer
- (_IFValueTransformer)initWithForwardTransformation:(id)a3 reverseTransformation:(id)a4;
- (id)reverseTransformedValue:(id)a3;
- (id)transformedValue:(id)a3;
@end

@implementation _IFValueTransformer

- (id)reverseTransformedValue:(id)a3
{
  v4 = a3;
  v5 = [(_IFValueTransformer *)self reverseTransformation];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (id)transformedValue:(id)a3
{
  v4 = a3;
  v5 = [(_IFValueTransformer *)self forwardTransformation];
  v6 = (v5)[2](v5, v4);

  return v6;
}

- (_IFValueTransformer)initWithForwardTransformation:(id)a3 reverseTransformation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = _IFValueTransformer;
  v8 = [(_IFValueTransformer *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    forwardTransformation = v8->_forwardTransformation;
    v8->_forwardTransformation = v9;

    v11 = [v7 copy];
    reverseTransformation = v8->_reverseTransformation;
    v8->_reverseTransformation = v11;
  }

  return v8;
}

@end