@interface SGPostalAddressExtraction
- (SGPostalAddressExtraction)initWithPlainText:(id)text components:(id)components;
@end

@implementation SGPostalAddressExtraction

- (SGPostalAddressExtraction)initWithPlainText:(id)text components:(id)components
{
  textCopy = text;
  componentsCopy = components;
  v12.receiver = self;
  v12.super_class = SGPostalAddressExtraction;
  v9 = [(SGPostalAddressExtraction *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_plainText, text);
    objc_storeStrong(&v10->_components, components);
  }

  return v10;
}

@end