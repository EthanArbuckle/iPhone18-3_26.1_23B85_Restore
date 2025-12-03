@interface AgeRangeDaemonService
- (void)ageRangeGlobalStateForAltDSID:(NSString *)d completion:(id)completion;
- (void)deleteAgeRangesWith:(NSString *)with completion:(id)completion;
- (void)fetchAgeRangesWith:(NSString *)with completion:(id)completion;
- (void)fetchAgeWithCompletionHandler:(id)handler;
- (void)fetchAltDSIDWithCompletionHandler:(id)handler;
- (void)fetchFamilyCircleWithCompletionHandler:(id)handler;
- (void)fetchPrivacyVersionForAltDSID:(NSString *)d completion:(id)completion;
- (void)postAgeRangeNotification:(NSString *)notification lowerAgeBound:(NSNumber *)bound upperAgeBound:(NSNumber *)ageBound completion:(id)completion;
- (void)requestAgeRangeWith:(NSArray *)with userAgeOverride:(NSNumber *)override altDSID:(NSString *)d bundleID:(NSString *)iD appName:(NSString *)name attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion;
- (void)saveAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d cacheDuration:(NSNumber *)duration privacyVersion:(NSNumber *)version completion:(id)completion;
- (void)saveAgeRangeWith:(FAAgeRange *)with completion:(id)completion;
- (void)setAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d privacyVersion:(NSNumber *)version completion:(id)completion;
- (void)shouldPromptAgeRangeWith:(NSArray *)with bundleID:(NSString *)d appName:(NSString *)name privacyVersion:(NSNumber *)version userAgeOverride:(NSNumber *)override attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion;
- (void)updateAgeRangeWith:(FAAgeRange *)with completion:(id)completion;
@end

@implementation AgeRangeDaemonService

- (void)postAgeRangeNotification:(NSString *)notification lowerAgeBound:(NSNumber *)bound upperAgeBound:(NSNumber *)ageBound completion:(id)completion
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v24 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  v17[2] = notification;
  v17[3] = bound;
  v17[4] = ageBound;
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
  notificationCopy = notification;
  boundCopy = bound;
  ageBoundCopy = ageBound;

  sub_100071FE8(0, 0, v15, &unk_10008D820, v20);
}

- (void)requestAgeRangeWith:(NSArray *)with userAgeOverride:(NSNumber *)override altDSID:(NSString *)d bundleID:(NSString *)iD appName:(NSString *)name attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion
{
  v16 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v32 - v19;
  v21 = _Block_copy(completion);
  v22 = swift_allocObject();
  v22[2] = with;
  v22[3] = override;
  v22[4] = d;
  v22[5] = iD;
  v22[6] = name;
  v22[7] = days;
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
  withCopy = with;
  overrideCopy = override;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  daysCopy = days;

  sub_100071FE8(0, 0, v20, &unk_10008D800, v25);
}

- (void)fetchAgeRangesWith:(NSString *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = with;
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
  withCopy = with;

  sub_100071FE8(0, 0, v11, &unk_10008D7E0, v16);
}

- (void)deleteAgeRangesWith:(NSString *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = with;
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
  withCopy = with;

  sub_100071FE8(0, 0, v11, &unk_10008D7C0, v16);
}

- (void)saveAgeRangeWith:(FAAgeRange *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = with;
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
  withCopy = with;

  sub_100071FE8(0, 0, v11, &unk_10008D7A0, v16);
}

- (void)updateAgeRangeWith:(FAAgeRange *)with completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = with;
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
  withCopy = with;

  sub_100071FE8(0, 0, v11, &unk_10008D780, v16);
}

- (void)saveAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d cacheDuration:(NSNumber *)duration privacyVersion:(NSNumber *)version completion:(id)completion
{
  v13 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v17 = &v26 - v16;
  v18 = _Block_copy(completion);
  v19 = swift_allocObject();
  *(v19 + 16) = state;
  *(v19 + 24) = d;
  *(v19 + 32) = duration;
  *(v19 + 40) = version;
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
  dCopy = d;
  durationCopy = duration;
  versionCopy = version;

  sub_100071FE8(0, 0, v17, &unk_10008D760, v22);
}

- (void)ageRangeGlobalStateForAltDSID:(NSString *)d completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = d;
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
  dCopy = d;

  sub_100071FE8(0, 0, v11, &unk_10008D740, v16);
}

- (void)setAgeRangeGlobalState:(int)state forAltDSID:(NSString *)d privacyVersion:(NSNumber *)version completion:(id)completion
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v23 - v14;
  v16 = _Block_copy(completion);
  v17 = swift_allocObject();
  *(v17 + 16) = state;
  *(v17 + 24) = d;
  *(v17 + 32) = version;
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
  dCopy = d;
  versionCopy = version;

  sub_100071FE8(0, 0, v15, &unk_10008D720, v20);
}

- (void)shouldPromptAgeRangeWith:(NSArray *)with bundleID:(NSString *)d appName:(NSString *)name privacyVersion:(NSNumber *)version userAgeOverride:(NSNumber *)override attestedAtOverrideInDays:(NSNumber *)days completion:(id)completion
{
  v16 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8, v18);
  v20 = &v32 - v19;
  v21 = _Block_copy(completion);
  v22 = swift_allocObject();
  v22[2] = with;
  v22[3] = d;
  v22[4] = name;
  v22[5] = version;
  v22[6] = override;
  v22[7] = days;
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
  withCopy = with;
  dCopy = d;
  nameCopy = name;
  versionCopy = version;
  overrideCopy = override;
  daysCopy = days;

  sub_100071FE8(0, 0, v20, &unk_10008D700, v25);
}

- (void)fetchFamilyCircleWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
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

- (void)fetchAltDSIDWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
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

- (void)fetchAgeWithCompletionHandler:(id)handler
{
  v5 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
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

- (void)fetchPrivacyVersionForAltDSID:(NSString *)d completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = d;
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
  dCopy = d;

  sub_100071FE8(0, 0, v11, &unk_10008C6E0, v16);
}

@end