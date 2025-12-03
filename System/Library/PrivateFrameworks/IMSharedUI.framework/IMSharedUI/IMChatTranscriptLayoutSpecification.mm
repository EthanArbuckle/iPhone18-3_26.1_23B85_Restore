@interface IMChatTranscriptLayoutSpecification
- (BOOL)isEqual:(id)equal;
- (CGSize)layoutBoundsSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
@end

@implementation IMChatTranscriptLayoutSpecification

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return objc_msgSend_stringWithFormat_(v3, v5, @"<%@: %p, layoutBoundsSize: {%.1f, %.1f}", v4, self, *&self->_layoutBoundsSize.width, *&self->_layoutBoundsSize.height);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = self->_layoutBoundsSize.width == v5[10] && self->_layoutBoundsSize.height == v5[11];
      v7 = v6 && self->_maximumBubbleWidth == v5[1] && self->_topMargin == v5[2] && self->_bottomMargin == v5[3] && self->_leadingMargin == v5[4] && self->_trailingMargin == v5[5] && self->_smallVerticalItemSpacing == v5[7] && self->_mediumVerticalItemSpacing == v5[8] && self->_largeVerticalItemSpacing == v5[9] && self->_zeroVerticalItemSpacing == v5[6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  height = self->_layoutBoundsSize.height;
  if (height <= 1)
  {
    height = 1;
  }

  v3 = objc_msgSend_numberWithUnsignedInteger_(MEMORY[0x277CCABB0], a2, self->_layoutBoundsSize.width % height);
  v6 = objc_msgSend_hash(v3, v4, v5);

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = objc_alloc_init(IMChatTranscriptLayoutSpecification);
  *(result + 1) = *&self->_maximumBubbleWidth;
  *(result + 5) = self->_layoutBoundsSize;
  *(result + 2) = *&self->_topMargin;
  *(result + 3) = *&self->_bottomMargin;
  *(result + 4) = *&self->_leadingMargin;
  *(result + 5) = *&self->_trailingMargin;
  *(result + 7) = *&self->_smallVerticalItemSpacing;
  *(result + 8) = *&self->_mediumVerticalItemSpacing;
  *(result + 9) = *&self->_largeVerticalItemSpacing;
  *(result + 6) = *&self->_zeroVerticalItemSpacing;
  return result;
}

- (CGSize)layoutBoundsSize
{
  width = self->_layoutBoundsSize.width;
  height = self->_layoutBoundsSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end