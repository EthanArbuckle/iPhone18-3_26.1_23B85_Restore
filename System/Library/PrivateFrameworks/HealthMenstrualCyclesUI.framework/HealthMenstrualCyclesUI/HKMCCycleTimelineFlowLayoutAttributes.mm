@interface HKMCCycleTimelineFlowLayoutAttributes
- (BOOL)isEqual:(id)equal;
- (CGRect)pillFrame;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation HKMCCycleTimelineFlowLayoutAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v13.receiver = self, v13.super_class = HKMCCycleTimelineFlowLayoutAttributes, -[UICollectionViewLayoutAttributes isEqual:](&v13, sel_isEqual_, equalCopy)) && (shrinkFactor = self->_shrinkFactor, [equalCopy shrinkFactor], vabdd_f64(shrinkFactor, v6) < 2.22044605e-16))
  {
    [equalCopy pillFrame];
    v14.origin.x = v7;
    v14.origin.y = v8;
    v14.size.width = v9;
    v14.size.height = v10;
    v11 = CGRectEqualToRect(self->_pillFrame, v14);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = HKMCCycleTimelineFlowLayoutAttributes;
  v3 = [(UICollectionViewLayoutAttributes *)&v9 hash];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:self->_shrinkFactor];
  v5 = [v4 hash] ^ v3;
  v6 = [MEMORY[0x277CCAE60] valueWithCGRect:{self->_pillFrame.origin.x, self->_pillFrame.origin.y, self->_pillFrame.size.width, self->_pillFrame.size.height}];
  v7 = [v6 hash];

  return v5 ^ v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = HKMCCycleTimelineFlowLayoutAttributes;
  v4 = [(UICollectionViewLayoutAttributes *)&v6 copyWithZone:zone];
  [(HKMCCycleTimelineFlowLayoutAttributes *)self shrinkFactor];
  [v4 setShrinkFactor:?];
  [(HKMCCycleTimelineFlowLayoutAttributes *)self pillFrame];
  [v4 setPillFrame:?];
  return v4;
}

- (CGRect)pillFrame
{
  x = self->_pillFrame.origin.x;
  y = self->_pillFrame.origin.y;
  width = self->_pillFrame.size.width;
  height = self->_pillFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end