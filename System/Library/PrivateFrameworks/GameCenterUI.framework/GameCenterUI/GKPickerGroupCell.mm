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
- (void)configureWithPlayers:(id)players title:(id)title subtitle:(id)subtitle messagesGroupIdentifier:(id)identifier source:(int64_t)source playerSelectionProxy:(id)proxy;
- (void)handleLongPressWithSender:(id)sender;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)setContainer:(id)container;
- (void)setGroupCellDelegate:(id)delegate;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setIconContainer:(id)container;
- (void)setMessageIcon:(id)icon;
- (void)setNearbyIcon:(id)icon;
- (void)setNearbyIconContainer:(id)container;
- (void)setNearbyIconVisualEffectView:(id)view;
- (void)setRingView:(id)view;
- (void)setSelected:(BOOL)selected;
- (void)setSubtitleLabel:(id)label;
- (void)setTitleLabel:(id)label;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation GKPickerGroupCell

- (UIView)container
{
  v2 = sub_24DFF7E0C();

  return v2;
}

- (void)setContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_24DFF7E74();
}

- (UIImageView)messageIcon
{
  v2 = sub_24DFF7EEC();

  return v2;
}

- (void)setMessageIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  sub_24DFF7F54();
}

- (UIView)iconContainer
{
  v2 = sub_24DFF7FCC();

  return v2;
}

- (void)setIconContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_24DFF8034();
}

- (UIView)ringView
{
  v2 = sub_24DFF80AC();

  return v2;
}

- (void)setRingView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24DFF8114();
}

- (UILabel)titleLabel
{
  v2 = sub_24DFF818C();

  return v2;
}

- (void)setTitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_24DFF81F4();
}

- (UILabel)subtitleLabel
{
  v2 = sub_24DFF826C();

  return v2;
}

- (void)setSubtitleLabel:(id)label
{
  labelCopy = label;
  selfCopy = self;
  sub_24DFF82D4();
}

- (UIView)nearbyIconContainer
{
  v2 = sub_24DFF834C();

  return v2;
}

- (void)setNearbyIconContainer:(id)container
{
  containerCopy = container;
  selfCopy = self;
  sub_24DFF83B4();
}

- (UIVisualEffectView)nearbyIconVisualEffectView
{
  v2 = sub_24DFF842C();

  return v2;
}

- (void)setNearbyIconVisualEffectView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  sub_24DFF8494();
}

- (UIImageView)nearbyIcon
{
  v2 = sub_24DFF850C();

  return v2;
}

- (void)setNearbyIcon:(id)icon
{
  iconCopy = icon;
  selfCopy = self;
  sub_24DFF8574();
}

- (_TtP12GameCenterUI22GKPickerGroupCellProxy_)groupCellDelegate
{
  v2 = sub_24DFF85EC();

  return v2;
}

- (void)setGroupCellDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24DFF8694();
}

- (void)awakeFromNib
{
  selfCopy = self;
  sub_24DFF8858();
}

- (void)configureWithPlayers:(id)players title:(id)title subtitle:(id)subtitle messagesGroupIdentifier:(id)identifier source:(int64_t)source playerSelectionProxy:(id)proxy
{
  sub_24DF95978();
  v13 = sub_24E347F08();
  v14 = sub_24E347CF8();
  v16 = v15;
  if (subtitle)
  {
    v17 = sub_24E347CF8();
    subtitle = v18;
    if (identifier)
    {
LABEL_3:
      v19 = sub_24E347CF8();
      identifier = v20;
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if (identifier)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
LABEL_6:
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_24DFF8FD8(v13, v14, v16, v17, subtitle, v19, identifier, source, proxy);
  swift_unknownObjectRelease();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_24DFF94E0(change);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_24DFF95D4();
}

- (BOOL)isHighlighted
{
  selfCopy = self;
  v3 = sub_24DFF9A7C(&selRef_isHighlighted);

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)highlighted
{
  selfCopy = self;
  sub_24DFF9B48(highlighted, &selRef_setHighlighted_, sub_24DFF97D4);
}

- (void)handleLongPressWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_24DFF9944(senderCopy);
}

- (BOOL)isSelected
{
  selfCopy = self;
  v3 = sub_24DFF9A7C(&selRef_isSelected);

  return v3 & 1;
}

- (void)setSelected:(BOOL)selected
{
  selfCopy = self;
  sub_24DFF9B48(selected, &selRef_setSelected_, sub_24DFFA030);
}

- (UILabel)accessibilityTitleLabel
{
  v2 = sub_24DFF9BD4();

  return v2;
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_24DFF9C00();
}

@end