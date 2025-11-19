@interface HRMonogrammer
- (CGSize)monogramSize;
- (HRMonogrammer)initWithDiameter:(double)a3;
- (id)_monogramSymbolNameWith:(id)a3;
- (id)_monogramWith:(id)a3;
@end

@implementation HRMonogrammer

- (HRMonogrammer)initWithDiameter:(double)a3
{
  v5.receiver = self;
  v5.super_class = HRMonogrammer;
  result = [(HRMonogrammer *)&v5 init];
  if (result)
  {
    result->_monogramSize.width = a3;
    result->_monogramSize.height = a3;
  }

  return result;
}

- (id)_monogramSymbolNameWith:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 alphanumericCharacterSet];
  v6 = [v5 invertedSet];
  v7 = [v4 componentsSeparatedByCharactersInSet:v6];

  v8 = [v7 componentsJoinedByString:&stru_1F4D16E38];

  v9 = [v8 mutableCopy];
  CFStringTransform(v9, 0, *MEMORY[0x1E695E9A8], 0);
  CFStringTransform(v9, 0, *MEMORY[0x1E695E9A0], 0);
  v10 = [(__CFString *)v9 lowercaseString];
  if ([v10 length])
  {
    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v10 substringToIndex:1];
    v13 = [v11 initWithFormat:@"%@.circle.fill", v12];
  }

  else
  {
    v13 = @"number.circle.fill";
  }

  return v13;
}

- (id)_monogramWith:(id)a3
{
  v17[2] = *MEMORY[0x1E69E9840];
  v4 = [(HRMonogrammer *)self _monogramSymbolNameWith:a3];
  v5 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:4 weight:self->_monogramSize.width];
  v6 = MEMORY[0x1E69DCAD8];
  v7 = [MEMORY[0x1E69DC888] whiteColor];
  v17[0] = v7;
  v8 = [MEMORY[0x1E69DC888] colorWithWhite:0.65 alpha:1.0];
  v17[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
  v10 = [v6 configurationWithPaletteColors:v9];

  v11 = [v10 configurationByApplyingConfiguration:v5];
  v12 = [MEMORY[0x1E69DCAB8] systemImageNamed:v4 withConfiguration:v11];
  v13 = v12;
  if (v12)
  {
    v14 = [v12 imageWithoutBaseline];
  }

  else
  {
    v15 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"number.circle.fill" withConfiguration:v11];
    v14 = [v15 imageWithoutBaseline];
  }

  return v14;
}

- (CGSize)monogramSize
{
  width = self->_monogramSize.width;
  height = self->_monogramSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end