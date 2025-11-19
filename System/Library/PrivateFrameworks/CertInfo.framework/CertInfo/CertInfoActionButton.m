@interface CertInfoActionButton
@end

@implementation CertInfoActionButton

void __53___CertInfoActionButton_initWithTitle_isDestructive___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [MEMORY[0x277D755B8] imageNamed:@"InstallButton" inBundle:v14];
  v3 = [v2 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v4 = _installButtonImage;
  _installButtonImage = v3;

  v5 = [MEMORY[0x277D755B8] imageNamed:@"InstallButtonPressed" inBundle:v14];
  v6 = [v5 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v7 = _installButtonPressedImage;
  _installButtonPressedImage = v6;

  v8 = [MEMORY[0x277D755B8] imageNamed:@"RemoveButton" inBundle:v14];
  v9 = [v8 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v10 = _removeButtonImage;
  _removeButtonImage = v9;

  v11 = [MEMORY[0x277D755B8] imageNamed:@"RemoveButtonPressed" inBundle:v14];
  v12 = [v11 stretchableImageWithLeftCapWidth:3 topCapHeight:0];
  v13 = _removeButtonPressedImage;
  _removeButtonPressedImage = v12;
}

@end