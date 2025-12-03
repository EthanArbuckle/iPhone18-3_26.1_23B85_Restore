@interface PKFaceIDBannerHandleState
+ (id)createForGlyphState:(int64_t)state;
- (PKFaceIDBannerHandleState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFaceIDBannerHandleState

+ (id)createForGlyphState:(int64_t)state
{
  result = [PKFaceIDBannerHandleState alloc];
  if (result)
  {
    v5.receiver = result;
    v5.super_class = PKBannerHandleState;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      *(result + 1) = 1;
    }
  }

  *(result + 2) = state;
  return result;
}

- (PKFaceIDBannerHandleState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKFaceIDBannerHandleState;
  v5 = [(PKBannerHandleState *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_glyphState = [coderCopy decodeIntegerForKey:@"glyphState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKFaceIDBannerHandleState;
  coderCopy = coder;
  [(PKBannerHandleState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_glyphState forKey:{@"glyphState", v5.receiver, v5.super_class}];
}

@end