@interface CorePrescriptionServiceConnection
- (_TtC23CorePrescriptionService33CorePrescriptionServiceConnection)init;
- (void)addEnrollment:(CRXCEnrollmentData *)a3 inGroup:(int64_t)a4 fromSource:(int64_t)a5 assigningUUID:(NSString *)a6 options:(unint64_t)a7 completionHandler:(id)a8;
- (void)addEnrollments:(NSArray *)a3 inGroup:(int64_t)a4 fromSource:(int64_t)a5 options:(unint64_t)a6 completionHandler:(id)a7;
- (void)canSkipGazeEnrollmentWithCompletionHandler:(id)a3;
- (void)checkLensPresenceWithCompletionHandler:(id)a3;
- (void)decodeAppClipCodePayload:(NSData *)a3 allowUnsupportedRX:(BOOL)a4 completionHandler:(id)a5;
- (void)deleteAllASAKeysWithCompletionHandler:(id)a3;
- (void)deleteAllEnrollmentsWithCompletionHandler:(id)a3;
- (void)deleteDemoLensEnrollmentsWithCompletionHandler:(id)a3;
- (void)deleteEnrollmentWithUUID:(NSString *)a3 completionHandler:(id)a4;
- (void)deleteEnrollmentsInGroup:(int64_t)a3 completionHandler:(id)a4;
- (void)deselectCurrentEnrollmentWithCompletionHandler:(id)a3;
- (void)dumpDataStoreToFileHandle:(NSFileHandle *)a3 table:(NSString *)a4 options:(unint64_t)a5 completionHandler:(id)a6;
- (void)encodeAppClipCodePayload:(CRXCAppClipCodePayload *)a3 completionHandler:(id)a4;
- (void)fetchActiveComfortAdjustmentDataWithCompletionHandler:(id)a3;
- (void)fetchCalibrationDataForACC:(NSData *)a3 orASAKey:(NSData *)a4 options:(NSDictionary *)a5 completionHandler:(id)a6;
- (void)fetchComfortAdjustmentDataWithCompletionHandler:(id)a3;
- (void)fetchEnrollmentWithUUID:(NSString *)a3 completionHandler:(id)a4;
- (void)fetchPrescriptionRecordsWithTimeout:(double)a3 completionHandler:(id)a4;
- (void)fetchPrescriptionStateWithCompletionHandler:(id)a3;
- (void)fetchPrismCorrectionForUUID:(NSString *)a3 inGroup:(int64_t)a4 completionHandler:(id)a5;
- (void)fetchSystemStatusWithCompletionHandler:(id)a3;
- (void)fetchUserInfoWithCompletionHandler:(id)a3;
- (void)generateAppClipCodePayloadWithVersion:(unint64_t)a3 lensType:(int64_t)a4 odRX:(CRXCEyePrescription *)a5 osRX:(CRXCEyePrescription *)a6 colorCode:(unint64_t)a7 secret:(NSData *)a8 completionHandler:(id)a9;
- (void)getCurrentCountryCodeWithCompletionHandler:(id)a3;
- (void)getPrismActivationLocationWithCompletionHandler:(id)a3;
- (void)getPrismActivationStatusWithCompletionHandler:(id)a3;
- (void)listBriefEnrollmentsWithCompletionHandler:(id)a3;
- (void)listEnrollmentsInGroup:(int64_t)a3 completionHandler:(id)a4;
- (void)migrateExistingRecordsToDataSharingWithCompletionHandler:(id)a3;
- (void)purgeDataWithOptions:(unint64_t)a3 completionHandler:(id)a4;
- (void)renameEnrollmentWithUUID:(NSString *)a3 toNewName:(NSString *)a4 completionHandler:(id)a5;
- (void)selectEnrollmentWithUUID:(NSString *)a3 completionHandler:(id)a4;
- (void)syncEnrollmentsWithExternalSourcesWithCompletionHandler:(id)a3;
- (void)updateActiveComfortAdjustmentData:(NSData *)a3 completionHandler:(id)a4;
- (void)updatePrismCorrection:(CRXCPrismCorrection *)a3 forUUID:(NSString *)a4 inGroup:(int64_t)a5 completionHandler:(id)a6;
- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionHandler:(id)a3;
@end

@implementation CorePrescriptionServiceConnection

- (_TtC23CorePrescriptionService33CorePrescriptionServiceConnection)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CorePrescriptionServiceConnection();
  return [(CorePrescriptionServiceConnection *)&v3 init];
}

- (void)checkLensPresenceWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085670;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085678;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085680, v13);
}

- (void)fetchCalibrationDataForACC:(NSData *)a3 orASAKey:(NSData *)a4 options:(NSDictionary *)a5 completionHandler:(id)a6
{
  v11 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_100081538();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100085648;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100085650;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_10002ABB8(0, 0, v14, &unk_100085658, v19);
}

- (void)fetchUserInfoWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085620;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085628;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085630, v13);
}

- (void)getCurrentCountryCodeWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000855F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085600;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085608, v13);
}

- (void)getPrismActivationLocationWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000855D0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000855D8;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_1000855E0, v13);
}

- (void)getPrismActivationStatusWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000855A8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000855B0;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_1000855B8, v13);
}

- (void)canSkipGazeEnrollmentWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085580;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085588;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085590, v13);
}

- (void)listBriefEnrollmentsWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085558;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085560;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085568, v13);
}

- (void)listEnrollmentsInGroup:(int64_t)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085530;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085538;
  v15[5] = v14;
  v16 = self;
  sub_10002ABB8(0, 0, v10, &unk_100085540, v15);
}

- (void)fetchEnrollmentWithUUID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085508;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085510;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002ABB8(0, 0, v10, &unk_100085518, v15);
}

- (void)addEnrollment:(CRXCEnrollmentData *)a3 inGroup:(int64_t)a4 fromSource:(int64_t)a5 assigningUUID:(NSString *)a6 options:(unint64_t)a7 completionHandler:(id)a8
{
  v15 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a7;
  v20[7] = v19;
  v20[8] = self;
  v21 = sub_100081538();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_1000854E0;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_1000854E8;
  v23[5] = v22;
  v24 = a3;
  v25 = a6;
  v26 = self;
  sub_10002ABB8(0, 0, v18, &unk_1000854F0, v23);
}

- (void)addEnrollments:(NSArray *)a3 inGroup:(int64_t)a4 fromSource:(int64_t)a5 options:(unint64_t)a6 completionHandler:(id)a7
{
  v13 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v24 - v15;
  v17 = _Block_copy(a7);
  v18 = swift_allocObject();
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = a5;
  v18[5] = a6;
  v18[6] = v17;
  v18[7] = self;
  v19 = sub_100081538();
  (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1000854B8;
  v20[5] = v18;
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_1000854C0;
  v21[5] = v20;
  v22 = a3;
  v23 = self;
  sub_10002ABB8(0, 0, v16, &unk_1000854C8, v21);
}

- (void)renameEnrollmentWithUUID:(NSString *)a3 toNewName:(NSString *)a4 completionHandler:(id)a5
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_100081538();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085490;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100085498;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_10002ABB8(0, 0, v12, &unk_1000854A0, v17);
}

- (void)deleteEnrollmentWithUUID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085468;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085470;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002ABB8(0, 0, v10, &unk_100085478, v15);
}

- (void)deleteAllEnrollmentsWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085440;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085448;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085450, v13);
}

- (void)deleteEnrollmentsInGroup:(int64_t)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085418;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085420;
  v15[5] = v14;
  v16 = self;
  sub_10002ABB8(0, 0, v10, &unk_100085428, v15);
}

- (void)deleteDemoLensEnrollmentsWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000853F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000853F8;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085400, v13);
}

- (void)selectEnrollmentWithUUID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000853C8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000853D0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002ABB8(0, 0, v10, &unk_1000853D8, v15);
}

- (void)deselectCurrentEnrollmentWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000853A0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000853A8;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_1000853B0, v13);
}

- (void)syncEnrollmentsWithExternalSourcesWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085378;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085380;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085388, v13);
}

- (void)deleteAllASAKeysWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085350;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085358;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085360, v13);
}

- (void)fetchPrescriptionStateWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085328;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085330;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085338, v13);
}

- (void)fetchActiveComfortAdjustmentDataWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085300;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085308;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085310, v13);
}

- (void)updateActiveComfortAdjustmentData:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000852D8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000852E0;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002ABB8(0, 0, v10, &unk_1000852E8, v15);
}

- (void)fetchComfortAdjustmentDataWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000852B0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000852B8;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_1000852C0, v13);
}

- (void)fetchPrismCorrectionForUUID:(NSString *)a3 inGroup:(int64_t)a4 completionHandler:(id)a5
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_100081538();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100085288;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100085290;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_10002ABB8(0, 0, v12, &unk_100085298, v17);
}

- (void)updatePrismCorrection:(CRXCPrismCorrection *)a3 forUUID:(NSString *)a4 inGroup:(int64_t)a5 completionHandler:(id)a6
{
  v11 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_100081538();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100085260;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100085268;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_10002ABB8(0, 0, v14, &unk_100085270, v19);
}

- (void)fetchPrescriptionRecordsWithTimeout:(double)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = v11;
  *(v12 + 32) = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085238;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085240;
  v15[5] = v14;
  v16 = self;
  sub_10002ABB8(0, 0, v10, &unk_100085248, v15);
}

- (void)purgeDataWithOptions:(unint64_t)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100085210;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100085218;
  v15[5] = v14;
  v16 = self;
  sub_10002ABB8(0, 0, v10, &unk_100085220, v15);
}

- (void)decodeAppClipCodePayload:(NSData *)a3 allowUnsupportedRX:(BOOL)a4 completionHandler:(id)a5
{
  v9 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_100081538();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1000851E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1000851F0;
  v17[5] = v16;
  v18 = a3;
  v19 = self;
  sub_10002ABB8(0, 0, v12, &unk_1000851F8, v17);
}

- (void)encodeAppClipCodePayload:(CRXCAppClipCodePayload *)a3 completionHandler:(id)a4
{
  v7 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_100081538();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000851C0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1000851C8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_10002ABB8(0, 0, v10, &unk_1000851D0, v15);
}

- (void)generateAppClipCodePayloadWithVersion:(unint64_t)a3 lensType:(int64_t)a4 odRX:(CRXCEyePrescription *)a5 osRX:(CRXCEyePrescription *)a6 colorCode:(unint64_t)a7 secret:(NSData *)a8 completionHandler:(id)a9
{
  v16 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v29 - v18;
  v20 = _Block_copy(a9);
  v21 = swift_allocObject();
  v21[2] = a3;
  v21[3] = a4;
  v21[4] = a5;
  v21[5] = a6;
  v21[6] = a7;
  v21[7] = a8;
  v21[8] = v20;
  v21[9] = self;
  v22 = sub_100081538();
  (*(*(v22 - 8) + 56))(v19, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_100085198;
  v23[5] = v21;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_1000851A0;
  v24[5] = v23;
  v25 = a5;
  v26 = a6;
  v27 = a8;
  v28 = self;
  sub_10002ABB8(0, 0, v19, &unk_1000851A8, v24);
}

- (void)dumpDataStoreToFileHandle:(NSFileHandle *)a3 table:(NSString *)a4 options:(unint64_t)a5 completionHandler:(id)a6
{
  v11 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v23 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_100081538();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100085170;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_100085178;
  v19[5] = v18;
  v20 = a3;
  v21 = a4;
  v22 = self;
  sub_10002ABB8(0, 0, v14, &unk_100085180, v19);
}

- (void)validateAndApplySharedLensEnrollmentAssetsWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085148;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085150;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085158, v13);
}

- (void)fetchSystemStatusWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100085120;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100085128;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_100085130, v13);
}

- (void)migrateExistingRecordsToDataSharingWithCompletionHandler:(id)a3
{
  v5 = sub_100006940(&qword_1000B7A10, &qword_100084E70);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_100081538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000850C8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000850D8;
  v13[5] = v12;
  v14 = self;
  sub_10002ABB8(0, 0, v8, &unk_1000850E8, v13);
}

@end