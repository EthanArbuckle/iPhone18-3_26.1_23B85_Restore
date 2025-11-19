@interface _CUISubrangeData
- (_CUISubrangeData)initWithData:(id)a3 range:(_NSRange)a4;
- (void)dealloc;
@end

@implementation _CUISubrangeData

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _CUISubrangeData;
  [(_CUISubrangeData *)&v3 dealloc];
}

- (_CUISubrangeData)initWithData:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v9.receiver = self;
  v9.super_class = _CUISubrangeData;
  v7 = [(_CUISubrangeData *)&v9 init];
  if (v7)
  {
    v7->_data = a3;
    v7->_range.location = location;
    v7->_range.length = length;
  }

  return v7;
}

@end