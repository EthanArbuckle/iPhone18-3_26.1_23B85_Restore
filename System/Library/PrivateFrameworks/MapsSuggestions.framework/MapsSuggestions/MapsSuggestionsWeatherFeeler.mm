@interface MapsSuggestionsWeatherFeeler
- (BOOL)startUpdatingSignals;
- (_TtC12destinationd28MapsSuggestionsWeatherFeeler)init;
- (_TtC12destinationd28MapsSuggestionsWeatherFeeler)initWithDelegate:(id)a3 locationUpdater:(id)a4;
- (_TtC12destinationd28MapsSuggestionsWeatherFeeler)initWithDelegate:(id)a3 name:(id)a4;
- (void)didLoseLocationPermission;
- (void)didUpdateLocation:(id)a3;
- (void)triggerFired:(id)a3;
@end

@implementation MapsSuggestionsWeatherFeeler

- (void)didUpdateLocation:(id)a3
{
  v5 = a3;
  v8.value._internal = self;
  internal = v8.value._internal;
  v8.value.super.isa = a3;
  MapsSuggestionsWeatherFeeler.didUpdate(_:)(v8);
}

- (BOOL)startUpdatingSignals
{
  v2 = self;
  v3 = MapsSuggestionsWeatherFeeler.startUpdatingSignals()();

  return v3;
}

- (_TtC12destinationd28MapsSuggestionsWeatherFeeler)initWithDelegate:(id)a3 locationUpdater:(id)a4
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return MapsSuggestionsWeatherFeeler.init(delegate:locationUpdater:)(a3, a4);
}

- (void)didLoseLocationPermission
{
  v2 = self;
  MapsSuggestionsWeatherFeeler.didLoseLocationPermission()();
}

- (void)triggerFired:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC12destinationd28MapsSuggestionsWeatherFeeler__queue);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_10004A71C;
  v8[5] = v5;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100002370;
  v8[3] = &unk_100076BD8;
  v6 = _Block_copy(v8);
  swift_unknownObjectRetain();
  v7 = self;

  [v4 asyncBlock:v6];
  _Block_release(v6);
  swift_unknownObjectRelease();
}

- (_TtC12destinationd28MapsSuggestionsWeatherFeeler)initWithDelegate:(id)a3 name:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC12destinationd28MapsSuggestionsWeatherFeeler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end