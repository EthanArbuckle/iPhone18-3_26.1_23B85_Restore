@interface NTKFaceColorPaletteConfiguration
- (BOOL)isEqual:(id)a3;
- (NSString)formattedCollectionName;
- (NTKFaceColorPaletteConfiguration)initWithColorOption:(id)a3 collectionName:(id)a4 colorFraction:(double)a5;
- (NTKFaceColorPaletteConfiguration)initWithPigmentEditOption:(id)a3;
- (NTKFaceColorPaletteConfigurationDelegate)delegate;
- (id)copyWithZone:(_NSZone *)a3;
- (id)uniqueId;
- (void)handleContentChanged;
- (void)setCollectionName:(id)a3;
- (void)setColorFraction:(double)a3;
- (void)setColorName:(id)a3 collectionName:(id)a4 colorFraction:(double)a5;
- (void)setColorOption:(id)a3;
- (void)setPigmentEditOption:(id)a3;
@end

@implementation NTKFaceColorPaletteConfiguration

- (NTKFaceColorPaletteConfiguration)initWithPigmentEditOption:(id)a3
{
  v5 = a3;
  v6 = [v5 optionName];
  v7 = [v5 collectionName];
  [v5 colorFraction];
  v8 = [(NTKFaceColorPaletteConfiguration *)self initWithColorOption:v6 collectionName:v7 colorFraction:?];

  if (v8)
  {
    objc_storeStrong(&v8->_pigmentEditOption, a3);
  }

  return v8;
}

- (NTKFaceColorPaletteConfiguration)initWithColorOption:(id)a3 collectionName:(id)a4 colorFraction:(double)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = NTKFaceColorPaletteConfiguration;
  v10 = [(NTKFaceColorPaletteConfiguration *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(NTKFaceColorPaletteConfiguration *)v10 setColorName:v8 collectionName:v9 colorFraction:a5];
  }

  return v11;
}

- (NSString)formattedCollectionName
{
  if (!self->_formattedCollectionName)
  {
    v3 = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    v4 = [v3 containsString:@"."];

    v5 = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    v6 = v5;
    if (v4)
    {
      v7 = [(NSString *)v5 stringByReplacingOccurrencesOfString:@"." withString:@"/"];
      formattedCollectionName = self->_formattedCollectionName;
      self->_formattedCollectionName = v7;
    }

    else
    {
      v9 = self->_formattedCollectionName;
      self->_formattedCollectionName = v5;
      v6 = v9;
    }
  }

  v10 = self->_formattedCollectionName;

  return v10;
}

- (void)setPigmentEditOption:(id)a3
{
  objc_storeStrong(&self->_pigmentEditOption, a3);
  v5 = a3;
  v9 = [v5 optionName];
  v6 = [v5 collectionName];
  [v5 colorFraction];
  v8 = v7;

  [(NTKFaceColorPaletteConfiguration *)self setColorName:v9 collectionName:v6 colorFraction:v8];
}

- (void)setColorName:(id)a3 collectionName:(id)a4 colorFraction:(double)a5
{
  v8 = a3;
  v9 = a4;
  v20 = 0;
  v21 = 0;
  [NTKPigmentEditOption effectiveNamesFromName:v8 effectiveCollectionName:&v21 effectiveOptionName:&v20];
  v10 = v21;
  v11 = v20;
  v12 = v8;
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

  v15 = v9;
  v16 = v15;
  if (v10)
  {
    v16 = v10;
  }

  if (v16 == self->_collectionName)
  {
    p_colorFraction = &self->_colorFraction;
    if (self->_colorFraction == a5)
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
    if (self->_colorFraction == a5)
    {
      goto LABEL_12;
    }
  }

  *p_colorFraction = a5;
LABEL_12:
  v18 = self->_formattedCollectionName;
  self->_formattedCollectionName = 0;

LABEL_13:
  [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
LABEL_14:
}

- (void)setColorOption:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_colorOption isEqualToString:?])
  {
    objc_storeStrong(&self->_colorOption, a3);
    [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
  }
}

- (void)setCollectionName:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_collectionName isEqualToString:?])
  {
    objc_storeStrong(&self->_collectionName, a3);
    formattedCollectionName = self->_formattedCollectionName;
    self->_formattedCollectionName = 0;

    [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
  }
}

- (void)setColorFraction:(double)a3
{
  if (self->_colorFraction != a3)
  {
    self->_colorFraction = a3;
    [(NTKFaceColorPaletteConfiguration *)self handleContentChanged];
  }
}

- (void)handleContentChanged
{
  uniqueId = self->_uniqueId;
  self->_uniqueId = 0;

  v4 = [(NTKFaceColorPaletteConfiguration *)self delegate];
  [v4 configurationDidChange:self];
}

- (id)uniqueId
{
  uniqueId = self->_uniqueId;
  if (!uniqueId)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    v6 = [(NTKFaceColorPaletteConfiguration *)self colorOption];
    [(NTKFaceColorPaletteConfiguration *)self colorFraction];
    v8 = [v4 stringWithFormat:@"%@.%@:%0.2f", v5, v6, v7];
    v9 = self->_uniqueId;
    self->_uniqueId = v8;

    uniqueId = self->_uniqueId;
  }

  return uniqueId;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(objc_opt_class());
  v5 = [(NTKFaceColorPaletteConfiguration *)self colorOption];
  [v4 setColorOption:v5];

  v6 = [(NTKFaceColorPaletteConfiguration *)self collectionName];
  [v4 setCollectionName:v6];

  [(NTKFaceColorPaletteConfiguration *)self colorFraction];
  [v4 setColorFraction:?];
  v7 = [(NTKFaceColorPaletteConfiguration *)self pigmentEditOption];
  v8 = [v7 copy];
  [v4 setPigmentEditOption:v8];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(NTKFaceColorPaletteConfiguration *)self colorOption];
  v6 = [v4 colorOption];
  if ([v5 isEqual:v6])
  {
    v7 = [(NTKFaceColorPaletteConfiguration *)self collectionName];
    v8 = [v4 collectionName];
    if ([v7 isEqual:v8])
    {
      [(NTKFaceColorPaletteConfiguration *)self colorFraction];
      v10 = v9;
      [v4 colorFraction];
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