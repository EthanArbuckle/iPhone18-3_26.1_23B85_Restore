@interface DOCAppearance
+ (DOCAppearance)documentsPickerAppearance;
+ (DOCAppearance)recentsPopoverAppearance;
- (BOOL)isEqual:(id)equal;
- (DOCAppearance)init;
- (DOCAppearance)initWithCoder:(id)coder;
- (NSString)collectionCreateButtonTitle;
- (UIColor)backgroundColor;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setCollectionCreateButtonTitle:(id)title;
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
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    goto LABEL_8;
  }

  clearColor = [(DOCAppearance *)self browserUserInterfaceStyle];
  if (clearColor == 2)
  {
LABEL_6:
    clearColor = [MEMORY[0x1E69DC888] systemBackgroundColor];
    goto LABEL_8;
  }

  if (clearColor != 1)
  {
    if (clearColor)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  clearColor = [MEMORY[0x1E69DC888] colorWithDynamicProvider:&__block_literal_global_10];
LABEL_8:

  return clearColor;
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

- (void)setCollectionCreateButtonTitle:(id)title
{
  v4 = [title copy];
  collectionCreateButtonTitle = self->_collectionCreateButtonTitle;
  self->_collectionCreateButtonTitle = v4;

  MEMORY[0x1EEE66BB8](v4, collectionCreateButtonTitle);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && ([(DOCAppearance *)self defaultDocumentAspectRatio], v9 = v8, [(DOCAppearance *)equalCopy defaultDocumentAspectRatio], v9 == v10) && ([(DOCAppearance *)self compactHorizontalTableStackSpacing], v12 = v11, [(DOCAppearance *)equalCopy compactHorizontalTableStackSpacing], v12 == v13) && ([(DOCAppearance *)self regularHorizontalTableStackSpacing], v15 = v14, [(DOCAppearance *)equalCopy regularHorizontalTableStackSpacing], v15 == v16) && ([(DOCAppearance *)self fullHorizontalTableStackSpacing], v18 = v17, [(DOCAppearance *)equalCopy fullHorizontalTableStackSpacing], v18 == v19) && (v20 = [(DOCAppearance *)self showsCreateButton], v20 == [(DOCAppearance *)equalCopy showsCreateButton]) && (v21 = [(DOCAppearance *)self shouldShowFileExtensions], v21 == [(DOCAppearance *)equalCopy shouldShowFileExtensions]) && (v22 = [(DOCAppearance *)self forceClearBackground], v22 == [(DOCAppearance *)equalCopy forceClearBackground]) && (v23 = [(DOCAppearance *)self browserUserInterfaceStyle], v23 == [(DOCAppearance *)equalCopy browserUserInterfaceStyle]))
    {
      collectionCreateButtonTitle = [(DOCAppearance *)self collectionCreateButtonTitle];
      collectionCreateButtonTitle2 = [(DOCAppearance *)equalCopy collectionCreateButtonTitle];
      if (collectionCreateButtonTitle == collectionCreateButtonTitle2)
      {
        v6 = 1;
      }

      else
      {
        collectionCreateButtonTitle3 = [(DOCAppearance *)self collectionCreateButtonTitle];
        collectionCreateButtonTitle4 = [(DOCAppearance *)equalCopy collectionCreateButtonTitle];
        v6 = [collectionCreateButtonTitle3 isEqual:collectionCreateButtonTitle4];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
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

- (DOCAppearance)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = DOCAppearance;
  v5 = [(DOCAppearance *)&v13 init];
  if (v5)
  {
    [coderCopy decodeFloatForKey:@"defaultDocumentAspectRatio"];
    [(DOCAppearance *)v5 setDefaultDocumentAspectRatio:v6];
    [coderCopy decodeFloatForKey:@"regularHorizontalTableStackSpacing"];
    [(DOCAppearance *)v5 setRegularHorizontalTableStackSpacing:v7];
    [coderCopy decodeFloatForKey:@"fullHorizontalTableStackSpacing"];
    [(DOCAppearance *)v5 setFullHorizontalTableStackSpacing:v8];
    [coderCopy decodeFloatForKey:@"compactHorizontalTableStackSpacing"];
    [(DOCAppearance *)v5 setCompactHorizontalTableStackSpacing:v9];
    -[DOCAppearance setShowsCreateButton:](v5, "setShowsCreateButton:", [coderCopy decodeBoolForKey:@"showsCreateButton"]);
    -[DOCAppearance setShouldShowFileExtensions:](v5, "setShouldShowFileExtensions:", [coderCopy decodeBoolForKey:@"shouldShowFileExtensions"]);
    -[DOCAppearance setForceClearBackground:](v5, "setForceClearBackground:", [coderCopy decodeBoolForKey:@"forceClearBackground"]);
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"collectionCreateButtonTitle"];
    [(DOCAppearance *)v5 setCollectionCreateButtonTitle:v10];

    -[DOCAppearance setBrowserUserInterfaceStyle:](v5, "setBrowserUserInterfaceStyle:", [coderCopy decodeIntegerForKey:@"browserUserInterfaceStyle"]);
    v11 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [(DOCAppearance *)self defaultDocumentAspectRatio];
  *&v5 = v5;
  [coderCopy encodeFloat:@"defaultDocumentAspectRatio" forKey:v5];
  [(DOCAppearance *)self compactHorizontalTableStackSpacing];
  *&v6 = v6;
  [coderCopy encodeFloat:@"compactHorizontalTableStackSpacing" forKey:v6];
  [(DOCAppearance *)self regularHorizontalTableStackSpacing];
  *&v7 = v7;
  [coderCopy encodeFloat:@"regularHorizontalTableStackSpacing" forKey:v7];
  [(DOCAppearance *)self fullHorizontalTableStackSpacing];
  *&v8 = v8;
  [coderCopy encodeFloat:@"fullHorizontalTableStackSpacing" forKey:v8];
  [coderCopy encodeInteger:-[DOCAppearance browserUserInterfaceStyle](self forKey:{"browserUserInterfaceStyle"), @"browserUserInterfaceStyle"}];
  [coderCopy encodeBool:-[DOCAppearance showsCreateButton](self forKey:{"showsCreateButton"), @"showsCreateButton"}];
  [coderCopy encodeBool:-[DOCAppearance shouldShowFileExtensions](self forKey:{"shouldShowFileExtensions"), @"shouldShowFileExtensions"}];
  [coderCopy encodeBool:-[DOCAppearance forceClearBackground](self forKey:{"forceClearBackground"), @"forceClearBackground"}];
  collectionCreateButtonTitle = [(DOCAppearance *)self collectionCreateButtonTitle];
  [coderCopy encodeObject:collectionCreateButtonTitle forKey:@"collectionCreateButtonTitle"];
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