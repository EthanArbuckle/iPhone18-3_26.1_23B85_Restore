@interface _HDSyncAnchorRangeBox
- (BOOL)isEqual:(id)equal;
- (_HDSyncAnchorRangeBox)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _HDSyncAnchorRangeBox

- (void)encodeWithCoder:(id)coder
{
  start = self->_anchorRange.start;
  coderCopy = coder;
  [coderCopy encodeInt64:start forKey:@"start"];
  [coderCopy encodeInt64:self->_anchorRange.end forKey:@"end"];
}

- (_HDSyncAnchorRangeBox)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = _HDSyncAnchorRangeBox;
  v5 = [(_HDSyncAnchorRangeBox *)&v7 init];
  if (v5)
  {
    v5->_anchorRange.start = [coderCopy decodeInt64ForKey:@"start"];
    v5->_anchorRange.end = [coderCopy decodeInt64ForKey:@"end"];
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_anchorRange.start == equalCopy[1] && self->_anchorRange.end == equalCopy[2];

  return v5;
}

@end