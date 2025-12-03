@interface NTKFaceColorPaletteConfiguration
- (BOOL)isEqual:(id)equal;
- (NSString)formattedCollectionName;
- (NTKFaceColorPaletteConfiguration)initWithColorOption:(id)option collectionName:(id)name colorFraction:(double)fraction;
- (NTKFaceColorPaletteConfiguration)initWithPigmentEditOption:(id)option;
- (NTKFaceColorPaletteConfigurationDelegate)delegate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)uniqueId;
- (void)handleContentChanged;
- (void)setCollectionName:(id)name;
- (void)setColorFraction:(double)fraction;
- (void)setColorName:(id)name collectionName:(id)collectionName colorFraction:(double)fraction;
- (void)setColorOption:(id)option;
- (void)setPigmentEditOption:(id)option;
@end

@implementation NTKFaceColorPaletteConfiguration

- (NTKFaceColorPaletteConfiguration)initWithPigmentEditOption:(id)option
{
  optionCopy = option;
  optionName = [optionCopy optionName];
  collectionName = [optionCopy collectionName];
  [optionCopy colorFraction];
  v8 = [(NTKFaceColorPaletteConfiguration *)self initWithColorOption:optionName collectionName:collectionName colorFraction:?];

  if (v8)
  {
    objc_storeStrong(&v8->_pigmentEditOption, option);
  }

  return v8;
}

- (NTKFaceColorPaletteConfiguration)initWithColorOption:(id)option collectionName:(id)name colorFraction:(double)fraction
{
  optionCopy = option;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = NTKFaceColorPaletteConfiguration;
  v10 = [(NTKFaceColorPaletteConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NTKFaceColorPaletteConfiguration *)v10 setColorName:optionCopy collectionName:nameCopy colorFraction:fraction];
  }

  return v11;
}

- (NSString)formattedCollectionName
{
  if (!self->_formattedCollectionName)
  {
    collectionName = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    v4 = [collectionName containsString:@"."];

    collectionName2 = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    v6 = collectionName2;
    if (v4)
    {
      v7 = [(NSString *)collectionName2 stringByReplacingOccurrencesOfString:@"." withString:@"/"];
      formattedCollectionName = self->_formattedCollectionName;
      self->_formattedCollectionName = v7;
    }

    else
    {
      v9 = self->_formattedCollectionName;
      self->_formattedCollectionName = collectionName2;
      v6 = v9;
    }
  }

  v10 = self->_formattedCollectionName;

  return v10;
}

- (void)setPigmentEditOption:(id)option
{
  objc_storeStrong(&self->_pigmentEditOption, option);
  optionCopy = option;
  optionName = [optionCopy optionName];
  collectionName = [optionCopy collectionName];
  [optionCopy colorFraction];
  v8 = v7;

  [(NTKFaceColorPaletteConfiguration *)self setColorName:optionName collectionName:collectionName colorFraction:v8];
}

- (void)setColorName:(id)name collectionName:(id)collectionName colorFraction:(double)fraction
{
  nameCopy = name;
  collectionNameCopy = collectionName;
  v20 = 0;
  v21 = 0;
  [NTKPigmentEditOption effectiveNamesFromName:nameCopy effectiveCollectionName:&v21 effectiveOptionName:&v20];
  v10 = v21;
  v11 = v20;
  v12 = nameCopy;
  v13 = v12;
  if (v11)
  {
    v13 = v11;
  }

  colorOption = self->_colorOption;
  if (v13 != colorOption)
  {
    objc_storeStrong(&self->_colorOption, v13);
  }

  v15 = collectionNameCopy;
  v16 = v15;
  if (v10)
  {
    v16 = v10;
  }

  if (v16 == self->_collectionName)
  {
    p_colorFraction = &self->_colorFraction;
    if (self->_colorFraction == fraction)
    {
      formattedCollectionName = self->_formattedCollectionName;
      self->_formattedCollectionName = 0;

      if (v13 == colorOption)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else
  {
    objc_storeStrong(&self->_collectionName, v16);
    p_colorFraction = &self->_colorFraction;
    if (self->_colorFraction == fraction)
    {
      goto LABEL_12;
    }
  }

  *p_colorFraction = fraction;
LABEL_12:
  v18 = self->_formattedCollectionName;
  self->_formattedCollectionName = 0;

LABEL_13:
  [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
LABEL_14:
}

- (void)setColorOption:(id)option
{
  optionCopy = option;
  if (![(NSString *)self->_colorOption isEqualToString:?])
  {
    objc_storeStrong(&self->_colorOption, option);
    [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
  }
}

- (void)setCollectionName:(id)name
{
  nameCopy = name;
  if (![(NSString *)self->_collectionName isEqualToString:?])
  {
    objc_storeStrong(&self->_collectionName, name);
    formattedCollectionName = self->_formattedCollectionName;
    self->_formattedCollectionName = 0;

    [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
  }
}

- (void)setColorFraction:(double)fraction
{
  if (self->_colorFraction != fraction)
  {
    self->_colorFraction = fraction;
    [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
  }
}

- (void)handleContentChanged
{
  uniqueId = self->_uniqueId;
  self->_uniqueId = 0;

  delegate = [(NTKFaceColorPaletteConfiguration *)self delegate];
  [delegate configurationDidChange:self];
}

- (id)uniqueId
{
  uniqueId = self->_uniqueId;
  if (!uniqueId)
  {
    v4 = MEMORY[0x277CCACA8];
    collectionName = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    colorOption = [(NTKFaceColorPaletteConfiguration *)self colorOption];
    [(NTKFaceColorPaletteConfiguration *)self colorFraction];
    v8 = [v4 stringWithFormat:@"%@.%@:%0.2f", collectionName, colorOption, v7];
    v9 = self->_uniqueId;
    self->_uniqueId = v8;

    uniqueId = self->_uniqueId;
  }

  return uniqueId;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  colorOption = [(NTKFaceColorPaletteConfiguration *)self colorOption];
  [v4 setColorOption:colorOption];

  collectionName = [(NTKFaceColorPaletteConfiguration *)self collectionName];
  [v4 setCollectionName:collectionName];

  [(NTKFaceColorPaletteConfiguration *)self colorFraction];
  [v4 setColorFraction:?];
  pigmentEditOption = [(NTKFaceColorPaletteConfiguration *)self pigmentEditOption];
  v8 = [pigmentEditOption copy];
  [v4 setPigmentEditOption:v8];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  colorOption = [(NTKFaceColorPaletteConfiguration *)self colorOption];
  colorOption2 = [equalCopy colorOption];
  if ([colorOption isEqual:colorOption2])
  {
    collectionName = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    collectionName2 = [equalCopy collectionName];
    if ([collectionName isEqual:collectionName2])
    {
      [(NTKFaceColorPaletteConfiguration *)self colorFraction];
      v10 = v9;
      [equalCopy colorFraction];
      v12 = v10 == v11;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NTKFaceColorPaletteConfigurationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end