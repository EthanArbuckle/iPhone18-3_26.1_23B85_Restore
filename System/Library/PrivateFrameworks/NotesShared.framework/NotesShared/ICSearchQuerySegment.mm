@interface ICSearchQuerySegment
- (ICSearchQuerySegment)initWithSegmentString:(id)a3 range:(_NSRange)a4 type:(unint64_t)a5 isExpandable:(BOOL)a6;
- (_NSRange)segmentRange;
- (id)description;
@end

@implementation ICSearchQuerySegment

- (ICSearchQuerySegment)initWithSegmentString:(id)a3 range:(_NSRange)a4 type:(unint64_t)a5 isExpandable:(BOOL)a6
{
  length = a4.length;
  location = a4.location;
  v12 = a3;
  v16.receiver = self;
  v16.super_class = ICSearchQuerySegment;
  v13 = [(ICSearchQuerySegment *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_segmentString, a3);
    v14->_segmentRange.location = location;
    v14->_segmentRange.length = length;
    v14->_type = a5;
    v14->_isExpandable = a6;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(ICSearchQuerySegment *)self type];
  v5 = [(ICSearchQuerySegment *)self segmentString];
  v12.location = [(ICSearchQuerySegment *)self segmentRange];
  v6 = NSStringFromRange(v12);
  v7 = [(ICSearchQuerySegment *)self isExpandable];
  v8 = &stru_2827172C0;
  if (v7)
  {
    v8 = @"expandable";
  }

  v9 = [v3 stringWithFormat:@"type=%lu: %@ @ %@, %@", v4, v5, v6, v8];

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