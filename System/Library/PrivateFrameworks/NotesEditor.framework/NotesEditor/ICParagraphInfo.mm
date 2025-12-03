@interface ICParagraphInfo
- (_NSRange)characterRange;
- (_NSRange)rangeIncludingChildren;
- (unint64_t)indent;
- (unsigned)style;
@end

@implementation ICParagraphInfo

- (unsigned)style
{
  paragraphStyle = [(ICParagraphInfo *)self paragraphStyle];
  style = [paragraphStyle style];

  return style;
}

- (unint64_t)indent
{
  paragraphStyle = [(ICParagraphInfo *)self paragraphStyle];
  indent = [paragraphStyle indent];

  return indent;
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