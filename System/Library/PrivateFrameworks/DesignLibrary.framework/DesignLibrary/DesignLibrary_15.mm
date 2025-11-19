uint64_t sub_18AFAE728(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + *(a3 + 64));
  v5 = 0x210000000000;
  if (*(v3 + 32) == 0xC000000000000038)
  {
    v5 = 0x220000000000;
  }

  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v11 = v5;
  v12 = WORD2(v5);
  sub_18AF5E044(v4, &v11, v13, v6, v7, v8, v9, 1.0);
  return sub_18AFCD574();
}

void (*sub_18AFAE7B0(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = GlassMaterialProvider.Resolved.animatableData.modify(v2);
  return sub_18AEE786C;
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.resolveForegroundStyle(level:in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0);

  return sub_18AFA94B4(a1, a2, a3);
}

uint64_t sub_18AFAE8C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a1;
  v29 = a2;
  v3 = sub_18AFCBB34();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v10 = sub_18AFCC474();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCDA44();
  v14 = sub_18AFCC414();
  v17 = *(v11 + 8);
  v15 = v11 + 8;
  v16 = v17;
  v17(v13, v10);
  if (__OFADD__(v30, v14))
  {
    __break(1u);
    goto LABEL_25;
  }

  v30 += v14;
  sub_18AFCDA44();
  sub_18AFCC204();
  v16(v13, v10);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
  sub_18AE88AD4(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
  v18 = sub_18AFCDDF4();
  v19 = *(v4 + 8);
  v19(v6, v3);
  v19(v9, v3);
  if ((v30 & 0x8000000000000000) != 0)
  {
    if (v18)
    {
LABEL_7:
      v20 = 1039516303;
LABEL_16:
      v2 = *&v20;
      goto LABEL_17;
    }

LABEL_15:
    v20 = 1056293519;
    goto LABEL_16;
  }

  if (v30 > 2)
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (v18)
  {
    if (v30 == 1)
    {
      v2 = 0.06;
    }

    else
    {
      v2 = 0.12;
    }

LABEL_17:
    v15 = v29;
    if (qword_1ED56A630 == -1)
    {
LABEL_18:
      v22 = &xmmword_1ED56C400;
      goto LABEL_23;
    }

LABEL_25:
    swift_once();
    goto LABEL_18;
  }

  if (!v30)
  {
    goto LABEL_15;
  }

  if (v30 != 1)
  {
LABEL_19:
    v21 = 1025758986;
    goto LABEL_20;
  }

  v21 = 1031127695;
LABEL_20:
  v2 = *&v21;
  v15 = v29;
  if (qword_1ED56A6E8 != -1)
  {
    swift_once();
  }

  v22 = &xmmword_1ED56C450;
LABEL_23:
  v23 = v22[3];
  v33 = v22[2];
  v34 = v23;
  v35 = *(v22 + 8);
  v24 = *v22;
  v32 = v22[1];
  v31 = v24;
  v25 = *(v22 + 19);
  v26 = *(v22 + 18);
  v38 = v33;
  v39 = v34;
  v40 = v35;
  v36 = v24;
  v37 = v32;
  v41 = v2 * v26;
  v42 = v25;
  sub_18AFCD564();
  v27 = sub_18AFCD584();
  return (*(*(v27 - 8) + 56))(v15, 0, 1, v27);
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.resolveAdaptiveColor(_:in:)(float *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = v1 + *(type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0) + 20);
  v7 = *v6;
  v10 = *(v6 + 4);
  v9 = v7;
  sub_18AF5E044(0, &v9, v11, v2, v3, v4, v5, 1.0);
  return sub_18AFCD574();
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.resolveAdaptiveColor(_:colorScheme:in:)(float *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = v1 + *(type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0) + 20);
  v7 = *v6;
  v10 = *(v6 + 4);
  v9 = v7;
  sub_18AF5E044(0, &v9, v11, v2, v3, v4, v5, 1.0);
  return sub_18AFCD574();
}

uint64_t GlassMaterialProvider.ResolvedStyleProvider.hash(into:)()
{
  sub_18AFCBB34();
  sub_18AE88AD4(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  sub_18AFCDDA4();
  v1 = type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0);
  v2 = (v0 + *(v1 + 20));
  v3 = *(v2 + 2);
  v4 = v3 >> 8;
  if (v3 >> 8 > 0x20)
  {
    if (v4 == 33)
    {
      v5 = 2;
      goto LABEL_13;
    }

    if (v4 == 34)
    {
      v5 = 4;
      goto LABEL_13;
    }

LABEL_8:
    v6 = *v2 | (*(v2 + 2) << 32);
    MEMORY[0x18CFED610](3);
    if ((v6 & 0x100000000) != 0)
    {
      sub_18AFCE2B4();
      if (v4 != 30)
      {
        goto LABEL_10;
      }
    }

    else
    {
      sub_18AFCE2B4();
      sub_18AFCE2C4();
      if (v4 != 30)
      {
LABEL_10:
        sub_18AFCE2B4();
        v5 = v4;
        goto LABEL_13;
      }
    }

    sub_18AFCE2B4();
    return MEMORY[0x18CFED610](*(v0 + *(v1 + 24)));
  }

  if (v4 == 31)
  {
    v5 = 0;
    goto LABEL_13;
  }

  if (v4 != 32)
  {
    goto LABEL_8;
  }

  v5 = 1;
LABEL_13:
  MEMORY[0x18CFED610](v5);
  return MEMORY[0x18CFED610](*(v0 + *(v1 + 24)));
}

uint64_t sub_18AFAEFC4(void (*a1)(_BYTE *))
{
  sub_18AFCE294();
  a1(v3);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFAF024(float *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = v3 + *(a3 + 20);
  v9 = *v8;
  v12 = *(v8 + 4);
  v11 = v9;
  sub_18AF5E044(0, &v11, v13, v4, v5, v6, v7, 1.0);
  return sub_18AFCD574();
}

uint64_t sub_18AFAF0AC(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_18AFCE294();
  a3(v5);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFAF110(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18AFCE294();
  a4(v6);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFAF158(uint64_t a1, uint64_t a2)
{
  v53 = a1;
  v52 = _s17ResolvedCompositeV3KeyVMa();
  v50 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v4 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v49 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v54 = &v46 - v11;
  v12 = *(a2 + 64);
  v48 = a2 + 64;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v47 = (v13 + 63) >> 6;
  v51 = a2;

  v59 = 0;
  v17 = 0;
  if (v15)
  {
    while (1)
    {
      v18 = v17;
      v19 = v54;
LABEL_12:
      v22 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v23 = v22 | (v18 << 6);
      v24 = v51;
      v25 = v49;
      sub_18AFAFA24(*(v51 + 48) + *(v50 + 72) * v23, v49, _s17ResolvedCompositeV3KeyVMa);
      v26 = *(*(v24 + 56) + 8 * v23);
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      v28 = *(v27 + 48);
      sub_18AF5EB60(v25, v9);
      *&v9[v28] = v26;
      (*(*(v27 - 8) + 56))(v9, 0, 1, v27);
      v21 = v18;
LABEL_13:
      sub_18AE9A768(v9, v19, &qword_1EA99B7B8);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      if ((*(*(v29 - 8) + 48))(v19, 1, v29) == 1)
      {
        break;
      }

      v30 = *(v29 + 48);
      sub_18AF5EB60(v19, v4);
      v31 = *(v19 + v30);
      v32 = *(v53 + 48);
      v60[2] = *(v53 + 32);
      v60[3] = v32;
      v61 = *(v53 + 64);
      v33 = *(v53 + 16);
      v60[0] = *v53;
      v60[1] = v33;
      v34 = *v4;
      v35 = *(v4 + 2) | (v4[12] << 32);
      v36 = v9;
      v37 = v4[13];
      v38 = v4[14];
      v58 = v21;
      v39 = *(v4 + 2);
      v40 = *(v4 + 3);
      v41 = v4[32];
      v55 = v4[33];
      v56 = v4[34];
      v57 = *(v4 + 5);
      sub_18AFB4928(v60, v34, v35);
      v42 = v37;
      v9 = v36;
      MEMORY[0x18CFED610](v42);
      MEMORY[0x18CFED610](v38);
      MEMORY[0x18CFED610](v39);
      MEMORY[0x18CFED610](v40);
      v43 = v59;
      MEMORY[0x18CFED610](v41);
      MEMORY[0x18CFED610](v55);
      MEMORY[0x18CFED610](v56);
      MEMORY[0x18CFED610](v57);
      sub_18AFCBB34();
      sub_18AE88AD4(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
      sub_18AFCDDA4();
      sub_18AF5EBC4(v4);
      if (v31 == 0.0)
      {
        v44 = 0.0;
      }

      else
      {
        v44 = v31;
      }

      MEMORY[0x18CFED640](*&v44);
      result = sub_18AFCE2E4();
      v59 = result ^ v43;
      v17 = v58;
      if (!v15)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x18CFED610](v59);
  }

  else
  {
LABEL_5:
    if (v47 <= v17 + 1)
    {
      v20 = v17 + 1;
    }

    else
    {
      v20 = v47;
    }

    v21 = v20 - 1;
    v19 = v54;
    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v47)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
        (*(*(v45 - 8) + 56))(v9, 1, 1, v45);
        v15 = 0;
        goto LABEL_13;
      }

      v15 = *(v48 + 8 * v18);
      ++v17;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

BOOL _s13DesignLibrary21GlassMaterialProviderV013ResolvedStyleE0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_18AFCBB24() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GlassMaterialProvider.ResolvedStyleProvider(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5 + 4);
  v7 = *(a1 + v5);
  v8 = *(a2 + v5) | (*(a2 + v5 + 4) << 32);
  v9 = v6 >> 8;
  if (v6 >> 8 > 0x20)
  {
    if (v9 == 33)
    {
      if (BYTE5(v8) == 33)
      {
        return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
      }
    }

    else
    {
      if (v9 != 34)
      {
        goto LABEL_11;
      }

      if (BYTE5(v8) == 34)
      {
        return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
      }
    }

    return 0;
  }

  if (v9 == 31)
  {
    if (BYTE5(v8) == 31)
    {
      return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
    }

    return 0;
  }

  if (v9 != 32)
  {
LABEL_11:
    if (BYTE5(v8) - 31 < 4)
    {
      return 0;
    }

    v10 = v7 & 0xFFFF0000FFFFFFFFLL | (v6 << 32);
    v17 = v10;
    v18 = BYTE4(v10) & 1;
    v19 = BYTE1(v6);
    v14 = v8;
    v15 = BYTE4(v8) & 1;
    v16 = BYTE5(v8);
    v11 = v4;
    v12 = sub_18AF5DC58(&v17, &v14);
    v4 = v11;
    if (!v12)
    {
      return 0;
    }

    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  if (BYTE5(v8) != 32)
  {
    return 0;
  }

  return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
}

void sub_18AFAF840()
{
  if (!qword_1ED56AF28[0])
  {
    _s14CustomFillBaseCMa();
    v0 = sub_18AFCE074();
    if (!v1)
    {
      atomic_store(v0, qword_1ED56AF28);
    }
  }
}

void sub_18AFAF898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AFAF8E8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18AFAF930(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_18AFAF9A0()
{
  result = sub_18AFCBB34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFAFA24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t __swift_memcpy12_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_18AFAFAA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_18AFAFAF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s17ResolvedCompositeV3KeyVMa()
{
  result = qword_1ED56AAE0;
  if (!qword_1ED56AAE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AFAFBB4()
{
  result = sub_18AFCBB34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFAFC30@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, int a7@<W7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10)
{
  v142 = a7;
  v140 = a5;
  v141 = a6;
  LODWORD(v123) = a4;
  v144 = a3;
  v118 = a2;
  v143 = a1;
  v139 = a8;
  v148 = a10;
  v10 = sub_18AFCD424();
  v137 = *(v10 - 8);
  v138 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v132 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v111 - v13;
  v15 = sub_18AFCD2E4();
  v131 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v127 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v128 = &v111 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v111 - v20;
  v126 = sub_18AFCC824();
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_18AFCC9A4();
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v111 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v122 = &v111 - v24;
  v25 = sub_18AFCC5C4();
  v145 = *(v25 - 8);
  v146 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v121 = &v111 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_18AFCBB34();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v120 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B5F0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v111 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v111 - v34;
  v134 = sub_18AFCC474();
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v37 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = _s11EnvironmentVMa();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v135 = &v111 - v42;
  v149 = v37;
  sub_18AFCDA44();
  v43 = *(v28 + 56);
  v147 = v35;
  v43(v35, 1, 1, v27);
  v44 = sub_18AFB12E0(v148);
  v45 = v123;
  v119 = v44;
  v136 = v14;
  v130 = v15;
  if ((v123 & 0x100) != 0)
  {
    v143 = sub_18AFB0AE0();
    v144 = v47;
    v46 = v48;
  }

  else
  {
    v46 = v118;
  }

  v118 = v46 & 1;
  v117 = v45 & 1;
  v49 = v38[5];
  (*(v28 + 104))(&v40[v49], *MEMORY[0x1E697DBB8], v27);
  v50 = *MEMORY[0x1E697F600];
  v51 = *(v145 + 104);
  v114 = v38[6];
  v51(&v40[v114], v50, v146);
  v52 = &v40[v38[7]];
  *v52 = 0;
  *(v52 + 1) = 0;
  v52[16] = 1;
  v53 = v38[8];
  v54 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  v55 = *(*(v54 - 8) + 56);
  v115 = v53;
  v55(&v40[v53], 1, 1, v54);
  v116 = v38[12];
  v40[v116] = 0;
  v123 = v38[21];
  v40[v123] = 0;
  sub_18AFCC244();
  *v40 = v56;
  sub_18AE7BA10(v147, v32);
  v57 = *(v28 + 48);
  v58 = v57(v32, 1, v27);
  v59 = v120;
  if (v58 == 1)
  {
    sub_18AFCC204();
    if (v57(v32, 1, v27) != 1)
    {
      sub_18AE7BA80(v32, &qword_1EA99B5F0);
    }
  }

  else
  {
    (*(v28 + 32))(v120, v32, v27);
  }

  v60 = &v40[v38[10]];
  v61 = &v40[v38[11]];
  (*(v28 + 40))(&v40[v49], v59, v27);
  v62 = v121;
  sub_18AFCC2F4();
  (*(v145 + 40))(&v40[v114], v62, v146);
  sub_18AFAB8BC();
  v63 = v122;
  sub_18AFCC484();
  sub_18AE90D7C(v63, &v40[v115]);
  *v60 = 0;
  v64 = 1;
  v60[4] = 1;
  v65 = v118;
  *v61 = v143;
  *(v61 + 1) = v65;
  *(v61 + 2) = v144;
  *(v61 + 12) = v117;
  sub_18AE7A260();
  sub_18AFCC484();
  v40[v116] = v151;
  if (v119)
  {
    sub_18AFCC974();
    v66 = v111;
    sub_18AFCC984();

    v67 = sub_18AFCC994();
    (*(v112 + 8))(v66, v113);
    v68 = sub_18AF76B64();
    v70 = v69;
    v72 = v71;
    v64 = v73;
  }

  else
  {
    v72 = 0;
    v68 = 0.0;
    v70 = 0;
  }

  v74 = &v40[v38[9]];
  v75 = v38[13];
  v76 = v38[14];
  v77 = v38[15];
  v78 = v38[16];
  v79 = v38[17];
  v81 = v38[19];
  v80 = v38[20];
  v144 = v38[18];
  v145 = v81;
  v146 = v80;
  *v74 = v68;
  *(v74 + 1) = v70;
  *(v74 + 2) = v72;
  v74[24] = v64 & 1;
  v40[v75] = sub_18AFCC274() & 1;
  v40[v76] = sub_18AFCC304() & 1;
  sub_18AFAB910();
  sub_18AFCC484();
  v40[v77] = v151;
  v82 = v124;
  sub_18AFCC454();
  v83 = sub_18AFCC814();
  (*(v125 + 8))(v82, v126);
  v84 = *(v83 + 16);

  v40[v78] = v84 != 0;
  v40[v79] = sub_18AFCC354() & 1;
  v40[v144] = sub_18AFCC334() & 1;
  v40[v145] = sub_18AFCC344() & 1;
  v40[v146] = sub_18AFCC424() & 1;
  v85 = v129;
  sub_18AFCC3D4();
  v86 = v131;
  v87 = v128;
  v88 = v130;
  (*(v131 + 16))(v128, v85, v130);
  v89 = v127;
  sub_18AFCD214();
  sub_18AFB46AC(&qword_1ED56A7A0, MEMORY[0x1E69818B0]);
  LOBYTE(v84) = sub_18AFCDDF4();
  v90 = *(v86 + 8);
  v90(v89, v88);
  if (v84)
  {
    v90(v87, v88);
    v90(v85, v88);
    v91 = 1;
  }

  else
  {
    sub_18AFCD234();
    v92 = sub_18AFCDDF4();
    v90(v89, v88);
    v90(v87, v88);
    v90(v85, v88);
    if (v92)
    {
      v91 = 2;
    }

    else
    {
      v91 = 0;
    }
  }

  v94 = v137;
  v93 = v138;
  v146 = a9;
  v40[v123] = v91;
  v95 = v136;
  v96 = v149;
  sub_18AFCC3E4();
  v97 = v132;
  sub_18AFCD414();
  sub_18AFB46AC(&qword_1EA99BC80, MEMORY[0x1E69818D0]);
  v98 = v97;
  v99 = sub_18AFCDDF4();
  v100 = *(v94 + 8);
  v100(v98, v93);
  if ((v99 & 1) == 0)
  {
    sub_18AFCD404();
    sub_18AFCDDF4();
    v96 = v149;
    v100(v98, v93);
  }

  v100(v95, v93);
  v40[v38[23]] = v99 & 1;
  sub_18AFAB964();
  sub_18AFCC484();
  v101 = v151;
  if (v151)
  {
    swift_getKeyPath();
    v150 = v101;
    sub_18AFB46AC(&qword_1ED56A728, _s6PocketV7StorageCMa);

    sub_18AFCB9B4();

    os_unfair_lock_lock((v101 + 16));
    v102 = *(v101 + 36);
    v103 = *(v101 + 40);
    os_unfair_lock_unlock((v101 + 16));

    sub_18AE7BA80(v147, &qword_1EA99B5F0);
    (*(v133 + 8))(v96, v134);

    v104 = 0x100000000;
    if (!v103)
    {
      v104 = 0;
    }

    v105 = v104 | v102;
  }

  else
  {
    sub_18AE7BA80(v147, &qword_1EA99B5F0);
    (*(v133 + 8))(v96, v134);
    v105 = 0;
  }

  v106 = &v40[v38[22]];
  v106[4] = BYTE4(v105);
  *v106 = v105;
  v106[5] = v101 == 0;
  v107 = v135;
  sub_18AFB457C(v40, v135, _s11EnvironmentVMa);
  v108 = v107 + v38[7];
  v109 = v141;
  *v108 = v140;
  *(v108 + 8) = v109;
  *(v108 + 16) = v142 & 1;
  sub_18AFB17F0(v107);
  return sub_18AFB45E4(v107, _s11EnvironmentVMa);
}

uint64_t sub_18AFB0AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BD30);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v16[-v1];
  v3 = sub_18AFCD554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16[-v8];
  sub_18AFCDA54();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_18AE7BA80(v2, &qword_1EA99BD30);
    v10 = sub_18AFCDA64();
    if (v11)
    {
      return 0;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v6, v9, v3);
    sub_18AFCD534();
    v12 = v13;
    sub_18AFCD544();
    v14 = *(v4 + 8);
    v14(v6, v3);
    v14(v9, v3);
  }

  return v12;
}

uint64_t sub_18AFB0CFC(double a1)
{
  v3 = _s17ResolvedCompositeV3KeyVMa();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 0.0)
  {
    v7 = sub_18AFABA58(MEMORY[0x1E69E7CC0]);

    *v1 = v7;
    *(v1 + 2) = 0;
  }

  else
  {
    v34 = v6;
    v31 = v1;
    v9 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0);
    result = sub_18AFCE204();
    v10 = result;
    v11 = 0;
    v35 = v9;
    v12 = 1 << *(v9 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v9 + 64;
    v15 = v13 & *(v9 + 64);
    v16 = (v12 + 63) >> 6;
    v32 = result + 64;
    v33 = result;
    if (v15)
    {
      while (1)
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_12:
        v20 = v17 | (v11 << 6);
        v22 = v34;
        v21 = v35;
        v23 = *(v4 + 72) * v20;
        sub_18AFB4644(*(v35 + 48) + v23, v34, _s17ResolvedCompositeV3KeyVMa);
        v24 = *(*(v21 + 56) + 8 * v20) * a1;
        v10 = v33;
        *(v32 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        result = sub_18AFB457C(v22, v10[6] + v23, _s17ResolvedCompositeV3KeyVMa);
        *(v10[7] + 8 * v20) = v24;
        v25 = v10[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          break;
        }

        v10[2] = v27;
        if (!v15)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v18 = v11;
      while (1)
      {
        v11 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v11 >= v16)
        {

          v28 = v31;
          *v31 = v10;
          v29 = a1;
          v28[2] = v28[2] * v29;
          v30 = sub_18AFB2EFC(v10);

          *v28 = v30;
          return result;
        }

        v19 = *(v14 + 8 * v11);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v15 = (v19 - 1) & v19;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18AFB0F84(uint64_t result, float a2)
{
  v2 = 0;
  v3 = 1 << *(result + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = (a2 * a2);
  v6 = v4 & *(result + 64);
  for (i = (v3 + 63) >> 6; v6; v5 = v5 + *(*(result + 56) + ((v8 << 9) | (8 * v9))) * *(*(result + 56) + ((v8 << 9) | (8 * v9))))
  {
    v8 = v2;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= i)
    {
      return result;
    }

    v6 = *(result + 64 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18AFB1024()
{
  sub_18AFCE294();
  sub_18AFB4F38(v1);
  sub_18AFCBB34();
  sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB10E0(uint64_t a1)
{
  sub_18AFB4F38(a1);
  sub_18AFCBB34();
  sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  return sub_18AFCDDA4();
}

uint64_t sub_18AFB1188()
{
  sub_18AFCE294();
  sub_18AFB4F38(v1);
  sub_18AFCBB34();
  sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
  sub_18AFCDDA4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB128C()
{
  result = qword_1EA99BD20;
  if (!qword_1EA99BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD20);
  }

  return result;
}

uint64_t sub_18AFB12E0(uint64_t a1)
{
  v2 = _s17ResolvedCompositeV3KeyVMa();
  v45 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - v10;
  v12 = *(a1 + 64);
  v42 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v16 = (v13 + 63) >> 6;
  v46 = a1;

  v18 = 0;
  v43 = v4;
  v48 = v11;
  while (v15)
  {
    v19 = v18;
LABEL_13:
    v23 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v24 = v23 | (v19 << 6);
    v25 = v46;
    v26 = v44;
    sub_18AFB4644(*(v46 + 48) + *(v45 + 72) * v24, v44, _s17ResolvedCompositeV3KeyVMa);
    v27 = *(*(v25 + 56) + 8 * v24);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
    v29 = *(v28 + 48);
    v22 = v47;
    sub_18AFB457C(v26, v47, _s17ResolvedCompositeV3KeyVMa);
    *(v22 + v29) = v27;
    (*(*(v28 - 8) + 56))(v22, 0, 1, v28);
    v4 = v43;
    v11 = v48;
LABEL_14:
    sub_18AFB450C(v22, v11);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
    v31 = (*(*(v30 - 8) + 48))(v11, 1, v30);
    if (v31 == 1)
    {
LABEL_22:

      return v31 != 1;
    }

    sub_18AFB457C(v11, v4, _s17ResolvedCompositeV3KeyVMa);
    v32 = v4[12];
    if (v32 >> 6 == 2)
    {
      v33 = v19;
      v34 = *v4;
      v35 = *(v4 + 2) | (v4[12] << 32);
      v36 = *(*v4 + 80);
      v51 = *(*v4 + 64);
      v52 = v36;
      v53 = *(v34 + 96);
      v54 = *(v34 + 112);
      v37 = *(v34 + 32);
      v50[0] = *(v34 + 16);
      v50[1] = v37;
      v50[2] = *(v34 + 48);
      v38 = *(v34 + 32);
      v49[7] = *(v34 + 16);
      v49[8] = v38;
      v49[9] = *(v34 + 48);
      sub_18AE7E9D4(v34, v35);
      sub_18AF59FDC(v50, v49);
      if (sub_18AFB4854())
      {

        sub_18AF5A038(v50);
        sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
        sub_18AE83FF0(v34, v35);
        return v31 != 1;
      }

      v49[0] = v51;
      v49[1] = v52;
      v49[2] = v53;
      v39 = sub_18AFB4854();
      sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
      sub_18AF5A038(v50);
      result = sub_18AE83FF0(v34, v35);
      if (v39)
      {
        goto LABEL_22;
      }

      v18 = v33;
      v11 = v48;
    }

    else
    {
      if (!(v32 >> 6))
      {

        sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
        return v31 != 1;
      }

      result = sub_18AFB45E4(v4, _s17ResolvedCompositeV3KeyVMa);
      v18 = v19;
    }
  }

  if (v16 <= v18 + 1)
  {
    v20 = v18 + 1;
  }

  else
  {
    v20 = v16;
  }

  v21 = v20 - 1;
  v22 = v47;
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      (*(*(v40 - 8) + 56))(v22, 1, 1, v40);
      v15 = 0;
      v19 = v21;
      goto LABEL_14;
    }

    v15 = *(v42 + 8 * v19);
    ++v18;
    if (v15)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18AFB17F0(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v2 = LODWORD(v1);
  v133 = v3;
  v210 = v4;
  v6 = v5;
  v116 = v7;
  v8 = v343;
  v9 = sub_18AFCBB34();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v113 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v113 - v14;
  v15 = _s11EnvironmentVMa();
  MEMORY[0x1EEE9AC00](v15);
  v139 = &v113 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v157 = &v113 - v18;
  v138 = _s17ResolvedCompositeV3KeyVMa();
  v132 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v20 = (&v113 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v131 = &v113 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v145 = &v113 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v144 = &v113 - v26;
  sub_18AF6A8C8(v343);
  v345 = 1;
  v346 = 1;
  v347 = 1;
  sub_18AF6A8EC(v348);
  *(&v360[5] + 8) = v343[5];
  *(&v360[6] + 8) = v343[6];
  *(&v360[7] + 8) = *v344;
  *(&v360[1] + 8) = v343[1];
  *(&v360[2] + 8) = v343[2];
  *(&v360[3] + 8) = v343[3];
  *(&v360[4] + 8) = v343[4];
  v348[272] = 1;
  *(&v360[8] + 5) = *&v344[13];
  *(v360 + 8) = v343[0];
  v205 = v345;
  v357 = 1;
  v204 = v346;
  v203 = v347;
  v353 = 1;
  memcpy(&v352[15], v348, 0x105uLL);
  v350 = 1;
  v202 = 1;
  v348[352] = 1;
  v348[336] = 1;
  v348[320] = 1;
  v348[304] = 1;
  v348[288] = 1;
  if (qword_1ED56A890 != -1)
  {
LABEL_63:
    swift_once();
  }

  memcpy(v242, &dword_1ED56C4C8, sizeof(v242));
  v158 = v210 & 0xFFFFFFFFFFFFFFF7;
  v27 = &v6[*(v15 + 44)];
  v28 = v27[25];
  v114 = v12;
  v142 = v6;
  v140 = v15;
  if (v28)
  {
    v29 = 48.0;
  }

  else if (v27[24])
  {
    if (*(v27 + 1))
    {
      v29 = 48.0;
    }

    else
    {
      v29 = *v27;
    }
  }

  else
  {
    v29 = *(v27 + 2);
  }

  v137 = *(v133 + 16);
  v30 = *(v133 + 64);
  v118 = v133 + 64;
  v31 = *(v133 + 32);
  v130 = 1;
  v32 = 1 << v31;
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v12 = v33 & v30;
  v6 = v354;
  v201 = v357;
  v200 = v353;
  v199 = v350;
  v197 = v8[528];
  v196 = v8[512];
  v195 = v8[496];
  v194 = v8[480];
  v193 = v8[464];
  v155 = v307;
  v156 = &v294;
  v153 = v321;
  v154 = v313;
  v151 = v326;
  v152 = v323;
  v149 = v334;
  v150 = v331;
  v147 = v338;
  v148 = v337;
  v146 = v339;
  v117 = (v32 + 63) >> 6;
  v136 = (v10 + 24);
  v135 = *MEMORY[0x1E697DBA8];
  v143 = (v10 + 104);
  v115 = v10;
  v134 = (v10 + 8);
  v128 = v258;
  v129 = &v245;
  v126 = v272;
  v127 = v264;
  v124 = v277;
  v125 = v274;
  v122 = v285;
  v123 = v282;
  v120 = v289;
  v121 = v288;
  v119 = v290;

  v198 = 0;
  LODWORD(v210) = 0;
  v208 = 0;
  v209 = 0;
  v10 = 0;
  v177 = 0u;
  v34 = 0;
  v35 = 0.0;
  v159 = 0u;
  v160 = 0u;
  v207 = 3;
  v161 = 0u;
  v162 = 0u;
  v163 = 0u;
  v164 = 0u;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v165 = 0u;
  v170 = 0u;
  v171 = 0u;
  v173 = 0u;
  v174 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v178 = 0u;
  v179 = 0u;
  v175 = 0u;
  v176 = 0u;
  v172 = 0u;
  v186 = 0u;
  v187 = 0u;
  v180 = 0u;
  v181 = 0u;
  v188 = 0u;
  v189 = 0u;
  v191 = 0u;
  v192 = 0u;
  v190 = 0u;
  v206 = v9;
  v8 = v157;
  v211 = v20;
  while (1)
  {
    v293 = v34;
    v49 = v360[7];
    v50 = v156;
    *(v156 + 6) = v360[6];
    *(v50 + 7) = v49;
    *(v50 + 125) = *(&v360[7] + 13);
    v51 = v360[3];
    *(v50 + 2) = v360[2];
    *(v50 + 3) = v51;
    v52 = v360[5];
    *(v50 + 4) = v360[4];
    *(v50 + 5) = v52;
    v53 = v360[1];
    *v50 = v360[0];
    *(v50 + 1) = v53;
    *v295 = v359[0];
    *&v295[7] = *(v359 + 7);
    v296 = v192;
    v297 = v191;
    v298 = v190;
    v299 = v189;
    v300 = v198;
    v301 = v205;
    *v302 = v358[0];
    *&v302[3] = *(v358 + 3);
    v303 = v188;
    v304 = v187;
    v306 = v201;
    v54 = v154;
    v55 = v155;
    *(v155 + 7) = *(v356 + 7);
    *v55 = v356[0];
    v305 = v180;
    *&v307[15] = v186;
    v308 = v185;
    v309 = v183;
    v310 = v181;
    v311 = v178;
    v312 = v204;
    *(v54 + 7) = *(v355 + 7);
    *v54 = v355[0];
    *&v313[15] = v184;
    v314 = v182;
    v315 = v179;
    v316 = v176;
    v317 = v175;
    v318 = v174;
    v320 = v203;
    v56 = *v354;
    v57 = v153;
    *(v153 + 7) = *&v354[7];
    *v57 = v56;
    v319 = v172;
    *&v321[15] = v173;
    v321[31] = v200;
    memcpy(v322, v352, sizeof(v322));
    v58 = v151;
    v59 = v152;
    *v152 = v351[0];
    *(v59 + 7) = *(v351 + 7);
    *&v323[11] = v171;
    v324 = v170;
    v325 = v199;
    *v58 = v349[0];
    *(v58 + 7) = *(v349 + 7);
    *&v326[15] = v169;
    v327 = v168;
    v328 = v167;
    v60 = v166;
    v329 = v165;
    v330 = v202;
    v61 = v241[0];
    v62 = v150;
    *(v150 + 7) = *(v241 + 7);
    *v62 = v61;
    *&v331[15] = v60;
    v63 = v163;
    v332 = v164;
    v333 = v197;
    v64 = v148;
    v65 = v149;
    *(v149 + 7) = *(v240 + 7);
    *v65 = v240[0];
    *&v334[15] = v63;
    v66 = v161;
    v335 = v162;
    v336 = v196;
    *v64 = v239[0];
    *(v64 + 7) = *(v239 + 7);
    *&v337[15] = v66;
    v337[31] = v195;
    v67 = v238[0];
    v68 = v147;
    *(v147 + 7) = *(v238 + 7);
    *v68 = v67;
    *&v338[15] = v160;
    v338[31] = v194;
    v69 = v237[0];
    v70 = v146;
    *(v146 + 7) = *(v237 + 7);
    *v70 = v69;
    *&v339[15] = v177;
    v340 = v159;
    v341 = v193;
    if (!v12)
    {
      if (v117 <= v10 + 1)
      {
        v72 = v10 + 1;
      }

      else
      {
        v72 = v117;
      }

      v15 = v72 - 1;
      v73 = v211;
      v20 = &qword_1EA99B7C0;
      while (1)
      {
        v71 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v71 >= v117)
        {
          v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
          v94 = v145;
          (*(*(v93 - 8) + 56))(v145, 1, 1, v93);
          v12 = 0;
          v10 = v15;
          v81 = v94;
          goto LABEL_32;
        }

        v12 = *(v118 + 8 * v71);
        ++v10;
        if (v12)
        {
          v10 = v71;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_63;
    }

    v71 = v10;
LABEL_31:
    v74 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v75 = v74 | (v71 << 6);
    v76 = v133;
    v77 = v131;
    sub_18AFB4644(*(v133 + 48) + *(v132 + 72) * v75, v131, _s17ResolvedCompositeV3KeyVMa);
    v78 = *(*(v76 + 56) + 8 * v75);
    v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
    v80 = *(v79 + 48);
    v81 = v145;
    sub_18AFB457C(v77, v145, _s17ResolvedCompositeV3KeyVMa);
    *(v81 + v80) = v78;
    (*(*(v79 - 8) + 56))(v81, 0, 1, v79);
    v9 = v206;
    v73 = v211;
LABEL_32:
    v82 = v144;
    sub_18AFB450C(v81, v144);
    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
    if ((*(*(v83 - 8) + 48))(v82, 1, v83) == 1)
    {
      break;
    }

    v84 = *(v82 + *(v83 + 48));
    sub_18AFB457C(v82, v73, _s17ResolvedCompositeV3KeyVMa);
    sub_18AFB4644(v142, v8, _s11EnvironmentVMa);
    v85 = v140;
    (*v136)(&v8[*(v140 + 20)], v73 + *(v138 + 20), v9);
    v86 = &v8[*(v85 + 40)];
    *v86 = v2;
    v86[4] = 0;
    v87 = *(v73 + 1);
    v234 = *v73;
    v235 = v87;
    v89 = *v73;
    v88 = *(v73 + 1);
    v236 = *(v73 + 2);
    v212[0] = v89;
    v212[1] = v88;
    v212[2] = *(v73 + 2);
    sub_18AFB4644(v8, v139, _s11EnvironmentVMa);
    sub_18AE90E8C(&v234, v220);
    v90 = sub_18AE7EA9C(v212);
    v91 = v141;
    (*v143)(v141, v135, v9, v90);
    sub_18AFB46AC(&qword_1ED56AD68, MEMORY[0x1E697DBD0]);
    LOBYTE(v85) = sub_18AFCDDF4();
    (*v134)(v91, v9);
    if (v85)
    {
      v92 = -v84;
    }

    else
    {
      v92 = v84;
    }

    v208 |= *(&v235 + 1);
    v209 |= *(&v236 + 1);
    if (v137 == 1 && v84 == 1.0)
    {
      memcpy(v242, v243, sizeof(v242));
      v232 = v360[6];
      v233[0] = v360[7];
      v6 = v354;
      *(v233 + 13) = *(&v360[7] + 13);
      v228 = v360[2];
      v229 = v360[3];
      v231 = v360[5];
      v230 = v360[4];
      v227 = v360[1];
      v226 = v360[0];
      v225[0] = v359[0];
      *(v225 + 7) = *(v359 + 7);
      v224[0] = v358[0];
      *(v224 + 3) = *(v358 + 3);
      v223[0] = v356[0];
      *(v223 + 7) = *(v356 + 7);
      *(v222 + 7) = *(v355 + 7);
      v222[0] = v355[0];
      *(v221 + 7) = *&v354[7];
      v221[0] = *v354;
      memcpy(v220, v352, 0x114uLL);
      v130 = 0;
      v219[0] = v351[0];
      *(v219 + 7) = *(v351 + 7);
      v218[0] = v349[0];
      *(v218 + 7) = *(v349 + 7);
      v217[0] = v241[0];
      *(v217 + 7) = *(v241 + 7);
      *(v216 + 7) = *(v240 + 7);
      v216[0] = v240[0];
      *(v215 + 7) = *(v239 + 7);
      v215[0] = v239[0];
      *(v214 + 7) = *(v238 + 7);
      v214[0] = v238[0];
      *(v213 + 7) = *(v237 + 7);
      v213[0] = v237[0];
    }

    else
    {
      v36 = sub_18AF61350(v212);
      v36.n128_f64[0] = v84;
      sub_18AF605B4(v36);
      memcpy(v342, v212, 0x481uLL);
      sub_18AF69C60(&v293, v342, &v244);
      v34 = v244;
      v37 = v129[7];
      v232 = v129[6];
      v233[0] = v37;
      *(v233 + 13) = *(v129 + 125);
      v38 = v129[3];
      v228 = v129[2];
      v229 = v38;
      v39 = v129[4];
      v231 = v129[5];
      v230 = v39;
      v40 = *v129;
      v227 = v129[1];
      v226 = v40;
      v225[0] = *v246;
      *(v225 + 7) = *&v246[7];
      v191 = v248;
      v192 = v247;
      v189 = v250;
      v190 = v249;
      v198 = v251;
      v205 = v252;
      v224[0] = *v253;
      *(v224 + 3) = *&v253[3];
      v187 = v255;
      v188 = v254;
      v201 = v257;
      *(v223 + 7) = *(v128 + 7);
      v223[0] = *v128;
      v185 = v259;
      v186 = *&v258[15];
      v180 = v256;
      v181 = v261;
      v204 = v263;
      *(v222 + 7) = *(v127 + 7);
      v222[0] = *v127;
      v183 = v260;
      v184 = *&v264[15];
      v182 = v265;
      v178 = v262;
      v179 = v266;
      v175 = v268;
      v176 = v267;
      v203 = v271;
      v41 = *v126;
      *(v221 + 7) = *(v126 + 7);
      v221[0] = v41;
      v172 = v270;
      v173 = *&v272[15];
      v174 = v269;
      v200 = v272[31];
      memcpy(v220, v273, 0x114uLL);
      v219[0] = *v125;
      *(v219 + 7) = *(v125 + 7);
      v170 = v275;
      v171 = *&v274[11];
      v199 = v276;
      v218[0] = *v124;
      *(v218 + 7) = *(v124 + 7);
      v168 = v278;
      v169 = *&v277[15];
      v202 = v281;
      v42 = *v123;
      *(v217 + 7) = *(v123 + 7);
      v217[0] = v42;
      v166 = *&v282[15];
      v167 = v279;
      v164 = v283;
      v165 = v280;
      v197 = v284;
      *(v216 + 7) = *(v122 + 7);
      v216[0] = *v122;
      v162 = v286;
      v163 = *&v285[15];
      v196 = v287;
      *(v215 + 7) = *(v121 + 7);
      v215[0] = *v121;
      v195 = v288[31];
      v43 = *v120;
      *(v214 + 7) = *(v120 + 7);
      v214[0] = v43;
      v160 = *&v289[15];
      v161 = *&v288[15];
      v194 = v289[31];
      v44 = *v119;
      *(v213 + 7) = *(v119 + 7);
      v213[0] = v44;
      v177 = *&v290[15];
      v159 = v291;
      v193 = v292;
      v6 = v354;
    }

    v35 = v35 + v92;
    v45 = BYTE1(v236);
    if (BYTE1(v236) >= v207)
    {
      v46 = v207;
    }

    else
    {
      v46 = BYTE1(v236);
    }

    if (v207 != 3)
    {
      v45 = v46;
    }

    v207 = v45;
    v47 = BYTE2(v236);
    sub_18AFB45E4(v211, _s17ResolvedCompositeV3KeyVMa);
    v48 = v210;
    if (v47 > v210)
    {
      v48 = v47;
    }

    LODWORD(v210) = v48;
    v8 = v157;
    sub_18AFB45E4(v157, _s11EnvironmentVMa);
    v360[6] = v232;
    v360[7] = v233[0];
    *(&v360[7] + 13) = *(v233 + 13);
    v360[2] = v228;
    v360[3] = v229;
    v360[5] = v231;
    v360[4] = v230;
    v360[1] = v227;
    v360[0] = v226;
    v359[0] = v225[0];
    *(v359 + 7) = *(v225 + 7);
    v358[0] = v224[0];
    *(v358 + 3) = *(v224 + 3);
    v356[0] = v223[0];
    *(v356 + 7) = *(v223 + 7);
    *(v355 + 7) = *(v222 + 7);
    v355[0] = v222[0];
    *&v354[7] = *(v221 + 7);
    *v354 = v221[0];
    memcpy(v352, v220, sizeof(v352));
    v351[0] = v219[0];
    *(v351 + 7) = *(v219 + 7);
    v349[0] = v218[0];
    *(v349 + 7) = *(v218 + 7);
    v241[0] = v217[0];
    *(v241 + 7) = *(v217 + 7);
    *(v240 + 7) = *(v216 + 7);
    v240[0] = v216[0];
    *(v239 + 7) = *(v215 + 7);
    v239[0] = v215[0];
    v238[0] = v214[0];
    *(v238 + 7) = *(v214 + 7);
    v237[0] = v213[0];
    *(v237 + 7) = *(v213 + 7);
    v9 = v206;
  }

  if (v130)
  {
    sub_18AF61DAC(&v293);
  }

  *&v95 = 0;
  v96 = *&v242[264];
  if (v242[308])
  {
    v96 = 0.0;
  }

  v97 = fmin(v96, 0.0);
  v98 = *&v242[304];
  if (v242[308])
  {
    v98 = 0.0;
    v99 = -1;
  }

  else
  {
    *&v95 = *&v242[256];
    v99 = 0;
  }

  v100 = vdupq_n_s64(v99);
  v101 = vbicq_s8(*&v242[288], v100);
  v102 = vbicq_s8(*&v242[272], v100);
  *&v103.f64[0] = v95;
  v103.f64[1] = v97;
  v105 = v115;
  v104 = v116;
  v106 = v114;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v103), vceqzq_f64(v102))))) & 1) == 0 && *v101.i64 == 0.0 && *&v101.i64[1] == 0.0 && v98 == 0.0)
  {
    v107 = 1;
    v95 = 0uLL;
    v98 = 0.0;
    v102 = 0uLL;
    v101 = 0uLL;
  }

  else
  {
    v107 = 0;
    *(&v95 + 1) = v97;
  }

  *&v242[256] = v95;
  *&v242[272] = v102;
  *&v242[288] = v101;
  *&v242[304] = v98;
  v242[308] = v107;
  memcpy(v212, v242, 0x401uLL);
  v108 = MEMORY[0x1E697DBB8];
  if (v35 < 0.0)
  {
    v108 = MEMORY[0x1E697DBA8];
  }

  (*(v115 + 104))(v114, *v108, v9);
  if (v29 > 64.0)
  {
    v109 = v208 & 0xFFFFFFFFFFFFEFFFLL;
  }

  else
  {
    v109 = v208;
  }

  if (v207 == 3)
  {
    v110 = 0;
  }

  else
  {
    v110 = v207;
  }

  memcpy(v104, v212, 0x401uLL);
  v104[129] = v209;
  v104[130] = v109;
  v111 = _s14ResolvedRecipeVMa();
  result = (*(v105 + 32))(v104 + v111[7], v106, v9);
  *(v104 + v111[8]) = v110;
  *(v104 + v111[9]) = v210;
  return result;
}

uint64_t sub_18AFB2BEC()
{
  v1 = *v0;
  sub_18AFCE294();
  sub_18AFAF158(v3, v1);
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB2CA4()
{
  v1 = *v0;
  sub_18AFCE294();
  sub_18AFAF158(v3, v1);
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB2D1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  return sub_18AF5CA0C(*a1, *a2) & (v2 == v3);
}

unint64_t sub_18AFB2D60@<X0>(uint64_t a1@<X8>)
{
  result = sub_18AFABA58(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_18AFB2DDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, void, float, float)@<X4>, uint64_t a4@<X8>)
{
  result = a3(*a1, *a2, *(a1 + 8), *(a2 + 8));
  *a4 = result;
  *(a4 + 8) = v6;
  return result;
}

uint64_t sub_18AFB2E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, float, float))
{
  v6 = a5(*a1, *a2, *(a1 + 8), *(a2 + 8));
  v8 = v7;

  *a1 = v6;
  *(a1 + 8) = v8;
  return result;
}

unint64_t sub_18AFB2EA8()
{
  result = qword_1EA99BD28;
  if (!qword_1EA99BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD28);
  }

  return result;
}

unint64_t *sub_18AFB2EFC(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_18AFB305C(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_18AFB3154(v8, v4, v2);
  result = MEMORY[0x18CFEDD10](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_18AFB305C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v10 = v9 | (v5 << 6);
LABEL_11:
    if (fabs(*(*(a3 + 56) + 8 * v10)) >= 0.0000000149011612)
    {
      *(result + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_18AFB31CC(result, a2, v4, a3);
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= ((v6 + 63) >> 6))
    {
      return sub_18AFB31CC(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v8 = (v12 - 1) & v12;
      v10 = __clz(__rbit64(v12)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_18AFB3154(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_18AFB305C(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_18AFB31CC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = _s17ResolvedCompositeV3KeyVMa();
  v41 = *(v8 - 8);
  v42 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = &v35 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0);
  result = sub_18AFCE224();
  v39 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v38 = v39 + 8;
  v36 = a2;
  v35 = a1;
  v37 = a4;
  while (v14)
  {
    v48 = a3;
    v16 = __clz(__rbit64(v14));
    v43 = (v14 - 1) & v14;
LABEL_16:
    v19 = v16 | (v15 << 6);
    v20 = v40;
    v21 = *(v41 + 72);
    v22 = a4[6] + v21 * v19;
    v46 = _s17ResolvedCompositeV3KeyVMa;
    v47 = v21;
    sub_18AFB4644(v22, v40, _s17ResolvedCompositeV3KeyVMa);
    v23 = *(a4[7] + 8 * v19);
    sub_18AFB457C(v20, v11, _s17ResolvedCompositeV3KeyVMa);
    v24 = v39;
    sub_18AFCE294();
    v25 = *v11;
    v26 = *(v11 + 2) | (v11[12] << 32);
    v27 = v11[13];
    v28 = v11[14];
    v29 = *(v11 + 2);
    v30 = *(v11 + 3);
    v31 = v11[32];
    v32 = v11[33];
    v44 = v11[34];
    v45 = *(v11 + 5);
    sub_18AFB4928(v49, v25, v26);
    MEMORY[0x18CFED610](v27);
    MEMORY[0x18CFED610](v28);
    MEMORY[0x18CFED610](v29);
    MEMORY[0x18CFED610](v30);
    MEMORY[0x18CFED610](v31);
    MEMORY[0x18CFED610](v32);
    MEMORY[0x18CFED610](v44);
    MEMORY[0x18CFED610](v45);
    sub_18AFCBB34();
    sub_18AFB46AC(&qword_1ED56AA48, MEMORY[0x1E697DBD0]);
    sub_18AFCDDA4();
    sub_18AFCE2E4();
    v33 = v38;
    v34 = sub_18AFCE104();
    *(v33 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    result = sub_18AFB457C(v11, v24[6] + v34 * v47, v46);
    *(v24[7] + 8 * v34) = v23;
    ++v24[2];
    a3 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
      goto LABEL_21;
    }

    a4 = v37;
    a2 = v36;
    a1 = v35;
    v14 = v43;
    if (v48 == 1)
    {
      return v39;
    }
  }

  v17 = v15;
  while (1)
  {
    v15 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v39;
    }

    v18 = a1[v15];
    ++v17;
    if (v18)
    {
      v48 = a3;
      v16 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_18AFB3590(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v19[0] = *a1;
  v19[1] = v2;
  v3 = a1[2];
  v4 = a1[1];
  v16 = *a1;
  v17 = v4;
  v18 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v19[2] = v3;
  v20[0] = v5;
  v7 = a2[2];
  v9 = *a2;
  v8 = a2[1];
  v20[1] = v6;
  v20[2] = v7;
  v13 = v9;
  v14 = v8;
  v15 = a2[2];
  sub_18AE90E8C(v19, v22);
  sub_18AE90E8C(v20, v22);
  v10 = sub_18AFB528C(&v16, &v13);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  sub_18AE920D8(v21);
  v22[0] = v16;
  v22[1] = v17;
  v22[2] = v18;
  sub_18AE920D8(v22);
  if (v10)
  {
    _s17ResolvedCompositeV3KeyVMa();
    v11 = sub_18AFCBB24();
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_18AFB3680(void *a1, uint64_t a2)
{
  v74 = _s17ResolvedCompositeV3KeyVMa();
  v82 = *(v74 - 8);
  v4 = MEMORY[0x1EEE9AC00](v74);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v76 = &v73 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v73 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v73 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v73 - v17;
  v19 = *(a2 + 64);
  v75 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;

  v81 = a2;

  v24 = 0;
  v80 = v6;
  v77 = v18;
  v78 = v16;
  v83 = v11;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v24;
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v26 << 6);
      v30 = v81;
      v31 = v79;
      sub_18AFB4644(*(v81 + 48) + *(v82 + 72) * v29, v79, _s17ResolvedCompositeV3KeyVMa);
      v32 = *(*(v30 + 56) + 8 * v29);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      v34 = *(v33 + 48);
      v35 = v31;
      v16 = v78;
      sub_18AFB457C(v35, v78, _s17ResolvedCompositeV3KeyVMa);
      *&v16[v34] = v32;
      (*(*(v33 - 8) + 56))(v16, 0, 1, v33);
      v84 = v26;
      v6 = v80;
      v18 = v77;
LABEL_15:
      sub_18AFB450C(v16, v18);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      v37 = (*(*(v36 - 8) + 48))(v18, 1, v36);
      v38 = v83;
      if (v37 == 1)
      {

        v71 = sub_18AFB2EFC(a1);

        return v71;
      }

      v39 = *&v18[*(v36 + 48)];
      sub_18AFB457C(v18, v83, _s17ResolvedCompositeV3KeyVMa);
      if (a1[2])
      {
        v40 = sub_18AECE178(v38);
        if (v41)
        {
          break;
        }
      }

      sub_18AFB4644(v38, v6, _s17ResolvedCompositeV3KeyVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = a1;
      v54 = sub_18AECE178(v6);
      v56 = a1[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_42;
      }

      v60 = v55;
      if (a1[3] >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v70 = v54;
          sub_18AFC1170();
          v54 = v70;
        }
      }

      else
      {
        sub_18AFC0988(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_18AECE178(v6);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_46;
        }
      }

      v62 = -v39;
      a1 = v85;
      if ((v60 & 1) == 0)
      {
        v85[(v54 >> 6) + 8] |= 1 << v54;
        v63 = v54;
        sub_18AFB4644(v6, a1[6] + *(v82 + 72) * v54, _s17ResolvedCompositeV3KeyVMa);
        *(a1[7] + 8 * v63) = v62;
        sub_18AFB45E4(v6, _s17ResolvedCompositeV3KeyVMa);
        sub_18AFB45E4(v38, _s17ResolvedCompositeV3KeyVMa);
        v64 = a1[2];
        v58 = __OFADD__(v64, 1);
        v65 = v64 + 1;
        if (v58)
        {
          goto LABEL_43;
        }

        goto LABEL_38;
      }

      *(v85[7] + 8 * v54) = v62;
      sub_18AFB45E4(v6, _s17ResolvedCompositeV3KeyVMa);
      v25 = v38;
LABEL_6:
      sub_18AFB45E4(v25, _s17ResolvedCompositeV3KeyVMa);
      v24 = v84;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v42 = *(a1[7] + 8 * v40);
    v43 = v76;
    sub_18AFB4644(v38, v76, _s17ResolvedCompositeV3KeyVMa);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v85 = a1;
    v46 = sub_18AECE178(v43);
    v47 = a1[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_44;
    }

    v50 = v45;
    if (a1[3] >= v49)
    {
      if ((v44 & 1) == 0)
      {
        sub_18AFC1170();
      }
    }

    else
    {
      sub_18AFC0988(v49, v44);
      v51 = sub_18AECE178(v76);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_46;
      }

      v46 = v51;
    }

    v67 = v42 - v39;
    a1 = v85;
    if (v50)
    {
      *(v85[7] + 8 * v46) = v67;
      sub_18AFB45E4(v76, _s17ResolvedCompositeV3KeyVMa);
      v25 = v83;
      goto LABEL_6;
    }

    v85[(v46 >> 6) + 8] |= 1 << v46;
    v68 = v76;
    sub_18AFB4644(v76, a1[6] + *(v82 + 72) * v46, _s17ResolvedCompositeV3KeyVMa);
    *(a1[7] + 8 * v46) = v67;
    sub_18AFB45E4(v68, _s17ResolvedCompositeV3KeyVMa);
    sub_18AFB45E4(v83, _s17ResolvedCompositeV3KeyVMa);
    v69 = a1[2];
    v58 = __OFADD__(v69, 1);
    v65 = v69 + 1;
    if (v58)
    {
      goto LABEL_45;
    }

LABEL_38:
    a1[2] = v65;
    v24 = v84;
  }

  while (v22);
LABEL_8:
  if (v23 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v23;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v84 = v27 - 1;
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      (*(*(v66 - 8) + 56))(v16, 1, 1, v66);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *(v75 + 8 * v26);
    ++v24;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

uint64_t sub_18AFB3DC4(void *a1, uint64_t a2)
{
  v73 = _s17ResolvedCompositeV3KeyVMa();
  v81 = *(v73 - 8);
  v4 = MEMORY[0x1EEE9AC00](v73);
  v6 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v75 = &v72 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v72 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v72 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v72 - v17;
  v19 = *(a2 + 64);
  v74 = a2 + 64;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;

  v80 = a2;

  v24 = 0;
  v79 = v6;
  v76 = v18;
  v77 = v16;
  v82 = v11;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v24;
LABEL_14:
      v28 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v29 = v28 | (v26 << 6);
      v30 = v80;
      v31 = v78;
      sub_18AFB4644(*(v80 + 48) + *(v81 + 72) * v29, v78, _s17ResolvedCompositeV3KeyVMa);
      v32 = *(*(v30 + 56) + 8 * v29);
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      v34 = *(v33 + 48);
      v35 = v31;
      v16 = v77;
      sub_18AFB457C(v35, v77, _s17ResolvedCompositeV3KeyVMa);
      *&v16[v34] = v32;
      (*(*(v33 - 8) + 56))(v16, 0, 1, v33);
      v83 = v26;
      v6 = v79;
      v18 = v76;
LABEL_15:
      sub_18AFB450C(v16, v18);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      v37 = (*(*(v36 - 8) + 48))(v18, 1, v36);
      v38 = v82;
      if (v37 == 1)
      {

        v70 = sub_18AFB2EFC(a1);

        return v70;
      }

      v39 = *&v18[*(v36 + 48)];
      sub_18AFB457C(v18, v82, _s17ResolvedCompositeV3KeyVMa);
      if (a1[2])
      {
        v40 = sub_18AECE178(v38);
        if (v41)
        {
          break;
        }
      }

      sub_18AFB4644(v38, v6, _s17ResolvedCompositeV3KeyVMa);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = a1;
      v54 = sub_18AECE178(v6);
      v56 = a1[2];
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        goto LABEL_43;
      }

      v60 = v55;
      if (a1[3] < v59)
      {
        sub_18AFC0988(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_18AECE178(v6);
        if ((v60 & 1) != (v61 & 1))
        {
          goto LABEL_47;
        }

LABEL_27:
        a1 = v84;
        if ((v60 & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_5;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_27;
      }

      v69 = v54;
      sub_18AFC1170();
      v54 = v69;
      a1 = v84;
      if ((v60 & 1) == 0)
      {
LABEL_28:
        a1[(v54 >> 6) + 8] |= 1 << v54;
        v62 = v54;
        sub_18AFB4644(v6, a1[6] + *(v81 + 72) * v54, _s17ResolvedCompositeV3KeyVMa);
        *(a1[7] + 8 * v62) = v39;
        sub_18AFB45E4(v6, _s17ResolvedCompositeV3KeyVMa);
        sub_18AFB45E4(v38, _s17ResolvedCompositeV3KeyVMa);
        v63 = a1[2];
        v58 = __OFADD__(v63, 1);
        v64 = v63 + 1;
        if (v58)
        {
          goto LABEL_44;
        }

        goto LABEL_37;
      }

LABEL_5:
      *(a1[7] + 8 * v54) = v39;
      sub_18AFB45E4(v6, _s17ResolvedCompositeV3KeyVMa);
      v25 = v38;
LABEL_6:
      sub_18AFB45E4(v25, _s17ResolvedCompositeV3KeyVMa);
      v24 = v83;
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v42 = *(a1[7] + 8 * v40);
    v43 = v75;
    sub_18AFB4644(v38, v75, _s17ResolvedCompositeV3KeyVMa);
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v84 = a1;
    v46 = sub_18AECE178(v43);
    v47 = a1[2];
    v48 = (v45 & 1) == 0;
    v49 = v47 + v48;
    if (__OFADD__(v47, v48))
    {
      goto LABEL_45;
    }

    v50 = v45;
    if (a1[3] >= v49)
    {
      if ((v44 & 1) == 0)
      {
        sub_18AFC1170();
      }
    }

    else
    {
      sub_18AFC0988(v49, v44);
      v51 = sub_18AECE178(v75);
      if ((v50 & 1) != (v52 & 1))
      {
        goto LABEL_47;
      }

      v46 = v51;
    }

    v66 = v39 + v42;
    a1 = v84;
    if (v50)
    {
      *(v84[7] + 8 * v46) = v66;
      sub_18AFB45E4(v75, _s17ResolvedCompositeV3KeyVMa);
      v25 = v82;
      goto LABEL_6;
    }

    v84[(v46 >> 6) + 8] |= 1 << v46;
    v67 = v75;
    sub_18AFB4644(v75, a1[6] + *(v81 + 72) * v46, _s17ResolvedCompositeV3KeyVMa);
    *(a1[7] + 8 * v46) = v66;
    sub_18AFB45E4(v67, _s17ResolvedCompositeV3KeyVMa);
    sub_18AFB45E4(v82, _s17ResolvedCompositeV3KeyVMa);
    v68 = a1[2];
    v58 = __OFADD__(v68, 1);
    v64 = v68 + 1;
    if (v58)
    {
      goto LABEL_46;
    }

LABEL_37:
    a1[2] = v64;
    v24 = v83;
  }

  while (v22);
LABEL_8:
  if (v23 <= v24 + 1)
  {
    v27 = v24 + 1;
  }

  else
  {
    v27 = v23;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {
      v83 = v27 - 1;
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7C0);
      (*(*(v65 - 8) + 56))(v16, 1, 1, v65);
      v22 = 0;
      goto LABEL_15;
    }

    v22 = *(v74 + 8 * v26);
    ++v24;
    if (v22)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_18AFCE274();
  __break(1u);
  return result;
}

uint64_t sub_18AFB450C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18AFB457C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AFB45E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18AFB4644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AFB46AC(unint64_t *a1, void (*a2)(uint64_t))
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

void *__swift_memcpy13_8(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t sub_18AFB470C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FD && *(a1 + 13))
  {
    return (*a1 + 2045);
  }

  v3 = ((((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) >> 9) | (4 * (((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) & 0x1F0 | (*a1 >> 60)))) ^ 0x7FF;
  if (v3 >= 0x7FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18AFB4778(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FC)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 2045;
    if (a3 >= 0x7FD)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FD)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF;
      *result = v3 << 60;
      *(result + 8) = 0;
      *(result + 12) = ((v3 - (a2 << 9)) >> 3) & 0xFE;
    }
  }

  return result;
}

uint64_t sub_18AFB47DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = a1 + 8;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = BYTE4(v3) & 0x3F;
  return result;
}

uint64_t sub_18AFB47F8(uint64_t result, uint64_t a2)
{
  if (a2 < 3)
  {
    v2 = *(result + 8);
    v3 = (a2 << 38) | ((*(result + 12) & 1) << 32);
    *result &= 0xFFFFFFFFFFFFFFFuLL;
    *(result + 8) = v2;
    *(result + 12) = BYTE4(v3);
  }

  else
  {
    *result = (a2 - 3);
    *(result + 8) = 0;
    *(result + 12) = -64;
  }

  return result;
}

uint64_t sub_18AFB4854()
{
  v1 = v0[12] >> 6;
  if (v1)
  {
    if (v1 != 2)
    {
      v8 = 0;
      return v8 & 1;
    }

    v2 = *v0;
    v3 = *(*v0 + 80);
    v12 = *(*v0 + 64);
    v13 = v3;
    v14 = *(v2 + 96);
    v15 = *(v2 + 112);
    v4 = *(v2 + 32);
    v11[0] = *(v2 + 16);
    v11[1] = v4;
    v11[2] = *(v2 + 48);
    v5 = *(v2 + 32);
    v10[7] = *(v2 + 16);
    v10[8] = v5;
    v10[9] = *(v2 + 48);
    v6 = sub_18AF59FDC(v11, v10);
    v7 = sub_18AFB4854(v6);
    if ((v7 & 1) == 0)
    {
      v10[0] = v12;
      v10[1] = v13;
      v10[2] = v14;
      v8 = sub_18AFB4854(v7);
      sub_18AF5A038(v11);
      return v8 & 1;
    }

    sub_18AF5A038(v11);
  }

  v8 = 1;
  return v8 & 1;
}

uint64_t sub_18AFB4928(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = (a3 >> 38) & 3;
  if (((a3 >> 38) & 3) > 1)
  {
    if (v5 == 2)
    {
      v8 = *(a2 + 80);
      v35 = *(a2 + 64);
      v36 = v8;
      v37 = *(a2 + 96);
      v38 = *(a2 + 112);
      v9 = *(a2 + 32);
      v32 = *(a2 + 16);
      v33 = v9;
      v34 = *(a2 + 48);
      MEMORY[0x18CFED610](23);
      v10 = v32;
      v11 = DWORD2(v32) | (BYTE12(v32) << 32);
      v12 = BYTE13(v32);
      v13 = BYTE14(v32);
      v14 = v33;
      v15 = v34;
      v16 = BYTE1(v34);
      v17 = BYTE2(v34);
      v21 = *(&v34 + 1);
      v22 = DWORD2(v35) | (BYTE12(v35) << 32);
      v23 = BYTE13(v35);
      v24 = v35;
      v25 = BYTE14(v35);
      v26 = v36;
      v27 = v37;
      v28 = BYTE1(v37);
      v29 = BYTE2(v37);
      v30 = *(&v37 + 1);
      v18 = v38;
      sub_18AF59FDC(&v32, v31);
      sub_18AFB4928(a1, v10, v11);
      MEMORY[0x18CFED610](v12);
      MEMORY[0x18CFED610](v13);
      MEMORY[0x18CFED610](v14);
      MEMORY[0x18CFED610](*(&v14 + 1));
      MEMORY[0x18CFED610](v15);
      MEMORY[0x18CFED610](v16);
      MEMORY[0x18CFED610](v17);
      MEMORY[0x18CFED610](v21);
      sub_18AFB4928(a1, v24, v22);
      MEMORY[0x18CFED610](v23);
      MEMORY[0x18CFED610](v25);
      MEMORY[0x18CFED610](v26);
      MEMORY[0x18CFED610](*(&v26 + 1));
      MEMORY[0x18CFED610](v27);
      MEMORY[0x18CFED610](v28);
      MEMORY[0x18CFED610](v29);
      MEMORY[0x18CFED610](v30);
      v19 = 0.0;
      if (v18 != 0.0)
      {
        v19 = v18;
      }

      MEMORY[0x18CFED640](*&v19);
      return sub_18AF5A038(&v32);
    }

    switch(a2)
    {
      case 1:
        v20 = 1;
        break;
      case 2:
        v20 = 2;
        break;
      case 3:
        v20 = 3;
        break;
      case 4:
        v20 = 5;
        break;
      case 5:
        v20 = 6;
        break;
      case 6:
        v20 = 7;
        break;
      case 7:
        v20 = 8;
        break;
      case 8:
        v20 = 10;
        break;
      case 9:
        v20 = 11;
        break;
      case 10:
        v20 = 12;
        break;
      case 11:
        v20 = 13;
        break;
      case 12:
        v20 = 14;
        break;
      case 13:
        v20 = 15;
        break;
      case 14:
        v20 = 16;
        break;
      case 15:
        v20 = 17;
        break;
      case 16:
        v20 = 18;
        break;
      case 17:
        v20 = 19;
        break;
      case 18:
        v20 = 20;
        break;
      case 19:
        v20 = 21;
        break;
      case 20:
        v20 = 22;
        break;
      default:
        v20 = 0;
        break;
    }

    return MEMORY[0x18CFED610](v20);
  }

  if (v5)
  {
    MEMORY[0x18CFED610](9);
    v20 = a2 & 1;
    return MEMORY[0x18CFED610](v20);
  }

  v6 = a3 & 0xFFFFFFFFFFLL;
  MEMORY[0x18CFED610](4);
  if ((a2 & 0x100000000) != 0)
  {
    sub_18AFCE2B4();
    if ((v6 & 0x100000000) != 0)
    {
      return sub_18AFCE2B4();
    }
  }

  else
  {
    sub_18AFCE2B4();
    sub_18AFCE2C4();
    if ((v6 & 0x100000000) != 0)
    {
      return sub_18AFCE2B4();
    }
  }

  sub_18AFCE2B4();
  return sub_18AFCE2C4();
}

uint64_t sub_18AFB4C58(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 13);
  v5 = *(v2 + 14);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 33);
  v10 = *(v2 + 34);
  v11 = *(v2 + 40);
  v12 = *(v2 + 56) | (*(v2 + 60) << 32);
  v16 = *(v2 + 61);
  v17 = *(v2 + 48);
  v18 = *(v2 + 62);
  v19 = *(v2 + 64);
  v20 = *(v2 + 72);
  v21 = *(v2 + 80);
  v22 = *(v2 + 81);
  v23 = *(v2 + 82);
  v24 = *(v2 + 88);
  v13 = *(v2 + 96);
  sub_18AFB4928(a1, *v2, *(v2 + 8) | (*(v2 + 12) << 32));
  MEMORY[0x18CFED610](v4);
  MEMORY[0x18CFED610](v5);
  MEMORY[0x18CFED610](v6);
  MEMORY[0x18CFED610](v7);
  MEMORY[0x18CFED610](v8);
  MEMORY[0x18CFED610](v9);
  MEMORY[0x18CFED610](v10);
  MEMORY[0x18CFED610](v11);
  sub_18AFB4928(a1, v17, v12);
  MEMORY[0x18CFED610](v16);
  MEMORY[0x18CFED610](v18);
  MEMORY[0x18CFED610](v19);
  MEMORY[0x18CFED610](v20);
  MEMORY[0x18CFED610](v21);
  MEMORY[0x18CFED610](v22);
  MEMORY[0x18CFED610](v23);
  MEMORY[0x18CFED610](v24);
  v14 = 0.0;
  if (v13 != 0.0)
  {
    v14 = v13;
  }

  return MEMORY[0x18CFED640](*&v14);
}

uint64_t sub_18AFB4DC8()
{
  v1 = *v0;
  v2 = *(v0 + 8) | (*(v0 + 12) << 32);
  sub_18AFCE294();
  sub_18AFB4928(v4, v1, v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4E34()
{
  v1 = *v0;
  v2 = *(v0 + 8) | (*(v0 + 12) << 32);
  sub_18AFCE294();
  sub_18AFB4928(v4, v1, v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4EB4()
{
  sub_18AFCE294();
  sub_18AFB4C58(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4EF8()
{
  sub_18AFCE294();
  sub_18AFB4C58(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB4F38(uint64_t a1)
{
  v2 = *(v1 + 13);
  v3 = *(v1 + 14);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = *(v1 + 34);
  v9 = *(v1 + 40);
  sub_18AFB4928(a1, *v1, *(v1 + 8) | (*(v1 + 12) << 32));
  MEMORY[0x18CFED610](v2);
  MEMORY[0x18CFED610](v3);
  MEMORY[0x18CFED610](v4);
  MEMORY[0x18CFED610](v5);
  MEMORY[0x18CFED610](v6);
  MEMORY[0x18CFED610](v7);
  MEMORY[0x18CFED610](v8);
  return MEMORY[0x18CFED610](v9);
}

uint64_t sub_18AFB4FEC()
{
  sub_18AFCE294();
  sub_18AFB4F38(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB5030()
{
  sub_18AFCE294();
  sub_18AFB4F38(v1);
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB5074()
{
  result = qword_1EA99BD38;
  if (!qword_1EA99BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD38);
  }

  return result;
}

unint64_t sub_18AFB50CC()
{
  result = qword_1EA99BD40;
  if (!qword_1EA99BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD40);
  }

  return result;
}

BOOL sub_18AFB5120(double *a1, double *a2)
{
  v2 = *(a1 + 1);
  v32[0] = *a1;
  v32[1] = v2;
  v3 = *(a1 + 3);
  v5 = *a1;
  v4 = *(a1 + 1);
  v32[2] = *(a1 + 2);
  v33 = v3;
  v6 = *(a1 + 5);
  v7 = *(a1 + 2);
  v34 = *(a1 + 4);
  v35 = v6;
  v8 = *(a2 + 1);
  v36[0] = *a2;
  v36[1] = v8;
  v9 = *(a2 + 3);
  v11 = *a2;
  v10 = *(a2 + 1);
  v36[2] = *(a2 + 2);
  v37 = v9;
  v12 = *(a2 + 5);
  v13 = *(a2 + 2);
  v38 = *(a2 + 4);
  v39 = v12;
  v29 = v5;
  v30 = v4;
  v31 = v7;
  v14 = a1[12];
  v26 = v11;
  v27 = v10;
  v15 = a2[12];
  v28 = v13;
  sub_18AE90E8C(v32, v41);
  sub_18AE90E8C(v36, v41);
  v16 = sub_18AFB528C(&v29, &v26);
  v40[0] = v26;
  v40[1] = v27;
  v40[2] = v28;
  sub_18AE920D8(v40);
  v41[0] = v29;
  v41[1] = v30;
  v41[2] = v31;
  sub_18AE920D8(v41);
  if (v16 && (v23 = v33, v24 = v34, v25 = v35, v20 = v37, v21 = v38, v22 = v39, sub_18AE90E8C(&v33, v19), sub_18AE90E8C(&v37, v19), v17 = sub_18AFB528C(&v23, &v20), v26 = v20, v27 = v21, v28 = v22, sub_18AE920D8(&v26), v29 = v23, v30 = v24, v31 = v25, sub_18AE920D8(&v29), v17))
  {
    return v14 == v15;
  }

  else
  {
    return 0;
  }
}

BOOL sub_18AFB528C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 13);
  v3 = *(a1 + 14);
  v4 = *(a1 + 16);
  v20 = *(a1 + 24);
  v18 = *(a1 + 33);
  v19 = *(a1 + 32);
  v17 = *(a1 + 34);
  v16 = *(a1 + 40);
  v5 = *(a2 + 13);
  v6 = *(a2 + 14);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v15 = *(a2 + 33);
  v10 = *(a2 + 34);
  v11 = *(a2 + 40);
  v12 = sub_18AE93094(*a1, *(a1 + 8) | (*(a1 + 12) << 32), *a2, *(a2 + 8) | (*(a2 + 12) << 32));
  result = 0;
  if ((v12 & 1) != 0 && v2 == v5 && v3 == v6 && v4 == v8 && v20 == v7 && v19 == v9)
  {
    v14 = v16 == v11;
    if (v17 != v10)
    {
      v14 = 0;
    }

    return v18 == v15 && v14;
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_18AFB53D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FD && *(a1 + 104))
  {
    return (*a1 + 2045);
  }

  v3 = ((((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) >> 9) | (4 * (((*(a1 + 8) | (*(a1 + 12) << 32)) >> 29) & 0x1F0 | (*a1 >> 60)))) ^ 0x7FF;
  if (v3 >= 0x7FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_18AFB5440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FC)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2045;
    if (a3 >= 0x7FD)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FD)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF;
      *result = v3 << 60;
      *(result + 8) = 0;
      *(result + 12) = ((v3 - (a2 << 9)) >> 3) & 0xFE;
    }
  }

  return result;
}

unint64_t sub_18AFB54DC()
{
  result = qword_1EA99BD48;
  if (!qword_1EA99BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD48);
  }

  return result;
}

unint64_t sub_18AFB5534()
{
  result = qword_1EA99BD50;
  if (!qword_1EA99BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD50);
  }

  return result;
}

unint64_t sub_18AFB558C()
{
  result = qword_1EA99BD58;
  if (!qword_1EA99BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD58);
  }

  return result;
}

unint64_t sub_18AFB55F0()
{
  result = qword_1EA99BD60;
  if (!qword_1EA99BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD60);
  }

  return result;
}

void sub_18AFB5644()
{
  if ((*(v0 + 1032) & 0x5F) != 0)
  {
    v1 = *(v0 + 308);
    v2 = vdup_n_s32(v1);
    v3.i64[0] = v2.u32[0];
    v3.i64[1] = v2.u32[1];
    v4 = vandq_s8(*(v0 + 288), vcgezq_s64(vshlq_n_s64(v3, 0x3FuLL)));
    v5 = 0.0;
    if ((v1 & 1) == 0)
    {
      v5 = *(v0 + 304);
    }

    if (*v4.i64 == 0.0 && *&v4.i64[1] == 0.0 && v5 == 0.0)
    {
      v6 = 1;
      v4 = 0uLL;
      v5 = 0.0;
    }

    else
    {
      v6 = 0;
    }

    v7 = 0uLL;
    *(v0 + 256) = 0u;
    *(v0 + 272) = 0u;
    *(v0 + 288) = v4;
    *(v0 + 304) = v5;
    *(v0 + 308) = v6;
    v8 = *(v0 + 497);
    if (v8 == 2)
    {
      LOBYTE(v8) = 0;
      v9 = 1;
      LOBYTE(v70[0]) = 1;
      LOBYTE(v106[0]) = 1;
      LOBYTE(v128[0]) = 1;
      v10 = 0;
      v11 = 0uLL;
      v12 = 0;
      v13 = 1;
      v14 = 1;
      v15 = 0uLL;
      v16 = 0uLL;
    }

    else
    {
      v13 = *(v0 + 476);
      v15 = *(v0 + 460);
      v9 = *(v0 + 456);
      v16 = *(v0 + 440);
      v10 = *(v0 + 432);
      v11 = *(v0 + 416);
      v12 = *(v0 + 408);
      v14 = *(v0 + 496);
      v7 = *(v0 + 480);
      v96 = *(v0 + 459);
      v95 = *(v0 + 457);
      v94 = *(v0 + 479);
      v93 = *(v0 + 477);
    }

    v128[0] = 0;
    v128[1] = 0;
    v128[2] = v12;
    v129 = v11;
    v130 = v10;
    v131 = v16;
    v132 = v9;
    v133 = v95;
    v134 = v96;
    v135 = v15;
    v136 = v13;
    v138 = v94;
    v137 = v93;
    v139 = v7;
    v140 = v14;
    v141 = v8;
    sub_18AF6B1A4(v128);
    v17 = *(v0 + 40);
    v18 = *(v0 + 48);
    v19 = *(v0 + 56);
    v20 = *(v0 + 64);
    v21 = *(v0 + 72);
    v22 = *(v0 + 80);
    v23 = *(v0 + 84);
    v24 = *(v0 + 88);
    v25 = *(v0 + 92);
    v26 = *(v0 + 100);
    v27 = *(v0 + 108);
    v68 = *(v0 + 109);
    v69 = *(v0 + 111);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v30 = *(v0 + 128);
    v66 = *(v0 + 129);
    v67 = *(v0 + 131);
    v31 = *(v0 + 132);
    v32 = *(v0 + 140);
    v33 = *(v0 + 148);
    v64 = *(v0 + 149);
    v65 = *(v0 + 151);
    v34 = *(v0 + 152);
    v35 = *(v0 + 156);
    v36 = *(v0 + 160);
    v37 = *(v0 + 168);
    v53 = *(v0 + 32);
    v54 = *(v0 + 24);
    *v70 = v54;
    *&v70[1] = v53;
    *&v70[2] = v17;
    *&v70[3] = v18;
    *&v70[4] = v19;
    *&v70[5] = v20;
    *&v70[6] = v21;
    v55 = v22;
    v71 = v22;
    v72 = v23;
    v73 = v24;
    v56 = v25;
    v74 = v25;
    v75 = v26;
    v76 = v27;
    v78 = *(v0 + 111);
    v77 = *(v0 + 109);
    v79 = v28;
    v80 = v29;
    v81 = v30;
    v83 = *(v0 + 131);
    v82 = *(v0 + 129);
    v84 = v31;
    v85 = v32;
    v86 = v33;
    v87 = *(v0 + 149);
    v88 = *(v0 + 151);
    v89 = v34;
    v57 = v35;
    v90 = v35;
    v91 = v36;
    v92 = v37;
    if (sub_18AF4FB80(v70) == 1)
    {
      v38 = 0;
      v26 = 0;
      v28 = 0;
      v29 = 0;
      v31 = 0;
      v32 = 0;
      v39 = 0;
      v40 = 0.0;
      v41 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v27 = 1;
      LOBYTE(v106[0]) = 1;
      LOBYTE(v100) = 1;
      LOBYTE(v97[0]) = 1;
      v19 = 0.0;
      v20 = 0.0;
      v21 = 0.0;
      v23 = 0;
      v24 = 0;
      v30 = 1;
      v33 = 1;
      v34 = 0;
    }

    else
    {
      v62 = v68;
      v63 = v69;
      v60 = v66;
      v61 = v67;
      v58 = v64;
      v59 = v65;
      v38 = v56;
      v39 = v55;
      v41 = v53;
      v40 = v54;
    }

    v106[0] = v40;
    v106[1] = v41;
    v106[2] = v17;
    v106[3] = v18;
    v106[4] = v19;
    v106[5] = v20;
    v106[6] = v21;
    v107 = v39;
    v108 = v23;
    v109 = v24;
    v110 = v38;
    v111 = v26;
    v112 = v27;
    v113 = v62;
    v114 = v63;
    v115 = v28;
    v116 = v29;
    v117 = v30;
    v118 = v60;
    v119 = v61;
    v120 = v31;
    v121 = v32;
    v122 = v33;
    v123 = v58;
    v124 = v59;
    v125 = v34;
    v126 = v57;
    v127 = 0;
    sub_18AF6B53C(v106);
    v42 = *(v0 + 176);
    v43 = *(v0 + 248);
    if (v43)
    {
      v42 = 0.0;
    }

    v100 = v42;
    v101 = 0u;
    v102 = 0u;
    v103 = 0;
    v104 = vandq_s8(*(v0 + 224), vcgezq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v43)), 0x1FuLL)));
    v105 = vand_s8(*(v0 + 240), vcgez_s32(vshl_n_s32(vdup_n_s32(v43), 0x1FuLL)));
    sub_18AF6B27C(&v100);
    if (*(v0 + 248))
    {
      v44 = 0;
      v45 = 0uLL;
      v46 = 0uLL;
      v47 = 0uLL;
    }

    else
    {
      v47 = *(v0 + 176);
      v45 = *(v0 + 192);
      v46 = *(v0 + 208);
      v44 = *(v0 + 244);
    }

    v97[0] = v47;
    v97[1] = v45;
    __asm { FMOV            V2.4S, #1.0 }

    v97[2] = v46;
    v97[3] = _Q2;
    v98 = 1065353216;
    v99 = v44;
    sub_18AF6B27C(v97);
  }
}

uint64_t sub_18AFB5AFC()
{
  v1 = *(v0 + 104);
  v78[4] = *(v0 + 88);
  v78[5] = v1;
  v2 = *(v0 + 136);
  v78[6] = *(v0 + 120);
  v78[7] = v2;
  v3 = *(v0 + 40);
  v78[0] = *(v0 + 24);
  v78[1] = v3;
  v4 = *(v0 + 72);
  v78[2] = *(v0 + 56);
  v78[3] = v4;
  v5 = *(v0 + 152);
  v6 = *(v0 + 156);
  *(v80 + 5) = *(v0 + 161);
  v80[0] = v6;
  v79 = v5;
  if (sub_18AF4FB80(v78) == 1 || v5 == 0.0)
  {
    v7 = *(v0 + 1032);
    if ((v7 & 0x2001) != 0)
    {
      *(v0 + 1032) = v7 & 0xFFFFFFFFFFFFDFFELL;
    }
  }

  if ((*(v0 + 248) & 1) != 0 || *(v0 + 244) == 0.0 || *(v0 + 176) == 0.0)
  {
    v8 = *(v0 + 1032);
    if ((v8 & 2) != 0)
    {
      *(v0 + 1032) = v8 & 0xFFFFFFFFFFFFFFFDLL;
    }
  }

  if ((*(v0 + 385) & 1) != 0 || *(v0 + 312) == 0.0)
  {
    v9 = *(v0 + 1032);
    if ((v9 & 4) != 0)
    {
      *(v0 + 1032) = v9 & 0xFFFFFFFFFFFFFFFBLL;
    }
  }

  if (*(v0 + 308))
  {
    goto LABEL_25;
  }

  v10 = *(v0 + 280) == 0.0;
  if (*(v0 + 272) == 0.0)
  {
    v10 = 1;
  }

  if (*(v0 + 304) == 0.0)
  {
    v10 = 1;
  }

  v11 = *(v0 + 256) == 0.0 || *(v0 + 264) == 0.0;
  if (v11 && v10)
  {
LABEL_25:
    v12 = *(v0 + 1032);
    if ((v12 & 0x18) != 0)
    {
      *(v0 + 1032) = v12 & 0xFFFFFFFFFFFFFFE7;
    }
  }

  if (*(v0 + 497) == 2 || *(v0 + 416) == 0.0 || *(v0 + 392) == 0.0 || *(v0 + 400) == 0.0)
  {
    v13 = *(v0 + 1032);
    if ((v13 & 0x40) != 0)
    {
      *(v0 + 1032) = v13 & 0xFFFFFFFFFFFFFFBFLL;
    }
  }

  v14 = *(v0 + 520);
  v15 = *(v0 + 524);
  v16 = *(v0 + 544);
  v17 = *(v0 + 548);
  v18 = *(v0 + 568);
  v19 = *(v0 + 584);
  v20 = *(v0 + 604);
  v48 = *(v0 + 607);
  v47 = *(v0 + 605);
  v21 = *(v0 + 624);
  v52 = *(v0 + 627);
  v51 = *(v0 + 625);
  v22 = *(v0 + 644);
  v23 = *(v0 + 645);
  v56 = *(v0 + 647);
  v55 = v23;
  v24 = *(v0 + 664);
  v25 = *(v0 + 668);
  v26 = *(v0 + 688);
  v27 = *(v0 + 704);
  v28 = *(v0 + 724);
  v66 = *(v0 + 725);
  v67 = *(v0 + 727);
  v29 = *(v0 + 744);
  v70 = *(v0 + 745);
  v71 = *(v0 + 747);
  v30 = *(v0 + 764);
  v31 = *(v0 + 765);
  v75 = *(v0 + 767);
  v74 = v31;
  v32 = *(v0 + 768);
  LOBYTE(v31) = *(v0 + 776);
  v37[0] = v14;
  v37[1] = v15;
  v38 = *(v0 + 528);
  v39 = v16;
  v40 = v17;
  v41 = *(v0 + 552);
  v33 = *(v0 + 576);
  v42 = v18;
  v43 = v33;
  v44 = v19;
  v45 = *(v0 + 588);
  v46 = v20;
  v49 = *(v0 + 608);
  v50 = v21;
  v53 = *(v0 + 628);
  v54 = v22;
  v57 = *(v0 + 648);
  v58 = v24;
  v59 = v25;
  v60 = *(v0 + 672);
  v34 = *(v0 + 696);
  v61 = v26;
  v62 = v34;
  v63 = v27;
  v64 = *(v0 + 708);
  v65 = v28;
  v68 = *(v0 + 728);
  v69 = v29;
  v72 = *(v0 + 748);
  v73 = v30;
  v76 = v32;
  v77 = v31;
  result = sub_18AF4FB9C(v37);
  if (result == 1 || v16 == 0.0 && v24 == 0.0)
  {
    v36 = *(v0 + 1032);
    if ((v36 & 0x200) != 0)
    {
      *(v0 + 1032) = v36 & 0xFFFFFFFFFFFFFDFFLL;
    }
  }

  return result;
}

uint64_t _s14ResolvedRecipeVMa()
{
  result = qword_1ED56A880;
  if (!qword_1ED56A880)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18AFB5EB4()
{
  result = sub_18AFCBB34();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t EnvironmentValues.glassMaterialContainerStyle.getter()
{
  sub_18AFAB8BC();

  return sub_18AFCC484();
}

uint64_t EnvironmentValues.glassMaterialForeground.getter()
{
  sub_18AFAB910();
  sub_18AFCC484();
  return v1;
}

void *sub_18AFB5FE8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = _s11EnvironmentVMa();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v48 - v15;
  v17 = *a3;
  v18 = *v5;
  v19 = *a1;
  v20 = *(a1 + 9);
  if (*v5 == 0xC000000000000000 && v19 == 0xC000000000000000)
  {
    if ((v5[5] & 0x40) != 0 || *(v5 + 9) == 10)
    {
      v34 = *(a1 + 8);
      sub_18AE7B0A4(a2, &v48 - v15, _s11EnvironmentVMa);
      if (!v34)
      {
        v34 = v16[*(v11 + 84)];
      }

      sub_18AF6EE98(v16);
      if (v34 == 1)
      {
        v35 = 0x1000000000000;
      }

      else
      {
        v35 = (v34 == 2) << 49;
      }

      v36 = a1[5];
      v37 = *(a1 + 48);
      v38 = type metadata accessor for GlassMaterialProvider.Configuration(0);
      v39 = *(v38 + 48);
      v40 = *(a1 + *(v38 + 44));
      if (v40 == 3)
      {
        v40 = 0;
      }

      v41 = v40 << 8;
      if ((((v20 - 1) < 3) & (v36 >> 6)) != 0)
      {
        v42 = 512;
      }

      else
      {
        v42 = v41;
      }

      if (*(a1 + v39) > 1u)
      {
        if (*(a1 + v39) == 2)
        {
          v43 = 1;
        }

        else
        {
          v43 = 2;
        }
      }

      else if (*(a1 + v39))
      {
        v43 = 0;
      }

      else
      {
        v43 = 2 * (v36 & 1);
      }

      *&v50[0] = v36;
      result = sub_18AF58948(18, 0xC000000000uLL, a4, v50, v43);
      v46 = v43;
      v47 = v42 | v37;
      *a5 = 18;
      *(a5 + 8) = v35 | (v20 << 40) | 0xC000000000;
      *(a5 + 16) = v36;
      goto LABEL_57;
    }
  }

  else
  {
    v22 = v19 >> 62 == 3;
    v23 = __ROR8__(v19 + 0x4000000000000000, 3);
    if (!v22 || v23 > 0x12)
    {
      goto LABEL_17;
    }

    if (((1 << v23) & 0x5E818) != 0)
    {
      goto LABEL_52;
    }

    if (v23)
    {
      if (v23 != 1 || (v18 >> 62 != 3 || v18 != 0xC000000000000010 && (v18 != 0xC000000000000008 || v20 != 3)) && v20 != 8)
      {
        goto LABEL_17;
      }

LABEL_52:
      v49 = v17;
      result = sub_18AE834E4(v50, a2, &v49, a4);
      v45 = v50[1];
      *a5 = v50[0];
      *(a5 + 16) = v45;
      *(a5 + 32) = v50[2];
      return result;
    }
  }

  if (v20 == 7)
  {
    goto LABEL_52;
  }

LABEL_17:
  v25 = *(a1 + 8);
  sub_18AE7B0A4(a2, v14, _s11EnvironmentVMa);
  if (!v25)
  {
    v25 = v14[*(v11 + 84)];
  }

  sub_18AF6EE98(v14);
  if (v25 == 1)
  {
    v26 = 0x1000000000000;
  }

  else
  {
    v26 = (v25 == 2) << 49;
  }

  v27 = *(a1 + 48);
  v28 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v29 = *(v28 + 48);
  v30 = *(a1 + *(v28 + 44));
  if (v30 == 3)
  {
    v30 = 0;
  }

  v31 = v30 << 8;
  if ((((v20 - 1) < 3) & (v17 >> 6)) != 0)
  {
    v32 = 512;
  }

  else
  {
    v32 = v31;
  }

  if (*(a1 + v29) > 1u)
  {
    if (*(a1 + v29) == 2)
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }
  }

  else if (*(a1 + v29))
  {
    v33 = 0;
  }

  else
  {
    v33 = 2 * (v17 & 1);
  }

  *&v50[0] = v17;
  result = sub_18AF58948(5, 0xC000000000uLL, a4, v50, v33);
  v46 = v33;
  v47 = v32 | v27;
  *a5 = 5;
  *(a5 + 8) = v26 | (v20 << 40) | 0xC000000000;
  *(a5 + 16) = v17;
LABEL_57:
  *(a5 + 24) = a4;
  *(a5 + 32) = v47 | (v46 << 16);
  *(a5 + 40) = result;
  return result;
}

uint64_t (*EnvironmentValues.glassMaterialForeground.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_18AFAB910();
  sub_18AFCC484();
  *(a1 + 16) = *(a1 + 17);
  return sub_18AFB63FC;
}

uint64_t sub_18AFB6434@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GlassMaterialProvider.ResolvedStyle();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_18AFB64A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AE96860();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_18AFB6504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  sub_18AE966BC(a1, &v9 - v6);
  sub_18AE966BC(v7, v4);
  sub_18AFAB8BC();
  sub_18AFCC494();
  return sub_18AE967D4(v7);
}

void (*EnvironmentValues.glassMaterialContainerStyle.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BBF0) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_18AFAB8BC();
  sub_18AFCC484();
  return sub_18AFB66F8;
}

void sub_18AFB66F8(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_18AE966BC((*a1)[3], (*a1)[2]);
  v4 = v3[3];
  v5 = v3[1];
  v6 = v3[2];
  if (a2)
  {
    sub_18AE966BC(v3[2], v3[1]);
    sub_18AFCC494();
    sub_18AE967D4(v6);
  }

  else
  {
    sub_18AFCC494();
  }

  sub_18AE967D4(v4);
  free(v4);
  free(v6);
  free(v5);

  free(v3);
}

uint64_t GlassMaterialProvider.ResolvedStyle.hashValue.getter()
{
  sub_18AFCE294();
  GlassMaterialProvider.Configuration.hash(into:)(v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB6838(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AFB68A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_18AFB68E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_18AFB6938(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ClearGlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v3 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  if (qword_1ED56A750 != -1)
  {
    v15 = v7;
    swift_once();
    v7 = v15;
  }

  v11 = __swift_project_value_buffer(v7, qword_1ED56A758);
  sub_18AE7BDB0(v11, v9);
  v12 = 2;
  if (!v10)
  {
    v12 = 0;
  }

  *(v9 + 5) = *(v9 + 5) & 0xFFFFFFFFFFFFFFFDLL | v12;
  sub_18AE7BDB0(v9, v5);
  v13 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AE8BFB4(v5, type metadata accessor for GlassMaterialProvider);
  sub_18AE8BFB4(v9, type metadata accessor for GlassMaterialProvider.Configuration);
  return v13;
}

uint64_t _s13DesignLibrary26ClearGlassMaterialProviderV13ConfigurationV9hashValueSivg_0()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB6C08()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB6C50()
{
  result = qword_1EA99BD68;
  if (!qword_1EA99BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD68);
  }

  return result;
}

unint64_t sub_18AFB6CA8()
{
  result = qword_1EA99BD70;
  if (!qword_1EA99BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD70);
  }

  return result;
}

unint64_t sub_18AFB6D00()
{
  result = qword_1EA99BD78;
  if (!qword_1EA99BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD78);
  }

  return result;
}

uint64_t sub_18AFB6D98@<X0>(uint64_t a1@<X8>)
{
  v14 = a1;
  v2 = sub_18AFCD704();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_18AFCDA04();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = sub_18AFCD9D4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = *v1;
  (*(v8 + 104))(v10, *MEMORY[0x1E6981C50], v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B698);
  sub_18AFCD774();
  v11 = swift_allocObject();
  v13 = xmmword_18AFD8390;
  *(v11 + 16) = xmmword_18AFD8390;
  sub_18AFCD9E4();
  *v5 = 0;
  (*(v3 + 104))(v5, *MEMORY[0x1E6981BB8], v2);
  sub_18AFCD784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  *(swift_allocObject() + 16) = v13;
  sub_18AFCD6A4();
  sub_18AFCD874();

  return (*(v8 + 8))(v10, v7);
}

uint64_t OptimizedRegularGlassMaterialProvider.resolveLayers(in:)()
{
  v1 = sub_18AFCDA04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
  sub_18AFCDA34();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18AFD8390;
  v8[3] = v5;
  sub_18AFB6D98(v4);
  sub_18AFCD5F4();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t OptimizedRegularGlassMaterialProvider.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB732C()
{
  v1 = sub_18AFCDA04();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
  sub_18AFCDA34();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_18AFD8390;
  v8[3] = v5;
  sub_18AFB6D98(v4);
  sub_18AFCD5F4();
  (*(v2 + 8))(v4, v1);
  return v6;
}

uint64_t sub_18AFB74A8()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7540()
{
  sub_18AFCE294();
  sub_18AFCE2C4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFB759C()
{
  result = qword_1EA99BD80;
  if (!qword_1EA99BD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD80);
  }

  return result;
}

unint64_t sub_18AFB75F4()
{
  result = qword_1EA99BD88;
  if (!qword_1EA99BD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BD88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OptimizedRegularGlassMaterialProvider(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OptimizedRegularGlassMaterialProvider(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t UIKitPlatformGlassDefinition.__deallocating_deinit()
{
  _s13DesignLibrary28UIKitPlatformGlassDefinitionCfd_0();

  return swift_deallocClassInstance();
}

uint64_t sub_18AFB7738@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_18AFCD244();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  (*(v5 + 16))(&v17 - v9, a1, v4);
  sub_18AFCD224();
  sub_18AE8C130(&qword_1EA99BDB8, MEMORY[0x1E6981890]);
  v11 = sub_18AFCDDF4();
  v12 = *(v5 + 8);
  v12(v8, v4);
  if (v11)
  {
    v12(v10, v4);
    v13 = 1;
  }

  else
  {
    sub_18AFCD214();
    v14 = sub_18AFCDDF4();
    v12(v8, v4);
    if (v14)
    {
      v12(v10, v4);
      v13 = 2;
    }

    else
    {
      sub_18AFCD234();
      v15 = sub_18AFCDDF4();
      v12(v8, v4);
      v12(v10, v4);
      if (v15)
      {
        v13 = 3;
      }

      else
      {
        v13 = 1;
      }
    }
  }

  result = (v12)(a1, v4);
  *a2 = v13;
  return result;
}

double RegularGlassMaterialProvider.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 1;
  *&result = 2;
  *(a1 + 8) = xmmword_18AFE1250;
  *(a1 + 24) = 1;
  return result;
}

double RegularGlassMaterialProvider.init(configuration:)@<D0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  *(a2 + 1) = v2;
  *&result = 2;
  *(a2 + 8) = xmmword_18AFE1250;
  *(a2 + 24) = 1;
  return result;
}

__n128 RegularGlassMaterialProvider.init(configuration:size:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v4 = a2[1].n128_u8[0];
  *a3 = *a1;
  *(a3 + 1) = v3;
  result = *a2;
  *(a3 + 8) = *a2;
  *(a3 + 24) = v4;
  return result;
}

BOOL static RegularGlassMaterialProvider.SizeVariant.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 | *&v3)
    {
      if (*&v2 ^ 1 | *&v3)
      {
        if (*(a2 + 16) && __PAIR128__(v4, *&v5) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 1 | v4))
      {
        return 1;
      }
    }

    else
    {
      v7 = *&v5 | v4;
      if (*(a2 + 16))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return v3 == *(a2 + 8) && v2 == v5;
}

uint64_t RegularGlassMaterialProvider.SizeVariant.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (*&v1 | v2)
    {
      if (*&v1 ^ 1 | v2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x18CFED610](v3);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v4, v5);
  }
}

uint64_t RegularGlassMaterialProvider.SizeVariant.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7C00()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7CB4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) == 1)
  {
    if (*&v1 | v2)
    {
      if (*&v1 ^ 1 | v2)
      {
        v3 = 2;
      }

      else
      {
        v3 = 1;
      }
    }

    else
    {
      v3 = 0;
    }

    return MEMORY[0x18CFED610](v3);
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 8);
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v4, v5);
  }
}

uint64_t sub_18AFB7D5C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_18AFCE294();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

BOOL sub_18AFB7E0C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16) == 1)
  {
    if (*&v2 | *&v3)
    {
      if (*&v2 ^ 1 | *&v3)
      {
        if (*(a2 + 16) && __PAIR128__(v4, *&v5) >= 2)
        {
          return 1;
        }
      }

      else if (*(a2 + 16) && !(*&v5 ^ 1 | v4))
      {
        return 1;
      }
    }

    else
    {
      v7 = *&v5 | v4;
      if (*(a2 + 16))
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 0;
      }

      if (v8)
      {
        return 1;
      }
    }

    return 0;
  }

  if (*(a2 + 16))
  {
    return 0;
  }

  return v3 == *(a2 + 8) && v2 == v5;
}

uint64_t RegularGlassMaterialProvider.Configuration.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB7FD0()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFB8070()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t RegularGlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v3 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v11 = v1[1];
  v12 = *(v1 + 1);
  v13 = *(v1 + 2);
  v14 = v1[24];
  if (qword_1ED56AA10 != -1)
  {
    v19 = v7;
    swift_once();
    v7 = v19;
  }

  if (v14)
  {
    v13 = 0;
  }

  v15 = __swift_project_value_buffer(v7, qword_1ED56AA18);
  sub_18AE7BDB0(v15, v9);
  v16 = 2;
  if (!v10)
  {
    v16 = 0;
  }

  *(v9 + 5) = *(v9 + 5) & 0xFFFFFFFFFFFFFFFCLL | v16 | v11;
  *(v9 + 2) = v12;
  *(v9 + 3) = v13;
  v9[32] = v14;
  sub_18AE7BDB0(v9, v5);
  v17 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AE8BFB4(v5, type metadata accessor for GlassMaterialProvider);
  sub_18AE8BFB4(v9, type metadata accessor for GlassMaterialProvider.Configuration);
  return v17;
}

uint64_t RegularGlassMaterialProvider.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    return MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);

    return sub_18AF4AF54(v1, v2);
  }
}

uint64_t RegularGlassMaterialProvider.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t sub_18AFB8468()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  if (v3 == 1)
  {
    if (*&v1 | *&v2)
    {
      if (*&v1 ^ 1 | *&v2)
      {
        v4 = 2;
      }

      else
      {
        v4 = 1;
      }
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED610](v4);
  }

  else
  {
    MEMORY[0x18CFED610](3);
    sub_18AF4AF54(v1, v2);
  }

  return sub_18AFCE2E4();
}

uint64_t _s13DesignLibrary28RegularGlassMaterialProviderV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  result = 0;
  if (*a1 == *a2 && ((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0)
  {
    v4 = a1[1];
    v5 = a1[2];
    v7 = a2[1];
    v6 = a2[2];
    if (*(a1 + 24) == 1)
    {
      if (*&v4 | *&v5)
      {
        if (*&v4 ^ 1 | *&v5)
        {
          if (*(a2 + 24) && __PAIR128__(*&v6, *&v7) >= 2)
          {
            return 1;
          }
        }

        else if (*(a2 + 24) && !(*&v7 ^ 1 | *&v6))
        {
          return 1;
        }
      }

      else if (*(a2 + 24) && !(*&v7 | *&v6))
      {
        return 1;
      }
    }

    else if ((a2[3] & 1) == 0 && v4 == v7 && v5 == v6)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_18AFB8604()
{
  result = qword_1EA99BDD8;
  if (!qword_1EA99BDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDD8);
  }

  return result;
}

unint64_t sub_18AFB865C()
{
  result = qword_1EA99BDE0;
  if (!qword_1EA99BDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDE0);
  }

  return result;
}

unint64_t sub_18AFB86B4()
{
  result = qword_1ED56A440;
  if (!qword_1ED56A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A440);
  }

  return result;
}

unint64_t sub_18AFB870C()
{
  result = qword_1ED56A448;
  if (!qword_1ED56A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56A448);
  }

  return result;
}

uint64_t sub_18AFB8760(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[25])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_18AFB87B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegularGlassMaterialProvider.Configuration(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for RegularGlassMaterialProvider.Configuration(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TVThickMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = sub_18AFCDBC4();
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCCCF4();
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_18AFCDA34();
  v48 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCBB34();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  v13 = sub_18AFCC474();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_18AFD8390;
  sub_18AFCD664();
  v42 = a1;
  sub_18AFCDA44();
  sub_18AFCC204();
  v20 = *(v14 + 8);
  v21 = v18;
  v22 = v7;
  v20(v21, v13);
  v23 = (*(v8 + 88))(v12, v7);
  if (v23 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v24 = v48;
    v41 = *(v48 + 72);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18AFCEB10;
    LODWORD(v40) = *MEMORY[0x1E69814D8];
    v42 = v19;
    v26 = v49;
    v50 = *(v50 + 104);
    v27 = v51;
    (v50)(v49);
    sub_18AFCCDE4();
    v28 = v43;
    sub_18AFCD604();
    v29 = v45;
    v30 = v46;
    v31 = v47;
    (*(v46 + 104))(v45, *MEMORY[0x1E6981DB8], v47);
    sub_18AFCDA24();
    (*(v30 + 8))(v29, v31);
    (*(v24 + 8))(v28, v44);
    (v50)(v26, v40, v27);
LABEL_5:
    sub_18AFCCDE4();
    sub_18AFCDA14();

    return v25;
  }

  v32 = v49;
  v33 = v50;
  if (v23 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_18AFCEB10;
    v34 = *MEMORY[0x1E69814D8];
    v35 = *(v33 + 104);
    v36 = v51;
    v35(v32, v34, v51);
    sub_18AFCCDE4();
    sub_18AFCD604();
    v35(v32, v34, v36);
    goto LABEL_5;
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v38 = v40;
  sub_18AFCDA44();
  v39 = v41;
  sub_18AFCC204();
  v20(v38, v13);
  sub_18AFCE1C4();
  (*(v8 + 8))(v39, v22);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVRegularMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v46 = a1;
  v43 = sub_18AFCDBC4();
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18AFCCCF4();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_18AFCDA34();
  v45 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCBB34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - v9;
  v11 = sub_18AFCC474();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  v17 = swift_allocObject();
  v38 = xmmword_18AFCEB10;
  *(v17 + 16) = xmmword_18AFCEB10;
  sub_18AFCD664();
  sub_18AFCD634();
  sub_18AFCDA44();
  sub_18AFCC204();
  v18 = *(v12 + 8);
  v18(v16, v11);
  v37 = v6;
  v19 = (*(v6 + 88))(v10, v5);
  if (v19 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v20 = v45;
    v46 = *(v45 + 72);
    v21 = swift_allocObject();
    *(v21 + 16) = v38;
    *&v38 = v17;
    LODWORD(v37) = *MEMORY[0x1E69814D8];
    v22 = v44;
    v23 = v48;
    v47 = *(v47 + 104);
    (v47)(v44);
    sub_18AFCCDE4();
    v24 = v39;
    sub_18AFCD604();
    v26 = v41;
    v25 = v42;
    v27 = v43;
    (*(v41 + 104))(v42, *MEMORY[0x1E6981DB8], v43);
    sub_18AFCDA24();
    (*(v26 + 8))(v25, v27);
    (*(v20 + 8))(v24, v40);
    (v47)(v22, v37, v23);
LABEL_5:
    sub_18AFCCDE4();
    sub_18AFCDA14();

    return v21;
  }

  v28 = v44;
  v30 = v47;
  v29 = v48;
  if (v19 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18AFD8390;
    (*(v30 + 104))(v28, *MEMORY[0x1E69814D8], v29);
    goto LABEL_5;
  }

  v49 = 0;
  v50 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v32 = v35;
  sub_18AFCDA44();
  v33 = v36;
  sub_18AFCC204();
  v18(v32, v11);
  sub_18AFCE1C4();
  (*(v37 + 8))(v33, v5);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVThinMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = sub_18AFCDBC4();
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_18AFCCCF4();
  v48 = *(v4 - 8);
  v49 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_18AFCDA34();
  v6 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_18AFCBB34();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_18AFCC474();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  sub_18AFCDA44();
  sub_18AFCC204();
  v20 = *(v15 + 8);
  v20(v19, v14);
  v40 = v9;
  v41 = v8;
  v21 = (*(v9 + 88))(v13, v8);
  v22 = &loc_18AFCE000;
  if (v21 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v41 = *(v6 + 72);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18AFCEB10;
    LODWORD(v40) = *MEMORY[0x1E69814D8];
    v24 = v47;
    v48 = *(v48 + 104);
    v25 = v49;
    (v48)(v47);
    sub_18AFCCDE4();
    v26 = v42;
    sub_18AFCD604();
    v28 = v44;
    v27 = v45;
    v29 = v46;
    (*(v45 + 104))(v44, *MEMORY[0x1E6981DB8], v46);
    sub_18AFCDA24();
    v30 = v29;
    v22 = &loc_18AFCE000;
    (*(v27 + 8))(v28, v30);
    (*(v6 + 8))(v26, v43);
    (v48)(v24, v40, v25);
    sub_18AFCCDE4();
LABEL_5:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
    sub_18AFCD6C4();
    *(swift_allocObject() + 16) = v22[177];
    sub_18AFCD664();
    sub_18AFCD634();
    sub_18AFCDA14();

    return v23;
  }

  v46 = a1;
  v32 = v48;
  v31 = v49;
  if (v21 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_18AFD8390;
    (*(v32 + 104))(v47, *MEMORY[0x1E69814D8], v31);
    sub_18AFCCDE4();
    goto LABEL_5;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v34 = v38;
  sub_18AFCDA44();
  v35 = v39;
  sub_18AFCC204();
  v20(v34, v14);
  v36 = v41;
  sub_18AFCE1C4();
  (*(v40 + 8))(v35, v36);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVUltraThinMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v45 = a1;
  v44 = sub_18AFCDBC4();
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_18AFCCCF4();
  v48 = *(v2 - 8);
  v49 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v46 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_18AFCDA34();
  v47 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_18AFCBB34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_18AFCC474();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  v17 = swift_allocObject();
  v39 = xmmword_18AFCEB10;
  *(v17 + 16) = xmmword_18AFCEB10;
  sub_18AFCD664();
  sub_18AFCD634();
  sub_18AFCDA44();
  sub_18AFCC204();
  v18 = *(v12 + 8);
  v18(v16, v11);
  v37 = v6;
  v38 = v5;
  v19 = (*(v6 + 88))(v10, v5);
  if (v19 == *MEMORY[0x1E697DBB8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v20 = v47;
    v45 = *(v47 + 72);
    v21 = swift_allocObject();
    *(v21 + 16) = v39;
    *&v39 = v17;
    LODWORD(v38) = *MEMORY[0x1E69814D8];
    v22 = v46;
    v23 = v49;
    v48 = *(v48 + 104);
    (v48)(v46);
    sub_18AFCCDE4();
    v24 = v40;
    sub_18AFCD604();
    v25 = v42;
    v26 = v43;
    v27 = v44;
    (*(v42 + 104))(v43, *MEMORY[0x1E6981DB8], v44);
    sub_18AFCDA24();
    (*(v25 + 8))(v26, v27);
    (*(v20 + 8))(v24, v41);
    (v48)(v22, v38, v23);
LABEL_5:
    sub_18AFCCDE4();
    sub_18AFCDA14();

    return v21;
  }

  v28 = v46;
  v30 = v48;
  v29 = v49;
  if (v19 == *MEMORY[0x1E697DBA8])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_18AFD8390;
    (*(v30 + 104))(v28, *MEMORY[0x1E69814D8], v29);
    goto LABEL_5;
  }

  v50 = 0;
  v51 = 0xE000000000000000;
  sub_18AFCE134();
  MEMORY[0x18CFED1C0](0xD000000000000015, 0x800000018AFE4D60);
  v32 = v35;
  sub_18AFCDA44();
  v33 = v36;
  sub_18AFCC204();
  v18(v32, v11);
  v34 = v38;
  sub_18AFCE1C4();
  (*(v37 + 8))(v33, v34);
  result = sub_18AFCE1E4();
  __break(1u);
  return result;
}

uint64_t TVFocusMaterialProvider.resolveLayers(in:)()
{
  v18 = sub_18AFCDBC4();
  v0 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18AFCCCF4();
  v3 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_18AFCDA34();
  v6 = *(v17 - 8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B708);
  v19 = *(v6 + 72);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_18AFCEB10;
  v10 = *MEMORY[0x1E69814D8];
  v11 = *(v3 + 104);
  v15 = v3 + 104;
  v12 = v16;
  v11(v5, v10, v16);
  sub_18AFCCDE4();
  sub_18AFCD604();
  v13 = v18;
  (*(v0 + 104))(v2, *MEMORY[0x1E6981DB8], v18);
  sub_18AFCDA24();
  (*(v0 + 8))(v2, v13);
  (*(v7 + 8))(v9, v17);
  v11(v5, v10, v12);
  sub_18AFCCDE4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B690);
  sub_18AFCD6C4();
  *(swift_allocObject() + 16) = xmmword_18AFD8390;
  sub_18AFCD634();
  sub_18AFCDA14();

  return v20;
}

uint64_t TVGlassMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56AA10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1ED56AA18);
  sub_18AE7BDB0(v6, v4);
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

uint64_t sub_18AFBAC74(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18AFBACDC(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED56AA10 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1ED56AA18);
  sub_18AE7BDB0(v6, v4);
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

double GlassEdgeMaterialProvider.Configuration.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 8.0;
  *a1 = xmmword_18AFDEFE0;
  return result;
}

uint64_t static GlassEdgeMaterialProvider.Configuration.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return sub_18AFCCCB4();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AFBAE44(double *a1, double *a2)
{
  if (*a1 == *a2)
  {
    return sub_18AFCCCB4();
  }

  else
  {
    return 0;
  }
}

__n128 GlassEdgeMaterialProvider.init(configuration:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double GlassEdgeMaterialProvider.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 8.0;
  *a1 = xmmword_18AFDEFE0;
  return result;
}

uint64_t GlassEdgeMaterialProvider.resolveLayers(in:)(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA997908 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1EA99B560);
  sub_18AE7BDB0(v6, v4);
  sub_18AE8E22C(*v6, &v10);
  *(v4 + 5) = v10;
  *(v4 + 1) = xmmword_18AFD8B80;
  v4[32] = 1;
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

uint64_t _s13DesignLibrary25GlassEdgeMaterialProviderV13ConfigurationV4hash4intoys6HasherVz_tF_0()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x18CFED640](*&v1);

  return sub_18AFCCCC4();
}

uint64_t _s13DesignLibrary25GlassEdgeMaterialProviderV13ConfigurationV9hashValueSivg_0()
{
  v1 = *v0;
  sub_18AFCE294();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x18CFED640](*&v2);
  sub_18AFCCCC4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBB098(uint64_t a1)
{
  v2 = type metadata accessor for GlassMaterialProvider();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA997908 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GlassMaterialProvider.Configuration(0);
  v6 = __swift_project_value_buffer(v5, qword_1EA99B560);
  sub_18AE7BDB0(v6, v4);
  sub_18AE8E22C(*v6, &v10);
  *(v4 + 5) = v10;
  *(v4 + 1) = xmmword_18AFD8B80;
  v4[32] = 1;
  v7 = GlassMaterialProvider.resolveLayers(in:)(a1);
  sub_18AFBAC74(v4);
  return v7;
}

uint64_t sub_18AFBB19C()
{
  v1 = *v0;
  sub_18AFCE294();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x18CFED640](*&v2);
  sub_18AFCCCC4();
  return sub_18AFCE2E4();
}

unint64_t sub_18AFBB204()
{
  result = qword_1EA99BDE8;
  if (!qword_1EA99BDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDE8);
  }

  return result;
}

unint64_t sub_18AFBB25C()
{
  result = qword_1EA99BDF0;
  if (!qword_1EA99BDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDF0);
  }

  return result;
}

unint64_t sub_18AFBB2B4()
{
  result = qword_1EA99BDF8;
  if (!qword_1EA99BDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BDF8);
  }

  return result;
}

unint64_t sub_18AFBB30C()
{
  result = qword_1EA99BE00;
  if (!qword_1EA99BE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE00);
  }

  return result;
}

unint64_t sub_18AFBB364()
{
  result = qword_1EA99BE08;
  if (!qword_1EA99BE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE08);
  }

  return result;
}

unint64_t sub_18AFBB3BC()
{
  result = qword_1EA99BE10;
  if (!qword_1EA99BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE10);
  }

  return result;
}

unint64_t sub_18AFBB414()
{
  result = qword_1EA99BE18;
  if (!qword_1EA99BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE18);
  }

  return result;
}

unint64_t sub_18AFBB46C()
{
  result = qword_1EA99BE20;
  if (!qword_1EA99BE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE20);
  }

  return result;
}

unint64_t sub_18AFBB4C4()
{
  result = qword_1EA99BE28;
  if (!qword_1EA99BE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE28);
  }

  return result;
}

unint64_t sub_18AFBB51C()
{
  result = qword_1EA99BE30;
  if (!qword_1EA99BE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE30);
  }

  return result;
}

unint64_t sub_18AFBB574()
{
  result = qword_1EA99BE38;
  if (!qword_1EA99BE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE38);
  }

  return result;
}

unint64_t sub_18AFBB5CC()
{
  result = qword_1EA99BE40;
  if (!qword_1EA99BE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE40);
  }

  return result;
}

unint64_t sub_18AFBB624()
{
  result = qword_1EA99BE48;
  if (!qword_1EA99BE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE48);
  }

  return result;
}

unint64_t sub_18AFBB67C()
{
  result = qword_1EA99BE50;
  if (!qword_1EA99BE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE50);
  }

  return result;
}

unint64_t sub_18AFBB6D4()
{
  result = qword_1EA99BE58;
  if (!qword_1EA99BE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE58);
  }

  return result;
}

uint64_t sub_18AFBB83C@<X0>(_DWORD *a1@<X8>)
{
  result = sub_18AFBB8C0();
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_18AFBB86C()
{
  result = qword_1EA99BE60;
  if (!qword_1EA99BE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE60);
  }

  return result;
}

uint64_t sub_18AFBB8C0()
{
  v0 = sub_18AFCCCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEB4960();
  sub_18AFCC484();
  if (!v5[1] && !sub_18AFCC1C4())
  {
    sub_18AFCCCD4();
  }

  sub_18AFCCDC4();

  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  return sub_18AFCCDE4();
}

uint64_t sub_18AFBBA64(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [objc_opt_self() mainBundle];
  v7 = [v6 infoDictionary];

  if (v7)
  {
    v8 = sub_18AFCDD84();

    if (*(v8 + 16) && (v9 = sub_18AECE354(a1, a2), (v10 & 1) != 0))
    {
      sub_18AE9B098(*(v8 + 56) + 32 * v9, v13);

      if (swift_dynamicCast())
      {
        a3 = v12;
      }
    }

    else
    {
    }
  }

  return a3 & 1;
}

uint64_t sub_18AFBBB7C@<X0>(uint64_t a1@<X8>)
{
  sub_18AFCC224();
  sub_18AEB23EC();
  sub_18AFCC484();
  result = type metadata accessor for ResolvedButtonBorderShape(0);
  *(a1 + *(result + 20)) = v3;
  return result;
}

uint64_t ButtonBorderShape.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBBC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFBBE7C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.buttonBorderShape.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_18AEB23EC();
  sub_18AFCC484();
  return sub_18AFBE4B0;
}

uint64_t EnvironmentValues.designLibraryButtonBorderShape.getter()
{
  sub_18AEB23EC();

  return sub_18AFCC484();
}

uint64_t (*EnvironmentValues.designLibraryButtonBorderShape.modify(void *a1))()
{
  *a1 = v1;
  a1[1] = sub_18AEB23EC();
  sub_18AFCC484();
  return sub_18AFBBE3C;
}

unint64_t sub_18AFBBE7C()
{
  result = qword_1EA99BE68;
  if (!qword_1EA99BE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BE68);
  }

  return result;
}

double sub_18AFBBF8C@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v3);
  v5 = (&v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v51 = (&v47 - v7);
  v8 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_18AFCBB54();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  v21 = *(v1 + *(type metadata accessor for ResolvedButtonBorderShape(0) + 20));
  if (v21 > 1)
  {
    if (v21 != 2)
    {
      (*(v12 + 16))(v14, v1, v11);
      v34 = (*(v12 + 88))(v14, v11);
      v35 = 4.0;
      if (v34 != *MEMORY[0x1E697DC08])
      {
        v35 = 5.0;
        if (v34 != *MEMORY[0x1E697DC20])
        {
          v35 = 6.0;
          if (v34 != *MEMORY[0x1E697DC28])
          {
            v35 = 7.0;
            if (v34 != *MEMORY[0x1E697DC10])
            {
              v35 = 9.0;
              if (v34 != *MEMORY[0x1E697DC00])
              {
                (*(v12 + 8))(v14, v11);
                v35 = 6.0;
              }
            }
          }
        }
      }

      v36 = *(v3 + 20);
      v37 = *MEMORY[0x1E697F468];
      v38 = sub_18AFCC534();
      (*(*(v38 - 8) + 104))(v5 + v36, v37, v38);
      *v5 = v35;
      v5[1] = v35;
      sub_18AFCC154();
      v52 = v54;
      v53 = v55;
      v28 = v56;
      v32 = MEMORY[0x1E697EAF0];
      v33 = v5;
      goto LABEL_16;
    }

    goto LABEL_7;
  }

  if (v21)
  {
LABEL_7:
    v29 = *MEMORY[0x1E697F468];
    v30 = sub_18AFCC534();
    (*(*(v30 - 8) + 104))(v10, v29, v30);
    sub_18AFCD494();
    v52 = v54;
    v53 = v55;
    v28 = v56;
    v31 = MEMORY[0x1E6981998];
LABEL_8:
    v32 = v31;
    v33 = v10;
LABEL_16:
    sub_18AEDC368(v33, v32);
    goto LABEL_17;
  }

  *&v52 = v3;
  v50 = a1;
  v22 = *(v12 + 104);
  v49 = *MEMORY[0x1E697DC10];
  *&v53 = v22;
  v22(v20);
  v23 = sub_18AFCBB44();
  v24 = *(v12 + 8);
  v24(v20, v11);
  if ((v23 & 1) == 0)
  {
    v48 = *MEMORY[0x1E697DC00];
    (v53)(v20);
    v25 = sub_18AFCBB44();
    v24(v20, v11);
    if ((v25 & 1) == 0)
    {
      (*(v12 + 16))(v17, v1, v11);
      v41 = (*(v12 + 88))(v17, v11);
      v42 = 4.0;
      a1 = v50;
      v43 = v52;
      if (v41 != *MEMORY[0x1E697DC08])
      {
        v42 = 5.0;
        if (v41 != *MEMORY[0x1E697DC20])
        {
          v42 = 6.0;
          if (v41 != *MEMORY[0x1E697DC28])
          {
            v42 = 7.0;
            if (v41 != v49)
            {
              v42 = 9.0;
              if (v41 != v48)
              {
                v24(v17, v11);
                v42 = 6.0;
              }
            }
          }
        }
      }

      v44 = *(v43 + 20);
      v45 = *MEMORY[0x1E697F468];
      v46 = sub_18AFCC534();
      v10 = v51;
      (*(*(v46 - 8) + 104))(v51 + v44, v45, v46);
      *v10 = v42;
      v10[1] = v42;
      sub_18AFCC154();
      v52 = v54;
      v53 = v55;
      v28 = v56;
      v31 = MEMORY[0x1E697EAF0];
      goto LABEL_8;
    }
  }

  v26 = *MEMORY[0x1E697F468];
  v27 = sub_18AFCC534();
  (*(*(v27 - 8) + 104))(v10, v26, v27);
  sub_18AFCD494();
  v52 = v54;
  v53 = v55;
  v28 = v56;
  sub_18AEDC368(v10, MEMORY[0x1E6981998]);
  a1 = v50;
LABEL_17:
  result = *&v52;
  v40 = v53;
  *a1 = v52;
  *(a1 + 16) = v40;
  *(a1 + 32) = v28;
  return result;
}

double sub_18AFBC650@<D0>(uint64_t a1@<X8>)
{
  sub_18AFBBF8C(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_18AFBC694(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBC71C;
}

uint64_t sub_18AFBC720(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AFBC7B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AFBC848(uint64_t a1)
{
  v2 = sub_18AFBC954(&qword_1EA998BB0, type metadata accessor for ResolvedButtonBorderShape);

  return MEMORY[0x1EEDE4410](a1, v2);
}

uint64_t sub_18AFBC954(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_18AFBCA04()
{
  result = qword_1EA99BEA0;
  if (!qword_1EA99BEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BEA0);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFCBB54();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 4)
    {
      return v10 - 3;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_18AFCBB54();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 3;
  }

  return result;
}

uint64_t sub_18AFBCC58()
{
  result = sub_18AFCBB54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFBCCCC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFBCD44(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_18AFBCE48(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

double sub_18AFBCFE4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_18AFCBB54();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v13 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v37 - v17);
  v19 = *(v1 + *(type metadata accessor for ResolvedTextFieldBorderShape(0) + 20));
  if (v19 <= 1)
  {
    if (!v19)
    {
      (*(v7 + 16))(v12, v1, v6);
      v20 = (*(v7 + 88))(v12, v6);
      v21 = 4.0;
      if (v20 != *MEMORY[0x1E697DC08])
      {
        v21 = 5.0;
        if (v20 != *MEMORY[0x1E697DC20])
        {
          v21 = 6.0;
          if (v20 != *MEMORY[0x1E697DC28])
          {
            v21 = 7.0;
            if (v20 != *MEMORY[0x1E697DC10])
            {
              v21 = 9.0;
              if (v20 != *MEMORY[0x1E697DC00])
              {
                (*(v7 + 8))(v12, v6);
                v21 = 6.0;
              }
            }
          }
        }
      }

      v22 = *(v13 + 20);
      v23 = *MEMORY[0x1E697F468];
      v24 = sub_18AFCC534();
      (*(*(v24 - 8) + 104))(v18 + v22, v23, v24);
      *v18 = v21;
      v18[1] = v21;
      sub_18AFCC154();
      v37 = v39;
      v38 = v40;
      v25 = v41;
      v26 = MEMORY[0x1E697EAF0];
      v27 = v18;
      goto LABEL_19;
    }

LABEL_11:
    v28 = *MEMORY[0x1E697F468];
    v29 = sub_18AFCC534();
    (*(*(v29 - 8) + 104))(v5, v28, v29);
    sub_18AFCD494();
    v37 = v39;
    v38 = v40;
    v25 = v41;
    v26 = MEMORY[0x1E6981998];
    v27 = v5;
    goto LABEL_19;
  }

  if (v19 == 2)
  {
    goto LABEL_11;
  }

  (*(v7 + 16))(v9, v1, v6);
  v30 = (*(v7 + 88))(v9, v6);
  v31 = 4.0;
  if (v30 != *MEMORY[0x1E697DC08])
  {
    v31 = 5.0;
    if (v30 != *MEMORY[0x1E697DC20])
    {
      v31 = 6.0;
      if (v30 != *MEMORY[0x1E697DC28])
      {
        v31 = 7.0;
        if (v30 != *MEMORY[0x1E697DC10])
        {
          v31 = 9.0;
          if (v30 != *MEMORY[0x1E697DC00])
          {
            (*(v7 + 8))(v9, v6);
            v31 = 6.0;
          }
        }
      }
    }
  }

  v32 = *(v13 + 20);
  v33 = *MEMORY[0x1E697F468];
  v34 = sub_18AFCC534();
  (*(*(v34 - 8) + 104))(v15 + v32, v33, v34);
  *v15 = v31;
  v15[1] = v31;
  sub_18AFCC154();
  v37 = v39;
  v38 = v40;
  v25 = v41;
  v26 = MEMORY[0x1E697EAF0];
  v27 = v15;
LABEL_19:
  sub_18AEDC368(v27, v26);
  result = *&v37;
  v36 = v38;
  *a1 = v37;
  *(a1 + 16) = v36;
  *(a1 + 32) = v25;
  return result;
}

double sub_18AFBD554@<D0>(uint64_t a1@<X8>)
{
  sub_18AFBCFE4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_18AFBD598(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFBD620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AFBD6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AFBD748(uint64_t a1)
{
  v2 = sub_18AFBC954(&qword_1EA99B4E8, type metadata accessor for ResolvedTextFieldBorderShape);

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_18AFBD7C4@<D0>(uint64_t a1@<X8>)
{
  v3 = sub_18AFCBB54();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18AFCC184();
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_18AFCD4A4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + *(type metadata accessor for ResolvedSearchFieldBorderShape(0) + 20)) > 2u)
  {
    (*(v4 + 16))(v6, v1, v3);
    v18 = (*(v4 + 88))(v6, v3);
    v19 = 4.0;
    if (v18 != *MEMORY[0x1E697DC08])
    {
      v19 = 5.0;
      if (v18 != *MEMORY[0x1E697DC20])
      {
        v19 = 6.0;
        if (v18 != *MEMORY[0x1E697DC28])
        {
          v19 = 7.0;
          if (v18 != *MEMORY[0x1E697DC10])
          {
            v19 = 9.0;
            if (v18 != *MEMORY[0x1E697DC00])
            {
              (*(v4 + 8))(v6, v3);
              v19 = 6.0;
            }
          }
        }
      }
    }

    v20 = *(v7 + 20);
    v21 = *MEMORY[0x1E697F468];
    v22 = sub_18AFCC534();
    (*(*(v22 - 8) + 104))(v9 + v20, v21, v22);
    *v9 = v19;
    v9[1] = v19;
    sub_18AFCC154();
    v25 = v27;
    v26 = v28;
    v15 = v29;
    v16 = MEMORY[0x1E697EAF0];
    v17 = v9;
  }

  else
  {
    v13 = *MEMORY[0x1E697F468];
    v14 = sub_18AFCC534();
    (*(*(v14 - 8) + 104))(v12, v13, v14);
    sub_18AFCD494();
    v25 = v27;
    v26 = v28;
    v15 = v29;
    v16 = MEMORY[0x1E6981998];
    v17 = v12;
  }

  sub_18AEDC368(v17, v16);
  result = *&v25;
  v24 = v26;
  *a1 = v25;
  *(a1 + 16) = v24;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_18AFBDB80@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>, double a4@<D0>)
{
  v6 = v4;
  sub_18AFBE430(v6, a3, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  *(a3 + *(result + 36)) = a4;
  return result;
}

double sub_18AFBDBDC@<D0>(uint64_t a1@<X8>)
{
  sub_18AFBD7C4(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void (*sub_18AFBDC20(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFBDCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape);

  return MEMORY[0x1EEDE4440](a1, a2, a3, v6);
}

uint64_t sub_18AFBDD3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18AFBC954(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape);

  return MEMORY[0x1EEDE43F0](a1, a2, a3, v6);
}

uint64_t sub_18AFBDDD0(uint64_t a1)
{
  v2 = sub_18AFBC954(&qword_1EA99B180, type metadata accessor for ResolvedSearchFieldBorderShape);

  return MEMORY[0x1EEDE4410](a1, v2);
}

double sub_18AFBDE4C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v8 = *(v6 + *(a1 + 36));
  CGRectInset(*&a3, v8, v8);
  sub_18AFCD024();
  result = *&v10;
  *a2 = v10;
  *(a2 + 16) = v11;
  *(a2 + 32) = v12;
  return result;
}

double sub_18AFBDEB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  (*(*(a1 - 8) + 16))(a2, v4, a1);
  v8 = *(a1 + 36);
  result = *(a2 + v8) + a3;
  *(a2 + v8) = result;
  return result;
}

double sub_18AFBDF28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_18AFBDE4C(a1, v6, a3);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

void (*sub_18AFBDF6C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFBDFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFBE070(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFBE0EC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t sub_18AFBE430(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18AFBE4C0()
{
  v0 = sub_18AFCCCF4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCCE24();
  sub_18AFCCE54();
  sub_18AFCCE34();
  (*(v1 + 104))(v3, *MEMORY[0x1E69814D8], v0);
  return sub_18AFCCDE4();
}

__n128 sub_18AFBE6B4@<Q0>(char a1@<W0>, __n128 *a2@<X8>, float a3@<S0>, float a4@<S1>, float a5@<S2>)
{
  if (a4 == 1.0 && (a3 == 0.0 ? (v11 = a5 == 1.0) : (v11 = 0), v11 && (sub_18AFCCCB4() & 1) != 0))
  {
    v12 = v5[3];
    v43 = v5[2];
    v44 = v12;
    v45 = v5[4];
    v13 = v5[1];
    v41 = *v5;
    v42 = v13;
  }

  else
  {
    if (a1)
    {
      if (qword_1ED56AB30 != -1)
      {
        swift_once();
      }

      v38 = xmmword_1ED56C970;
      v39 = unk_1ED56C980;
      v40 = xmmword_1ED56C990;
      v36 = xmmword_1ED56C950;
      v37 = unk_1ED56C960;
      sub_18AFCBCB4();
      sub_18AFBFA34(&v17, a3, a4);
      if (a5 != 1.0)
      {
        v25 = 0;
        v24 = 0;
        v23 = 1065353216;
        v26 = 0;
        v28 = 0;
        v27 = a5;
        v29 = 0.5 - (a5 * 0.5);
        v30 = 0;
        v31 = a5;
        v32 = 0;
        v33 = v29;
        v34 = xmmword_18AFDC160;
        v35 = 0;
        sub_18AFCBCB4();
      }

      if (qword_1ED56AB28 != -1)
      {
        swift_once();
      }

      v20 = xmmword_1ED56C920;
      v21 = unk_1ED56C930;
      v22 = xmmword_1ED56C940;
      v18 = xmmword_1ED56C900;
      v19 = *algn_1ED56C910;
    }

    else
    {
      if (qword_1ED56AB30 != -1)
      {
        swift_once();
      }

      v38 = xmmword_1ED56C970;
      v39 = unk_1ED56C980;
      v40 = xmmword_1ED56C990;
      v36 = xmmword_1ED56C950;
      v37 = unk_1ED56C960;
      sub_18AFCBCB4();
      if (a5 != 1.0)
      {
        v25 = 0;
        v24 = 0;
        v23 = 1065353216;
        v26 = 0;
        v28 = 0;
        v27 = a5;
        v29 = 0.5 - (a5 * 0.5);
        v30 = 0;
        v31 = a5;
        v32 = 0;
        v33 = v29;
        v34 = xmmword_18AFDC160;
        v35 = 0;
        sub_18AFCBCB4();
      }

      sub_18AFBFA34(v16, a3, a4);
      if (qword_1ED56AB28 != -1)
      {
        swift_once();
      }

      v20 = xmmword_1ED56C920;
      v21 = unk_1ED56C930;
      v22 = xmmword_1ED56C940;
      v18 = xmmword_1ED56C900;
      v19 = *algn_1ED56C910;
    }

    sub_18AFCBCB4();
  }

  v14 = v44;
  a2[2] = v43;
  a2[3] = v14;
  a2[4] = v45;
  result = v42;
  *a2 = v41;
  a2[1] = result;
  return result;
}

void _ColorMatrix.YCC.init(black:white:saturation:hue:)(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>, float a4@<S2>, double a5@<D3>)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 16) = a5;
}

__n128 sub_18AFBEA34@<Q0>(_OWORD *a1@<X8>)
{
  sub_18AFCCE24();
  sub_18AFCCE54();
  sub_18AFCCE34();
  sub_18AFCBCB4();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

__n128 _ColorMatrix.YCC.colorMatrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v16 = 0x3F80000000000000;
  v19 = 0x3F80000000000000;
  v15 = 0;
  v14 = 0;
  v18 = 0;
  v17 = 0;
  v21 = 0;
  v20 = 0;
  v13 = 1065353216;
  v22 = 0;
  v23 = 1065353216;
  v6 = sub_18AFBE6B4(1, v11, v3, v4, v5);
  v6.n128_u32[0] = 730643660;
  LODWORD(v7) = 953267991;
  sub_18AE8C368(v12, v6.n128_f64[0], v7, v8);
  v9 = v12[3];
  *(a1 + 32) = v12[2];
  *(a1 + 48) = v9;
  *(a1 + 64) = v12[4];
  result = v12[1];
  *a1 = v12[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t _ColorMatrix.YCC.hash(into:)()
{
  sub_18AFCE2C4();
  sub_18AFCE2C4();
  sub_18AFCE2C4();

  return sub_18AFCCCC4();
}

uint64_t _ColorMatrix.YCC.hashValue.getter()
{
  sub_18AFCE294();
  _ColorMatrix.YCC.hash(into:)();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBEE14()
{
  sub_18AFCE294();
  _ColorMatrix.YCC.hash(into:)();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBEE74()
{
  sub_18AFCE294();
  _ColorMatrix.YCC.hash(into:)();
  return sub_18AFCE2E4();
}

__n128 _ColorMatrix.apply(ycc:)@<Q0>(float *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v16 = 0x3F80000000000000;
  v19 = 0x3F80000000000000;
  v15 = 0;
  v14 = 0;
  v18 = 0;
  v17 = 0;
  v21 = 0;
  v20 = 0;
  v13 = 1065353216;
  v22 = 0;
  v23 = 1065353216;
  v6 = sub_18AFBE6B4(1, v11, v3, v4, v5);
  v6.n128_u32[0] = 730643660;
  LODWORD(v7) = 953267991;
  sub_18AE8C368(v12, v6.n128_f64[0], v7, v8);
  sub_18AFCBCB4();
  v9 = v12[8];
  *(a2 + 32) = v12[7];
  *(a2 + 48) = v9;
  *(a2 + 64) = v12[9];
  result = v12[6];
  *a2 = v12[5];
  *(a2 + 16) = result;
  return result;
}

__n128 _ColorMatrix.Fill.colorMatrix.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 20);
  v10 = 1065353216;
  v12 = 0;
  v11 = 0;
  v13 = 0x3F80000000000000;
  v15 = 0;
  v14 = 0;
  v16 = 0x3F80000000000000;
  v18 = 0;
  v17 = 0;
  v19 = 0;
  v20 = 1065353216;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_18AFBEA34(v21);
    }

    else
    {
      v4 = sub_18AE8C178(v21);
    }
  }

  else
  {
    v4 = sub_18AE97674(v21, *(v1 + 12));
  }

  v4.n128_u32[0] = 730643660;
  LODWORD(v5) = 953267991;
  sub_18AE8C368(v9, v4.n128_f64[0], v5, v6);
  v7 = v9[3];
  *(a1 + 32) = v9[2];
  *(a1 + 48) = v7;
  *(a1 + 64) = v9[4];
  result = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = result;
  return result;
}

uint64_t _ColorMatrix.Fill.hash(into:)()
{
  if (*(v0 + 20))
  {
    if (*(v0 + 20) == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x18CFED610](v1);
  return sub_18AFCCF14();
}

uint64_t _ColorMatrix.Fill.hashValue.getter()
{
  v1 = *(v0 + 20);
  sub_18AFCE294();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFED610](v2);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBF1E8()
{
  v1 = *(v0 + 20);
  sub_18AFCE294();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFED610](v2);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFBF298()
{
  if (*(v0 + 20))
  {
    if (*(v0 + 20) == 1)
    {
      v1 = 1;
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    v1 = 0;
  }

  MEMORY[0x18CFED610](v1);
  return sub_18AFCCF14();
}

uint64_t sub_18AFBF330()
{
  v1 = *(v0 + 20);
  sub_18AFCE294();
  if (v1)
  {
    if (v1 == 1)
    {
      v2 = 1;
    }

    else
    {
      v2 = 2;
    }
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x18CFED610](v2);
  sub_18AFCCF14();
  return sub_18AFCE2E4();
}

__n128 _ColorMatrix.apply(fill:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 20);
  v13 = 0x3F80000000000000;
  v16 = 0x3F80000000000000;
  v12 = 0;
  v11 = 0;
  v15 = 0;
  v14 = 0;
  v18 = 0;
  v17 = 0;
  v10 = 1065353216;
  v19 = 0;
  v20 = 1065353216;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = sub_18AFBEA34(v21);
    }

    else
    {
      v4 = sub_18AE8C178(v21);
    }
  }

  else
  {
    v4 = sub_18AE97674(v21, *(a1 + 12));
  }

  v4.n128_u32[0] = 730643660;
  LODWORD(v5) = 953267991;
  sub_18AE8C368(v9, v4.n128_f64[0], v5, v6);
  sub_18AFCBCB4();
  v7 = v9[8];
  *(a2 + 32) = v9[7];
  *(a2 + 48) = v7;
  *(a2 + 64) = v9[9];
  result = v9[6];
  *a2 = v9[5];
  *(a2 + 16) = result;
  return result;
}

__n128 _ColorMatrix.apply(fills:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = 0.0078125;
    v6 = (a1 + 52);
    v7 = 0.0;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v11 = 1065353216;
    v15 = 1065353216;
    v16 = 0;
    v17 = 0.0078125;
    do
    {
      v44 = v11;
      v45 = v12;
      v46 = v13;
      v47 = *&v5;
      v48 = v14;
      v49 = v15;
      v50 = v16;
      v51 = *&v17;
      *&v22 = v11;
      *(&v22 + 1) = v12;
      v105 = v22;
      *&v22 = v5;
      *(&v22 + 1) = v13;
      v107 = v22;
      v106 = v7;
      v108 = v8;
      *&v22 = v14;
      *(&v22 + 1) = v15;
      v109 = v22;
      *&v22 = v16;
      *(&v22 + 1) = v17;
      v111 = v22;
      v110 = v9;
      v112 = v10;
      v23 = *v6;
      v53 = *(v6 - 2);
      sub_18AFCCE24();
      if (v23)
      {
        if (v23 == 1)
        {
          v25 = 1.0 - v53;
          v26 = ((1.0 - v53) * v24) + v53;
          if (v26 >= 0.0039062)
          {
            v27 = 1.0 / v26;
          }

          else
          {
            v27 = 9999.0;
          }

          v52 = v27;
          sub_18AFCCE54();
          v29 = (v25 * v28) + v53;
          if (v29 >= 0.0039062)
          {
            v30 = 1.0 / v29;
          }

          else
          {
            v30 = 9999.0;
          }

          sub_18AFCCE34();
          v32 = (v25 * v31) + v53;
          v91 = v52;
          v92 = 0;
          v93 = 0;
          v94 = 1.0 - v52;
          v95 = 0;
          if (v32 >= 0.0039062)
          {
            v33 = 1.0 / v32;
          }

          else
          {
            v33 = 9999.0;
          }

          v97 = 0;
          v96 = v30;
          v98 = 1.0 - v30;
          v99 = 0;
          v100 = v33;
          v101 = 0;
          v102 = 1.0 - v33;
          v103 = xmmword_18AFDC160;
          v104 = 0;
          sub_18AFCBCB4();
          v11 = v55;
          v12 = v56;
          v5 = v58;
          v13 = v59;
          v7 = v57;
          v8 = v60;
          v14 = v61;
          v15 = v62;
          v16 = v64;
          v17 = v65;
          v9 = v63;
          v10 = v66;
        }

        else
        {
          v34 = v24 * v53;
          if (v34 <= 0.99609)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0.99609;
          }

          sub_18AFCCE54();
          v37 = v36 * v53;
          if (v37 <= 0.99609)
          {
            v38 = v37;
          }

          else
          {
            v38 = 0.99609;
          }

          sub_18AFCCE34();
          v40 = v39 * v53;
          if (v40 > 0.99609)
          {
            v40 = 0.99609;
          }

          v115 = 0;
          v114 = 0;
          v116 = 0;
          v113 = (v35 / (1.0 - v35)) + 1.0;
          v117 = (v38 / (1.0 - v38)) + 1.0;
          v119 = 0;
          v118 = 0;
          v120 = 0;
          v121 = (v40 / (1.0 - v40)) + 1.0;
          v123 = 0;
          v122 = 0;
          v124 = 0;
          v125 = 1065353216;
          sub_18AFCBCB4();
          v11 = v67;
          v12 = v68;
          v5 = v70;
          v13 = v71;
          v7 = v69;
          v8 = v72;
          v14 = v73;
          v15 = v74;
          v16 = v76;
          v17 = v77;
          v9 = v75;
          v10 = v78;
        }
      }

      else
      {
        v43 = v24;
        sub_18AFCCE54();
        v19 = v18;
        sub_18AFCCE34();
        v20.f32[0] = v53 * 0.0;
        v21 = vdup_lane_s32(COERCE_UNSIGNED_INT(v53 * 0.0), 0);
        v11 = vadd_f32(v21, vmul_n_f32(v44, 1.0 - v53));
        v12 = vadd_f32(v21, vmul_n_f32(v45, 1.0 - v53));
        v7 = (v7 * (1.0 - v53)) + (v43 * v53);
        v5 = COERCE_DOUBLE(vadd_f32(v21, vmul_n_f32(v47, 1.0 - v53)));
        v13 = vadd_f32(v21, vmul_n_f32(v46, 1.0 - v53));
        v8 = (v8 * (1.0 - v53)) + (v19 * v53);
        v14 = vadd_f32(v21, vmul_n_f32(v48, 1.0 - v53));
        v15 = vadd_f32(v21, vmul_n_f32(v49, 1.0 - v53));
        v9 = (v9 * (1.0 - v53)) + (*&a3 * v53);
        v16 = vadd_f32(v21, vmul_n_f32(v50, 1.0 - v53));
        v10 = (v53 * 0.0) + (v10 * (1.0 - v53));
        v20.f32[1] = v53;
        v17 = COERCE_DOUBLE(vadd_f32(vmul_n_f32(v51, 1.0 - v53), v20));
      }

      v6 += 6;
      --v4;
    }

    while (v4);
  }

  else
  {
    v5 = 0.0078125;
    v12 = 0;
    v7 = 0.0;
    v11 = 1065353216;
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v13 = 0;
    v14 = 0;
    v15 = 1065353216;
    v16 = 0;
    v17 = 0.0078125;
  }

  v79 = v11;
  v80 = v12;
  v82 = v5;
  v83 = v13;
  v81 = v7;
  v84 = v8;
  v85 = v14;
  v86 = v15;
  v88 = v16;
  v89 = v17;
  v87 = v9;
  v90 = v10;
  LODWORD(a3) = 730643660;
  LODWORD(v17) = 953267991;
  sub_18AE8C368(v54, a3, v17, v5);
  sub_18AFCBCB4();
  v41 = v54[8];
  *(a2 + 32) = v54[7];
  *(a2 + 48) = v41;
  *(a2 + 64) = v54[9];
  result = v54[6];
  *a2 = v54[5];
  *(a2 + 16) = result;
  return result;
}

double sub_18AFBF9BC()
{
  xmmword_1ED56C400 = xmmword_18AFDC130;
  *algn_1ED56C410 = xmmword_18AFE2370;
  xmmword_1ED56C420 = xmmword_18AFDC140;
  unk_1ED56C430 = xmmword_18AFE2370;
  result = 0.0;
  xmmword_1ED56C440 = xmmword_18AFDC150;
  return result;
}

double sub_18AFBF9F4()
{
  xmmword_1ED56C450 = xmmword_18AFDC130;
  unk_1ED56C460 = xmmword_18AFE2380;
  xmmword_1ED56C470 = xmmword_18AFE2390;
  unk_1ED56C480 = xmmword_18AFE23A0;
  result = 0.0;
  xmmword_1ED56C490 = xmmword_18AFDC150;
  return result;
}

__n128 sub_18AFBFA34@<Q0>(__n128 *a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  if (a3 == 1.0 && a2 == 0.0)
  {
    v8 = v3[2];
    v9 = v3[3];
    v10 = v3[4];
    v6 = *v3;
    v7 = v3[1];
  }

  else
  {
    sub_18AFCBCB4();
  }

  a1[2] = v8;
  a1[3] = v9;
  a1[4] = v10;
  result = v7;
  *a1 = v6;
  a1[1] = v7;
  return result;
}

float32x4_t sub_18AFBFB14(float32x4_t *a1)
{
  v2 = vaddq_f32(a1[1], v1[1]);
  *v1 = vaddq_f32(*a1, *v1);
  v1[1] = v2;
  v3 = vaddq_f32(a1[3], v1[3]);
  v1[2] = vaddq_f32(a1[2], v1[2]);
  v1[3] = v3;
  result = vaddq_f32(a1[4], v1[4]);
  v1[4] = result;
  return result;
}

float32x4_t sub_18AFBFB50(double a1)
{
  v2 = a1;
  v3 = vmulq_n_f32(v1[1], v2);
  *v1 = vmulq_n_f32(*v1, v2);
  v1[1] = v3;
  v4 = vmulq_n_f32(v1[3], v2);
  v1[2] = vmulq_n_f32(v1[2], v2);
  v1[3] = v4;
  result = vmulq_n_f32(v1[4], v2);
  v1[4] = result;
  return result;
}

uint64_t _s7SwiftUI12_ColorMatrixV13DesignLibraryE3YCCV2eeoiySbAF_AFtFZ_0(float *a1, float *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return sub_18AFCCCB4();
  }

  else
  {
    return 0;
  }
}

uint64_t _s7SwiftUI12_ColorMatrixV13DesignLibraryE4FillO2eeoiySbAF_AFtFZ_0(int *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v7 = *a2;
  v6 = a2[1];
  v8 = *(a2 + 4);
  v9 = *(a2 + 20);
  if (!*(a1 + 20))
  {
    v12 = *a1;
    v13 = v2;
    v14 = v4;
    v15 = v3;
    v16 = v5;
    if (!v9)
    {
      goto LABEL_4;
    }

LABEL_6:
    v10 = 0;
    return v10 & 1;
  }

  if (*(a1 + 20) != 1)
  {
    v12 = *a1;
    v13 = v2;
    v14 = v4;
    v15 = v3;
    v16 = v5;
    if (v9 == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  v12 = *a1;
  v13 = v2;
  v14 = v4;
  v15 = v3;
  v16 = v5;
  if (v9 != 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v17[0] = v7;
  v17[1] = v6;
  v18 = v8;
  v10 = MEMORY[0x18CFEC270](&v12, v17);
  return v10 & 1;
}

unint64_t sub_18AFBFC68()
{
  result = qword_1EA99BFB8;
  if (!qword_1EA99BFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BFB8);
  }

  return result;
}

unint64_t sub_18AFBFCC0()
{
  result = qword_1EA99BFC0;
  if (!qword_1EA99BFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BFC0);
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t _s4FillOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 20);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t _s4FillOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

uint64_t StylePlacement.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t View.style<A>(_:for:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v23 = a7;
  v21 = a5;
  v22 = a6;
  v11 = sub_18AFCE074();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  v16 = *a2;
  swift_getKeyPath();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = a3;
  *(v18 + 3) = a4;
  v19 = v22;
  *(v18 + 4) = v21;
  *(v18 + 5) = v19;
  (*(v12 + 32))(&v18[v17], v15, v11);
  v18[v17 + v13] = v16;
  sub_18AFCCB74();
}

uint64_t EnvironmentValues.componentStyles.getter()
{
  sub_18AECEF04();
  sub_18AFCC484();
  return v1;
}

uint64_t sub_18AFC00A4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v24 = a3;
  v8 = sub_18AFCE074();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-v10];
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v23[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v23[-v18];
  (*(v9 + 16))(v11, a2, v8, v17);
  if ((*(v12 + 48))(v11, 1, a5) == 1)
  {
    return (*(v9 + 8))(v11, v8);
  }

  (*(v12 + 32))(v19, v11, a5);
  (*(v12 + 16))(v15, v19, a5);
  v21 = sub_18AFCBCD4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  sub_18AFC1024(v21, v24, isUniquelyReferenced_nonNull_native);
  *a1 = v25;
  return (*(v12 + 8))(v19, a5);
}

uint64_t sub_18AFC02FC(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(sub_18AFCE074() - 8);
  v6 = v1 + ((*(v5 + 80) + 48) & ~*(v5 + 80));
  v7 = *(v6 + *(v5 + 64));

  return sub_18AFC00A4(a1, v6, v7, v3, v4);
}

void *sub_18AFC03B8@<X0>(void *a1@<X8>)
{
  result = sub_18AFABF4C(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.componentStyles.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_18AECEF04();
  sub_18AFCC484();
  return sub_18AFC044C;
}

uint64_t sub_18AFC044C(void *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_18AFCC494();
  }

  sub_18AFCC494();
}

unint64_t sub_18AFC04E4()
{
  result = qword_1EA997890;
  if (!qword_1EA997890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA997890);
  }

  return result;
}

unint64_t sub_18AFC0548()
{
  result = qword_1EA99BFD0;
  if (!qword_1EA99BFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99BFC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99BFD0);
  }

  return result;
}

unint64_t sub_18AFC05D0()
{
  result = qword_1EA99BFD8[0];
  if (!qword_1EA99BFD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99BFD8);
  }

  return result;
}

uint64_t sub_18AFC0624(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_18AFCCED4();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99B7A0);
  v39 = a2;
  result = sub_18AFCE214();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_18AFCE294();
      MEMORY[0x18CFED610](v24);
      result = sub_18AFCE2E4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_18AFC0988(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = _s17ResolvedCompositeV3KeyVMa();
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0);
  v51 = a2;
  v9 = sub_18AFCE214();
  v10 = v9;
  if (*(v8 + 16))
  {
    v44 = v3;
    v11 = 0;
    v12 = *(v8 + 64);
    v45 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & v12;
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    v47 = v9;
    v48 = v8;
    v46 = v16;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v20 = (v15 - 1) & v15;
LABEL_15:
      v24 = v19 | (v11 << 6);
      v25 = *(v8 + 48);
      v52 = *(v49 + 72);
      v53 = v20;
      v26 = v25 + v52 * v24;
      if (v51)
      {
        sub_18AF5EB60(v26, v7);
      }

      else
      {
        sub_18AF5EAFC(v26, v7);
      }

      v27 = *(*(v8 + 56) + 8 * v24);
      sub_18AFCE294();
      v28 = *v7;
      v29 = *(v7 + 2) | (v7[12] << 32);
      v30 = v7[13];
      v31 = v7[14];
      v33 = *(v7 + 2);
      v32 = *(v7 + 3);
      v34 = v7[32];
      v35 = v7[33];
      v54 = v7[34];
      v55 = *(v7 + 5);
      sub_18AFB4928(v56, v28, v29);
      MEMORY[0x18CFED610](v30);
      MEMORY[0x18CFED610](v31);
      MEMORY[0x18CFED610](v33);
      MEMORY[0x18CFED610](v32);
      MEMORY[0x18CFED610](v34);
      MEMORY[0x18CFED610](v35);
      MEMORY[0x18CFED610](v54);
      MEMORY[0x18CFED610](v55);
      sub_18AFCBB34();
      sub_18AFC14E0();
      sub_18AFCDDA4();
      result = sub_18AFCE2E4();
      v10 = v47;
      v36 = -1 << *(v47 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v8 = v48;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v17 + 8 * v38);
          if (v42 != -1)
          {
            v18 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v8 = v48;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      sub_18AF5EB60(v7, v10[6] + v52 * v18);
      *(v10[7] + 8 * v18) = v27;
      ++v10[2];
      v16 = v46;
      v15 = v53;
    }

    v21 = v11;
    result = v45;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v45[v11];
      ++v21;
      if (v23)
      {
        v19 = __clz(__rbit64(v23));
        v20 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v8 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v45, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v45 = -1 << v43;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_18AFC0D94(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCA8);
  v30 = a2;
  result = sub_18AFCE214();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_18AFCE294();
      MEMORY[0x18CFED610](v20);
      result = sub_18AFCE2E4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_18AFC1024(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_18AECE2E8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_18AFC0D94(v14, a3 & 1);
      result = sub_18AECE2E8(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_18AFCE274();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_18AFC1384();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

void *sub_18AFC1170()
{
  v1 = v0;
  v2 = _s17ResolvedCompositeV3KeyVMa();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCC0);
  v6 = *v0;
  v7 = sub_18AFCE204();
  v8 = v7;
  if (*(v6 + 16))
  {
    v25 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = *(v3 + 72) * v21;
        sub_18AF5EAFC(*(v6 + 48) + v22, v5);
        v23 = *(*(v6 + 56) + 8 * v21);
        result = sub_18AF5EB60(v5, *(v8 + 48) + v22);
        *(*(v8 + 56) + 8 * v21) = v23;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v25;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_18AFC1384()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99BCA8);
  v2 = *v0;
  v3 = sub_18AFCE204();
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
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

unint64_t sub_18AFC14E0()
{
  result = qword_1ED56AA48;
  if (!qword_1ED56AA48)
  {
    sub_18AFCBB34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED56AA48);
  }

  return result;
}

uint64_t sub_18AFC1538()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18AFC15B0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_25;
  }

  v9 = v6 + 1;
  v10 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_7;
  }

  v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
  if (HIWORD(v12))
  {
    v11 = *(a1 + v9);
    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v12 <= 0xFF)
    {
      if (v12 < 2)
      {
        goto LABEL_25;
      }

LABEL_7:
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_25;
      }

LABEL_14:
      v13 = (v11 - 1) << v10;
      if (v9 > 3)
      {
        v13 = 0;
      }

      if (v9)
      {
        if (v9 > 3)
        {
          LODWORD(v9) = 4;
        }

        if (v9 > 2)
        {
          if (v9 == 3)
          {
            LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        else if (v9 == 1)
        {
          LODWORD(v9) = *a1;
        }

        else
        {
          LODWORD(v9) = *a1;
        }
      }

      return v7 + (v9 | v13) + 1;
    }

    v11 = *(a1 + v9);
    if (*(a1 + v9))
    {
      goto LABEL_14;
    }
  }

LABEL_25:
  if (v5 >= 0xFE)
  {
    return (*(v4 + 48))();
  }

  v15 = *(a1 + v6);
  if (v15 < 2)
  {
    return 0;
  }

  return ((v15 + 2147483646) & 0x7FFFFFFF) + 1;
}

unsigned int *sub_18AFC1724(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0xFE)
  {
    v7 = 254;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = v8 + 1;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    v12 = 1;
    if (v9 <= 3)
    {
      v13 = ((v11 + ~(-1 << (8 * v9))) >> (8 * v9)) + 1;
      v14 = HIWORD(v13);
      if (v13 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v13 >= 2)
      {
        v16 = v15;
      }

      else
      {
        v16 = 0;
      }

      if (v14)
      {
        v12 = 4;
      }

      else
      {
        v12 = v16;
      }
    }

    if (v7 >= a2)
    {
LABEL_21:
      if (v12 > 1)
      {
        if (v12 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v12)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0xFE)
      {
        *(result + v8) = a2 + 1;
      }

      else
      {
        v22 = *(v5 + 56);

        return v22();
      }

      return result;
    }
  }

  else
  {
    v12 = 0;
    if (v7 >= a2)
    {
      goto LABEL_21;
    }
  }

  v17 = ~v7 + a2;
  if (v9 >= 4)
  {
    v18 = result;
    bzero(result, v8 + 1);
    result = v18;
    *v18 = v17;
    v19 = 1;
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v19 = (v17 >> (8 * v9)) + 1;
  if (v8 == -1)
  {
LABEL_41:
    if (v12 > 1)
    {
      goto LABEL_45;
    }

    goto LABEL_42;
  }

  v20 = v17 & ~(-1 << (8 * v9));
  v21 = result;
  bzero(result, v9);
  result = v21;
  if (v9 == 3)
  {
    *v21 = v20;
    *(v21 + 2) = BYTE2(v20);
    goto LABEL_41;
  }

  if (v9 == 2)
  {
    *v21 = v20;
    if (v12 > 1)
    {
LABEL_45:
      if (v12 == 2)
      {
        *(result + v9) = v19;
      }

      else
      {
        *(result + v9) = v19;
      }

      return result;
    }
  }

  else
  {
    *v21 = v17;
    if (v12 > 1)
    {
      goto LABEL_45;
    }
  }

LABEL_42:
  if (v12)
  {
    *(result + v9) = v19;
  }

  return result;
}

double sub_18AFC1968@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(v2 + *(a1 + 36)) == 1)
  {
    sub_18AFCD024();
  }

  else
  {
    sub_18AFCC9F4();
  }

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

double sub_18AFC19DC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_18AFC1968(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

void (*sub_18AFC1A20(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AFC1AA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4440](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFC1B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE43F0](a1, a2, a3, WitnessTable);
}

uint64_t sub_18AFC1BA0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDE4410](a1, WitnessTable);
}

uint64_t sub_18AFC1C3C()
{
  sub_18AEB4960();
  sub_18AFCC484();
  result = v1;
  if (!v1)
  {
    result = sub_18AFCC1C4();
    if (!result)
    {
      return sub_18AFCCCD4();
    }
  }

  return result;
}

uint64_t sub_18AFC1C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFC1CFC();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_18AFC1CFC()
{
  result = qword_1EA99C060;
  if (!qword_1EA99C060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998708);
    sub_18AFC1D80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C060);
  }

  return result;
}

unint64_t sub_18AFC1D80()
{
  result = qword_1EA99C068;
  if (!qword_1EA99C068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C068);
  }

  return result;
}

uint64_t EnvironmentValues.controlContext.getter()
{
  sub_18AEB10A8();

  return sub_18AFCC484();
}

uint64_t sub_18AFC1EA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFC204C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.controlContext.modify(uint64_t a1))(void *a1)
{
  *(a1 + 16) = v1;
  *(a1 + 24) = sub_18AEB10A8();
  sub_18AFCC484();
  return sub_18AFC1F64;
}

unint64_t sub_18AFC1FA0()
{
  result = qword_1EA99C070;
  if (!qword_1EA99C070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C070);
  }

  return result;
}

unint64_t sub_18AFC1FF8()
{
  result = qword_1EA99C078;
  if (!qword_1EA99C078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C078);
  }

  return result;
}

unint64_t sub_18AFC204C()
{
  result = qword_1EA99C080;
  if (!qword_1EA99C080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C080);
  }

  return result;
}

unint64_t sub_18AFC20A4()
{
  result = qword_1EA99C088;
  if (!qword_1EA99C088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C088);
  }

  return result;
}

uint64_t ControlStateValue.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC21F0@<X0>(uint64_t a1@<X8>)
{
  result = CTFontCopyAttribute(v1, *MEMORY[0x1E6965900]);
  if (!result)
  {
    goto LABEL_8;
  }

  v75[0] = result;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = swift_unknownObjectRelease();
LABEL_8:
    v7 = 1;
    LOBYTE(v75[0]) = 1;
    LOBYTE(v79) = 1;
    v80 = 1;
    goto LABEL_9;
  }

  v4 = v79;
  v5 = CTFontCopyVariation(v1);
  if (v5)
  {
    v6 = v5;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v75[0] = 0;
      sub_18AE9ADC0();
      sub_18AE9AE0C();
      sub_18AFCDD74();
    }
  }

  v16 = sub_18AFABC3C(MEMORY[0x1E69E7CC0]);
  v7 = 1;
  LOBYTE(v75[0]) = 1;
  LOBYTE(v79) = 1;
  v76 = 1;
  v80 = 1;
  v78 = 1;
  v77 = 1;
  v17 = v4[2];
  if (v17)
  {
    v18 = *MEMORY[0x1E6965910];
    v62 = *MEMORY[0x1E6965908];
    v60 = *MEMORY[0x1E6965920];
    v58 = v16 & 0xC000000000000001;
    v59 = *MEMORY[0x1E6965918];
    v61 = v16;
    v19 = 0uLL;
    v20 = 4;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    while (1)
    {
      v26 = v4[v20];
      if (*(v26 + 16))
      {
        v67 = v25;
        v69 = v24;
        v71 = v23;
        v73 = v22;
        v63 = v21;
        v65 = v19;

        v27 = sub_18AE9AE8C(v18);
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }

        sub_18AE9B098(*(v26 + 56) + 32 * v27, v75);
        sub_18AE9ADC0();
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        v29 = v79;
        v30 = [v79 unsignedIntValue];

        if (!*(v26 + 16) || (v31 = sub_18AE9AE8C(v62), (v32 & 1) == 0))
        {
LABEL_34:

          v21 = v63;
          v19 = v65;
LABEL_35:
          v22 = v73;
          v24 = v69;
          v23 = v71;
          v25 = v67;
          goto LABEL_16;
        }

        sub_18AE9B098(*(v26 + 56) + 32 * v31, v75);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_14;
        }

        v33 = v79;
        [v79 doubleValue];
        v57 = v34;

        if (!*(v26 + 16))
        {
          goto LABEL_34;
        }

        v35 = sub_18AE9AE8C(v60);
        if ((v36 & 1) == 0)
        {
          goto LABEL_34;
        }

        sub_18AE9B098(*(v26 + 56) + 32 * v35, v75);
        if (swift_dynamicCast())
        {
          v37 = v79;
          [v79 doubleValue];
          v56 = v38;

          if (!*(v26 + 16))
          {
            goto LABEL_34;
          }

          v39 = sub_18AE9AE8C(v59);
          if ((v40 & 1) == 0)
          {
            goto LABEL_34;
          }

          sub_18AE9B098(*(v26 + 56) + 32 * v39, v75);

          if (swift_dynamicCast())
          {
            v41 = v79;
            [v79 doubleValue];
            v54 = v42;

            if (v30 > 1936486003)
            {
              switch(v30)
              {
                case 0x736C6E74:
                  v43 = 2;
                  goto LABEL_44;
                case 0x77676874:
                  v55 = 0;
LABEL_45:
                  v44 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_];
                  v45 = v44;
                  if (v58)
                  {
                    v46 = sub_18AFCE1D4();
                    if (v46)
                    {
                      v79 = v46;
                      swift_dynamicCast();
                      v47 = v75[0];
                      goto LABEL_51;
                    }

LABEL_53:
                    v47 = v45;
                    v53 = v57;
                    v51 = v55;
LABEL_54:

                    *&v50 = v53;
                  }

                  else
                  {
                    if (!*(v61 + 16))
                    {
                      goto LABEL_53;
                    }

                    v48 = sub_18AE9B0F4(v44);
                    if ((v49 & 1) == 0)
                    {
                      goto LABEL_53;
                    }

                    v47 = *(*(v61 + 56) + 8 * v48);
LABEL_51:

                    *&v50 = v57;
                    v51 = v55;
                    if (v47)
                    {
                      [v47 doubleValue];
                      v53 = v52;
                      goto LABEL_54;
                    }
                  }

                  if (v51 != 5)
                  {
                    v22 = v73;
                    v24 = v69;
                    v23 = v71;
                    v25 = v67;
                    if (v51 == 1)
                    {
                      *&v23 = v56;
                      *(&v50 + 1) = v57;
                      *(&v23 + 1) = v54;
                      v78 = 0;
                      v22 = v50;
                      v21 = v63;
                      v19 = v65;
                    }

                    else
                    {
                      v21 = v63;
                      v19 = v65;
                      if (!v51)
                      {
                        *&v25 = v56;
                        *(&v50 + 1) = v57;
                        *(&v25 + 1) = v54;
                        v80 = 0;
                        v24 = v50;
                      }
                    }

                    goto LABEL_16;
                  }

                  *&v21 = v56;
                  *(&v50 + 1) = v57;
                  *(&v21 + 1) = v54;
                  v77 = 0;
                  v19 = v50;
                  goto LABEL_35;
                case 0x77647468:
                  v43 = 1;
                  goto LABEL_44;
              }
            }

            else
            {
              switch(v30)
              {
                case 0x48474854:
                  v43 = 5;
LABEL_44:
                  v55 = v43;
                  goto LABEL_45;
                case 0x6974616C:
                  v43 = 4;
                  goto LABEL_44;
                case 0x6F70737A:
                  v43 = 3;
                  goto LABEL_44;
              }
            }
          }
        }

        else
        {
LABEL_14:
        }

        v21 = v63;
        v19 = v65;
        v22 = v73;
        v24 = v69;
        v23 = v71;
        v25 = v67;
      }

LABEL_16:
      ++v20;
      if (!--v17)
      {
        v64 = v21;
        v66 = v19;
        v74 = v22;
        v70 = v24;
        v72 = v23;
        v68 = v25;
        swift_unknownObjectRelease();

        v15 = v68;
        v14 = v70;
        v13 = v72;
        v12 = v74;
        v11 = v64;
        v8 = v66;
        v7 = v80;
        v9 = v78;
        v10 = v77;
        goto LABEL_10;
      }
    }
  }

  swift_unknownObjectRelease();

LABEL_9:
  v8 = 0uLL;
  v9 = 1;
  v10 = 1;
  v11 = 0uLL;
  v12 = 0uLL;
  v13 = 0uLL;
  v14 = 0uLL;
  v15 = 0uLL;
LABEL_10:
  *a1 = v14;
  *(a1 + 16) = v15;
  *(a1 + 32) = v7;
  *(a1 + 40) = v12;
  *(a1 + 56) = v13;
  *(a1 + 72) = v9;
  *(a1 + 80) = v8;
  *(a1 + 96) = v11;
  *(a1 + 112) = v10;
  return result;
}

uint64_t EnvironmentValues.designIdiom.getter()
{
  sub_18AE7A260();

  return sub_18AFCC484();
}

uint64_t DesignIdiom.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t (*EnvironmentValues.designIdiom.modify(void *a1))(uint64_t a1)
{
  *a1 = v1;
  a1[1] = sub_18AE7A260();
  sub_18AFCC484();
  return sub_18AFC298C;
}

uint64_t getEnumTagSinglePayload for DesignIdiom(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DesignIdiom(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_18AFC2B18@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a4;
  v36 = a2;
  v32 = a1;
  v33 = a3;
  v39 = a7;
  v9 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58);
  sub_18AFC3004(&qword_1EA998B60);
  v15 = sub_18AFCBDC4();
  v34 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = sub_18AFCC624();
  v38 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v31 - v22;
  if (v36 & 1) != 0 || (v35)
  {
    sub_18AEADA5C(v37, a5, a6);
    sub_18AEADA5C(v14, a5, a6);
    v46 = sub_18AFC3004(&qword_1EA998B88);
    v47 = a6;
    swift_getWitnessTable();
    sub_18AEB5360(v11, v15, a5);
    v24 = *(v9 + 8);
    v24(v11, a5);
    v24(v14, a5);
  }

  else
  {
    v25 = swift_allocObject();
    v25[2] = a5;
    v25[3] = a6;
    v26 = v33;
    v25[4] = v32;
    v25[5] = v26;
    MEMORY[0x1EEE9AC00](v25);
    *(&v31 - 4) = a5;
    *(&v31 - 3) = a6;
    *(&v31 - 2) = v37;
    sub_18AFC313C(sub_18AFC3130, (&v31 - 6), v17);

    v40 = sub_18AFC3004(&qword_1EA998B88);
    v41 = a6;
    WitnessTable = swift_getWitnessTable();
    sub_18AEADA5C(v17, v15, WitnessTable);
    v28 = *(v34 + 8);
    v28(v17, v15);
    sub_18AEADA5C(v20, v15, WitnessTable);
    sub_18AEB5268(v17, v15);
    v28(v17, v15);
    v28(v20, v15);
  }

  v44 = sub_18AFC3004(&qword_1EA998B88);
  v45 = a6;
  v42 = swift_getWitnessTable();
  v43 = a6;
  v29 = swift_getWitnessTable();
  sub_18AEADA5C(v23, v21, v29);
  return (*(v38 + 8))(v23, v21);
}

uint64_t sub_18AFC3004(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA998B58);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_18AFC3054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEADA5C(v6, v9, v10);
  sub_18AEADA5C(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_18AFC313C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_18AFC31B4();
  return sub_18AFC3A04(a1, a2, &type metadata for BaselineLayout, v7, v9, v8, a3);
}

unint64_t sub_18AFC31B4()
{
  result = qword_1EA99C098;
  if (!qword_1EA99C098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C098);
  }

  return result;
}

uint64_t sub_18AFC3218(uint64_t a1, char a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = sub_18AFCBD64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AFC3BAC(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_18AF0A900(v5);
  }

  (*(v7 + 32))(v9, v5, v6);
  v11[8] = a2 & 1;
  v11[0] = 0;
  sub_18AFCBD44();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_18AFC33FC(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, uint64_t a5, char a6)
{
  v11 = sub_18AFCBF34();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v30[-v16];
  v18 = sub_18AFCBD64();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v30[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AFC3BAC(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_18AF0A900(v17);
  }

  (*(v19 + 32))(v21, v17, v18);
  v23 = a6 & 1;
  v30[40] = v23;
  v30[32] = 0;
  sub_18AFCBD34();
  v24 = sub_18AFCC4C4();
  MEMORY[0x18CFEB280](v24);
  v26 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  if (v25)
  {
    CGRectGetMinX(*&v26);
    v31.origin.x = a1;
    v31.origin.y = a2;
    v31.size.width = a3;
    v31.size.height = a4;
    CGRectGetMinY(v31);
    sub_18AFCDC54();
    v30[24] = v23;
    v30[16] = 0;
  }

  else
  {
    CGRectGetMinX(*&v26);
    v32.origin.x = a1;
    v32.origin.y = a2;
    v32.size.width = a3;
    v32.size.height = a4;
    CGRectGetMinY(v32);
    sub_18AFCDC54();
    v30[8] = v23;
    v30[0] = 0;
  }

  sub_18AFCBD54();
  (*(v12 + 8))(v14, v11);
  return (*(v19 + 8))(v21, v18);
}

void (*sub_18AFC377C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

unint64_t sub_18AFC3808()
{
  result = qword_1EA99C0A0;
  if (!qword_1EA99C0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C0A0);
  }

  return result;
}

uint64_t sub_18AFC385C@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  if (a1)
  {
    v14 = sub_18AFCC8B4();
  }

  else
  {
    v14 = sub_18AFCC844();
  }

  v15 = v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a6;
  *(v16 + 40) = a7;
  *(v16 + 48) = v15;
  *(v16 + 49) = a2 & 1;
  MEMORY[0x1EEE9AC00](v16);
  v18[2] = a3;
  v18[3] = a4;
  v18[4] = v7;
  sub_18AFC5870(sub_18AFC3D14, v18, a5);
}

uint64_t sub_18AFC3944@<X0>(char a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v13 = MEMORY[0x18CFEBC30]();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  *(v14 + 32) = a5;
  *(v14 + 40) = a6;
  *(v14 + 48) = v13;
  *(v14 + 49) = a1;
  v16[2] = a2;
  v16[3] = a3;
  v17 = v6;
  sub_18AFC5870(sub_18AFC5AA8, v16, a4);
}

uint64_t sub_18AFC3A04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19[0] = a6;
  v19[1] = a7;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_18AFCBBE4();
  v17 = MEMORY[0x1EEE9AC00](v16);
  (*(v13 + 16))(v15, v7, a3, v17);
  sub_18AFCBBF4();
  v19[4] = a3;
  v19[5] = a4;
  v19[6] = a5;
  v19[7] = v19[0];
  v19[8] = a1;
  v19[9] = a2;
  swift_getWitnessTable();
  return sub_18AFCBDD4();
}

uint64_t sub_18AFC3BAC@<X0>(uint64_t a1@<X8>)
{
  sub_18AFCBE84();
  sub_18AF0A8A8();
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  if (v9[4] == v9[0])
  {
    v2 = sub_18AFCBD64();
    return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  }

  else
  {
    v4 = sub_18AFCE004();
    v6 = v5;
    v7 = sub_18AFCBD64();
    v8 = *(v7 - 8);
    (*(v8 + 16))(a1, v6, v7);
    v4(v9, 0);
    return (*(v8 + 56))(a1, 0, 1, v7);
  }
}

unint64_t sub_18AFC3D34()
{
  result = qword_1EA99C0A8;
  if (!qword_1EA99C0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C0A8);
  }

  return result;
}

uint64_t sub_18AFC3D88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEADA5C(v6, v9, v10);
  sub_18AEADA5C(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_18AFC3E64(unsigned __int8 a1)
{
  if (sub_18AFCC884() == a1 || sub_18AFCC8A4() == a1 || sub_18AFCC844() == a1)
  {
    return 0;
  }

  if (sub_18AFCC864() == a1 || sub_18AFCC874() == a1 || sub_18AFCC8B4() == a1)
  {
    return 1;
  }

  return 2;
}

uint64_t sub_18AFC3EF8(unsigned __int8 a1)
{
  if (sub_18AFCC884() == a1 || sub_18AFCC8A4() == a1 || sub_18AFCC844() == a1)
  {
    return 1;
  }

  if (sub_18AFCC864() == a1 || sub_18AFCC874() == a1)
  {
    return 0;
  }

  return 2 * (sub_18AFCC8B4() != a1);
}

void sub_18AFC3F8C(uint64_t a1@<X0>, double a2@<X1>, int a3@<W2>, double a4@<X3>, int a5@<W4>, int a6@<W5>, __int16 a7@<W6>, double *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v115 = a6;
  v116 = a4;
  v117 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v104 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v114 = &v104 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v104 - v26;
  v28 = sub_18AFC3E64(a7);
  if (v28 == 2 || (v29 = v28, sub_18AFC3EF8(a7) == 2))
  {
    sub_18AFC596C(v117, v19);
    v30 = sub_18AFCBD64();
    v31 = *(v30 - 8);
    if ((*(v31 + 48))(v19, 1, v30) == 1)
    {
      sub_18AF0A900(v19);
      v32 = 0.0;
      v33 = 0.0;
    }

    else
    {
      LOBYTE(v118[0]) = a3 & 1;
      v119 = a5 & 1;
      sub_18AFCBD44();
      v32 = v34;
      v33 = v35;
      (*(v31 + 8))(v19, v30);
    }

    v36 = sub_18AFC59DC(0.0);
    goto LABEL_7;
  }

  v40 = sub_18AFC59DC(a10);
  v112 = v41;
  v113 = v42;
  v44 = v43;
  v45 = sub_18AFC59DC(a9);
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v52 = sub_18AFCC834();
  v53 = sub_18AFCC834();
  v111 = a2;
  if (v52 == v53)
  {
    v54 = a3;
  }

  else
  {
    a2 = v116;
    v54 = a5;
  }

  v55 = sub_18AFCC834();
  if (v55 == sub_18AFCC834())
  {
    v108 = a2;
    v107 = 0.0;
    v106 = 1;
  }

  else
  {
    v107 = a2;
    v106 = v54;
    LOBYTE(v54) = 1;
    v108 = 0.0;
  }

  sub_18AFC596C(v117, v27);
  v56 = sub_18AFCBD64();
  v57 = *(v56 - 8);
  v58 = *(v57 + 48);
  v110 = v57 + 48;
  v109 = v58;
  v59 = v58(v27, 1, v56);
  v105 = v57;
  if (v59 == 1)
  {
    sub_18AF0A900(v27);
    v60 = 0.0;
    v61 = 0.0;
  }

  else
  {
    LOBYTE(v118[0]) = v106 & 1;
    v119 = v54 & 1;
    sub_18AFCBD44();
    v60 = v62;
    v61 = v63;
    (*(v57 + 8))(v27, v56);
  }

  v64 = v111;
  v65 = sub_18AFCC834();
  v66 = sub_18AFCC834();
  if (v65 == v66)
  {
    v67 = a3;
  }

  else
  {
    v67 = a5;
  }

  if (v67)
  {
    v68 = 0.0;
    sub_18AFC596C(v117, v22);
    if (v109(v22, 1, v56) == 1)
    {
      sub_18AF0A900(v22);
      v69 = 0.0;
    }

    else
    {
      LOBYTE(v118[0]) = a3 & 1;
      v119 = a5 & 1;
      sub_18AFCBD44();
      v68 = v88;
      v69 = v89;
      (*(v105 + 8))(v22, v56);
    }

    v36 = v40;
    v37 = v112;
    v39 = v113;
    v38 = v44;
    v90 = 0.0 - v44;
    if (v68 - (0.0 - v112) - (0.0 - v113) < 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v68 - (0.0 - v112) - (0.0 - v113);
    }

    v91 = v69 - (0.0 - v40);
LABEL_48:
    v92 = v91 - v90;
    if (v92 < 0.0)
    {
      v33 = 0.0;
    }

    else
    {
      v33 = v92;
    }

    goto LABEL_7;
  }

  v111 = v51;
  v70 = v49;
  v71 = v47;
  v72 = v45;
  if (v65 == v66)
  {
    v73 = v64;
  }

  else
  {
    v73 = v116;
  }

  v74 = v73;
  v75 = sub_18AFCC834();
  if (v75 == sub_18AFCC834())
  {
    v76 = v60;
  }

  else
  {
    v76 = v61;
  }

  v77 = v40 + v44;
  v78 = v112;
  v79 = v113;
  if ((v29 & 1) == 0)
  {
    v77 = v112 + v113;
  }

  if (v77 + v76 <= v74)
  {
    v86 = v40;
    v87 = v44;
    v84 = a3 & 1;
    LOBYTE(v118[0]) = a3 & 1;
    v85 = a5 & 1;
    v119 = a5 & 1;
    goto LABEL_52;
  }

  v80 = sub_18AFCC834();
  if (v80 == sub_18AFCC834())
  {
    v81 = v60;
  }

  else
  {
    v81 = v61;
  }

  if (v29)
  {
    v82 = v72 + v70;
  }

  else
  {
    v82 = v71 + v111;
  }

  v83 = v82 + v81;
  if (v83 <= v74)
  {
    v93 = sub_18AFCC834();
    if (v93 == sub_18AFCC834())
    {
      v94 = v60;
    }

    else
    {
      v94 = v61;
    }

    v36 = sub_18AFC59DC((v74 - v94) * 0.5);
    v90 = 0.0 - v38;
    if (v60 - (0.0 - v37) - (0.0 - v39) < 0.0)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = v60 - (0.0 - v37) - (0.0 - v39);
    }

    v91 = v61 - (0.0 - v36);
    goto LABEL_48;
  }

  if ((v115 & 1) != 0 && (a7 & 0x100) != 0 && v83 > 2.0)
  {
    v84 = a3 & 1;
    LOBYTE(v118[0]) = a3 & 1;
    v85 = a5 & 1;
    v119 = a5 & 1;
    v86 = v40;
    v78 = v112;
    v79 = v113;
    v87 = v44;
LABEL_52:
    sub_18AFC4760(v84, v85, v117, v118, v86, v78, v87, v79);
    v32 = v118[0];
    v33 = v118[1];
    v36 = v118[2];
    v37 = v118[3];
    v38 = v118[4];
    v39 = v118[5];
    goto LABEL_7;
  }

  v95 = v114;
  v96 = v105;
  v97 = v109;
  sub_18AFC596C(v117, v114);
  v98 = v97(v95, 1, v56);
  v99 = v111;
  if (v98 == 1)
  {
    sub_18AF0A900(v95);
    v100 = 0.0;
    v101 = 0.0;
  }

  else
  {
    LOBYTE(v118[0]) = a3 & 1;
    v119 = a5 & 1;
    sub_18AFCBD44();
    v100 = v102;
    v101 = v103;
    (*(v96 + 8))(v95, v56);
  }

  if (v100 - (0.0 - v71) - (0.0 - v99) < 0.0)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = v100 - (0.0 - v71) - (0.0 - v99);
  }

  if (v101 - (0.0 - v72) - (0.0 - v70) < 0.0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = v101 - (0.0 - v72) - (0.0 - v70);
  }

  v36 = v72;
  v37 = v71;
  v38 = v70;
  v39 = v99;
LABEL_7:
  *a8 = v32;
  a8[1] = v33;
  a8[2] = v36;
  a8[3] = v37;
  a8[4] = v38;
  a8[5] = v39;
}

uint64_t sub_18AFC4760@<X0>(char a1@<W1>, char a2@<W3>, uint64_t a3@<X4>, double *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28[-v17];
  v19 = 0.0;
  sub_18AFC596C(a3, &v28[-v17]);
  v20 = sub_18AFCBD64();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    result = sub_18AF0A900(v18);
    v23 = 0.0;
  }

  else
  {
    v28[8] = a1 & 1;
    v28[0] = a2 & 1;
    sub_18AFCBD44();
    v19 = v24;
    v23 = v25;
    result = (*(v21 + 8))(v18, v20);
  }

  v26 = 0.0;
  v27 = v19 - (0.0 - a6) - (0.0 - a8);
  if (v27 < 0.0)
  {
    v27 = 0.0;
  }

  if (v23 - (0.0 - a5) - (0.0 - a7) >= 0.0)
  {
    v26 = v23 - (0.0 - a5) - (0.0 - a7);
  }

  *a4 = v27;
  a4[1] = v26;
  a4[2] = a5;
  a4[3] = a6;
  a4[4] = a7;
  a4[5] = a8;
  return result;
}

uint64_t sub_18AFC4964(uint64_t a1, char a2, uint64_t a3, char a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, double a9, double a10, uint64_t a11, uint64_t a12, int a13)
{
  LODWORD(v34) = a13;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v35[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v35[-1] - v27;
  v29 = sub_18AFCBD64();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v35[-1] - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC3BAC(v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    return sub_18AF0A900(v28);
  }

  (*(v30 + 32))(v32, v28, v29);
  (*(v30 + 16))(v25, v32, v29);
  (*(v30 + 56))(v25, 0, 1, v29);
  LOBYTE(v35[0]) = a2 & 1;
  v36 = a4 & 1;
  sub_18AFC3F8C(v25, *&a1, a2 & 1, *&a3, a4 & 1, 1, LOWORD(v34) & 0x1FF, v35, a9, a10);
  v34 = v35[4];
  sub_18AF0A900(v25);
  v37.origin.x = a5;
  v37.origin.y = a6;
  v37.size.width = a7;
  v37.size.height = a8;
  CGRectGetMinX(v37);
  v38.origin.x = a5;
  v38.origin.y = a6;
  v38.size.width = a7;
  v38.size.height = a8;
  CGRectGetMinY(v38);
  sub_18AFCDC54();
  LOBYTE(v35[0]) = a2 & 1;
  v36 = a4 & 1;
  sub_18AFCBD54();
  return (*(v30 + 8))(v32, v29);
}

uint64_t sub_18AFC4C9C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, uint64_t a13, int a14)
{
  v44 = a14;
  v45 = a5;
  v46 = a1;
  v23 = sub_18AFCBF34();
  v47 = *(v23 - 8);
  v48 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  v32 = sub_18AFCBD64();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC3BAC(v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_18AF0A900(v31);
    *&result = 0.0;
  }

  else
  {
    (*(v33 + 32))(v35, v31, v32);
    (*(v33 + 16))(v28, v35, v32);
    (*(v33 + 56))(v28, 0, 1, v32);
    LOBYTE(v49[0]) = a3 & 1;
    v37 = v45;
    v50 = v45 & 1;
    sub_18AFC3F8C(v28, *&a2, a3 & 1, *&a4, v45 & 1, 1, v44 & 0x1FF, v49, a10, a11);
    v38 = v49[2];
    sub_18AF0A900(v28);
    LOBYTE(v49[0]) = a3 & 1;
    v50 = v37 & 1;
    sub_18AFCBD34();
    v39 = MEMORY[0x18CFEB280](v46);
    if (v40)
    {
      v41 = v39;
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      return v41;
    }

    else
    {
      v42 = *&v39;
      v51.origin.x = a6;
      v51.origin.y = a7;
      v51.size.width = a8;
      v51.size.height = a9;
      MinY = CGRectGetMinY(v51);
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      *&result = v38 + MinY + v42;
    }
  }

  return result;
}

uint64_t sub_18AFC5094(uint64_t a1, uint64_t a2, char a3, uint64_t a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, double a10, double a11, uint64_t a12, uint64_t a13, int a14)
{
  v44 = a14;
  v45 = a5;
  v46 = a1;
  v23 = sub_18AFCBF34();
  v47 = *(v23 - 8);
  v48 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v44 - v30;
  v32 = sub_18AFCBD64();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v44 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFC3BAC(v31);
  if ((*(v33 + 48))(v31, 1, v32) == 1)
  {
    sub_18AF0A900(v31);
    *&result = 0.0;
  }

  else
  {
    (*(v33 + 32))(v35, v31, v32);
    (*(v33 + 16))(v28, v35, v32);
    (*(v33 + 56))(v28, 0, 1, v32);
    LOBYTE(v49[0]) = a3 & 1;
    v37 = v45;
    v50 = v45 & 1;
    sub_18AFC3F8C(v28, *&a2, a3 & 1, *&a4, v45 & 1, 1, v44 & 0x1FF, v49, a10, a11);
    v38 = v49[3];
    sub_18AF0A900(v28);
    LOBYTE(v49[0]) = a3 & 1;
    v50 = v37 & 1;
    sub_18AFCBD34();
    v39 = MEMORY[0x18CFEB290](v46);
    if (v40)
    {
      v41 = v39;
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      return v41;
    }

    else
    {
      v42 = *&v39;
      v51.origin.x = a6;
      v51.origin.y = a7;
      v51.size.width = a8;
      v51.size.height = a9;
      MinX = CGRectGetMinX(v51);
      (*(v47 + 8))(v25, v48);
      (*(v33 + 8))(v35, v32);
      *&result = v38 + MinX + v42;
    }
  }

  return result;
}

double sub_18AFC548C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = *v4;
  v13 = *(v4 + 8);
  v14 = *(v4 + 16);
  v15 = *(v4 + 17);
  sub_18AFC3BAC(&v19 - v10);
  LOBYTE(v20) = a2 & 1;
  v21 = a4 & 1;
  if (v15)
  {
    v16 = 256;
  }

  else
  {
    v16 = 0;
  }

  sub_18AFC3F8C(v11, *&a1, a2 & 1, *&a3, a4 & 1, 0, v16 | v14, &v20, v12, v13);
  v17 = v20;
  sub_18AF0A900(v11);
  return v17;
}

uint64_t sub_18AFC55A8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v11 = a2 & 1;
  v12 = a4 & 1;
  if (*(v10 + 17))
  {
    v13 = 256;
  }

  else
  {
    v13 = 0;
  }

  return sub_18AFC4964(a1, v11, a3, v12, a7, a8, a9, a10, *v10, *(v10 + 8), a5, a6, v13 | *(v10 + 16));
}

uint64_t sub_18AFC564C(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t (*a16)(__n128, __n128, __n128, __n128, __n128, __n128))
{
  a5.n128_u64[0] = *v16;
  a6.n128_u64[0] = v16[1];
  return a16(a1, a2, a3, a4, a5, a6);
}

void (*sub_18AFC56A4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AEE786C;
}

uint64_t sub_18AFC572C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a4 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v17 - v13;
  v12();
  sub_18AEADA5C(v11, a4, a6);
  v15 = *(v8 + 8);
  v15(v11, a4);
  sub_18AEADA5C(v14, a4, a6);
  return (v15)(v14, a4);
}

uint64_t sub_18AFC5870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_18AFC3D34();
  return sub_18AFC3A04(a1, a2, &type metadata for FlexiblePaddingLayout, v7, v9, v8, a3);
}

unint64_t sub_18AFC5918()
{
  result = qword_1EA99C0B0[0];
  if (!qword_1EA99C0B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99C0B0);
  }

  return result;
}

uint64_t sub_18AFC596C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_18AFC59DC(double a1)
{
  v2 = sub_18AFCC864();
  sub_18AFCC894();
  if (sub_18AFCC894() == v2)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0.0;
  }

  sub_18AFCC884();
  sub_18AFCC894();
  sub_18AFCC894();
  sub_18AFCC874();
  sub_18AFCC894();
  sub_18AFCC894();
  sub_18AFCC8A4();
  sub_18AFCC894();
  sub_18AFCC894();
  return v3;
}

uint64_t sub_18AFC5B08()
{
  sub_18AFCD104();
  type metadata accessor for CGRect(0);
  sub_18AFCCB54();
}

uint64_t sub_18AFC5BC8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  type metadata accessor for GeometryMarker();
  swift_getWitnessTable();
  sub_18AFCC694();
  type metadata accessor for CGRect(255);
  sub_18AFCC714();
  v1 = sub_18AFCC044();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v13 - v6;
  WitnessTable = swift_getWitnessTable();
  sub_18AFC5B08();
  v9 = swift_getWitnessTable();
  v13[2] = WitnessTable;
  v13[3] = v9;
  v10 = swift_getWitnessTable();
  sub_18AEADA5C(v4, v1, v10);
  v11 = *(v2 + 8);
  v11(v4, v1);
  sub_18AEADA5C(v7, v1, v10);
  return (v11)(v7, v1);
}

uint64_t GlassGroupContext.multiSegmentInSidebar.getter()
{
  v1 = v0[2];
  if (*v0 == 1)
  {
    v1 &= v0[1] ^ 1;
  }

  return v1 & 1;
}

uint64_t EnvironmentValues.glassGroupContext.getter()
{
  sub_18AEC8720();

  return sub_18AFCC484();
}

DesignLibrary::GlassGroupContext __swiftcall GlassGroupContext.init(isFirstItemInGroup:isLastItemInGroup:inGlassSidebar:)(Swift::Bool isFirstItemInGroup, Swift::Bool isLastItemInGroup, Swift::Bool inGlassSidebar)
{
  *v3 = isFirstItemInGroup;
  v3[1] = isLastItemInGroup;
  v3[2] = inGlassSidebar;
  result.isFirstItemInGroup = isFirstItemInGroup;
  return result;
}

DesignLibrary::GlassGroupContext __swiftcall GlassGroupContext.init(isFirstItemInGroup:isLastItemInGroup:)(Swift::Bool isFirstItemInGroup, Swift::Bool isLastItemInGroup)
{
  *v2 = isFirstItemInGroup;
  v2[1] = isLastItemInGroup;
  v2[2] = 0;
  result.isFirstItemInGroup = isFirstItemInGroup;
  return result;
}

uint64_t GlassGroupContext.hash(into:)()
{
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2B4();
}

uint64_t GlassGroupContext.hashValue.getter()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC60AC()
{
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2B4();
}

uint64_t sub_18AFC60F8()
{
  sub_18AFCE294();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  sub_18AFCE2B4();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC6170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_18AFC6280();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.glassGroupContext.modify(void *a1))(_BYTE *a1)
{
  *a1 = v1;
  a1[1] = sub_18AEC8720();
  sub_18AFCC484();
  return sub_18AFC6234;
}

uint64_t sub_18AFC6234(_BYTE *a1)
{
  v1 = a1[16];
  v2 = a1[18];
  a1[20] = a1[17];
  a1[21] = v2;
  a1[19] = v1;
  return sub_18AFCC494();
}

unint64_t sub_18AFC6280()
{
  result = qword_1EA99C138;
  if (!qword_1EA99C138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C138);
  }

  return result;
}

uint64_t InteractionState.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC6390()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18AFCE294();
  sub_18AF4AF54(v1, v2);
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC63FC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_18AFCE294();
  sub_18AF4AF54(v1, v2);
  return sub_18AFCE2E4();
}

unint64_t sub_18AFC647C()
{
  result = qword_1EA99C140;
  if (!qword_1EA99C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C140);
  }

  return result;
}

uint64_t sub_18AFC64D0()
{
  v0 = sub_18AFCBB54();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v4[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_18AFCC224();
  sub_18AEB2440();
  sub_18AFCC484();
  return sub_18AFC6568(v2, v4[15]);
}

uint64_t sub_18AFC6568(uint64_t a1, char a2)
{
  v4 = sub_18AFCBB54();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 88))(a1, v4);
  if (v6 == *MEMORY[0x1E697DC08])
  {
    if (a2)
    {
      return 5;
    }

    else
    {
      return 0;
    }
  }

  else if (v6 == *MEMORY[0x1E697DC20])
  {
    if (a2)
    {
      return 6;
    }

    else
    {
      return 1;
    }
  }

  else if (v6 == *MEMORY[0x1E697DC28])
  {
    if (a2)
    {
      return 7;
    }

    else
    {
      return 2;
    }
  }

  else if (v6 == *MEMORY[0x1E697DC10])
  {
    return 3;
  }

  else if (v6 == *MEMORY[0x1E697DC00])
  {
    return 4;
  }

  else
  {
    (*(v5 + 8))(a1, v4);
    return 2;
  }
}

uint64_t EnvironmentValues.wantsPreSolariumMetrics.getter()
{
  sub_18AEB2440();
  sub_18AFCC484();
  return v1;
}

uint64_t (*EnvironmentValues.wantsPreSolariumMetrics.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_18AEB2440();
  sub_18AFCC484();
  *(a1 + 16) = *(a1 + 17);
  return sub_18AFC67A4;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_18AFC6808(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 57))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18AFC6828(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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

  *(result + 57) = v3;
  return result;
}

uint64_t sub_18AFC6874()
{
  if (*(v0 + 8) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v1 = *v0;
    sub_18AFCE2B4();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x18CFED640](v2);
  }

  if (*(v0 + 24) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v3 = v0[2];
    sub_18AFCE2B4();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x18CFED640](v4);
  }

  if (*(v0 + 40) == 1)
  {
    sub_18AFCE2B4();
  }

  else
  {
    v5 = v0[4];
    sub_18AFCE2B4();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x18CFED640](v6);
  }

  if (*(v0 + 56) == 1)
  {
    return sub_18AFCE2B4();
  }

  v8 = v0[6];
  sub_18AFCE2B4();
  if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x18CFED640](v9);
}

uint64_t sub_18AFC6960()
{
  sub_18AFCE294();
  sub_18AFC6874();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC69A4()
{
  sub_18AFCE294();
  sub_18AFC6874();
  return sub_18AFCE2E4();
}

BOOL sub_18AFC69E0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_18AFC6A94(v5, v7);
}

unint64_t sub_18AFC6A40()
{
  result = qword_1EA99C148;
  if (!qword_1EA99C148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C148);
  }

  return result;
}

BOOL sub_18AFC6A94(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  v3 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  v4 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v5 = *(a2 + 56);
  if ((*(a1 + 56) & 1) == 0)
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    return (v5 & 1) == 0;
  }

  return (*(a2 + 56) & 1) != 0;
}

uint64_t sub_18AFC6B40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_18AFCC864();
  sub_18AFCC894();
  v7 = sub_18AFCC894();
  if (v7 == v6)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v21 = v8;
  v9 = (v7 != v6) | a2;
  v10 = sub_18AFCC884();
  sub_18AFCC894();
  v11 = sub_18AFCC894();
  if (v11 == v10)
  {
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = (v11 != v10) | a2;
  v14 = sub_18AFCC874();
  sub_18AFCC894();
  v15 = sub_18AFCC894();
  if (v15 == v14)
  {
    v16 = a1;
  }

  else
  {
    v16 = 0;
  }

  v17 = (v15 != v14) | a2;
  v18 = sub_18AFCC8A4();
  sub_18AFCC894();
  result = sub_18AFCC894();
  *a3 = v21;
  if (result == v18)
  {
    v20 = a1;
  }

  else
  {
    v20 = 0;
  }

  *(a3 + 8) = v9 & 1;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13 & 1;
  *(a3 + 32) = v16;
  *(a3 + 40) = v17 & 1;
  *(a3 + 48) = v20;
  *(a3 + 56) = (result != v18) | a2 & 1;
  return result;
}

uint64_t sub_18AFC6C88@<X0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  v10 = sub_18AFCC864();
  sub_18AFCC894();
  v11 = sub_18AFCC894();
  v12 = v11 != v10;
  if (v11 == v10)
  {
    v13 = a2;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = sub_18AFCC884();
  sub_18AFCC894();
  v15 = sub_18AFCC894();
  v16 = v15 != v14;
  if (v15 == v14)
  {
    v17 = a3;
  }

  else
  {
    v17 = 0.0;
  }

  v18 = sub_18AFCC874();
  sub_18AFCC894();
  v19 = sub_18AFCC894();
  v20 = v19 != v18;
  if (v19 == v18)
  {
    v21 = a4;
  }

  else
  {
    v21 = 0.0;
  }

  v22 = sub_18AFCC8A4();
  sub_18AFCC894();
  result = sub_18AFCC894();
  v24 = a5;
  if (result != v22)
  {
    v24 = 0.0;
  }

  *a1 = v13;
  *(a1 + 8) = v12;
  *(a1 + 16) = v17;
  *(a1 + 24) = v16;
  *(a1 + 32) = v21;
  *(a1 + 40) = v20;
  *(a1 + 48) = v24;
  *(a1 + 56) = result != v22;
  return result;
}

uint64_t RelativePosition.hashValue.getter()
{
  v1 = *v0;
  sub_18AFCE294();
  MEMORY[0x18CFED610](v1);
  return sub_18AFCE2E4();
}

unint64_t sub_18AFC6E5C()
{
  result = qword_1EA99C150;
  if (!qword_1EA99C150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C150);
  }

  return result;
}

uint64_t sub_18AFC6F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = sub_18AFC72C8(&qword_1EA99C160, 255, type metadata accessor for _ImpossibleExecutor);

  return a4(a1, v6, v7);
}

uint64_t sub_18AFC70D4()
{
  type metadata accessor for _ImpossibleActor();
  result = swift_allocObject();
  qword_1EA9B0080 = result;
  return result;
}

uint64_t sub_18AFC716C()
{
  type metadata accessor for _ImpossibleExecutor();
  swift_initStaticObject();
  sub_18AFC72C8(&qword_1EA99C168, 255, type metadata accessor for _ImpossibleExecutor);
  return sub_18AFCDF34();
}

uint64_t sub_18AFC71E8()
{
  if (qword_1EA997940 != -1)
  {
    swift_once();
  }
}

uint64_t sub_18AFC7244(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for _ImpossibleActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

uint64_t sub_18AFC72C8(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_18AFC7314()
{
  v1 = v0;
  v2 = sub_18AFCC474();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ScaledPadding();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C180);
  sub_18AFCBC24();
  v7 = v34;
  v8 = sub_18AFCC864();
  sub_18AFCC894();
  v9 = 0.0;
  if (sub_18AFCC894() == v8)
  {
    v10 = v1 + *(v6 + 28);
    if (*(v10 + 8))
    {
      v11 = *v1;
      if (*(v1 + 32) == 1)
      {
        v9 = *v1;
      }

      else
      {
        v12 = *(v1 + 8);
        v32 = *(v1 + 16);
        v33 = v12;
        v13 = *(v1 + 24);

        sub_18AFCE024();
        v14 = sub_18AFCC7D4();
        sub_18AFCBA64();

        sub_18AFCC464();
        swift_getAtKeyPath();
        sub_18AFC7FD8(v11, v33, v32, v13, 0);
        (*(v3 + 8))(v5, v2);
        v9 = v34;
      }
    }

    else
    {
      v9 = *v10;
    }
  }

  v15 = sub_18AFCC884();
  sub_18AFCC894();
  if (sub_18AFCC894() == v15 && (*(v1 + *(v6 + 28) + 24) & 1) != 0)
  {
    v16 = *(v1 + 8);
    if (*(v1 + 32) != 1)
    {
      v17 = *v1;
      v18 = *(v1 + 16);
      v32 = *(v1 + 24);
      v33 = v18;

      sub_18AFCE024();
      v19 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AFC7FD8(v17, v16, v33, v32, 0);
      (*(v3 + 8))(v5, v2);
    }
  }

  v20 = sub_18AFCC874();
  sub_18AFCC894();
  if (sub_18AFCC894() == v20 && (*(v1 + *(v6 + 28) + 40) & 1) != 0)
  {
    v21 = *(v1 + 16);
    if (*(v1 + 32) != 1)
    {
      v23 = *v1;
      v22 = *(v1 + 8);
      v32 = *(v1 + 24);
      v33 = v22;

      sub_18AFCE024();
      v24 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AFC7FD8(v23, v33, v21, v32, 0);
      (*(v3 + 8))(v5, v2);
    }
  }

  v25 = sub_18AFCC8A4();
  sub_18AFCC894();
  if (sub_18AFCC894() == v25 && (*(v1 + *(v6 + 28) + 56) & 1) != 0)
  {
    v26 = *(v1 + 24);
    if (*(v1 + 32) != 1)
    {
      v27 = *v1;
      v28 = *(v1 + 8);
      v29 = *(v1 + 16);

      sub_18AFCE024();
      v30 = sub_18AFCC7D4();
      sub_18AFCBA64();

      sub_18AFCC464();
      swift_getAtKeyPath();
      sub_18AFC7FD8(v27, v28, v29, v26, 0);
      (*(v3 + 8))(v5, v2);
    }
  }

  return ((v7 + -100.0) * 0.005 + 1.0) * v9;
}

uint64_t sub_18AFC783C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_18AFC7314();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_18AFCC854();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C1A8);
  (*(*(v12 - 8) + 16))(a2, a1, v12);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C1B0);
  v14 = a2 + *(result + 36);
  *v14 = v11;
  *(v14 + 8) = v4;
  *(v14 + 16) = v6;
  *(v14 + 24) = v8;
  *(v14 + 32) = v10;
  *(v14 + 40) = 0;
  return result;
}

uint64_t View.scaledPadding(_:)(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v12 = type metadata accessor for ScaledPadding();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  v14[32] = 0;
  *v14 = KeyPath;
  *(v14 + 1) = 0;
  *&v19[0] = 0x4059000000000000;
  sub_18AFC7D44();
  sub_18AFCBC14();
  v14[*(v12 + 24)] = sub_18AFCC854();
  sub_18AFCC854();
  sub_18AFC6C88(v19, a3, a4, a5, a6);
  v16 = &v14[*(v12 + 28)];
  v17 = v19[1];
  *v16 = v19[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v20[0];
  *(v16 + 41) = *(v20 + 9);
  MEMORY[0x18CFEBFA0](v14, a1, v12, a2);
  return sub_18AFC7D98(v14);
}

uint64_t type metadata accessor for ScaledPadding()
{
  result = qword_1EA99C188;
  if (!qword_1EA99C188)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t View.scaledPadding(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for ScaledPadding();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  v12[32] = 0;
  *v12 = KeyPath;
  *(v12 + 1) = 0;
  *&v17[0] = 0x4059000000000000;
  sub_18AFC7D44();
  sub_18AFCBC14();
  v12[*(v10 + 24)] = a1;
  sub_18AFC6B40(a2, a3 & 1, v17);
  v14 = &v12[*(v10 + 28)];
  v15 = v17[1];
  *v14 = v17[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v18[0];
  *(v14 + 41) = *(v18 + 9);
  MEMORY[0x18CFEBFA0](v12, a4, v10, a5);
  return sub_18AFC7D98(v12);
}

uint64_t View.scaledPadding(_:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = type metadata accessor for ScaledPadding();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18AFCC854();
  KeyPath = swift_getKeyPath();
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  v8[32] = 0;
  *v8 = KeyPath;
  *(v8 + 1) = 0;
  *&v14[0] = 0x4059000000000000;
  sub_18AFC7D44();
  sub_18AFCBC14();
  v8[*(v6 + 24)] = v9;
  sub_18AFC6B40(*&a3, 0, v14);
  v11 = &v8[*(v6 + 28)];
  v12 = v14[1];
  *v11 = v14[0];
  *(v11 + 1) = v12;
  *(v11 + 2) = v15[0];
  *(v11 + 41) = *(v15 + 9);
  MEMORY[0x18CFEBFA0](v8, a1, v6, a2);
  return sub_18AFC7D98(v8);
}

unint64_t sub_18AFC7D44()
{
  result = qword_1EA99C170;
  if (!qword_1EA99C170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C170);
  }

  return result;
}

uint64_t sub_18AFC7D98(uint64_t a1)
{
  v2 = type metadata accessor for ScaledPadding();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_18AFC7DF4()
{
  result = qword_1EA99C178;
  if (!qword_1EA99C178)
  {
    type metadata accessor for ScaledPadding();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C178);
  }

  return result;
}

void sub_18AFC7E74()
{
  sub_18AFC7F10();
  if (v0 <= 0x3F)
  {
    sub_18AFC7F60();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18AFC7F10()
{
  if (!qword_1EA99C198)
  {
    v0 = sub_18AFCBB64();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA99C198);
    }
  }
}

void sub_18AFC7F60()
{
  if (!qword_1EA99C1A0)
  {
    sub_18AFC7D44();
    v0 = sub_18AFCBC34();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA99C1A0);
    }
  }
}

uint64_t sub_18AFC7FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
  }

  return result;
}

unint64_t sub_18AFC7FE4()
{
  result = qword_1EA99C1B8;
  if (!qword_1EA99C1B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99C1B0);
    sub_18AFC8070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C1B8);
  }

  return result;
}

unint64_t sub_18AFC8070()
{
  result = qword_1EA99C1C0[0];
  if (!qword_1EA99C1C0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99C1A8);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA99C1C0);
  }

  return result;
}

uint64_t sub_18AFC8100@<X0>(uint64_t *a1@<X8>)
{
  sub_18AFCCDB4();
  sub_18AFCCF24();

  v2 = sub_18AFCCF34();

  *a1 = v2;
  return result;
}

double sub_18AFC8160()
{
  *&result = 1054280253;
  xmmword_1ED56C4A0 = xmmword_18AFE34F0;
  return result;
}

double sub_18AFC8174()
{
  *&result = 1054280253;
  xmmword_1EA9B0060 = xmmword_18AFE3500;
  return result;
}

uint64_t sub_18AFC8188()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      result = swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_18AFC8250(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(a3[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a3[3] - 8);
  v8 = *(v7 + 84);
  if (v6 <= v8)
  {
    v9 = *(v7 + 84);
  }

  else
  {
    v9 = *(v5 + 84);
  }

  v10 = a3[4];
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  v13 = *(*(a3[2] - 8) + 64);
  v14 = *(v7 + 80);
  v15 = *(v11 + 80);
  if (v9 <= v12)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (!a2)
  {
    return 0;
  }

  v18 = *(*(a3[3] - 8) + 64) + 7;
  v19 = v15 + 41;
  v20 = a2 - v17;
  if (a2 <= v17)
  {
    goto LABEL_34;
  }

  v21 = ((v19 + ((v18 + ((v13 + v14 + 1) & ~v14)) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(v10 - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v25 < 2)
    {
LABEL_34:
      if (v6 == v17)
      {
        v29 = *(v5 + 48);

        return v29();
      }

      else
      {
        v30 = (a1 + v13 + v14 + 1) & ~v14;
        if (v8 == v17)
        {
          v31 = *(v7 + 48);

          return v31(v30);
        }

        else
        {
          v32 = (v18 + v30) & 0xFFFFFFFFFFFFFFF8;
          if ((v16 & 0x80000000) != 0)
          {
            v34 = *(v11 + 48);

            return v34((v19 + v32) & ~v15, v12, v10);
          }

          else
          {
            v33 = *(v32 + 24);
            if (v33 >= 0xFFFFFFFF)
            {
              LODWORD(v33) = -1;
            }

            return (v33 + 1);
          }
        }
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_34;
  }

LABEL_21:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v27 = ((v19 + ((v18 + ((v13 + v14 + 1) & ~v14)) & 0xFFFFFFF8)) & ~v15) + *(*(v10 - 8) + 64);
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v17 + (v28 | v26) + 1;
}

char *sub_18AFC8548(char *result, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = *(a4[2] - 8);
  v6 = *(v5 + 84);
  v7 = *(a4[3] - 8);
  v8 = *(v7 + 84);
  v9 = *(a4[4] - 8);
  if (v6 <= v8)
  {
    v10 = *(v7 + 84);
  }

  else
  {
    v10 = *(v5 + 84);
  }

  v11 = *(*(a4[2] - 8) + 64);
  v12 = *(v7 + 80);
  v13 = *(*(a4[3] - 8) + 64);
  v14 = *(v9 + 80);
  if (v10 <= *(v9 + 84))
  {
    v15 = *(v9 + 84);
  }

  else
  {
    v15 = v10;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v16 = 0x7FFFFFFF;
  }

  else
  {
    v16 = v15;
  }

  v17 = v13 + 7;
  v18 = ((v14 + 41 + ((v13 + 7 + ((v11 + v12 + 1) & ~v12)) & 0xFFFFFFFFFFFFFFF8)) & ~v14) + *(v9 + 64);
  v19 = a3 >= v16;
  v20 = a3 - v16;
  if (v20 != 0 && v19)
  {
    if (v18 <= 3)
    {
      v25 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
      if (HIWORD(v25))
      {
        v21 = 4;
      }

      else
      {
        if (v25 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v25 < 2)
        {
          v21 = 0;
        }
      }
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v16 < a2)
  {
    v22 = ~v16 + a2;
    if (v18 < 4)
    {
      v24 = (v22 >> (8 * v18)) + 1;
      if (v18)
      {
        v26 = v22 & ~(-1 << (8 * v18));
        v27 = result;
        bzero(result, v18);
        result = v27;
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *v27 = v26;
            if (v21 > 1)
            {
LABEL_56:
              if (v21 == 2)
              {
                *&result[v18] = v24;
              }

              else
              {
                *&result[v18] = v24;
              }

              return result;
            }
          }

          else
          {
            *v27 = v22;
            if (v21 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *v27 = v26;
        v27[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v23 = result;
      bzero(result, v18);
      result = v23;
      *v23 = v22;
      v24 = 1;
      if (v21 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v21)
    {
      result[v18] = v24;
    }

    return result;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&result[v18] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *&result[v18] = 0;
LABEL_36:
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!v21)
  {
    goto LABEL_36;
  }

  result[v18] = 0;
  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v16)
  {
    v28 = *(v5 + 56);

    return v28();
  }

  else
  {
    result = (&result[v11 + 1 + v12] & ~v12);
    if (v8 == v16)
    {
      v29 = *(v7 + 56);

      return v29(result);
    }

    else
    {
      v30 = &result[v17] & 0xFFFFFFFFFFFFFFF8;
      if ((v15 & 0x80000000) != 0)
      {
        v31 = *(v9 + 56);

        return v31((v14 + 41 + v30) & ~v14);
      }

      else if ((a2 & 0x80000000) != 0)
      {
        *(v30 + 8) = 0u;
        *(v30 + 24) = 0u;
        *v30 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v30 + 24) = a2 - 1;
      }
    }
  }

  return result;
}

unint64_t sub_18AFC8934()
{
  result = qword_1EA99C248;
  if (!qword_1EA99C248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C248);
  }

  return result;
}

uint64_t sub_18AFC8988@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  sub_18AFCBB94();
  sub_18AFC8D90(a1, a2, v17, a3, a4, a5, a6, a8, a7);
  return sub_18AEFC884(v17);
}

uint64_t sub_18AFC8A44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v28 = a3;
  v15 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v27[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v27[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v22 + 16))(v21, v24, v23, v19);
  (*(v15 + 16))(v17, a1, a5);

  return sub_18AFC965C(v21, v17, a2, v28, v25, a4, a5, MEMORY[0x1E6981E70], a8, a6, a7, MEMORY[0x1E6981E60]);
}

uint64_t sub_18AFC8C2C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v17 = type metadata accessor for PositionStrokeShapeView();
  *(a9 + v17[17]) = a2;
  (*(*(a8 - 8) + 32))(a9 + v17[18], a3, a8);
  v18 = a9 + v17[19];
  v19 = *(a4 + 16);
  *v18 = *a4;
  *(v18 + 16) = v19;
  *(v18 + 32) = *(a4 + 32);
  *(a9 + v17[20]) = a5;
  return (*(*(a10 - 8) + 32))(a9 + v17[21], a6, a10);
}

uint64_t sub_18AFC8D90@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v29 = a7;
  v30 = a3;
  v31 = a4;
  v28 = a2;
  v25 = a1;
  v27 = a8;
  v12 = *(a5 - 8);
  v26 = a9;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v22 = &v24 - v21;
  sub_18AFCDBE4();
  (*(v16 + 16))(v19, v25, a6);
  (*(v12 + 16))(v14, v9, a5);
  sub_18AFC8C2C(v22, v28, v19, v30, v31, v14, AssociatedTypeWitness, a6, v27, a5);
}

uint64_t sub_18AFC8FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v60 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v52 = &v46 - v8;
  v9 = *(a1 + 24);
  v59 = v5;
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  v11 = *(a1 + 48);
  v63 = AssociatedTypeWitness;
  v64 = v9;
  v55 = v9;
  v65 = MEMORY[0x1E6981E70];
  v66 = v10;
  v46 = v10;
  v53 = v11;
  v67 = v11;
  v68 = MEMORY[0x1E6981E60];
  v12 = sub_18AFCC064();
  v57 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - v13;
  v15 = *(a1 + 32);
  v47 = *(a1 + 56);
  v16 = sub_18AFCC5F4();
  v51 = v12;
  v49 = v16;
  v48 = sub_18AFCC044();
  v58 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v54 = &v46 - v19;
  v20 = (v3 + *(a1 + 76));
  v21 = *v20;
  v22 = v3;
  v23 = v52;
  v24 = v59;
  sub_18AFCC004();
  v25 = *(a1 + 72);
  v26 = v20[3];
  v27 = v20[4];
  v29 = v20[1];
  v28 = v20[2];
  v63 = v21;
  v64 = v29;
  v65 = v28;
  v66 = v26;
  v67 = v27;
  v30 = *(v22 + *(a1 + 80));
  v31 = v55;
  v32 = v53;
  sub_18AFC8A44(v22 + v25, &v63, v30, AssociatedTypeWitness, v55, v46, v53, v14);
  v33 = (*(v56 + 8))(v23, AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v33);
  *&v34 = v6;
  *(&v34 + 1) = v31;
  *&v35 = v15;
  *(&v35 + 1) = v24;
  *(&v46 - 4) = v34;
  *(&v46 - 3) = v35;
  v36 = v47;
  *(&v46 - 4) = v32;
  *(&v46 - 3) = v36;
  *(&v46 - 2) = v22;
  sub_18AFCDB44();
  v37 = v51;
  WitnessTable = swift_getWitnessTable();
  v39 = v50;
  sub_18AFCCA64();
  (*(v57 + 8))(v14, v37);
  v40 = swift_getWitnessTable();
  v61 = WitnessTable;
  v62 = v40;
  v41 = v48;
  v42 = swift_getWitnessTable();
  v43 = v54;
  sub_18AEADA5C(v39, v41, v42);
  v44 = *(v58 + 8);
  v44(v39, v41);
  sub_18AEADA5C(v43, v41, v42);
  return (v44)(v43, v41);
}

uint64_t sub_18AFC94B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = v13;
  v21[1] = v14;
  v21[2] = v15;
  v21[3] = v16;
  v21[4] = v17;
  v21[5] = v18;
  v19 = type metadata accessor for PositionStrokeShapeView();
  sub_18AEADA5C(a1 + *(v19 + 84), a4, a7);
  sub_18AEADA5C(v12, a4, a7);
  return (*(v10 + 8))(v12, a4);
}

uint64_t sub_18AFC965C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v44 = a5;
  v42 = a4;
  v37 = a3;
  v38 = a8;
  v40 = a2;
  v47 = a9;
  v48 = a1;
  v33[1] = a10;
  v41 = *(a8 - 8);
  v45 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v39 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_18AFCC5F4();
  MEMORY[0x1EEE9AC00](v46);
  v43 = v33 - v15;
  v36 = *(a7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a6 - 8);
  v19 = v34;
  MEMORY[0x1EEE9AC00](v20);
  v22 = v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_18AFCBDB4();
  MEMORY[0x1EEE9AC00](v23);
  WitnessTable = swift_getWitnessTable();
  v49 = v23;
  v50 = a7;
  v51 = WitnessTable;
  v52 = a11;
  v35 = sub_18AFCBB14();
  v25 = MEMORY[0x1EEE9AC00](v35);
  v26 = *(v19 + 16);
  v33[0] = a6;
  v26(v22, v48, a6, v25);
  sub_18AFCBDA4();
  v27 = v36;
  v28 = v40;
  (*(v36 + 16))(v18, v40, a7);
  sub_18AFCBB04();
  v29 = v41;
  v30 = v38;
  v31 = v44;
  (*(v41 + 16))(v39, v44, v38);
  sub_18AFCDB44();
  (*(v29 + 8))(v31, v30);
  (*(v27 + 8))(v28, a7);
  (*(v34 + 8))(v48, v33[0]);
  sub_18AFCC5E4();
  return sub_18AFCC034();
}

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_18AFC9A9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 20))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_18AFC9AE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_18AFC9B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, unsigned int a5@<S0>, unsigned int a6@<S1>)
{
  v12 = sub_18AFCC474();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a3 & 1) == 0)
  {
    sub_18AFCE024();
    v16 = sub_18AFCC7D4();
    sub_18AFCBA64();

    sub_18AFCC464();
    swift_getAtKeyPath();
    j__swift_release();
    (*(v13 + 8))(v15, v12);
    a2 = v22[0];
  }

  if (!a2)
  {
    a2 = sub_18AFCCCD4();
  }

  KeyPath = swift_getKeyPath();
  v22[0] = __PAIR64__(a6, a5);
  v22[1] = a2;
  sub_18AFC9EF8();
  v18 = sub_18AFCBCD4();
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C258);
  (*(*(v19 - 8) + 16))(a4, a1, v19);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA99C260);
  v21 = (a4 + *(result + 36));
  *v21 = KeyPath;
  v21[1] = v18;
  return result;
}

uint64_t sub_18AFC9D74@<X0>(_DWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  sub_18AFCCDC4();
  v5 = sub_18AE978B4();
  if (v3 > v7)
  {
    v7 = v3;
  }

  if (v4 < v7)
  {
    v7 = v4;
  }

  result = sub_18AE97AA0(v5, v6, v7);
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  return result;
}

uint64_t sub_18AFC9DC8()
{
  sub_18AFCE294();
  sub_18AF4AFA4();
  sub_18AFCCD54();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC9E2C()
{
  sub_18AF4AFA4();

  return sub_18AFCCD54();
}

uint64_t sub_18AFC9E70()
{
  sub_18AFCE294();
  sub_18AF4AFA4();
  sub_18AFCCD54();
  return sub_18AFCE2E4();
}

uint64_t sub_18AFC9ED0(float *a1, float *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return sub_18AFCCD04();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_18AFC9EF8()
{
  result = qword_1EA99C250;
  if (!qword_1EA99C250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C250);
  }

  return result;
}

uint64_t sub_18AFC9F4C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_18AFC9F94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_18AFC9FE0()
{
  result = qword_1EA99C268;
  if (!qword_1EA99C268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA99C260);
    sub_18AE95F54(&qword_1EA99C270, &qword_1EA99C258);
    sub_18AE95F54(&qword_1EA99C278, &qword_1EA99C280);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C268);
  }

  return result;
}

unint64_t sub_18AFCA0C8()
{
  result = qword_1EA99C288;
  if (!qword_1EA99C288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C288);
  }

  return result;
}

uint64_t sub_18AFCA11C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v13 = a2 & 1;
  v14 = a4 & 1;
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  *(v15 + 32) = a1;
  *(v15 + 40) = v13;
  *(v15 + 48) = a3;
  *(v15 + 56) = v14;
  v17[2] = a5;
  v17[3] = a6;
  v18 = v7;
  sub_18AFCA2C4(sub_18AFCA2B8, v17, a7);
}

uint64_t sub_18AFCA1DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AEADA5C(v6, v9, v10);
  sub_18AEADA5C(v8, a2, a3);
  return (*(v5 + 8))(v8, a2);
}

uint64_t sub_18AFCA2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = sub_18AFCA35C();
  return sub_18AFC3A04(a1, a2, &type metadata for UnitPositionLayout, v7, v9, v8, a3);
}

unint64_t sub_18AFCA35C()
{
  result = qword_1EA99C290;
  if (!qword_1EA99C290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C290);
  }

  return result;
}

uint64_t sub_18AFCA3D0(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8)
{
  v16[3] = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v16 - v11;
  sub_18AFC3BAC(v16 - v11);
  v13 = sub_18AFCBD64();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_18AF0A900(v12);
  }

  v18 = a2 & 1;
  v17 = a4 & 1;
  sub_18AFCBD44();
  return (*(v14 + 8))(v12, v13);
}

void (*sub_18AFCA5F4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBE4B4;
}

uint64_t sub_18AFCA67C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA99A2B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-v7];
  sub_18AFC3BAC(&v12[-v7]);
  v9 = sub_18AFCBD64();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_18AF0A900(v8);
  }

  v12[8] = a2 & 1;
  v12[0] = a4 & 1;
  sub_18AFCBD44();
  return (*(v10 + 8))(v8, v9);
}

void (*sub_18AFCA890(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_18AFCBA74();
  return sub_18AFBC71C;
}

unint64_t sub_18AFCA91C()
{
  result = qword_1EA99C298;
  if (!qword_1EA99C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C298);
  }

  return result;
}

unint64_t sub_18AFCA974()
{
  result = qword_1EA99C2A0;
  if (!qword_1EA99C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA99C2A0);
  }

  return result;
}

uint64_t sub_18AFCA9C8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v8 = sub_18AFCBD64();
  v16 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF0A8A8();
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = sub_18AFCDFD4();
  if (result)
  {
    v19.origin.x = a1;
    v19.origin.y = a2;
    v19.size.width = a3;
    v19.size.height = a4;
    CGRectGetWidth(v19);
    v20.origin.x = a1;
    v20.origin.y = a2;
    v20.size.width = a3;
    v20.size.height = a4;
    CGRectGetHeight(v20);
    sub_18AFCDFC4();
    sub_18AFCDFE4();
    v12 = v17;
    result = v18;
    if (v17 < v18)
    {
      __break(1u);
    }

    else
    {
      if (v18 == v17)
      {
        return result;
      }

      if (v18 < v17)
      {
        v13 = (v16 + 8);
        do
        {
          v14 = result + 1;
          sub_18AFCBE94();
          sub_18AFCDD04();
          LOBYTE(v18) = 0;
          LOBYTE(v17) = 0;
          sub_18AFCBD54();
          (*v13)(v10, v8);
          result = v14;
        }

        while (v12 != v14);
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_18AFCAC34(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  v5 = v4;
  v10 = sub_18AFCBD64();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18AFCBE84();
  sub_18AF0A8A8();
  sub_18AFCDFC4();
  sub_18AFCDFE4();
  result = sub_18AFCDFD4();
  if (result)
  {
    v15 = *(v4 + 40);
    v29 = *(v4 + 32);
    v30 = *v4;
    v16 = *(v4 + 8);
    v17 = 0.5;
    v28 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v18)
    {
      v19 = 0.5;
    }

    else
    {
      v19 = v15;
    }

    v33.origin.x = a1;
    v33.origin.y = a2;
    v33.size.width = a3;
    v33.size.height = a4;
    v27[2] = CGRectGetWidth(v33);
    v20 = v30;
    if (v16)
    {
      v20 = 1.0;
    }

    else
    {
      v17 = v29;
    }

    *&v27[1] = v20;
    v29 = a1;
    v30 = a3;
    v34.origin.x = a1;
    v21 = a2;
    v34.origin.y = a2;
    v34.size.width = a3;
    v34.size.height = a4;
    Height = CGRectGetHeight(v34);
    if (!v18)
    {
      Height = v28 * Height;
    }

    v28 = Height;
    if (v17 == 1.0)
    {
      v23 = v29;
      v35.size.width = v30;
      v35.origin.x = v29;
      v35.origin.y = v21;
      v35.size.height = a4;
      CGRectGetWidth(v35);
    }

    else
    {
      v23 = v29;
    }

    if (v19 == 1.0)
    {
      v36.origin.x = v23;
      v36.origin.y = v21;
      v36.size.width = v30;
      v36.size.height = a4;
      CGRectGetHeight(v36);
    }

    sub_18AFCDFC4();
    sub_18AFCDFE4();
    v24 = v31;
    result = v32;
    if (v31 < v32)
    {
      __break(1u);
    }

    else
    {
      if (v32 == v31)
      {
        return result;
      }

      if (v32 < v31)
      {
        v25 = (v11 + 8);
        do
        {
          v26 = result + 1;
          sub_18AFCBE94();
          LOBYTE(v32) = 0;
          LOBYTE(v31) = 0;
          sub_18AFCBD54();
          (*v25)(v13, v10);
          result = v26;
        }

        while (v24 != v26);
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_18AFCAF30()
{
  v1 = sub_18AFCDE04();
  v2 = [v0 arrayForKey_];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_18AFCDEA4();

  v4 = sub_18AFCB134(v3);

  if (!v4)
  {
    return 0;
  }

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  v5 = sub_18AFCE1F4();
  if (!v5)
  {
LABEL_19:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  v19 = MEMORY[0x1E69E7CC0];
  result = sub_18AFABA38(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v7 = v19;
    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v5; ++i)
      {
        MEMORY[0x18CFED4B0](i, v4);
        sub_18AFCDF94();
        v10 = v9;
        swift_unknownObjectRelease();
        v12 = *(v19 + 16);
        v11 = *(v19 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_18AFABA38((v11 > 1), v12 + 1, 1);
        }

        *(v19 + 16) = v12 + 1;
        *(v19 + 4 * v12 + 32) = v10;
      }
    }

    else
    {
      v13 = (v4 + 32);
      do
      {
        v14 = *v13;
        sub_18AFCDF94();
        v16 = v15;

        v18 = *(v19 + 16);
        v17 = *(v19 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_18AFABA38((v17 > 1), v18 + 1, 1);
        }

        *(v19 + 16) = v18 + 1;
        *(v19 + 4 * v18 + 32) = v16;
        ++v13;
        --v5;
      }

      while (v5);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_18AFCB134(uint64_t a1)
{
  v6 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  sub_18AFCE194();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_18AE9B098(i, v5);
    sub_18AE9ADC0();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_18AFCE174();
    sub_18AFCE1A4();
    sub_18AFCE1B4();
    sub_18AFCE184();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id sub_18AFCB244()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EA99C2A8 = result;
  return result;
}

uint64_t sub_18AFCB29C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0088);
  __swift_project_value_buffer(v0, qword_1EA9B0088);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB344()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00A0);
  __swift_project_value_buffer(v0, qword_1EA9B00A0);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB3EC()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00B8);
  __swift_project_value_buffer(v0, qword_1EA9B00B8);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB494()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00D0);
  __swift_project_value_buffer(v0, qword_1EA9B00D0);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB53C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B00E8);
  __swift_project_value_buffer(v0, qword_1EA9B00E8);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB5E4()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0100);
  __swift_project_value_buffer(v0, qword_1EA9B0100);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB68C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0118);
  __swift_project_value_buffer(v0, qword_1EA9B0118);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB734()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0130);
  __swift_project_value_buffer(v0, qword_1EA9B0130);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB7DC()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0148);
  __swift_project_value_buffer(v0, qword_1EA9B0148);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

uint64_t sub_18AFCB88C()
{
  v0 = sub_18AFCBA54();
  __swift_allocate_value_buffer(v0, qword_1EA9B0160);
  __swift_project_value_buffer(v0, qword_1EA9B0160);
  if (qword_1EA997948 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA99C2A8;
  return sub_18AFCBA44();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}