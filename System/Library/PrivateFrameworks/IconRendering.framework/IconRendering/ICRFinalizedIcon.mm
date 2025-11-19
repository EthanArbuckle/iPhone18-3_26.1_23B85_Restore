@interface ICRFinalizedIcon
- (CGImage)renderedFullBleedIconWithConfiguration:(id)a3;
- (CGImage)renderedFullBleedIconWithConfiguration:(id)a3 excludeChicletSpecularHighlights:(BOOL)a4;
- (CGImage)renderedIconWithConfiguration:(id)a3;
- (CGImage)renderedLegacyCompatibleIconWithConfiguration:(id)a3 forDeviceClass:(int64_t)a4;
- (CGImage)renderedLegacyCompatibleIconWithConfiguration:(id)a3 forDeviceClass:(int64_t)a4 maskToIconShape:(BOOL)a5;
- (CGImage)renderedSystemGlassCompatibleIconWithConfiguration:(id)a3;
- (id)initFromSerializedData:(id)a3 device:(id)a4 error:(id *)a5;
- (id)serializedDataWithError:(id *)a3;
- (unint64_t)layoutDirection;
- (void)serializedDataWithCompletionHandler:(id)a3;
@end

@implementation ICRFinalizedIcon

- (id)serializedDataWithError:(id *)a3
{
  v4 = OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  sub_1B15C283C(self + v4, v10);
  v5 = FinalizedIcon.serializeV2Sync()();
  v7 = v6;
  sub_1B15C2874(v10);
  v8 = sub_1B1619BC8();
  sub_1B15C27E4(v5, v7);

  return v8;
}

- (CGImage)renderedIconWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B15FBEBC(v4, 1);

  return v6;
}

- (id)initFromSerializedData:(id)a3 device:(id)a4 error:(id *)a5
{
  v6 = a3;
  v7 = a4;
  v8 = sub_1B1619BD8();
  v10 = v9;

  return sub_1B15FB900(v8, v10, a4);
}

- (void)serializedDataWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB753190);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1B1619FC8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1B161F160;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1B161F170;
  v12[5] = v11;
  v13 = self;
  sub_1B15FCDFC(0, 0, v7, &unk_1B161F180, v12);
}

- (unint64_t)layoutDirection
{
  v2 = self + OBJC_IVAR___ICRFinalizedIcon_finalizedIcon;
  swift_beginAccess();
  v3 = v2[233];
  v4 = 1;
  if (v3)
  {
    v4 = 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

- (CGImage)renderedSystemGlassCompatibleIconWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1B15FBEBC(v4, 0);

  return v6;
}

- (CGImage)renderedLegacyCompatibleIconWithConfiguration:(id)a3 forDeviceClass:(int64_t)a4
{
  v4 = [(ICRFinalizedIcon *)self renderedLegacyCompatibleIconWithConfiguration:a3 forDeviceClass:a4 maskToIconShape:0];

  return v4;
}

- (CGImage)renderedLegacyCompatibleIconWithConfiguration:(id)a3 forDeviceClass:(int64_t)a4 maskToIconShape:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  v8 = sub_1B15FC07C(v6);

  return v8;
}

- (CGImage)renderedFullBleedIconWithConfiguration:(id)a3
{
  v3 = [(ICRFinalizedIcon *)self renderedFullBleedIconWithConfiguration:a3 excludeChicletSpecularHighlights:1];

  return v3;
}

- (CGImage)renderedFullBleedIconWithConfiguration:(id)a3 excludeChicletSpecularHighlights:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1B15FC89C(v5);

  return v7;
}

@end