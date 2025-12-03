@interface SFAppLinkBanner
- (SFAppLinkBanner)initWithAppLink:(id)link openActionHandler:(id)handler;
@end

@implementation SFAppLinkBanner

- (SFAppLinkBanner)initWithAppLink:(id)link openActionHandler:(id)handler
{
  linkCopy = link;
  handlerCopy = handler;
  v27.receiver = self;
  v27.super_class = SFAppLinkBanner;
  v9 = [(SFLinkBanner *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_appLink, link);
    [(SFLinkBanner *)v10 setOpenActionHandler:handlerCopy];
    v11 = _WBSLocalizedString();
    [(SFLinkBanner *)v10 setOpenButtonTitle:v11];

    openButton = [(SFLinkBanner *)v10 openButton];
    [openButton setAccessibilityIdentifier:@"AppLinkBannerOpenButton"];

    appLink = v10->_appLink;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    [(WBSAppLink *)appLink getAppLinkLabel:&v26 name:&v25 bundleIdentifier:0 icon:&v24];
    v14 = v26;
    v15 = v25;
    v16 = v24;
    titleLabel = [(SFLinkBanner *)v10 titleLabel];
    [titleLabel setAttributedText:v14];

    v18 = MEMORY[0x1E696AEC0];
    v19 = _WBSLocalizedString();
    v20 = [v18 stringWithFormat:v19, v15];
    [(SFLinkBanner *)v10 setMessageLabelText:v20];

    icon = [(SFLinkBanner *)v10 icon];
    [icon setImage:v16];

    v22 = v10;
  }

  return v10;
}

@end