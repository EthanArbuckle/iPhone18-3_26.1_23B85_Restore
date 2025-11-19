@interface CSSGenerateApplicationIconsResultObject
- (CSSGenerateApplicationIconsResultObject)initWithIconData:(id)a3 badgeIconData:(id)a4;
@end

@implementation CSSGenerateApplicationIconsResultObject

- (CSSGenerateApplicationIconsResultObject)initWithIconData:(id)a3 badgeIconData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = CSSGenerateApplicationIconsResultObject;
  v8 = [(CSSGenerateApplicationIconsResultObject *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    iconData = v8->_iconData;
    v8->_iconData = v9;

    v11 = [v7 copy];
    badgeIconData = v8->_badgeIconData;
    v8->_badgeIconData = v11;
  }

  return v8;
}

@end