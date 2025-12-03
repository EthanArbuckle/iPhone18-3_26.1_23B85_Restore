@interface iOSLinkAcceleratorCollectionViewCell
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)handleHoverWithRecognizer:(id)recognizer;
@end

@implementation iOSLinkAcceleratorCollectionViewCell

- (void)handleHoverWithRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  selfCopy = self;
  byte_27CA5EBA0 = [recognizerCopy state] - 1 < 2;
  [(iOSLinkAcceleratorCollectionViewCell *)selfCopy setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = sub_21549F13C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21549F12C();
  selfCopy = self;
  sub_21548BC38(v7);

  (*(v5 + 8))(v7, v4);
}

@end