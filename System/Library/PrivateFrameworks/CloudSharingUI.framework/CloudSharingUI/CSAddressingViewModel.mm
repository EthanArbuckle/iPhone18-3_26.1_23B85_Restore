@interface CSAddressingViewModel
- (CSAddressingViewModel)initWithCoder:(id)coder;
- (CSAddressingViewModel)initWithHeaderImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)supplementaryText userInfoText:(id)infoText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CSAddressingViewModel

- (CSAddressingViewModel)initWithHeaderImageData:(id)data headerTitle:(id)title loadingText:(id)text supplementaryText:(id)supplementaryText userInfoText:(id)infoText primaryButtonText:(id)buttonText secondaryButtonText:(id)secondaryButtonText
{
  dataCopy = data;
  titleCopy = title;
  textCopy = text;
  supplementaryTextCopy = supplementaryText;
  infoTextCopy = infoText;
  buttonTextCopy = buttonText;
  secondaryButtonTextCopy = secondaryButtonText;
  v25.receiver = self;
  v25.super_class = CSAddressingViewModel;
  v22 = [(CSAddressingViewModel *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(CSAddressingViewModel *)v22 setHeaderImageData:dataCopy];
    [(CSAddressingViewModel *)v23 setHeaderTitle:titleCopy];
    [(CSAddressingViewModel *)v23 setLoadingText:textCopy];
    [(CSAddressingViewModel *)v23 setSupplementaryText:supplementaryTextCopy];
    [(CSAddressingViewModel *)v23 setUserInfoText:infoTextCopy];
    [(CSAddressingViewModel *)v23 setPrimaryButtonText:buttonTextCopy];
    [(CSAddressingViewModel *)v23 setSecondaryButtonText:secondaryButtonTextCopy];
  }

  return v23;
}

- (void)encodeWithCoder:(id)coder
{
  headerImageData = self->_headerImageData;
  coderCopy = coder;
  [coderCopy encodeObject:headerImageData forKey:@"headerImageData"];
  [coderCopy encodeObject:self->_headerTitle forKey:@"headerTitle"];
  [coderCopy encodeObject:self->_loadingText forKey:@"loadingText"];
  [coderCopy encodeObject:self->_supplementaryText forKey:@"supplementaryText"];
  [coderCopy encodeObject:self->_userInfoText forKey:@"userInfoText"];
  [coderCopy encodeObject:self->_primaryButtonText forKey:@"primaryButtonText"];
  [coderCopy encodeObject:self->_secondaryButtonText forKey:@"secondaryButtonText"];
}

- (CSAddressingViewModel)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CSAddressingViewModel;
  v5 = [(CSAddressingViewModel *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerImageData"];
    headerImageData = v5->_headerImageData;
    v5->_headerImageData = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"headerTitle"];
    headerTitle = v5->_headerTitle;
    v5->_headerTitle = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"loadingText"];
    loadingText = v5->_loadingText;
    v5->_loadingText = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"supplementaryText"];
    supplementaryText = v5->_supplementaryText;
    v5->_supplementaryText = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userInfoText"];
    userInfoText = v5->_userInfoText;
    v5->_userInfoText = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryButtonText"];
    primaryButtonText = v5->_primaryButtonText;
    v5->_primaryButtonText = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryButtonText"];
    secondaryButtonText = v5->_secondaryButtonText;
    v5->_secondaryButtonText = v18;
  }

  return v5;
}

@end