@interface NTKFaceEditColorPickerConfiguration
- (BOOL)hasSeparator;
- (BOOL)isEqual:(id)a3;
- (NTKFaceEditColorPickerConfiguration)init;
- (id)colorAtIndex:(unint64_t)a3;
- (unint64_t)indexOfColor:(id)a3;
@end

@implementation NTKFaceEditColorPickerConfiguration

- (NTKFaceEditColorPickerConfiguration)init
{
  v10.receiver = self;
  v10.super_class = NTKFaceEditColorPickerConfiguration;
  v2 = [(NTKFaceEditColorPickerConfiguration *)&v10 init];
  if (v2)
  {
    v3 = +[NTKPigmentEditOptionArray array];
    editableColors = v2->_editableColors;
    v2->_editableColors = v3;

    v5 = +[NTKPigmentEditOptionArray array];
    nonEditableColors = v2->_nonEditableColors;
    v2->_nonEditableColors = v5;

    v7 = [MEMORY[0x277CBEB18] array];
    legacyColors = v2->_legacyColors;
    v2->_legacyColors = v7;
  }

  return v2;
}

- (unint64_t)indexOfColor:(id)a3
{
  v4 = a3;
  v5 = [(NTKPigmentEditOptionArray *)self->_editableColors indexOfPigment:v4];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NTKPigmentEditOptionArray *)self->_nonEditableColors indexOfPigment:v4];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(NTKPigmentEditOptionArray *)self->_editableColors count]+ v6;
    }
  }

  return v5;
}

- (id)colorAtIndex:(unint64_t)a3
{
  v5 = [(NTKPigmentEditOptionArray *)self->_editableColors count];
  v6 = 16;
  if (v5 <= a3)
  {
    v7 = v5;
  }

  else
  {
    v6 = 8;
    v7 = 0;
  }

  v8 = [*(&self->super.isa + v6) pigmentAtIndex:a3 - v7];

  return v8;
}

- (BOOL)hasSeparator
{
  if ([(NTKPigmentEditOptionArray *)self->_editableColors count])
  {
    return [(NTKPigmentEditOptionArray *)self->_nonEditableColors count]|| self->_canAddColors;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NTKFaceEditColorPickerConfiguration canAddColors](self, "canAddColors"), v5 == [v4 canAddColors]))
  {
    v7 = [(NTKFaceEditColorPickerConfiguration *)self editableColors];
    v8 = [v4 editableColors];
    if ([v7 isEqual:v8])
    {
      v9 = [(NTKFaceEditColorPickerConfiguration *)self nonEditableColors];
      v10 = [v4 nonEditableColors];
      if ([v9 isEqual:v10])
      {
        v11 = [(NTKFaceEditColorPickerConfiguration *)self legacyColors];
        v12 = [v4 legacyColors];
        v6 = [v11 isEqual:v12];
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end