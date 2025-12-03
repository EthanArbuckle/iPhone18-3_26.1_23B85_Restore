@interface CSSGenerateApplicationIconsResultObject
- (CSSGenerateApplicationIconsResultObject)initWithIconData:(id)data badgeIconData:(id)iconData;
@end

@implementation CSSGenerateApplicationIconsResultObject

- (CSSGenerateApplicationIconsResultObject)initWithIconData:(id)data badgeIconData:(id)iconData
{
  dataCopy = data;
  iconDataCopy = iconData;
  v14.receiver = self;
  v14.super_class = CSSGenerateApplicationIconsResultObject;
  v8 = [(CSSGenerateApplicationIconsResultObject *)&v14 init];
  if (v8)
  {
    v9 = [dataCopy copy];
    iconData = v8->_iconData;
    v8->_iconData = v9;

    v11 = [iconDataCopy copy];
    badgeIconData = v8->_badgeIconData;
    v8->_badgeIconData = v11;
  }

  return v8;
}

@end