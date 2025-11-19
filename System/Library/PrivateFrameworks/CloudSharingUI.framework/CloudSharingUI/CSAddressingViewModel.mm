@interface CSAddressingViewModel
- (CSAddressingViewModel)initWithCoder:(id)a3;
- (CSAddressingViewModel)initWithHeaderImageData:(id)a3 headerTitle:(id)a4 loadingText:(id)a5 supplementaryText:(id)a6 userInfoText:(id)a7 primaryButtonText:(id)a8 secondaryButtonText:(id)a9;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CSAddressingViewModel

- (CSAddressingViewModel)initWithHeaderImageData:(id)a3 headerTitle:(id)a4 loadingText:(id)a5 supplementaryText:(id)a6 userInfoText:(id)a7 primaryButtonText:(id)a8 secondaryButtonText:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v25.receiver = self;
  v25.super_class = CSAddressingViewModel;
  v22 = [(CSAddressingViewModel *)&v25 init];
  v23 = v22;
  if (v22)
  {
    [(CSAddressingViewModel *)v22 setHeaderImageData:v15];
    [(CSAddressingViewModel *)v23 setHeaderTitle:v16];
    [(CSAddressingViewModel *)v23 setLoadingText:v17];
    [(CSAddressingViewModel *)v23 setSupplementaryText:v18];
    [(CSAddressingViewModel *)v23 setUserInfoText:v19];
    [(CSAddressingViewModel *)v23 setPrimaryButtonText:v20];
    [(CSAddressingViewModel *)v23 setSecondaryButtonText:v21];
  }

  return v23;
}

- (void)encodeWithCoder:(id)a3
{
  headerImageData = self->_headerImageData;
  v5 = a3;
  [v5 encodeObject:headerImageData forKey:@"headerImageData"];
  [v5 encodeObject:self->_headerTitle forKey:@"headerTitle"];
  [v5 encodeObject:self->_loadingText forKey:@"loadingText"];
  [v5 encodeObject:self->_supplementaryText forKey:@"supplementaryText"];
  [v5 encodeObject:self->_userInfoText forKey:@"userInfoText"];
  [v5 encodeObject:self->_primaryButtonText forKey:@"primaryButtonText"];
  [v5 encodeObject:self->_secondaryButtonText forKey:@"secondaryButtonText"];
}

- (CSAddressingViewModel)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CSAddressingViewModel;
  v5 = [(CSAddressingViewModel *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headerImageData"];
    headerImageData = v5->_headerImageData;
    v5->_headerImageData = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headerTitle"];
    headerTitle = v5->_headerTitle;
    v5->_headerTitle = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"loadingText"];
    loadingText = v5->_loadingText;
    v5->_loadingText = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"supplementaryText"];
    supplementaryText = v5->_supplementaryText;
    v5->_supplementaryText = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userInfoText"];
    userInfoText = v5->_userInfoText;
    v5->_userInfoText = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryButtonText"];
    primaryButtonText = v5->_primaryButtonText;
    v5->_primaryButtonText = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryButtonText"];
    secondaryButtonText = v5->_secondaryButtonText;
    v5->_secondaryButtonText = v18;
  }

  return v5;
}

@end