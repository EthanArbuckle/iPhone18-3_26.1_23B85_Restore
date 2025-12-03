@interface PKISO18013DataElements
- (PKISO18013DataElements)initWithCoder:(id)coder;
- (PKISO18013DataElements)initWithElements:(id)elements;
@end

@implementation PKISO18013DataElements

- (PKISO18013DataElements)initWithElements:(id)elements
{
  elementsCopy = elements;
  v9.receiver = self;
  v9.super_class = PKISO18013DataElements;
  v6 = [(PKISO18013DataElements *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elements, elements);
  }

  return v7;
}

- (PKISO18013DataElements)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = PKISO18013DataElements;
  v5 = [(PKISO18013DataElements *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [v6 setWithObjects:{v7, v8, v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"elements"];
    elements = v5->_elements;
    v5->_elements = v11;
  }

  return v5;
}

@end