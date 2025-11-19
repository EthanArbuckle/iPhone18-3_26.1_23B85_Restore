@interface PKFaceIDBannerHandleState
+ (id)createForGlyphState:(int64_t)a3;
- (PKFaceIDBannerHandleState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFaceIDBannerHandleState

+ (id)createForGlyphState:(int64_t)a3
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

  *(result + 2) = a3;
  return result;
}

- (PKFaceIDBannerHandleState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKFaceIDBannerHandleState;
  v5 = [(PKBannerHandleState *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_glyphState = [v4 decodeIntegerForKey:@"glyphState"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFaceIDBannerHandleState;
  v4 = a3;
  [(PKBannerHandleState *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_glyphState forKey:{@"glyphState", v5.receiver, v5.super_class}];
}

@end