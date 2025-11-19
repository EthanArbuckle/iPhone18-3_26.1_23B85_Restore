@interface CAMExpandingControlSystemImageMenuItem
+ (id)menuItemWithState:(id)a3 systemImageName:(id)a4 symbolConfiguration:(id)a5 subtitle:(id)a6 selectedSubtitle:(id)a7 configuration:(id)a8;
- (BOOL)isEqualToItem:(id)a3;
- (UIImage)titleImage;
- (id)_imageWithConfiguration:(id)a3;
@end

@implementation CAMExpandingControlSystemImageMenuItem

+ (id)menuItemWithState:(id)a3 systemImageName:(id)a4 symbolConfiguration:(id)a5 subtitle:(id)a6 selectedSubtitle:(id)a7 configuration:(id)a8
{
  v14 = a4;
  v15 = a5;
  v21.receiver = a1;
  v21.super_class = &OBJC_METACLASS___CAMExpandingControlSystemImageMenuItem;
  v16 = objc_msgSendSuper2(&v21, sel__menuItemWithState_subtitle_selectedSubtitle_configuration_, a3, a6, a7, a8);
  v17 = v16[5];
  v16[5] = v14;
  v18 = v14;

  v19 = v16[6];
  v16[6] = v15;

  return v16;
}

- (UIImage)titleImage
{
  v3 = [(CAMExpandingControlSystemImageMenuItem *)self _titleImage];

  if (!v3)
  {
    v4 = [MEMORY[0x1E69DCAD8] configurationWithPointSize:14.0];
    v5 = [(CAMExpandingControlSystemImageMenuItem *)self _imageWithConfiguration:v4];
    titleImage = self->__titleImage;
    self->__titleImage = v5;
  }

  return [(CAMExpandingControlSystemImageMenuItem *)self _titleImage];
}

- (id)_imageWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];

  if (v5)
  {
    v6 = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];
    v7 = [v6 configurationByApplyingConfiguration:v4];
  }

  else
  {
    v7 = v4;
  }

  v8 = MEMORY[0x1E69DCAB8];
  v9 = [(CAMExpandingControlSystemImageMenuItem *)self _systemImageName];
  v10 = [v8 systemImageNamed:v9 withConfiguration:v7];

  return v10;
}

- (BOOL)isEqualToItem:(id)a3
{
  v6 = a3;
  v16.receiver = self;
  v16.super_class = CAMExpandingControlSystemImageMenuItem;
  if ([(CAMExpandingControlMenuItem *)&v16 isEqualToItem:v6])
  {
    v7 = [(CAMExpandingControlSystemImageMenuItem *)self _systemImageName];
    v8 = [v6 _systemImageName];
    if (v7 == v8 || (-[CAMExpandingControlSystemImageMenuItem _systemImageName](self, "_systemImageName"), v3 = objc_claimAutoreleasedReturnValue(), [v6 _systemImageName], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "isEqualToString:", v4)))
    {
      v10 = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];
      v11 = [v6 _symbolConfiguration];
      v12 = v11;
      if (v10 == v11)
      {

        v9 = 1;
      }

      else
      {
        v13 = [(CAMExpandingControlSystemImageMenuItem *)self _symbolConfiguration];
        v14 = [v6 _symbolConfiguration];
        v9 = [v13 isEqualToConfiguration:v14];
      }

      if (v7 == v8)
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