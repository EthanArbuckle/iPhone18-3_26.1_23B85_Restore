@interface PKFaceIDBannerHandleServerState
+ (id)createForSecurelyVisible:(BOOL)a3;
- (PKFaceIDBannerHandleServerState)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKFaceIDBannerHandleServerState

+ (id)createForSecurelyVisible:(BOOL)a3
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

  *(result + 16) = a3;
  return result;
}

- (PKFaceIDBannerHandleServerState)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PKFaceIDBannerHandleServerState;
  v5 = [(PKBannerHandleServerState *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_securelyVisible = [v4 decodeBoolForKey:@"visible"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = PKFaceIDBannerHandleServerState;
  v4 = a3;
  [(PKBannerHandleServerState *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_securelyVisible forKey:{@"visible", v5.receiver, v5.super_class}];
}

@end