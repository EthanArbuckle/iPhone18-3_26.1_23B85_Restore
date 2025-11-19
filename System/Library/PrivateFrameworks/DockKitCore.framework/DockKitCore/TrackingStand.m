@interface TrackingStand
- (_TtC11DockKitCore13TrackingStand)initWithInfo:(id)a3 systems:(id)a4;
- (id)getDiagnostics;
- (void)dumpStateWithDirectory:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)flip180WithClockwise:(BOOL)a3 completionHandler:(id)a4;
- (void)returnToBaseWithCompletionHandler:(id)a3;
- (void)searchWithCalibrate:(BOOL)a3 completionHandler:(id)a4;
- (void)startTrackingWithCompletionHandler:(id)a3;
- (void)stopReturnToBaseWithCompletionHandler:(id)a3;
- (void)stopSearchWithCalibrate:(BOOL)a3 completionHandler:(id)a4;
- (void)stopTracking;
- (void)trackObservationsWithMetadata:(_TtC11DockKitCore16FollowerMetadata *)a3 image:(CIImage *)a4 completionHandler:(id)a5;
@end

@implementation TrackingStand

- (_TtC11DockKitCore13TrackingStand)initWithInfo:(id)a3 systems:(id)a4
{
  type metadata accessor for System();
  v5 = sub_224627ED8();
  return TrackingStand.init(info:systems:)(a3, v5);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_22456B570(v4);
}

- (void)startTrackingWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224631D08;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224631D10;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224631D18, v12);
}

- (void)stopTracking
{
  v2 = self;
  sub_22459B6D4();
}

- (void)trackObservationsWithMetadata:(_TtC11DockKitCore16FollowerMetadata *)a3 image:(CIImage *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_224627F78();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_224631CE8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_224631CF0;
  v16[5] = v15;
  v17 = a3;
  v18 = a4;
  v19 = self;
  sub_224616E14(0, 0, v11, &unk_224631CF8, v16);
}

- (id)getDiagnostics
{
  v2 = self;

  v3 = sub_22461B810();

  return v3;
}

- (void)dumpStateWithDirectory:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0C9DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - v5;
  if (a3)
  {
    sub_224626FE8();
    v7 = sub_224626FF8();
    (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  }

  else
  {
    v8 = sub_224626FF8();
    (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  }

  sub_2245098A0(v6, &unk_27D0C9DB0);
}

- (void)searchWithCalibrate:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224631CC0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224631CC8;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224631CD0, v14);
}

- (void)stopSearchWithCalibrate:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224631CA0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_224631CA8;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_224631CB0, v14);
}

- (void)returnToBaseWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224631C80;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224631C88;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224631C90, v12);
}

- (void)stopReturnToBaseWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_224627F78();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_224631C60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_224631C68;
  v12[5] = v11;
  v13 = self;
  sub_224616E14(0, 0, v7, &unk_224631C70, v12);
}

- (void)flip180WithClockwise:(BOOL)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0C9408);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_224627F78();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_224631C50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2246336D0;
  v14[5] = v13;
  v15 = self;
  sub_224616E14(0, 0, v9, &unk_22462F560, v14);
}

@end