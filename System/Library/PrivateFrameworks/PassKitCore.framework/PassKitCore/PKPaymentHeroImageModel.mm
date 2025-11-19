@interface PKPaymentHeroImageModel
- (PKPaymentHeroImageModel)initWithDictionary:(id)a3;
@end

@implementation PKPaymentHeroImageModel

- (PKPaymentHeroImageModel)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(PKPaymentHeroImageModel *)self init];
  if (!v5 || ([v4 PKURLForKey:@"url"], v6 = objc_claimAutoreleasedReturnValue(), url = v5->_url, v5->_url = v6, url, objc_msgSend(v4, "PKStringForKey:", @"sha1"), v8 = objc_claimAutoreleasedReturnValue(), imageSha = v5->_imageSha, v5->_imageSha = v8, imageSha, v5->_url) && v5->_imageSha)
  {
    v10 = v5;
  }

  else
  {
    v11 = PKLogFacilityTypeGetObject(7uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1AD337000, v11, OS_LOG_TYPE_DEFAULT, "Invalid hero image model", v13, 2u);
    }

    v10 = 0;
  }

  return v10;
}

@end