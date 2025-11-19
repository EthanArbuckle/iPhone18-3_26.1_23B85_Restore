@interface _EMKTouchInfo
- (CGRect)frame;
- (_NSRange)tokenListRange;
@end

@implementation _EMKTouchInfo

- (_NSRange)tokenListRange
{
  objc_copyStruct(v4, &self->_tokenListRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

- (CGRect)frame
{
  objc_copyStruct(v6, &self->_frame, 32, 1, 0);
  v2 = *v6;
  v3 = *&v6[1];
  v4 = *&v6[2];
  v5 = *&v6[3];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

@end