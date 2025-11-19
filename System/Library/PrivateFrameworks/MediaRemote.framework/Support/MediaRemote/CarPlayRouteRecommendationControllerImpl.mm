@interface CarPlayRouteRecommendationControllerImpl
- (void)mediaApplicationsInFocus:(id)a3;
- (void)sessionDidConnect:(id)a3;
- (void)sessionDidDisconnect:(id)a3;
@end

@implementation CarPlayRouteRecommendationControllerImpl

- (void)sessionDidConnect:(id)a3
{
  swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_lock);
  v6 = a3;
  v7 = self;
  os_unfair_lock_lock(v5 + 4);
  sub_100006E8C();
  os_unfair_lock_unlock(v5 + 4);
}

- (void)sessionDidDisconnect:(id)a3
{
  swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_2D59729E7249CB12B9FED99ADC3BB6A140CarPlayRouteRecommendationControllerImpl_lock);
  v6 = a3;
  v7 = self;
  os_unfair_lock_lock(v5 + 4);
  sub_100006EA4();
  os_unfair_lock_unlock(v5 + 4);
}

- (void)mediaApplicationsInFocus:(id)a3
{
  v4 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = type metadata accessor for TaskPriority();
  (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = self;
  v10[5] = v8;
  v11 = self;
  sub_1001CB290(0, 0, v7, &unk_100450540, v10);
}

@end