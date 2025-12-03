@interface CAMExpandingControlSystemImageMenuItem
+ (id)menuItemWithState:(id)state systemImageName:(id)name symbolConfiguration:(id)configuration subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)a8;
- (BOOL)isEqualToItem:(id)item;
- (UIImage)titleImage;
- (id)_imageWithConfiguration:(id)configuration;
@end

@implementation CAMExpandingControlSystemImageMenuItem

+ (id)menuItemWithState:(id)state systemImageName:(id)name symbolConfiguration:(id)configuration subtitle:(id)subtitle selectedSubtitle:(id)selectedSubtitle configuration:(id)a8
{
  nameCopy = name;
  configurationCopy = configuration;
  v21.receiver = self;
  v21.super_class = &OBJC_METACLASS___CAMExpandingControlSystemImageMenuItem;
  v16 = objc_msgSendSuper2(&v21, sel__menuItemWithState_subtitle_selectedSubtitle_configuration_, state, subtitle, selectedSubtitle, a8);
  v17 = v16[5];
  v16[5] = nameCopy;
  v18 = nameCopy;

  v19 = v16[6];
  v16[6] = configurationCopy;

  return v16;
}

- (UIImage)titleImage
{
  _titleImage = [(CAMExpandingControlSystemImageMenuItem *)self _titleImage];

  if (!_titleImage)
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:14.0];
    v5 = [(CAMExpandingControlSystemImageMenuItem *)self _imageWithConfiguration:v4];
    titleImage = self->__titleImage;
    self->__titleImage = v5;
  }

  return [(CAMExpandingControlSystemImageMenuItem *)self _titleImage];
}

- (id)_imageWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  _symbolConfiguration = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];

  if (_symbolConfiguration)
  {
    _symbolConfiguration2 = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];
    v7 = [_symbolConfiguration2 configurationByApplyingConfiguration:configurationCopy];
  }

  else
  {
    v7 = configurationCopy;
  }

  v8 = MEMORY[0x1E69DCAB8];
  _systemImageName = [(CAMExpandingControlSystemImageMenuItem *)self _systemImageName];
  v10 = [v8 systemImageNamed:_systemImageName withConfiguration:v7];

  return v10;
}

- (BOOL)isEqualToItem:(id)item
{
  itemCopy = item;
  v16.receiver = self;
  v16.super_class = CAMExpandingControlSystemImageMenuItem;
  if ([(CAMExpandingControlMenuItem *)&v16 isEqualToItem:itemCopy])
  {
    _systemImageName = [(CAMExpandingControlSystemImageMenuItem *)self _systemImageName];
    _systemImageName2 = [itemCopy _systemImageName];
    if (_systemImageName == _systemImageName2 || (-[CAMExpandingControlSystemImageMenuItem _systemImageName](self, "_systemImageName"), v3 = objc_claimAutoreleasedReturnValue(), [itemCopy _systemImageName], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      _symbolConfiguration = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];
      _symbolConfiguration2 = [itemCopy _symbolConfiguration];
      v12 = _symbolConfiguration2;
      if (_symbolConfiguration == _symbolConfiguration2)
      {

        v9 = 1;
      }

      else
      {
        _symbolConfiguration3 = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];
        _symbolConfiguration4 = [itemCopy _symbolConfiguration];
        v9 = [_symbolConfiguration3 isEqualToConfiguration:_symbolConfiguration4];
      }

      if (_systemImageName == _systemImageName2)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v9 = 0;
    }

LABEL_11:
    goto LABEL_12;
  }

  v9 = 0;
LABEL_12:

  return v9;
}

@end