@interface iOSLinkAcceleratorCollectionViewCell
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)handleHoverWithRecognizer:(id)a3;
@end

@implementation iOSLinkAcceleratorCollectionViewCell

- (void)handleHoverWithRecognizer:(id)a3
{
  v4 = a3;
  v5 = self;
  byte_27CA5EBA0 = [v4 state] - 1 < 2;
  [(iOSLinkAcceleratorCollectionViewCell *)v5 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = sub_21549F13C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549F12C();
  v8 = self;
  sub_21548BC38(v7);

  (*(v5 + 8))(v7, v4);
}

@end