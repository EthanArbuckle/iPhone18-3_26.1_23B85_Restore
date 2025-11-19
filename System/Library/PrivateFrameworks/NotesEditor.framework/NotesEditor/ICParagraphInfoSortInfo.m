@interface ICParagraphInfoSortInfo
- (_NSRange)characterRange;
@end

@implementation ICParagraphInfoSortInfo

- (_NSRange)characterRange
{
  length = self->_characterRange.length;
  location = self->_characterRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end