@interface CKTextMetricsRequest
- (CGSize)adjustedMaximumSize;
- (CKTextMetricsRequest)initWithAttributedString:(id)string;
- (UIEdgeInsets)containerInset;
- (double)adjustedMaximumWidth;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CKTextMetricsRequest

- (UIEdgeInsets)containerInset
{
  top = self->_containerInset.top;
  left = self->_containerInset.left;
  bottom = self->_containerInset.bottom;
  right = self->_containerInset.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)adjustedMaximumSize
{
  [(CKTextMetricsRequest *)self adjustedMaximumWidth];
  v4 = v3;
  [(CKTextMetricsRequest *)self maximumHeight];
  v6 = v5;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)adjustedMaximumWidth
{
  result = self->_maximumWidth;
  if (!self->_alreadyPadded)
  {
    return result + self->_lineFragmentPadding * 2.0;
  }

  return result;
}

- (CKTextMetricsRequest)initWithAttributedString:(id)string
{
  stringCopy = string;
  v11.receiver = self;
  v11.super_class = CKTextMetricsRequest;
  v5 = [(CKTextMetricsRequest *)&v11 init];
  if (v5)
  {
    v6 = [stringCopy copy];
    v7 = *(v5 + 2);
    *(v5 + 2) = v6;

    v8 = MEMORY[0x1E69DDCE0];
    *(v5 + 3) = vdupq_n_s64(0x40C3880000000000uLL);
    v9 = v8[1];
    *(v5 + 72) = *v8;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
    *(v5 + 3) = 0x4014000000000000;
    v5[8] = 1;
    *(v5 + 88) = v9;
    *(v5 + 8) = 0;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CKTextMetricsRequest alloc];
  v5 = [(NSAttributedString *)self->_attributedString copy];
  v6 = [(CKTextMetricsRequest *)v4 initWithAttributedString:v5];

  [(CKTextMetricsRequest *)v6 setLineFragmentPadding:self->_lineFragmentPadding];
  [(CKTextMetricsRequest *)v6 setLineBreakMode:self->_lineBreakMode];
  [(CKTextMetricsRequest *)v6 setMaximumNumberOfLines:self->_maximumNumberOfLines];
  [(CKTextMetricsRequest *)v6 setMaximumWidth:self->_maximumWidth];
  [(CKTextMetricsRequest *)v6 setMaximumHeight:self->_maximumHeight];
  [(CKTextMetricsRequest *)v6 setAlreadyPadded:self->_alreadyPadded];
  [(CKTextMetricsRequest *)v6 setContainerInset:self->_containerInset.top, self->_containerInset.left, self->_containerInset.bottom, self->_containerInset.right];
  [(CKTextMetricsRequest *)v6 setMinimumViewHeight:self->_minimumViewHeight];
  return v6;
}

@end