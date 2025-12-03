@interface PKPassDetailsImageSet
- (BOOL)isEqual:(id)equal;
- (PKPassDetailsImageSet)initWithCoder:(id)coder;
- (PKPassDetailsImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKPassDetailsImageSet

- (PKPassDetailsImageSet)initWithDisplayProfile:(id)profile fileURL:(id)l screenScale:(double)scale suffix:(id)suffix
{
  profileCopy = profile;
  lCopy = l;
  suffixCopy = suffix;
  v19.receiver = self;
  v19.super_class = PKPassDetailsImageSet;
  v13 = [(PKImageSet *)&v19 initWithDisplayProfile:profileCopy fileURL:lCopy screenScale:suffixCopy suffix:scale];
  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E696AAE8] bundleWithURL:lCopy];
    v16 = [PKImage imageNamed:@"cardHolderPicture" inBundle:v15 screenScale:suffixCopy suffix:scale];
    cardHolderPicture = v13->_cardHolderPicture;
    v13->_cardHolderPicture = v16;

    objc_autoreleasePoolPop(v14);
  }

  return v13;
}

- (PKPassDetailsImageSet)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = PKPassDetailsImageSet;
  v5 = [(PKImageSet *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cardHolderPicture"];
    cardHolderPicture = v5->_cardHolderPicture;
    v5->_cardHolderPicture = v7;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = PKPassDetailsImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:coderCopy];
  v5 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_cardHolderPicture forKey:@"cardHolderPicture"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKImageSet *)self _isSetImage:self->_cardHolderPicture equalToImage:equalCopy[3]];

  return v5;
}

- (unint64_t)hash
{
  imageHash = [(PKImage *)self->_cardHolderPicture imageHash];
  v3 = [imageHash hash];

  return v3;
}

@end