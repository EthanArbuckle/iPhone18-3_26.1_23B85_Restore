@interface MUHikingTipSectionController
- (BOOL)displayHikingTipWithViewModel:(id)model;
- (BOOL)hasContent;
- (BOOL)hasContentBeforePersonalizedSuggestionArbitration;
- (CLLocationCoordinate2D)coordinateForTooltip;
- (MUHikingTipSectionController)initWithMapItem:(id)item;
- (MUHikingTipSectionController)initWithPlaceItem:(id)item tipDelegate:(id)delegate;
- (NSArray)sectionViews;
- (void)fetchHikingTip;
- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)coordinate;
- (void)tipTapped;
@end

@implementation MUHikingTipSectionController

- (NSArray)sectionViews
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
  sub_1C570CB68();

  v3 = sub_1C584F750();

  return v3;
}

- (MUHikingTipSectionController)initWithPlaceItem:(id)item tipDelegate:(id)delegate
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return HikingTipSectionController.init(placeItem:tipDelegate:)(item);
}

- (BOOL)hasContentBeforePersonalizedSuggestionArbitration
{
  v2 = *(&self->super.super.isa + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
  if (v2 >> 62)
  {
    v3 = sub_1C584FB90();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 != 0;
}

- (BOOL)hasContent
{
  selfCopy = self;
  personalizedSuggestionsArbiterDelegate = [(MUPlaceSectionController *)selfCopy personalizedSuggestionsArbiterDelegate];
  if (personalizedSuggestionsArbiterDelegate)
  {
    shouldShowHikingTipSection = [(MUPersonalizedSuggestionSectionArbiterDelegate *)personalizedSuggestionsArbiterDelegate shouldShowHikingTipSection];
    swift_unknownObjectRelease();

    return shouldShowHikingTipSection;
  }

  else
  {
    v6 = *(&selfCopy->super.super.isa + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v8 = *(&selfCopy->super.super.isa + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
      }

      v7 = sub_1C584FB90();
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    return v7 != 0;
  }
}

- (void)fetchHikingTip
{
  selfCopy = self;
  HikingTipSectionController.fetchHikingTip()();
}

- (void)tipTapped
{
  selfCopy = self;
  sub_1C570C6AC();
}

- (MUHikingTipSectionController)initWithMapItem:(id)item
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CLLocationCoordinate2D)coordinateForTooltip
{
  selfCopy = self;
  mapItem = [(MUPlaceSectionController *)selfCopy mapItem];
  [(MKMapItem *)mapItem _coordinate];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (BOOL)displayHikingTipWithViewModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  sub_1C570C190(modelCopy);
  LOBYTE(self) = modelCopy[OBJC_IVAR___MUHikingTipViewModel_usesOriginMapItem];

  *(&selfCopy->super.super.isa + OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem) = self;
  return 1;
}

- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestHikingToolTipRegionIDForLocationCoordinate_];

    swift_unknownObjectRelease();
  }
}

@end