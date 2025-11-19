@interface DOCAppearance
+ (DOCAppearance)documentsPickerAppearance;
+ (DOCAppearance)recentsPopoverAppearance;
- (BOOL)isEqual:(id)a3;
- (DOCAppearance)init;
- (DOCAppearance)initWithCoder:(id)a3;
- (NSString)collectionCreateButtonTitle;
- (UIColor)backgroundColor;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCollectionCreateButtonTitle:(id)a3;
@end

@implementation DOCAppearance

- (DOCAppearance)init
{
  v8.receiver = self;
  v8.super_class = DOCAppearance;
  v2 = [(DOCAppearance *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 24) = xmmword_1E5812320;
    v4 = DOCScreenSizePad12_9();
    v5 = 40.0;
    if (!v4)
    {
      v5 = 30.0;
    }

    v3[5] = v5;
    *(v3 + 18) = 0;
    *(v3 + 8) = 0;
    v3[6] = 0.0;
    v3[7] = 0.75;
    v6 = v3;
  }

  return v3;
}

- (UIColor)backgroundColor
{
  if ([(DOCAppearance *)self forceClearBackground])
  {
    v3 = [MEMORY[0x1E69DC888] clearColor];
    goto LABEL_8;
  }

  v3 = [(DOCAppearance *)self browserUserInterfaceStyle];
  if (v3 == 2)
  {
LABEL_6:
    v3 = [MEMORY[0x1E69DC888] systemBackgroundColor];
    goto LABEL_8;
  }

  if (v3 != 1)
  {
    if (v3)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v3 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_10];
LABEL_8:

  return v3;
}

- (NSString)collectionCreateButtonTitle
{
  collectionCreateButtonTitle = self->_collectionCreateButtonTitle;
  if (!collectionCreateButtonTitle)
  {
    v4 = _DocumentManagerBundle();
    v5 = [v4 localizedStringForKey:@"Create Document" value:@"Create Document" table:@"Localizable"];
    v6 = self->_collectionCreateButtonTitle;
    self->_collectionCreateButtonTitle = v5;

    collectionCreateButtonTitle = self->_collectionCreateButtonTitle;
  }

  return collectionCreateButtonTitle;
}

- (void)setCollectionCreateButtonTitle:(id)a3
{
  v4 = [a3 copy];
  collectionCreateButtonTitle = self->_collectionCreateButtonTitle;
  self->_collectionCreateButtonTitle = v4;

  MEMORY[0x1EEE66BB8](v4, collectionCreateButtonTitle);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && ([(DOCAppearance *)self defaultDocumentAspectRatio], v9 = v8, [(DOCAppearance *)v4 defaultDocumentAspectRatio], v9 == v10) && ([(DOCAppearance *)self compactHorizontalTableStackSpacing], v12 = v11, [(DOCAppearance *)v4 compactHorizontalTableStackSpacing], v12 == v13) && ([(DOCAppearance *)self regularHorizontalTableStackSpacing], v15 = v14, [(DOCAppearance *)v4 regularHorizontalTableStackSpacing], v15 == v16) && ([(DOCAppearance *)self fullHorizontalTableStackSpacing], v18 = v17, [(DOCAppearance *)v4 fullHorizontalTableStackSpacing], v18 == v19) && (v20 = [(DOCAppearance *)self showsCreateButton], v20 == [(DOCAppearance *)v4 showsCreateButton]) && (v21 = [(DOCAppearance *)self shouldShowFileExtensions], v21 == [(DOCAppearance *)v4 shouldShowFileExtensions]) && (v22 = [(DOCAppearance *)self forceClearBackground], v22 == [(DOCAppearance *)v4 forceClearBackground]) && (v23 = [(DOCAppearance *)self browserUserInterfaceStyle], v23 == [(DOCAppearance *)v4 browserUserInterfaceStyle]))
    {
      v24 = [(DOCAppearance *)self collectionCreateButtonTitle];
      v25 = [(DOCAppearance *)v4 collectionCreateButtonTitle];
      if (v24 == v25)
      {
        v6 = 1;
      }

      else
      {
        v26 = [(DOCAppearance *)self collectionCreateButtonTitle];
        v27 = [(DOCAppearance *)v4 collectionCreateButtonTitle];
        v6 = [v26 isEqual:v27];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[DOCAppearance allocWithZone:?]];
  if (v4)
  {
    [(DOCAppearance *)v4 setShowsCreateButton:[(DOCAppearance *)self showsCreateButton]];
    [(DOCAppearance *)v4 setShouldShowFileExtensions:[(DOCAppearance *)self shouldShowFileExtensions]];
    [(DOCAppearance *)self compactHorizontalTableStackSpacing];
    [(DOCAppearance *)v4 setCompactHorizontalTableStackSpacing:?];
    [(DOCAppearance *)self regularHorizontalTableStackSpacing];
    [(DOCAppearance *)v4 setRegularHorizontalTableStackSpacing:?];
    [(DOCAppearance *)self fullHorizontalTableStackSpacing];
    [(DOCAppearance *)v4 setFullHorizontalTableStackSpacing:?];
    [(DOCAppearance *)self defaultDocumentAspectRatio];
    [(DOCAppearance *)v4 setDefaultDocumentAspectRatio:?];
    v5 = [(NSString *)self->_collectionCreateButtonTitle copy];
    collectionCreateButtonTitle = v4->_collectionCreateButtonTitle;
    v4->_collectionCreateButtonTitle = v5;

    [(DOCAppearance *)v4 setBrowserUserInterfaceStyle:[(DOCAppearance *)self browserUserInterfaceStyle]];
    [(DOCAppearance *)v4 setForceClearBackground:[(DOCAppearance *)self forceClearBackground]];
  }

  return v4;
}

- (DOCAppearance)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = DOCAppearance;
  v5 = [(DOCAppearance *)&v13 init];
  if (v5)
  {
    [v4 decodeFloatForKey:@"defaultDocumentAspectRatio"];
    [(DOCAppearance *)v5 setDefaultDocumentAspectRatio:v6];
    [v4 decodeFloatForKey:@"regularHorizontalTableStackSpacing"];
    [(DOCAppearance *)v5 setRegularHorizontalTableStackSpacing:v7];
    [v4 decodeFloatForKey:@"fullHorizontalTableStackSpacing"];
    [(DOCAppearance *)v5 setFullHorizontalTableStackSpacing:v8];
    [v4 decodeFloatForKey:@"compactHorizontalTableStackSpacing"];
    [(DOCAppearance *)v5 setCompactHorizontalTableStackSpacing:v9];
    -[DOCAppearance setShowsCreateButton:](v5, "setShowsCreateButton:", [v4 decodeBoolForKey:@"showsCreateButton"]);
    -[DOCAppearance setShouldShowFileExtensions:](v5, "setShouldShowFileExtensions:", [v4 decodeBoolForKey:@"shouldShowFileExtensions"]);
    -[DOCAppearance setForceClearBackground:](v5, "setForceClearBackground:", [v4 decodeBoolForKey:@"forceClearBackground"]);
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"collectionCreateButtonTitle"];
    [(DOCAppearance *)v5 setCollectionCreateButtonTitle:v10];

    -[DOCAppearance setBrowserUserInterfaceStyle:](v5, "setBrowserUserInterfaceStyle:", [v4 decodeIntegerForKey:@"browserUserInterfaceStyle"]);
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [(DOCAppearance *)self defaultDocumentAspectRatio];
  *&v5 = v5;
  [v4 encodeFloat:@"defaultDocumentAspectRatio" forKey:v5];
  [(DOCAppearance *)self compactHorizontalTableStackSpacing];
  *&v6 = v6;
  [v4 encodeFloat:@"compactHorizontalTableStackSpacing" forKey:v6];
  [(DOCAppearance *)self regularHorizontalTableStackSpacing];
  *&v7 = v7;
  [v4 encodeFloat:@"regularHorizontalTableStackSpacing" forKey:v7];
  [(DOCAppearance *)self fullHorizontalTableStackSpacing];
  *&v8 = v8;
  [v4 encodeFloat:@"fullHorizontalTableStackSpacing" forKey:v8];
  [v4 encodeInteger:-[DOCAppearance browserUserInterfaceStyle](self forKey:{"browserUserInterfaceStyle"), @"browserUserInterfaceStyle"}];
  [v4 encodeBool:-[DOCAppearance showsCreateButton](self forKey:{"showsCreateButton"), @"showsCreateButton"}];
  [v4 encodeBool:-[DOCAppearance shouldShowFileExtensions](self forKey:{"shouldShowFileExtensions"), @"shouldShowFileExtensions"}];
  [v4 encodeBool:-[DOCAppearance forceClearBackground](self forKey:{"forceClearBackground"), @"forceClearBackground"}];
  v9 = [(DOCAppearance *)self collectionCreateButtonTitle];
  [v4 encodeObject:v9 forKey:@"collectionCreateButtonTitle"];
}

+ (DOCAppearance)documentsPickerAppearance
{
  v2 = objc_opt_new();

  return v2;
}

+ (DOCAppearance)recentsPopoverAppearance
{
  v2 = objc_opt_new();
  [v2 setForceClearBackground:1];
  [v2 setShowsCreateButton:0];

  return v2;
}

id __52__DOCAppearance_UserInterfaceStyle__backgroundColor__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 userInterfaceStyle] == 1)
  {
    [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] systemBackgroundColor];
  }
  v2 = ;

  return v2;
}

@end