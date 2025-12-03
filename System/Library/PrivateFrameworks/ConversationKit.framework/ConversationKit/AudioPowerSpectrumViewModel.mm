@interface AudioPowerSpectrumViewModel
- (BOOL)isEqual:(id)equal;
@end

@implementation AudioPowerSpectrumViewModel

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
  }

  AudioPowerSpectrumViewModel.isEqual(_:)();
  v7 = v6;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_sypSgMd);
  return v7 & 1;
}

@end