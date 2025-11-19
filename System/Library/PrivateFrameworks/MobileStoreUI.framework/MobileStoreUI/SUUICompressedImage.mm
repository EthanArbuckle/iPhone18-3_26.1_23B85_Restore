@interface SUUICompressedImage
- (id)description;
@end

@implementation SUUICompressedImage

- (id)description
{
  v3 = [(SUUICompressedImage *)self cornerType];
  v4 = @"SUUICornerTypeArc";
  if (v3 != 1)
  {
    v4 = 0;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"SUUICornerTypeContinuous";
  }

  v6 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = SUUICompressedImage;
  v7 = [(SUUICompressedImage *)&v15 description];
  [(SUUICompressedImage *)self cornerRadius];
  v9 = v8;
  [(SUUICompressedImage *)self borderWidth];
  v11 = v10;
  v12 = [(SUUICompressedImage *)self borderColor];
  v13 = [v6 stringWithFormat:@"%@: {%@, %f} {%f, %@};", v7, v5, v9, v11, v12];;

  return v13;
}

@end