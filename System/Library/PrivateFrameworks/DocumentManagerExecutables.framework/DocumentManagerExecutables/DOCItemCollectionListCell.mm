@interface DOCItemCollectionListCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (id)accessiblityStopDownloadView;
- (void)_bridgedUpdateConfigurationUsingState:(id)state;
- (void)didMoveToWindow;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)tintColorDidChange;
@end

@implementation DOCItemCollectionListCell

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCItemCollectionListCell(0);
  v2 = v3.receiver;
  [(DOCItemCollectionListCell *)&v3 tintColorDidChange];
  [v2 setNeedsUpdateConfiguration];
}

- (void)_bridgedUpdateConfigurationUsingState:(id)state
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  DOCItemCollectionListCell.updateConfiguration(using:)(v8);

  (*(v5 + 8))(v8, v4);
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCItemCollectionListCell(0);
  v2 = v3.receiver;
  [(DOCItemCollectionListCell *)&v3 didMoveToWindow];
  DOCItemCollectionListCell.updateLayoutMetrics()();
}

- (void)effectiveAppearanceDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  DOCItemCollectionListCell.effectiveAppearanceDidChange(_:)(changeCopy);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  height = size.height;
  width = size.width;
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.super.isa) + 0x208);
  selfCopy = self;
  v10 = v8();
  if (v10)
  {
    v11 = v10;
    height = (*((*v7 & *v10) + 0x308))();
  }

  v12 = width;
  v13 = height;
  result.height = v13;
  result.width = v12;
  return result;
}

- (id)accessiblityStopDownloadView
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.super.isa) + 0x2A8);
  selfCopy = self;
  v4 = v2();

  return v4;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (path)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (object)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    changeCopy = change;
    selfCopy = self;
    if (change)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!object)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  changeCopy2 = change;
  selfCopy2 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!change)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_1(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  DOCItemCollectionListCell.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, context);

  outlined destroy of CharacterSet?(v18, &_sypSgMd);
}

@end