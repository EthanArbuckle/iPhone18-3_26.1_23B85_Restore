@interface InCallControlsOpenMessagesCell
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation InCallControlsOpenMessagesCell

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  InCallControlsOpenMessagesCell.traitCollectionDidChange(_:)(v9);
}

@end