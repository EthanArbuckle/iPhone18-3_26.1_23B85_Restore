@interface AudioPowerSpectrumViewModel
- (BOOL)isEqual:(id)a3;
@end

@implementation AudioPowerSpectrumViewModel

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = self;
  }

  AudioPowerSpectrumViewModel.isEqual(_:)();
  v7 = v6;

  outlined destroy of ConversationControlsMoreMenuButtonDelegate?(v9, &_sypSgMd);
  return v7 & 1;
}

@end