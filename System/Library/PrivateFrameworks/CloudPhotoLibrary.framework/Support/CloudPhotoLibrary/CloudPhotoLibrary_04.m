uint64_t _s22CloudKitImplementation30CPLCKResourceDownloadOperationC35fetchDerivativesUploadConfiguration15completionBlockSo010CKDatabaseF0CySo20CPLDerivativesFilterCSg_s5Error_pSgtc_tFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = sub_1000BB130(&qword_1002C0DE8, &qword_100245048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_1000BB130(&qword_1002C0DF0, &qword_100245050);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for UploadResourcesRequest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1000BD494();
  if (v17)
  {
    sub_1000C580C(v17, v16);
  }

  else
  {
    *v16 = &_swiftEmptyArrayStorage;
    v18 = v16 + *(v12 + 20);
    UnknownStorage.init()();
  }

  sub_1000CCBD4(v16, v11, type metadata accessor for UploadResourcesRequest);
  (*(v13 + 56))(v11, 0, 1, v12);
  (*(v4 + 104))(v7, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v3);
  v19 = objc_allocWithZone(sub_1000BB130(&qword_1002C0DF8, &qword_100245058));
  v20 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  *(v21 + 24) = a2;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v16, type metadata accessor for UploadResourcesRequest);
  return v20;
}

void *sub_1000CB9F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a8;
  v16 = type metadata accessor for ResourceDownloadRequest(0);
  v40 = *(v16 - 8);
  v17 = *(v40 + 64);
  v18 = __chkstk_darwin(v16);
  v41 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v38 - v19;
  v44 = a1;
  v45 = a3;
  v46 = a1;
  v47 = a4;
  v48 = a5;
  v49 = a2;
  v42 = a2;
  v50 = a3;
  v51 = a6;
  v52 = a7;
  sub_1000CC224(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);
  static Message.with(_:)();
  v21 = sub_1000BD19C(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  if (qword_1002C05F0 != -1)
  {
    swift_once();
  }

  v39 = a9;
  if (byte_1002C0D28 == 1)
  {
    *(v22 + 16) = &_swiftEmptyArrayStorage;

    aBlock[4] = sub_1000CC344;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BE260;
    aBlock[3] = &unk_100278508;
    v23 = _Block_copy(aBlock);
    v24 = v21;

    [v24 setRequestCompletedBlock:v23];
    _Block_release(v23);
  }

  v25 = v41;
  sub_1000CCBD4(v20, v41, type metadata accessor for ResourceDownloadRequest);
  v26 = (*(v40 + 80) + 16) & ~*(v40 + 80);
  v27 = (v17 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 23) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  sub_1000CCC3C(v25, v30 + v26, type metadata accessor for ResourceDownloadRequest);
  *(v30 + v27) = v22;
  v31 = (v30 + v28);
  v32 = v44;
  v33 = v39;
  *v31 = v43;
  v31[1] = v33;
  *(v30 + v29) = v32;
  v34 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
  v35 = v45;
  *v34 = v42;
  v34[1] = v35;

  v36 = v32;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v20, type metadata accessor for ResourceDownloadRequest);

  return v21;
}

uint64_t _s22CloudKitImplementation30CPLCKResourceDownloadOperationC38fetchRawDerivativesUploadConfiguration15completionBlockSo010CKDatabaseF0CySSSg_s5Error_pSgtc_tFZ_0(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v3 = sub_1000BB130(&qword_1002C0DE8, &qword_100245048);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v23 - v6;
  v8 = sub_1000BB130(&qword_1002C0DF0, &qword_100245050);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v23 - v10;
  v12 = type metadata accessor for UploadResourcesRequest(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = (&v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = &_swiftEmptyArrayStorage;
  v18 = v17 + *(v15 + 20);
  UnknownStorage.init()();
  sub_1000CCBD4(v17, v11, type metadata accessor for UploadResourcesRequest);
  (*(v13 + 56))(v11, 0, 1, v12);
  (*(v4 + 104))(v7, enum case for CodeOperation.DestinationServer.default<A, B>(_:), v3);
  v19 = objc_allocWithZone(sub_1000BB130(&qword_1002C0DF8, &qword_100245058));
  v20 = CodeOperation.init(service:functionName:request:destinationServer:)();
  v21 = swift_allocObject();
  *(v21 + 16) = v24;
  *(v21 + 24) = a2;

  dispatch thunk of CodeOperation.codeOperationCompletionBlock.setter();
  sub_1000CCD5C(v17, type metadata accessor for UploadResourcesRequest);
  return v20;
}

unint64_t sub_1000CC0F0()
{
  result = qword_1002C0DE0;
  if (!qword_1002C0DE0)
  {
    sub_1000CC8B0(255, &qword_1002C0DD0, CKRecordID_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0DE0);
  }

  return result;
}

unint64_t sub_1000CC1A4()
{
  result = qword_1002C0E08;
  if (!qword_1002C0E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0E08);
  }

  return result;
}

uint64_t sub_1000CC224(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000CC26C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ResourceDownloadRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000C6B88(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v8 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1000CC360(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t *sub_1000CC37C(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000CC444(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000CC4E4(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ResourceDownloadRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1000C4F0C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v9 + 8), *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((((v9 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1000CC5D0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1000CC6A8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v5 = *(type metadata accessor for ResourceStreamRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v2 + v7);
  v12 = (v2 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v12;
  v15 = v12[1];
  return sub_1000C2B28(a1, a2, v2 + v6, v11, *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v10), *(v2 + v10 + 8));
}

uint64_t sub_1000CC794(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BB130(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000CC854(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000CC8B0(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

id sub_1000CC8F8(_DWORD *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = [v3 unsignedIntValue];
  a1[1] = [v4 unsignedIntValue];
  result = [v5 unsignedIntValue];
  a1[2] = result;
  return result;
}

uint64_t sub_1000CC968(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1000BB130(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000CC9D8(uint64_t *a1)
{
  v3 = **(v1 + 16);
  v4 = *a1;

  *a1 = v3;
  return result;
}

uint64_t sub_1000CCA98(uint64_t a1, void *a2)
{
  v5 = *(type metadata accessor for ResourceDownloadRequest(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v2 + v12 + 8);
  return sub_1000BF88C(a1, a2, v2 + v6, *(v2 + v7), *(v2 + v8), *(v2 + v8 + 8), *(v2 + v9), *(v2 + v10), *(v2 + v11), *(v2 + v11 + 8), *(v2 + v12));
}

uint64_t sub_1000CCBD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000CCC3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000CCCA4()
{
  result = qword_1002C0F38;
  if (!qword_1002C0F38)
  {
    sub_1000BA79C(&qword_1002C0F30, &qword_100245128);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0F38);
  }

  return result;
}

unint64_t sub_1000CCD08()
{
  result = qword_1002C0F40;
  if (!qword_1002C0F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0F40);
  }

  return result;
}

uint64_t sub_1000CCD5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000CCDBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000BB130(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000CCE1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t Goldilocks_ExitMoveBatchErrorFeedbackRequest.items.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Utility_DeleteAllZonesResponse.batchError.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t Utility_DeleteAllZonesResponse.batchError.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t Utility_DeleteAllZonesResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Utility_DeleteAllZonesResponse(0) + 24);
  return UnknownStorage.init()();
}

uint64_t Utility_DeleteZoneRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Utility_DeleteZoneRequest(0) + 20);
  return UnknownStorage.init()();
}

uint64_t Utility_DeleteZoneResponse.error.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Utility_DeleteZoneResponse(0);
  sub_1000CC794(v1 + *(v7 + 24), v6, &qword_1002C0F70, &qword_100245190);
  v8 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000D31AC(v6, a1, type metadata accessor for Utility_ErrorInfo.ResultError);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v10 = a1 + *(v8 + 24);
  UnknownStorage.init()();
  v11 = *(v8 + 28);
  v12 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  (*(*(v12 - 8) + 56))(a1 + v11, 1, 1, v12);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0F70, &qword_100245190);
  }

  return result;
}

uint64_t Utility_ErrorInfo.ResultError.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v2 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v3 = a1 + *(v2 + 24);
  UnknownStorage.init()();
  v4 = *(v2 + 28);
  v5 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Utility_DeleteZoneResponse.error.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Utility_DeleteZoneResponse(0) + 24);
  sub_1000CCDBC(v1 + v3, &qword_1002C0F70, &qword_100245190);
  sub_1000D31AC(a1, v1 + v3, type metadata accessor for Utility_ErrorInfo.ResultError);
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Utility_DeleteZoneResponse.error.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0F70, &qword_100245190) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Utility_DeleteZoneResponse(0) + 24);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C0F70, &qword_100245190);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 1;
    v16 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    v17 = *(v8 + 28);
    v18 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
    (*(*(v18 - 8) + 56))(v13 + v17, 1, 1, v18);
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0F70, &qword_100245190);
    }
  }

  else
  {
    sub_1000D31AC(v7, v13, type metadata accessor for Utility_ErrorInfo.ResultError);
  }

  return sub_1000CD694;
}

BOOL Utility_DeleteZoneResponse.hasError.getter()
{
  v1 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Utility_DeleteZoneResponse(0);
  sub_1000CC794(v0 + *(v5 + 24), v4, &qword_1002C0F70, &qword_100245190);
  v6 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C0F70, &qword_100245190);
  return v7;
}

Swift::Void __swiftcall Utility_DeleteZoneResponse.clearError()()
{
  v1 = *(type metadata accessor for Utility_DeleteZoneResponse(0) + 24);
  sub_1000CCDBC(v0 + v1, &qword_1002C0F70, &qword_100245190);
  v2 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000CD854@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000CD8F0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Utility_DeleteZoneResponse.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Utility_DeleteZoneResponse(0);
  v3 = &a1[*(v2 + 20)];
  UnknownStorage.init()();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t RequestItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RequestItem.unknownFields.setter(uint64_t a1)
{
  v3 = type metadata accessor for UnknownStorage();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_1000CDB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D33D8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000CDC04@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1000CDC54@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1000CDC90(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D3364();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Utility_ErrorInfo.DatabaseFailure.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Utility_ErrorInfo.DatabaseFailure.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0) + 32);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Utility_ErrorInfo.DatabaseFailure.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v1 = a1 + *(type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0) + 32);
  return UnknownStorage.init()();
}

uint64_t Utility_ErrorInfo.ResultError.databaseFailure.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  sub_1000CC794(v1 + *(v7 + 28), v6, &qword_1002C0F78, &qword_100245198);
  v8 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1000D31AC(v6, a1, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  }

  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  v10 = a1 + *(v8 + 32);
  UnknownStorage.init()();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0F78, &qword_100245198);
  }

  return result;
}

uint64_t Utility_ErrorInfo.ResultError.databaseFailure.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Utility_ErrorInfo.ResultError(0) + 28);
  sub_1000CCDBC(v1 + v3, &qword_1002C0F78, &qword_100245198);
  sub_1000D31AC(a1, v1 + v3, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  v4 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Utility_ErrorInfo.ResultError.databaseFailure.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0F78, &qword_100245198) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Utility_ErrorInfo.ResultError(0) + 28);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C0F78, &qword_100245198);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0xE000000000000000;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0xE000000000000000;
    *(v13 + 32) = 0;
    *(v13 + 40) = 1;
    *(v13 + 48) = 0;
    *(v13 + 56) = 1;
    v16 = v13 + *(v8 + 32);
    UnknownStorage.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0F78, &qword_100245198);
    }
  }

  else
  {
    sub_1000D31AC(v7, v13, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  }

  return sub_1000CE2D0;
}

void sub_1000CE2F8(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 12);
  v10 = (*a1)[4];
  v11 = (*a1)[5];
  v12 = (*a1)[2];
  v13 = (*a1)[3];
  v14 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1000D3214(v11, v10, a5);
    sub_1000CCDBC(v14 + v9, a3, a4);
    sub_1000D31AC(v10, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
    sub_1000D327C(v11, a5);
  }

  else
  {
    sub_1000CCDBC(v14 + v9, a3, a4);
    sub_1000D31AC(v11, v14 + v9, a5);
    (*(v13 + 56))(v14 + v9, 0, 1, v12);
  }

  free(v11);
  free(v10);
  free(v15);

  free(v8);
}

BOOL Utility_ErrorInfo.ResultError.hasDatabaseFailure.getter()
{
  v1 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  sub_1000CC794(v0 + *(v5 + 28), v4, &qword_1002C0F78, &qword_100245198);
  v6 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C0F78, &qword_100245198);
  return v7;
}

Swift::Void __swiftcall Utility_ErrorInfo.ResultError.clearDatabaseFailure()()
{
  v1 = *(type metadata accessor for Utility_ErrorInfo.ResultError(0) + 28);
  sub_1000CCDBC(v0 + v1, &qword_1002C0F78, &qword_100245198);
  v2 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1000CE5C8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000CE664(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Goldilocks_ErrorInfo.ResultError.resultErrorCode.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t Goldilocks_ErrorInfo.ResultError.resultErrorCode.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t Utility_ErrorInfo.BatchError.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  v1 = a1 + *(type metadata accessor for Utility_ErrorInfo.BatchError(0) + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000CEA54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15E0, type metadata accessor for Utility_DeleteAllZonesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CEAF4()
{
  sub_1000D331C(&qword_1002C1040, type metadata accessor for Utility_DeleteAllZonesRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CEB60()
{
  sub_1000D331C(&qword_1002C1040, type metadata accessor for Utility_DeleteAllZonesRequest);

  return Message.hash(into:)();
}

uint64_t Utility_DeleteAllZonesResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Utility_DeleteZoneResponse(0);
        sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        sub_1000D3364();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_DeleteAllZonesResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Utility_DeleteZoneResponse(0), sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), sub_1000D3364(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Utility_DeleteAllZonesResponse(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_1000CEEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000CEF60(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15D8, type metadata accessor for Utility_DeleteAllZonesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF000()
{
  sub_1000D331C(&qword_1002C1058, type metadata accessor for Utility_DeleteAllZonesResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CF06C()
{
  sub_1000D331C(&qword_1002C1058, type metadata accessor for Utility_DeleteAllZonesResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000CF110()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_DeleteZoneRequest._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_DeleteZoneRequest._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100244100;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "zoneName";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_SilentMoverRampingRequest.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      dispatch thunk of Decoder.decodeSingularStringField(value:)();
    }
  }

  return result;
}

uint64_t Utility_DeleteZoneRequest.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0 + *(type metadata accessor for Utility_DeleteZoneRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Utility_DeleteZoneRequest.== infix(_:_:)(void *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Utility_DeleteZoneRequest(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000CF4D0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t sub_1000CF528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15D0, type metadata accessor for Utility_DeleteZoneRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CF5C8()
{
  sub_1000D331C(&qword_1002C1070, type metadata accessor for Utility_DeleteZoneRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CF634()
{
  sub_1000D331C(&qword_1002C1070, type metadata accessor for Utility_DeleteZoneRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000CF6B0(void *a1, void *a2, uint64_t a3)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000CF794()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_DeleteZoneResponse._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_DeleteZoneResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100244120;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "error";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "zoneName";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Utility_DeleteZoneResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Utility_DeleteZoneResponse(0) + 24);
        type metadata accessor for Utility_ErrorInfo.ResultError(0);
        sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError);
        dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_DeleteZoneResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v20[0] = a1;
  v20[1] = a2;
  v4 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v20 - v6;
  v8 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Utility_DeleteZoneResponse(0);
  sub_1000CC794(v3 + *(v13 + 24), v7, &qword_1002C0F70, &qword_100245190);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000CCDBC(v7, &qword_1002C0F70, &qword_100245190);
    v14 = v21;
  }

  else
  {
    sub_1000D31AC(v7, v12, type metadata accessor for Utility_ErrorInfo.ResultError);
    sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError);
    v14 = v21;
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_1000D327C(v12, type metadata accessor for Utility_ErrorInfo.ResultError);
    if (v14)
    {
      return result;
    }
  }

  v16 = *v3;
  v17 = v3[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v14))
  {
    v19 = v3 + *(v13 + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000CFD68@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  UnknownStorage.init()();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1000CFE20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15C8, type metadata accessor for Utility_DeleteZoneResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000CFEC0()
{
  sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000CFF2C()
{
  sub_1000D331C(&qword_1002C0F90, type metadata accessor for Utility_DeleteZoneResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000CFFDC(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v3, a2);
  sub_1000BA040(v3, a2);
  return _NameMap.init()();
}

uint64_t Goldilocks_ErrorInfo.decodeMessage<A>(decoder:)()
{
  do
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
  }

  while (!v0 && (v2 & 1) == 0);
  return result;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV2eeoiySbAC_ACtFZ_0()
{
  type metadata accessor for UnknownStorage();
  sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000D0198(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15C0, type metadata accessor for Utility_ErrorInfo);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D0238()
{
  sub_1000D331C(&qword_1002C1098, type metadata accessor for Utility_ErrorInfo);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D02A4()
{
  sub_1000D331C(&qword_1002C1098, type metadata accessor for Utility_ErrorInfo);

  return Message.hash(into:)();
}

uint64_t sub_1000D0320()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.ResultErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.ResultErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100245150;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 0;
  *v5 = "NO_ERROR";
  *(v5 + 8) = 8;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "UNKNOWN";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SERVER_ERROR";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "FAILED_CK_CALL";
  *(v13 + 1) = 14;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "MISSING_ARGUMENTS";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "INVALID_ARGUMENTS";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "ZONE_NOT_FOUND";
  *(v19 + 1) = 14;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "RECORD_NOT_FOUND";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "PERMISSION_DENIED";
  *(v22 + 8) = 17;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000D070C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.BatchErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.BatchErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NO_BATCH_ERROR";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "BATCH_SERVER_ERROR";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MULTI_STATUS";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INCOMPLETE_BATCH_REQUEST";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "INVALID_BATCHING";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "FORBIDDEN_BATCH_REQUEST";
  *(v18 + 1) = 23;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

void sub_1000D0A40()
{
  v0._object = 0x80000001002022C0;
  v0._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v0);
  static Utility_ErrorInfo.DatabaseFailure.protoMessageName = 0xD000000000000011;
  unk_1002D2E70 = 0x8000000100202270;
}

uint64_t *Utility_ErrorInfo.DatabaseFailure.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C0638 != -1)
  {
    swift_once();
  }

  return &static Utility_ErrorInfo.DatabaseFailure.protoMessageName;
}

uint64_t sub_1000D0B2C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.DatabaseFailure._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.DatabaseFailure._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ckOperation";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "description";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "clientCode";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "serverCode";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Goldilocks_ErrorInfo.DatabaseFailure.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          sub_1000BA0CC();
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          v3 = v0;
          sub_1000BA078();
          goto LABEL_5;
        }
      }

      else if (result == 1 || result == 2)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_ErrorInfo.DatabaseFailure.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v0[4], *(v0 + 40)))
      {
        sub_1000BA0CC();
        result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
        if (v1)
        {
          return result;
        }

        if (!v0[6])
        {
          goto LABEL_15;
        }
      }

      else if (!v0[6])
      {
LABEL_15:
        v8 = v0 + *(type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0) + 32);
        return UnknownStorage.traverse<A>(visitor:)();
      }

      v9 = *(v0 + 56);
      sub_1000BA078();
      result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
      if (v1)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

uint64_t sub_1000D1090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_1000D10F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000D116C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000D11E0(uint64_t a1, uint64_t a2))()
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_1000D1234(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15B8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D12D4()
{
  sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D1340()
{
  sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);

  return Message.hash(into:)();
}

void sub_1000D13C0(int a1)
{
  v1._countAndFlagsBits = 0x45746C757365522ELL;
  v1._object = 0xEC000000726F7272;
  sub_1000D1DB4(a1, v1, static Utility_ErrorInfo.ResultError.protoMessageName, &static Utility_ErrorInfo.ResultError.protoMessageName[1]);
}

void *Utility_ErrorInfo.ResultError.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C0648 != -1)
  {
    swift_once();
  }

  return static Utility_ErrorInfo.ResultError.protoMessageName;
}

uint64_t sub_1000D1464()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static Utility_ErrorInfo.ResultError._protobuf_nameMap);
  sub_1000BA040(v0, static Utility_ErrorInfo.ResultError._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "errorMessage";
  *(v6 + 8) = 12;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "resultErrorCode";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "databaseFailure";
  *(v11 + 8) = 15;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Utility_ErrorInfo.ResultError.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          v3 = *(type metadata accessor for Utility_ErrorInfo.ResultError(0) + 28);
          type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
          sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
          break;
        case 2:
          sub_1000D33D8();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          break;
        case 1:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_ErrorInfo.ResultError.traverse<A>(visitor:)()
{
  v2 = v1;
  v3 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v0;
  v13 = v0[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (v0[2])
  {
    v16 = *(v0 + 24);
    v18 = v0[2];
    v19 = v16;
    sub_1000D33D8();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v2)
    {
      return result;
    }

    v2 = 0;
  }

  v20 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  sub_1000CC794(v0 + *(v20 + 28), v6, &qword_1002C0F78, &qword_100245198);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000CCDBC(v6, &qword_1002C0F78, &qword_100245198);
  }

  else
  {
    sub_1000D31AC(v6, v11, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
    sub_1000D331C(&qword_1002C0FC8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    result = sub_1000D327C(v11, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
    if (v2)
    {
      return result;
    }
  }

  v17 = v0 + *(v20 + 24);
  return UnknownStorage.traverse<A>(visitor:)();
}

uint64_t sub_1000D1B14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(a1 + 24);
  UnknownStorage.init()();
  v5 = *(a1 + 28);
  v6 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000D1C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15B0, type metadata accessor for Utility_ErrorInfo.ResultError);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D1CA0()
{
  sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D1D0C()
{
  sub_1000D331C(&qword_1002C0FA8, type metadata accessor for Utility_ErrorInfo.ResultError);

  return Message.hash(into:)();
}

void sub_1000D1D88(int a1)
{
  v1._countAndFlagsBits = 0x724568637461422ELL;
  v1._object = 0xEB00000000726F72;
  sub_1000D1DB4(a1, v1, static Utility_ErrorInfo.BatchError.protoMessageName, &static Utility_ErrorInfo.BatchError.protoMessageName[1]);
}

void sub_1000D1DB4(int a1, Swift::String a2, void *a3, void *a4)
{
  String.append(_:)(a2);
  *a3 = 0xD000000000000011;
  *a4 = 0x8000000100202270;
}

void *Utility_ErrorInfo.BatchError.protoMessageName.unsafeMutableAddressor()
{
  if (qword_1002C0658 != -1)
  {
    swift_once();
  }

  return static Utility_ErrorInfo.BatchError.protoMessageName;
}

uint64_t sub_1000D1EB0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v7, a2);
  sub_1000BA040(v7, a2);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v8 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100244120;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = enum case for _NameMap.NameDescription.same(_:);
  v15 = type metadata accessor for _NameMap.NameDescription();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = "batchError";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v16();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t Utility_ErrorInfo.BatchError.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }

      else if (result == 2)
      {
        sub_1000D3364();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t Utility_ErrorInfo.BatchError.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    if (!v0[2] || (v7 = v0[2], v8 = *(v0 + 24), sub_1000D3364(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
    {
      v6 = v0 + *(type metadata accessor for Utility_ErrorInfo.BatchError(0) + 24);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

Swift::Int sub_1000D22A4(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000D331C(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D232C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v2 = a2 + *(a1 + 24);
  return UnknownStorage.init()();
}

uint64_t sub_1000D23B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D331C(&qword_1002C15A8, type metadata accessor for Utility_ErrorInfo.BatchError);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000D2458()
{
  sub_1000D331C(&qword_1002C10D0, type metadata accessor for Utility_ErrorInfo.BatchError);

  return Message.debugDescription.getter();
}

uint64_t sub_1000D24C4()
{
  sub_1000D331C(&qword_1002C10D0, type metadata accessor for Utility_ErrorInfo.BatchError);

  return Message.hash(into:)();
}

uint64_t _s22CloudKitImplementation30Utility_DeleteAllZonesResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  if ((sub_1000E76A8(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5 > 2)
    {
      if (v5 == 3)
      {
        if (v4 != 3)
        {
          return 0;
        }
      }

      else if (v5 == 4)
      {
        if (v4 != 4)
        {
          return 0;
        }
      }

      else if (v4 != 5)
      {
        return 0;
      }

      goto LABEL_9;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_9:
      v6 = *(type metadata accessor for Utility_DeleteAllZonesResponse(0) + 24);
      type metadata accessor for UnknownStorage();
      sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v4)
    {
      goto LABEL_9;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t _s22CloudKitImplementation26Utility_DeleteZoneResponseV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v26 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (&v25 - v10);
  v12 = sub_1000BB130(&qword_1002C15F0, &unk_100246070);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v27 = type metadata accessor for Utility_DeleteZoneResponse(0);
  v28 = a1;
  v17 = *(v27 + 24);
  v18 = *(v13 + 56);
  sub_1000CC794(a1 + v17, v16, &qword_1002C0F70, &qword_100245190);
  sub_1000CC794(a2 + v17, &v16[v18], &qword_1002C0F70, &qword_100245190);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_1000CC794(v16, v11, &qword_1002C0F70, &qword_100245190);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v21 = v26;
      sub_1000D31AC(&v16[v18], v26, type metadata accessor for Utility_ErrorInfo.ResultError);
      v22 = _s22CloudKitImplementation17Utility_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(v11, v21);
      sub_1000D327C(v21, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000D327C(v11, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000CCDBC(v16, &qword_1002C0F70, &qword_100245190);
      if ((v22 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    sub_1000D327C(v11, type metadata accessor for Utility_ErrorInfo.ResultError);
LABEL_6:
    sub_1000CCDBC(v16, &qword_1002C15F0, &unk_100246070);
    goto LABEL_7;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1000CCDBC(v16, &qword_1002C0F70, &qword_100245190);
LABEL_9:
  if (*v28 == *a2 && v28[1] == a2[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v23 = *(v27 + 20);
    type metadata accessor for UnknownStorage();
    sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    v20 = dispatch thunk of static Equatable.== infix(_:_:)();
    return v20 & 1;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV15DatabaseFailureV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
    if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v6 = *(a2 + 32);
      v7 = *(a2 + 40);
      v8 = Rpcproto_ErrorInfo.Client.Code.rawValue.getter(*(a1 + 32), *(a1 + 40));
      if (v8 == Rpcproto_ErrorInfo.Client.Code.rawValue.getter(v6, v7))
      {
        v9 = *(a1 + 48);
        if (*(a1 + 56) == 1)
        {
          v9 = qword_100246080[v9];
        }

        v10 = *(a2 + 48);
        if (*(a2 + 56))
        {
          switch(v10)
          {
            case 1:
              if (v9 != 1)
              {
                return 0;
              }

              goto LABEL_19;
            case 2:
              if (v9 != 2)
              {
                return 0;
              }

              goto LABEL_19;
            case 3:
              if (v9 != 3)
              {
                return 0;
              }

              goto LABEL_19;
            case 4:
              if (v9 != 4)
              {
                return 0;
              }

              goto LABEL_19;
            case 5:
              if (v9 != 6)
              {
                return 0;
              }

              goto LABEL_19;
            case 6:
              if (v9 != 7)
              {
                return 0;
              }

              goto LABEL_19;
            case 7:
              if (v9 != 8)
              {
                return 0;
              }

              goto LABEL_19;
            case 8:
              if (v9 != 9)
              {
                return 0;
              }

              goto LABEL_19;
            case 9:
              v13 = 200001;
              break;
            case 10:
              v13 = 200002;
              break;
            case 11:
              v13 = 200003;
              break;
            case 12:
              v13 = 200004;
              break;
            case 13:
              v13 = 200005;
              break;
            default:
              if (!v9)
              {
                goto LABEL_19;
              }

              return 0;
          }

          if (v9 != v13)
          {
            return 0;
          }

LABEL_19:
          v11 = *(type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0) + 32);
          type metadata accessor for UnknownStorage();
          sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
          return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
        }

        if (v9 == v10)
        {
          goto LABEL_19;
        }
      }
    }
  }

  return 0;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV06ResultE0V2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for Utility_ErrorInfo.DatabaseFailure(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BB130(&qword_1002C0F78, &qword_100245198);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v27 - v11;
  v13 = sub_1000BB130(&qword_1002C15E8, &qword_100246068);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v27 - v15;
  if ((*a1 != *a2 || a1[1] != *(a2 + 8)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_18;
  }

  v17 = a1[2];
  v18 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v18 <= 3)
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          if (v17 != 2)
          {
            goto LABEL_18;
          }
        }

        else if (v17 != 3)
        {
          goto LABEL_18;
        }
      }

      else if (v18)
      {
        if (v17 != 1)
        {
          goto LABEL_18;
        }
      }

      else if (v17)
      {
        goto LABEL_18;
      }
    }

    else if (v18 <= 5)
    {
      if (v18 == 4)
      {
        if (v17 != 4)
        {
          goto LABEL_18;
        }
      }

      else if (v17 != 5)
      {
        goto LABEL_18;
      }
    }

    else if (v18 == 6)
    {
      if (v17 != 6)
      {
        goto LABEL_18;
      }
    }

    else if (v18 == 7)
    {
      if (v17 != 7)
      {
        goto LABEL_18;
      }
    }

    else if (v17 != 8)
    {
      goto LABEL_18;
    }
  }

  else if (v17 != v18)
  {
    goto LABEL_18;
  }

  v27 = v8;
  v28 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v19 = *(v28 + 28);
  v20 = *(v13 + 48);
  sub_1000CC794(a1 + v19, v16, &qword_1002C0F78, &qword_100245198);
  sub_1000CC794(a2 + v19, &v16[v20], &qword_1002C0F78, &qword_100245198);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v20], 1, v4) == 1)
    {
      sub_1000CCDBC(v16, &qword_1002C0F78, &qword_100245198);
LABEL_25:
      v26 = *(v28 + 24);
      type metadata accessor for UnknownStorage();
      sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v22 = dispatch thunk of static Equatable.== infix(_:_:)();
      return v22 & 1;
    }

    goto LABEL_17;
  }

  sub_1000CC794(v16, v12, &qword_1002C0F78, &qword_100245198);
  if (v21(&v16[v20], 1, v4) == 1)
  {
    sub_1000D327C(v12, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
LABEL_17:
    sub_1000CCDBC(v16, &qword_1002C15E8, &qword_100246068);
    goto LABEL_18;
  }

  v24 = v27;
  sub_1000D31AC(&v16[v20], v27, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  v25 = _s22CloudKitImplementation17Utility_ErrorInfoV15DatabaseFailureV2eeoiySbAE_AEtFZ_0(v12, v24);
  sub_1000D327C(v24, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  sub_1000D327C(v12, type metadata accessor for Utility_ErrorInfo.DatabaseFailure);
  sub_1000CCDBC(v16, &qword_1002C0F78, &qword_100245198);
  if (v25)
  {
    goto LABEL_25;
  }

LABEL_18:
  v22 = 0;
  return v22 & 1;
}

uint64_t _s22CloudKitImplementation17Utility_ErrorInfoV05BatchE0V2eeoiySbAE_AEtFZ_0(void *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2];
  v6 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v6 > 2)
    {
      if (v6 == 3)
      {
        if (v5 != 3)
        {
          return 0;
        }
      }

      else if (v6 == 4)
      {
        if (v5 != 4)
        {
          return 0;
        }
      }

      else if (v5 != 5)
      {
        return 0;
      }

      goto LABEL_13;
    }

    if (v6)
    {
      if (v6 == 1)
      {
        if (v5 != 1)
        {
          return 0;
        }
      }

      else if (v5 != 2)
      {
        return 0;
      }

LABEL_13:
      v7 = *(type metadata accessor for Utility_ErrorInfo.BatchError(0) + 24);
      type metadata accessor for UnknownStorage();
      sub_1000D331C(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
    }

    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else if (v5 == v6)
  {
    goto LABEL_13;
  }

  return 0;
}

uint64_t sub_1000D31AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D3214(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D327C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000D331C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000D3364()
{
  result = qword_1002C0F88;
  if (!qword_1002C0F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0F88);
  }

  return result;
}

unint64_t sub_1000D33D8()
{
  result = qword_1002C0FD0;
  if (!qword_1002C0FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FD0);
  }

  return result;
}

unint64_t sub_1000D3430()
{
  result = qword_1002C0FE8;
  if (!qword_1002C0FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FE8);
  }

  return result;
}

unint64_t sub_1000D3488()
{
  result = qword_1002C0FF0;
  if (!qword_1002C0FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FF0);
  }

  return result;
}

unint64_t sub_1000D34E0()
{
  result = qword_1002C0FF8;
  if (!qword_1002C0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C0FF8);
  }

  return result;
}

unint64_t sub_1000D3538()
{
  result = qword_1002C1000;
  if (!qword_1002C1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1000);
  }

  return result;
}

unint64_t sub_1000D3590()
{
  result = qword_1002C1008;
  if (!qword_1002C1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1008);
  }

  return result;
}

unint64_t sub_1000D35E8()
{
  result = qword_1002C1010;
  if (!qword_1002C1010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1010);
  }

  return result;
}

void sub_1000D3FEC()
{
  sub_1000D4238(319, &unk_1002C11D8, type metadata accessor for Utility_DeleteZoneResponse, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UnknownStorage();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D40D0()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000D4174()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000D4238(319, &unk_1002C1308, type metadata accessor for Utility_ErrorInfo.ResultError, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000D4238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1000D42B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000D4330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000D43A0()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000D4454()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000D450C()
{
  type metadata accessor for UnknownStorage();
  if (v0 <= 0x3F)
  {
    sub_1000D4238(319, &unk_1002C14D8, type metadata accessor for Utility_ErrorInfo.DatabaseFailure, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000D4600()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Utility_PhotosUtilityAPIAsync.deleteZone(zoneName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Utility_DeleteZoneRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v17[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = a1;
  v19 = a2;
  sub_1000D480C();
  static Message.with(_:)();
  (*(a6 + 8))(v15, a3, a4, a5, a6);
  return sub_1000D4934(v15, type metadata accessor for Utility_DeleteZoneRequest);
}

unint64_t sub_1000D480C()
{
  result = qword_1002C1070;
  if (!qword_1002C1070)
  {
    type metadata accessor for Utility_DeleteZoneRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002C1070);
  }

  return result;
}

uint64_t Utility_PhotosUtilityAPIAsync.deleteAllZones(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  (*(a4 + 16))(v11, a1, a2, a3, a4);
  return sub_1000D4934(v11, type metadata accessor for Utility_DeleteAllZonesRequest);
}

uint64_t sub_1000D4934(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Utility_PhotosUtilityAPIAsyncClient.__allocating_init(codeService:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void Utility_PhotosUtilityAPIAsyncClient.deleteZone(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&qword_1002C15F8, &qword_1002460F0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Utility_DeleteZoneRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C1600, &qword_1002460F8));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v6, type metadata accessor for Utility_DeleteZoneRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

void Utility_PhotosUtilityAPIAsyncClient.deleteAllZones(_:completion:)(uint64_t a1)
{
  v3 = sub_1000BB130(&qword_1002C1608, &qword_100246100);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  v8 = *(*(v7 - 8) + 56);
  v8(v6, 1, 1, v7);
  v9 = objc_allocWithZone(sub_1000BB130(&qword_1002C1610, &qword_100246108));
  v10 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v6, type metadata accessor for Utility_DeleteAllZonesRequest);
  v8(v6, 0, 1, v7);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  v11 = *(v1 + 16);
  CKCodeService.add<A, B>(_:)();
}

uint64_t sub_1000D4CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Utility_PhotosUtilityAPIAsyncClient.__deallocating_deinit()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t Utility_PhotosUtilityAPIAsyncOperation.deleteZone(zoneName:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Utility_DeleteZoneRequest(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v18[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  sub_1000D480C();
  static Message.with(_:)();
  v16 = (*(a6 + 8))(v15, a3, a4, a5, a6);
  sub_1000D4934(v15, type metadata accessor for Utility_DeleteZoneRequest);
  return v16;
}

uint64_t sub_1000D4F48(uint64_t result)
{
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = *(result + 8);
    v5 = result;

    *v5 = v3;
    v5[1] = v2;
  }

  return result;
}

uint64_t Utility_PhotosUtilityAPIAsyncOperation.deleteAllZones(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v12 = (*(a4 + 16))(v11, a1, a2, a3, a4);
  sub_1000D4934(v11, type metadata accessor for Utility_DeleteAllZonesRequest);
  return v12;
}

uint64_t Utility_PhotosUtilityAPIAsyncOperationClient.deleteZone(_:completion:)(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C15F8, &qword_1002460F0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Utility_DeleteZoneRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C1600, &qword_1002460F8));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v5, type metadata accessor for Utility_DeleteZoneRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

uint64_t Utility_PhotosUtilityAPIAsyncOperationClient.deleteAllZones(_:completion:)(uint64_t a1)
{
  v2 = sub_1000BB130(&qword_1002C1608, &qword_100246100);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Utility_DeleteAllZonesRequest(0);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v8 = objc_allocWithZone(sub_1000BB130(&qword_1002C1610, &qword_100246108));
  v9 = CKCodeOperation.init(functionName:request:)();
  sub_1000D4CF4(a1, v5, type metadata accessor for Utility_DeleteAllZonesRequest);
  v7(v5, 0, 1, v6);
  dispatch thunk of CKCodeOperation.request.setter();

  dispatch thunk of CKCodeOperation.codeOperationResultBlock.setter();
  return v9;
}

BOOL sub_1000D53F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_100248408[a1];
  }

  if (a4)
  {
    a3 = qword_100248408[a3];
  }

  return a1 == a3;
}

BOOL sub_1000D5418(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    a1 = qword_100248450[a1];
  }

  if (a4)
  {
    a3 = qword_100248450[a3];
  }

  return a1 == a3;
}

uint64_t RequestItem.operationID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 24);
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
}

uint64_t RequestItem.recordID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 40);
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;
}

uint64_t RequestItem.zoneName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 72);
  *(v9 + 64) = a1;
  *(v9 + 72) = a2;
}

uint64_t RequestItem.ownerID.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 88);
  *(v9 + 80) = a1;
  *(v9 + 88) = a2;
}

uint64_t RequestItem.resourceFingerprint.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 120);
  *(v9 + 112) = a1;
  *(v9 + 120) = a2;
}

uint64_t RequestItem.records.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for RequestItem._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1000EA6A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  swift_beginAccess();
  v12 = *(v7 + 128);
  *(v7 + 128) = a1;
}

uint64_t RequestItem.srcFieldName.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  swift_beginAccess();
  v14 = *(v9 + 56);
  *(v9 + 48) = a1;
  *(v9 + 56) = a2;
}

uint64_t RequestItem.downloadType.setter(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v3 + v6) = v13;
    v9 = v13;
  }

  result = swift_beginAccess();
  *(v9 + 96) = a1;
  *(v9 + 104) = a2 & 1;
  return result;
}

uint64_t RequestItem.timeRange.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for RequestItem(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for RequestItem._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1000EA6A0(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000EB0BC(a1, v7, type metadata accessor for CMTimeRange);
  v16 = type metadata accessor for CMTimeRange(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC968(v7, v11 + v17, &qword_1002C0E88, &qword_1002450B8);
  return swift_endAccess();
}

uint64_t RequestItem.mediaTypeHint.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for RequestItem._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1000EA6A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  v13 = *(v7 + v12);
  *(v7 + v12) = a1;
}

uint64_t RequestItem.videoProfileTierLevelInformation.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for RequestItem(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for RequestItem._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1000EA6A0(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000EB0BC(a1, v7, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  v16 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC968(v7, v11 + v17, &qword_1002C0F00, &qword_100246410);
  return swift_endAccess();
}

uint64_t sub_1000D5DD4(int a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for RequestItem(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1;
  return result;
}

uint64_t sub_1000D5EA4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for RequestItem(0) + 20);
  v9 = *(v3 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for RequestItem._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1000EA6A0(v11);

    *(v5 + v8) = v15;
    v11 = v15;
  }

  v16 = (v11 + *a3);
  swift_beginAccess();
  v17 = v16[1];
  *v16 = a1;
  v16[1] = a2;
}

uint64_t RequestItem.clientSupportsProMotionDisplay.setter(char a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for RequestItem._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1000EA6A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  result = swift_beginAccess();
  *(v7 + v12) = a1 & 1;
  return result;
}

uint64_t RequestItem.videoDuration.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for RequestItem(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for RequestItem._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1000EA6A0(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1000EB0BC(a1, v7, type metadata accessor for CMTime);
  v16 = type metadata accessor for CMTime(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  swift_beginAccess();
  sub_1000CC968(v7, v11 + v17, &qword_1002C0E90, &qword_1002450C0);
  return swift_endAccess();
}

uint64_t RequestItem.videoNominalFrameRate.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for RequestItem(0) + 20);
  v5 = *(v1 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for RequestItem._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1000EA6A0(v7);

    *(v2 + v4) = v11;
    v7 = v11;
  }

  v12 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  result = swift_beginAccess();
  *(v7 + v12) = a1;
  return result;
}

uint64_t ResponseItem.assetRecord.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for ResponseItem(0);
  sub_1000CC794(v1 + *(v7 + 52), v6, &qword_1002C0E30, &qword_100245080);
  v8 = type metadata accessor for Ckcode_RecordTransport();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v6, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v6, v8);
  }

  Ckcode_RecordTransport.init()();
  result = (v10)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0E30, &qword_100245080);
  }

  return result;
}

uint64_t UploadResource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for UploadResource(0) + 32);
  return UnknownStorage.init()();
}

BOOL ResponseItem.hasAssetRecord.getter()
{
  v1 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ResponseItem(0);
  sub_1000CC794(v0 + *(v5 + 52), v4, &qword_1002C0E30, &qword_100245080);
  v6 = type metadata accessor for Ckcode_RecordTransport();
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1000CCDBC(v4, &qword_1002C0E30, &qword_100245080);
  return v7;
}

uint64_t sub_1000D6550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB608();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t ItemErrorCode.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002484E0[result];
  }

  return result;
}

uint64_t sub_1000D66A4()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1002484E0[result];
  }

  return result;
}

void sub_1000D66DC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1002484E0[v2];
  }

  *a1 = v2;
}

uint64_t sub_1000D6700(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB5B4();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000D674C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1002484E0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1002484E0[v3];
  }

  return v2 == v3;
}

uint64_t BatchErrorCode.rawValue.getter(uint64_t result, char a2)
{
  if (a2)
  {
    return qword_1002484C0[result];
  }

  return result;
}

uint64_t sub_1000D68B4()
{
  result = *v0;
  if (*(v0 + 8) == 1)
  {
    return qword_1002484C0[result];
  }

  return result;
}

void sub_1000D68EC(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8) == 1)
  {
    v2 = qword_1002484C0[v2];
  }

  *a1 = v2;
}

uint64_t sub_1000D6910(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB560();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000D695C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8) == 1)
  {
    v2 = qword_1002484C0[v2];
  }

  v3 = *a2;
  if (*(a2 + 8))
  {
    v3 = qword_1002484C0[v3];
  }

  return v2 == v3;
}

uint64_t sub_1000D6A70@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
  return result;
}

uint64_t sub_1000D6ACC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  result = a2(*a1);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 9) = v6 & 1;
  return result;
}

uint64_t sub_1000D6B08@<X0>(uint64_t *a1@<X8>)
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter(*v1, *(v1 + 8));
  *a1 = result;
  return result;
}

uint64_t sub_1000D6B38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB65C();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_1000D6B84(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = Goldilocks_RecordRetentionPolicy.rawValue.getter(*a1, *(a1 + 8));
  return v4 == Goldilocks_RecordRetentionPolicy.rawValue.getter(v2, v3);
}

uint64_t sub_1000D6CA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB6B0();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t sub_1000D6E40@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1(0) + 20);
  return UnknownStorage.init()();
}

uint64_t sub_1000D6F70@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000D700C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000D7104@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000D71A0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 32);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000D7280@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  v2 = a2 + *(a1(0) + 32);
  return UnknownStorage.init()();
}

uint64_t Goldilocks_ExitMoveBatchResponse.batchID.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Goldilocks_ExitMoveBatchResponse.batchID.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t VideoHEVCProfileTierLevelInformation.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for VideoHEVCProfileTierLevelInformation(0) + 28);
  return UnknownStorage.init()();
}

uint64_t RequestItem.operationID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

void (*RequestItem.operationID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_1000D767C;
}

void sub_1000D767C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 24);
    *(v10 + 16) = v3;
    *(v10 + 24) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for RequestItem._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1000EA6A0(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 24);
    *(v21 + 16) = v3;
    *(v21 + 24) = v5;
  }

  free(v2);
}

uint64_t RequestItem.recordID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  return v2;
}

void (*RequestItem.recordID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 40);
  *(v4 + 72) = *(v6 + 32);
  *(v4 + 80) = v7;

  return sub_1000D78C8;
}

void sub_1000D78C8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 40);
    *(v10 + 32) = v3;
    *(v10 + 40) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for RequestItem._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1000EA6A0(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 40);
    *(v21 + 32) = v3;
    *(v21 + 40) = v5;
  }

  free(v2);
}

uint64_t RequestItem.srcFieldName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);

  return v2;
}

void (*RequestItem.srcFieldName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 56);
  *(v4 + 72) = *(v6 + 48);
  *(v4 + 80) = v7;

  return sub_1000D7B14;
}

void sub_1000D7B14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 56);
    *(v10 + 48) = v3;
    *(v10 + 56) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for RequestItem._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1000EA6A0(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 56);
    *(v21 + 48) = v3;
    *(v21 + 56) = v5;
  }

  free(v2);
}

uint64_t RequestItem.zoneName.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);

  return v2;
}

void (*RequestItem.zoneName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 72);
  *(v4 + 72) = *(v6 + 64);
  *(v4 + 80) = v7;

  return sub_1000D7D60;
}

void sub_1000D7D60(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 72);
    *(v10 + 64) = v3;
    *(v10 + 72) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for RequestItem._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1000EA6A0(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 72);
    *(v21 + 64) = v3;
    *(v21 + 72) = v5;
  }

  free(v2);
}

uint64_t RequestItem.ownerID.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);

  return v2;
}

void (*RequestItem.ownerID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 88);
  *(v4 + 72) = *(v6 + 80);
  *(v4 + 80) = v7;

  return sub_1000D7FAC;
}

void sub_1000D7FAC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 88);
    *(v10 + 80) = v3;
    *(v10 + 88) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for RequestItem._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1000EA6A0(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 88);
    *(v21 + 80) = v3;
    *(v21 + 88) = v5;
  }

  free(v2);
}

uint64_t RequestItem.downloadType.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  result = *(v1 + 96);
  v3 = *(v1 + 104);
  return result;
}

void (*RequestItem.downloadType.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 104);
  *(v4 + 72) = *(v6 + 96);
  *(v4 + 80) = v7;
  return sub_1000D81EC;
}

void sub_1000D81EC(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 84);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  v6 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v1 + 84);
    v10 = *(v1 + 88);
    v11 = type metadata accessor for RequestItem._StorageClass(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_1000EA6A0(v8);

    *(v10 + v9) = v14;
    v8 = v14;
  }

  swift_beginAccess();
  *(v8 + 96) = v2;
  *(v8 + 104) = v5;

  free(v1);
}

uint64_t RequestItem.resourceFingerprint.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);

  return v2;
}

void (*RequestItem.resourceFingerprint.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 120);
  *(v4 + 72) = *(v6 + 112);
  *(v4 + 80) = v7;

  return sub_1000D83CC;
}

void sub_1000D83CC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {
    v7 = *(*a1 + 80);

    v8 = *(v6 + v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 96);
      v12 = *(v2 + 88);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 120);
    *(v10 + 112) = v3;
    *(v10 + 120) = v5;

    v18 = *(v2 + 80);
  }

  else
  {
    v19 = *(v6 + v4);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v4);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 96);
      v23 = *(v2 + 88);
      v24 = type metadata accessor for RequestItem._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1000EA6A0(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 120);
    *(v21 + 112) = v3;
    *(v21 + 120) = v5;
  }

  free(v2);
}

uint64_t RequestItem.records.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 128);
}

void (*RequestItem.records.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 128);

  return sub_1000D860C;
}

void sub_1000D860C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    swift_beginAccess();
    v17 = *(v10 + 128);
    *(v10 + 128) = v3;

    v18 = *v4;
  }

  else
  {
    v19 = *(v6 + v5);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v6 + v5);
    if ((v20 & 1) == 0)
    {
      v22 = *(v2 + 88);
      v23 = *(v2 + 80);
      v24 = type metadata accessor for RequestItem._StorageClass(0);
      v25 = *(v24 + 48);
      v26 = *(v24 + 52);
      swift_allocObject();
      v27 = sub_1000EA6A0(v21);

      *(v23 + v22) = v27;
      v21 = v27;
    }

    swift_beginAccess();
    v28 = *(v21 + 128);
    *(v21 + 128) = v3;
  }

  free(v2);
}

uint64_t RequestItem.timeRange.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v15 - v5;
  v7 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC794(v7 + v8, v6, &qword_1002C0E88, &qword_1002450B8);
  v9 = type metadata accessor for CMTimeRange(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000EB0BC(v6, a1, type metadata accessor for CMTimeRange);
  }

  UnknownStorage.init()();
  v11 = *(v9 + 20);
  v12 = type metadata accessor for CMTime(0);
  v13 = *(*(v12 - 8) + 56);
  v13(a1 + v11, 1, 1, v12);
  v13(a1 + *(v9 + 24), 1, 1, v12);
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0E88, &qword_1002450B8);
  }

  return result;
}

void (*RequestItem.timeRange.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E88, &qword_1002450B8) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CMTimeRange(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC794(v15 + v16, v7, &qword_1002C0E88, &qword_1002450B8);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    UnknownStorage.init()();
    v18 = *(v8 + 20);
    v19 = type metadata accessor for CMTime(0);
    v20 = *(*(v19 - 8) + 56);
    v20(v13 + v18, 1, 1, v19);
    v20(v13 + *(v8 + 24), 1, 1, v19);
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E88, &qword_1002450B8);
    }
  }

  else
  {
    sub_1000EB0BC(v7, v13, type metadata accessor for CMTimeRange);
  }

  return sub_1000D8C00;
}

void sub_1000D8C00(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000EB3B0(*(v2 + 120), *(v2 + 112), type metadata accessor for CMTimeRange);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for RequestItem._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1000EA6A0(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000EB0BC(v15, v19, type metadata accessor for CMTimeRange);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v19, v7 + v20, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
    sub_1000EB418(v14, type metadata accessor for CMTimeRange);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for RequestItem._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1000EA6A0(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000EB0BC(v14, v19, type metadata accessor for CMTimeRange);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
    swift_beginAccess();
    sub_1000CC968(v19, v24 + v33, &qword_1002C0E88, &qword_1002450B8);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

uint64_t RequestItem.mediaTypeHint.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  v2 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  v3 = *(v1 + v2);
}

void (*RequestItem.mediaTypeHint.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1000D8FD0;
}

void sub_1000D8FD0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 72);
  v3 = *v4;
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = *(*a1 + 72);

    v8 = *(v6 + v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v6 + v5);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v2 + 88);
      v12 = *(v2 + 80);
      v13 = type metadata accessor for RequestItem._StorageClass(0);
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1000EA6A0(v10);

      *(v12 + v11) = v16;
      v10 = v16;
    }

    v17 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
    swift_beginAccess();
    v18 = *(v10 + v17);
    *(v10 + v17) = v3;

    v19 = *v4;
  }

  else
  {
    v20 = *(v6 + v5);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v6 + v5);
    if ((v21 & 1) == 0)
    {
      v23 = *(v2 + 88);
      v24 = *(v2 + 80);
      v25 = type metadata accessor for RequestItem._StorageClass(0);
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_1000EA6A0(v22);

      *(v24 + v23) = v28;
      v22 = v28;
    }

    v29 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
    swift_beginAccess();
    v30 = *(v22 + v29);
    *(v22 + v29) = v3;
  }

  free(v2);
}

uint64_t RequestItem.videoProfileTierLevelInformation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC794(v7 + v8, v6, &qword_1002C0F00, &qword_100246410);
  v9 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000EB0BC(v6, a1, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v11 = a1 + *(v9 + 28);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0F00, &qword_100246410);
  }

  return result;
}

void (*RequestItem.videoProfileTierLevelInformation.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0F00, &qword_100246410) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC794(v15 + v16, v7, &qword_1002C0F00, &qword_100246410);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    v18 = v13 + *(v8 + 28);
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0F00, &qword_100246410);
    }
  }

  else
  {
    sub_1000EB0BC(v7, v13, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  }

  return sub_1000D9504;
}

void sub_1000D9504(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000EB3B0(*(v2 + 120), *(v2 + 112), type metadata accessor for VideoHEVCProfileTierLevelInformation);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for RequestItem._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1000EA6A0(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000EB0BC(v15, v19, type metadata accessor for VideoHEVCProfileTierLevelInformation);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
    swift_beginAccess();
    sub_1000CC968(v19, v7 + v20, &qword_1002C0F00, &qword_100246410);
    swift_endAccess();
    sub_1000EB418(v14, type metadata accessor for VideoHEVCProfileTierLevelInformation);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for RequestItem._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1000EA6A0(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000EB0BC(v14, v19, type metadata accessor for VideoHEVCProfileTierLevelInformation);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
    swift_beginAccess();
    sub_1000CC968(v19, v24 + v33, &qword_1002C0F00, &qword_100246410);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

BOOL sub_1000D979C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = sub_1000BB130(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for RequestItem(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_1000CC794(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1000CCDBC(v12, a1, a2);
  return v16;
}

uint64_t sub_1000D98E4(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = sub_1000BB130(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for RequestItem(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for RequestItem._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1000EA6A0(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_1000CC968(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

void (*RequestItem.apacAudioTrackChannelCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000D9AF4;
}

uint64_t sub_1000D9B0C(uint64_t *a1)
{
  v3 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v4 = *a1;
  swift_beginAccess();
  return *(v3 + v4);
}

void (*RequestItem.apacAudioTrackHoachannelCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000D9C08;
}

void sub_1000D9C14(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 84);
  v7 = *(*a1 + 72);
  v8 = *(v7 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v7 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 84);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for RequestItem._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1000EA6A0(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v5;

  free(v4);
}

void (*RequestItem.apacAudioTrackBedchannelCount.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000D9DA4;
}

void (*RequestItem.cameraMake.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000D9E70;
}

uint64_t sub_1000D9E88(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for RequestItem(0) + 20)) + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

void (*RequestItem.cameraModel.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000D9FA4;
}

void sub_1000D9FB0(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(*a1 + 80);

    v10 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 96);
      v14 = *(v4 + 88);
      v15 = type metadata accessor for RequestItem._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_1000EA6A0(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = (v12 + *a3);
    swift_beginAccess();
    v20 = v19[1];
    *v19 = v5;
    v19[1] = v7;

    v21 = *(v4 + 80);
  }

  else
  {
    v22 = *(v8 + v6);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v6);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 96);
      v26 = *(v4 + 88);
      v27 = type metadata accessor for RequestItem._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1000EA6A0(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = (v24 + *a3);
    swift_beginAccess();
    v32 = v31[1];
    *v31 = v5;
    v31[1] = v7;
  }

  free(v4);
}

void (*RequestItem.apacAudioTrackCodecProfileLevelDescription.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1000DA1CC;
}

uint64_t RequestItem.clientSupportsProMotionDisplay.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  v2 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*RequestItem.clientSupportsProMotionDisplay.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1000DA2D4;
}

void sub_1000DA2D4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
  swift_beginAccess();
  *(v7 + v14) = v4;

  free(v1);
}

uint64_t RequestItem.videoDuration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for RequestItem(0) + 20));
  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  swift_beginAccess();
  sub_1000CC794(v7 + v8, v6, &qword_1002C0E90, &qword_1002450C0);
  v9 = type metadata accessor for CMTime(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1000EB0BC(v6, a1, type metadata accessor for CMTime);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  v11 = a1 + *(v9 + 24);
  UnknownStorage.init()();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1000CCDBC(v6, &qword_1002C0E90, &qword_1002450C0);
  }

  return result;
}

void (*RequestItem.videoDuration.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x88uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E90, &qword_1002450C0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 80) = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 80) = malloc(v5);
    v6 = malloc(v5);
  }

  v7 = v6;
  *(v4 + 88) = v6;
  v8 = type metadata accessor for CMTime(0);
  *(v4 + 96) = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  *(v4 + 104) = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    *(v4 + 112) = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    *(v4 + 112) = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  *(v4 + 120) = v12;
  v14 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 128) = v14;
  v15 = *(v1 + v14);
  v16 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  swift_beginAccess();
  sub_1000CC794(v15 + v16, v7, &qword_1002C0E90, &qword_1002450C0);
  v17 = *(v10 + 48);
  if (v17(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = 0;
    v18 = v13 + *(v8 + 24);
    UnknownStorage.init()();
    if (v17(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E90, &qword_1002450C0);
    }
  }

  else
  {
    sub_1000EB0BC(v7, v13, type metadata accessor for CMTime);
  }

  return sub_1000DA788;
}

void sub_1000DA788(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    sub_1000EB3B0(*(v2 + 120), *(v2 + 112), type metadata accessor for CMTime);
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for RequestItem._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1000EA6A0(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000EB0BC(v15, v19, type metadata accessor for CMTime);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
    swift_beginAccess();
    sub_1000CC968(v19, v7 + v20, &qword_1002C0E90, &qword_1002450C0);
    swift_endAccess();
    sub_1000EB418(v14, type metadata accessor for CMTime);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for RequestItem._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1000EA6A0(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    sub_1000EB0BC(v14, v19, type metadata accessor for CMTime);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
    swift_beginAccess();
    sub_1000CC968(v19, v24 + v33, &qword_1002C0E90, &qword_1002450C0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

double RequestItem.videoNominalFrameRate.getter()
{
  v1 = *(v0 + *(type metadata accessor for RequestItem(0) + 20));
  v2 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  swift_beginAccess();
  return *(v1 + v2);
}

void (*RequestItem.videoNominalFrameRate.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);
  return sub_1000DAB4C;
}

void sub_1000DAB4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 88);
  v4 = *(*a1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    v10 = type metadata accessor for RequestItem._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1000EA6A0(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  v14 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
  swift_beginAccess();
  *(v7 + v14) = v2;

  free(v1);
}

void (*RequestItem.videoOrientedWidth.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000DACDC;
}

void (*RequestItem.videoOrientedHeight.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000DAD9C;
}

void (*RequestItem.videoCodec.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for RequestItem(0) + 20);
  *(v4 + 84) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
  swift_beginAccess();
  *(v4 + 80) = *(v6 + v7);
  return sub_1000DAE5C;
}

uint64_t sub_1000DAE68(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EDEA4();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t RequestItem.init()@<X0>(uint64_t a1@<X8>)
{
  UnknownStorage.init()();
  v2 = *(type metadata accessor for RequestItem(0) + 20);
  if (qword_1002C06D0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1002C17A0;
}

uint64_t Goldilocks_ErrorInfo.ResultError.errorDomain.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Goldilocks_ErrorInfo.ResultError.errorDomain.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t ResponseItem.assetRecord.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseItem(0) + 52);
  sub_1000CCDBC(v1 + v3, &qword_1002C0E30, &qword_100245080);
  v4 = type metadata accessor for Ckcode_RecordTransport();
  v7 = *(v4 - 8);
  (*(v7 + 32))(v1 + v3, a1, v4);
  v5 = *(v7 + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*ResponseItem.assetRecord.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(sub_1000BB130(&qword_1002C0E30, &qword_100245080) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Ckcode_RecordTransport();
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for ResponseItem(0) + 52);
  *(v4 + 12) = v14;
  sub_1000CC794(v1 + v14, v7, &qword_1002C0E30, &qword_100245080);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Ckcode_RecordTransport.init()();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1000CCDBC(v7, &qword_1002C0E30, &qword_100245080);
    }
  }

  else
  {
    (*(v10 + 32))(v13, v7, v8);
  }

  return sub_1000DB340;
}

void sub_1000DB340(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    (*(v7 + 16))((*a1)[4], v5, v6);
    sub_1000CCDBC(v9 + v3, &qword_1002C0E30, &qword_100245080);
    (*(v7 + 32))(v9 + v3, v4, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    (*(v7 + 8))(v5, v6);
  }

  else
  {
    sub_1000CCDBC(v9 + v3, &qword_1002C0E30, &qword_100245080);
    (*(v7 + 32))(v9 + v3, v5, v6);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

Swift::Void __swiftcall ResponseItem.clearAssetRecord()()
{
  v1 = *(type metadata accessor for ResponseItem(0) + 52);
  sub_1000CCDBC(v0 + v1, &qword_1002C0E30, &qword_100245080);
  v2 = type metadata accessor for Ckcode_RecordTransport();
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t ResponseItem.errorMessage.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t ResponseItem.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Goldilocks_InitiateExitRequest.exitSource.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t Goldilocks_InitiateExitRequest.exitSource.setter(uint64_t result, char a2)
{
  *(v2 + 72) = result;
  *(v2 + 80) = a2 & 1;
  return result;
}

uint64_t ResponseItem.errorCode.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t ResponseItem.errorCode.setter(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t ResponseItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ResponseItem(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ResponseItem.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ResponseItem(0) + 48);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ResponseItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  v2 = type metadata accessor for ResponseItem(0);
  v3 = a1 + *(v2 + 48);
  UnknownStorage.init()();
  v4 = *(v2 + 52);
  v5 = type metadata accessor for Ckcode_RecordTransport();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t Goldilocks_DuplicateState.foundDuplicates.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1000DB888@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000DB924(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t ResetInterval.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for ResetInterval(0) + 28);
  return UnknownStorage.init()();
}

uint64_t Goldilocks_InitiateExitRequest.participantUserIdsToRemove.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t UploadResourcesResponse.skipUploadResources.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t UploadResourcesResponse.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for UploadResourcesResponse(0) + 28);
  return UnknownStorage.init()();
}

uint64_t UntranscodableItem.ownerDsid.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t UntranscodableItem.ownerDsid.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t UntranscodableItem.referenceChecksumHex.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return v1;
}

uint64_t UntranscodableItem.referenceChecksumHex.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t UntranscodableItem.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for UntranscodableItem(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t UntranscodableItem.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for UntranscodableItem(0) + 40);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t UntranscodableItem.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0xE000000000000000;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for UntranscodableItem(0) + 40);
  return UnknownStorage.init()();
}

uint64_t sub_1000DC034()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static DownloadType._protobuf_nameMap);
  sub_1000BA040(v0, static DownloadType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MMCS";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "TRANSCODE";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DC2B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ItemErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static ItemErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100246210;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 0;
  *v5 = "NO_ITEM_ERROR";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 101;
  *v9 = "ZONE_NOT_FOUND";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 102;
  *v11 = "RECORD_NOT_FOUND";
  *(v11 + 1) = 16;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 103;
  *v13 = "RESOURCE_NOT_FOUND";
  *(v13 + 1) = 18;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 104;
  *v15 = "STALE_FINGERPRINT";
  *(v15 + 1) = 17;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 105;
  *v17 = "INVALID_REQUEST";
  *(v17 + 1) = 15;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 201;
  *v19 = "SERVER_ITEM_ERROR";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 301;
  *v21 = "NOT_TRANSCODABLE";
  *(v21 + 1) = 16;
  v21[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DC668()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static BatchErrorCode._protobuf_nameMap);
  sub_1000BA040(v0, static BatchErrorCode._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "NO_BATCH_ERROR";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 101;
  *v10 = "FEATURE_DISABLED";
  *(v10 + 8) = 16;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 102;
  *v12 = "THROTTLED";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 201;
  *v14 = "SERVER_BATCH_ERROR";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DC91C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceType._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v63 = swift_allocObject();
  *(v63 + 16) = xmmword_100246220;
  v4 = v63 + v3;
  v5 = v63 + v3 + v1[14];
  *(v63 + v3) = 0;
  *v5 = "CPLResourceTypeUnknown";
  *(v5 + 8) = 22;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v63 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "CPLResourceTypeOriginal";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v63 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "CPLResourceTypeJPEGFullSize";
  *(v11 + 1) = 27;
  v11[16] = 2;
  v8();
  v12 = (v63 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "CPLResourceTypeJPEGLargeSize";
  *(v13 + 1) = 28;
  v13[16] = 2;
  v8();
  v14 = (v63 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "CPLResourceTypeJPEGMediumSize";
  *(v15 + 1) = 29;
  v15[16] = 2;
  v8();
  v16 = (v63 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "CPLResourceTypeJPEGThumbnail";
  *(v17 + 1) = 28;
  v17[16] = 2;
  v8();
  v18 = (v63 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "CPLResourceTypeVideoMediumSize";
  *(v19 + 1) = 30;
  v19[16] = 2;
  v8();
  v20 = (v63 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "CPLResourceTypeVideoSmallSize";
  *(v21 + 1) = 29;
  v21[16] = 2;
  v8();
  v22 = v63 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "CPLResourceTypeSidecarAudio";
  *(v22 + 8) = 27;
  *(v22 + 16) = 2;
  v8();
  v23 = (v63 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "CPLResourceTypeSidecarXMP";
  *(v24 + 1) = 25;
  v24[16] = 2;
  v8();
  v25 = (v63 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "CPLResourceTypeMediaMetaData";
  *(v26 + 1) = 28;
  v26[16] = 2;
  v8();
  v27 = (v63 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "CPLResourceTypeUnused1";
  *(v28 + 1) = 22;
  v28[16] = 2;
  v8();
  v29 = (v63 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "CPLResourceTypeUnused2";
  *(v30 + 1) = 22;
  v30[16] = 2;
  v8();
  v31 = (v63 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "CPLResourceTypeAdjustmentData";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v8();
  v33 = (v63 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "CPLResourceTypeAdjustmentSecondaryData";
  *(v34 + 1) = 38;
  v34[16] = 2;
  v8();
  v35 = (v63 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "CPLResourceTypeAdjustmentBaseJPEGFullSize";
  *(v36 + 1) = 41;
  v36[16] = 2;
  v8();
  v37 = v63 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "CPLResourceTypeVideoFullSize";
  *(v37 + 8) = 28;
  *(v37 + 16) = 2;
  v8();
  v38 = (v63 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "CPLResourceTypeOriginalAlternate";
  *(v39 + 1) = 32;
  v39[16] = 2;
  v8();
  v40 = (v63 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "CPLResourceTypeOriginalVideoComplement";
  *(v41 + 1) = 38;
  v41[16] = 2;
  v8();
  v42 = (v63 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "CPLResourceTypeVideoComplement";
  *(v43 + 1) = 30;
  v43[16] = 2;
  v8();
  v44 = (v63 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "CPLResourceTypeAdjustmentBaseVideoComplement";
  *(v45 + 1) = 44;
  v45[16] = 2;
  v8();
  v46 = (v63 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "CPLResourceTypeVideoLargeSize";
  *(v47 + 1) = 29;
  v47[16] = 2;
  v8();
  v48 = (v63 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "CPLResourceTypeSidecarOther";
  *(v49 + 1) = 27;
  v49[16] = 2;
  v8();
  v50 = (v63 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "CPLResourceTypeOriginalSpatialOverCapture";
  *(v51 + 1) = 41;
  v51[16] = 2;
  v8();
  v52 = (v63 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "CPLResourceTypeOriginalSpatialOverCaptureVideoComplement";
  *(v53 + 1) = 56;
  v53[16] = 2;
  v8();
  v54 = (v63 + v3 + 25 * v2);
  v55 = v54 + v1[14];
  *v54 = 25;
  *v55 = "CPLResourceTypeAdjustmentBaseVideo";
  *(v55 + 1) = 34;
  v55[16] = 2;
  v8();
  v56 = (v63 + v3 + 26 * v2);
  v57 = v56 + v1[14];
  *v56 = 26;
  *v57 = "CPLResourceTypeVideoMetaData";
  *(v57 + 1) = 28;
  v57[16] = 2;
  v8();
  v58 = (v63 + v3 + 27 * v2);
  v59 = v58 + v1[14];
  *v58 = 27;
  *v59 = "CPLResourceTypeAdjustedMediaMetaData";
  *(v59 + 1) = 36;
  v59[16] = 2;
  v8();
  v60 = (v63 + v3 + 28 * v2);
  v61 = v60 + v1[14];
  *v60 = 28;
  *v61 = "CPLResourceTypeVideoHDRMediumSize";
  *(v61 + 1) = 33;
  v61[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DD1BC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UploadRecordType._protobuf_nameMap);
  sub_1000BA040(v0, static UploadRecordType._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "Master";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Asset";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DD578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28F0, type metadata accessor for ResourceAnalyzeRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DD618()
{
  sub_1000EB518(&qword_1002C19E0, type metadata accessor for ResourceAnalyzeRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DD684()
{
  sub_1000EB518(&qword_1002C19E0, type metadata accessor for ResourceAnalyzeRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000DD728()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceAnalyzeResponse._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceAnalyzeResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retryAfterMillis";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DDA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28E8, type metadata accessor for ResourceAnalyzeResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DDAE8()
{
  sub_1000EB518(&qword_1002C19F8, type metadata accessor for ResourceAnalyzeResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DDB54()
{
  sub_1000EB518(&qword_1002C19F8, type metadata accessor for ResourceAnalyzeResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000DDD10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28E0, type metadata accessor for ResourceDownloadRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DDDB0()
{
  sub_1000EB518(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DDE1C()
{
  sub_1000EB518(&unk_1002C0E20, type metadata accessor for ResourceDownloadRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000DDEC0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceDownloadResponse._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceDownloadResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retryAfterMillis";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DE1E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28D8, type metadata accessor for ResourceDownloadResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE280()
{
  sub_1000EB518(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DE2EC()
{
  sub_1000EB518(&qword_1002C0E50, type metadata accessor for ResourceDownloadResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000DE478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (!*(*v4 + 16) || (type metadata accessor for RequestItem(0), sub_1000EB518(&qword_1002C0E80, type metadata accessor for RequestItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v5))
  {
    v8 = v4 + *(a4(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000DE5F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28D0, type metadata accessor for ResourceStreamRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DE690()
{
  sub_1000EB518(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DE6FC()
{
  sub_1000EB518(&qword_1002C0EE0, type metadata accessor for ResourceStreamRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000DE7A0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResourceStreamResponse._protobuf_nameMap);
  sub_1000BA040(v0, static ResourceStreamResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "items";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "errorCode";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "retryAfterMillis";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DEA48()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }

        else if (result == 4)
        {
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for ResponseItem(0);
        sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2)
      {
        sub_1000EB560();
        dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t sub_1000DEBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = v5;
  if (*(*v4 + 16))
  {
    type metadata accessor for ResponseItem(0);
    sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem);
    result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v5)
    {
      return result;
    }

    v7 = 0;
  }

  if (*(v4 + 8))
  {
    v13 = *(v4 + 8);
    v14 = *(v4 + 16);
    sub_1000EB560();
    v9 = v7;
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v7)
    {
      return result;
    }
  }

  else
  {
    v9 = v7;
  }

  v10 = *(v4 + 32);
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = *(v4 + 24) & 0xFFFFFFFFFFFFLL;
  }

  if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v9))
  {
    if (!*(v4 + 40) || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v9))
    {
      v12 = v4 + *(a4(0) + 32);
      return UnknownStorage.traverse<A>(visitor:)();
    }
  }

  return result;
}

uint64_t sub_1000DEDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xE000000000000000;
  *(a2 + 40) = 0;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_1000DEE0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28C8, type metadata accessor for ResourceStreamResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DEEAC()
{
  sub_1000EB518(&qword_1002C0EF8, type metadata accessor for ResourceStreamResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DEF18()
{
  sub_1000EB518(&qword_1002C0EF8, type metadata accessor for ResourceStreamResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000DEFBC()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static VideoHEVCProfileTierLevelInformation._protobuf_nameMap);
  sub_1000BA040(v0, static VideoHEVCProfileTierLevelInformation._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "profile";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "tier";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "level";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t VideoHEVCProfileTierLevelInformation.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
    }
  }

  return result;
}

uint64_t VideoHEVCProfileTierLevelInformation.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      if (!v0[2] || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for VideoHEVCProfileTierLevelInformation(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_1000DF3B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t (*sub_1000DF3E0(uint64_t a1, uint64_t a2))(void, void)
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_1000DF434(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28C0, type metadata accessor for VideoHEVCProfileTierLevelInformation);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000DF4D4()
{
  sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation);

  return Message.debugDescription.getter();
}

uint64_t sub_1000DF540()
{
  sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation);

  return Message.hash(into:)();
}

uint64_t sub_1000DF5E8()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static RequestItem._protobuf_nameMap);
  sub_1000BA040(v0, static RequestItem._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100246230;
  v4 = v51 + v3;
  v5 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v5 = "operationId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v51 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "recordId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "srcFieldName";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "zoneName";
  *(v13 + 1) = 8;
  v13[16] = 2;
  v8();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "ownerId";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v8();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "downloadType";
  *(v17 + 1) = 12;
  v17[16] = 2;
  v8();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "resourceFingerprint";
  *(v19 + 1) = 19;
  v19[16] = 2;
  v8();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "records";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v51 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 101;
  *v22 = "timeRange";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v51 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 102;
  *v24 = "mediaTypeHint";
  *(v24 + 1) = 13;
  v24[16] = 2;
  v8();
  v25 = (v51 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 104;
  *v26 = "videoProfileTierLevelInformation";
  *(v26 + 1) = 32;
  v26[16] = 2;
  v8();
  v27 = (v51 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 105;
  *v28 = "apacAudioTrackChannelCount";
  *(v28 + 1) = 26;
  v28[16] = 2;
  v8();
  v29 = (v51 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 106;
  *v30 = "apacAudioTrackHOAChannelCount";
  *(v30 + 1) = 29;
  v30[16] = 2;
  v8();
  v31 = (v51 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 107;
  *v32 = "apacAudioTrackBEDChannelCount";
  *(v32 + 1) = 29;
  v32[16] = 2;
  v8();
  v33 = (v51 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 108;
  *v34 = "cameraMake";
  *(v34 + 1) = 10;
  v34[16] = 2;
  v8();
  v35 = (v51 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 109;
  *v36 = "cameraModel";
  *(v36 + 1) = 11;
  v36[16] = 2;
  v8();
  v37 = v51 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 110;
  *v37 = "apacAudioTrackCodecProfileLevelDescription";
  *(v37 + 8) = 42;
  *(v37 + 16) = 2;
  v8();
  v38 = (v51 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 111;
  *v39 = "clientSupportsProMotionDisplay";
  *(v39 + 1) = 30;
  v39[16] = 2;
  v8();
  v40 = (v51 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 112;
  *v41 = "videoDuration";
  *(v41 + 1) = 13;
  v41[16] = 2;
  v8();
  v42 = (v51 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 113;
  *v43 = "videoNominalFrameRate";
  *(v43 + 1) = 21;
  v43[16] = 2;
  v8();
  v44 = (v51 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 114;
  *v45 = "videoOrientedWidth";
  *(v45 + 1) = 18;
  v45[16] = 2;
  v8();
  v46 = (v51 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 115;
  *v47 = "videoOrientedHeight";
  *(v47 + 1) = 19;
  v47[16] = 2;
  v8();
  v48 = (v51 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 116;
  *v49 = "videoCodec";
  *(v49 + 1) = 10;
  v49[16] = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000DFD1C()
{
  v0 = type metadata accessor for RequestItem._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1000DFD5C();
  qword_1002C17A0 = result;
  return result;
}

uint64_t sub_1000DFD5C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0xE000000000000000;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 1;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = &_swiftEmptyArrayStorage;
  v1 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  v2 = type metadata accessor for CMTimeRange(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint) = &_swiftEmptyArrayStorage;
  v3 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  v4 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount) = 0;
  v5 = (v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  v6 = (v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
  *v6 = 0;
  v6[1] = 0xE000000000000000;
  v7 = (v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
  *v7 = 0;
  v7[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay) = 0;
  v8 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
  v9 = type metadata accessor for CMTime(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight) = 0;
  *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec) = 0;
  return v0;
}

void *sub_1000DFF2C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[15];

  v7 = v0[16];

  sub_1000CCDBC(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange, &qword_1002C0E88, &qword_1002450B8);
  v8 = *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint);

  sub_1000CCDBC(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation, &qword_1002C0F00, &qword_100246410);
  v9 = *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake + 8);

  v10 = *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel + 8);

  v11 = *(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription + 8);

  sub_1000CCDBC(v0 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration, &qword_1002C0E90, &qword_1002450C0);
  return v0;
}

uint64_t sub_1000E0028()
{
  v0 = sub_1000DFF2C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t RequestItem.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for RequestItem(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = *(v0 + v2);
    v7 = type metadata accessor for RequestItem._StorageClass(0);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    v10 = sub_1000EA6A0(v6);

    *(v1 + v2) = v10;
  }

  return sub_1000E0130();
}

uint64_t sub_1000E0130()
{
  v5 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    v3 = v5;
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          swift_endAccess();
          break;
        case 6:
          swift_beginAccess();
          sub_1000EB608();
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_30;
        case 7:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_30;
        case 8:
          swift_beginAccess();
          type metadata accessor for Ckcode_RecordTransport();
          sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport);
          dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
          goto LABEL_26;
        case 101:
          swift_beginAccess();
          type metadata accessor for CMTimeRange(0);
          sub_1000EB518(&qword_1002C2948, type metadata accessor for CMTimeRange);
          goto LABEL_25;
        case 102:
          swift_beginAccess();
          sub_1000EDEA4();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
          goto LABEL_30;
        case 104:
          swift_beginAccess();
          type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
          sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation);
          goto LABEL_25;
        case 105:
          v4 = v3;
          goto LABEL_32;
        case 106:
          v4 = v3;
          goto LABEL_32;
        case 107:
          v4 = v3;
          goto LABEL_32;
        case 108:
          v4 = v3;
          goto LABEL_22;
        case 109:
          v4 = v3;
LABEL_22:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_33;
        case 110:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
          goto LABEL_30;
        case 111:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularBoolField(value:)();
          goto LABEL_30;
        case 112:
          swift_beginAccess();
          type metadata accessor for CMTime(0);
          sub_1000EB518(&qword_1002C2940, type metadata accessor for CMTime);
LABEL_25:
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
LABEL_26:
          swift_endAccess();
          v3 = v5;
          break;
        case 113:
          v4 = v3;
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularDoubleField(value:)();
          goto LABEL_33;
        case 114:
          v4 = v3;
LABEL_32:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
LABEL_33:
          swift_endAccess();
          v3 = v4;
          break;
        case 115:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularUInt32Field(value:)();
          goto LABEL_30;
        case 116:
          swift_beginAccess();
          dispatch thunk of Decoder.decodeSingularFixed32Field(value:)();
LABEL_30:
          swift_endAccess();
          break;
        default:
          break;
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t RequestItem.traverse<A>(visitor:)()
{
  v2 = type metadata accessor for RequestItem(0);
  result = sub_1000E0814(*(v0 + *(v2 + 20)));
  if (!v1)
  {
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E0814(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v84 = &v76 - v6;
  v7 = type metadata accessor for CMTime(0);
  v78 = *(v7 - 8);
  v79 = v7;
  v8 = *(v78 + 64);
  __chkstk_darwin(v7);
  v77 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v88 = &v76 - v12;
  v13 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v81 = *(v13 - 8);
  v82 = v13;
  v14 = *(v81 + 64);
  __chkstk_darwin(v13);
  v80 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v76 - v18;
  v20 = type metadata accessor for CMTimeRange(0);
  v85 = *(v20 - 8);
  v21 = *(v85 + 64);
  __chkstk_darwin(v20);
  v83 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v23 = *(a1 + 24);
  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    v25 = *(a1 + 24);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v26 = *(a1 + 40);
  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = *(a1 + 32) & 0xFFFFFFFFFFFFLL;
  }

  if (v27)
  {
    v28 = *(a1 + 40);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v29 = *(a1 + 56);
  v30 = HIBYTE(v29) & 0xF;
  if ((v29 & 0x2000000000000000) == 0)
  {
    v30 = *(a1 + 48) & 0xFFFFFFFFFFFFLL;
  }

  if (v30)
  {
    v31 = *(a1 + 56);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v32 = *(a1 + 72);
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v34 = *(a1 + 72);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v35 = *(a1 + 88);
  v36 = HIBYTE(v35) & 0xF;
  if ((v35 & 0x2000000000000000) == 0)
  {
    v36 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
  }

  if (v36)
  {
    v37 = *(a1 + 88);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (!v1)
    {

      goto LABEL_26;
    }
  }

LABEL_26:
  swift_beginAccess();
  if (*(a1 + 96))
  {
    v38 = *(a1 + 104);
    v86 = *(a1 + 96);
    v87 = v38;
    sub_1000EB608();
    result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
      return result;
    }
  }

  swift_beginAccess();
  v40 = *(a1 + 120);
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = *(a1 + 120);

    dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  v76 = *(a1 + 128);
  if (*(v76 + 16))
  {
    type metadata accessor for Ckcode_RecordTransport();
    sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport);

    dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  v43 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
  swift_beginAccess();
  sub_1000CC794(a1 + v43, v19, &qword_1002C0E88, &qword_1002450B8);
  if ((*(v85 + 48))(v19, 1, v20) == 1)
  {
    sub_1000CCDBC(v19, &qword_1002C0E88, &qword_1002450B8);
    v44 = v88;
  }

  else
  {
    v45 = v19;
    v46 = v83;
    sub_1000EB0BC(v45, v83, type metadata accessor for CMTimeRange);
    sub_1000EB518(&qword_1002C2948, type metadata accessor for CMTimeRange);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    v44 = v88;
    if (v1)
    {
      v47 = type metadata accessor for CMTimeRange;
      v48 = v46;
      return sub_1000EB418(v48, v47);
    }

    sub_1000EB418(v46, type metadata accessor for CMTimeRange);
  }

  v49 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
  swift_beginAccess();
  v50 = v84;
  if (*(*(a1 + v49) + 16))
  {
    sub_1000EDEA4();

    dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)();
    if (v1)
    {
    }
  }

  v51 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
  swift_beginAccess();
  sub_1000CC794(a1 + v51, v44, &qword_1002C0F00, &qword_100246410);
  if ((*(v81 + 48))(v44, 1, v82) != 1)
  {
    v52 = v80;
    sub_1000EB0BC(v44, v80, type metadata accessor for VideoHEVCProfileTierLevelInformation);
    sub_1000EB518(&qword_1002C0F10, type metadata accessor for VideoHEVCProfileTierLevelInformation);
    dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
    if (!v1)
    {
      sub_1000EB418(v52, type metadata accessor for VideoHEVCProfileTierLevelInformation);
      goto LABEL_52;
    }

    v47 = type metadata accessor for VideoHEVCProfileTierLevelInformation;
    v48 = v52;
    return sub_1000EB418(v48, v47);
  }

  sub_1000CCDBC(v44, &qword_1002C0F00, &qword_100246410);
LABEL_52:
  v53 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
  swift_beginAccess();
  if (!*(a1 + v53) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
  {
    v54 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
    swift_beginAccess();
    if (!*(a1 + v54) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
    {
      v55 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
      swift_beginAccess();
      if (!*(a1 + v55) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v1))
      {
        v56 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
        swift_beginAccess();
        v57 = *v56;
        v58 = v56[1];
        v59 = HIBYTE(v58) & 0xF;
        if ((v58 & 0x2000000000000000) == 0)
        {
          v59 = v57 & 0xFFFFFFFFFFFFLL;
        }

        if (!v59 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
        {
          v60 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
          swift_beginAccess();
          v61 = *v60;
          v62 = v60[1];
          v63 = HIBYTE(v62) & 0xF;
          if ((v62 & 0x2000000000000000) == 0)
          {
            v63 = v61 & 0xFFFFFFFFFFFFLL;
          }

          if (!v63 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
          {
            v64 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
            swift_beginAccess();
            v65 = *v64;
            v66 = v64[1];
            v67 = HIBYTE(v66) & 0xF;
            if ((v66 & 0x2000000000000000) == 0)
            {
              v67 = v65 & 0xFFFFFFFFFFFFLL;
            }

            if (!v67 || (, dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), result = , !v2))
            {
              v68 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
              swift_beginAccess();
              if (*(a1 + v68) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v2))
              {
                v69 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
                swift_beginAccess();
                sub_1000CC794(a1 + v69, v50, &qword_1002C0E90, &qword_1002450C0);
                if ((*(v78 + 48))(v50, 1, v79) == 1)
                {
                  sub_1000CCDBC(v50, &qword_1002C0E90, &qword_1002450C0);
                }

                else
                {
                  v70 = v50;
                  v71 = v77;
                  sub_1000EB0BC(v70, v77, type metadata accessor for CMTime);
                  sub_1000EB518(&qword_1002C2940, type metadata accessor for CMTime);
                  dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
                  result = sub_1000EB418(v71, type metadata accessor for CMTime);
                  if (v2)
                  {
                    return result;
                  }
                }

                v72 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
                swift_beginAccess();
                if (*(a1 + v72) == 0.0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v2))
                {
                  v73 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
                  swift_beginAccess();
                  if (!*(a1 + v73) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v2))
                  {
                    v74 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
                    swift_beginAccess();
                    if (!*(a1 + v74) || (result = dispatch thunk of Visitor.visitSingularUInt32Field(value:fieldNumber:)(), !v2))
                    {
                      v75 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
                      swift_beginAccess();
                      result = *(a1 + v75);
                      if (result)
                      {
                        return dispatch thunk of Visitor.visitSingularFixed32Field(value:fieldNumber:)();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_1000E157C(void *a1, uint64_t a2)
{
  v134 = type metadata accessor for CMTime(0);
  v131 = *(v134 - 8);
  v4 = *(v131 + 64);
  __chkstk_darwin(v134);
  v129 = &v126 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1000BB130(&qword_1002C2928, &unk_100248840);
  v6 = *(*(v130 - 8) + 64);
  __chkstk_darwin(v130);
  v8 = &v126 - v7;
  v9 = sub_1000BB130(&qword_1002C0E90, &qword_1002450C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v132 = &v126 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v133 = &v126 - v13;
  v14 = type metadata accessor for VideoHEVCProfileTierLevelInformation(0);
  v138 = *(v14 - 8);
  v139 = v14;
  v15 = *(v138 + 64);
  __chkstk_darwin(v14);
  v135 = (&v126 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = sub_1000BB130(&qword_1002C2930, &qword_1002483F0);
  v17 = *(*(v137 - 8) + 64);
  __chkstk_darwin(v137);
  v140 = &v126 - v18;
  v19 = sub_1000BB130(&qword_1002C0F00, &qword_100246410);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v136 = (&v126 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21);
  v142 = &v126 - v23;
  v24 = type metadata accessor for CMTimeRange(0);
  v143 = *(v24 - 8);
  v25 = *(v143 + 64);
  __chkstk_darwin(v24);
  v141 = &v126 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1000BB130(&qword_1002C2938, &unk_1002483F8);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27);
  v144 = &v126 - v29;
  v30 = sub_1000BB130(&qword_1002C0E88, &qword_1002450B8);
  v31 = *(*(v30 - 8) + 64);
  v32 = __chkstk_darwin(v30 - 8);
  v34 = &v126 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v32);
  v36 = &v126 - v35;
  swift_beginAccess();
  v38 = a1[2];
  v37 = a1[3];
  swift_beginAccess();
  if ((v38 != *(a2 + 16) || v37 != *(a2 + 24)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v39 = a1[4];
  v40 = a1[5];
  swift_beginAccess();
  if ((v39 != *(a2 + 32) || v40 != *(a2 + 40)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v41 = a1[6];
  v42 = a1[7];
  swift_beginAccess();
  if ((v41 != *(a2 + 48) || v42 != *(a2 + 56)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v43 = a1[8];
  v44 = a1[9];
  swift_beginAccess();
  if ((v43 != *(a2 + 64) || v44 != *(a2 + 72)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v45 = a1[10];
  v46 = a1[11];
  swift_beginAccess();
  if ((v45 != *(a2 + 80) || v46 != *(a2 + 88)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v47 = a1[12];
  swift_beginAccess();
  v48 = *(a2 + 96);
  if (*(a2 + 104) != 1)
  {
    if (v47 != v48)
    {
      return 0;
    }

    goto LABEL_26;
  }

  if (v48)
  {
    if (v48 == 1)
    {
      if (v47 != 1)
      {
        return 0;
      }

LABEL_26:
      swift_beginAccess();
      v49 = a1[14];
      v50 = a1[15];
      swift_beginAccess();
      if ((v49 != *(a2 + 112) || v50 != *(a2 + 120)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v128 = v8;
      swift_beginAccess();
      v51 = a1[16];
      swift_beginAccess();
      v52 = *(a2 + 128);

      v53 = sub_1000E94E8(v51, v52);

      if ((v53 & 1) == 0)
      {
        goto LABEL_69;
      }

      v54 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
      swift_beginAccess();
      sub_1000CC794(a1 + v54, v36, &qword_1002C0E88, &qword_1002450B8);
      v55 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__timeRange;
      swift_beginAccess();
      v56 = *(v27 + 48);
      v57 = v144;
      sub_1000CC794(v36, v144, &qword_1002C0E88, &qword_1002450B8);
      v127 = v56;
      sub_1000CC794(a2 + v55, v57 + v56, &qword_1002C0E88, &qword_1002450B8);
      v58 = *(v143 + 48);
      if (v58(v57, 1, v24) == 1)
      {
        sub_1000CCDBC(v36, &qword_1002C0E88, &qword_1002450B8);
        if (v58(v57 + v127, 1, v24) == 1)
        {
          sub_1000CCDBC(v57, &qword_1002C0E88, &qword_1002450B8);
LABEL_38:
          v66 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
          swift_beginAccess();
          v67 = *(a1 + v66);
          v68 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__mediaTypeHint;
          swift_beginAccess();
          if ((sub_1000E96FC(v67, *(a2 + v68)) & 1) == 0)
          {
            goto LABEL_69;
          }

          v69 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
          swift_beginAccess();
          v70 = v142;
          sub_1000CC794(a1 + v69, v142, &qword_1002C0F00, &qword_100246410);
          v71 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoProfileTierLevelInformation;
          swift_beginAccess();
          v72 = *(v137 + 48);
          v73 = v140;
          sub_1000CC794(v70, v140, &qword_1002C0F00, &qword_100246410);
          sub_1000CC794(a2 + v71, v73 + v72, &qword_1002C0F00, &qword_100246410);
          v74 = v139;
          v75 = *(v138 + 48);
          if (v75(v73, 1, v139) == 1)
          {
            sub_1000CCDBC(v70, &qword_1002C0F00, &qword_100246410);
            if (v75(v73 + v72, 1, v74) == 1)
            {
              sub_1000CCDBC(v73, &qword_1002C0F00, &qword_100246410);
              goto LABEL_42;
            }
          }

          else
          {
            v113 = v136;
            sub_1000CC794(v73, v136, &qword_1002C0F00, &qword_100246410);
            if (v75(v73 + v72, 1, v74) != 1)
            {
              v114 = v73 + v72;
              v115 = v135;
              sub_1000EB0BC(v114, v135, type metadata accessor for VideoHEVCProfileTierLevelInformation);
              if (*v113 != *v115 || v113[1] != v115[1] || v113[2] != v115[2])
              {
                sub_1000EB418(v115, type metadata accessor for VideoHEVCProfileTierLevelInformation);
                v118 = &qword_1002C0F00;
                v119 = &qword_100246410;
                sub_1000CCDBC(v142, &qword_1002C0F00, &qword_100246410);
                sub_1000EB418(v113, type metadata accessor for VideoHEVCProfileTierLevelInformation);
                v62 = v73;
LABEL_72:
                v60 = v118;
                v61 = v119;
                goto LABEL_36;
              }

              v116 = *(v74 + 28);
              type metadata accessor for UnknownStorage();
              sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
              v117 = dispatch thunk of static Equatable.== infix(_:_:)();
              sub_1000EB418(v115, type metadata accessor for VideoHEVCProfileTierLevelInformation);
              sub_1000CCDBC(v142, &qword_1002C0F00, &qword_100246410);
              sub_1000EB418(v113, type metadata accessor for VideoHEVCProfileTierLevelInformation);
              sub_1000CCDBC(v73, &qword_1002C0F00, &qword_100246410);
              if ((v117 & 1) == 0)
              {
                goto LABEL_69;
              }

LABEL_42:
              v76 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
              swift_beginAccess();
              LODWORD(v76) = *(a1 + v76);
              v77 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackChannelCount;
              swift_beginAccess();
              if (v76 != *(a2 + v77))
              {
                goto LABEL_69;
              }

              v78 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
              swift_beginAccess();
              LODWORD(v78) = *(a1 + v78);
              v79 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackHoachannelCount;
              swift_beginAccess();
              if (v78 != *(a2 + v79))
              {
                goto LABEL_69;
              }

              v80 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
              swift_beginAccess();
              LODWORD(v80) = *(a1 + v80);
              v81 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackBedchannelCount;
              swift_beginAccess();
              if (v80 != *(a2 + v81))
              {
                goto LABEL_69;
              }

              v82 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
              swift_beginAccess();
              v83 = *v82;
              v84 = v82[1];
              v85 = (a2 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraMake);
              swift_beginAccess();
              if ((v83 != *v85 || v84 != v85[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_69;
              }

              v86 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
              swift_beginAccess();
              v87 = *v86;
              v88 = v86[1];
              v89 = (a2 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__cameraModel);
              swift_beginAccess();
              if ((v87 != *v89 || v88 != v89[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_69;
              }

              v90 = (a1 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
              swift_beginAccess();
              v91 = *v90;
              v92 = v90[1];
              v93 = (a2 + OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__apacAudioTrackCodecProfileLevelDescription);
              swift_beginAccess();
              if ((v91 != *v93 || v92 != v93[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                goto LABEL_69;
              }

              v94 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
              swift_beginAccess();
              LODWORD(v94) = *(a1 + v94);
              v95 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__clientSupportsProMotionDisplay;
              swift_beginAccess();
              if (v94 != *(a2 + v95))
              {
                goto LABEL_69;
              }

              v96 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
              swift_beginAccess();
              v97 = v133;
              sub_1000CC794(a1 + v96, v133, &qword_1002C0E90, &qword_1002450C0);
              v98 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoDuration;
              swift_beginAccess();
              v99 = *(v130 + 48);
              v100 = v97;
              v101 = v128;
              sub_1000CC794(v100, v128, &qword_1002C0E90, &qword_1002450C0);
              sub_1000CC794(a2 + v98, v101 + v99, &qword_1002C0E90, &qword_1002450C0);
              v102 = *(v131 + 48);
              if (v102(v101, 1, v134) == 1)
              {
                sub_1000CCDBC(v133, &qword_1002C0E90, &qword_1002450C0);
                if (v102(&v128[v99], 1, v134) == 1)
                {
                  sub_1000CCDBC(v128, &qword_1002C0E90, &qword_1002450C0);
LABEL_58:
                  v103 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
                  swift_beginAccess();
                  v104 = *(a1 + v103);
                  v105 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoNominalFrameRate;
                  swift_beginAccess();
                  if (v104 == *(a2 + v105))
                  {
                    v106 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
                    swift_beginAccess();
                    LODWORD(v106) = *(a1 + v106);
                    v107 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedWidth;
                    swift_beginAccess();
                    if (v106 == *(a2 + v107))
                    {
                      v108 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
                      swift_beginAccess();
                      LODWORD(v108) = *(a1 + v108);
                      v109 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoOrientedHeight;
                      swift_beginAccess();
                      if (v108 == *(a2 + v109))
                      {
                        v110 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
                        swift_beginAccess();
                        LODWORD(v110) = *(a1 + v110);

                        v111 = OBJC_IVAR____TtCV22CloudKitImplementation11RequestItemP33_E8150762139FE2BD05EAE09B6F23423B13_StorageClass__videoCodec;
                        swift_beginAccess();
                        LODWORD(v111) = *(a2 + v111);

                        return v110 == v111;
                      }
                    }
                  }

                  goto LABEL_69;
                }

                goto LABEL_75;
              }

              v120 = v128;
              sub_1000CC794(v128, v132, &qword_1002C0E90, &qword_1002450C0);
              if (v102((v120 + v99), 1, v134) == 1)
              {
                sub_1000CCDBC(v133, &qword_1002C0E90, &qword_1002450C0);
                sub_1000EB418(v132, type metadata accessor for CMTime);
LABEL_75:
                v60 = &qword_1002C2928;
                v61 = &unk_100248840;
                v62 = v128;
                goto LABEL_36;
              }

              v121 = v129;
              sub_1000EB0BC(&v128[v99], v129, type metadata accessor for CMTime);
              if (*v132 == *v121 && *(v132 + 8) == *(v129 + 8))
              {
                v122 = *(v134 + 24);
                type metadata accessor for UnknownStorage();
                sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
                v123 = v132;
                v124 = v129;
                v125 = dispatch thunk of static Equatable.== infix(_:_:)();
                sub_1000EB418(v124, type metadata accessor for CMTime);
                sub_1000CCDBC(v133, &qword_1002C0E90, &qword_1002450C0);
                sub_1000EB418(v123, type metadata accessor for CMTime);
                sub_1000CCDBC(v128, &qword_1002C0E90, &qword_1002450C0);
                if (v125)
                {
                  goto LABEL_58;
                }

LABEL_69:

                return 0;
              }

              sub_1000EB418(v129, type metadata accessor for CMTime);
              v118 = &qword_1002C0E90;
              v119 = &qword_1002450C0;
              sub_1000CCDBC(v133, &qword_1002C0E90, &qword_1002450C0);
              sub_1000EB418(v132, type metadata accessor for CMTime);
              v62 = v128;
              goto LABEL_72;
            }

            sub_1000CCDBC(v142, &qword_1002C0F00, &qword_100246410);
            sub_1000EB418(v113, type metadata accessor for VideoHEVCProfileTierLevelInformation);
          }

          v60 = &qword_1002C2930;
          v61 = &qword_1002483F0;
          v62 = v73;
LABEL_36:
          sub_1000CCDBC(v62, v60, v61);
          goto LABEL_69;
        }
      }

      else
      {
        sub_1000CC794(v57, v34, &qword_1002C0E88, &qword_1002450B8);
        v59 = v127;
        if (v58(v57 + v127, 1, v24) != 1)
        {
          v63 = v57 + v59;
          v64 = v141;
          sub_1000EB0BC(v63, v141, type metadata accessor for CMTimeRange);
          v65 = static CMTimeRange.== infix(_:_:)(v34, v64);
          sub_1000EB418(v64, type metadata accessor for CMTimeRange);
          sub_1000CCDBC(v36, &qword_1002C0E88, &qword_1002450B8);
          sub_1000EB418(v34, type metadata accessor for CMTimeRange);
          sub_1000CCDBC(v57, &qword_1002C0E88, &qword_1002450B8);
          if ((v65 & 1) == 0)
          {
            goto LABEL_69;
          }

          goto LABEL_38;
        }

        sub_1000CCDBC(v36, &qword_1002C0E88, &qword_1002450B8);
        sub_1000EB418(v34, type metadata accessor for CMTimeRange);
      }

      v60 = &qword_1002C2938;
      v61 = &unk_1002483F8;
      v62 = v57;
      goto LABEL_36;
    }

    if (v47 == 2)
    {
      goto LABEL_26;
    }
  }

  else if (!v47)
  {
    goto LABEL_26;
  }

  return 0;
}

uint64_t sub_1000E28DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  UnknownStorage.init()();
  v4 = *(a1 + 20);
  if (qword_1002C06D0 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1002C17A0;
}

uint64_t sub_1000E2984(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28B8, type metadata accessor for RequestItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E2A24()
{
  sub_1000EB518(&qword_1002C0E80, type metadata accessor for RequestItem);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E2A90()
{
  sub_1000EB518(&qword_1002C0E80, type metadata accessor for RequestItem);

  return Message.hash(into:)();
}

uint64_t sub_1000E2B0C()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static RequestItem.MediaTypeHint._protobuf_nameMap);
  sub_1000BA040(v0, static RequestItem.MediaTypeHint._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "Unknown";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "HDR";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "Spatial";
  *(v11 + 8) = 7;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000E2DB4()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResponseItem._protobuf_nameMap);
  sub_1000BA040(v0, static ResponseItem._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100245150;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "operationId";
  *(v5 + 8) = 11;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = type metadata accessor for _NameMap.NameDescription();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "recordId";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "srcFieldName";
  *(v11 + 1) = 12;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "assetRecord";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "errorMessage";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "transcoderVersion";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "downloadType";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "downloadEstimatedSize";
  *(v21 + 1) = 21;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "errorCode";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ResponseItem.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

          v3 = *(type metadata accessor for ResponseItem(0) + 52);
          type metadata accessor for Ckcode_RecordTransport();
          sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport);
          dispatch thunk of Decoder.decodeSingularMessageField<A>(value:)();
        }

        else if (result == 1 || result == 2)
        {
LABEL_4:
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            goto LABEL_4;
          }

LABEL_25:
          dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
          goto LABEL_5;
        }

        switch(result)
        {
          case 7:
            sub_1000EB608();
            goto LABEL_23;
          case 8:
            goto LABEL_25;
          case 9:
            sub_1000EB5B4();
LABEL_23:
            dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
            break;
        }
      }

LABEL_5:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ResponseItem.traverse<A>(visitor:)()
{
  v2 = sub_1000BB130(&qword_1002C0E30, &qword_100245080);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for Ckcode_RecordTransport();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v0;
  v12 = v0[1];
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v15 = v0[3];
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v17 = v0[5];
      v18 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v18 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v18 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        v26 = type metadata accessor for ResponseItem(0);
        sub_1000CC794(v0 + *(v26 + 52), v5, &qword_1002C0E30, &qword_100245080);
        if ((*(v7 + 48))(v5, 1, v6) == 1)
        {
          sub_1000CCDBC(v5, &qword_1002C0E30, &qword_100245080);
        }

        else
        {
          (*(v7 + 32))(v10, v5, v6);
          sub_1000EB518(&qword_1002C1880, &type metadata accessor for Ckcode_RecordTransport);
          dispatch thunk of Visitor.visitSingularMessageField<A>(value:fieldNumber:)();
          if (v1)
          {
            return (*(v7 + 8))(v10, v6);
          }

          (*(v7 + 8))(v10, v6);
        }

        v19 = v0[7];
        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = v0[6] & 0xFFFFFFFFFFFFLL;
        }

        if (!v20 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
        {
          if (!v0[8] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
          {
            if (!v0[9] || (v21 = *(v0 + 80), v24 = v0[9], v25 = v21, sub_1000EB608(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
            {
              if (!v0[11] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
              {
                if (!v0[12] || (v22 = *(v0 + 104), v24 = v0[12], v25 = v22, sub_1000EB5B4(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
                {
                  v23 = v0 + *(v26 + 48);
                  return UnknownStorage.traverse<A>(visitor:)();
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000E37A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0xE000000000000000;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 104) = 1;
  v4 = a2 + *(a1 + 48);
  UnknownStorage.init()();
  v5 = *(a1 + 52);
  v6 = type metadata accessor for Ckcode_RecordTransport();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1000E384C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E38C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000E3934(uint64_t a1, uint64_t a2))(void, void)
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_1000E3988(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28B0, type metadata accessor for ResponseItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E3A28()
{
  sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E3A94()
{
  sub_1000EB518(&qword_1002C1830, type metadata accessor for ResponseItem);

  return Message.hash(into:)();
}

uint64_t sub_1000E3B40()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static ResetInterval._protobuf_nameMap);
  sub_1000BA040(v0, static ResetInterval._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "startTimestamp";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "endTimestamp";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "resources";
  *(v11 + 8) = 9;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t ResetInterval.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        sub_1000EB65C();
        dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularInt64Field(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t ResetInterval.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
  {
    if (!v0[1] || (result = dispatch thunk of Visitor.visitSingularInt64Field(value:fieldNumber:)(), !v1))
    {
      if (!*(v0[2] + 16) || (sub_1000EB65C(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for ResetInterval(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_1000E3F98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t sub_1000E3FF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28A8, type metadata accessor for ResetInterval);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4098()
{
  sub_1000EB518(&qword_1002C1A80, type metadata accessor for ResetInterval);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E4104()
{
  sub_1000EB518(&qword_1002C1A80, type metadata accessor for ResetInterval);

  return Message.hash(into:)();
}

uint64_t sub_1000E41B0()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UploadResource._protobuf_nameMap);
  sub_1000BA040(v0, static UploadResource._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245170;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "itemType";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "sourceResourceType";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "uploadResourceTypes";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UploadResource.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          v3 = v0;
          sub_1000EB65C();
LABEL_5:
          v0 = v3;
          dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)();
          goto LABEL_6;
        }

        if (result == 4)
        {
          sub_1000EB65C();
          dispatch thunk of Decoder.decodeRepeatedEnumField<A>(value:)();
        }
      }

      else
      {
        if (result == 1)
        {
          v3 = v0;
          sub_1000EB6B0();
          goto LABEL_5;
        }

        if (result == 2)
        {
          dispatch thunk of Decoder.decodeSingularStringField(value:)();
        }
      }

LABEL_6:
      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t UploadResource.traverse<A>(visitor:)()
{
  if (!*v0 || (v6 = *v0, v7 = *(v0 + 8), sub_1000EB6B0(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0[3];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      if (!Goldilocks_RecordRetentionPolicy.rawValue.getter(v0[4], *(v0 + 40)) || (sub_1000EB65C(), result = dispatch thunk of Visitor.visitSingularEnumField<A>(value:fieldNumber:)(), !v1))
      {
        if (!*(v0[6] + 16) || (sub_1000EB65C(), result = dispatch thunk of Visitor.visitPackedEnumField<A>(value:fieldNumber:)(), !v1))
        {
          v5 = v0 + *(type metadata accessor for UploadResource(0) + 32);
          return UnknownStorage.traverse<A>(visitor:)();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000E473C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 32);
  return UnknownStorage.init()();
}

uint64_t sub_1000E47B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C28A0, type metadata accessor for UploadResource);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4854()
{
  sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E48C0()
{
  sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource);

  return Message.hash(into:)();
}

uint64_t UploadResourcesRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for UploadResource(0), sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for UploadResourcesRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E4BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2898, type metadata accessor for UploadResourcesRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E4C48()
{
  sub_1000EB518(&qword_1002C1AA8, type metadata accessor for UploadResourcesRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E4CB4()
{
  sub_1000EB518(&qword_1002C1AA8, type metadata accessor for UploadResourcesRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000E4D70()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UploadResourcesResponse._protobuf_nameMap);
  sub_1000BA040(v0, static UploadResourcesResponse._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245180;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "shouldUploadJPEGMediumForOriginalImages";
  *(v6 + 8) = 39;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "shouldUploadJPEGMediumForOriginalVideos";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "skipUploadResources";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UploadResourcesResponse.decodeMessage<A>(decoder:)()
{
  result = dispatch thunk of Decoder.nextFieldNumber()();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 3)
      {
        type metadata accessor for UploadResource(0);
        sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource);
        dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
      }

      else if (result == 2 || result == 1)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      result = dispatch thunk of Decoder.nextFieldNumber()();
    }
  }

  return result;
}

uint64_t UploadResourcesResponse.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
  {
    if (*(v0 + 1) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
    {
      if (!*(*(v0 + 8) + 16) || (type metadata accessor for UploadResource(0), sub_1000EB518(&qword_1002C18B0, type metadata accessor for UploadResource), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
      {
        v3 = v0 + *(type metadata accessor for UploadResourcesResponse(0) + 28);
        return UnknownStorage.traverse<A>(visitor:)();
      }
    }
  }

  return result;
}

uint64_t sub_1000E5258@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 28);
  return UnknownStorage.init()();
}

uint64_t sub_1000E5288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E52FC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1000E53A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2890, type metadata accessor for UploadResourcesResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5440()
{
  sub_1000EB518(&qword_1002C1AC0, type metadata accessor for UploadResourcesResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E54AC()
{
  sub_1000EB518(&qword_1002C1AC0, type metadata accessor for UploadResourcesResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000E5550()
{
  v0 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v0, static UntranscodableItem._protobuf_nameMap);
  sub_1000BA040(v0, static UntranscodableItem._protobuf_nameMap);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v1 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100245160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "requestorDsid";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = type metadata accessor for _NameMap.NameDescription();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "fileChecksumHex";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "errorMessage";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "isTranscodable";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "ownerDsid";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "referenceChecksumHex";
  *(v18 + 1) = 20;
  v18[16] = 2;
  v9();
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t UntranscodableItem.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    if (result > 4)
    {
      if (result == 5)
      {
        dispatch thunk of Decoder.decodeSingularBoolField(value:)();
      }

      else if (result == 6 || result == 7)
      {
LABEL_2:
        dispatch thunk of Decoder.decodeSingularStringField(value:)();
      }
    }

    else if (result == 1 || result == 2 || result == 4)
    {
      goto LABEL_2;
    }
  }
}

uint64_t UntranscodableItem.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
    {
      v8 = v0[5];
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v0[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v9 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
      {
        if (*(v0 + 48) != 1 || (result = dispatch thunk of Visitor.visitSingularBoolField(value:fieldNumber:)(), !v1))
        {
          v10 = v0[8];
          v11 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v11 = v0[7] & 0xFFFFFFFFFFFFLL;
          }

          if (!v11 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
          {
            v12 = v0[10];
            v13 = HIBYTE(v12) & 0xF;
            if ((v12 & 0x2000000000000000) == 0)
            {
              v13 = v0[9] & 0xFFFFFFFFFFFFLL;
            }

            if (!v13 || (result = dispatch thunk of Visitor.visitSingularStringField(value:fieldNumber:)(), !v1))
            {
              v14 = v0 + *(type metadata accessor for UntranscodableItem(0) + 40);
              return UnknownStorage.traverse<A>(visitor:)();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000E5B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0xE000000000000000;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0xE000000000000000;
  v2 = a2 + *(a1 + 40);
  return UnknownStorage.init()();
}

uint64_t sub_1000E5B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1000E5BB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1000E5C28(uint64_t a1, uint64_t a2))(void, void)
{
  result = Goldilocks_RecordRetentionPolicy.rawValue.getter;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_1000E5C7C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2888, type metadata accessor for UntranscodableItem);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E5D1C()
{
  sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E5D88()
{
  sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem);

  return Message.hash(into:)();
}

uint64_t UntranscodableRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for UntranscodableItem(0), sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for UntranscodableRequest(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E6058(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2880, type metadata accessor for UntranscodableRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E60F8()
{
  sub_1000EB518(&qword_1002C1AE8, type metadata accessor for UntranscodableRequest);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E6164()
{
  sub_1000EB518(&qword_1002C1AE8, type metadata accessor for UntranscodableRequest);

  return Message.hash(into:)();
}

uint64_t sub_1000E6220(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for _NameMap();
  sub_1000BB0CC(v7, a2);
  sub_1000BA040(v7, a2);
  sub_1000BB130(&qword_1002C0C50, &unk_1002483D0);
  v8 = (sub_1000BB130(&qword_1002C0C58, &qword_1002449E0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100244100;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.same(_:);
  v14 = type metadata accessor for _NameMap.NameDescription();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return _NameMap.init(dictionaryLiteral:)();
}

uint64_t sub_1000E63D4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = dispatch thunk of Decoder.nextFieldNumber()();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1000EB518(a5, a6);
      dispatch thunk of Decoder.decodeRepeatedMessageField<A>(value:)();
    }
  }

  return result;
}

uint64_t UntranscodableResponse.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for UntranscodableItem(0), sub_1000EB518(&qword_1002C18D0, type metadata accessor for UntranscodableItem), result = dispatch thunk of Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for UntranscodableResponse(0) + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t sub_1000E65C0(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int sub_1000E66C0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  Hasher.init(_seed:)();
  a1(0);
  sub_1000EB518(a2, a3);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000E6760(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000EB518(&qword_1002C2878, type metadata accessor for UntranscodableResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_1000E6800()
{
  sub_1000EB518(&qword_1002C1B00, type metadata accessor for UntranscodableResponse);

  return Message.debugDescription.getter();
}

uint64_t sub_1000E686C()
{
  sub_1000EB518(&qword_1002C1B00, type metadata accessor for UntranscodableResponse);

  return Message.hash(into:)();
}

uint64_t sub_1000E68E8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t sub_1000E6994(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v45 - v10;
  v50 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v12 = *(*(v50 - 8) + 64);
  __chkstk_darwin(v50);
  v14 = &v45 - v13;
  v49 = type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem(0);
  v15 = *(*(v49 - 8) + 64);
  v16 = __chkstk_darwin(v49);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v21 = (&v45 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_27:
    v43 = 0;
    return v43 & 1;
  }

  if (v22 && a1 != a2)
  {
    v45 = v11;
    v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v24 = a1 + v23;
    v25 = a2 + v23;
    v26 = (v5 + 48);
    v47 = *(v19 + 72);
    v48 = v4;
    v27 = v49;
    while (1)
    {
      sub_1000EB3B0(v24, v21, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      v52 = v24;
      sub_1000EB3B0(v25, v18, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      v28 = *v21 == *v18 && v21[1] == v18[1];
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v29 = v21[2] == v18[2] && v21[3] == v18[3];
      if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v51 = v22;
      v30 = *(v27 + 28);
      v31 = *(v50 + 48);
      sub_1000CC794(v21 + v30, v14, &qword_1002C2900, &qword_1002483B0);
      sub_1000CC794(v18 + v30, &v14[v31], &qword_1002C2900, &qword_1002483B0);
      v32 = *v26;
      v33 = v14;
      v34 = v14;
      v35 = v48;
      if ((*v26)(v33, 1, v48) == 1)
      {
        if (v32((v34 + v31), 1, v35) != 1)
        {
          goto LABEL_25;
        }

        sub_1000CCDBC(v34, &qword_1002C2900, &qword_1002483B0);
        v14 = v34;
        v36 = v51;
      }

      else
      {
        v37 = v45;
        sub_1000CC794(v34, v45, &qword_1002C2900, &qword_1002483B0);
        if (v32((v34 + v31), 1, v35) == 1)
        {
          sub_1000EB418(v37, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_25:
          sub_1000CCDBC(v34, &qword_1002C2908, &qword_1002483B8);
          break;
        }

        v38 = v26;
        v39 = v46;
        sub_1000EB0BC(v34 + v31, v46, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        v40 = static Goldilocks_ErrorInfo.ResultError.== infix(_:_:)(v37, v39);
        v41 = v39;
        v26 = v38;
        sub_1000EB418(v41, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        sub_1000EB418(v37, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
        sub_1000CCDBC(v34, &qword_1002C2900, &qword_1002483B0);
        v27 = v49;
        v14 = v34;
        v36 = v51;
        if ((v40 & 1) == 0)
        {
          break;
        }
      }

      v42 = *(v27 + 24);
      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v43 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v18, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      sub_1000EB418(v21, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
      if (v43)
      {
        v25 += v47;
        v24 = v52 + v47;
        v22 = v36 - 1;
        if (v22)
        {
          continue;
        }
      }

      return v43 & 1;
    }

    sub_1000EB418(v18, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
    sub_1000EB418(v21, type metadata accessor for Goldilocks_ExitMoveBatchFeedbackItem);
    goto LABEL_27;
  }

  v43 = 1;
  return v43 & 1;
}

uint64_t sub_1000E6F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BB130(&qword_1002C2900, &qword_1002483B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v46 - v11;
  v51 = sub_1000BB130(&qword_1002C2908, &qword_1002483B8);
  v13 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v15 = &v46 - v14;
  v50 = type metadata accessor for Goldilocks_DuplicateState(0);
  v16 = *(*(v50 - 8) + 64);
  v17 = __chkstk_darwin(v50);
  v19 = (&v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17);
  v22 = (&v46 - v21);
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_24:
    v45 = 0;
    return v45 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v45 = 1;
    return v45 & 1;
  }

  v46 = v8;
  v47 = v12;
  v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v25 = a1 + v24;
  v26 = a2 + v24;
  v27 = (v5 + 48);
  v48 = *(v20 + 72);
  v49 = v4;
  v28 = &qword_1002C2900;
  v29 = v50;
  while (1)
  {
    result = sub_1000EB3B0(v25, v22, type metadata accessor for Goldilocks_DuplicateState);
    if (!v23)
    {
      break;
    }

    v52 = v23;
    v53 = v25;
    sub_1000EB3B0(v26, v19, type metadata accessor for Goldilocks_DuplicateState);
    v31 = *v22 == *v19 && v22[1] == v19[1];
    if (!v31 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_23;
    }

    v32 = *(v29 + 28);
    v33 = *(v51 + 48);
    sub_1000CC794(v22 + v32, v15, v28, &qword_1002483B0);
    sub_1000CC794(v19 + v32, &v15[v33], v28, &qword_1002483B0);
    v34 = *v27;
    v35 = v15;
    v36 = v28;
    v37 = v15;
    v38 = v49;
    if ((*v27)(v35, 1, v49) == 1)
    {
      if (v34((v37 + v33), 1, v38) != 1)
      {
        goto LABEL_22;
      }

      sub_1000CCDBC(v37, v36, &qword_1002483B0);
      v15 = v37;
      v28 = v36;
    }

    else
    {
      v39 = v47;
      sub_1000CC794(v37, v47, v36, &qword_1002483B0);
      if (v34((v37 + v33), 1, v38) == 1)
      {
        sub_1000EB418(v39, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
LABEL_22:
        sub_1000CCDBC(v37, &qword_1002C2908, &qword_1002483B8);
LABEL_23:
        sub_1000EB418(v19, type metadata accessor for Goldilocks_DuplicateState);
        sub_1000EB418(v22, type metadata accessor for Goldilocks_DuplicateState);
        goto LABEL_24;
      }

      v40 = v27;
      v41 = v46;
      sub_1000EB0BC(v37 + v33, v46, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      v42 = static Goldilocks_ErrorInfo.ResultError.== infix(_:_:)(v39, v41);
      v43 = v41;
      v27 = v40;
      sub_1000EB418(v43, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_1000EB418(v39, type metadata accessor for Goldilocks_ErrorInfo.ResultError);
      sub_1000CCDBC(v37, v36, &qword_1002483B0);
      v29 = v50;
      v15 = v37;
      v28 = v36;
      if ((v42 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if ((sub_1000E7C10(v22[2], v19[2]) & 1) == 0)
    {
      goto LABEL_23;
    }

    v44 = *(v29 + 24);
    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    v45 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1000EB418(v19, type metadata accessor for Goldilocks_DuplicateState);
    sub_1000EB418(v22, type metadata accessor for Goldilocks_DuplicateState);
    if (v45)
    {
      v23 = v52 - 1;
      v26 += v48;
      v25 = v53 + v48;
      if (v52 != 1)
      {
        continue;
      }
    }

    return v45 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E7460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1000E74F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ParticipantExitResult(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v6);
  v11 = (&v19 - v10);
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_1000EB3B0(v14, v11, type metadata accessor for Goldilocks_ParticipantExitResult);
        sub_1000EB3B0(v15, v8, type metadata accessor for Goldilocks_ParticipantExitResult);
        v17 = _s22CloudKitImplementation32Goldilocks_ParticipantExitResultV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_1000EB418(v8, type metadata accessor for Goldilocks_ParticipantExitResult);
        sub_1000EB418(v11, type metadata accessor for Goldilocks_ParticipantExitResult);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1000E76A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Utility_ErrorInfo.ResultError(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BB130(&qword_1002C0F70, &qword_100245190);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v43 - v10;
  v49 = sub_1000BB130(&qword_1002C15F0, &unk_100246070);
  v12 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v14 = &v43 - v13;
  v52 = type metadata accessor for Utility_DeleteZoneResponse(0);
  v15 = *(*(v52 - 8) + 64);
  v16 = __chkstk_darwin(v52);
  v18 = (&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v16);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
LABEL_21:
    v42 = 0;
    return v42 & 1;
  }

  if (!v21 || a1 == a2)
  {
    v42 = 1;
    return v42 & 1;
  }

  v51 = (&v43 - v20);
  v44 = v11;
  v47 = v18;
  v48 = v4;
  v22 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v25 = (v5 + 48);
  v46 = *(v19 + 72);
  v26 = v21;
  while (1)
  {
    v27 = v51;
    result = sub_1000EB3B0(v23, v51, type metadata accessor for Utility_DeleteZoneResponse);
    if (!v26)
    {
      break;
    }

    v50 = v26;
    sub_1000EB3B0(v24, v18, type metadata accessor for Utility_DeleteZoneResponse);
    v29 = *(v52 + 24);
    v30 = *(v49 + 48);
    sub_1000CC794(v27 + v29, v14, &qword_1002C0F70, &qword_100245190);
    sub_1000CC794(v18 + v29, &v14[v30], &qword_1002C0F70, &qword_100245190);
    v31 = *v25;
    v32 = v14;
    v33 = v14;
    v34 = v48;
    if ((*v25)(v32, 1, v48) == 1)
    {
      if (v31((v33 + v30), 1, v34) != 1)
      {
        goto LABEL_19;
      }

      sub_1000CCDBC(v33, &qword_1002C0F70, &qword_100245190);
      v14 = v33;
      v18 = v47;
      v35 = v51;
    }

    else
    {
      v36 = v44;
      sub_1000CC794(v33, v44, &qword_1002C0F70, &qword_100245190);
      if (v31((v33 + v30), 1, v34) == 1)
      {
        sub_1000EB418(v36, type metadata accessor for Utility_ErrorInfo.ResultError);
LABEL_19:
        sub_1000CCDBC(v33, &qword_1002C15F0, &unk_100246070);
        v18 = v47;
        v35 = v51;
LABEL_20:
        sub_1000EB418(v18, type metadata accessor for Utility_DeleteZoneResponse);
        sub_1000EB418(v35, type metadata accessor for Utility_DeleteZoneResponse);
        goto LABEL_21;
      }

      v37 = v25;
      v38 = v45;
      sub_1000EB0BC(v33 + v30, v45, type metadata accessor for Utility_ErrorInfo.ResultError);
      v39 = static Utility_ErrorInfo.ResultError.== infix(_:_:)(v36, v38);
      v40 = v38;
      v25 = v37;
      sub_1000EB418(v40, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000EB418(v36, type metadata accessor for Utility_ErrorInfo.ResultError);
      sub_1000CCDBC(v33, &qword_1002C0F70, &qword_100245190);
      v14 = v33;
      v18 = v47;
      v35 = v51;
      if ((v39 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if ((*v35 != *v18 || v35[1] != v18[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_20;
    }

    v41 = *(v52 + 20);
    type metadata accessor for UnknownStorage();
    sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    sub_1000EB418(v18, type metadata accessor for Utility_DeleteZoneResponse);
    sub_1000EB418(v35, type metadata accessor for Utility_DeleteZoneResponse);
    if (v42)
    {
      v26 = v50 - 1;
      v24 += v46;
      v23 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v42 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E7C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Goldilocks_ZoneID(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BB130(&qword_1002C4050, &qword_1002483C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v46 - v11);
  v51 = sub_1000BB130(&qword_1002C2910, &qword_1002483C8);
  v13 = *(*(v51 - 8) + 64);
  __chkstk_darwin(v51);
  v55 = &v46 - v14;
  found = type metadata accessor for Goldilocks_FoundDuplicate(0);
  v16 = *(*(found - 8) + 64);
  v17 = __chkstk_darwin(found);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v22 = &v46 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_41:
    v42 = 0;
    return v42 & 1;
  }

  if (v23 && a1 != a2)
  {
    v24 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v25 = v5;
    v26 = a1 + v24;
    v27 = a2 + v24;
    v49 = (v25 + 48);
    v50 = v4;
    v47 = *(v20 + 72);
    v48 = found;
    while (1)
    {
      sub_1000EB3B0(v26, v22, type metadata accessor for Goldilocks_FoundDuplicate);
      v52 = v27;
      v53 = v26;
      sub_1000EB3B0(v27, v19, type metadata accessor for Goldilocks_FoundDuplicate);
      v28 = *v22 == *v19 && *(v22 + 1) == *(v19 + 1);
      if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v54 = v23;
      v29 = v8;
      v30 = *(found + 28);
      v31 = *(v51 + 48);
      v32 = v55;
      sub_1000CC794(&v22[v30], v55, &qword_1002C4050, &qword_1002483C0);
      sub_1000CC794(&v19[v30], v32 + v31, &qword_1002C4050, &qword_1002483C0);
      v33 = v50;
      v34 = *v49;
      if ((*v49)(v32, 1, v50) == 1)
      {
        v28 = v34(v32 + v31, 1, v33) == 1;
        v8 = v29;
        v35 = v32;
        if (!v28)
        {
          goto LABEL_36;
        }
      }

      else
      {
        sub_1000CC794(v32, v12, &qword_1002C4050, &qword_1002483C0);
        if (v34(v32 + v31, 1, v33) == 1)
        {
          sub_1000EB418(v12, type metadata accessor for Goldilocks_ZoneID);
          v35 = v32;
LABEL_36:
          v43 = &qword_1002C2910;
          v44 = &qword_1002483C8;
          goto LABEL_39;
        }

        v8 = v29;
        sub_1000EB0BC(v32 + v31, v29, type metadata accessor for Goldilocks_ZoneID);
        if ((*v12 != *v29 || v12[1] != *(v29 + 1)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v12[2] != *(v29 + 2) || v12[3] != *(v29 + 3)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          sub_1000EB418(v29, type metadata accessor for Goldilocks_ZoneID);
LABEL_38:
          sub_1000EB418(v12, type metadata accessor for Goldilocks_ZoneID);
          v43 = &qword_1002C4050;
          v44 = &qword_1002483C0;
          v35 = v55;
LABEL_39:
          sub_1000CCDBC(v35, v43, v44);
          break;
        }

        v36 = *(v50 + 24);
        type metadata accessor for UnknownStorage();
        sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
        v37 = dispatch thunk of static Equatable.== infix(_:_:)();
        sub_1000EB418(v29, type metadata accessor for Goldilocks_ZoneID);
        if ((v37 & 1) == 0)
        {
          goto LABEL_38;
        }

        sub_1000EB418(v12, type metadata accessor for Goldilocks_ZoneID);
        v35 = v55;
      }

      sub_1000CCDBC(v35, &qword_1002C4050, &qword_1002483C0);
      v38 = *(v22 + 2);
      v39 = *(v19 + 2);
      if (v22[24])
      {
        v38 = v38 != 0;
      }

      if (v19[24] == 1)
      {
        found = v48;
        v40 = v54;
        if (v39)
        {
          if (v38 != 1)
          {
            break;
          }
        }

        else if (v38)
        {
          break;
        }
      }

      else
      {
        found = v48;
        v40 = v54;
        if (v38 != v39)
        {
          break;
        }
      }

      v41 = *(found + 24);
      type metadata accessor for UnknownStorage();
      sub_1000EB518(&qword_1002C0840, &type metadata accessor for UnknownStorage);
      v42 = dispatch thunk of static Equatable.== infix(_:_:)();
      sub_1000EB418(v19, type metadata accessor for Goldilocks_FoundDuplicate);
      sub_1000EB418(v22, type metadata accessor for Goldilocks_FoundDuplicate);
      if (v42)
      {
        v27 = v52 + v47;
        v26 = v53 + v47;
        v23 = v40 - 1;
        if (v23)
        {
          continue;
        }
      }

      return v42 & 1;
    }

    sub_1000EB418(v19, type metadata accessor for Goldilocks_FoundDuplicate);
    sub_1000EB418(v22, type metadata accessor for Goldilocks_FoundDuplicate);
    goto LABEL_41;
  }

  v42 = 1;
  return v42 & 1;
}