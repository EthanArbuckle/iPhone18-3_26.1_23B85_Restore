@interface _HDSyncAnchorRangeBox
- (BOOL)isEqual:(id)a3;
- (_HDSyncAnchorRangeBox)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _HDSyncAnchorRangeBox

- (void)encodeWithCoder:(id)a3
{
  start = self->_anchorRange.start;
  v5 = a3;
  [v5 encodeInt64:start forKey:@"start"];
  [v5 encodeInt64:self->_anchorRange.end forKey:@"end"];
}

- (_HDSyncAnchorRangeBox)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _HDSyncAnchorRangeBox;
  v5 = [(_HDSyncAnchorRangeBox *)&v7 init];
  if (v5)
  {
    v5->_anchorRange.start = [v4 decodeInt64ForKey:@"start"];
    v5->_anchorRange.end = [v4 decodeInt64ForKey:@"end"];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && self->_anchorRange.start == v4[1] && self->_anchorRange.end == v4[2];

  return v5;
}

@end