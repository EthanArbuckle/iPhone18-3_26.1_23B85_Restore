@interface DOCItemCollectionListCell
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (id)accessiblityStopDownloadView;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)didMoveToWindow;
- (void)effectiveAppearanceDidChange:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
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

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = self;
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

- (void)effectiveAppearanceDidChange:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCItemCollectionListCell.effectiveAppearanceDidChange(_:)(v4);
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  height = a3.height;
  width = a3.width;
  v7 = MEMORY[0x277D85000];
  v8 = *((*MEMORY[0x277D85000] & self->super.super.super.super.super.super.super.super.isa) + 0x208);
  v9 = self;
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
  v3 = self;
  v4 = v2();

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (a3)
  {
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v18, 0, sizeof(v18));
    v16 = a5;
    v17 = self;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v15 = 0;
    goto LABEL_8;
  }

  v10 = 0;
  v12 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v13 = a5;
  v14 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  _sSo16UILayoutPriorityaAB5UIKit01_C23NumericRawRepresentableACWlTm_1(&lazy protocol witness table cache variable for type NSKeyValueChangeKey and conformance NSKeyValueChangeKey, type metadata accessor for NSKeyValueChangeKey);
  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  DOCItemCollectionListCell.observeValue(forKeyPath:of:change:context:)(v10, v12, v18, v15, a6);

  outlined destroy of CharacterSet?(v18, &_sypSgMd);
}

@end