@interface FAParentalControlsOperation
- (void)fetchParentalControlBitsForAltDSID:(NSString *)a3 completionHandler:(id)a4;
- (void)setCommLimitsCollaborationSwitchForAltDSID:(NSString *)a3 enableCollaboration:(BOOL)a4 completionHandler:(id)a5;
- (void)setCommLimitsMailAppSwitchForAltDSID:(NSString *)a3 enableMailApp:(BOOL)a4 completionHandler:(id)a5;
- (void)setDeclaredAgeRangeShareOptionForAltDSID:(NSString *)a3 shareOption:(NSNumber *)a4 privacyVersion:(NSNumber *)a5 completionHandler:(id)a6;
@end

@implementation FAParentalControlsOperation

- (void)fetchParentalControlBitsForAltDSID:(NSString *)a3 completionHandler:(id)a4
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v19 - v10;
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
  v15[4] = &unk_10008E408;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10008E410;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_100071FE8(0, 0, v11, &unk_10008E418, v16);
}

- (void)setCommLimitsCollaborationSwitchForAltDSID:(NSString *)a3 enableCollaboration:(BOOL)a4 completionHandler:(id)a5
{
  v9 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10008E3E8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10008E3F0;
  v18[5] = v17;
  v19 = a3;
  v20 = self;
  sub_100071FE8(0, 0, v13, &unk_10008E3F8, v18);
}

- (void)setCommLimitsMailAppSwitchForAltDSID:(NSString *)a3 enableMailApp:(BOOL)a4 completionHandler:(id)a5
{
  v9 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v21 - v12;
  v14 = _Block_copy(a5);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = v14;
  *(v15 + 40) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10008E3C8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_10008E3D0;
  v18[5] = v17;
  v19 = a3;
  v20 = self;
  sub_100071FE8(0, 0, v13, &unk_10008E3D8, v18);
}

- (void)setDeclaredAgeRangeShareOptionForAltDSID:(NSString *)a3 shareOption:(NSNumber *)a4 privacyVersion:(NSNumber *)a5 completionHandler:(id)a6
{
  v11 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v15 = &v25 - v14;
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
  v19[4] = &unk_10008E380;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_10008C7F0;
  v20[5] = v19;
  v21 = a3;
  v22 = a4;
  v23 = a5;
  v24 = self;
  sub_100071FE8(0, 0, v15, &unk_10008C6E0, v20);
}

@end