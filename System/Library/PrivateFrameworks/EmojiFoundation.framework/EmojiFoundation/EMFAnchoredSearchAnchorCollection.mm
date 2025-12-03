@interface EMFAnchoredSearchAnchorCollection
- (EMFAnchoredSearchAnchorCollection)initWithLocaleIdentifier:(id)identifier leftHandAnchors:(id)anchors rightHandAnchors:(id)handAnchors;
- (id)description;
- (void)setLeftHandAnchors:(id)anchors;
- (void)setRightHandAnchors:(id)anchors;
@end

@implementation EMFAnchoredSearchAnchorCollection

- (EMFAnchoredSearchAnchorCollection)initWithLocaleIdentifier:(id)identifier leftHandAnchors:(id)anchors rightHandAnchors:(id)handAnchors
{
  identifierCopy = identifier;
  anchorsCopy = anchors;
  handAnchorsCopy = handAnchors;
  v19.receiver = self;
  v19.super_class = EMFAnchoredSearchAnchorCollection;
  v11 = [(EMFAnchoredSearchAnchorCollection *)&v19 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    localeIdentifier = v11->_localeIdentifier;
    v11->_localeIdentifier = v12;

    v14 = [anchorsCopy copy];
    leftHandAnchors = v11->_leftHandAnchors;
    v11->_leftHandAnchors = v14;

    v16 = [handAnchorsCopy copy];
    rightHandAnchors = v11->_rightHandAnchors;
    v11->_rightHandAnchors = v16;
  }

  return v11;
}

- (void)setLeftHandAnchors:(id)anchors
{
  self->_leftHandAnchors = [anchors sortedArrayUsingComparator:&__block_literal_global_1];

  MEMORY[0x1EEE66BB8]();
}

- (void)setRightHandAnchors:(id)anchors
{
  self->_rightHandAnchors = [anchors sortedArrayUsingComparator:&__block_literal_global_1];

  MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  leftHandAnchors = [(EMFAnchoredSearchAnchorCollection *)self leftHandAnchors];
  v7 = [leftHandAnchors componentsJoinedByString:{@", "}];
  rightHandAnchors = [(EMFAnchoredSearchAnchorCollection *)self rightHandAnchors];
  v9 = [rightHandAnchors componentsJoinedByString:{@", "}];
  v10 = [v3 stringWithFormat:@"<%@:leftHandAnchors:'%@', rightHandAnchors:'%@'>", v5, v7, v9];

  return v10;
}

@end