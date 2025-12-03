@interface SFPrivacyReportGridRowLayoutInfo
- (SFPrivacyReportGridRowLayoutInfo)initWithRow:(int64_t)row itemRange:(_NSRange)range;
- (_NSRange)itemRange;
@end

@implementation SFPrivacyReportGridRowLayoutInfo

- (SFPrivacyReportGridRowLayoutInfo)initWithRow:(int64_t)row itemRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v11.receiver = self;
  v11.super_class = SFPrivacyReportGridRowLayoutInfo;
  v7 = [(SFPrivacyReportGridRowLayoutInfo *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_row = row;
    v7->_itemRange.location = location;
    v7->_itemRange.length = length;
    v9 = v7;
  }

  return v8;
}

- (_NSRange)itemRange
{
  length = self->_itemRange.length;
  location = self->_itemRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end