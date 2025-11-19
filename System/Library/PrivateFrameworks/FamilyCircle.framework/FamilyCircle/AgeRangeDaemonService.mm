@interface AgeRangeDaemonService
- (void)ageRangeGlobalStateForAltDSID:(NSString *)a3 completion:(id)a4;
- (void)deleteAgeRangesWith:(NSString *)a3 completion:(id)a4;
- (void)fetchAgeRangesWith:(NSString *)a3 completion:(id)a4;
- (void)fetchAgeWithCompletionHandler:(id)a3;
- (void)fetchAltDSIDWithCompletionHandler:(id)a3;
- (void)fetchFamilyCircleWithCompletionHandler:(id)a3;
- (void)fetchPrivacyVersionForAltDSID:(NSString *)a3 completion:(id)a4;
- (void)postAgeRangeNotification:(NSString *)a3 lowerAgeBound:(NSNumber *)a4 upperAgeBound:(NSNumber *)a5 completion:(id)a6;
- (void)requestAgeRangeWith:(NSArray *)a3 userAgeOverride:(NSNumber *)a4 altDSID:(NSString *)a5 bundleID:(NSString *)a6 appName:(NSString *)a7 attestedAtOverrideInDays:(NSNumber *)a8 completion:(id)a9;
- (void)saveAgeRangeGlobalState:(int)a3 forAltDSID:(NSString *)a4 cacheDuration:(NSNumber *)a5 privacyVersion:(NSNumber *)a6 completion:(id)a7;
- (void)saveAgeRangeWith:(FAAgeRange *)a3 completion:(id)a4;
- (void)setAgeRangeGlobalState:(int)a3 forAltDSID:(NSString *)a4 privacyVersion:(NSNumber *)a5 completion:(id)a6;
- (void)shouldPromptAgeRangeWith:(NSArray *)a3 bundleID:(NSString *)a4 appName:(NSString *)a5 privacyVersion:(NSNumber *)a6 userAgeOverride:(NSNumber *)a7 attestedAtOverrideInDays:(NSNumber *)a8 completion:(id)a9;
- (void)updateAgeRangeWith:(FAAgeRange *)a3 completion:(id)a4;
@end

@implementation AgeRangeDaemonService

- (void)postAgeRangeNotification:(NSString *)a3 lowerAgeBound:(NSNumber *)a4 upperAgeBound:(NSNumber *)a5 completion:(id)a6
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v24 - v14;
  v16 = _Block_copy(a6);
  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = a5;
  v17[5] = v16;
  v17[6] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10008D810;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10008D818;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;

  sub_100071FE8(0, 0, v15, &unk_10008D820, v20);
}

- (void)requestAgeRangeWith:(NSArray *)a3 userAgeOverride:(NSNumber *)a4 altDSID:(NSString *)a5 bundleID:(NSString *)a6 appName:(NSString *)a7 attestedAtOverrideInDays:(NSNumber *)a8 completion:(id)a9
{
  v16 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v32 - v19;
  v21 = _Block_copy(a9);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v22[6] = a7;
  v22[7] = a8;
  v22[8] = v21;
  v22[9] = self;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_10008D7F0;
  v24[5] = v22;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_10008D7F8;
  v25[5] = v24;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;

  sub_100071FE8(0, 0, v20, &unk_10008D800, v25);
}

- (void)fetchAgeRangesWith:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D7D0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008D7D8;
  v16[5] = v15;
  v17 = a3;

  sub_100071FE8(0, 0, v11, &unk_10008D7E0, v16);
}

- (void)deleteAgeRangesWith:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D7B0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008D7B8;
  v16[5] = v15;
  v17 = a3;

  sub_100071FE8(0, 0, v11, &unk_10008D7C0, v16);
}

- (void)saveAgeRangeWith:(FAAgeRange *)a3 completion:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D790;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008D798;
  v16[5] = v15;
  v17 = a3;

  sub_100071FE8(0, 0, v11, &unk_10008D7A0, v16);
}

- (void)updateAgeRangeWith:(FAAgeRange *)a3 completion:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D770;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008D778;
  v16[5] = v15;
  v17 = a3;

  sub_100071FE8(0, 0, v11, &unk_10008D780, v16);
}

- (void)saveAgeRangeGlobalState:(int)a3 forAltDSID:(NSString *)a4 cacheDuration:(NSNumber *)a5 privacyVersion:(NSNumber *)a6 completion:(id)a7
{
  v13 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v26 - v16;
  v18 = _Block_copy(a7);
  v19 = swift_allocObject();
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = v18;
  *(v19 + 56) = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_10008D750;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_10008D758;
  v22[5] = v21;
  v23 = a4;
  v24 = a5;
  v25 = a6;

  sub_100071FE8(0, 0, v17, &unk_10008D760, v22);
}

- (void)ageRangeGlobalStateForAltDSID:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D730;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008D738;
  v16[5] = v15;
  v17 = a3;

  sub_100071FE8(0, 0, v11, &unk_10008D740, v16);
}

- (void)setAgeRangeGlobalState:(int)a3 forAltDSID:(NSString *)a4 privacyVersion:(NSNumber *)a5 completion:(id)a6
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v23 - v14;
  v16 = _Block_copy(a6);
  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *(v17 + 32) = a5;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_10008D710;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10008D718;
  v20[5] = v19;
  v21 = a4;
  v22 = a5;

  sub_100071FE8(0, 0, v15, &unk_10008D720, v20);
}

- (void)shouldPromptAgeRangeWith:(NSArray *)a3 bundleID:(NSString *)a4 appName:(NSString *)a5 privacyVersion:(NSNumber *)a6 userAgeOverride:(NSNumber *)a7 attestedAtOverrideInDays:(NSNumber *)a8 completion:(id)a9
{
  v16 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v32 - v19;
  v21 = _Block_copy(a9);
  v22 = swift_allocObject();
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v22[6] = a7;
  v22[7] = a8;
  v22[8] = v21;
  v22[9] = self;
  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_10008D6F0;
  v24[5] = v22;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_10008D6F8;
  v25[5] = v24;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v31 = a8;

  sub_100071FE8(0, 0, v20, &unk_10008D700, v25);
}

- (void)fetchFamilyCircleWithCompletionHandler:(id)a3
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008D6D0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D6D8;
  v14[5] = v13;

  sub_100071FE8(0, 0, v9, &unk_10008D6E0, v14);
}

- (void)fetchAltDSIDWithCompletionHandler:(id)a3
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008D6B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D6B8;
  v14[5] = v13;

  sub_100071FE8(0, 0, v9, &unk_10008D6C0, v14);
}

- (void)fetchAgeWithCompletionHandler:(id)a3
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10008D690;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008D698;
  v14[5] = v13;

  sub_100071FE8(0, 0, v9, &unk_10008D6A0, v14);
}

- (void)fetchPrivacyVersionForAltDSID:(NSString *)a3 completion:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008D680;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008C7F0;
  v16[5] = v15;
  v17 = a3;

  sub_100071FE8(0, 0, v11, &unk_10008C6E0, v16);
}

@end