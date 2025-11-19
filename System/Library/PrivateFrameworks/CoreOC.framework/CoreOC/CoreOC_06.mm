unint64_t sub_24600A40C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A750, &qword_2460988A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3A740, &qword_246098898);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3A750, &qword_2460988A8);
      result = sub_246007838(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_246091704();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24600A5F4(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A748, &qword_2460988A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_245F8E624(&qword_27EE3A700, &unk_246098840);
    v8 = sub_246092384();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v10, v6, &qword_27EE3A748, &qword_2460988A0);
      result = sub_245FC1BDC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_246091834();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24600A7DC()
{
  result = qword_27EE3A688;
  if (!qword_27EE3A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A688);
  }

  return result;
}

uint64_t sub_24600A830()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24600A870()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24600A8A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_245F8E624(&qword_27EE3A738, &qword_246098890);
  return v4(a1, a1 + *(v5 + 48));
}

uint64_t sub_24600A938()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_24600A964()
{
  result = qword_27EE3A6E0;
  if (!qword_27EE3A6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A6E0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ARCameraTrackingStateFlattened(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ARCameraTrackingStateFlattened(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_24600AB30()
{
  result = sub_246091704();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_24600AD1C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24600AD34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24600AD90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_24600ADE0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t sub_24600AE24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 3;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_24600AF08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_246091704();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 + 3);
  }

  return result;
}

void sub_24600AFC8()
{
  sub_246091704();
  if (v0 <= 0x3F)
  {
    sub_24600BA80(319, &qword_27EE3A6E8, &type metadata for ObjectCaptureHEICBundleWriter.Error, MEMORY[0x277D83D88]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24600B080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24600B0E4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_2460914F4();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_2460914C4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_246091724();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_24600B184(uint64_t a1, uint64_t a2, uint64_t a3, float32x2_t *a4, uint64_t a5)
{
  result = sub_2460914B4();
  if (!result)
  {
    goto LABEL_9;
  }

  v11 = result;
  result = sub_2460914E4();
  v12 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  if (__OFSUB__(a2, a1))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  sub_2460914D4();
  sub_245FFFE48(v11 + v12, a4, a5, &v14);
  if (!v5)
  {
    v13 = v14;
  }

  return v13 & 1;
}

unint64_t sub_24600B230(uint64_t *a1, float32x2_t *a2, uint64_t a3)
{
  v4 = v3;
  v28 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) <= 1)
  {
    if (!v10)
    {
      swift_bridgeObjectRetain_n();
      swift_bridgeObjectRetain_n();
      sub_245FAEC7C(v9, v8);
      *&v27 = v9;
      WORD4(v27) = v8;
      BYTE10(v27) = BYTE2(v8);
      BYTE11(v27) = BYTE3(v8);
      BYTE12(v27) = BYTE4(v8);
      BYTE13(v27) = BYTE5(v8);
      BYTE14(v27) = BYTE6(v8);
      sub_245FFFE48(&v27, a2, a3, &v26);
      if (v3)
      {
        v11 = v27;
        v8 = DWORD2(v27) | ((WORD6(v27) | (BYTE14(v27) << 16)) << 32);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *a1 = v11;
        a1[1] = v8;
      }

      else
      {
        LOBYTE(v8) = v26;
        v18 = v27;
        v19 = DWORD2(v27) | ((WORD6(v27) | (BYTE14(v27) << 16)) << 32);
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *a1 = v18;
        a1[1] = v19;
      }

      goto LABEL_22;
    }

    v16 = v8 & 0x3FFFFFFFFFFFFFFFLL;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_245FAED40(v9, v8);
    sub_245FAEC7C(v9, v8);
    *a1 = xmmword_246098590;
    sub_245FAEC7C(0, 0xC000000000000000);
    v17 = v9 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v17 < v9)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_2460914B4() && __OFSUB__(v9, sub_2460914E4()))
      {
LABEL_26:
        __break(1u);
      }

      v20 = sub_2460914F4();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      v8 = sub_2460914A4();

      v16 = v8;
      v17 = v9 >> 32;
    }

    if (v17 >= v9)
    {

      v23 = sub_24600B184(v9, v17, v16, a2, a3);
      if (!v4)
      {
        LOBYTE(v8) = v23;

        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        *a1 = v9;
        a1[1] = v16 | 0x4000000000000000;
        goto LABEL_22;
      }

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      v15 = v16 | 0x4000000000000000;
      *a1 = v9;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v10 == 2)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_245FAED40(v9, v8);
    sub_245FAEC7C(v9, v8);
    *&v27 = v9;
    *(&v27 + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_246098590;
    sub_245FAEC7C(0, 0xC000000000000000);
    sub_246091714();
    v12 = *(&v27 + 1);
    v13 = *(v27 + 16);
    v8 = *(v27 + 24);

    v14 = sub_24600B184(v13, v8, *(&v27 + 1), a2, a3);
    if (!v4)
    {
      LOBYTE(v8) = v14;
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      *a1 = v27;
      a1[1] = v12 | 0x8000000000000000;
      goto LABEL_22;
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v15 = *(&v27 + 1) | 0x8000000000000000;
    *a1 = v27;
LABEL_21:
    a1[1] = v15;
    goto LABEL_22;
  }

  *(&v27 + 7) = 0;
  *&v27 = 0;
  sub_245FFFE48(&v27, a2, a3, &v26);
  if (!v3)
  {
    LOBYTE(v8) = v26;
  }

LABEL_22:
  v24 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

double sub_24600B6D0(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v8 = a1 + *(v7 + 28);
  v9 = *(v8 + 112);
  v76[6] = *(v8 + 96);
  v76[7] = v9;
  v76[8] = *(v8 + 128);
  v77 = *(v8 + 144);
  v10 = *(v8 + 48);
  v76[2] = *(v8 + 32);
  v76[3] = v10;
  v11 = *(v8 + 80);
  v76[4] = *(v8 + 64);
  v76[5] = v11;
  v12 = *(v8 + 16);
  v76[0] = *v8;
  v76[1] = v12;
  if (sub_245F97C14(v76) == 1)
  {
    v13 = 1;
    v60.i8[0] = 1;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 1;
  }

  else
  {
    v14 = *(v8 + 112);
    v66 = *(v8 + 96);
    v67 = v14;
    v68 = *(v8 + 128);
    v69 = *(v8 + 144);
    v15 = *(v8 + 48);
    v62 = *(v8 + 32);
    v63 = v15;
    v16 = *(v8 + 80);
    v64 = *(v8 + 64);
    v65 = v16;
    v17 = *(v8 + 16);
    v60 = *v8;
    v61 = v17;
    sub_24600BAD0(&v60, &v50);
    sub_24600701C(v8, &v71);
    v18 = *(v8 + 112);
    v56 = *(v8 + 96);
    v57 = v18;
    v58 = *(v8 + 128);
    v59 = *(v8 + 144);
    v19 = *(v8 + 48);
    v52 = *(v8 + 32);
    v53 = v19;
    v20 = *(v8 + 80);
    v54 = *(v8 + 64);
    v55 = v20;
    v21 = *(v8 + 16);
    v50 = *v8;
    v51 = v21;
    sub_24600BB2C(&v50);
    v13 = 0;
    v75 = 0;
  }

  v22 = v71;
  v23 = v72;
  v24 = v73;
  v25 = v74;
  v26 = a1 + *(v7 + 32);
  if (*(v26 + 73))
  {
    v27 = 1;
    v28 = 0uLL;
    v29 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v32 = *(v26 + 72);
    v33 = *(v26 + 64);
    v35 = *(v26 + 32);
    v34 = *(v26 + 48);
    v36 = *(v26 + 16);
    v60 = *v26;
    v61 = v36;
    v62 = v35;
    v63 = v34;
    *&v64 = v33;
    BYTE8(v64) = v32 & 1;
    v48 = v72;
    v49 = v71;
    v46 = v74;
    v47 = v73;
    sub_2460071AC(&v60, &v50);
    v25 = v46;
    v24 = v47;
    v23 = v48;
    v22 = v49;
    v27 = 0;
    v28 = v50;
    v29 = v51;
    v30 = v52;
    v31 = v53;
    v70 = 0;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  v22 = v28;
  v23 = v29;
  v24 = v30;
  v25 = v31;
  if (v27)
  {
    OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
  }

LABEL_10:
  v46 = v25;
  v47 = v24;
  v48 = v23;
  v49 = v22;
  v37 = sub_245FA3174();
  (*(v3 + 16))(v6, v37, v2);
  v38 = sub_2460918D4();
  v39 = sub_246091FA4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v50.i64[0] = v41;
    *v40 = 136315138;
    v60 = v49;
    v61 = v48;
    v62 = v47;
    v63 = v46;
    type metadata accessor for simd_float4x4(0);
    v42 = sub_246091C54();
    v44 = sub_245F8D3C0(v42, v43, &v50);

    *(v40 + 4) = v44;
    _os_log_impl(&dword_245F8A000, v38, v39, "Bounding box with padding removed for serialization = %s", v40, 0xCu);
    sub_245F8E6F4(v41);
    MEMORY[0x24C1989D0](v41, -1, -1);
    MEMORY[0x24C1989D0](v40, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  return *v49.i64;
}

void sub_24600BA80(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24600BB80()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24600BBB8()
{
  v1 = sub_246091834();
  v2 = *(v1 - 8);
  v24 = *(v2 + 80);
  v3 = (v24 + 24) & ~v24;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v22 = *(*(v5 - 1) + 80);
  v20 = *(*(v5 - 1) + 64);
  v23 = sub_246091704();
  v6 = *(v23 - 8);
  v7 = *(v6 + 80);
  v19 = *(v6 + 64);
  v8 = *(v0 + 16);

  v18 = *(v2 + 8);
  v18(v0 + v3, v1);
  v9 = *(v0 + v4);

  v21 = (v4 + v22 + 8) & ~v22;
  v10 = v0 + v21;

  v11 = *(v0 + v21 + 392);

  v12 = *(v0 + v21 + 400);

  v13 = v5[6];
  if (!(*(v2 + 48))(v0 + v21 + v13, 1, v1))
  {
    v18(v10 + v13, v1);
  }

  v14 = *(v10 + v5[7] + 128);
  if (v14 != 1)
  {
  }

  v15 = (v21 + v20 + v7) & ~v7;

  v16 = *(v10 + v5[13]);

  (*(v6 + 8))(v0 + v15, v23);

  return MEMORY[0x2821FE8E8](v0, ((v19 + v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v24 | v22 | v7 | 7);
}

uint64_t sub_24600BE48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24600BEAC()
{
  v1 = *(sub_246091834() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8);
  v5 = (v3 + *(v4 + 80) + 8) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_246091704() - 8);
  v8 = *(v0 + v3);
  v9 = *(v0 + 16);
  v10 = v0 + ((v5 + v6 + *(v7 + 80)) & ~*(v7 + 80));

  return sub_2460052E8(v9, v0 + v2, v8, v0 + v5, v10);
}

uint64_t sub_24600BFF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24600C038(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v47 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v7 = (&v46 - v6);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - v14;
  *&v16 = sub_24600B6D0(a1);
  v50 = v17;
  v51 = v16;
  v48 = v19;
  v49 = v18;
  v20 = sub_246091674();
  v21 = sub_246091188();
  v22 = *v21;
  v23 = *(v21 + 1);

  v24 = sub_246091BD4();

  v25 = *(a1 + 144);
  v26 = *(a1 + 96);
  v27 = *(a1 + 112);
  v28 = *(a1 + 64);
  v29 = *(a1 + 80);
  LODWORD(v23) = OCNonModularSPI_CMPhoto_updateInplace();

  v30 = sub_245FA3174();
  v31 = *(v9 + 16);
  if (v23)
  {
    v31(v15, v30, v8);
    sub_24600B080(a1, v7);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 134349056;
      v35 = *v7;
      sub_24600C49C(v7, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      *(v34 + 4) = v35;
      _os_log_impl(&dword_245F8A000, v32, v33, "HEIC Writer: Failed to update image HEIC file at\ntime = %{public}f!\nTry updating with new file.", v34, 0xCu);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    else
    {

      sub_24600C49C(v7, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    }

    (*(v9 + 8))(v15, v8);
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000038, 0x80000002460A1320);
    v41 = *a1;
    sub_246091EF4();
    v42 = v52;
    v43 = v53;
    sub_24600A7DC();
    swift_allocError();
    *v44 = v42;
    v44[1] = v43;
    return swift_willThrow();
  }

  else
  {
    v31(v13, v30, v8);
    v36 = v47;
    sub_24600B080(a1, v47);
    v37 = sub_2460918D4();
    v38 = sub_246091FC4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 134349056;
      v40 = *v36;
      sub_24600C49C(v36, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
      *(v39 + 4) = v40;
      _os_log_impl(&dword_245F8A000, v37, v38, "HEIC Writer: Success updating image HEIC file at time = %{public}f", v39, 0xCu);
      MEMORY[0x24C1989D0](v39, -1, -1);
    }

    else
    {

      sub_24600C49C(v36, type metadata accessor for ObjectCaptureSession.Metadata.Shot);
    }

    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_24600C49C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24600C56C()
{
  v1 = sub_246091834();
  v2 = *(v1 - 8);
  v25 = *(v2 + 80);
  v3 = (v25 + 24) & ~v25;
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v23 = *(*(v6 - 1) + 80);
  v7 = (v5 + v23 + 40) & ~v23;
  v22 = *(*(v6 - 1) + 64);
  v24 = sub_246091704();
  v8 = *(v24 - 8);
  v21 = *(v8 + 80);
  v20 = *(v8 + 64);
  v9 = *(v0 + 16);

  v19 = *(v2 + 8);
  v19(v0 + v3, v1);
  v10 = *(v0 + v4);

  v11 = v0 + v7;
  v12 = *(v0 + v7 + 392);

  v13 = *(v0 + v7 + 400);

  v14 = v6[6];
  if (!(*(v2 + 48))(v0 + v7 + v14, 1, v1))
  {
    v19(v11 + v14, v1);
  }

  v15 = *(v11 + v6[7] + 128);
  if (v15 != 1)
  {
  }

  v16 = (v7 + v22 + v21) & ~v21;

  v17 = *(v11 + v6[13]);

  (*(v8 + 8))(v0 + v16, v24);

  return MEMORY[0x2821FE8E8](v0, ((v20 + v16 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v25 | v23 | v21 | 7);
}

uint64_t sub_24600C828()
{
  v1 = *(sub_246091834() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8);
  v6 = (v4 + *(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_246091704() - 8);
  v9 = *(v0 + 16);
  v10 = *(v0 + v3);
  v11 = v0 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_246003D00(v9, (v0 + v2), v10, v0 + v4, (v0 + v6), v11);
}

void *sub_24600CA28@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

unint64_t sub_24600CA6C()
{
  result = qword_27EE3AEA0;
  if (!qword_27EE3AEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AEA0);
  }

  return result;
}

uint64_t sub_24600CAC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24600CB08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_24600CB74()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24600CBB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = (result + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    v6 = *(result + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise);
    v7 = *(result + OBJC_IVAR____TtC6CoreOC29ObjectCaptureHEICBundleWriter_completionPromise + 8);
    *v5 = v2;
    v5[1] = v3;

    sub_245FFDCC4(v6);
  }

  return result;
}

uint64_t sub_24600CCAC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24600CD4C;

  return sub_246010A1C();
}

uint64_t sub_24600CD4C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_24600CE44()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2460113E4;

  return sub_246010A1C();
}

uint64_t sub_24600CEE4(char a1, char a2, double a3)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 32) = a1;
  *(result + 24) = a3;
  *(result + 16) = a2;
  return result;
}

uint64_t sub_24600CF3C()
{
  v1[5] = v0;
  v2 = sub_246092304();
  v1[6] = v2;
  v3 = *(v2 - 8);
  v1[7] = v3;
  v4 = *(v3 + 64) + 15;
  v1[8] = swift_task_alloc();
  v5 = sub_2460918F4();
  v1[9] = v5;
  v6 = *(v5 - 8);
  v1[10] = v6;
  v7 = *(v6 + 64) + 15;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24600D064, 0, 0);
}

uint64_t sub_24600D064()
{
  v1 = v0[5];
  result = swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v6 = v0[12];
    v7 = v0[9];
    v8 = v0[10];
    *(v1 + 40) = v5;
    v9 = sub_245FA31EC();
    v0[13] = v9;
    v10 = *(v8 + 16);
    v0[14] = v10;
    v0[15] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v10(v6, v9, v7);
    v11 = sub_2460918D4();
    v12 = sub_246091FC4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245F8A000, v11, v12, "    Starting requestAssets() background task...", v13, 2u);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    v14 = v0[12];
    v15 = v0[9];
    v16 = v0[10];
    v17 = v0[5];

    v18 = *(v16 + 8);
    v0[16] = v18;
    v18(v14, v15);
    if (*(v17 + 16) == 1)
    {
      sub_246010E14();
      swift_allocError();
      *v19 = 0;
      swift_willThrow();
      v21 = v0[11];
      v20 = v0[12];
      v22 = v0[8];

      v23 = v0[1];

      return v23();
    }

    else
    {
      v24 = v0[8];
      v25 = *(v0[5] + 24);
      v26 = sub_246092564();
      v28 = v27;
      sub_246092454();
      v29 = swift_task_alloc();
      v0[17] = v29;
      *v29 = v0;
      v29[1] = sub_24600D2D0;
      v30 = v0[8];

      return sub_246010220(v26, v28, 0, 0, 1);
    }
  }

  return result;
}

uint64_t sub_24600D2D0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v5 = sub_24600D57C;
  }

  else
  {
    v5 = sub_24600D438;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24600D438()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  v4 = v0[11];
  v5 = v0[9];
  *(v0[5] + 32) = 1;
  v2(v4, v3, v5);
  v6 = sub_2460918D4();
  v7 = sub_246091FC4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245F8A000, v6, v7, "    ... completed requestAssets() background task.", v8, 2u);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  v9 = v0[16];
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[8];

  v9(v11, v12);

  v15 = v0[1];

  return v15();
}

uint64_t sub_24600D57C()
{
  v1 = v0[18];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[8];

  v5 = v0[1];

  return v5();
}

uint64_t sub_24600D618()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2460113E4;

  return sub_24600CF3C();
}

uint64_t sub_24600D6A8(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_24600D6E8(a1);
  return v2;
}

uint64_t sub_24600D6E8(__int128 *a1)
{
  *(v1 + 16) = 0;
  sub_245F8E624(&qword_27EE3A680, &qword_246098960);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v1 + 24) = v3;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 32) = 0u;
  sub_246010ED8(a1, v5);
  swift_beginAccess();
  sub_246010E68(v5, v1 + 32);
  swift_endAccess();
  return v1;
}

uint64_t sub_24600D790()
{
  swift_beginAccess();
  if (*(v0 + 56))
  {
    sub_246010EF0(v0 + 32, v5);
    v1 = v6;
    v2 = v7;
    sub_246010F54(v5, v6);
    v3 = (*(v2 + 8))(v1, v2);
    sub_245F8E6F4(v5);
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_24600D84C()
{
  v1 = v0[2];
  v2 = *(v1 + 24);
  v0[3] = v2;
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_246010F98;
  *(v3 + 24) = v1;
  os_unfair_lock_lock(v2 + 4);
  sub_24600A938();
  os_unfair_lock_unlock(v2 + 4);

  v5 = v0[2];
  v6 = *(v5 + 16);
  v0[4] = v6;
  if (v6)
  {
    v7 = *(MEMORY[0x277D857C8] + 4);

    v8 = swift_task_alloc();
    v0[5] = v8;
    v9 = sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    *v8 = v0;
    v8[1] = sub_24600DA38;
    v10 = MEMORY[0x277D84950];
    v11 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x282200430](v9, v6, v11, v9, v10);
  }

  else
  {
    v12 = v0[3];
    v13 = swift_task_alloc();
    *(v13 + 16) = sub_2460113CC;
    *(v13 + 24) = v5;
    os_unfair_lock_lock(v12 + 4);
    sub_24600CC94();
    os_unfair_lock_unlock(v12 + 4);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_24600DA38()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v4 = *(v2 + 32);

    v5 = sub_24600DC28;
  }

  else
  {
    v5 = sub_24600DB54;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24600DB54()
{
  v1 = v0[4];

  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_2460113CC;
  *(v5 + 24) = v4;
  os_unfair_lock_lock(v3 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock(v3 + 4);

  if (!v2)
  {
    v7 = v0[1];

    return v7();
  }

  return result;
}

uint64_t sub_24600DC28()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  *(v3 + 16) = sub_246010FB4;
  *(v3 + 24) = v2;
  os_unfair_lock_lock(v1 + 4);
  sub_24600CC94();
  os_unfair_lock_unlock((v0[3] + 16));

  v4 = v0[6];
  v5 = v0[1];

  return v5();
}

uint64_t sub_24600DCEC(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - v9;
  if (*(a1 + 16))
  {
    v11 = sub_245FA31EC();
    (*(v3 + 16))(v6, v11, v2);
    v12 = sub_2460918D4();
    v13 = sub_246091FB4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_245F8A000, v12, v13, "    requestAssets() was called while a download task was already active!  Punting new call.", v14, 2u);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    sub_246010E14();
    swift_allocError();
    *v15 = 2;
    return swift_willThrow();
  }

  else
  {
    v17 = sub_246091EB4();
    (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
    v18 = swift_allocObject();
    v18[2] = 0;
    v18[3] = 0;
    v18[4] = a1;

    v19 = sub_24600E4D0(0, 0, v10, &unk_246098BB0, v18);
    v20 = *(a1 + 16);
    *(a1 + 16) = v19;
  }
}

uint64_t sub_24600DF74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a4;
  v5 = sub_2460918F4();
  v4[16] = v5;
  v6 = *(v5 - 8);
  v4[17] = v6;
  v7 = *(v6 + 64) + 15;
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24600E034, 0, 0);
}

uint64_t sub_24600E034()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  sub_245F8E7A4(v1 + 32, v0 + 56, &qword_27EE3A770, &qword_246098968);
  if (*(v0 + 80))
  {
    sub_246010ED8((v0 + 56), v0 + 16);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    sub_246010F54((v0 + 16), v2);
    v4 = *(v3 + 16);
    v21 = (v4 + *v4);
    v5 = v4[1];
    v6 = swift_task_alloc();
    *(v0 + 152) = v6;
    *v6 = v0;
    v6[1] = sub_24600E2E0;

    return v21(v2, v3);
  }

  else
  {
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v10 = *(v0 + 128);
    sub_245F8E744(v0 + 56, &qword_27EE3A770, &qword_246098968);
    v11 = sub_245FA31EC();
    (*(v9 + 16))(v8, v11, v10);
    v12 = sub_2460918D4();
    v13 = sub_246091FB4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_245F8A000, v12, v13, "    Mobile asset provider was unexpectedly nil!", v14, 2u);
      MEMORY[0x24C1989D0](v14, -1, -1);
    }

    v16 = *(v0 + 136);
    v15 = *(v0 + 144);
    v17 = *(v0 + 128);

    (*(v16 + 8))(v15, v17);
    sub_246010E14();
    swift_allocError();
    *v18 = 0;
    swift_willThrow();
    v19 = *(v0 + 144);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_24600E2E0()
{
  v2 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_24600E464;
  }

  else
  {
    v3 = sub_24600E3F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24600E3F4()
{
  v1 = v0[18];
  sub_245F8E6F4(v0 + 2);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24600E464()
{
  sub_245F8E6F4(v0 + 2);
  v1 = v0[20];
  v2 = v0[18];

  v3 = v0[1];

  return v3();
}

uint64_t sub_24600E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_245F8E7A4(a3, v24 - v10, &qword_27EE3A778, &qword_246098980);
  v12 = sub_246091EB4();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_245F8E744(v11, &qword_27EE3A778, &qword_246098980);
  }

  else
  {
    sub_246091EA4();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_246091E64();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_246091C74() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_245F8E744(a3, &qword_27EE3A778, &qword_246098980);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_24600E77C()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x28223BE20](v1);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v7 = *(v0 + 16);

    v8 = sub_245FA31EC();
    (*(v2 + 16))(v6, v8, v1);
    v9 = sub_2460918D4();
    v10 = sub_246091FB4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245F8A000, v9, v10, "Mobile asset provider download cancel called!", v11, 2u);
      MEMORY[0x24C1989D0](v11, -1, -1);
    }

    (*(v2 + 8))(v6, v1);
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    sub_246091ED4();
  }

  return result;
}

uint64_t sub_24600E924()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_245F8E744(v0 + 32, &qword_27EE3A770, &qword_246098968);

  return swift_deallocClassInstance();
}

uint64_t sub_24600E97C()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  *(v0 + 120) = 0;
  swift_weakAssign();

  return v0;
}

uint64_t sub_24600E9DC()
{
  v1 = v0;
  v2 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v32 - v4;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = MEMORY[0x28223BE20](v6);
  v33 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - v11;
  v13 = sub_245FA31EC();
  v14 = v7[2];
  v14(v12, v13, v6);
  v15 = sub_2460918D4();
  v16 = sub_246091FA4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v32 = v5;
    v18 = v1;
    v19 = v17;
    *v17 = 0;
    _os_log_impl(&dword_245F8A000, v15, v16, "startDownloadIfNeeded called...", v17, 2u);
    v20 = v19;
    v1 = v18;
    v5 = v32;
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  v21 = v7[1];
  v21(v12, v6);
  if (*(v1 + 120))
  {
    v22 = v33;
    v14(v33, v13, v6);
    v23 = sub_2460918D4();
    v24 = sub_246091FC4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245F8A000, v23, v24, "Detached asset download task already running, not making a new one.", v25, 2u);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    return (v21)(v22, v6);
  }

  else
  {
    sub_246091E94();
    v27 = sub_246091EB4();
    (*(*(v27 - 8) + 56))(v5, 0, 1, v27);
    v28 = swift_allocObject();
    swift_weakInit();
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = v28;
    v30 = sub_24600FEA0(0, 0, v5, &unk_246098990, v29);
    sub_245F8E744(v5, &qword_27EE3A778, &qword_246098980);
    v31 = *(v1 + 120);
    *(v1 + 120) = v30;
  }
}

uint64_t sub_24600ED4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[27] = a4;
  v5 = sub_2460918F4();
  v4[28] = v5;
  v6 = *(v5 - 8);
  v4[29] = v6;
  v7 = *(v6 + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24600EE48, 0, 0);
}

uint64_t sub_24600EE48()
{
  v1 = v0[27];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[36] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_24600F040;
LABEL_7:

    return MEMORY[0x2822009F8](v4, v3, 0);
  }

  v5 = v0[35];
  v6 = v0[28];
  v7 = v0[29];
  v8 = sub_245FA31EC();
  (*(v7 + 16))(v5, v8, v6);
  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_245F8A000, v9, v10, "Detached task no longer has a downloader object, not starting.", v11, 2u);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  v12 = v0[35];
  v13 = v0[28];
  v14 = v0[29];
  v15 = v0[27];

  (*(v14 + 8))(v12, v13);
  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  v0[46] = v16;
  if (v16)
  {
    v3 = v16;
    v4 = sub_24600FA40;
    goto LABEL_7;
  }

  v18 = v0[34];
  v17 = v0[35];
  v20 = v0[32];
  v19 = v0[33];
  v22 = v0[30];
  v21 = v0[31];

  v23 = v0[1];

  return v23();
}

uint64_t sub_24600F040()
{
  v1 = *(v0 + 288);
  *(v0 + 296) = swift_weakLoadStrong();

  return MEMORY[0x2822009F8](sub_24600F0B8, 0, 0);
}

uint64_t sub_24600F0B8()
{
  v1 = v0[37];
  if (!v1)
  {
    v34 = v0[35];
    v35 = v0[28];
    v36 = v0[29];
    v37 = sub_245FA31EC();
    (*(v36 + 16))(v34, v37, v35);
    v38 = sub_2460918D4();
    v39 = sub_246091FC4();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_245F8A000, v38, v39, "Detached task no longer has a downloader object, not starting.", v40, 2u);
      MEMORY[0x24C1989D0](v40, -1, -1);
    }

    v41 = v0[35];
    v42 = v0[28];
    v43 = v0[29];
    v44 = v0[27];

    (*(v43 + 8))(v41, v42);
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v0[46] = Strong;
    if (Strong)
    {
      v17 = Strong;
      v18 = sub_24600FA40;
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  swift_beginAccess();
  if (*(v1 + 56))
  {
    sub_246010EF0(v1 + 32, (v0 + 7));
    v2 = v0[10];
    v3 = v0[11];
    sub_246010F54(v0 + 7, v2);
    v4 = (*(v3 + 8))(v2, v3);
    sub_245F8E6F4(v0 + 7);
    if (v4)
    {
      v5 = v0[31];
      v6 = v0[28];
      v7 = v0[29];
      v8 = sub_245FA31EC();
      (*(v7 + 16))(v5, v8, v6);
      v9 = sub_2460918D4();
      v10 = sub_246091FC4();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_245F8A000, v9, v10, "Mobile assets are already available, not requesting again.", v11, 2u);
        MEMORY[0x24C1989D0](v11, -1, -1);
      }

      v12 = v0[31];
      v13 = v0[28];
      v14 = v0[29];
      v15 = v0[27];

      (*(v14 + 8))(v12, v13);
      swift_beginAccess();
      v16 = swift_weakLoadStrong();
      v0[45] = v16;
      if (v16)
      {
        v17 = v16;
        v18 = sub_24600F9C8;
LABEL_17:

        return MEMORY[0x2822009F8](v18, v17, 0);
      }

      v46 = v0[37];

LABEL_21:
      v48 = v0[34];
      v47 = v0[35];
      v50 = v0[32];
      v49 = v0[33];
      v52 = v0[30];
      v51 = v0[31];

      v53 = v0[1];

      return v53();
    }
  }

  v19 = v0[34];
  v20 = v0[28];
  v21 = v0[29];
  v22 = sub_245FA31EC();
  v0[38] = v22;
  v23 = *(v21 + 16);
  v0[39] = v23;
  v0[40] = (v21 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v19, v22, v20);
  v24 = sub_2460918D4();
  v25 = sub_246091FC4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_245F8A000, v24, v25, "Task is now requesting mobile assets...", v26, 2u);
    MEMORY[0x24C1989D0](v26, -1, -1);
  }

  v27 = v0[34];
  v28 = v0[28];
  v29 = v0[29];

  v30 = *(v29 + 8);
  v0[41] = v30;
  v30(v27, v28);
  v31 = swift_task_alloc();
  v0[42] = v31;
  *v31 = v0;
  v31[1] = sub_24600F514;
  v32 = v0[37];

  return sub_24600D82C();
}

uint64_t sub_24600F514()
{
  v2 = *(*v1 + 336);
  v5 = *v1;
  *(*v1 + 344) = v0;

  if (v0)
  {
    v3 = sub_24600FAF8;
  }

  else
  {
    v3 = sub_24600F628;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24600F628()
{
  v1 = *(v0 + 296);
  if (*(v1 + 56) && (sub_246010EF0(v1 + 32, v0 + 16), v2 = *(v0 + 40), v3 = *(v0 + 48), sub_246010F54((v0 + 16), v2), v4 = (*(v3 + 8))(v2, v3), sub_245F8E6F4((v0 + 16)), (v4 & 1) != 0))
  {
    v5 = *(v0 + 320);
    v6 = (v0 + 264);
    (*(v0 + 312))(*(v0 + 264), *(v0 + 304), *(v0 + 224));
    v7 = sub_2460918D4();
    v8 = sub_246091FC4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Successfully downloaded mobile assets.";
LABEL_7:
      _os_log_impl(&dword_245F8A000, v7, v8, v10, v9, 2u);
      v12 = *v6;
      MEMORY[0x24C1989D0](v9, -1, -1);
      goto LABEL_9;
    }
  }

  else
  {
    v11 = *(v0 + 320);
    v6 = (v0 + 256);
    (*(v0 + 312))(*(v0 + 256), *(v0 + 304), *(v0 + 224));
    v7 = sub_2460918D4();
    v8 = sub_246091FC4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Failed to download mobile assets.";
      goto LABEL_7;
    }
  }

  v12 = *v6;
LABEL_9:
  v13 = *(v0 + 328);
  v14 = *(v0 + 224);
  v15 = *(v0 + 232);
  v16 = *(v0 + 216);

  v13(v12, v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24600F8A8, Strong, 0);
  }

  else
  {
    v18 = *(v0 + 296);

    v20 = *(v0 + 272);
    v19 = *(v0 + 280);
    v22 = *(v0 + 256);
    v21 = *(v0 + 264);
    v24 = *(v0 + 240);
    v23 = *(v0 + 248);

    v25 = *(v0 + 8);

    return v25();
  }
}

uint64_t sub_24600F8A8()
{
  v1 = *(v0 + 352);
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  return MEMORY[0x2822009F8](sub_24600F920, 0, 0);
}

uint64_t sub_24600F920()
{
  v1 = v0[37];

  v3 = v0[34];
  v2 = v0[35];
  v5 = v0[32];
  v4 = v0[33];
  v7 = v0[30];
  v6 = v0[31];

  v8 = v0[1];

  return v8();
}

uint64_t sub_24600F9C8()
{
  v1 = *(v0 + 360);
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  return MEMORY[0x2822009F8](sub_2460113F0, 0, 0);
}

uint64_t sub_24600FA40()
{
  v1 = v0[46];
  v2 = *(v1 + 120);
  *(v1 + 120) = 0;

  v4 = v0[34];
  v3 = v0[35];
  v6 = v0[32];
  v5 = v0[33];
  v8 = v0[30];
  v7 = v0[31];

  v9 = v0[1];

  return v9();
}

uint64_t sub_24600FAF8()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 320);
  (*(v0 + 312))(*(v0 + 240), *(v0 + 304), *(v0 + 224));
  v3 = v1;
  v4 = sub_2460918D4();
  v5 = sub_246091FB4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 344);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_245F8A000, v4, v5, "Failed to download mobile assets: %@", v8, 0xCu);
    sub_245F8E744(v9, &qword_27EE3AE80, &qword_246096FA0);
    MEMORY[0x24C1989D0](v9, -1, -1);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 232) + 8;
  (*(v0 + 328))(*(v0 + 240), *(v0 + 224));
  v13 = *(v0 + 296);
  if (*(v13 + 56) && (sub_246010EF0(v13 + 32, v0 + 16), v14 = *(v0 + 40), v15 = *(v0 + 48), sub_246010F54((v0 + 16), v14), v16 = (*(v15 + 8))(v14, v15), sub_245F8E6F4((v0 + 16)), (v16 & 1) != 0))
  {
    v17 = *(v0 + 320);
    v18 = (v0 + 264);
    (*(v0 + 312))(*(v0 + 264), *(v0 + 304), *(v0 + 224));
    v19 = sub_2460918D4();
    v20 = sub_246091FC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Successfully downloaded mobile assets.";
LABEL_10:
      _os_log_impl(&dword_245F8A000, v19, v20, v22, v21, 2u);
      v24 = *v18;
      MEMORY[0x24C1989D0](v21, -1, -1);
      goto LABEL_12;
    }
  }

  else
  {
    v23 = *(v0 + 320);
    v18 = (v0 + 256);
    (*(v0 + 312))(*(v0 + 256), *(v0 + 304), *(v0 + 224));
    v19 = sub_2460918D4();
    v20 = sub_246091FC4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      v22 = "Failed to download mobile assets.";
      goto LABEL_10;
    }
  }

  v24 = *v18;
LABEL_12:
  v25 = *(v0 + 328);
  v26 = *(v0 + 224);
  v27 = *(v0 + 232);
  v28 = *(v0 + 216);

  v25(v24, v26);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 352) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_24600F8A8, Strong, 0);
  }

  else
  {
    v30 = *(v0 + 296);

    v32 = *(v0 + 272);
    v31 = *(v0 + 280);
    v34 = *(v0 + 256);
    v33 = *(v0 + 264);
    v36 = *(v0 + 240);
    v35 = *(v0 + 248);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_24600FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_245F8E624(&qword_27EE3A778, &qword_246098980);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v27 - v11;
  sub_245F8E7A4(a3, v27 - v11, &qword_27EE3A778, &qword_246098980);
  v13 = sub_246091EB4();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_245F8E744(v12, &qword_27EE3A778, &qword_246098980);
  }

  else
  {
    sub_246091EA4();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_246091E64();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_246091C74() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_246010160()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);

    sub_246091ED4();

    v2 = *(v0 + 120);
  }

  *(v0 + 120) = 0;
}

uint64_t sub_2460101D4()
{
  swift_weakDestroy();
  v1 = *(v0 + 120);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_246010220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_2460922F4();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_246010320, 0, 0);
}

uint64_t sub_246010320()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_246092304();
  v7 = sub_246011370(&qword_27EE3A788, MEMORY[0x277D85928]);
  sub_246092434();
  sub_246011370(&qword_27EE3A790, MEMORY[0x277D858F8]);
  sub_246092314();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_2460104B0;
  v11 = v0[11];
  v12 = v0[7];

  return MEMORY[0x2822008C8](v11, v0 + 2, v6, v7);
}

uint64_t sub_2460104B0()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24601066C, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_24601066C()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_2460106D8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2460107D0;

  return v7(a1);
}

uint64_t sub_2460107D0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2460108C8()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245FA31EC();
  (*(v1 + 16))(v4, v5, v0);
  v6 = sub_2460918D4();
  v7 = sub_246091FA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245F8A000, v6, v7, "Checking availability of mobile assets from CorePhotogrammetry...", v8, 2u);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  return CPGCheckPhotogrammetryAssetsAvailability();
}

uint64_t sub_246010A1C()
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v0[3] = v1;
  v2 = *(v1 - 8);
  v0[4] = v2;
  v3 = *(v2 + 64) + 15;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  v4 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_246010B10, 0, 0);
}

uint64_t sub_246010B10()
{
  v31 = *MEMORY[0x277D85DE8];
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = sub_245FA31EC();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_2460918D4();
  v7 = sub_246091FA4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_245F8A000, v6, v7, "Requesting download of mobile assets from CorePhotogrammetry...", v8, 2u);
    MEMORY[0x24C1989D0](v8, -1, -1);
  }

  v9 = v0[6];
  v10 = v0[3];
  v11 = v0[4];

  v12 = *(v11 + 8);
  v12(v9, v10);
  v0[2] = 0;
  if (CPGLoadPhotogrammetryAssetsSync())
  {
    v5(v0[5], v4, v0[3]);
    v13 = sub_2460918D4();
    v14 = sub_246091FB4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_245F8A000, v13, v14, "    Failed to download mobile assets!", v15, 2u);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    v17 = v0[4];
    v16 = v0[5];
    v18 = v0[3];

    v12(v16, v18);
    v19 = v0[2];
    if (v19)
    {
      type metadata accessor for CFError(0);
      sub_246011370(&qword_27EE3A798, type metadata accessor for CFError);
      v20 = v19;
      swift_allocError();
      *v21 = v20;
    }

    else
    {
      sub_246010E14();
      swift_allocError();
      *v26 = 1;
    }

    v28 = v0[5];
    v27 = v0[6];
    swift_willThrow();

    v24 = v0[1];
    v29 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v23 = v0[5];
    v22 = v0[6];

    v24 = v0[1];
    v25 = *MEMORY[0x277D85DE8];
  }

  return v24();
}

unint64_t sub_246010E14()
{
  result = qword_27EE3A768;
  if (!qword_27EE3A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A768);
  }

  return result;
}

uint64_t sub_246010E68(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A770, &qword_246098968);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_246010ED8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_246010EF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_246010F54(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_246010FB4()
{
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;
}

uint64_t sub_246010FE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_246011020()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_24600CD4C;

  return sub_24600ED4C(v3, v4, v5, v2);
}

unint64_t sub_2460110B8()
{
  result = qword_27EE3A780;
  if (!qword_27EE3A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A780);
  }

  return result;
}

uint64_t sub_2460111AC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2460111E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2460113E4;

  return sub_2460106D8(a1, v5);
}

uint64_t sub_24601129C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2460112DC()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2460113E4;

  return sub_24600DF74(v3, v4, v5, v2);
}

uint64_t sub_246011370(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL sub_2460113F4(CGImage *a1)
{
  v2 = sub_2460918C4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *MEMORY[0x277CBECE8];
  v8 = sub_246091BD4();
  v9 = CFURLCreateWithFileSystemPath(v7, v8, kCFURLPOSIXPathStyle, 0);

  if (!v9)
  {
    return 0;
  }

  sub_2460918B4();
  sub_2460918A4();
  (*(v3 + 8))(v6, v2);
  v10 = sub_246091BD4();

  v11 = CGImageDestinationCreateWithURL(v9, v10, 1uLL, 0);

  if (v11)
  {
    CGImageDestinationAddImage(v11, a1, 0);
    v12 = CGImageDestinationFinalize(v11);

    v9 = v11;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

uint64_t sub_24601158C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = sub_245F8E624(&qword_27EE3A7A8, &qword_246098C00);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();

    v5 = v0;
    v1 = sub_246091944();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_246011634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2460919F4();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_246091A64();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a3 + 32);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a1;
  v15[4] = a2;
  aBlock[4] = sub_24601EEA4;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DFDB8;
  v16 = _Block_copy(aBlock);

  sub_246091A14();
  v21 = MEMORY[0x277D84F90];
  sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v13, v9, v16);
  _Block_release(v16);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_24601194C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

uint64_t sub_246011998()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v2 = v0;
    sub_24601158C();
    sub_245F8E624(&qword_27EE3A7A8, &qword_246098C00);
    sub_245F9218C(&qword_27EE3A7B0, &qword_27EE3A7A8, &qword_246098C00);
    v1 = sub_2460919A4();

    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t ObjectCaptureBundleWriter.__allocating_init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  ObjectCaptureBundleWriter.init(publishers:url:)(a1, a2);
  return v7;
}

uint64_t ObjectCaptureBundleWriter.init(publishers:url:)(uint64_t a1, uint64_t a2)
{
  v199 = a2;
  v195 = a1;
  v201[3] = *MEMORY[0x277D85DE8];
  v3 = sub_245F8E624(&qword_27EE3A7B8, &qword_246098C08);
  v187 = *(v3 - 8);
  v188 = v3;
  v4 = *(v187 + 64);
  MEMORY[0x28223BE20](v3);
  v186 = &v169 - v5;
  v185 = sub_245F8E624(&qword_27EE3A7C0, &qword_246098C10);
  v184 = *(v185 - 8);
  v6 = *(v184 + 64);
  MEMORY[0x28223BE20](v185);
  v183 = &v169 - v7;
  v181 = sub_245F8E624(&qword_27EE3A7C8, &unk_246098C18);
  v180 = *(v181 - 8);
  v8 = *(v180 + 64);
  MEMORY[0x28223BE20](v181);
  v179 = &v169 - v9;
  v178 = sub_245F8E624(&qword_27EE3A660, &qword_2460985D0);
  v177 = *(v178 - 8);
  v10 = *(v177 + 64);
  MEMORY[0x28223BE20](v178);
  v176 = &v169 - v11;
  v175 = sub_245F8E624(&qword_27EE3A668, &qword_2460985D8);
  v174 = *(v175 - 8);
  v12 = *(v174 + 64);
  MEMORY[0x28223BE20](v175);
  v173 = &v169 - v13;
  v14 = sub_245F8E624(&qword_27EE3A670, &qword_2460985E0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v182 = &v169 - v16;
  v172 = sub_245F8E624(&qword_27EE3A678, &qword_2460985E8);
  v171 = *(v172 - 8);
  v17 = *(v171 + 64);
  MEMORY[0x28223BE20](v172);
  v170 = &v169 - v18;
  *&v198 = sub_2460918F4();
  v193 = *(v198 - 8);
  v19 = *(v193 + 64);
  MEMORY[0x28223BE20](v198);
  v197 = &v169 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_246092034();
  v192 = *(v194 - 8);
  v21 = *(v192 + 64);
  MEMORY[0x28223BE20](v194);
  v191 = &v169 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_246092004();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  v25 = sub_246091A64();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_245F90360();
  v190 = "aultActor";
  v196 = v2;
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  sub_246091A44();
  v201[0] = MEMORY[0x277D84F90];
  sub_24601CC58(&qword_27EE3A9D0, MEMORY[0x277D85230]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  (*(v192 + 104))(v191, *MEMORY[0x277D85260], v194);
  v28 = v196;
  v189 = v27;
  *(v28 + 32) = sub_246092074();
  *(v28 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_subscriptions) = MEMORY[0x277D84FA0];
  v29 = (v28 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
  *v29 = 0;
  v29[1] = 0;
  v30 = v28 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata;
  *(v30 + 32) = 0;
  *v30 = 0u;
  *(v30 + 16) = 0u;
  v31 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap;
  v32 = MEMORY[0x277D84F90];
  *(v28 + v31) = sub_24600A164(MEMORY[0x277D84F90]);
  v33 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  *(v28 + v33) = sub_24601CB78(v32);
  *(v28 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sequenceID) = 0;
  v34 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_isPeridot;
  *(v28 + v34) = sub_246020934() & 1;
  v35 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_url;
  v36 = sub_246091704();
  v37 = *(v36 - 8);
  (*(v37 + 16))(v28 + v35, v199, v36);
  v38 = sub_245FA3174();
  v39 = v193;
  (*(v193 + 16))(v197, v38, v198);

  v40 = sub_2460918D4();
  v41 = sub_246091FC4();

  v42 = os_log_type_enabled(v40, v41);
  v194 = v36;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v192 = v37;
    v45 = v28;
    v46 = v44;
    v201[0] = v44;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_24601CC58(&qword_27EE3A000, MEMORY[0x277CC9260]);
    v47 = sub_2460923D4();
    v49 = sub_245F8D3C0(v47, v48, v201);

    *(v43 + 14) = v49;
    _os_log_impl(&dword_245F8A000, v40, v41, "Bundle Writer: Writer output URL: %{private,mask.hash}s", v43, 0x16u);
    sub_245F8E6F4(v46);
    v50 = v46;
    v28 = v45;
    v37 = v192;
    MEMORY[0x24C1989D0](v50, -1, -1);
    MEMORY[0x24C1989D0](v43, -1, -1);
  }

  (*(v39 + 8))(v197, v198);
  v51 = objc_opt_self();
  v52 = [v51 defaultManager];
  v53 = sub_246091674();
  v201[0] = 0;
  v54 = [v52 createDirectoryAtURL:v53 withIntermediateDirectories:1 attributes:0 error:v201];

  v55 = v201[0];
  if (!v54)
  {
    goto LABEL_27;
  }

  v56 = v201[0];
  v57 = [v51 defaultManager];
  v58 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v59 = swift_allocObject();
  v198 = xmmword_246096EF0;
  *(v59 + 16) = xmmword_246096EF0;
  *(v59 + 32) = sub_2460916F4();
  *(v59 + 40) = v60;
  *(v59 + 48) = 0x736567616D69;
  *(v59 + 56) = 0xE600000000000000;
  v61 = sub_246091DB4();

  v62 = [v58 pathWithComponents_];

  if (!v62)
  {
    sub_246091C04();
    v62 = sub_246091BD4();
  }

  v201[0] = 0;
  v63 = [v57 createDirectoryAtPath:v62 withIntermediateDirectories:1 attributes:0 error:v201];

  v64 = v201[0];
  if (!v63)
  {
    goto LABEL_29;
  }

  v65 = v201[0];
  v66 = [v51 defaultManager];
  v67 = swift_allocObject();
  *(v67 + 16) = v198;
  *(v67 + 32) = sub_2460916F4();
  *(v67 + 40) = v68;
  *(v67 + 48) = 0x616D5F6874706564;
  *(v67 + 56) = 0xEA00000000007370;
  v69 = sub_246091DB4();

  v70 = [v58 pathWithComponents_];

  if (!v70)
  {
    sub_246091C04();
    v70 = sub_246091BD4();
  }

  v201[0] = 0;
  v71 = [v66 createDirectoryAtPath:v70 withIntermediateDirectories:1 attributes:0 error:v201];

  v64 = v201[0];
  if (!v71)
  {
    goto LABEL_29;
  }

  v72 = v201[0];
  v73 = [v51 defaultManager];
  v74 = swift_allocObject();
  *(v74 + 16) = v198;
  *(v74 + 32) = sub_2460916F4();
  *(v74 + 40) = v75;
  *(v74 + 48) = 0x6E656469666E6F63;
  *(v74 + 56) = 0xEF7370616D5F6563;
  v76 = sub_246091DB4();

  v77 = [v58 pathWithComponents_];

  if (!v77)
  {
    sub_246091C04();
    v77 = sub_246091BD4();
  }

  v201[0] = 0;
  v78 = [v73 createDirectoryAtPath:v77 withIntermediateDirectories:1 attributes:0 error:v201];

  v64 = v201[0];
  if (!v78)
  {
    goto LABEL_29;
  }

  v79 = v201[0];
  v80 = [v51 defaultManager];
  v81 = swift_allocObject();
  *(v81 + 16) = v198;
  *(v81 + 32) = sub_2460916F4();
  *(v81 + 40) = v82;
  *(v81 + 48) = 0x6775626564;
  *(v81 + 56) = 0xE500000000000000;
  v83 = sub_246091DB4();

  v84 = [v58 pathWithComponents_];

  if (!v84)
  {
    sub_246091C04();
    v84 = sub_246091BD4();
  }

  v201[0] = 0;
  v85 = [v80 createDirectoryAtPath:v84 withIntermediateDirectories:1 attributes:0 error:v201];

  v64 = v201[0];
  if (!v85)
  {
    goto LABEL_29;
  }

  v86 = v201[0];
  v87 = [v51 defaultManager];
  v88 = v196;
  sub_2460168CC();
  v89 = sub_246091BD4();

  v201[0] = 0;
  v90 = [v87 &selRef:v89 setVideoFormat:1, 0, v201 + 1];

  v91 = v201[0];
  if (!v90)
  {
    goto LABEL_32;
  }

  v92 = v201[0];
  v93 = [v51 defaultManager];
  sub_2460168E0();
  v94 = sub_246091BD4();

  v201[0] = 0;
  v95 = [v93 &selRef:v94 setVideoFormat:1, 0, v201 + 1];

  v91 = v201[0];
  if (!v95)
  {
    goto LABEL_32;
  }

  v96 = v201[0];
  v97 = [v51 defaultManager];
  sub_246016A80();
  v98 = sub_246091BD4();

  v201[0] = 0;
  v99 = [v97 &selRef:v98 setVideoFormat:1, 0, v201 + 1];

  v91 = v201[0];
  if (!v99)
  {
LABEL_32:
    v168 = v91;
    sub_2460915D4();

    swift_willThrow();
    v28 = v88;
    goto LABEL_30;
  }

  v100 = v201[0];
  v101 = [v51 defaultManager];
  v102 = swift_allocObject();
  *(v102 + 16) = v198;
  *(v102 + 32) = sub_246016A98();
  *(v102 + 40) = v103;
  *(v102 + 48) = 0xD000000000000012;
  *(v102 + 56) = 0x80000002460A1510;
  v104 = sub_246091DB4();

  v105 = [v58 pathWithComponents_];

  if (!v105)
  {
    sub_246091C04();
    v105 = sub_246091BD4();
  }

  v201[0] = 0;
  v106 = [v101 createDirectoryAtPath:v105 withIntermediateDirectories:1 attributes:0 error:v201];

  v64 = v201[0];
  if (!v106)
  {
LABEL_29:
    v165 = v64;
    sub_2460915D4();

    swift_willThrow();
    v28 = v196;
    goto LABEL_30;
  }

  v107 = v201[0];
  v108 = [v51 defaultManager];
  v109 = swift_allocObject();
  *(v109 + 16) = v198;
  v28 = v196;
  *(v109 + 32) = sub_246016A98();
  *(v109 + 40) = v110;
  *(v109 + 48) = 0x736172656D6163;
  *(v109 + 56) = 0xE700000000000000;
  v111 = sub_246091DB4();

  v112 = [v58 pathWithComponents_];

  if (!v112)
  {
    sub_246091C04();
    v112 = sub_246091BD4();
  }

  v201[0] = 0;
  v113 = [v108 createDirectoryAtPath:v112 withIntermediateDirectories:1 attributes:0 error:v201];

  v55 = v201[0];
  if (!v113)
  {
LABEL_27:
    v164 = v55;
LABEL_28:
    sub_2460915D4();

    swift_willThrow();
LABEL_30:

    (*(v37 + 8))(v199, v194);
    goto LABEL_31;
  }

  v114 = v201[0];
  v115 = [v51 defaultManager];
  sub_246016C4C();
  v116 = sub_246091BD4();

  v201[0] = 0;
  v117 = [v115 createDirectoryAtPath:v116 withIntermediateDirectories:1 attributes:0 error:v201];

  if ((v117 & 1) == 0)
  {
    v164 = v201[0];
    goto LABEL_28;
  }

  v118 = (*(*v195 + 216))(v201[0]);
  v200 = *(v28 + 32);
  v119 = v200;
  v201[0] = v118;
  v193 = sub_246092024();
  v120 = *(v193 - 8);
  v192 = *(v120 + 56);
  v121 = v120 + 56;
  v122 = v182;
  (v192)(v182, 1, 1, v193);
  v169 = v121;
  v123 = v119;
  sub_245F8E624(&qword_27EE3A690, &qword_2460985F0);
  v197 = MEMORY[0x277CBCD90];
  sub_245F9218C(&qword_27EE3A698, &qword_27EE3A690, &qword_2460985F0);
  *&v198 = sub_24601CC58(&qword_27EE3A6A0, sub_245F90360);
  v124 = v170;
  sub_2460919C4();
  sub_245F8E744(v122, &qword_27EE3A670, &qword_2460985E0);

  v125 = swift_allocObject();
  swift_weakInit();
  v126 = swift_allocObject();
  *(v126 + 16) = sub_24601CCD8;
  *(v126 + 24) = v125;
  v191 = MEMORY[0x277CBCD60];
  sub_245F9218C(&qword_27EE3A6A8, &qword_27EE3A678, &qword_2460985E8);

  v127 = v172;
  sub_2460919B4();

  (*(v171 + 8))(v124, v127);
  v190 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_subscriptions;
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v129 = v195;
  v130 = (*(*v195 + 264))(v128);
  v200 = *(v196 + 32);
  v131 = v200;
  v201[0] = v130;
  (v192)(v122, 1, 1, v193);
  v132 = v131;
  sub_245F8E624(&qword_27EE3A6B0, &qword_2460985F8);
  sub_245F9218C(&qword_27EE3A6B8, &qword_27EE3A6B0, &qword_2460985F8);
  v133 = v173;
  sub_2460919C4();
  sub_245F8E744(v122, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A6C0, &qword_27EE3A668, &qword_2460985D8);
  v134 = v175;
  sub_2460919B4();

  (*(v174 + 8))(v133, v134);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v136 = (*(*v129 + 312))(v135);
  v200 = *(v196 + 32);
  v137 = v200;
  v201[0] = v136;
  v138 = v122;
  (v192)(v122, 1, 1, v193);
  v139 = v137;
  sub_245F8E624(&qword_27EE3A6C8, &qword_246098600);
  sub_245F9218C(&qword_27EE3A6D0, &qword_27EE3A6C8, &qword_246098600);
  v140 = v176;
  sub_2460919C4();
  sub_245F8E744(v122, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A6D8, &qword_27EE3A660, &qword_2460985D0);
  v141 = v178;
  sub_2460919B4();

  (*(v177 + 8))(v140, v141);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v143 = v195;
  v144 = (*(*v195 + 360))(v142);
  v200 = *(v196 + 32);
  v145 = v200;
  v201[0] = v144;
  (v192)(v138, 1, 1, v193);
  v146 = v145;
  sub_245F8E624(&qword_27EE3A7D0, &qword_246098C28);
  sub_245F9218C(&qword_27EE3A7D8, &qword_27EE3A7D0, &qword_246098C28);
  v147 = v179;
  sub_2460919C4();
  v148 = v138;
  sub_245F8E744(v138, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A7E0, &qword_27EE3A7C8, &unk_246098C18);
  v149 = v181;
  sub_2460919D4();

  (*(v180 + 8))(v147, v149);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v151 = v143;
  v152 = (*(*v143 + 408))(v150);
  v200 = *(v196 + 32);
  v153 = v200;
  v201[0] = v152;
  v154 = v148;
  (v192)(v148, 1, 1, v193);
  v155 = v153;
  sub_245F8E624(&qword_27EE3A7E8, &qword_246098C30);
  sub_245F9218C(&qword_27EE3A7F0, &qword_27EE3A7E8, &qword_246098C30);
  v156 = v183;
  sub_2460919C4();
  sub_245F8E744(v148, &qword_27EE3A670, &qword_2460985E0);

  swift_allocObject();
  swift_weakInit();
  sub_245F9218C(&qword_27EE3A7F8, &qword_27EE3A7C0, &qword_246098C10);
  v157 = v185;
  sub_2460919D4();

  (*(v184 + 8))(v156, v157);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  v159 = (*(*v151 + 504))(v158);
  v200 = *(v196 + 32);
  v160 = v200;
  v201[0] = v159;
  (v192)(v148, 1, 1, v193);
  v161 = v160;
  sub_245F8E624(&qword_27EE3A800, &qword_246098C38);
  sub_245F9218C(&qword_27EE3A808, &qword_27EE3A800, &qword_246098C38);
  v162 = v186;
  sub_2460919C4();
  sub_245F8E744(v154, &qword_27EE3A670, &qword_2460985E0);
  v28 = v196;

  swift_allocObject();
  swift_weakInit();

  sub_245F9218C(&qword_27EE3A810, &qword_27EE3A7B8, &qword_246098C08);
  v163 = v188;
  sub_2460919D4();

  (*(v187 + 8))(v162, v163);
  swift_beginAccess();
  sub_246091904();
  swift_endAccess();

  (*(v37 + 8))(v199, v194);
LABEL_31:
  v166 = *MEMORY[0x277D85DE8];
  return v28;
}

uint64_t sub_246013988(__int128 *a1, double *a2)
{
  v47 = a2;
  v3 = sub_2460919F4();
  v45 = *(v3 - 8);
  v4 = *(v45 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_246091A64();
  v42 = *(v44 - 8);
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v44);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v46 = *(v8 - 8);
  v9 = *(v46 + 64);
  MEMORY[0x28223BE20](v8);
  v10 = sub_246091A04();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v40 - v17;
  v19 = a1[1];
  v50 = *a1;
  v51 = v19;
  v52 = *(a1 + 4);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = result;
    v40 = v3;
    v22 = *v47;
    sub_24600B080(v47, v18);
    (*(v46 + 56))(v18, 0, 1, v8);
    swift_beginAccess();
    sub_245FFFC14(v18, v22);
    swift_endAccess();
    v23 = *&v50;
    v24 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sequenceID;
    v25 = *(v21 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sequenceID);
    v26 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
    swift_beginAccess();
    v27 = *(v21 + v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48[0] = *(v21 + v26);
    *(v21 + v26) = 0x8000000000000000;
    sub_24601A908(v25, isUniquelyReferenced_nonNull_native, v23);
    *(v21 + v26) = v48[0];
    result = swift_endAccess();
    v29 = *(v21 + v24);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      __break(1u);
    }

    else
    {
      *(v21 + v24) = v31;
      sub_245F90360();
      (*(v11 + 104))(v14, *MEMORY[0x277D851C8], v10);
      v32 = sub_246092084();
      (*(v11 + 8))(v14, v10);
      sub_24600B080(v47, &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v33 = (*(v46 + 80) + 64) & ~*(v46 + 80);
      v34 = swift_allocObject();
      *(v34 + 16) = v21;
      v35 = v51;
      *(v34 + 24) = v50;
      *(v34 + 40) = v35;
      *(v34 + 56) = v52;
      sub_24600BE48(&v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v34 + v33);
      aBlock[4] = sub_24601EDF4;
      aBlock[5] = v34;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_245F913A4;
      aBlock[3] = &unk_2858DFD68;
      v36 = _Block_copy(aBlock);

      sub_24600C978(&v50, v48);
      v37 = v41;
      sub_246091A14();
      v48[0] = MEMORY[0x277D84F90];
      sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
      v38 = v43;
      v39 = v40;
      sub_2460921A4();
      MEMORY[0x24C1969D0](0, v37, v38, v36);
      _Block_release(v36);

      (*(v45 + 8))(v38, v39);
      (*(v42 + 8))(v37, v44);
    }
  }

  return result;
}

void sub_246013FCC(uint64_t a1, uint64_t a2, double *a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  swift_beginAccess();
  v12 = *(a1 + v11);
  if (*(v12 + 16))
  {
    v13 = *a2;
    v14 = sub_24600790C(*a2);
    if (v15)
    {
      v59 = v7;
      v16 = *(*(v12 + 56) + 8 * v14);
      sub_246016DEC(v16, v13);
      v17 = sub_246091BD4();

      v18 = *(a2 + 8);
      v19 = v17;
      v60 = v17;
      [v19 UTF8String];
      savePixelBufferToJpeg();
      v20 = *(a2 + 16);
      if (v20)
      {
        v21 = v20;
        sub_246016E0C(v16, v13);
        v22 = sub_246091BD4();

        v23 = v21;
        [v22 UTF8String];
        savePixelBufferFloat32ToTiff();
      }

      v24 = *(a2 + 24);
      if (v24)
      {
        v25 = v24;
        sub_246016E38(v16, v13);
        v26 = sub_246091BD4();

        v27 = v25;
        [v26 UTF8String];
        savePixelBufferOneComponent8ToPng();
      }

      v28 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
      v29 = a3 + v28[7];
      v30 = *(v29 + 7);
      v65[6] = *(v29 + 6);
      v65[7] = v30;
      v66 = *(v29 + 8);
      v67 = v29[144];
      v31 = *(v29 + 3);
      v65[2] = *(v29 + 2);
      v65[3] = v31;
      v32 = *(v29 + 5);
      v65[4] = *(v29 + 4);
      v65[5] = v32;
      v33 = *v29;
      v65[1] = *(v29 + 1);
      v65[0] = v33;
      if (sub_245F97C14(v65) == 1 || v67 == 1)
      {
        v34 = a3 + v28[8];
        if (v34[73] & 1) != 0 || (v34[72])
        {
          v35 = -1;
        }

        else
        {
          v35 = *(v34 + 8);
        }
      }

      else
      {
        v35 = *(&v66 + 1);
      }

      v36 = *a3;
      v37 = sub_246017284(v16, *a3);
      v39 = v38;
      memcpy(v63, a3 + 2, 0x188uLL);
      memcpy(v62, a3 + 2, 0x188uLL);
      sub_24601E2C0(v63, v61);
      LOBYTE(v37) = sub_24601CFEC((a3 + 2), v35, v37, v39, v36);

      memcpy(v64, v62, 0x188uLL);
      sub_24601E31C(v64);
      if ((v37 & 1) == 0)
      {
        v40 = sub_245FA3174();
        v41 = v59;
        (*(v59 + 16))(v10, v40, v6);
        v42 = sub_2460918D4();
        v43 = sub_246091FB4();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_245F8A000, v42, v43, "Bundle Writer: Failed to write shot camera to bundle!", v44, 2u);
          v45 = v44;
          v41 = v59;
          MEMORY[0x24C1989D0](v45, -1, -1);
        }

        (*(v41 + 8))(v10, v6);
      }

      sub_246019EA8(a3);
      v46 = sub_24601686C();
      v47 = sub_246014518(v61, v36);
      v49 = v48;
      v50 = *(*(v28 - 1) + 48);
      if (!v50(v48, 1, v28))
      {
        v51 = v28[13];
        v52 = *(v49 + v51);
        *(v49 + v51) = MEMORY[0x277D84F90];
      }

      (v47)(v61, 0);
      (v46)(v62, 0);
      v53 = sub_24601686C();
      v54 = sub_246014518(v61, v36);
      v56 = v55;
      if (!v50(v55, 1, v28))
      {
        v57 = v28[11];
        v58 = *(v56 + v57);
        *(v56 + v57) = 0;
      }

      (v54)(v61, 0);
      (v53)(v62, 0);
    }
  }
}

void (*sub_246014518(uint64_t **a1, double a2))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_24601AB7C(v4, a2);
  return sub_246014598;
}

void sub_246014598(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_2460145E4(double *a1)
{
  v2 = sub_245F8E624(&qword_27EE3ACE0, &unk_246098880);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = *a1;
    sub_24600B080(a1, v5);
    v8 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
    swift_beginAccess();
    sub_245FFFC14(v5, v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_24601471C(void **a1)
{
  v2 = sub_245F8E624(&qword_27EE3A858, &unk_246098D80);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v40 - v4);
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v19 = result;
    if (sub_2460176FC())
    {
      if (sub_246019040())
      {
        if (sub_246019814())
        {
          v20 = v19 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise;
          v21 = *(v19 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
          if (v17 == 7)
          {
            if (v21)
            {
              v22 = *(v20 + 8);
              v23 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_url;
              v24 = sub_246091704();
              (*(*(v24 - 8) + 16))(v5, v19 + v23, v24);
              swift_storeEnumTagMultiPayload();

LABEL_20:
              v21(v5);
              sub_245FFDCC4(v21);

              return sub_245F8E744(v5, &qword_27EE3A858, &unk_246098D80);
            }
          }

          else if (v21)
          {
            v37 = *(v20 + 8);
            sub_24600CA6C();
            v38 = swift_allocError();
            *v39 = v17;
            *v5 = v38;
            swift_storeEnumTagMultiPayload();
            sub_24601EC28(v21);
            sub_24601EC38(v17);
            goto LABEL_20;
          }
        }

        else
        {
          v33 = sub_245FA3174();
          (*(v7 + 16))(v11, v33, v6);
          v34 = sub_2460918D4();
          v35 = sub_246091FB4();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            *v36 = 0;
            _os_log_impl(&dword_245F8A000, v34, v35, "Bundle Writer: Failed to write thumbnail image to bundle!", v36, 2u);
            MEMORY[0x24C1989D0](v36, -1, -1);
          }

          return (*(v7 + 8))(v11, v6);
        }
      }

      else
      {
        v29 = sub_245FA3174();
        (*(v7 + 16))(v14, v29, v6);
        v30 = sub_2460918D4();
        v31 = sub_246091FB4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&dword_245F8A000, v30, v31, "Bundle Writer: Failed to write cameras with mobileSfM poses to bundle!", v32, 2u);
          MEMORY[0x24C1989D0](v32, -1, -1);
        }

        return (*(v7 + 8))(v14, v6);
      }
    }

    else
    {
      v25 = sub_245FA3174();
      (*(v7 + 16))(v16, v25, v6);
      v26 = sub_2460918D4();
      v27 = sub_246091FB4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_245F8A000, v26, v27, "Bundle Writer: Failed to write metadata to bundle!", v28, 2u);
        MEMORY[0x24C1989D0](v28, -1, -1);
      }

      return (*(v7 + 8))(v16, v6);
    }
  }

  return result;
}

uint64_t sub_246014BDC(uint64_t a1)
{
  v56 = a1;
  v1 = sub_2460919F4();
  v54 = *(v1 - 8);
  v55 = v1;
  v2 = *(v54 + 64);
  MEMORY[0x28223BE20](v1);
  v52 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_246091A64();
  v51 = *(v53 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x28223BE20](v53);
  v50 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_246091A04();
  v48 = *(v49 - 8);
  v6 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2460918F4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_245F8E624(&unk_27EE3AD50, &unk_24609AD00);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = (&v47 - v16);
  v18 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v47 = *(v18 - 8);
  v19 = *(v47 + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v47 - v22;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v25 = result;
    sub_245F8E7A4(v56, v17, &unk_27EE3AD50, &unk_24609AD00);
    v56 = *v17;
    v26 = *(v17 + *(v14 + 64));
    sub_245FC5914(v17 + *(v14 + 48), v23, &qword_27EE3A350, &unk_2460969A0);
    v27 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
    swift_beginAccess();
    v28 = *(v25 + v27);
    v29 = v23;
    if (*(v28 + 16) && (v30 = sub_24600790C(v26), (v31 & 1) != 0))
    {
      v32 = *(*(v28 + 56) + 8 * v30);
      sub_245F90360();
      v33 = v48;
      v34 = v49;
      (*(v48 + 104))(v8, *MEMORY[0x277D851C8], v49);
      v35 = sub_246092084();
      (*(v33 + 8))(v8, v34);
      sub_245F8E7A4(v29, v21, &qword_27EE3A350, &unk_2460969A0);
      v36 = v29;
      v37 = (*(v47 + 80) + 40) & ~*(v47 + 80);
      v38 = swift_allocObject();
      *(v38 + 2) = v25;
      v38[3] = v26;
      *(v38 + 4) = v32;
      sub_245FC5914(v21, v38 + v37, &qword_27EE3A350, &unk_2460969A0);
      *(v38 + ((v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8)) = v56;
      aBlock[4] = sub_24601EB84;
      aBlock[5] = v38;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_245F913A4;
      aBlock[3] = &unk_2858DFD18;
      v39 = _Block_copy(aBlock);

      v40 = v50;
      sub_246091A14();
      v57 = MEMORY[0x277D84F90];
      sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
      v41 = v52;
      v42 = v55;
      sub_2460921A4();
      MEMORY[0x24C1969D0](0, v40, v41, v39);
      _Block_release(v39);

      (*(v54 + 8))(v41, v42);
      (*(v51 + 8))(v40, v53);
      sub_245F8E744(v36, &qword_27EE3A350, &unk_2460969A0);
    }

    else
    {

      v43 = sub_245FA3174();
      (*(v10 + 16))(v13, v43, v9);
      v44 = sub_2460918D4();
      v45 = sub_246091FB4();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&dword_245F8A000, v44, v45, "Bundle Writer: Failed to get sequence id for plane!", v46, 2u);
        MEMORY[0x24C1989D0](v46, -1, -1);
      }

      (*(v10 + 8))(v13, v9);
      return sub_245F8E744(v23, &qword_27EE3A350, &unk_2460969A0);
    }
  }

  return result;
}

uint64_t sub_246015340(double a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v127 = a4;
  v132 = *MEMORY[0x277D85DE8];
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  v109 = v8;
  v110 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v108 = &v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_246091704();
  v106 = *(v12 - 8);
  v107 = v12;
  v13 = *(v106 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v104 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_246091834();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v123 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v122 = &v104 - v21;
  v22 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v104 - v24;
  sub_246017098(a3, a1);
  v111 = sub_246091BD4();

  v119 = sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096460;
  *(inited + 32) = 0x64657463656C6573;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = sub_245F8E624(&qword_27EE3A850, &unk_246098D70);
  sub_245F8E7A4(v127, v25, &qword_27EE3A350, &unk_2460969A0);
  v27 = (*(v17 + 48))(v25, 1, v16);
  v105 = v15;
  if (v27 == 1)
  {
    sub_245F8E744(v25, &qword_27EE3A350, &unk_2460969A0);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v28 = sub_2460917F4();
    v29 = v30;
    (*(v17 + 8))(v25, v16);
  }

  *(inited + 48) = v28;
  *(inited + 56) = v29;
  v127 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E744(inited + 32, &qword_27EE39EF8, &unk_246096ED0);
  v31 = a5 + 64;
  v32 = 1 << *(a5 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(a5 + 64);
  v35 = (v32 + 63) >> 6;
  v120 = v17 + 32;
  v121 = v17 + 16;
  v112 = (v17 + 8);

  v36 = 0;
  v118 = xmmword_246096640;
  v37 = v123;
  v116 = v16;
  v117 = a5;
  v114 = a5 + 64;
  v115 = v17;
  for (i = v35; ; v35 = i)
  {
    if (v34)
    {
      goto LABEL_14;
    }

    do
    {
      v39 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
      }

      if (v39 >= v35)
      {

        v81 = sub_246091B34();

        sub_246091C04();
        v82 = objc_opt_self();
        *&v130 = 0;
        v83 = [v82 dataWithJSONObject:v81 options:3 error:&v130];
        if (v83)
        {
          v84 = v83;
          v85 = v130;
          v86 = sub_246091744();
          v88 = v87;

          v89 = *MEMORY[0x277CBECE8];
          v90 = sub_246091BD4();
          v91 = CFURLCreateWithFileSystemPath(v89, v90, kCFURLPOSIXPathStyle, 0);

          v92 = v110;
          if (v91)
          {
            v93 = v105;
            sub_2460916D4();
            sub_246091754();
            (*(v106 + 8))(v93, v107);

            sub_245FAEC7C(v86, v88);

LABEL_36:
            v102 = *MEMORY[0x277D85DE8];
            return result;
          }

          sub_245FAEC7C(v86, v88);
        }

        else
        {
          v94 = v130;
          v95 = sub_2460915D4();

          swift_willThrow();
          v92 = v110;
        }

        v96 = sub_245FA3174();
        v98 = v108;
        v97 = v109;
        (*(v92 + 16))(v108, v96, v109);
        v99 = sub_2460918D4();
        v100 = sub_246091FB4();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&dword_245F8A000, v99, v100, "Bundle Writer: Failed to write plane data to bundle!", v101, 2u);
          MEMORY[0x24C1989D0](v101, -1, -1);
        }

        else
        {
        }

        result = (*(v92 + 8))(v98, v97);
        goto LABEL_36;
      }

      v34 = *(v31 + 8 * v39);
      ++v36;
    }

    while (!v34);
    v36 = v39;
LABEL_14:
    v40 = v122;
    (*(v17 + 16))(v122, *(a5 + 48) + *(v17 + 72) * (__clz(__rbit64(v34)) | (v36 << 6)), v16);
    (*(v17 + 32))(v37, v40, v16);
    if (!*(a5 + 16))
    {
      goto LABEL_38;
    }

    v41 = sub_245FC1BDC(v37);
    if ((v42 & 1) == 0)
    {
      goto LABEL_39;
    }

    v43 = *(*(a5 + 56) + 8 * v41);
    v44 = swift_initStackObject();
    *(v44 + 16) = v118;
    *(v44 + 32) = 0x726F66736E617274;
    *(v44 + 40) = 0xE90000000000006DLL;
    v45 = v43;
    [v45 transform];
    sub_246020FBC(v46, v47, v48, v49);
    v51 = v50;
    v52 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
    *(v44 + 48) = v51;
    *(v44 + 72) = v52;
    *(v44 + 80) = 0x7265746E6563;
    *(v44 + 88) = 0xE600000000000000;
    [v45 center];
    v53.n128_u32[3] = v126.n128_u32[3];
    v124 = v53;
    *&v54 = sub_2460210D8(v53).n128_u64[0];
    *(v44 + 96) = v55;
    *(v44 + 120) = v52;
    *(v44 + 128) = 0x746E65747865;
    *(v44 + 136) = 0xE600000000000000;
    v56 = [v45 planeExtent];
    [v56 width];
    v126 = v57;

    v58 = [v45 planeExtent];
    [v58 height];
    v125 = v59;

    v60.n128_u64[0] = v126.n128_u32[0];
    v60.n128_u64[1] = v125;
    sub_2460210D8(v60);
    *(v44 + 168) = v52;
    *(v44 + 144) = v61;
    v62 = sub_245F8E498(v44);
    swift_setDeallocating();
    sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
    swift_arrayDestroy();
    v63 = sub_2460917F4();
    v65 = v64;
    v131 = sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
    *&v130 = v62;
    sub_245F8E6C0(&v130, v129);
    v66 = v127;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = v66;
    v69 = sub_245F8D968(v63, v65);
    v70 = *(v66 + 16);
    v71 = (v68 & 1) == 0;
    v72 = v70 + v71;
    if (__OFADD__(v70, v71))
    {
      goto LABEL_40;
    }

    v73 = v68;
    if (*(v66 + 24) >= v72)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v68 & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_7;
      }

      sub_24600986C();
      if (v73)
      {
        goto LABEL_7;
      }

LABEL_23:
      v76 = v128;
      *(v128 + 8 * (v69 >> 6) + 64) |= 1 << v69;
      v77 = (v76[6] + 16 * v69);
      *v77 = v63;
      v77[1] = v65;
      sub_245F8E6C0(v129, (v76[7] + 32 * v69));
      v78 = v76[2];
      v79 = __OFADD__(v78, 1);
      v80 = v78 + 1;
      if (!v79)
      {
        v127 = v76;
        v76[2] = v80;
        goto LABEL_8;
      }

      goto LABEL_41;
    }

    sub_2460079FC(v72, isUniquelyReferenced_nonNull_native);
    v74 = sub_245F8D968(v63, v65);
    if ((v73 & 1) != (v75 & 1))
    {
      break;
    }

    v69 = v74;
    if ((v73 & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_7:

    v127 = v128;
    v38 = (*(v128 + 56) + 32 * v69);
    sub_245F8E6F4(v38);
    sub_245F8E6C0(v129, v38);
LABEL_8:
    v34 &= v34 - 1;

    v37 = v123;
    v16 = v116;
    (*v112)(v123, v116);
    v126 = v124;
    a5 = v117;
    v31 = v114;
    v17 = v115;
  }

  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_246015DC0(__int128 *a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460919F4();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = *(v44 + 64);
  MEMORY[0x28223BE20](v7);
  v42 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_246091A64();
  v41 = *(v43 - 8);
  v10 = *(v41 + 64);
  MEMORY[0x28223BE20](v43);
  v40 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_246091A04();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[3];
  v55 = a1[2];
  v56 = v17;
  v57 = a1[4];
  v18 = a1[1];
  v53 = *a1;
  v54 = v18;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = result;
    v50 = v55;
    v51 = v56;
    v52 = v57;
    v48 = v53;
    v49 = v54;
    v21 = *(&v57 + 1);
    v22 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
    swift_beginAccess();
    v23 = *(v20 + v22);
    if (*(v23 + 16) && (v24 = sub_24600790C(v21), (v25 & 1) != 0))
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      sub_245F90360();
      (*(v13 + 104))(v16, *MEMORY[0x277D851C8], v12);
      sub_245F8E7A4(&v53, v47, &unk_27EE3AB00, &qword_246098D68);
      v39 = sub_246092084();
      (*(v13 + 8))(v16, v12);
      v27 = swift_allocObject();
      *(v27 + 24) = v21;
      v28 = v48;
      *(v27 + 56) = v49;
      v29 = v51;
      *(v27 + 72) = v50;
      *(v27 + 88) = v29;
      *(v27 + 16) = v20;
      *(v27 + 32) = v26;
      *(v27 + 104) = v52;
      *(v27 + 40) = v28;
      v47[4] = sub_24601EA24;
      v47[5] = v27;
      v47[0] = MEMORY[0x277D85DD0];
      v47[1] = 1107296256;
      v47[2] = sub_245F913A4;
      v47[3] = &unk_2858DFCC8;
      v30 = _Block_copy(v47);

      v31 = v40;
      sub_246091A14();
      v46 = MEMORY[0x277D84F90];
      sub_24601CC58(&qword_27EE3A380, MEMORY[0x277D85198]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
      v32 = v42;
      v33 = v45;
      sub_2460921A4();
      v34 = v39;
      MEMORY[0x24C1969D0](0, v31, v32, v30);
      _Block_release(v30);

      (*(v44 + 8))(v32, v33);
      (*(v41 + 8))(v31, v43);
    }

    else
    {
      v35 = sub_245FA3174();
      (*(v3 + 16))(v6, v35, v2);
      v36 = sub_2460918D4();
      v37 = sub_246091FB4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 134217984;
        *(v38 + 4) = v21;
        _os_log_impl(&dword_245F8A000, v36, v37, "Bundle Writer: Failed to get sequence id for depth point cloud for timestamp: %f!", v38, 0xCu);
        MEMORY[0x24C1989D0](v38, -1, -1);
      }

      else
      {
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_2460163B4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_246091704();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2460170C0(a3, a1);
  v12 = *(a4 + 48);
  v15[2] = *(a4 + 32);
  v15[3] = v12;
  v16 = *(a4 + 64);
  v13 = *(a4 + 16);
  v15[0] = *a4;
  v15[1] = v13;
  sub_246091644();

  sub_24601D5E8(v15, v11, 4032.0, 3024.0);
  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_2460164F0(uint64_t a1)
{
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_246091704();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  v13 = *(a1 + 24);
  v14 = *(a1 + 56);
  v30 = *(a1 + 40);
  v31 = v14;
  v32 = *(a1 + 72);
  v28 = *(a1 + 8);
  v29 = v13;
  memcpy(v33, (a1 + 80), 0x118uLL);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2460172AC(0, v12);
    v24[2] = v30;
    v24[3] = v31;
    *&v24[4] = v32;
    v24[0] = v28;
    v24[1] = v29;
    sub_24601E370(&v28, v23);
    sub_246091644();

    sub_24601D5E8(v24, v11, 1920.0, 1440.0);
    (*(v8 + 8))(v11, v7);
    v25[2] = v24[2];
    v25[3] = v24[3];
    v26 = *&v24[4];
    v25[0] = v24[0];
    v25[1] = v24[1];
    sub_245FFEA90(v25);
    v16 = sub_2460174D4(0, v12);
    v18 = v17;
    memcpy(v24, v33, 0x118uLL);
    sub_24601E8F4(v33, v23);
    LOBYTE(v16) = sub_24601E3CC(v24, v16, v18, v12);

    memcpy(v27, v24, 0x118uLL);
    sub_24601E950(v27);
    if (v16)
    {
    }

    else
    {
      v19 = sub_245FA3174();
      (*(v3 + 16))(v6, v19, v2);
      v20 = sub_2460918D4();
      v21 = sub_246091FB4();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_245F8A000, v20, v21, "Bundle Writer: Failed to write camera to bundle!", v22, 2u);
        MEMORY[0x24C1989D0](v22, -1, -1);
      }

      return (*(v3 + 8))(v6, v2);
    }
  }

  return result;
}

uint64_t sub_2460168E0()
{
  v0 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_246096EF0;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_246096EF0;
  *(v2 + 32) = sub_2460916F4();
  *(v2 + 40) = v3;
  strcpy((v2 + 48), "experimental");
  *(v2 + 61) = 0;
  *(v2 + 62) = -5120;
  v4 = sub_246091DB4();

  v5 = [v0 pathWithComponents_];

  v6 = sub_246091C04();
  v8 = v7;

  *(v1 + 32) = v6;
  *(v1 + 40) = v8;
  *(v1 + 48) = 0xD000000000000012;
  *(v1 + 56) = 0x80000002460A1510;
  v9 = sub_246091DB4();

  v10 = [v0 pathWithComponents_];

  v11 = sub_246091C04();
  return v11;
}

uint64_t sub_246016AB4(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_246096EF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_246096EF0;
  *(v6 + 32) = sub_2460916F4();
  *(v6 + 40) = v7;
  strcpy((v6 + 48), "experimental");
  *(v6 + 61) = 0;
  *(v6 + 62) = -5120;
  v8 = sub_246091DB4();

  v9 = [v4 pathWithComponents_];

  v10 = sub_246091C04();
  v12 = v11;

  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  *(v5 + 48) = a1;
  *(v5 + 56) = a2;
  v13 = sub_246091DB4();

  v14 = [v4 pathWithComponents_];

  v15 = sub_246091C04();
  return v15;
}

uint64_t sub_246016C4C()
{
  v0 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_246096EF0;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_246096EF0;
  *(v2 + 32) = sub_2460916F4();
  *(v2 + 40) = v3;
  strcpy((v2 + 48), "experimental");
  *(v2 + 61) = 0;
  *(v2 + 62) = -5120;
  v4 = sub_246091DB4();

  v5 = [v0 pathWithComponents_];

  v6 = sub_246091C04();
  v8 = v7;

  *(v1 + 32) = v6;
  *(v1 + 40) = v8;
  *(v1 + 48) = 0xD00000000000001BLL;
  *(v1 + 56) = 0x80000002460A1720;
  v9 = sub_246091DB4();

  v10 = [v0 pathWithComponents_];

  v11 = sub_246091C04();
  return v11;
}

uint64_t sub_246016E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v12 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_246096EF0;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_246096EF0;
  *(v14 + 32) = sub_2460916F4();
  *(v14 + 40) = v15;
  *(v14 + 48) = a2;
  *(v14 + 56) = a3;
  v16 = sub_246091DB4();

  v17 = [v12 pathWithComponents_];

  v18 = sub_246091C04();
  v20 = v19;

  *(v13 + 32) = v18;
  *(v13 + 40) = v20;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v21 = swift_allocObject();
  v22 = MEMORY[0x277D83B88];
  *(v21 + 16) = xmmword_246096460;
  v23 = MEMORY[0x277D83C10];
  *(v21 + 56) = v22;
  *(v21 + 64) = v23;
  *(v21 + 32) = a1;
  v30 = sub_246091C24();
  v31 = v24;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v25 = sub_24602138C(a6);
  MEMORY[0x24C196640](v25);

  MEMORY[0x24C196640](a4, a5);
  *(v13 + 48) = v30;
  *(v13 + 56) = v31;
  v26 = sub_246091DB4();

  v27 = [v12 pathWithComponents_];

  v28 = sub_246091C04();
  return v28;
}

uint64_t sub_2460170E4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, double a5)
{
  v10 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_246096EF0;
  *(v11 + 32) = a2();
  *(v11 + 40) = v12;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_246096460;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v22 = sub_246091C24();
  v23 = v16;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v17 = sub_24602138C(a5);
  MEMORY[0x24C196640](v17);

  MEMORY[0x24C196640](a3, a4);
  *(v11 + 48) = v22;
  *(v11 + 56) = v23;
  v18 = sub_246091DB4();

  v19 = [v10 pathWithComponents_];

  v20 = sub_246091C04();
  return v20;
}

uint64_t sub_2460172AC(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_246096EF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_246096EF0;
  *(v6 + 32) = sub_246016A98();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0xD000000000000012;
  *(v6 + 56) = 0x80000002460A1510;
  v8 = sub_246091DB4();

  v9 = [v4 pathWithComponents_];

  v10 = sub_246091C04();
  v12 = v11;

  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_246096460;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v22 = sub_246091C24();
  v23 = v16;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v17 = sub_24602138C(a2);
  MEMORY[0x24C196640](v17);

  MEMORY[0x24C196640](1987273518, 0xE400000000000000);
  *(v5 + 48) = v22;
  *(v5 + 56) = v23;
  v18 = sub_246091DB4();

  v19 = [v4 pathWithComponents_];

  v20 = sub_246091C04();
  return v20;
}

uint64_t sub_2460174D4(uint64_t a1, double a2)
{
  v4 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_246096EF0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_246096EF0;
  *(v6 + 32) = sub_246016A98();
  *(v6 + 40) = v7;
  *(v6 + 48) = 0x736172656D6163;
  *(v6 + 56) = 0xE700000000000000;
  v8 = sub_246091DB4();

  v9 = [v4 pathWithComponents_];

  v10 = sub_246091C04();
  v12 = v11;

  *(v5 + 32) = v10;
  *(v5 + 40) = v12;
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D83B88];
  *(v13 + 16) = xmmword_246096460;
  v15 = MEMORY[0x277D83C10];
  *(v13 + 56) = v14;
  *(v13 + 64) = v15;
  *(v13 + 32) = a1;
  v22 = sub_246091C24();
  v23 = v16;
  MEMORY[0x24C196640](95, 0xE100000000000000);
  v17 = sub_24602138C(a2);
  MEMORY[0x24C196640](v17);

  MEMORY[0x24C196640](0x6E6F736A2ELL, 0xE500000000000000);
  *(v5 + 48) = v22;
  *(v5 + 56) = v23;
  v18 = sub_246091DB4();

  v19 = [v4 pathWithComponents_];

  v20 = sub_246091C04();
  return v20;
}

uint64_t sub_2460176FC()
{
  v303 = *MEMORY[0x277D85DE8];
  v1 = sub_246091704();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v219 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v245 = &v219 - v8;
  v256 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v253 = *(v256 - 8);
  v9 = *(v253 + 64);
  v10 = MEMORY[0x28223BE20](v256);
  v244 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v243 = &v219 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v242 = &v219 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v241 = &v219 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v240 = &v219 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v226 = &v219 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v239 = &v219 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v238 = &v219 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v237 = &v219 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v257 = (&v219 - v29);
  MEMORY[0x28223BE20](v28);
  v236 = (&v219 - v30);
  v254 = sub_2460917D4();
  v31 = *(v254 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v254);
  v34 = &v219 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_246091864();
  v36 = *(v35 - 8);
  v37 = *(v36 + 64);
  MEMORY[0x28223BE20](v35);
  v39 = &v219 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v247 = v0;
  v40 = v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata;
  v41 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 8);
  if (v41)
  {
    v246 = v5;
    v222 = v1;
    v259 = *v40;
    v42 = *(v40 + 24);
    v258.i64[0] = *(v40 + 16);
    LODWORD(v255) = *(v40 + 32);
    v249.i64[0] = v41;

    v252 = v42;

    v43 = sub_24601F68C();
    if (v44)
    {
      v45 = v43;
    }

    else
    {
      v45 = 0;
    }

    v251.i64[0] = v45;
    v46 = 0xE000000000000000;
    if (v44)
    {
      v46 = v44;
    }

    v250.i64[0] = v46;
    type metadata accessor for ObjectCaptureSession(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v225 = [objc_opt_self() bundleForClass_];
    v48 = [v225 infoDictionary];
    v221 = v2;
    if (v48)
    {
      v49 = v48;
      v50 = sub_246091B64();

      if (*(v50 + 16) && (v51 = sub_245F8D968(0xD00000000000001ALL, 0x80000002460A16E0), (v52 & 1) != 0))
      {
        sub_245F8E5C8(*(v50 + 56) + 32 * v51, &v293);

        if (swift_dynamicCast())
        {
          v248 = *(&v283 + 1);
          v53 = v283;
          goto LABEL_15;
        }
      }

      else
      {
      }
    }

    v248 = 0xE300000000000000;
    v53 = 4271950;
LABEL_15:
    v55 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    sub_246091844();
    v56 = sub_246091854();
    (*(v36 + 8))(v39, v35);
    [v55 setLocale_];

    v57 = sub_246091BD4();
    [v55 setDateFormat_];

    sub_2460917C4();
    v58 = sub_246091774();
    (*(v31 + 8))(v34, v254);
    v224 = v55;
    v59 = [v55 stringFromDate_];

    v254 = sub_246091C04();
    v233 = v60;

    v235 = sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
    v61 = swift_allocObject();
    v234 = xmmword_246098BE0;
    *(v61 + 16) = xmmword_246098BE0;
    *(v61 + 32) = 0x6E6F6973726576;
    v62 = v259;
    *(v61 + 40) = 0xE700000000000000;
    *(v61 + 48) = v62;
    v63 = v249.i64[0];
    *(v61 + 56) = v249.i64[0];
    v64 = MEMORY[0x277D837D0];
    *(v61 + 72) = MEMORY[0x277D837D0];
    *(v61 + 80) = 0x696669746E656469;
    v65 = v258.i64[0];
    *(v61 + 88) = 0xEA00000000007265;
    *(v61 + 96) = v65;
    *(v61 + 104) = v252;
    *(v61 + 120) = v64;
    *(v61 + 128) = 0x6567617265766F63;
    *(v61 + 136) = 0xE800000000000000;
    v66 = MEMORY[0x277D83A90];
    *(v61 + 144) = v255;
    *(v61 + 168) = v66;
    *(v61 + 176) = 0x6F69737265567773;
    *(v61 + 184) = 0xE90000000000006ELL;
    *(v61 + 192) = v53;
    *(v61 + 200) = v248;
    *(v61 + 216) = v64;
    strcpy((v61 + 224), "systemVersion");
    *(v61 + 238) = -4864;
    v67 = objc_opt_self();

    v68 = [v67 processInfo];
    v69 = [v68 operatingSystemVersionString];

    v70 = sub_246091C04();
    v72 = v71;

    *(v61 + 240) = v70;
    *(v61 + 248) = v72;
    *(v61 + 264) = v64;
    *(v61 + 272) = 0x7954656369766564;
    v73 = v251.i64[0];
    *(v61 + 280) = 0xEA00000000006570;
    *(v61 + 288) = v73;
    *(v61 + 296) = v250.i64[0];
    *(v61 + 312) = v64;
    *(v61 + 320) = 0x656D695465746164;
    v74 = v254;
    *(v61 + 328) = 0xE800000000000000;
    *(v61 + 336) = v74;
    *(v61 + 344) = v233;
    *(v61 + 360) = v64;
    *(v61 + 368) = 1936154996;
    *(v61 + 376) = 0xE400000000000000;
    v75 = sub_245F8E624(&qword_27EE3A818, &unk_246098D10);
    v76 = MEMORY[0x277D84F90];
    *(v61 + 384) = MEMORY[0x277D84F90];
    *(v61 + 408) = v75;
    *(v61 + 416) = 1953066613;
    *(v61 + 424) = 0xE400000000000000;
    *(v61 + 432) = 109;
    *(v61 + 440) = 0xE100000000000000;
    *(v61 + 456) = v64;
    *(v61 + 464) = 0x6F64697265507369;
    *(v61 + 472) = 0xE900000000000074;
    v77 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_isPeridot;
    v78 = v247;
    swift_beginAccess();
    v79 = *(v78 + v77);
    v80 = v76;
    *(v61 + 504) = MEMORY[0x277D839B0];
    *(v61 + 480) = v79;
    sub_24601CE08(v259, v63);
    v223 = sub_245F8E498(v61);
    swift_setDeallocating();
    v233 = sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v260 = v76;
    v81 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap;
    swift_beginAccess();
    v82 = *(v78 + v81);
    v83 = *(v82 + 16);
    if (v83)
    {
      v80 = sub_24601A590(*(v82 + 16), 0);
      v84 = sub_24601C508(&v293, v80 + ((*(v253 + 80) + 32) & ~*(v253 + 80)), v83, v82);
      swift_bridgeObjectRetain_n();
      sub_245F8E6B8();
      v85 = v84 == v83;
      v86 = v256;
      if (!v85)
      {
        __break(1u);
      }
    }

    else
    {
      v86 = v256;
    }

    *&v293 = v80;
    sub_24601B154(&v293);
    v87 = v246;
    v88 = v257;
    v89 = *(v293 + 16);
    v220 = 0;
    if (v89)
    {
      v90 = *(v86 + 48);
      v91 = v253;
      v92 = *(v253 + 80);
      v219 = v293;
      v93 = v293 + ((v92 + 32) & ~v92);
      v231 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
      v232 = v90;
      swift_beginAccess();
      v94 = v93;
      v254 = v89 - 1;
      v229 = *(v91 + 72);
      v255 = xmmword_246096EF0;
      v230 = xmmword_246096460;
      while (1)
      {
        v248 = v94;
        v95 = v236;
        sub_245F8E7A4(v94, v236, &qword_27EE3A728, &unk_246098CF0);
        v96 = *(v86 + 48);
        *v88 = *v95;
        sub_24600BE48(v95 + v232, v88 + v96);
        v97 = v237;
        sub_245F8E7A4(v88, v237, &qword_27EE3A728, &unk_246098CF0);
        v98 = v97 + *(v86 + 48);
        v259 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
        v99 = v98 + v259[12];
        v100 = *v99;
        v101 = *(v99 + 8);
        sub_24601E148(v98);
        v102 = MEMORY[0x277D84F90];
        if ((v101 & 1) == 0)
        {
          *&v293 = v100;
          v102 = sub_24608BC64();
        }

        v252 = v102;
        v103 = swift_allocObject();
        *(v103 + 32) = 0x64496172656D6163;
        v253 = v103 + 32;
        *(v103 + 16) = v234;
        *(v103 + 40) = 0xE800000000000000;
        *(v103 + 48) = 0;
        *(v103 + 72) = MEMORY[0x277D83B88];
        *(v103 + 80) = 0x556E6F6973736573;
        *(v103 + 88) = 0xEB00000000444955;
        v104 = v238;
        sub_245F8E7A4(v88, v238, &qword_27EE3A728, &unk_246098CF0);
        v105 = v104 + *(v86 + 48);
        v106 = v245;
        sub_245F8E7A4(v105 + v259[6], v245, &qword_27EE3A350, &unk_2460969A0);
        sub_24601E148(v105);
        v107 = sub_246091834();
        v108 = *(v107 - 8);
        if ((*(v108 + 48))(v106, 1, v107) == 1)
        {
          sub_245F8E744(v106, &qword_27EE3A350, &unk_2460969A0);
          v109 = (v103 + 96);
          *(v103 + 120) = MEMORY[0x277D837D0];
        }

        else
        {
          v110 = sub_2460917F4();
          v112 = v111;
          (*(v108 + 8))(v106, v107);
          v109 = (v103 + 96);
          *(v103 + 120) = MEMORY[0x277D837D0];
          if (v112)
          {
            *v109 = v110;
            v88 = v257;
            goto LABEL_30;
          }

          v88 = v257;
        }

        *v109 = 0;
        v112 = 0xE000000000000000;
LABEL_30:
        *(v103 + 104) = v112;
        *(v103 + 128) = 0x49746E656D676573;
        *(v103 + 136) = 0xE900000000000064;
        v113 = v239;
        sub_245F8E7A4(v88, v239, &qword_27EE3A728, &unk_246098CF0);
        v114 = v113 + *(v86 + 48);
        v115 = v114 + v259[7];
        v116 = *(v115 + 64);
        v288 = *(v115 + 80);
        v287 = v116;
        v292 = *(v115 + 144);
        v291 = *(v115 + 128);
        v117 = *(v115 + 32);
        v286 = *(v115 + 48);
        v285 = v117;
        v118 = *(v115 + 96);
        v290 = *(v115 + 112);
        v289 = v118;
        v119 = *v115;
        v284 = *(v115 + 16);
        v283 = v119;
        sub_245F8E7A4(&v283, &v273, &qword_27EE3A990, &qword_246099C20);
        sub_24601E148(v114);
        v299 = v289;
        v300 = v290;
        v301 = v291;
        v302 = v292;
        v295 = v285;
        v296 = v286;
        v297 = v287;
        v298 = v288;
        v293 = v283;
        v294 = v284;
        if (sub_245F97C14(&v293) == 1)
        {
          v120 = (v103 + 144);
          *(v103 + 168) = MEMORY[0x277D83B88];
        }

        else
        {
          v121 = *(&v301 + 1);
          v122 = v302;
          sub_245F8E744(&v283, &qword_27EE3A990, &qword_246099C20);
          v120 = (v103 + 144);
          *(v103 + 168) = MEMORY[0x277D83B88];
          if ((v122 & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        v123 = v226;
        sub_245F8E7A4(v88, v226, &qword_27EE3A728, &unk_246098CF0);
        v124 = v123 + *(v86 + 48);
        v125 = v124 + v259[8];
        v121 = *(v125 + 64);
        v126 = *(v125 + 72);
        v127 = *(v125 + 73);
        sub_24601E148(v124);
        if (v127 & 1) != 0 || (v126)
        {
          *v120 = -1;
          goto LABEL_37;
        }

LABEL_36:
        *v120 = v121;
LABEL_37:
        *(v103 + 176) = 0x6D617473656D6974;
        *(v103 + 184) = 0xE900000000000070;
        v128 = v240;
        sub_245F8E7A4(v88, v240, &qword_27EE3A728, &unk_246098CF0);
        v129 = *(v86 + 48);
        v130 = *(v128 + v129);
        sub_24601E148(v128 + v129);
        *(v103 + 192) = sub_24602138C(v130);
        *(v103 + 200) = v131;
        *(v103 + 216) = MEMORY[0x277D837D0];
        *(v103 + 224) = 0x6172656D6163;
        *(v103 + 232) = 0xE600000000000000;
        v132 = sub_245F8E624(&qword_27EE3A820, &qword_246098D20);
        v133 = v88;
        inited = swift_initStackObject();
        *(inited + 16) = v255;
        *(inited + 32) = 0x69736E6972746E69;
        *(inited + 40) = 0xEA00000000007363;
        sub_245F8E7A4(v133, v128, &qword_27EE3A728, &unk_246098CF0);
        v135 = v128 + *(v86 + 48);
        v136 = *(v135 + 32);
        v261[0] = *(v135 + 16);
        v261[1] = v136;
        v261[2] = *(v135 + 48);
        sub_24601E148(v135);
        sub_246020EF0(v261);
        *(inited + 48) = v137;
        *(inited + 56) = 0x726F66736E617274;
        *(inited + 64) = 0xE90000000000006DLL;
        sub_245F8E7A4(v133, v128, &qword_27EE3A728, &unk_246098CF0);
        v138 = v128 + *(v86 + 48);
        v139 = *(v138 + 80);
        v258 = *(v138 + 64);
        v140 = *(v138 + 112);
        v250 = *(v138 + 96);
        v251 = v139;
        v249 = v140;
        sub_24601E148(v138);
        sub_246020FBC(v258, v251, v250, v249);
        *(inited + 72) = v141;
        v142 = sub_24601E1A4(inited);
        swift_setDeallocating();
        sub_245F8E624(&qword_27EE3A828, &qword_246098D28);
        swift_arrayDestroy();
        v143 = sub_245F8E624(&qword_27EE3A830, &unk_246098D30);
        *(v103 + 240) = v142;
        v258.i64[0] = v143;
        *(v103 + 264) = v143;
        *(v103 + 272) = 0x7463656A626FLL;
        *(v103 + 280) = 0xE600000000000000;
        v251.i64[0] = v132;
        v144 = swift_initStackObject();
        *(v144 + 16) = v255;
        *(v144 + 32) = 0x676E69646E756F62;
        *(v144 + 40) = 0xEB00000000786F42;
        v145 = v241;
        sub_245F8E7A4(v133, v241, &qword_27EE3A728, &unk_246098CF0);
        v146 = v145 + *(v86 + 48);
        v147 = v146 + v259[7];
        v148 = *(v147 + 80);
        v267 = *(v147 + 64);
        v268 = v148;
        v272 = *(v147 + 144);
        v149 = *(v147 + 128);
        v150 = *(v147 + 48);
        v265 = *(v147 + 32);
        v266 = v150;
        v151 = *(v147 + 96);
        v270 = *(v147 + 112);
        v271 = v149;
        v269 = v151;
        v152 = *(v147 + 16);
        v263 = *v147;
        v264 = v152;
        sub_245F8E7A4(&v263, v262, &qword_27EE3A990, &qword_246099C20);
        sub_24601E148(v146);
        v279 = v269;
        v280 = v270;
        v281 = v271;
        v282 = v272;
        v275 = v265;
        v276 = v266;
        v277 = v267;
        v278 = v268;
        v273 = v263;
        v274 = v264;
        if (sub_245F97C14(&v273) == 1)
        {
          OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
        }

        else
        {
          v249 = v274;
          v250 = v273;
          v227 = v276;
          v228 = v275;
          sub_245F8E744(&v263, &qword_27EE3A990, &qword_246099C20);
          v156 = v227;
          v155 = v228;
          v154 = v249;
          v153 = v250;
        }

        sub_246020FBC(v153, v154, v155, v156);
        *(v144 + 48) = v157;
        *(v144 + 56) = 0x726F66736E617274;
        *(v144 + 64) = 0xE90000000000006DLL;
        OCNonModularSPI_Serialization_InvalidObjectTransform();
        sub_246020FBC(v158, v159, v160, v161);
        *(v144 + 72) = v162;
        v163 = sub_24601E1A4(v144);
        swift_setDeallocating();
        swift_arrayDestroy();
        *(v103 + 288) = v163;
        *(v103 + 312) = v258.i64[0];
        *(v103 + 320) = 0x656E656373;
        *(v103 + 328) = 0xE500000000000000;
        v164 = swift_allocObject();
        *(v164 + 16) = v230;
        *(v164 + 32) = 0x676E69646E756F62;
        *(v164 + 40) = 0xEB00000000786F42;
        v165 = v242;
        sub_245F8E7A4(v257, v242, &qword_27EE3A728, &unk_246098CF0);
        v166 = v165 + *(v256 + 48);
        v167 = v166 + v259[8];
        v169 = *v167;
        v168 = *(v167 + 8);
        v171 = *(v167 + 16);
        v170 = *(v167 + 24);
        v172 = *(v167 + 32);
        v250.i64[0] = *(v167 + 40);
        v173 = *(v167 + 56);
        v249.i64[0] = *(v167 + 48);
        v251.i64[0] = v173;
        LOBYTE(v163) = *(v167 + 73);
        sub_24601E148(v166);
        if (v163)
        {
          OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
        }

        else
        {
          v174.i64[0] = v169;
          v174.i64[1] = v168;
          v175.i64[0] = v171;
          v175.i64[1] = v170;
          v176.i64[0] = v172;
          v176.i64[1] = v250.i64[0];
          v177.i64[0] = v249.i64[0];
          v177.i64[1] = v251.i64[0];
        }

        v87 = v246;
        sub_246020FBC(v174, v175, v176, v177);
        *(v164 + 48) = v178;
        v179 = sub_24601E1A4(v164);
        swift_setDeallocating();
        sub_245F8E744(v164 + 32, &qword_27EE3A828, &qword_246098D28);
        swift_deallocClassInstance();
        *(v103 + 336) = v179;
        v88 = v257;
        *(v103 + 360) = v258.i64[0];
        *(v103 + 368) = 0x4D65727574706163;
        *(v103 + 376) = 0xEB0000000065646FLL;
        v180 = v243;
        sub_245F8E7A4(v88, v243, &qword_27EE3A728, &unk_246098CF0);
        v86 = v256;
        v181 = v180 + *(v256 + 48);
        v182 = *(v181 + v259[9]);
        sub_24601E148(v181);
        if (v182 == 2)
        {
          v183 = -1;
        }

        else
        {
          v262[0] = v182 & 1;
          v183 = ObjectCaptureSession.Metadata.Shot.CaptureMode.rawValue.getter();
        }

        *(v103 + 384) = v183;
        *(v103 + 408) = MEMORY[0x277D83B88];
        *(v103 + 416) = 0x6B63616264656566;
        *(v103 + 424) = 0xE800000000000000;
        v184 = sub_245F8E624(&qword_27EE3A138, &qword_246097250);
        *(v103 + 432) = v252;
        *(v103 + 456) = v184;
        *(v103 + 464) = 0x65636E6575716573;
        *(v103 + 472) = 0xEA00000000006449;
        v185 = v244;
        sub_245F8E7A4(v88, v244, &qword_27EE3A728, &unk_246098CF0);
        v186 = *(v86 + 48);
        v187 = *(v185 + v186);
        sub_24601E148(v185 + v186);
        v188 = *(v247 + v231);
        if (*(v188 + 16) && (v189 = sub_24600790C(v187), (v190 & 1) != 0))
        {
          v191 = *(*(v188 + 56) + 8 * v189);
        }

        else
        {
          v191 = -1;
        }

        *(v103 + 504) = MEMORY[0x277D83B88];
        *(v103 + 480) = v191;
        sub_245F8E498(v103);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        sub_246091B34();

        MEMORY[0x24C196720](v192);
        if (*((v260 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v260 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v193 = *((v260 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_246091DF4();
        }

        sub_246091E34();
        sub_245F8E744(v88, &qword_27EE3A728, &unk_246098CF0);
        if (!v254)
        {
          v194 = v260;

          goto LABEL_56;
        }

        --v254;
        v94 = v248 + v229;
      }
    }

    v194 = MEMORY[0x277D84F90];
LABEL_56:
    *(&v294 + 1) = sub_245F8E624(&qword_27EE3A838, &qword_246098D40);
    *&v293 = v194;
    sub_245F8E6C0(&v293, &v283);
    v195 = v223;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v273.i64[0] = v195;
    sub_246008DF4(&v283, 0x73746F6873, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    v197 = sub_246091B34();

    v198 = objc_opt_self();
    sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
    v199 = swift_allocObject();
    *(v199 + 16) = xmmword_246096EF0;
    *(v199 + 32) = sub_2460916F4();
    *(v199 + 40) = v200;
    strcpy((v199 + 48), "metadata.json");
    *(v199 + 62) = -4864;
    v201 = sub_246091DB4();

    v202 = [v198 pathWithComponents_];

    sub_246091C04();
    v203 = objc_opt_self();
    *&v293 = 0;
    v204 = [v203 dataWithJSONObject:v197 options:3 error:&v293];
    if (v204)
    {
      v205 = v204;
      v206 = v293;
      v207 = sub_246091744();
      v209 = v208;

      v210 = *MEMORY[0x277CBECE8];
      v211 = sub_246091BD4();
      v212 = CFURLCreateWithFileSystemPath(v210, v211, kCFURLPOSIXPathStyle, 0);

      if (!v212)
      {
        sub_245FAEC7C(v207, v209);
        goto LABEL_63;
      }

      sub_2460916D4();
      v213 = v220;
      sub_246091754();
      if (!v213)
      {
        (*(v221 + 8))(v87, v222);

        sub_245FAEC7C(v207, v209);
        v54 = 1;
        goto LABEL_64;
      }

      (*(v221 + 8))(v87, v222);

      sub_245FAEC7C(v207, v209);
      v214 = v213;
    }

    else
    {
      v215 = v293;
      v216 = sub_2460915D4();

      swift_willThrow();
      v214 = v216;
    }

LABEL_63:
    v54 = 0;
LABEL_64:

    goto LABEL_65;
  }

  v54 = 0;
LABEL_65:
  v217 = *MEMORY[0x277D85DE8];
  return v54;
}

uint64_t sub_246019040()
{
  v1 = sub_2460918F4();
  v73 = *(v1 - 8);
  v74 = v1;
  v2 = *(v73 + 64);
  MEMORY[0x28223BE20](v1);
  v72 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v77 = *(v4 - 8);
  v5 = *(v77 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v72 - v9;
  v10 = sub_245F8E624(&qword_27EE3A720, &unk_246098870);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = (&v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v16 = (&v72 - v15);
  v17 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap;
  swift_beginAccess();
  v18 = *(v0 + v17);
  v19 = *(v18 + 64);
  v75 = v18 + 64;
  v20 = 1 << *(v18 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  v83 = v18;

  v86 = v0;
  v84 = v23;
  result = swift_beginAccess();
  v25 = 0;
  v26 = (v20 + 63) >> 6;
  v81 = xmmword_246096EF0;
  v80 = xmmword_246096460;
  v79 = v26;
  v82 = v8;
  if (v22)
  {
    while (1)
    {
      v27 = v25;
LABEL_12:
      v30 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v31 = v30 | (v27 << 6);
      v32 = *(*(v83 + 48) + 8 * v31);
      v33 = v76;
      sub_24600B080(*(v83 + 56) + *(v77 + 72) * v31, v76);
      v34 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
      v35 = *(v34 + 48);
      *v14 = v32;
      sub_24600BE48(v33, v14 + v35);
      (*(*(v34 - 8) + 56))(v14, 0, 1, v34);
      v29 = v27;
LABEL_13:
      sub_245FC5914(v14, v16, &qword_27EE3A720, &unk_246098870);
      v36 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
      v37 = (*(*(v36 - 8) + 48))(v16, 1, v36);
      if (v37 == 1)
      {
        break;
      }

      v38 = *v16;
      sub_24600BE48(v16 + *(v36 + 48), v8);
      v39 = &v8[*(v4 + 28)];
      v40 = *(v39 + 7);
      v91[6] = *(v39 + 6);
      v91[7] = v40;
      v92 = *(v39 + 8);
      v93 = v39[144];
      v41 = *(v39 + 3);
      v91[2] = *(v39 + 2);
      v91[3] = v41;
      v42 = *(v39 + 5);
      v91[4] = *(v39 + 4);
      v91[5] = v42;
      v43 = *v39;
      v91[1] = *(v39 + 1);
      v91[0] = v43;
      if (sub_245F97C14(v91) == 1 || v93 == 1)
      {
        v44 = &v8[*(v4 + 32)];
        if (v44[73] & 1) != 0 || (v44[72])
        {
          v45 = -1;
        }

        else
        {
          v45 = *(v44 + 8);
        }
      }

      else
      {
        v45 = *(&v92 + 1);
      }

      v47 = *(v86 + v84);
      if (!*(v47 + 16) || (v48 = sub_24600790C(v38), (v49 & 1) == 0))
      {

        sub_24601E148(v8);
        return v37 == 1;
      }

      v78 = v37;
      v85 = v45;
      v50 = v4;
      v51 = *(*(v47 + 56) + 8 * v48);
      v52 = objc_opt_self();
      sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
      v53 = swift_allocObject();
      *(v53 + 16) = v81;
      *(v53 + 32) = sub_246016C4C();
      *(v53 + 40) = v54;
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v55 = swift_allocObject();
      *(v55 + 16) = v80;
      *(v55 + 56) = MEMORY[0x277D83B88];
      *(v55 + 64) = MEMORY[0x277D83C10];
      *(v55 + 32) = v51;
      v88[0] = sub_246091C24();
      v88[1] = v56;
      MEMORY[0x24C196640](95, 0xE100000000000000);
      v57 = sub_24602138C(v38);
      MEMORY[0x24C196640](v57);

      MEMORY[0x24C196640](0x6E6F736A2ELL, 0xE500000000000000);
      v58 = v88[1];
      *(v53 + 48) = v88[0];
      *(v53 + 56) = v58;
      v59 = sub_246091DB4();

      v60 = v52;
      v8 = v82;
      v61 = [v60 pathWithComponents_];

      v62 = sub_246091C04();
      v64 = v63;

      memcpy(v89, v8 + 16, 0x188uLL);
      memcpy(v88, v8 + 16, 0x188uLL);
      sub_24601E2C0(v89, &v87);
      LOBYTE(v62) = sub_24601CFEC(v88, v85, v62, v64, v38);

      memcpy(v90, v88, 0x188uLL);
      sub_24601E31C(v90);
      if ((v62 & 1) == 0)
      {

        sub_24601E148(v8);
        v37 = v78;
        return v37 == 1;
      }

      result = sub_24601E148(v8);
      v25 = v29;
      v4 = v50;
      v26 = v79;
      if (!v22)
      {
        goto LABEL_5;
      }
    }

    v65 = sub_245FA3174();
    v67 = v72;
    v66 = v73;
    v68 = v74;
    (*(v73 + 16))(v72, v65, v74);
    v69 = sub_2460918D4();
    v70 = sub_246091FA4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_245F8A000, v69, v70, "Bundle Writer: Saved shot cameras with mobileSfM poses to the bundle!", v71, 2u);
      MEMORY[0x24C1989D0](v71, -1, -1);
    }

    (*(v66 + 8))(v67, v68);
    v37 = 1;
    return v37 == 1;
  }

  else
  {
LABEL_5:
    if (v26 <= v25 + 1)
    {
      v28 = v25 + 1;
    }

    else
    {
      v28 = v26;
    }

    v29 = v28 - 1;
    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v26)
      {
        v46 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
        (*(*(v46 - 8) + 56))(v14, 1, 1, v46);
        v22 = 0;
        goto LABEL_13;
      }

      v22 = *(v75 + 8 * v27);
      ++v25;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL sub_246019814()
{
  v1 = sub_245F8E624(&qword_27EE3A720, &unk_246098870);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v44 - v3);
  v5 = sub_245F8E624(&qword_27EE3A760, qword_2460988B8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v8 = (&v44 - v7);
  v9 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap;
  swift_beginAccess();
  v10 = *(v0 + v9);

  sub_246019CDC(v11, v4);

  v12 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_245F8E744(v4, &qword_27EE3A720, &unk_246098870);
    return 0;
  }

  v13 = *(v12 + 48);
  v14 = *(v5 + 48);
  *v8 = *v4;
  sub_24600BE48(v4 + v13, v8 + v14);
  v15 = *v8;
  sub_24601E148(v8 + *(v5 + 48));
  v16 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  swift_beginAccess();
  v17 = *(v0 + v16);
  if (!*(v17 + 16))
  {
    return 0;
  }

  v18 = sub_24600790C(v15);
  if ((v19 & 1) == 0)
  {
    return 0;
  }

  v20 = *(*(v17 + 56) + 8 * v18);
  v21 = *MEMORY[0x277CBECE8];
  sub_246016DEC(v20, v15);
  v22 = sub_246091BD4();

  v23 = CFURLCreateWithFileSystemPath(v21, v22, kCFURLPOSIXPathStyle, 0);

  if (!v23)
  {
    return 0;
  }

  v24 = CGImageSourceCreateWithURL(v23, 0);
  if (!v24)
  {

    return 0;
  }

  v25 = v24;
  sub_245F8E624(&qword_27EE39F20, &qword_246096668);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096640;
  v27 = *MEMORY[0x277CD3578];
  *(inited + 32) = *MEMORY[0x277CD3578];
  v28 = MEMORY[0x277D839B0];
  *(inited + 40) = 1;
  v29 = *MEMORY[0x277CD3568];
  *(inited + 64) = v28;
  *(inited + 72) = v29;
  *(inited + 80) = 1;
  v30 = *MEMORY[0x277CD3660];
  *(inited + 104) = v28;
  *(inited + 112) = v30;
  *(inited + 144) = MEMORY[0x277D83B88];
  *(inited + 120) = 640;
  v31 = v27;
  v32 = v29;
  v33 = v30;
  sub_245F91D00(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39F28, &qword_246096670);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_24601CC58(&qword_27EE39F30, type metadata accessor for CFString);
  v34 = sub_246091B34();

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(v25, 0, v34);
  if (!ThumbnailAtIndex)
  {

    return 0;
  }

  v36 = ThumbnailAtIndex;
  v37 = objc_opt_self();
  sub_245F8E624(&qword_27EE3A218, &qword_246098F60);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_246096EF0;
  *(v38 + 32) = sub_2460916F4();
  *(v38 + 40) = v39;
  strcpy((v38 + 48), "thumbnail.jpg");
  *(v38 + 62) = -4864;
  v40 = sub_246091DB4();

  v41 = [v37 pathWithComponents_];

  sub_246091C04();
  v42 = sub_2460113F4(v36);

  return v42;
}

uint64_t sub_246019CDC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v24 = v6;
    v10 = sub_24601C47C(v9);
    v11 = -1 << *(a1 + 32);
    v12 = sub_2460921B4();
    v13 = sub_24601C99C(v12, *(a1 + 36), 0, v10, a1);
    v15 = v14;
    v17 = v16;
    v18 = *(v4 + 48);
    sub_24601CACC(&v8[v18], v13, v14, v16 & 1, a1);
    v20 = v19;
    sub_24601E2A8(v13, v15, v17 & 1);
    *a2 = v20;
    sub_24600BE48(&v8[v18], a2 + *(v4 + 48));
    return (*(v24 + 56))(a2, 0, 1, v4);
  }

  else
  {
    v22 = *(v6 + 56);

    return v22(a2, 1, 1, v4);
  }
}

uint64_t sub_246019EA8(double *a1)
{
  v57 = sub_2460918F4();
  v2 = *(v57 - 8);
  isa = v2[8].isa;
  v4 = MEMORY[0x28223BE20](v57);
  v43 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v49 = &v43 - v6;
  v52 = sub_246091704();
  v7 = *(v52 - 8);
  v8 = v7[8];
  MEMORY[0x28223BE20](v52);
  v51 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) + 52);
  v55 = a1;
  v11 = *(a1 + v10);
  if (v11 >> 62)
  {
LABEL_24:
    v12 = sub_246092354();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_isPeridot;
  v56 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap;
  result = swift_beginAccess();
  if (!v12)
  {
    return result;
  }

  v14 = 0;
  v53 = v11 & 0xFFFFFFFFFFFFFF8;
  v54 = v11 & 0xC000000000000001;
  v44 = &v2[2];
  v45 = &v2[1];
  v46 = v7 + 1;
  v47 = v12;
  v48 = v11;
  v15 = v60;
  while (v54)
  {
    v7 = MEMORY[0x24C196C20](v14, v11);
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_18;
    }

LABEL_10:
    v17 = *(v60 + v56);
    if (!*(v17 + 16))
    {
      goto LABEL_19;
    }

    v18 = sub_24600790C(*v55);
    if ((v19 & 1) == 0)
    {
      goto LABEL_19;
    }

    v58 = *(*(v17 + 56) + 8 * v18);
    v20 = v58;
    v59 = v16;
    v21 = *(*v7 + 13);
    v22 = v21();
    sub_2460172AC(v20, v22);
    v23 = (*(*v7 + 16))();
    v24 = v50;
    swift_beginAccess();
    sub_24602335C((v15 + v24), v61);
    swift_endAccess();

    v25 = v51;
    sub_246091644();

    sub_24601D5E8(v61, v25, 1920.0, 1440.0);
    (*v46)(v25, v52);
    v63[2] = v61[2];
    v63[3] = v61[3];
    v64 = v62;
    v63[0] = v61[0];
    v63[1] = v61[1];
    v26 = sub_245FFEA90(v63);
    v27 = (v21)(v26);
    v28 = sub_2460174D4(v58, v27);
    v30 = v29;
    v31 = (*(*v7 + 19))(v65);
    v32 = (v21)(v31);
    v2 = sub_24601DD74(v65, v32, v28, v30);

    if (v2)
    {

      v33 = v47;
      v11 = v48;
      v34 = v59;
    }

    else
    {
      v35 = sub_245FA3174();
      (*v44)(v49, v35, v57);
      v2 = sub_2460918D4();
      v36 = sub_246091FB4();
      v37 = os_log_type_enabled(v2, v36);
      v33 = v47;
      v34 = v59;
      if (v37)
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_245F8A000, v2, v36, "Bundle Writer: Failed to write camera to bundle!", v38, 2u);
        MEMORY[0x24C1989D0](v38, -1, -1);
      }

      result = (*v45)(v49, v57);
      v11 = v48;
    }

    ++v14;
    if (v34 == v33)
    {
      return result;
    }
  }

  if (v14 >= *(v53 + 16))
  {
    __break(1u);
    goto LABEL_24;
  }

  v7 = *(v11 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_10;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  v39 = sub_245FA3174();
  (*v44)(v43, v39, v57);
  v40 = sub_2460918D4();
  v41 = sub_246091FB4();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_245F8A000, v40, v41, "Bundle Writer: Failed to get sequence ID from temporal depth point cloud timestamp", v42, 2u);
    MEMORY[0x24C1989D0](v42, -1, -1);
  }

  return (*v45)(v43, v57);
}

uint64_t ObjectCaptureBundleWriter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_url;
  v4 = sub_246091704();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_subscriptions);

  v6 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise + 8);
  sub_245FFDCC4(*(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise));
  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 16);
  v8 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 24);
  v9 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 32);
  sub_24601CE08(*(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata), *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 8));
  v10 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotMetadataMap);

  v11 = *(v0 + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_shotSquenceIDMap);

  return v0;
}

uint64_t ObjectCaptureBundleWriter.__deallocating_deinit()
{
  ObjectCaptureBundleWriter.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

size_t sub_24601A590(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_245F8E624(&qword_27EE3A848, &unk_246098D58);
  v4 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
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

uint64_t sub_24601A698(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_245F8E624(&qword_27EE3A860, &unk_246098DA0);
  result = sub_246092374();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(v5 + 48);
      v22 = *(v21 + 8 * v20);
      v23 = *(*(v5 + 56) + 8 * v20);
      v24 = *(v8 + 40);
      if (v22 != 0.0)
      {
        v25 = *(v21 + 8 * v20);
      }

      result = sub_2460924F4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      *(*(v8 + 56) + 8 * v16) = v23;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_24601A908(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_24600790C(a3);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_24601AA30();
    result = v17;
    goto LABEL_8;
  }

  sub_24601A698(v14, a2 & 1);
  v18 = *v4;
  result = sub_24600790C(a3);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + 8 * result) = a1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a3;
    *(v20[7] + 8 * result) = a1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_246092424();
  __break(1u);
  return result;
}

void *sub_24601AA30()
{
  v1 = v0;
  sub_245F8E624(&qword_27EE3A860, &unk_246098DA0);
  v2 = *v0;
  v3 = sub_246092364();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void (*sub_24601AB7C(uint64_t *a1, double a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = sub_24601B120(v6);
  v6[9] = sub_24601AC80(v6 + 4, isUniquelyReferenced_nonNull_native, a2);
  return sub_24601AC20;
}

void sub_24601AC20(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_24601AC80(uint64_t *a1, char a2, double a3))(uint64_t a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x60uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 8) = v3;
  *v9 = a3;
  v11 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  *(v10 + 16) = v11;
  v12 = *(v11 - 8);
  v13 = v12;
  *(v10 + 24) = v12;
  v14 = *(v12 + 64);
  if (v8)
  {
    *(v10 + 32) = swift_coroFrameAlloc();
    *(v10 + 40) = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    *(v10 + 32) = malloc(*(v12 + 64));
    *(v10 + 40) = malloc(v14);
    v15 = malloc(v14);
  }

  *(v10 + 48) = v15;
  v16 = *(*(sub_245F8E624(&qword_27EE3ACE0, &unk_246098880) - 8) + 64);
  if (v8)
  {
    *(v10 + 56) = swift_coroFrameAlloc();
    *(v10 + 64) = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    *(v10 + 56) = malloc(v16);
    *(v10 + 64) = malloc(v16);
    v17 = malloc(v16);
  }

  v18 = v17;
  *(v10 + 72) = v17;
  v19 = *v4;
  v20 = sub_24600790C(a3);
  *(v10 + 88) = v21 & 1;
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
    goto LABEL_22;
  }

  v26 = v21;
  v27 = *(v19 + 24);
  if (v27 < v25 || (a2 & 1) == 0)
  {
    if (v27 >= v25 && (a2 & 1) == 0)
    {
      v28 = v20;
      sub_246009C80();
      v20 = v28;
      goto LABEL_17;
    }

    sub_246008074(v25, a2 & 1);
    v29 = *v4;
    v20 = sub_24600790C(a3);
    if ((v26 & 1) == (v30 & 1))
    {
      goto LABEL_17;
    }

LABEL_22:
    result = sub_246092424();
    __break(1u);
    return result;
  }

LABEL_17:
  *(v10 + 80) = v20;
  if (v26)
  {
    sub_24600BE48(*(*v4 + 56) + *(v13 + 72) * v20, v18);
    v31 = 0;
  }

  else
  {
    v31 = 1;
  }

  (*(v13 + 56))(v18, v31, 1, v11);
  return sub_24601AF30;
}

void sub_24601AF30(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = (*(*a1 + 24) + 48);
  v5 = *(*a1 + 72);
  if (a2)
  {
    v6 = *(v2 + 7);
    sub_245F8E7A4(v5, v6, &qword_27EE3ACE0, &unk_246098880);
    v7 = (*v4)(v6, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 7);
    if (v7 != 1)
    {
      v10 = *(v2 + 1);
      sub_24600BE48(v9, *(v2 + 5));
      v11 = *v10;
      v12 = *(v2 + 10);
      v13 = *(v2 + 5);
      if ((v8 & 1) == 0)
      {
LABEL_4:
        v14 = *(v2 + 4);
        v15 = *v2;
        sub_24600BE48(v13, v14);
        sub_246009518(v12, v14, v11, v15);
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v16 = *(v2 + 8);
    sub_245F8E7A4(v5, v16, &qword_27EE3ACE0, &unk_246098880);
    v17 = (*v4)(v16, 1, v3);
    v8 = *(v2 + 88);
    v9 = *(v2 + 8);
    if (v17 != 1)
    {
      v18 = *(v2 + 1);
      sub_24600BE48(v9, *(v2 + 6));
      v11 = *v18;
      v12 = *(v2 + 10);
      v13 = *(v2 + 6);
      if ((v8 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      sub_24600BE48(v13, v11[7] + *(*(v2 + 3) + 72) * v12);
      goto LABEL_10;
    }
  }

  sub_245F8E744(v9, &qword_27EE3ACE0, &unk_246098880);
  if (v8)
  {
    sub_246008910(*(v2 + 10), **(v2 + 1));
  }

LABEL_10:
  v19 = *(v2 + 8);
  v20 = *(v2 + 9);
  v22 = *(v2 + 6);
  v21 = *(v2 + 7);
  v24 = *(v2 + 4);
  v23 = *(v2 + 5);
  sub_245F8E744(v20, &qword_27EE3ACE0, &unk_246098880);
  free(v20);
  free(v19);
  free(v21);
  free(v22);
  free(v23);
  free(v24);

  free(v2);
}

uint64_t (*sub_24601B120(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_24601B148;
}

uint64_t sub_24601B154(void **a1)
{
  v2 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24601C798(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_24601B208(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_24601B208(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2460923C4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
        v6 = sub_246091E14();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24601B59C(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24601B34C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24601B34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v37 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v8 = *(*(v37 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v37);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v29 - v13);
  result = MEMORY[0x28223BE20](v12);
  v18 = (&v29 - v17);
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    v25 = v23;
    while (1)
    {
      sub_245F8E7A4(v24, v18, &qword_27EE3A728, &unk_246098CF0);
      sub_245F8E7A4(v21, v14, &qword_27EE3A728, &unk_246098CF0);
      v26 = *v18;
      v27 = *v14;
      sub_245F8E744(v14, &qword_27EE3A728, &unk_246098CF0);
      result = sub_245F8E744(v18, &qword_27EE3A728, &unk_246098CF0);
      if (v26 >= v27)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_245FC5914(v24, v11, &qword_27EE3A728, &unk_246098CF0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_245FC5914(v11, v21, &qword_27EE3A728, &unk_246098CF0);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v25++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_24601B59C(unint64_t *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v100 = a1;
  v113 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v108 = *(v113 - 8);
  v6 = *(v108 + 64);
  v7 = MEMORY[0x28223BE20](v113);
  v103 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v112 = &v98 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v114 = (&v98 - v12);
  result = MEMORY[0x28223BE20](v11);
  v15 = (&v98 - v14);
  v110 = a3;
  v16 = *(a3 + 8);
  if (v16 < 1)
  {
    v18 = MEMORY[0x277D84F90];
LABEL_96:
    a3 = *v100;
    if (!*v100)
    {
      goto LABEL_135;
    }

    a4 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v111;
    if (isUniquelyReferenced_nonNull_native)
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_245FAE62C(a4);
    }

    v115 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v110)
      {
        v94 = *(result + 16 * a4);
        v95 = result;
        v96 = *(result + 16 * (a4 - 1) + 40);
        sub_24601BE8C(*v110 + *(v108 + 72) * v94, *v110 + *(v108 + 72) * *(result + 16 * (a4 - 1) + 32), *v110 + *(v108 + 72) * v96, a3);
        if (v17)
        {
        }

        if (v96 < v94)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_245FAE62C(v95);
        }

        if (a4 - 2 >= *(v95 + 2))
        {
          goto LABEL_123;
        }

        v97 = &v95[16 * a4];
        *v97 = v94;
        *(v97 + 1) = v96;
        v115 = v95;
        sub_245FAE5A0(a4 - 1);
        result = v115;
        a4 = *(v115 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v98 = a4;
  v17 = 0;
  v18 = MEMORY[0x277D84F90];
  v19 = &qword_27EE3A728;
  v20 = &unk_246098CF0;
  while (1)
  {
    v21 = v17;
    v104 = v18;
    if (v17 + 1 >= v16)
    {
      v16 = v17 + 1;
    }

    else
    {
      v22 = *v110;
      v23 = *(v108 + 72);
      a3 = *v110 + v23 * (v17 + 1);
      sub_245F8E7A4(a3, v15, v19, v20);
      v24 = v114;
      sub_245F8E7A4(v22 + v23 * v17, v114, v19, v20);
      v25 = *v15;
      v26 = *v24;
      sub_245F8E744(v24, v19, v20);
      result = sub_245F8E744(v15, v19, v20);
      v99 = v17;
      a4 = v17 + 2;
      v109 = v23;
      v27 = v22 + v23 * (v17 + 2);
      while (v16 != a4)
      {
        sub_245F8E7A4(v27, v15, v19, v20);
        v17 = v114;
        sub_245F8E7A4(a3, v114, v19, v20);
        v28 = *v15;
        v29 = *v17;
        sub_245F8E744(v17, v19, v20);
        result = sub_245F8E744(v15, v19, v20);
        ++a4;
        v27 += v109;
        a3 += v109;
        if (v25 < v26 == v28 >= v29)
        {
          v16 = a4 - 1;
          break;
        }
      }

      v21 = v99;
      if (v25 < v26)
      {
        if (v16 < v99)
        {
          goto LABEL_126;
        }

        if (v99 < v16)
        {
          a4 = v109 * (v16 - 1);
          v30 = v16 * v109;
          v31 = v16;
          v32 = v99;
          a3 = v99 * v109;
          v107 = v16;
          do
          {
            if (v32 != --v31)
            {
              v106 = v31;
              v33 = *v110;
              if (!*v110)
              {
                goto LABEL_132;
              }

              v17 = v33 + a3;
              sub_245FC5914(v33 + a3, v103, v19, v20);
              if (a3 < a4 || v17 >= v33 + v30)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a3 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_245FC5914(v103, v33 + a4, v19, v20);
              v31 = v106;
              v16 = v107;
            }

            ++v32;
            a4 -= v109;
            v30 -= v109;
            a3 += v109;
          }

          while (v32 < v31);
          v21 = v99;
        }
      }
    }

    v34 = v110[1];
    if (v16 < v34)
    {
      if (__OFSUB__(v16, v21))
      {
        goto LABEL_125;
      }

      if (v16 - v21 < v98)
      {
        if (__OFADD__(v21, v98))
        {
          goto LABEL_127;
        }

        if (v21 + v98 >= v34)
        {
          v17 = v110[1];
        }

        else
        {
          v17 = v21 + v98;
        }

        if (v17 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v16 != v17)
        {
          break;
        }
      }
    }

    v17 = v16;
    if (v16 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v18 = v104;
    }

    else
    {
      result = sub_245FAC394(0, *(v104 + 2) + 1, 1, v104);
      v18 = result;
    }

    a4 = *(v18 + 2);
    v35 = *(v18 + 3);
    a3 = a4 + 1;
    if (a4 >= v35 >> 1)
    {
      result = sub_245FAC394((v35 > 1), a4 + 1, 1, v18);
      v18 = result;
    }

    *(v18 + 2) = a3;
    v36 = &v18[16 * a4];
    *(v36 + 4) = v21;
    *(v36 + 5) = v17;
    v109 = *v100;
    if (!v109)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v37 = a3 - 1;
        if (a3 >= 4)
        {
          break;
        }

        if (a3 == 3)
        {
          v38 = *(v18 + 4);
          v39 = *(v18 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_52:
          if (v41)
          {
            goto LABEL_113;
          }

          v54 = &v18[16 * a3];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_116;
          }

          v60 = &v18[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_120;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = a3 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v64 = &v18[16 * a3];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_66:
        if (v59)
        {
          goto LABEL_115;
        }

        v67 = &v18[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_118;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v37 - 1;
        if (v37 - 1 >= a3)
        {
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v110)
        {
          goto LABEL_131;
        }

        v75 = v18;
        a3 = *&v18[16 * a4 + 32];
        v76 = *&v18[16 * v37 + 40];
        v77 = v111;
        sub_24601BE8C(*v110 + *(v108 + 72) * a3, *v110 + *(v108 + 72) * *&v18[16 * v37 + 32], *v110 + *(v108 + 72) * v76, v109);
        v111 = v77;
        if (v77)
        {
        }

        if (v76 < a3)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v75 = sub_245FAE62C(v75);
        }

        if (a4 >= *(v75 + 2))
        {
          goto LABEL_110;
        }

        v78 = &v75[16 * a4];
        *(v78 + 4) = a3;
        *(v78 + 5) = v76;
        v115 = v75;
        a4 = &v115;
        result = sub_245FAE5A0(v37);
        v18 = v115;
        a3 = *(v115 + 16);
        if (a3 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v18[16 * a3 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_111;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_112;
      }

      v49 = &v18[16 * a3];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_114;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_117;
      }

      if (v53 >= v45)
      {
        v71 = &v18[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_121;
        }

        if (v40 < v74)
        {
          v37 = a3 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v16 = v110[1];
    if (v17 >= v16)
    {
      goto LABEL_96;
    }
  }

  v79 = *v110;
  v80 = *(v108 + 72);
  v81 = *v110 + v80 * (v16 - 1);
  v82 = v16;
  v83 = -v80;
  v99 = v21;
  a4 = v21 - v82;
  v107 = v82;
  v101 = v80;
  v102 = v17;
  a3 = v79 + v82 * v80;
LABEL_85:
  v105 = a3;
  v106 = a4;
  v109 = v81;
  v84 = v81;
  while (1)
  {
    sub_245F8E7A4(a3, v15, v19, v20);
    v85 = v114;
    sub_245F8E7A4(v84, v114, v19, v20);
    v86 = *v15;
    v87 = *v85;
    sub_245F8E744(v85, v19, v20);
    result = sub_245F8E744(v15, v19, v20);
    if (v86 >= v87)
    {
LABEL_84:
      v17 = v102;
      v81 = v109 + v101;
      a4 = v106 - 1;
      a3 = v105 + v101;
      if (++v107 != v102)
      {
        goto LABEL_85;
      }

      v21 = v99;
      if (v102 < v99)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!v79)
    {
      break;
    }

    v88 = v20;
    v89 = v19;
    v90 = v112;
    sub_245FC5914(a3, v112, v89, v88);
    swift_arrayInitWithTakeFrontToBack();
    v91 = v90;
    v19 = v89;
    v20 = v88;
    sub_245FC5914(v91, v84, v19, v88);
    v84 += v83;
    a3 += v83;
    if (__CFADD__(a4++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_24601BE8C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v45 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v7 = *(*(v45 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v45);
  v46 = (&v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v8);
  v12 = (&v39 - v11);
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_60;
  }

  v15 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v16 = (a2 - a1) / v14;
  v50 = a1;
  v49 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v24 = a4 + v18;
    if (v18 >= 1)
    {
      v25 = -v14;
      v26 = a4 + v18;
      v42 = v25;
      v43 = a4;
      do
      {
        v40 = v24;
        v27 = a2;
        v28 = a2 + v25;
        v44 = v27;
        while (1)
        {
          v30 = v47;
          if (v27 <= a1)
          {
            v50 = v27;
            v48 = v40;
            goto LABEL_58;
          }

          v41 = v24;
          v47 += v25;
          v31 = v26 + v25;
          sub_245F8E7A4(v31, v12, &qword_27EE3A728, &unk_246098CF0);
          v32 = v28;
          v33 = v28;
          v34 = v12;
          v35 = v46;
          sub_245F8E7A4(v33, v46, &qword_27EE3A728, &unk_246098CF0);
          v36 = *v34;
          v37 = *v35;
          v38 = v35;
          v12 = v34;
          sub_245F8E744(v38, &qword_27EE3A728, &unk_246098CF0);
          sub_245F8E744(v34, &qword_27EE3A728, &unk_246098CF0);
          if (v36 < v37)
          {
            break;
          }

          v24 = v31;
          if (v30 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v24 = v31;
            v28 = v32;
          }

          else
          {
            v28 = v32;
            if (v30 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
              v24 = v31;
            }
          }

          v26 = v24;
          v27 = v44;
          v29 = v31 > v43;
          v25 = v42;
          if (!v29)
          {
            a2 = v44;
            goto LABEL_57;
          }
        }

        if (v30 < v44 || v47 >= v44)
        {
          a2 = v32;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
        }

        else
        {
          v25 = v42;
          a2 = v32;
          if (v30 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v24 = v41;
      }

      while (v26 > v43);
    }

LABEL_57:
    v50 = a2;
    v48 = v24;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v48 = a4 + v17;
    if (v17 >= 1 && a2 < v47)
    {
      do
      {
        sub_245F8E7A4(a2, v12, &qword_27EE3A728, &unk_246098CF0);
        v21 = v46;
        sub_245F8E7A4(a4, v46, &qword_27EE3A728, &unk_246098CF0);
        v22 = *v12;
        v23 = *v21;
        sub_245F8E744(v21, &qword_27EE3A728, &unk_246098CF0);
        sub_245F8E744(v12, &qword_27EE3A728, &unk_246098CF0);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v50 = a1;
      }

      while (a4 < v19 && a2 < v47);
    }
  }

LABEL_58:
  sub_24601C38C(&v50, &v49, &v48);
  return 1;
}

uint64_t sub_24601C38C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

unint64_t sub_24601C47C(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1989E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1989E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24601C508(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_245F8E624(&qword_27EE3A728, &unk_246098CF0);
  v37 = *(v40 - 8);
  v8 = *(v37 + 64);
  v9 = MEMORY[0x28223BE20](v40);
  v38 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = *(v41 + 56);
      v28 = *(*(v41 + 48) + 8 * v26);
      v29 = v27 + *(*(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8) + 72) * v26;
      v30 = v38;
      sub_24600B080(v29, &v38[*(v40 + 48)]);
      *v30 = v28;
      v31 = v30;
      a1 = v39;
      sub_245FC5914(v31, v39, &qword_27EE3A728, &unk_246098CF0);
      sub_245FC5914(a1, a2, &qword_27EE3A728, &unk_246098CF0);
      if (v21 == a3)
      {
        goto LABEL_23;
      }

      a2 += *(v37 + 72);
      result = v21;
      v32 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
    a3 = result;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

size_t sub_24601C7AC(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_245F8E624(&qword_27EE3A848, &unk_246098D58);
  v10 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_245F8E624(&qword_27EE3A728, &unk_246098CF0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t sub_24601C99C(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a4 & 0x8000000000000000) == 0)
  {
    if (!a4)
    {
      v17 = result;
      sub_24601E2B4(result, a2, a3 & 1);
      return v17;
    }

    v5 = 0;
    v6 = 1 << *(a5 + 32);
    while ((result & 0x8000000000000000) == 0 && result < v6)
    {
      if (a2 != *(a5 + 36))
      {
        goto LABEL_19;
      }

      v8 = result >> 6;
      v9 = *(a5 + 64 + 8 * (result >> 6));
      if ((v9 & (1 << result)) == 0)
      {
        goto LABEL_19;
      }

      v10 = v9 & (-2 << (result & 0x3F));
      if (v10)
      {
        result = __clz(__rbit64(v10)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v11 = v8 << 6;
        v12 = v8 + 1;
        v13 = (a5 + 72 + 8 * v8);
        while (v12 < (v6 + 63) >> 6)
        {
          v15 = *v13++;
          v14 = v15;
          v11 += 64;
          ++v12;
          if (v15)
          {
            result = __clz(__rbit64(v14)) + v11;
            goto LABEL_5;
          }
        }

        result = 1 << *(a5 + 32);
      }

LABEL_5:
      LODWORD(a2) = *(a5 + 36);
      if (v5++ == a4 - 1)
      {
        v16 = *(a5 + 36);
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24601CACC(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
    return sub_24600B080(v7 + *(*(v9 - 8) + 72) * a2, v6);
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_24601CB78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A860, &unk_246098DA0);
    v3 = sub_246092384();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_24600790C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24601CC58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_24601CCA0()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24601CCE0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24601CD28(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata;
    v8 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata);
    v9 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 8);
    v10 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 16);
    v11 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 24);
    v12 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_sessionMetadata + 32);
    *v7 = v2;
    *(v7 + 8) = v1;
    *(v7 + 16) = v4;
    *(v7 + 24) = v3;
    *(v7 + 32) = v5;

    sub_24601CE08(v8, v9);
  }

  return result;
}

uint64_t sub_24601CE08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t type metadata accessor for ObjectCaptureBundleWriter()
{
  result = qword_27EE3CC80;
  if (!qword_27EE3CC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24601CEA0()
{
  result = sub_246091704();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_24601CFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v103 = a3;
  v104 = a4;
  v115 = *MEMORY[0x277D85DE8];
  v8 = sub_246091704();
  v79 = *(v8 - 8);
  v80 = v8;
  v9 = *(v79 + 64);
  MEMORY[0x28223BE20](v8);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v111[0] = *a1;
  v111[1] = v11;
  v12 = *(a1 + 48);
  v111[2] = *(a1 + 32);
  v13 = *(a1 + 80);
  v107 = *(a1 + 64);
  v108 = v12;
  v105 = *(a1 + 96);
  v106 = v13;
  v14 = *(a1 + 144);
  v15 = *(a1 + 152);
  v16 = *(a1 + 168);
  v18 = *(a1 + 176);
  v17 = *(a1 + 184);
  v81 = *(a1 + 160);
  v82 = v18;
  v85 = v17;
  v19 = *(a1 + 192);
  v20 = *(a1 + 200);
  v83 = v16;
  v84 = v19;
  v21 = *(a1 + 208);
  v22 = *(a1 + 224);
  v23 = *(a1 + 232);
  v86 = v20;
  v87 = v22;
  v24 = *(a1 + 248);
  v88 = *(a1 + 240);
  v89 = v23;
  v25 = *(a1 + 264);
  v90 = *(a1 + 256);
  v91 = v24;
  v26 = *(a1 + 280);
  v92 = *(a1 + 272);
  v93 = v25;
  v27 = *(a1 + 288);
  v28 = *(a1 + 304);
  v29 = *(a1 + 312);
  v94 = v26;
  v95 = v28;
  v30 = *(a1 + 328);
  v96 = *(a1 + 320);
  v97 = v29;
  v31 = *(a1 + 344);
  v98 = *(a1 + 336);
  v99 = v30;
  v32 = *(a1 + 360);
  v100 = *(a1 + 352);
  v101 = v31;
  v102 = v32;
  v109 = *(a1 + 368);
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2460977F0;
  *(inited + 32) = 0x64496172656D6163;
  v34 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = v34;
  *(inited + 80) = 0x49746E656D676573;
  *(inited + 88) = 0xE900000000000064;
  *(inited + 96) = a2;
  *(inited + 120) = v34;
  *(inited + 128) = 0x6D617473656D6974;
  *(inited + 136) = 0xE900000000000070;
  v35 = sub_24602138C(a5);
  v36 = MEMORY[0x277D837D0];
  *(inited + 144) = v35;
  *(inited + 152) = v37;
  *(inited + 168) = v36;
  *(inited + 176) = 0x69736E6972746E69;
  *(inited + 184) = 0xEA00000000007363;
  sub_246020EF0(v111);
  v39 = v38;
  v40 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 192) = v39;
  *(inited + 216) = v40;
  *(inited + 224) = 0x726F66736E617274;
  *(inited + 232) = 0xE90000000000006DLL;
  sub_246020FBC(v108, v107, v106, v105);
  *(inited + 264) = v40;
  *(inited + 240) = v41;
  v42 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  if (v21)
  {
    if (v27)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v60.i64[0] = v14;
    v60.i64[1] = v15;
    v61.i64[0] = v81;
    v62.i64[0] = v82;
    v61.i64[1] = v83;
    v62.i64[1] = v85;
    v63.i64[0] = v84;
    v63.i64[1] = v86;
    sub_246020FBC(v60, v61, v62, v63);
    v114 = v40;
    *&v113 = v64;
    sub_245F8E6C0(&v113, v112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v110 = v42;
    sub_246008DF4(v112, 0xD000000000000014, 0x80000002460A16A0, isUniquelyReferenced_nonNull_native);
    v42 = v110;
    if (v27)
    {
LABEL_3:
      if (v109)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  v66.i64[0] = v87;
  v67.i64[0] = v88;
  v66.i64[1] = v89;
  v67.i64[1] = v91;
  v68.i64[0] = v90;
  v68.i64[1] = v93;
  v69.i64[0] = v92;
  v69.i64[1] = v94;
  sub_246020FBC(v66, v67, v68, v69);
  v114 = v40;
  *&v113 = v70;
  sub_245F8E6C0(&v113, v112);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v110 = v42;
  sub_246008DF4(v112, 0xD000000000000021, 0x80000002460A1670, v71);
  v42 = v110;
  if ((v109 & 1) == 0)
  {
LABEL_4:
    v43.i64[0] = v95;
    v44.i64[0] = v96;
    v43.i64[1] = v97;
    v44.i64[1] = v99;
    v45.i64[0] = v98;
    v45.i64[1] = v101;
    v46.i64[0] = v100;
    v46.i64[1] = v102;
    sub_246020FBC(v43, v44, v45, v46);
    v114 = v40;
    *&v113 = v47;
    sub_245F8E6C0(&v113, v112);
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v110 = v42;
    sub_246008DF4(v112, 0xD00000000000001FLL, 0x80000002460A1650, v48);
  }

LABEL_5:
  v49 = sub_246091B34();

  v50 = objc_opt_self();
  *&v113 = 0;
  v51 = [v50 dataWithJSONObject:v49 options:3 error:&v113];
  v52 = v113;
  if (!v51)
  {
    v72 = v52;
    v73 = sub_2460915D4();

    swift_willThrow();
LABEL_13:
    v76 = 0;
    goto LABEL_14;
  }

  v53 = sub_246091744();
  v55 = v54;

  v56 = *MEMORY[0x277CBECE8];
  v57 = sub_246091BD4();
  v58 = CFURLCreateWithFileSystemPath(v56, v57, kCFURLPOSIXPathStyle, 0);

  if (!v58)
  {
    sub_245FAEC7C(v53, v55);
    goto LABEL_13;
  }

  v59 = v78;
  sub_2460916D4();
  sub_246091754();
  (*(v79 + 8))(v59, v80);

  sub_245FAEC7C(v53, v55);
  v76 = 1;
LABEL_14:

  v74 = *MEMORY[0x277D85DE8];
  return v76;
}

unint64_t sub_24601D5E8(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_246091C44();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v13 = a1[1];
  v16 = a1[2];
  v15 = a1[3];
  v18 = a1[4];
  v17 = a1[5];
  v20 = a1[6];
  v19 = a1[7];
  v21 = a1[8];
  v22 = 0x80000002460A15D0;
  v23 = 0xD00000000000007FLL;
  v110 = 0xD00000000000007FLL;
  v111 = 0x80000002460A15D0;
  result = *(v19 + 16);
  if (!result)
  {
    goto LABEL_13;
  }

  if (result > *(v14 + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  if (result > *(v13 + 16))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result > *(v16 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result > *(v15 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result > *(v18 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (result > *(v17 + 16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (result > *(v20 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (result <= *(v21 + 16))
  {
    v95[0] = v12;
    v95[1] = a2;
    v96 = v9;
    v97 = v8;
    v25 = 0;
    v105 = v13 + 32;
    v106 = v14 + 32;
    v103 = v15 + 32;
    v104 = v16 + 32;
    v101 = v17 + 32;
    v102 = v18 + 32;
    v99 = result;
    v100 = v20 + 32;
    v26 = (v21 + 40);
    v27 = (v19 + 40);
    v98 = v21;
    do
    {
      v107 = v25 + 1;
      LOBYTE(v108) = *(v106 + v25);
      v108 = sub_2460923D4();
      v109 = v28;

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v29 = v108;
      v30 = v109;
      LOBYTE(v108) = *(v105 + v25);
      v31 = sub_2460923D4();
      v33 = v32;
      v108 = v29;
      v109 = v30;

      MEMORY[0x24C196640](v31, v33);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v34 = v108;
      v35 = v109;
      LOBYTE(v108) = *(v104 + v25);
      v36 = sub_2460923D4();
      v38 = v37;
      v108 = v34;
      v109 = v35;

      MEMORY[0x24C196640](v36, v38);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v39 = v108;
      v40 = v109;
      v41 = *(v103 + 4 * v25);
      v42 = sub_246091F04();
      v44 = v43;
      v108 = v39;
      v109 = v40;

      MEMORY[0x24C196640](v42, v44);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v45 = v108;
      v46 = v109;
      v47 = *(v102 + 4 * v25);
      v48 = sub_246091F04();
      v50 = v49;
      v108 = v45;
      v109 = v46;

      MEMORY[0x24C196640](v48, v50);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v51 = v108;
      v52 = v109;
      v53 = *(v101 + 4 * v25);
      v54 = sub_246091F04();
      v56 = v55;
      v108 = v51;
      v109 = v52;

      MEMORY[0x24C196640](v54, v56);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v57 = v108;
      v58 = v109;
      v59 = *(v100 + 4 * v25);
      v60 = sub_246091F04();
      v62 = v61;
      v108 = v57;
      v109 = v58;

      MEMORY[0x24C196640](v60, v62);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v63 = v108;
      v64 = v109;
      v65 = *(v27 - 1) * a3 / 1920.0;
      v66 = sub_246091F04();
      v68 = v67;
      v108 = v63;
      v109 = v64;

      MEMORY[0x24C196640](v66, v68);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v69 = v108;
      v70 = v109;
      v71 = *v27 * a4 / 1440.0;
      v72 = sub_246091F04();
      v74 = v73;
      v108 = v69;
      v109 = v70;

      MEMORY[0x24C196640](v72, v74);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v75 = v108;
      v76 = v109;
      v77 = *(v98 + 16 * v25 + 32);
      v78 = sub_246091F04();
      v80 = v79;
      v108 = v75;
      v109 = v76;

      MEMORY[0x24C196640](v78, v80);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v81 = v108;
      v82 = v109;
      v83 = *(v26 - 1);
      v84 = sub_246091F04();
      v86 = v85;
      v108 = v81;
      v109 = v82;

      MEMORY[0x24C196640](v84, v86);

      MEMORY[0x24C196640](44, 0xE100000000000000);

      v87 = v108;
      v88 = v109;
      v89 = *v26;
      v26 += 4;
      v90 = sub_246091F04();
      v92 = v91;
      v108 = v87;
      v109 = v88;

      MEMORY[0x24C196640](v90, v92);

      v93 = v108;
      v94 = v109;
      v108 = 10;
      v109 = 0xE100000000000000;
      MEMORY[0x24C196640](v93, v94);

      MEMORY[0x24C196640](v108, v109);

      v27 += 2;
      v25 = v107;
    }

    while (v99 != v107);
    v23 = v110;
    v22 = v111;
    v9 = v96;
    v8 = v97;
    v12 = v95[0];
LABEL_13:
    v108 = v23;
    v109 = v22;
    sub_246091C34();
    sub_245FA2AE4();
    sub_246092144();
    (*(v9 + 8))(v12, v8);
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_24601DD74(uint64_t a1, double a2, uint64_t a3, uint64_t a4)
{
  v33[1] = a4;
  v36 = *MEMORY[0x277D85DE8];
  v6 = sub_246091704();
  v33[0] = *(v6 - 8);
  v7 = *(v33[0] + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = 0x64496172656D6163;
  v11 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = v11;
  *(inited + 80) = 0x6D617473656D6974;
  *(inited + 88) = 0xE900000000000070;
  v12 = MEMORY[0x277D839F8];
  *(inited + 96) = a2;
  *(inited + 120) = v12;
  *(inited + 128) = 0x69736E6972746E69;
  *(inited + 136) = 0xEA00000000007363;
  v13 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v13;
  v35[2] = *(a1 + 32);
  sub_246020EF0(v35);
  v15 = v14;
  v16 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 144) = v15;
  *(inited + 168) = v16;
  *(inited + 176) = 0x726F66736E617274;
  *(inited + 184) = 0xE90000000000006DLL;
  sub_246020FBC(*(a1 + 48), *(a1 + 64), *(a1 + 80), *(a1 + 96));
  *(inited + 216) = v16;
  *(inited + 192) = v17;
  sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  v18 = sub_246091B34();

  v19 = objc_opt_self();
  v34 = 0;
  v20 = [v19 dataWithJSONObject:v18 options:3 error:&v34];
  v21 = v34;
  if (!v20)
  {
    v28 = v21;
    v29 = sub_2460915D4();

    swift_willThrow();
LABEL_6:
    v32 = 0;
    goto LABEL_7;
  }

  v22 = sub_246091744();
  v24 = v23;

  v25 = *MEMORY[0x277CBECE8];
  v26 = sub_246091BD4();
  v27 = CFURLCreateWithFileSystemPath(v25, v26, kCFURLPOSIXPathStyle, 0);

  if (!v27)
  {
    sub_245FAEC7C(v22, v24);
    goto LABEL_6;
  }

  sub_2460916D4();
  sub_246091754();
  (*(v33[0] + 8))(v9, v6);

  sub_245FAEC7C(v22, v24);
  v32 = 1;
LABEL_7:

  v30 = *MEMORY[0x277D85DE8];
  return v32;
}

uint64_t sub_24601E148(uint64_t a1)
{
  v2 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24601E1A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A840, &qword_246098D48);
    v3 = sub_246092384();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_245F8D968(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24601E2A8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24601E2B4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_24601E3CC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v82 = a2;
  v83 = a3;
  v93 = *MEMORY[0x277D85DE8];
  v6 = sub_246091704();
  v66 = *(v6 - 8);
  v67 = v6;
  v7 = *(v66 + 64);
  MEMORY[0x28223BE20](v6);
  v65 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v89[0] = *a1;
  v89[1] = v9;
  v10 = *(a1 + 48);
  v89[2] = *(a1 + 32);
  v11 = *(a1 + 80);
  v86 = *(a1 + 64);
  v87 = v10;
  v84 = *(a1 + 96);
  v85 = v11;
  v12 = *(a1 + 128);
  v14 = *(a1 + 144);
  v13 = *(a1 + 152);
  v16 = *(a1 + 160);
  v15 = *(a1 + 168);
  v68 = *(a1 + 136);
  v69 = v16;
  v72 = v15;
  v17 = *(a1 + 176);
  v18 = *(a1 + 184);
  v70 = v13;
  v71 = v17;
  v19 = *(a1 + 192);
  v20 = *(a1 + 208);
  v21 = *(a1 + 216);
  v73 = v18;
  v74 = v20;
  v22 = *(a1 + 232);
  v75 = *(a1 + 224);
  v76 = v21;
  v23 = *(a1 + 248);
  v77 = *(a1 + 240);
  v78 = v22;
  v24 = *(a1 + 264);
  v79 = *(a1 + 256);
  v80 = v23;
  v81 = v24;
  v25 = *(a1 + 272);
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246098BF0;
  *(inited + 32) = 0x64496172656D6163;
  v27 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 1;
  *(inited + 72) = v27;
  *(inited + 80) = 0x6D617473656D6974;
  *(inited + 88) = 0xE900000000000070;
  v28 = sub_24602138C(a4);
  v29 = MEMORY[0x277D837D0];
  *(inited + 96) = v28;
  *(inited + 104) = v30;
  *(inited + 120) = v29;
  *(inited + 128) = 0x69736E6972746E69;
  *(inited + 136) = 0xEA00000000007363;
  sub_246020EF0(v89);
  v32 = v31;
  v33 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 144) = v32;
  *(inited + 168) = v33;
  *(inited + 176) = 0x726F66736E617274;
  *(inited + 184) = 0xE90000000000006DLL;
  sub_246020FBC(v87, v86, v85, v84);
  *(inited + 216) = v33;
  *(inited + 192) = v34;
  v35 = sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  if ((v19 & 1) == 0)
  {
    v36.i64[0] = v12;
    v36.i64[1] = v68;
    v37.i64[0] = v14;
    v37.i64[1] = v70;
    v38.i64[0] = v69;
    v38.i64[1] = v72;
    v39.i64[0] = v71;
    v39.i64[1] = v73;
    sub_246020FBC(v36, v37, v38, v39);
    v92 = v33;
    *&v91 = v40;
    sub_245F8E6C0(&v91, v90);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v35;
    sub_246008DF4(v90, 0xD000000000000014, 0x80000002460A16A0, isUniquelyReferenced_nonNull_native);
    v35 = v88;
  }

  if ((v25 & 1) == 0)
  {
    v42.i64[0] = v74;
    v43.i64[0] = v75;
    v42.i64[1] = v76;
    v43.i64[1] = v78;
    v44.i64[0] = v77;
    v44.i64[1] = v80;
    v45.i64[0] = v79;
    v45.i64[1] = v81;
    sub_246020FBC(v42, v43, v44, v45);
    v92 = v33;
    *&v91 = v46;
    sub_245F8E6C0(&v91, v90);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v35;
    sub_246008DF4(v90, 0xD00000000000001ALL, 0x80000002460A1700, v47);
  }

  v48 = sub_246091B34();

  v49 = objc_opt_self();
  *&v91 = 0;
  v50 = [v49 dataWithJSONObject:v48 options:3 error:&v91];
  v51 = v91;
  if (!v50)
  {
    v59 = v51;
    v60 = sub_2460915D4();

    swift_willThrow();
LABEL_10:
    v63 = 0;
    goto LABEL_11;
  }

  v52 = sub_246091744();
  v54 = v53;

  v55 = *MEMORY[0x277CBECE8];
  v56 = sub_246091BD4();
  v57 = CFURLCreateWithFileSystemPath(v55, v56, kCFURLPOSIXPathStyle, 0);

  if (!v57)
  {
    sub_245FAEC7C(v52, v54);
    goto LABEL_10;
  }

  v58 = v65;
  sub_2460916D4();
  sub_246091754();
  (*(v66 + 8))(v58, v67);

  sub_245FAEC7C(v52, v54);
  v63 = 1;
LABEL_11:

  v61 = *MEMORY[0x277D85DE8];
  return v63;
}

uint64_t sub_24601E9A4()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[7];

  v5 = v0[8];

  v6 = v0[9];

  v7 = v0[10];

  v8 = v0[11];

  v9 = v0[12];

  v10 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_24601EA38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24601EA50()
{
  v1 = *(sub_245F8E624(&qword_27EE3A350, &unk_2460969A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(v0 + 16);

  v6 = sub_246091834();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v0 + v3, 1, v6))
  {
    (*(v7 + 8))(v0 + v3, v6);
  }

  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_24601EB84()
{
  v1 = *(sub_245F8E624(&qword_27EE3A350, &unk_2460969A0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v0 + 2);
  v4 = v0[3];
  v5 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *(v0 + 4);

  return sub_246015340(v4, v3, v6, v0 + v2, v5);
}

uint64_t sub_24601EC28(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

id sub_24601EC38(id result)
{
  if (result != 7)
  {
    return sub_24601EC48(result);
  }

  return result;
}

id sub_24601EC48(id result)
{
  if (result >= 7)
  {
    return result;
  }

  return result;
}

uint64_t sub_24601EC58()
{
  v1 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);

  v6 = v0 + v3;
  v7 = *(v0 + v3 + 392);

  v8 = *(v0 + v3 + 400);

  v9 = v1[6];
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = *(v6 + v1[7] + 128);
  if (v12 != 1)
  {
  }

  v13 = *(v6 + v1[13]);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

void sub_24601EDF4()
{
  v1 = *(type metadata accessor for ObjectCaptureSession.Metadata.Shot(0) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 64) & ~*(v1 + 80)));

  sub_246013FCC(v2, v0 + 24, v3);
}

uint64_t sub_24601EE64()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_24601EEA4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = (result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
    v6 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise);
    v7 = *(result + OBJC_IVAR____TtC6CoreOC25ObjectCaptureBundleWriter_completionPromise + 8);
    *v5 = v2;
    v5[1] = v3;

    sub_245FFDCC4(v6);
  }

  return result;
}

uint64_t sub_24601EF7C@<X0>(void *a1@<X8>)
{
  v2 = CPGProcessingLimitsForCurrentDevice();
  MaxImageDimension = CPGProcessingLimitsGetMaxImageDimension();
  MaxNumberOfSamples = CPGProcessingLimitsGetMaxNumberOfSamples();
  MaxTotalPixelCount = CPGProcessingLimitsGetMaxTotalPixelCount();
  v6 = MEMORY[0x24C197460](v2);
  v7 = MEMORY[0x24C1974A0](v2);
  sub_246029B3C(MaxImageDimension, MaxNumberOfSamples, MaxTotalPixelCount, v6, v7, a1);

  return MEMORY[0x2821532E8](v2);
}

char *sub_24601F018(char *a1)
{

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_245FF809C(0, *(a1 + 2) + 1, 1, a1);
  }

  v3 = *(a1 + 2);
  v2 = *(a1 + 3);
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    a1 = sub_245FF809C((v2 > 1), v3 + 1, 1, a1);
    v2 = *(a1 + 3);
    v4 = v2 >> 1;
  }

  *(a1 + 2) = v5;
  v6 = &a1[16 * v3];
  *(v6 + 4) = 0x312C373164615069;
  *(v6 + 5) = 0xE800000000000000;
  v7 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    a1 = sub_245FF809C((v2 > 1), v3 + 2, 1, a1);
  }

  *(a1 + 2) = v7;
  v8 = &a1[16 * v5];
  *(v8 + 4) = 0x322C373164615069;
  *(v8 + 5) = 0xE800000000000000;
  v9 = *(a1 + 3);
  v10 = v3 + 3;
  if ((v3 + 3) > (v9 >> 1))
  {
    a1 = sub_245FF809C((v9 > 1), v3 + 3, 1, a1);
  }

  *(a1 + 2) = v10;
  v11 = &a1[16 * v7];
  *(v11 + 4) = 0x332C373164615069;
  *(v11 + 5) = 0xE800000000000000;
  v12 = *(a1 + 3);
  v13 = v3 + 4;
  if ((v3 + 4) > (v12 >> 1))
  {
    a1 = sub_245FF809C((v12 > 1), v3 + 4, 1, a1);
  }

  *(a1 + 2) = v13;
  v14 = &a1[16 * v10];
  *(v14 + 4) = 0x342C373164615069;
  *(v14 + 5) = 0xE800000000000000;
  v15 = *(a1 + 3);
  v16 = v3 + 5;
  if ((v3 + 5) > (v15 >> 1))
  {
    a1 = sub_245FF809C((v15 > 1), v3 + 5, 1, a1);
  }

  *(a1 + 2) = v16;
  v17 = &a1[16 * v13];
  *(v17 + 4) = 0x3831656E6F685069;
  *(v17 + 5) = 0xEA0000000000312CLL;
  v18 = *(a1 + 3);
  if ((v3 + 6) > (v18 >> 1))
  {
    a1 = sub_245FF809C((v18 > 1), v3 + 6, 1, a1);
  }

  *(a1 + 2) = v3 + 6;
  v19 = &a1[16 * v16];
  *(v19 + 4) = 0x3831656E6F685069;
  *(v19 + 5) = 0xEA0000000000322CLL;
  return a1;
}

uint64_t sub_24601F24C()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v29[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v29[-v6];
  v8 = sub_24601F68C();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_245FA3174();
    (*(v1 + 16))(v7, v12, v0);

    v13 = sub_2460918D4();
    v14 = sub_246091FC4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30[0] = v16;
      *v15 = 136380931;
      *(v15 + 4) = sub_245F8D3C0(0x70707553434F7369, 0xEF2928646574726FLL, v30);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_245F8D3C0(v10, v11, v30);
      _os_log_impl(&dword_245F8A000, v13, v14, "%{private}s: Device model detected at runtime: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    (*(v1 + 8))(v7, v0);
    v17 = sub_24601F018(byte_2858DFE10);
    v30[0] = v10;
    v30[1] = v11;
    MEMORY[0x28223BE20](v17);
    *&v29[-16] = v30;
    v18 = sub_245FCB944(sub_245FCBAD4, &v29[-32], v17);

    v19 = type metadata accessor for ARWorldTrackingConfigurationForObjectCapture();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    LODWORD(v21) = [ObjCClassFromMetadata isSupported];
    if (v21)
    {
      v21 = [v19 recommendedVideoFormatForHighResolutionFrameCapturing];
      if (v21)
      {

        LODWORD(v21) = [ObjCClassFromMetadata supportsFrameSemantics_];
        if (v21)
        {
          LOBYTE(v21) = [ObjCClassFromMetadata supportsFrameSemantics_];
        }
      }
    }

    v22 = v18 & v21;
  }

  else
  {
    v23 = sub_245FA3174();
    (*(v1 + 16))(v5, v23, v0);
    v24 = sub_2460918D4();
    v25 = sub_246091FB4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30[0] = v27;
      *v26 = 136380675;
      *(v26 + 4) = sub_245F8D3C0(0x70707553434F7369, 0xEF2928646574726FLL, v30);
      _os_log_impl(&dword_245F8A000, v24, v25, "%{private}s: Failed to get device model at runtime.", v26, 0xCu);
      sub_245F8E6F4(v27);
      MEMORY[0x24C1989D0](v27, -1, -1);
      MEMORY[0x24C1989D0](v26, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t sub_24601F68C()
{
  v0 = sub_246091C44();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = sub_246091BD4();
  CFProperty = IORegistryEntryCreateCFProperty(MatchingService, v5, *MEMORY[0x277CBECE8], 0);

  if (!CFProperty)
  {
    goto LABEL_15;
  }

  v7 = swift_unknownObjectRetain();
  v8 = CFGetTypeID(v7);
  if (v8 != CFStringGetTypeID())
  {
    v11 = CFGetTypeID(CFProperty);
    swift_unknownObjectRelease();
    if (v11 == CFDataGetTypeID())
    {
      swift_unknownObjectRetain();
      if (swift_dynamicCast())
      {
        v12 = v20;
        sub_246091C34();
        v13 = sub_246091C14();
        v21 = v13;
        if (!v14)
        {
          v15 = v13;
          swift_unknownObjectRelease();
          sub_245FAEC7C(v12, v22);
LABEL_20:
          IOObjectRelease(MatchingService);
          return v15;
        }

        v15 = v13;
        v16 = sub_24601FD88(v13, v14);
        if (v17)
        {
          if (!v16 && v17 == 0xE100000000000000)
          {

LABEL_18:
            sub_24601FE08(v18);
            swift_unknownObjectRelease();
            sub_245FAEC7C(v12, v22);

            v15 = v21;
            goto LABEL_20;
          }

          v19 = sub_2460923E4();

          if (v19)
          {
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        sub_245FAEC7C(v12, v22);
        goto LABEL_20;
      }
    }

    swift_unknownObjectRelease();
LABEL_15:
    IOObjectRelease(MatchingService);
    return 0;
  }

  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v9 = v20;
  }

  else
  {
    v9 = 0;
  }

  IOObjectRelease(MatchingService);
  return v9;
}

uint64_t sub_24601F93C()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = sub_24601F68C();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_245FA3174();
    (*(v1 + 16))(v7, v12, v0);

    v13 = sub_2460918D4();
    v14 = sub_246091FC4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136380931;
      *(v15 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A1760, v25);
      *(v15 + 12) = 2082;
      *(v15 + 14) = sub_245F8D3C0(v10, v11, v25);
      _os_log_impl(&dword_245F8A000, v13, v14, "%{private}s: Device type detected at runtime: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v16, -1, -1);
      MEMORY[0x24C1989D0](v15, -1, -1);
    }

    (*(v1 + 8))(v7, v0);
    v25[0] = v10;
    v25[1] = v11;
    v24[0] = 0x656E6F685069;
    v24[1] = 0xE600000000000000;
    sub_245FA2AE4();
    v17 = sub_246092164();
  }

  else
  {
    v18 = sub_245FA3174();
    (*(v1 + 16))(v5, v18, v0);
    v19 = sub_2460918D4();
    v20 = sub_246091FB4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25[0] = v22;
      *v21 = 136380675;
      *(v21 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A1760, v25);
      _os_log_impl(&dword_245F8A000, v19, v20, "%{private}s: Failed to get device model at runtime!", v21, 0xCu);
      sub_245F8E6F4(v22);
      MEMORY[0x24C1989D0](v22, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_24601FCCC()
{
  result = sub_24601F93C();
  byte_27EE3F010 = result & 1;
  return result;
}

char *sub_24601FCF0()
{
  if (qword_27EE3CC90 != -1)
  {
    swift_once();
  }

  return &byte_27EE3F010;
}

uint64_t sub_24601FD40@<X0>(void *a1@<X8>)
{
  v2 = CPGProcessingLimitsForCurrentDevice();
  MaxNumberOfSamples = CPGProcessingLimitsGetMaxNumberOfSamples();
  _s6CoreOC20ObjectCaptureSessionC5FrameV8FeedbackV8rawValueAGSi_tcfC_0(MaxNumberOfSamples, a1);

  return MEMORY[0x2821532E8](v2);
}

uint64_t sub_24601FD88(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_246091CA4();
  return sub_246091D64();
}

uint64_t sub_24601FE08(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_246091CA4();

  return MEMORY[0x2821FBE70](a1);
}

unsigned __int8 *sub_24601FE70()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v65 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v65 - v9;
  v11 = sub_24601F68C();
  if (!v12)
  {
    v39 = sub_245FA3174();
    (*(v1 + 16))(v5, v39, v0);
    v40 = sub_2460918D4();
    v41 = sub_246091FB4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v73 = v43;
      *v42 = 136380675;
      *(v42 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A1780, &v73);
      _os_log_impl(&dword_245F8A000, v40, v41, "%{private}s: Failed to get device model at runtime!", v42, 0xCu);
      sub_245F8E6F4(v43);
      MEMORY[0x24C1989D0](v43, -1, -1);
      MEMORY[0x24C1989D0](v42, -1, -1);
    }

    (*(v1 + 8))(v5, v0);
    return 0;
  }

  v13 = v11;
  v14 = v12;
  v15 = sub_245FA3174();
  v67 = *(v1 + 16);
  v68 = v15;
  v67(v10);

  v16 = sub_2460918D4();
  v17 = sub_246091FC4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v66 = v8;
    v20 = v1;
    v21 = v19;
    v73 = v19;
    *v18 = 136380931;
    *(v18 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A1780, &v73);
    *(v18 + 12) = 2082;
    *(v18 + 14) = sub_245F8D3C0(v13, v14, &v73);
    _os_log_impl(&dword_245F8A000, v16, v17, "%{private}s: Device model detected at runtime: %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    v22 = v21;
    v1 = v20;
    v8 = v66;
    MEMORY[0x24C1989D0](v22, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  v23 = *(v1 + 8);
  v23(v10, v0);
  v73 = v13;
  v74 = v14;
  v71 = 44;
  v72 = 0xE100000000000000;
  sub_245FA2AE4();
  v24 = sub_246092114();
  if (!v24[2])
  {

    (v67)(v8, v68, v0);

    v44 = sub_2460918D4();
    v45 = sub_246091FB4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v73 = v47;
      *v46 = 136380931;
      *(v46 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x80000002460A1780, &v73);
      *(v46 + 12) = 2082;
      v48 = sub_245F8D3C0(v13, v14, &v73);

      *(v46 + 14) = v48;
      _os_log_impl(&dword_245F8A000, v44, v45, "%{private}s: Failed to parse device model: %{public}s!", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v47, -1, -1);
      MEMORY[0x24C1989D0](v46, -1, -1);
    }

    else
    {
    }

    v23(v8, v0);
    return 0;
  }

  if (!v24[2])
  {
    __break(1u);
LABEL_82:

    return 0;
  }

  v26 = v24[4];
  v25 = v24[5];

  if ((sub_246020714() & 1) == 0)
  {
    goto LABEL_82;
  }

  v73 = v26;
  v74 = v25;
  v71 = 0x656E6F685069;
  v72 = 0xE600000000000000;
  v69 = 0;
  v70 = 0xE000000000000000;
  v27 = sub_246092134();
  v29 = v28;

  v31 = HIBYTE(v29) & 0xF;
  v32 = v27 & 0xFFFFFFFFFFFFLL;
  if (!((v29 & 0x2000000000000000) != 0 ? HIBYTE(v29) & 0xF : v27 & 0xFFFFFFFFFFFFLL))
  {
    goto LABEL_82;
  }

  if ((v29 & 0x1000000000000000) == 0)
  {
    if ((v29 & 0x2000000000000000) != 0)
    {
      v73 = v27;
      v74 = v29 & 0xFFFFFFFFFFFFFFLL;
      if (v27 == 43)
      {
        if (v31)
        {
          if (--v31)
          {
            v35 = 0;
            v55 = &v73 + 1;
            while (1)
            {
              v56 = *v55 - 48;
              if (v56 > 9)
              {
                break;
              }

              v57 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                break;
              }

              v35 = v57 + v56;
              if (__OFADD__(v57, v56))
              {
                break;
              }

              ++v55;
              if (!--v31)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

LABEL_88:
        __break(1u);
        return result;
      }

      if (v27 != 45)
      {
        if (v31)
        {
          v35 = 0;
          v60 = &v73;
          while (1)
          {
            v61 = *v60 - 48;
            if (v61 > 9)
            {
              break;
            }

            v62 = 10 * v35;
            if ((v35 * 10) >> 64 != (10 * v35) >> 63)
            {
              break;
            }

            v35 = v62 + v61;
            if (__OFADD__(v62, v61))
            {
              break;
            }

            v60 = (v60 + 1);
            if (!--v31)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

      if (v31)
      {
        if (--v31)
        {
          v35 = 0;
          v49 = &v73 + 1;
          while (1)
          {
            v50 = *v49 - 48;
            if (v50 > 9)
            {
              break;
            }

            v51 = 10 * v35;
            if ((v35 * 10) >> 64 != (10 * v35) >> 63)
            {
              break;
            }

            v35 = v51 - v50;
            if (__OFSUB__(v51, v50))
            {
              break;
            }

            ++v49;
            if (!--v31)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }
    }

    else
    {
      if ((v27 & 0x1000000000000000) != 0)
      {
        result = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        result = sub_2460922B4();
      }

      v34 = *result;
      if (v34 == 43)
      {
        if (v32 >= 1)
        {
          v31 = v32 - 1;
          if (v32 != 1)
          {
            v35 = 0;
            if (result)
            {
              v52 = result + 1;
              while (1)
              {
                v53 = *v52 - 48;
                if (v53 > 9)
                {
                  goto LABEL_76;
                }

                v54 = 10 * v35;
                if ((v35 * 10) >> 64 != (10 * v35) >> 63)
                {
                  goto LABEL_76;
                }

                v35 = v54 + v53;
                if (__OFADD__(v54, v53))
                {
                  goto LABEL_76;
                }

                ++v52;
                if (!--v31)
                {
                  goto LABEL_77;
                }
              }
            }

            goto LABEL_68;
          }

          goto LABEL_76;
        }

        goto LABEL_87;
      }

      if (v34 != 45)
      {
        if (v32)
        {
          v35 = 0;
          if (result)
          {
            while (1)
            {
              v58 = *result - 48;
              if (v58 > 9)
              {
                goto LABEL_76;
              }

              v59 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                goto LABEL_76;
              }

              v35 = v59 + v58;
              if (__OFADD__(v59, v58))
              {
                goto LABEL_76;
              }

              ++result;
              if (!--v32)
              {
                goto LABEL_68;
              }
            }
          }

          goto LABEL_68;
        }

LABEL_76:
        v35 = 0;
        LOBYTE(v31) = 1;
        goto LABEL_77;
      }

      if (v32 >= 1)
      {
        v31 = v32 - 1;
        if (v32 != 1)
        {
          v35 = 0;
          if (result)
          {
            v36 = result + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                goto LABEL_76;
              }

              v38 = 10 * v35;
              if ((v35 * 10) >> 64 != (10 * v35) >> 63)
              {
                goto LABEL_76;
              }

              v35 = v38 - v37;
              if (__OFSUB__(v38, v37))
              {
                goto LABEL_76;
              }

              ++v36;
              if (!--v31)
              {
                goto LABEL_77;
              }
            }
          }

LABEL_68:
          LOBYTE(v31) = 0;
LABEL_77:
          LOBYTE(v71) = v31;
          v63 = v31;
          goto LABEL_78;
        }

        goto LABEL_76;
      }

      __break(1u);
    }

    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  LOBYTE(v71) = 0;
  v35 = sub_245F8DA98(v27, v29, 10);
  v63 = v64;
LABEL_78:

  if (v63)
  {
    return 0;
  }

  else
  {
    return v35;
  }
}