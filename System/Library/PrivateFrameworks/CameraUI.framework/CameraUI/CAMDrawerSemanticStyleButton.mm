@interface CAMDrawerSemanticStyleButton
- (BOOL)shouldShowSlashForCurrentState;
- (void)setOn:(BOOL)on;
- (void)setSemanticStyle:(id)style animated:(BOOL)animated;
@end

@implementation CAMDrawerSemanticStyleButton

- (void)setOn:(BOOL)on
{
  if (self->_on != on)
  {
    self->_on = on;
    [(CAMControlDrawerButton *)self updateImage];
  }
}

- (void)setSemanticStyle:(id)style animated:(BOOL)animated
{
  animatedCopy = animated;
  styleCopy = style;
  if (![(CAMSemanticStyle *)self->_semanticStyle isEqualToSemanticStyle:?])
  {
    objc_storeStrong(&self->_semanticStyle, style);
    [(CAMControlDrawerButton *)self updateImageAnimated:animatedCopy];
  }
}

- (BOOL)shouldShowSlashForCurrentState
{
  semanticStyle = [(CAMDrawerSemanticStyleButton *)self semanticStyle];
  isCustomizable = [semanticStyle isCustomizable];

  return isCustomizable ^ 1;
}

@end