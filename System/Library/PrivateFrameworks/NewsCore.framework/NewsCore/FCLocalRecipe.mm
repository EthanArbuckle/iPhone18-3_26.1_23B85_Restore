@interface FCLocalRecipe
- (FCLocalRecipe)initWithIdentifier:(id)a3 title:(id)a4 shortExcerpt:(id)a5 sourceChannel:(id)a6 thumbnailURL:(id)a7 contentURL:(id)a8 contentFormat:(unint64_t)a9 contentEncoding:(unint64_t)a10 thumbnailPrimaryColor:(id)a11 thumbnailBackgroundColor:(id)a12;
@end

@implementation FCLocalRecipe

- (FCLocalRecipe)initWithIdentifier:(id)a3 title:(id)a4 shortExcerpt:(id)a5 sourceChannel:(id)a6 thumbnailURL:(id)a7 contentURL:(id)a8 contentFormat:(unint64_t)a9 contentEncoding:(unint64_t)a10 thumbnailPrimaryColor:(id)a11 thumbnailBackgroundColor:(id)a12
{
  v19 = a3;
  obj = a4;
  v20 = a4;
  v31 = a5;
  v21 = a5;
  v34 = a6;
  v32 = a7;
  v22 = a7;
  v23 = a8;
  v33 = a11;
  v24 = a12;
  v35.receiver = self;
  v35.super_class = FCLocalRecipe;
  v25 = [(FCLocalRecipe *)&v35 init];
  v26 = v25;
  if (v25)
  {
    objc_storeStrong(&v25->_identifier, a3);
    objc_storeStrong(&v26->_title, obj);
    objc_storeStrong(&v26->_shortExcerpt, v31);
    v27 = [v34 copy];
    sourceChannel = v26->_sourceChannel;
    v26->_sourceChannel = v27;

    objc_storeStrong(&v26->_thumbnailURL, v32);
    objc_storeStrong(&v26->_contentURL, a8);
    v26->_contentFormat = a9;
    v26->_contentEncoding = a10;
    objc_storeStrong(&v26->_thumbnailPrimaryColor, a11);
    objc_storeStrong(&v26->_thumbnailBackgroundColor, a12);
  }

  return v26;
}

@end