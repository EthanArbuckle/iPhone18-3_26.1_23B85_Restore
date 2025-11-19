@interface CKBalloonSelectionState
+ (id)balloonSelectionState:(int64_t)a3;
+ (id)balloonSelectionState:(int64_t)a3 textSelectionRange:(_NSRange)a4;
- (CKBalloonSelectionState)initWithStyle:(int64_t)a3 textSelectionRange:(_NSRange)a4;
- (_NSRange)textSelectionRange;
- (id)description;
@end

@implementation CKBalloonSelectionState

- (CKBalloonSelectionState)initWithStyle:(int64_t)a3 textSelectionRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8.receiver = self;
  v8.super_class = CKBalloonSelectionState;
  result = [(CKBalloonSelectionState *)&v8 init];
  if (result)
  {
    result->_style = a3;
    result->_textSelectionRange.location = location;
    result->_textSelectionRange.length = length;
  }

  return result;
}

+ (id)balloonSelectionState:(int64_t)a3
{
  v3 = [[a1 alloc] initWithStyle:a3 textSelectionRange:{0, 0}];

  return v3;
}

+ (id)balloonSelectionState:(int64_t)a3 textSelectionRange:(_NSRange)a4
{
  v4 = [[a1 alloc] initWithStyle:a3 textSelectionRange:{a4.location, a4.length}];

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