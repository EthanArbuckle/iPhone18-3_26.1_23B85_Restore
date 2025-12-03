@interface CKBalloonSelectionState
+ (id)balloonSelectionState:(int64_t)state;
+ (id)balloonSelectionState:(int64_t)state textSelectionRange:(_NSRange)range;
- (CKBalloonSelectionState)initWithStyle:(int64_t)style textSelectionRange:(_NSRange)range;
- (_NSRange)textSelectionRange;
- (id)description;
@end

@implementation CKBalloonSelectionState

- (CKBalloonSelectionState)initWithStyle:(int64_t)style textSelectionRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v8.receiver = self;
  v8.super_class = CKBalloonSelectionState;
  result = [(CKBalloonSelectionState *)&v8 init];
  if (result)
  {
    result->_style = style;
    result->_textSelectionRange.location = location;
    result->_textSelectionRange.length = length;
  }

  return result;
}

+ (id)balloonSelectionState:(int64_t)state
{
  v3 = [[self alloc] initWithStyle:state textSelectionRange:{0, 0}];

  return v3;
}

+ (id)balloonSelectionState:(int64_t)state textSelectionRange:(_NSRange)range
{
  v4 = [[self alloc] initWithStyle:state textSelectionRange:{range.location, range.length}];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CKBalloonSelectionState;
  v4 = [(CKBalloonSelectionState *)&v9 description];
  style = self->_style;
  v6 = NSStringFromRange(self->_textSelectionRange);
  v7 = [v3 stringWithFormat:@"%@: style: %ld, selection range: %@", v4, style, v6];

  return v7;
}

- (_NSRange)textSelectionRange
{
  length = self->_textSelectionRange.length;
  location = self->_textSelectionRange.location;
  result.length = length;
  result.location = location;
  return result;
}

@end