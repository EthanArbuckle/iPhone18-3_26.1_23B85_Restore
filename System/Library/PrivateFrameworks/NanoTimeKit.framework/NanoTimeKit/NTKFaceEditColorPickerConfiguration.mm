@interface NTKFaceEditColorPickerConfiguration
- (BOOL)hasSeparator;
- (BOOL)isEqual:(id)equal;
- (NTKFaceEditColorPickerConfiguration)init;
- (id)colorAtIndex:(unint64_t)index;
- (unint64_t)indexOfColor:(id)color;
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

    array = [MEMORY[0x277CBEB18] array];
    legacyColors = v2->_legacyColors;
    v2->_legacyColors = array;
  }

  return v2;
}

- (unint64_t)indexOfColor:(id)color
{
  colorCopy = color;
  v5 = [(NTKPigmentEditOptionArray *)self->_editableColors indexOfPigment:colorCopy];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = [(NTKPigmentEditOptionArray *)self->_nonEditableColors indexOfPigment:colorCopy];
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v5 = [(NTKPigmentEditOptionArray *)self->_editableColors count]+ v6;
    }
  }

  return v5;
}

- (id)colorAtIndex:(unint64_t)index
{
  v5 = [(NTKPigmentEditOptionArray *)self->_editableColors count];
  v6 = 16;
  if (v5 <= index)
  {
    v7 = v5;
  }

  else
  {
    v6 = 8;
    v7 = 0;
  }

  v8 = [*(&self->super.isa + v6) pigmentAtIndex:index - v7];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v5 = -[NTKFaceEditColorPickerConfiguration canAddColors](self, "canAddColors"), v5 == [equalCopy canAddColors]))
  {
    editableColors = [(NTKFaceEditColorPickerConfiguration *)self editableColors];
    editableColors2 = [equalCopy editableColors];
    if ([editableColors isEqual:editableColors2])
    {
      nonEditableColors = [(NTKFaceEditColorPickerConfiguration *)self nonEditableColors];
      nonEditableColors2 = [equalCopy nonEditableColors];
      if ([nonEditableColors isEqual:nonEditableColors2])
      {
        legacyColors = [(NTKFaceEditColorPickerConfiguration *)self legacyColors];
        legacyColors2 = [equalCopy legacyColors];
        v6 = [legacyColors isEqual:legacyColors2];
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