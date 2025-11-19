Swift::Int AssetUploadRequest.hashValue.getter()
{
  Hasher.init(_seed:)();
  AssetUploadRequest.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AssetUploadRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v76 = type metadata accessor for Credential(0);
  v3 = sub_22E6CF978(v76);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  sub_22E6CF9C8();
  v78 = v7 - v6;
  v85 = type metadata accessor for URL();
  v8 = sub_22E6CF988(v85);
  v82 = v9;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v73 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v73 - v18;
  v20 = type metadata accessor for UUID();
  v21 = sub_22E6CF988(v20);
  v81 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v21);
  sub_22E6CF9C8();
  v27 = v26 - v25;
  v79 = sub_22E6CF1CC(&qword_27DA6D8A8, &qword_22E72C0D8);
  v28 = sub_22E6CF988(v79);
  v77 = v29;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = v73 - v32;
  v86 = type metadata accessor for AssetUploadRequest();
  v34 = sub_22E6CF978(v86);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34);
  sub_22E6CF9C8();
  v87 = v38 - v37;
  v40 = a1[3];
  v39 = a1[4];
  v84 = a1;
  sub_22E6CF214(a1, v40);
  sub_22E71E2C8();
  v80 = v33;
  v41 = v83;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v41)
  {
    return sub_22E6CF2F4(v84);
  }

  v73[3] = v17;
  v74 = v19;
  v73[2] = v14;
  v42 = v78;
  LOBYTE(v88) = 0;
  sub_22E71F328();
  sub_22E71EF04(v43, v44);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v45 = v20;
  v46 = v87;
  (*(v81 + 32))(v87, v27, v45);
  LOBYTE(v88) = 1;
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v48 = (v46 + v86[5]);
  *v48 = v47;
  v48[1] = v49;
  LOBYTE(v88) = 2;
  sub_22E71F310();
  sub_22E71EF04(v50, v51);
  v52 = v74;
  v53 = v85;
  sub_22E71F390();
  *(v55 - 256) = v54;
  sub_22E71F3DC();
  v83 = v45;
  v56 = *(v82 + 32);
  v57 = v46 + v86[6];
  v74 = (v82 + 32);
  v73[0] = v56;
  v56(v57, v52, v53);
  LOBYTE(v88) = 3;
  sub_22E71F390();
  v59 = *(v58 - 256);
  sub_22E71F3DC();
  v60 = sub_22E71F3A4(v86[7]);
  v61(v60);
  LOBYTE(v88) = 4;
  sub_22E71F390();
  v63 = *(v62 - 256);
  sub_22E71F3DC();
  v64 = sub_22E71F3A4(v86[8]);
  v65(v64);
  v90 = 5;
  sub_22E71ECDC();
  sub_22E71F3DC();
  v66 = (v46 + v86[9]);
  v67 = v89;
  *v66 = v88;
  v66[1] = v67;
  LOBYTE(v88) = 6;
  sub_22E71F378();
  sub_22E71EF04(v68, v69);
  sub_22E71F3DC();
  v70 = sub_22E71F340();
  v71(v70);
  sub_22E71D840(v42, v46 + v86[10]);
  sub_22E71ED30(v46, v75, type metadata accessor for AssetUploadRequest);
  sub_22E6CF2F4(v84);
  return sub_22E71ED8C(v46);
}

Swift::Int sub_22E71ECA0()
{
  Hasher.init(_seed:)();
  AssetUploadRequest.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_22E71ECDC()
{
  result = qword_27DA6D8B0;
  if (!qword_27DA6D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8B0);
  }

  return result;
}

uint64_t sub_22E71ED30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  sub_22E6CF978(v4);
  v6 = *(v5 + 16);
  v7 = sub_22E6D368C();
  v8(v7);
  return a2;
}

uint64_t sub_22E71ED8C(uint64_t a1)
{
  v2 = type metadata accessor for AssetUploadRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22E71EDE8(void *a1)
{
  a1[1] = sub_22E71EF04(&qword_27DA6D4B8, type metadata accessor for AssetUploadRequest);
  a1[2] = sub_22E71EF04(&qword_27DA6D488, type metadata accessor for AssetUploadRequest);
  a1[3] = sub_22E71EF04(&qword_27DA6D8B8, type metadata accessor for AssetUploadRequest);
  result = sub_22E71EF04(&qword_27DA6D8C0, type metadata accessor for AssetUploadRequest);
  a1[4] = result;
  return result;
}

uint64_t sub_22E71EF04(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E71EFF4()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Credential(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetUploadRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AssetUploadRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22E71F20C()
{
  result = qword_27DA6D8E0;
  if (!qword_27DA6D8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8E0);
  }

  return result;
}

unint64_t sub_22E71F264()
{
  result = qword_27DA6D8E8;
  if (!qword_27DA6D8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8E8);
  }

  return result;
}

unint64_t sub_22E71F2BC()
{
  result = qword_27DA6D8F0;
  if (!qword_27DA6D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D8F0);
  }

  return result;
}

uint64_t sub_22E71F350()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t sub_22E71F3A4@<X0>(uint64_t a1@<X8>)
{
  result = v1 + a1;
  v4 = *(v2 - 240);
  v5 = *(v2 - 272);
  return result;
}

uint64_t sub_22E71F3C0()
{

  return dispatch thunk of Hashable.hash(into:)();
}

uint64_t sub_22E71F3DC()
{
  v2 = *(v0 - 192);

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_22E71F3F4(uint64_t a1)
{
  v7 = sub_22E6CF1CC(&qword_27DA6D938, &qword_22E72C3E8);
  v8 = sub_22E722390();
  v6[0] = a1;
  v2 = sub_22E6CF214(v6, v7);
  sub_22E721B94(*v2 + 32, *v2 + 32 + *(*v2 + 16), &v5);
  v3 = v5;
  sub_22E6CF2F4(v6);
  return v3;
}

uint64_t sub_22E71F4B0()
{
  v0 = type metadata accessor for Logger();
  sub_22E6E3658(v0, qword_27DA6D900);
  sub_22E6E3578(v0, qword_27DA6D900);
  type metadata accessor for LoadingRequestHandler();
  sub_22E6CF1CC(&qword_27DA6D928, &qword_22E72C3C0);
  String.init<A>(describing:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_22E71F56C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = a1[3];
  v10 = a1[4];
  v11 = sub_22E721D2C(a1, v9);
  v12 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v16 = a4(v14, a2, a3, v4, v9, v10);
  sub_22E6CF2F4(a1);
  return v16;
}

id sub_22E71F678(void *a1)
{
  v2 = v1;
  v4 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v17 - v6;
  sub_22E722320(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_type, &v17 - v6);
  v8 = type metadata accessor for UTType();
  if (sub_22E6CF550(v7, 1, v8) == 1)
  {
    sub_22E7222C0(v7, &qword_27DA6CA30, &unk_22E727860);
    v9 = 0;
  }

  else
  {
    v10 = UTType.identifier.getter();
    v12 = v11;
    (*(*(v8 - 8) + 8))(v7, v8);
    v9 = MEMORY[0x2318EC5C0](v10, v12);
  }

  [a1 setContentType_];

  v13 = (v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle);
  v14 = *(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle + 24);
  v15 = v13[4];
  sub_22E6CF214(v13, v14);
  [a1 setContentLength_];
  return [a1 setByteRangeAccessSupported_];
}

uint64_t sub_22E71F820(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_22E6CF1CC(&qword_27DA6CCB0, &unk_22E72C3F0);
  v2[7] = v3;
  v4 = *(v3 - 8);
  v2[8] = v4;
  v5 = *(v4 + 64) + 15;
  v2[9] = swift_task_alloc();
  v6 = sub_22E6CF1CC(&qword_27DA6D950, qword_22E728670);
  v2[10] = v6;
  v7 = *(v6 - 8);
  v2[11] = v7;
  v8 = *(v7 + 64) + 15;
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E71F954, 0, 0);
}

char *sub_22E71F954()
{
  v32 = v0;
  if (qword_27DA6C488 != -1)
  {
    sub_22E72243C();
  }

  v1 = v0[5];
  v2 = type metadata accessor for Logger();
  sub_22E6E3578(v2, qword_27DA6D900);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = sub_22E709F3C();
    v9 = sub_22E709F3C();
    v31 = v9;
    *v8 = 136315650;
    v10 = v7;
    v11 = [v10 description];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = sub_22E706BF8(v12, v14, &v31);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2048;
    v16 = [v10 requestedOffset];

    *(v8 + 14) = v16;
    *(v8 + 22) = 2048;
    v17 = [v10 requestedLength];

    *(v8 + 24) = v17;
    _os_log_impl(&dword_22E6C9000, v4, v5, "LoadingRequestHandler.handleDataRequest:%s offset:%lld length:%ld", v8, 0x20u);
    sub_22E6CF2F4(v9);
    sub_22E7099AC();
    sub_22E6E3CE4();
  }

  else
  {
  }

  v18 = v0[5];
  v19 = [v18 requestedOffset];
  result = [v18 requestedLength];
  if (__OFADD__(v19, result))
  {
    __break(1u);
  }

  else if (&result[v19] >= v19)
  {
    v21 = (v0[6] + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle);
    v22 = v21[4];
    sub_22E6CF214(v21, v21[3]);
    v23 = *(v22 + 24);
    v30 = v23 + *v23;
    v24 = v23[1];
    swift_task_alloc();
    sub_22E6ECB74();
    v0[13] = v25;
    *v25 = v26;
    v25[1] = sub_22E71FC5C;
    v27 = v0[12];
    sub_22E709BF0();

    __asm { BRAA            X5, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_22E71FC5C()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = *(v2 + 104);
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 112) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E71FD5C()
{
  sub_22E6E3BDC();
  v1 = v0[12];
  v2 = v0[9];
  MEMORY[0x2318EC7E0](v0[10]);
  v3 = *(MEMORY[0x277D858B8] + 4);
  swift_task_alloc();
  sub_22E6ECB74();
  v0[15] = v4;
  *v4 = v5;
  sub_22E72245C(v4);
  sub_22E6ECBB8();

  return MEMORY[0x2822005A8](v6, v7, v8, v9, v10);
}

uint64_t sub_22E71FDE8()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v2 = *(v1 + 120);
  v3 = *v0;
  sub_22E6E3C94();
  *v4 = v3;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E71FEE4()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v2 >> 60 == 15)
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = v0[10];
    (*(v0[8] + 8))(v0[9], v0[7]);
    (*(v4 + 8))(v3, v5);

    sub_22E6E3AD8();

    return v6();
  }

  else
  {
    v8 = v0[5];
    v9 = v0[2];
    v10 = v0[3];
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v8 respondWithData_];

    sub_22E6EC710(v1, v2);
    v12 = *(MEMORY[0x277D858B8] + 4);
    swift_task_alloc();
    sub_22E6ECB74();
    v0[15] = v13;
    *v13 = v14;
    sub_22E72245C();
    sub_22E6ECBB8();

    return MEMORY[0x2822005A8](v15, v16, v17, v18, v19);
  }
}

uint64_t sub_22E720044()
{
  sub_22E6E3BDC();
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[9];

  sub_22E6E3AD8();

  return v4();
}

uint64_t sub_22E7200AC()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  (*(v0[8] + 8))(v0[9], v0[7]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[4];
  v5 = v0[12];
  v6 = v0[9];

  sub_22E6E3AD8();

  return v7();
}

uint64_t sub_22E720154(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(sub_22E6CF1CC(&qword_27DA6C940, &qword_22E7273D0) - 8) + 64) + 15;
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URLRequest();
  v2[9] = v4;
  v5 = *(v4 - 8);
  v2[10] = v5;
  v6 = *(v5 + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v2[13] = v7;
  v8 = *(v7 - 8);
  v2[14] = v8;
  v9 = *(v8 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22E7202C0, 0, 0);
}

uint64_t sub_22E7202C0()
{
  v91 = v0;
  if (qword_27DA6C488 != -1)
  {
    sub_22E72243C();
  }

  v1 = *(v0 + 48);
  v2 = type metadata accessor for Logger();
  *(v0 + 136) = sub_22E6E3578(v2, qword_27DA6D900);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = sub_22E709FA8();
    v90 = sub_22E709F3C();
    *v7 = 136315138;
    *(v0 + 40) = v6;
    v8 = _Pointer.debugDescription.getter();
    v10 = sub_22E706BF8(v8, v9, &v90);

    *(v7 + 4) = v10;
    _os_log_impl(&dword_22E6C9000, v4, v5, "LoadingRequestHandler.handle, entering - loadingRequest:%s", v7, 0xCu);
    sub_22E722484();
    sub_22E6E3CC8();
  }

  v11 = [*(v0 + 48) contentInformationRequest];
  if (v11)
  {
    v12 = v11;
    v14 = *(v0 + 96);
    v13 = *(v0 + 104);
    v15 = *(v0 + 72);
    v16 = *(v0 + 80);
    v17 = *(v0 + 56);
    v18 = *(v0 + 64);
    v19 = *(v0 + 48);
    sub_22E71F678(v11);
    v20 = [v19 request];
    static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

    URLRequest.url.getter();
    (*(v16 + 8))(v14, v15);
    if (sub_22E6CF550(v18, 1, v13) == 1)
    {
      v21 = *(v0 + 64);

      sub_22E7222C0(v21, &qword_27DA6C940, &qword_22E7273D0);
    }

    else
    {
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = *(v0 + 104);
      v25 = *(v0 + 112);
      v26 = *(v0 + 48);
      (*(v25 + 32))(v22, *(v0 + 64), v24);
      (*(v25 + 16))(v23, v22, v24);
      v27 = Dictionary.init(dictionaryLiteral:)();
      v28 = objc_allocWithZone(MEMORY[0x277CCAA40]);
      v30 = sub_22E721A7C(v23, 206, 0, 0, v27, v29);
      [v26 setResponse_];

      v31 = v26;
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = *(v0 + 48);
        v35 = sub_22E709FA8();
        v36 = swift_slowAlloc();
        *v35 = 138412290;
        v37 = [v34 response];
        *(v35 + 4) = v37;
        *v36 = v37;
        _os_log_impl(&dword_22E6C9000, v32, v33, "Returning Response w/ ETag for AVAssetCache %@", v35, 0xCu);
        sub_22E7222C0(v36, &qword_27DA6CA08, &qword_22E727840);
        sub_22E6E3CE4();
        sub_22E6E3CE4();
      }

      v38 = *(v0 + 128);
      v39 = *(v0 + 104);
      v40 = *(v0 + 112);

      (*(v40 + 8))(v38, v39);
    }
  }

  v41 = [*(v0 + 48) dataRequest];
  *(v0 + 144) = v41;
  if (!v41)
  {
    v74 = *(v0 + 136);
    v75 = *(v0 + 48);
    [v75 finishLoading];
    v76 = v75;
    v62 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v77))
    {
      v78 = *(v0 + 48);
      v79 = sub_22E709FA8();
      v80 = sub_22E709F3C();
      v90 = v80;
      *v79 = 136315138;
      *(v0 + 16) = v78;
      v81 = _Pointer.debugDescription.getter();
      v83 = sub_22E706BF8(v81, v82, &v90);

      *(v79 + 4) = v83;
      sub_22E7224D4(&dword_22E6C9000, v84, v85, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
      sub_22E6CF2F4(v80);
      sub_22E6E3CC8();
      sub_22E7099AC();
    }

LABEL_24:

    sub_22E7224B8();

    sub_22E6E3AD8();
    sub_22E709BF0();

    __asm { BRAA            X1, X16 }
  }

  v42 = v41;
  if (![v41 requestedOffset] && objc_msgSend(v42, sel_requestedLength) == 2)
  {
    v43 = *(v0 + 48);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v88 = v45;
      v47 = *(v0 + 80);
      v46 = *(v0 + 88);
      v48 = *(v0 + 72);
      v49 = *(v0 + 48);
      v50 = sub_22E709FA8();
      v89 = sub_22E709F3C();
      v90 = v89;
      *v50 = 136315138;
      v51 = [v49 request];
      static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

      sub_22E7223F4(&qword_27DA6D930, MEMORY[0x277CC8678]);
      v52 = dispatch thunk of CustomStringConvertible.description.getter();
      v54 = v53;
      (*(v47 + 8))(v46, v48);
      v55 = sub_22E706BF8(v52, v54, &v90);

      *(v50 + 4) = v55;
      _os_log_impl(&dword_22E6C9000, v44, v88, "Returning zero-filled bytes for the first two bytes of a video request %s. These two-bytes are always requested even when the payload can be served from cache.", v50, 0xCu);
      sub_22E6CF2F4(v89);
      sub_22E6E3CE4();
      sub_22E6E3CE4();
    }

    v56 = *(v0 + 48);
    v57 = sub_22E71F3F4(&unk_284338F80);
    v59 = v58;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_22E6CFBBC(v57, v59);
    [v42 respondWithData_];

    [v56 finishLoading];
    v61 = v56;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = *(v0 + 48);
      v65 = sub_22E709FA8();
      v90 = sub_22E709F3C();
      *v65 = 136315138;
      *(v0 + 32) = v64;
      v66 = _Pointer.debugDescription.getter();
      v68 = sub_22E706BF8(v66, v67, &v90);

      *(v65 + 4) = v68;
      _os_log_impl(&dword_22E6C9000, v62, v63, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with synthetic response", v65, 0xCu);
      sub_22E722484();
      sub_22E6E3CC8();
    }

    goto LABEL_24;
  }

  v69 = swift_task_alloc();
  *(v0 + 152) = v69;
  *v69 = v0;
  v69[1] = sub_22E720A88;
  v70 = *(v0 + 56);
  sub_22E709BF0();

  return sub_22E71F820(v71);
}

uint64_t sub_22E720A88()
{
  sub_22E6E3BDC();
  sub_22E6E3E08();
  v3 = *(v2 + 152);
  v4 = *v1;
  sub_22E6E3C94();
  *v5 = v4;
  *(v6 + 160) = v0;

  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_22E720B88()
{
  v17 = v0;

  v1 = *(v0 + 136);
  v2 = *(v0 + 48);
  [v2 finishLoading];
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 48);
    v7 = sub_22E709FA8();
    v8 = sub_22E709F3C();
    v16 = v8;
    *v7 = 136315138;
    *(v0 + 16) = v6;
    v9 = _Pointer.debugDescription.getter();
    v11 = sub_22E706BF8(v9, v10, &v16);

    *(v7 + 4) = v11;
    sub_22E7224D4(&dword_22E6C9000, v12, v13, "LoadingRequestHandler.handle, leaving - loadingRequest:%s");
    sub_22E6CF2F4(v8);
    sub_22E6E3CC8();
    sub_22E7099AC();
  }

  sub_22E7224B8();

  sub_22E6E3AD8();

  return v14();
}

uint64_t sub_22E720CE8()
{
  v23 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 136);
  v3 = *(v0 + 48);
  v4 = _convertErrorToNSError(_:)();
  [v3 finishLoadingWithError_];

  v5 = v3;
  v6 = v1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 160);
    v10 = *(v0 + 144);
    v11 = *(v0 + 48);
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = sub_22E709F3C();
    *v12 = 136315394;
    *(v0 + 24) = v11;
    v14 = _Pointer.debugDescription.getter();
    v16 = sub_22E706BF8(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2112;
    v17 = v9;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v18;
    *v13 = v18;
    _os_log_impl(&dword_22E6C9000, v7, v8, "LoadingRequestHandler.handle, leaving - loadingRequest:%s with error %@", v12, 0x16u);
    sub_22E7222C0(v13, &qword_27DA6CA08, &qword_22E727840);
    sub_22E6E3CE4();
    sub_22E722484();
    sub_22E7099AC();
  }

  else
  {
    v19 = *(v0 + 160);
  }

  sub_22E7224B8();

  sub_22E6E3AD8();

  return v20();
}

Swift::Bool __swiftcall LoadingRequestHandler.resourceLoader(_:shouldWaitForLoadingOfRequestedResource:)(AVAssetResourceLoader _, AVAssetResourceLoadingRequest shouldWaitForLoadingOfRequestedResource)
{
  resourceLoader = _._resourceLoader;
  v4 = sub_22E6CF1CC(&qword_27DA6C9A8, &qword_22E72C030);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-v6];
  v8 = type metadata accessor for TaskPriority();
  sub_22E6CF58C(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v2;
  v9[5] = resourceLoader;
  v10 = v2;
  v11 = resourceLoader;
  v12 = sub_22E6E1B80(0, 0, v7, &unk_22E72C360, v9);
  v13 = *&v10[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping];
  v16 = v11;
  v17 = v12;
  os_unfair_lock_lock((v13 + 24));
  sub_22E722104((v13 + 16));
  os_unfair_lock_unlock((v13 + 24));

  return 1;
}

uint64_t sub_22E721038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x277D85DE8];
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  v6 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_22E7210C8, 0, 0);
}

uint64_t sub_22E7210C8()
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(v0[3].opaque[0] + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity);
  os_unfair_lock_lock((v1 + 24));
  v0[2].opaque[1] = 0;
  v0[2].opaque[0] = 0;
  os_activity_scope_enter(*(v1 + 16), v0 + 2);
  v2 = v0[2].opaque[0];
  v3 = v0[2].opaque[1];
  os_unfair_lock_unlock((v1 + 24));
  v0[1].opaque[0] = v2;
  v0[1].opaque[1] = v3;
  v4 = swift_task_alloc();
  v0[4].opaque[0] = v4;
  *v4 = v0;
  v4[1] = sub_22E7211D4;
  v6 = v0[3].opaque[0];
  v5 = v0[3].opaque[1];
  v7 = *MEMORY[0x277D85DE8];

  return sub_22E720154(v5);
}

uint64_t sub_22E7211D4()
{
  sub_22E6E3BDC();
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*v0 + 64);
  v2 = *v0;
  sub_22E6E3C94();
  *v3 = v2;

  v4 = *MEMORY[0x277D85DE8];
  sub_22E6ECBB8();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_22E7212EC()
{
  sub_22E6E3BDC();
  v4 = *MEMORY[0x277D85DE8];
  os_activity_scope_leave(v0 + 1);
  sub_22E6E3AD8();
  v2 = *MEMORY[0x277D85DE8];

  return v1();
}

id sub_22E721370(uint64_t *a1, void *a2, uint64_t a3)
{

  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_22E715454(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

Swift::Void __swiftcall LoadingRequestHandler.resourceLoader(_:didCancel:)(AVAssetResourceLoader _, AVAssetResourceLoadingRequest didCancel)
{
  resourceLoader = _._resourceLoader;
  v28[1] = *MEMORY[0x277D85DE8];
  v4 = *(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping);
  os_unfair_lock_lock((v4 + 24));
  sub_22E722120((v4 + 16), &state);
  os_unfair_lock_unlock((v4 + 24));
  v5 = state.opaque[0];
  if (state.opaque[0])
  {
    v6 = *(v2 + OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity);
    os_unfair_lock_lock((v6 + 24));
    state.opaque[0] = 0;
    state.opaque[1] = 0;
    os_activity_scope_enter(*(v6 + 16), &state);
    v7 = state.opaque[0];
    v8 = state.opaque[1];
    os_unfair_lock_unlock((v6 + 24));
    state.opaque[0] = v7;
    state.opaque[1] = v8;
    if (qword_27DA6C488 != -1)
    {
      sub_22E72243C();
    }

    v9 = type metadata accessor for Logger();
    sub_22E6E3578(v9, qword_27DA6D900);
    v10 = resourceLoader;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = sub_22E709FA8();
      v28[0] = sub_22E709F3C();
      *v13 = 136315138;
      v14 = _Pointer.debugDescription.getter();
      v16 = sub_22E706BF8(v14, v15, v28);

      *(v13 + 4) = v16;
      _os_log_impl(&dword_22E6C9000, v11, v12, "LoadingRequestHandler.didCancel - loadingRequest:%s", v13, 0xCu);
      sub_22E722484();
      sub_22E7099AC();
    }

    MEMORY[0x2318EC740](v5, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
    os_activity_scope_leave(&state);
  }

  else
  {
    if (qword_27DA6C488 != -1)
    {
      sub_22E72243C();
    }

    v17 = type metadata accessor for Logger();
    sub_22E6E3578(v17, qword_27DA6D900);
    v18 = resourceLoader;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = sub_22E709FA8();
      v22 = sub_22E709F3C();
      state.opaque[0] = v22;
      *v21 = 136315138;
      v28[0] = v18;
      v23 = _Pointer.debugDescription.getter();
      v25 = sub_22E706BF8(v23, v24, &state);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_22E6C9000, v19, v20, "LoadingRequestHandler.didCancel - loadingRequest:%s - missing task!", v21, 0xCu);
      sub_22E6CF2F4(v22);
      sub_22E6E3CC8();
      sub_22E6E3CE4();
    }
  }

  v26 = *MEMORY[0x277D85DE8];
}

uint64_t sub_22E72173C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  if (*(*a1 + 16) && (v5 = sub_22E714C6C(a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

Swift::Bool __swiftcall LoadingRequestHandler.resourceLoader(_:shouldWaitForResponseTo:)(AVAssetResourceLoader _, NSURLAuthenticationChallenge shouldWaitForResponseTo)
{
  resourceLoader = _._resourceLoader;
  v3 = [(AVAssetResourceLoaderInternal *)_._resourceLoader sender:shouldWaitForResponseTo.super.isa];
  if (v3)
  {
    [v3 continueWithoutCredentialForAuthenticationChallenge_];
    swift_unknownObjectRelease();
  }

  return 1;
}

id LoadingRequestHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LoadingRequestHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22E721A7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, NSURL *a6@<X8>)
{
  v7 = v6;
  URL._bridgeToObjectiveC()(a6);
  v14 = v13;
  if (!a4)
  {
    v15 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v16.super.isa = 0;
    goto LABEL_6;
  }

  v15 = MEMORY[0x2318EC5C0](a3, a4);

  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_6:
  v17 = [v7 initWithURL:v14 statusCode:a2 HTTPVersion:v15 headerFields:v16.super.isa];

  v18 = type metadata accessor for URL();
  (*(*(v18 - 8) + 8))(a1, v18);
  return v17;
}

uint64_t sub_22E721B94@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = Data.InlineData.init(_:)();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x2318EC120]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x2318EC130]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

id sub_22E721C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = objc_allocWithZone(v15);
  (*(v11 + 16))(v14, a1, a5);
  v17 = sub_22E721D7C(v14, a2, a3, v16, a5, a6);
  (*(v11 + 8))(a1, a5);
  return v17;
}

uint64_t sub_22E721D2C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

id sub_22E721D7C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v11 = type metadata accessor for UTType();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v26[3] = a5;
  v26[4] = a6;
  v17 = sub_22E6DA66C(v26);
  (*(*(a5 - 8) + 32))(v17, a1, a5);
  sub_22E6E3808(v26, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_assetStreamHandle]);
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  sub_22E6E386C(v16, &a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_type]);
  sub_22E715634();
  sub_22E6CF1CC(&qword_27DA6CA40, &unk_22E72C400);
  sub_22E7223F4(&qword_27DA6CA48, sub_22E715634);
  v18 = Dictionary.init(dictionaryLiteral:)();
  sub_22E6CF1CC(&qword_27DA6CA50, &unk_22E727870);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v18;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedTaskMapping] = v19;
  if (qword_27DA6C448 != -1)
  {
    swift_once();
  }

  v20 = _os_activity_create(&dword_22E6C9000, "asset-streaming/loading-request-handler", qword_27DA6CDA0, OS_ACTIVITY_FLAG_DEFAULT);
  sub_22E6CF1CC(&qword_27DA6CA58, &unk_22E727880);
  v21 = swift_allocObject();
  *(v21 + 24) = 0;
  *(v21 + 16) = v20;
  *&a4[OBJC_IVAR____TtC10CloudAsset21LoadingRequestHandler_protectedActivity] = v21;
  v25.receiver = a4;
  v25.super_class = ObjectType;
  v22 = objc_msgSendSuper2(&v25, sel_init);
  sub_22E6CF2F4(v26);
  return v22;
}

uint64_t sub_22E722048(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  swift_task_alloc();
  sub_22E6ECB74();
  *(v2 + 16) = v8;
  *v8 = v9;
  v8[1] = sub_22E6E1F30;

  return sub_22E721038(a1, v4, v5, v7, v6);
}

uint64_t type metadata accessor for LoadingRequestHandler()
{
  result = qword_2814686B8;
  if (!qword_2814686B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22E722190()
{
  sub_22E722268();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_22E722268()
{
  if (!qword_2814681E8[0])
  {
    type metadata accessor for UTType();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_2814681E8);
    }
  }
}

uint64_t sub_22E7222C0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_22E6CF1CC(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_22E722320(uint64_t a1, uint64_t a2)
{
  v4 = sub_22E6CF1CC(&qword_27DA6CA30, &unk_22E727860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22E722390()
{
  result = qword_27DA6D940;
  if (!qword_27DA6D940)
  {
    sub_22E6CF2AC(&qword_27DA6D938, &qword_22E72C3E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D940);
  }

  return result;
}

uint64_t sub_22E7223F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22E72243C()
{

  return swift_once();
}

uint64_t sub_22E72245C(uint64_t result)
{
  *(result + 8) = sub_22E71FDE8;
  v2 = *(v1 + 72);
  v3 = *(v1 + 56);
  return result;
}

void sub_22E722484()
{
  sub_22E6CF2F4(v0);

  JUMPOUT(0x2318ED210);
}

uint64_t sub_22E7224B8()
{
  v3 = v0[15];
  v2 = v0[16];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[8];
}

void sub_22E7224D4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_22E722508(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x800000022E72D930 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x636552726F727265 && a2 == 0xED00006465766965;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x800000022E72D950 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x456E776F6E6B6E75 && a2 == 0xEF746E696F70646ELL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6C616E7265746E69 && a2 == 0xED0000726F727245)
        {

          return 4;
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_22E7226DC(char a1)
{
  result = 0x636552726F727265;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x456E776F6E6B6E75;
      break;
    case 4:
      result = 0x6C616E7265746E69;
      break;
    default:
      result = 0xD000000000000015;
      break;
  }

  return result;
}

uint64_t sub_22E7227B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22E722508(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22E7227DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22E7226D4();
  *a1 = result;
  return result;
}

uint64_t sub_22E722804(uint64_t a1)
{
  v2 = sub_22E722F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722840(uint64_t a1)
{
  v2 = sub_22E722F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E72287C(uint64_t a1)
{
  v2 = sub_22E723024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7228B8(uint64_t a1)
{
  v2 = sub_22E723024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E7228F4(uint64_t a1)
{
  v2 = sub_22E723078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722930(uint64_t a1)
{
  v2 = sub_22E723078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E72296C(uint64_t a1)
{
  v2 = sub_22E7230CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E7229A8(uint64_t a1)
{
  v2 = sub_22E7230CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E7229E4(uint64_t a1)
{
  v2 = sub_22E722F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722A20(uint64_t a1)
{
  v2 = sub_22E722F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22E722A5C(uint64_t a1)
{
  v2 = sub_22E722FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22E722A98(uint64_t a1)
{
  v2 = sub_22E722FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCError.encode(to:)(void *a1)
{
  v3 = sub_22E6CF1CC(&qword_27DA6D958, &qword_22E72C410);
  v4 = sub_22E6CF988(v3);
  v67 = v5;
  v68 = v4;
  v7 = *(v6 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v8);
  sub_22E6EB4DC();
  v66 = v9;
  v10 = sub_22E6CF1CC(&qword_27DA6D960, &qword_22E72C418);
  v11 = sub_22E6CF988(v10);
  v64 = v12;
  v65 = v11;
  v14 = *(v13 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v15);
  sub_22E6EB4DC();
  v63 = v16;
  v17 = sub_22E6CF1CC(&qword_27DA6D968, &qword_22E72C420);
  v18 = sub_22E6CF988(v17);
  v61 = v19;
  v62 = v18;
  v21 = *(v20 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v22);
  sub_22E6EB4DC();
  v60 = v23;
  v24 = sub_22E6CF1CC(&qword_27DA6D970, &qword_22E72C428);
  v25 = sub_22E6CF988(v24);
  v58 = v26;
  v59 = v25;
  v28 = *(v27 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v29);
  sub_22E6EB4DC();
  v57 = v30;
  v31 = sub_22E6CF1CC(&qword_27DA6D978, &qword_22E72C430);
  v32 = sub_22E6CF988(v31);
  v55 = v33;
  v56 = v32;
  v35 = *(v34 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v36);
  v38 = &v54 - v37;
  v39 = sub_22E6CF1CC(&qword_27DA6D980, &qword_22E72C438);
  sub_22E6CF988(v39);
  v41 = v40;
  v43 = *(v42 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v44);
  v46 = &v54 - v45;
  v47 = *v1;
  v48 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E722F28();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v49 = (v41 + 8);
  switch(v47)
  {
    case 1:
      v70 = 1;
      sub_22E723078();
      v50 = v57;
      sub_22E723F18();
      v52 = v58;
      v51 = v59;
      goto LABEL_7;
    case 2:
      v71 = 2;
      sub_22E723024();
      v50 = v60;
      sub_22E723F18();
      v52 = v61;
      v51 = v62;
      goto LABEL_7;
    case 3:
      v72 = 3;
      sub_22E722FD0();
      v50 = v63;
      sub_22E723F18();
      v52 = v64;
      v51 = v65;
      goto LABEL_7;
    case 4:
      v73 = 4;
      sub_22E722F7C();
      v50 = v66;
      sub_22E723F18();
      v52 = v67;
      v51 = v68;
LABEL_7:
      (*(v52 + 8))(v50, v51);
      break;
    default:
      v69 = 0;
      sub_22E7230CC();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v55 + 8))(v38, v56);
      break;
  }

  return (*v49)(v46, v39);
}

unint64_t sub_22E722F28()
{
  result = qword_27DA6D988;
  if (!qword_27DA6D988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D988);
  }

  return result;
}

unint64_t sub_22E722F7C()
{
  result = qword_27DA6D990;
  if (!qword_27DA6D990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D990);
  }

  return result;
}

unint64_t sub_22E722FD0()
{
  result = qword_27DA6D998;
  if (!qword_27DA6D998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D998);
  }

  return result;
}

unint64_t sub_22E723024()
{
  result = qword_27DA6D9A0;
  if (!qword_27DA6D9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9A0);
  }

  return result;
}

unint64_t sub_22E723078()
{
  result = qword_27DA6D9A8;
  if (!qword_27DA6D9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9A8);
  }

  return result;
}

unint64_t sub_22E7230CC()
{
  result = qword_27DA6D9B0;
  if (!qword_27DA6D9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9B0);
  }

  return result;
}

Swift::Int XPCError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x2318ECB90](v1);
  return Hasher._finalize()();
}

uint64_t XPCError.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v84 = a2;
  v3 = sub_22E6CF1CC(&qword_27DA6D9B8, &qword_22E72C440);
  v81 = sub_22E6CF988(v3);
  v82 = v4;
  v6 = *(v5 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v7);
  sub_22E6EB4DC();
  v87 = v8;
  v9 = sub_22E6CF1CC(&qword_27DA6D9C0, &qword_22E72C448);
  v79 = sub_22E6CF988(v9);
  v80 = v10;
  v12 = *(v11 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v13);
  sub_22E6EB4DC();
  v86 = v14;
  v15 = sub_22E6CF1CC(&qword_27DA6D9C8, &qword_22E72C450);
  v16 = sub_22E6CF988(v15);
  v77 = v17;
  v78 = v16;
  v19 = *(v18 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v20);
  sub_22E6EB4DC();
  v83 = v21;
  v22 = sub_22E6CF1CC(&qword_27DA6D9D0, &qword_22E72C458);
  v23 = sub_22E6CF988(v22);
  v75 = v24;
  v76 = v23;
  v26 = *(v25 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  v30 = sub_22E6CF1CC(&qword_27DA6D9D8, &qword_22E72C460);
  sub_22E6CF988(v30);
  v74 = v31;
  v33 = *(v32 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v34);
  v36 = &v69 - v35;
  v37 = sub_22E6CF1CC(&qword_27DA6D9E0, &unk_22E72C468);
  sub_22E6CF988(v37);
  v85 = v38;
  v40 = *(v39 + 64);
  sub_22E6D374C();
  MEMORY[0x28223BE20](v41);
  v43 = &v69 - v42;
  v44 = a1[4];
  sub_22E6CF214(a1, a1[3]);
  sub_22E722F28();
  v45 = v88;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v45)
  {
    return sub_22E6CF2F4(a1);
  }

  v72 = v30;
  v73 = v36;
  v88 = v29;
  v46 = v86;
  v47 = v87;
  v48 = v43;
  v49 = KeyedDecodingContainer.allKeys.getter();
  result = sub_22E6F376C(v49, 0);
  if (v52 == v53 >> 1)
  {
    v54 = v85;
LABEL_9:
    v63 = type metadata accessor for DecodingError();
    swift_allocError();
    v65 = v64;
    v66 = *(sub_22E6CF1CC(&qword_27DA6CD20, &qword_22E729070) + 48);
    *v65 = &type metadata for XPCError;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x277D84160], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v54 + 8))(v48, v37);
    return sub_22E6CF2F4(a1);
  }

  if (v52 >= (v53 >> 1))
  {
    __break(1u);
  }

  else
  {
    v70 = *(v51 + v52);
    v55 = sub_22E6F3764(v52 + 1);
    v57 = v56;
    v59 = v58;
    swift_unknownObjectRelease();
    v71 = v55;
    if (v57 != v59 >> 1)
    {
      v54 = v85;
      v48 = v43;
      goto LABEL_9;
    }

    v60 = v84;
    v61 = v85;
    switch(v70)
    {
      case 1:
        v90 = 1;
        sub_22E723078();
        v46 = v88;
        sub_22E723EF4();
        swift_unknownObjectRelease();
        v68 = v75;
        v67 = v76;
        goto LABEL_15;
      case 2:
        v91 = 2;
        sub_22E723024();
        v46 = v83;
        sub_22E723EF4();
        swift_unknownObjectRelease();
        v68 = v77;
        v67 = v78;
        goto LABEL_15;
      case 3:
        v92 = 3;
        sub_22E722FD0();
        sub_22E723EF4();
        swift_unknownObjectRelease();
        v67 = v79;
        v68 = v80;
LABEL_15:
        (*(v68 + 8))(v46, v67);
        break;
      case 4:
        v93 = 4;
        sub_22E722F7C();
        v55 = v43;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        swift_unknownObjectRelease();
        (*(v82 + 8))(v47, v81);
        break;
      default:
        v89 = 0;
        sub_22E7230CC();
        v62 = v73;
        sub_22E723EF4();
        swift_unknownObjectRelease();
        (*(v74 + 8))(v62, v72);
        break;
    }

    (*(v61 + 8))(v55, v37);
    *v60 = v70;
    return sub_22E6CF2F4(a1);
  }

  return result;
}

unint64_t sub_22E723858()
{
  result = qword_27DA6D9E8;
  if (!qword_27DA6D9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9E8);
  }

  return result;
}

uint64_t sub_22E7238BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
    {
      v3 = 1;
    }

    else
    {
      v3 = v2;
    }

    if (v3 == 4)
    {
      v4 = *(a1 + 1);
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_22E723944(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_22E723A74()
{
  result = qword_27DA6D9F0;
  if (!qword_27DA6D9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9F0);
  }

  return result;
}

unint64_t sub_22E723ACC()
{
  result = qword_27DA6D9F8;
  if (!qword_27DA6D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6D9F8);
  }

  return result;
}

unint64_t sub_22E723B24()
{
  result = qword_27DA6DA00;
  if (!qword_27DA6DA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA00);
  }

  return result;
}

unint64_t sub_22E723B7C()
{
  result = qword_27DA6DA08;
  if (!qword_27DA6DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA08);
  }

  return result;
}

unint64_t sub_22E723BD4()
{
  result = qword_27DA6DA10;
  if (!qword_27DA6DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA10);
  }

  return result;
}

unint64_t sub_22E723C2C()
{
  result = qword_27DA6DA18;
  if (!qword_27DA6DA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA18);
  }

  return result;
}

unint64_t sub_22E723C84()
{
  result = qword_27DA6DA20;
  if (!qword_27DA6DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA20);
  }

  return result;
}

unint64_t sub_22E723CDC()
{
  result = qword_27DA6DA28;
  if (!qword_27DA6DA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA28);
  }

  return result;
}

unint64_t sub_22E723D34()
{
  result = qword_27DA6DA30;
  if (!qword_27DA6DA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA30);
  }

  return result;
}

unint64_t sub_22E723D8C()
{
  result = qword_27DA6DA38;
  if (!qword_27DA6DA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA38);
  }

  return result;
}

unint64_t sub_22E723DE4()
{
  result = qword_27DA6DA40;
  if (!qword_27DA6DA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA40);
  }

  return result;
}

unint64_t sub_22E723E3C()
{
  result = qword_27DA6DA48;
  if (!qword_27DA6DA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA48);
  }

  return result;
}

unint64_t sub_22E723E94()
{
  result = qword_27DA6DA50;
  if (!qword_27DA6DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA50);
  }

  return result;
}

uint64_t sub_22E723EF4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E723F18()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_22E723F38()
{
  sub_22E6E3BDC();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_22E6CF1CC(&qword_27DA6C7C8, &unk_22E727340);
  v1[6] = v3;
  v4 = *(*(v3 - 8) + 64);
  v1[7] = sub_22E6E3EA4();
  v5 = *(*(sub_22E6CF1CC(&qword_27DA6CD88, &unk_22E728BE0) - 8) + 64);
  v1[8] = sub_22E6E3EA4();
  v6 = sub_22E6CF1CC(&qword_27DA6C7B8, &unk_22E727290);
  v1[9] = v6;
  v7 = *(v6 - 8);
  v1[10] = v7;
  v8 = *(v7 + 64);
  v1[11] = sub_22E6E3EA4();
  v9 = sub_22E6CF1CC(&qword_27DA6CD90, qword_22E72CA80);
  v1[12] = v9;
  v10 = *(v9 - 8);
  v1[13] = v10;
  v11 = *(v10 + 64);
  v1[14] = sub_22E6E3EA4();

  return MEMORY[0x2822009F8](sub_22E7240BC, v0, 0);
}

uint64_t sub_22E7240BC(uint64_t a1)
{
  v2 = *(*(v1 + 40) + 112);
  *(v1 + 120) = v2;
  return sub_22E6F4C34(a1, v2);
}

uint64_t sub_22E7240D8()
{
  sub_22E6E3BDC();
  v1 = v0[5];
  (*(v0[10] + 16))(v0[11], v0[15] + OBJC_IVAR____TtC10CloudAsset25AssetsDownloadCoordinator__results, v0[9]);

  return MEMORY[0x2822009F8](sub_22E724160, v1, 0);
}

uint64_t sub_22E724160()
{
  sub_22E6E3D08();
  v1 = v0[14];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = v0[5];
  MEMORY[0x2318EC7E0](v4);
  (*(v3 + 8))(v2, v4);
  v6 = sub_22E7245B8();
  v7 = *(MEMORY[0x277D858B8] + 4);
  v8 = swift_task_alloc();
  v0[16] = v8;
  *v8 = v0;
  v8[1] = sub_22E724248;
  v9 = v0[14];
  v10 = v0[12];
  v11 = v0[8];

  return MEMORY[0x2822005A8](v11, v5, v6, v10, v0 + 2);
}

uint64_t sub_22E724248()
{
  sub_22E6E3BDC();
  v3 = *(*v1 + 128);
  v2 = *v1;
  sub_22E6E3C94();
  *v4 = v2;

  v5 = *(v2 + 40);
  if (v0)
  {
    v6 = sub_22E72451C;
  }

  else
  {
    v6 = sub_22E724350;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22E724350()
{
  v1 = v0[8];
  if (sub_22E6CF550(v1, 1, v0[6]) == 1)
  {
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_22E6D0784();
    swift_allocError();
    swift_willThrow();
LABEL_5:
    v6 = v0[14];
    v7 = v0[11];
    v9 = v0[7];
    v8 = v0[8];

    sub_22E6E3AD8();
    goto LABEL_7;
  }

  sub_22E6F4678(v1, v0[7]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    v0[3] = *v0[7];
    sub_22E6CF1CC(&qword_27DA6C7C0, qword_22E726DC0);
    swift_willThrowTypedImpl();
    (*(v4 + 8))(v3, v5);
    goto LABEL_5;
  }

  v11 = v0[11];
  v13 = v0[7];
  v12 = v0[8];
  v14 = v0[4];
  (*(v4 + 8))(v0[14], v0[12]);
  sub_22E6CE328(v13, v14);

  sub_22E6E3AD8();
LABEL_7:

  return v10();
}

uint64_t sub_22E72451C()
{
  sub_22E6E3D08();
  (*(v0[13] + 8))(v0[14], v0[12]);
  v1 = v0[2];
  v2 = v0[14];
  v3 = v0[11];
  v5 = v0[7];
  v4 = v0[8];

  sub_22E6E3AD8();

  return v6();
}

unint64_t sub_22E7245B8()
{
  result = qword_27DA6DA58;
  if (!qword_27DA6DA58)
  {
    type metadata accessor for AssetDownloadCoordinator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA6DA58);
  }

  return result;
}

uint64_t sub_22E724630(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 24) = v1;
  *(v2 + 32) = v3;
  return sub_22E6F4C34(a1, v1);
}

uint64_t sub_22E72464C()
{
  sub_22E6E3BDC();
  v1 = *(v0[3] + 112);
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_22E7246E8;

  return sub_22E6D92AC(v0 + 2);
}

uint64_t sub_22E7246E8()
{
  sub_22E6E3BDC();
  v3 = *(*v1 + 40);
  v2 = *v1;
  sub_22E6E3C94();
  *v4 = v2;
  *(v2 + 48) = v0;

  if (v0)
  {
    v5 = *(v2 + 24);

    return MEMORY[0x2822009F8](sub_22E72480C, v5, 0);
  }

  else
  {
    sub_22E6E3AD8();

    return v6();
  }
}

uint64_t sub_22E72480C()
{
  sub_22E6E3AD8();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t AssetDownloadCoordinator.deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AssetDownloadCoordinator.__deallocating_deinit()
{
  v1 = *(v0 + 112);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.result()()
{
  sub_22E6E3D08();
  v3 = v2;
  v4 = *(*v0 + 104);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22E6F48E8;

  return v8(v3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.receive(signal:)()
{
  sub_22E6E3D08();
  v3 = v2;
  v4 = *(*v0 + 112);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22E6F4C30;

  return v8(v3);
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA48]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB88]();
}