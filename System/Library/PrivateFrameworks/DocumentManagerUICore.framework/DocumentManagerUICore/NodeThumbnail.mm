@interface NodeThumbnail
- (BOOL)hasFinishedTryingToFetchCorrectThumbnail;
- (BOOL)isLoading;
- (BOOL)isRepresentativeIcon;
- (BOOL)registerGenerationCompletionHandler:(id)a3;
- (UIImage)thumbnail;
- (_TtC21DocumentManagerUICore13NodeThumbnail)init;
- (id)averageColorInRect:(CGRect)a3;
- (void)addListener:(id)a3;
- (void)removeListener:(id)a3;
@end

@implementation NodeThumbnail

- (void)addListener:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  NodeThumbnail.addListener(_:)();
  swift_unknownObjectRelease();
}

- (BOOL)isRepresentativeIcon
{
  v2 = self + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  v3 = self;
  os_unfair_lock_lock(v2);
  v4 = *(v2 + 1);
  v5 = *(v2 + 2);
  v6 = v2[24];
  sub_249CE395C(v4, v5, v2[24]);
  os_unfair_lock_unlock(v2);

  sub_249CE3970(v4, v5, v6);
  return v6 == 1;
}

- (UIImage)thumbnail
{
  v2 = self;
  NodeThumbnail.thumbnail.getter();
  v4 = v3;

  return v4;
}

- (BOOL)isLoading
{
  v2 = self + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  v3 = self;
  os_unfair_lock_lock(v2);
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  v6 = v2[24];
  sub_249CE395C(v5, v4, v2[24]);
  os_unfair_lock_unlock(v2);

  if (v6)
  {
    if (v6 == 1)
    {
      sub_249CE3970(v5, v4, 1u);
      return v4 == 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_249CE3970(v5, v4, 0);
    return (v4 & 0x100) == 0;
  }
}

- (id)averageColorInRect:(CGRect)a3
{
  v3 = [objc_opt_self() whiteColor];

  return v3;
}

- (void)removeListener:(id)a3
{
  v5 = self + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_listeners;
  swift_unknownObjectRetain();
  v10 = self;
  os_unfair_lock_lock(v5);
  swift_unknownObjectRetain();
  v6 = sub_249D01F88(v5 + 1, a3);
  swift_unknownObjectRelease();
  v7 = *(v5 + 1);
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v9 = *(v5 + 1);
    }

    v8 = sub_249D04CEC();
    if (v8 >= v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 < v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  sub_249D0237C(v6, v8);
  os_unfair_lock_unlock(v5);
  swift_unknownObjectRelease();
}

- (BOOL)hasFinishedTryingToFetchCorrectThumbnail
{
  v2 = self + OBJC_IVAR____TtC21DocumentManagerUICore13NodeThumbnail_currentThumbnail;
  v3 = self;
  os_unfair_lock_lock(v2);
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  LODWORD(v6) = v2[24];
  sub_249CE395C(v5, v4, v2[24]);
  os_unfair_lock_unlock(v2);
  if (v6)
  {
    if (v6 == 1)
    {
      sub_249CE3970(v5, v4, 1u);

      LOBYTE(v6) = v4 != 1;
    }

    else
    {
      sub_249CE3970(v5, v4, v6);

      LOBYTE(v6) = 0;
    }
  }

  else
  {
    v6 = (v4 >> 8) & 1;
    sub_249CE3970(v5, v4, 0);
  }

  return v6;
}

- (BOOL)registerGenerationCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  LOBYTE(self) = NodeThumbnail.registerGenerationCompletionHandler(_:)(sub_249D02D54, v5);

  return self & 1;
}

- (_TtC21DocumentManagerUICore13NodeThumbnail)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end