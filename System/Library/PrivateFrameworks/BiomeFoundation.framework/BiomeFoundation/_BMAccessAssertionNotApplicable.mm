@interface _BMAccessAssertionNotApplicable
- (_BMAccessAssertionNotApplicable)initWithDescriptor:(id)descriptor container:(id)container;
@end

@implementation _BMAccessAssertionNotApplicable

- (_BMAccessAssertionNotApplicable)initWithDescriptor:(id)descriptor container:(id)container
{
  descriptorCopy = descriptor;
  containerCopy = container;
  v15.receiver = self;
  v15.super_class = _BMAccessAssertionNotApplicable;
  v9 = [(_BMAccessAssertionNotApplicable *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_descriptor, descriptor);
    resource = [descriptorCopy resource];
    v12 = [BMPaths pathForResource:resource inContainer:containerCopy];
    path = v10->_path;
    v10->_path = v12;

    objc_storeStrong(&v10->_container, container);
  }

  return v10;
}

@end