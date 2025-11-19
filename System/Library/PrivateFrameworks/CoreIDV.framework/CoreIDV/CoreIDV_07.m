uint64_t sub_21CD414CC(uint64_t a1)
{
  v2 = sub_21CD42828();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD41508(uint64_t a1)
{
  v2 = sub_21CD42828();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B100, &qword_21CD94C00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v15 = v1[3];
  v16 = v11;
  v21 = *(v1 + 32);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD42828();
  sub_21CD842B4();
  LOBYTE(v18) = 0;
  v13 = v17;
  sub_21CD84134();
  if (!v13)
  {
    v18 = v16;
    v19 = v15;
    v20 = v21;
    v22 = 1;
    sub_21CD19BA8(v16, v15, v21);
    sub_21CD4287C();
    sub_21CD84164();
    sub_21CD19C4C(v18, v19, v20);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderRequest.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  sub_21CD83B74();
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    MEMORY[0x21CF17CC0](v8);

    return sub_21CD41C30(a1, v5);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(a1, v5);

    return sub_21CD421F0(a1, v6);
  }
}

uint64_t MobileDocumentReaderRequest.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_21CD84264();
  sub_21CD83B74();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x21CF17CC0](v6);
    sub_21CD41C30(v8, v3);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v8, v3);
    sub_21CD421F0(v8, v4);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderRequest.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B118, &qword_21CD94C08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD42828();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v21) = 0;
  v12 = sub_21CD84094();
  v14 = v13;
  v15 = v12;
  v24 = 1;
  sub_21CD428D0();
  sub_21CD840C4();
  (*(v6 + 8))(v10, v5);
  v16 = v21;
  v17 = v22;
  v18 = v23;
  *a2 = v15;
  *(a2 + 8) = v14;
  *(a2 + 16) = v16;
  *(a2 + 24) = v17;
  *(a2 + 32) = v18;

  sub_21CD19BA8(v16, v17, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_21CD19C4C(v16, v17, v18);
}

uint64_t sub_21CD41AC4(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 32);
  sub_21CD83B74();
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }

    MEMORY[0x21CF17CC0](v8);

    return sub_21CD41C30(a1, v5);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(a1, v5);

    return sub_21CD421F0(a1, v6);
  }
}

uint64_t sub_21CD41B74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 32);
  sub_21CD84264();
  sub_21CD83B74();
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    MEMORY[0x21CF17CC0](v6);
    sub_21CD41C30(v8, v3);
  }

  else
  {
    MEMORY[0x21CF17CC0](0);
    sub_21CD4233C(v8, v3);
    sub_21CD421F0(v8, v4);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD41C30(__int128 *a1, uint64_t a2)
{
  v68 = sub_21CD837F4();
  v4 = *(v68 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v68, v6);
  v57 = v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v67 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for MobileDocumentRequest();
  v64 = *(v65 - 8);
  v12 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v65, v13);
  v16 = v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v17);
  v63 = v54 - v18;
  v19 = a1[3];
  v83 = a1[2];
  v84 = v19;
  v85 = *(a1 + 8);
  v21 = *a1;
  v20 = a1[1];
  v54[1] = a1;
  v81 = v21;
  v82 = v20;
  v62 = sub_21CD84294();
  v22 = a2 + 56;
  v23 = 1 << *(a2 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & *(a2 + 56);
  v26 = (v23 + 63) >> 6;
  v61 = (v4 + 48);
  v56 = (v4 + 32);
  v55 = (v4 + 8);
  v66 = a2;

  v28 = 0;
  v29 = 0;
  v59 = v22;
  v58 = v26;
  v60 = v16;
LABEL_6:
  if (v25)
  {
    v31 = v29;
LABEL_11:
    v32 = v63;
    sub_21CCF148C(*(v66 + 48) + *(v64 + 72) * (__clz(__rbit64(v25)) | (v31 << 6)), v63, type metadata accessor for MobileDocumentRequest);
    sub_21CCF1554(v32, v16, type metadata accessor for MobileDocumentRequest);
    sub_21CD84264();
    v33 = v67;
    sub_21CCF148C(v16, v67, type metadata accessor for MobileDocumentType.Identifier);
    v34 = (*v61)(v33, 2, v68);
    v69 = v28;
    if (v34)
    {
      if (v34 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = 2;
      }

      result = MEMORY[0x21CF17CC0](v35);
    }

    else
    {
      v36 = v57;
      v37 = v68;
      (*v56)(v57, v67, v68);
      MEMORY[0x21CF17CC0](1);
      sub_21CD42B3C();
      sub_21CD83A64();
      result = (*v55)(v36, v37);
    }

    v38 = 0;
    v39 = 0;
    v25 &= v25 - 1;
    v40 = *&v16[*(v65 + 20)];
    v43 = *(v40 + 64);
    v42 = v40 + 64;
    v41 = v43;
    v70 = *&v16[*(v65 + 20)];
    v44 = 1 << *(v70 + 32);
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    else
    {
      v45 = -1;
    }

    v46 = v45 & v41;
    v47 = (v44 + 63) >> 6;
    while (v46)
    {
      v49 = v38;
LABEL_29:
      v51 = __clz(__rbit64(v46)) | (v39 << 6);
      v52 = *(v70 + 48) + 16 * v51;
      v48 = *v52;
      LOBYTE(v52) = *(v52 + 8);
      v53 = *(*(v70 + 56) + v51);
      v73 = v78;
      v74 = v79;
      v75 = v80;
      v72 = v77;
      v71 = v76;
      if (v52)
      {
        v48 = qword_21CD94EA8[v48];
      }

      else
      {
        MEMORY[0x21CF17CC0](5);
      }

      v46 &= v46 - 1;
      MEMORY[0x21CF17CC0](v48);
      sub_21CD84284();
      result = sub_21CD84294();
      v38 = result ^ v49;
    }

    while (1)
    {
      v50 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v50 >= v47)
      {
        MEMORY[0x21CF17CC0](v38);
        v30 = sub_21CD84294();
        v16 = v60;
        result = sub_21CD42B94(v60, type metadata accessor for MobileDocumentRequest);
        v28 = v30 ^ v69;
        v29 = v31;
        v22 = v59;
        v26 = v58;
        goto LABEL_6;
      }

      v46 = *(v42 + 8 * v50);
      ++v39;
      if (v46)
      {
        v49 = v38;
        v39 = v50;
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v31 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v31 >= v26)
      {

        return MEMORY[0x21CF17CC0](v28);
      }

      v25 = *(v22 + 8 * v31);
      ++v29;
      if (v25)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD421F0(__int128 *a1, uint64_t a2)
{
  v16 = a1[2];
  v17 = a1[3];
  v18 = *(a1 + 8);
  v14 = *a1;
  v15 = a1[1];
  result = sub_21CD84294();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
LABEL_11:
    v12 = *(a2 + 48) + ((v5 << 10) | (16 * __clz(__rbit64(v8))));
    v10 = *v12;
    v13 = *(v12 + 8);
    sub_21CD84264();
    if (v13)
    {
      v10 = qword_21CD94EA8[v10];
    }

    else
    {
      MEMORY[0x21CF17CC0](5);
    }

    v8 &= v8 - 1;
    MEMORY[0x21CF17CC0](v10);
    result = sub_21CD84294();
    v4 ^= result;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return MEMORY[0x21CF17CC0](v4);
    }

    v8 = *(a2 + 56 + 8 * v11);
    ++v5;
    if (v8)
    {
      v5 = v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21CD4233C(__int128 *a1, uint64_t a2)
{
  v53 = sub_21CD837F4();
  v4 = *(v53 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v53, v6);
  v49 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MobileDocumentType.Identifier(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MobileDocumentType(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v17 = MEMORY[0x28223BE20](v13 - 8, v16);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v20);
  v22 = v44 - v21;
  v23 = a1[3];
  v56 = a1[2];
  v57 = v23;
  v58 = *(a1 + 8);
  v25 = *a1;
  v24 = a1[1];
  v44[1] = a1;
  v54 = v25;
  v55 = v24;
  v51 = sub_21CD84294();
  v26 = a2 + 56;
  v27 = 1 << *(a2 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & *(a2 + 56);
  v30 = (v27 + 63) >> 6;
  v50 = (v4 + 48);
  v47 = (v4 + 32);
  v46 = (v4 + 8);
  v52 = a2;

  v32 = 0;
  v33 = 0;
  v48 = v14;
  v45 = v22;
  while (v29)
  {
LABEL_11:
    sub_21CCF148C(*(v52 + 48) + *(v14 + 72) * (__clz(__rbit64(v29)) | (v33 << 6)), v22, type metadata accessor for MobileDocumentType);
    sub_21CCF1554(v22, v19, type metadata accessor for MobileDocumentType);
    sub_21CD84264();
    sub_21CCF148C(v19, v12, type metadata accessor for MobileDocumentType.Identifier);
    v42 = (*v50)(v12, 2, v53);
    if (v42)
    {
      if (v42 == 1)
      {
        v43 = 0;
      }

      else
      {
        v43 = 2;
      }

      MEMORY[0x21CF17CC0](v43);
    }

    else
    {
      v34 = v49;
      v35 = v12;
      v36 = v12;
      v37 = v53;
      (*v47)(v49, v35, v53);
      MEMORY[0x21CF17CC0](1);
      sub_21CD42B3C();
      sub_21CD83A64();
      v38 = v34;
      v14 = v48;
      v39 = v37;
      v12 = v36;
      v22 = v45;
      (*v46)(v38, v39);
    }

    v29 &= v29 - 1;
    v40 = sub_21CD84294();
    result = sub_21CD42B94(v19, type metadata accessor for MobileDocumentType);
    v32 ^= v40;
  }

  while (1)
  {
    v41 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v41 >= v30)
    {

      return MEMORY[0x21CF17CC0](v32);
    }

    v29 = *(v26 + 8 * v41);
    ++v33;
    if (v29)
    {
      v33 = v41;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreIDV27MobileDocumentReaderRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v8 || (v9 = 0, (sub_21CD841A4() & 1) != 0))
  {
    v14 = v2;
    v15 = v3;
    v16 = v4;
    v11 = v5;
    v12 = v6;
    v13 = v7;
    sub_21CD19BA8(v2, v3, v4);
    sub_21CD19BA8(v5, v6, v7);
    v9 = _s7CoreIDV25MobileDocumentRequestTypeV7StorageO2eeoiySbAE_AEtFZ_0(&v14, &v11);
    sub_21CD19C4C(v11, v12, v13);
    sub_21CD19C4C(v14, v15, v16);
  }

  return v9 & 1;
}

unint64_t sub_21CD42828()
{
  result = qword_27CE1B108;
  if (!qword_27CE1B108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B108);
  }

  return result;
}

unint64_t sub_21CD4287C()
{
  result = qword_27CE1B110;
  if (!qword_27CE1B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B110);
  }

  return result;
}

unint64_t sub_21CD428D0()
{
  result = qword_27CE1B120;
  if (!qword_27CE1B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B120);
  }

  return result;
}

unint64_t sub_21CD42928()
{
  result = qword_27CE1B128;
  if (!qword_27CE1B128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B128);
  }

  return result;
}

uint64_t sub_21CD42988(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21CD429D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21CD42A38()
{
  result = qword_27CE1B130;
  if (!qword_27CE1B130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B130);
  }

  return result;
}

unint64_t sub_21CD42A90()
{
  result = qword_27CE1B138;
  if (!qword_27CE1B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B138);
  }

  return result;
}

unint64_t sub_21CD42AE8()
{
  result = qword_27CE1B140;
  if (!qword_27CE1B140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B140);
  }

  return result;
}

unint64_t sub_21CD42B3C()
{
  result = qword_27CE19380;
  if (!qword_27CE19380)
  {
    sub_21CD837F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE19380);
  }

  return result;
}

uint64_t sub_21CD42B94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MobileDocumentReaderResponse.responseData.getter()
{
  v1 = *v0;
  sub_21CC96064(*v0, *(v0 + 8));
  return v1;
}

uint64_t MobileDocumentReaderResponse.sessionTranscript.getter()
{
  v1 = *(v0 + 16);
  sub_21CC96064(v1, *(v0 + 24));
  return v1;
}

uint64_t MobileDocumentReaderResponse.issuer.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDocumentReaderResponse(0) + 28));
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
}

uint64_t MobileDocumentReaderResponse.init(responseData:sessionTranscript:mobileIdentityDocumentElements:issuer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, void *a7@<X8>)
{
  v9 = *a6;
  v10 = a6[1];
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v11 = type metadata accessor for MobileDocumentReaderResponse(0);
  result = sub_21CD2F6A0(a5, a7 + *(v11 + 24), &qword_27CE1B148, &qword_21CD94F40);
  v13 = (a7 + *(v11 + 28));
  *v13 = v9;
  v13[1] = v10;
  return result;
}

unint64_t sub_21CD42D68()
{
  v1 = 0x65736E6F70736572;
  v2 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v2 = 0x726575737369;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_21CD42DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5AC30(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD42E1C(uint64_t a1)
{
  v2 = sub_21CD55994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD42E58(uint64_t a1)
{
  v2 = sub_21CD55994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B150, &qword_21CD94F48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55994();
  sub_21CD842B4();
  v12 = v3[1];
  v21 = *v3;
  v22 = v12;
  v20 = 0;
  sub_21CC96064(v21, v12);
  sub_21CCFFDB0();
  sub_21CD84124();
  if (v2)
  {
    sub_21CC95F8C(v21, v22);
  }

  else
  {
    sub_21CC95F8C(v21, v22);
    v13 = v3[3];
    v21 = v3[2];
    v22 = v13;
    v20 = 1;
    sub_21CC96064(v21, v13);
    sub_21CD84124();
    sub_21CC95F8C(v21, v22);
    v14 = type metadata accessor for MobileDocumentReaderResponse(0);
    v15 = *(v14 + 24);
    LOBYTE(v21) = 2;
    type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
    sub_21CD55A5C(&qword_27CE1B160, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84124();
    v16 = (v3 + *(v14 + 28));
    v17 = v16[1];
    v21 = *v16;
    v22 = v17;
    v20 = 3;
    sub_21CD55A08();

    sub_21CD84124();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentReaderResponse.hash(into:)(uint64_t a1)
{
  v3 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v20 - v12;
  if (v1[1] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v14 = *v1;
    sub_21CD84284();
    sub_21CD83704();
  }

  if (v1[3] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v15 = v1[2];
    sub_21CD84284();
    sub_21CD83704();
  }

  v16 = type metadata accessor for MobileDocumentReaderResponse(0);
  sub_21CCD1750(v1 + *(v16 + 24), v13, &qword_27CE1B148, &qword_21CD94F40);
  if ((*(v4 + 48))(v13, 1, v3) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD56A5C(v13, v8, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84284();
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(a1);
    sub_21CD55AF8(v8, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  }

  v17 = (v1 + *(v16 + 28));
  if (!v17[1])
  {
    return sub_21CD84284();
  }

  v18 = *v17;
  sub_21CD84284();
  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.hashValue.getter()
{
  v1 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v19[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19[-v10 - 8];
  sub_21CD84264();
  if (v0[1] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v12 = *v0;
    sub_21CD84284();
    sub_21CD83704();
  }

  if (v0[3] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v13 = v0[2];
    sub_21CD84284();
    sub_21CD83704();
  }

  v14 = type metadata accessor for MobileDocumentReaderResponse(0);
  sub_21CCD1750(v0 + *(v14 + 24), v11, &qword_27CE1B148, &qword_21CD94F40);
  if ((*(v2 + 48))(v11, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD56A5C(v11, v6, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84284();
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v19);
    sub_21CD55AF8(v6, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  }

  v15 = (v0 + *(v14 + 28));
  if (v15[1])
  {
    v16 = *v15;
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B170, &qword_21CD94F50);
  v10 = *(v9 - 8);
  v31 = v9;
  v32 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for MobileDocumentReaderResponse(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55994();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = v8;
  v29 = a1;
  v34 = 0;
  sub_21CCFFE7C();
  v21 = v31;
  sub_21CD84084();
  v22 = v19;
  *v19 = v33;
  v34 = 1;
  sub_21CD84084();
  v19[1] = v33;
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  LOBYTE(v33) = 2;
  sub_21CD55A5C(&qword_27CE1B178, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  v23 = v28;
  v27 = 0;
  sub_21CD84084();
  v24 = v32;
  v25 = v29;
  sub_21CD2F6A0(v23, v22 + *(v15 + 24), &qword_27CE1B148, &qword_21CD94F40);
  v34 = 3;
  sub_21CD55AA4();
  sub_21CD84084();
  (*(v24 + 8))(v14, v21);
  *(v22 + *(v15 + 28)) = v33;
  sub_21CD568B8(v22, v30, type metadata accessor for MobileDocumentReaderResponse);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return sub_21CD55AF8(v22, type metadata accessor for MobileDocumentReaderResponse);
}

uint64_t sub_21CD43AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v21[-v13 - 8];
  sub_21CD84264();
  if (v2[1] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v15 = *v2;
    sub_21CD84284();
    sub_21CD83704();
  }

  if (v2[3] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v16 = v2[2];
    sub_21CD84284();
    sub_21CD83704();
  }

  sub_21CCD1750(v2 + *(a2 + 24), v14, &qword_27CE1B148, &qword_21CD94F40);
  if ((*(v5 + 48))(v14, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    sub_21CD56A5C(v14, v9, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    sub_21CD84284();
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v21);
    sub_21CD55AF8(v9, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  }

  v17 = (v2 + *(a2 + 28));
  if (v17[1])
  {
    v18 = *v17;
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.street.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.city.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.state.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.postalCode.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.isoCountryCode.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

void __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.init(street:city:state:postalCode:isoCountryCode:)(CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::Address_optional *__return_ptr retstr, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional postalCode, Swift::String_optional isoCountryCode)
{
  countAndFlagsBits = isoCountryCode.value._countAndFlagsBits;
  object = isoCountryCode.value._object;
  if (!street.value._object && !city.value._object && !state.value._object)
  {
    v8 = 1;
    if (isoCountryCode.value._object)
    {
      v9 = street.value._countAndFlagsBits;
    }

    else
    {
      v9 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v8 = 0;
      v10 = city.value._countAndFlagsBits;
    }

    else
    {
      v10 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v11 = state.value._countAndFlagsBits;
    }

    else
    {
      v11 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v12 = postalCode.value._countAndFlagsBits;
    }

    else
    {
      v12 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v13 = postalCode.value._object;
    }

    else
    {
      v13 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v14 = isoCountryCode.value._countAndFlagsBits;
    }

    else
    {
      v14 = 0;
    }

    if (isoCountryCode.value._object)
    {
      v15 = isoCountryCode.value._object;
    }

    else
    {
      v15 = 0;
    }

    if (!postalCode.value._object)
    {
      street.value._countAndFlagsBits = v9;
      street.value._object = v8;
      city.value._countAndFlagsBits = v10;
      city.value._object = 0;
      state.value._countAndFlagsBits = v11;
      state.value._object = 0;
      postalCode.value._countAndFlagsBits = v12;
      postalCode.value._object = v13;
      countAndFlagsBits = v14;
      object = v15;
    }
  }

  retstr->value.street = street;
  retstr->value.city = city;
  retstr->value.state = state;
  retstr->value.postalCode = postalCode;
  retstr->value.isoCountryCode.value._countAndFlagsBits = countAndFlagsBits;
  retstr->value.isoCountryCode.value._object = object;
}

uint64_t sub_21CD43EC4()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x6574617473;
  v4 = 0x6F436C6174736F70;
  if (v1 != 3)
  {
    v4 = 0x746E756F436F7369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
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

uint64_t sub_21CD43F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5ADA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD43F88(uint64_t a1)
{
  v2 = sub_21CD55B58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD43FC4(uint64_t a1)
{
  v2 = sub_21CD55B58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B188, &qword_21CD94F58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v18[7] = v1[3];
  v18[8] = v11;
  v12 = v1[4];
  v18[5] = v1[5];
  v18[6] = v12;
  v13 = v1[6];
  v18[3] = v1[7];
  v18[4] = v13;
  v14 = v1[8];
  v18[1] = v1[9];
  v18[2] = v14;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55B58();
  sub_21CD842B4();
  v23 = 0;
  v16 = v18[9];
  sub_21CD840F4();
  if (v16)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v22 = 1;
  sub_21CD840F4();
  v21 = 2;
  sub_21CD840F4();
  v20 = 3;
  sub_21CD840F4();
  v19 = 4;
  sub_21CD840F4();
  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v5 = v0[5];
  v4 = v0[6];
  v6 = v0[7];
  v10 = v0[8];
  v7 = v0[9];
  if (v0[1])
  {
    v8 = *v0;
    sub_21CD84284();
    sub_21CD83B74();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_21CD84284();
    if (v3)
    {
LABEL_3:
      sub_21CD84284();
      sub_21CD83B74();
      if (v5)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  sub_21CD84284();
  if (v5)
  {
LABEL_4:
    sub_21CD84284();
    sub_21CD83B74();
    if (v6)
    {
      goto LABEL_5;
    }

LABEL_12:
    sub_21CD84284();
    if (v7)
    {
      goto LABEL_6;
    }

    return sub_21CD84284();
  }

LABEL_11:
  sub_21CD84284();
  if (!v6)
  {
    goto LABEL_12;
  }

LABEL_5:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v7)
  {
    return sub_21CD84284();
  }

LABEL_6:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hashValue.getter()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B198, &qword_21CD94F60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v27 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD55B58();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v39[0]) = 0;
  v12 = sub_21CD84054();
  v33 = v13;
  LOBYTE(v39[0]) = 1;
  v14 = sub_21CD84054();
  v32 = v15;
  v29 = v14;
  LOBYTE(v39[0]) = 2;
  v28 = sub_21CD84054();
  v31 = v16;
  LOBYTE(v39[0]) = 3;
  v27 = sub_21CD84054();
  v30 = v17;
  v40 = 4;
  v18 = sub_21CD84054();
  v20 = v19;
  (*(v6 + 8))(v10, v5);
  *&v34 = v12;
  *(&v34 + 1) = v33;
  v21 = v32;
  *&v35 = v29;
  *(&v35 + 1) = v32;
  v22 = v31;
  *&v36 = v28;
  *(&v36 + 1) = v31;
  v23 = v30;
  *&v37 = v27;
  *(&v37 + 1) = v30;
  *&v38 = v18;
  *(&v38 + 1) = v20;
  v24 = v37;
  a2[2] = v36;
  a2[3] = v24;
  a2[4] = v38;
  v25 = v35;
  *a2 = v34;
  a2[1] = v25;
  sub_21CD55BAC(&v34, v39);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v39[0] = v12;
  v39[1] = v33;
  v39[2] = v29;
  v39[3] = v21;
  v39[4] = v28;
  v39[5] = v22;
  v39[6] = v27;
  v39[7] = v23;
  v39[8] = v18;
  v39[9] = v20;
  return sub_21CD55BE4(v39);
}

uint64_t sub_21CD447C4()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD44808()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)();
  return sub_21CD84294();
}

uint64_t sub_21CD44848(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6E6F6F72616DLL;
    v6 = 1802398064;
    if (a1 != 8)
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6E65657267;
    if (a1 != 5)
    {
      v7 = 0x6C657A6168;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x6B63616C62;
    v2 = 0x6E776F7262;
    v3 = 0x616D6F7268636964;
    if (a1 != 3)
    {
      v3 = 2036691559;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1702194274;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21CD44960(uint64_t a1)
{
  v2 = sub_21CD55F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4499C(uint64_t a1)
{
  v2 = sub_21CD55F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD449D8(uint64_t a1)
{
  v2 = sub_21CD55F08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44A14(uint64_t a1)
{
  v2 = sub_21CD55F08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44A50(uint64_t a1)
{
  v2 = sub_21CD55EB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44A8C(uint64_t a1)
{
  v2 = sub_21CD55EB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5AF58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD44AF8(uint64_t a1)
{
  v2 = sub_21CD55C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44B34(uint64_t a1)
{
  v2 = sub_21CD55C14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44B70(uint64_t a1)
{
  v2 = sub_21CD55E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44BAC(uint64_t a1)
{
  v2 = sub_21CD55E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44BE8(uint64_t a1)
{
  v2 = sub_21CD55DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44C24(uint64_t a1)
{
  v2 = sub_21CD55DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44C60(uint64_t a1)
{
  v2 = sub_21CD55E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44C9C(uint64_t a1)
{
  v2 = sub_21CD55E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44CD8(uint64_t a1)
{
  v2 = sub_21CD55D64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44D14(uint64_t a1)
{
  v2 = sub_21CD55D64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44D50(uint64_t a1)
{
  v2 = sub_21CD55D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44D8C(uint64_t a1)
{
  v2 = sub_21CD55D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44DC8(uint64_t a1)
{
  v2 = sub_21CD55CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44E04(uint64_t a1)
{
  v2 = sub_21CD55CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD44E40(uint64_t a1)
{
  v2 = sub_21CD55C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD44E7C(uint64_t a1)
{
  v2 = sub_21CD55C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1A0, &qword_21CD94F68);
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v86 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1A8, &qword_21CD94F70);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v83 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1B0, &qword_21CD94F78);
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v80 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1B8, &qword_21CD94F80);
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v77 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1C0, &qword_21CD94F88);
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = *(v75 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v74 = &v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1C8, &qword_21CD94F90);
  v72 = *(v23 - 8);
  v73 = v23;
  v24 = *(v72 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v71 = &v62 - v26;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1D0, &qword_21CD94F98);
  v69 = *(v70 - 8);
  v27 = *(v69 + 64);
  MEMORY[0x28223BE20](v70, v28);
  v68 = &v62 - v29;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1D8, &qword_21CD94FA0);
  v66 = *(v67 - 8);
  v30 = *(v66 + 64);
  MEMORY[0x28223BE20](v67, v31);
  v65 = &v62 - v32;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1E0, &qword_21CD94FA8);
  v63 = *(v64 - 8);
  v33 = *(v63 + 64);
  MEMORY[0x28223BE20](v64, v34);
  v36 = &v62 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1E8, &qword_21CD94FB0);
  v62 = *(v37 - 8);
  v38 = *(v62 + 64);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v62 - v40;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B1F0, &qword_21CD94FB8);
  v42 = *(v90 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v90, v44);
  v46 = &v62 - v45;
  v47 = *v1;
  v48 = a1;
  v50 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_0(v48, v50);
  sub_21CD55C14();
  v89 = v46;
  sub_21CD842B4();
  v51 = (v42 + 8);
  if (v47 > 4)
  {
    if (v47 <= 6)
    {
      if (v47 == 5)
      {
        v96 = 5;
        sub_21CD55DB8();
        v55 = v74;
        v53 = v89;
        v54 = v90;
        sub_21CD840E4();
        v57 = v75;
        v56 = v76;
      }

      else
      {
        v97 = 6;
        sub_21CD55D64();
        v55 = v77;
        v53 = v89;
        v54 = v90;
        sub_21CD840E4();
        v57 = v78;
        v56 = v79;
      }
    }

    else if (v47 == 7)
    {
      v98 = 7;
      sub_21CD55D10();
      v55 = v80;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      v57 = v81;
      v56 = v82;
    }

    else if (v47 == 8)
    {
      v99 = 8;
      sub_21CD55CBC();
      v55 = v83;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      v57 = v84;
      v56 = v85;
    }

    else
    {
      v100 = 9;
      sub_21CD55C68();
      v55 = v86;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      v57 = v87;
      v56 = v88;
    }

    goto LABEL_20;
  }

  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v93 = 2;
      sub_21CD55EB4();
      v58 = v65;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      (*(v66 + 8))(v58, v67);
      return (*v51)(v53, v54);
    }

    if (v47 == 3)
    {
      v94 = 3;
      sub_21CD55E60();
      v52 = v68;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      (*(v69 + 8))(v52, v70);
      return (*v51)(v53, v54);
    }

    v95 = 4;
    sub_21CD55E0C();
    v55 = v71;
    v53 = v89;
    v54 = v90;
    sub_21CD840E4();
    v57 = v72;
    v56 = v73;
LABEL_20:
    (*(v57 + 8))(v55, v56);
    return (*v51)(v53, v54);
  }

  if (v47)
  {
    v92 = 1;
    sub_21CD55F08();
    v59 = v89;
    v60 = v90;
    sub_21CD840E4();
    (*(v63 + 8))(v36, v64);
    return (*v51)(v59, v60);
  }

  v91 = 0;
  sub_21CD55F5C();
  v53 = v89;
  v54 = v90;
  sub_21CD840E4();
  (*(v62 + 8))(v41, v37);
  return (*v51)(v53, v54);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B250, &qword_21CD94FC0);
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v100 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B258, &qword_21CD94FC8);
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v99 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B260, &qword_21CD94FD0);
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v98 = &v75 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B268, &qword_21CD94FD8);
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x28223BE20](v90, v16);
  v104 = &v75 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B270, &qword_21CD94FE0);
  v87 = *(v88 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v88, v19);
  v103 = &v75 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B278, &qword_21CD94FE8);
  v86 = *(v85 - 8);
  v21 = *(v86 + 64);
  MEMORY[0x28223BE20](v85, v22);
  v102 = &v75 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B280, &qword_21CD94FF0);
  v83 = *(v84 - 8);
  v24 = *(v83 + 64);
  MEMORY[0x28223BE20](v84, v25);
  v97 = &v75 - v26;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B288, &qword_21CD94FF8);
  v81 = *(v82 - 8);
  v27 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v28);
  v101 = &v75 - v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B290, &qword_21CD95000);
  v79 = *(v80 - 8);
  v30 = *(v79 + 64);
  MEMORY[0x28223BE20](v80, v31);
  v33 = &v75 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B298, &qword_21CD95008);
  v78 = *(v34 - 8);
  v35 = *(v78 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v75 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2A0, &unk_21CD95010);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v75 - v43;
  v45 = a1[3];
  v46 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v45);
  sub_21CD55C14();
  v47 = v107;
  sub_21CD842A4();
  if (!v47)
  {
    v76 = v38;
    v75 = v34;
    v77 = v33;
    v48 = v101;
    v49 = v102;
    v50 = v103;
    v51 = v104;
    v107 = v40;
    v52 = v105;
    v53 = sub_21CD840D4();
    v54 = (2 * *(v53 + 16)) | 1;
    v108 = v53;
    v109 = v53 + 32;
    v110 = 0;
    v111 = v54;
    v55 = sub_21CCD18E0();
    if (v55 != 10 && v110 == v111 >> 1)
    {
      v112 = v55;
      if (v55 <= 4u)
      {
        if (v55 <= 1u)
        {
          if (v55)
          {
            v113 = 1;
            sub_21CD55F08();
            v73 = v77;
            sub_21CD84034();
            v74 = v107;
            (*(v79 + 8))(v73, v80);
            (*(v74 + 8))(v44, v39);
          }

          else
          {
            v113 = 0;
            sub_21CD55F5C();
            v69 = v76;
            sub_21CD84034();
            v70 = v107;
            (*(v78 + 8))(v69, v75);
            (*(v70 + 8))(v44, v39);
          }

          swift_unknownObjectRelease();
          v62 = v106;
          v64 = v52;
        }

        else
        {
          if (v55 == 2)
          {
            v113 = 2;
            sub_21CD55EB4();
            sub_21CD84034();
            (*(v81 + 8))(v48, v82);
            (*(v107 + 8))(v44, v39);
          }

          else
          {
            if (v55 == 3)
            {
              v113 = 3;
              sub_21CD55E60();
              v56 = v97;
              sub_21CD84034();
              v57 = v107;
              (*(v83 + 8))(v56, v84);
            }

            else
            {
              v113 = 4;
              sub_21CD55E0C();
              sub_21CD84034();
              v57 = v107;
              (*(v86 + 8))(v49, v85);
            }

            (*(v57 + 8))(v44, v39);
          }

          swift_unknownObjectRelease();
          v64 = v105;
          v62 = v106;
        }

        goto LABEL_33;
      }

      if (v55 <= 6u)
      {
        v64 = v52;
        v71 = v107;
        if (v55 == 5)
        {
          v113 = 5;
          sub_21CD55DB8();
          sub_21CD84034();
          (*(v87 + 8))(v50, v88);
        }

        else
        {
          v113 = 6;
          sub_21CD55D64();
          sub_21CD84034();
          (*(v89 + 8))(v51, v90);
        }

        (*(v71 + 8))(v44, v39);
        goto LABEL_32;
      }

      v64 = v52;
      v65 = v107;
      if (v55 == 7)
      {
        v113 = 7;
        sub_21CD55D10();
        v66 = v98;
        sub_21CD84034();
        v68 = v91;
        v67 = v92;
      }

      else
      {
        if (v55 != 8)
        {
          v113 = 9;
          sub_21CD55C68();
          v72 = v100;
          sub_21CD84034();
          (*(v95 + 8))(v72, v96);
          goto LABEL_29;
        }

        v113 = 8;
        sub_21CD55CBC();
        v66 = v99;
        sub_21CD84034();
        v68 = v93;
        v67 = v94;
      }

      (*(v68 + 8))(v66, v67);
LABEL_29:
      (*(v65 + 8))(v44, v39);
LABEL_32:
      swift_unknownObjectRelease();
      v62 = v106;
LABEL_33:
      *v64 = v112;
      return __swift_destroy_boxed_opaque_existential_0(v62);
    }

    v58 = sub_21CD83FA4();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
    *v60 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    (*(v107 + 8))(v44, v39);
    swift_unknownObjectRelease();
  }

  v62 = v106;
  return __swift_destroy_boxed_opaque_existential_0(v62);
}

uint64_t sub_21CD4657C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x79646E6173;
    v6 = 0x6574696877;
    if (a1 != 8)
    {
      v6 = 0x6E776F6E6B6E75;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 6579570;
    if (a1 != 5)
    {
      v7 = 0x6E7275627561;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 1684824418;
    v2 = 0x646E6F6C62;
    v3 = 0x6E776F7262;
    if (a1 != 3)
    {
      v3 = 2036691559;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6B63616C62;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21CD46688(uint64_t a1)
{
  v2 = sub_21CD56100();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD466C4(uint64_t a1)
{
  v2 = sub_21CD56100();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46700(uint64_t a1)
{
  v2 = sub_21CD562F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4673C(uint64_t a1)
{
  v2 = sub_21CD562F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46778(uint64_t a1)
{
  v2 = sub_21CD562A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD467B4(uint64_t a1)
{
  v2 = sub_21CD562A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD467F0(uint64_t a1)
{
  v2 = sub_21CD56250();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4682C(uint64_t a1)
{
  v2 = sub_21CD56250();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46868(uint64_t a1)
{
  v2 = sub_21CD561FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD468A4(uint64_t a1)
{
  v2 = sub_21CD561FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD468E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5B274(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD46910(uint64_t a1)
{
  v2 = sub_21CD55FB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4694C(uint64_t a1)
{
  v2 = sub_21CD55FB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46988(uint64_t a1)
{
  v2 = sub_21CD561A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD469C4(uint64_t a1)
{
  v2 = sub_21CD561A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46A00(uint64_t a1)
{
  v2 = sub_21CD56154();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46A3C(uint64_t a1)
{
  v2 = sub_21CD56154();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46A78(uint64_t a1)
{
  v2 = sub_21CD560AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46AB4(uint64_t a1)
{
  v2 = sub_21CD560AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46AF0(uint64_t a1)
{
  v2 = sub_21CD56004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46B2C(uint64_t a1)
{
  v2 = sub_21CD56004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD46B68(uint64_t a1)
{
  v2 = sub_21CD56058();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD46BA4(uint64_t a1)
{
  v2 = sub_21CD56058();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2A8, &qword_21CD95020);
  v87 = *(v3 - 8);
  v88 = v3;
  v4 = *(v87 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v86 = &v62 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2B0, &qword_21CD95028);
  v84 = *(v7 - 8);
  v85 = v7;
  v8 = *(v84 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v83 = &v62 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2B8, &qword_21CD95030);
  v81 = *(v11 - 8);
  v82 = v11;
  v12 = *(v81 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v80 = &v62 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2C0, &qword_21CD95038);
  v78 = *(v15 - 8);
  v79 = v15;
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v77 = &v62 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2C8, &qword_21CD95040);
  v75 = *(v19 - 8);
  v76 = v19;
  v20 = *(v75 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v74 = &v62 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2D0, &qword_21CD95048);
  v72 = *(v23 - 8);
  v73 = v23;
  v24 = *(v72 + 64);
  MEMORY[0x28223BE20](v23, v25);
  v71 = &v62 - v26;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2D8, &qword_21CD95050);
  v69 = *(v70 - 8);
  v27 = *(v69 + 64);
  MEMORY[0x28223BE20](v70, v28);
  v68 = &v62 - v29;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2E0, &qword_21CD95058);
  v66 = *(v67 - 8);
  v30 = *(v66 + 64);
  MEMORY[0x28223BE20](v67, v31);
  v65 = &v62 - v32;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2E8, &qword_21CD95060);
  v63 = *(v64 - 8);
  v33 = *(v63 + 64);
  MEMORY[0x28223BE20](v64, v34);
  v36 = &v62 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2F0, &qword_21CD95068);
  v62 = *(v37 - 8);
  v38 = *(v62 + 64);
  MEMORY[0x28223BE20](v37, v39);
  v41 = &v62 - v40;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B2F8, &qword_21CD95070);
  v42 = *(v90 - 8);
  v43 = *(v42 + 64);
  MEMORY[0x28223BE20](v90, v44);
  v46 = &v62 - v45;
  v47 = *v1;
  v48 = a1;
  v50 = a1[3];
  v49 = a1[4];
  __swift_project_boxed_opaque_existential_0(v48, v50);
  sub_21CD55FB0();
  v89 = v46;
  sub_21CD842B4();
  v51 = (v42 + 8);
  if (v47 > 4)
  {
    if (v47 <= 6)
    {
      if (v47 == 5)
      {
        v96 = 5;
        sub_21CD56154();
        v55 = v74;
        v53 = v89;
        v54 = v90;
        sub_21CD840E4();
        v57 = v75;
        v56 = v76;
      }

      else
      {
        v97 = 6;
        sub_21CD56100();
        v55 = v77;
        v53 = v89;
        v54 = v90;
        sub_21CD840E4();
        v57 = v78;
        v56 = v79;
      }
    }

    else if (v47 == 7)
    {
      v98 = 7;
      sub_21CD560AC();
      v55 = v80;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      v57 = v81;
      v56 = v82;
    }

    else if (v47 == 8)
    {
      v99 = 8;
      sub_21CD56058();
      v55 = v83;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      v57 = v84;
      v56 = v85;
    }

    else
    {
      v100 = 9;
      sub_21CD56004();
      v55 = v86;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      v57 = v87;
      v56 = v88;
    }

    goto LABEL_20;
  }

  if (v47 > 1)
  {
    if (v47 == 2)
    {
      v93 = 2;
      sub_21CD56250();
      v58 = v65;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      (*(v66 + 8))(v58, v67);
      return (*v51)(v53, v54);
    }

    if (v47 == 3)
    {
      v94 = 3;
      sub_21CD561FC();
      v52 = v68;
      v53 = v89;
      v54 = v90;
      sub_21CD840E4();
      (*(v69 + 8))(v52, v70);
      return (*v51)(v53, v54);
    }

    v95 = 4;
    sub_21CD561A8();
    v55 = v71;
    v53 = v89;
    v54 = v90;
    sub_21CD840E4();
    v57 = v72;
    v56 = v73;
LABEL_20:
    (*(v57 + 8))(v55, v56);
    return (*v51)(v53, v54);
  }

  if (v47)
  {
    v92 = 1;
    sub_21CD562A4();
    v59 = v89;
    v60 = v90;
    sub_21CD840E4();
    (*(v63 + 8))(v36, v64);
    return (*v51)(v59, v60);
  }

  v91 = 0;
  sub_21CD562F8();
  v53 = v89;
  v54 = v90;
  sub_21CD840E4();
  (*(v62 + 8))(v41, v37);
  return (*v51)(v53, v54);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v105 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B358, &qword_21CD95078);
  v95 = *(v3 - 8);
  v96 = v3;
  v4 = *(v95 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v100 = &v75 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B360, &qword_21CD95080);
  v93 = *(v7 - 8);
  v94 = v7;
  v8 = *(v93 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v99 = &v75 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B368, &qword_21CD95088);
  v91 = *(v11 - 8);
  v92 = v11;
  v12 = *(v91 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v98 = &v75 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B370, &qword_21CD95090);
  v89 = *(v90 - 8);
  v15 = *(v89 + 64);
  MEMORY[0x28223BE20](v90, v16);
  v104 = &v75 - v17;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B378, &qword_21CD95098);
  v87 = *(v88 - 8);
  v18 = *(v87 + 64);
  MEMORY[0x28223BE20](v88, v19);
  v103 = &v75 - v20;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B380, &qword_21CD950A0);
  v86 = *(v85 - 8);
  v21 = *(v86 + 64);
  MEMORY[0x28223BE20](v85, v22);
  v102 = &v75 - v23;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B388, &qword_21CD950A8);
  v83 = *(v84 - 8);
  v24 = *(v83 + 64);
  MEMORY[0x28223BE20](v84, v25);
  v97 = &v75 - v26;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B390, &qword_21CD950B0);
  v81 = *(v82 - 8);
  v27 = *(v81 + 64);
  MEMORY[0x28223BE20](v82, v28);
  v101 = &v75 - v29;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B398, &qword_21CD950B8);
  v79 = *(v80 - 8);
  v30 = *(v79 + 64);
  MEMORY[0x28223BE20](v80, v31);
  v33 = &v75 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3A0, &qword_21CD950C0);
  v78 = *(v34 - 8);
  v35 = *(v78 + 64);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v75 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3A8, &qword_21CD950C8);
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39, v42);
  v44 = &v75 - v43;
  v45 = a1[3];
  v46 = a1[4];
  v106 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v45);
  sub_21CD55FB0();
  v47 = v107;
  sub_21CD842A4();
  if (!v47)
  {
    v76 = v38;
    v75 = v34;
    v77 = v33;
    v48 = v101;
    v49 = v102;
    v50 = v103;
    v51 = v104;
    v107 = v40;
    v52 = v105;
    v53 = sub_21CD840D4();
    v54 = (2 * *(v53 + 16)) | 1;
    v108 = v53;
    v109 = v53 + 32;
    v110 = 0;
    v111 = v54;
    v55 = sub_21CCD18E0();
    if (v55 != 10 && v110 == v111 >> 1)
    {
      v112 = v55;
      if (v55 <= 4u)
      {
        if (v55 <= 1u)
        {
          if (v55)
          {
            v113 = 1;
            sub_21CD562A4();
            v73 = v77;
            sub_21CD84034();
            v74 = v107;
            (*(v79 + 8))(v73, v80);
            (*(v74 + 8))(v44, v39);
          }

          else
          {
            v113 = 0;
            sub_21CD562F8();
            v69 = v76;
            sub_21CD84034();
            v70 = v107;
            (*(v78 + 8))(v69, v75);
            (*(v70 + 8))(v44, v39);
          }

          swift_unknownObjectRelease();
          v62 = v106;
          v64 = v52;
        }

        else
        {
          if (v55 == 2)
          {
            v113 = 2;
            sub_21CD56250();
            sub_21CD84034();
            (*(v81 + 8))(v48, v82);
            (*(v107 + 8))(v44, v39);
          }

          else
          {
            if (v55 == 3)
            {
              v113 = 3;
              sub_21CD561FC();
              v56 = v97;
              sub_21CD84034();
              v57 = v107;
              (*(v83 + 8))(v56, v84);
            }

            else
            {
              v113 = 4;
              sub_21CD561A8();
              sub_21CD84034();
              v57 = v107;
              (*(v86 + 8))(v49, v85);
            }

            (*(v57 + 8))(v44, v39);
          }

          swift_unknownObjectRelease();
          v64 = v105;
          v62 = v106;
        }

        goto LABEL_33;
      }

      if (v55 <= 6u)
      {
        v64 = v52;
        v71 = v107;
        if (v55 == 5)
        {
          v113 = 5;
          sub_21CD56154();
          sub_21CD84034();
          (*(v87 + 8))(v50, v88);
        }

        else
        {
          v113 = 6;
          sub_21CD56100();
          sub_21CD84034();
          (*(v89 + 8))(v51, v90);
        }

        (*(v71 + 8))(v44, v39);
        goto LABEL_32;
      }

      v64 = v52;
      v65 = v107;
      if (v55 == 7)
      {
        v113 = 7;
        sub_21CD560AC();
        v66 = v98;
        sub_21CD84034();
        v68 = v91;
        v67 = v92;
      }

      else
      {
        if (v55 != 8)
        {
          v113 = 9;
          sub_21CD56004();
          v72 = v100;
          sub_21CD84034();
          (*(v95 + 8))(v72, v96);
          goto LABEL_29;
        }

        v113 = 8;
        sub_21CD56058();
        v66 = v99;
        sub_21CD84034();
        v68 = v93;
        v67 = v94;
      }

      (*(v68 + 8))(v66, v67);
LABEL_29:
      (*(v65 + 8))(v44, v39);
LABEL_32:
      swift_unknownObjectRelease();
      v62 = v106;
LABEL_33:
      *v64 = v112;
      return __swift_destroy_boxed_opaque_existential_0(v62);
    }

    v58 = sub_21CD83FA4();
    swift_allocError();
    v60 = v59;
    v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
    *v60 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x277D84160], v58);
    swift_willThrow();
    (*(v107 + 8))(v44, v39);
    swift_unknownObjectRelease();
  }

  v62 = v106;
  return __swift_destroy_boxed_opaque_existential_0(v62);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.localizedName.getter()
{
  v1 = sub_21CD83834();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v4 = sub_21CD83AF4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v7 = *v0;
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      sub_21CD83A94();
      if (qword_27CE18BA8 == -1)
      {
        goto LABEL_14;
      }
    }

    else if (v7 == 3)
    {
      sub_21CD83A94();
      if (qword_27CE18BA8 == -1)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_21CD83A94();
      if (qword_27CE18BA8 == -1)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_15;
  }

  if (!*v0)
  {
    sub_21CD83A94();
    if (qword_27CE18BA8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  sub_21CD83A94();
  if (qword_27CE18BA8 != -1)
  {
LABEL_15:
    swift_once();
  }

LABEL_14:
  v8 = qword_27CE3EA38;
  sub_21CD83824();
  return sub_21CD83B34();
}

uint64_t sub_21CD48648()
{
  v1 = *v0;
  v2 = 0x656C616D6566;
  v3 = 0x696C707041746F6ELL;
  v4 = 0x6963657053746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x6E776F6E6B6E75;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701601645;
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

uint64_t sub_21CD486EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5B588(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD48714(uint64_t a1)
{
  v2 = sub_21CD5634C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD48750(uint64_t a1)
{
  v2 = sub_21CD5634C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4878C(uint64_t a1)
{
  v2 = sub_21CD564F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD487C8(uint64_t a1)
{
  v2 = sub_21CD564F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD48804(uint64_t a1)
{
  v2 = sub_21CD5649C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD48840(uint64_t a1)
{
  v2 = sub_21CD5649C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4887C(uint64_t a1)
{
  v2 = sub_21CD56448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD488B8(uint64_t a1)
{
  v2 = sub_21CD56448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD488F4(uint64_t a1)
{
  v2 = sub_21CD563F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD48930(uint64_t a1)
{
  v2 = sub_21CD563F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4896C(uint64_t a1)
{
  v2 = sub_21CD563A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD489A8(uint64_t a1)
{
  v2 = sub_21CD563A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3B0, &qword_21CD950D0);
  v53 = *(v3 - 8);
  v54 = v3;
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v52 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3B8, &qword_21CD950D8);
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v49 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3C0, &qword_21CD950E0);
  v47 = *(v11 - 8);
  v48 = v11;
  v12 = *(v47 + 64);
  MEMORY[0x28223BE20](v11, v13);
  v46 = &v46 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3C8, &qword_21CD950E8);
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = *(v56 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3D0, &qword_21CD950F0);
  v55 = *(v20 - 8);
  v21 = *(v55 + 64);
  MEMORY[0x28223BE20](v20, v22);
  v24 = &v46 - v23;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B3D8, &qword_21CD950F8);
  v25 = *(v58 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v58, v27);
  v28 = *v1;
  v30 = a1[3];
  v29 = a1[4];
  v31 = a1;
  v33 = &v46 - v32;
  __swift_project_boxed_opaque_existential_0(v31, v30);
  sub_21CD5634C();
  sub_21CD842B4();
  v34 = (v25 + 8);
  if (v28 <= 1)
  {
    v39 = v33;
    v41 = v55;
    v40 = v56;
    v42 = v19;
    v43 = v57;
    if (v28)
    {
      v60 = 1;
      sub_21CD5649C();
      v44 = v58;
      sub_21CD840E4();
      (*(v40 + 8))(v42, v43);
    }

    else
    {
      v59 = 0;
      sub_21CD564F0();
      v44 = v58;
      sub_21CD840E4();
      (*(v41 + 8))(v24, v20);
    }

    return (*v34)(v39, v44);
  }

  else
  {
    if (v28 == 2)
    {
      v61 = 2;
      sub_21CD56448();
      v35 = v46;
      v36 = v58;
      sub_21CD840E4();
      v38 = v47;
      v37 = v48;
    }

    else if (v28 == 3)
    {
      v62 = 3;
      sub_21CD563F4();
      v35 = v49;
      v36 = v58;
      sub_21CD840E4();
      v38 = v50;
      v37 = v51;
    }

    else
    {
      v63 = 4;
      sub_21CD563A0();
      v35 = v52;
      v36 = v58;
      sub_21CD840E4();
      v38 = v53;
      v37 = v54;
    }

    (*(v38 + 8))(v35, v37);
    return (*v34)(v33, v36);
  }
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v73 = a2;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B410, &qword_21CD95100);
  v66 = *(v69 - 8);
  v3 = *(v66 + 64);
  MEMORY[0x28223BE20](v69, v4);
  v70 = &v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B418, &qword_21CD95108);
  v7 = *(v6 - 8);
  v67 = v6;
  v68 = v7;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v72 = &v59 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B420, &qword_21CD95110);
  v62 = *(v65 - 8);
  v11 = *(v62 + 64);
  MEMORY[0x28223BE20](v65, v12);
  v71 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B428, &qword_21CD95118);
  v63 = *(v14 - 8);
  v64 = v14;
  v15 = *(v63 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B430, &qword_21CD95120);
  v61 = *(v19 - 8);
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v59 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B438, &qword_21CD95128);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x28223BE20](v24, v27);
  v29 = &v59 - v28;
  v31 = a1[3];
  v30 = a1[4];
  v74 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v31);
  sub_21CD5634C();
  v32 = v75;
  sub_21CD842A4();
  if (v32)
  {
    goto LABEL_11;
  }

  v33 = v23;
  v59 = v19;
  v60 = 0;
  v35 = v71;
  v34 = v72;
  v75 = v25;
  v36 = v73;
  v37 = v24;
  v38 = sub_21CD840D4();
  v39 = (2 * *(v38 + 16)) | 1;
  v76 = v38;
  v77 = v38 + 32;
  v78 = 0;
  v79 = v39;
  v40 = sub_21CCCBB30();
  if (v40 == 5 || v78 != v79 >> 1)
  {
    v45 = sub_21CD83FA4();
    swift_allocError();
    v47 = v46;
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
    *v47 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex;
    sub_21CD84044();
    sub_21CD83F94();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x277D84160], v45);
    swift_willThrow();
    (*(v75 + 8))(v29, v24);
    goto LABEL_10;
  }

  v80 = v40;
  if (v40 <= 1u)
  {
    if (v40)
    {
      v81 = 1;
      sub_21CD5649C();
      v57 = v18;
      v52 = v24;
      v58 = v60;
      sub_21CD84034();
      if (v58)
      {
        v54 = v75;
        goto LABEL_23;
      }

      (*(v63 + 8))(v57, v64);
      (*(v75 + 8))(v29, v24);
    }

    else
    {
      v81 = 0;
      sub_21CD564F0();
      v51 = v60;
      sub_21CD84034();
      if (v51)
      {
        (*(v75 + 8))(v29, v24);
        goto LABEL_10;
      }

      (*(v61 + 8))(v33, v59);
      (*(v75 + 8))(v29, v24);
    }

    swift_unknownObjectRelease();
    v49 = v74;
    v41 = v36;
    goto LABEL_30;
  }

  v41 = v36;
  if (v40 == 2)
  {
    v81 = 2;
    sub_21CD56448();
    v52 = v37;
    v53 = v60;
    sub_21CD84034();
    v54 = v75;
    if (!v53)
    {
      (*(v62 + 8))(v35, v65);
      (*(v54 + 8))(v29, v52);
LABEL_25:
      swift_unknownObjectRelease();
      v49 = v74;
      goto LABEL_30;
    }

LABEL_23:
    (*(v54 + 8))(v29, v52);
    goto LABEL_10;
  }

  v42 = v29;
  v43 = v75;
  if (v40 != 3)
  {
    v81 = 4;
    sub_21CD563A0();
    v55 = v70;
    v56 = v60;
    sub_21CD84034();
    if (v56)
    {
      (*(v43 + 8))(v42, v37);
      goto LABEL_10;
    }

    (*(v66 + 8))(v55, v69);
    (*(v43 + 8))(v42, v37);
    swift_unknownObjectRelease();
    v49 = v74;
    v41 = v36;
LABEL_30:
    *v41 = v80;
    return __swift_destroy_boxed_opaque_existential_0(v49);
  }

  v81 = 3;
  sub_21CD563F4();
  v44 = v60;
  sub_21CD84034();
  if (!v44)
  {
    (*(v68 + 8))(v34, v67);
    (*(v43 + 8))(v42, v37);
    goto LABEL_25;
  }

  (*(v43 + 8))(v42, v37);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v49 = v74;
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t sub_21CD49798()
{
  if (*v0)
  {
    result = 0x6C706D6F636E6F6ELL;
  }

  else
  {
    result = 0x6E61696C706D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_21CD497E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E61696C706D6F63 && a2 == 0xE900000000000074;
  if (v6 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C706D6F636E6F6ELL && a2 == 0xEC000000746E6169)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD498C8(uint64_t a1)
{
  v2 = sub_21CD56544();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD49904(uint64_t a1)
{
  v2 = sub_21CD56544();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD49940(uint64_t a1)
{
  v2 = sub_21CD565EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4997C(uint64_t a1)
{
  v2 = sub_21CD565EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD499B8(uint64_t a1)
{
  v2 = sub_21CD56598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD499F4(uint64_t a1)
{
  v2 = sub_21CD56598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B440, &qword_21CD95130);
  v26 = *(v3 - 8);
  v27 = v3;
  v4 = *(v26 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v25 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B448, &qword_21CD95138);
  v23 = *(v7 - 8);
  v24 = v7;
  v8 = *(v23 + 64);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B450, &qword_21CD95140);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v23 - v16;
  v18 = *v1;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56544();
  sub_21CD842B4();
  v20 = (v13 + 8);
  if (v18)
  {
    v29 = 1;
    sub_21CD56598();
    v21 = v25;
    sub_21CD840E4();
    (*(v26 + 8))(v21, v27);
  }

  else
  {
    v28 = 0;
    sub_21CD565EC();
    sub_21CD840E4();
    (*(v23 + 8))(v11, v24);
  }

  return (*v20)(v17, v12);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.hashValue.getter()
{
  v1 = *v0;
  sub_21CD84264();
  MEMORY[0x21CF17CC0](v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B470, &qword_21CD95148);
  v35 = *(v3 - 8);
  v36 = v3;
  v4 = *(v35 + 64);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B478, &qword_21CD95150);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B480, &qword_21CD95158);
  v38 = *(v13 - 8);
  v14 = *(v38 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v32 - v16;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56544();
  v19 = v39;
  sub_21CD842A4();
  if (v19)
  {
    v20 = a1;
  }

  else
  {
    v33 = v8;
    v39 = a1;
    v21 = v36;
    v22 = v37;
    v23 = sub_21CD840D4();
    v24 = (2 * *(v23 + 16)) | 1;
    v40 = v23;
    v41 = v23 + 32;
    v42 = 0;
    v43 = v24;
    v25 = sub_21CCD18DC();
    if (v25 == 2 || v42 != v43 >> 1)
    {
      v27 = sub_21CD83FA4();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19268, &qword_21CD88F20) + 48);
      *v29 = &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus;
      sub_21CD84044();
      sub_21CD83F94();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
      (*(v38 + 8))(v17, v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v44 = v25;
      if (v25)
      {
        v45 = 1;
        sub_21CD56598();
        sub_21CD84034();
        v26 = v38;
        (*(v35 + 8))(v7, v21);
      }

      else
      {
        v45 = 0;
        sub_21CD565EC();
        sub_21CD84034();
        v26 = v38;
        (*(v34 + 8))(v12, v33);
      }

      (*(v26 + 8))(v17, v13);
      swift_unknownObjectRelease();
      *v22 = v44 & 1;
    }

    v20 = v39;
  }

  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.code.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.sign.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.value.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

void __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.init(code:sign:value:)(CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::DrivingPrivilege::Code *__return_ptr retstr, Swift::String code, Swift::String_optional sign, Swift::String_optional value)
{
  retstr->code = code;
  retstr->sign = sign;
  retstr->value = value;
}

uint64_t sub_21CD4A2E4()
{
  v1 = 1852270963;
  if (*v0 != 1)
  {
    v1 = 0x65756C6176;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701080931;
  }
}

uint64_t sub_21CD4A32C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5B740(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD4A354(uint64_t a1)
{
  v2 = sub_21CD56640();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4A390(uint64_t a1)
{
  v2 = sub_21CD56640();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B488, &qword_21CD95160);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56640();
  sub_21CD842B4();
  v19 = 0;
  v14 = v16[5];
  sub_21CD84134();
  if (v14)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v18 = 1;
  sub_21CD840F4();
  v17 = 2;
  sub_21CD840F4();
  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD83B74();
  if (!v4)
  {
    sub_21CD84284();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v6)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD84264();
  sub_21CD83B74();
  if (!v4)
  {
    sub_21CD84284();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B498, &qword_21CD95168);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56640();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  v12 = sub_21CD84094();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_21CD84054();
  v24 = v15;
  v26 = 2;
  v16 = sub_21CD84054();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v10, v5);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD4A9C0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD83B74();
  if (!v4)
  {
    sub_21CD84284();
    if (v6)
    {
      goto LABEL_3;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v6)
  {
    return sub_21CD84284();
  }

LABEL_3:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t sub_21CD4AA7C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD84264();
  sub_21CD83B74();
  if (!v4)
  {
    sub_21CD84284();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  sub_21CD83B74();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.vehicleCategoryCode.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.codes.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0) + 28));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.init(vehicleCategoryCode:issueDate:expirationDate:codes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  v10 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  sub_21CD2F6A0(a3, a6 + v10[5], &qword_27CE19318, &qword_21CD95170);
  result = sub_21CD2F6A0(a4, a6 + v10[6], &qword_27CE19318, &qword_21CD95170);
  *(a6 + v10[7]) = a5;
  return result;
}

unint64_t sub_21CD4AD10()
{
  v1 = 0x7461446575737369;
  v2 = 0x6974617269707865;
  if (*v0 != 2)
  {
    v2 = 0x7365646F63;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_21CD4AD9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5B854(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD4ADC4(uint64_t a1)
{
  v2 = sub_21CD566B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4AE00(uint64_t a1)
{
  v2 = sub_21CD566B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4A0, &qword_21CD95178);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v18 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD566B4();
  sub_21CD842B4();
  v12 = *v3;
  v13 = v3[1];
  v22 = 0;
  sub_21CD84134();
  if (!v2)
  {
    v14 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
    v15 = v14[5];
    v21 = 1;
    sub_21CD83504();
    sub_21CD55A5C(&qword_27CE1B4B0, MEMORY[0x277CC8990]);
    sub_21CD84124();
    v16 = v14[6];
    v20 = 2;
    sub_21CD84124();
    v18[1] = *(v3 + v14[7]);
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4B8, &qword_21CD95180);
    sub_21CD56708();
    sub_21CD84164();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v24 - v17;
  v19 = *v2;
  v20 = v2[1];
  sub_21CD83B74();
  v21 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  sub_21CCD1750(v2 + v21[5], v18, &qword_27CE19318, &qword_21CD95170);
  v22 = *(v5 + 48);
  if (v22(v18, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v9, v18, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  sub_21CCD1750(v2 + v21[6], v15, &qword_27CE19318, &qword_21CD95170);
  if (v22(v15, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v9, v15, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  return sub_21CCD08A8(a1, *(v2 + v21[7]));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.hashValue.getter()
{
  v1 = v0;
  v2 = sub_21CD83504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v23[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v23[-v15 - 8];
  sub_21CD84264();
  v17 = *v1;
  v18 = v1[1];
  sub_21CD83B74();
  v19 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  sub_21CCD1750(v1 + v19[5], v16, &qword_27CE19318, &qword_21CD95170);
  v20 = *(v3 + 48);
  if (v20(v16, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  sub_21CCD1750(v1 + v19[6], v13, &qword_27CE19318, &qword_21CD95170);
  if (v20(v13, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v13, v2);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  sub_21CCD08A8(v23, *(v1 + v19[7]));
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4D0, &qword_21CD95188);
  v32 = *(v12 - 8);
  v33 = v12;
  v13 = *(v32 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v30 - v15;
  v17 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD566B4();
  v34 = v16;
  v23 = v35;
  sub_21CD842A4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v35 = v8;
  v24 = v32;
  v40 = 0;
  *v21 = sub_21CD84094();
  v21[1] = v25;
  v30[3] = v25;
  v26 = sub_21CD83504();
  v39 = 1;
  v30[1] = sub_21CD55A5C(&qword_27CE1B4D8, MEMORY[0x277CC8990]);
  v30[2] = v26;
  sub_21CD84084();
  v27 = v17;
  sub_21CD2F6A0(v11, v21 + *(v17 + 20), &qword_27CE19318, &qword_21CD95170);
  v38 = 2;
  v28 = v35;
  sub_21CD84084();
  sub_21CD2F6A0(v28, v21 + *(v27 + 24), &qword_27CE19318, &qword_21CD95170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4B8, &qword_21CD95180);
  v37 = 3;
  sub_21CD567E0();
  sub_21CD840C4();
  (*(v24 + 8))(v34, v33);
  *(v21 + *(v27 + 28)) = v36;
  sub_21CD568B8(v21, v31, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD55AF8(v21, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
}

uint64_t sub_21CD4BB94(uint64_t a1, int *a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v24[-v17 - 8];
  sub_21CD84264();
  v19 = *v2;
  v20 = v2[1];
  sub_21CD83B74();
  sub_21CCD1750(v2 + a2[5], v18, &qword_27CE19318, &qword_21CD95170);
  v21 = *(v5 + 48);
  if (v21(v18, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v9, v18, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  sub_21CCD1750(v2 + a2[6], v15, &qword_27CE19318, &qword_21CD95170);
  if (v21(v15, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v9, v15, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  sub_21CCD08A8(v24, *(v2 + a2[7]));
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.init(code:description:issueDate:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  v10 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CD2F6A0(a5, a7 + *(v10 + 24), &qword_27CE19318, &qword_21CD95170);
  return sub_21CD2F6A0(a6, a7 + *(v10 + 28), &qword_27CE19318, &qword_21CD95170);
}

uint64_t sub_21CD4BFF4()
{
  v1 = 1701080931;
  v2 = 0x7461446575737369;
  if (*v0 != 2)
  {
    v2 = 0x6974617269707865;
  }

  if (*v0)
  {
    v1 = 0x7470697263736564;
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

uint64_t sub_21CD4C080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5B9D0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD4C0A8(uint64_t a1)
{
  v2 = sub_21CD56940();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4C0E4(uint64_t a1)
{
  v2 = sub_21CD56940();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B4F0, &qword_21CD95190);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56940();
  sub_21CD842B4();
  v12 = *v3;
  v13 = v3[1];
  v24 = 0;
  sub_21CD84134();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    v23 = 1;
    sub_21CD84134();
    v17 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
    v18 = *(v17 + 24);
    v22 = 2;
    sub_21CD83504();
    sub_21CD55A5C(&qword_27CE1B4B0, MEMORY[0x277CC8990]);
    sub_21CD84124();
    v19 = *(v17 + 28);
    v21 = 3;
    sub_21CD84124();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.hash(into:)()
{
  v1 = v0;
  v2 = sub_21CD83504();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v24 - v15;
  v17 = *v1;
  v18 = v1[1];
  sub_21CD83B74();
  v19 = v1[2];
  v20 = v1[3];
  sub_21CD83B74();
  v21 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CCD1750(v1 + *(v21 + 24), v16, &qword_27CE19318, &qword_21CD95170);
  v22 = *(v3 + 48);
  if (v22(v16, 1, v2) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v3 + 32))(v7, v16, v2);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v3 + 8))(v7, v2);
  }

  sub_21CCD1750(v1 + *(v21 + 28), v13, &qword_27CE19318, &qword_21CD95170);
  if (v22(v13, 1, v2) == 1)
  {
    return sub_21CD84284();
  }

  (*(v3 + 32))(v7, v13, v2);
  sub_21CD84284();
  sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
  sub_21CD83A64();
  return (*(v3 + 8))(v7, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.hashValue.getter()
{
  v1 = sub_21CD83504();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7 - 8, v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v23 - v14;
  sub_21CD84264();
  v16 = *v0;
  v17 = v0[1];
  sub_21CD83B74();
  v18 = v0[2];
  v19 = v0[3];
  sub_21CD83B74();
  v20 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CCD1750(v0 + *(v20 + 24), v15, &qword_27CE19318, &qword_21CD95170);
  v21 = *(v2 + 48);
  if (v21(v15, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v2 + 32))(v6, v15, v1);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v2 + 8))(v6, v1);
  }

  sub_21CCD1750(v0 + *(v20 + 28), v12, &qword_27CE19318, &qword_21CD95170);
  if (v21(v12, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v2 + 32))(v6, v12, v1);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v2 + 8))(v6, v1);
  }

  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v4 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3 - 8, v5);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B500, &qword_21CD95198);
  v34 = *(v12 - 8);
  v35 = v12;
  v13 = *(v34 + 64);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v32 - v15;
  v17 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17, v19);
  v21 = (v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56940();
  v36 = v16;
  v23 = v37;
  sub_21CD842A4();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v37 = v8;
  v24 = v17;
  v41 = 0;
  v25 = v34;
  v26 = v35;
  v27 = v21;
  *v21 = sub_21CD84094();
  v21[1] = v28;
  v32[2] = v28;
  v40 = 1;
  v21[2] = sub_21CD84094();
  v21[3] = v29;
  sub_21CD83504();
  v39 = 2;
  v32[0] = sub_21CD55A5C(&qword_27CE1B4D8, MEMORY[0x277CC8990]);
  v32[1] = 0;
  sub_21CD84084();
  sub_21CD2F6A0(v11, v21 + *(v24 + 24), &qword_27CE19318, &qword_21CD95170);
  v38 = 3;
  v30 = v37;
  sub_21CD84084();
  (*(v25 + 8))(v36, v26);
  sub_21CD2F6A0(v30, v27 + *(v24 + 28), &qword_27CE19318, &qword_21CD95170);
  sub_21CD568B8(v27, v33, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD55AF8(v27, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
}

uint64_t sub_21CD4CE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v25 - v17;
  sub_21CD84264();
  v19 = *v2;
  v20 = v2[1];
  sub_21CD83B74();
  v21 = v2[2];
  v22 = v2[3];
  sub_21CD83B74();
  sub_21CCD1750(v2 + *(a2 + 24), v18, &qword_27CE19318, &qword_21CD95170);
  v23 = *(v5 + 48);
  if (v23(v18, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v9, v18, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  sub_21CCD1750(v2 + *(a2 + 28), v15, &qword_27CE19318, &qword_21CD95170);
  if (v23(v15, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    (*(v5 + 32))(v9, v15, v4);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v5 + 8))(v9, v4);
  }

  return sub_21CD84294();
}

uint64_t sub_21CD4D16C(uint64_t a1)
{
  v2 = sub_21CD56994();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4D1A8(uint64_t a1)
{
  v2 = sub_21CD56994();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.code.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.description.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::AAMVADrivingPrivilege::VehicleEndorsement __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement.init(code:description:)(Swift::String_optional code, Swift::String description)
{
  *v2 = code;
  v2[1].value = description;
  result.description = description;
  result.code = code;
  return result;
}

uint64_t sub_21CD4D324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v5 || (sub_21CD841A4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_21CD841A4();

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

uint64_t sub_21CD4D404(uint64_t a1)
{
  v2 = sub_21CD569E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4D440(uint64_t a1)
{
  v2 = sub_21CD569E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21CD4D4C0(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v18 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v17 - v9;
  v11 = *v4;
  v12 = v4[1];
  v13 = v4[2];
  v17[1] = v4[3];
  v17[2] = v13;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v18();
  sub_21CD842B4();
  v22 = 0;
  v15 = v19;
  sub_21CD840F4();
  if (!v15)
  {
    v21 = 1;
    sub_21CD84134();
  }

  return (*(v20 + 8))(v10, v6);
}

uint64_t sub_21CD4D660()
{
  v1 = v0[2];
  v2 = v0[3];
  if (v0[1])
  {
    v3 = *v0;
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  return sub_21CD83B74();
}

uint64_t sub_21CD4D6EC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21CD84264();
  sub_21CD84284();
  if (v2)
  {
    sub_21CD83B74();
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t sub_21CD4D7BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t *a5@<X8>)
{
  v26 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v25 = *(v8 - 8);
  v9 = *(v25 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v23 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  a4();
  sub_21CD842A4();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14 = v25;
  v15 = v26;
  v28 = 0;
  v16 = sub_21CD84054();
  v18 = v17;
  v24 = v16;
  v27 = 1;
  v19 = sub_21CD84094();
  v21 = v20;
  (*(v14 + 8))(v12, v8);
  *v15 = v24;
  v15[1] = v18;
  v15[2] = v19;
  v15[3] = v21;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD4D9F0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_21CD84264();
  sub_21CD84284();
  if (v2)
  {
    sub_21CD83B74();
  }

  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.vehicleRestrictions.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0) + 20));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.vehicleEndorsements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0) + 24));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.init(vehicleClass:vehicleRestrictions:vehicleEndorsements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  v17 = *(v8 - 8);
  v9 = *(v17 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  if ((*(*(v13 - 8) + 48))(a1, 1, v13) == 1 && !*(a2 + 16))
  {
    sub_21CCB1928(a1, &qword_27CE19320, &qword_21CD893F0);

    v15 = *(v17 + 56);

    return v15(a4, 1, 1, v8);
  }

  else
  {
    sub_21CD2F6A0(a1, v12, &qword_27CE19320, &qword_21CD893F0);
    *&v12[*(v8 + 20)] = a2;
    *&v12[*(v8 + 24)] = a3;
    sub_21CD56A5C(v12, a4, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
    return (*(v17 + 56))(a4, 0, 1, v8);
  }
}

uint64_t sub_21CD4DCFC()
{
  *v0;
  if (*v0)
  {
    return 0xD000000000000013;
  }

  else
  {
    return 0x43656C6369686576;
  }
}

uint64_t sub_21CD4DD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5BB48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD4DD90(uint64_t a1)
{
  v2 = sub_21CD56AC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4DDCC(uint64_t a1)
{
  v2 = sub_21CD56AC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B538, &qword_21CD951C8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v14 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56AC4();
  sub_21CD842B4();
  LOBYTE(v15) = 0;
  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  sub_21CD55A5C(&qword_27CE1B548, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD84124();
  if (!v2)
  {
    v12 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
    v15 = *(v3 + *(v12 + 20));
    HIBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B550, &qword_21CD951D0);
    sub_21CD56B18();
    sub_21CD84164();
    v15 = *(v3 + *(v12 + 24));
    HIBYTE(v14) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B568, &qword_21CD951D8);
    sub_21CD56BF0();
    sub_21CD84164();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.hash(into:)(uint64_t a1)
{
  sub_21CD52394();
  v3 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  sub_21CCD18E8(a1, *(v1 + *(v3 + 20)));
  v4 = *(v1 + *(v3 + 24));

  return sub_21CCD18E8(a1, v4);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.hashValue.getter()
{
  sub_21CD84264();
  sub_21CD52394();
  v1 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  sub_21CCD18E8(v3, *(v0 + *(v1 + 20)));
  sub_21CCD18E8(v3, *(v0 + *(v1 + 24)));
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v22 - v7;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B580, &qword_21CD951E0);
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v23, v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v20 = a1[4];
  v24 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v19);
  sub_21CD56AC4();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  LOBYTE(v26) = 0;
  sub_21CD55A5C(&qword_27CE1B588, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD84084();
  sub_21CD2F6A0(v8, v18, &qword_27CE19320, &qword_21CD893F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B550, &qword_21CD951D0);
  v25 = 1;
  sub_21CD56CC8();
  sub_21CD840C4();
  *&v18[*(v14 + 20)] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B568, &qword_21CD951D8);
  v25 = 2;
  sub_21CD56DA0();
  sub_21CD840C4();
  (*(v9 + 8))(v13, v23);
  *&v18[*(v14 + 24)] = v26;
  sub_21CD568B8(v18, v22, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
  __swift_destroy_boxed_opaque_existential_0(v24);
  return sub_21CD55AF8(v18, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
}

uint64_t sub_21CD4E52C(uint64_t a1)
{
  sub_21CD84264();
  sub_21CD52394();
  sub_21CCD18E8(v4, *(v1 + *(a1 + 20)));
  sub_21CCD18E8(v4, *(v1 + *(a1 + 24)));
  return sub_21CD84294();
}

uint64_t sub_21CD4E590(uint64_t a1, uint64_t a2)
{
  sub_21CD52394();
  sub_21CCD18E8(a1, *(v2 + *(a2 + 20)));
  v5 = *(v2 + *(a2 + 24));

  return sub_21CCD18E8(a1, v5);
}

uint64_t sub_21CD4E5EC(uint64_t a1, uint64_t a2)
{
  sub_21CD84264();
  sub_21CD52394();
  sub_21CCD18E8(v5, *(v2 + *(a2 + 20)));
  sub_21CCD18E8(v5, *(v2 + *(a2 + 24)));
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

void __swiftcall MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.init(name:jurisdiction:isoCountryCode:)(CoreIDV::MobileDocumentReaderResponse::MobileIdentityDocumentElements::IssuingAuthority_optional *__return_ptr retstr, Swift::String_optional name, Swift::String_optional jurisdiction, Swift::String_optional isoCountryCode)
{
  object = 1;
  if (isoCountryCode.value._object)
  {
    countAndFlagsBits = name.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = 0;
  }

  if (isoCountryCode.value._object)
  {
    object = name.value._object;
    v6 = jurisdiction.value._countAndFlagsBits;
  }

  else
  {
    v6 = 0;
  }

  if (isoCountryCode.value._object)
  {
    v7 = jurisdiction.value._object;
  }

  else
  {
    v7 = 0;
  }

  if (isoCountryCode.value._object)
  {
    v8 = isoCountryCode.value._countAndFlagsBits;
  }

  else
  {
    v8 = 0;
  }

  if (isoCountryCode.value._object)
  {
    v9 = isoCountryCode.value._object;
  }

  else
  {
    v9 = 0;
  }

  if (jurisdiction.value._object)
  {
    countAndFlagsBits = name.value._countAndFlagsBits;
    object = name.value._object;
    v6 = jurisdiction.value._countAndFlagsBits;
    v7 = jurisdiction.value._object;
    v8 = isoCountryCode.value._countAndFlagsBits;
    v9 = isoCountryCode.value._object;
  }

  if (name.value._object)
  {
    countAndFlagsBits = name.value._countAndFlagsBits;
    object = name.value._object;
    v6 = jurisdiction.value._countAndFlagsBits;
    v7 = jurisdiction.value._object;
    v8 = isoCountryCode.value._countAndFlagsBits;
  }

  retstr->value.name.value._countAndFlagsBits = countAndFlagsBits;
  retstr->value.name.value._object = object;
  retstr->value.jurisdiction.value._countAndFlagsBits = v6;
  retstr->value.jurisdiction.value._object = v7;
  if (name.value._object)
  {
    v10 = isoCountryCode.value._object;
  }

  else
  {
    v10 = v9;
  }

  retstr->value.isoCountryCode.value._countAndFlagsBits = v8;
  retstr->value.isoCountryCode.value._object = v10;
}

uint64_t sub_21CD4E6F8()
{
  v1 = 0x636964736972756ALL;
  if (*v0 != 1)
  {
    v1 = 0x746E756F436F7369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_21CD4E760@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5BC74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD4E788(uint64_t a1)
{
  v2 = sub_21CD56E78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4E7C4(uint64_t a1)
{
  v2 = sub_21CD56E78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5B0, &qword_21CD951E8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = v16 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16[3] = v1[3];
  v16[4] = v11;
  v12 = v1[4];
  v16[1] = v1[5];
  v16[2] = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56E78();
  sub_21CD842B4();
  v19 = 0;
  v14 = v16[5];
  sub_21CD840F4();
  if (v14)
  {
    return (*(v4 + 8))(v8, v3);
  }

  v18 = 1;
  sub_21CD840F4();
  v17 = 2;
  sub_21CD840F4();
  return (*(v4 + 8))(v8, v3);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.hash(into:)()
{
  v1 = v0[2];
  v3 = v0[3];
  v2 = v0[4];
  v4 = v0[5];
  if (v0[1])
  {
    v5 = *v0;
    sub_21CD84284();
    sub_21CD83B74();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_8:
    sub_21CD84284();
    if (v4)
    {
      goto LABEL_4;
    }

    return sub_21CD84284();
  }

  sub_21CD84284();
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v4)
  {
    return sub_21CD84284();
  }

LABEL_4:
  sub_21CD84284();

  return sub_21CD83B74();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD84264();
  if (v2)
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_21CD84284();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5C0, &qword_21CD951F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v22 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56E78();
  sub_21CD842A4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  v12 = sub_21CD84054();
  v14 = v13;
  v25 = v12;
  v27 = 1;
  v23 = sub_21CD84054();
  v24 = v15;
  v26 = 2;
  v16 = sub_21CD84054();
  v18 = v17;
  v19 = v16;
  (*(v6 + 8))(v10, v5);
  v20 = v24;
  *a2 = v25;
  a2[1] = v14;
  a2[2] = v23;
  a2[3] = v20;
  a2[4] = v19;
  a2[5] = v18;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_21CD4EE3C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_21CD84264();
  if (v2)
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_21CD84284();
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    sub_21CD84284();
    return sub_21CD84294();
  }

  sub_21CD84284();
  if (!v4)
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  sub_21CD84284();
  sub_21CD83B74();
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.nameComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 20);
  v4 = sub_21CD835C4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.sex.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.portraitData.getter()
{
  v1 = v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 28);
  v2 = *v1;
  sub_21CC96064(*v1, *(v1 + 8));
  return v2;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.age.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 32));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.ageAtLeastElements.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 36));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.address.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 44));
  v4 = v3[3];
  v11 = v3[2];
  v12 = v4;
  v13 = v3[4];
  v5 = v13;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v4;
  a1[4] = v5;
  *a1 = v7;
  a1[1] = v6;
  return sub_21CCD1750(v10, &v9, &qword_27CE1B5C8, &qword_21CD951F8);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.eyeColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.hairColor.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.issuingAuthority.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  a1[5] = v9;

  return sub_21CD56ECC(v4, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.drivingPrivileges.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 76));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.aamvaDrivingPrivileges.getter()
{
  v1 = *(v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 80));
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.documentDHSComplianceStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.documentNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0) + 88));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(documentType:nameComponents:sex:portraitData:age:ageAtLeastElements:dateOfBirth:address:height:weight:eyeColor:hairColor:isOrganDonor:isVeteran:issuingAuthority:drivingPrivileges:aamvaDrivingPrivileges:documentDHSComplianceStatus:documentNumber:documentIssueDate:documentExpirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, _OWORD *a11, uint64_t a12, uint64_t a13, char *a14, char *a15, char a16, char a17, __int128 *a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = *a3;
  v46 = *a14;
  v47 = *a15;
  v48 = *(a18 + 5);
  v49 = *(a18 + 4);
  v50 = *a21;
  sub_21CD56A5C(a1, a9, type metadata accessor for MobileDocumentType);
  v30 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v31 = v30[5];
  v32 = sub_21CD835C4();
  v45 = *a18;
  v43 = a18[1];
  (*(*(v32 - 8) + 32))(a9 + v31, a2, v32);
  *(a9 + v30[6]) = v29;
  v33 = (a9 + v30[7]);
  *v33 = a4;
  v33[1] = a5;
  v34 = a9 + v30[8];
  *v34 = a6;
  *(v34 + 8) = a7 & 1;
  *(a9 + v30[9]) = a8;
  sub_21CD2F6A0(a10, a9 + v30[10], &qword_27CE19318, &qword_21CD95170);
  v35 = (a9 + v30[11]);
  v36 = a11[3];
  v35[2] = a11[2];
  v35[3] = v36;
  v35[4] = a11[4];
  v37 = a11[1];
  *v35 = *a11;
  v35[1] = v37;
  sub_21CD2F6A0(a12, a9 + v30[12], &qword_27CE1B5D0, &qword_21CD95200);
  sub_21CD2F6A0(a13, a9 + v30[13], &qword_27CE1B5D8, &qword_21CD95208);
  *(a9 + v30[14]) = v46;
  *(a9 + v30[15]) = v47;
  *(a9 + v30[16]) = a16;
  *(a9 + v30[17]) = a17;
  v38 = a9 + v30[18];
  *v38 = v45;
  *(v38 + 16) = v43;
  *(v38 + 32) = v49;
  *(v38 + 40) = v48;
  *(a9 + v30[19]) = a19;
  *(a9 + v30[20]) = a20;
  *(a9 + v30[21]) = v50;
  v39 = (a9 + v30[22]);
  *v39 = a22;
  v39[1] = a23;
  sub_21CD2F6A0(a24, a9 + v30[23], &qword_27CE19318, &qword_21CD95170);
  return sub_21CD2F6A0(a25, a9 + v30[24], &qword_27CE19318, &qword_21CD95170);
}

unint64_t sub_21CD4F720(char a1)
{
  result = 0x746E656D75636F64;
  switch(a1)
  {
    case 1:
      result = 0x706D6F43656D616ELL;
      break;
    case 2:
      result = 7890291;
      break;
    case 3:
      result = 0x7469617274726F70;
      break;
    case 4:
      result = 6645601;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x6942664F65746164;
      break;
    case 7:
      result = 0x73736572646461;
      break;
    case 8:
      result = 0x746867696568;
      break;
    case 9:
      result = 0x746867696577;
      break;
    case 10:
      result = 0x726F6C6F43657965;
      break;
    case 11:
      result = 0x6F6C6F4372696168;
      break;
    case 12:
      result = 0x446E6167724F7369;
      break;
    case 13:
      result = 0x6172657465567369;
      break;
    case 14:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 16:
    case 20:
      result = 0xD000000000000016;
      break;
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 19:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_21CD4F97C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21CD5BD98(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21CD4F9B0(uint64_t a1)
{
  v2 = sub_21CD56F20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21CD4F9EC(uint64_t a1)
{
  v2 = sub_21CD56F20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5E0, &qword_21CD95210);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v43 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56F20();
  sub_21CD842B4();
  LOBYTE(v58) = 0;
  type metadata accessor for MobileDocumentType(0);
  sub_21CD55A5C(&qword_27CE1B040, type metadata accessor for MobileDocumentType);
  sub_21CD84164();
  if (!v2)
  {
    v12 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
    v13 = v12[5];
    LOBYTE(v58) = 1;
    sub_21CD835C4();
    sub_21CD55A5C(&qword_27CE1B5F0, MEMORY[0x277CC8E50]);
    sub_21CD84164();
    LOBYTE(v58) = *(v3 + v12[6]);
    LOBYTE(v53) = 2;
    sub_21CD56F74();
    sub_21CD84124();
    v14 = (v3 + v12[7]);
    v15 = v14[1];
    *&v58 = *v14;
    *(&v58 + 1) = v15;
    LOBYTE(v53) = 3;
    sub_21CC96064(v58, v15);
    sub_21CCFFDB0();
    sub_21CD84124();
    sub_21CC95F8C(v58, *(&v58 + 1));
    v16 = (v3 + v12[8]);
    v17 = *v16;
    v18 = *(v16 + 8);
    LOBYTE(v58) = 4;
    sub_21CD84114();
    *&v58 = *(v3 + v12[9]);
    LOBYTE(v53) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B600, &qword_21CD95218);
    sub_21CD572B0(&qword_27CE1B608);
    sub_21CD84164();
    v64 = v12[10];
    v63 = 6;
    v19 = sub_21CD83504();
    v20 = sub_21CD55A5C(&qword_27CE1B4B0, MEMORY[0x277CC8990]);
    v64 = v19;
    sub_21CD84124();
    v43 = v20;
    v21 = (v3 + v12[11]);
    v22 = v21[2];
    v23 = *v21;
    v59 = v21[1];
    v60 = v22;
    v24 = v21[2];
    v25 = v21[4];
    v61 = v21[3];
    v62 = v25;
    v26 = *v21;
    v55 = v24;
    v56 = v61;
    v57 = v21[4];
    v58 = v26;
    v53 = v23;
    v54 = v59;
    v52 = 7;
    sub_21CCD1750(&v58, v51, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CD56FC8();
    sub_21CD84124();
    v51[2] = v55;
    v51[3] = v56;
    v51[4] = v57;
    v51[0] = v53;
    v51[1] = v54;
    sub_21CCB1928(v51, &qword_27CE1B5C8, &qword_21CD951F8);
    v27 = v12[12];
    LOBYTE(v44) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
    sub_21CCA6B04(&qword_27CE1B620, &qword_27CE1B618, &unk_21CD95220);
    sub_21CD84124();
    v28 = v12[13];
    LOBYTE(v44) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
    sub_21CCA6B04(&qword_27CE1B630, &qword_27CE1B628, &qword_21CD98510);
    sub_21CD84124();
    LOBYTE(v44) = *(v3 + v12[14]);
    v50 = 10;
    sub_21CD5701C();
    sub_21CD84124();
    LOBYTE(v44) = *(v3 + v12[15]);
    v50 = 11;
    sub_21CD57070();
    sub_21CD84124();
    v29 = *(v3 + v12[16]);
    LOBYTE(v44) = 12;
    sub_21CD84104();
    v30 = *(v3 + v12[17]);
    LOBYTE(v44) = 13;
    sub_21CD84104();
    v31 = (v3 + v12[18]);
    v32 = v31[1];
    v33 = v31[2];
    v34 = v31[3];
    v35 = v31[4];
    v36 = v31[5];
    v44 = *v31;
    v45 = v32;
    v46 = v33;
    v47 = v34;
    v48 = v35;
    v49 = v36;
    v50 = 14;
    sub_21CD56ECC(v44, v32);
    sub_21CD570C4();
    sub_21CD84124();
    sub_21CD57118(v44, v45);
    v44 = *(v3 + v12[19]);
    v50 = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B650, &qword_21CD95230);
    sub_21CD57470(&qword_27CE1B658, &qword_27CE1B660);
    sub_21CD84164();
    v44 = *(v3 + v12[20]);
    v50 = 16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B668, &qword_21CD95238);
    sub_21CD5716C(&qword_27CE1B670, &qword_27CE1B678);
    sub_21CD84164();
    LOBYTE(v44) = *(v3 + v12[21]);
    v50 = 17;
    sub_21CD57208();
    sub_21CD84124();
    v37 = (v3 + v12[22]);
    v38 = *v37;
    v39 = v37[1];
    LOBYTE(v44) = 18;
    sub_21CD840F4();
    v40 = v12[23];
    LOBYTE(v44) = 19;
    sub_21CD84124();
    v41 = v12[24];
    LOBYTE(v44) = 20;
    sub_21CD84124();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
  v100 = *(v4 - 8);
  v5 = *(v100 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v93 = &v92 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v97 = &v92 - v11;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
  v12 = *(v96 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v96, v14);
  v92 = &v92 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8, v18);
  v94 = &v92 - v19;
  v102 = sub_21CD83504();
  v105 = *(v102 - 8);
  v20 = *(v105 + 64);
  MEMORY[0x28223BE20](v102, v21);
  v101 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v24 = *(*(v23 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v23 - 8, v25);
  v99 = &v92 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v98 = &v92 - v30;
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v92 - v32;
  v34 = sub_21CD837F4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x28223BE20](v34, v37);
  v39 = &v92 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for MobileDocumentType.Identifier(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8, v42);
  v44 = &v92 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21CD568B8(v2, v44, type metadata accessor for MobileDocumentType.Identifier);
  v45 = (*(v35 + 48))(v44, 2, v34);
  if (v45)
  {
    if (v45 == 1)
    {
      v46 = 0;
    }

    else
    {
      v46 = 2;
    }

    MEMORY[0x21CF17CC0](v46);
  }

  else
  {
    (*(v35 + 32))(v39, v44, v34);
    MEMORY[0x21CF17CC0](1);
    sub_21CD55A5C(&qword_27CE19380, MEMORY[0x277CC9698]);
    sub_21CD83A64();
    (*(v35 + 8))(v39, v34);
  }

  v47 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v48 = v47[5];
  sub_21CD835C4();
  sub_21CD55A5C(&qword_27CE1B688, MEMORY[0x277CC8E50]);
  sub_21CD83A64();
  v49 = *(v2 + v47[6]);
  sub_21CD84284();
  if (v49 != 5)
  {
    MEMORY[0x21CF17CC0](v49);
  }

  v50 = (v2 + v47[7]);
  if (v50[1] >> 60 == 15)
  {
    sub_21CD84284();
  }

  else
  {
    v51 = *v50;
    sub_21CD84284();
    sub_21CD83704();
  }

  v52 = v102;
  v53 = v2 + v47[8];
  if (*(v53 + 8) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v54 = *v53;
    sub_21CD84284();
    MEMORY[0x21CF17CC0](v54);
  }

  v55 = v105;
  sub_21CCD5148(a1, *(v2 + v47[9]));
  sub_21CCD1750(v2 + v47[10], v33, &qword_27CE19318, &qword_21CD95170);
  v103 = *(v55 + 48);
  v104 = v55 + 48;
  v56 = v103(v33, 1, v52);
  v95 = v12;
  if (v56 == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v57 = v33;
    v58 = v4;
    v59 = v101;
    (*(v55 + 32))(v101, v57, v52);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    v60 = v59;
    v4 = v58;
    (*(v55 + 8))(v60, v52);
  }

  v61 = v2 + v47[11];
  v62 = *v61;
  v63 = *(v61 + 8);
  v64 = *(v61 + 32);
  v117 = *(v61 + 16);
  v118 = v64;
  v65 = *(v61 + 64);
  v119 = *(v61 + 48);
  v120 = v65;
  if (v63 == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v66 = *(v61 + 32);
    v107 = *(v61 + 16);
    v108 = v66;
    v67 = *(v61 + 64);
    v109 = *(v61 + 48);
    v110 = v67;
    *&v106 = v62;
    *(&v106 + 1) = v63;
    sub_21CD84284();
    v111[0] = v62;
    v111[1] = v63;
    v112 = v117;
    v113 = v118;
    v114 = v119;
    v115 = v120;
    sub_21CD55BAC(v111, v116);
    MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address.hash(into:)();
    v116[2] = v108;
    v116[3] = v109;
    v116[4] = v110;
    v116[0] = v106;
    v116[1] = v107;
    sub_21CD55BE4(v116);
  }

  v68 = v94;
  sub_21CCD1750(v2 + v47[12], v94, &qword_27CE1B5D0, &qword_21CD95200);
  v70 = v95;
  v69 = v96;
  if ((*(v95 + 48))(v68, 1, v96) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v71 = v92;
    (*(v70 + 32))(v92, v68, v69);
    sub_21CD84284();
    sub_21CCA6B04(&qword_27CE1B690, &qword_27CE1B618, &unk_21CD95220);
    sub_21CD83A64();
    (*(v70 + 8))(v71, v69);
  }

  v72 = v97;
  sub_21CCD1750(v2 + v47[13], v97, &qword_27CE1B5D8, &qword_21CD95208);
  if ((*(v100 + 48))(v72, 1, v4) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v73 = v100;
    v74 = v93;
    (*(v100 + 32))(v93, v72, v4);
    sub_21CD84284();
    sub_21CCA6B04(&qword_27CE1B698, &qword_27CE1B628, &qword_21CD98510);
    sub_21CD83A64();
    (*(v73 + 8))(v74, v4);
  }

  v75 = *(v2 + v47[14]);
  sub_21CD84284();
  if (v75 != 10)
  {
    MEMORY[0x21CF17CC0](v75);
  }

  v76 = *(v2 + v47[15]);
  sub_21CD84284();
  if (v76 != 10)
  {
    MEMORY[0x21CF17CC0](v76);
  }

  if (*(v2 + v47[16]) != 2)
  {
    sub_21CD84284();
  }

  sub_21CD84284();
  if (*(v2 + v47[17]) != 2)
  {
    sub_21CD84284();
  }

  sub_21CD84284();
  v77 = (v2 + v47[18]);
  v78 = v77[1];
  if (v78 == 1)
  {
    sub_21CD84284();
    goto LABEL_45;
  }

  v79 = *v77;
  v80 = v77[2];
  v81 = v77[3];
  v82 = v77[5];
  v100 = v77[4];
  sub_21CD84284();
  if (v78)
  {
    sub_21CD84284();
    sub_21CD83B74();
    if (v81)
    {
      goto LABEL_39;
    }

LABEL_42:
    sub_21CD84284();
    if (v82)
    {
      goto LABEL_40;
    }

LABEL_43:
    sub_21CD84284();
    goto LABEL_44;
  }

  sub_21CD84284();
  if (!v81)
  {
    goto LABEL_42;
  }

LABEL_39:
  sub_21CD84284();
  sub_21CD83B74();
  if (!v82)
  {
    goto LABEL_43;
  }

LABEL_40:
  sub_21CD84284();
  sub_21CD83B74();
LABEL_44:
  v52 = v102;
LABEL_45:
  sub_21CCD11AC(a1, *(v2 + v47[19]));
  sub_21CCD0A90(a1, *(v2 + v47[20]));
  v83 = *(v2 + v47[21]);
  sub_21CD84284();
  if (v83 != 2)
  {
    MEMORY[0x21CF17CC0](v83 & 1);
  }

  v84 = (v2 + v47[22]);
  if (v84[1])
  {
    v85 = *v84;
    sub_21CD84284();
    sub_21CD83B74();
  }

  else
  {
    sub_21CD84284();
  }

  v86 = v105;
  v87 = v98;
  sub_21CCD1750(v2 + v47[23], v98, &qword_27CE19318, &qword_21CD95170);
  if (v103(v87, 1, v52) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v88 = v101;
    (*(v86 + 32))(v101, v87, v52);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v86 + 8))(v88, v52);
  }

  v89 = v99;
  sub_21CCD1750(v2 + v47[24], v99, &qword_27CE19318, &qword_21CD95170);
  if (v103(v89, 1, v52) == 1)
  {
    return sub_21CD84284();
  }

  v91 = v101;
  (*(v86 + 32))(v101, v89, v52);
  sub_21CD84284();
  sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
  sub_21CD83A64();
  return (*(v86 + 8))(v91, v52);
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.hashValue.getter()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t MobileDocumentReaderResponse.MobileIdentityDocumentElements.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v63 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v64 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v12 = *(*(v11 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8, v13);
  v61 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v60 = &v59 - v18;
  MEMORY[0x28223BE20](v17, v19);
  v69 = &v59 - v20;
  v66 = sub_21CD835C4();
  v65 = *(v66 - 8);
  v21 = *(v65 + 64);
  MEMORY[0x28223BE20](v66, v22);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for MobileDocumentType(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25, v27);
  v67 = &v59 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B6A0, &qword_21CD95240);
  v68 = *(v71 - 8);
  v29 = *(v68 + 64);
  MEMORY[0x28223BE20](v71, v30);
  v32 = &v59 - v31;
  v33 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v34 = *(*(v33 - 8) + 64);
  MEMORY[0x28223BE20](v33, v35);
  v37 = &v59 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_21CD56F20();
  v70 = v32;
  v39 = v72;
  sub_21CD842A4();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v72 = v33;
  LOBYTE(v76) = 0;
  sub_21CD55A5C(&qword_27CE1B070, type metadata accessor for MobileDocumentType);
  v40 = v67;
  sub_21CD840C4();
  sub_21CD56A5C(v40, v37, type metadata accessor for MobileDocumentType);
  LOBYTE(v76) = 1;
  sub_21CD55A5C(&qword_27CE1B6A8, MEMORY[0x277CC8E50]);
  v41 = v24;
  v42 = v66;
  sub_21CD840C4();
  v43 = v41;
  v44 = v72;
  (*(v65 + 32))(&v37[v72[5]], v43, v42);
  LOBYTE(v73) = 2;
  sub_21CD5725C();
  sub_21CD84084();
  v37[v44[6]] = v76;
  LOBYTE(v73) = 3;
  sub_21CCFFE7C();
  sub_21CD84084();
  *&v37[v44[7]] = v76;
  LOBYTE(v76) = 4;
  v45 = sub_21CD84074();
  v46 = &v37[v44[8]];
  *v46 = v45;
  v46[8] = v47 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B600, &qword_21CD95218);
  LOBYTE(v73) = 5;
  sub_21CD572B0(&qword_27CE1B6B8);
  sub_21CD840C4();
  *&v37[v44[9]] = v76;
  v48 = sub_21CD83504();
  LOBYTE(v76) = 6;
  v67 = sub_21CD55A5C(&qword_27CE1B4D8, MEMORY[0x277CC8990]);
  sub_21CD84084();
  v59 = v48;
  sub_21CD2F6A0(v69, &v37[v44[10]], &qword_27CE19318, &qword_21CD95170);
  v82 = 7;
  sub_21CD57320();
  sub_21CD84084();
  v49 = &v37[v72[11]];
  v50 = v79;
  *(v49 + 2) = v78;
  *(v49 + 3) = v50;
  *(v49 + 4) = v80;
  v51 = v77;
  *v49 = v76;
  *(v49 + 1) = v51;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
  LOBYTE(v73) = 8;
  sub_21CCA6B04(&qword_27CE1B6C8, &qword_27CE1B618, &unk_21CD95220);
  v52 = v64;
  sub_21CD84084();
  sub_21CD2F6A0(v52, &v37[v72[12]], &qword_27CE1B5D0, &qword_21CD95200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
  LOBYTE(v73) = 9;
  sub_21CCA6B04(&qword_27CE1B6D0, &qword_27CE1B628, &qword_21CD98510);
  sub_21CD84084();
  sub_21CD2F6A0(v63, &v37[v72[13]], &qword_27CE1B5D8, &qword_21CD95208);
  v81 = 10;
  sub_21CD57374();
  sub_21CD84084();
  v37[v72[14]] = v73;
  v81 = 11;
  sub_21CD573C8();
  sub_21CD84084();
  v37[v72[15]] = v73;
  LOBYTE(v73) = 12;
  v37[v72[16]] = sub_21CD84064();
  LOBYTE(v73) = 13;
  v37[v72[17]] = sub_21CD84064();
  v81 = 14;
  sub_21CD5741C();
  sub_21CD84084();
  v53 = &v37[v72[18]];
  v54 = v74;
  *v53 = v73;
  *(v53 + 1) = v54;
  *(v53 + 2) = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B650, &qword_21CD95230);
  v81 = 15;
  sub_21CD57470(&qword_27CE1B6F0, &qword_27CE1B6F8);
  sub_21CD840C4();
  *&v37[v72[19]] = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B668, &qword_21CD95238);
  v81 = 16;
  sub_21CD5716C(&qword_27CE1B700, &qword_27CE1B708);
  sub_21CD840C4();
  *&v37[v72[20]] = v73;
  v81 = 17;
  sub_21CD5750C();
  sub_21CD84084();
  v37[v72[21]] = v73;
  LOBYTE(v73) = 18;
  v55 = sub_21CD84054();
  v56 = &v37[v72[22]];
  *v56 = v55;
  v56[1] = v57;
  LOBYTE(v73) = 19;
  sub_21CD84084();
  sub_21CD2F6A0(v60, &v37[v72[23]], &qword_27CE19318, &qword_21CD95170);
  LOBYTE(v73) = 20;
  sub_21CD84084();
  (*(v68 + 8))(v70, v71);
  sub_21CD2F6A0(v61, &v37[v72[24]], &qword_27CE19318, &qword_21CD95170);
  sub_21CD568B8(v37, v62, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_21CD55AF8(v37, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
}

uint64_t sub_21CD52310()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t sub_21CD52354()
{
  sub_21CD84264();
  MobileDocumentReaderResponse.MobileIdentityDocumentElements.hash(into:)(v1);
  return sub_21CD84294();
}

uint64_t sub_21CD52394()
{
  v1 = sub_21CD83504();
  v35 = *(v1 - 8);
  v2 = *(v35 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v37 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = (&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v23 = &v34 - v22;
  sub_21CCD1750(v0, &v34 - v22, &qword_27CE19320, &qword_21CD893F0);
  if ((*(v14 + 48))(v23, 1, v13) == 1)
  {
    return sub_21CD84284();
  }

  sub_21CD56A5C(v23, v18, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD84284();
  v25 = *v18;
  v26 = v18[1];
  sub_21CD83B74();
  v27 = v18[2];
  v28 = v18[3];
  sub_21CD83B74();
  sub_21CCD1750(v18 + *(v13 + 24), v12, &qword_27CE19318, &qword_21CD95170);
  v29 = v35;
  v30 = *(v35 + 48);
  if (v30(v12, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v31 = v37;
    (*(v29 + 32))(v37, v12, v1);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v29 + 8))(v31, v1);
  }

  v32 = v36;
  sub_21CCD1750(v18 + *(v13 + 28), v36, &qword_27CE19318, &qword_21CD95170);
  if (v30(v32, 1, v1) == 1)
  {
    sub_21CD84284();
  }

  else
  {
    v33 = v37;
    (*(v29 + 32))(v37, v32, v1);
    sub_21CD84284();
    sub_21CD55A5C(&qword_27CE19328, MEMORY[0x277CC8990]);
    sub_21CD83A64();
    (*(v29 + 8))(v33, v1);
  }

  return sub_21CD55AF8(v18, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16DrivingPrivilegeV4CodeV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v7 = a2[2];
  v6 = a2[3];
  v9 = a2[4];
  v8 = a2[5];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  if (v4)
  {
    if (!v6 || (v2 != v7 || v4 != v6) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8 && (v3 == v9 && v5 == v8 || (sub_21CD841A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16IssuingAuthorityV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a2[1];
  v9 = a2[2];
  v11 = a2[3];
  v10 = a2[4];
  v12 = a2[5];
  if (v3)
  {
    if (!v8 || (*a1 != *a2 || v3 != v8) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  if (v6)
  {
    if (!v11 || (v4 != v9 || v6 != v11) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  if (v7)
  {
    if (v12 && (v5 == v10 && v7 == v12 || (sub_21CD841A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v12)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_21CD52A0C(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_21CD841A4() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_21CD841A4();
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV7AddressV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v12 = a2[1];
  v13 = a2[2];
  v15 = a2[3];
  v14 = a2[4];
  v17 = a2[5];
  v16 = a2[6];
  v18 = a2[7];
  v19 = a2[8];
  v20 = a2[9];
  if (v3)
  {
    if (!v12)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v12)
    {
      v45 = a1[7];
      v47 = a2[7];
      v43 = a2[8];
      v44 = a1[6];
      v41 = a1[9];
      v42 = a2[9];
      v21 = a1[8];
      v22 = a2[6];
      v23 = a1[5];
      v24 = a1[4];
      v25 = a2[5];
      v26 = a2[4];
      v27 = a2[2];
      v28 = sub_21CD841A4();
      v13 = v27;
      v14 = v26;
      v17 = v25;
      v5 = v24;
      v7 = v23;
      v16 = v22;
      v9 = v21;
      v11 = v41;
      v20 = v42;
      v19 = v43;
      v8 = v44;
      v10 = v45;
      v18 = v47;
      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v12)
  {
    return 0;
  }

  if (v6)
  {
    if (!v15)
    {
      return 0;
    }

    if (v4 != v13 || v6 != v15)
    {
      v46 = v9;
      v48 = v17;
      v29 = v16;
      v30 = v7;
      v31 = v5;
      v32 = v14;
      v33 = sub_21CD841A4();
      v14 = v32;
      v9 = v46;
      v17 = v48;
      v5 = v31;
      v7 = v30;
      v16 = v29;
      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v15)
  {
    return 0;
  }

  if (v7)
  {
    if (!v17)
    {
      return 0;
    }

    if (v5 != v14 || v7 != v17)
    {
      v34 = v18;
      v35 = v9;
      v36 = v16;
      v37 = sub_21CD841A4();
      v16 = v36;
      v9 = v35;
      v18 = v34;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v10)
  {
    if (!v18)
    {
      return 0;
    }

    if (v8 != v16 || v10 != v18)
    {
      v38 = v9;
      v39 = sub_21CD841A4();
      v9 = v38;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v18)
  {
    return 0;
  }

  if (v11)
  {
    if (v20 && (v9 == v19 && v11 == v20 || (sub_21CD841A4() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v20)
  {
    return 1;
  }

  return 0;
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV21AAMVADrivingPrivilegeV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19320, &qword_21CD893F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = (&v27 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19330, &qword_21CD893F8);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v20 = &v27 - v19;
  v21 = *(v18 + 56);
  sub_21CCD1750(a1, &v27 - v19, &qword_27CE19320, &qword_21CD893F0);
  sub_21CCD1750(a2, &v20[v21], &qword_27CE19320, &qword_21CD893F0);
  v22 = *(v5 + 48);
  if (v22(v20, 1, v4) == 1)
  {
    if (v22(&v20[v21], 1, v4) == 1)
    {
      sub_21CCB1928(v20, &qword_27CE19320, &qword_21CD893F0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_21CCD1750(v20, v14, &qword_27CE19320, &qword_21CD893F0);
  if (v22(&v20[v21], 1, v4) == 1)
  {
    sub_21CD55AF8(v14, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
LABEL_6:
    sub_21CCB1928(v20, &qword_27CE19330, &qword_21CD893F8);
LABEL_10:
    v25 = 0;
    return v25 & 1;
  }

  sub_21CD56A5C(&v20[v21], v9, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  v23 = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAI_AItFZ_0(v14, v9);
  sub_21CD55AF8(v9, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CD55AF8(v14, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass);
  sub_21CCB1928(v20, &qword_27CE19320, &qword_21CD893F0);
  if (!v23)
  {
    goto LABEL_10;
  }

LABEL_8:
  v24 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege(0);
  if ((sub_21CCD18E4(*(a1 + *(v24 + 20)), *(a2 + *(v24 + 20))) & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = sub_21CCD18E4(*(a1 + *(v24 + 24)), *(a2 + *(v24 + 24)));
  return v25 & 1;
}

BOOL _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV21AAMVADrivingPrivilegeV12VehicleClassV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v44[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v44[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19338, &qword_21CD89400);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v44[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v44[-v26];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_21CD841A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_21CD841A4() & 1) == 0)
  {
    return 0;
  }

  v46 = v15;
  v48 = v24;
  v49 = v9;
  v47 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass(0);
  v28 = *(v47 + 24);
  v29 = *(v19 + 48);
  v50 = v5;
  sub_21CCD1750(a1 + v28, v27, &qword_27CE19318, &qword_21CD95170);
  v30 = v50;
  sub_21CCD1750(a2 + v28, &v27[v29], &qword_27CE19318, &qword_21CD95170);
  v31 = *(v30 + 48);
  if (v31(v27, 1, v4) != 1)
  {
    sub_21CCD1750(v27, v18, &qword_27CE19318, &qword_21CD95170);
    if (v31(&v27[v29], 1, v4) != 1)
    {
      (*(v30 + 32))(v49, &v27[v29], v4);
      sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990]);
      v45 = sub_21CD83A84();
      v33 = *(v30 + 8);
      v33(v49, v4);
      v33(v18, v4);
      sub_21CCB1928(v27, &qword_27CE19318, &qword_21CD95170);
      if ((v45 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_14;
    }

    (*(v30 + 8))(v18, v4);
LABEL_12:
    v32 = v27;
LABEL_20:
    sub_21CCB1928(v32, &qword_27CE19338, &qword_21CD89400);
    return 0;
  }

  if (v31(&v27[v29], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_21CCB1928(v27, &qword_27CE19318, &qword_21CD95170);
LABEL_14:
  v34 = *(v47 + 28);
  v35 = *(v19 + 48);
  v36 = a1 + v34;
  v37 = v48;
  sub_21CCD1750(v36, v48, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(a2 + v34, v37 + v35, &qword_27CE19318, &qword_21CD95170);
  if (v31(v37, 1, v4) == 1)
  {
    if (v31((v37 + v35), 1, v4) == 1)
    {
      sub_21CCB1928(v37, &qword_27CE19318, &qword_21CD95170);
      return 1;
    }

    goto LABEL_19;
  }

  v38 = v46;
  sub_21CCD1750(v37, v46, &qword_27CE19318, &qword_21CD95170);
  if (v31((v37 + v35), 1, v4) == 1)
  {
    (*(v50 + 8))(v38, v4);
LABEL_19:
    v32 = v37;
    goto LABEL_20;
  }

  v41 = v49;
  v40 = v50;
  (*(v50 + 32))(v49, v37 + v35, v4);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990]);
  v42 = sub_21CD83A84();
  v43 = *(v40 + 8);
  v43(v41, v4);
  v43(v38, v4);
  sub_21CCB1928(v37, &qword_27CE19318, &qword_21CD95170);
  return (v42 & 1) != 0;
}

uint64_t _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16DrivingPrivilegeV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  v4 = sub_21CD83504();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v48[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v15 = &v48[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v48[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19338, &qword_21CD89400);
  v20 = *(*(v19 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v24 = &v48[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v48[-v26];
  v28 = *a1;
  v29 = a1[1];
  v55 = a1;
  if ((v28 != *a2 || v29 != a2[1]) && (sub_21CD841A4() & 1) == 0)
  {
    goto LABEL_18;
  }

  v50 = v15;
  v51 = v9;
  v52 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege(0);
  v30 = *(v52 + 20);
  v31 = *(v19 + 48);
  v54 = v5;
  sub_21CCD1750(v55 + v30, v27, &qword_27CE19318, &qword_21CD95170);
  v53 = a2;
  v32 = v54;
  sub_21CCD1750(a2 + v30, &v27[v31], &qword_27CE19318, &qword_21CD95170);
  v33 = *(v32 + 48);
  if (v33(v27, 1, v4) != 1)
  {
    sub_21CCD1750(v27, v18, &qword_27CE19318, &qword_21CD95170);
    if (v33(&v27[v31], 1, v4) != 1)
    {
      v35 = v51;
      (*(v32 + 32))(v51, &v27[v31], v4);
      sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990]);
      v49 = sub_21CD83A84();
      v36 = *(v32 + 8);
      v36(v35, v4);
      v36(v18, v4);
      sub_21CCB1928(v27, &qword_27CE19318, &qword_21CD95170);
      if ((v49 & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_11;
    }

    (*(v32 + 8))(v18, v4);
LABEL_9:
    v34 = v27;
LABEL_17:
    sub_21CCB1928(v34, &qword_27CE19338, &qword_21CD89400);
    goto LABEL_18;
  }

  if (v33(&v27[v31], 1, v4) != 1)
  {
    goto LABEL_9;
  }

  sub_21CCB1928(v27, &qword_27CE19318, &qword_21CD95170);
LABEL_11:
  v37 = v52;
  v38 = *(v52 + 24);
  v39 = *(v19 + 48);
  sub_21CCD1750(v55 + v38, v24, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v53 + v38, &v24[v39], &qword_27CE19318, &qword_21CD95170);
  if (v33(v24, 1, v4) == 1)
  {
    if (v33(&v24[v39], 1, v4) == 1)
    {
      sub_21CCB1928(v24, &qword_27CE19318, &qword_21CD95170);
LABEL_21:
      v41 = sub_21CCCD8E4(*(v55 + *(v37 + 28)), *(v53 + *(v37 + 28)));
      return v41 & 1;
    }

    goto LABEL_16;
  }

  v40 = v50;
  sub_21CCD1750(v24, v50, &qword_27CE19318, &qword_21CD95170);
  if (v33(&v24[v39], 1, v4) == 1)
  {
    (*(v54 + 8))(v40, v4);
LABEL_16:
    v34 = v24;
    goto LABEL_17;
  }

  v43 = v54;
  v44 = &v24[v39];
  v45 = v51;
  (*(v54 + 32))(v51, v44, v4);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990]);
  v46 = sub_21CD83A84();
  v47 = *(v43 + 8);
  v47(v45, v4);
  v47(v40, v4);
  sub_21CCB1928(v24, &qword_27CE19318, &qword_21CD95170);
  if (v46)
  {
    goto LABEL_21;
  }

LABEL_18:
  v41 = 0;
  return v41 & 1;
}

BOOL _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B628, &qword_21CD98510);
  v223 = *(v221 - 8);
  v4 = *(v223 + 64);
  MEMORY[0x28223BE20](v221, v5);
  v216 = &v208 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D8, &qword_21CD95208);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v217 = &v208 - v10;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BB78, &qword_21CD98110);
  v11 = *(*(v219 - 8) + 64);
  MEMORY[0x28223BE20](v219, v12);
  v220 = &v208 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B618, &unk_21CD95220);
  v15 = *(v14 - 8);
  v226 = v14;
  v227 = v15;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v218 = &v208 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B5D0, &qword_21CD95200);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8, v21);
  v222 = &v208 - v22;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BB80, &qword_21CD98118);
  v23 = *(*(v224 - 8) + 64);
  MEMORY[0x28223BE20](v224, v24);
  v225 = &v208 - v25;
  v26 = sub_21CD83504();
  v27 = *(v26 - 8);
  v232 = v26;
  v233 = v27;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26, v29);
  v228 = &v208 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19318, &qword_21CD95170);
  v32 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31 - 8, v33);
  v212 = &v208 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v34, v36);
  v213 = &v208 - v38;
  MEMORY[0x28223BE20](v37, v39);
  v229 = &v208 - v40;
  v231 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE19338, &qword_21CD89400);
  v41 = *(*(v231 - 8) + 64);
  v43 = MEMORY[0x28223BE20](v231, v42);
  v214 = &v208 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v43, v45);
  v215 = &v208 - v47;
  MEMORY[0x28223BE20](v46, v48);
  v230 = &v208 - v49;
  v50 = sub_21CD837F4();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x28223BE20](v50, v53);
  v55 = &v208 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for MobileDocumentType.Identifier(0);
  v57 = *(*(v56 - 8) + 64);
  MEMORY[0x28223BE20](v56 - 8, v58);
  v60 = &v208 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE18E78, &qword_21CD88450);
  v62 = *(*(v61 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v61 - 8, v63);
  v66 = &v208 - v65;
  v67 = *(v64 + 56);
  v235 = a1;
  sub_21CD568B8(a1, &v208 - v65, type metadata accessor for MobileDocumentType.Identifier);
  v234 = a2;
  sub_21CD568B8(a2, &v66[v67], type metadata accessor for MobileDocumentType.Identifier);
  v68 = *(v51 + 48);
  v69 = v68(v66, 2, v50);
  if (v69)
  {
    if (v69 == 1)
    {
      if (v68(&v66[v67], 2, v50) == 1)
      {
        goto LABEL_11;
      }
    }

    else if (v68(&v66[v67], 2, v50) == 2)
    {
      goto LABEL_11;
    }

LABEL_8:
    v70 = &qword_27CE18E78;
    v71 = &qword_21CD88450;
LABEL_9:
    sub_21CCB1928(v66, v70, v71);
    return 0;
  }

  sub_21CD568B8(v66, v60, type metadata accessor for MobileDocumentType.Identifier);
  if (v68(&v66[v67], 2, v50))
  {
    (*(v51 + 8))(v60, v50);
    goto LABEL_8;
  }

  (*(v51 + 32))(v55, &v66[v67], v50);
  v72 = MEMORY[0x21CF17230](v60, v55);
  v73 = *(v51 + 8);
  v73(v55, v50);
  v73(v60, v50);
  if ((v72 & 1) == 0)
  {
    sub_21CD55AF8(v66, type metadata accessor for MobileDocumentType.Identifier);
    return 0;
  }

LABEL_11:
  sub_21CD55AF8(v66, type metadata accessor for MobileDocumentType.Identifier);
  v74 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v75 = v74[5];
  v77 = v234;
  v76 = v235;
  if ((sub_21CD835B4() & 1) == 0)
  {
    return 0;
  }

  v78 = v74[6];
  v79 = *(v76 + v78);
  v80 = *(v77 + v78);
  if (v79 == 5)
  {
    if (v80 != 5)
    {
      return 0;
    }
  }

  else if (v79 != v80)
  {
    return 0;
  }

  v81 = v74[7];
  v83 = *(v76 + v81);
  v82 = *(v76 + v81 + 8);
  v84 = (v77 + v81);
  v86 = *v84;
  v85 = v84[1];
  if (v82 >> 60 == 15)
  {
    if (v85 >> 60 == 15)
    {
      sub_21CC96064(v83, v82);
      sub_21CC96064(v86, v85);
      sub_21CC95F8C(v83, v82);
      goto LABEL_24;
    }

LABEL_21:
    sub_21CC96064(v83, v82);
    sub_21CC96064(v86, v85);
    sub_21CC95F8C(v83, v82);
    sub_21CC95F8C(v86, v85);
    return 0;
  }

  if (v85 >> 60 == 15)
  {
    goto LABEL_21;
  }

  sub_21CC96064(v83, v82);
  sub_21CC96064(v86, v85);
  v88 = sub_21CD23300(v83, v82, v86, v85);
  sub_21CC95F8C(v86, v85);
  sub_21CC95F8C(v83, v82);
  if ((v88 & 1) == 0)
  {
    return 0;
  }

LABEL_24:
  v89 = v74[8];
  v90 = (v76 + v89);
  v91 = *(v76 + v89 + 8);
  v92 = (v77 + v89);
  v93 = *(v77 + v89 + 8);
  if (v91)
  {
    if (!v93)
    {
      return 0;
    }
  }

  else
  {
    if (*v90 != *v92)
    {
      LOBYTE(v93) = 1;
    }

    if (v93)
    {
      return 0;
    }
  }

  if ((sub_21CCFBAF4(*(v76 + v74[9]), *(v77 + v74[9])) & 1) == 0)
  {
    return 0;
  }

  v94 = v74[10];
  v66 = v230;
  v95 = *(v231 + 48);
  sub_21CCD1750(v76 + v94, v230, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v77 + v94, &v66[v95], &qword_27CE19318, &qword_21CD95170);
  v96 = v232;
  v98 = v233 + 48;
  v97 = *(v233 + 48);
  if (v97(v66, 1, v232) == 1)
  {
    if (v97(&v66[v95], 1, v96) == 1)
    {
      v209 = v98;
      v210 = v97;
      sub_21CCB1928(v66, &qword_27CE19318, &qword_21CD95170);
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v99 = v229;
  sub_21CCD1750(v66, v229, &qword_27CE19318, &qword_21CD95170);
  if (v97(&v66[v95], 1, v96) == 1)
  {
    (*(v233 + 8))(v99, v96);
LABEL_36:
    v70 = &qword_27CE19338;
    v71 = &qword_21CD89400;
    goto LABEL_9;
  }

  v209 = v98;
  v210 = v97;
  v100 = v233;
  v101 = *(v233 + 32);
  v102 = v99;
  v211 = v74;
  v103 = v228;
  v101(v228, &v66[v95], v96);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990]);
  v104 = v96;
  v105 = sub_21CD83A84();
  v106 = *(v100 + 8);
  v107 = v103;
  v74 = v211;
  v106(v107, v104);
  v106(v102, v104);
  sub_21CCB1928(v66, &qword_27CE19318, &qword_21CD95170);
  if ((v105 & 1) == 0)
  {
    return 0;
  }

LABEL_38:
  v108 = (v76 + v74[11]);
  v109 = v108[1];
  v110 = v108[3];
  v267 = v108[2];
  v268 = v110;
  v111 = v108[3];
  v269 = v108[4];
  v112 = v108[1];
  v266[0] = *v108;
  v266[1] = v112;
  v211 = v74;
  v113 = (v77 + v74[11]);
  v114 = v113[3];
  v273 = v113[4];
  v115 = v113[3];
  v116 = v113[1];
  v271 = v113[2];
  v272 = v115;
  v117 = v113[1];
  v270[0] = *v113;
  v270[1] = v117;
  v262 = v109;
  v263 = v267;
  v118 = v108[4];
  v264 = v111;
  v265 = v118;
  v119 = v113[4];
  v260 = v114;
  v261 = v119;
  v120 = v266[0];
  v121 = v270[0];
  v258 = v116;
  v259 = v271;
  if (*(&v266[0] + 1) == 1)
  {
    if (*(&v270[0] + 1) == 1)
    {
      *&v248 = *&v266[0];
      *(&v248 + 1) = 1;
      v122 = v108[2];
      v249 = v108[1];
      v250 = v122;
      v123 = v108[4];
      v251 = v108[3];
      v252 = v123;
      sub_21CCD1750(v266, &v243, &qword_27CE1B5C8, &qword_21CD951F8);
      sub_21CCD1750(v270, &v243, &qword_27CE1B5C8, &qword_21CD951F8);
      sub_21CCB1928(&v248, &qword_27CE1B5C8, &qword_21CD951F8);
      goto LABEL_46;
    }

    sub_21CCD1750(v266, &v248, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CCD1750(v270, &v248, &qword_27CE1B5C8, &qword_21CD951F8);
LABEL_44:
    v248 = v120;
    v249 = v262;
    v250 = v263;
    v251 = v264;
    v252 = v265;
    v253 = v121;
    v254 = v258;
    v255 = v259;
    v256 = v260;
    v257 = v261;
    sub_21CCB1928(&v248, &qword_27CE1BB88, &unk_21CD98120);
    return 0;
  }

  v248 = v266[0];
  v124 = v108[2];
  v249 = v108[1];
  v250 = v124;
  v125 = v108[4];
  v251 = v108[3];
  v252 = v125;
  v245 = v124;
  v246 = v251;
  v247 = v125;
  v243 = v266[0];
  v244 = v249;
  if (*(&v270[0] + 1) == 1)
  {
    v240 = v250;
    v241 = v251;
    v242 = v252;
    v238 = v248;
    v239 = v249;
    sub_21CCD1750(v266, v237, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CCD1750(v270, v237, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CCD1750(&v248, v237, &qword_27CE1B5C8, &qword_21CD951F8);
    sub_21CD55BE4(&v238);
    goto LABEL_44;
  }

  v126 = v113[2];
  v239 = v113[1];
  v240 = v126;
  v127 = v113[4];
  v241 = v113[3];
  v242 = v127;
  v238 = v270[0];
  v128 = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV7AddressV2eeoiySbAG_AGtFZ_0(&v243, &v238);
  v236[2] = v240;
  v236[3] = v241;
  v236[4] = v242;
  v236[0] = v238;
  v236[1] = v239;
  sub_21CCD1750(v266, v237, &qword_27CE1B5C8, &qword_21CD951F8);
  sub_21CCD1750(v270, v237, &qword_27CE1B5C8, &qword_21CD951F8);
  sub_21CCD1750(&v248, v237, &qword_27CE1B5C8, &qword_21CD951F8);
  sub_21CD55BE4(v236);
  v237[2] = v245;
  v237[3] = v246;
  v237[4] = v247;
  v237[0] = v243;
  v237[1] = v244;
  sub_21CD55BE4(v237);
  v238 = v120;
  v239 = v262;
  v240 = v263;
  v241 = v264;
  v242 = v265;
  sub_21CCB1928(&v238, &qword_27CE1B5C8, &qword_21CD951F8);
  if ((v128 & 1) == 0)
  {
    return 0;
  }

LABEL_46:
  v129 = v211;
  v130 = v211[12];
  v131 = v225;
  v132 = *(v224 + 48);
  v133 = v235;
  sub_21CCD1750(v235 + v130, v225, &qword_27CE1B5D0, &qword_21CD95200);
  sub_21CCD1750(v77 + v130, v131 + v132, &qword_27CE1B5D0, &qword_21CD95200);
  v134 = v226;
  v135 = *(v227 + 48);
  if (v135(v131, 1, v226) == 1)
  {
    if (v135(v131 + v132, 1, v134) == 1)
    {
      sub_21CCB1928(v131, &qword_27CE1B5D0, &qword_21CD95200);
      goto LABEL_53;
    }

LABEL_51:
    sub_21CCB1928(v131, &qword_27CE1BB80, &qword_21CD98118);
    return 0;
  }

  v136 = v222;
  sub_21CCD1750(v131, v222, &qword_27CE1B5D0, &qword_21CD95200);
  if (v135(v131 + v132, 1, v134) == 1)
  {
    (*(v227 + 8))(v136, v134);
    goto LABEL_51;
  }

  v137 = v227;
  v138 = v131 + v132;
  v139 = v218;
  (*(v227 + 32))(v218, v138, v134);
  sub_21CCA6B04(&qword_27CE1BB98, &qword_27CE1B618, &unk_21CD95220);
  v140 = sub_21CD83A84();
  v141 = *(v137 + 8);
  v141(v139, v134);
  v141(v136, v134);
  sub_21CCB1928(v131, &qword_27CE1B5D0, &qword_21CD95200);
  v133 = v235;
  if ((v140 & 1) == 0)
  {
    return 0;
  }

LABEL_53:
  v142 = v129[13];
  v66 = v220;
  v143 = *(v219 + 48);
  sub_21CCD1750(v133 + v142, v220, &qword_27CE1B5D8, &qword_21CD95208);
  sub_21CCD1750(v77 + v142, &v66[v143], &qword_27CE1B5D8, &qword_21CD95208);
  v144 = *(v223 + 48);
  v145 = v221;
  if (v144(v66, 1, v221) == 1)
  {
    if (v144(&v66[v143], 1, v145) == 1)
    {
      sub_21CCB1928(v66, &qword_27CE1B5D8, &qword_21CD95208);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v146 = v217;
  sub_21CCD1750(v66, v217, &qword_27CE1B5D8, &qword_21CD95208);
  if (v144(&v66[v143], 1, v145) == 1)
  {
    (*(v223 + 8))(v146, v145);
LABEL_58:
    v70 = &qword_27CE1BB78;
    v71 = &qword_21CD98110;
    goto LABEL_9;
  }

  v147 = v223;
  v148 = &v66[v143];
  v149 = v216;
  (*(v223 + 32))(v216, v148, v145);
  sub_21CCA6B04(&qword_27CE1BB90, &qword_27CE1B628, &qword_21CD98510);
  LODWORD(v230) = sub_21CD83A84();
  v150 = *(v147 + 8);
  v150(v149, v145);
  v150(v146, v145);
  sub_21CCB1928(v66, &qword_27CE1B5D8, &qword_21CD95208);
  if ((v230 & 1) == 0)
  {
    return 0;
  }

LABEL_60:
  v151 = v129[14];
  v152 = *(v133 + v151);
  v153 = *(v77 + v151);
  if (v152 == 10)
  {
    if (v153 != 10)
    {
      return 0;
    }
  }

  else if (v152 != v153)
  {
    return 0;
  }

  v154 = v129[15];
  v155 = *(v133 + v154);
  v156 = *(v77 + v154);
  if (v155 == 10)
  {
    if (v156 != 10)
    {
      return 0;
    }
  }

  else if (v155 != v156)
  {
    return 0;
  }

  v157 = v211[16];
  v158 = *(v235 + v157);
  v159 = *(v234 + v157);
  if (v158 == 2)
  {
    if (v159 != 2)
    {
      return 0;
    }
  }

  else if (v159 == 2 || ((v159 ^ v158) & 1) != 0)
  {
    return 0;
  }

  v160 = v211[17];
  v161 = *(v235 + v160);
  v162 = *(v234 + v160);
  if (v161 == 2)
  {
    if (v162 != 2)
    {
      return 0;
    }
  }

  else if (v162 == 2 || ((v162 ^ v161) & 1) != 0)
  {
    return 0;
  }

  v163 = v211[18];
  v164 = *(v235 + v163);
  v165 = *(v235 + v163 + 8);
  v166 = *(v235 + v163 + 16);
  v167 = *(v235 + v163 + 24);
  v169 = *(v235 + v163 + 32);
  v168 = *(v235 + v163 + 40);
  v170 = (v234 + v163);
  v171 = *v170;
  v172 = v170[1];
  v174 = v170[2];
  v173 = v170[3];
  v176 = v170[4];
  v175 = v170[5];
  v229 = v173;
  v230 = v176;
  v227 = v175;
  if (v165 == 1)
  {
    sub_21CD56ECC(v164, 1);
    if (v172 == 1)
    {
      sub_21CD56ECC(v171, 1);
      sub_21CD57118(v164, 1);
      goto LABEL_86;
    }

    sub_21CD56ECC(v171, v172);
LABEL_84:
    sub_21CD57118(v164, v165);
    sub_21CD57118(v171, v172);
    return 0;
  }

  *&v248 = v164;
  *(&v248 + 1) = v165;
  *&v249 = v166;
  *(&v249 + 1) = v167;
  *&v250 = v169;
  *(&v250 + 1) = v168;
  if (v172 == 1)
  {
    v221 = v169;
    sub_21CD56ECC(v164, v165);
    sub_21CD56ECC(v171, 1);
    sub_21CD56ECC(v164, v165);

    goto LABEL_84;
  }

  *&v243 = v171;
  *(&v243 + 1) = v172;
  v222 = v174;
  *&v244 = v174;
  *(&v244 + 1) = v229;
  *&v245 = v230;
  *(&v245 + 1) = v227;
  LODWORD(v226) = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV16IssuingAuthorityV2eeoiySbAG_AGtFZ_0(&v248, &v243);
  v223 = *(&v243 + 1);
  v224 = *(&v244 + 1);
  v225 = *(&v245 + 1);
  sub_21CD56ECC(v164, v165);
  sub_21CD56ECC(v171, v172);
  sub_21CD56ECC(v164, v165);

  sub_21CD57118(v164, v165);
  if ((v226 & 1) == 0)
  {
    return 0;
  }

LABEL_86:
  if ((sub_21CCCDA20(*(v235 + v211[19]), *(v234 + v211[19])) & 1) == 0 || (sub_21CCCE260(*(v235 + v211[20]), *(v234 + v211[20])) & 1) == 0)
  {
    return 0;
  }

  v177 = v211[21];
  v178 = *(v235 + v177);
  v179 = *(v234 + v177);
  if (v178 == 2)
  {
    if (v179 != 2)
    {
      return 0;
    }
  }

  else if (v179 == 2 || ((v179 ^ v178) & 1) != 0)
  {
    return 0;
  }

  v180 = v211[22];
  v181 = (v235 + v180);
  v182 = *(v235 + v180 + 8);
  v183 = (v234 + v180);
  v184 = v183[1];
  if (v182)
  {
    if (!v184 || (*v181 != *v183 || v182 != v184) && (sub_21CD841A4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v184)
  {
    return 0;
  }

  v185 = v211[23];
  v186 = *(v231 + 48);
  v187 = v215;
  sub_21CCD1750(v235 + v185, v215, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v234 + v185, v187 + v186, &qword_27CE19318, &qword_21CD95170);
  if (v210(v187, 1, v232) == 1)
  {
    if (v210(v215 + v186, 1, v232) == 1)
    {
      sub_21CCB1928(v215, &qword_27CE19318, &qword_21CD95170);
      goto LABEL_107;
    }

LABEL_105:
    sub_21CCB1928(v215, &qword_27CE19338, &qword_21CD89400);
    return 0;
  }

  v188 = v215;
  sub_21CCD1750(v215, v213, &qword_27CE19318, &qword_21CD95170);
  if (v210(v188 + v186, 1, v232) == 1)
  {
    (*(v233 + 8))(v213, v232);
    goto LABEL_105;
  }

  v190 = v232;
  v189 = v233;
  v191 = v215;
  v192 = v228;
  (*(v233 + 32))(v228, v215 + v186, v232);
  sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990]);
  v193 = v213;
  v194 = sub_21CD83A84();
  v195 = *(v189 + 8);
  v195(v192, v190);
  v195(v193, v190);
  sub_21CCB1928(v191, &qword_27CE19318, &qword_21CD95170);
  if ((v194 & 1) == 0)
  {
    return 0;
  }

LABEL_107:
  v196 = v211[24];
  v197 = *(v231 + 48);
  v198 = v214;
  sub_21CCD1750(v235 + v196, v214, &qword_27CE19318, &qword_21CD95170);
  sub_21CCD1750(v234 + v196, v198 + v197, &qword_27CE19318, &qword_21CD95170);
  if (v210(v198, 1, v232) != 1)
  {
    v199 = v214;
    sub_21CCD1750(v214, v212, &qword_27CE19318, &qword_21CD95170);
    if (v210(v199 + v197, 1, v232) == 1)
    {
      (*(v233 + 8))(v212, v232);
      goto LABEL_112;
    }

    v200 = v232;
    v201 = v233;
    v202 = v214;
    v203 = v214 + v197;
    v204 = v228;
    (*(v233 + 32))(v228, v203, v232);
    sub_21CD55A5C(&qword_27CE19340, MEMORY[0x277CC8990]);
    v205 = v212;
    v206 = sub_21CD83A84();
    v207 = *(v201 + 8);
    v207(v204, v200);
    v207(v205, v200);
    sub_21CCB1928(v202, &qword_27CE19318, &qword_21CD95170);
    return (v206 & 1) != 0;
  }

  if (v210(v214 + v197, 1, v232) != 1)
  {
LABEL_112:
    sub_21CCB1928(v214, &qword_27CE19338, &qword_21CD89400);
    return 0;
  }

  sub_21CCB1928(v214, &qword_27CE19318, &qword_21CD95170);
  return 1;
}

BOOL _s7CoreIDV28MobileDocumentReaderResponseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements(0);
  v43 = *(v4 - 8);
  v5 = *(v43 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1B148, &qword_21CD94F40);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CE1BBA0, &unk_21CD98130);
  v15 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v19 = &v40 - v18;
  v21 = *a1;
  v20 = a1[1];
  v23 = *a2;
  v22 = a2[1];
  if (v20 >> 60 == 15)
  {
    if (v22 >> 60 != 15)
    {
      goto LABEL_10;
    }

    v41 = v8;
    v42 = v17;
    sub_21CC96064(v21, v20);
    sub_21CC96064(v23, v22);
    sub_21CC95F8C(v21, v20);
  }

  else
  {
    if (v22 >> 60 == 15)
    {
      goto LABEL_10;
    }

    v41 = v8;
    v42 = v17;
    sub_21CC96064(v21, v20);
    sub_21CC96064(v23, v22);
    v24 = sub_21CD23300(v21, v20, v23, v22);
    sub_21CC95F8C(v23, v22);
    sub_21CC95F8C(v21, v20);
    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  v21 = a1[2];
  v20 = a1[3];
  v23 = a2[2];
  v22 = a2[3];
  if (v20 >> 60 == 15)
  {
    if (v22 >> 60 == 15)
    {
      sub_21CC96064(a1[2], a1[3]);
      sub_21CC96064(v23, v22);
      sub_21CC95F8C(v21, v20);
      goto LABEL_13;
    }

LABEL_10:
    sub_21CC96064(v21, v20);
    sub_21CC96064(v23, v22);
    sub_21CC95F8C(v21, v20);
    sub_21CC95F8C(v23, v22);
    return 0;
  }

  if (v22 >> 60 == 15)
  {
    goto LABEL_10;
  }

  sub_21CC96064(a1[2], a1[3]);
  sub_21CC96064(v23, v22);
  v26 = sub_21CD23300(v21, v20, v23, v22);
  sub_21CC95F8C(v23, v22);
  sub_21CC95F8C(v21, v20);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v27 = type metadata accessor for MobileDocumentReaderResponse(0);
  v28 = *(v27 + 24);
  v29 = *(v42 + 48);
  sub_21CCD1750(a1 + v28, v19, &qword_27CE1B148, &qword_21CD94F40);
  sub_21CCD1750(a2 + v28, &v19[v29], &qword_27CE1B148, &qword_21CD94F40);
  v30 = *(v43 + 48);
  if (v30(v19, 1, v4) == 1)
  {
    if (v30(&v19[v29], 1, v4) == 1)
    {
      sub_21CCB1928(v19, &qword_27CE1B148, &qword_21CD94F40);
      goto LABEL_20;
    }

LABEL_18:
    sub_21CCB1928(v19, &qword_27CE1BBA0, &unk_21CD98130);
    return 0;
  }

  sub_21CCD1750(v19, v13, &qword_27CE1B148, &qword_21CD94F40);
  if (v30(&v19[v29], 1, v4) == 1)
  {
    sub_21CD55AF8(v13, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
    goto LABEL_18;
  }

  v31 = v41;
  sub_21CD56A5C(&v19[v29], v41, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  v32 = _s7CoreIDV28MobileDocumentReaderResponseV0c8IdentityD8ElementsV2eeoiySbAE_AEtFZ_0(v13, v31);
  sub_21CD55AF8(v31, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  sub_21CD55AF8(v13, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements);
  sub_21CCB1928(v19, &qword_27CE1B148, &qword_21CD94F40);
  if (!v32)
  {
    return 0;
  }

LABEL_20:
  v33 = *(v27 + 28);
  v34 = (a1 + v33);
  v35 = *(a1 + v33 + 8);
  v36 = (a2 + v33);
  v37 = v36[1];
  if (v35)
  {
    if (v37)
    {
      if (*v34 == *v36 && v35 == v37)
      {
        return 1;
      }

      v38 = v36[1];
      return (sub_21CD841A4() & 1) != 0;
    }

LABEL_28:

    return 0;
  }

  if (v37)
  {
    v39 = v36[1];
    goto LABEL_28;
  }

  return 1;
}

unint64_t sub_21CD55994()
{
  result = qword_27CE1B158;
  if (!qword_27CE1B158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B158);
  }

  return result;
}

unint64_t sub_21CD55A08()
{
  result = qword_27CE1B168;
  if (!qword_27CE1B168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B168);
  }

  return result;
}

uint64_t sub_21CD55A5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_21CD55AA4()
{
  result = qword_27CE1B180;
  if (!qword_27CE1B180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B180);
  }

  return result;
}

uint64_t sub_21CD55AF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_21CD55B58()
{
  result = qword_27CE1B190;
  if (!qword_27CE1B190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B190);
  }

  return result;
}

unint64_t sub_21CD55C14()
{
  result = qword_27CE1B1F8;
  if (!qword_27CE1B1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B1F8);
  }

  return result;
}

unint64_t sub_21CD55C68()
{
  result = qword_27CE1B200;
  if (!qword_27CE1B200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B200);
  }

  return result;
}

unint64_t sub_21CD55CBC()
{
  result = qword_27CE1B208;
  if (!qword_27CE1B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B208);
  }

  return result;
}

unint64_t sub_21CD55D10()
{
  result = qword_27CE1B210;
  if (!qword_27CE1B210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B210);
  }

  return result;
}

unint64_t sub_21CD55D64()
{
  result = qword_27CE1B218;
  if (!qword_27CE1B218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B218);
  }

  return result;
}

unint64_t sub_21CD55DB8()
{
  result = qword_27CE1B220;
  if (!qword_27CE1B220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B220);
  }

  return result;
}

unint64_t sub_21CD55E0C()
{
  result = qword_27CE1B228;
  if (!qword_27CE1B228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B228);
  }

  return result;
}

unint64_t sub_21CD55E60()
{
  result = qword_27CE1B230;
  if (!qword_27CE1B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B230);
  }

  return result;
}

unint64_t sub_21CD55EB4()
{
  result = qword_27CE1B238;
  if (!qword_27CE1B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B238);
  }

  return result;
}

unint64_t sub_21CD55F08()
{
  result = qword_27CE1B240;
  if (!qword_27CE1B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B240);
  }

  return result;
}

unint64_t sub_21CD55F5C()
{
  result = qword_27CE1B248;
  if (!qword_27CE1B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B248);
  }

  return result;
}

unint64_t sub_21CD55FB0()
{
  result = qword_27CE1B300;
  if (!qword_27CE1B300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B300);
  }

  return result;
}

unint64_t sub_21CD56004()
{
  result = qword_27CE1B308;
  if (!qword_27CE1B308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B308);
  }

  return result;
}

unint64_t sub_21CD56058()
{
  result = qword_27CE1B310;
  if (!qword_27CE1B310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B310);
  }

  return result;
}

unint64_t sub_21CD560AC()
{
  result = qword_27CE1B318;
  if (!qword_27CE1B318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B318);
  }

  return result;
}

unint64_t sub_21CD56100()
{
  result = qword_27CE1B320;
  if (!qword_27CE1B320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B320);
  }

  return result;
}

unint64_t sub_21CD56154()
{
  result = qword_27CE1B328;
  if (!qword_27CE1B328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B328);
  }

  return result;
}

unint64_t sub_21CD561A8()
{
  result = qword_27CE1B330;
  if (!qword_27CE1B330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B330);
  }

  return result;
}

unint64_t sub_21CD561FC()
{
  result = qword_27CE1B338;
  if (!qword_27CE1B338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B338);
  }

  return result;
}

unint64_t sub_21CD56250()
{
  result = qword_27CE1B340;
  if (!qword_27CE1B340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B340);
  }

  return result;
}

unint64_t sub_21CD562A4()
{
  result = qword_27CE1B348;
  if (!qword_27CE1B348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B348);
  }

  return result;
}

unint64_t sub_21CD562F8()
{
  result = qword_27CE1B350;
  if (!qword_27CE1B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B350);
  }

  return result;
}

unint64_t sub_21CD5634C()
{
  result = qword_27CE1B3E0;
  if (!qword_27CE1B3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3E0);
  }

  return result;
}

unint64_t sub_21CD563A0()
{
  result = qword_27CE1B3E8;
  if (!qword_27CE1B3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3E8);
  }

  return result;
}

unint64_t sub_21CD563F4()
{
  result = qword_27CE1B3F0;
  if (!qword_27CE1B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3F0);
  }

  return result;
}

unint64_t sub_21CD56448()
{
  result = qword_27CE1B3F8;
  if (!qword_27CE1B3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B3F8);
  }

  return result;
}

unint64_t sub_21CD5649C()
{
  result = qword_27CE1B400;
  if (!qword_27CE1B400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B400);
  }

  return result;
}

unint64_t sub_21CD564F0()
{
  result = qword_27CE1B408;
  if (!qword_27CE1B408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B408);
  }

  return result;
}

unint64_t sub_21CD56544()
{
  result = qword_27CE1B458;
  if (!qword_27CE1B458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B458);
  }

  return result;
}

unint64_t sub_21CD56598()
{
  result = qword_27CE1B460;
  if (!qword_27CE1B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B460);
  }

  return result;
}

unint64_t sub_21CD565EC()
{
  result = qword_27CE1B468;
  if (!qword_27CE1B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B468);
  }

  return result;
}

unint64_t sub_21CD56640()
{
  result = qword_27CE1B490;
  if (!qword_27CE1B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B490);
  }

  return result;
}

unint64_t sub_21CD566B4()
{
  result = qword_27CE1B4A8;
  if (!qword_27CE1B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4A8);
  }

  return result;
}

unint64_t sub_21CD56708()
{
  result = qword_27CE1B4C0;
  if (!qword_27CE1B4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B4B8, &qword_21CD95180);
    sub_21CD5678C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4C0);
  }

  return result;
}

unint64_t sub_21CD5678C()
{
  result = qword_27CE1B4C8;
  if (!qword_27CE1B4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4C8);
  }

  return result;
}

unint64_t sub_21CD567E0()
{
  result = qword_27CE1B4E0;
  if (!qword_27CE1B4E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B4B8, &qword_21CD95180);
    sub_21CD56864();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4E0);
  }

  return result;
}

unint64_t sub_21CD56864()
{
  result = qword_27CE1B4E8;
  if (!qword_27CE1B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4E8);
  }

  return result;
}

uint64_t sub_21CD568B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CD56940()
{
  result = qword_27CE1B4F8;
  if (!qword_27CE1B4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B4F8);
  }

  return result;
}

unint64_t sub_21CD56994()
{
  result = qword_27CE1B510;
  if (!qword_27CE1B510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B510);
  }

  return result;
}

unint64_t sub_21CD569E8()
{
  result = qword_27CE1B528;
  if (!qword_27CE1B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B528);
  }

  return result;
}

uint64_t sub_21CD56A5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21CD56AC4()
{
  result = qword_27CE1B540;
  if (!qword_27CE1B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B540);
  }

  return result;
}

unint64_t sub_21CD56B18()
{
  result = qword_27CE1B558;
  if (!qword_27CE1B558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B550, &qword_21CD951D0);
    sub_21CD56B9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B558);
  }

  return result;
}

unint64_t sub_21CD56B9C()
{
  result = qword_27CE1B560;
  if (!qword_27CE1B560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B560);
  }

  return result;
}

unint64_t sub_21CD56BF0()
{
  result = qword_27CE1B570;
  if (!qword_27CE1B570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B568, &qword_21CD951D8);
    sub_21CD56C74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B570);
  }

  return result;
}

unint64_t sub_21CD56C74()
{
  result = qword_27CE1B578;
  if (!qword_27CE1B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B578);
  }

  return result;
}

unint64_t sub_21CD56CC8()
{
  result = qword_27CE1B590;
  if (!qword_27CE1B590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B550, &qword_21CD951D0);
    sub_21CD56D4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B590);
  }

  return result;
}

unint64_t sub_21CD56D4C()
{
  result = qword_27CE1B598;
  if (!qword_27CE1B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B598);
  }

  return result;
}

unint64_t sub_21CD56DA0()
{
  result = qword_27CE1B5A0;
  if (!qword_27CE1B5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B568, &qword_21CD951D8);
    sub_21CD56E24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5A0);
  }

  return result;
}

unint64_t sub_21CD56E24()
{
  result = qword_27CE1B5A8;
  if (!qword_27CE1B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5A8);
  }

  return result;
}

unint64_t sub_21CD56E78()
{
  result = qword_27CE1B5B8;
  if (!qword_27CE1B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5B8);
  }

  return result;
}

uint64_t sub_21CD56ECC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_21CD56F20()
{
  result = qword_27CE1B5E8;
  if (!qword_27CE1B5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5E8);
  }

  return result;
}

unint64_t sub_21CD56F74()
{
  result = qword_27CE1B5F8;
  if (!qword_27CE1B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B5F8);
  }

  return result;
}

unint64_t sub_21CD56FC8()
{
  result = qword_27CE1B610;
  if (!qword_27CE1B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B610);
  }

  return result;
}

unint64_t sub_21CD5701C()
{
  result = qword_27CE1B638;
  if (!qword_27CE1B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B638);
  }

  return result;
}

unint64_t sub_21CD57070()
{
  result = qword_27CE1B640;
  if (!qword_27CE1B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B640);
  }

  return result;
}

unint64_t sub_21CD570C4()
{
  result = qword_27CE1B648;
  if (!qword_27CE1B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B648);
  }

  return result;
}

uint64_t sub_21CD57118(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_21CD5716C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B668, &qword_21CD95238);
    sub_21CD55A5C(a2, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD57208()
{
  result = qword_27CE1B680;
  if (!qword_27CE1B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B680);
  }

  return result;
}

unint64_t sub_21CD5725C()
{
  result = qword_27CE1B6B0;
  if (!qword_27CE1B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6B0);
  }

  return result;
}

uint64_t sub_21CD572B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B600, &qword_21CD95218);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD57320()
{
  result = qword_27CE1B6C0;
  if (!qword_27CE1B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6C0);
  }

  return result;
}

unint64_t sub_21CD57374()
{
  result = qword_27CE1B6D8;
  if (!qword_27CE1B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6D8);
  }

  return result;
}

unint64_t sub_21CD573C8()
{
  result = qword_27CE1B6E0;
  if (!qword_27CE1B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6E0);
  }

  return result;
}

unint64_t sub_21CD5741C()
{
  result = qword_27CE1B6E8;
  if (!qword_27CE1B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B6E8);
  }

  return result;
}

uint64_t sub_21CD57470(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CE1B650, &qword_21CD95230);
    sub_21CD55A5C(a2, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21CD5750C()
{
  result = qword_27CE1B710;
  if (!qword_27CE1B710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B710);
  }

  return result;
}

unint64_t sub_21CD575AC()
{
  result = qword_27CE1B720;
  if (!qword_27CE1B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B720);
  }

  return result;
}

unint64_t sub_21CD57604()
{
  result = qword_27CE1B728;
  if (!qword_27CE1B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B728);
  }

  return result;
}

unint64_t sub_21CD5765C()
{
  result = qword_27CE1B730;
  if (!qword_27CE1B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B730);
  }

  return result;
}

unint64_t sub_21CD576B4()
{
  result = qword_27CE1B738;
  if (!qword_27CE1B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B738);
  }

  return result;
}

unint64_t sub_21CD5770C()
{
  result = qword_27CE1B740;
  if (!qword_27CE1B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B740);
  }

  return result;
}

unint64_t sub_21CD57764()
{
  result = qword_27CE1B748;
  if (!qword_27CE1B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B748);
  }

  return result;
}

unint64_t sub_21CD5784C()
{
  result = qword_27CE1B760;
  if (!qword_27CE1B760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B760);
  }

  return result;
}

unint64_t sub_21CD578A4()
{
  result = qword_27CE1B768;
  if (!qword_27CE1B768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B768);
  }

  return result;
}

unint64_t sub_21CD57944()
{
  result = qword_27CE1B778;
  if (!qword_27CE1B778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B778);
  }

  return result;
}

void sub_21CD57A08()
{
  sub_21CD58410(319, &qword_27CE1A6C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21CD57FE8(319, &qword_27CE1B798, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      sub_21CD58410(319, &qword_27CE1B7A0, &type metadata for MobileDocumentIssuer, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CD57B44()
{
  type metadata accessor for MobileDocumentType(319);
  if (v0 <= 0x3F)
  {
    sub_21CD835C4();
    if (v1 <= 0x3F)
    {
      sub_21CD58410(319, &qword_27CE1B7B8, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Sex, MEMORY[0x277D83D88]);
      if (v2 <= 0x3F)
      {
        sub_21CD58410(319, &qword_27CE1A6C8, MEMORY[0x277CC9318], MEMORY[0x277D83D88]);
        if (v3 <= 0x3F)
        {
          sub_21CD58410(319, &qword_27CE1B7C0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
          if (v4 <= 0x3F)
          {
            sub_21CD57F88();
            if (v5 <= 0x3F)
            {
              sub_21CD57FE8(319, &qword_27CE1B7D0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
              if (v6 <= 0x3F)
              {
                sub_21CD58410(319, &qword_27CE1B7D8, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.Address, MEMORY[0x277D83D88]);
                if (v7 <= 0x3F)
                {
                  sub_21CD5804C(319, &qword_27CE1B7E0, &qword_27CE1B618, &unk_21CD95220);
                  if (v8 <= 0x3F)
                  {
                    sub_21CD5804C(319, &qword_27CE1B7E8, &qword_27CE1B628, &qword_21CD98510);
                    if (v9 <= 0x3F)
                    {
                      sub_21CD58410(319, &qword_27CE1B7F0, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.EyeColor, MEMORY[0x277D83D88]);
                      if (v10 <= 0x3F)
                      {
                        sub_21CD58410(319, &qword_27CE1B7F8, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.HairColor, MEMORY[0x277D83D88]);
                        if (v11 <= 0x3F)
                        {
                          sub_21CD58410(319, &qword_27CE1B800, MEMORY[0x277D839B0], MEMORY[0x277D83D88]);
                          if (v12 <= 0x3F)
                          {
                            sub_21CD58410(319, &qword_27CE1B808, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.IssuingAuthority, MEMORY[0x277D83D88]);
                            if (v13 <= 0x3F)
                            {
                              sub_21CD57FE8(319, &qword_27CE1B810, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege, MEMORY[0x277D83940]);
                              if (v14 <= 0x3F)
                              {
                                sub_21CD57FE8(319, &qword_27CE1B818, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege, MEMORY[0x277D83940]);
                                if (v15 <= 0x3F)
                                {
                                  sub_21CD58410(319, &qword_27CE1B820, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DHSComplianceStatus, MEMORY[0x277D83D88]);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_21CD58410(319, &qword_280F77E38, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                                    if (v17 <= 0x3F)
                                    {
                                      swift_cvw_initStructMetadataWithLayoutString();
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
              }
            }
          }
        }
      }
    }
  }
}

void sub_21CD57F88()
{
  if (!qword_27CE1B7C8)
  {
    v0 = sub_21CD83A44();
    if (!v1)
    {
      atomic_store(v0, &qword_27CE1B7C8);
    }
  }
}

void sub_21CD57FE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21CD5804C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_21CD83EA4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_21CD580A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CD580FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_21CD581DC()
{
  sub_21CD57FE8(319, &qword_27CE1B7D0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21CD58410(319, &qword_27CE1B838, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.DrivingPrivilege.Code, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21CD582FC()
{
  sub_21CD57FE8(319, &qword_27CE1B850, type metadata accessor for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleClass, MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    sub_21CD58410(319, &qword_27CE1B858, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleRestriction, MEMORY[0x277D83940]);
    if (v1 <= 0x3F)
    {
      sub_21CD58410(319, &qword_27CE1B860, &type metadata for MobileDocumentReaderResponse.MobileIdentityDocumentElements.AAMVADrivingPrivilege.VehicleEndorsement, MEMORY[0x277D83940]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21CD58410(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_21CD58488()
{
  sub_21CD57FE8(319, &qword_27CE1B7D0, MEMORY[0x277CC8990], MEMORY[0x277D83D88]);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21CD58554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_21CD585B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MobileDocumentReaderResponse.MobileIdentityDocumentElements.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MobileDocumentReaderResponse.MobileIdentityDocumentElements.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21CD58920(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_21CD589B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_21CD58B34()
{
  result = qword_27CE1B878;
  if (!qword_27CE1B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B878);
  }

  return result;
}

unint64_t sub_21CD58B8C()
{
  result = qword_27CE1B880;
  if (!qword_27CE1B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B880);
  }

  return result;
}

unint64_t sub_21CD58BE4()
{
  result = qword_27CE1B888;
  if (!qword_27CE1B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B888);
  }

  return result;
}

unint64_t sub_21CD58C3C()
{
  result = qword_27CE1B890;
  if (!qword_27CE1B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B890);
  }

  return result;
}

unint64_t sub_21CD58C94()
{
  result = qword_27CE1B898;
  if (!qword_27CE1B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B898);
  }

  return result;
}

unint64_t sub_21CD58CEC()
{
  result = qword_27CE1B8A0;
  if (!qword_27CE1B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8A0);
  }

  return result;
}

unint64_t sub_21CD58D44()
{
  result = qword_27CE1B8A8;
  if (!qword_27CE1B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8A8);
  }

  return result;
}

unint64_t sub_21CD58D9C()
{
  result = qword_27CE1B8B0;
  if (!qword_27CE1B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8B0);
  }

  return result;
}

unint64_t sub_21CD58DF4()
{
  result = qword_27CE1B8B8;
  if (!qword_27CE1B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8B8);
  }

  return result;
}

unint64_t sub_21CD58E4C()
{
  result = qword_27CE1B8C0;
  if (!qword_27CE1B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8C0);
  }

  return result;
}

unint64_t sub_21CD58EA4()
{
  result = qword_27CE1B8C8;
  if (!qword_27CE1B8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8C8);
  }

  return result;
}

unint64_t sub_21CD58EFC()
{
  result = qword_27CE1B8D0;
  if (!qword_27CE1B8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8D0);
  }

  return result;
}

unint64_t sub_21CD58F54()
{
  result = qword_27CE1B8D8;
  if (!qword_27CE1B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8D8);
  }

  return result;
}

unint64_t sub_21CD58FAC()
{
  result = qword_27CE1B8E0;
  if (!qword_27CE1B8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8E0);
  }

  return result;
}

unint64_t sub_21CD59004()
{
  result = qword_27CE1B8E8;
  if (!qword_27CE1B8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8E8);
  }

  return result;
}

unint64_t sub_21CD5905C()
{
  result = qword_27CE1B8F0;
  if (!qword_27CE1B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8F0);
  }

  return result;
}

unint64_t sub_21CD590B4()
{
  result = qword_27CE1B8F8;
  if (!qword_27CE1B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B8F8);
  }

  return result;
}

unint64_t sub_21CD5910C()
{
  result = qword_27CE1B900;
  if (!qword_27CE1B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B900);
  }

  return result;
}

unint64_t sub_21CD59164()
{
  result = qword_27CE1B908;
  if (!qword_27CE1B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B908);
  }

  return result;
}

unint64_t sub_21CD591BC()
{
  result = qword_27CE1B910;
  if (!qword_27CE1B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B910);
  }

  return result;
}

unint64_t sub_21CD59214()
{
  result = qword_27CE1B918;
  if (!qword_27CE1B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B918);
  }

  return result;
}

unint64_t sub_21CD5926C()
{
  result = qword_27CE1B920;
  if (!qword_27CE1B920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B920);
  }

  return result;
}

unint64_t sub_21CD592C4()
{
  result = qword_27CE1B928;
  if (!qword_27CE1B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B928);
  }

  return result;
}

unint64_t sub_21CD5931C()
{
  result = qword_27CE1B930;
  if (!qword_27CE1B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B930);
  }

  return result;
}

unint64_t sub_21CD59374()
{
  result = qword_27CE1B938;
  if (!qword_27CE1B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B938);
  }

  return result;
}

unint64_t sub_21CD593CC()
{
  result = qword_27CE1B940;
  if (!qword_27CE1B940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B940);
  }

  return result;
}

unint64_t sub_21CD59424()
{
  result = qword_27CE1B948;
  if (!qword_27CE1B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B948);
  }

  return result;
}

unint64_t sub_21CD5947C()
{
  result = qword_27CE1B950;
  if (!qword_27CE1B950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B950);
  }

  return result;
}

unint64_t sub_21CD594D4()
{
  result = qword_27CE1B958;
  if (!qword_27CE1B958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B958);
  }

  return result;
}

unint64_t sub_21CD5952C()
{
  result = qword_27CE1B960;
  if (!qword_27CE1B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B960);
  }

  return result;
}

unint64_t sub_21CD59584()
{
  result = qword_27CE1B968;
  if (!qword_27CE1B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CE1B968);
  }

  return result;
}