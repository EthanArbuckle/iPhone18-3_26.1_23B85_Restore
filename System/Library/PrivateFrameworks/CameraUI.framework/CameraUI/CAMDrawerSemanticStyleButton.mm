@interface CAMDrawerSemanticStyleButton
- (BOOL)shouldShowSlashForCurrentState;
- (void)setOn:(BOOL)a3;
- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4;
@end

@implementation CAMDrawerSemanticStyleButton

- (void)setOn:(BOOL)a3
{
  if (self->_on != a3)
  {
    self->_on = a3;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (void)setSemanticStyle:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (![(CAMSemanticStyle *)self->_semanticStyle isEqualToSemanticStyle:?])
  {
    objc_storeStrong(&self->_semanticStyle, a3);
    [(CAMControlDrawerButton *)self updateImageAnimated:v4];
  }
}

- (BOOL)shouldShowSlashForCurrentState
{
  v2 = [(CAMDrawerSemanticStyleButton *)self semanticStyle];
  v3 = [v2 isCustomizable];

  return v3 ^ 1;
}

@end