@interface _CUISubrangeData
- (_CUISubrangeData)initWithData:(id)data range:(_NSRange)range;
- (void)dealloc;
@end

@implementation _CUISubrangeData

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUISubrangeData;
  [(_CUISubrangeData *)&v3 dealloc];
}

- (_CUISubrangeData)initWithData:(id)data range:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v9.receiver = self;
  v9.super_class = _CUISubrangeData;
  v7 = [(_CUISubrangeData *)&v9 init];
  if (v7)
  {
    v7->_data = data;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

@end