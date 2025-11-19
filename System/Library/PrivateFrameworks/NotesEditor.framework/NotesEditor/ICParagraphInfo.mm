@interface ICParagraphInfo
- (_NSRange)characterRange;
- (_NSRange)rangeIncludingChildren;
- (unint64_t)indent;
- (unsigned)style;
@end

@implementation ICParagraphInfo

- (unsigned)style
{
  v2 = [(ICParagraphInfo *)self paragraphStyle];
  v3 = [v2 style];

  return v3;
}

- (unint64_t)indent
{
  v2 = [(ICParagraphInfo *)self paragraphStyle];
  v3 = [v2 indent];

  return v3;
}

- (_NSRange)characterRange
{
  length = self->_characterRange.length;
  location = self->_characterRange.location;
  result.length = length;
  result.location = location;
  return result;
}

- (_NSRange)rangeIncludingChildren
{
  length = self->_rangeIncludingChildren.length;
  location = self->_rangeIncludingChildren.location;
  result.length = length;
  result.location = location;
  return result;
}

@end