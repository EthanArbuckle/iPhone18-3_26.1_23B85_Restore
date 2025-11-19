@interface EMFAnchoredSearchAnchorCollection
- (EMFAnchoredSearchAnchorCollection)initWithLocaleIdentifier:(id)a3 leftHandAnchors:(id)a4 rightHandAnchors:(id)a5;
- (id)description;
- (void)setLeftHandAnchors:(id)a3;
- (void)setRightHandAnchors:(id)a3;
@end

@implementation EMFAnchoredSearchAnchorCollection

- (EMFAnchoredSearchAnchorCollection)initWithLocaleIdentifier:(id)a3 leftHandAnchors:(id)a4 rightHandAnchors:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = EMFAnchoredSearchAnchorCollection;
  v11 = [(EMFAnchoredSearchAnchorCollection *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    localeIdentifier = v11->_localeIdentifier;
    v11->_localeIdentifier = v12;

    v14 = [v9 copy];
    leftHandAnchors = v11->_leftHandAnchors;
    v11->_leftHandAnchors = v14;

    v16 = [v10 copy];
    rightHandAnchors = v11->_rightHandAnchors;
    v11->_rightHandAnchors = v16;
  }

  return v11;
}

- (void)setLeftHandAnchors:(id)a3
{
  self->_leftHandAnchors = [a3 sortedArrayUsingComparator:&__block_literal_global_1];

  MEMORY[0x1EEE66BB8]();
}

- (void)setRightHandAnchors:(id)a3
{
  self->_rightHandAnchors = [a3 sortedArrayUsingComparator:&__block_literal_global_1];

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(EMFAnchoredSearchAnchorCollection *)self leftHandAnchors];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [(EMFAnchoredSearchAnchorCollection *)self rightHandAnchors];
  v9 = [v8 componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@:leftHandAnchors:'%@', rightHandAnchors:'%@'>", v5, v7, v9];

  return v10;
}

@end