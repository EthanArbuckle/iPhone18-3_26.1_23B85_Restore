@interface DCNotesTextureView
- (CGSize)phase;
- (void)setImage:(id)image;
@end

@implementation DCNotesTextureView

- (void)setImage:(id)image
{
  imageCopy = image;
  v6 = [MEMORY[0x277D75348] colorWithPatternImage:imageCopy];
  [(DCNotesTextureView *)self setBackgroundColor:v6];
  image = self->_image;
  self->_image = imageCopy;
}

- (CGSize)phase
{
  objc_copyStruct(v4, &self->_phase, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end