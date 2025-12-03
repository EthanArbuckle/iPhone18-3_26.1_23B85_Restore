@interface PKFaceIDBannerHandleServerState
+ (id)createForSecurelyVisible:(BOOL)visible;
- (PKFaceIDBannerHandleServerState)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKFaceIDBannerHandleServerState

+ (id)createForSecurelyVisible:(BOOL)visible
{
  result = [PKFaceIDBannerHandleServerState alloc];
  if (result)
  {
    v5.receiver = result;
    v5.super_class = PKBannerHandleServerState;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      *(result + 1) = 1;
    }
  }

  *(result + 16) = visible;
  return result;
}

- (PKFaceIDBannerHandleServerState)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = PKFaceIDBannerHandleServerState;
  v5 = [(PKBannerHandleServerState *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_securelyVisible = [coderCopy decodeBoolForKey:@"visible"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = PKFaceIDBannerHandleServerState;
  coderCopy = coder;
  [(PKBannerHandleServerState *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_securelyVisible forKey:{@"visible", v5.receiver, v5.super_class}];
}

@end