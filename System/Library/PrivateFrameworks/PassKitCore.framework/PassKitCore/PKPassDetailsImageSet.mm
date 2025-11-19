@interface PKPassDetailsImageSet
- (BOOL)isEqual:(id)a3;
- (PKPassDetailsImageSet)initWithCoder:(id)a3;
- (PKPassDetailsImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKPassDetailsImageSet

- (PKPassDetailsImageSet)initWithDisplayProfile:(id)a3 fileURL:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v19.receiver = self;
  v19.super_class = PKPassDetailsImageSet;
  v13 = [(PKImageSet *)&v19 initWithDisplayProfile:v10 fileURL:v11 screenScale:v12 suffix:a5];
  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [MEMORY[0x1E696AAE8] bundleWithURL:v11];
    v16 = [PKImage imageNamed:@"cardHolderPicture" inBundle:v15 screenScale:v12 suffix:a5];
    cardHolderPicture = v13->_cardHolderPicture;
    v13->_cardHolderPicture = v16;

    objc_autoreleasePoolPop(v14);
  }

  return v13;
}

- (PKPassDetailsImageSet)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PKPassDetailsImageSet;
  v5 = [(PKImageSet *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cardHolderPicture"];
    cardHolderPicture = v5->_cardHolderPicture;
    v5->_cardHolderPicture = v7;

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PKPassDetailsImageSet;
  [(PKImageSet *)&v6 encodeWithCoder:v4];
  v5 = objc_autoreleasePoolPush();
  [v4 encodeObject:self->_cardHolderPicture forKey:@"cardHolderPicture"];
  objc_autoreleasePoolPop(v5);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PKImageSet *)self _isSetImage:self->_cardHolderPicture equalToImage:v4[3]];

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PKImage *)self->_cardHolderPicture imageHash];
  v3 = [v2 hash];

  return v3;
}

@end