@interface ICSearchQuerySegment
- (ICSearchQuerySegment)initWithSegmentString:(id)string range:(_NSRange)range type:(unint64_t)type isExpandable:(BOOL)expandable;
- (_NSRange)segmentRange;
- (id)description;
@end

@implementation ICSearchQuerySegment

- (ICSearchQuerySegment)initWithSegmentString:(id)string range:(_NSRange)range type:(unint64_t)type isExpandable:(BOOL)expandable
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  v16.receiver = self;
  v16.super_class = ICSearchQuerySegment;
  v13 = [(ICSearchQuerySegment *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_segmentString, string);
    v14->_segmentRange.location = location;
    v14->_segmentRange.length = length;
    v14->_type = type;
    v14->_isExpandable = expandable;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  type = [(ICSearchQuerySegment *)self type];
  segmentString = [(ICSearchQuerySegment *)self segmentString];
  v12.location = [(ICSearchQuerySegment *)self segmentRange];
  v6 = NSStringFromRange(v12);
  isExpandable = [(ICSearchQuerySegment *)self isExpandable];
  v8 = &stru_2827172C0;
  if (isExpandable)
  {
    v8 = @"expandable";
  }

  v9 = [v3 stringWithFormat:@"type=%lu: %@ @ %@, %@", type, segmentString, v6, v8];

  return v9;
}

- (_NSRange)segmentRange
{
  length = self->_segmentRange.length;
  location = self->_segmentRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end