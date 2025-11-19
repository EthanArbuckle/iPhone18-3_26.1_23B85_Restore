@interface CEKTickCellConfiguration
- (CEKTickCellConfiguration)initWithImage:(id)a3;
- (CEKTickCellConfiguration)initWithText:(id)a3 font:(id)a4;
- (CGSize)contentSize;
@end

@implementation CEKTickCellConfiguration

- (CEKTickCellConfiguration)initWithImage:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CEKTickCellConfiguration;
  v6 = [(CEKTickCellConfiguration *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_image, a3);
    [v5 size];
    v7->_contentSize.width = v8;
    v7->_contentSize.height = v9;
  }

  return v7;
}

- (CEKTickCellConfiguration)initWithText:(id)a3 font:(id)a4
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CEKTickCellConfiguration;
  v8 = [(CEKTickCellConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    text = v8->_text;
    v8->_text = v9;

    objc_storeStrong(&v8->_font, a4);
    v16 = *MEMORY[0x1E69DB648];
    v17[0] = v7;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    [v6 boundingRectWithSize:0 options:v11 attributes:0 context:{3.40282347e38, 3.40282347e38}];
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