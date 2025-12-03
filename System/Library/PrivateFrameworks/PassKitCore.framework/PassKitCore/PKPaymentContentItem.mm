@interface PKPaymentContentItem
+ (PKPaymentContentItem)itemWithProtobuf:(id)protobuf;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPaymentContentItem:(id)item;
- (PKPaymentContentItem)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)protobuf;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setImage:(CGImage *)image;
@end

@implementation PKPaymentContentItem

+ (PKPaymentContentItem)itemWithProtobuf:(id)protobuf
{
  protobufCopy = protobuf;
  v4 = objc_alloc_init(PKPaymentContentItem);
  imageRequest = [protobufCopy imageRequest];

  if (imageRequest)
  {
    v6 = MEMORY[0x1E696ACD0];
    v7 = objc_opt_class();
    imageRequest2 = [protobufCopy imageRequest];
    v9 = [v6 unarchivedObjectOfClass:v7 fromData:imageRequest2 error:0];
    [(PKPaymentContentItem *)v4 setImageRequest:v9];
  }

  image = [protobufCopy image];
  v11 = PKCreateCGImage(image);

  if (v11)
  {
    [(PKPaymentContentItem *)v4 setImage:v11];
    CGImageRelease(v11);
  }

  label = [protobufCopy label];

  if (label)
  {
    v13 = MEMORY[0x1E696ACD0];
    v14 = objc_opt_class();
    label2 = [protobufCopy label];
    v16 = [v13 unarchivedObjectOfClass:v14 fromData:label2 error:0];
    [(PKPaymentContentItem *)v4 setLabel:v16];
  }

  title = [protobufCopy title];

  if (title)
  {
    v18 = MEMORY[0x1E696ACD0];
    v19 = objc_opt_class();
    title2 = [protobufCopy title];
    v21 = [v18 unarchivedObjectOfClass:v19 fromData:title2 error:0];
    [(PKPaymentContentItem *)v4 setTitle:v21];
  }

  -[PKPaymentContentItem setCentered:](v4, "setCentered:", [protobufCopy centered]);

  return v4;
}

- (id)protobuf
{
  v3 = objc_alloc_init(PKProtobufPaymentContentItem);
  imageRequest = [(PKPaymentContentItem *)self imageRequest];

  if (imageRequest)
  {
    v5 = MEMORY[0x1E696ACC8];
    imageRequest2 = [(PKPaymentContentItem *)self imageRequest];
    v7 = [v5 archivedDataWithRootObject:imageRequest2 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentContentItem *)v3 setImageRequest:v7];
  }

  if ([(PKPaymentContentItem *)self image])
  {
    v8 = [MEMORY[0x1E695DEF0] dataWithCGImage:{-[PKPaymentContentItem image](self, "image")}];
    [(PKProtobufPaymentContentItem *)v3 setImage:v8];
  }

  label = [(PKPaymentContentItem *)self label];

  if (label)
  {
    v10 = MEMORY[0x1E696ACC8];
    label2 = [(PKPaymentContentItem *)self label];
    v12 = [v10 archivedDataWithRootObject:label2 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentContentItem *)v3 setLabel:v12];
  }

  title = [(PKPaymentContentItem *)self title];

  if (title)
  {
    v14 = MEMORY[0x1E696ACC8];
    title2 = [(PKPaymentContentItem *)self title];
    v16 = [v14 archivedDataWithRootObject:title2 requiringSecureCoding:1 error:0];
    [(PKProtobufPaymentContentItem *)v3 setTitle:v16];
  }

  [(PKProtobufPaymentContentItem *)v3 setCentered:[(PKPaymentContentItem *)self isCentered]];

  return v3;
}

- (PKPaymentContentItem)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = PKPaymentContentItem;
  v5 = [(PKPaymentContentItem *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"label"];
    label = v5->_label;
    v5->_label = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageRequest"];
    imageRequest = v5->_imageRequest;
    v5->_imageRequest = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"image"];
    v5->_image = PKCreateCGImage(v15);
    v5->_centered = [coderCopy decodeBoolForKey:@"centered"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_imageRequest forKey:@"imageRequest"];
  if (self->_image)
  {
    v4 = [MEMORY[0x1E695DEF0] dataWithCGImage:?];
    [coderCopy encodeObject:v4 forKey:@"image"];
  }

  [coderCopy encodeBool:self->_centered forKey:@"centered"];
}

- (void)dealloc
{
  CGImageRelease(self->_image);
  v3.receiver = self;
  v3.super_class = PKPaymentContentItem;
  [(PKPaymentContentItem *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSAttributedString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSAttributedString *)self->_label copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  v10 = [(NSURLRequest *)self->_imageRequest copyWithZone:zone];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKPaymentContentItem *)self isEqualToPaymentContentItem:v5];
  }

  return v6;
}

- (BOOL)isEqualToPaymentContentItem:(id)item
{
  itemCopy = item;
  title = self->_title;
  v6 = itemCopy[4];
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
  v9 = itemCopy[5];
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
  v11 = itemCopy[2];
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
  v12 = self->_centered == *(itemCopy + 8);
LABEL_20:

  return v12;
}

- (unint64_t)hash
{
  array = [MEMORY[0x1E695DF70] array];
  [array safelyAddObject:self->_title];
  [array safelyAddObject:self->_label];
  [array safelyAddObject:self->_imageRequest];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:self->_centered];
  [array safelyAddObject:v4];

  v5 = PKCombinedHash(17, array);
  return v5;
}

- (void)setImage:(CGImage *)image
{
  image = self->_image;
  if (image != image)
  {
    CGImageRelease(image);
    self->_image = CGImageRetain(image);
  }
}

@end