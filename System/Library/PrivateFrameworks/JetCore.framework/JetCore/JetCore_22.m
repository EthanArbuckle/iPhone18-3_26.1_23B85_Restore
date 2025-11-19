unint64_t DaemonError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_1DB50A350();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v7 = type metadata accessor for DaemonError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  sub_1DB4F234C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v22 = *v10;
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1DB50B320();
      MEMORY[0x1E1285C70](0xD000000000000018, 0x80000001DB531440);
      sub_1DB50ADA0();
      MEMORY[0x1E1285C70](0x73646E6F63657320, 0xE800000000000000);
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        return 0xD000000000000022;
      }

      v31 = *v10;
      v15 = v31;
      v16 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A00, &unk_1DB5102D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A00, &qword_1DB5244C0);
      if (swift_dynamicCast())
      {
        sub_1DB2FEA0C(v29, &v32);
        __swift_project_boxed_opaque_existential_1(&v32, v34);
        v17 = sub_1DB509A80();

        __swift_destroy_boxed_opaque_existential_0(&v32);
        return v17;
      }

      v30 = 0;
      memset(v29, 0, sizeof(v29));
      sub_1DB30623C(v29, &qword_1ECC47A08, &qword_1DB5244C8);
      v32 = 0;
      v33 = 0xE000000000000000;
      swift_getErrorValue();
      sub_1DB50BA00();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v3 + 32))(v6, v10, v2);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_1DB50B320();

      v32 = 0xD000000000000025;
      v33 = 0x80000001DB531410;
      sub_1DB4F29C8(&qword_1ECC47A10, MEMORY[0x1E69E84C0]);
      v12 = sub_1DB50BC80();
      MEMORY[0x1E1285C70](v12);

      v13 = v32;
      (*(v3 + 8))(v6, v2);
      return v13;
    }

    v23 = *v10;
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1DB50B320();

    v32 = 0xD000000000000012;
    v33 = 0x80000001DB5313F0;
    v24 = [v23 description];
    v25 = sub_1DB50A650();
    v27 = v26;

    MEMORY[0x1E1285C70](v25, v27);
  }

  else
  {
    v18 = *v10;
    v19 = v10[1];
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_1DB50B320();

    v32 = 0xD000000000000016;
    v33 = 0x80000001DB531490;
    *&v29[0] = v18;
    v20 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v20);

    MEMORY[0x1E1285C70](0x202C736574796220, 0xEF203A74696D696CLL);
    *&v29[0] = v19;
    v21 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v21);

    MEMORY[0x1E1285C70](0x736574796220, 0xE600000000000000);
  }

  return v32;
}

uint64_t type metadata accessor for DaemonError()
{
  result = qword_1ECC47A20;
  if (!qword_1ECC47A20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DB4F234C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t DaemonError.errorUserInfo.getter()
{
  v1 = v0;
  v2 = sub_1DB50A350();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DaemonError();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DB4F234C(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      v21 = *v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DB50EE90;
      v23 = *MEMORY[0x1E696AA08];
      *(inited + 32) = sub_1DB50A650();
      *(inited + 40) = v24;
      swift_getErrorValue();
      v25 = v29[20];
      v26 = v30;
      *(inited + 72) = v30;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
      (*(*(v26 - 8) + 16))(boxed_opaque_existential_0, v25, v26);
      v16 = sub_1DB3135C0(inited);
      swift_setDeallocating();
      sub_1DB30623C(inited + 32, &unk_1ECC46BD0, &qword_1DB519760);

      break;
    case 2:
      v17 = *v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
      v18 = swift_initStackObject();
      *(v18 + 16) = xmmword_1DB50EE90;
      v19 = *MEMORY[0x1E696AA08];
      *(v18 + 32) = sub_1DB50A650();
      *(v18 + 40) = v20;
      *(v18 + 72) = sub_1DB4F2878();
      *(v18 + 48) = v17;
      v16 = sub_1DB3135C0(v18);
      swift_setDeallocating();
      sub_1DB30623C(v18 + 32, &unk_1ECC46BD0, &qword_1DB519760);
      break;
    case 1:
      (*(v3 + 32))(v6, v10, v2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F60, &unk_1DB5102E0);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_1DB50EE90;
      v13 = *MEMORY[0x1E696AA08];
      *(v12 + 32) = sub_1DB50A650();
      *(v12 + 40) = v14;
      *(v12 + 72) = v2;
      v15 = __swift_allocate_boxed_opaque_existential_0((v12 + 48));
      (*(v3 + 16))(v15, v6, v2);
      v16 = sub_1DB3135C0(v12);
      swift_setDeallocating();
      sub_1DB30623C(v12 + 32, &unk_1ECC46BD0, &qword_1DB519760);
      (*(v3 + 8))(v6, v2);
      break;
    default:
      v16 = sub_1DB3135C0(MEMORY[0x1E69E7CC0]);
      sub_1DB4F281C(v10);
      break;
  }

  return v16;
}

uint64_t sub_1DB4F2744(uint64_t a1)
{
  v2 = sub_1DB4F29C8(&qword_1ECC47A38, type metadata accessor for DaemonError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1DB4F27B0(uint64_t a1)
{
  v2 = sub_1DB4F29C8(&qword_1ECC47A38, type metadata accessor for DaemonError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1DB4F281C(uint64_t a1)
{
  v2 = type metadata accessor for DaemonError();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB4F2878()
{
  result = qword_1ECC47A18;
  if (!qword_1ECC47A18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC47A18);
  }

  return result;
}

void sub_1DB4F28C4()
{
  sub_1DB4F2968();
  if (v0 <= 0x3F)
  {
    sub_1DB50A350();
    if (v1 <= 0x3F)
    {
      sub_1DB4F2878();
      if (v2 <= 0x3F)
      {
        sub_1DB35C910();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1DB4F2968()
{
  if (!qword_1ECC47A30)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECC47A30);
    }
  }
}

uint64_t sub_1DB4F29C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DB4F2A10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DaemonError();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t JetPackAsset.Metadata.etag.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t JetPackAsset.Metadata.etag.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.lastModified.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t JetPackAsset.Metadata.lastModified.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  if (*(v1 + 24))
  {
    v7 = *(v1 + 16);
    if (qword_1ECC42300 != -1)
    {
      v16 = *(v1 + 16);
      swift_once();
    }

    v8 = qword_1ECC47A48;
    v9 = sub_1DB50A620();
    v10 = [v8 dateFromString_];

    if (v10)
    {
      sub_1DB509DB0();

      v11 = sub_1DB509DD0();
      (*(*(v11 - 8) + 56))(v6, 0, 1, v11);
    }

    else
    {
      v15 = sub_1DB509DD0();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    }

    return sub_1DB35EA44(v6, a1);
  }

  else
  {
    v12 = sub_1DB509DD0();
    v13 = *(*(v12 - 8) + 56);

    return v13(a1, 1, 1, v12);
  }
}

uint64_t JetPackAsset.Metadata.revalidatedAt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t JetPackAsset.Metadata.revalidatedAt.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for JetPackAsset.Metadata(0) + 24);
  v4 = sub_1DB509DD0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

__n128 JetPackAsset.Metadata.osVersion.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 28));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  return result;
}

__n128 JetPackAsset.Metadata.osVersion.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for JetPackAsset.Metadata(0) + 28));
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t JetPackAsset.Metadata.buildNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for JetPackAsset.Metadata(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JetPackAsset.Metadata.buildNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset.Metadata(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.assetVersion.getter()
{
  v1 = (v0 + *(type metadata accessor for JetPackAsset.Metadata(0) + 36));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JetPackAsset.Metadata.assetVersion.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset.Metadata(0) + 36));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.Metadata.serverExpired.setter(char a1)
{
  result = type metadata accessor for JetPackAsset.Metadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t JetPackAsset.Metadata.policy.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v4 = (v1 + *(result + 44));
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = v4[2];
  v8 = *(v4 + 24);
  v9 = v4[4];
  v10 = *(v4 + 40);
  LOBYTE(v4) = *(v4 + 41);
  *a1 = v5;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 41) = v4;
  return result;
}

uint64_t JetPackAsset.Metadata.policy.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a1[2];
  v5 = *(a1 + 24);
  v6 = a1[4];
  v7 = *(a1 + 40);
  v8 = *(a1 + 41);
  result = type metadata accessor for JetPackAsset.Metadata(0);
  v10 = v1 + *(result + 44);
  *v10 = v2;
  *(v10 + 8) = v3;
  *(v10 + 16) = v4;
  *(v10 + 24) = v5;
  *(v10 + 32) = v6;
  *(v10 + 40) = v7;
  *(v10 + 41) = v8;
  return result;
}

id sub_1DB4F330C()
{
  result = sub_1DB4F334C();
  qword_1ECC47A48 = result;
  return result;
}

id sub_1DB4F334C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECC47AC8, &qword_1DB524D20);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v16 - v2;
  v4 = sub_1DB509E40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v10 = sub_1DB50A620();
  [v9 setDateFormat_];

  sub_1DB509E10();
  v11 = sub_1DB509E30();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  sub_1DB509E60();
  v12 = sub_1DB509E90();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v3, 1, v12) != 1)
  {
    v14 = sub_1DB509E70();
    (*(v13 + 8))(v3, v12);
  }

  [v9 setTimeZone_];

  return v9;
}

uint64_t JetPackAsset.Metadata.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  v3 = (v0 + v2[9]);
  if (!v3[1])
  {
    v6 = MEMORY[0x1E69E7CC0];
    if (!v0[1])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v4 = *v3;
  strcpy(&v59, "assetVersion=");
  HIWORD(v59) = -4864;
  MEMORY[0x1E1285C70](v4);
  v5 = v59;
  v6 = sub_1DB302404(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1DB302404((v7 > 1), v8 + 1, 1, v6);
  }

  *(v6 + 2) = v8 + 1;
  *&v6[16 * v8 + 32] = v5;
  if (v0[1])
  {
LABEL_7:
    v9 = *v0;
    *&v59 = 0x3D67617465;
    *(&v59 + 1) = 0xE500000000000000;
    MEMORY[0x1E1285C70](v9);
    v10 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB302404(0, *(v6 + 2) + 1, 1, v6);
    }

    v12 = *(v6 + 2);
    v11 = *(v6 + 3);
    if (v12 >= v11 >> 1)
    {
      v6 = sub_1DB302404((v11 > 1), v12 + 1, 1, v6);
    }

    *(v6 + 2) = v12 + 1;
    *&v6[16 * v12 + 32] = v10;
  }

LABEL_12:
  if (v0[3])
  {
    v13 = v0[2];
    strcpy(&v59, "lastModified=");
    HIWORD(v59) = -4864;
    MEMORY[0x1E1285C70](v13);
    v14 = v59;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1DB302404(0, *(v6 + 2) + 1, 1, v6);
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      v6 = sub_1DB302404((v15 > 1), v16 + 1, 1, v6);
    }

    *(v6 + 2) = v16 + 1;
    *&v6[16 * v16 + 32] = v14;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  v18 = v0 + v2[6];
  v19 = sub_1DB509D40();
  v20 = [v17 stringFromDate_];

  v21 = sub_1DB50A650();
  v23 = v22;

  sub_1DB50B320();

  strcpy(&v59, "revalidatedAt=");
  HIBYTE(v59) = -18;
  MEMORY[0x1E1285C70](v21, v23);

  v24 = v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = sub_1DB302404(0, *(v6 + 2) + 1, 1, v6);
  }

  v26 = *(v6 + 2);
  v25 = *(v6 + 3);
  if (v26 >= v25 >> 1)
  {
    v6 = sub_1DB302404((v25 > 1), v26 + 1, 1, v6);
  }

  *(v6 + 2) = v26 + 1;
  *&v6[16 * v26 + 32] = v24;
  v27 = v1 + v2[7];
  if ((v27[24] & 1) == 0)
  {
    v28 = *(v27 + 2);
    v65 = 0x6F6973726556736FLL;
    v66 = 0xEA00000000003D6ELL;
    v59 = *v27;
    v60 = v28;
    v29 = JetPackAsset.OSVersion.description.getter();
    MEMORY[0x1E1285C70](v29);

    v31 = *(v6 + 2);
    v30 = *(v6 + 3);
    if (v31 >= v30 >> 1)
    {
      v6 = sub_1DB302404((v30 > 1), v31 + 1, 1, v6);
    }

    *(v6 + 2) = v31 + 1;
    v32 = &v6[16 * v31];
    *(v32 + 4) = 0x6F6973726556736FLL;
    *(v32 + 5) = 0xEA00000000003D6ELL;
  }

  v33 = (v1 + v2[8]);
  if (v33[1])
  {
    v34 = *v33;
    strcpy(&v59, "buildNumber=");
    BYTE13(v59) = 0;
    HIWORD(v59) = -5120;
    MEMORY[0x1E1285C70](v34);
    v35 = v59;
    v37 = *(v6 + 2);
    v36 = *(v6 + 3);
    if (v37 >= v36 >> 1)
    {
      v6 = sub_1DB302404((v36 > 1), v37 + 1, 1, v6);
    }

    *(v6 + 2) = v37 + 1;
    *&v6[16 * v37 + 32] = v35;
  }

  v38 = *(v1 + v2[10]);
  if (v38 != 2)
  {
    sub_1DB50B320();

    strcpy(&v59, "serverExpired=");
    HIBYTE(v59) = -18;
    if (v38)
    {
      v39 = 1702195828;
    }

    else
    {
      v39 = 0x65736C6166;
    }

    if (v38)
    {
      v40 = 0xE400000000000000;
    }

    else
    {
      v40 = 0xE500000000000000;
    }

    MEMORY[0x1E1285C70](v39, v40);

    v41 = v59;
    v43 = *(v6 + 2);
    v42 = *(v6 + 3);
    if (v43 >= v42 >> 1)
    {
      v6 = sub_1DB302404((v42 > 1), v43 + 1, 1, v6);
    }

    *(v6 + 2) = v43 + 1;
    *&v6[16 * v43 + 32] = v41;
  }

  v65 = 0x3D7963696C6F70;
  v66 = 0xE700000000000000;
  v44 = v1 + v2[11];
  v45 = *v44;
  v46 = v44[8];
  v47 = *(v44 + 2);
  v48 = v44[24];
  v49 = *(v44 + 4);
  v50 = v44[40];
  LOBYTE(v44) = v44[41];
  *&v59 = v45;
  BYTE8(v59) = v46;
  v60 = v47;
  v61 = v48;
  v62 = v49;
  v63 = v50;
  v64 = v44;
  v51 = JetPackAsset.Policy.description.getter();
  MEMORY[0x1E1285C70](v51);

  v53 = *(v6 + 2);
  v52 = *(v6 + 3);
  if (v53 >= v52 >> 1)
  {
    v6 = sub_1DB302404((v52 > 1), v53 + 1, 1, v6);
  }

  *(v6 + 2) = v53 + 1;
  v54 = &v6[16 * v53];
  *(v54 + 4) = 0x3D7963696C6F70;
  *(v54 + 5) = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v55 = sub_1DB50A5E0();
  v57 = v56;

  MEMORY[0x1E1285C70](v55, v57);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return 0x617461646174654DLL;
}

uint64_t sub_1DB4F3C4C()
{
  v1 = *v0;
  v2 = 1734440037;
  v3 = 0x7845726576726573;
  if (v1 != 6)
  {
    v3 = 0x7963696C6F70;
  }

  v4 = 0x6D754E646C697562;
  if (v1 != 4)
  {
    v4 = 0x7265567465737361;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6164696C61766572;
  if (v1 != 2)
  {
    v5 = 0x6F6973726556736FLL;
  }

  if (*v0)
  {
    v2 = 0x69646F4D7473616CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB4F3D70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB4F78F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4F3DA4(uint64_t a1)
{
  v2 = sub_1DB4F6B44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F3DE0(uint64_t a1)
{
  v2 = sub_1DB4F6B44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A50, &qword_1DB5245C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v35 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6B44();
  sub_1DB50BE40();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v35) = 0;
  sub_1DB50B800();
  if (!v2)
  {
    v14 = v3[2];
    v15 = v3[3];
    LOBYTE(v35) = 1;
    sub_1DB50B800();
    v16 = type metadata accessor for JetPackAsset.Metadata(0);
    v17 = v16[6];
    LOBYTE(v35) = 2;
    sub_1DB509DD0();
    sub_1DB4F6C40(&qword_1EE30E278);
    sub_1DB50B8A0();
    v18 = v3 + v16[7];
    v19 = *(v18 + 2);
    v20 = v18[24];
    v35 = *v18;
    v36 = v19;
    v37 = v20;
    v41 = 3;
    sub_1DB4F6B98();
    sub_1DB50B830();
    v21 = (v3 + v16[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v35) = 4;
    sub_1DB50B800();
    v24 = (v3 + v16[9]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v35) = 5;
    sub_1DB50B800();
    v27 = *(v3 + v16[10]);
    LOBYTE(v35) = 6;
    sub_1DB50B810();
    v28 = v3 + v16[11];
    v29 = *v28;
    v30 = v28[8];
    v31 = *(v28 + 2);
    v32 = v28[24];
    v33 = *(v28 + 4);
    v34 = v28[40];
    LOBYTE(v28) = v28[41];
    *&v35 = v29;
    BYTE8(v35) = v30;
    v36 = v31;
    v37 = v32;
    v38 = v33;
    v39 = v34;
    v40 = v28;
    v41 = 7;
    sub_1DB4F6BEC();
    sub_1DB50B8A0();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t JetPackAsset.Metadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = sub_1DB509DD0();
  v55 = *(v4 - 8);
  v56 = v4;
  v5 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A58, &qword_1DB5245D0);
  v8 = *(v54 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v11 = &v51 - v10;
  v12 = type metadata accessor for JetPackAsset.Metadata(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v15 + v16[7];
  *v17 = 0;
  *(v17 + 1) = 0;
  *(v17 + 2) = 0;
  v17[24] = 1;
  v58 = a1;
  v59 = v16;
  v18 = v16[11];
  v57 = v15;
  v19 = v15 + v18;
  *v19 = 0x4014000000000000;
  v19[8] = 0;
  *(v19 + 2) = 0;
  v19[24] = 1;
  *(v19 + 4) = 0x4143C68000000000;
  *(v19 + 20) = 0;
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6B44();
  sub_1DB50BDF0();
  if (v2)
  {
    v60 = v2;
    v23 = 0;
    v24 = v59;
    goto LABEL_4;
  }

  v52 = v8;
  LOBYTE(v61) = 0;
  v21 = v54;
  v22 = sub_1DB50B6E0();
  v26 = v57;
  *v57 = v22;
  v26[1] = v27;
  LOBYTE(v61) = 1;
  v28 = sub_1DB50B6E0();
  v60 = 0;
  v26[2] = v28;
  v26[3] = v29;
  v51 = v29;
  LOBYTE(v61) = 2;
  sub_1DB4F6C40(&qword_1EE30E268);
  v30 = v56;
  v31 = v60;
  sub_1DB50B780();
  v60 = v31;
  if (v31)
  {
    (*(v52 + 8))(v11, v21);
    v23 = 0;
LABEL_12:
    v24 = v59;
    goto LABEL_4;
  }

  (*(v55 + 32))(v26 + v59[6], v7, v30);
  v67 = 3;
  sub_1DB4F6C84();
  v32 = v60;
  sub_1DB50B710();
  if (v32)
  {
    v60 = v32;
    (*(v52 + 8))(v11, v21);
    v23 = 1;
    goto LABEL_12;
  }

  v33 = v62;
  v34 = v63;
  *v17 = v61;
  *(v17 + 2) = v33;
  v17[24] = v34;
  LOBYTE(v61) = 4;
  v35 = sub_1DB50B6E0();
  v24 = v59;
  v36 = v57;
  v37 = (v57 + v59[8]);
  *v37 = v35;
  v37[1] = v38;
  LOBYTE(v61) = 5;
  v39 = sub_1DB50B6E0();
  v40 = (v36 + v24[9]);
  *v40 = v39;
  v40[1] = v41;
  LOBYTE(v61) = 6;
  v42 = sub_1DB50B6F0();
  v60 = 0;
  *(v36 + v24[10]) = v42;
  v67 = 7;
  sub_1DB4242A8();
  v43 = v60;
  sub_1DB50B780();
  v60 = v43;
  if (!v43)
  {
    (*(v52 + 8))(v11, v54);
    v44 = BYTE8(v61);
    v45 = v62;
    v46 = v63;
    v47 = v64;
    v48 = v65;
    v49 = v66;
    *v19 = v61;
    v19[8] = v44;
    *(v19 + 2) = v45;
    v19[24] = v46;
    *(v19 + 4) = v47;
    v19[40] = v48;
    v19[41] = v49;
    v50 = v57;
    sub_1DB4F6CD8(v57, v53);
    __swift_destroy_boxed_opaque_existential_0(v58);
    return sub_1DB4F6D3C(v50);
  }

  (*(v52 + 8))(v11, v54);
  v23 = 1;
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v58);

  if (v23)
  {
    (*(v55 + 8))(v57 + v24[6], v56);
  }
}

__n128 sub_1DB4F47A0()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];
  v1 = v5;
  v3 = v4;

  result = v3;
  xmmword_1EE312DC0 = v3;
  qword_1EE312DD0 = v1;
  return result;
}

uint64_t JetPackAsset.OSVersion.description.getter()
{
  v1 = v0[1];
  v2 = v0[2];
  v6 = *v0;
  v7 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  v3 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v3);

  MEMORY[0x1E1285C70](46, 0xE100000000000000);
  v4 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v4);

  return v7;
}

uint64_t sub_1DB4F495C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB4F7BA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4F4984(uint64_t a1)
{
  v2 = sub_1DB4F6D98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F49C0(uint64_t a1)
{
  v2 = sub_1DB4F6D98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.OSVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A60, &qword_1DB5245D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v10 = *v1;
  v9 = v1[1];
  v13[0] = v1[2];
  v13[1] = v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6D98();
  sub_1DB50BE40();
  v16 = 0;
  sub_1DB50B890();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v15 = 1;
  sub_1DB50B890();
  v14 = 2;
  sub_1DB50B890();
  return (*(v5 + 8))(v8, v4);
}

uint64_t JetPackAsset.OSVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A68, &qword_1DB5245E0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6D98();
  sub_1DB50BDF0();
  if (!v2)
  {
    v19 = 0;
    v11 = sub_1DB50B770();
    v18 = 1;
    v16 = sub_1DB50B770();
    v17 = 2;
    v13 = sub_1DB50B770();
    (*(v6 + 8))(v9, v5);
    v14 = v16;
    *a2 = v11;
    a2[1] = v14;
    a2[2] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

JetCore::JetPackAsset::Policy::OSInvalidation_optional __swiftcall JetPackAsset.Policy.OSInvalidation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DB50B680();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t JetPackAsset.Policy.OSInvalidation.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x726F6A616DLL;
  v3 = 0x6863746170;
  v4 = 0x646C697562;
  if (v1 != 3)
  {
    v4 = 1701736302;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x726F6E696DLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB4F4ED4()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

uint64_t sub_1DB4F4FA0()
{
  *v0;
  *v0;
  *v0;
  sub_1DB50A740();
}

uint64_t sub_1DB4F5058()
{
  v1 = *v0;
  sub_1DB50BCF0();
  sub_1DB50A740();

  return sub_1DB50BD30();
}

void sub_1DB4F512C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x726F6A616DLL;
  v5 = 0xE500000000000000;
  v6 = 0x6863746170;
  v7 = 0xE500000000000000;
  v8 = 0x646C697562;
  if (v2 != 3)
  {
    v8 = 1701736302;
    v7 = 0xE400000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x726F6E696DLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t JetPackAsset.Policy.maxAge.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t JetPackAsset.Policy.maxAge.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.nonBlockingRevalidateAge.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t JetPackAsset.Policy.nonBlockingRevalidateAge.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.evictAge.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t JetPackAsset.Policy.evictAge.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t JetPackAsset.Policy.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A70, &qword_1DB5245E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6DEC();
  sub_1DB50BDF0();
  if (!v2)
  {
    LOBYTE(v32) = 0;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443A8, &qword_1DB514D10);
      LOBYTE(v29) = 0;
      sub_1DB4F6E94();
      sub_1DB50B780();
      v36 = a2;
      v11 = v32;
      v12 = v33;
    }

    else
    {
      v36 = a2;
      v12 = 0;
      v11 = 0x40AC200000000000;
    }

    LODWORD(v13) = 1;
    LOBYTE(v32) = 1;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443A8, &qword_1DB514D10);
      LOBYTE(v29) = 1;
      sub_1DB4F6E94();
      sub_1DB50B780();
      LODWORD(v28) = v12;
      v27 = v32;
      LODWORD(v13) = v33;
    }

    else
    {
      LODWORD(v28) = v12;
      v27 = 0;
    }

    LOBYTE(v32) = 2;
    if (sub_1DB50B7B0())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC443A8, &qword_1DB514D10);
      LOBYTE(v29) = 2;
      sub_1DB4F6E94();
      sub_1DB50B780();
      v25 = v32;
      v26 = v33;
    }

    else
    {
      v26 = 0;
      v25 = 0x4143C68000000000;
    }

    LOBYTE(v32) = 0;
    v14 = v11;
    if (sub_1DB50B7B0() & 1) != 0 && (LOBYTE(v32) = 1, (sub_1DB50B7B0() & v28 & v13))
    {
      sub_1DB3CB74C("JetCore/JetPackAsset.swift", 0x1AuLL, 2, 0xB5uLL);
      LODWORD(v28) = 0;
      v14 = 0x40AC200000000000;
      LOBYTE(v13) = 1;
      v15 = v36;
    }

    else
    {
      LOBYTE(v32) = 0;
      v16 = sub_1DB50B7B0();
      v15 = v36;
      if (v16)
      {
        LOBYTE(v32) = 2;
        if (sub_1DB50B7B0())
        {
          if (v28)
          {
            if (v26 && v13)
            {
              v24 = v14;
              if (qword_1EE30C928 != -1)
              {
                swift_once();
              }

              sub_1DB50BEB0();
              v27 = v34;
              v28 = v35;
              v23 = __swift_project_boxed_opaque_existential_1(&v32, v34);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC457D0, &unk_1DB5102F0);
              v13 = swift_allocObject();
              *(v13 + 16) = xmmword_1DB50F8D0;
              v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42A30, &unk_1DB50F8E0);
              v17 = swift_allocObject();
              v21 = xmmword_1DB50EE90;
              *(v17 + 16) = xmmword_1DB50EE90;
              v31 = MEMORY[0x1E69E6158];
              v29 = 0xD00000000000005ELL;
              v30 = 0x80000001DB5314C0;
              *(v17 + 48) = 0u;
              *(v17 + 32) = 0u;
              sub_1DB301D4C(&v29, v17 + 32);
              *(v17 + 64) = 0;
              *(v13 + 32) = v17;
              v18 = swift_allocObject();
              *(v18 + 16) = v21;
              v31 = MEMORY[0x1E69E6158];
              v29 = 0xD00000000000002BLL;
              v30 = 0x80000001DB531520;
              *(v18 + 48) = 0u;
              *(v18 + 32) = 0u;
              sub_1DB301D4C(&v29, v18 + 32);
              *(v18 + 64) = 0;
              *(v13 + 40) = v18;
              Logger.warning(_:)(v13, v27, v28);

              __swift_destroy_boxed_opaque_existential_0(&v32);
              LOBYTE(v13) = 0;
              LODWORD(v28) = 1;
              v27 = 0x40AC200000000000;
              v14 = v24;
            }

            else
            {
              LODWORD(v28) = 1;
            }
          }

          else
          {
            LODWORD(v28) = 0;
          }
        }
      }
    }

    LOBYTE(v29) = 3;
    sub_1DB4F6E40();
    sub_1DB50B710();
    (*(v6 + 8))(v9, v5);
    v19 = v32;
    if (v32 == 5)
    {
      v19 = 0;
    }

    *v15 = v14;
    *(v15 + 8) = v28;
    *(v15 + 16) = v27;
    *(v15 + 24) = v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v26;
    *(v15 + 41) = v19;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t JetPackAsset.Policy.description.getter()
{
  v5 = *(v1 + 2);
  v6 = *(v1 + 24);
  v7 = *(v1 + 4);
  v8 = *(v1 + 40);
  if ((v1[1] & 1) == 0)
  {
    v9 = *v1;
    v24 = 0x3D65674178616DLL;
    v25 = 0xE700000000000000;
    if ((~v9 & 0x7FF0000000000000) != 0)
    {
      v10 = *&v9;
      v9 = 0xC3E0000000000001;
      if (v10 > -9.22337204e18)
      {
        v9 = 0x43E0000000000000;
        if (v10 >= 9.22337204e18)
        {
          goto LABEL_28;
        }

        v11 = sub_1DB50B8F0();
        MEMORY[0x1E1285C70](v11);

        v2 = v24;
        v3 = v25;
        v0 = sub_1DB302404(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v4 = *(v0 + 2);
        v9 = *(v0 + 3);
        v1 = (v4 + 1);
        if (v4 >= v9 >> 1)
        {
          goto LABEL_31;
        }

        goto LABEL_9;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_27;
  }

  v0 = MEMORY[0x1E69E7CC0];
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  while ((v8 & 1) == 0)
  {
    while (1)
    {
      v24 = 0x6567417463697665;
      v25 = 0xE90000000000003DLL;
      v9 = 0x7FF0000000000000;
      if ((~*&v7 & 0x7FF0000000000000) == 0)
      {
        break;
      }

      if (v7 > -9.22337204e18)
      {
        if (v7 >= 9.22337204e18)
        {
          __break(1u);
        }

        else
        {
          v16 = sub_1DB50B8F0();
          MEMORY[0x1E1285C70](v16);

          v5 = *&v24;
          v7 = *&v25;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_21:
            v18 = *(v0 + 2);
            v17 = *(v0 + 3);
            if (v18 >= v17 >> 1)
            {
              v0 = sub_1DB302404((v17 > 1), v18 + 1, 1, v0);
            }

            *(v0 + 2) = v18 + 1;
            v19 = &v0[16 * v18];
            *(v19 + 4) = v5;
            *(v19 + 5) = v7;
            goto LABEL_24;
          }
        }

        v0 = sub_1DB302404(0, *(v0 + 2) + 1, 1, v0);
        goto LABEL_21;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      v0 = sub_1DB302404(0, *(v0 + 2) + 1, 1, v0);
LABEL_14:
      v2 = *(v0 + 2);
      v14 = *(v0 + 3);
      v1 = (v2 + 1);
      if (v2 >= v14 >> 1)
      {
        v0 = sub_1DB302404((v14 > 1), v2 + 1, 1, v0);
      }

      *(v0 + 2) = v1;
      v15 = &v0[16 * v2];
      *(v15 + 4) = v5;
      *(v15 + 5) = v6;
      if (v8)
      {
        goto LABEL_24;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_31:
      v0 = sub_1DB302404((v9 > 1), v1, 1, v0);
LABEL_9:
      *(v0 + 2) = v1;
      v12 = &v0[16 * v4];
      *(v12 + 4) = v2;
      *(v12 + 5) = v3;
      if (v6)
      {
        break;
      }

LABEL_10:
      v24 = 0;
      v25 = 0xE000000000000000;
      v1 = &v24;
      sub_1DB50B320();

      v24 = 0xD000000000000019;
      v25 = 0x80000001DB531570;
      v9 = 0x7FF0000000000000;
      if ((~*&v5 & 0x7FF0000000000000) != 0)
      {
        v9 = 0xC3E0000000000001;
        if (v5 > -9.22337204e18)
        {
          if (v5 >= 9.22337204e18)
          {
            __break(1u);
            goto LABEL_33;
          }

          v13 = sub_1DB50B8F0();
          MEMORY[0x1E1285C70](v13);

          v5 = *&v24;
          v6 = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_14;
        }
      }

      else
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      __break(1u);
    }
  }

LABEL_24:
  v24 = 0x287963696C6F50;
  v25 = 0xE700000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v20 = sub_1DB50A5E0();
  v22 = v21;

  MEMORY[0x1E1285C70](v20, v22);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v24;
}

unint64_t sub_1DB4F5D40()
{
  v1 = 0x65674178616DLL;
  v2 = 0x6567417463697665;
  if (*v0 != 2)
  {
    v2 = 0x696C61766E49736FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB4F5DC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB4F7784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4F5DF0(uint64_t a1)
{
  v2 = sub_1DB4F6DEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F5E2C(uint64_t a1)
{
  v2 = sub_1DB4F6DEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAsset.Policy.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47A80, &qword_1DB5245F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v20 = v1[2];
  v19 = *(v1 + 24);
  v18 = v1[4];
  v10 = *(v1 + 40);
  v16 = *(v1 + 41);
  v17 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4F6DEC();
  sub_1DB50BE40();
  v26 = 0;
  v12 = v21;
  sub_1DB50B820();
  if (!v12)
  {
    v13 = v16;
    v25 = 1;
    sub_1DB50B820();
    v24 = 2;
    sub_1DB50B820();
    v23 = v13;
    v22 = 3;
    sub_1DB4F6F10();
    sub_1DB50B8A0();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t JetPackAsset.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for JetPackAsset(0) + 20);

  return sub_1DB4F6CD8(v3, a1);
}

uint64_t JetPackAsset.metadata.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for JetPackAsset(0) + 20);

  return sub_1DB4F6F84(a1, v3);
}

uint64_t JetPackAsset.cacheKey.getter()
{
  v1 = (v0 + *(type metadata accessor for JetPackAsset(0) + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JetPackAsset.wasReadFromCache.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t JetPackAsset.wasRevalidated.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t JetPackAsset.willBeRevalidated.setter(char a1)
{
  result = type metadata accessor for JetPackAsset(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t JetPackAsset.channelID.getter()
{
  v1 = (v0 + *(type metadata accessor for JetPackAsset(0) + 44));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t JetPackAsset.channelID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for JetPackAsset(0) + 44));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t JetPackAsset.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for JetPackAsset(0);
  v3 = v0 + v2[6];
  if (*(v3 + 4))
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v5 = *v3;
    v60[0] = 4023401;
    v60[1] = 0xE300000000000000;
    LODWORD(v59) = v5;
    v6 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v6);

    v4 = sub_1DB302404(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v8 = *(v4 + 2);
    v7 = *(v4 + 3);
    if (v8 >= v7 >> 1)
    {
      v4 = sub_1DB302404((v7 > 1), v8 + 1, 1, v4);
    }

    *(v4 + 2) = v8 + 1;
    v9 = &v4[16 * v8];
    *(v9 + 4) = 4023401;
    *(v9 + 5) = 0xE300000000000000;
  }

  v60[0] = 1031365995;
  v60[1] = 0xE400000000000000;
  MEMORY[0x1E1285C70](*(v0 + v2[7]), *(v0 + v2[7] + 8));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_1DB302404(0, *(v4 + 2) + 1, 1, v4);
  }

  v11 = *(v4 + 2);
  v10 = *(v4 + 3);
  if (v11 >= v10 >> 1)
  {
    v4 = sub_1DB302404((v10 > 1), v11 + 1, 1, v4);
  }

  *(v4 + 2) = v11 + 1;
  v12 = &v4[16 * v11];
  *(v12 + 4) = 1031365995;
  *(v12 + 5) = 0xE400000000000000;
  strcpy(v60, "metadata=");
  WORD1(v60[1]) = 0;
  HIDWORD(v60[1]) = -385875968;
  v13 = v0 + v2[5];
  v14 = JetPackAsset.Metadata.description.getter();
  MEMORY[0x1E1285C70](v14);

  v15 = v60[0];
  v16 = v60[1];
  v18 = *(v4 + 2);
  v17 = *(v4 + 3);
  if (v18 >= v17 >> 1)
  {
    v4 = sub_1DB302404((v17 > 1), v18 + 1, 1, v4);
  }

  *(v4 + 2) = v18 + 1;
  v19 = &v4[16 * v18];
  *(v19 + 4) = v15;
  *(v19 + 5) = v16;
  v20 = (v1 + v2[11]);
  if (v20[1])
  {
    v21 = *v20;
    strcpy(v60, "channelID=");
    BYTE3(v60[1]) = 0;
    HIDWORD(v60[1]) = -369098752;
    MEMORY[0x1E1285C70](v21);
    v22 = v60[0];
    v23 = v60[1];
    v25 = *(v4 + 2);
    v24 = *(v4 + 3);
    if (v25 >= v24 >> 1)
    {
      v4 = sub_1DB302404((v24 > 1), v25 + 1, 1, v4);
    }

    *(v4 + 2) = v25 + 1;
    v26 = &v4[16 * v25];
    *(v26 + 4) = v22;
    *(v26 + 5) = v23;
  }

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_1DB50B320();

  v27 = *(v1 + v2[8]);
  v60[0] = 0xD000000000000011;
  v60[1] = 0x80000001DB531590;
  if (v27)
  {
    v28 = 1702195828;
  }

  else
  {
    v28 = 0x65736C6166;
  }

  if (v27)
  {
    v29 = 0xE400000000000000;
  }

  else
  {
    v29 = 0xE500000000000000;
  }

  MEMORY[0x1E1285C70](v28, v29);

  v30 = v60[0];
  v31 = v60[1];
  v33 = *(v4 + 2);
  v32 = *(v4 + 3);
  if (v33 >= v32 >> 1)
  {
    v4 = sub_1DB302404((v32 > 1), v33 + 1, 1, v4);
  }

  *(v4 + 2) = v33 + 1;
  v34 = &v4[16 * v33];
  *(v34 + 4) = v30;
  *(v34 + 5) = v31;
  sub_1DB50B320();

  v60[0] = 0x6C61766552736177;
  v60[1] = 0xEF3D646574616469;
  if (*(v1 + v2[9]))
  {
    v35 = 1702195828;
  }

  else
  {
    v35 = 0x65736C6166;
  }

  if (*(v1 + v2[9]))
  {
    v36 = 0xE400000000000000;
  }

  else
  {
    v36 = 0xE500000000000000;
  }

  MEMORY[0x1E1285C70](v35, v36);

  v37 = v60[0];
  v38 = v60[1];
  v40 = *(v4 + 2);
  v39 = *(v4 + 3);
  if (v40 >= v39 >> 1)
  {
    v4 = sub_1DB302404((v39 > 1), v40 + 1, 1, v4);
  }

  *(v4 + 2) = v40 + 1;
  v41 = &v4[16 * v40];
  *(v41 + 4) = v37;
  *(v41 + 5) = v38;
  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_1DB50B320();

  v42 = *(v1 + v2[10]);
  v60[0] = 0xD000000000000012;
  v60[1] = 0x80000001DB5315B0;
  if (v42)
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (v42)
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x1E1285C70](v43, v44);

  v45 = v60[0];
  v46 = v60[1];
  v48 = *(v4 + 2);
  v47 = *(v4 + 3);
  if (v48 >= v47 >> 1)
  {
    v4 = sub_1DB302404((v47 > 1), v48 + 1, 1, v4);
  }

  *(v4 + 2) = v48 + 1;
  v49 = &v4[16 * v48];
  *(v49 + 4) = v45;
  *(v49 + 5) = v46;
  sub_1DB30BE90(v1, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC430C8, &unk_1DB51C850);
  if (swift_dynamicCast())
  {
    v60[0] = 0x3D68746170;
    v60[1] = 0xE500000000000000;

    MEMORY[0x1E1285C70](v59);
    swift_bridgeObjectRelease_n();

    v50 = v60[0];
    v51 = v60[1];
    v53 = *(v4 + 2);
    v52 = *(v4 + 3);
    if (v53 >= v52 >> 1)
    {
      v4 = sub_1DB302404((v52 > 1), v53 + 1, 1, v4);
    }

    *(v4 + 2) = v53 + 1;
    v54 = &v4[16 * v53];
    *(v54 + 4) = v50;
    *(v54 + 5) = v51;
  }

  v60[0] = 0;
  v60[1] = 0xE000000000000000;
  sub_1DB50B320();

  strcpy(v60, "JetPackAsset(");
  HIWORD(v60[1]) = -4864;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43100, &unk_1DB511B70);
  sub_1DB3370CC(&qword_1EE30C840, &qword_1ECC43100, &unk_1DB511B70);
  v55 = sub_1DB50A5E0();
  v57 = v56;

  MEMORY[0x1E1285C70](v55, v57);

  MEMORY[0x1E1285C70](41, 0xE100000000000000);
  return v60[0];
}

unint64_t sub_1DB4F6B44()
{
  result = qword_1EE30DBE0;
  if (!qword_1EE30DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBE0);
  }

  return result;
}

unint64_t sub_1DB4F6B98()
{
  result = qword_1EE30DAE8;
  if (!qword_1EE30DAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DAE8);
  }

  return result;
}

unint64_t sub_1DB4F6BEC()
{
  result = qword_1EE30DBF0;
  if (!qword_1EE30DBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBF0);
  }

  return result;
}

uint64_t sub_1DB4F6C40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1DB509DD0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB4F6C84()
{
  result = qword_1EE30DAE0;
  if (!qword_1EE30DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DAE0);
  }

  return result;
}

uint64_t sub_1DB4F6CD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DB4F6D3C(uint64_t a1)
{
  v2 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DB4F6D98()
{
  result = qword_1EE30DB10[0];
  if (!qword_1EE30DB10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DB10);
  }

  return result;
}

unint64_t sub_1DB4F6DEC()
{
  result = qword_1EE30DC08[0];
  if (!qword_1EE30DC08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DC08);
  }

  return result;
}

unint64_t sub_1DB4F6E40()
{
  result = qword_1ECC47A78;
  if (!qword_1ECC47A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47A78);
  }

  return result;
}

unint64_t sub_1DB4F6E94()
{
  result = qword_1EE30C828;
  if (!qword_1EE30C828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC443A8, &qword_1DB514D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30C828);
  }

  return result;
}

unint64_t sub_1DB4F6F10()
{
  result = qword_1ECC47A88;
  if (!qword_1ECC47A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47A88);
  }

  return result;
}

uint64_t sub_1DB4F6F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for JetPackAsset.Metadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DB4F6FEC()
{
  result = qword_1ECC47A90;
  if (!qword_1ECC47A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47A90);
  }

  return result;
}

void sub_1DB4F70AC()
{
  sub_1DB4F7194();
  if (v0 <= 0x3F)
  {
    type metadata accessor for JetPackAsset.Metadata(319);
    if (v1 <= 0x3F)
    {
      sub_1DB3986B8(319, &qword_1EE30C770);
      if (v2 <= 0x3F)
      {
        sub_1DB3986B8(319, &qword_1EE30C860);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1DB4F7194()
{
  result = qword_1EE30E0A0;
  if (!qword_1EE30E0A0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE30E0A0);
  }

  return result;
}

void sub_1DB4F7220()
{
  sub_1DB3986B8(319, &qword_1EE30C860);
  if (v0 <= 0x3F)
  {
    sub_1DB509DD0();
    if (v1 <= 0x3F)
    {
      sub_1DB3986B8(319, &qword_1EE30DAD8);
      if (v2 <= 0x3F)
      {
        sub_1DB3986B8(319, &qword_1EE30C830);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for JetPackAsset.OSVersion(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for JetPackAsset.OSVersion(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1DB4F7388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 42))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 41);
  v4 = v3 >= 5;
  v5 = v3 - 5;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DB4F73CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 4;
    }
  }

  return result;
}

unint64_t sub_1DB4F7470()
{
  result = qword_1ECC47AA8;
  if (!qword_1ECC47AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AA8);
  }

  return result;
}

unint64_t sub_1DB4F74C8()
{
  result = qword_1ECC47AB0;
  if (!qword_1ECC47AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AB0);
  }

  return result;
}

unint64_t sub_1DB4F7520()
{
  result = qword_1ECC47AB8;
  if (!qword_1ECC47AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AB8);
  }

  return result;
}

unint64_t sub_1DB4F7578()
{
  result = qword_1EE30DBF8;
  if (!qword_1EE30DBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBF8);
  }

  return result;
}

unint64_t sub_1DB4F75D0()
{
  result = qword_1EE30DC00;
  if (!qword_1EE30DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DC00);
  }

  return result;
}

unint64_t sub_1DB4F7628()
{
  result = qword_1EE30DB00;
  if (!qword_1EE30DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DB00);
  }

  return result;
}

unint64_t sub_1DB4F7680()
{
  result = qword_1EE30DB08;
  if (!qword_1EE30DB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DB08);
  }

  return result;
}

unint64_t sub_1DB4F76D8()
{
  result = qword_1EE30DBD0;
  if (!qword_1EE30DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBD0);
  }

  return result;
}

unint64_t sub_1DB4F7730()
{
  result = qword_1EE30DBD8;
  if (!qword_1EE30DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DBD8);
  }

  return result;
}

uint64_t sub_1DB4F7784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65674178616DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001DB5315D0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6567417463697665 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x696C61766E49736FLL && a2 == 0xEE006E6F69746164)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1DB4F78F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1734440037 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69646F4D7473616CLL && a2 == 0xEC00000064656966 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6164696C61766572 && a2 == 0xED00007441646574 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E646C697562 && a2 == 0xEB00000000726562 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265567465737361 && a2 == 0xEC0000006E6F6973 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7845726576726573 && a2 == 0xED00006465726970 || (sub_1DB50BA30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7963696C6F70 && a2 == 0xE600000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1DB4F7BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726556726F6A616DLL && a2 == 0xEC0000006E6F6973;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726556726F6E696DLL && a2 == 0xEC0000006E6F6973 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265566863746170 && a2 == 0xEC0000006E6F6973)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1DB4F7CC8()
{
  result = qword_1ECC47AC0;
  if (!qword_1ECC47AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47AC0);
  }

  return result;
}

uint64_t sub_1DB4F7D1C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v34 - v17;
  v19 = *(*(a4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v34 - v24;
  v26 = sub_1DB50AE30();
  if (!v26)
  {
    return sub_1DB50A9D0();
  }

  v48 = v26;
  v52 = sub_1DB50B4C0();
  v39 = sub_1DB50B4D0();
  sub_1DB50B470();
  result = sub_1DB50AE20();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_1DB50AE90();
      v30 = v18;
      v31 = v18;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_1DB50B4B0();
      result = sub_1DB50AE40();
      ++v28;
      v18 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _CodeByKind_Many.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t _CodeByKind_Many.init(from:)(uint64_t *a1, uint64_t a2)
{
  sub_1DB30BE90(a1, v12);
  type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  v5 = sub_1DB50AAA0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v12[0] = v5;
    MEMORY[0x1EEE9AC00](v5);
    KeyPath = swift_getKeyPath();
    v7 = sub_1DB50AA60();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    WitnessTable = swift_getWitnessTable();
    a2 = sub_1DB4F7D1C(sub_1DB4A4508, KeyPath, v7, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return a2;
}

uint64_t _CodeByKind_Many.init(_partiallyFrom:)(uint64_t *a1)
{
  sub_1DB30BE90(a1, v10);
  v2 = type metadata accessor for CodeByKind();
  swift_getWitnessTable();
  v10[0] = Array<A>.init(_partiallyFrom:)(v10, v2);
  KeyPath = swift_getKeyPath();
  v4 = sub_1DB50AA60();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_1DB4F7D1C(sub_1DB4019AC, KeyPath, v4, AssociatedTypeWitness, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  __swift_destroy_boxed_opaque_existential_0(a1);

  return v8;
}

uint64_t _CodeByKind_Many.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[5] = a2;
  v9[2] = a3;
  v9[3] = a4;
  swift_getAssociatedTypeWitness();
  v4 = sub_1DB50AA60();
  v5 = type metadata accessor for CodeByKind();

  WitnessTable = swift_getWitnessTable();
  sub_1DB4F7D1C(sub_1DB4F8B98, v9, v4, v5, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v7);

  swift_getWitnessTable();
  sub_1DB50AA70();
}

uint64_t _CodeByKind_Many._partiallyEncode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = a2;
  v12[2] = a3;
  v12[3] = a4;
  swift_getAssociatedTypeWitness();
  v5 = sub_1DB50AA60();
  v6 = type metadata accessor for CodeByKind();

  WitnessTable = swift_getWitnessTable();
  v9 = sub_1DB4F7D1C(sub_1DB4F882C, v12, v5, v6, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v8);

  v10 = swift_getWitnessTable();
  Array<A>._partiallyEncode(to:)(a1, v9, v6, v10);
}

uint64_t sub_1DB4F872C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, a1, v6);
  return CodeByKind.init(wrappedValue:)(v8, a2);
}

uint64_t sub_1DB4F882C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_1DB4F872C(a1, a2);
}

uint64_t sub_1DB4F8868@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  result = _CodeByKind_Many.init(from:)(a1, *(a2 + 16));
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_1DB4F889C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  result = _CodeByKind_Many.init(_partiallyFrom:)(a1);
  *a3 = result;
  return result;
}

uint64_t static _CodeByKind_Many<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return MEMORY[0x1EEE69530](a1, a2, AssociatedTypeWitness, a5);
}

uint64_t _CodeByKind_Many<>.hash(into:)()
{
  swift_getAssociatedTypeWitness();

  return sub_1DB50AA80();
}

uint64_t _CodeByKind_Many<>.hashValue.getter()
{
  sub_1DB50BCF0();
  swift_getAssociatedTypeWitness();
  sub_1DB50AA80();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4F8A7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return _CodeByKind_Many<>.hashValue.getter();
}

uint64_t sub_1DB4F8A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = *v3;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  return _CodeByKind_Many<>.hash(into:)();
}

uint64_t sub_1DB4F8AA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1DB50BCF0();
  v6 = *v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  _CodeByKind_Many<>.hash(into:)();
  return sub_1DB50BD30();
}

uint64_t sub_1DB4F8B44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

JetCore::DaemonCacheEvictRequest __swiftcall DaemonCacheEvictRequest.init(cacheKey:fileName:)(Swift::String cacheKey, Swift::String fileName)
{
  *v2 = cacheKey;
  v2[1] = fileName;
  result.fileName = fileName;
  result.cacheKey = cacheKey;
  return result;
}

unint64_t JetPackAssetDaemonMessage.request.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for JetPackAssetDaemonMessage(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DB50062C(v2, v7, type metadata accessor for JetPackAssetDaemonMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *(a1 + 24) = &type metadata for DaemonRefreshTestAssetRequest;
      result = sub_1DB4F9294();
      *(a1 + 32) = result;
      break;
    case 2u:
      *(a1 + 24) = &type metadata for DaemonReadTestAssetRequest;
      result = sub_1DB4F9240();
      *(a1 + 32) = result;
      break;
    case 3u:
      *(a1 + 24) = &type metadata for DaemonScheduleTaskRequest;
      result = sub_1DB4F91EC();
      *(a1 + 32) = result;
      break;
    case 4u:
      *(a1 + 24) = &type metadata for DaemonPostInstallRequest;
      result = sub_1DB4F9198();
      *(a1 + 32) = result;
      break;
    case 5u:
      *(a1 + 24) = &type metadata for DaemonBagRefreshRequest;
      result = sub_1DB4F9144();
      *(a1 + 32) = result;
      break;
    case 6u:
      v17 = *v7;
      *(a1 + 24) = &type metadata for DaemonPushInfoRequest;
      result = sub_1DB4F90F0();
      *(a1 + 32) = result;
      *a1 = v17;
      break;
    case 7u:
      v14 = *v7;
      v15 = *(v7 + 1);
      v16 = v7[16];
      *(a1 + 24) = &type metadata for DaemonPushSubscriptionRequest;
      result = sub_1DB4F909C();
      goto LABEL_10;
    case 8u:
      v18 = *v7;
      *(a1 + 24) = &type metadata for DaemonPushDeleteRecordRequest;
      result = sub_1DB4F9048();
      *(a1 + 32) = result;
      *a1 = v18;
      break;
    case 9u:
      v14 = *v7;
      v15 = *(v7 + 1);
      v16 = v7[16];
      *(a1 + 24) = &type metadata for DaemonPushResetRecordRequest;
      result = sub_1DB4F8FF4();
LABEL_10:
      *(a1 + 32) = result;
      *a1 = v14;
      *(a1 + 8) = v15;
      *(a1 + 16) = v16;
      break;
    case 0xAu:
      *(a1 + 24) = &type metadata for DaemonPushClearRecordsRequest;
      result = sub_1DB4F8FA0();
      *(a1 + 32) = result;
      break;
    case 0xBu:
      v19 = *v7;
      v12 = *(v7 + 2);
      v11 = *(v7 + 3);
      *(a1 + 24) = &type metadata for DaemonCacheEvictRequest;
      *(a1 + 32) = sub_1DB4F8F4C();
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v19;
      *(result + 32) = v12;
      *(result + 40) = v11;
      break;
    case 0xCu:
      *(a1 + 24) = type metadata accessor for DaemonGetAssetRequest(0);
      *(a1 + 32) = sub_1DB4FAD10(&qword_1EE30D090, type metadata accessor for DaemonGetAssetRequest);
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a1);
      result = sub_1DB4F8EE4(v7, boxed_opaque_existential_0, type metadata accessor for DaemonGetAssetRequest);
      break;
    default:
      v9 = *v7;
      v8 = *(v7 + 1);
      *(a1 + 24) = &type metadata for DaemonPingRequest;
      result = sub_1DB4F92E8();
      *(a1 + 32) = result;
      *a1 = v9;
      *(a1 + 8) = v8;
      break;
  }

  return result;
}

uint64_t sub_1DB4F8EE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DB4F8F4C()
{
  result = qword_1ECC47B50;
  if (!qword_1ECC47B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B50);
  }

  return result;
}

unint64_t sub_1DB4F8FA0()
{
  result = qword_1ECC47B58;
  if (!qword_1ECC47B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B58);
  }

  return result;
}

unint64_t sub_1DB4F8FF4()
{
  result = qword_1ECC47B60;
  if (!qword_1ECC47B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B60);
  }

  return result;
}

unint64_t sub_1DB4F9048()
{
  result = qword_1ECC47B68;
  if (!qword_1ECC47B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B68);
  }

  return result;
}

unint64_t sub_1DB4F909C()
{
  result = qword_1ECC47B70;
  if (!qword_1ECC47B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B70);
  }

  return result;
}

unint64_t sub_1DB4F90F0()
{
  result = qword_1ECC47B78;
  if (!qword_1ECC47B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B78);
  }

  return result;
}

unint64_t sub_1DB4F9144()
{
  result = qword_1ECC47B80;
  if (!qword_1ECC47B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B80);
  }

  return result;
}

unint64_t sub_1DB4F9198()
{
  result = qword_1ECC47B88;
  if (!qword_1ECC47B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B88);
  }

  return result;
}

unint64_t sub_1DB4F91EC()
{
  result = qword_1ECC47B90;
  if (!qword_1ECC47B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B90);
  }

  return result;
}

unint64_t sub_1DB4F9240()
{
  result = qword_1ECC47B98;
  if (!qword_1ECC47B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47B98);
  }

  return result;
}

unint64_t sub_1DB4F9294()
{
  result = qword_1ECC47BA0;
  if (!qword_1ECC47BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47BA0);
  }

  return result;
}

unint64_t sub_1DB4F92E8()
{
  result = qword_1ECC47BA8;
  if (!qword_1ECC47BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47BA8);
  }

  return result;
}

unint64_t sub_1DB4F933C(char a1)
{
  result = 1735289200;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x7473655464616572;
      break;
    case 3:
      result = 0x656C756465686373;
      break;
    case 4:
      result = 0x74736E4974736F70;
      break;
    case 5:
      result = 0x6572666552676162;
      break;
    case 6:
      result = 0x6F666E4968737570;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0x656C654468737570;
      break;
    case 9:
      result = 0x6573655268737570;
      break;
    case 10:
      result = 0x61656C4368737570;
      break;
    case 11:
      result = 0x6976456568636163;
      break;
    case 12:
      result = 7628135;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DB4F94C4(uint64_t a1)
{
  v2 = sub_1DB4FB150();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9500(uint64_t a1)
{
  v2 = sub_1DB4FB150();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F953C(uint64_t a1)
{
  v2 = sub_1DB4FAD58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9578(uint64_t a1)
{
  v2 = sub_1DB4FAD58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F95BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB508E3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4F95F0(uint64_t a1)
{
  v2 = sub_1DB4FAC68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F962C(uint64_t a1)
{
  v2 = sub_1DB4FAC68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9668(uint64_t a1)
{
  v2 = sub_1DB4FACBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F96A4(uint64_t a1)
{
  v2 = sub_1DB4FACBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F96E0(uint64_t a1)
{
  v2 = sub_1DB4FB498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F971C(uint64_t a1)
{
  v2 = sub_1DB4FB498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9758(uint64_t a1)
{
  v2 = sub_1DB4FB1F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9794(uint64_t a1)
{
  v2 = sub_1DB4FB1F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F97D0(uint64_t a1)
{
  v2 = sub_1DB4FAE00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F980C(uint64_t a1)
{
  v2 = sub_1DB4FAE00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9848(uint64_t a1)
{
  v2 = sub_1DB4FAF50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9884(uint64_t a1)
{
  v2 = sub_1DB4FAF50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F98C0(uint64_t a1)
{
  v2 = sub_1DB4FB0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F98FC(uint64_t a1)
{
  v2 = sub_1DB4FB0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9938(uint64_t a1)
{
  v2 = sub_1DB4FAEA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9974(uint64_t a1)
{
  v2 = sub_1DB4FAEA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F99B0(uint64_t a1)
{
  v2 = sub_1DB4FAFF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F99EC(uint64_t a1)
{
  v2 = sub_1DB4FAFF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9A28(uint64_t a1)
{
  v2 = sub_1DB4FB348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9A64(uint64_t a1)
{
  v2 = sub_1DB4FB348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9AA0(uint64_t a1)
{
  v2 = sub_1DB4FB3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9ADC(uint64_t a1)
{
  v2 = sub_1DB4FB3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB4F9B18(uint64_t a1)
{
  v2 = sub_1DB4FB2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4F9B54(uint64_t a1)
{
  v2 = sub_1DB4FB2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t JetPackAssetDaemonMessage.encode(to:)(void *a1)
{
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BB0, &qword_1DB524EE0);
  v91 = *(v120 - 8);
  v2 = *(v91 + 64);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v82 - v3;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest(0);
  v4 = *(*(AssetRequest - 8) + 64);
  MEMORY[0x1EEE9AC00](AssetRequest);
  v118 = &v82 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BB8, &qword_1DB524EE8);
  v90 = *(v116 - 8);
  v6 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v116);
  v115 = &v82 - v7;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BC0, &qword_1DB524EF0);
  v89 = *(v114 - 8);
  v8 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v82 - v9;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BC8, &qword_1DB524EF8);
  v88 = *(v113 - 8);
  v10 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v82 - v11;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BD0, &qword_1DB524F00);
  v87 = *(v110 - 8);
  v12 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v110);
  v109 = &v82 - v13;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BD8, &qword_1DB524F08);
  v86 = *(v108 - 8);
  v14 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v82 - v15;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BE0, &qword_1DB524F10);
  v85 = *(v106 - 8);
  v16 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v82 - v17;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BE8, &qword_1DB524F18);
  v84 = *(v104 - 8);
  v18 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v82 - v19;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BF0, &qword_1DB524F20);
  v83 = *(v102 - 8);
  v20 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v82 - v21;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47BF8, &qword_1DB524F28);
  v99 = *(v100 - 8);
  v22 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v82 - v23;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C00, &qword_1DB524F30);
  v96 = *(v97 - 8);
  v24 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97);
  v95 = &v82 - v25;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C08, &qword_1DB524F38);
  v93 = *(v94 - 8);
  v26 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v28 = &v82 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C10, &qword_1DB524F40);
  v92 = *(v29 - 8);
  v30 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v82 - v31;
  v33 = type metadata accessor for JetPackAssetDaemonMessage(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47C18, &qword_1DB524F48);
  v121[0] = *(v123 - 8);
  v37 = *(v121[0] + 64);
  MEMORY[0x1EEE9AC00](v123);
  v39 = &v82 - v38;
  v40 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FAC68();
  v122 = v39;
  sub_1DB50BE40();
  sub_1DB50062C(v121[1], v36, type metadata accessor for JetPackAssetDaemonMessage);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LOBYTE(v124) = 1;
      sub_1DB4FB3F0();
      v55 = v122;
      v54 = v123;
      sub_1DB50B7E0();
      sub_1DB4FB444();
      v56 = v94;
      sub_1DB50B8A0();
      v57 = &v124;
      goto LABEL_14;
    case 2u:
      LOBYTE(v124) = 2;
      sub_1DB4FB348();
      v28 = v95;
      v55 = v122;
      v54 = v123;
      sub_1DB50B7E0();
      sub_1DB4FB39C();
      v56 = v97;
      sub_1DB50B8A0();
      v57 = &v127;
      goto LABEL_14;
    case 3u:
      LOBYTE(v124) = 3;
      sub_1DB4FB2A0();
      v28 = v98;
      v55 = v122;
      v54 = v123;
      sub_1DB50B7E0();
      sub_1DB4FB2F4();
      v56 = v100;
      sub_1DB50B8A0();
      v57 = &v128;
      goto LABEL_14;
    case 4u:
      LOBYTE(v124) = 4;
      sub_1DB4FB1F8();
      v28 = v101;
      v55 = v122;
      v54 = v123;
      sub_1DB50B7E0();
      sub_1DB4FB24C();
      v56 = v102;
      sub_1DB50B8A0();
      v57 = &v115;
      goto LABEL_14;
    case 5u:
      LOBYTE(v124) = 5;
      sub_1DB4FB150();
      v28 = v103;
      v55 = v122;
      v54 = v123;
      sub_1DB50B7E0();
      sub_1DB4FB1A4();
      v56 = v104;
      sub_1DB50B8A0();
      v57 = &v116;
      goto LABEL_14;
    case 6u:
      v75 = *v36;
      LOBYTE(v124) = 6;
      sub_1DB4FB0A8();
      v76 = v105;
      v78 = v122;
      v77 = v123;
      sub_1DB50B7E0();
      LOBYTE(v124) = v75;
      sub_1DB4FB0FC();
      v79 = v106;
      sub_1DB50B8A0();
      p_AssetRequest = &AssetRequest;
      goto LABEL_17;
    case 7u:
      v68 = *v36;
      v69 = *(v36 + 1);
      v70 = v36[16];
      LOBYTE(v124) = 7;
      sub_1DB4FAFF8();
      v71 = v107;
      v73 = v122;
      v72 = v123;
      sub_1DB50B7E0();
      v124 = v68;
      v125 = v69;
      LOBYTE(v126) = v70;
      sub_1DB4FB04C();
      v74 = v108;
      sub_1DB50B8A0();
      (*(v86 + 8))(v71, v74);
      (*(v121[0] + 8))(v73, v72);
      return sub_1DB4FB0A0();
    case 8u:
      v81 = *v36;
      LOBYTE(v124) = 8;
      sub_1DB4FAF50();
      v76 = v109;
      v78 = v122;
      v77 = v123;
      sub_1DB50B7E0();
      LODWORD(v124) = v81;
      sub_1DB4FAFA4();
      v79 = v110;
      sub_1DB50B8A0();
      p_AssetRequest = &v119;
LABEL_17:
      (*(*(p_AssetRequest - 32) + 8))(v76, v79);
      return (*(v121[0] + 8))(v78, v77);
    case 9u:
      v61 = *v36;
      v62 = *(v36 + 1);
      v63 = v36[16];
      LOBYTE(v124) = 9;
      sub_1DB4FAEA8();
      v64 = v111;
      v66 = v122;
      v65 = v123;
      sub_1DB50B7E0();
      v124 = v61;
      v125 = v62;
      LOBYTE(v126) = v63;
      sub_1DB4FAEFC();
      v67 = v113;
      sub_1DB50B8A0();
      (*(v88 + 8))(v64, v67);
      (*(v121[0] + 8))(v66, v65);
      return sub_1DB3184B4(v61, v62, v63);
    case 0xAu:
      LOBYTE(v124) = 10;
      sub_1DB4FAE00();
      v28 = v112;
      v55 = v122;
      v54 = v123;
      sub_1DB50B7E0();
      sub_1DB4FAE54();
      v56 = v114;
      sub_1DB50B8A0();
      v57 = v121;
LABEL_14:
      (*(*(v57 - 32) + 8))(v28, v56);
      goto LABEL_15;
    case 0xBu:
      v47 = *v36;
      v46 = *(v36 + 1);
      v49 = *(v36 + 2);
      v48 = *(v36 + 3);
      LOBYTE(v124) = 11;
      sub_1DB4FAD58();
      v50 = v115;
      v52 = v122;
      v51 = v123;
      sub_1DB50B7E0();
      v124 = v47;
      v125 = v46;
      v126 = v49;
      v127 = v48;
      sub_1DB4FADAC();
      v53 = v116;
      sub_1DB50B8A0();
      (*(v90 + 8))(v50, v53);
      (*(v121[0] + 8))(v52, v51);

    case 0xCu:
      v58 = v118;
      sub_1DB4F8EE4(v36, v118, type metadata accessor for DaemonGetAssetRequest);
      LOBYTE(v124) = 12;
      sub_1DB4FACBC();
      v59 = v119;
      v55 = v122;
      v54 = v123;
      sub_1DB50B7E0();
      sub_1DB4FAD10(&qword_1EE30D0A8, type metadata accessor for DaemonGetAssetRequest);
      v60 = v120;
      sub_1DB50B8A0();
      (*(v91 + 8))(v59, v60);
      sub_1DB500694(v58, type metadata accessor for DaemonGetAssetRequest);
LABEL_15:
      result = (*(v121[0] + 8))(v55, v54);
      break;
    default:
      v42 = *v36;
      v41 = *(v36 + 1);
      LOBYTE(v124) = 0;
      sub_1DB4FB498();
      v44 = v122;
      v43 = v123;
      sub_1DB50B7E0();
      v124 = v42;
      v125 = v41;
      sub_1DB4FB4EC();
      sub_1DB50B8A0();
      (*(v92 + 8))(v32, v29);
      (*(v121[0] + 8))(v44, v43);

      break;
  }

  return result;
}

unint64_t sub_1DB4FAC68()
{
  result = qword_1EE30DE60;
  if (!qword_1EE30DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE60);
  }

  return result;
}

unint64_t sub_1DB4FACBC()
{
  result = qword_1EE30DE48;
  if (!qword_1EE30DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE48);
  }

  return result;
}

uint64_t sub_1DB4FAD10(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DB4FAD58()
{
  result = qword_1ECC47C20;
  if (!qword_1ECC47C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C20);
  }

  return result;
}

unint64_t sub_1DB4FADAC()
{
  result = qword_1ECC47C28;
  if (!qword_1ECC47C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C28);
  }

  return result;
}

unint64_t sub_1DB4FAE00()
{
  result = qword_1ECC47C30;
  if (!qword_1ECC47C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C30);
  }

  return result;
}

unint64_t sub_1DB4FAE54()
{
  result = qword_1ECC47C38;
  if (!qword_1ECC47C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C38);
  }

  return result;
}

unint64_t sub_1DB4FAEA8()
{
  result = qword_1ECC47C40;
  if (!qword_1ECC47C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C40);
  }

  return result;
}

unint64_t sub_1DB4FAEFC()
{
  result = qword_1ECC47C48;
  if (!qword_1ECC47C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C48);
  }

  return result;
}

unint64_t sub_1DB4FAF50()
{
  result = qword_1ECC47C50;
  if (!qword_1ECC47C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C50);
  }

  return result;
}

unint64_t sub_1DB4FAFA4()
{
  result = qword_1ECC47C58;
  if (!qword_1ECC47C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C58);
  }

  return result;
}

unint64_t sub_1DB4FAFF8()
{
  result = qword_1ECC47C60;
  if (!qword_1ECC47C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C60);
  }

  return result;
}

unint64_t sub_1DB4FB04C()
{
  result = qword_1ECC47C68;
  if (!qword_1ECC47C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C68);
  }

  return result;
}

unint64_t sub_1DB4FB0A8()
{
  result = qword_1ECC47C70;
  if (!qword_1ECC47C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C70);
  }

  return result;
}

unint64_t sub_1DB4FB0FC()
{
  result = qword_1ECC47C78;
  if (!qword_1ECC47C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C78);
  }

  return result;
}

unint64_t sub_1DB4FB150()
{
  result = qword_1ECC47C80;
  if (!qword_1ECC47C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C80);
  }

  return result;
}

unint64_t sub_1DB4FB1A4()
{
  result = qword_1ECC47C88;
  if (!qword_1ECC47C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C88);
  }

  return result;
}

unint64_t sub_1DB4FB1F8()
{
  result = qword_1ECC47C90;
  if (!qword_1ECC47C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C90);
  }

  return result;
}

unint64_t sub_1DB4FB24C()
{
  result = qword_1ECC47C98;
  if (!qword_1ECC47C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47C98);
  }

  return result;
}

unint64_t sub_1DB4FB2A0()
{
  result = qword_1ECC47CA0;
  if (!qword_1ECC47CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CA0);
  }

  return result;
}

unint64_t sub_1DB4FB2F4()
{
  result = qword_1ECC47CA8;
  if (!qword_1ECC47CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CA8);
  }

  return result;
}

unint64_t sub_1DB4FB348()
{
  result = qword_1ECC47CB0;
  if (!qword_1ECC47CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CB0);
  }

  return result;
}

unint64_t sub_1DB4FB39C()
{
  result = qword_1ECC47CB8;
  if (!qword_1ECC47CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CB8);
  }

  return result;
}

unint64_t sub_1DB4FB3F0()
{
  result = qword_1ECC47CC0;
  if (!qword_1ECC47CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CC0);
  }

  return result;
}

unint64_t sub_1DB4FB444()
{
  result = qword_1ECC47CC8;
  if (!qword_1ECC47CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CC8);
  }

  return result;
}

unint64_t sub_1DB4FB498()
{
  result = qword_1ECC47CD0;
  if (!qword_1ECC47CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CD0);
  }

  return result;
}

unint64_t sub_1DB4FB4EC()
{
  result = qword_1ECC47CD8;
  if (!qword_1ECC47CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47CD8);
  }

  return result;
}

uint64_t JetPackAssetDaemonMessage.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v197 = a2;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CE0, &qword_1DB524F50);
  v166 = *(v180 - 8);
  v3 = *(v166 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v196 = &v141 - v4;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CE8, &qword_1DB524F58);
  v165 = *(v179 - 8);
  v5 = *(v165 + 64);
  MEMORY[0x1EEE9AC00](v179);
  v191 = &v141 - v6;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CF0, &qword_1DB524F60);
  v164 = *(v178 - 8);
  v7 = *(v164 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v190 = &v141 - v8;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47CF8, &qword_1DB524F68);
  v163 = *(v177 - 8);
  v9 = *(v163 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v189 = &v141 - v10;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D00, &qword_1DB524F70);
  v162 = *(v176 - 8);
  v11 = *(v162 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v188 = &v141 - v12;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D08, &qword_1DB524F78);
  v161 = *(v175 - 8);
  v13 = *(v161 + 64);
  MEMORY[0x1EEE9AC00](v175);
  v187 = &v141 - v14;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D10, &qword_1DB524F80);
  v160 = *(v174 - 8);
  v15 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v174);
  v186 = &v141 - v16;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D18, &qword_1DB524F88);
  v159 = *(v173 - 8);
  v17 = *(v159 + 64);
  MEMORY[0x1EEE9AC00](v173);
  v185 = &v141 - v18;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D20, &qword_1DB524F90);
  v158 = *(v172 - 8);
  v19 = *(v158 + 64);
  MEMORY[0x1EEE9AC00](v172);
  v184 = &v141 - v20;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D28, &qword_1DB524F98);
  v157 = *(v170 - 8);
  v21 = *(v157 + 64);
  MEMORY[0x1EEE9AC00](v170);
  v195 = &v141 - v22;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D30, &qword_1DB524FA0);
  v156 = *(v171 - 8);
  v23 = *(v156 + 64);
  MEMORY[0x1EEE9AC00](v171);
  v182 = &v141 - v24;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D38, &qword_1DB524FA8);
  v155 = *(v169 - 8);
  v25 = *(v155 + 64);
  MEMORY[0x1EEE9AC00](v169);
  v183 = &v141 - v26;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D40, &qword_1DB524FB0);
  v168 = *(v193 - 8);
  v27 = *(v168 + 64);
  MEMORY[0x1EEE9AC00](v193);
  v181 = &v141 - v28;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47D48, &unk_1DB524FB8);
  v198 = *(v194 - 8);
  v29 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v31 = &v141 - v30;
  v199 = type metadata accessor for JetPackAssetDaemonMessage(0);
  v32 = *(*(v199 - 8) + 64);
  MEMORY[0x1EEE9AC00](v199);
  v167 = &v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v154 = (&v141 - v35);
  MEMORY[0x1EEE9AC00](v36);
  v153 = &v141 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v152 = (&v141 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v151 = (&v141 - v41);
  MEMORY[0x1EEE9AC00](v42);
  v150 = (&v141 - v43);
  MEMORY[0x1EEE9AC00](v44);
  v149 = &v141 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v148 = &v141 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v147 = &v141 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v141 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v141 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v141 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v141 - v60;
  MEMORY[0x1EEE9AC00](v62);
  v64 = &v141 - v63;
  v65 = a1[3];
  v66 = a1[4];
  v200 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v65);
  sub_1DB4FAC68();
  v192 = v31;
  v67 = v208;
  sub_1DB50BDF0();
  if (v67)
  {
LABEL_8:
    v85 = v200;
    return __swift_destroy_boxed_opaque_existential_0(v85);
  }

  v142 = v61;
  v143 = v58;
  v144 = v55;
  v145 = v52;
  v68 = v193;
  v208 = 0;
  v70 = v195;
  v69 = v196;
  v146 = v64;
  v71 = v197;
  v72 = v194;
  v73 = v192;
  v74 = sub_1DB50B7A0();
  v75 = (2 * *(v74 + 16)) | 1;
  v204 = v74;
  v205 = v74 + 32;
  v206 = 0;
  v207 = v75;
  v76 = sub_1DB4B8E88();
  if (v206 != v207 >> 1)
  {
LABEL_6:
    v81 = sub_1DB50B3E0();
    swift_allocError();
    v83 = v82;
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v83 = v199;
    sub_1DB50B6B0();
    sub_1DB50B3C0();
    (*(*(v81 - 8) + 104))(v83, *MEMORY[0x1E69E6AF8], v81);
    swift_willThrow();
LABEL_7:
    (*(v198 + 8))(v73, v72);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v76)
  {
    case 0:
      LOBYTE(v201) = 0;
      sub_1DB4FB498();
      v77 = v181;
      v78 = v208;
      sub_1DB50B6A0();
      if (v78)
      {
        goto LABEL_7;
      }

      sub_1DB4FD154();
      sub_1DB50B780();
      (*(v168 + 8))(v77, v68);
      (*(v198 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v79 = *(&v201 + 1);
      v80 = v142;
      *v142 = v201;
      v80[1] = v79;
      goto LABEL_34;
    case 1:
      LOBYTE(v201) = 1;
      sub_1DB4FB3F0();
      v120 = v183;
      v121 = v208;
      sub_1DB50B6A0();
      if (v121)
      {
        goto LABEL_7;
      }

      sub_1DB4FD100();
      v122 = v169;
      sub_1DB50B780();
      (*(v155 + 8))(v120, v122);
      (*(v198 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v80 = v143;
      goto LABEL_34;
    case 2:
      LOBYTE(v201) = 2;
      sub_1DB4FB348();
      v108 = v182;
      v109 = v208;
      sub_1DB50B6A0();
      if (v109)
      {
        goto LABEL_7;
      }

      sub_1DB4FD0AC();
      v110 = v171;
      sub_1DB50B780();
      v111 = v198;
      (*(v156 + 8))(v108, v110);
      (*(v111 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v93 = v144;
      goto LABEL_35;
    case 3:
      LOBYTE(v201) = 3;
      sub_1DB4FB2A0();
      v112 = v208;
      sub_1DB50B6A0();
      if (v112)
      {
        goto LABEL_7;
      }

      sub_1DB4FD058();
      v113 = v170;
      sub_1DB50B780();
      v114 = v198;
      (*(v157 + 8))(v70, v113);
      (*(v114 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v80 = v145;
LABEL_34:
      swift_storeEnumTagMultiPayload();
      v102 = v80;
      break;
    case 4:
      LOBYTE(v201) = 4;
      sub_1DB4FB1F8();
      v94 = v184;
      v95 = v208;
      sub_1DB50B6A0();
      if (v95)
      {
        goto LABEL_7;
      }

      sub_1DB4FD004();
      v96 = v172;
      sub_1DB50B780();
      v97 = v198;
      (*(v158 + 8))(v94, v96);
      (*(v97 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v93 = v147;
      goto LABEL_35;
    case 5:
      LOBYTE(v201) = 5;
      sub_1DB4FB150();
      v123 = v185;
      v124 = v208;
      sub_1DB50B6A0();
      if (v124)
      {
        goto LABEL_7;
      }

      sub_1DB4FCFB0();
      v125 = v173;
      sub_1DB50B780();
      v126 = v198;
      (*(v159 + 8))(v123, v125);
      (*(v126 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v93 = v148;
      goto LABEL_35;
    case 6:
      LOBYTE(v201) = 6;
      sub_1DB4FB0A8();
      v127 = v186;
      v128 = v208;
      sub_1DB50B6A0();
      if (v128)
      {
        goto LABEL_7;
      }

      sub_1DB4FCF5C();
      v129 = v174;
      sub_1DB50B780();
      v130 = v198;
      (*(v160 + 8))(v127, v129);
      (*(v130 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v93 = v149;
      *v149 = v201;
      goto LABEL_35;
    case 7:
      LOBYTE(v201) = 7;
      sub_1DB4FAFF8();
      v115 = v187;
      v116 = v208;
      sub_1DB50B6A0();
      if (v116)
      {
        goto LABEL_7;
      }

      sub_1DB4FCF08();
      v117 = v175;
      sub_1DB50B780();
      v118 = v198;
      (*(v161 + 8))(v115, v117);
      (*(v118 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v119 = v202;
      v93 = v150;
      *v150 = v201;
      v93[16] = v119;
      goto LABEL_35;
    case 8:
      LOBYTE(v201) = 8;
      sub_1DB4FAF50();
      v135 = v188;
      v136 = v208;
      sub_1DB50B6A0();
      if (v136)
      {
        goto LABEL_7;
      }

      sub_1DB4FCEB4();
      v137 = v176;
      sub_1DB50B780();
      v138 = v198;
      (*(v162 + 8))(v135, v137);
      (*(v138 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v93 = v151;
      *v151 = v201;
      goto LABEL_35;
    case 9:
      LOBYTE(v201) = 9;
      sub_1DB4FAEA8();
      v103 = v189;
      v104 = v208;
      sub_1DB50B6A0();
      if (v104)
      {
        goto LABEL_7;
      }

      sub_1DB4FCE60();
      v105 = v177;
      sub_1DB50B780();
      v106 = v198;
      (*(v163 + 8))(v103, v105);
      (*(v106 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v107 = v202;
      v93 = v152;
      *v152 = v201;
      v93[16] = v107;
      goto LABEL_35;
    case 10:
      LOBYTE(v201) = 10;
      sub_1DB4FAE00();
      v131 = v190;
      v132 = v208;
      sub_1DB50B6A0();
      if (v132)
      {
        goto LABEL_7;
      }

      sub_1DB4FCE0C();
      v133 = v178;
      sub_1DB50B780();
      v134 = v198;
      (*(v164 + 8))(v131, v133);
      (*(v134 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v93 = v153;
      goto LABEL_35;
    case 11:
      LOBYTE(v201) = 11;
      sub_1DB4FAD58();
      v87 = v191;
      v88 = v208;
      sub_1DB50B6A0();
      if (v88)
      {
        goto LABEL_7;
      }

      sub_1DB4FCDB8();
      v89 = v179;
      sub_1DB50B780();
      v90 = v198;
      (*(v165 + 8))(v87, v89);
      (*(v90 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v91 = v202;
      v92 = v203;
      v93 = v154;
      *v154 = v201;
      *(v93 + 2) = v91;
      *(v93 + 3) = v92;
LABEL_35:
      swift_storeEnumTagMultiPayload();
      v102 = v93;
      break;
    case 12:
      LOBYTE(v201) = 12;
      sub_1DB4FACBC();
      v98 = v208;
      sub_1DB50B6A0();
      if (v98)
      {
        goto LABEL_7;
      }

      type metadata accessor for DaemonGetAssetRequest(0);
      sub_1DB4FAD10(&qword_1EE30D0A0, type metadata accessor for DaemonGetAssetRequest);
      v99 = v167;
      v100 = v180;
      sub_1DB50B780();
      v101 = v198;
      (*(v166 + 8))(v69, v100);
      (*(v101 + 8))(v73, v72);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v102 = v99;
      break;
    default:
      goto LABEL_6;
  }

  v139 = v146;
  sub_1DB4F8EE4(v102, v146, type metadata accessor for JetPackAssetDaemonMessage);
  v140 = v200;
  sub_1DB4F8EE4(v139, v71, type metadata accessor for JetPackAssetDaemonMessage);
  v85 = v140;
  return __swift_destroy_boxed_opaque_existential_0(v85);
}

unint64_t sub_1DB4FCDB8()
{
  result = qword_1ECC47D50;
  if (!qword_1ECC47D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D50);
  }

  return result;
}

unint64_t sub_1DB4FCE0C()
{
  result = qword_1ECC47D58;
  if (!qword_1ECC47D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D58);
  }

  return result;
}

unint64_t sub_1DB4FCE60()
{
  result = qword_1ECC47D60;
  if (!qword_1ECC47D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D60);
  }

  return result;
}

unint64_t sub_1DB4FCEB4()
{
  result = qword_1ECC47D68;
  if (!qword_1ECC47D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D68);
  }

  return result;
}

unint64_t sub_1DB4FCF08()
{
  result = qword_1ECC47D70;
  if (!qword_1ECC47D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D70);
  }

  return result;
}

unint64_t sub_1DB4FCF5C()
{
  result = qword_1ECC47D78;
  if (!qword_1ECC47D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D78);
  }

  return result;
}

unint64_t sub_1DB4FCFB0()
{
  result = qword_1ECC47D80;
  if (!qword_1ECC47D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D80);
  }

  return result;
}

unint64_t sub_1DB4FD004()
{
  result = qword_1ECC47D88;
  if (!qword_1ECC47D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D88);
  }

  return result;
}

unint64_t sub_1DB4FD058()
{
  result = qword_1ECC47D90;
  if (!qword_1ECC47D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D90);
  }

  return result;
}

unint64_t sub_1DB4FD0AC()
{
  result = qword_1ECC47D98;
  if (!qword_1ECC47D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47D98);
  }

  return result;
}

unint64_t sub_1DB4FD100()
{
  result = qword_1ECC47DA0;
  if (!qword_1ECC47DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DA0);
  }

  return result;
}

unint64_t sub_1DB4FD154()
{
  result = qword_1ECC47DA8;
  if (!qword_1ECC47DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DA8);
  }

  return result;
}

uint64_t DaemonPingRequest.messageText.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

unint64_t DaemonPingRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD00000000000001BLL;
}

uint64_t DaemonPingRequest.message.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FD308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x546567617373656DLL && a2 == 0xEB00000000747865)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4FD394(uint64_t a1)
{
  v2 = sub_1DB4FD548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FD3D0(uint64_t a1)
{
  v2 = sub_1DB4FD548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPingRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DB0, &qword_1DB524FC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FD548();
  sub_1DB50BE40();
  sub_1DB50B860();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DB4FD548()
{
  result = qword_1ECC47DB8;
  if (!qword_1ECC47DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DB8);
  }

  return result;
}

uint64_t DaemonPingRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DC0, &qword_1DB524FD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FD548();
  sub_1DB50BDF0();
  if (!v2)
  {
    v11 = sub_1DB50B740();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB4FD710@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FD77C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DB0, &qword_1DB524FC8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FD548();
  sub_1DB50BE40();
  sub_1DB50B860();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DB4FD8B8()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1DB50B320();

  MEMORY[0x1E1285C70](v1, v2);
  return 0xD00000000000001BLL;
}

uint64_t DaemonRefreshTestAssetRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FD998(uint64_t a1)
{
  v2 = sub_1DB4FDA54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FD9D4(uint64_t a1)
{
  v2 = sub_1DB4FDA54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FDA54()
{
  result = qword_1ECC47DD0;
  if (!qword_1ECC47DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DD0);
  }

  return result;
}

uint64_t sub_1DB4FDAA8()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonReadTestAssetRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FDBB8(uint64_t a1)
{
  v2 = sub_1DB4FDC74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FDBF4(uint64_t a1)
{
  v2 = sub_1DB4FDC74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FDC74()
{
  result = qword_1ECC47DE0;
  if (!qword_1ECC47DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DE0);
  }

  return result;
}

uint64_t sub_1DB4FDCC8()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonReadTestAssetResponse.token.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
}

JetCore::DaemonReadTestAssetResponse __swiftcall DaemonReadTestAssetResponse.init(token:)(JetCore::DaemonReadTestAssetResponse token)
{
  v2 = *(token.token.token._countAndFlagsBits + 16);
  v3 = *(token.token.token._countAndFlagsBits + 24);
  *v1 = *token.token.token._countAndFlagsBits;
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return token;
}

uint64_t sub_1DB4FDDE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4FDE64(uint64_t a1)
{
  v2 = sub_1DB4FE068();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FDEA0(uint64_t a1)
{
  v2 = sub_1DB4FE068();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonReadTestAssetResponse.encode(to:)(void *a1)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DE8, &qword_1DB524FE8);
  v3 = *(v14 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[3];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE068();

  sub_1DB50BE40();
  v15 = v7;
  v16 = v8;
  v17 = v13;
  v18 = v9;
  sub_1DB301F50();
  v11 = v14;
  sub_1DB50B8A0();

  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_1DB4FE068()
{
  result = qword_1ECC47DF0;
  if (!qword_1ECC47DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47DF0);
  }

  return result;
}

uint64_t DaemonReadTestAssetResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47DF8, &qword_1DB524FF0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE068();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB3013EC();
    sub_1DB50B780();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

JetCore::DaemonScheduleTime __swiftcall DaemonScheduleTime.init(scheduleAfter:scheduleBefore:)(Swift::Double scheduleAfter, Swift::Double scheduleBefore)
{
  *v2 = scheduleAfter;
  v2[1] = scheduleBefore;
  result.scheduleBefore = scheduleBefore;
  result.scheduleAfter = scheduleAfter;
  return result;
}

uint64_t sub_1DB4FE2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x656C756465686373 && a2 == 0xED00007265746641;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEE0065726F666542)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB4FE3A0(uint64_t a1)
{
  v2 = sub_1DB4FE5A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FE3DC(uint64_t a1)
{
  v2 = sub_1DB4FE5A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonScheduleTime.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E00, &qword_1DB524FF8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13[-v7];
  v10 = *v1;
  v9 = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE5A0();
  sub_1DB50BE40();
  v13[15] = 0;
  sub_1DB50B880();
  if (!v2)
  {
    v13[14] = 1;
    sub_1DB50B880();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1DB4FE5A0()
{
  result = qword_1ECC47E08;
  if (!qword_1ECC47E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E08);
  }

  return result;
}

uint64_t DaemonScheduleTime.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E10, &qword_1DB525000);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FE5A0();
  sub_1DB50BDF0();
  if (!v2)
  {
    v18 = 0;
    sub_1DB50B760();
    v12 = v11;
    v17 = 1;
    sub_1DB50B760();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 DaemonScheduleTaskResponse.schedule.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u8[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u8[0] = v2;
  return result;
}

uint64_t sub_1DB4FE80C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4FE894(uint64_t a1)
{
  v2 = sub_1DB4FEA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FE8D0(uint64_t a1)
{
  v2 = sub_1DB4FEA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonScheduleTaskResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E18, &qword_1DB525008);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  HIDWORD(v12) = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FEA6C();
  sub_1DB50BE40();
  v13 = v9;
  v14 = v8;
  v15 = BYTE4(v12);
  sub_1DB4FEAC0();
  sub_1DB50B830();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DB4FEA6C()
{
  result = qword_1ECC47E20;
  if (!qword_1ECC47E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E20);
  }

  return result;
}

unint64_t sub_1DB4FEAC0()
{
  result = qword_1ECC47E28;
  if (!qword_1ECC47E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E28);
  }

  return result;
}

uint64_t DaemonScheduleTaskResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E30, &qword_1DB525010);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FEA6C();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB4FEC8C();
    sub_1DB50B710();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB4FEC8C()
{
  result = qword_1ECC47E38;
  if (!qword_1ECC47E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E38);
  }

  return result;
}

uint64_t DaemonScheduleTaskRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FED74(uint64_t a1)
{
  v2 = sub_1DB4FEE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FEDB0(uint64_t a1)
{
  v2 = sub_1DB4FEE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FEE30()
{
  result = qword_1ECC47E48;
  if (!qword_1ECC47E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E48);
  }

  return result;
}

uint64_t sub_1DB4FEE84()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonPostInstallRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FEF8C(uint64_t a1)
{
  v2 = sub_1DB4FF048();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FEFC8(uint64_t a1)
{
  v2 = sub_1DB4FF048();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FF048()
{
  result = qword_1ECC47E58;
  if (!qword_1ECC47E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E58);
  }

  return result;
}

uint64_t sub_1DB4FF09C()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonBagRefreshRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FF1A4(uint64_t a1)
{
  v2 = sub_1DB4FF260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FF1E0(uint64_t a1)
{
  v2 = sub_1DB4FF260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DB4FF260()
{
  result = qword_1ECC47E68;
  if (!qword_1ECC47E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E68);
  }

  return result;
}

uint64_t sub_1DB4FF2DC()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t DaemonPushInfoRequest.message.getter@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FF418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4D746361706D6F63 && a2 == 0xEB0000000065646FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB4FF4A4(uint64_t a1)
{
  v2 = sub_1DB4FF654();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FF4E0(uint64_t a1)
{
  v2 = sub_1DB4FF654();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushInfoRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E70, &qword_1DB525030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FF654();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DB4FF654()
{
  result = qword_1ECC47E78;
  if (!qword_1ECC47E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E78);
  }

  return result;
}

uint64_t DaemonPushInfoRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E80, &unk_1DB525038);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FF654();
  sub_1DB50BDF0();
  if (!v2)
  {
    v11 = sub_1DB50B750();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB4FF800@<X0>(_BYTE *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB4FF864(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E70, &qword_1DB525030);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FF654();
  sub_1DB50BE40();
  sub_1DB50B870();
  return (*(v4 + 8))(v7, v3);
}

uint64_t DaemonPushInfoResponse.environment.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DaemonPushInfoResponse.apsLastKnownConnectedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DaemonPushInfoResponse(0) + 28);

  return sub_1DB476604(v3, a1);
}

uint64_t DaemonPushInfoResponse.controlChannelID.getter()
{
  v1 = (v0 + *(type metadata accessor for DaemonPushInfoResponse(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DaemonPushInfoResponse.init(environment:records:subscribedChannelIDs:apsLastKnownConnectedDate:controlChannelID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v12 = type metadata accessor for DaemonPushInfoResponse(0);
  result = sub_1DB35EA44(a5, a8 + *(v12 + 28));
  v14 = (a8 + *(v12 + 32));
  *v14 = a6;
  v14[1] = a7;
  return result;
}

unint64_t sub_1DB4FFB08()
{
  v1 = *v0;
  v2 = 0x6D6E6F7269766E65;
  v3 = 0xD000000000000019;
  if (v1 != 3)
  {
    v3 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000014;
  }

  if (*v0)
  {
    v2 = 0x7364726F636572;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1DB4FFBBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DB509270(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DB4FFBE4(uint64_t a1)
{
  v2 = sub_1DB4FFF44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB4FFC20(uint64_t a1)
{
  v2 = sub_1DB4FFF44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushInfoResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E88, &qword_1DB525048);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FFF44();
  sub_1DB50BE40();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v20) = 0;
  sub_1DB50B860();
  if (!v2)
  {
    v20 = v3[2];
    HIBYTE(v19) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E98, &unk_1DB525050);
    sub_1DB5004F4(&qword_1ECC47EA0, sub_1DB4FFF98);
    sub_1DB50B8A0();
    v20 = v3[3];
    HIBYTE(v19) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
    sub_1DB5005C0(&qword_1ECC47EB0);
    sub_1DB50B8A0();
    v13 = type metadata accessor for DaemonPushInfoResponse(0);
    v14 = *(v13 + 28);
    LOBYTE(v20) = 3;
    sub_1DB509DD0();
    sub_1DB4FAD10(&qword_1EE30E278, MEMORY[0x1E6969530]);
    sub_1DB50B830();
    v15 = (v3 + *(v13 + 32));
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v20) = 4;
    sub_1DB50B800();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1DB4FFF44()
{
  result = qword_1ECC47E90;
  if (!qword_1ECC47E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47E90);
  }

  return result;
}

unint64_t sub_1DB4FFF98()
{
  result = qword_1ECC47EA8;
  if (!qword_1ECC47EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EA8);
  }

  return result;
}

uint64_t DaemonPushInfoResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC43838, &unk_1DB513310);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47EB8, &qword_1DB525060);
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - v10;
  v12 = type metadata accessor for DaemonPushInfoResponse(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB4FFF44();
  v32 = v11;
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = v30;
  v28 = v12;
  LOBYTE(v34) = 0;
  v18 = sub_1DB50B740();
  v20 = v19;
  *v15 = v18;
  v15[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47E98, &unk_1DB525050);
  v33 = 1;
  sub_1DB5004F4(&qword_1ECC47EC0, sub_1DB50056C);
  sub_1DB50B780();
  v27[1] = v20;
  v15[2] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC46950, &qword_1DB520560);
  v33 = 2;
  sub_1DB5005C0(&qword_1ECC47ED0);
  v27[0] = 0;
  sub_1DB50B780();
  v15[3] = v34;
  sub_1DB509DD0();
  LOBYTE(v34) = 3;
  sub_1DB4FAD10(&qword_1EE30E268, MEMORY[0x1E6969530]);
  sub_1DB50B710();
  v21 = v28;
  sub_1DB35EA44(v7, v15 + *(v28 + 28));
  LOBYTE(v34) = 4;
  v22 = sub_1DB50B6E0();
  v24 = v23;
  (*(v17 + 8))(v32, v31);
  v25 = (v15 + *(v21 + 32));
  *v25 = v22;
  v25[1] = v24;
  sub_1DB50062C(v15, v29, type metadata accessor for DaemonPushInfoResponse);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1DB500694(v15, type metadata accessor for DaemonPushInfoResponse);
}

uint64_t sub_1DB5004F4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC47E98, &unk_1DB525050);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DB50056C()
{
  result = qword_1ECC47EC8;
  if (!qword_1ECC47EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EC8);
  }

  return result;
}

uint64_t sub_1DB5005C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC46950, &qword_1DB520560);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DB50062C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DB500694(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DB500724()
{
  if (*v0)
  {
    result = 0x7263736275736E75;
  }

  else
  {
    result = 0x6269726373627573;
  }

  *v0;
  return result;
}

uint64_t sub_1DB50076C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6269726373627573 && a2 == 0xE900000000000065;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEB00000000656269)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB500854(uint64_t a1)
{
  v2 = sub_1DB500CAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB500890(uint64_t a1)
{
  v2 = sub_1DB500CAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB5008CC(uint64_t a1)
{
  v2 = sub_1DB500D54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB500908(uint64_t a1)
{
  v2 = sub_1DB500D54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB500944(uint64_t a1)
{
  v2 = sub_1DB500D00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB500980(uint64_t a1)
{
  v2 = sub_1DB500D00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushSubscriptionRequest.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47ED8, &qword_1DB525068);
  v25 = *(v3 - 8);
  v26 = v3;
  v4 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47EE0, &qword_1DB525070);
  v22 = *(v6 - 8);
  v23 = v6;
  v7 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47EE8, &qword_1DB525078);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = *v1;
  v27 = v1[1];
  v28 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB500CAC();
  sub_1DB50BE40();
  if (v16)
  {
    v30 = 1;
    sub_1DB500D00();
    v18 = v24;
    sub_1DB50B7E0();
    v19 = v26;
    sub_1DB50B800();
    (*(v25 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_1DB500D54();
    sub_1DB50B7E0();
    v20 = v23;
    sub_1DB50B860();
    (*(v22 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1DB500CAC()
{
  result = qword_1ECC47EF0;
  if (!qword_1ECC47EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EF0);
  }

  return result;
}

unint64_t sub_1DB500D00()
{
  result = qword_1ECC47EF8;
  if (!qword_1ECC47EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47EF8);
  }

  return result;
}

unint64_t sub_1DB500D54()
{
  result = qword_1ECC47F00;
  if (!qword_1ECC47F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F00);
  }

  return result;
}

uint64_t DaemonPushSubscriptionRequest.State.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F08, &qword_1DB525080);
  v41 = *(v43 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v40 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F10, &qword_1DB525088);
  v40 = *(v6 - 8);
  v7 = *(v40 + 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F18, &qword_1DB525090);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DB500CAC();
  v17 = v44;
  sub_1DB50BDF0();
  if (!v17)
  {
    v18 = v43;
    v44 = v11;
    v19 = sub_1DB50B7A0();
    v20 = (2 * *(v19 + 16)) | 1;
    v46 = v19;
    v47 = v19 + 32;
    v48 = 0;
    v49 = v20;
    v21 = sub_1DB4B9DCC();
    v22 = v14;
    if (v21 == 2 || v48 != v49 >> 1)
    {
      v26 = sub_1DB50B3E0();
      swift_allocError();
      v28 = v27;
      v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
      *v28 = &type metadata for DaemonPushSubscriptionRequest.State;
      sub_1DB50B6B0();
      sub_1DB50B3C0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
      (*(v44 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        v50 = v21;
        v51 = 1;
        sub_1DB500D00();
        v23 = v5;
        sub_1DB50B6A0();
        v24 = v44;
        v25 = v42;
        v40 = v22;
        v34 = sub_1DB50B6E0();
        v38 = v37;
        (*(v41 + 8))(v23, v18);
        (*(v24 + 8))(v40, v10);
      }

      else
      {
        v31 = v21;
        v51 = 0;
        sub_1DB500D54();
        v32 = v9;
        sub_1DB50B6A0();
        v33 = v44;
        v25 = v42;
        v50 = v31;
        v35 = v22;
        v36 = v6;
        v34 = sub_1DB50B740();
        v38 = v39;
        (*(v40 + 1))(v32, v36);
        (*(v33 + 8))(v35, v10);
      }

      swift_unknownObjectRelease();
      *v25 = v34;
      *(v25 + 8) = v38;
      *(v25 + 16) = v50 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v45);
}

unint64_t DaemonPushSubscriptionRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v0[2])
  {
    if (!v2)
    {
      return 0xD000000000000026;
    }

    sub_1DB50B320();

    v4 = 0xD000000000000024;
  }

  else
  {
    sub_1DB50B320();

    v4 = 0xD000000000000020;
  }

  MEMORY[0x1E1285C70](v1, v2);
  return v4;
}

uint64_t sub_1DB501480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB501504(uint64_t a1)
{
  v2 = sub_1DB5016F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB501540(uint64_t a1)
{
  v2 = sub_1DB5016F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushSubscriptionRequest.encode(to:)(void *a1)
{
  v13[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F20, &qword_1DB525098);
  v3 = *(v13[0] - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13[0]);
  v6 = v13 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50136C();
  sub_1DB5016F4();
  sub_1DB50BE40();
  v13[1] = v7;
  v13[2] = v8;
  v14 = v9;
  sub_1DB501748();
  v11 = v13[0];
  sub_1DB50B8A0();
  sub_1DB4FB0A0();
  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_1DB5016F4()
{
  result = qword_1ECC47F28;
  if (!qword_1ECC47F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F28);
  }

  return result;
}

unint64_t sub_1DB501748()
{
  result = qword_1ECC47F30;
  if (!qword_1ECC47F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F30);
  }

  return result;
}

uint64_t DaemonPushSubscriptionRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F38, &qword_1DB5250A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB5016F4();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB501914();
    sub_1DB50B780();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB501914()
{
  result = qword_1ECC47F40;
  if (!qword_1ECC47F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F40);
  }

  return result;
}

unint64_t DaemonPushDeleteRecordRequest.description.getter()
{
  v1 = *v0;
  sub_1DB50B320();

  v2 = sub_1DB50B8F0();
  MEMORY[0x1E1285C70](v2);

  return 0xD00000000000002FLL;
}

uint64_t DaemonPushDeleteRecordRequest.message.getter@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB501AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB501B34(uint64_t a1)
{
  v2 = sub_1DB501CE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB501B70(uint64_t a1)
{
  v2 = sub_1DB501CE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushDeleteRecordRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F48, &qword_1DB5250A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB501CE4();
  sub_1DB50BE40();
  sub_1DB50B8B0();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DB501CE4()
{
  result = qword_1ECC47F50;
  if (!qword_1ECC47F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F50);
  }

  return result;
}

uint64_t DaemonPushDeleteRecordRequest.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F58, &qword_1DB5250B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB501CE4();
  sub_1DB50BDF0();
  if (!v2)
  {
    v11 = sub_1DB50B790();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB501E8C@<X0>(_DWORD *a1@<X8>)
{
  *a1 = *v1;
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB501EF0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F48, &qword_1DB5250A8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB501CE4();
  sub_1DB50BE40();
  sub_1DB50B8B0();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1DB50202C(uint64_t a1)
{
  v2 = sub_1DB502678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB502068(uint64_t a1)
{
  v2 = sub_1DB502678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB5020A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB502124(uint64_t a1)
{
  v2 = sub_1DB5026CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB502160(uint64_t a1)
{
  v2 = sub_1DB5026CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB50219C()
{
  if (*v0)
  {
    result = 0x656E6E6168437962;
  }

  else
  {
    result = 1682536802;
  }

  *v0;
  return result;
}

uint64_t sub_1DB5021D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1682536802 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656E6E6168437962 && a2 == 0xEB0000000064496CLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB5022B8(uint64_t a1)
{
  v2 = sub_1DB502624();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB5022F4(uint64_t a1)
{
  v2 = sub_1DB502624();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushResetRecordRequest.Target.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F60, &qword_1DB5250B8);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F68, &qword_1DB5250C0);
  v23 = *(v6 - 8);
  v24 = v6;
  v7 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F70, &qword_1DB5250C8);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v22 - v13;
  v15 = v1[1];
  v28 = *v1;
  v22 = v15;
  v16 = *(v1 + 16);
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB502624();
  sub_1DB50BE40();
  if (v16)
  {
    v30 = 1;
    sub_1DB502678();
    v18 = v25;
    sub_1DB50B7E0();
    v19 = v27;
    sub_1DB50B860();
    (*(v26 + 8))(v18, v19);
  }

  else
  {
    v29 = 0;
    sub_1DB5026CC();
    sub_1DB50B7E0();
    v20 = v24;
    sub_1DB50B8B0();
    (*(v23 + 8))(v9, v20);
  }

  return (*(v11 + 8))(v14, v10);
}

unint64_t sub_1DB502624()
{
  result = qword_1ECC47F78;
  if (!qword_1ECC47F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F78);
  }

  return result;
}

unint64_t sub_1DB502678()
{
  result = qword_1ECC47F80;
  if (!qword_1ECC47F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F80);
  }

  return result;
}

unint64_t sub_1DB5026CC()
{
  result = qword_1ECC47F88;
  if (!qword_1ECC47F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47F88);
  }

  return result;
}

uint64_t DaemonPushResetRecordRequest.Target.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F90, &qword_1DB5250D0);
  v42 = *(v44 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v41 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47F98, &qword_1DB5250D8);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FA0, &qword_1DB5250E0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v16 = a1[3];
  v15 = a1[4];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1DB502624();
  v17 = v45;
  sub_1DB50BDF0();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  v18 = v44;
  v45 = v11;
  v19 = sub_1DB50B7A0();
  v20 = (2 * *(v19 + 16)) | 1;
  v47 = v19;
  v48 = v19 + 32;
  v49 = 0;
  v50 = v20;
  v21 = sub_1DB4B9DCC();
  v22 = v14;
  if (v21 == 2 || v49 != v50 >> 1)
  {
    v26 = sub_1DB50B3E0();
    swift_allocError();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC42F80, &unk_1DB5118B0) + 48);
    *v28 = &type metadata for DaemonPushResetRecordRequest.Target;
    sub_1DB50B6B0();
    sub_1DB50B3C0();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v45 + 8))(v14, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v46);
  }

  if (v21)
  {
    v51 = v21;
    v52 = 1;
    sub_1DB502678();
    v23 = v5;
    sub_1DB50B6A0();
    v24 = v45;
    v25 = v43;
    v34 = sub_1DB50B740();
    v41 = v35;
    v38 = v34;
    (*(v42 + 8))(v23, v18);
    (*(v24 + 8))(v14, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = v21;
    v52 = 0;
    sub_1DB5026CC();
    v32 = v9;
    sub_1DB50B6A0();
    v33 = v45;
    v51 = v31;
    v36 = v32;
    v37 = v22;
    v39 = sub_1DB50B790();
    (*(v41 + 8))(v36, v6);
    (*(v33 + 8))(v37, v10);
    swift_unknownObjectRelease();
    v41 = 0;
    v38 = v39;
    v25 = v43;
  }

  v40 = v41;
  *v25 = v38;
  *(v25 + 8) = v40;
  *(v25 + 16) = v51 & 1;
  return __swift_destroy_boxed_opaque_existential_0(v46);
}

uint64_t sub_1DB502CF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return a1();
}

unint64_t DaemonPushResetRecordRequest.description.getter()
{
  v1 = *v0;
  if (v0[2])
  {
    v2 = v0[1];
    v5 = 0;
    sub_1DB50B320();
    MEMORY[0x1E1285C70](0xD000000000000038, 0x80000001DB5317C0);
    MEMORY[0x1E1285C70](v1, v2);
  }

  else
  {
    sub_1DB50B320();

    v5 = 0xD00000000000002ELL;
    v3 = sub_1DB50B8F0();
    MEMORY[0x1E1285C70](v3);
  }

  return v5;
}

uint64_t sub_1DB502E1C@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();

  return a1(v3, v4, v5);
}

uint64_t sub_1DB502EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB502F40(uint64_t a1)
{
  v2 = sub_1DB503130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB502F7C(uint64_t a1)
{
  v2 = sub_1DB503130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonPushResetRecordRequest.encode(to:)(void *a1)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FA8, &qword_1DB5250E8);
  v3 = *(v13 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v13 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB3184A4(v7, v8, v9);
  sub_1DB503130();
  sub_1DB50BE40();
  v14 = v7;
  v15 = v8;
  v16 = v9;
  sub_1DB503184();
  v11 = v13;
  sub_1DB50B8A0();
  sub_1DB3184B4(v14, v15, v16);
  return (*(v3 + 8))(v6, v11);
}

unint64_t sub_1DB503130()
{
  result = qword_1ECC47FB0;
  if (!qword_1ECC47FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FB0);
  }

  return result;
}

unint64_t sub_1DB503184()
{
  result = qword_1ECC47FB8;
  if (!qword_1ECC47FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FB8);
  }

  return result;
}

uint64_t DaemonPushResetRecordRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FC0, &qword_1DB5250F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB503130();
  sub_1DB50BDF0();
  if (!v2)
  {
    sub_1DB503350();
    sub_1DB50B780();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    *a2 = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB503350()
{
  result = qword_1ECC47FC8;
  if (!qword_1ECC47FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FC8);
  }

  return result;
}

uint64_t sub_1DB5033C0@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();

  return a1(v3, v4, v5);
}

uint64_t DaemonPushClearRecordsRequest.message.getter()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB5034E4(uint64_t a1)
{
  v2 = sub_1DB5036C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB503520(uint64_t a1)
{
  v2 = sub_1DB5036C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DB5035A0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1DB50BE40();
  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1DB5036C0()
{
  result = qword_1ECC47FD8;
  if (!qword_1ECC47FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FD8);
  }

  return result;
}

uint64_t sub_1DB503714()
{
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB50379C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1DB50BE40();
  return (*(v9 + 8))(v12, v8);
}

uint64_t DaemonCacheEvictRequest.cacheKey.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t DaemonCacheEvictRequest.fileName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t DaemonCacheEvictRequest.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52FAF0);
  MEMORY[0x1E1285C70](v3, v4);
  MEMORY[0x1E1285C70](0x6568636163202C20, 0xED0000203A79654BLL);
  MEMORY[0x1E1285C70](v1, v2);
  return 0;
}

uint64_t DaemonCacheEvictRequest.message.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB503A68()
{
  if (*v0)
  {
    return 0x656D614E656C6966;
  }

  else
  {
    return 0x79654B6568636163;
  }
}

uint64_t sub_1DB503A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B6568636163 && a2 == 0xE800000000000000;
  if (v6 || (sub_1DB50BA30() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DB50BA30();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1DB503B78(uint64_t a1)
{
  v2 = sub_1DB503D84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB503BB4(uint64_t a1)
{
  v2 = sub_1DB503D84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonCacheEvictRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FE0, &qword_1DB525100);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v14 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v14[1] = v1[3];
  v14[2] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB503D84();
  sub_1DB50BE40();
  v16 = 0;
  v12 = v14[3];
  sub_1DB50B860();
  if (!v12)
  {
    v15 = 1;
    sub_1DB50B860();
  }

  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1DB503D84()
{
  result = qword_1ECC47FE8;
  if (!qword_1ECC47FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC47FE8);
  }

  return result;
}

uint64_t DaemonCacheEvictRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FF0, &qword_1DB525108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB503D84();
  sub_1DB50BDF0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v11 = sub_1DB50B740();
  v13 = v12;
  v19 = v11;
  v20 = 1;
  v14 = sub_1DB50B740();
  v16 = v15;
  (*(v6 + 8))(v9, v5);
  *a2 = v19;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB503FD8@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  type metadata accessor for JetPackAssetDaemonMessage(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB504074()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1DB50B320();
  MEMORY[0x1E1285C70](0xD000000000000034, 0x80000001DB52FAF0);
  MEMORY[0x1E1285C70](v3, v4);
  MEMORY[0x1E1285C70](0x6568636163202C20, 0xED0000203A79654BLL);
  MEMORY[0x1E1285C70](v1, v2);
  return 0;
}

uint64_t DaemonCacheEvictResponse.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1DB50B680();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1DB5041A8()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB504214()
{
  sub_1DB50BCF0();
  sub_1DB50A740();
  return sub_1DB50BD30();
}

uint64_t sub_1DB504264@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_1DB50B680();

  *a2 = v5 != 0;
  return result;
}

unint64_t DaemonGetAssetRequest.description.getter()
{
  sub_1DB50B320();

  v0 = sub_1DB509B80();
  MEMORY[0x1E1285C70](v0);

  return 0xD000000000000013;
}

uint64_t DaemonGetAssetRequest.message.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1DB50062C(v1, a1, type metadata accessor for DaemonGetAssetRequest);
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB5044CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74657373416C7275 && a2 == 0xEF74736575716552)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB50455C(uint64_t a1)
{
  v2 = sub_1DB50474C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB504598(uint64_t a1)
{
  v2 = sub_1DB50474C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonGetAssetRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FF8, &qword_1DB525110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50474C();
  sub_1DB50BE40();
  type metadata accessor for URLJetPackAssetRequest();
  sub_1DB4FAD10(&qword_1ECC48000, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DB50474C()
{
  result = qword_1EE30D0C0[0];
  if (!qword_1EE30D0C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30D0C0);
  }

  return result;
}

uint64_t DaemonGetAssetRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for URLJetPackAssetRequest();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48008, &qword_1DB525118);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  AssetRequest = type metadata accessor for DaemonGetAssetRequest(0);
  v12 = *(*(AssetRequest - 8) + 64);
  MEMORY[0x1EEE9AC00](AssetRequest - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50474C();
  sub_1DB50BDF0();
  if (!v2)
  {
    v16 = v19;
    sub_1DB4FAD10(&qword_1EE30CE60, type metadata accessor for URLJetPackAssetRequest);
    v17 = v21;
    sub_1DB50B780();
    (*(v20 + 8))(v10, v7);
    sub_1DB4F8EE4(v17, v14, type metadata accessor for URLJetPackAssetRequest);
    sub_1DB4F8EE4(v14, v16, type metadata accessor for DaemonGetAssetRequest);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1DB504A14@<X0>(uint64_t a1@<X8>)
{
  sub_1DB50062C(v1, a1, type metadata accessor for DaemonGetAssetRequest);
  type metadata accessor for JetPackAssetDaemonMessage(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1DB504A90(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC47FF8, &qword_1DB525110);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB50474C();
  sub_1DB50BE40();
  type metadata accessor for URLJetPackAssetRequest();
  sub_1DB4FAD10(&qword_1ECC48000, type metadata accessor for URLJetPackAssetRequest);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DB504C08()
{
  sub_1DB50B320();

  v0 = sub_1DB509B80();
  MEMORY[0x1E1285C70](v0);

  return 0xD000000000000013;
}

uint64_t sub_1DB504D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7465737361 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DB50BA30();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DB504D84(uint64_t a1)
{
  v2 = sub_1DB504F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DB504DC0(uint64_t a1)
{
  v2 = sub_1DB504F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DaemonGetAssetResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48010, &qword_1DB525120);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB504F74();
  sub_1DB50BE40();
  type metadata accessor for XPCJetAsset();
  sub_1DB4FAD10(&qword_1EE30DA10, type metadata accessor for XPCJetAsset);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_1DB504F74()
{
  result = qword_1EE30CFC8;
  if (!qword_1EE30CFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFC8);
  }

  return result;
}

uint64_t DaemonGetAssetResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for XPCJetAsset();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v21 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48018, &qword_1DB525128);
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  AssetResponse = type metadata accessor for DaemonGetAssetResponse(0);
  v12 = *(*(AssetResponse - 8) + 64);
  MEMORY[0x1EEE9AC00](AssetResponse - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB504F74();
  sub_1DB50BDF0();
  if (!v2)
  {
    v16 = v19;
    sub_1DB4FAD10(&qword_1ECC48020, type metadata accessor for XPCJetAsset);
    v17 = v21;
    sub_1DB50B780();
    (*(v20 + 8))(v10, v7);
    sub_1DB4F8EE4(v17, v14, type metadata accessor for XPCJetAsset);
    sub_1DB4F8EE4(v14, v16, type metadata accessor for DaemonGetAssetResponse);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1DB5052B4()
{
  result = qword_1ECC48030;
  if (!qword_1ECC48030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48030);
  }

  return result;
}

unint64_t sub_1DB505348()
{
  result = qword_1ECC48038;
  if (!qword_1ECC48038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48038);
  }

  return result;
}

unint64_t sub_1DB5053A0()
{
  result = qword_1ECC48040;
  if (!qword_1ECC48040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48040);
  }

  return result;
}

unint64_t sub_1DB5053F8()
{
  result = qword_1ECC48048;
  if (!qword_1ECC48048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48048);
  }

  return result;
}

unint64_t sub_1DB50548C()
{
  result = qword_1ECC48050;
  if (!qword_1ECC48050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48050);
  }

  return result;
}

unint64_t sub_1DB5054E4()
{
  result = qword_1ECC48058;
  if (!qword_1ECC48058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48058);
  }

  return result;
}

unint64_t sub_1DB50553C()
{
  result = qword_1ECC48060;
  if (!qword_1ECC48060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48060);
  }

  return result;
}

unint64_t sub_1DB5055D0()
{
  result = qword_1ECC48068;
  if (!qword_1ECC48068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48068);
  }

  return result;
}

unint64_t sub_1DB505664()
{
  result = qword_1ECC48070;
  if (!qword_1ECC48070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48070);
  }

  return result;
}

unint64_t sub_1DB5056F8()
{
  result = qword_1ECC48078;
  if (!qword_1ECC48078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48078);
  }

  return result;
}

unint64_t sub_1DB50581C()
{
  result = qword_1ECC48090;
  if (!qword_1ECC48090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48090);
  }

  return result;
}

unint64_t sub_1DB5058B0()
{
  result = qword_1ECC48098;
  if (!qword_1ECC48098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48098);
  }

  return result;
}

unint64_t sub_1DB505944()
{
  result = qword_1ECC480A0;
  if (!qword_1ECC480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480A0);
  }

  return result;
}

unint64_t sub_1DB5059D8()
{
  result = qword_1ECC480A8;
  if (!qword_1ECC480A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480A8);
  }

  return result;
}

unint64_t sub_1DB505A6C()
{
  result = qword_1ECC480B0;
  if (!qword_1ECC480B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480B0);
  }

  return result;
}

unint64_t sub_1DB505AC4()
{
  result = qword_1ECC480B8;
  if (!qword_1ECC480B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480B8);
  }

  return result;
}

unint64_t sub_1DB505B1C()
{
  result = qword_1ECC480C0;
  if (!qword_1ECC480C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480C0);
  }

  return result;
}

uint64_t sub_1DB505BB0(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a1[1] = a4();
  a1[2] = a5();
  result = a6();
  a1[3] = result;
  return result;
}

unint64_t sub_1DB505C04()
{
  result = qword_1ECC480C8;
  if (!qword_1ECC480C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480C8);
  }

  return result;
}

unint64_t sub_1DB505C5C()
{
  result = qword_1ECC480D0;
  if (!qword_1ECC480D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC480D0);
  }

  return result;
}

uint64_t sub_1DB505D40(void *a1)
{
  a1[1] = sub_1DB4FAD10(&qword_1EE30D098, type metadata accessor for DaemonGetAssetRequest);
  a1[2] = sub_1DB4FAD10(&qword_1EE30D0A0, type metadata accessor for DaemonGetAssetRequest);
  result = sub_1DB4FAD10(&qword_1EE30D0A8, type metadata accessor for DaemonGetAssetRequest);
  a1[3] = result;
  return result;
}

uint64_t sub_1DB505E04(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC48010, &qword_1DB525120);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DB504F74();
  sub_1DB50BE40();
  type metadata accessor for XPCJetAsset();
  sub_1DB4FAD10(&qword_1EE30DA10, type metadata accessor for XPCJetAsset);
  sub_1DB50B8A0();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1DB505F7C()
{
  result = type metadata accessor for DaemonGetAssetRequest(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1DB50611C()
{
  sub_1DB5062D8(319, &qword_1ECC480F8, &type metadata for AssetPushSubscriptionRecord, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1DB506228();
    if (v1 <= 0x3F)
    {
      sub_1DB506280();
      if (v2 <= 0x3F)
      {
        sub_1DB5062D8(319, &qword_1EE30C860, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DB506228()
{
  if (!qword_1ECC48100)
  {
    v0 = sub_1DB50ADF0();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC48100);
    }
  }
}

void sub_1DB506280()
{
  if (!qword_1ECC48108)
  {
    sub_1DB509DD0();
    v0 = sub_1DB50B120();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECC48108);
    }
  }
}

void sub_1DB5062D8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_151Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_index_152Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_1DB50650C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JetPackAssetDaemonMessage.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for JetPackAssetDaemonMessage.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DB506920()
{
  result = qword_1ECC48110;
  if (!qword_1ECC48110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48110);
  }

  return result;
}

unint64_t sub_1DB506978()
{
  result = qword_1ECC48118;
  if (!qword_1ECC48118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48118);
  }

  return result;
}

unint64_t sub_1DB5069D0()
{
  result = qword_1ECC48120;
  if (!qword_1ECC48120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48120);
  }

  return result;
}

unint64_t sub_1DB506A28()
{
  result = qword_1ECC48128;
  if (!qword_1ECC48128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48128);
  }

  return result;
}

unint64_t sub_1DB506A80()
{
  result = qword_1ECC48130;
  if (!qword_1ECC48130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48130);
  }

  return result;
}

unint64_t sub_1DB506AD8()
{
  result = qword_1ECC48138;
  if (!qword_1ECC48138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48138);
  }

  return result;
}

unint64_t sub_1DB506B30()
{
  result = qword_1ECC48140;
  if (!qword_1ECC48140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48140);
  }

  return result;
}

unint64_t sub_1DB506B88()
{
  result = qword_1ECC48148;
  if (!qword_1ECC48148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48148);
  }

  return result;
}

unint64_t sub_1DB506BE0()
{
  result = qword_1ECC48150;
  if (!qword_1ECC48150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48150);
  }

  return result;
}

unint64_t sub_1DB506C38()
{
  result = qword_1ECC48158;
  if (!qword_1ECC48158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48158);
  }

  return result;
}

unint64_t sub_1DB506C90()
{
  result = qword_1ECC48160;
  if (!qword_1ECC48160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48160);
  }

  return result;
}

unint64_t sub_1DB506CE8()
{
  result = qword_1ECC48168;
  if (!qword_1ECC48168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48168);
  }

  return result;
}

unint64_t sub_1DB506D40()
{
  result = qword_1ECC48170;
  if (!qword_1ECC48170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48170);
  }

  return result;
}

unint64_t sub_1DB506D98()
{
  result = qword_1ECC48178;
  if (!qword_1ECC48178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48178);
  }

  return result;
}

unint64_t sub_1DB506DF0()
{
  result = qword_1ECC48180;
  if (!qword_1ECC48180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48180);
  }

  return result;
}

unint64_t sub_1DB506E48()
{
  result = qword_1ECC48188;
  if (!qword_1ECC48188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48188);
  }

  return result;
}

unint64_t sub_1DB506EA0()
{
  result = qword_1ECC48190;
  if (!qword_1ECC48190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48190);
  }

  return result;
}

unint64_t sub_1DB506EF8()
{
  result = qword_1ECC48198;
  if (!qword_1ECC48198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48198);
  }

  return result;
}

unint64_t sub_1DB506F50()
{
  result = qword_1ECC481A0;
  if (!qword_1ECC481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481A0);
  }

  return result;
}

unint64_t sub_1DB506FA8()
{
  result = qword_1ECC481A8;
  if (!qword_1ECC481A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481A8);
  }

  return result;
}

unint64_t sub_1DB507000()
{
  result = qword_1ECC481B0;
  if (!qword_1ECC481B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481B0);
  }

  return result;
}

unint64_t sub_1DB507058()
{
  result = qword_1ECC481B8;
  if (!qword_1ECC481B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481B8);
  }

  return result;
}

unint64_t sub_1DB5070B0()
{
  result = qword_1ECC481C0;
  if (!qword_1ECC481C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481C0);
  }

  return result;
}

unint64_t sub_1DB507108()
{
  result = qword_1ECC481C8;
  if (!qword_1ECC481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481C8);
  }

  return result;
}

unint64_t sub_1DB507160()
{
  result = qword_1ECC481D0;
  if (!qword_1ECC481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481D0);
  }

  return result;
}

unint64_t sub_1DB5071B8()
{
  result = qword_1ECC481D8;
  if (!qword_1ECC481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481D8);
  }

  return result;
}

unint64_t sub_1DB507210()
{
  result = qword_1ECC481E0;
  if (!qword_1ECC481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481E0);
  }

  return result;
}

unint64_t sub_1DB507268()
{
  result = qword_1ECC481E8;
  if (!qword_1ECC481E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481E8);
  }

  return result;
}

unint64_t sub_1DB5072C0()
{
  result = qword_1ECC481F0;
  if (!qword_1ECC481F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481F0);
  }

  return result;
}

unint64_t sub_1DB507318()
{
  result = qword_1ECC481F8;
  if (!qword_1ECC481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC481F8);
  }

  return result;
}

unint64_t sub_1DB507370()
{
  result = qword_1ECC48200;
  if (!qword_1ECC48200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48200);
  }

  return result;
}

unint64_t sub_1DB5073C8()
{
  result = qword_1ECC48208;
  if (!qword_1ECC48208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48208);
  }

  return result;
}

unint64_t sub_1DB507420()
{
  result = qword_1EE30CFB8;
  if (!qword_1EE30CFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFB8);
  }

  return result;
}

unint64_t sub_1DB507478()
{
  result = qword_1EE30CFC0;
  if (!qword_1EE30CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30CFC0);
  }

  return result;
}

unint64_t sub_1DB5074D0()
{
  result = qword_1EE30D0B0;
  if (!qword_1EE30D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30D0B0);
  }

  return result;
}

unint64_t sub_1DB507528()
{
  result = qword_1EE30D0B8;
  if (!qword_1EE30D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30D0B8);
  }

  return result;
}

unint64_t sub_1DB507580()
{
  result = qword_1ECC48210;
  if (!qword_1ECC48210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48210);
  }

  return result;
}

unint64_t sub_1DB5075D8()
{
  result = qword_1ECC48218;
  if (!qword_1ECC48218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48218);
  }

  return result;
}

unint64_t sub_1DB507630()
{
  result = qword_1ECC48220;
  if (!qword_1ECC48220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48220);
  }

  return result;
}

unint64_t sub_1DB507688()
{
  result = qword_1ECC48228;
  if (!qword_1ECC48228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48228);
  }

  return result;
}

unint64_t sub_1DB5076E0()
{
  result = qword_1ECC48230;
  if (!qword_1ECC48230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48230);
  }

  return result;
}

unint64_t sub_1DB507738()
{
  result = qword_1ECC48238;
  if (!qword_1ECC48238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48238);
  }

  return result;
}

unint64_t sub_1DB507790()
{
  result = qword_1ECC48240;
  if (!qword_1ECC48240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48240);
  }

  return result;
}

unint64_t sub_1DB5077E8()
{
  result = qword_1ECC48248;
  if (!qword_1ECC48248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48248);
  }

  return result;
}

unint64_t sub_1DB507840()
{
  result = qword_1ECC48250;
  if (!qword_1ECC48250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48250);
  }

  return result;
}

unint64_t sub_1DB507898()
{
  result = qword_1ECC48258;
  if (!qword_1ECC48258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48258);
  }

  return result;
}

unint64_t sub_1DB5078F0()
{
  result = qword_1ECC48260;
  if (!qword_1ECC48260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48260);
  }

  return result;
}

unint64_t sub_1DB507948()
{
  result = qword_1ECC48268;
  if (!qword_1ECC48268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48268);
  }

  return result;
}

unint64_t sub_1DB5079A0()
{
  result = qword_1ECC48270;
  if (!qword_1ECC48270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48270);
  }

  return result;
}

unint64_t sub_1DB5079F8()
{
  result = qword_1ECC48278;
  if (!qword_1ECC48278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48278);
  }

  return result;
}

unint64_t sub_1DB507A50()
{
  result = qword_1ECC48280;
  if (!qword_1ECC48280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48280);
  }

  return result;
}

unint64_t sub_1DB507AA8()
{
  result = qword_1ECC48288;
  if (!qword_1ECC48288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48288);
  }

  return result;
}

unint64_t sub_1DB507B00()
{
  result = qword_1ECC48290;
  if (!qword_1ECC48290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48290);
  }

  return result;
}

unint64_t sub_1DB507B58()
{
  result = qword_1ECC48298;
  if (!qword_1ECC48298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48298);
  }

  return result;
}

unint64_t sub_1DB507BB0()
{
  result = qword_1ECC482A0;
  if (!qword_1ECC482A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482A0);
  }

  return result;
}

unint64_t sub_1DB507C08()
{
  result = qword_1ECC482A8;
  if (!qword_1ECC482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482A8);
  }

  return result;
}

unint64_t sub_1DB507C60()
{
  result = qword_1ECC482B0;
  if (!qword_1ECC482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482B0);
  }

  return result;
}

unint64_t sub_1DB507CB8()
{
  result = qword_1ECC482B8;
  if (!qword_1ECC482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482B8);
  }

  return result;
}

unint64_t sub_1DB507D10()
{
  result = qword_1ECC482C0;
  if (!qword_1ECC482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482C0);
  }

  return result;
}

unint64_t sub_1DB507D68()
{
  result = qword_1ECC482C8;
  if (!qword_1ECC482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482C8);
  }

  return result;
}

unint64_t sub_1DB507DC0()
{
  result = qword_1ECC482D0;
  if (!qword_1ECC482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482D0);
  }

  return result;
}

unint64_t sub_1DB507E18()
{
  result = qword_1ECC482D8;
  if (!qword_1ECC482D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482D8);
  }

  return result;
}

unint64_t sub_1DB507E70()
{
  result = qword_1ECC482E0;
  if (!qword_1ECC482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482E0);
  }

  return result;
}

unint64_t sub_1DB507EC8()
{
  result = qword_1ECC482E8;
  if (!qword_1ECC482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482E8);
  }

  return result;
}

unint64_t sub_1DB507F20()
{
  result = qword_1ECC482F0;
  if (!qword_1ECC482F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482F0);
  }

  return result;
}

unint64_t sub_1DB507F78()
{
  result = qword_1ECC482F8;
  if (!qword_1ECC482F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC482F8);
  }

  return result;
}

unint64_t sub_1DB507FD0()
{
  result = qword_1ECC48300;
  if (!qword_1ECC48300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48300);
  }

  return result;
}

unint64_t sub_1DB508028()
{
  result = qword_1ECC48308;
  if (!qword_1ECC48308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48308);
  }

  return result;
}

unint64_t sub_1DB508080()
{
  result = qword_1ECC48310;
  if (!qword_1ECC48310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48310);
  }

  return result;
}

unint64_t sub_1DB5080D8()
{
  result = qword_1ECC48318;
  if (!qword_1ECC48318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48318);
  }

  return result;
}

unint64_t sub_1DB508130()
{
  result = qword_1ECC48320;
  if (!qword_1ECC48320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48320);
  }

  return result;
}

unint64_t sub_1DB508188()
{
  result = qword_1ECC48328;
  if (!qword_1ECC48328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48328);
  }

  return result;
}

unint64_t sub_1DB5081E0()
{
  result = qword_1ECC48330;
  if (!qword_1ECC48330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48330);
  }

  return result;
}

unint64_t sub_1DB508238()
{
  result = qword_1ECC48338;
  if (!qword_1ECC48338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48338);
  }

  return result;
}

unint64_t sub_1DB508290()
{
  result = qword_1ECC48340;
  if (!qword_1ECC48340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48340);
  }

  return result;
}

unint64_t sub_1DB5082E8()
{
  result = qword_1ECC48348;
  if (!qword_1ECC48348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48348);
  }

  return result;
}

unint64_t sub_1DB508340()
{
  result = qword_1ECC48350;
  if (!qword_1ECC48350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48350);
  }

  return result;
}

unint64_t sub_1DB508398()
{
  result = qword_1ECC48358;
  if (!qword_1ECC48358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48358);
  }

  return result;
}

unint64_t sub_1DB5083F0()
{
  result = qword_1ECC48360;
  if (!qword_1ECC48360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48360);
  }

  return result;
}

unint64_t sub_1DB508448()
{
  result = qword_1ECC48368;
  if (!qword_1ECC48368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48368);
  }

  return result;
}

unint64_t sub_1DB5084A0()
{
  result = qword_1EE30DE28;
  if (!qword_1EE30DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE28);
  }

  return result;
}

unint64_t sub_1DB5084F8()
{
  result = qword_1EE30DE30;
  if (!qword_1EE30DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE30);
  }

  return result;
}

unint64_t sub_1DB508550()
{
  result = qword_1EE30DE78;
  if (!qword_1EE30DE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE78);
  }

  return result;
}

unint64_t sub_1DB5085A8()
{
  result = qword_1EE30DE80[0];
  if (!qword_1EE30DE80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE30DE80);
  }

  return result;
}

unint64_t sub_1DB508600()
{
  result = qword_1EE30DE68;
  if (!qword_1EE30DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE68);
  }

  return result;
}

unint64_t sub_1DB508658()
{
  result = qword_1EE30DE70;
  if (!qword_1EE30DE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE70);
  }

  return result;
}

unint64_t sub_1DB5086B0()
{
  result = qword_1EE30DDA8;
  if (!qword_1EE30DDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDA8);
  }

  return result;
}

unint64_t sub_1DB508708()
{
  result = qword_1EE30DDB0;
  if (!qword_1EE30DDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDB0);
  }

  return result;
}

unint64_t sub_1DB508760()
{
  result = qword_1EE30DDB8;
  if (!qword_1EE30DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDB8);
  }

  return result;
}

unint64_t sub_1DB5087B8()
{
  result = qword_1EE30DDC0;
  if (!qword_1EE30DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDC0);
  }

  return result;
}

unint64_t sub_1DB508810()
{
  result = qword_1EE30DDE8;
  if (!qword_1EE30DDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDE8);
  }

  return result;
}

unint64_t sub_1DB508868()
{
  result = qword_1EE30DDF0;
  if (!qword_1EE30DDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDF0);
  }

  return result;
}

unint64_t sub_1DB5088C0()
{
  result = qword_1EE30DE18;
  if (!qword_1EE30DE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE18);
  }

  return result;
}

unint64_t sub_1DB508918()
{
  result = qword_1EE30DE20;
  if (!qword_1EE30DE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE20);
  }

  return result;
}

unint64_t sub_1DB508970()
{
  result = qword_1EE30DD98;
  if (!qword_1EE30DD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DD98);
  }

  return result;
}

unint64_t sub_1DB5089C8()
{
  result = qword_1EE30DDA0;
  if (!qword_1EE30DDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDA0);
  }

  return result;
}

unint64_t sub_1DB508A20()
{
  result = qword_1EE30DDC8;
  if (!qword_1EE30DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDC8);
  }

  return result;
}

unint64_t sub_1DB508A78()
{
  result = qword_1EE30DDD0;
  if (!qword_1EE30DDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDD0);
  }

  return result;
}

unint64_t sub_1DB508AD0()
{
  result = qword_1EE30DDF8;
  if (!qword_1EE30DDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDF8);
  }

  return result;
}

unint64_t sub_1DB508B28()
{
  result = qword_1EE30DE00;
  if (!qword_1EE30DE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE00);
  }

  return result;
}

unint64_t sub_1DB508B80()
{
  result = qword_1EE30DE08;
  if (!qword_1EE30DE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE08);
  }

  return result;
}

unint64_t sub_1DB508BD8()
{
  result = qword_1EE30DE10;
  if (!qword_1EE30DE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE10);
  }

  return result;
}

unint64_t sub_1DB508C30()
{
  result = qword_1EE30DDD8;
  if (!qword_1EE30DDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDD8);
  }

  return result;
}

unint64_t sub_1DB508C88()
{
  result = qword_1EE30DDE0;
  if (!qword_1EE30DDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DDE0);
  }

  return result;
}

unint64_t sub_1DB508CE0()
{
  result = qword_1EE30DE38;
  if (!qword_1EE30DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE38);
  }

  return result;
}

unint64_t sub_1DB508D38()
{
  result = qword_1EE30DE40;
  if (!qword_1EE30DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE40);
  }

  return result;
}

unint64_t sub_1DB508D90()
{
  result = qword_1EE30DE50;
  if (!qword_1EE30DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE50);
  }

  return result;
}

unint64_t sub_1DB508DE8()
{
  result = qword_1EE30DE58;
  if (!qword_1EE30DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE30DE58);
  }

  return result;
}

uint64_t sub_1DB508E3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1735289200 && a2 == 0xE400000000000000;
  if (v3 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB531860 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473655464616572 && a2 == 0xED00007465737341 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xEC0000006B736154 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74736E4974736F70 && a2 == 0xEB000000006C6C61 || (sub_1DB50BA30() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6572666552676162 && a2 == 0xEA00000000006873 || (sub_1DB50BA30() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6F666E4968737570 && a2 == 0xE800000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB531880 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C654468737570 && a2 == 0xEA00000000006574 || (sub_1DB50BA30() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6573655268737570 && a2 == 0xE900000000000074 || (sub_1DB50BA30() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x61656C4368737570 && a2 == 0xE900000000000072 || (sub_1DB50BA30() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6976456568636163 && a2 == 0xEA00000000007463 || (sub_1DB50BA30() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 7628135 && a2 == 0xE300000000000000)
  {

    return 12;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1DB509270(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65;
  if (v4 || (sub_1DB50BA30() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7364726F636572 && a2 == 0xE700000000000000 || (sub_1DB50BA30() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001DB5318A0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001DB5318C0 == a2 || (sub_1DB50BA30() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001DB5318E0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DB50BA30();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1DB509430()
{
  result = qword_1ECC48370;
  if (!qword_1ECC48370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC48370);
  }

  return result;
}

void InitializeProcessLaunchTimeInterval_cold_1(int a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136446210;
  v3 = strerror(a1);
  _os_log_fault_impl(&dword_1DB2F5000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Could not get process launch time, reason: %{public}s", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}