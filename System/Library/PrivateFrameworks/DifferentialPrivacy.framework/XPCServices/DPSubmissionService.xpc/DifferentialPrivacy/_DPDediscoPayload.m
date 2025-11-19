@interface _DPDediscoPayload
- (_DPDediscoPayload)init;
- (_DPDediscoPayload)initWithCollectionId:(id)a3 algorithm:(id)a4 algorithmParameters:(id)a5 fsEncryptedShare:(id)a6 dsEncryptedShare:(id)a7 fsPublicKey:(id)a8 dsPublicKey:(id)a9 versionHash:(id)a10 report:(id)a11;
- (id)getCollectionId;
- (id)getReport;
- (id)serializeAndReturnError:(id *)a3;
@end

@implementation _DPDediscoPayload

- (_DPDediscoPayload)initWithCollectionId:(id)a3 algorithm:(id)a4 algorithmParameters:(id)a5 fsEncryptedShare:(id)a6 dsEncryptedShare:(id)a7 fsPublicKey:(id)a8 dsPublicKey:(id)a9 versionHash:(id)a10 report:(id)a11
{
  v54 = sub_100050760();
  v53 = v15;
  v16 = sub_100050760();
  v51 = v17;
  v52 = v16;
  if (a6)
  {
    v18 = a5;
    v19 = a7;
    v20 = a8;
    v21 = a9;
    v22 = a10;
    v23 = a11;
    v24 = a6;
    v25 = sub_100050300();
    v49 = v26;
    v50 = v25;

    v55 = a5;
    if (a7)
    {
LABEL_3:
      v48 = sub_100050300();
      v28 = v27;

      goto LABEL_6;
    }
  }

  else
  {
    v29 = a5;
    v30 = a7;
    v31 = a8;
    v32 = a9;
    v33 = a10;
    v34 = a11;
    v49 = 0xF000000000000000;
    v50 = 0;
    v55 = a5;
    if (a7)
    {
      goto LABEL_3;
    }
  }

  v48 = 0;
  v28 = 0xF000000000000000;
LABEL_6:
  v35 = sub_100050760();
  v37 = v36;

  v38 = sub_100050760();
  v40 = v39;

  v41 = sub_100050760();
  v43 = v42;

  if (a11)
  {
    v44 = sub_100050300();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0xF000000000000000;
  }

  return _DPDediscoPayload.init(collectionId:algorithm:algorithmParameters:fsEncryptedShare:dsEncryptedShare:fsPublicKey:dsPublicKey:versionHash:report:)(v54, v53, v52, v51, v55, v50, v49, v48, v28, v35, v37, v38, v40, v41, v43, v44, v46);
}

- (id)serializeAndReturnError:(id *)a3
{
  v4 = type metadata accessor for DediscoDonation(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = self;
  sub_1000326FC(&qword_10007D5E0, type metadata accessor for DediscoDonation);
  v8 = self;
  sub_1000504E0();
  v9 = sub_1000504B0();
  v11 = v10;

  sub_10003228C(v7);
  v12.super.isa = sub_1000502F0().super.isa;
  sub_100013E20(v9, v11);

  return v12.super.isa;
}

- (id)getCollectionId
{
  v2 = *(&self->super.isa + OBJC_IVAR____DPDediscoPayload_collectionId);
  v3 = *&self->collectionId[OBJC_IVAR____DPDediscoPayload_collectionId];

  v4 = sub_100050750();

  return v4;
}

- (id)getReport
{
  v2 = (self + OBJC_IVAR____DPDediscoPayload_report);
  v3 = *&self->collectionId[OBJC_IVAR____DPDediscoPayload_report];
  if (v3 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v5 = *v2;
    sub_10001414C(*v2, v3);
    isa = sub_1000502F0().super.isa;
    sub_1000303FC(v5, v3);
    v4 = isa;
  }

  return v4;
}

- (_DPDediscoPayload)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end