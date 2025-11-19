@interface PKPaymentContentItem
+ (PKPaymentContentItem)itemWithProtobuf:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPaymentContentItem:(id)a3;
- (PKPaymentContentItem)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)protobuf;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setImage:(CGImage *)a3;
@end

@implementation PKPaymentContentItem

+ (PKPaymentContentItem)itemWithProtobuf:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(PKPaymentContentItem);
  v5 = [v3 imageRequest];

  if (v5)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = objc_opt_class();
    v8 = [v3 imageRequest];
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:v8 error:0];
    [(PKPaymentContentItem *)v4 setImageRequest:v9];
  }

  v10 = [v3 image];
  v11 = PKCreateCGImage(v10);

  if (v11)
  {
    [(PKPaymentContentItem *)v4 setImage:v11];
    CGImageRelease(v11);
  }

  v12 = [v3 label];

  if (v12)
  {
    v13 = MEMORY[0x1E696ACD0];
    v14 = objc_opt_class();
    v15 = [v3 label];
    v16 = [v13 unarchivedObjectOfClass:v14 fromData:v15 error:0];
    [(PKPaymentContentItem *)v4 setLabel:v16];
  }

  v17 = [v3 title];

  if (v17)
  {
    v18 = MEMORY[0x1E696ACD0];
    v19 = objc_opt_class();
    v20 = [v3 title];
    v21 = [v18 unarchivedObjectOfClass:v19 fromData:v20 error:0];
    [(PKPaymentContentItem *)v4 setTitle:v21];
  }

  -[PKPaymentContentItem setCentered:](v4, "setCentered:", [v3 centered]);

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentContentItem);
  v4 = [(PKPaymentContentItem *)self imageRequest];

  if (v4)
  {
    v5 = MEMORY[0x1E696ACC8];
    v6 = [(PKPaymentContentItem *)self imageRequest];
    v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentContentItem *)v3 setImageRequest:v7];
  }

  if ([(PKPaymentContentItem *)self image])
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithCGImage:{-[PKPaymentContentItem image](self, "image")}];
    [(PKProtobufPaymentContentItem *)v3 setImage:v8];
  }

  v9 = [(PKPaymentContentItem *)self label];

  if (v9)
  {
    v10 = MEMORY[0x1E696ACC8];
    v11 = [(PKPaymentContentItem *)self label];
    v12 = [v10 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentContentItem *)v3 setLabel:v12];
  }

  v13 = [(PKPaymentContentItem *)self title];

  if (v13)
  {
    v14 = MEMORY[0x1E696ACC8];
    v15 = [(PKPaymentContentItem *)self title];
    v16 = [v14 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentContentItem *)v3 setTitle:v16];
  }

  [(PKProtobufPaymentContentItem *)v3 setCentered:[(PKPaymentContentItem *)self isCentered]];

  return v3;
}

- (PKPaymentContentItem)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = PKPaymentContentItem;
  v5 = [(PKPaymentContentItem *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageRequest"];
    imageRequest = v5->_imageRequest;
    v5->_imageRequest = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    v5->_image = PKCreateCGImage(v15);
    v5->_centered = [v4 decodeBoolForKey:@"centered"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_imageRequest forKey:@"imageRequest"];
  if (self->_image)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithCGImage:?];
    [v5 encodeObject:v4 forKey:@"image"];
  }

  [v5 encodeBool:self->_centered forKey:@"centered"];
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = PKPaymentContentItem;
  [(PKPaymentContentItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSAttributedString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSAttributedString *)self->_label copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSURLRequest *)self->_imageRequest copyWithZone:a3];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  image = self->_image;
  if (image)
  {
    *(v5 + 24) = CGImageCreateCopy(image);
  }

  *(v5 + 8) = self->_centered;
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentContentItem *)self isEqualToPaymentContentItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentContentItem:(id)a3
{
  v4 = a3;
  title = self->_title;
  v6 = v4[4];
  if (title)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (title != v6)
    {
      goto LABEL_19;
    }
  }

  else if (([(NSAttributedString *)title isEqual:?]& 1) == 0)
  {
    goto LABEL_19;
  }

  label = self->_label;
  v9 = v4[5];
  if (label && v9)
  {
    if (([(NSAttributedString *)label isEqual:?]& 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (label != v9)
  {
    goto LABEL_19;
  }

  imageRequest = self->_imageRequest;
  v11 = v4[2];
  if (!imageRequest || !v11)
  {
    if (imageRequest == v11)
    {
      goto LABEL_17;
    }

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (([(NSURLRequest *)imageRequest isEqual:?]& 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v12 = self->_centered == *(v4 + 8);
LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E695DF70] array];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_label];
  [v3 safelyAddObject:self->_imageRequest];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_centered];
  [v3 safelyAddObject:v4];

  v5 = PKCombinedHash(17, v3);
  return v5;
}

- (void)setImage:(CGImage *)a3
{
  image = self->_image;
  if (image != a3)
  {
    CGImageRelease(image);
    self->_image = CGImageRetain(a3);
  }
}

@end