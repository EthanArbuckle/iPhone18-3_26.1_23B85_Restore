@interface CAMExpandingControlMenuItemConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation CAMExpandingControlMenuItemConfiguration

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CAMExpandingControlMenuItemConfiguration *)self isEqualToConfiguration:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == self)
  {
    v12 = 1;
    goto LABEL_11;
  }

  v6 = [(CAMExpandingControlMenuItemConfiguration *)self slashesTitle];
  if (v6 == [(CAMExpandingControlMenuItemConfiguration *)v5 slashesTitle]&& (v7 = [(CAMExpandingControlMenuItemConfiguration *)self hidden], v7 == [(CAMExpandingControlMenuItemConfiguration *)v5 hidden]) && (v8 = [(CAMExpandingControlMenuItemConfiguration *)self tintsTitle], v8 == [(CAMExpandingControlMenuItemConfiguration *)v5 tintsTitle]) && (v9 = [(CAMExpandingControlMenuItemConfiguration *)self titleBorder], v9 == [(CAMExpandingControlMenuItemConfiguration *)v5 titleBorder]))
  {
    v10 = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolName];
    v11 = [(CAMExpandingControlMenuItemConfiguration *)v5 axHUDSymbolName];
    if (v10 == v11)
    {
      v14 = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolConfiguration];
      v15 = [(CAMExpandingControlMenuItemConfiguration *)v5 axHUDSymbolConfiguration];
      if (v14 == v15)
      {
        v12 = 1;
      }

      else
      {
        v16 = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolConfiguration];
        v17 = [(CAMExpandingControlMenuItemConfiguration *)v5 axHUDSymbolConfiguration];
        v12 = [v16 isEqualToConfiguration:v17];
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
LABEL_9:
    v12 = 0;
  }

LABEL_11:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CAMExpandingControlMenuItemConfiguration allocWithZone:?]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setSlashesTitle:[(CAMExpandingControlMenuItemConfiguration *)self slashesTitle]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setTintsTitle:[(CAMExpandingControlMenuItemConfiguration *)self tintsTitle]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setTitleBorder:[(CAMExpandingControlMenuItemConfiguration *)self titleBorder]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setHidden:[(CAMExpandingControlMenuItemConfiguration *)self hidden]];
  v5 = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolName];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setAxHUDSymbolName:v5];

  v6 = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolConfiguration];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setAxHUDSymbolConfiguration:v6];

  return v4;
}

@end