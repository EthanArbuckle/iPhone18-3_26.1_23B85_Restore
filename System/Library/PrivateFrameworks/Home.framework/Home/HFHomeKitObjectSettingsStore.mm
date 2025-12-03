@interface HFHomeKitObjectSettingsStore
+ (id)setTileSize:(id)size forObject:(id)object;
+ (id)setValue:(id)value forSetting:(int64_t)setting onObject:(id)object;
+ (id)setValue:(id)value forSetting:(int64_t)setting onObject:(id)object inLocation:(int64_t)location;
+ (id)stringValueForSetting:(int64_t)setting onObject:(id)object;
+ (id)tileSizeForObject:(id)object;
+ (id)valueForSetting:(int64_t)setting onObject:(id)object;
+ (id)valueForSetting:(int64_t)setting onObject:(id)object inLocation:(int64_t)location;
- (HFHomeKitObjectSettingsStore)init;
@end

@implementation HFHomeKitObjectSettingsStore

- (HFHomeKitObjectSettingsStore)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomeKitObjectSettingsStore();
  return [(HFHomeKitObjectSettingsStore *)&v3 init];
}

+ (id)tileSizeForObject:(id)object
{
  swift_unknownObjectRetain();
  v3 = _s4Home0A22KitObjectSettingsStoreC8tileSize3forSo015HFTileResizableG0aSgSo06HFHomebC0_p_tFZ_0();
  swift_unknownObjectRelease();

  return v3;
}

+ (id)setTileSize:(id)size forObject:(id)object
{
  sizeCopy = size;
  swift_unknownObjectRetain();
  v6 = _s4Home0A22KitObjectSettingsStoreC3set8tileSize3forSo8NAFutureCySo6NSNullCGSo015HFTileResizableH0aSg_So06HFHomebC0_ptFZ_0(size);

  swift_unknownObjectRelease();

  return v6;
}

+ (id)valueForSetting:(int64_t)setting onObject:(id)object
{
  swift_unknownObjectRetain();
  v5 = sub_20DA783A0(setting);
  swift_unknownObjectRelease();

  return v5;
}

+ (id)valueForSetting:(int64_t)setting onObject:(id)object inLocation:(int64_t)location
{
  swift_unknownObjectRetain();
  v6 = sub_20DA783A0(setting);
  swift_unknownObjectRelease();

  return v6;
}

+ (id)stringValueForSetting:(int64_t)setting onObject:(id)object
{
  swift_unknownObjectRetain();
  v5 = sub_20DA783A0(setting);
  swift_unknownObjectRelease();
  if (v5 && (swift_dynamicCast() & 1) != 0)
  {
    v6 = sub_20DD64E74();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)setValue:(id)value forSetting:(int64_t)setting onObject:(id)object
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = sub_20DA784DC(value, setting);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v7;
}

+ (id)setValue:(id)value forSetting:(int64_t)setting onObject:(id)object inLocation:(int64_t)location
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_20DA784DC(value, setting);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v8;
}

@end