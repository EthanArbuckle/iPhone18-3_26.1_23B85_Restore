@interface CAMExpandingControlMenuItemConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CAMExpandingControlMenuItemConfiguration

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = [(CAMExpandingControlMenuItemConfiguration *)self isEqualToConfiguration:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = configurationCopy;
  if (!configurationCopy)
  {
    goto LABEL_9;
  }

  if (configurationCopy == self)
  {
    v12 = 1;
    goto LABEL_11;
  }

  slashesTitle = [(CAMExpandingControlMenuItemConfiguration *)self slashesTitle];
  if (slashesTitle == [(CAMExpandingControlMenuItemConfiguration *)v5 slashesTitle]&& (v7 = [(CAMExpandingControlMenuItemConfiguration *)self hidden], v7 == [(CAMExpandingControlMenuItemConfiguration *)v5 hidden]) && (v8 = [(CAMExpandingControlMenuItemConfiguration *)self tintsTitle], v8 == [(CAMExpandingControlMenuItemConfiguration *)v5 tintsTitle]) && (v9 = [(CAMExpandingControlMenuItemConfiguration *)self titleBorder], v9 == [(CAMExpandingControlMenuItemConfiguration *)v5 titleBorder]))
  {
    axHUDSymbolName = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolName];
    axHUDSymbolName2 = [(CAMExpandingControlMenuItemConfiguration *)v5 axHUDSymbolName];
    if (axHUDSymbolName == axHUDSymbolName2)
    {
      axHUDSymbolConfiguration = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolConfiguration];
      axHUDSymbolConfiguration2 = [(CAMExpandingControlMenuItemConfiguration *)v5 axHUDSymbolConfiguration];
      if (axHUDSymbolConfiguration == axHUDSymbolConfiguration2)
      {
        v12 = 1;
      }

      else
      {
        axHUDSymbolConfiguration3 = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolConfiguration];
        axHUDSymbolConfiguration4 = [(CAMExpandingControlMenuItemConfiguration *)v5 axHUDSymbolConfiguration];
        v12 = [axHUDSymbolConfiguration3 isEqualToConfiguration:axHUDSymbolConfiguration4];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CAMExpandingControlMenuItemConfiguration allocWithZone:?]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setSlashesTitle:[(CAMExpandingControlMenuItemConfiguration *)self slashesTitle]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setTintsTitle:[(CAMExpandingControlMenuItemConfiguration *)self tintsTitle]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setTitleBorder:[(CAMExpandingControlMenuItemConfiguration *)self titleBorder]];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setHidden:[(CAMExpandingControlMenuItemConfiguration *)self hidden]];
  axHUDSymbolName = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolName];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setAxHUDSymbolName:axHUDSymbolName];

  axHUDSymbolConfiguration = [(CAMExpandingControlMenuItemConfiguration *)self axHUDSymbolConfiguration];
  [(CAMExpandingControlMenuItemConfiguration *)v4 setAxHUDSymbolConfiguration:axHUDSymbolConfiguration];

  return v4;
}

@end