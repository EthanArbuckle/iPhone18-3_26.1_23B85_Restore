uint64_t sub_1C939D510()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

size_t sub_1C939D528()
{
  v2 = *(v0 + 16) + 1;

  return sub_1C93A4F7C(0, v2, 1, v0);
}

uint64_t sub_1C939D54C()
{

  return sub_1C93A86A8(v1, v0);
}

uint64_t sub_1C939D594@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t sub_1C939D59C()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C939D624()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_1C939D634()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C939D668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v45 = a5;
  v46 = a1;
  v48 = a3;
  v49 = a4;
  v47 = a2;
  v42 = a6;
  v44 = type metadata accessor for Entitlements.Error();
  v6 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  v43 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[0] = MEMORY[0x1E69E7CC0];
  sub_1C939DC14(0, 5, 0);
  v8 = 0;
  v9 = v50[0];
  v10 = "application-identifier";
  v11 = "iner-environment";
  v12 = "nal.allow-custom-bundle-ids";
  v13 = "-authorization-ui";
  do
  {
    v14 = &unk_1C9405EC0;
    v15 = 0xD000000000000016;
    switch(byte_1F48EB7E8[v8 + 32])
    {
      case 1:
        v15 = 0xD000000000000030;
        v14 = v10;
        break;
      case 2:
        v15 = 0xD00000000000003BLL;
        v14 = v11;
        break;
      case 3:
        v15 = 0xD000000000000041;
        v14 = v12;
        break;
      case 4:
        v15 = 0xD000000000000038;
        v14 = v13;
        break;
      default:
        break;
    }

    v50[0] = v9;
    v17 = *(v9 + 16);
    v16 = *(v9 + 24);
    if (v17 >= v16 >> 1)
    {
      v40 = v11;
      v41 = v10;
      v38 = v13;
      v39 = v12;
      sub_1C939DC14((v16 > 1), v17 + 1, 1);
      v13 = v38;
      v12 = v39;
      v11 = v40;
      v10 = v41;
      v9 = v50[0];
    }

    ++v8;
    *(v9 + 16) = v17 + 1;
    v18 = v9 + 16 * v17;
    *(v18 + 32) = v15;
    *(v18 + 40) = v14 | 0x8000000000000000;
  }

  while (v8 != 5);
  v19 = v55;
  v20 = _s17CloudCoreInternal9_SecurityV12entitlements10auditToken4keysSDySSs8Sendable_pGSo0F8_token_ta_SaySSGtSo10CFErrorRefaYKF(v46, v47, v48, v49);
  if (v19)
  {

    if (qword_1EE02B450 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_1C93D9664(v21, qword_1EE02B458);
    v22 = v20;
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      type metadata accessor for CFError(0);
      sub_1C93F7530(&qword_1EE02AD70, type metadata accessor for CFError);
      swift_allocError();
      *v27 = v22;
      v28 = v22;
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v29;
      *v26 = v29;
      _os_log_impl(&dword_1C939C000, v23, v24, "Error getting entitlements for secTask: %@", v25, 0xCu);
      sub_1C93A4838(v26, &qword_1EC39B3A0, &qword_1C9404BE0);
      MEMORY[0x1CCA884B0](v26, -1, -1);
      MEMORY[0x1CCA884B0](v25, -1, -1);
    }

    *v45 = v22;
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error);
    return swift_willThrowTypedImpl();
  }

  else
  {

    result = sub_1C939E08C(v20, v43, v50);
    v31 = v50[1];
    v32 = v51;
    v33 = v52;
    v34 = v53;
    v35 = v54;
    v36 = v42;
    *v42 = v50[0];
    v36[1] = v31;
    *(v36 + 16) = v32;
    *(v36 + 17) = v33;
    *(v36 + 18) = v34;
    *(v36 + 19) = v35;
  }

  return result;
}

uint64_t _s17CloudCoreInternal12EntitlementsV10auditTokenACSo0E8_token_ta_tAC5ErrorOYKcfC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = *(*(type metadata accessor for Entitlements.Error() - 8) + 64);
  MEMORY[0x1EEE9AC00]();
  sub_1C93A59A8();
  v16 = v15 - v14;
  result = sub_1C939D668(a1, a2, a3, a4, (v15 - v14), v24);
  if (v6)
  {
    sub_1C93F7BAC();
    return sub_1C93F7630(v16, a5, v18);
  }

  else
  {
    v19 = v24[1];
    v20 = v25;
    v21 = v26;
    v22 = v27;
    v23 = v28;
    *a6 = v24[0];
    *(a6 + 8) = v19;
    *(a6 + 16) = v20;
    *(a6 + 17) = v21;
    *(a6 + 18) = v22;
    *(a6 + 19) = v23;
  }

  return result;
}

uint64_t type metadata accessor for Entitlements.Error()
{
  result = qword_1EE02BE68;
  if (!qword_1EE02BE68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1C939DC14(char *a1, int64_t a2, char a3)
{
  result = sub_1C939DC34(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C939DC34(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1C93A1890(&qword_1EC39B348, &qword_1C9403100);
    v10 = swift_allocObject();
    v11 = j__malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

id _s17CloudCoreInternal9_SecurityV12entitlements10auditToken4keysSDySSs8Sendable_pGSo0F8_token_ta_SaySSGtSo10CFErrorRefaYKF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v5 = SecTaskCreateWithAuditToken(v4, &token);
  if (!v5)
  {
    __break(1u);
  }

  v6 = v5;
  *token.val = 0;
  isa = Array._bridgeToObjectiveC()().super.isa;
  v8 = SecTaskCopyValuesForEntitlements(v6, isa, &token);

  v9 = *token.val;
  if (*token.val)
  {
    if (qword_1EE02B450 != -1)
    {
      sub_1C93DA48C();
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_1C93D9664(v10, qword_1EE02B458);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      type metadata accessor for CFError(0);
      sub_1C93F4F4C();
      sub_1C93F4D30(v16, v17);
      swift_allocError();
      *v18 = v11;
      v19 = v11;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v20;
      *v15 = v20;
      _os_log_impl(&dword_1C939C000, v12, v13, "Error getting entitlements for secTask: %@", v14, 0xCu);
      sub_1C93F4D78(v15);
      MEMORY[0x1CCA884B0](v15, -1, -1);
      MEMORY[0x1CCA884B0](v14, -1, -1);
    }

    type metadata accessor for CFError(0);
    sub_1C93F4F4C();
    sub_1C93F4D30(v21, v22);
    swift_willThrowTypedImpl();
  }

  else
  {
    if (v8)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v23 = v8;
        sub_1C93A1890(&qword_1EC39B670, &qword_1C9404BE8);
        static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
      }
    }

    sub_1C93A1890(&qword_1EC39B670, &qword_1C9404BE8);
    v11 = Dictionary.init(dictionaryLiteral:)();
  }

  v24 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t sub_1C939E08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v39 = 1;
  sub_1C939E898(0xD000000000000016, 0x80000001C9405EC0, a1, v35);
  if (!v36)
  {

    sub_1C93A4838(v35, &qword_1EC39B6B8, &qword_1C9404EA0);
    *a2 = 0;
    type metadata accessor for Entitlements.Error();
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error);
    return swift_willThrowTypedImpl();
  }

  sub_1C939EA84(v35, v37);
  sub_1C939E974(v37, v35);
  v6 = sub_1C93A1890(&qword_1EC39B670, &qword_1C9404BE8);
  v7 = MEMORY[0x1E69E6158];
  v40 = v6;
  if ((swift_dynamicCast() & 1) == 0)
  {

    *a2 = 0;
    *(a2 + 8) = v7;
    sub_1C939E974(v37, a2 + 16);
    type metadata accessor for Entitlements.Error();
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error);
    swift_willThrowTypedImpl();
    return sub_1C939EA94(v37);
  }

  v38 = v33;
  sub_1C939E898(0xD000000000000030, 0x80000001C9405EE0, a1, &v33);
  if (!v34)
  {
    v31 = a3;
    v30 = a2;
    sub_1C93A4838(&v33, &qword_1EC39B6B8, &qword_1C9404EA0);
    goto LABEL_14;
  }

  sub_1C939EA84(&v33, v35);
  sub_1C939E974(v35, &v33);
  if ((swift_dynamicCast() & 1) == 0)
  {

    *a2 = 1;
    *(a2 + 8) = v7;
    sub_1C939E974(v35, a2 + 16);
    type metadata accessor for Entitlements.Error();
LABEL_30:
    swift_storeEnumTagMultiPayload();
    sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error);
    swift_willThrowTypedImpl();
    goto LABEL_32;
  }

  v31 = a3;
  v8 = String.lowercased()();
  v9 = v8._countAndFlagsBits == 0x69746375646F7270 && v8._object == 0xEA00000000006E6FLL;
  v30 = a2;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (v8._countAndFlagsBits == 0x6D706F6C65766564 && v8._object == 0xEB00000000746E65)
    {
    }

    else
    {
      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v28 & 1) == 0)
      {

        *&v33 = 0;
        *(&v33 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(48);

        *&v33 = 0xD00000000000002ELL;
        *(&v33 + 1) = 0x80000001C9406B70;
        MEMORY[0x1CCA87780]();

        v29 = v33;
        *a2 = 1;
        *(a2 + 8) = v29;
        type metadata accessor for Entitlements.Error();
        goto LABEL_30;
      }
    }

    sub_1C939EA94(v35);

    LOBYTE(v39) = 1;
    goto LABEL_14;
  }

  sub_1C939EA94(v35);

  LOBYTE(v39) = 0;
LABEL_14:
  sub_1C93A1890(&qword_1EC39B6C0, &qword_1C9404EA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C93FDC70;
  *(inited + 32) = 2;
  *(inited + 40) = swift_getKeyPath();
  *(inited + 48) = 3;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 4;
  v12 = 0;
  *(inited + 72) = swift_getKeyPath();
  while (1)
  {
    v13 = *(inited + v12 + 32);
    v14 = *(inited + v12 + 40);
    v15 = 0x80000001C9405EC0;
    v16 = 0xD000000000000016;
    switch(v13)
    {
      case 1:
        v16 = 0xD000000000000030;
        v15 = 0x80000001C9405EE0;
        break;
      case 2:
        v16 = 0xD00000000000003BLL;
        v15 = 0x80000001C9405F20;
        break;
      case 3:
        v16 = 0xD000000000000041;
        v15 = 0x80000001C9405F60;
        break;
      case 4:
        v16 = 0xD000000000000038;
        v15 = 0x80000001C9405FB0;
        break;
      default:
        break;
    }

    if (!*(a1 + 16))
    {

      goto LABEL_27;
    }

    v17 = *(inited + v12 + 40);

    v18 = sub_1C939E8FC(v16, v15);
    v20 = v19;

    if ((v20 & 1) == 0)
    {

      goto LABEL_27;
    }

    sub_1C939E974(*(a1 + 56) + 32 * v18, &v33);
    sub_1C939EA84(&v33, v35);
    sub_1C939E974(v35, &v33);
    sub_1C93F7B6C(0, &qword_1EE02B2F0, 0x1E696AEC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1C939E974(v35, &v33);
      sub_1C93F7B6C(0, &qword_1EE02B2F8, 0x1E696AD98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }
    }

    v21 = [v32 BOOLValue];

    LOBYTE(v33) = v21;
    swift_setAtWritableKeyPath();

    sub_1C939EA94(v35);
LABEL_27:
    v12 += 16;
    if (v12 == 48)
    {
      sub_1C939EA94(v37);

      swift_setDeallocating();
      result = sub_1C939EAE0();
      v22 = *(&v38 + 1);
      v23 = v39;
      v24 = BYTE1(v39);
      v25 = BYTE2(v39);
      v26 = HIBYTE(v39);
      *v31 = v38;
      *(v31 + 8) = v22;
      *(v31 + 16) = v23;
      *(v31 + 17) = v24;
      *(v31 + 18) = v25;
      *(v31 + 19) = v26;
      return result;
    }
  }

  swift_setDeallocating();
  sub_1C939EAE0();

  *v30 = v13;
  *(v30 + 8) = MEMORY[0x1E69E6370];
  sub_1C939E974(v35, v30 + 16);
  type metadata accessor for Entitlements.Error();
  swift_storeEnumTagMultiPayload();
  sub_1C93F7530(&qword_1EE02B200, type metadata accessor for Entitlements.Error);
  swift_willThrowTypedImpl();

LABEL_32:
  sub_1C939EA94(v35);
  sub_1C939EA94(v37);
}

double sub_1C939E898@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1C939E8FC(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1C939E974(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

unint64_t sub_1C939E8FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1C939E9D0(a1, a2, v6);
}

uint64_t sub_1C939E974(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1C939E9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

_OWORD *sub_1C939EA84(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1C939EA94(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C939EAE0()
{
  v1 = *(v0 + 16);
  sub_1C93A1890(&qword_1EC39B6C8, &unk_1C9404F10);
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

__n128 sub_1C939EB44(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C939EB58(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t AuthenticatedSession.Configuration.Encryption.ServiceIdentity.payload.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1C939EBDC(v2, v3);
}

uint64_t sub_1C939EB90(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C939EBA8(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1C939EBDC(a1, a2);
  }

  return a1;
}

uint64_t AnySessionConfiguration.encryption.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  *a1 = v2;
  a1[1] = v3;
  return sub_1C939EBA8(v2, v3);
}

uint64_t AuthenticatedSession.Configuration.Encryption.serviceIdentity.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_1C939EBDC(v2, v3);
}

__n128 sub_1C939EBD0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1C939EBDC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C939EBF0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 16))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 2;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C939EC44(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1C939EC60(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C939EC84(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 2;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t AnySessionConfiguration.account.getter@<X0>(void *a1@<X8>)
{
  sub_1C939ED08();
  memcpy(v3, v4, v5);
  memcpy(a1, (v1 + 56), 0x60uLL);
  return sub_1C939EE74(v8, &v7);
}

size_t sub_1C939ED90(size_t a1)
{

  return sub_1C93A4F7C(a1, v1, 1, v2);
}

uint64_t sub_1C939EDD4()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1C939EE00()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

void sub_1C939EE4C()
{

  JUMPOUT(0x1CCA87780);
}

uint64_t sub_1C939EE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39AA60, &qword_1C93FD270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C939EEE4()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C939EF14(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 96))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C939EF68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

id AuthenticatedSession.Configuration.Account.accessGrantedVia.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1C939F004(v2, v3, v4);
}

id AuthenticatedSession.Configuration.Account.AuthorizationUI.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1C939F004(v2, v3, v4);
}

id sub_1C939F004(id result, id a2, char a3)
{
  if (a3 == 1)
  {
    return result;
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C939F07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionID(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_1C93A4810(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v8 = a1 + *(a3 + 36);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C939F168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SessionID(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v9 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v10 = a1 + *(a4 + 36);
  }

  return sub_1C93A1710(v10, a2, a2, v9);
}

uint64_t sub_1C939F330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1C93A928C(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1C939F3F8()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C939F454()
{
  if (MEMORY[0x1E69E7D58])
  {
    return sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1C939F494(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionID(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_10:

    return sub_1C93A4810(v8, a2, v7);
  }

  if (a2 != 2147483646)
  {
    v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v8 = a1 + *(a3 + 28);
    goto LABEL_10;
  }

  v9 = *(a1 + *(a3 + 24) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  v10 = v9 - 1;
  if (v10 < 0)
  {
    v10 = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1C939F580(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SessionID(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(a1 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v9 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v10 = a1 + *(a4 + 28);
  }

  return sub_1C93A1710(v10, a2, a2, v9);
}

uint64_t sub_1C939F728()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C939F784()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C939F7E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SessionID(0);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = a1;
LABEL_8:

    return sub_1C93A4810(v8, a2, v7);
  }

  if (a2 != 0x7FFFFFFF)
  {
    v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v8 = a1 + *(a3 + 36);
    goto LABEL_8;
  }

  v9 = *(a1 + *(a3 + 28) + 8);
  if (v9 >= 0xFFFFFFFF)
  {
    LODWORD(v9) = -1;
  }

  return (v9 + 1);
}

uint64_t sub_1C939F8C4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SessionID(0);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = a1;
  }

  else
  {
    if (a3 == 0x7FFFFFFF)
    {
      *(a1 + *(a4 + 28) + 8) = (a2 - 1);
      return result;
    }

    v9 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
    v10 = a1 + *(a4 + 36);
  }

  return sub_1C93A1710(v10, a2, a2, v9);
}

uint64_t sub_1C939FEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1C93A4810(a1, a2, v4);
}

uint64_t sub_1C939FEFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();

  return sub_1C93A1710(a1, a2, a2, v4);
}

uint64_t sub_1C939FFA8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = type metadata accessor for SessionID(0);
  sub_1C939ED4C(v3);
  v5 = *(v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1C939D47C();
  v11 = v10;
  v12 = *(v10 + 80);
  v14 = (v8 + v12 + 40) & ~v12;
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = type metadata accessor for UUID();
  sub_1C939D430(v16);
  (*(v17 + 8))(v0 + v6);
  sub_1C939EA94((v0 + v8));
  (*(v11 + 8))(v0 + v14, AssociatedTypeWitness);
  if (*(v0 + v15))
  {
    v18 = *(v0 + v15 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v15 + 16, v5 | v12 | 7);
}

uint64_t sub_1C93A021C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93DB02C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93A030C(uint64_t a1, uint64_t a2)
{
  sub_1C93E1AD8();
  v4 = type metadata accessor for Date();

  return sub_1C93A4810(v2, a2, v4);
}

uint64_t sub_1C93A0350(uint64_t a1, uint64_t a2)
{
  sub_1C93E1AD8();
  v4 = type metadata accessor for Date();

  return sub_1C93A1710(v2, a2, a2, v4);
}

uint64_t sub_1C93A039C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C93E1AD8();
  v7 = type metadata accessor for DeviceDate(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {
    v8 = v7;
    v9 = v3;
LABEL_10:

    return sub_1C93A4810(v9, a2, v8);
  }

  if (a2 != 2147483646)
  {
    v8 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
    v9 = v3 + *(a3 + 36);
    goto LABEL_10;
  }

  v10 = *(v3 + *(a3 + 24) + 8);
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  v11 = v10 - 1;
  if (v11 < 0)
  {
    v11 = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1C93A0484(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1C93E1AD8();
  result = type metadata accessor for DeviceDate(v8);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v11 = v4;
  }

  else
  {
    if (a3 == 2147483646)
    {
      *(v4 + *(a4 + 24) + 8) = a2;
      return result;
    }

    v10 = sub_1C93A1890(&qword_1EC39B3E0, &qword_1C9403780);
    v11 = v4 + *(a4 + 36);
  }

  return sub_1C93A1710(v11, a2, a2, v10);
}

uint64_t sub_1C93A055C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
    v9 = a1 + *(a3 + 20);

    return sub_1C93A4810(v9, a2, v8);
  }
}

uint64_t sub_1C93A05E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SessionInvalidationContext.KeySyncRequest.Reason(0);
    v8 = v5 + *(a4 + 20);

    return sub_1C93A1710(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C93A06F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for OSLogPrivacy();
    v9 = a1 + *(a3 + 24);

    return sub_1C93A4810(v9, a2, v8);
  }
}

uint64_t sub_1C93A0778(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for OSLogPrivacy();
    v8 = v5 + *(a4 + 24);

    return sub_1C93A1710(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1C93A0860(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for CloudCoreThrowingStream.Iterator();

  return swift_getWitnessTable();
}

uint64_t sub_1C93A08AC()
{
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = *(v0 + 4);
  sub_1C939D618();
  v4 = *(type metadata accessor for CloudCoreThrowingStream.Continuation() - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v8 = type metadata accessor for AsyncThrowingStream.Continuation();
  sub_1C939D430(v8);
  (*(v9 + 8))(&v0[v6]);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v7, v5 | 7);
}

uint64_t sub_1C93A09A0()
{
  v1 = *(v0 + 48);

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

__n128 sub_1C93A09EC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_1C93A0A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v6 = type metadata accessor for AsyncThrowingStream.Continuation();

  return sub_1C93A4810(a1, a2, v6);
}

uint64_t sub_1C93A0A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C93E5F20();
  v7 = type metadata accessor for AsyncThrowingStream.Continuation();

  return sub_1C93A1710(a1, a2, a2, v7);
}

uint64_t sub_1C93A0B74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);

  return sub_1C93A4810(a1, a2, v4);
}

uint64_t sub_1C93A0BC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);

  return sub_1C93A1710(a1, a2, a2, v4);
}

uint64_t sub_1C93A0C58()
{
  v2 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  sub_1C939EE34(v2);
  v4 = v3;
  v5 = *(v3 + 80);
  v6 = (v5 + 40) & ~v5;
  v8 = *(v7 + 64);
  v9 = *(v1 + 16);
  swift_unknownObjectRelease();
  (*(v4 + 8))(v1 + v6, v0);

  return MEMORY[0x1EEE6BDD0](v1, v6 + v8, v5 | 7);
}

uint64_t sub_1C93A0D18()
{
  v1 = *(v0 + 4);
  sub_1C93B27AC(&qword_1EC39B3B0, "T8");
  sub_1C939D618();
  v2 = *(type metadata accessor for Task.CancelHandle() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 5);

  v8 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  (*(*(v8 - 8) + 8))(&v0[v4], v8);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1C93A0E24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C93A0E64(uint64_t *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for ExponentialBackoff.State();
  return type metadata accessor for Mutex();
}

uint64_t sub_1C93A0EEC()
{
  v1 = sub_1C93A1890(&qword_1EC39B5E0, &qword_1C9404A30);
  sub_1C939D47C();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + v7, v4 | 7);
}

uint64_t sub_1C93A0FB4()
{
  v1 = sub_1C93A1890(&qword_1EC39B5F8, qword_1C9404A00);
  sub_1C939ED4C(v1);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v6 = *(v5 + 64);
  v7 = *(v0 + 16);
  swift_unknownObjectRelease();
  v8 = *(v0 + 32);

  v9 = sub_1C93A1890(&qword_1EC39B5D0, &qword_1C9404AB0);
  sub_1C939D430(v9);
  (*(v10 + 8))(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v6, v3 | 7);
}

uint64_t sub_1C93A1098()
{
  swift_weakDestroy();
  sub_1C93F4654();

  return MEMORY[0x1EEE6BDD0](v0, v1, v2);
}

uint64_t sub_1C93A10D0(__int128 *a1)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  v2 = *a1;
  v3 = a1[1];
  type metadata accessor for ExponentialNetworkBackoff.State();
  return type metadata accessor for Mutex();
}

uint64_t sub_1C93A112C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);

  return sub_1C93A4810(a1, a2, v4);
}

uint64_t sub_1C93A1180(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39B628, &qword_1C9404A88);

  return sub_1C93A1710(a1, a2, a2, v4);
}

uint64_t sub_1C93A12EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);
  v5 = sub_1C93A4810(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C93A1340(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);

  return sub_1C93A1710(a1, v5, a3, v6);
}

uint64_t sub_1C93A1478(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C93A14F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C93A152C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A14CC();
  *a1 = result & 1;
  return result;
}

uint64_t AnySessionAcquiredInfo.init(sessionID:privilegedInfoHash:user:userPersonaUniqueString:keySyncRequestIdentityPublicKeyIDHash:previousInvalidationContext:serviceName:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, __int128 *a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v34 = a3[2];
  v33 = *(a3 + 6);
  v37 = *a6;
  v36 = *(a6 + 2);
  v15 = type metadata accessor for AnySessionAcquiredInfo();
  sub_1C93A5A20(v15);
  v17 = (a8 + v16);
  v19 = a8 + v18;
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0xF000000000000000;
  v21 = *(v20 + 36);
  type metadata accessor for SessionInvalidationContext(0);
  v31 = a3[1];
  v32 = *a3;
  sub_1C93A5B90();
  sub_1C93A1710(v22, v23, v24, v25);
  v26 = (a8 + v15[10]);
  sub_1C93A594C();
  sub_1C93A5068();
  v27 = (a8 + v15[5]);
  *v27 = a1;
  v27[1] = a2;
  v28 = v10[5];
  v29 = v10[6];
  sub_1C93A1738(*v10, v10[1], v10[2], v10[3], v10[4]);
  *v10 = v32;
  *(v10 + 1) = v31;
  *(v10 + 2) = v34;
  v10[6] = v33;
  *v17 = a4;
  v17[1] = a5;
  sub_1C93A17AC(*v19, *(v19 + 8), *(v19 + 16));
  *v19 = v37;
  *(v19 + 16) = v36;
  result = sub_1C93A1820(a7, a8 + v21);
  *v26 = a9;
  v26[1] = a10;
  return result;
}

uint64_t type metadata accessor for AnySessionAcquiredInfo()
{
  result = qword_1EE02C4F8;
  if (!qword_1EE02C4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93A1738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_1C93A1798(a4, a5);
  }

  return result;
}

uint64_t sub_1C93A1798(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

void sub_1C93A17AC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    sub_1C93A17C8(a2, a3);
  }
}

uint64_t sub_1C93A17C8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1C93A1820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93A1890(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t AnySessionAcquiredInfo.privilegedInfoHash.getter()
{
  v1 = (v0 + *(type metadata accessor for AnySessionAcquiredInfo() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1C93A5A40();
  sub_1C93A1988(v4, v5);
  return sub_1C93A5A40();
}

uint64_t sub_1C93A1988(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t AnySessionAcquiredInfo.privilegedInfoHash.setter()
{
  v3 = v1 + *(sub_1C93A5B0C() + 20);
  result = sub_1C93A17C8(*v3, *(v3 + 8));
  *v3 = v2;
  *(v3 + 8) = v0;
  return result;
}

uint64_t AnySessionAcquiredInfo.privilegedInfoHash.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnySessionAcquiredInfo() + 20);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.user.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnySessionAcquiredInfo() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v10;

  return sub_1C93A1ABC(v4, v5, v6, v7, v8);
}

uint64_t sub_1C93A1ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {

    sub_1C93A1B1C(a4, a5);
  }

  return result;
}

uint64_t sub_1C93A1B1C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
  }

  return result;
}

__n128 AnySessionAcquiredInfo.user.setter(__n128 *a1)
{
  v9 = a1[2];
  v3 = a1[3].n128_u64[0];
  v4 = (v1 + *(type metadata accessor for AnySessionAcquiredInfo() + 24));
  v5 = v4[2].n128_u64[1];
  v6 = v4[3].n128_u64[0];
  sub_1C93A1738(v4->n128_u64[0], v4->n128_i64[1], v4[1].n128_i64[0], v4[1].n128_i64[1], v4[2].n128_u64[0]);
  v7 = a1[1];
  *v4 = *a1;
  v4[1] = v7;
  result = v9;
  v4[2] = v9;
  v4[3].n128_u64[0] = v3;
  return result;
}

uint64_t AnySessionAcquiredInfo.user.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnySessionAcquiredInfo() + 24);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.userPersonaUniqueString.getter()
{
  v1 = (v0 + *(type metadata accessor for AnySessionAcquiredInfo() + 28));
  v2 = *v1;
  v3 = v1[1];

  return sub_1C93A5A40();
}

uint64_t AnySessionAcquiredInfo.userPersonaUniqueString.setter()
{
  v3 = (v1 + *(sub_1C93A5B0C() + 28));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AnySessionAcquiredInfo.userPersonaUniqueString.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnySessionAcquiredInfo() + 28);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AnySessionAcquiredInfo() + 32));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;

  return sub_1C93A1CEC(v4, v5, v6);
}

uint64_t sub_1C93A1CEC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_1C93A1988(a2, a3);
  }

  return result;
}

__n128 AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1 + *(type metadata accessor for AnySessionAcquiredInfo() + 32);
  sub_1C93A17AC(*v3, *(v3 + 8), *(v3 + 16));
  result = v5;
  *v3 = v5;
  *(v3 + 16) = v2;
  return result;
}

uint64_t AnySessionAcquiredInfo.keySyncRequestIdentityPublicKeyIDHash.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnySessionAcquiredInfo() + 32);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.previousInvalidationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnySessionAcquiredInfo() + 36);

  return sub_1C93A1DE4(v3, a1);
}

uint64_t sub_1C93A1DE4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AnySessionAcquiredInfo.previousInvalidationContext.setter()
{
  sub_1C93A59DC();
  v2 = v1 + *(type metadata accessor for AnySessionAcquiredInfo() + 36);

  return sub_1C93A1820(v0, v2);
}

uint64_t AnySessionAcquiredInfo.previousInvalidationContext.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnySessionAcquiredInfo() + 36);
  return sub_1C93A5AA4();
}

uint64_t AnySessionAcquiredInfo.serviceName.getter()
{
  v1 = (v0 + *(type metadata accessor for AnySessionAcquiredInfo() + 40));
  v2 = *v1;
  v3 = v1[1];

  return sub_1C93A5A40();
}

uint64_t AnySessionAcquiredInfo.serviceName.setter()
{
  v3 = (v1 + *(sub_1C93A5B0C() + 40));
  v4 = v3[1];

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t AnySessionAcquiredInfo.serviceName.modify()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnySessionAcquiredInfo() + 40);
  return sub_1C93A5AA4();
}

void static AnySessionAcquiredInfo.== infix(_:_:)()
{
  sub_1C93A5B40();
  v2 = sub_1C93A59E8();
  v3 = type metadata accessor for SessionInvalidationContext(v2);
  v4 = sub_1C939D430(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v7);
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v157 - v11;
  v13 = sub_1C93A1890(&qword_1EC39A9F8, &qword_1C93FCE08);
  sub_1C939D430(v13);
  v15 = *(v14 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v16);
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_11;
  }

  v17 = type metadata accessor for AnySessionAcquiredInfo();
  if ((MEMORY[0x1CCA874A0](*(v1 + *(v17 + 20)), *(v1 + *(v17 + 20) + 8), *(v0 + *(v17 + 20)), *(v0 + *(v17 + 20) + 8)) & 1) == 0)
  {
    goto LABEL_11;
  }

  v162 = v13;
  v163 = v3;
  v161 = v12;
  v167 = v17;
  v18 = *(v17 + 24);
  v165 = v1;
  v19 = *(v1 + v18);
  v20 = *(v1 + v18 + 8);
  v21 = *(v1 + v18 + 16);
  v22 = *(v1 + v18 + 24);
  v23 = *(v1 + v18 + 32);
  v24 = *(v1 + v18 + 40);
  v25 = *(v1 + v18 + 48);
  v166 = v0;
  v26 = (v0 + v18);
  v27 = *v26;
  v28 = v26[1];
  v29 = v26[2];
  v30 = v26[3];
  v32 = v26[4];
  v31 = v26[5];
  v33 = v26[6];
  v170 = v31;
  v171 = v33;
  v168 = v22;
  v169 = v21;
  v172 = v19;
  if (!v20)
  {
    sub_1C93A5BA8();
    *(v51 - 256) = v24;
    sub_1C93A1ABC(v52, v53, v54, v55, v56);
    if (!v28)
    {
      sub_1C93A5BC8();
      sub_1C93A1ABC(v27, 0, v29, v30, v32);
      sub_1C93A5BA8();
      v74 = *(v73 - 256);
      sub_1C93A1738(v75, v76, v77, v78, v79);
      goto LABEL_13;
    }

    v57 = v27;
    sub_1C93A5A4C(v27, v28);
LABEL_10:
    sub_1C93A5BA8();
    v67 = *(v66 - 256);
    sub_1C93A1738(v68, v69, v70, v71, v72);
    sub_1C93A1738(v57, v28, v167, v30, v27);
    goto LABEL_11;
  }

  v179[0] = v19;
  v179[1] = v20;
  v179[2] = v21;
  v180 = v22;
  v181 = v23;
  v182 = v24;
  v183 = v25;
  if (!v28)
  {
    sub_1C93A1ABC(v19, v20, v21, v22, v23);
    v158 = v27;
    sub_1C93A5A4C(v27, 0);
    sub_1C93A5BA8();
    *(v58 - 256) = v24;
    v57 = v158;
    sub_1C93A1ABC(v59, v60, v61, v62, v63);

    v64 = sub_1C93A5ADC();
    sub_1C93A1798(v64, v65);

    goto LABEL_10;
  }

  sub_1C93A5BC8();
  v173[0] = v27;
  v173[1] = v28;
  v174 = v29 & 1;
  v175 = v30;
  v176 = v32;
  v177 = v170;
  v178 = v171;
  v164 = v28;
  v160 = v23;
  sub_1C93A1ABC(v35, v20, v34, v36, v23);
  sub_1C93A1ABC(v27, v164, v29, v30, v32);
  sub_1C93A5B9C();
  v37 = v160;
  sub_1C93A1ABC(v38, v39, v40, v41, v160);
  v42 = static AuthenticatedSession.ResolvedUser.== infix(_:_:)(v179, v173);
  v44 = v175;
  v43 = v176;

  sub_1C93A1798(v44, v43);

  v45 = v180;
  v46 = v181;

  sub_1C93A1798(v45, v46);

  sub_1C93A5B9C();
  sub_1C93A1738(v47, v48, v49, v50, v37);
  if (!v42)
  {
    goto LABEL_11;
  }

LABEL_13:
  v80 = v166;
  v81 = v167;
  v82 = v167[7];
  v83 = v165;
  sub_1C93A5BDC();
  if (v84)
  {
    if (!v85)
    {
      goto LABEL_11;
    }

    v88 = *v86 == *v87 && v84 == v85;
    if (!v88 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v85)
  {
    goto LABEL_11;
  }

  v89 = v81[8];
  v91 = *(v83 + v89);
  v90 = *(v83 + v89 + 8);
  v92 = *(v83 + v89 + 16);
  v93 = (v80 + v89);
  v95 = *v93;
  v94 = v93[1];
  v96 = v93[2];
  if (v92 >> 60 == 15)
  {
    v97 = sub_1C939ECF8();
    sub_1C93A1CEC(v97, v98, v99);
    v100 = sub_1C93A58F0();
    sub_1C93A1CEC(v100, v101, v102);
    if (v96 >> 60 == 15)
    {
      v103 = sub_1C939ECF8();
      sub_1C93A17AC(v103, v104, v105);
      goto LABEL_25;
    }

    goto LABEL_32;
  }

  v109 = sub_1C939ECF8();
  if (v112 > 0xE)
  {
    sub_1C93A1CEC(v109, v110, v111);
    v113 = sub_1C93A58F0();
    sub_1C93A1CEC(v113, v114, v115);
    v116 = sub_1C939ECF8();
    sub_1C93A1CEC(v116, v117, v118);
    v119 = sub_1C93A5ADC();
    sub_1C93A17C8(v119, v120);
LABEL_32:
    v121 = sub_1C939ECF8();
    sub_1C93A17AC(v121, v122, v123);
    v124 = sub_1C93A58F0();
LABEL_33:
    sub_1C93A17AC(v124, v125, v126);
    goto LABEL_11;
  }

  sub_1C93A1CEC(v109, v110, v111);
  if (v91 != v95)
  {
    v138 = sub_1C93A58F0();
    sub_1C93A1CEC(v138, v139, v140);
    v141 = sub_1C939ECF8();
    sub_1C93A1CEC(v141, v142, v143);
    v144 = sub_1C93A58F0();
    sub_1C93A17AC(v144, v145, v146);
    v147 = sub_1C93A5ADC();
    sub_1C93A17C8(v147, v148);
    v124 = sub_1C939ECF8();
    goto LABEL_33;
  }

  sub_1C93A1CEC(v91, v94, v96);
  v127 = sub_1C939ECF8();
  sub_1C93A1CEC(v127, v128, v129);
  v130 = sub_1C93A5ADC();
  v131 = MEMORY[0x1CCA874A0](v130);
  sub_1C93A17AC(v91, v94, v96);
  v132 = sub_1C93A5ADC();
  sub_1C93A17C8(v132, v133);
  v134 = sub_1C939ECF8();
  sub_1C93A17AC(v134, v135, v136);
  if ((v131 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_25:
  v106 = v81[9];
  v107 = *(v162 + 48);
  v108 = v159;
  sub_1C93A1DE4(v83 + v106, v159);
  sub_1C93A1DE4(v80 + v106, v108 + v107);
  sub_1C93A5C10(v108, 1);
  if (!v88)
  {
    sub_1C93A1DE4(v108, v161);
    sub_1C93A5C10(v108 + v107, 1);
    if (!v137)
    {
      sub_1C93A5964();
      sub_1C93A5068();
      static SessionInvalidationContext.== infix(_:_:)();
      v150 = v149;
      sub_1C93A4B68();
      sub_1C93A4B68();
      sub_1C93A4838(v108, &qword_1EC39A9F0, &qword_1C93FCE00);
      if ((v150 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_43;
    }

    sub_1C93A58C0();
    sub_1C93A4B68();
LABEL_40:
    sub_1C93A4838(v108, &qword_1EC39A9F8, &qword_1C93FCE08);
    goto LABEL_11;
  }

  sub_1C93A5C10(v108 + v107, 1);
  if (!v88)
  {
    goto LABEL_40;
  }

  sub_1C93A4838(v108, &qword_1EC39A9F0, &qword_1C93FCE00);
LABEL_43:
  v151 = v81[10];
  sub_1C93A5BDC();
  if (v152 && v153 && (*v154 != *v155 || v152 != v153))
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
  }

LABEL_11:
  sub_1C93A5B58();
}

uint64_t sub_1C93A2670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9405FF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1919251317 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000017 && 0x80000001C9406060 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000025 && 0x80000001C9406030 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001BLL && 0x80000001C9406010 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x4E65636976726573 && a2 == 0xEB00000000656D61)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int sub_1C93A28B8(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](a1);
  return Hasher._finalize()();
}

unint64_t sub_1C93A290C(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 1919251317;
      break;
    case 3:
      v3 = 5;
      goto LABEL_7;
    case 4:
      result = 0xD000000000000025;
      break;
    case 5:
      v3 = 9;
LABEL_7:
      result = v3 | 0xD000000000000012;
      break;
    case 6:
      result = 0x4E65636976726573;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int sub_1C93A29FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](v1);
  return Hasher._finalize()();
}

uint64_t sub_1C93A2A48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93A2670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93A2A90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A28B0();
  *a1 = result;
  return result;
}

uint64_t sub_1C93A2AB8(uint64_t a1)
{
  v2 = sub_1C93A48D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93A2AF4(uint64_t a1)
{
  v2 = sub_1C93A48D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnySessionAcquiredInfo.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AA00, &qword_1C93FCE10);
  sub_1C939D44C(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - v9;
  v11 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93A48D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v32) = 0;
  type metadata accessor for SessionID(0);
  sub_1C93A5934();
  sub_1C93A4A24(v12, v13);
  sub_1C93A5B9C();
  sub_1C93A5A14();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v14 = type metadata accessor for AnySessionAcquiredInfo();
    v32 = sub_1C93A5AD0(v14[5]);
    v33 = v15;
    v39 = 1;
    sub_1C93A1988(v32, v15);
    sub_1C93A4928();
    sub_1C93A5900();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v32, v33);
    v16 = sub_1C93A5AD0(v14[6]);
    v18 = v17[2];
    v19 = v17[3];
    v20 = v17[4];
    v21 = v17[5];
    v22 = v17[6];
    v32 = v16;
    v33 = v23;
    v34 = v18;
    v35 = v19;
    v36 = v20;
    v37 = v21;
    v38 = v22;
    v39 = 2;
    sub_1C93A1ABC(v16, v23, v18, v19, v20);
    sub_1C93A497C();
    sub_1C93A5900();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A5BF0();
    sub_1C93A5AD0(v14[7]);
    LOBYTE(v32) = 3;
    sub_1C93A5A14();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = sub_1C93A5AD0(v14[8]);
    v26 = *(v25 + 16);
    v32 = v24;
    v33 = v27;
    v34 = v26;
    v39 = 4;
    sub_1C93A1CEC(v24, v27, v26);
    sub_1C93A49D0();
    sub_1C93A5900();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A17AC(v32, v33, v34);
    v28 = v14[9];
    LOBYTE(v32) = 5;
    type metadata accessor for SessionInvalidationContext(0);
    sub_1C93A597C();
    sub_1C93A4A24(v29, v30);
    sub_1C93A5B9C();
    sub_1C93A5A14();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A5AD0(v14[10]);
    LOBYTE(v32) = 6;
    sub_1C93A5A14();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v10, v3);
}

void AnySessionAcquiredInfo.hash(into:)()
{
  sub_1C93A5B40();
  v2 = sub_1C93A59DC();
  v3 = type metadata accessor for SessionInvalidationContext(v2);
  v4 = sub_1C939D430(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  sub_1C93A59A8();
  v7 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v7);
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A5B7C();
  type metadata accessor for UUID();
  sub_1C93A4A24(&qword_1EC39AA08, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v11 = type metadata accessor for AnySessionAcquiredInfo();
  v12 = (v0 + v11[5]);
  v13 = *v12;
  v14 = v12[1];
  Data.hash(into:)();
  v15 = (v0 + v11[6]);
  if (!v15[1])
  {
    goto LABEL_13;
  }

  v30 = v3;
  v16 = v15[4];
  v17 = v15[6];
  v18 = v15[2];
  v28 = v15[3];
  v29 = v15[5];
  v19 = *v15;
  sub_1C93A5AF4();
  sub_1C939D460();
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v18 & 1);
  switch(v16)
  {
    case 0:
      v20 = 0;
      goto LABEL_9;
    case 1:
      v20 = 1;
      goto LABEL_9;
    case 2:
      v20 = 3;
LABEL_9:
      MEMORY[0x1CCA87E40](v20);
      goto LABEL_11;
  }

  MEMORY[0x1CCA87E40](2);
  String.hash(into:)();
LABEL_11:
  v3 = v30;
  if (v17)
  {
    sub_1C93A5AF4();
    String.hash(into:)();
    goto LABEL_14;
  }

LABEL_13:
  sub_1C93A5B28();
LABEL_14:
  v21 = (v0 + v11[7]);
  if (v21[1])
  {
    v22 = *v21;
    sub_1C93A5AF4();
    sub_1C939D460();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  v23 = (v0 + v11[8]);
  if (v23[2] >> 60 == 15)
  {
    sub_1C93A5B28();
  }

  else
  {
    v25 = *v23;
    v24 = v23[1];
    sub_1C93A5AF4();
    MEMORY[0x1CCA87E60](v25);
    sub_1C939D460();
    Data.hash(into:)();
  }

  sub_1C93A1DE4(v0 + v11[9], v1);
  if (sub_1C93A4810(v1, 1, v3) == 1)
  {
    sub_1C93A5B28();
  }

  else
  {
    sub_1C93A5964();
    sub_1C93A5068();
    sub_1C93A5AF4();
    SessionInvalidationContext.hash(into:)();
    sub_1C93A58C0();
    sub_1C93A4B68();
  }

  v26 = (v0 + v11[10]);
  if (v26[1])
  {
    v27 = *v26;
    sub_1C93A5AF4();
    sub_1C939D460();
    String.hash(into:)();
  }

  else
  {
    sub_1C93A5B28();
  }

  sub_1C93A5B58();
}

Swift::Int AnySessionAcquiredInfo.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnySessionAcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnySessionAcquiredInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v4);
  v6 = *(v5 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v70 - v8;
  v10 = type metadata accessor for SessionID(0);
  v11 = sub_1C939D430(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C93A59A8();
  *&v75 = v15 - v14;
  v76 = sub_1C93A1890(&qword_1EC39AA10, &qword_1C93FCE18);
  sub_1C939D44C(v76);
  v74 = v16;
  v18 = *(v17 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v19);
  sub_1C93A5B7C();
  v20 = type metadata accessor for AnySessionAcquiredInfo();
  v21 = sub_1C939D430(v20);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  sub_1C93A59A8();
  v26 = v25 - v24;
  v28 = v25 - v24 + *(v27 + 24);
  sub_1C93A5994();
  v30 = (v26 + v29[8]);
  *v30 = 0;
  v30[1] = 0;
  v80 = v30;
  v30[2] = 0xF000000000000000;
  v77 = v29;
  v31 = v29[9];
  v32 = type metadata accessor for SessionInvalidationContext(0);
  v81 = v31;
  v33 = v26;
  sub_1C93A5B90();
  sub_1C93A1710(v34, v35, v36, v32);
  v38 = a1[3];
  v37 = a1[4];
  v82 = a1;
  sub_1C93A4890(a1, v38);
  sub_1C93A48D4();
  v78 = v2;
  v39 = v79;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v39)
  {
    v43 = v80;
    sub_1C939EA94(v82);
    v49 = v81;
    v44 = sub_1C93A5BB4();
    sub_1C93A1738(v44, v45, v46, v47, v48);

    sub_1C93A17AC(*v43, v43[1], v43[2]);
    return sub_1C93A4838(v33 + v49, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    v72 = v32;
    v79 = v9;
    v40 = v74;
    LOBYTE(v83) = 0;
    sub_1C93A5934();
    sub_1C93A4A24(v41, v42);
    sub_1C93A5AE8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1C93A594C();
    sub_1C93A5068();
    v87 = 1;
    sub_1C93A4A6C();
    sub_1C93A59C8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v80;
    *(v33 + v77[5]) = v83;
    v87 = 2;
    sub_1C93A4AC0();
    sub_1C93A59C8();
    sub_1C93A5AE8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v75 = v85;
    v51 = v86;
    v52 = sub_1C93A5BB4();
    v71 = v83;
    v70 = v84;
    sub_1C93A1738(v52, v53, v54, v55, v56);
    v57 = v70;
    *v28 = v71;
    *(v28 + 16) = v57;
    *(v28 + 32) = v75;
    *(v28 + 48) = v51;
    LOBYTE(v83) = 3;
    sub_1C93A5AE8();
    v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v59 = (v33 + v77[7]);
    *v59 = v58;
    v59[1] = v60;
    v87 = 4;
    sub_1C93A4B14();
    sub_1C93A59C8();
    sub_1C93A5AE8();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v61 = v81;
    v75 = v83;
    v62 = v84;
    sub_1C93A17AC(*v50, v50[1], v50[2]);
    *v50 = v75;
    v50[2] = v62;
    LOBYTE(v83) = 5;
    sub_1C93A597C();
    sub_1C93A4A24(v63, v64);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1C93A1820(v79, v33 + v61);
    LOBYTE(v83) = 6;
    sub_1C93A5AE8();
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v67 = v66;
    v68 = (v33 + v77[10]);
    (*(v40 + 8))(v78, v76);
    *v68 = v65;
    v68[1] = v67;
    sub_1C93A50BC();
    sub_1C939EA94(v82);
    return sub_1C93A4B68();
  }
}

Swift::Int sub_1C93A3734()
{
  Hasher.init(_seed:)();
  AnySessionAcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

void AnySessionAcquiredInfo.propertyDescriptions.getter()
{
  sub_1C93A5B40();
  v1 = v0;
  v2 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v2);
  v4 = *(v3 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v5);
  v123 = &v115 - v6;
  v124 = type metadata accessor for SessionInvalidationContext(0);
  v7 = sub_1C939D430(v124);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C93A59B8();
  v119 = v10 - v11;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v12);
  sub_1C93A5B70();
  v120 = v13;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v14);
  v126 = &v115 - v15;
  v16 = type metadata accessor for PropertyDescription();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C93A59B8();
  v125 = (v19 - v20);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v21);
  sub_1C93A5B70();
  v122 = v22;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C93A5B70();
  v121 = v24;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v25);
  sub_1C93A5B70();
  v128 = v26;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v27);
  v118 = (&v115 - v28);
  v29 = type metadata accessor for OSLogPrivacy();
  v30 = sub_1C93A5A08(v29);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1C93A59B8();
  v35 = v33 - v34;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v115 - v37;
  v39 = type metadata accessor for SessionID(0);
  v40 = sub_1C939D430(v39);
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v40);
  sub_1C93A59B8();
  MEMORY[0x1EEE9AC00](v43);
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v44 = *(v17 + 72);
  v45 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v132 = v44;
  v130 = (v45 + v44);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1C93FCDF0;
  v131 = v45;
  v47 = (v46 + v45);
  sub_1C93A50BC();
  static OSLogPrivacy.auto.getter();
  sub_1C93A50BC();
  v48 = String.init<A>(describing:)();
  v50 = v49;
  sub_1C93A58A8();
  sub_1C93A50BC();
  v51 = *(v16 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A5890();
  sub_1C93A4B68();
  *v47 = 0x496E6F6973736573;
  v47[1] = 0xE900000000000044;
  v47[2] = v48;
  v47[3] = v50;
  sub_1C93A5878();
  v52 = v1;
  sub_1C93A4BBC();
  sub_1C93A5918();
  sub_1C93A4B68();
  v53 = type metadata accessor for AnySessionAcquiredInfo();
  v54 = v1 + v53[5];
  v55 = sub_1C93A41A4(*v54, *(v54 + 8));
  v133 = v35;
  v134 = v16;
  v129 = v53;
  if (!v55)
  {
    v56 = *v54;
    v57 = *(v54 + 8);
    static OSLogPrivacy.auto.getter();
    v135 = v56;
    v136 = v57;
    sub_1C93A1988(v56, v57);
    v58 = String.init<A>(describing:)();
    v60 = v59;
    sub_1C93A58A8();
    sub_1C93A50BC();
    v61 = *(v16 + 24);
    v62 = v118;
    static OSLogPrivacy.auto.getter();
    sub_1C93A5890();
    sub_1C93A4B68();
    *v62 = 0xD000000000000012;
    v62[1] = 0x80000001C9405FF0;
    v53 = v129;
    v62[2] = v58;
    v62[3] = v60;
    sub_1C93A5878();
    sub_1C93A4BBC();
    v46 = sub_1C93A4F7C(1uLL, 2, 1, v46);
    *(v46 + 16) = 2;
    sub_1C939D418();
    sub_1C93A5068();
  }

  v130 = v38;
  v63 = (v1 + v53[6]);
  v64 = v63[1];
  v127 = v1;
  if (v64)
  {
    v65 = v63[6];
    v117 = v63[5];
    v66 = v117;
    v67 = v63[3];
    v68 = v63[4];
    v118 = v63[2];
    v69 = v118;
    v70 = *v63;

    sub_1C93A1B1C(v67, v68);

    static OSLogPrivacy.auto.getter();
    v135 = v70;
    v136 = v64;
    LOBYTE(v137) = v69 & 1;
    v138 = v67;
    v139 = v68;
    v140 = v66;
    v141 = v65;

    sub_1C93A1B1C(v67, v68);

    v116 = String.init<A>(describing:)();
    v115 = v71;
    sub_1C93A58A8();
    sub_1C93A50BC();
    v72 = *(v134 + 24);
    v73 = v46;
    v74 = v128;
    static OSLogPrivacy.auto.getter();
    sub_1C93A1738(v70, v64, v118, v67, v68);
    sub_1C93A5890();
    sub_1C93A4B68();
    *v74 = 1919251317;
    v74[1] = 0xE400000000000000;
    v75 = v115;
    v74[2] = v116;
    v74[3] = v75;
    sub_1C93A5878();
    v46 = v73;
    sub_1C93A4BBC();
    v76 = *(v73 + 24);
    if (*(v73 + 16) >= v76 >> 1)
    {
      v46 = sub_1C93A5A88(v76 > 1);
    }

    v77 = v121;
    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068();
    v78 = v134;
    v52 = v127;
    v53 = v129;
  }

  else
  {
    v78 = v134;
    v77 = v121;
  }

  v79 = (v52 + v53[7]);
  v80 = v79[1];
  if (v80)
  {
    v81 = *v79;
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.public.getter();
    v135 = v81;
    v136 = v80;
    v82 = String.init<A>(describing:)();
    v84 = v83;
    sub_1C93A58A8();
    sub_1C93A50BC();
    v85 = *(v78 + 24);
    static OSLogPrivacy.auto.getter();

    sub_1C93A5890();
    sub_1C93A4B68();
    *v77 = 0xD000000000000017;
    v77[1] = 0x80000001C9406060;
    v77[2] = v82;
    v77[3] = v84;
    sub_1C93A5878();
    sub_1C93A4BBC();
    v86 = *(v46 + 24);
    if (*(v46 + 16) >= v86 >> 1)
    {
      v46 = sub_1C93A5A88(v86 > 1);
    }

    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068();
    v53 = v129;
    v78 = v134;
  }

  v87 = (v52 + v53[8]);
  v88 = v87[2];
  if (v88 >> 60 == 15)
  {
    v89 = v123;
  }

  else
  {
    v90 = *v87;
    v91 = v87[1];
    v128 = 0x80000001C9406030;
    v92 = sub_1C93A5AC0();
    sub_1C93A1CEC(v92, v93, v94);
    sub_1C93A1988(v91, v88);
    static OSLogPrivacy.auto.getter();
    v135 = v90;
    v136 = v91;
    v137 = v88;
    sub_1C93A1988(v91, v88);
    v95 = String.init<A>(describing:)();
    v97 = v96;
    sub_1C93A58A8();
    sub_1C93A50BC();
    v98 = *(v78 + 24);
    v99 = v122;
    static OSLogPrivacy.auto.getter();
    v100 = sub_1C93A5AC0();
    sub_1C93A17AC(v100, v101, v102);
    sub_1C93A5890();
    sub_1C93A4B68();
    v103 = v128;
    *v99 = 0xD000000000000025;
    v99[1] = v103;
    v99[2] = v95;
    v99[3] = v97;
    sub_1C93A5878();
    sub_1C93A4BBC();
    v104 = *(v46 + 24);
    if (*(v46 + 16) >= v104 >> 1)
    {
      v46 = sub_1C93A5A88(v104 > 1);
    }

    v105 = sub_1C93A5AC0();
    sub_1C93A17AC(v105, v106, v107);
    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068();
    v89 = v123;
    v78 = v134;
    v52 = v127;
    v53 = v129;
  }

  sub_1C93A1DE4(v52 + v53[9], v89);
  sub_1C93A5C10(v89, 1);
  if (v108)
  {
    sub_1C93A4838(v89, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    sub_1C93A5068();
    sub_1C93A50BC();
    static OSLogPrivacy.auto.getter();
    sub_1C93A50BC();
    v109 = String.init<A>(describing:)();
    v111 = v110;
    sub_1C93A58A8();
    sub_1C93A50BC();
    v112 = *(v78 + 24);
    v113 = v125;
    static OSLogPrivacy.auto.getter();
    sub_1C93A5890();
    sub_1C93A4B68();
    *v113 = 0xD00000000000001BLL;
    v113[1] = 0x80000001C9406010;
    v113[2] = v109;
    v113[3] = v111;
    sub_1C93A5878();
    sub_1C93A4BBC();
    sub_1C93A58C0();
    sub_1C93A4B68();
    v114 = *(v46 + 24);
    if (*(v46 + 16) >= v114 >> 1)
    {
      sub_1C93A5A88(v114 > 1);
    }

    sub_1C93A4B68();
    sub_1C93A59F8();
    sub_1C939D418();
    sub_1C93A5068();
  }

  sub_1C93A5B58();
}

BOOL sub_1C93A41A4(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

void AnonymousSession.AcquiredInfo.asAnySessionAcquiredInfo.getter()
{
  sub_1C93A5B40();
  v1 = v0;
  v3 = v2;
  v4 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v4);
  v6 = *(v5 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v37 - v8;
  v43 = v37 - v8;
  sub_1C93A58D8();
  sub_1C93A50BC();
  v10 = type metadata accessor for AnonymousSession.AcquiredInfo();
  v11 = (v1 + v10[5]);
  v12 = *v11;
  v13 = v11[1];
  v14 = (v1 + v10[6]);
  v15 = *v14;
  v41 = v14[1];
  v42 = v15;
  sub_1C93A1DE4(v1 + v10[7], v9);
  v16 = type metadata accessor for AnySessionAcquiredInfo();
  v17 = (v3 + v16[6]);
  sub_1C93A5994();
  v19 = v18[8];
  v39 = (v3 + v18[7]);
  v20 = v3 + v19;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0xF000000000000000;
  v40 = v18[9];
  type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A5B90();
  sub_1C93A1710(v21, v22, v23, v24);
  v38 = (v3 + v16[10]);
  v25 = (v3 + v16[5]);
  v26 = v12;
  *v25 = v12;
  v25[1] = v13;
  v27 = v13;
  v28 = *v17;
  v29 = v17[1];
  v30 = v17[2];
  v31 = v17[3];
  v32 = v17[4];
  v37[1] = v17[5];
  v33 = v17[6];
  sub_1C93A1988(v26, v27);
  v34 = v41;

  sub_1C93A1738(v28, v29, v30, v31, v32);
  sub_1C93A5994();
  v35 = v39;
  *v39 = v42;
  v35[1] = v34;
  sub_1C93A17AC(*v20, *(v20 + 8), *(v20 + 16));
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0xF000000000000000;
  sub_1C93A1820(v43, v3 + v40);
  v36 = v38;
  *v38 = 0;
  v36[1] = 0;
  sub_1C93A5B58();
}

void AuthenticatedSession.AcquiredInfo.asAnySessionAcquiredInfo.getter()
{
  sub_1C93A5B40();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v5);
  v7 = *(v6 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - v9;
  v74 = &v50 - v9;
  sub_1C93A58D8();
  sub_1C93A50BC();
  v11 = type metadata accessor for AuthenticatedSession.AcquiredInfo();
  v12 = v11[6];
  v13 = (v2 + v11[5]);
  v15 = *v13;
  v14 = v13[1];
  v16 = v11[8];
  v17 = v2 + v11[7];
  v18 = *(v17 + 8);
  v72 = *v17;
  v71 = *(v17 + 16);
  v61 = *(v17 + 24);
  v60 = *(v17 + 32);
  v19 = *(v17 + 40);
  v68 = *(v17 + 48);
  v20 = *(v2 + v12 + 8);
  v69 = *(v2 + v12);
  v70 = v19;
  v51 = v20;
  v21 = v2 + v16;
  v22 = *(v2 + v16);
  v65 = *(v21 + 8);
  v66 = v22;
  v64 = *(v21 + 16);
  sub_1C93A1DE4(v2 + v11[9], v10);
  v23 = (v2 + v11[10]);
  v24 = v23[1];
  v73 = *v23;
  v25 = type metadata accessor for AnySessionAcquiredInfo();
  sub_1C93A5A20(v25);
  v63 = (v4 + v26);
  v28 = v4 + v27;
  *v28 = 0;
  *(v28 + 8) = 0;
  *(v28 + 16) = 0xF000000000000000;
  v67 = *(v29 + 36);
  type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A5B90();
  sub_1C93A1710(v30, v31, v32, v33);
  v62 = (v4 + v25[10]);
  v34 = (v4 + v25[5]);
  *v34 = v15;
  v34[1] = v14;
  v35 = v1[1];
  v58 = *v1;
  v59 = v4;
  v36 = v1[3];
  v56 = v1[2];
  v57 = v35;
  v37 = v1[5];
  v54 = v1[4];
  v55 = v36;
  v53 = v37;
  v52 = v1[6];
  sub_1C93A1988(v15, v14);

  v39 = v60;
  v38 = v61;
  sub_1C93A1B1C(v61, v60);

  v40 = v68;

  v42 = v65;
  v41 = v66;
  v43 = v64;
  sub_1C93A1CEC(v66, v65, v64);

  sub_1C93A1738(v58, v57, v56, v55, v54);
  v44 = v71;
  *v1 = v72;
  v1[1] = v18;
  v1[2] = v44;
  v1[3] = v38;
  v46 = v69;
  v45 = v70;
  v1[4] = v39;
  v1[5] = v45;
  v1[6] = v40;
  v47 = v63;
  v48 = v51;
  *v63 = v46;
  v47[1] = v48;
  sub_1C93A17AC(*v28, *(v28 + 8), *(v28 + 16));
  *v28 = v41;
  *(v28 + 8) = v42;
  *(v28 + 16) = v43;
  sub_1C93A1820(v74, v59 + v67);
  v49 = v62;
  *v62 = v73;
  v49[1] = v24;
  sub_1C93A5B58();
}

uint64_t sub_1C93A4644()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_1C93A46C8(unsigned __int8 a1, char a2)
{
  v2 = 0xD000000000000016;
  v3 = &unk_1C9405EC0;
  v4 = &unk_1C9405EC0;
  v5 = a1;
  v6 = 0xD000000000000016;
  switch(v5)
  {
    case 1:
      v4 = "application-identifier";
      v6 = 0xD000000000000030;
      break;
    case 2:
      v4 = "iner-environment";
      v6 = 0xD00000000000003BLL;
      break;
    case 3:
      v4 = "nal.allow-custom-bundle-ids";
      v6 = 0xD000000000000041;
      break;
    case 4:
      v4 = "-authorization-ui";
      v6 = 0xD000000000000038;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "application-identifier";
      v2 = 0xD000000000000030;
      break;
    case 2:
      v3 = "iner-environment";
      v2 = 0xD00000000000003BLL;
      break;
    case 3:
      v3 = "nal.allow-custom-bundle-ids";
      v2 = 0xD000000000000041;
      break;
    case 4:
      v3 = "-authorization-ui";
      v2 = 0xD000000000000038;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t sub_1C93A4838(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C93A1890(a2, a3);
  sub_1C939D430(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void *sub_1C93A4890(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1C93A48D4()
{
  result = qword_1EE02B5E0;
  if (!qword_1EE02B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B5E0);
  }

  return result;
}

unint64_t sub_1C93A4928()
{
  result = qword_1EE02C1D0;
  if (!qword_1EE02C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02C1D0);
  }

  return result;
}

unint64_t sub_1C93A497C()
{
  result = qword_1EE02B958;
  if (!qword_1EE02B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B958);
  }

  return result;
}

unint64_t sub_1C93A49D0()
{
  result = qword_1EE02BF28;
  if (!qword_1EE02BF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF28);
  }

  return result;
}

uint64_t sub_1C93A4A24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C93A4A6C()
{
  result = qword_1EE02C1C8;
  if (!qword_1EE02C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02C1C8);
  }

  return result;
}

unint64_t sub_1C93A4AC0()
{
  result = qword_1EE02B950;
  if (!qword_1EE02B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B950);
  }

  return result;
}

unint64_t sub_1C93A4B14()
{
  result = qword_1EE02BF20;
  if (!qword_1EE02BF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BF20);
  }

  return result;
}

uint64_t sub_1C93A4B68()
{
  v1 = sub_1C93A59DC();
  v3 = v2(v1);
  sub_1C939D430(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C93A4BBC()
{
  v1 = sub_1C93A59E8();
  v3 = v2(v1);
  sub_1C939D430(v3);
  v5 = *(v4 + 40);
  v6 = sub_1C93A5A40();
  v7(v6);
  return v0;
}

uint64_t sub_1C93A4C20(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1C93A4C9C(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1C93A4D1C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C93A4D44();
  *a1 = result;
  return result;
}

uint64_t sub_1C93A4D44()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1CCA876F0](v0);

  return v1;
}

uint64_t sub_1C93A4D7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1CCA876F0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t sub_1C93A4DC4@<X0>(uint64_t *a1@<X8>)
{
  result = j___sSS10FoundationE36_unconditionallyBridgeFromObjectiveCySSSo8NSStringCSgFZ(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C93A4DF8()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = MEMORY[0x1CCA877E0](v0);

  return v1;
}

Swift::Int sub_1C93A4E40()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_1C93A4EB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1C93A4644();
}

uint64_t sub_1C93A4EC0(uint64_t a1)
{
  v2 = sub_1C93A4A24(&qword_1EC39AA50, type metadata accessor for Dataclass);
  v3 = sub_1C93A4A24(&qword_1EC39AA58, type metadata accessor for Dataclass);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

size_t sub_1C93A4F7C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  v9 = sub_1C93A577C(v8, v7);
  v10 = *(type metadata accessor for PropertyDescription() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1C93E27E0(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

uint64_t sub_1C93A5068()
{
  v1 = sub_1C93A59E8();
  v3 = v2(v1);
  sub_1C939D430(v3);
  v5 = *(v4 + 32);
  v6 = sub_1C93A5A40();
  v7(v6);
  return v0;
}

uint64_t sub_1C93A50BC()
{
  v1 = sub_1C93A59E8();
  v3 = v2(v1);
  sub_1C939D430(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C93A5A40();
  v7(v6);
  return v0;
}

uint64_t sub_1C93A5158(uint64_t a1)
{
  result = sub_1C93A4A24(&qword_1EC39AA20, type metadata accessor for AnySessionAcquiredInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93A51D8()
{
  v0 = type metadata accessor for SessionID(319);
  if (v1 <= 0x3F)
  {
    sub_1C93A53DC(319, qword_1EE02C508, &type metadata for AuthenticatedSession.ResolvedUser, MEMORY[0x1E69E6720]);
    v0 = v2;
    if (v3 <= 0x3F)
    {
      sub_1C93A53DC(319, qword_1EE02C1D8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      v0 = v4;
      if (v5 <= 0x3F)
      {
        sub_1C93A53DC(319, &qword_1EE02C628, &type metadata for SaltedHash, MEMORY[0x1E69E6720]);
        if (v7 > 0x3F)
        {
          return v6;
        }

        sub_1C93A5334();
        if (v8 > 0x3F)
        {
          return v6;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_1C93A5334()
{
  if (!qword_1EE02C2C8[0])
  {
    type metadata accessor for SessionInvalidationContext(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1EE02C2C8);
    }
  }
}

void sub_1C93A53DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AnySessionAcquiredInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AnySessionAcquiredInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C93A55A0()
{
  result = qword_1EC39AA30;
  if (!qword_1EC39AA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AA30);
  }

  return result;
}

unint64_t sub_1C93A56D0()
{
  result = qword_1EE02B5D0;
  if (!qword_1EE02B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B5D0);
  }

  return result;
}

unint64_t sub_1C93A5728()
{
  result = qword_1EE02B5D8;
  if (!qword_1EE02B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B5D8);
  }

  return result;
}

size_t sub_1C93A577C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v4 = *(type metadata accessor for PropertyDescription() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_1C93A5994()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

void sub_1C93A59F8()
{
  *(v1 + 16) = v0;
  v3 = *(v2 - 168);
  v4 = v1 + *(v2 - 176);
}

double sub_1C93A5A20(int *a1)
{
  v2 = v1 + a1[6];
  *(v2 + 48) = 0;
  result = 0.0;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *v2 = 0u;
  v4 = a1[7];
  v5 = a1[8];
  return result;
}

uint64_t sub_1C93A5A4C(uint64_t a1, uint64_t a2)
{
  *(v5 - 248) = v2;
  v7 = v2;
  v8 = v3;
  v10 = *(v5 - 224);
  v9 = *(v5 - 216);

  return sub_1C93A1ABC(a1, a2, v7, v4, v8);
}

size_t sub_1C93A5A88(size_t a1)
{

  return sub_1C93A4F7C(a1, v1, 1, v2);
}

uint64_t sub_1C93A5AD0@<X0>(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  result = *v2;
  v4 = v2[1];
  return result;
}

void sub_1C93A5AF4()
{

  Hasher._combine(_:)(1u);
}

uint64_t sub_1C93A5B0C()
{

  return type metadata accessor for AnySessionAcquiredInfo();
}

void sub_1C93A5B28()
{

  Hasher._combine(_:)(0);
}

uint64_t sub_1C93A5BB4()
{
  result = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  return result;
}

uint64_t sub_1C93A5BF0()
{
  v2 = *(v0 - 128);
  v3 = *(v0 - 120);
  v4 = *(v0 - 112);
  v5 = *(v0 - 104);
  v6 = *(v0 - 96);
  v7 = *(v0 - 88);
  v8 = *(v0 - 80);

  return sub_1C93A1738(v2, v3, v4, v5, v6);
}

uint64_t AnySessionConfiguration.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AnySessionConfiguration.containerID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t AnySessionConfiguration.application.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[5];
  v5 = v1[6];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_1C93A5D1C(v4, v5);
}

uint64_t sub_1C93A5D1C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 AnySessionConfiguration.application.setter(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);

  sub_1C93A5D7C(v4, v5);
  result = *a1;
  *(v1 + 40) = *(a1 + 16);
  *(v1 + 24) = result;
  return result;
}

uint64_t sub_1C93A5D7C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

void *AnySessionConfiguration.account.setter(const void *a1)
{
  sub_1C939ED08();
  memcpy(v3, v4, v5);
  sub_1C93A8044(&v7, &qword_1EC39AA60, &qword_1C93FD270);
  return memcpy((v1 + 56), a1, 0x60uLL);
}

uint64_t AnySessionConfiguration.encryption.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1C93A5E60(*(v1 + 152), *(v1 + 160));
  *(v1 + 152) = v2;
  *(v1 + 160) = v3;
  return result;
}

uint64_t sub_1C93A5E60(uint64_t a1, unint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1C93A5E70(a1, a2);
  }

  return a1;
}

uint64_t sub_1C93A5E70(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

BOOL static AnySessionConfiguration.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a1 + 16);
  HIDWORD(v70) = *(a1 + 17);
  v65 = a1[3];
  v69 = a1[5];
  v67 = a1[4];
  v68 = a1[6];
  sub_1C939ED08();
  memcpy(v7, v8, v9);
  v60 = a1[20];
  v62 = a1[19];
  v10 = *a2;
  v11 = a2[1];
  v12 = *(a2 + 16);
  v13 = *(a2 + 17);
  v14 = a2[4];
  v64 = a2[3];
  v15 = a2[6];
  v66 = a2[5];
  memcpy(__dst, a2 + 7, sizeof(__dst));
  v16 = a2[19];
  v17 = a2[20];
  if (v4 == v10 && v5 == v11)
  {
    result = 0;
    if (v6 != v12)
    {
      return result;
    }

    v58 = v16;
LABEL_10:
    if ((HIDWORD(v70) ^ v13))
    {
      return result;
    }

    *&__src[0] = v65;
    *(&__src[0] + 1) = v67;
    *&__src[1] = v69;
    *(&__src[1] + 1) = v68;
    v74[0] = v64;
    v74[1] = v14;
    v74[2] = v66;
    v74[3] = v15;

    sub_1C93A5D1C(v69, v68);

    sub_1C93A5D1C(v66, v15);
    v21 = static AuthenticatedSession.Configuration.Application.== infix(_:_:)(__src, v74);

    v22 = sub_1C93A8DA0();
    sub_1C93A5D7C(v22, v23);

    v24 = sub_1C93A8DA0();
    sub_1C93A5D7C(v24, v25);
    if (!v21)
    {
      return 0;
    }

    v81 = v82;
    v26 = v83;
    memcpy(v80, v84, sizeof(v80));
    v79 = __dst[0];
    v27 = *&__dst[1];
    v28 = memcpy(v78, &__dst[1] + 8, sizeof(v78));
    if (v83 == 1)
    {
      if (*&__dst[1] == 1)
      {
        __src[0] = v82;
        *&__src[1] = 1;
        sub_1C93A8E28(v28, v29, v30, v31, v32, v33, v34, v35, v58, v60, v62, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], *&v73[0], *(&v73[0] + 1), *&v73[1], *(&v73[1] + 1), *&v73[2], *(&v73[2] + 1), *&v73[3], *(&v73[3] + 1), *&v73[4], *(&v73[4] + 1), *&v73[5], *(&v73[5] + 1), v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8]);
        sub_1C939EE74(&v82, v74);
        sub_1C939EE74(__dst, v74);
        sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
LABEL_20:
        if (v61 == 2)
        {
          sub_1C939EBA8(v63, 2uLL);
          if (v17 == 2)
          {
            sub_1C939EBA8(v59, 2uLL);
            sub_1C93A5E60(v63, 2uLL);
            return 1;
          }

          v37 = v17;
          v40 = v59;
          sub_1C939EBA8(v59, v37);
          goto LABEL_26;
        }

        v37 = v17;
        if (v17 == 2)
        {
          v38 = sub_1C93A8DA0();
          sub_1C939EBA8(v38, v39);
          v40 = v59;
          sub_1C939EBA8(v59, 2uLL);
          v41 = sub_1C93A8DA0();
          sub_1C939EBA8(v41, v42);
          v43 = sub_1C93A8DA0();
          sub_1C93A5E70(v43, v44);
LABEL_26:
          v45 = sub_1C93A8DA0();
          sub_1C93A5E60(v45, v46);
          sub_1C93A5E60(v40, v37);
          return 0;
        }

        *&__src[0] = v63;
        *(&__src[0] + 1) = v61;
        v74[0] = v59;
        v74[1] = v17;
        v47 = sub_1C93A8DA0();
        sub_1C939EBA8(v47, v48);
        sub_1C939EBA8(v59, v17);
        v49 = sub_1C93A8DA0();
        sub_1C939EBA8(v49, v50);
        v51 = sub_1C93A8DA0();
        sub_1C939EBDC(v51, v52);
        v53 = static AuthenticatedSession.Configuration.Encryption.ServiceIdentity.== infix(_:_:)(__src, v74);
        sub_1C93A5E70(v74[0], v74[1]);
        sub_1C93A5E70(*&__src[0], *(&__src[0] + 1));
        v54 = sub_1C93A8DA0();
        sub_1C93A5E70(v54, v55);
        v56 = sub_1C93A8DA0();
        sub_1C93A5E60(v56, v57);
        return v53;
      }

      sub_1C939EE74(&v82, __src);
      sub_1C939EE74(__dst, __src);
    }

    else
    {
      __src[0] = v82;
      *&__src[1] = v83;
      sub_1C93A8E28(v28, v29, v30, v31, v32, v33, v34, v35, v58, v60, v62, v64, v65, v66, v67, v68, v69, v70, v71[0], v71[1], v71[2], v71[3], v71[4], v71[5], v71[6], v71[7], v71[8], v71[9], v71[10], v71[11], v72[0], v72[1], v72[2], v72[3], v72[4], v72[5], v72[6], v72[7], v72[8], v72[9], v72[10], v72[11], *&v73[0], *(&v73[0] + 1), *&v73[1], *(&v73[1] + 1), *&v73[2], *(&v73[2] + 1), *&v73[3], *(&v73[3] + 1), *&v73[4], *(&v73[4] + 1), *&v73[5], *(&v73[5] + 1), v74[0], v74[1], v74[2], v74[3], v74[4], v74[5], v74[6], v74[7], v74[8]);
      memcpy(v74, __src, sizeof(v74));
      if (v27 != 1)
      {
        v73[0] = __dst[0];
        memcpy(&v73[1] + 8, &__dst[1] + 8, 0x48uLL);
        *&v73[1] = v27;
        sub_1C939EE74(&v82, v72);
        sub_1C939EE74(__dst, v72);
        sub_1C939EE74(__src, v72);
        v36 = static AuthenticatedSession.Configuration.Account.== infix(_:_:)(v74, v73);
        memcpy(v71, v73, sizeof(v71));
        sub_1C93A80A4(v71);
        memcpy(v72, v74, sizeof(v72));
        sub_1C93A80A4(v72);
        v73[0] = v81;
        *&v73[1] = v26;
        memcpy(&v73[1] + 8, v80, 0x48uLL);
        sub_1C93A8044(v73, &qword_1EC39AA60, &qword_1C93FD270);
        if (!v36)
        {
          return 0;
        }

        goto LABEL_20;
      }

      memcpy(v73, __src, sizeof(v73));
      sub_1C939EE74(&v82, v72);
      sub_1C939EE74(__dst, v72);
      sub_1C939EE74(__src, v72);
      sub_1C93A80A4(v73);
    }

    __src[0] = v81;
    *&__src[1] = v26;
    memcpy(&__src[1] + 8, v80, 0x48uLL);
    __src[6] = v79;
    v76 = v27;
    memcpy(v77, v78, sizeof(v77));
    sub_1C93A8044(__src, &qword_1EC39AA68, &qword_1C93FD278);
    return 0;
  }

  v58 = v16;
  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v19 & 1) != 0 && ((v6 ^ v12) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1C93A6380(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000444972;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x6974707972636E65 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_1C93A6534(char a1)
{
  result = 0x656E6961746E6F63;
  switch(a1)
  {
    case 1:
      result = 0x6D6574737973;
      break;
    case 2:
      result = 0x746163696C707061;
      break;
    case 3:
      result = 0x746E756F636361;
      break;
    case 4:
      result = 0x6974707972636E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93A65E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93A6380(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93A6610@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A652C();
  *a1 = result;
  return result;
}

uint64_t sub_1C93A6638(uint64_t a1)
{
  v2 = sub_1C93A80F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93A6674(uint64_t a1)
{
  v2 = sub_1C93A80F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnySessionConfiguration.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AA70, &qword_1C93FD280);
  v4 = sub_1C939D44C(v3);
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v28 - v8;
  v10 = v1[1];
  v35 = *v1;
  v11 = *(v1 + 16);
  v34 = *(v1 + 17);
  v12 = v1[3];
  v32 = v1[4];
  v33 = v12;
  v13 = v1[5];
  v30 = v1[6];
  v31 = v13;
  sub_1C939ED08();
  memcpy(v14, v15, v16);
  v17 = v1[20];
  v28 = v1[19];
  v29 = v17;
  v18 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93A80F8();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v41[0] = v35;
  v41[1] = v10;
  LOBYTE(v41[2]) = v11;
  v40[0] = 0;
  sub_1C93A814C();
  v19 = v36;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v19)
  {

    return (*(v43 + 8))(v9, v3);
  }

  else
  {
    v21 = v32;
    v22 = v33;
    v23 = v31;

    LOBYTE(v41[0]) = v34;
    v40[0] = 1;
    sub_1C93A81A0();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v41[0] = v22;
    v41[1] = v21;
    v41[2] = v23;
    v24 = v30;
    v41[3] = v30;
    v40[0] = 2;

    sub_1C93A5D1C(v23, v24);
    sub_1C93A81F4();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v43;
    v26 = v41[2];
    v27 = v41[3];

    sub_1C93A5D7C(v26, v27);
    memcpy(v41, __src, sizeof(v41));
    v40[103] = 3;
    sub_1C939EE74(__src, v40);
    sub_1C93A8248();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    memcpy(v40, v41, 0x60uLL);
    sub_1C93A8044(v40, &qword_1EC39AA60, &qword_1C93FD270);
    v38 = v28;
    v39 = v29;
    v37 = 4;
    sub_1C939EBA8(v28, v29);
    sub_1C93A829C();
    sub_1C93A8DAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_1C93A5E60(v38, v39);
    return (*(v25 + 8))(v9, v3);
  }
}

void AnySessionConfiguration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[6];
  v15 = v0[5];
  sub_1C939ED08();
  memcpy(v8, v9, v10);
  v11 = v0[20];
  v14 = v0[19];
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  Hasher._combine(_:)(v4);
  if (v6)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  if (v7 == 1)
  {
    v12 = 1;
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
    if (v7)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      goto LABEL_10;
    }

    v12 = 0;
  }

  MEMORY[0x1CCA87E40](v12);
LABEL_10:
  sub_1C93A82F0();
  if (v11 == 2)
  {
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(1u);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_16;
  }

  if (v11 == 1)
  {
    v13 = 2;
LABEL_16:
    MEMORY[0x1CCA87E40](v13);
    return;
  }

  MEMORY[0x1CCA87E40](1);

  String.hash(into:)();
}

Swift::Int AnySessionConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnySessionConfiguration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnySessionConfiguration.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AA78, &unk_1C93FD288);
  v6 = sub_1C939D44C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[3];
  v10 = a1[4];
  v80 = a1;
  sub_1C93A4890(a1, v9);
  sub_1C93A80F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1C939EA94(v80);
    v37 = 0;
    v38 = 0;
    v39 = 1;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    sub_1C93A8044(&v37, &qword_1EC39AA60, &qword_1C93FD270);
    return sub_1C93A5E60(0, 2uLL);
  }

  else
  {
    sub_1C93A849C();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v37;
    v28 = v38;
    sub_1C93A84F0();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v36[0]) = 2;
    sub_1C93A8544();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26 = v38;
    v27 = v39;
    v24 = v37;
    v25 = v40;
    v67 = 3;
    sub_1C93A8598();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v37;
    v20 = v39;
    v21 = v68;
    v22 = v69;
    v12 = v70;
    v23 = v71;
    v34 = v73;
    v35 = v72;
    v32 = v75;
    v33 = v74;
    v30 = v77;
    v31 = v76;
    v13 = v79;
    v29 = v78;
    v61[0] = 0;
    v61[1] = 0;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v61[2] = 1;
    v66 = 0;
    sub_1C93A8044(v61, &qword_1EC39AA60, &qword_1C93FD270);
    v58 = 4;
    sub_1C93A85EC();
    sub_1C93A8D8C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v14 = sub_1C939D46C();
    v15(v14);
    v16 = v59;
    v17 = v60;
    sub_1C93A5E60(0, 2uLL);
    v36[0] = v11;
    v36[1] = v28;
    LOBYTE(v36[2]) = v20;
    BYTE1(v36[2]) = v19;
    v36[3] = v24;
    v36[4] = v26;
    v36[5] = v27;
    v36[6] = v25;
    v36[7] = v21;
    v36[8] = v22;
    v36[9] = v12;
    v36[10] = v23;
    v36[11] = v35;
    v36[12] = v34;
    v36[13] = v33;
    v36[14] = v32;
    v36[15] = v31;
    v36[16] = v30;
    v36[17] = v29;
    v36[18] = v13;
    v36[19] = v16;
    v36[20] = v17;
    memcpy(a2, v36, 0xA8uLL);
    sub_1C93A8640(v36, &v37);
    sub_1C939EA94(v80);
    v37 = v11;
    v38 = v28;
    LOBYTE(v39) = v20;
    BYTE1(v39) = v19;
    v40 = v24;
    v41 = v26;
    v42 = v27;
    v43 = v25;
    v44 = v21;
    v45 = v22;
    v46 = v12;
    v47 = v23;
    v48 = v35;
    v49 = v34;
    v50 = v33;
    v51 = v32;
    v52 = v31;
    v53 = v30;
    v54 = v29;
    v55 = v13;
    v56 = v16;
    v57 = v17;
    return sub_1C93A8678(&v37);
  }
}

Swift::Int sub_1C93A70E0()
{
  Hasher.init(_seed:)();
  AnySessionConfiguration.hash(into:)();
  return Hasher._finalize()();
}

size_t AnySessionConfiguration.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription();
  v117 = *(v1 - 8);
  v2 = v117;
  v118 = v1;
  v3 = *(v117 + 8);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v115 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v104 = (&v103 - v7);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v109 = (&v103 - v9);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v103 - v10);
  v12 = type metadata accessor for OSLogPrivacy();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v103 - v17;
  v19 = *v0;
  v20 = *(v0 + 8);
  v21 = *(v0 + 16);
  LODWORD(v116) = *(v0 + 17);
  v22 = *(v0 + 32);
  v105 = *(v0 + 24);
  v106 = v22;
  v23 = *(v0 + 40);
  v107 = *(v0 + 48);
  v108 = v23;
  sub_1C939ED08();
  memcpy(v24, v25, v26);
  v27 = *(v0 + 152);
  v110 = *(v0 + 160);
  v111 = v27;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v28 = (v117[80] + 32) & ~v117[80];
  v113 = *(v2 + 72);
  v103 = v28 + v113;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1C93FCDF0;
  v112 = v28;
  v30 = (v29 + v28);
  static OSLogPrivacy.public.getter();
  v126[0] = v19;
  v126[1] = v20;
  LOBYTE(v126[2]) = v21;

  v31 = String.init<A>(describing:)();
  v33 = v32;
  sub_1C93A86A8(v18, v16);
  v34 = *(v118 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v18);
  *v30 = 0x656E6961746E6F63;
  v30[1] = 0xEB00000000444972;
  v30[2] = v31;
  v30[3] = v33;
  v117 = v16;
  sub_1C93A8768(v16, v30 + v34);
  v114 = v18;
  if (v116 == 1)
  {
    static OSLogPrivacy.auto.getter();
    LOBYTE(v126[0]) = 1;
    v35 = String.init<A>(describing:)();
    v37 = v36;
    v38 = v117;
    sub_1C93A86A8(v18, v117);
    v39 = *(v118 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v18);
    *v11 = 0x6D6574737973;
    v11[1] = 0xE600000000000000;
    v11[2] = v35;
    v11[3] = v37;
    sub_1C93A8768(v38, v11 + v39);
    v40 = sub_1C93A4F7C(1uLL, 2, 1, v29);
    *(v40 + 16) = 2;
    v116 = v40;
    sub_1C93A87CC(v11, v40 + v103);
  }

  else
  {
    v116 = v29;
  }

  v41 = v105;
  v42 = v106;
  v126[0] = v105;
  v126[1] = v106;
  v44 = v107;
  v43 = v108;
  v126[2] = v108;
  v126[3] = v107;
  memset(v125, 0, 32);

  sub_1C93A5D1C(v43, v44);
  v45 = static AuthenticatedSession.Configuration.Application.== infix(_:_:)(v126, v125);
  v46 = v125[1];

  sub_1C93A5D7C(v46, *(&v46 + 1));
  v47 = v126[2];
  v48 = v126[3];

  sub_1C93A5D7C(v47, v48);
  v49 = v115;
  v50 = v110;
  if (v45)
  {
    v51 = v110;
    v52 = v116;
  }

  else
  {
    v53 = v114;
    static OSLogPrivacy.auto.getter();
    v126[0] = v41;
    v126[1] = v42;
    v126[2] = v43;
    v126[3] = v44;

    sub_1C93A5D1C(v43, v44);
    v54 = String.init<A>(describing:)();
    v56 = v55;
    v57 = v117;
    sub_1C93A86A8(v53, v117);
    v58 = *(v118 + 24);
    v59 = v109;
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v53);
    *v59 = 0x746163696C707061;
    v59[1] = 0xEB000000006E6F69;
    v59[2] = v54;
    v59[3] = v56;
    sub_1C93A8768(v57, v59 + v58);
    v61 = *(v116 + 16);
    v60 = *(v116 + 24);
    v62 = v112;
    if (v61 >= v60 >> 1)
    {
      v116 = sub_1C93A4F7C(v60 > 1, v61 + 1, 1, v116);
    }

    v63 = v113;
    v51 = v50;
    v52 = v116;
    *(v116 + 16) = v61 + 1;
    sub_1C93A87CC(v109, v52 + v62 + v61 * v63);
    v49 = v115;
  }

  v128 = __src[0];
  v64 = *&__src[1];
  memcpy(v127, &__src[1] + 8, sizeof(v127));
  if (*&__src[1] != 1)
  {
    v124[0] = __src[0];
    *&v124[1] = *&__src[1];
    memcpy(&v124[1] + 8, &__src[1] + 8, 0x48uLL);
    v123[0] = 0;
    memset(&v123[8], 0, 33);
    memset(&v123[48], 0, 48);
    memcpy(v125, __src, sizeof(v125));
    sub_1C93A8830(v125, &v120);
    v65 = static AuthenticatedSession.Configuration.Account.== infix(_:_:)(v124, v123);
    memcpy(v126, v123, sizeof(v126));
    sub_1C93A80A4(v126);
    if (v65)
    {
      sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
    }

    else
    {
      memcpy(v123, __src, sizeof(v123));
      sub_1C93A8830(v123, v124);
      v66 = v114;
      static OSLogPrivacy.auto.getter();
      v120 = v128;
      v121 = v64;
      memcpy(v122, v127, sizeof(v122));
      memcpy(v124, __src, sizeof(v124));
      sub_1C93A8830(v124, &v119);
      v67 = String.init<A>(describing:)();
      v69 = v68;
      v70 = v117;
      sub_1C93A86A8(v66, v117);
      v71 = *(v118 + 24);
      v72 = v104;
      static OSLogPrivacy.auto.getter();
      sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
      sub_1C93A870C(v66);
      *v72 = 0x746E756F636361;
      v72[1] = 0xE700000000000000;
      v72[2] = v67;
      v72[3] = v69;
      sub_1C93A8768(v70, v72 + v71);
      v74 = *(v52 + 16);
      v73 = *(v52 + 24);
      if (v74 >= v73 >> 1)
      {
        v52 = sub_1C93A4F7C(v73 > 1, v74 + 1, 1, v52);
      }

      v76 = v112;
      v75 = v113;
      sub_1C93A8044(__src, &qword_1EC39AA60, &qword_1C93FD270);
      *(v52 + 16) = v74 + 1;
      sub_1C93A87CC(v104, v52 + v76 + v74 * v75);
    }
  }

  v77 = v111;
  if (v51 != 2)
  {
    v78 = v114;
    if (v51 == 1)
    {
      sub_1C93A5E70(v111, 1uLL);
      v81 = sub_1C93A8E1C();
      sub_1C93A5E70(v81, v82);
      sub_1C93A5E60(v77, 1uLL);
    }

    else
    {
      if (!v51)
      {
        sub_1C93A5E70(v111, 0);
        v79 = sub_1C93A8E1C();
        sub_1C93A5E70(v79, v80);
        sub_1C93A5E60(v77, 0);
        sub_1C93A5E60(v77, 0);
        return v52;
      }

      sub_1C939EBA8(v111, v51);
      v83 = sub_1C93A8E10();
      sub_1C939EBA8(v83, v84);
      v85 = sub_1C93A8E10();
      sub_1C93A5E70(v85, v86);
      v87 = sub_1C93A8E1C();
      sub_1C93A5E70(v87, v88);
    }

    static OSLogPrivacy.auto.getter();
    v126[0] = v77;
    v126[1] = v51;
    v89 = sub_1C93A8E10();
    sub_1C939EBDC(v89, v90);
    v91 = String.init<A>(describing:)();
    v93 = v92;
    v94 = v117;
    sub_1C93A86A8(v78, v117);
    v95 = *(v118 + 24);
    static OSLogPrivacy.auto.getter();
    v96 = sub_1C93A8E10();
    sub_1C93A5E60(v96, v97);
    sub_1C93A870C(v78);
    *v49 = 0x6974707972636E65;
    v49[1] = 0xEA00000000006E6FLL;
    v49[2] = v91;
    v49[3] = v93;
    sub_1C93A8768(v94, v49 + v95);
    v99 = *(v52 + 16);
    v98 = *(v52 + 24);
    if (v99 >= v98 >> 1)
    {
      v52 = sub_1C93A4F7C(v98 > 1, v99 + 1, 1, v52);
    }

    v100 = v112;
    v101 = v113;
    *(v52 + 16) = v99 + 1;
    sub_1C93A87CC(v49, v52 + v100 + v99 * v101);
  }

  return v52;
}

double AnonymousSession.Configuration.asAnySessionConfiguration.getter@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v6 = *(v1 + 17);
  v8 = v1[3];
  v7 = v1[4];

  v9 = sub_1C93A8E1C();
  sub_1C93A5D7C(v9, v10);
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = v6;
  *(a1 + 24) = v8;
  *(a1 + 32) = v7;
  *(a1 + 40) = xmmword_1C93FD260;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 2;
  return result;
}

uint64_t AuthenticatedSession.Configuration.asAnySessionConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *(v1 + 16);
  v19 = *(v1 + 17);
  v6 = v1[4];
  v18 = v1[3];
  v7 = v1[5];
  v8 = v1[6];
  sub_1C939ED08();
  memcpy(v9, v10, v11);
  v12 = v1[19];
  v13 = v1[20];
  *a1 = v4;
  *(a1 + 8) = v3;
  *(a1 + 16) = v5;
  *(a1 + 17) = v19;
  *(a1 + 24) = v18;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  *(a1 + 48) = v8;
  sub_1C939ED08();
  memcpy(v14, v15, v16);
  *(a1 + 152) = v12;
  *(a1 + 160) = v13;

  sub_1C93A5D1C(v7, v8);
  sub_1C93A8830(v21, v20);
  return sub_1C939EBDC(v12, v13);
}

uint64_t AnySessionConfiguration.CustomConfigurationError.description.getter()
{
  v1 = 0xD000000000000016;
  v2 = *v0;
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  _StringGuts.grow(_:)(73);
  MEMORY[0x1CCA87780](0xD00000000000001DLL, 0x80000001C9406080);
  MEMORY[0x1CCA87780](v3, v4);
  MEMORY[0x1CCA87780](0xD000000000000026, 0x80000001C94060A0);
  v5 = &unk_1C9405EC0;
  switch(v2)
  {
    case 1:
      v5 = "application-identifier";
      v1 = 0xD000000000000030;
      break;
    case 2:
      v5 = "iner-environment";
      v1 = 0xD00000000000003BLL;
      break;
    case 3:
      v5 = "nal.allow-custom-bundle-ids";
      v1 = 0xD000000000000041;
      break;
    case 4:
      v5 = "-authorization-ui";
      v1 = 0xD000000000000038;
      break;
    default:
      break;
  }

  MEMORY[0x1CCA87780](v1, v5 | 0x8000000000000000);

  MEMORY[0x1CCA87780](11810, 0xE200000000000000);
  return 0;
}

void _s17CloudCoreInternal23AnySessionConfigurationV8validate12entitlementsyx_tAC06CustomF5ErrorOYKAA20EntitlementsProtocolRzlF(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(v4 + 24);
  v7 = *(v4 + 32);
  v8 = *(v4 + 48);
  v9 = *(v4 + 72);
  v37 = *(v4 + 80);
  v10 = *(v4 + 88);
  v11 = *(v4 + 96);
  if (v9)
  {
    if (v9 == 1)
    {
      goto LABEL_11;
    }

    v36 = *(v4 + 64);
    v12 = a3[5];
    v13 = sub_1C93A8E04();
    if ((v14(v13) & 1) == 0)
    {
      sub_1C93A8DD0();
      _StringGuts.grow(_:)(22);

      sub_1C93A8DBC();
      v39 = v25;
      v41 = v24;

      sub_1C93A1890(&qword_1EC39AA90, &qword_1C93FD2A0);
      v26 = String.init<A>(describing:)();
      MEMORY[0x1CCA87780](v26);

      MEMORY[0x1CCA87780](34, 0xE100000000000000);
      v21 = v39;
      v22 = v41;
      v23 = 4;
      goto LABEL_20;
    }
  }

  if (!v11)
  {
    if (!v10)
    {
      sub_1C939F004(v37, 0, 0);
      swift_bridgeObjectRelease_n();
      goto LABEL_11;
    }

    sub_1C939F004(v37, v10, 0);
  }

  v15 = a3[4];
  v16 = sub_1C93A8E04();
  if ((v17(v16) & 1) == 0)
  {
    sub_1C93A8DD0();
    _StringGuts.grow(_:)(30);

    sub_1C93A8DBC();
    v42 = v19 | 8;
    v43 = v18;
    sub_1C939F004(v37, v10, v11);
    sub_1C93A1890(&qword_1EC39AA88, &qword_1C93FD298);
    v20 = String.init<A>(describing:)();
    MEMORY[0x1CCA87780](v20);

    MEMORY[0x1CCA87780](34, 0xE100000000000000);
    v21 = v42;
    v22 = v43;
    v23 = 3;
LABEL_20:
    *a4 = v23;
    *(a4 + 8) = v21;
    *(a4 + 16) = v22;
    sub_1C93A888C();
    swift_willThrowTypedImpl();
    return;
  }

LABEL_11:
  if (v7)
  {
    v27 = a3[3];
    v28 = sub_1C93A8E04();
    if ((v29(v28) & 1) == 0)
    {
      sub_1C93A8DD0();
      _StringGuts.grow(_:)(34);

      sub_1C93A8DBC();
      v38 = v31 | 0xC;
      v40 = v30;
LABEL_19:

      v35 = String.init<A>(describing:)();
      MEMORY[0x1CCA87780](v35);

      MEMORY[0x1CCA87780](34, 0xE100000000000000);
      v21 = v38;
      v22 = v40;
      v23 = 2;
      goto LABEL_20;
    }
  }

  if (v8 == 1)
  {
    return;
  }

  if (!v8)
  {
    swift_bridgeObjectRelease_n();
    return;
  }

  v32 = a3[3];
  v33 = sub_1C93A8E04();
  if ((v34(v33) & 1) == 0)
  {
    sub_1C93A8DD0();
    _StringGuts.grow(_:)(56);
    MEMORY[0x1CCA87780](0xD000000000000035, 0x80000001C94060D0);
    goto LABEL_19;
  }
}

uint64_t sub_1C93A8044(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1C93A1890(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1C93A80F8()
{
  result = qword_1EE02B540[0];
  if (!qword_1EE02B540[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE02B540);
  }

  return result;
}

unint64_t sub_1C93A814C()
{
  result = qword_1EE02BE90;
  if (!qword_1EE02BE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02BE90);
  }

  return result;
}

unint64_t sub_1C93A81A0()
{
  result = qword_1EE02B810;
  if (!qword_1EE02B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B810);
  }

  return result;
}

unint64_t sub_1C93A81F4()
{
  result = qword_1EE02B830;
  if (!qword_1EE02B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B830);
  }

  return result;
}

unint64_t sub_1C93A8248()
{
  result = qword_1EE02B718;
  if (!qword_1EE02B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B718);
  }

  return result;
}

unint64_t sub_1C93A829C()
{
  result = qword_1EE02B8B8;
  if (!qword_1EE02B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B8B8);
  }

  return result;
}

void sub_1C93A82F0()
{
  v1 = *(v0 + 2);
  if (v1 == 1)
  {
    goto LABEL_18;
  }

  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  v4 = *(v0 + 4);
  v5 = v0[40];
  v6 = *(v0 + 6);
  v7 = *(v0 + 7);
  v12 = *(v0 + 9);
  v13 = *(v0 + 8);
  v8 = *(v0 + 11);
  v11 = *(v0 + 10);
  v9 = *v0;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v9 & 1);
  if (!v1)
  {
    MEMORY[0x1CCA87E40](0);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_8:
    MEMORY[0x1CCA87E40](0);
    if (v4)
    {
      MEMORY[0x1CCA87E40](1);
      String.hash(into:)();
      if (!v7)
      {
        goto LABEL_18;
      }

      goto LABEL_14;
    }

    v10 = 0;
    goto LABEL_13;
  }

  MEMORY[0x1CCA87E40](1);
  String.hash(into:)();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v5 == 1)
  {
    MEMORY[0x1CCA87E40](1);
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    String.hash(into:)();

    if (!v7)
    {
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v10 = 2;
LABEL_13:
  MEMORY[0x1CCA87E40](v10);
  if (!v7)
  {
LABEL_18:
    Hasher._combine(_:)(0);
    return;
  }

LABEL_14:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  String.hash(into:)();
  if (!v8)
  {
    goto LABEL_18;
  }

  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

unint64_t sub_1C93A849C()
{
  result = qword_1EE02B230;
  if (!qword_1EE02B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B230);
  }

  return result;
}

unint64_t sub_1C93A84F0()
{
  result = qword_1EE02AFC0;
  if (!qword_1EE02AFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFC0);
  }

  return result;
}

unint64_t sub_1C93A8544()
{
  result = qword_1EE02AFC8;
  if (!qword_1EE02AFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFC8);
  }

  return result;
}

unint64_t sub_1C93A8598()
{
  result = qword_1EE02AF90;
  if (!qword_1EE02AF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AF90);
  }

  return result;
}

unint64_t sub_1C93A85EC()
{
  result = qword_1EE02AFE0;
  if (!qword_1EE02AFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02AFE0);
  }

  return result;
}

uint64_t sub_1C93A86A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSLogPrivacy();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93A870C(uint64_t a1)
{
  v2 = type metadata accessor for OSLogPrivacy();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C93A8768(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OSLogPrivacy();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C93A87CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PropertyDescription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C93A888C()
{
  result = qword_1EC39AA80;
  if (!qword_1EC39AA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AA80);
  }

  return result;
}

unint64_t sub_1C93A88E4()
{
  result = qword_1EE02B528;
  if (!qword_1EE02B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B528);
  }

  return result;
}

unint64_t sub_1C93A8938(uint64_t a1)
{
  result = sub_1C93A8960();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93A8960()
{
  result = qword_1EC39AA98;
  if (!qword_1EC39AA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AA98);
  }

  return result;
}

uint64_t sub_1C93A89BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 168))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93A89FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1C93A8A74(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C93A8A88(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93A8AC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Entitlements.Key(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for AnySessionConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C93A8C88()
{
  result = qword_1EC39AAA0;
  if (!qword_1EC39AAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AAA0);
  }

  return result;
}

unint64_t sub_1C93A8CE0()
{
  result = qword_1EE02B530;
  if (!qword_1EE02B530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B530);
  }

  return result;
}

unint64_t sub_1C93A8D38()
{
  result = qword_1EE02B538;
  if (!qword_1EE02B538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE02B538);
  }

  return result;
}

void sub_1C93A8DE0()
{
  v0[14] = 0;
  v0[15] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[10] = 0;
  v0[11] = 0;
  v0[9] = 0;
}

void *sub_1C93A8E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{

  return memcpy(&a70, (v70 + 24), 0x48uLL);
}

uint64_t getEnumTagSinglePayload for CKImplementingCC(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for CKImplementingCC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C93A8F54@<X0>(void *a1@<X8>)
{
  if (dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2) && (v2 = MEMORY[0x1CCA876F0](0xD00000000000001CLL, 0x80000001C9406210), v3 = NSClassFromString(v2), v2, v3) && (swift_getObjCClassMetadata(), sub_1C93A90A8(), (v4 = swift_dynamicCastMetatype()) != 0) && sub_1C93A90EC(v4))
  {
    v6 = v5;
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    result = swift_getObjectType();
    a1[3] = result;
    a1[4] = v6;
    *a1 = v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C93A90A8()
{
  result = qword_1EE02AD68;
  if (!qword_1EE02AD68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE02AD68);
  }

  return result;
}

uint64_t sub_1C93A90EC(uint64_t a1)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C93A9144(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7964616572 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656B636F6C62 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_1C93A9210(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](a1 & 1);
  return Hasher._finalize()();
}

uint64_t sub_1C93A9258(char a1)
{
  if (a1)
  {
    return 0x64656B636F6C62;
  }

  else
  {
    return 0x7964616572;
  }
}

uint64_t sub_1C93A928C(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_1C93A92FC()
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](0);
  return Hasher._finalize()();
}

uint64_t sub_1C93A9388@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1C93A9130();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C93A93B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C93A940C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int sub_1C93A9490(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v4 = *(a2 + 16);
  sub_1C93A1498(v6, *v2);
  return Hasher._finalize()();
}

uint64_t sub_1C93A94E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_1C93A9144(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1C93A9514(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return sub_1C93A2900();
}

uint64_t sub_1C93A953C@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_1C93A9208();
  *a2 = result;
  return result;
}

uint64_t sub_1C93A9568(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C93A95BC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

Swift::Int sub_1C93A9610(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, void))
{
  Hasher.init(_seed:)();
  a4(v7, *(a2 + 16));
  return Hasher._finalize()();
}

uint64_t sub_1C93A965C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1C93A96B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t CKImplementingCC.SessionAcquisitionEvent<A>.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v6 = *(a2 + 16);
  v7 = _s23SessionAcquisitionEventO17BlockedCodingKeysOMa();
  sub_1C939D48C();
  swift_getWitnessTable();
  sub_1C93AB0D8();
  v66 = v8;
  v67 = v7;
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = sub_1C939D44C(v9);
  v69 = v11;
  v70 = v10;
  v13 = *(v12 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C939ED24();
  v68 = v15;
  sub_1C93AB0B4();
  ready = _s23SessionAcquisitionEventO15ReadyCodingKeysOMa();
  sub_1C93AB07C();
  swift_getWitnessTable();
  sub_1C93AB0D8();
  v62 = ready;
  v60[1] = v17;
  v18 = type metadata accessor for KeyedEncodingContainer();
  v19 = sub_1C939D44C(v18);
  v64 = v20;
  v65 = v19;
  v22 = *(v21 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C939ED24();
  v61 = v24;
  sub_1C939D47C();
  v63 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1C93A59A8();
  v60[0] = v30 - v29;
  sub_1C939D47C();
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1C93A59A8();
  v38 = (v37 - v36);
  v72 = v6;
  _s23SessionAcquisitionEventO10CodingKeysOMa();
  sub_1C93AB064();
  swift_getWitnessTable();
  v39 = type metadata accessor for KeyedEncodingContainer();
  v40 = sub_1C939D44C(v39);
  v74 = v41;
  v75 = v40;
  v43 = *(v42 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v44);
  v46 = v60 - v45;
  v47 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v32 + 16))(v38, v73, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = *v38;
    v78 = 1;
    v49 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v77 = v48;
    sub_1C93A9BAC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v50 = *(v69 + 8);
    v51 = sub_1C93AB0E4();
    v52(v51);
    return (*(v74 + 8))(v46, v49);
  }

  else
  {
    v54 = v63;
    v55 = v60[0];
    v56 = v72;
    (*(v63 + 32))(v60[0], v38, v72);
    v76 = 0;
    v57 = v61;
    v58 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v65;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v64 + 8))(v57, v59);
    (*(v54 + 8))(v55, v56);
    return (*(v74 + 8))(v46, v58);
  }
}

unint64_t sub_1C93A9BAC()
{
  result = qword_1EC39AAA8;
  if (!qword_1EC39AAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AAA8);
  }

  return result;
}

uint64_t CKImplementingCC.SessionAcquisitionEvent<A>.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v79 = a3;
  v87 = a4;
  v6 = _s23SessionAcquisitionEventO17BlockedCodingKeysOMa();
  sub_1C939D48C();
  swift_getWitnessTable();
  sub_1C93AB0D8();
  v83 = v7;
  v84 = v6;
  v78 = type metadata accessor for KeyedDecodingContainer();
  sub_1C939D44C(v78);
  v77 = v8;
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  sub_1C939ED24();
  v85 = v12;
  sub_1C93AB0B4();
  ready = _s23SessionAcquisitionEventO15ReadyCodingKeysOMa();
  sub_1C93AB07C();
  swift_getWitnessTable();
  sub_1C93AB0D8();
  v81 = ready;
  v80 = v14;
  v76 = type metadata accessor for KeyedDecodingContainer();
  sub_1C939D44C(v76);
  v75 = v15;
  v17 = *(v16 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C939ED24();
  v82 = v19;
  sub_1C93AB0B4();
  _s23SessionAcquisitionEventO10CodingKeysOMa();
  sub_1C93AB064();
  swift_getWitnessTable();
  v88 = type metadata accessor for KeyedDecodingContainer();
  sub_1C939D44C(v88);
  v91 = v20;
  v22 = *(v21 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v71 - v24;
  v90 = a2;
  v26 = type metadata accessor for CKImplementingCC.SessionAcquisitionEvent();
  v27 = sub_1C939D44C(v26);
  v86 = v28;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27);
  v33 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v71 - v35;
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v71 - v37;
  v39 = a1;
  v40 = a1[3];
  v41 = v39[4];
  v97 = v39;
  sub_1C93A4890(v39, v40);
  v89 = v25;
  v42 = v92;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v42)
  {
    v74 = v36;
    v72 = v33;
    v73 = v38;
    v43 = v89;
    v92 = v26;
    v44 = v88;
    *&v93 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v95 = ArraySlice.init<A>(_:)();
    *(&v95 + 1) = v45;
    *&v96 = v46;
    *(&v96 + 1) = v47;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v48 = v93;
    if (v93 == 2 || (v71 = v95, v93 = v95, v94 = v96, (Collection.isEmpty.getter() & 1) == 0))
    {
      v51 = type metadata accessor for DecodingError();
      swift_allocError();
      v53 = v52;
      v54 = *(sub_1C93A1890(&qword_1EC39AAB0, "̗") + 48);
      *v53 = v92;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
      swift_willThrow();
      (*(v91 + 8))(v43, v44);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v48)
      {
        LOBYTE(v93) = 1;
        sub_1C93AB0C4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v49 = v87;
        sub_1C93AA324();
        v50 = v78;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v59 = sub_1C93AB094(&v99);
        v60(v59, v50);
        v61 = sub_1C93AB0A4();
        v62(v61);
        sub_1C939ED14();
        swift_unknownObjectRelease();
        v63 = v72;
        *v72 = v93;
        v64 = v92;
        swift_storeEnumTagMultiPayload();
        v65 = *(v86 + 32);
        v66 = v73;
        v65(v73, v63, v64);
      }

      else
      {
        LOBYTE(v93) = 0;
        sub_1C93AB0C4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v55 = v86;
        v56 = v74;
        v57 = v76;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v67 = sub_1C93AB094(&v98);
        v68(v67, v57);
        v69 = sub_1C93AB0A4();
        v70(v69);
        sub_1C939ED14();
        swift_unknownObjectRelease();
        v64 = v92;
        swift_storeEnumTagMultiPayload();
        v65 = *(v55 + 32);
        v66 = v73;
        v65(v73, v56, v64);
        v49 = v87;
      }

      v65(v49, v66, v64);
    }
  }

  return sub_1C939EA94(v97);
}

unint64_t sub_1C93AA324()
{
  result = qword_1EC39AAB8[0];
  if (!qword_1EC39AAB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC39AAB8);
  }

  return result;
}

uint64_t static CKImplementingCC.SessionAcquisitionEvent<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v41[1] = a4;
  v44 = a1;
  v45 = a2;
  sub_1C939D47C();
  v43 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C93A59A8();
  v41[0] = v10 - v9;
  v11 = type metadata accessor for CKImplementingCC.SessionAcquisitionEvent();
  v12 = sub_1C939D44C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v12);
  v19 = v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v41 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_1C939D44C(TupleTypeMetadata2);
  v42 = v23;
  v25 = *(v24 + 64);
  sub_1C939D440();
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = v41 - v28;
  v30 = *(v27 + 48);
  v31 = *(v14 + 16);
  v31(v41 - v28, v44, v11);
  v31(&v29[v30], v45, v11);
  sub_1C93AB0E4();
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v31(v21, v29, v11);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v33 = v43;
      v34 = &v29[v30];
      v35 = v41[0];
      (*(v43 + 32))(v41[0], v34, a3);
      v32 = dispatch thunk of static Equatable.== infix(_:_:)();
      v36 = *(v33 + 8);
      v36(v35, a3);
      v36(v21, a3);
      goto LABEL_8;
    }

    (*(v43 + 8))(v21, a3);
    goto LABEL_6;
  }

  v31(v19, v29, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_6:
    v32 = 0;
    v14 = v42;
    goto LABEL_8;
  }

  v32 = *v19 == v29[v30];
LABEL_8:
  v37 = *(v14 + 8);
  v38 = sub_1C93AB0E4();
  v39(v38);
  return v32 & 1;
}

uint64_t CKImplementingCC.SessionAcquisitionEvent<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *v12;
    MEMORY[0x1CCA87E40](1);
    return MEMORY[0x1CCA87E40](v15);
  }

  else
  {
    (*(v4 + 32))(v8, v12, v3);
    MEMORY[0x1CCA87E40](0);
    dispatch thunk of Hashable.hash(into:)();
    v17 = *(v4 + 8);
    v18 = sub_1C93AB0E4();
    return v19(v18);
  }
}

Swift::Int CKImplementingCC.SessionAcquisitionEvent<A>.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  CKImplementingCC.SessionAcquisitionEvent<A>.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1C93AA900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  CKImplementingCC.SessionAcquisitionEvent<A>.hash(into:)(v6, a2);
  return Hasher._finalize()();
}

BOOL static CKImplementingCC.SessionAcquisitionEvent<A>.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1[1])
  {
    if (a2[1])
    {
      return *a1 == *a2;
    }

    return 0;
  }

  return (a2[1] & 1) == 0;
}

uint64_t sub_1C93AA9E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C93AAA50(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  if (*(v3 + 64) <= 1uLL)
  {
    v4 = 1;
  }

  else
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_23;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v9 < 2)
    {
LABEL_23:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_23;
  }

LABEL_15:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    switch(v5)
    {
      case 2:
        LODWORD(v5) = *a1;
        break;
      case 3:
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v5) = *a1;
        break;
      default:
        LODWORD(v5) = *a1;
        break;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1C93AAB70(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if (a3 < 0xFF)
  {
    v8 = 0;
  }

  else if (v6 <= 3)
  {
    v11 = ((a3 + ~(-1 << v7) - 254) >> v7) + 1;
    if (HIWORD(v11))
    {
      v8 = 4;
    }

    else
    {
      if (v11 < 0x100)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      if (v11 >= 2)
      {
        v8 = v12;
      }

      else
      {
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 1;
  }

  if (a2 > 0xFE)
  {
    v9 = a2 - 255;
    if (v6 < 4)
    {
      v10 = (v9 >> v7) + 1;
      if (v5 != -1)
      {
        v13 = v9 & ~(-1 << v7);
        bzero(a1, v6);
        if (v6 == 3)
        {
          *a1 = v13;
          a1[2] = BYTE2(v13);
        }

        else if (v6 == 2)
        {
          *a1 = v13;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      bzero(a1, v5 + 1);
      *a1 = v9;
      v10 = 1;
    }

    switch(v8)
    {
      case 1:
        a1[v6] = v10;
        break;
      case 2:
        *&a1[v6] = v10;
        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v6] = v10;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v8)
    {
      case 1:
        a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      case 2:
        *&a1[v6] = 0;
        goto LABEL_25;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v6] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_26;
      default:
LABEL_25:
        if (a2)
        {
LABEL_26:
          a1[v5] = -a2;
        }

        break;
    }
  }
}

uint64_t _s7PersonaV7PayloadO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1C93AADB8(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1C93AAE84(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t dispatch thunk of CKImplementingCC.ContainerProtocol.allowListedBundleIDs()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v6 = sub_1C93AB480(v5);

  return v7(v6);
}

uint64_t dispatch thunk of CKImplementingCC.ContainerProtocol.quotaAvailable()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v9 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v6 = sub_1C93AB480(v5);

  return v7(v6);
}

uint64_t sub_1C93AB300(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t AnonymousSession.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 8);
  v3 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 16);
  *a1 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AnonymousSession.resolvedUserPersonaUniqueString.getter()
{
  v1 = v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_acquiredInfo;
  v2 = (v1 + *(type metadata accessor for AnonymousSession.AcquiredInfo() + 24));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t AnonymousSession.anyContainer.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_anyContainer);
  v2 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_anyContainer + 8);
  return swift_unknownObjectRetain();
}

uint64_t AnonymousSession.__allocating_init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(v7 + 48);
  v16 = *(v7 + 52);
  v17 = swift_allocObject();
  AnonymousSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(a1, a2, a3, a4, a5, a6, a7);
  return v17;
}

uint64_t AnonymousSession.init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v72 = a6;
  v73 = a7;
  v70 = a4;
  v71 = a5;
  v75 = a3;
  v76 = a1;
  v69 = type metadata accessor for SessionValidity(0);
  v10 = sub_1C939D430(v69);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59A8();
  v67 = (v14 - v13);
  v15 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  v16 = *(v15 - 8);
  v68 = v15 - 8;
  v74 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v66 = &v63 - v17;
  v18 = type metadata accessor for AnySessionAcquiredInfo();
  v19 = (v18 - 8);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1C93A59A8();
  v23 = v22 - v21;
  v24 = type metadata accessor for AnonymousSession.AcquiredInfo();
  v25 = (v24 - 8);
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1C93A59A8();
  v29 = v28 - v27;
  v31 = *a2;
  v30 = a2[1];
  v32 = *(a2 + 16);
  v33 = *(a2 + 17);
  v34 = a2[3];
  v63 = a2[4];
  v64 = v30;
  v65 = v8;
  sub_1C93AC9A0(v76, v8 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_id, type metadata accessor for SessionID);
  v35 = v8 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration;
  v36 = v63;
  v37 = v64;
  *v35 = v31;
  *(v35 + 8) = v37;
  *(v35 + 16) = v32;
  *(v35 + 17) = v33;
  *(v35 + 24) = v34;
  *(v35 + 32) = v36;
  sub_1C93AC9A0(v75, v23, type metadata accessor for AnySessionAcquiredInfo);
  v38 = v25[9];
  v39 = (v29 + v25[8]);
  v40 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A1710(v29 + v38, 1, 1, v40);
  sub_1C93AC9A0(v23, v29, type metadata accessor for SessionID);
  v41 = (v23 + v19[7]);
  v42 = *v41;
  v43 = v41[1];
  v44 = (v29 + v25[7]);
  *v44 = v42;
  v44[1] = v43;
  v45 = (v23 + v19[9]);
  v46 = v45[1];
  *v39 = *v45;
  v39[1] = v46;
  v47 = v19[11];
  sub_1C93A1988(v42, v43);

  sub_1C93ABA20(v29 + v38);
  sub_1C93A1DE4(v23 + v47, v29 + v38);
  sub_1C93ACA00(v23, type metadata accessor for AnySessionAcquiredInfo);
  v48 = v65;
  sub_1C93AC8F8(v29, v65 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_acquiredInfo, type metadata accessor for AnonymousSession.AcquiredInfo);
  v49 = (v48 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_anyContainer);
  v50 = v48;
  v51 = v71;
  *v49 = v70;
  v49[1] = v51;
  v53 = v72;
  v52 = v73;
  v54 = v67;
  *v67 = v72;
  *(v54 + 8) = v52;
  swift_storeEnumTagMultiPayload();
  swift_unknownObjectRetain();
  sub_1C93A1478(v53);
  v55 = v66;
  *v66 = 0;
  v56 = *(v68 + 36);
  v57 = sub_1C93A1890(&qword_1EC39AC48, &unk_1C93FDC90);
  bzero(&v55[v56], *(*(v57 - 8) + 64));
  sub_1C93AC8F8(v54, &v55[v56], type metadata accessor for SessionValidity);
  memcpy((v50 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity), v55, v74);
  ObjectType = swift_getObjectType();
  v59 = swift_allocObject();
  swift_weakInit();
  v60 = *(v51 + 32);

  v60(sub_1C93ABAFC, v59, ObjectType, v51);
  swift_unknownObjectRelease();
  sub_1C93A14F4(v53);
  sub_1C93ACA00(v75, type metadata accessor for AnySessionAcquiredInfo);
  sub_1C93ACA5C();
  sub_1C93ACA00(v76, v61);

  return v50;
}

uint64_t sub_1C93ABA20(uint64_t a1)
{
  v2 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C93ABA88(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C93B3514();
  }

  return result;
}

void sub_1C93ABB04(uint64_t a1)
{
  v2 = type metadata accessor for SessionValidity(0);
  v3 = sub_1C939D430(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  v8 = (v7 - v6);
  v9 = type metadata accessor for SessionInvalidationContext(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C93A59A8();
  v13 = v12 - v11;
  v14 = (a1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity);
  os_unfair_lock_lock(v14);
  v15 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  sub_1C93AC9A0(v14 + *(v15 + 28), v8, type metadata accessor for SessionValidity);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v8;
    v17 = sub_1C93A1890(&qword_1EC39AC70, &qword_1C93FDD98);
    sub_1C93AC8F8(&v8[*(v17 + 48)], v13, type metadata accessor for SessionInvalidationContext);
    type metadata accessor for CloudCoreError();
    sub_1C93AC958(&qword_1EC39AC78, type metadata accessor for CloudCoreError);
    swift_allocError();
    v19 = v18;
    v20 = sub_1C93A1890(&qword_1EC39AC80, &qword_1C93FDDA0);
    v21 = *(v20 + 48);
    *v19 = v16;
    sub_1C93AC9A0(v13, &v19[v21], type metadata accessor for SessionInvalidationContext);
    sub_1C93A1710(v19, 0, 4, v20);
    swift_willThrow();
    v22 = type metadata accessor for SessionInvalidationContext;
    v23 = v13;
  }

  else
  {
    sub_1C93ACA74();
    v23 = v8;
  }

  sub_1C93ACA00(v23, v22);
  os_unfair_lock_unlock(v14);
}

void _s17CloudCoreInternal16AnonymousSessionC04withE8ValidityyxxAA0eG0OzYuq_YKYTXEq_YKs5ErrorR_r0_lF(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](a1);
  sub_1C93A59A8();
  v14 = v13 - v12;
  v15 = (v6 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity);
  os_unfair_lock_lock((v6 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity));
  v16 = sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80);
  a1(v15 + *(v16 + 28), v14);
  if (v7)
  {
    (*(v10 + 32))(a6, v14, a4);
  }

  type metadata accessor for SessionValidity(0);
  os_unfair_lock_unlock(v15);
}

uint64_t AnonymousSession.deinit()
{
  sub_1C93ACA5C();
  sub_1C93ACA00(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 8);
  v4 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 32);

  sub_1C939D4A4();
  sub_1C93ACA00(v0 + v5, v6);
  v7 = *(v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_anyContainer);
  swift_unknownObjectRelease();
  v8 = v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_sessionValidity;
  v9 = *(sub_1C93A1890(&qword_1EC39AC40, &unk_1C93FDC80) + 28);
  sub_1C93ACA74();
  sub_1C93ACA00(v8 + v10, v11);
  return v0;
}

uint64_t AnonymousSession.__deallocating_deinit()
{
  AnonymousSession.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C93ABFFC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  result = AnonymousSession.__allocating_init(sessionID:configuration:anySessionAcquiredInfo:anyContainer:invalidationHandler:)(a1, a2, a3, a4, a5, a6, a7);
  *a8 = result;
  return result;
}

void sub_1C93AC024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  _s17CloudCoreInternal16AnonymousSessionC04withE8ValidityyxxAA0eG0OzYuq_YKYTXEq_YKs5ErrorR_r0_lF(v12, v16, v17, v18, v19, v14);
  if (v7)
  {
    (*(v10 + 32))(a6, v14, a4);
  }
}

uint64_t AnonymousSession.propertyDescriptions.getter()
{
  v1 = v0;
  v62 = type metadata accessor for AnonymousSession.AcquiredInfo();
  v2 = sub_1C939D430(v62);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C93A59B8();
  v61 = v5 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v57 - v8;
  v9 = type metadata accessor for OSLogPrivacy();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1C93A59B8();
  v63 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = type metadata accessor for SessionID(0);
  v17 = sub_1C939D430(v16);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  sub_1C93A59B8();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v26 = (type metadata accessor for PropertyDescription() - 8);
  v27 = *v26;
  v65 = *(*v26 + 72);
  v28 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v29 = swift_allocObject();
  v59 = v29;
  *(v29 + 16) = xmmword_1C93FDC70;
  v30 = (v29 + v28);
  v57 = v0;
  sub_1C93AC9A0(v0 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_id, v25, type metadata accessor for SessionID);
  static OSLogPrivacy.public.getter();
  sub_1C93AC9A0(v25, v22, type metadata accessor for SessionID);
  v31 = String.init<A>(describing:)();
  v33 = v32;
  v58 = MEMORY[0x1E69E93B0];
  v34 = v63;
  sub_1C93AC9A0(v15, v63, MEMORY[0x1E69E93B0]);
  v35 = v26[8];
  static OSLogPrivacy.auto.getter();
  v64 = MEMORY[0x1E69E93B0];
  sub_1C93ACA00(v15, MEMORY[0x1E69E93B0]);
  *v30 = 25705;
  v30[1] = 0xE200000000000000;
  v30[2] = v31;
  v30[3] = v33;
  sub_1C93A8768(v34, v30 + v35);
  sub_1C93ACA5C();
  sub_1C93ACA00(v25, v36);
  v37 = v30 + v65;
  v38 = v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration;
  v40 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration);
  v39 = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 8);
  LOBYTE(v1) = *(v1 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_configuration + 16);
  LOBYTE(v22) = *(v38 + 17);
  v41 = *(v38 + 24);
  v42 = *(v38 + 32);
  static OSLogPrivacy.auto.getter();
  v66 = v40;
  v67 = v39;
  v68 = v1;
  v69 = v22;
  v70 = v41;
  v71 = v42;

  v43 = String.init<A>(describing:)();
  v45 = v44;
  v46 = v63;
  v47 = v58;
  sub_1C93AC9A0(v15, v63, v58);
  v48 = v26[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93ACA00(v15, v64);
  strcpy(v37, "configuration");
  *(v37 + 7) = -4864;
  *(v37 + 2) = v43;
  *(v37 + 3) = v45;
  sub_1C93A8768(v46, &v37[v48]);
  v49 = v30 + 2 * v65;
  v50 = v60;
  sub_1C93AC9A0(v57 + OBJC_IVAR____TtC17CloudCoreInternal16AnonymousSession_acquiredInfo, v60, type metadata accessor for AnonymousSession.AcquiredInfo);
  static OSLogPrivacy.auto.getter();
  sub_1C93AC9A0(v50, v61, type metadata accessor for AnonymousSession.AcquiredInfo);
  v51 = String.init<A>(describing:)();
  v53 = v52;
  sub_1C93AC9A0(v15, v46, v47);
  v54 = v26[8];
  static OSLogPrivacy.auto.getter();
  sub_1C93ACA00(v15, v64);
  strcpy(v49, "acquiredInfo");
  v49[13] = 0;
  *(v49 + 7) = -5120;
  *(v49 + 2) = v51;
  *(v49 + 3) = v53;
  sub_1C93A8768(v46, &v49[v54]);
  sub_1C939D4A4();
  sub_1C93ACA00(v50, v55);
  return v59;
}

unint64_t sub_1C93AC5C0()
{
  result = qword_1EC39AC50;
  if (!qword_1EC39AC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AC50);
  }

  return result;
}

uint64_t sub_1C93AC614(uint64_t a1)
{
  result = sub_1C93AC958(&qword_1EC39AC58, type metadata accessor for AnonymousSession);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for AnonymousSession()
{
  result = qword_1EE02B140;
  if (!qword_1EE02B140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C93AC700(uint64_t a1)
{
  result = sub_1C93AC958(&qword_1EC39AC68, type metadata accessor for AnonymousSession);
  *(a1 + 8) = result;
  return result;
}

void sub_1C93AC760()
{
  v0 = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    v2 = type metadata accessor for AnonymousSession.AcquiredInfo();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1C93AC8A0();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1C93AC8A0()
{
  if (!qword_1EE02C190)
  {
    type metadata accessor for SessionValidity(255);
    v0 = type metadata accessor for Mutex();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE02C190);
    }
  }
}

uint64_t sub_1C93AC8F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C939D430(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C93AC958(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C93AC9A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  sub_1C939D430(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C93ACA00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_1C939D430(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t AnonymousSession.AcquiredInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AnonymousSession.AcquiredInfo();
  v5 = v4[7];
  v6 = (a2 + v4[6]);
  v7 = type metadata accessor for SessionInvalidationContext(0);
  sub_1C93A1710(a2 + v5, 1, 1, v7);
  sub_1C93AEBA4();
  sub_1C93A5A40();
  sub_1C93AE560();
  v8 = type metadata accessor for AnySessionAcquiredInfo();
  v9 = (a1 + v8[5]);
  v11 = *v9;
  v10 = v9[1];
  v12 = (a2 + v4[5]);
  *v12 = v11;
  v12[1] = v10;
  v13 = (a1 + v8[7]);
  v14 = v13[1];
  *v6 = *v13;
  v6[1] = v14;
  v15 = v8[9];
  sub_1C93A1988(v11, v10);

  sub_1C93A4838(a2 + v5, &qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A1DE4(a1 + v15, a2 + v5);
  return sub_1C93AE4B8();
}

uint64_t type metadata accessor for AnonymousSession.AcquiredInfo()
{
  result = qword_1EE02B1F0;
  if (!qword_1EE02B1F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnonymousSession.AcquiredInfo.privilegedInfoHash.getter()
{
  v1 = (v0 + *(type metadata accessor for AnonymousSession.AcquiredInfo() + 20));
  v2 = *v1;
  v3 = v1[1];
  v4 = sub_1C93A5A40();
  sub_1C93A1988(v4, v5);
  return sub_1C93A5A40();
}

uint64_t AnonymousSession.AcquiredInfo.privilegedInfoHash.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AnonymousSession.AcquiredInfo() + 20);
  result = sub_1C93A17C8(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t (*AnonymousSession.AcquiredInfo.privilegedInfoHash.modify())()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnonymousSession.AcquiredInfo() + 20);
  return nullsub_1;
}

uint64_t AnonymousSession.AcquiredInfo.userPersonaUniqueString.getter()
{
  v1 = (v0 + *(type metadata accessor for AnonymousSession.AcquiredInfo() + 24));
  v2 = *v1;
  v3 = v1[1];

  return sub_1C93A5A40();
}

uint64_t AnonymousSession.AcquiredInfo.userPersonaUniqueString.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AnonymousSession.AcquiredInfo() + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*AnonymousSession.AcquiredInfo.userPersonaUniqueString.modify())()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnonymousSession.AcquiredInfo() + 24);
  return nullsub_1;
}

uint64_t AnonymousSession.AcquiredInfo.previousInvalidationContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AnonymousSession.AcquiredInfo() + 28);

  return sub_1C93A1DE4(v3, a1);
}

uint64_t AnonymousSession.AcquiredInfo.previousInvalidationContext.setter()
{
  sub_1C93A59DC();
  v2 = v1 + *(type metadata accessor for AnonymousSession.AcquiredInfo() + 28);

  return sub_1C93A1820(v0, v2);
}

uint64_t (*AnonymousSession.AcquiredInfo.previousInvalidationContext.modify())()
{
  sub_1C93A59DC();
  v0 = *(type metadata accessor for AnonymousSession.AcquiredInfo() + 28);
  return nullsub_1;
}

BOOL static AnonymousSession.AcquiredInfo.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionInvalidationContext(0);
  v5 = sub_1C939D430(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C93A59A8();
  v8 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v8);
  v10 = *(v9 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - v12;
  v14 = sub_1C93A1890(&qword_1EC39A9F8, &qword_1C93FCE08);
  sub_1C939D430(v14);
  v16 = *(v15 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v33 - v18;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v20 = type metadata accessor for AnonymousSession.AcquiredInfo();
  if ((MEMORY[0x1CCA874A0](*(a1 + v20[5]), *(a1 + v20[5] + 8), *(a2 + v20[5]), *(a2 + v20[5] + 8)) & 1) == 0)
  {
    return 0;
  }

  v21 = v20[6];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = *v22 == *v24 && v23 == v25;
    if (!v26 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v27 = v20[7];
  v28 = *(v14 + 48);
  sub_1C93A1DE4(a1 + v27, v19);
  sub_1C93A1DE4(a2 + v27, &v19[v28]);
  sub_1C93AEBD4(v19);
  if (v26)
  {
    sub_1C93AEBD4(&v19[v28]);
    if (v26)
    {
      sub_1C93A4838(v19, &qword_1EC39A9F0, &qword_1C93FCE00);
      return 1;
    }

    goto LABEL_20;
  }

  sub_1C93A1DE4(v19, v13);
  sub_1C93AEBD4(&v19[v28]);
  if (v29)
  {
    sub_1C93AEB74();
    sub_1C93AE4B8();
LABEL_20:
    sub_1C93A4838(v19, &qword_1EC39A9F8, &qword_1C93FCE08);
    return 0;
  }

  sub_1C93AEB5C();
  sub_1C93AE50C();
  static SessionInvalidationContext.== infix(_:_:)();
  v32 = v31;
  sub_1C93AE4B8();
  sub_1C93AE4B8();
  sub_1C93A4838(v19, &qword_1EC39A9F0, &qword_1C93FCE00);
  return (v32 & 1) != 0;
}

uint64_t sub_1C93AD120(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C9405FF0 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000017 && 0x80000001C9406060 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001BLL && 0x80000001C9406010 == a2)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_1C93AD290(char a1)
{
  result = 0x496E6F6973736573;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      v3 = 5;
      goto LABEL_5;
    case 3:
      v3 = 9;
LABEL_5:
      result = v3 | 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C93AD330@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93AD120(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93AD358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93AD288();
  *a1 = result;
  return result;
}

uint64_t sub_1C93AD380(uint64_t a1)
{
  v2 = sub_1C93AE464();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93AD3BC(uint64_t a1)
{
  v2 = sub_1C93AE464();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnonymousSession.AcquiredInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1C93A1890(&qword_1EC39AC88, &qword_1C93FDDA8);
  sub_1C939D44C(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26[-v11];
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AE464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v27) = 0;
  type metadata accessor for SessionID(0);
  sub_1C93AEB8C();
  sub_1C93AE748(v14, v15);
  sub_1C93AEBF4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = type metadata accessor for AnonymousSession.AcquiredInfo();
    v17 = (v3 + v16[5]);
    v18 = v17[1];
    v27 = *v17;
    v28 = v18;
    v26[15] = 1;
    sub_1C93A1988(v27, v18);
    sub_1C93A4928();
    sub_1C93AEBF4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1C93A17C8(v27, v28);
    v19 = (v3 + v16[6]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v27) = 2;
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v16[7];
    LOBYTE(v27) = 3;
    type metadata accessor for SessionInvalidationContext(0);
    sub_1C93AEBBC();
    sub_1C93AE748(v23, v24);
    sub_1C93AEBF4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void AnonymousSession.AcquiredInfo.hash(into:)()
{
  v1 = sub_1C93A59DC();
  v2 = type metadata accessor for SessionInvalidationContext(v1);
  v3 = sub_1C939D430(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  sub_1C93A59A8();
  v6 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v6);
  v8 = *(v7 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v19 - v10;
  type metadata accessor for UUID();
  sub_1C93AE748(&qword_1EC39AA08, MEMORY[0x1E69695A8]);
  dispatch thunk of Hashable.hash(into:)();
  v12 = type metadata accessor for AnonymousSession.AcquiredInfo();
  v13 = (v0 + v12[5]);
  v14 = *v13;
  v15 = v13[1];
  Data.hash(into:)();
  v16 = (v0 + v12[6]);
  if (v16[1])
  {
    v17 = *v16;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  sub_1C93A1DE4(v0 + v12[7], v11);
  sub_1C93AEBD4(v11);
  if (v18)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    sub_1C93AEB5C();
    sub_1C93AE50C();
    Hasher._combine(_:)(1u);
    SessionInvalidationContext.hash(into:)();
    sub_1C93AEB74();
    sub_1C93AE4B8();
  }
}

Swift::Int AnonymousSession.AcquiredInfo.hashValue.getter()
{
  Hasher.init(_seed:)();
  AnonymousSession.AcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AnonymousSession.AcquiredInfo.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v3);
  v5 = *(v4 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v43 - v7;
  v9 = type metadata accessor for SessionID(0);
  v10 = sub_1C939D430(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C93A59A8();
  v45 = v14 - v13;
  v46 = sub_1C93A1890(&qword_1EC39AC98, &qword_1C93FDDB0);
  sub_1C939D44C(v46);
  v44 = v15;
  v17 = *(v16 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v21 = type metadata accessor for AnonymousSession.AcquiredInfo();
  v22 = sub_1C939D430(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1C93A59A8();
  v27 = v26 - v25;
  v29 = *(v28 + 28);
  v30 = type metadata accessor for SessionInvalidationContext(0);
  v49 = v27;
  v50 = v29;
  sub_1C93A1710(v27 + v29, 1, 1, v30);
  v31 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AE464();
  v47 = v20;
  v32 = v48;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v32)
  {
    sub_1C939EA94(a1);
    return sub_1C93A4838(v49 + v50, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    v33 = v44;
    v48 = v8;
    LOBYTE(v51) = 0;
    sub_1C93AEB8C();
    sub_1C93AE748(v34, v35);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v36 = v49;
    sub_1C93AE50C();
    v52 = 1;
    sub_1C93A4A6C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v36 + *(v21 + 20)) = v51;
    LOBYTE(v51) = 2;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = (v36 + *(v21 + 24));
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v51) = 3;
    sub_1C93AEBBC();
    sub_1C93AE748(v40, v41);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v33 + 8))(v47, v46);
    sub_1C93A1820(v48, v36 + v50);
    sub_1C93AE560();
    sub_1C939EA94(a1);
    return sub_1C93AE4B8();
  }
}

Swift::Int sub_1C93ADCE0()
{
  Hasher.init(_seed:)();
  AnonymousSession.AcquiredInfo.hash(into:)();
  return Hasher._finalize()();
}

size_t AnonymousSession.AcquiredInfo.propertyDescriptions.getter()
{
  v0 = sub_1C93A1890(&qword_1EC39A9F0, &qword_1C93FCE00);
  sub_1C93A5A08(v0);
  v2 = *(v1 + 64);
  sub_1C939D440();
  MEMORY[0x1EEE9AC00](v3);
  v81 = v75 - v4;
  v82 = type metadata accessor for SessionInvalidationContext(0);
  v5 = sub_1C939D430(v82);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  sub_1C93A59B8();
  v75[0] = v8 - v9;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v10);
  v75[1] = v75 - v11;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v12);
  v84 = v75 - v13;
  v14 = type metadata accessor for PropertyDescription();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1C93A59B8();
  v83 = (v17 - v18);
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v19);
  v78 = v75 - v20;
  sub_1C93A5A7C();
  MEMORY[0x1EEE9AC00](v21);
  v23 = (v75 - v22);
  v24 = type metadata accessor for OSLogPrivacy();
  v25 = sub_1C93A5A08(v24);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  sub_1C93A59B8();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v32 = type metadata accessor for SessionID(0);
  v33 = sub_1C939D430(v32);
  v35 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1C93A59B8();
  MEMORY[0x1EEE9AC00](v36);
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v37 = *(v15 + 72);
  v38 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v80 = v37;
  v75[2] = v38 + v37;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_1C93FCDF0;
  v79 = v38;
  v76 = v39;
  v40 = (v39 + v38);
  v41 = v77;
  sub_1C93AE560();
  static OSLogPrivacy.auto.getter();
  sub_1C93AE560();
  v42 = String.init<A>(describing:)();
  v44 = v43;
  sub_1C93AEB18();
  sub_1C93AE560();
  v86 = v14;
  v45 = *(v14 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93AEB34();
  *v40 = 0x496E6F6973736573;
  v40[1] = 0xE900000000000044;
  v40[2] = v42;
  v40[3] = v44;
  sub_1C93A5878();
  v46 = v41;
  v85 = v30;
  sub_1C93A4BBC();
  sub_1C939ED30();
  sub_1C93AE4B8();
  v47 = type metadata accessor for AnonymousSession.AcquiredInfo();
  v48 = (v41 + v47[6]);
  v49 = v48[1];
  if (v49)
  {
    v50 = *v48;
    swift_bridgeObjectRetain_n();
    static OSLogPrivacy.public.getter();
    v87 = v50;
    v88 = v49;
    v51 = String.init<A>(describing:)();
    v53 = v52;
    sub_1C93AEB18();
    sub_1C93AE560();
    v54 = *(v86 + 24);
    static OSLogPrivacy.auto.getter();

    sub_1C93AEB34();
    *v23 = 0xD000000000000017;
    v23[1] = 0x80000001C9406060;
    v23[2] = v51;
    v23[3] = v53;
    v46 = v41;
    sub_1C93A5878();
    sub_1C93A4BBC();
    v55 = sub_1C93A4F7C(1uLL, 2, 1, v76);
    *(v55 + 16) = 2;
    sub_1C939D4BC();
    sub_1C93AE50C();
  }

  else
  {
    v55 = v76;
  }

  v56 = v46 + v47[5];
  if (sub_1C93A41A4(*v56, *(v56 + 8)))
  {
    v57 = v81;
  }

  else
  {
    v77 = v47;
    v58 = *v56;
    v59 = *(v56 + 8);
    static OSLogPrivacy.auto.getter();
    v87 = v58;
    v88 = v59;
    sub_1C93A1988(v58, v59);
    v60 = String.init<A>(describing:)();
    v62 = v61;
    sub_1C93AEB18();
    sub_1C93AE560();
    v63 = *(v86 + 24);
    v64 = v78;
    static OSLogPrivacy.auto.getter();
    sub_1C93AEB34();
    *v64 = 0xD000000000000012;
    v64[1] = 0x80000001C9405FF0;
    v64[2] = v60;
    v64[3] = v62;
    sub_1C93A5878();
    sub_1C93A4BBC();
    v66 = *(v55 + 16);
    v65 = *(v55 + 24);
    if (v66 >= v65 >> 1)
    {
      v55 = sub_1C93A4F7C(v65 > 1, v66 + 1, 1, v55);
    }

    *(v55 + 16) = v66 + 1;
    sub_1C939D4BC();
    sub_1C93AE50C();
    v57 = v81;
    v47 = v77;
  }

  sub_1C93A1DE4(v46 + v47[7], v57);
  if (sub_1C93A4810(v57, 1, v82) == 1)
  {
    sub_1C93A4838(v57, &qword_1EC39A9F0, &qword_1C93FCE00);
  }

  else
  {
    sub_1C93AEB5C();
    sub_1C93AE50C();
    sub_1C93AE560();
    static OSLogPrivacy.auto.getter();
    sub_1C93AE560();
    v67 = String.init<A>(describing:)();
    v69 = v68;
    sub_1C93AEB18();
    sub_1C93AE560();
    v70 = *(v86 + 24);
    v71 = v83;
    static OSLogPrivacy.auto.getter();
    sub_1C93AEB34();
    *v71 = 0xD00000000000001BLL;
    v71[1] = 0x80000001C9406010;
    v71[2] = v67;
    v71[3] = v69;
    sub_1C93A5878();
    sub_1C93A4BBC();
    sub_1C93AEB74();
    sub_1C93AE4B8();
    v73 = *(v55 + 16);
    v72 = *(v55 + 24);
    if (v73 >= v72 >> 1)
    {
      v55 = sub_1C93A4F7C(v72 > 1, v73 + 1, 1, v55);
    }

    sub_1C93AE4B8();
    *(v55 + 16) = v73 + 1;
    sub_1C939D4BC();
    sub_1C93AE50C();
  }

  return v55;
}

unint64_t sub_1C93AE464()
{
  result = qword_1EC39AC90;
  if (!qword_1EC39AC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AC90);
  }

  return result;
}

uint64_t sub_1C93AE4B8()
{
  v1 = sub_1C93A59DC();
  v3 = v2(v1);
  sub_1C939D430(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1C93AE50C()
{
  v1 = sub_1C93A59E8();
  v3 = v2(v1);
  sub_1C939D430(v3);
  v5 = *(v4 + 32);
  v6 = sub_1C93A5A40();
  v7(v6);
  return v0;
}

uint64_t sub_1C93AE560()
{
  v1 = sub_1C93A59E8();
  v3 = v2(v1);
  sub_1C939D430(v3);
  v5 = *(v4 + 16);
  v6 = sub_1C93A5A40();
  v7(v6);
  return v0;
}

uint64_t sub_1C93AE5FC(void *a1)
{
  a1[1] = sub_1C93AE748(&qword_1EC39ACA8, type metadata accessor for AnonymousSession.AcquiredInfo);
  a1[2] = sub_1C93AE748(&qword_1EC39ACB0, type metadata accessor for AnonymousSession.AcquiredInfo);
  result = sub_1C93AE748(&qword_1EC39ACB8, type metadata accessor for AnonymousSession.AcquiredInfo);
  a1[3] = result;
  return result;
}

uint64_t sub_1C93AE6F0(uint64_t a1)
{
  result = sub_1C93AE748(&qword_1EC39ACC8, type metadata accessor for AnonymousSession.AcquiredInfo);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C93AE748(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1C93AE7B8()
{
  type metadata accessor for SessionID(319);
  if (v0 <= 0x3F)
  {
    sub_1C93AE85C();
    if (v1 <= 0x3F)
    {
      sub_1C93A5334();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C93AE85C()
{
  if (!qword_1EE02C1D8[0])
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, qword_1EE02C1D8);
    }
  }
}

uint64_t _s12AcquiredInfoV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s12AcquiredInfoV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93AEA14()
{
  result = qword_1EC39ACD0;
  if (!qword_1EC39ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ACD0);
  }

  return result;
}

unint64_t sub_1C93AEA6C()
{
  result = qword_1EC39ACD8;
  if (!qword_1EC39ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ACD8);
  }

  return result;
}

unint64_t sub_1C93AEAC4()
{
  result = qword_1EC39ACE0;
  if (!qword_1EC39ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ACE0);
  }

  return result;
}

uint64_t sub_1C93AEB34()
{

  return sub_1C93AE4B8();
}

uint64_t AnonymousSession.Configuration.containerID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t AnonymousSession.Configuration.containerID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t AnonymousSession.Configuration.application.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  a1[1] = v2;
}

uint64_t AnonymousSession.Configuration.application.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v3;
  return result;
}

uint64_t static AnonymousSession.Configuration.standard.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE02B238 != -1)
  {
    swift_once();
  }

  v2 = *algn_1EE02B248;
  v3 = byte_1EE02B250;
  *a1 = qword_1EE02B240;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
}

uint64_t static AnonymousSession.Configuration.standard(containerID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

BOOL static AnonymousSession.Configuration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a2 + 16);
  v7 = *(a2 + 17);
  v9 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v11 = 0;
    if (v2 != v6)
    {
      return v11;
    }
  }

  else
  {
    v11 = 0;
    if (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((v2 ^ v6))
    {
      return v11;
    }
  }

  if (((v3 ^ v7) & 1) == 0)
  {
    v14[0] = v5;
    v14[1] = v4;
    v13[0] = v9;
    v13[1] = v8;

    v11 = static BundleID.== infix(_:_:)(v14, v13);
  }

  return v11;
}

uint64_t sub_1C93AEE90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656E6961746E6F63 && a2 == 0xEB00000000444972;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C93AEFAC(char a1)
{
  if (!a1)
  {
    return 0x656E6961746E6F63;
  }

  if (a1 == 1)
  {
    return 0x6D6574737973;
  }

  return 0x746163696C707061;
}

uint64_t sub_1C93AF018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93AEE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C93AF040@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93AEFA4();
  *a1 = result;
  return result;
}

uint64_t sub_1C93AF068(uint64_t a1)
{
  v2 = sub_1C93AFAFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93AF0A4(uint64_t a1)
{
  v2 = sub_1C93AFAFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnonymousSession.Configuration.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39ACE8, &qword_1C93FE018);
  v4 = sub_1C939D44C(v3);
  v24 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v20 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 16);
  v28 = *(v1 + 17);
  v13 = v1[3];
  v21 = v1[4];
  v22 = v13;
  v14 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AFAFC();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = v10;
  v26 = v11;
  v27 = v12;
  v29 = 0;
  sub_1C93A814C();
  sub_1C93B0254();
  v15 = v23;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (v15)
  {
    return (*(v24 + 8))(v9, v3);
  }

  v17 = v21;
  v18 = v22;
  v19 = v24;
  LOBYTE(v25) = v28;
  v29 = 1;
  sub_1C93AFB50();
  sub_1C93B0254();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v25 = v18;
  v26 = v17;
  v29 = 2;
  sub_1C93AFBA4();

  sub_1C93B0254();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v19 + 8))(v9, v3);
}

uint64_t AnonymousSession.Configuration.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = v0[3];
  v6 = v0[4];
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  Hasher._combine(_:)(v4);
  if (!v6)
  {
    return MEMORY[0x1CCA87E40](0);
  }

  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int AnonymousSession.Configuration.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = v0[3];
  v6 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x1CCA87E40](v3);
  Hasher._combine(_:)(v4);
  if (v6)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  return Hasher._finalize()();
}

uint64_t AnonymousSession.Configuration.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C93A1890(&qword_1EC39AD08, &qword_1C93FE020);
  v6 = sub_1C939D44C(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93AFAFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1C939EA94(a1);
  }

  sub_1C93A849C();
  sub_1C93B021C();
  sub_1C93AFBF8();
  sub_1C93B021C();
  sub_1C93AFC4C();
  sub_1C93B021C();
  v11 = sub_1C93B0244();
  v12(v11);
  *a2 = v13;
  *(a2 + 8) = v14;
  *(a2 + 16) = v15;
  *(a2 + 17) = v13;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;

  sub_1C939EA94(a1);
}

Swift::Int sub_1C93AF670()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 16);
  v5 = *(v0 + 17);
  v6 = *(v0 + 3);
  Hasher.init(_seed:)();
  AnonymousSession.Configuration.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1C93AF704()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = *(v0 + 4);
  return sub_1C93F5A68();
}

uint64_t AnonymousSession.Configuration.propertyDescriptions.getter()
{
  v1 = type metadata accessor for PropertyDescription();
  v36 = *(v1 - 8);
  v2 = v36;
  v3 = *(v36 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v33 - v6);
  v8 = type metadata accessor for OSLogPrivacy();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v33 - v13;
  v15 = *v0;
  v16 = v0[1];
  v17 = *(v0 + 16);
  v37 = *(v0 + 17);
  v18 = v0[4];
  v34 = v0[3];
  v38 = v18;
  sub_1C93A1890(&qword_1EC39AA18, &qword_1C93FCE20);
  v19 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v36 = *(v2 + 72);
  v33 = v19 + v36;
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C93FCDF0;
  v35 = v19;
  v21 = (v20 + v19);
  static OSLogPrivacy.public.getter();
  v40 = v15;
  v41 = v16;
  v42 = v17;

  String.init<A>(describing:)();
  sub_1C93B0264();
  v22 = *(v1 + 24);
  static OSLogPrivacy.auto.getter();
  sub_1C93A870C(v14);
  *v21 = 0x656E6961746E6F63;
  v21[1] = 0xEB00000000444972;
  v21[2] = v19;
  v21[3] = v16;
  sub_1C93A8768(v12, v20 + v19 + v22);
  if (v37 == 1)
  {
    static OSLogPrivacy.auto.getter();
    LOBYTE(v40) = 1;
    String.init<A>(describing:)();
    sub_1C93B0264();
    v23 = *(v1 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v14);
    *v7 = 0x6D6574737973;
    v7[1] = 0xE600000000000000;
    v7[2] = v19;
    v7[3] = v16;
    sub_1C93A8768(v12, v7 + v23);
    v20 = sub_1C93A4F7C(1uLL, 2, 1, v20);
    *(v20 + 16) = 2;
    sub_1C93A87CC(v7, v20 + v33);
  }

  v24 = v38;
  v25 = v39;
  if (v38)
  {
    static OSLogPrivacy.auto.getter();
    v40 = v34;
    v41 = v24;

    v26 = String.init<A>(describing:)();
    v28 = v27;
    sub_1C93A86A8(v14, v12);
    v29 = *(v1 + 24);
    static OSLogPrivacy.auto.getter();
    sub_1C93A870C(v14);
    *v25 = 0x746163696C707061;
    v25[1] = 0xEB000000006E6F69;
    v25[2] = v26;
    v25[3] = v28;
    sub_1C93A8768(v12, v25 + v29);
    v31 = *(v20 + 16);
    v30 = *(v20 + 24);
    if (v31 >= v30 >> 1)
    {
      v20 = sub_1C93A4F7C(v30 > 1, v31 + 1, 1, v20);
    }

    *(v20 + 16) = v31 + 1;
    sub_1C93A87CC(v25, v20 + v35 + v31 * v36);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  return v20;
}

unint64_t sub_1C93AFAFC()
{
  result = qword_1EC39ACF0;
  if (!qword_1EC39ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ACF0);
  }

  return result;
}

unint64_t sub_1C93AFB50()
{
  result = qword_1EC39ACF8;
  if (!qword_1EC39ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ACF8);
  }

  return result;
}

unint64_t sub_1C93AFBA4()
{
  result = qword_1EC39AD00;
  if (!qword_1EC39AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD00);
  }

  return result;
}

unint64_t sub_1C93AFBF8()
{
  result = qword_1EC39AD10;
  if (!qword_1EC39AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD10);
  }

  return result;
}

unint64_t sub_1C93AFC4C()
{
  result = qword_1EC39AD18;
  if (!qword_1EC39AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD18);
  }

  return result;
}

unint64_t sub_1C93AFCA4()
{
  result = qword_1EC39ACA0;
  if (!qword_1EC39ACA0)
  {
    type metadata accessor for AnonymousSession();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39ACA0);
  }

  return result;
}

unint64_t sub_1C93AFCFC(void *a1)
{
  a1[1] = sub_1C93AFD34();
  a1[2] = sub_1C93AFD88();
  result = sub_1C93AFDDC();
  a1[3] = result;
  return result;
}

unint64_t sub_1C93AFD34()
{
  result = qword_1EC39AD20;
  if (!qword_1EC39AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD20);
  }

  return result;
}

unint64_t sub_1C93AFD88()
{
  result = qword_1EC39AD28;
  if (!qword_1EC39AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD28);
  }

  return result;
}

unint64_t sub_1C93AFDDC()
{
  result = qword_1EC39AD30;
  if (!qword_1EC39AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD30);
  }

  return result;
}

unint64_t sub_1C93AFE34()
{
  result = qword_1EC39AD38;
  if (!qword_1EC39AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD38);
  }

  return result;
}

unint64_t sub_1C93AFE88(uint64_t a1)
{
  result = sub_1C93AFEB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C93AFEB0()
{
  result = qword_1EC39AD40;
  if (!qword_1EC39AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD40);
  }

  return result;
}

__n128 sub_1C93AFF04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C93AFF18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C93AFF58(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s13ConfigurationV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13ConfigurationV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C93B0118()
{
  result = qword_1EC39AD48;
  if (!qword_1EC39AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD48);
  }

  return result;
}

unint64_t sub_1C93B0170()
{
  result = qword_1EC39AD50;
  if (!qword_1EC39AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD50);
  }

  return result;
}

unint64_t sub_1C93B01C8()
{
  result = qword_1EC39AD58;
  if (!qword_1EC39AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC39AD58);
  }

  return result;
}

uint64_t sub_1C93B021C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1C93B0264()
{

  return sub_1C93A86A8(v1, v0);
}

uint64_t AnonymousSession.Configuration.Application.bundleID.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t AnonymousSession.Configuration.Application.bundleID.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = v1[1];

  *v1 = v2;
  v1[1] = v3;
  return result;
}

uint64_t static AnonymousSession.Configuration.Application.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v8[0] = v2;
  v8[1] = v3;
  v7[0] = v5;
  v7[1] = v4;

  LOBYTE(v3) = static BundleID.== infix(_:_:)(v8, v7);

  return v3 & 1;
}

uint64_t sub_1C93B0350(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_1C93B03E8()
{
  Hasher.init(_seed:)();
  MEMORY[0x1CCA87E40](0);
  return Hasher._finalize()();
}

uint64_t sub_1C93B042C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C93B0350(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C93B0474@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C93A9130();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C93B04A0(uint64_t a1)
{
  v2 = sub_1C93B2248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C93B04DC(uint64_t a1)
{
  v2 = sub_1C93B2248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnonymousSession.Configuration.Application.encode(to:)(void *a1)
{
  v3 = sub_1C93A1890(&qword_1EC39AD60, &qword_1C93FE2A0);
  v4 = sub_1C939D44C(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v10 = v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v13 = a1[4];
  sub_1C93A4890(a1, a1[3]);
  sub_1C93B2248();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[0] = v11;
  v15[1] = v12;
  sub_1C93B229C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v6 + 8))(v10, v3);
}

uint64_t AnonymousSession.Configuration.Application.hash(into:)()
{
  if (!v0[1])
  {
    return MEMORY[0x1CCA87E40](0);
  }

  v1 = *v0;
  MEMORY[0x1CCA87E40](1);

  return String.hash(into:)();
}

Swift::Int AnonymousSession.Configuration.Application.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    MEMORY[0x1CCA87E40](1);
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x1CCA87E40](0);
  }

  return Hasher._finalize()();
}