@interface CEKTickCellConfiguration
- (CEKTickCellConfiguration)initWithImage:(id)image;
- (CEKTickCellConfiguration)initWithText:(id)text font:(id)font;
- (CGSize)contentSize;
@end

@implementation CEKTickCellConfiguration

- (CEKTickCellConfiguration)initWithImage:(id)image
{
  imageCopy = image;
  v11.receiver = self;
  v11.super_class = CEKTickCellConfiguration;
  v6 = [(CEKTickCellConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, image);
    [imageCopy size];
    v7->_contentSize.width = v8;
    v7->_contentSize.height = v9;
  }

  return v7;
}

- (CEKTickCellConfiguration)initWithText:(id)text font:(id)font
{
  v17[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  fontCopy = font;
  v15.receiver = self;
  v15.super_class = CEKTickCellConfiguration;
  v8 = [(CEKTickCellConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [textCopy copy];
    text = v8->_text;
    v8->_text = v9;

    objc_storeStrong(&v8->_font, font);
    v16 = *MEMORY[0x1E69DB648];
    v17[0] = fontCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [textCopy boundingRectWithSize:0 options:v11 attributes:0 context:{3.40282347e38, 3.40282347e38}];
    v8->_contentSize.width = v12;
    v8->_contentSize.height = v13;
  }

  return v8;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end