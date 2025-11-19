@interface _BMAccessAssertionNotApplicable
- (_BMAccessAssertionNotApplicable)initWithDescriptor:(id)a3 container:(id)a4;
@end

@implementation _BMAccessAssertionNotApplicable

- (_BMAccessAssertionNotApplicable)initWithDescriptor:(id)a3 container:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = _BMAccessAssertionNotApplicable;
  v9 = [(_BMAccessAssertionNotApplicable *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, a3);
    v11 = [v7 resource];
    v12 = [BMPaths pathForResource:v11 inContainer:v8];
    path = v10->_path;
    v10->_path = v12;

    objc_storeStrong(&v10->_container, a4);
  }

  return v10;
}

@end