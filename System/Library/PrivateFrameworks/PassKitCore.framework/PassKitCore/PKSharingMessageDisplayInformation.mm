@interface PKSharingMessageDisplayInformation
- (PKSharingMessageDisplayInformation)initWithCoder:(id)a3;
- (id)_initWithTitle:(void *)a3 subtitle:(void *)a4 imageURL:(void *)a5 openGraphURL:;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PKSharingMessageDisplayInformation

- (id)_initWithTitle:(void *)a3 subtitle:(void *)a4 imageURL:(void *)a5 openGraphURL:
{
  v23 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v20.receiver = a1;
    v20.super_class = PKSharingMessageDisplayInformation;
    v14 = objc_msgSendSuper2(&v20, sel_init);
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      v15 = [v12 scheme];
      v16 = [v15 isEqualToString:@"https"];

      if (v16)
      {
        v17 = v12;
        v18 = a1[3];
        a1[3] = v17;
      }

      else
      {
        v18 = PKLogFacilityTypeGetObject(0x22uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v22 = v12;
          _os_log_error_impl(&dword_1AD337000, v18, OS_LOG_TYPE_ERROR, "PKSharingMessageDisplayInformation: received non-HTTPS image URL: %@", buf, 0xCu);
        }
      }

      objc_storeStrong(a1 + 4, a5);
    }
  }

  return a1;
}

- (PKSharingMessageDisplayInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = PKSharingMessageDisplayInformation;
  v5 = [(PKSharingMessageDisplayInformation *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    title = v5->_title;
    v5->_title = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    subtitle = v5->_subtitle;
    v5->_subtitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageURL"];
    imageURL = v5->_imageURL;
    v5->_imageURL = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"openGraphURL"];
    openGraphURL = v5->_openGraphURL;
    v5->_openGraphURL = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_imageURL forKey:@"imageURL"];
  [v5 encodeObject:self->_openGraphURL forKey:@"openGraphURL"];
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