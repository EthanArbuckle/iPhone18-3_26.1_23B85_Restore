@interface PKSharingMessageDisplayInformation
- (PKSharingMessageDisplayInformation)initWithCoder:(id)coder;
- (id)_initWithTitle:(void *)title subtitle:(void *)subtitle imageURL:(void *)l openGraphURL:;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PKSharingMessageDisplayInformation

- (id)_initWithTitle:(void *)title subtitle:(void *)subtitle imageURL:(void *)l openGraphURL:
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a2;
  titleCopy = title;
  subtitleCopy = subtitle;
  lCopy = l;
  if (self)
  {
    v20.receiver = self;
    v20.super_class = PKSharingMessageDisplayInformation;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    self = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(self + 2, title);
      scheme = [subtitleCopy scheme];
      v16 = [scheme isEqualToString:@"https"];

      if (v16)
      {
        v17 = subtitleCopy;
        v18 = self[3];
        self[3] = v17;
      }

      else
      {
        v18 = PKLogFacilityTypeGetObject(0x22uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = subtitleCopy;
          _os_log_error_impl(&dword_1AD337000, v18, OS_LOG_TYPE_ERROR, "PKSharingMessageDisplayInformation: received non-HTTPS image URL: %@", buf, 0xCu);
        }
      }

      objc_storeStrong(self + 4, l);
    }
  }

  return self;
}

- (PKSharingMessageDisplayInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = PKSharingMessageDisplayInformation;
  v5 = [(PKSharingMessageDisplayInformation *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"openGraphURL"];
    openGraphURL = v5->_openGraphURL;
    v5->_openGraphURL = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_imageURL forKey:@"imageURL"];
  [coderCopy encodeObject:self->_openGraphURL forKey:@"openGraphURL"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  [v3 appendFormat:@"title: '%@'; ", self->_title];
  [v3 appendFormat:@"subtitle: '%@'; ", self->_subtitle];
  [v3 appendFormat:@"imageURL: '%@'; ", self->_imageURL];
  [v3 appendFormat:@"openGraphURL: '%@'; ", self->_openGraphURL];
  [v3 appendFormat:@">"];
  v4 = [v3 copy];

  return v4;
}

@end