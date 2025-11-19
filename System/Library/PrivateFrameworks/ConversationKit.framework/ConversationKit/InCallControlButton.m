@interface InCallControlButton
- (BOOL)isEnabled;
- (BOOL)isHighlighted;
- (BOOL)isSelected;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)layoutSubviews;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setSelected:(BOOL)a3;
@end

@implementation InCallControlButton

- (BOOL)isSelected
{
  v2 = self;
  v3 = InCallControlButton.isSelected.getter();

  return v3 & 1;
}

- (void)setSelected:(BOOL)a3
{
  v4 = self;
  InCallControlButton.isSelected.setter(a3);
}

- (BOOL)isHighlighted
{
  v2 = self;
  v3 = InCallControlButton.isHighlighted.getter();

  return v3 & 1;
}

- (void)setHighlighted:(BOOL)a3
{
  v4 = self;
  InCallControlButton.isHighlighted.setter(a3);
}

- (BOOL)isEnabled
{
  v2 = self;
  v3 = InCallControlButton.isEnabled.getter();

  return v3 & 1;
}

- (void)setEnabled:(BOOL)a3
{
  v4 = self;
  InCallControlButton.isEnabled.setter(a3);
}

- (void)layoutSubviews
{
  v2 = self;
  InCallControlButton.layoutSubviews()();
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v9 = InCallControlButton.contextMenuInteraction(_:configurationForMenuAtLocation:)(v6, __PAIR128__(v8, v7));

  return v9;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  v14 = InCallControlButton.pointerInteraction(_:regionFor:defaultRegion:)(v8, v12, v13);

  return v14;
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v10 = InCallControlButton.pointerInteraction(_:styleFor:)(v6, v9);

  return v10;
}

@end