@interface MUHikingTipSectionController
- (BOOL)displayHikingTipWithViewModel:(id)a3;
- (BOOL)hasContent;
- (BOOL)hasContentBeforePersonalizedSuggestionArbitration;
- (CLLocationCoordinate2D)coordinateForTooltip;
- (MUHikingTipSectionController)initWithMapItem:(id)a3;
- (MUHikingTipSectionController)initWithPlaceItem:(id)a3 tipDelegate:(id)a4;
- (NSArray)sectionViews;
- (void)fetchHikingTip;
- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)a3;
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

- (MUHikingTipSectionController)initWithPlaceItem:(id)a3 tipDelegate:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return HikingTipSectionController.init(placeItem:tipDelegate:)(a3);
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
  v2 = self;
  v3 = [(MUPlaceSectionController *)v2 personalizedSuggestionsArbiterDelegate];
  if (v3)
  {
    v4 = [(MUPersonalizedSuggestionSectionArbiterDelegate *)v3 shouldShowHikingTipSection];
    swift_unknownObjectRelease();

    return v4;
  }

  else
  {
    v6 = *(&v2->super.super.isa + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v8 = *(&v2->super.super.isa + OBJC_IVAR___MUHikingTipSectionController__sectionViews);
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
  v2 = self;
  HikingTipSectionController.fetchHikingTip()();
}

- (void)tipTapped
{
  v2 = self;
  sub_1C570C6AC();
}

- (MUHikingTipSectionController)initWithMapItem:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CLLocationCoordinate2D)coordinateForTooltip
{
  v2 = self;
  v3 = [(MUPlaceSectionController *)v2 mapItem];
  [(MKMapItem *)v3 _coordinate];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.longitude = v9;
  result.latitude = v8;
  return result;
}

- (BOOL)displayHikingTipWithViewModel:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C570C190(v4);
  LOBYTE(self) = v4[OBJC_IVAR___MUHikingTipViewModel_usesOriginMapItem];

  *(&v5->super.super.isa + OBJC_IVAR___MUHikingTipSectionController_usesOriginMapItem) = self;
  return 1;
}

- (void)requestHikingToolTipRegionIDForLocationCoordinate:(CLLocationCoordinate2D)a3
{
  longitude = a3.longitude;
  latitude = a3.latitude;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong requestHikingToolTipRegionIDForLocationCoordinate_];

    swift_unknownObjectRelease();
  }
}

@end