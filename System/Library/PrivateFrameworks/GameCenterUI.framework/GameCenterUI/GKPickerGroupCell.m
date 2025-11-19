@interface GKPickerGroupCell
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (UIImageView)messageIcon;
- (UIImageView)nearbyIcon;
- (UILabel)accessibilityTitleLabel;
- (UILabel)subtitleLabel;
- (UILabel)titleLabel;
- (UIView)container;
- (UIView)iconContainer;
- (UIView)nearbyIconContainer;
- (UIView)ringView;
- (UIVisualEffectView)nearbyIconVisualEffectView;
- (_TtP12GameCenterUI22GKPickerGroupCellProxy_)groupCellDelegate;
- (void)awakeFromNib;
- (void)configureWithPlayers:(id)a3 title:(id)a4 subtitle:(id)a5 messagesGroupIdentifier:(id)a6 source:(int64_t)a7 playerSelectionProxy:(id)a8;
- (void)handleLongPressWithSender:(id)a3;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContainer:(id)a3;
- (void)setGroupCellDelegate:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setIconContainer:(id)a3;
- (void)setMessageIcon:(id)a3;
- (void)setNearbyIcon:(id)a3;
- (void)setNearbyIconContainer:(id)a3;
- (void)setNearbyIconVisualEffectView:(id)a3;
- (void)setRingView:(id)a3;
- (void)setSelected:(BOOL)a3;
- (void)setSubtitleLabel:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation GKPickerGroupCell

- (UIView)container
{
  v2 = sub_24DFF7E0C();

  return v2;
}

- (void)setContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF7E74();
}

- (UIImageView)messageIcon
{
  v2 = sub_24DFF7EEC();

  return v2;
}

- (void)setMessageIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF7F54();
}

- (UIView)iconContainer
{
  v2 = sub_24DFF7FCC();

  return v2;
}

- (void)setIconContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF8034();
}

- (UIView)ringView
{
  v2 = sub_24DFF80AC();

  return v2;
}

- (void)setRingView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF8114();
}

- (UILabel)titleLabel
{
  v2 = sub_24DFF818C();

  return v2;
}

- (void)setTitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF81F4();
}

- (UILabel)subtitleLabel
{
  v2 = sub_24DFF826C();

  return v2;
}

- (void)setSubtitleLabel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF82D4();
}

- (UIView)nearbyIconContainer
{
  v2 = sub_24DFF834C();

  return v2;
}

- (void)setNearbyIconContainer:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF83B4();
}

- (UIVisualEffectView)nearbyIconVisualEffectView
{
  v2 = sub_24DFF842C();

  return v2;
}

- (void)setNearbyIconVisualEffectView:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF8494();
}

- (UIImageView)nearbyIcon
{
  v2 = sub_24DFF850C();

  return v2;
}

- (void)setNearbyIcon:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF8574();
}

- (_TtP12GameCenterUI22GKPickerGroupCellProxy_)groupCellDelegate
{
  v2 = sub_24DFF85EC();

  return v2;
}

- (void)setGroupCellDelegate:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_24DFF8694();
}

- (void)awakeFromNib
{
  v2 = self;
  sub_24DFF8858();
}

- (void)configureWithPlayers:(id)a3 title:(id)a4 subtitle:(id)a5 messagesGroupIdentifier:(id)a6 source:(int64_t)a7 playerSelectionProxy:(id)a8
{
  sub_24DF95978();
  v13 = sub_24E347F08();
  v14 = sub_24E347CF8();
  v16 = v15;
  if (a5)
  {
    v17 = sub_24E347CF8();
    a5 = v18;
    if (a6)
    {
LABEL_3:
      v19 = sub_24E347CF8();
      a6 = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (a6)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  swift_unknownObjectRetain();
  v21 = self;
  sub_24DFF8FD8(v13, v14, v16, v17, a5, v19, a6, a7, a8);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_24DFF94E0(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_24DFF95D4();
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = sub_24DFF9A7C(&selRef_isHighlighted);

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  sub_24DFF9B48(a3, &selRef_setHighlighted_, sub_24DFF97D4);
}

- (void)handleLongPressWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24DFF9944(v4);
}

- (BOOL)isSelected
{
  v2 = self;
  v3 = sub_24DFF9A7C(&selRef_isSelected);

  return v3 & 1;
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  sub_24DFF9B48(a3, &selRef_setSelected_, sub_24DFFA030);
}

- (UILabel)accessibilityTitleLabel
{
  v2 = sub_24DFF9BD4();

  return v2;
}

- (void)prepareForReuse
{
  v2 = self;
  sub_24DFF9C00();
}

@end