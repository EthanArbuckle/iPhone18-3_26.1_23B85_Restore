char *sub_1AC45F958(uint64_t a1, double a2)
{
  result = sub_1AC459C7C(a1);
  if (!v2)
  {
    return sub_1AC45F9B0(a2);
  }

  return result;
}

char *sub_1AC45F9B0(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) != 0)
  {
    v2 = sub_1AC51F188();

    return sub_1AC45FA3C(v2, v3);
  }

  else
  {
    if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v1 = "NaN";
    }

    else if (a1 >= 0.0)
    {
      v1 = "Infinity";
    }

    else
    {
      v1 = "-Infinity";
    }

    return sub_1AC45FD18(v1);
  }
}

uint64_t sub_1AC45FA3C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    v3 = sub_1AC51EF48();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_11_1();
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
    goto LABEL_14;
  }

  sub_1AC45AE04(result, 1);
  v6 = *v2;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 24) >> 1;
  result = sub_1AC51F2D8();
  if ((v9 & 1) == 0)
  {
    v10 = result;

    if (v10 >= v3)
    {
      if (v10 < 1)
      {
LABEL_11:
        *v2 = v6;
        return result;
      }

      v11 = *(v6 + 16);
      v12 = __OFADD__(v11, v10);
      v13 = v11 + v10;
      if (!v12)
      {
        *(v6 + 16) = v13;
        goto LABEL_11;
      }

      goto LABEL_15;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC45FB44(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  result = sub_1AC459C7C(a2);
  if (!v5)
  {
    if (*(v4 + 56) == 1)
    {
      return a3(a1);
    }

    else
    {
      return a4(a1);
    }
  }

  return result;
}

void sub_1AC45FBAC(unint64_t a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FC4C(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC45FBF4(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    sub_1AC45FBF4(a1 / 0xA);
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC45FC4C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_12_11();
    OUTLINED_FUNCTION_4_12();
    OUTLINED_FUNCTION_13_8(v2);
    v1 = -v1;
  }

  sub_1AC45FBF4(v1);
}

char *sub_1AC45FCA4(char a1, uint64_t a2)
{
  result = sub_1AC459C7C(a2);
  if (!v2)
  {
    if (a1)
    {
      v5 = "true";
      v6 = 4;
    }

    else
    {
      v5 = "false";
      v6 = 5;
    }

    return sub_1AC45FE50(v5, v6, 2);
  }

  return result;
}

char *sub_1AC45FD18(char *a1)
{
  OUTLINED_FUNCTION_11_1();
  result = &v5[v6];
  if (__OFADD__(v6, v5))
  {
    __break(1u);
    goto LABEL_16;
  }

  v8 = v5;
  sub_1AC45AE04(result, 1);
  OUTLINED_FUNCTION_17_2();
  result = sub_1AC4600B0((v9 + 32), v3, a1, v8);
  if (v10 < v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 1)
  {
    goto LABEL_6;
  }

  v11 = *(v1 + 16);
  v12 = __OFADD__(v11, v10);
  v13 = v11 + v10;
  if (!v12)
  {
    *(v1 + 16) = v13;
LABEL_6:
    if (v10 != v3 || result == 0 || result == v5)
    {
      goto LABEL_14;
    }

    goto LABEL_18;
  }

LABEL_17:
  __break(1u);
LABEL_18:
  v16 = *(v1 + 16);
  v18 = *result++;
  v17 = v18;
LABEL_19:
  v19 = *(v1 + 24) >> 1;
  if (v19 < v16 + 1)
  {
    v23 = result;
    v21 = v5;
    sub_1AC45A78C();
    v5 = v21;
    v1 = v22;
    result = v23;
    v19 = *(v1 + 24) >> 1;
  }

  while (1)
  {
    if (v16 >= v19)
    {
      *(v1 + 16) = v16;
      goto LABEL_19;
    }

    *(v1 + v16 + 32) = v17;
    if (result == v5)
    {
      break;
    }

    v20 = *result++;
    v17 = v20;
    ++v16;
  }

  *(v1 + 16) = v16 + 1;
LABEL_14:
  *v2 = v1;
  return result;
}

char *sub_1AC45FE50(char *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    __break(1u);
  }

  else if (a1)
  {
    return sub_1AC45FD18(a1);
  }

  __break(1u);
  return a1;
}

uint64_t sub_1AC45FE64()
{
  OUTLINED_FUNCTION_10_6();
  v4 = OUTLINED_FUNCTION_16_4(v2, v3);
  OUTLINED_FUNCTION_28_1();
  result = sub_1AC51F0B8();
  v6 = result * v4;
  if ((result * v4) >> 64 != (result * v4) >> 63)
  {
    __break(1u);
    goto LABEL_8;
  }

  v7 = *v0 + v6;
  if (__OFADD__(*v0, v6))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v0 = v7;
  MEMORY[0x1EEE9AC00](result);
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_3_6();
  result = OUTLINED_FUNCTION_7_4();
  if (v1)
  {
    return result;
  }

  if (__OFADD__(v7, v8))
  {
LABEL_9:
    __break(1u);
    return result;
  }

  *v0 = v7 + v8;
  return result;
}

uint64_t OUTLINED_FUNCTION_17_10(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = v2;

  return swift_willThrow();
}

void *OUTLINED_FUNCTION_17_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return memcpy(&a9, v9, 0x41uLL);
}

uint64_t OUTLINED_FUNCTION_17_18()
{
  v2 = *(v0 + 16) + 1;

  return sub_1AC4D0918(0, v2, 1);
}

char *sub_1AC4600B0(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

unint64_t sub_1AC460144@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v6 = *a1;
  result = sub_1AC451818(a2, a3);
  if (!v4)
  {
    v8 = result;
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1AC4519B4(result);
      v9 = v6 + result;
      if (!__OFADD__(v6, result))
      {
        v10 = __OFADD__(v9, v8);
        v11 = v9 + v8;
        if (!v10)
        {
          *a4 = v11;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_9;
  }

  return result;
}

void sub_1AC460234()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v106 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v118 = *(v11 + 8);
  v105 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = OUTLINED_FUNCTION_3_0(AssociatedTypeWitness);
  v100 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_6();
  v122 = v17 - v18;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29_2(v20);
  v119 = *(v4 + 8);
  v114 = v6;
  v21 = swift_getAssociatedTypeWitness();
  v22 = OUTLINED_FUNCTION_3_0(v21);
  v99 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_6();
  v28 = v26 - v27;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_26_2();
  OUTLINED_FUNCTION_29_2(v30);
  v120 = v31;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v113 = sub_1AC51F228();
  v32 = OUTLINED_FUNCTION_3_0(v113);
  v34 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_6();
  v116 = v37 - v38;
  OUTLINED_FUNCTION_19_0();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v95 - v40;
  v95[1] = sub_1AC451978((8 * v8) | 2u);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v42 = sub_1AC51F368();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v121 = v42 | 0x8000000000000000;
  }

  else
  {
    v46 = *(v10 + 32);
    OUTLINED_FUNCTION_17_3();
    v43 = v10 + 64;
    v47 = *(v10 + 64);
    OUTLINED_FUNCTION_14_4();
    v45 = v48 & v49;
    v121 = v10;
  }

  v124 = (v99 + 32);
  v123 = v100 + 32;
  v95[3] = v44;
  v96 = (v44 + 64) >> 6;
  v98 = v99 + 16;
  v97 = v100 + 16;
  v111 = (v34 + 32);
  v107 = v119 + 48;
  v104 = v118 + 48;
  v108 = v100 + 8;
  v109 = (v99 + 8);
  v95[2] = v10;

  v50 = 0;
  v51 = v120;
  v103 = v28;
  v112 = v41;
  v115 = v43;
  v52 = v121;
  while (1)
  {
    v110 = v50;
    if ((v52 & 0x8000000000000000) == 0)
    {
      if (!v45)
      {
        v60 = v50;
        v61 = v122;
        while (1)
        {
          v54 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            break;
          }

          if (v54 >= v96)
          {
            v125 = 0;
            v69 = 1;
            goto LABEL_18;
          }

          v53 = *(v43 + 8 * v54);
          ++v60;
          if (v53)
          {
            goto LABEL_14;
          }
        }

        __break(1u);
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v53 = v45;
      v54 = v50;
LABEL_14:
      OUTLINED_FUNCTION_9_4(v53);
      OUTLINED_FUNCTION_27_2(*(v52 + 48));
      v55 = v101;
      v62(v101);
      OUTLINED_FUNCTION_27_2(*(v52 + 56));
      v56 = v102;
      v58 = v51;
      v59 = AssociatedTypeWitness;
      v63(v102);
      goto LABEL_15;
    }

    if (sub_1AC51F378())
    {
      v55 = v101;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v56 = v102;
      v57 = v50;
      v58 = v51;
      v59 = AssociatedTypeWitness;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v54 = v57;
      v125 = v45;
LABEL_15:
      v64 = v116;
      v65 = *(TupleTypeMetadata2 + 48);
      v66 = v55;
      v67 = TupleTypeMetadata2;
      (*v124)(v116, v66, v58);
      OUTLINED_FUNCTION_25_2();
      v68(v64 + v65, v56, v59);
      v69 = 0;
      v60 = v54;
      v61 = v122;
      v28 = v103;
      goto LABEL_19;
    }

    v69 = 1;
    v60 = v50;
    v125 = v45;
    v61 = v122;
LABEL_18:
    v64 = v116;
    v67 = TupleTypeMetadata2;
LABEL_19:
    __swift_storeEnumTagSinglePayload(v64, v69, 1, v67);
    v70 = v112;
    (*v111)();
    if (__swift_getEnumTagSinglePayload(v70, 1, v67) == 1)
    {
      break;
    }

    v71 = *(v67 + 48);
    v51 = v120;
    (*v124)(v28, v70, v120);
    OUTLINED_FUNCTION_25_2();
    v73 = v72(v61, v70 + v71, AssociatedTypeWitness);
    OUTLINED_FUNCTION_32_1(v73, v74, v75, v76, v77, v78, v119);
    v80 = v79(v28, 1);
    if (v2)
    {
      OUTLINED_FUNCTION_18_3();
      sub_1AC460BE4();
      OUTLINED_FUNCTION_30_1();
      v91(v61, AssociatedTypeWitness);
      (*v109)(v28, v51);
LABEL_28:
      OUTLINED_FUNCTION_61();
      return;
    }

    OUTLINED_FUNCTION_32_1(v80, v81, v82, v83, v84, v85, v118);
    v86(v61, 2);
    OUTLINED_FUNCTION_30_1();
    v87(v61, AssociatedTypeWitness);
    (*v109)(v28, v51);
    v52 = v121;
    v43 = v115;
    OUTLINED_FUNCTION_15_4();
    if (v90)
    {
      goto LABEL_30;
    }

    *v89 = v88;
    v50 = v60;
    v45 = v125;
  }

  OUTLINED_FUNCTION_18_3();
  sub_1AC460BE4();
  swift_getAssociatedConformanceWitness();
  sub_1AC51ED68();
  OUTLINED_FUNCTION_13_2(&v125);
  if (!v92)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_15_4();
  if (!v90)
  {
    *v94 = v93;
    goto LABEL_28;
  }

LABEL_32:
  __break(1u);
}

void OUTLINED_FUNCTION_29_3(_BYTE *a1@<X8>)
{
  if (v1 == 12)
  {
    LOBYTE(v1) = 0;
  }

  *a1 = v1;
}

uint64_t OUTLINED_FUNCTION_385(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10)
{

  return sub_1AC4513F8(a9, a10);
}

uint64_t OUTLINED_FUNCTION_29_5()
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_29_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  *(v13 + 16) = v14;
  v15 = v13 + 16 * v10;
  *(v15 + 32) = v11;
  *(v15 + 40) = v12;
  *a10 = v13;
}

void OUTLINED_FUNCTION_29_7()
{
  *(v2 + 16) = v3;
  *(v2 + v0 + 32) = v4;
  *v1 = v2;
}

uint64_t OUTLINED_FUNCTION_30_2(uint64_t result)
{
  *v1 = result;
  *(result + 40) = v2;
  v3 = *(v2 + 24);
  return result;
}

uint64_t OUTLINED_FUNCTION_30_3()
{
  v4 = *(v3 - 128);
  *(v3 - 88) = v2;
  v5 = *(v0 + 32);
  return v1;
}

uint64_t OUTLINED_FUNCTION_30_5()
{

  return sub_1AC51F338();
}

uint64_t dispatch thunk of Visitor.visitMapField<A, B>(fieldType:value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  return (*(a8 + 408))();
}

{
  return (*(a8 + 416))();
}

uint64_t static ProtobufInt32.visitSingular<A>(value:fieldNumber:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 24);
  OUTLINED_FUNCTION_0_10();
  return v6();
}

uint64_t static ProtobufUInt32.visitSingular<A>(value:fieldNumber:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 40);
  OUTLINED_FUNCTION_0_10();
  return v6();
}

void sub_1AC460CB4(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_8_4(a1, a2);
  OUTLINED_FUNCTION_20_3();
  if (v5)
  {
    OUTLINED_FUNCTION_21_3();
    while (1)
    {
      v9 = *v7++;
      v8 = v9;
      if (v9 < 0x80)
      {
        v10 = 1;
        goto LABEL_18;
      }

      if ((v8 & 0x8000000000000000) != 0)
      {
        v10 = 10;
        goto LABEL_18;
      }

      if (v8 >> 35)
      {
        if (v8 >> 49)
        {
          v8 >>= 28;
          v10 = 8;
LABEL_16:
          if (!(v8 >> 28))
          {
            goto LABEL_18;
          }

LABEL_17:
          ++v10;
          goto LABEL_18;
        }

        v10 = 6;
        if (v8 >> 42)
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v8 >= 0x200000)
        {
          v10 = 4;
          goto LABEL_16;
        }

        v10 = 2;
        if (v8 >= 0x4000)
        {
          goto LABEL_17;
        }
      }

LABEL_18:
      v11 = __OFADD__(v4, v10);
      v4 += v10;
      if (v11)
      {
        __break(1u);
        goto LABEL_27;
      }

      if (!--v6)
      {
        goto LABEL_22;
      }
    }
  }

  v4 = 0;
LABEL_22:
  v12 = sub_1AC4519B4(v4);
  v13 = v3 + v12;
  if (__OFADD__(v3, v12))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v11 = __OFADD__(v13, v4);
  v14 = v13 + v4;
  if (v11)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v11 = __OFADD__(*v2, v14);
  v15 = *v2 + v14;
  if (!v11)
  {
    OUTLINED_FUNCTION_11_4(v15);
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t Visitor.visitRepeatedMessageField<A>(value:fieldNumber:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_5_27(a1, a2, a3, a4, a5, a6);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_9_20();
  OUTLINED_FUNCTION_15_16(v12);
  while (1)
  {
    OUTLINED_FUNCTION_20_15();
    result = sub_1AC51F0B8();
    if (v7 == result)
    {
      break;
    }

    OUTLINED_FUNCTION_20_15();
    sub_1AC51F0A8();
    OUTLINED_FUNCTION_13_16();
    if (v8)
    {
      v14 = OUTLINED_FUNCTION_4_24();
      v15(v14);
    }

    else
    {
      OUTLINED_FUNCTION_19_14();
      result = sub_1AC51F2F8();
      if (v23 != 8)
      {
        __break(1u);
        return result;
      }

      v21 = OUTLINED_FUNCTION_7_20(result);
      v22(v21);
      swift_unknownObjectRelease();
    }

    OUTLINED_FUNCTION_19_14();
    sub_1AC51F0F8();
    v16 = *(v24 + 136);
    v17 = OUTLINED_FUNCTION_10_16();
    v18(v17);
    v19 = OUTLINED_FUNCTION_16_14();
    result = v20(v19);
    if (v6)
    {
      return result;
    }

    v7 = v25;
  }

  return result;
}

uint64_t sub_1AC460F80(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  sub_1AC451CCC(a2, 0);
  return sub_1AC457060(v2);
}

uint64_t sub_1AC460FD0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_6_5();
  v9 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(a6 + 8);
  v12 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = OUTLINED_FUNCTION_15_5();
  return sub_1AC461104(v13, a2, v14, v15, v16, v17, v18, v19, AssociatedTypeWitness, v12);
}

uint64_t sub_1AC461104(unint64_t a1, char *a2, unint64_t a3, void (**a4)(void), void (*a5)(unint64_t *, char *, char *), uint64_t a6, void (*a7)(void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v12 = v11;
  v126 = a7;
  v127 = a8;
  v128 = a5;
  v129 = a6;
  v123 = a3;
  v124 = a4;
  v120 = a1;
  v121 = a2;
  v108 = *(a10 - 8);
  v13 = *(v108 + 64);
  v14 = MEMORY[0x1EEE9AC00](a1);
  v110 = v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v122 = v106 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v106 - v19;
  v107 = *(a9 - 8);
  v21 = *(v107 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v131 = v106 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v111 = v106 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = v106 - v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v130 = sub_1AC51F228();
  v29 = *(*(v130 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v130);
  v32 = v106 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v125 = v106 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v40 = v106 - v39;
  v133 = a10;
  v134 = v10;
  v41 = *v10;
  v132 = a9;
  if (v41 == 1)
  {
    v131 = v106;
    v135 = v120;
    MEMORY[0x1EEE9AC00](v36);
    v106[-6] = v42;
    v106[-5] = a10;
    v44 = v123;
    v43 = v124;
    v106[-4] = v45;
    v106[-3] = v44;
    v106[-2] = v43;
    v47 = v46;
    sub_1AC51ED88();
    swift_getWitnessTable();
    v48 = sub_1AC51F028();
    v49 = sub_1AC51F038();
    v119 = TupleTypeMetadata2 - 8;
    v136 = v49;
    v50 = (v47 + 32);
    v131 = (v107 + 32);
    v124 = (v108 + 32);
    v123 = 8 * (v121 & 0x1FFFFFFF);
    v122 = (v123 | 2);
    v120 = v108 + 8;
    v121 = (v107 + 8);
    v51 = v132;
    while (1)
    {
      v52 = sub_1AC51F0B8();
      v53 = v136;
      if (v136 == v52)
      {
        v54 = v125;
        v55 = v125;
        v56 = 1;
      }

      else
      {
        v57 = sub_1AC51F0A8();
        sub_1AC51F048();
        if (v57)
        {
          v58 = *(TupleTypeMetadata2 - 8);
          v59 = v48 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v53;
          v54 = v125;
          (*(v58 + 16))(v125, v59, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1AC51F2F8();
          v70 = *(TupleTypeMetadata2 - 8);
          if (*(v70 + 64) != 8)
          {
            goto LABEL_60;
          }

          v135 = result;
          v71 = v125;
          (*(v70 + 16))(v125, &v135, TupleTypeMetadata2);
          v54 = v71;
          swift_unknownObjectRelease();
        }

        v51 = v132;
        sub_1AC51F0F8();
        v55 = v54;
        v56 = 0;
      }

      __swift_storeEnumTagSinglePayload(v55, v56, 1, TupleTypeMetadata2);
      (*v50)(v40, v54, v130);
      if (__swift_getEnumTagSinglePayload(v40, 1, TupleTypeMetadata2) == 1)
      {
      }

      v60 = *(TupleTypeMetadata2 + 48);
      (*v131)(v27, v40, v51);
      (*v124)(v20, &v40[v60], v133);
      v61 = *(v134 + 1);
      if (v123 < 0x80)
      {
        LOBYTE(v63) = v122;
      }

      else
      {
        v62 = v122;
        do
        {
          *v61++ = v62 | 0x80;
          v63 = v62 >> 7;
          v64 = v62 >> 14;
          v62 >>= 7;
        }

        while (v64);
      }

      *v61 = v63;
      v65 = v61 + 1;
      *(v134 + 1) = v65;
      v135 = 0;
      v128(&v135, v27, v20);
      if (v11)
      {

        (*v120)(v20, v133);
        return (*v121)(v27, v132);
      }

      v66 = v135;
      if (v135 < 0x80)
      {
        LOBYTE(v67) = v135;
      }

      else
      {
        do
        {
          *v65++ = v66 | 0x80;
          v67 = v66 >> 7;
          v68 = v66 >> 14;
          v66 >>= 7;
        }

        while (v68);
      }

      *v65 = v67;
      *(v134 + 1) = v65 + 1;
      v126();
      (*v120)(v20, v133);
      v51 = v132;
      (*v121)(v27, v132);
    }
  }

  v119 = v37;
  if ((v120 & 0xC000000000000001) != 0)
  {
    v72 = v38;
    v73 = sub_1AC51F368();
    v38 = v72;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v77 = v73 | 0x8000000000000000;
  }

  else
  {
    v78 = -1 << *(v120 + 32);
    v75 = ~v78;
    v74 = v120 + 64;
    v79 = -v78;
    if (v79 < 64)
    {
      v80 = ~(-1 << v79);
    }

    else
    {
      v80 = -1;
    }

    v76 = v80 & *(v120 + 64);
    v77 = v120;
  }

  v81 = v131;
  v82 = v122;
  v123 = v108 + 32;
  v124 = (v107 + 32);
  v106[1] = v75;
  v83 = (v75 + 64) >> 6;
  v106[3] = v107 + 16;
  v106[2] = v108 + 16;
  v118 = (v38 + 32);
  v113 = 8 * (v121 & 0x1FFFFFFF);
  v112 = v113 | 2;
  v114 = (v108 + 8);
  v115 = (v107 + 8);

  v84 = 0;
  v85 = v110;
  v109 = v32;
  v116 = v77;
  v117 = v74;
  v86 = v76;
  while (1)
  {
    v120 = v84;
    v121 = v86;
    if ((v77 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_1AC51F378())
    {
      v90 = v133;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v82 = v122;
      sub_1AC51F3C8();
      swift_unknownObjectRelease();
      v88 = v120;
      v125 = v121;
LABEL_41:
      v94 = *(TupleTypeMetadata2 + 48);
      v32 = v109;
      (*v124)();
      (*v123)(&v32[v94], v82, v90);
      v95 = 0;
      v91 = v88;
      v85 = v110;
      v81 = v131;
      goto LABEL_42;
    }

    v95 = 1;
    v91 = v120;
    v125 = v121;
LABEL_42:
    __swift_storeEnumTagSinglePayload(v32, v95, 1, TupleTypeMetadata2);
    v96 = v119;
    (*v118)(v119, v32, v130);
    if (__swift_getEnumTagSinglePayload(v96, 1, TupleTypeMetadata2) == 1)
    {
      return sub_1AC460BE4();
    }

    v97 = *(TupleTypeMetadata2 + 48);
    (*v124)(v81, v96, v132);
    (*v123)(v85, v96 + v97, v133);
    v98 = *(v134 + 1);
    if (v113 < 0x80)
    {
      LOBYTE(v100) = v112;
    }

    else
    {
      v99 = v112;
      do
      {
        *v98++ = v99 | 0x80;
        v100 = v99 >> 7;
        v101 = v99 >> 14;
        v99 >>= 7;
      }

      while (v101);
    }

    *v98 = v100;
    v102 = v98 + 1;
    *(v134 + 1) = v102;
    v136 = 0;
    v128(&v136, v131, v85);
    v77 = v116;
    if (v12)
    {
      sub_1AC460BE4();
      (*v114)(v85, v133);
      return (*v115)(v131, v132);
    }

    v103 = v136;
    if (v136 < 0x80)
    {
      LOBYTE(v104) = v136;
    }

    else
    {
      do
      {
        *v102++ = v103 | 0x80;
        v104 = v103 >> 7;
        v105 = v103 >> 14;
        v103 >>= 7;
      }

      while (v105);
    }

    *v102 = v104;
    *(v134 + 1) = v102 + 1;
    v81 = v131;
    v126();
    (*v114)(v85, v133);
    result = (*v115)(v81, v132);
    v84 = v91;
    v86 = v125;
    v82 = v122;
    v74 = v117;
  }

  if (v86)
  {
    v87 = v86;
    v88 = v84;
    v89 = v111;
LABEL_40:
    v125 = ((v87 - 1) & v87);
    v92 = __clz(__rbit64(v87)) | (v88 << 6);
    (*(v107 + 16))(v89, *(v77 + 48) + *(v107 + 72) * v92, v132);
    v93 = *(v77 + 56) + *(v108 + 72) * v92;
    v90 = v133;
    (*(v108 + 16))(v82, v93, v133);
    goto LABEL_41;
  }

  v91 = v84;
  v89 = v111;
  while (1)
  {
    v88 = v91 + 1;
    if (__OFADD__(v91, 1))
    {
      break;
    }

    if (v88 >= v83)
    {
      v125 = 0;
      v95 = 1;
      v32 = v109;
      goto LABEL_42;
    }

    v87 = *(v74 + 8 * v88);
    ++v91;
    if (v87)
    {
      v82 = v122;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1AC461D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for BinaryEncodingSizeVisitor, &off_1F211A7E8, a5);
  }

  return result;
}

uint64_t sub_1AC461E50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for BinaryEncodingVisitor, &off_1F211B110, a5);
  }

  return result;
}

void sub_1AC461F08(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 2u);
  if (!*(v3 + 16))
  {
    OUTLINED_FUNCTION_14_5();
    return;
  }

  v5 = OUTLINED_FUNCTION_5_5();
  do
  {
    v7 = *(v3 + 8 * v6);
    if (v7 < 0x80)
    {
      v8 = 1;
      goto LABEL_18;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      v8 = 10;
      goto LABEL_18;
    }

    if (!(v7 >> 35))
    {
      if (v7 < 0x200000)
      {
        v8 = 2;
        if (v7 >= 0x4000)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v8 = 4;
LABEL_16:
      if (!(v7 >> 28))
      {
        goto LABEL_18;
      }

LABEL_17:
      ++v8;
      goto LABEL_18;
    }

    if (v7 >> 49)
    {
      v7 >>= 28;
      v8 = 8;
      goto LABEL_16;
    }

    v8 = 6;
    if (v7 >> 42)
    {
      goto LABEL_17;
    }

LABEL_18:
    if (__OFADD__(v5, v8))
    {
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_12_5();
  }

  while (!v9);
  sub_1AC45702C(v5);
  OUTLINED_FUNCTION_11_5();
  do
  {
    if (*(v3 + 8 * v11) < 0x80uLL)
    {
      v13 = *(v3 + 8 * v11);
    }

    else
    {
      do
      {
        OUTLINED_FUNCTION_1_7(v10);
      }

      while (v12);
    }

    OUTLINED_FUNCTION_4_5(v10);
  }

  while (!v9);
  *(v2 + 8) = v10;
}

uint64_t sub_1AC462044(uint64_t a1, unint64_t a2)
{
  v108 = 0;
  v109 = 0xE000000000000000;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {

    v5 = 0;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v8 = sub_1AC51F2C8();
        goto LABEL_15;
      }

      if ((a2 & 0x2000000000000000) == 0)
      {
        break;
      }

      v106 = a1;
      v107 = a2 & 0xFFFFFFFFFFFFFFLL;
      v7 = &v106 + v5;
      v8 = *(&v106 + v5);
      if ((*(&v106 + v5) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      switch(__clz(v8 ^ 0xFF))
      {
        case 0x1Au:
LABEL_36:
          v8 = v7[1] & 0x3F | ((v8 & 0x1F) << 6);
          v9 = 2;
          break;
        case 0x1Bu:
LABEL_46:
          v8 = ((v8 & 0xF) << 12) | ((v7[1] & 0x3F) << 6) | v7[2] & 0x3F;
          v9 = 3;
          break;
        case 0x1Cu:
LABEL_47:
          v8 = ((v8 & 0xF) << 18) | ((v7[1] & 0x3F) << 12) | ((v7[2] & 0x3F) << 6) | v7[3] & 0x3F;
          v9 = 4;
          break;
        default:
          goto LABEL_14;
      }

LABEL_15:
      v5 += v9;
      if (v8 != 92)
      {
        goto LABEL_44;
      }

      v10 = v5 >= v3;
      v11 = v5 == v3;
      if (v5 >= v3)
      {
        goto LABEL_222;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v14 = sub_1AC51F2C8();
        goto LABEL_26;
      }

      if ((a2 & 0x2000000000000000) == 0)
      {
        v12 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v12 = sub_1AC51F308();
        }

        v13 = (v12 + v5);
        v14 = *(v12 + v5);
        if (*(v12 + v5) < 0)
        {
          switch(__clz(v14 ^ 0xFF))
          {
            case 0x1Au:
              goto LABEL_49;
            case 0x1Bu:
              goto LABEL_51;
            case 0x1Cu:
              goto LABEL_52;
            default:
              break;
          }
        }

LABEL_25:
        v15 = 1;
        goto LABEL_26;
      }

      v106 = a1;
      v107 = a2 & 0xFFFFFFFFFFFFFFLL;
      v13 = &v106 + v5;
      v14 = *(&v106 + v5);
      if ((*(&v106 + v5) & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      switch(__clz(v14 ^ 0xFF))
      {
        case 0x1Au:
LABEL_49:
          v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
          v15 = 2;
          break;
        case 0x1Bu:
LABEL_51:
          v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
          v15 = 3;
          break;
        case 0x1Cu:
LABEL_52:
          v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
          v15 = 4;
          break;
        default:
          goto LABEL_25;
      }

LABEL_26:
      v5 += v15;
      if (!v11 && v10)
      {
        if (v14 != 34 && v14 != 47 && v14 != 92 && v14 != 98 && v14 != 102)
        {
          goto LABEL_222;
        }
      }

      else
      {
        switch(v14)
        {
          case 'n':
          case 'r':
          case 't':
            break;
          case 'o':
          case 'p':
          case 'q':
          case 's':
            goto LABEL_222;
          case 'u':
            if (v5 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v19 = sub_1AC51F2C8();
              v21 = v20;
              goto LABEL_55;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v16 = sub_1AC51F308();
              }

              v17 = (v16 + v5);
              v18 = *(v16 + v5);
              v19 = *(v16 + v5);
              if (v18 < 0)
              {
                switch(__clz(v19 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_76;
                  case 0x1Bu:
                    goto LABEL_88;
                  case 0x1Cu:
                    goto LABEL_89;
                  default:
                    break;
                }
              }

LABEL_54:
              v21 = 1;
              goto LABEL_55;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v17 = &v106 + v5;
            v19 = *(&v106 + v5);
            if ((*(&v106 + v5) & 0x80000000) == 0)
            {
              goto LABEL_54;
            }

            switch(__clz(v19 ^ 0xFF))
            {
              case 0x1Au:
LABEL_76:
                v19 = v17[1] & 0x3F | ((v19 & 0x1F) << 6);
                v21 = 2;
                break;
              case 0x1Bu:
LABEL_88:
                v19 = ((v19 & 0xF) << 12) | ((v17[1] & 0x3F) << 6) | v17[2] & 0x3F;
                v21 = 3;
                break;
              case 0x1Cu:
LABEL_89:
                v19 = ((v19 & 0xF) << 18) | ((v17[1] & 0x3F) << 12) | ((v17[2] & 0x3F) << 6) | v17[3] & 0x3F;
                v21 = 4;
                break;
              default:
                goto LABEL_54;
            }

LABEL_55:
            v22 = sub_1AC4E5E7C(v19);
            if ((v22 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v23 = v21 + v5;
            if (v21 + v5 >= v3)
            {
              goto LABEL_222;
            }

            v24 = v22;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v28 = sub_1AC51F2C8();
              v30 = v29;
              goto LABEL_66;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v25 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v25 = sub_1AC51F308();
              }

              v26 = (v25 + v23);
              v27 = *(v25 + v23);
              v28 = *(v25 + v23);
              if (v27 < 0)
              {
                switch(__clz(v28 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_91;
                  case 0x1Bu:
                    goto LABEL_116;
                  case 0x1Cu:
                    goto LABEL_117;
                  default:
                    break;
                }
              }

LABEL_65:
              v30 = 1;
              goto LABEL_66;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v26 = &v106 + v23;
            v28 = *(&v106 + v23);
            if ((*(&v106 + v23) & 0x80000000) == 0)
            {
              goto LABEL_65;
            }

            switch(__clz(v28 ^ 0xFF))
            {
              case 0x1Au:
LABEL_91:
                v28 = v26[1] & 0x3F | ((v28 & 0x1F) << 6);
                v30 = 2;
                break;
              case 0x1Bu:
LABEL_116:
                v28 = ((v28 & 0xF) << 12) | ((v26[1] & 0x3F) << 6) | v26[2] & 0x3F;
                v30 = 3;
                break;
              case 0x1Cu:
LABEL_117:
                v28 = ((v28 & 0xF) << 18) | ((v26[1] & 0x3F) << 12) | ((v26[2] & 0x3F) << 6) | v26[3] & 0x3F;
                v30 = 4;
                break;
              default:
                goto LABEL_65;
            }

LABEL_66:
            v31 = sub_1AC4E5E7C(v28);
            if ((v31 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v32 = v30 + v23;
            if (v30 + v23 >= v3)
            {
              goto LABEL_222;
            }

            v33 = v31;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v37 = sub_1AC51F2C8();
              v39 = v38;
              goto LABEL_79;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v34 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v34 = sub_1AC51F308();
              }

              v35 = (v34 + v32);
              v36 = *(v34 + v32);
              v37 = *(v34 + v32);
              if (v36 < 0)
              {
                switch(__clz(v37 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_119;
                  case 0x1Bu:
                    goto LABEL_134;
                  case 0x1Cu:
                    goto LABEL_135;
                  default:
                    break;
                }
              }

LABEL_78:
              v39 = 1;
              goto LABEL_79;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v35 = &v106 + v32;
            v37 = *(&v106 + v32);
            if ((*(&v106 + v32) & 0x80000000) == 0)
            {
              goto LABEL_78;
            }

            switch(__clz(v37 ^ 0xFF))
            {
              case 0x1Au:
LABEL_119:
                v37 = v35[1] & 0x3F | ((v37 & 0x1F) << 6);
                v39 = 2;
                break;
              case 0x1Bu:
LABEL_134:
                v37 = ((v37 & 0xF) << 12) | ((v35[1] & 0x3F) << 6) | v35[2] & 0x3F;
                v39 = 3;
                break;
              case 0x1Cu:
LABEL_135:
                v37 = ((v37 & 0xF) << 18) | ((v35[1] & 0x3F) << 12) | ((v35[2] & 0x3F) << 6) | v35[3] & 0x3F;
                v39 = 4;
                break;
              default:
                goto LABEL_78;
            }

LABEL_79:
            v40 = sub_1AC4E5E7C(v37);
            if ((v40 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v41 = v39 + v32;
            if (v41 >= v3)
            {
              goto LABEL_222;
            }

            v42 = v40;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v46 = sub_1AC51F2C8();
              v48 = v47;
              goto LABEL_94;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v43 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v43 = sub_1AC51F308();
              }

              v44 = (v43 + v41);
              v45 = *(v43 + v41);
              v46 = *(v43 + v41);
              if (v45 < 0)
              {
                switch(__clz(v46 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_137;
                  case 0x1Bu:
                    goto LABEL_160;
                  case 0x1Cu:
                    goto LABEL_161;
                  default:
                    break;
                }
              }

LABEL_93:
              v48 = 1;
              goto LABEL_94;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v44 = &v106 + v41;
            v46 = *(&v106 + v41);
            if ((*(&v106 + v41) & 0x80000000) == 0)
            {
              goto LABEL_93;
            }

            switch(__clz(v46 ^ 0xFF))
            {
              case 0x1Au:
LABEL_137:
                v46 = v44[1] & 0x3F | ((v46 & 0x1F) << 6);
                v48 = 2;
                break;
              case 0x1Bu:
LABEL_160:
                v46 = ((v46 & 0xF) << 12) | ((v44[1] & 0x3F) << 6) | v44[2] & 0x3F;
                v48 = 3;
                break;
              case 0x1Cu:
LABEL_161:
                v46 = ((v46 & 0xF) << 18) | ((v44[1] & 0x3F) << 12) | ((v44[2] & 0x3F) << 6) | v44[3] & 0x3F;
                v48 = 4;
                break;
              default:
                goto LABEL_93;
            }

LABEL_94:
            v49 = sub_1AC4E5E7C(v46);
            if ((v49 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            if (v24 >> 28)
            {
              __break(1u);
LABEL_226:
              __break(1u);
LABEL_227:
              __break(1u);
LABEL_228:
              __break(1u);
LABEL_229:
              __break(1u);
LABEL_230:
              __break(1u);
LABEL_231:
              __break(1u);
LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
LABEL_234:
              __break(1u);
LABEL_235:
              __break(1u);
LABEL_236:
              __break(1u);
LABEL_237:
              __break(1u);
              JUMPOUT(0x1AC4631A0);
            }

            v50 = v33 + 16 * v24;
            if (__CFADD__(v33, 16 * v24))
            {
              goto LABEL_226;
            }

            if (v50 >> 28)
            {
              goto LABEL_227;
            }

            v10 = __CFADD__(v42, 16 * v50);
            v51 = v42 + 16 * v50;
            if (v10)
            {
              goto LABEL_228;
            }

            if (v51 >> 28)
            {
              goto LABEL_229;
            }

            v52 = v49 + 16 * v51;
            if (__CFADD__(v49, 16 * v51))
            {
              goto LABEL_230;
            }

            v5 = v48 + v41;
            if (HIWORD(v52) <= 0x10u && (v52 & 0xFFFFF800) != 55296)
            {
              break;
            }

            if (v52 >= 0xE000 || v52 >> 10 >= 0x37 || v5 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v57 = sub_1AC51F2C8();
              goto LABEL_122;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v54 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v54 = sub_1AC51F308();
              }

              v55 = (v54 + v5);
              v56 = *(v54 + v5);
              v57 = *(v54 + v5);
              if (v56 < 0)
              {
                switch(__clz(v57 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_163;
                  case 0x1Bu:
                    goto LABEL_175;
                  case 0x1Cu:
                    goto LABEL_176;
                  default:
                    break;
                }
              }

LABEL_121:
              v58 = 1;
              goto LABEL_122;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v55 = &v106 + v5;
            v57 = *(&v106 + v5);
            if ((*(&v106 + v5) & 0x80000000) == 0)
            {
              goto LABEL_121;
            }

            switch(__clz(v57 ^ 0xFF))
            {
              case 0x1Au:
LABEL_163:
                v57 = v55[1] & 0x3F | ((v57 & 0x1F) << 6);
                v58 = 2;
                break;
              case 0x1Bu:
LABEL_175:
                v57 = ((v57 & 0xF) << 12) | ((v55[1] & 0x3F) << 6) | v55[2] & 0x3F;
                v58 = 3;
                break;
              case 0x1Cu:
LABEL_176:
                v57 = ((v57 & 0xF) << 18) | ((v55[1] & 0x3F) << 12) | ((v55[2] & 0x3F) << 6) | v55[3] & 0x3F;
                v58 = 4;
                break;
              default:
                goto LABEL_121;
            }

LABEL_122:
            v59 = v58 + v5;
            if (v57 != 92 || v59 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v64 = sub_1AC51F2C8();
              goto LABEL_140;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v61 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v61 = sub_1AC51F308();
              }

              v62 = (v61 + v59);
              v63 = *(v61 + v59);
              v64 = *(v61 + v59);
              if (v63 < 0)
              {
                switch(__clz(v64 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_178;
                  case 0x1Bu:
                    goto LABEL_192;
                  case 0x1Cu:
                    goto LABEL_193;
                  default:
                    break;
                }
              }

LABEL_139:
              v65 = 1;
              goto LABEL_140;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v62 = &v106 + v59;
            v64 = *(&v106 + v59);
            if ((*(&v106 + v59) & 0x80000000) == 0)
            {
              goto LABEL_139;
            }

            switch(__clz(v64 ^ 0xFF))
            {
              case 0x1Au:
LABEL_178:
                v64 = v62[1] & 0x3F | ((v64 & 0x1F) << 6);
                v65 = 2;
                break;
              case 0x1Bu:
LABEL_192:
                v64 = ((v64 & 0xF) << 12) | ((v62[1] & 0x3F) << 6) | v62[2] & 0x3F;
                v65 = 3;
                break;
              case 0x1Cu:
LABEL_193:
                v64 = ((v64 & 0xF) << 18) | ((v62[1] & 0x3F) << 12) | ((v62[2] & 0x3F) << 6) | v62[3] & 0x3F;
                v65 = 4;
                break;
              default:
                goto LABEL_139;
            }

LABEL_140:
            if (v64 != 117)
            {
              goto LABEL_222;
            }

            v66 = v65 + v59;
            if (v65 + v59 >= v3)
            {
              goto LABEL_222;
            }

            if ((a2 & 0x1000000000000000) != 0)
            {
              v70 = sub_1AC51F2C8();
              v72 = v71;
              goto LABEL_151;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v67 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v67 = sub_1AC51F308();
              }

              v68 = (v67 + v66);
              v69 = *(v67 + v66);
              v70 = *(v67 + v66);
              if (v69 < 0)
              {
                switch(__clz(v70 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_180;
                  case 0x1Bu:
                    goto LABEL_194;
                  case 0x1Cu:
                    goto LABEL_195;
                  default:
                    break;
                }
              }

LABEL_150:
              v72 = 1;
              goto LABEL_151;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v68 = &v106 + v66;
            v70 = *(&v106 + v66);
            if ((*(&v106 + v66) & 0x80000000) == 0)
            {
              goto LABEL_150;
            }

            switch(__clz(v70 ^ 0xFF))
            {
              case 0x1Au:
LABEL_180:
                v70 = v68[1] & 0x3F | ((v70 & 0x1F) << 6);
                v72 = 2;
                break;
              case 0x1Bu:
LABEL_194:
                v70 = ((v70 & 0xF) << 12) | ((v68[1] & 0x3F) << 6) | v68[2] & 0x3F;
                v72 = 3;
                break;
              case 0x1Cu:
LABEL_195:
                v70 = ((v70 & 0xF) << 18) | ((v68[1] & 0x3F) << 12) | ((v68[2] & 0x3F) << 6) | v68[3] & 0x3F;
                v72 = 4;
                break;
              default:
                goto LABEL_150;
            }

LABEL_151:
            v73 = sub_1AC4E5E7C(v70);
            if ((v73 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v74 = v72 + v66;
            if (v72 + v66 >= v3)
            {
              goto LABEL_222;
            }

            v75 = v73;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v79 = sub_1AC51F2C8();
              v81 = v80;
              goto LABEL_166;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v76 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v76 = sub_1AC51F308();
              }

              v77 = (v76 + v74);
              v78 = *(v76 + v74);
              v79 = *(v76 + v74);
              if (v78 < 0)
              {
                switch(__clz(v79 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_197;
                  case 0x1Bu:
                    goto LABEL_212;
                  case 0x1Cu:
                    goto LABEL_213;
                  default:
                    break;
                }
              }

LABEL_165:
              v81 = 1;
              goto LABEL_166;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v77 = &v106 + v74;
            v79 = *(&v106 + v74);
            if ((*(&v106 + v74) & 0x80000000) == 0)
            {
              goto LABEL_165;
            }

            switch(__clz(v79 ^ 0xFF))
            {
              case 0x1Au:
LABEL_197:
                v79 = v77[1] & 0x3F | ((v79 & 0x1F) << 6);
                v81 = 2;
                break;
              case 0x1Bu:
LABEL_212:
                v79 = ((v79 & 0xF) << 12) | ((v77[1] & 0x3F) << 6) | v77[2] & 0x3F;
                v81 = 3;
                break;
              case 0x1Cu:
LABEL_213:
                v79 = ((v79 & 0xF) << 18) | ((v77[1] & 0x3F) << 12) | ((v77[2] & 0x3F) << 6) | v77[3] & 0x3F;
                v81 = 4;
                break;
              default:
                goto LABEL_165;
            }

LABEL_166:
            v82 = sub_1AC4E5E7C(v79);
            if ((v82 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v83 = v81 + v74;
            if (v83 >= v3)
            {
              goto LABEL_222;
            }

            v84 = v82;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v88 = sub_1AC51F2C8();
              v90 = v89;
              goto LABEL_183;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v85 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v85 = sub_1AC51F308();
              }

              v86 = (v85 + v83);
              v87 = *(v85 + v83);
              v88 = *(v85 + v83);
              if (v87 < 0)
              {
                switch(__clz(v88 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_215;
                  case 0x1Bu:
                    goto LABEL_216;
                  case 0x1Cu:
                    goto LABEL_217;
                  default:
                    break;
                }
              }

LABEL_182:
              v90 = 1;
              goto LABEL_183;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v86 = &v106 + v83;
            v88 = *(&v106 + v83);
            if ((*(&v106 + v83) & 0x80000000) == 0)
            {
              goto LABEL_182;
            }

            switch(__clz(v88 ^ 0xFF))
            {
              case 0x1Au:
LABEL_215:
                v88 = v86[1] & 0x3F | ((v88 & 0x1F) << 6);
                v90 = 2;
                break;
              case 0x1Bu:
LABEL_216:
                v88 = ((v88 & 0xF) << 12) | ((v86[1] & 0x3F) << 6) | v86[2] & 0x3F;
                v90 = 3;
                break;
              case 0x1Cu:
LABEL_217:
                v88 = ((v88 & 0xF) << 18) | ((v86[1] & 0x3F) << 12) | ((v86[2] & 0x3F) << 6) | v86[3] & 0x3F;
                v90 = 4;
                break;
              default:
                goto LABEL_182;
            }

LABEL_183:
            v91 = sub_1AC4E5E7C(v88);
            if ((v91 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            v92 = v90 + v83;
            if (v92 >= v3)
            {
              goto LABEL_222;
            }

            v93 = v91;
            if ((a2 & 0x1000000000000000) != 0)
            {
              v97 = sub_1AC51F2C8();
              v105 = v98;
              goto LABEL_201;
            }

            if ((a2 & 0x2000000000000000) == 0)
            {
              v94 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
              if ((a1 & 0x1000000000000000) == 0)
              {
                v94 = sub_1AC51F308();
              }

              v95 = (v94 + v92);
              v96 = *(v94 + v92);
              v97 = *(v94 + v92);
              if (v96 < 0)
              {
                switch(__clz(v97 ^ 0xFF))
                {
                  case 0x1Au:
                    goto LABEL_219;
                  case 0x1Bu:
                    goto LABEL_220;
                  case 0x1Cu:
                    goto LABEL_221;
                  default:
                    break;
                }
              }

LABEL_199:
              v99 = 1;
              goto LABEL_200;
            }

            v106 = a1;
            v107 = a2 & 0xFFFFFFFFFFFFFFLL;
            v95 = &v106 + v92;
            v97 = *(&v106 + v92);
            if ((*(&v106 + v92) & 0x80000000) == 0)
            {
              goto LABEL_199;
            }

            switch(__clz(v97 ^ 0xFF))
            {
              case 0x1Au:
LABEL_219:
                v97 = v95[1] & 0x3F | ((v97 & 0x1F) << 6);
                v99 = 2;
                break;
              case 0x1Bu:
LABEL_220:
                v97 = ((v97 & 0xF) << 12) | ((v95[1] & 0x3F) << 6) | v95[2] & 0x3F;
                v99 = 3;
                break;
              case 0x1Cu:
LABEL_221:
                v97 = ((v97 & 0xF) << 18) | ((v95[1] & 0x3F) << 12) | ((v95[2] & 0x3F) << 6) | v95[3] & 0x3F;
                v99 = 4;
                break;
              default:
                goto LABEL_199;
            }

LABEL_200:
            v105 = v99;
LABEL_201:
            v100 = sub_1AC4E5E7C(v97);
            if ((v100 & 0x100000000) != 0)
            {
              goto LABEL_222;
            }

            if (v75 >> 28)
            {
              goto LABEL_231;
            }

            v101 = v84 + 16 * v75;
            if (__CFADD__(v84, 16 * v75))
            {
              goto LABEL_232;
            }

            if (v101 >> 28)
            {
              goto LABEL_233;
            }

            v10 = __CFADD__(v93, 16 * v101);
            v102 = v93 + 16 * v101;
            if (v10)
            {
              goto LABEL_234;
            }

            if (v102 >> 28)
            {
              goto LABEL_235;
            }

            v10 = __CFADD__(v100, 16 * v102);
            v103 = v100 + 16 * v102;
            if (v10)
            {
              goto LABEL_236;
            }

            if (v103 >> 10 != 55)
            {
              goto LABEL_222;
            }

            if (v52 < 0xD800)
            {
              goto LABEL_237;
            }

            if ((sub_1AC51F4E8() & 0x100000000) != 0)
            {
LABEL_222:

              return 0;
            }

            v5 = v105 + v92;
            break;
          default:
            JUMPOUT(0);
        }
      }

LABEL_44:
      sub_1AC51EE88();
      if (v5 >= v3)
      {

        return v108;
      }
    }

    v6 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    if ((a1 & 0x1000000000000000) == 0)
    {
      v6 = sub_1AC51F308();
    }

    v7 = (v6 + v5);
    v8 = *(v6 + v5);
    if (*(v6 + v5) < 0)
    {
      switch(__clz(v8 ^ 0xFF))
      {
        case 0x1Au:
          goto LABEL_36;
        case 0x1Bu:
          goto LABEL_46;
        case 0x1Cu:
          goto LABEL_47;
        default:
          break;
      }
    }

LABEL_14:
    v9 = 1;
    goto LABEL_15;
  }

  return 0;
}

uint64_t static Message.jsonString<A>(from:options:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = sub_1AC51EE28();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  OUTLINED_FUNCTION_12_8();
  v17 = v16 - v15;
  LOBYTE(v16) = a2[1];
  v18 = a2[2];
  v19 = a2[3];
  v23[0] = *a2;
  v23[1] = v16;
  v23[2] = v18;
  v23[3] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
  static Message.jsonUTF8Bytes<A, B>(from:options:)(a1, v23, a3, a4, v20, a5, a6, &protocol witness table for <A> [A], &v24);
  if (v6)
  {
    return v17;
  }

  sub_1AC51EE18();
  sub_1AC45A8C0();
  result = sub_1AC51EE08();
  if (v22)
  {
    v17 = result;

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t static Message.jsonUTF8Bytes<A, B>(from:options:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v66 = a8;
  v74 = a6;
  v65 = a5;
  AssociatedConformanceWitness = a1;
  v64[1] = a9;
  OUTLINED_FUNCTION_5();
  v70 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_12_8();
  v20 = v19 - v18;
  v21 = sub_1AC51F228();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = v64 - v23;
  OUTLINED_FUNCTION_5();
  v72 = v25;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_12_8();
  v68 = v30 - v29;
  v69 = *(a7 + 8);
  v67 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5();
  v71 = v31;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v75 = v64 - v35;
  v36 = *a2;
  v37 = a2[1];
  v38 = a2[2];
  v39 = a2[3];
  if (dynamic_cast_existential_1_conditional(a3))
  {
    (*(v40 + 8))(&v77);
    v81 = v77;
    *v82 = v78;
    *&v82[16] = 0;
    v82[24] = v36;
    v82[25] = v37;
    v82[26] = v38;
    v82[27] = v39;
    v41 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_3_23();
      v41 = v61;
    }

    v42 = *(v41 + 16);
    if (v42 >= *(v41 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_27();
      v41 = v62;
    }

    *(v41 + 16) = v42 + 1;
    *(v41 + v42 + 32) = 91;
    *&v80 = v41;
    WORD4(v80) = 256;
    (*(v72 + 16))(v68, AssociatedConformanceWitness, v67);
    sub_1AC51F008();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v43 = (v70 + 32);
    v72 = v74 + 72;
    v44 = (v70 + 8);
    while (1)
    {
      sub_1AC51F248();
      if (__swift_getEnumTagSinglePayload(v24, 1, a3) == 1)
      {
        break;
      }

      (*v43)(v20, v24, a3);
      v45 = v74;
      sub_1AC463A40(v20, &v80, a3, v74);
      (*(v45 + 72))(&v80, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, a3, v45);
      if (v9)
      {
        (*v44)(v20, a3);
        v59 = OUTLINED_FUNCTION_6_17();
        v60(v59);
        goto LABEL_19;
      }

      v41 = v80;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_3_23();
        v41 = v47;
      }

      v46 = *(v41 + 16);
      if (v46 >= *(v41 + 24) >> 1)
      {
        OUTLINED_FUNCTION_0_27();
        v41 = v48;
      }

      (*v44)(v20, a3);
      *(v41 + 16) = v46 + 1;
      OUTLINED_FUNCTION_5_18(v41 + v46);
    }

    v51 = OUTLINED_FUNCTION_6_17();
    v52(v51);
    v53 = *(v41 + 16);
    if (v53 >= *(v41 + 24) >> 1)
    {
      OUTLINED_FUNCTION_0_27();
      v41 = v63;
    }

    v54 = v66;
    v55 = v65;
    *(v41 + 16) = v53 + 1;
    OUTLINED_FUNCTION_5_18(v41 + v53);
    v83 = v41;
    v56 = *(v54 + 16);

    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FA8, &unk_1AC51FCD0);
    v58 = sub_1AC45A8C0();
    v56(&v83, v57, v58, v55, v54);
LABEL_19:
    v77 = v80;
    v78 = v81;
    v79[0] = *v82;
    *(v79 + 12) = *&v82[12];
    return sub_1AC45A95C(&v77);
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    *v49 = 4;
    swift_willThrow();
  }
}

uint64_t sub_1AC463A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_36_3(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7_1(v5);
  (*(v6 + 16))();
  sub_1AC45A5F0(v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FB8, qword_1AC5279F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB559798, &qword_1AC528E10);
  if (OUTLINED_FUNCTION_33_4())
  {
    __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
    v7 = OUTLINED_FUNCTION_24_6();
    v8(v7);
    v9 = v12;
    __swift_destroy_boxed_opaque_existential_1(&v14);
  }

  else
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_1AC45A718(&v14, &qword_1EB5597A0, &qword_1AC528E18);
    v9 = 0;
  }

  v10 = *(v4 + 48);

  *(v4 + 48) = v9;
  sub_1AC463B50();
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

void sub_1AC463B50()
{
  if ((*(v0 + 9) & 1) == 0)
  {
    v1 = *(v0 + 8);
    sub_1AC45A774();
    OUTLINED_FUNCTION_11_10();
    OUTLINED_FUNCTION_0_22();
  }

  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_2_15();
  OUTLINED_FUNCTION_13_8(v2);
  *(v0 + 8) = 256;
}

void sub_1AC463BA8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_5(a1, a2);
  if (!v3)
  {
    sub_1AC45A774();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_1_21();
    v6 = *(v4 + 16);
    if (v6)
    {
      v7 = 0;
      v8 = (v4 + 40);
      do
      {
        v10 = *(v8 - 1);
        v9 = *v8;

        if (v7)
        {
          sub_1AC45A774();
          OUTLINED_FUNCTION_37_4();
          v11 = *v2;
          *(v11 + 16) = v5 + 1;
          *(v11 + v5 + 32) = 44;
          *v2 = v11;
        }

        sub_1AC45AEA4(v10, v9);

        v8 += 2;
        v7 = 1;
        --v6;
      }

      while (v6);
    }

    sub_1AC45A774();
    v12 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v12);
    OUTLINED_FUNCTION_0_23();
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularEnumField<A>(value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 384))();
}

{
  return (*(a5 + 392))();
}

void sub_1AC463CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_28_0();
  v28 = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_3_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  if (!*(v20 + 33))
  {
    OUTLINED_FUNCTION_17_0();
    v36 = sub_1AC453530();
    if (!v21)
    {
      (*(v25 + 32))(v36, v23, v25);
      OUTLINED_FUNCTION_20_2();
      if (v37)
      {
        v38 = *(v30 + 8);
        v39 = OUTLINED_FUNCTION_93_0();
        v40(v39);
      }

      else
      {
        OUTLINED_FUNCTION_5();
        v42 = v41;
        v44 = *(v43 + 8);
        v45 = OUTLINED_FUNCTION_12();
        v46(v45);
        (*(v42 + 32))(v24, v35, v23);
        *(v22 + 32) = 1;
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

void *OUTLINED_FUNCTION_105(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char __src)
{

  return memcpy((v23 - 256), &__src, 0x67uLL);
}

uint64_t OUTLINED_FUNCTION_105_0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

uint64_t sub_1AC463E94(uint64_t result)
{
  v2 = *(v1 + 4);
  if (v2)
  {
    if (result <= 0xF7u)
    {
      v3 = (*v1 >> result);
      v4 = ((result + 8) - result) / -8;
      *v1 = (*v1 >> (((result + 8) >> 1) & 0x1C) >> (((result + 8) >> 1) & 0x1C) << ((result + 8 + 8 * v4) & 0x18)) | *v1 & ((1 << ((result >> 1) & 0x1C) << ((result >> 1) & 0x1C)) - 1);
      *(v1 + 4) = v2 + 8 * v4;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1AC463F1C()
{
  result = qword_1ED6E4330;
  if (!qword_1ED6E4330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4330);
  }

  return result;
}

uint64_t sub_1AC463F8C(unsigned int a1)
{
  if ((a1 & 0x80000000) != 0)
  {
    return sub_1AC4519B4(a1);
  }

  v1 = 2;
  v2 = 3;
  v3 = 4;
  if (a1 >> 28)
  {
    v3 = 5;
  }

  if (a1 >= 0x200000)
  {
    v2 = v3;
  }

  if (a1 >= 0x4000)
  {
    v1 = v2;
  }

  if (a1 >= 0x80)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1AC463FF8(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  result = sub_1AC451978(8 * a2);
  v8 = *v4 + result;
  if (__OFADD__(*v4, result))
  {
    __break(1u);
  }

  else
  {
    v9 = (*(a4 + 40))(a3, a4);
    result = sub_1AC463F8C(v9);
    if (!__OFADD__(v8, result))
    {
      *v4 = v8 + result;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC46408C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1AC4640DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 32))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

double Google_Protobuf_Timestamp.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t Google_Protobuf_Timestamp.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[2];
  while (1)
  {
    result = v6(a2, a3);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v11 = a3[9];
      OUTLINED_FUNCTION_36_0();
      v12();
    }

    else if (result == 1)
    {
      v9 = a3[12];
      OUTLINED_FUNCTION_36_0();
      v10();
    }
  }

  return result;
}

uint64_t sub_1AC46424C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = (*(v0 + 40))(v1, v0);
  v3 = OUTLINED_FUNCTION_10_7();
  sub_1AC451CCC(v3, 0);
  return sub_1AC457060(v2);
}

uint64_t Google_Protobuf_Timestamp.date.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_1AC51ECE8();
  OUTLINED_FUNCTION_0_17();
  if (!(v5 ^ v6 | v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v3.n128_f64[0] <= -9.22337204e18)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_3_14();
  if (!v5)
  {
    goto LABEL_11;
  }

  if (__OFSUB__(v1, v3.n128_f64[0]))
  {
LABEL_12:
    __break(1u);
    return MEMORY[0x1EEDC4690](v3);
  }

  v3.n128_f64[0] = v2 / 1000000000.0 + (v1 - v3.n128_f64[0]);

  return MEMORY[0x1EEDC4690](v3);
}

void sub_1AC464360(uint64_t a1, uint64_t a2, int a3)
{
  v6 = sub_1AC451978((8 * a3) | 2u);
  v7 = MEMORY[0x1AC5B40B0](a1, a2);
  v8 = sub_1AC4519B4(v7);
  v9 = v6 + v8;
  if (__OFADD__(v6, v8))
  {
    __break(1u);
    goto LABEL_6;
  }

  v10 = __OFADD__(v9, v7);
  v11 = v9 + v7;
  if (v10)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v10 = __OFADD__(*v3, v11);
  v12 = *v3 + v11;
  if (!v10)
  {
    OUTLINED_FUNCTION_11_4(v12);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1AC464420()
{
  OUTLINED_FUNCTION_28_0();
  OUTLINED_FUNCTION_13_3(v0, v1, v2);
  v3 = OUTLINED_FUNCTION_12();
  v4 = MEMORY[0x1AC5B40B0](v3);
  sub_1AC45702C(v4);
  v5 = OUTLINED_FUNCTION_12();
  return sub_1AC46448C(v5, v6);
}

uint64_t sub_1AC46448C(uint64_t result, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v5 = result >> 32;
      if (result >> 32 < result)
      {
        __break(1u);
      }

      result = result;
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v7 = v5;
      goto LABEL_7;
    case 2uLL:
      v8 = *(result + 24);
      v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      result = *(result + 16);
      v7 = v8;
LABEL_7:
      result = sub_1AC4645F4(result, v7, v6, v2);
      break;
    case 3uLL:
      break;
    default:
      __src = result;
      v11 = a2;
      v12 = BYTE2(a2);
      v13 = BYTE3(a2);
      v14 = BYTE4(a2);
      v3 = BYTE6(a2);
      v15 = BYTE5(a2);
      if (BYTE6(a2))
      {
        v4 = *v2;
        result = memcpy(*v2, &__src, BYTE6(a2));
        *v2 = &v4[v3];
      }

      break;
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1AC4645F4(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  result = sub_1AC51EB78();
  v8 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AC51EB98();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v8[v12];
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_1AC464698(v8, v14, a4);
}

void *sub_1AC464698(void *__src, uint64_t a2, void **a3)
{
  if (__src)
  {
    v3 = a2 - __src;
    if (a2 - __src >= 1)
    {
      __src = memmove(*a3, __src, v3);
      *a3 = *a3 + v3;
    }
  }

  return __src;
}

void sub_1AC464710(uint64_t a1, int a2)
{
  v3 = 8 * a2;
  v4 = 10;
  v5 = 11;
  v6 = 12;
  if ((8 * a2) >> 28)
  {
    v6 = 13;
  }

  if (v3 >= 0x200000)
  {
    v5 = v6;
  }

  if ((8 * a2) >> 14)
  {
    v4 = v5;
  }

  if (v3 >= 0x80)
  {
    v7 = v4;
  }

  else
  {
    v7 = 9;
  }

  v8 = __OFADD__(*v2, v7);
  v9 = *v2 + v7;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v9);
  }
}

void sub_1AC4647B8()
{
  OUTLINED_FUNCTION_1_6();
  if (!v8)
  {
    ++v7;
  }

  if (v2 >= 0x200000)
  {
    v6 = v7;
  }

  if (v5)
  {
    v4 = v6;
  }

  if (v2 >= 0x80)
  {
    v9 = v4;
  }

  else
  {
    v9 = v3;
  }

  v10 = (2 * v1) ^ (v1 >> 31);
  v11 = 2;
  v12 = 3;
  v13 = 4;
  if (v10 >> 28)
  {
    v13 = 5;
  }

  if (v10 >= 0x200000)
  {
    v12 = v13;
  }

  if (v10 >> 14)
  {
    v11 = v12;
  }

  if (v10 >= 0x80)
  {
    v14 = v11;
  }

  else
  {
    v14 = 1;
  }

  v15 = v14 + v9;
  v16 = __OFADD__(*v0, v15);
  v17 = *v0 + v15;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v17);
  }
}

uint64_t UnknownStorage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v5 = v3[1];
  switch(v5 >> 62)
  {
    case 1uLL:
      v6 = result;
      v7 = result >> 32;
      goto LABEL_6;
    case 2uLL:
      v6 = *(result + 16);
      v7 = *(result + 24);
LABEL_6:
      if (v6 != v7)
      {
        return (*(a3 + 448))(result);
      }

      return result;
    case 3uLL:
      return result;
    default:
      if ((v5 & 0xFF000000000000) == 0)
      {
        return result;
      }

      return (*(a3 + 448))(result);
  }
}

uint64_t sub_1AC46491C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1AC464994(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 24))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t Message.debugDescription.getter()
{
  OUTLINED_FUNCTION_76();
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  return sub_1AC51EE48();
}

uint64_t sub_1AC464A5C()
{
  OUTLINED_FUNCTION_28_0();
  v2 = OUTLINED_FUNCTION_3_7(v0, v1);
  sub_1AC451CCC(v2, 0);
  v3 = OUTLINED_FUNCTION_10_7();
  return sub_1AC457060(v3);
}

void sub_1AC464AA8(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_0_7(a1, a2);
  sub_1AC451CCC(v4, 1u);
  v5 = *(v2 + 8);
  *v5 = v3;
  OUTLINED_FUNCTION_16_5((v5 + 1));
}

void sub_1AC464AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_60();
  a19 = v26;
  a20 = v27;
  OUTLINED_FUNCTION_28_0();
  v28 = OUTLINED_FUNCTION_103_0();
  OUTLINED_FUNCTION_3_0(v28);
  v30 = v29;
  v32 = *(v31 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &a9 - v34;
  if (!*(v20 + 33))
  {
    OUTLINED_FUNCTION_17_0();
    v36 = sub_1AC453530();
    if (!v21)
    {
      (*(v25 + 32))(v36, v23, v25);
      v37 = OUTLINED_FUNCTION_92_0();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v37, v38, v23);
      v40 = *(v30 + 8);
      if (EnumTagSinglePayload == 1)
      {
        v40(v35, v28);
      }

      else
      {
        v40(v24, v28);
        OUTLINED_FUNCTION_7_1(v23);
        (*(v41 + 32))(v24, v35, v23);
        __swift_storeEnumTagSinglePayload(v24, 0, 1, v23);
        *(v22 + 32) = 1;
      }
    }
  }

  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC464D00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1AC464D70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void Google_Protobuf_UInt32Value.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 120);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

uint64_t OUTLINED_FUNCTION_321()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_322(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12)
{
  a11 = *v12;
  a12 = a11;

  return sub_1AC4848F4(&a12, &a9);
}

uint64_t dispatch thunk of Decoder.decodeSingularFixed64Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 248))();
}

{
  return (*(a3 + 240))();
}

void sub_1AC464EF0(uint64_t a1)
{
  if (!*(v1 + 33))
  {
    v4 = sub_1AC453530();
    if (!v2)
    {
      OUTLINED_FUNCTION_102_0(v4);
      *(a1 + 4) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

uint64_t dispatch thunk of Decoder.decodeSingularSInt32Field(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 176))();
}

{
  return (*(a3 + 168))();
}

void *OUTLINED_FUNCTION_102_2(void *a1)
{

  return memcpy(a1, &STACK[0x220], 0x48uLL);
}

void sub_1AC464FB0(int a1)
{
  v2 = 8 * a1;
  v3 = 6;
  v4 = 7;
  v5 = 8;
  if ((8 * a1) >> 28)
  {
    v5 = 9;
  }

  if (v2 >= 0x200000)
  {
    v4 = v5;
  }

  if ((8 * a1) >> 14)
  {
    v3 = v4;
  }

  if (v2 >= 0x80)
  {
    v6 = v3;
  }

  else
  {
    v6 = 5;
  }

  v7 = __OFADD__(*v1, v6);
  v8 = *v1 + v6;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_6_4(v8);
  }
}

void sub_1AC465040()
{
  OUTLINED_FUNCTION_28_0();
  v2 = v1;
  sub_1AC451CCC(v3, 5u);
  v4 = *(v0 + 8);
  *v4 = v2;
  OUTLINED_FUNCTION_16_5((v4 + 1));
}

void sub_1AC4650E4()
{
  OUTLINED_FUNCTION_60();
  v109 = v4;
  v6 = v5;
  v95 = v7;
  v8 = sub_1AC51F228();
  v9 = OUTLINED_FUNCTION_3_0(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_81_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v84 - v13;
  OUTLINED_FUNCTION_5();
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_6();
  v22 = v20 - v21;
  v24 = MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_25_1();
  if (!v29)
  {
    if (!v26)
    {
      v30 = v28;
      v94 = v27;
      v31 = v25;
      v32 = sub_1AC453530();
      if (!v1)
      {
        v93 = v0;
        (*(v109 + 32))(v32, v6);
        OUTLINED_FUNCTION_42_0(v14, 1, v6);
        if (v29)
        {
          v30[1](v14, v31);
        }

        else
        {
          (*(v16 + 32))(v3, v14, v6);
          (*(v16 + 16))(v94, v3, v6);
          OUTLINED_FUNCTION_88_0();
          sub_1AC51F108();
          sub_1AC51F0D8();
          v41 = *(v16 + 8);
          v42 = OUTLINED_FUNCTION_67_0();
          v43(v42);
          *(v93 + 32) = 1;
        }
      }
    }

    goto LABEL_34;
  }

  v91 = v28;
  v92 = v25;
  v94 = v27;
  v33 = sub_1AC453530();
  if (v1)
  {
    goto LABEL_34;
  }

  v34 = v33;
  v93 = v0;
  OUTLINED_FUNCTION_27_1();
  if (!v29 && v35)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_36_1();
    goto LABEL_13;
  }

  v36 = v93;
  v37 = *(v93 + 8);
  if ((v37 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v35 = v37 >= v34;
  v38 = v37 - v34;
  if (!v35)
  {
    sub_1AC48D31C();
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_53_1();
LABEL_13:
    OUTLINED_FUNCTION_59(v39, v40);
    goto LABEL_34;
  }

  v44 = *v93;
  *v93 += v34;
  *(v36 + 8) = v38;
  v45 = sub_1AC453E68(v44, v34);
  v46 = *v95;
  if (__OFADD__(sub_1AC51F0B8(), v45))
  {
    goto LABEL_60;
  }

  OUTLINED_FUNCTION_88_0();
  v89 = sub_1AC51F108();
  sub_1AC51F058();
  sub_1AC4530E8(v93, &v97);
  v47 = v99[7];
  LODWORD(v90) = v100;
  sub_1AC452928(v99, v96, &qword_1EB557F98, &qword_1AC520460);
  OUTLINED_FUNCTION_7_2();
  *(v48 + 128) = xmmword_1AC5205D0;
  *(v48 + 144) = xmmword_1AC5205D0;
  v102 = v44;
  v103 = v34;
  v104 = v44;
  v105 = 0;
  sub_1AC454060(v96, v49 + 48, &qword_1EB557F98, &qword_1AC520460);
  v106 = v47;
  v107 = v90;
  v50 = v101;
  sub_1AC45466C(&v97);
  v85 = 0;
  v108 = v50;
  v87 = (v16 + 16);
  v88 = (v16 + 32);
  v86 = (v16 + 8);
  v90 = v109 + 32;
  ++v91;
LABEL_16:
  v51 = v93;
  while (1)
  {
    if (!v34)
    {
      v67 = v85;
      if (v85)
      {
        v68 = *(v51 + 40);
        v69 = *(v85 + 16);
        if (v69)
        {
          v70 = 0;
          v71 = (v85 + 32);
          while (1)
          {
            v73 = *v71++;
            v72 = v73;
            if (v73 >= 0x80)
            {
              if ((v72 & 0x80000000) != 0)
              {
                v74 = 10;
              }

              else if (v72 >> 21)
              {
                v74 = v72 >> 28 ? 5 : 4;
              }

              else
              {
                v74 = v72 >= 0x4000 ? 3 : 2;
              }
            }

            else
            {
              v74 = 1;
            }

            v75 = __OFADD__(v70, v74);
            v70 += v74;
            if (v75)
            {
              goto LABEL_59;
            }

            if (!--v69)
            {
              goto LABEL_54;
            }
          }
        }

        v70 = 0;
LABEL_54:
        v76 = (8 * v68) | 2;
        v77 = sub_1AC5168CC(v76);
        v78 = sub_1AC4519B4(v70);
        v79 = v77 + v78;
        if (__OFADD__(v77, v78))
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
          return;
        }

        if (__OFADD__(v79, v70))
        {
          goto LABEL_62;
        }

        v97 = MEMORY[0x1AC5B40A0](v79 + v70);
        v98 = v80;

        sub_1AC48D370(&v97, v76, v70, v67);
        sub_1AC45466C(&v102);
        v81 = v97;
        v82 = v98;
        v83 = v93;
        sub_1AC45AC74(*(v93 + 144), *(v93 + 152));

        *(v83 + 144) = v81;
        *(v83 + 152) = v82;
      }

      else
      {
        sub_1AC45466C(&v102);
      }

      OUTLINED_FUNCTION_26_1();
      goto LABEL_34;
    }

    v53 = *v44++;
    v52 = v53;
    --v34;
    if (v53 < 0)
    {
      break;
    }

LABEL_23:
    v102 = v44;
    v103 = v34;
    (*(v109 + 32))(v52, v6);
    OUTLINED_FUNCTION_42_0(v2, 1, v6);
    if (!v29)
    {
      (*v88)(v22, v2, v6);
      (*v87)(v94, v22, v6);
      sub_1AC51F0D8();
      (*v86)(v22, v6);
      goto LABEL_16;
    }

    (*v91)(v2, v92);
    v51 = v93;
    if ((*(v93 + 112) & 1) == 0)
    {
      v57 = v85;
      if (!v85)
      {
        v57 = MEMORY[0x1E69E7CC0];
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_1_4();
        sub_1AC48F190();
        v57 = v62;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      v85 = v57;
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_57_0(v58);
        v84 = v63;
        sub_1AC48F190();
        v59 = v84;
        v85 = v64;
      }

      v61 = v85;
      *(v85 + 16) = v60;
      *(v61 + 4 * v59 + 32) = v52;
      goto LABEL_16;
    }
  }

  OUTLINED_FUNCTION_100_0();
  while (1)
  {
    v55 = v34-- < 1;
    if (v55 || v54 >= 0x40)
    {
      break;
    }

    OUTLINED_FUNCTION_11_2();
    if ((v56 & 0x80) == 0)
    {
      goto LABEL_23;
    }
  }

  sub_1AC48D31C();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_36_1();
  OUTLINED_FUNCTION_59(v65, v66);
  sub_1AC45466C(&v102);

LABEL_34:
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_61();
}

double Google_Protobuf_StringValue.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  result = 0.0;
  *(a1 + 16) = xmmword_1AC51F990;
  return result;
}

void Google_Protobuf_StringValue.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_326();
  OUTLINED_FUNCTION_21(v3, v4, v5);
  while (1)
  {
    v6 = OUTLINED_FUNCTION_98();
    v7 = v2(v6);
    if (v0 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      v9 = *(v1 + 336);
      v10 = OUTLINED_FUNCTION_7_21();
      v11(v10);
    }
  }

  OUTLINED_FUNCTION_327();
}

void Message.init(jsonUTF8Data:options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *(a3 + 8);
  Message.init<A>(jsonUTF8Bytes:extensions:options:)();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

void sub_1AC4658D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_9_13(a1, a2, a3);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_12_8();
  sub_1AC459C7C(v11);
  if (!v5)
  {
    v12 = OUTLINED_FUNCTION_40_4();
    v13(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC0, &unk_1AC51FCE0);
    if (swift_dynamicCast())
    {
      sub_1AC465B44(v23, v25);
      v14 = v26;
      v15 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      OUTLINED_FUNCTION_31_3();
      LOBYTE(v23[0]) = v16;
      BYTE1(v23[0]) = v17;
      BYTE2(v23[0]) = v18;
      BYTE3(v23[0]) = v19;
      v20 = (*(v15 + 8))(v23, v14, v15);
      sub_1AC45FA3C(v20, v21);
      __swift_destroy_boxed_opaque_existential_1(v25);
    }

    else
    {
      v24 = 0;
      memset(v23, 0, sizeof(v23));
      sub_1AC45A718(v23, &qword_1EB557FC8, &unk_1AC528980);
      if ((*(v4 + 57) & 1) != 0 || (sub_1AC469654(a3, a4, v28), HIBYTE(v29) > 0xFEu))
      {
        v22 = (*(a4 + 40))(a3, a4);
        sub_1AC4E30BC(v22);
      }

      else
      {
        v30[0] = v28[0];
        v30[1] = v28[1];
        v31 = v29;
        sub_1AC45ABA8(v30);
        sub_1AC45A718(v28, &qword_1EB559790, "6V");
      }
    }
  }
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void OUTLINED_FUNCTION_31_3()
{
  v1 = v0[56];
  v2 = v0[57];
  v3 = v0[58];
  v4 = v0[59];
}

uint64_t OUTLINED_FUNCTION_31_4()
{

  return sub_1AC51F338();
}

void OUTLINED_FUNCTION_31_5()
{
  *v2 = v1;
  *(v2 + 8) = v0;
  *(v2 + 16) = v3;
  *(v2 + 24) = 1;
}

void OUTLINED_FUNCTION_31_6()
{
  *(v1 + 16) = v3;
  *(v1 + v4 + 32) = v0;
  *v2 = v1;
}

uint64_t Google_Protobuf_NullValue.rawValue.getter()
{
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t static ProtobufUInt64.visitSingular<A>(value:fieldNumber:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 48);
  OUTLINED_FUNCTION_0_10();
  return v6();
}

uint64_t Google_Protobuf_Timestamp.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  if (!*v3 || (v9 = *(a3 + 32), OUTLINED_FUNCTION_10(), result = v10(), !v4))
  {
    if (!v6 || (v12 = *(a3 + 24), OUTLINED_FUNCTION_10(), result = v13(), !v4))
    {
      sub_1AC4578F4(v7, v8);
      OUTLINED_FUNCTION_36_0();
      UnknownStorage.traverse<A>(visitor:)(v14, v15, v16);
      return sub_1AC4513F8(v7, v8);
    }
  }

  return result;
}

uint64_t sub_1AC465DD8(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = OUTLINED_FUNCTION_34_3();
  if (v5)
  {
    result = 0;
  }

  else
  {
    result = a2();
    if (v2)
    {
      return result;
    }
  }

  *v3 = result;
  *(v3 + 8) = v5 & 1;
  return result;
}

double Google_Protobuf_Timestamp.init(date:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1AC51ECD8();
  Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(&v8, v4);
  v5 = sub_1AC51ECF8();
  (*(*(v5 - 8) + 8))(a1, v5);
  v6 = v9;
  *a2 = v8;
  *(a2 + 8) = v6;
  result = *&v10;
  *(a2 + 16) = v10;
  return result;
}

void Google_Protobuf_Timestamp.init(timeIntervalSinceReferenceDate:)(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = floor(a2);
  OUTLINED_FUNCTION_0_17();
  if (!(v6 ^ v7 | v5))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v3 <= -9.22337204e18)
  {
    goto LABEL_16;
  }

  v8 = v4;
  if (v3 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1AC51ECE8();
  OUTLINED_FUNCTION_0_17();
  if (!(v6 ^ v7 | v5))
  {
    goto LABEL_18;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_3_14();
  if (!v6)
  {
    goto LABEL_20;
  }

  if (__OFADD__(v3, v10))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = round((v8 - v3) * 1000000000.0);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v11 <= -2147483650.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v11 >= 2147483650.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v12 = OUTLINED_FUNCTION_1_17(v11);
  if (!__OFADD__(v13, v14))
  {
    v15 = OUTLINED_FUNCTION_5_10(v12);
    OUTLINED_FUNCTION_4_10(v15);
    *(a1 + 16) = xmmword_1AC51F990;
    return;
  }

LABEL_25:
  __break(1u);
}

void sub_1AC466024(unint64_t a1)
{
  sub_1AC45A774();
  OUTLINED_FUNCTION_12_11();
  OUTLINED_FUNCTION_3_19();
  sub_1AC45FBF4(a1);
  sub_1AC45A774();
  OUTLINED_FUNCTION_11_10();
  OUTLINED_FUNCTION_0_22();
}

void sub_1AC46606C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    OUTLINED_FUNCTION_0_24();
LABEL_6:
    sub_1AC45FE50(v6, v7, v8);
    goto LABEL_7;
  }

  if ((*(v3 + 17) & 1) == 0)
  {
    v6 = *v3;
    v7 = *(v3 + 8);
    v8 = *(v3 + 16);
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_5_15(",");
LABEL_7:
  sub_1AC45AEA4(a1, a2);
}

void sub_1AC466118(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_3(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC45AE04(v4, 1);
  v6 = *v2;
  if (!*(v3 + 16))
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_8_1();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  memcpy((v6 + v7 + 32), (v3 + 32), v1);

  if (!v1)
  {
LABEL_8:
    *v2 = v6;
    return;
  }

  v9 = *(v6 + 16);
  v5 = __OFADD__(v9, v1);
  v10 = v9 + v1;
  if (!v5)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t sub_1AC4661B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for JSONMapEncodingVisitor, &off_1F211AE90, a5);
  }

  return result;
}

uint64_t sub_1AC466284(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_29_0();
  v10 = *(v9 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(a6 + 8);
  v13 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1AC4663B4(a1, a2, sub_1AC492B38, &v16, sub_1AC466F88, v15, AssociatedTypeWitness, v13);
}

uint64_t sub_1AC4663B4(unint64_t a1, uint64_t a2, unint64_t a3, void (**a4)(uint64_t, char *, uint64_t), void (*a5)(__int128 *, char *, char *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v116 = a5;
  v117 = a6;
  v112 = a4;
  v104 = a3;
  v111 = a1;
  v98 = *(a8 - 8);
  v10 = *(v98 + 64);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v108 = v96 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v110 = v96 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = v96 - v16;
  v97 = *(v17 - 8);
  v18 = *(v97 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15);
  v107 = v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v109 = v96 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = v96 - v23;
  v118 = v25;
  v119 = v26;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v28 = sub_1AC51F228();
  i = *(v28 - 8);
  v29 = *(i + 64);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = v96 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = (v96 - v37);
  MEMORY[0x1EEE9AC00](v36);
  v40 = v96 - v39;
  v41 = v115;
  result = sub_1AC459C7C(a2);
  if (v41)
  {
    return result;
  }

  v113 = v38;
  v105 = v35;
  v102 = v24;
  v106 = v32;
  v115 = v28;
  v43 = sub_1AC45FA3C(123, 0xE100000000000000);
  v44 = v8[56];
  v45 = v8[57];
  v46 = v8[58];
  v47 = v8[59];
  v121 = 0uLL;
  v122 = 256;
  v123 = MEMORY[0x1E69E7CC0];
  v124 = 256;
  v125 = v44;
  v126 = v45;
  v127 = v46;
  v128 = v47;
  v96[2] = v8;
  if (v47 != 1)
  {
    v66 = i;
    if ((v111 & 0xC000000000000001) != 0)
    {
      v67 = sub_1AC51F368();
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v104 = v67 | 0x8000000000000000;
    }

    else
    {
      v71 = -1 << *(v111 + 32);
      v69 = ~v71;
      v68 = v111 + 64;
      v72 = -v71;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v70 = (v73 & *(v111 + 64));
      v104 = v111;
    }

    v74 = v110;
    v75 = v109;
    v112 = (v98 + 32);
    v113 = (v97 + 32);
    v96[1] = v69;
    v76 = (v69 + 64) >> 6;
    v96[4] = v97 + 16;
    v96[3] = v98 + 16;
    v101 = (v66 + 32);
    v99 = (v98 + 8);
    v100 = (v97 + 8);

    v77 = 0;
    for (i = v68; ; v68 = i)
    {
      v102 = v70;
      v111 = v77;
      if ((v104 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1AC51F378())
      {
        sub_1AC51F3C8();
        swift_unknownObjectRelease();
        v80 = v119;
        sub_1AC51F3C8();
        swift_unknownObjectRelease();
        v79 = v111;
        v114 = v70;
LABEL_31:
        v85 = *(TupleTypeMetadata2 + 48);
        v86 = v106;
        (*v113)();
        (*v112)(v86 + v85, v74, v80);
        v87 = 0;
        v81 = v79;
        goto LABEL_35;
      }

      v87 = 1;
      v88 = v70;
      v81 = v111;
      v114 = v88;
LABEL_34:
      v86 = v106;
LABEL_35:
      __swift_storeEnumTagSinglePayload(v86, v87, 1, TupleTypeMetadata2);
      v89 = v105;
      (*v101)(v105, v86, v115);
      if (__swift_getEnumTagSinglePayload(v89, 1, TupleTypeMetadata2) == 1)
      {
        sub_1AC460BE4();
        goto LABEL_38;
      }

      v90 = *(TupleTypeMetadata2 + 48);
      v91 = v107;
      v92 = v118;
      (*v113)(v107, v89, v118);
      v93 = (v89 + v90);
      v94 = v108;
      v95 = v119;
      (*v112)(v108, v93, v119);
      v116(&v121, v91, v94);
      (*v99)(v94, v95);
      result = (*v100)(v91, v92);
      v77 = v81;
      v70 = v114;
      v74 = v110;
      v75 = v109;
    }

    if (!v70)
    {
      v81 = v77;
      while (1)
      {
        v79 = v81 + 1;
        if (__OFADD__(v81, 1))
        {
          break;
        }

        if (v79 >= v76)
        {
          v114 = 0;
          v87 = 1;
          goto LABEL_34;
        }

        v78 = *(v68 + 8 * v79);
        ++v81;
        if (v78)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    v78 = v70;
    v79 = v77;
LABEL_30:
    v114 = ((v78 - 1) & v78);
    v82 = __clz(__rbit64(v78)) | (v79 << 6);
    v83 = v104;
    (*(v97 + 16))(v75, *(v104 + 48) + *(v97 + 72) * v82, v118);
    v84 = *(v83 + 56) + *(v98 + 72) * v82;
    v80 = v119;
    (*(v98 + 16))(v74, v84, v119);
    goto LABEL_31;
  }

  *&v120 = v111;
  MEMORY[0x1EEE9AC00](v43);
  v96[-6] = v48;
  v96[-5] = v49;
  v50 = v104;
  v96[-4] = v51;
  v96[-3] = v50;
  v96[-2] = v112;
  sub_1AC51ED88();
  swift_getWitnessTable();
  v52 = v118;
  v53 = sub_1AC51F028();
  v54 = sub_1AC51F038();
  v107 = (TupleTypeMetadata2 - 8);
  v129 = v54;
  v112 = (i + 32);
  v109 = (v97 + 32);
  v108 = (v98 + 32);
  v110 = (v98 + 8);
  v111 = v97 + 8;
  for (j = v102; ; j = v63)
  {
    v56 = sub_1AC51F0B8();
    v57 = v129;
    v58 = v113;
    if (v129 == v56)
    {
      __swift_storeEnumTagSinglePayload(v113, 1, 1, TupleTypeMetadata2);
      v60 = v114;
      v59 = v115;
    }

    else
    {
      v61 = sub_1AC51F0A8();
      sub_1AC51F048();
      if (v61)
      {
        (*(*(TupleTypeMetadata2 - 8) + 16))(v58, v53 + ((*(*(TupleTypeMetadata2 - 8) + 80) + 32) & ~*(*(TupleTypeMetadata2 - 8) + 80)) + *(*(TupleTypeMetadata2 - 8) + 72) * v57, TupleTypeMetadata2);
      }

      else
      {
        result = sub_1AC51F2F8();
        v65 = *(TupleTypeMetadata2 - 8);
        if (*(v65 + 64) != 8)
        {
          goto LABEL_41;
        }

        *&v120 = result;
        (*(v65 + 16))(v58, &v120, TupleTypeMetadata2);
        swift_unknownObjectRelease();
      }

      v52 = v118;
      v60 = v114;
      sub_1AC51F0F8();
      __swift_storeEnumTagSinglePayload(v58, 0, 1, TupleTypeMetadata2);
      v59 = v115;
    }

    (*v112)(v40, v58, v59);
    if (__swift_getEnumTagSinglePayload(v40, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v62 = *(TupleTypeMetadata2 + 48);
    (*v109)(j, v40, v52);
    v63 = j;
    v64 = v119;
    (*v108)(v60, &v40[v62], v119);
    v116(&v121, v63, v60);
    (*v110)(v60, v64);
    (*v111)(v63, v52);
  }

LABEL_38:
  sub_1AC466118(v123);
  return sub_1AC45FA3C(125, 0xE100000000000000);
}

uint64_t sub_1AC466FA8()
{
  OUTLINED_FUNCTION_3_20();
  if (v3)
  {
    if (*(v1 + 17))
    {
      OUTLINED_FUNCTION_6_15(",");
    }

    else
    {
      sub_1AC45FE50(*v1, *(v1 + 8), *(v1 + 16));
    }
  }

  else
  {
    v4 = v2;
    OUTLINED_FUNCTION_0_24();
    sub_1AC45FE50(v5, v6, v7);
    if (*(v1 + 34) == 1)
    {
      v8 = OUTLINED_FUNCTION_4_13();
      return v4(v8);
    }
  }

  v10 = OUTLINED_FUNCTION_4_13();
  return v0(v10);
}

uint64_t sub_1AC467088(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    v2 = ~(~a2 / 0x3B9ACA00u);
  }

  else
  {
    v2 = a2 / 0x3B9ACA00;
  }

  v3 = result + v2;
  if (__OFADD__(result, v2))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v4 = sub_1AC4673EC(a2, 1000000000);
  if ((v3 - 0x3AFFF44180) < 0xFFFFFFB68879C780)
  {
    return 0;
  }

  v5 = v4;
  result = sub_1AC4673B4(v3, 86400);
  if (result < 0xFFFFFFFF80000000)
  {
    goto LABEL_18;
  }

  v6 = result;
  if (result > 0x7FFFFFFF)
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = sub_1AC4673EC(result, 60);
  if (v6 < 0)
  {
    v8 = ~(~v6 / 0x3Cu);
  }

  else
  {
    v8 = v6 / 0x3C;
  }

  v9 = sub_1AC4673EC(v8, 60);
  if (v6 < 0)
  {
    v10 = ~(~v6 / 0xE10u);
  }

  else
  {
    v10 = v6 / 0xE10;
  }

  v11 = sub_1AC467424(v3);
  v13 = v12;
  v14 = HIDWORD(v11);
  v24 = sub_1AC46763C(v11, 4);
  MEMORY[0x1AC5B4340](45, 0xE100000000000000);
  v15 = sub_1AC46763C(v14, 2);
  MEMORY[0x1AC5B4340](v15);

  MEMORY[0x1AC5B4340](45, 0xE100000000000000);
  v16 = sub_1AC46763C(v13, 2);
  MEMORY[0x1AC5B4340](v16);

  v17 = v24;
  v25 = sub_1AC46763C(v10, 2);
  v26 = v18;
  MEMORY[0x1AC5B4340](58, 0xE100000000000000);
  v19 = sub_1AC46763C(v9, 2);
  MEMORY[0x1AC5B4340](v19);

  MEMORY[0x1AC5B4340](58, 0xE100000000000000);
  v20 = sub_1AC46763C(v7, 2);
  MEMORY[0x1AC5B4340](v20);

  v21 = sub_1AC467704(v5);
  v23 = v22;
  MEMORY[0x1AC5B4340](84, 0xE100000000000000);
  MEMORY[0x1AC5B4340](v25, v26);

  MEMORY[0x1AC5B4340](v21, v23);

  MEMORY[0x1AC5B4340](90, 0xE100000000000000);
  return v17;
}

uint64_t sub_1AC467308()
{
  v1 = sub_1AC467088(*v0, *(v0 + 8));
  if (v2)
  {
    MEMORY[0x1AC5B4340](v1);

    MEMORY[0x1AC5B4340](34, 0xE100000000000000);
    return 34;
  }

  else
  {
    sub_1AC4777D8();
    swift_allocError();
    *v4 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_1AC4673B4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result == 0x8000000000000000 && a2 == -1)
  {
    goto LABEL_10;
  }

  result %= a2;
  if (result < 0)
  {
    v3 = __OFADD__(result, a2);
    result += a2;
    if (v3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

uint64_t sub_1AC4673EC(uint64_t result, int a2)
{
  if (!a2)
  {
    __break(1u);
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (result == 0x80000000 && a2 == -1)
  {
    goto LABEL_10;
  }

  result = (result % a2);
  if ((result & 0x80000000) != 0)
  {
    v3 = __OFADD__(result, a2);
    result = (result + a2);
    if (v3)
    {
      goto LABEL_11;
    }
  }

  return result;
}

int64_t sub_1AC467424(uint64_t a1)
{
  v1 = __OFADD__(a1, 0x3118A41200);
  result = a1 + 0x3118A41200;
  if (v1)
  {
    __break(1u);
    goto LABEL_28;
  }

  result = sub_1AC467610(result, 86400);
  v3 = result + 1401;
  if (__OFADD__(result, 1401))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ((result - 0x2000000000000000) >> 62 != 3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v1 = __OFADD__(274277, 4 * result);
  result = 4 * result + 274277;
  if (v1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v4 = sub_1AC467610(result, 146097);
  v5 = (v4 * 3) >> 64;
  result = 3 * v4;
  if (v5 != result >> 63)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = sub_1AC467610(result, 4);
  v6 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = __OFSUB__(v6, 38);
  v7 = v6 - 38;
  if (v1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v8 = (4 * v7) | 3;
  v9 = sub_1AC4673B4(v8, 1461);
  result = sub_1AC467610(v9, 4);
  v10 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = sub_1AC4673B4(v10 + 2, 153);
  result = sub_1AC467610(v11, 5);
  v12 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v13 = sub_1AC467610(v10 + 2, 153);
  v1 = __OFADD__(v13, 2);
  result = v13 + 2;
  if (v1)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  result = sub_1AC4673B4(result, 12);
  v14 = result + 1;
  if (__OFADD__(result, 1))
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = sub_1AC467610(v8, 1461);
  v15 = result - 4716;
  if (__OFADD__(result, -4716))
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  result = 14 - v14;
  if (__OFSUB__(14, v14))
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v16 = sub_1AC467610(result, 12);
  v1 = __OFADD__(v15, v16);
  result = v15 + v16;
  if (v1)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v14 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v12 < 0xFFFFFFFF80000000 || v14 < 0xFFFFFFFF80000000 || result < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v12 <= 0x7FFFFFFF)
  {
    return result | (v14 << 32);
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_1AC467610(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    if (a2)
    {
      return (result + 1) / a2 - 1;
    }
  }

  else
  {
    if (a2)
    {
      result /= a2;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC46763C(uint64_t result, uint64_t a2)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = sub_1AC51F3B8();
    v5 = v4;
    if (sub_1AC51EEC8() >= a2)
    {
      return v3;
    }

    result = sub_1AC51EEC8();
    if (!__OFSUB__(a2, result))
    {
      v6 = sub_1AC51EFB8();

      MEMORY[0x1AC5B4340](v3, v5);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC467704(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  if (!(result % 1000000))
  {
    if ((result & 0x80000000) == 0 || (v1 = __OFSUB__(0, result), result = -result, !v1))
    {
      result = (result / 1000000);
      v2 = 3;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (!(result % 1000))
  {
    if ((result & 0x80000000) == 0 || (v1 = __OFSUB__(0, result), result = -result, !v1))
    {
      result = (result / 1000);
      v2 = 6;
      goto LABEL_14;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  if ((result & 0x80000000) != 0)
  {
    v1 = __OFSUB__(0, result);
    result = -result;
    if (v1)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  v2 = 9;
LABEL_14:
  v3 = sub_1AC46763C(result, v2);
  MEMORY[0x1AC5B4340](v3);

  return 46;
}

void sub_1AC46781C(uint64_t a1, uint64_t (*a2)(void))
{
  if (*(v2 + 33) == 5)
  {
    v5 = a2();
    if (!v3)
    {
      *a1 = v5;
      *(a1 + 4) = 0;
      OUTLINED_FUNCTION_26_1();
    }
  }
}

char *OUTLINED_FUNCTION_47_0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  *v1 += v2;
  *(v1 + 8) = a1;

  return sub_1AC453E68(v4, v2);
}

uint64_t OUTLINED_FUNCTION_47_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9)
{
  *(v10 - 24) = a9;
  *(v10 - 8) = v11;
  *(v10 + 4) = v13;
  *v10 = v12;
  *(v9 + 46) = *(v9 + 14);
  v9[2] = *v9;

  return sub_1AC4AEF78((v9 + 2));
}

uint64_t OUTLINED_FUNCTION_47_2()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_47_5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 - 256) = a1;

  return memcpy((v2 - 160), (v2 - 304), 0x41uLL);
}

uint64_t dispatch thunk of Decoder.decodeSingularFloatField(value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 32))();
}

{
  return (*(a3 + 24))();
}

uint64_t sub_1AC46797C()
{
  v1 = v0[1];
  v2 = v1 < 4;
  v3 = (v1 - 4);
  if (v2)
  {
    sub_1AC48D31C();
    v4 = swift_allocError();
    return OUTLINED_FUNCTION_15(v4, v5);
  }

  else
  {
    result = *(*v0)++;
    v0[1] = v3;
  }

  return result;
}

unint64_t sub_1AC4679DC(unsigned int a1)
{
  if (a1 < 8 || (v1 = a1, sub_1AC450A70(a1 & 7) == 6))
  {
    v1 = 0;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  return v1 | (v2 << 32);
}

void sub_1AC467A40(unsigned int a1)
{
  switch(sub_1AC450A70(a1 & 7))
  {
    case 1u:
      v7 = *(v1 + 8);
      if (v7 <= 7)
      {
        goto LABEL_20;
      }

      v8 = *v1 + 8;
      v9 = v7 - 8;
      goto LABEL_23;
    case 2u:
      v10 = sub_1AC453530();
      if (v2)
      {
        return;
      }

      v11 = *(v1 + 8);
      if ((v11 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        JUMPOUT(0x1AC467C00);
      }

      v6 = v11 >= v10;
      v9 = v11 - v10;
      if (!v6)
      {
        goto LABEL_20;
      }

      v8 = *v1 + v10;
LABEL_23:
      *v1 = v8;
      *(v1 + 8) = v9;
      return;
    case 3u:
      sub_1AC4506F4();
      if (v2)
      {
        return;
      }

      break;
    case 4u:
      goto LABEL_20;
    case 5u:
      v12 = *(v1 + 8);
      if (v12 <= 3)
      {
        goto LABEL_20;
      }

      v8 = *v1 + 4;
      v9 = v12 - 4;
      goto LABEL_23;
    case 6u:
      goto LABEL_29;
    default:
      sub_1AC453530();
      return;
  }

  while (1)
  {
    if (*(v1 + 8) < 1)
    {
LABEL_20:
      sub_1AC48D31C();
      swift_allocError();
      v14 = 1;
LABEL_21:
      *v13 = v14;
      swift_willThrow();
      return;
    }

    v4 = sub_1AC453530();
    if (v4 > 0xFFFFFFFE)
    {
      goto LABEL_27;
    }

    v5 = v4 & 7;
    v6 = v4 < 8 || v5 >= 6;
    if (v6)
    {
      goto LABEL_27;
    }

    if (v5 == 4)
    {
      break;
    }

    *(v1 + 33) = v5;
    *(v1 + 40) = v4 >> 3;
    sub_1AC467A40();
  }

  *(v1 + 33) = 4;
  v15 = v4 >> 3;
  *(v1 + 40) = v15;
  if (v15 != a1 >> 3)
  {
LABEL_27:
    sub_1AC48D31C();
    swift_allocError();
    v14 = 3;
    goto LABEL_21;
  }

  sub_1AC451450();
}

unint64_t sub_1AC467C1C()
{
  v2 = *(v0 + 8);
  if (v2 < 1)
  {
    v9 = 0;
    return v9 | ((v2 < 1) << 32);
  }

  result = sub_1AC453530();
  if (!v1)
  {
    OUTLINED_FUNCTION_99_0();
    if (!v6 & v5 || (v7 = sub_1AC4679DC(v4), (v7 & 0x100000000) != 0))
    {
      sub_1AC48D31C();
      v10 = OUTLINED_FUNCTION_11();
      return OUTLINED_FUNCTION_16_3(v10, v11);
    }

    else
    {
      v8 = v7;
      result = sub_1AC450A70(v7 & 7);
      if (result != 6)
      {
        *(v0 + 33) = result;
        *(v0 + 40) = v8 >> 3;
        v9 = v8;
        return v9 | ((v2 < 1) << 32);
      }

      __break(1u);
    }
  }

  return result;
}

void sub_1AC467CD8()
{
  sub_1AC467D1C();
  if (!v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      MEMORY[0x1AC5B4090](*(v0 + 16), v2 - *(v0 + 16));
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1AC467D1C()
{
  v2 = v0[3];
  if (v2)
  {
    *v0 = v2;
  }

  else
  {
    v4 = v0[1];
    v3 = v0[2];
    v5 = *v0 - v3;
    v6 = __OFADD__(v4, v5);
    v7 = v4 + v5;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *v0 = v3;
      v0[1] = v7;
      v8 = sub_1AC467C1C();
      if (!v1)
      {
        if ((v8 & 0x100000000) != 0)
        {
          sub_1AC48D31C();
          swift_allocError();
          *v9 = 1;
          swift_willThrow();
        }

        else
        {
          sub_1AC467A40(v8);
          v0[3] = *v0;
        }
      }
    }
  }
}

uint64_t OUTLINED_FUNCTION_99_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, unsigned int a18, uint64_t a19, int a20, unsigned int a21, uint64_t a22)
{

  return sub_1AC48610C(a22, a21, a19, a18);
}

void static UnknownStorage.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  JUMPOUT(0x1AC5B4070);
}

uint64_t sub_1AC467E68(uint64_t a1, unint64_t a2)
{
  sub_1AC45A774();
  v5 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v5);
  OUTLINED_FUNCTION_1();
  *(v6 + 32) = 34;
  *v2 = v7;
  if (MEMORY[0x1AC5B40B0](a1, a2) >= 1)
  {
    sub_1AC467F0C(a1, a2, v2);
  }

  sub_1AC45A774();
  v8 = *(*v2 + 16);
  result = sub_1AC45A85C(v8);
  v10 = *v2;
  *(v10 + 16) = v8 + 1;
  *(v10 + v8 + 32) = 34;
  *v2 = v10;
  return result;
}

void sub_1AC467F0C(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  switch(a2 >> 62)
  {
    case 1uLL:
      v7 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        __break(1u);
      }

      a1 = a1;
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      v6 = v7;
      goto LABEL_7;
    case 2uLL:
      v4 = *(a1 + 24);
      v5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
      a1 = *(a1 + 16);
      v6 = v4;
LABEL_7:
      sub_1AC468058(a1, v6, v5, a3);
      break;
    case 3uLL:
      sub_1AC4E4EFC(0, 0, a3);
      break;
    default:
      v9 = a1;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v14 = BYTE5(a2);
      sub_1AC4680FC(&v9, &v9 + BYTE6(a2), a3);
      break;
  }

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC468058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_1AC51EB78();
  if (v7)
  {
    v8 = sub_1AC51EBA8();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_1AC51EB98();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  sub_1AC4680FC(v7, v14, a4);
}

void sub_1AC4680FC(unsigned __int8 *a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return;
  }

  v4 = a1;
  v5 = a2 - a1;
  if (a2 - a1 < 1)
  {
    return;
  }

  v131 = v3;
  v134 = a3;
  v7 = 0;
  v8 = 0;
  do
  {
    if (v8 == 3)
    {
      if (qword_1ED6E3418 != -1)
      {
        swift_once();
      }

      v9 = qword_1ED6E3420;
      OUTLINED_FUNCTION_23_6();
      if (v11)
      {
        goto LABEL_52;
      }

      v12 = *(v9 + 32 + v10);
      v13 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v55 = *(v13 + 16);
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v56);
      }

      OUTLINED_FUNCTION_15_7();
      if (v11)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_16_7(v57, v58, v59, v60, v61, v62, v63, v64, v131, v134);
      }

      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_23_6();
      if (v11)
      {
        goto LABEL_53;
      }

      OUTLINED_FUNCTION_17_8(v15, v16, v17, v18, v19, v20, v21, v22, v131, v134);
      v25 = *(v24 + v23);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v13;
      if ((v26 & 1) == 0)
      {
        v65 = *(v13 + 16);
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v66);
      }

      OUTLINED_FUNCTION_15_7();
      if (v11)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_16_7(v67, v68, v69, v70, v71, v72, v73, v74, v132, v135);
      }

      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_23_6();
      if (v11)
      {
        goto LABEL_54;
      }

      OUTLINED_FUNCTION_17_8(v27, v28, v29, v30, v31, v32, v33, v34, v132, v135);
      v37 = *(v36 + v35);
      v38 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v13;
      if ((v38 & 1) == 0)
      {
        v75 = *(v13 + 16);
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v76);
      }

      OUTLINED_FUNCTION_15_7();
      if (v11)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_16_7(v77, v78, v79, v80, v81, v82, v83, v84, v133, v136);
      }

      OUTLINED_FUNCTION_18_7();
      OUTLINED_FUNCTION_23_6();
      if (v11)
      {
        goto LABEL_55;
      }

      OUTLINED_FUNCTION_17_8(v39, v40, v41, v42, v43, v44, v45, v46, v133, v136);
      v49 = *(v48 + v47);
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v13;
      if ((v50 & 1) == 0)
      {
        v85 = *(v13 + 16);
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        OUTLINED_FUNCTION_20_7(v86);
      }

      v51 = *(v13 + 16);
      if (v51 >= *(v13 + 24) >> 1)
      {
        OUTLINED_FUNCTION_14_9();
        OUTLINED_FUNCTION_20_7(v87);
      }

      v8 = 0;
      v52 = 0;
      *(v13 + 16) = v51 + 1;
      *(v13 + v51 + 32) = v49;
    }

    else
    {
      v52 = v7;
    }

    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v54 = *v4++;
    v7 = v54 | (v52 << 8);
    --v5;
  }

  while (v5);
  if (v8 == 1)
  {
    if (qword_1ED6E3418 == -1)
    {
LABEL_46:
      v118 = qword_1ED6E3420;
      OUTLINED_FUNCTION_21_5();
      if (!v11)
      {
        v120 = *(v118 + 32 + v119);
        sub_1AC45A774();
        v121 = OUTLINED_FUNCTION_5_14();
        sub_1AC45A85C(v121);
        OUTLINED_FUNCTION_1();
        *(v122 + 32) = v120;
        OUTLINED_FUNCTION_21_5();
        if (!v11)
        {
          v124 = *(v118 + 32 + v123);
          sub_1AC45A774();
          v125 = OUTLINED_FUNCTION_5_14();
          sub_1AC45A85C(v125);
          OUTLINED_FUNCTION_1();
          *(v126 + 32) = v124;
          sub_1AC45A774();
          v127 = OUTLINED_FUNCTION_5_14();
          sub_1AC45A85C(v127);
          OUTLINED_FUNCTION_1();
          v103 = 61;
          *(v128 + 32) = 61;
          goto LABEL_49;
        }

        goto LABEL_63;
      }

      __break(1u);
LABEL_60:
      OUTLINED_FUNCTION_7_12();
      goto LABEL_35;
    }

LABEL_58:
    OUTLINED_FUNCTION_7_12();
    goto LABEL_46;
  }

  if (v8 == 2)
  {
    if (qword_1ED6E3418 == -1)
    {
LABEL_41:
      v104 = qword_1ED6E3420;
      OUTLINED_FUNCTION_21_5();
      if (!v11)
      {
        v106 = v104 + 32;
        v107 = *(v104 + 32 + v105);
        sub_1AC45A774();
        v108 = OUTLINED_FUNCTION_5_14();
        sub_1AC45A85C(v108);
        OUTLINED_FUNCTION_1();
        *(v109 + 32) = v107;
        OUTLINED_FUNCTION_21_5();
        if (!v11)
        {
          v111 = *(v106 + v110);
          sub_1AC45A774();
          v112 = OUTLINED_FUNCTION_5_14();
          sub_1AC45A85C(v112);
          OUTLINED_FUNCTION_1();
          *(v113 + 32) = v111;
          OUTLINED_FUNCTION_21_5();
          if (!v11)
          {
            v115 = *(v106 + v114);
            sub_1AC45A774();
            v116 = OUTLINED_FUNCTION_5_14();
            sub_1AC45A85C(v116);
            OUTLINED_FUNCTION_1();
            *(v117 + 32) = v115;
            v103 = 61;
            goto LABEL_49;
          }

          goto LABEL_65;
        }

        goto LABEL_62;
      }

      __break(1u);
      goto LABEL_58;
    }

LABEL_56:
    OUTLINED_FUNCTION_7_12();
    goto LABEL_41;
  }

  if (v8 != 3)
  {
    return;
  }

  if (qword_1ED6E3418 != -1)
  {
    goto LABEL_60;
  }

LABEL_35:
  v88 = qword_1ED6E3420;
  OUTLINED_FUNCTION_24_5();
  if (v11)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v90 = v88 + 32;
  v91 = *(v88 + 32 + v89);
  sub_1AC45A774();
  v92 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v92);
  OUTLINED_FUNCTION_1();
  *(v93 + 32) = v91;
  OUTLINED_FUNCTION_24_5();
  if (v11)
  {
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v95 = *(v90 + v94);
  sub_1AC45A774();
  v96 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v96);
  OUTLINED_FUNCTION_1();
  *(v97 + 32) = v95;
  OUTLINED_FUNCTION_24_5();
  if (v11)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v99 = *(v90 + v98);
  sub_1AC45A774();
  v100 = OUTLINED_FUNCTION_5_14();
  sub_1AC45A85C(v100);
  OUTLINED_FUNCTION_1();
  *(v101 + 32) = v99;
  OUTLINED_FUNCTION_24_5();
  if (!v11)
  {
    v103 = *(v90 + v102);
LABEL_49:
    sub_1AC45A774();
    v129 = OUTLINED_FUNCTION_5_14();
    sub_1AC45A85C(v129);
    OUTLINED_FUNCTION_1();
    *(v130 + 32) = v103;
    return;
  }

LABEL_67:
  __break(1u);
}

uint64_t OUTLINED_FUNCTION_23_3()
{
  v2 = **(v1 - 208);
  result = v0;
  v4 = *(v1 - 96);
  return result;
}

uint64_t OUTLINED_FUNCTION_23_4(uint64_t result)
{
  v1 = *(*result + 48);
  v2 = *(*result + 56);
  return result;
}

void OUTLINED_FUNCTION_23_7()
{
  *(v1 + 16) = v2;
  *(v1 + v3 + 32) = 45;
  *v0 = v1;
}

uint64_t OUTLINED_FUNCTION_23_8()
{

  return sub_1AC51EDF8();
}

uint64_t OUTLINED_FUNCTION_23_9()
{

  return swift_dynamicCast();
}

void *OUTLINED_FUNCTION_23_10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char __dst)
{

  return memcpy(&__dst, v29, 0x4AuLL);
}

void OUTLINED_FUNCTION_23_11()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_1AC4854E8(v2, v3, v4, v5);
}

uint64_t OUTLINED_FUNCTION_23_12(uint64_t a1, _BYTE *a2)
{
  *a2 = 0;

  return swift_willThrow();
}

char *OUTLINED_FUNCTION_23_13(char *a1)
{

  return sub_1AC45FE50(a1, 2, 2);
}

void *OUTLINED_FUNCTION_382(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char __src)
{

  return memcpy(a1, &__src, 0x46uLL);
}

uint64_t sub_1AC4687A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v13 = *a4;
  v14 = *(a4 + 8);
  (*(a7 + 16))(a5, a7);
  v18 = v13;
  v19 = v14;
  v15 = v20;
  Message.merge<A>(serializedBytes:extensions:partial:options:)(a1, a2, a3, &v18);
  sub_1AC455360(a2);
  result = (*(*(a6 - 8) + 8))(a1, a6);
  if (v15)
  {
    return (*(*(a5 - 8) + 8))(a8, a5);
  }

  return result;
}

void sub_1AC4688F0(uint64_t a1, unint64_t a2)
{
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v3) = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_9;
      }

      v3 = v3;
LABEL_6:
      v6 = __OFADD__(*v2, v3);
      v7 = *v2 + v3;
      if (v6)
      {
        __break(1u);
LABEL_9:
        __break(1u);
LABEL_10:
        __break(1u);
        JUMPOUT(0x1AC46895CLL);
      }

      OUTLINED_FUNCTION_6_4(v7);
      return;
    case 2uLL:
      v5 = *(a1 + 16);
      v4 = *(a1 + 24);
      v6 = __OFSUB__(v4, v5);
      v3 = v4 - v5;
      if (!v6)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    case 3uLL:
      goto LABEL_6;
    default:
      v3 = BYTE6(a2);
      goto LABEL_6;
  }
}

uint64_t sub_1AC4689B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](a1);
  v27 = v13;
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OUTLINED_FUNCTION_3_7(v12, v15);
  sub_1AC451CCC(v16, 2u);
  v33 = 0;
  v34 = a1;
  v31 = a3;
  v32 = a4;
  sub_1AC51F108();
  swift_getWitnessTable();
  sub_1AC51F018();
  sub_1AC45702C(v35);
  OUTLINED_FUNCTION_12();
  v17 = sub_1AC51F038();
  v35 = v17;
  OUTLINED_FUNCTION_12();
  result = sub_1AC51F0B8();
  if (v17 != result)
  {
    v25 = v5;
    v26 = v6;
    v19 = *(v6 + 8);
    v30 = a4;
    v20 = *(a4 + 40);
    v28 = (v10 + 16);
    v29 = v20;
    while (1)
    {
      OUTLINED_FUNCTION_12();
      v21 = sub_1AC51F0A8();
      sub_1AC51F048();
      if (v21)
      {
        (*(v10 + 16))(v14, a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v17, a3);
      }

      else
      {
        result = sub_1AC51F2F8();
        if (v27 != 8)
        {
          __break(1u);
          return result;
        }

        v34 = result;
        (*v28)(v14, &v34, a3);
        swift_unknownObjectRelease();
      }

      sub_1AC51F0F8();
      v22 = v29(a3, v30);
      (*(v10 + 8))(v14, a3);
      if (v22 < 0x80)
      {
        LOBYTE(v23) = v22;
      }

      else
      {
        do
        {
          *v19++ = v22 | 0x80;
          v23 = v22 >> 7;
          v24 = v22 >> 14;
          v22 >>= 7;
        }

        while (v24);
      }

      *v19++ = v23;
      OUTLINED_FUNCTION_12();
      result = sub_1AC51F0B8();
      v17 = v35;
      if (v35 == result)
      {
        *(v26 + 8) = v19;
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1AC468CB0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = (*(a3 + 40))(a2, a3);
  result = sub_1AC463F8C(v6);
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a4 = v5 + result;
  }

  return result;
}

void sub_1AC468D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v90 = a4;
  OUTLINED_FUNCTION_9_13(a1, a2, a3);
  v80 = v8;
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = v76 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v76 - v16);
  sub_1AC459C7C(v18);
  if (v5)
  {
    return;
  }

  v86 = v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v80;
  v89 = v17;
  v81 = v10;
  sub_1AC45A774();
  v20 = *(*v4 + 16);
  sub_1AC45A85C(v20);
  v21 = *v4;
  *(v21 + 16) = v20 + 1;
  *(v21 + v20 + 32) = 91;
  *v4 = v21;
  v4[4] = 256;
  if (!dynamic_cast_existential_1_conditional(a3))
  {
    v40 = dynamic_cast_existential_1_conditional(a3);
    v42 = v81;
    if (!v40)
    {
      sub_1AC4777D8();
      v66 = swift_allocError();
      OUTLINED_FUNCTION_21_6(v66, v67);
      return;
    }

    v43 = v19;
    OUTLINED_FUNCTION_42_3(v40, v41);
    v44();
    v46 = v91;
    v45 = v92;
    v47 = v93;
    v48 = v94;
    v49 = *(v6 + 16);
    v83 = *(v6 + 24);
    v84 = v49;
    v50 = *(v6 + 32);
    v78 = *(v6 + 40);
    v79 = v50;
    v51 = *(v6 + 48);
    *(v6 + 16) = v91;
    *(v6 + 24) = v45;
    *(v6 + 32) = v47;
    *(v6 + 40) = v48;
    v77 = v51;

    v85 = v46;

    v82 = v45;

    v76[2] = v47;

    v76[1] = v48;

    OUTLINED_FUNCTION_25_0();
    v52 = sub_1AC51F038();
    v91 = v52;
    v88 = (v90 + 72);
    v89 = (v43 + 16);
    v87 = (v43 + 8);
    v53 = v86;
    while (1)
    {
      OUTLINED_FUNCTION_25_0();
      if (v52 == sub_1AC51F0B8())
      {
        break;
      }

      OUTLINED_FUNCTION_25_0();
      v54 = sub_1AC51F0A8();
      OUTLINED_FUNCTION_49_3();
      if (v54)
      {
        OUTLINED_FUNCTION_19_7();
        v55(v53);
      }

      else
      {
        OUTLINED_FUNCTION_39_4();
        v60 = sub_1AC51F2F8();
        if (v42 != 8)
        {
          goto LABEL_36;
        }

        v95 = v60;
        (*v89)(v53, &v95, a3);
        swift_unknownObjectRelease();
      }

      OUTLINED_FUNCTION_39_4();
      sub_1AC51F0F8();
      v56 = v90;
      sub_1AC463A40(v53, v6, a3, v90);
      (*(v56 + 72))(v6, &type metadata for JSONEncodingVisitor, &off_1F211B6D0, a3, v56);
      (*v87)(v53, a3);
      v57 = *v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61 = *(v57 + 16);
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        v57 = v62;
      }

      v59 = *(v57 + 16);
      v58 = *(v57 + 24);
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_57_0(v58);
        sub_1AC45A78C();
        v57 = v63;
      }

      *(v57 + 16) = v59 + 1;
      OUTLINED_FUNCTION_22(v57 + v59);
      *(v6 + 8) = 44;
      v52 = v91;
      v42 = v81;
    }

    v68 = *(v6 + 16);
    v69 = *(v6 + 24);
    v71 = *(v6 + 32);
    v70 = *(v6 + 40);

    v72 = v83;
    *(v6 + 16) = v84;
    *(v6 + 24) = v72;
    v73 = v78;
    *(v6 + 32) = v79;
    *(v6 + 40) = v73;
    v74 = *(v6 + 48);

    *(v6 + 48) = v77;
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_25_0();
  v22 = sub_1AC51F038();
  v91 = v22;
  OUTLINED_FUNCTION_25_0();
  if (v22 == sub_1AC51F0B8())
  {
LABEL_33:
    sub_1AC45A774();
    OUTLINED_FUNCTION_34_4();
    OUTLINED_FUNCTION_15_8();
    OUTLINED_FUNCTION_14_10(v75);
    return;
  }

  v23 = v19;
  v24 = 0;
  LODWORD(v87) = *(v6 + 56);
  LODWORD(v86) = *(v6 + 57);
  v88 = (v23 + 16);
  LODWORD(v85) = *(v6 + 58);
  v83 = (v23 + 32);
  v84 = v23 + 8;
  LODWORD(v82) = *(v6 + 59);
  while (1)
  {
    OUTLINED_FUNCTION_25_0();
    v25 = sub_1AC51F0A8();
    OUTLINED_FUNCTION_49_3();
    if (v25)
    {
      OUTLINED_FUNCTION_19_7();
      v26 = v89;
      v27(v89);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_39_4();
    v36 = sub_1AC51F2F8();
    if (v81 != 8)
    {
      break;
    }

    v95 = v36;
    v26 = v89;
    (*v88)(v89, &v95, a3);
    swift_unknownObjectRelease();
LABEL_7:
    OUTLINED_FUNCTION_39_4();
    sub_1AC51F0F8();
    (*v83)(v15, v26, a3);
    if (v24)
    {
      v28 = *v6;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = *(v28 + 16);
        OUTLINED_FUNCTION_6_0();
        sub_1AC45A78C();
        v28 = v38;
      }

      v30 = *(v28 + 16);
      v29 = *(v28 + 24);
      if (v30 >= v29 >> 1)
      {
        OUTLINED_FUNCTION_57_0(v29);
        sub_1AC45A78C();
        v28 = v39;
      }

      *(v28 + 16) = v30 + 1;
      OUTLINED_FUNCTION_22(v28 + v30);
    }

    LOBYTE(v95) = v87;
    BYTE1(v95) = v86;
    BYTE2(v95) = v85;
    BYTE3(v95) = v82;
    v31 = &v95;
    v32 = Message.jsonString(options:)(v31);
    if (v33)
    {
      v64 = OUTLINED_FUNCTION_38_4();
      v65(v64);
      return;
    }

    sub_1AC45FA3C(v32._countAndFlagsBits, v32._object);
    v34 = OUTLINED_FUNCTION_38_4();
    v35(v34);
    OUTLINED_FUNCTION_25_0();
    v24 = 1;
    if (v91 == sub_1AC51F0B8())
    {
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1AC4693E4()
{
  OUTLINED_FUNCTION_10_6();
  result = sub_1AC451978(8 * v1);
  v3 = *v0 + result;
  if (__OFADD__(*v0, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  MEMORY[0x1EEE9AC00](result);
  OUTLINED_FUNCTION_12_4();
  OUTLINED_FUNCTION_3_6();
  OUTLINED_FUNCTION_7_4();
  result = sub_1AC4519B4(v7);
  v4 = result + v7;
  if (__OFADD__(result, v7))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = __OFADD__(v3, v4);
  v6 = v3 + v4;
  if (!v5)
  {
    *v0 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Message.jsonUTF8Data(options:)(char *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  Message.jsonUTF8Bytes<A>(options:)();
}

void sub_1AC4695AC(unsigned int a1, uint64_t a2)
{
  sub_1AC459C7C(a2);
  if (!v2)
  {
    sub_1AC45FBF4(a1);
  }
}

uint64_t sub_1AC469654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = dynamic_cast_existential_1_conditional(a1);
  v8 = 0uLL;
  if (result)
  {
    (*(v7 + 8))(v21, 0);
    v9 = v21[1];
    v10 = (*(a2 + 40))(a1, a2);
    if (*(v9 + 16) && (v11 = sub_1AC45AA38(v10), (v12 & 1) != 0))
    {
      v13 = *(v9 + 56) + 80 * v11;
      v20 = *(v13 + 40);
      v14 = *(v13 + 56);
      v15 = *(v13 + 64);
      v16 = *(v13 + 72);
      v17 = *(v13 + 73);
      sub_1AC45AC88(v14, v15, *(v13 + 72), *(v13 + 73));

      v8 = v20;
      if (v17)
      {
        v18 = 256;
      }

      else
      {
        v18 = 0;
      }

      v19 = v18 | v16;
    }

    else
    {

      v14 = 0;
      v15 = 0;
      v19 = -256;
      v8 = 0uLL;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v19 = -256;
  }

  *a3 = v8;
  *(a3 + 16) = v14;
  *(a3 + 24) = v15;
  *(a3 + 32) = v19;
  return result;
}

uint64_t sub_1AC4697D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 34))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 33);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AC469880@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1AC51ECB8();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t _s21InternalSwiftProtobuf07Google_C11_Int32ValueV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_19(a1, a2);
  v2 = OUTLINED_FUNCTION_76();
  sub_1AC4578F4(v2, v3);
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_35_7();
  v5 = v4;
  v6 = OUTLINED_FUNCTION_76();
  sub_1AC4513F8(v6, v7);
  v8 = OUTLINED_FUNCTION_121();
  sub_1AC4513F8(v8, v9);
  return v5 & 1;
}

uint64_t sub_1AC469990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = *a4;
  v6 = *(a4 + 8);
  return sub_1AC51EBC8();
}

uint64_t sub_1AC469A2C()
{
  if (OUTLINED_FUNCTION_34_3())
  {
    v2 = 0;
    v3 = 0xF000000000000000;
  }

  else
  {
    result = sub_1AC469AA4();
    if (v0)
    {
      return result;
    }

    v2 = result;
    v3 = v5;
  }

  result = sub_1AC45AC74(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t sub_1AC469AA4()
{
  sub_1AC458F28();
  v1 = *v0;
  if (*v0)
  {
    v2 = v0[1] - v1;
  }

  else
  {
    v2 = 0;
  }

  if (v0[2] == v2)
  {
    sub_1AC477660();
    v3 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v3, v4);
  }

  else
  {
    v6 = v0[1];
    if (v1)
    {
      v7 = v6 - v1;
    }

    else
    {
      v7 = 0;
    }

    return sub_1AC469B3C(v1, v6, v0 + 2, v7);
  }
}

uint64_t sub_1AC469B3C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + *a3) != 34)
  {
LABEL_27:
    sub_1AC477660();
    v19 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_36(xmmword_1AC51FB50, v19, v20);
  }

  result = sub_1AC458F9C(*a3, a1, a2);
  v10 = result;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a2 - a1;
  if (!a1)
  {
    v14 = 0;
  }

  v15 = result;
  while (1)
  {
    if (v15 == a4)
    {
      goto LABEL_24;
    }

    v16 = *(a1 + v15);
    if (v16 == 43)
    {
      goto LABEL_18;
    }

    switch(v16)
    {
      case '-':
        goto LABEL_13;
      case '/':
        goto LABEL_18;
      case '\\':
        if (v15 < 0 || v15 >= v14)
        {
          goto LABEL_33;
        }

        if (++v15 == a4)
        {
          goto LABEL_24;
        }

        v16 = *(a1 + v15);
        if (v16 != 47)
        {
          *a3 = v15;
          goto LABEL_27;
        }

LABEL_18:
        v13 = 1;
        goto LABEL_19;
      case '_':
LABEL_13:
        v12 = 1;
        goto LABEL_19;
    }

    if (v16 == 34)
    {
      break;
    }

LABEL_19:
    if ((qword_1F2126EC0[v16 + 4] & 0x8000000000000000) == 0 && __OFADD__(v11++, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

    if ((v15 & 0x8000000000000000) == 0 && v15++ < v14)
    {
      continue;
    }

    __break(1u);
LABEL_24:
    *a3 = a4;
    goto LABEL_27;
  }

  *a3 = v15;
  if (v13 & v12)
  {
    goto LABEL_27;
  }

  v21 = (v11 * 3) >> 64;
  v22 = 3 * v11;
  if (v21 != v22 >> 63)
  {
    goto LABEL_34;
  }

  v24 = MEMORY[0x1AC5B40A0](v22 / 4);
  v25 = v23;
  *a3 = v10;
  sub_1AC469D28(&v24, a1, a2, a3);
  if (v4)
  {
    return sub_1AC4513F8(v24, v25);
  }

  *a3 = sub_1AC458F9C(*a3, a1, a2);
  return v24;
}

uint64_t sub_1AC469D28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v4 = a1[1];
  switch(v4 >> 62)
  {
    case 1uLL:
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1AC4513F8(v5, v4);
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v5 >> 32;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      if (v24 < v5)
      {
        goto LABEL_29;
      }

      if (sub_1AC51EB78() && __OFSUB__(v5, sub_1AC51EBA8()))
      {
        goto LABEL_30;
      }

      v25 = sub_1AC51EBB8();
      v26 = *(v25 + 48);
      v27 = *(v25 + 52);
      swift_allocObject();
      v28 = sub_1AC51EB58();

      v22 = v28;
      v24 = v5 >> 32;
LABEL_16:
      v40 = a3;
      v29 = v24 - v5;
      if (v24 < v5)
      {
        goto LABEL_26;
      }

      v30 = sub_1AC51EB78();
      if (!v30)
      {
        goto LABEL_32;
      }

      v31 = v30;
      v32 = sub_1AC51EBA8();
      v33 = v5 - v32;
      if (__OFSUB__(v5, v32))
      {
        goto LABEL_28;
      }

      v34 = sub_1AC51EB98();
      if (v34 >= v29)
      {
        v35 = v29;
      }

      else
      {
        v35 = v34;
      }

      sub_1AC46A10C((v31 + v33), v31 + v33 + v35, a2, v40, a4);

      v21 = v22 | 0x4000000000000000;
      *a1 = v5;
      goto LABEL_23;
    case 2uLL:

      sub_1AC4513F8(v5, v4);
      *&v42 = v5;
      *(&v42 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_1AC51F990;
      sub_1AC4513F8(0, 0xC000000000000000);
      sub_1AC51EBE8();
      v11 = *(v42 + 16);
      v12 = *(v42 + 24);
      v13 = sub_1AC51EB78();
      if (!v13)
      {
        __break(1u);
LABEL_32:
        __break(1u);
        JUMPOUT(0x1AC46A0FCLL);
      }

      v14 = v13;
      v15 = sub_1AC51EBA8();
      v16 = v11 - v15;
      if (__OFSUB__(v11, v15))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v17 = __OFSUB__(v12, v11);
      v18 = v12 - v11;
      if (v17)
      {
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
      }

      v19 = sub_1AC51EB98();
      if (v19 >= v18)
      {
        v20 = v18;
      }

      else
      {
        v20 = v19;
      }

      result = sub_1AC46A10C((v14 + v16), v14 + v16 + v20, a2, a3, a4);
      v21 = *(&v42 + 1) | 0x8000000000000000;
      *a1 = v42;
LABEL_23:
      a1[1] = v21;
LABEL_24:
      v36 = *MEMORY[0x1E69E9840];
      return result;
    case 3uLL:
      *(&v42 + 7) = 0;
      *&v42 = 0;
      result = sub_1AC46A10C(&v42, &v42, a2, a3, a4);
      goto LABEL_24;
    default:
      sub_1AC4513F8(v5, v4);
      *&v42 = v5;
      WORD4(v42) = v4;
      BYTE10(v42) = BYTE2(v4);
      BYTE11(v42) = BYTE3(v4);
      BYTE12(v42) = BYTE4(v4);
      BYTE13(v42) = BYTE5(v4);
      BYTE14(v42) = BYTE6(v4);
      result = sub_1AC46A10C(&v42, &v42 + BYTE6(v4), a2, a3, a4);
      v10 = DWORD2(v42) | ((WORD6(v42) | (BYTE14(v42) << 16)) << 32);
      *a1 = v42;
      a1[1] = v10;
      goto LABEL_24;
  }
}

_BYTE *sub_1AC46A10C(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (result && a2 - result >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4 - a3;
    if (!a3)
    {
      v7 = 0;
    }

    v8 = *a5;
    while (2)
    {
      for (i = v8; ; *a5 = i)
      {
        v10 = *(a3 + i);
        v11 = qword_1F2126EC0[v10 + 4];
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

        if (v10 != 32)
        {
          break;
        }

        if (v8 < 0 || i >= v7)
        {
          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        ++i;
      }

      if (v10 != 34)
      {
        if (v10 == 92)
        {
          if (i < 0 || i >= v7)
          {
            goto LABEL_53;
          }

          *a5 = i + 1;
          if (*(a3 + i + 1) == 47)
          {
            v11 = qword_1F2127058;
            ++i;
LABEL_18:
            v12 = __OFADD__(v6++, 1);
            if (!v12)
            {
              v5 = v11 | (v5 << 6);
              if (v6 == 4)
              {
                v6 = 0;
                *result = BYTE2(v5);
                result[1] = BYTE1(v5);
                result[2] = v5;
                result += 3;
                i = *a5;
                v5 = 0;
              }

              if ((i & 0x8000000000000000) == 0 && i < v7)
              {
                v8 = i + 1;
                *a5 = i + 1;
                continue;
              }

              goto LABEL_52;
            }

LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
            return result;
          }
        }

        else if (v10 == 61)
        {
          v13 = 0;
          v14 = i + 1;
          v15 = 61;
          while (1)
          {
            if (v15 != 32)
            {
              if (v15 != 61)
              {
                goto LABEL_42;
              }

              v12 = __OFADD__(v13++, 1);
              if (v12)
              {
                break;
              }
            }

            if (i < 0 || v14 - 1 >= v7)
            {
              goto LABEL_49;
            }

            *a5 = v14;
            v15 = *(a3 + v14++);
            if (v15 == 34)
            {
              if (v6)
              {
                if (v6 == 2)
                {
                  *result = v5 >> 4;
                  if ((v13 | 2) == 2)
                  {
                    return result;
                  }
                }

                else if (v6 == 3)
                {
                  goto LABEL_41;
                }

                goto LABEL_42;
              }

              if (v13)
              {
                goto LABEL_42;
              }

              return result;
            }
          }

LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        goto LABEL_42;
      }

      break;
    }

    if (!v6)
    {
      return result;
    }

    if (v6 != 3)
    {
      if (v6 == 2)
      {
        *result = v5 >> 4;
        return result;
      }

      goto LABEL_42;
    }

    v13 = 0;
LABEL_41:
    *result = v5 >> 10;
    result[1] = v5 >> 2;
    if (v13 >= 2)
    {
LABEL_42:
      sub_1AC477660();
      swift_allocError();
      *v16 = xmmword_1AC51FB50;
      return swift_willThrow();
    }
  }

  return result;
}

void sub_1AC46A334()
{
  OUTLINED_FUNCTION_60();
  v3 = v2;
  v5 = v4;
  v51 = v6;
  OUTLINED_FUNCTION_5();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_12_8();
  v14 = v13 - v12;
  v53 = sub_1AC51F228();
  v15 = OUTLINED_FUNCTION_3_0(v53);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_39_2();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v48 - v21;
  if ((sub_1AC457638() & 1) == 0)
  {
    sub_1AC46A6E0(v5, v3, v1);
    if (v0)
    {
      goto LABEL_15;
    }

    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v5);
    v34 = *(v17 + 8);
    if (EnumTagSinglePayload == 1)
    {
      v34(v1, v53);
      goto LABEL_15;
    }

    v44 = v51;
    v34(v51, v53);
    v45 = *(v8 + 32);
    v45(v14, v1, v5);
    v45(v44, v14, v5);
    v36 = v44;
    v37 = 0;
LABEL_13:
    __swift_storeEnumTagSinglePayload(v36, v37, 1, v5);
    goto LABEL_15;
  }

  v23 = OUTLINED_FUNCTION_50_3();
  v24 = dynamic_cast_existential_1_conditional(v23);
  if (!v24)
  {
    v35 = v51;
    (*(v17 + 8))(v51, v53);
    v36 = v35;
    v37 = 1;
    goto LABEL_13;
  }

  v26 = v24;
  v27 = v25;
  v49 = v17;
  v28 = OUTLINED_FUNCTION_54_2(v24, v25);
  v50 = &v48;
  OUTLINED_FUNCTION_3_0(v28);
  v48 = v29;
  v31 = *(v30 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_48_4();
  v3(v26, v27);
  if (!v0)
  {
    v39 = v48;
    v38 = v49;
    (*(v49 + 8))(v51, v53);
    OUTLINED_FUNCTION_19_5(v1);
    if (v40)
    {
      v41 = *(v39 + 8);
      v42 = OUTLINED_FUNCTION_47_3();
      v43(v42);
      OUTLINED_FUNCTION_20_6();
    }

    else
    {
      v52[3] = v26;
      v52[4] = v27;
      __swift_allocate_boxed_opaque_existential_1(v52);
      OUTLINED_FUNCTION_13_7();
      (*(v46 + 32))();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
    v47 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v22, v47 ^ 1u, 1, v5);
    (*(v38 + 32))(v51, v22, v53);
  }

LABEL_15:
  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

unsigned __int8 *sub_1AC46A6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v54 = a2;
  v55 = a3;
  v7 = sub_1AC51F228();
  v8 = OUTLINED_FUNCTION_3_0(v7);
  v52 = v9;
  v53 = v8;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v50 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v50 - v19;
  v56 = a1;
  v51 = *(a1 - 8);
  v21 = *(v51 + 64);
  v22 = MEMORY[0x1EEE9AC00](v18);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v50 - v28;
  sub_1AC458F28();
  v30 = v3[2];
  v31 = *v3;
  if (*v3)
  {
    v32 = v3[1] - v31;
  }

  else
  {
    v32 = 0;
  }

  if (v30 == v32)
  {
    sub_1AC477660();
    v33 = OUTLINED_FUNCTION_11();
    return OUTLINED_FUNCTION_36(xmmword_1AC51FB60, v33, v34);
  }

  if (*(v31 + v30) == 34)
  {
    result = sub_1AC4595E0();
    if (v4)
    {
      return result;
    }

    if (v37)
    {
      v38 = sub_1AC45993C();
      v39 = v56;
      sub_1AC4C93D8(v38, v40, v56, v54, v17);
      if (__swift_getEnumTagSinglePayload(v17, 1, v39) == 1)
      {
        (*(v52 + 8))(v17, v53);
        v41 = v55;
        v42 = v5;
        v43 = v39;
        return sub_1AC4E64CC(v42, v43, v41);
      }

      v49 = *(v51 + 32);
      v49(v27, v17, v39);
      v47 = v55;
      v49(v55, v27, v39);
      v45 = v39;
    }

    else
    {
      v45 = v56;
      sub_1AC46AB60(result, v36, v56, v54, v20);
      if (__swift_getEnumTagSinglePayload(v20, 1, v45) == 1)
      {
        (*(v52 + 8))(v20, v53);
        v41 = v55;
        v42 = v3;
        v43 = v45;
        return sub_1AC4E64CC(v42, v43, v41);
      }

      v48 = *(v51 + 32);
      v48(v29, v20, v45);
      v47 = v55;
      v48(v55, v29, v45);
    }
  }

  else
  {
    v44 = OUTLINED_FUNCTION_3_21();
    result = sub_1AC457AEC(v44, sub_1AC45BEC8, sub_1AC45BEC8);
    if (v4)
    {
      return result;
    }

    v45 = v56;
    (*(v54 + 32))(result, v56, v54);
    if (__swift_getEnumTagSinglePayload(v14, 1, v45) == 1)
    {
      (*(v52 + 8))(v14, v53);
      v41 = v55;
      v42 = v3;
      v43 = v45;
      return sub_1AC4E64CC(v42, v43, v41);
    }

    v46 = *(v51 + 32);
    v46(v24, v14, v45);
    v47 = v55;
    v46(v55, v24, v45);
  }

  return __swift_storeEnumTagSinglePayload(v47, 0, 1, v45);
}

uint64_t sub_1AC46AB60@<X0>(unsigned __int8 *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = sub_1AC51F228();
  v12 = OUTLINED_FUNCTION_3_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v18 = v28 - v17;
  v19 = dynamic_cast_existential_1_conditional(a3);
  if (v19)
  {
    v28[0] = v14;
    v28[1] = v5;
    v29 = a5;
    OUTLINED_FUNCTION_1_8(v19, v20);
    v21();
    v22 = v30;
    v31[0] = a1;
    v31[1] = a2;
    v31[2] = "";
    v31[3] = 0;
    v32 = 258;
    if (*(v30 + 16) && (v23 = sub_1AC4599C0(v31), (v24 & 1) != 0))
    {
      v25 = *(*(v22 + 56) + 8 * v23);

      (*(a4 + 32))(v25, a3, a4);
      if (!__swift_getEnumTagSinglePayload(v18, 1, a3))
      {
        a5 = v29;
        (*(*(a3 - 8) + 32))(v29, v18, a3);
        v26 = 0;
        return __swift_storeEnumTagSinglePayload(a5, v26, 1, a3);
      }

      (*(v28[0] + 8))(v18, v11);
    }

    else
    {
    }

    v26 = 1;
    a5 = v29;
  }

  else
  {
    v26 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a5, v26, 1, a3);
}

void sub_1AC46AD8C()
{
  OUTLINED_FUNCTION_60();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_1AC51F228();
  OUTLINED_FUNCTION_3_0(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_65();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  if (sub_1AC457638())
  {
    v15 = OUTLINED_FUNCTION_50_3();
    v16 = dynamic_cast_existential_1_conditional(v15);
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v20 = *(v17 + 24);
      v21 = sub_1AC51F228();
      OUTLINED_FUNCTION_3_0(v21);
      v50 = v22;
      v24 = *(v23 + 64);
      OUTLINED_FUNCTION_65();
      MEMORY[0x1EEE9AC00](v25);
      v27 = &v49 - v26;
      v20(v18, v19);
      if (!v0)
      {
        v38 = v50;
        v49 = &v49;
        v39 = *(*(v4 - 8) + 8);
        v40 = OUTLINED_FUNCTION_98();
        v41(v40);
        OUTLINED_FUNCTION_19_5(v27);
        if (v31)
        {
          (*(v38 + 8))(v27, v21);
          OUTLINED_FUNCTION_20_6();
        }

        else
        {
          v51[3] = v18;
          v51[4] = v19;
          __swift_allocate_boxed_opaque_existential_1(v51);
          OUTLINED_FUNCTION_13_7();
          (*(v48 + 32))();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557FC8, &unk_1AC528980);
        swift_dynamicCast();
      }
    }

    else
    {
      v32 = *(*(v4 - 8) + 8);
      v33 = OUTLINED_FUNCTION_98();
      v34(v33);
      v35 = *(v2 + 24);
      v36 = OUTLINED_FUNCTION_51();
      v37(v36);
    }
  }

  else
  {
    v28 = OUTLINED_FUNCTION_51();
    sub_1AC46A6E0(v28, v29, v30);
    if (!v0)
    {
      OUTLINED_FUNCTION_42_0(v14, 1, v4);
      if (v31)
      {
        (*(v9 + 8))(v14, v7);
      }

      else
      {
        OUTLINED_FUNCTION_5();
        v43 = v42;
        v45 = *(v44 + 8);
        v46 = OUTLINED_FUNCTION_98();
        v47(v46);
        (*(v43 + 32))(v6, v14, v4);
      }
    }
  }

  OUTLINED_FUNCTION_33_3();
  OUTLINED_FUNCTION_61();
}

uint64_t sub_1AC46B108()
{
  if (OUTLINED_FUNCTION_34_3())
  {
    v2 = 0;
    v3 = 0xC000000000000000;
  }

  else
  {
    result = sub_1AC469AA4();
    if (v0)
    {
      return result;
    }

    v2 = result;
    v3 = v5;
  }

  result = sub_1AC4513F8(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t Message.init(textFormatString:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v14 = 100;
  v15 = 0;
  sub_1AC450324(a3, v13);
  Message.init(textFormatString:options:extensions:)(a1, a2, &v14, v13, a4, a5, a6);
  return sub_1AC455360(a3);
}

uint64_t Message.init(textFormatString:options:extensions:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a4;
  v44 = a7;
  v45 = a1;
  v43 = sub_1AC51EE28();
  OUTLINED_FUNCTION_5();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12_8();
  v18 = v17 - v16;
  OUTLINED_FUNCTION_5();
  v20 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_12_8();
  v26 = v25 - v24;
  v42 = *a3;
  LODWORD(v25) = *(a3 + 8);
  v40 = *(a3 + 9);
  v41 = v25;
  v27 = *(a6 + 16);
  v46 = a5;
  v28 = a6;
  v27(a5, a6);
  v29 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v29 = v45 & 0xFFFFFFFFFFFFLL;
  }

  if (!v29)
  {

    goto LABEL_8;
  }

  sub_1AC51EE18();
  v30 = sub_1AC51EDF8();
  v32 = v31;

  v33 = (*(v12 + 8))(v18, v43);
  if (v32 >> 60 == 15)
  {
LABEL_8:
    v34 = v46;
    v35 = v47;
LABEL_9:
    (*(v20 + 16))(v44, v26, v34);
    goto LABEL_10;
  }

  MEMORY[0x1EEE9AC00](v33);
  v34 = v46;
  v35 = v47;
  *(&v39 - 6) = v46;
  *(&v39 - 5) = v28;
  *(&v39 - 4) = v42;
  v36 = v40;
  *(&v39 - 24) = v41;
  *(&v39 - 23) = v36;
  *(&v39 - 2) = v35;
  *(&v39 - 1) = v26;
  v37 = v48;
  sub_1AC46B4AC(sub_1AC46B978, (&v39 - 8), v30, v32);
  sub_1AC45AC74(v30, v32);
  if (!v37)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1AC455360(v35);
  return (*(v20 + 8))(v26, v34);
}

uint64_t sub_1AC46B4AC(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = *MEMORY[0x1E69E9840];
  switch(a4 >> 62)
  {
    case 1uLL:
      v7 = a3 >> 32;
      if (a3 >> 32 < a3)
      {
        __break(1u);
      }

      v6 = a3;
      goto LABEL_7;
    case 2uLL:
      v6 = *(a3 + 16);
      v7 = *(a3 + 24);
LABEL_7:
      result = sub_1AC46B604(v6, v7, a1);
      break;
    case 3uLL:
      result = sub_1AC4E4F68(a1, a2, 0, 0);
      break;
    default:
      v9 = a3;
      v10 = a4;
      v11 = BYTE2(a4);
      v12 = BYTE3(a4);
      v13 = BYTE4(a4);
      v14 = BYTE5(a4);
      result = a1(&v9, &v9 + BYTE6(a4));
      break;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1AC46B604(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1AC51EB78();
  v7 = result;
  if (result)
  {
    result = sub_1AC51EBA8();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v7 += a1 - result;
  }

  v8 = __OFSUB__(a2, a1);
  v9 = a2 - a1;
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = sub_1AC51EB98();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v7;
  if (v7)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return a3(v7, v13);
}

uint64_t sub_1AC46B6AC(uint64_t result, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v9 = result;
    v10 = a2 - result;
    if (a2 - result >= 1)
    {
      __dst[22] = a6;
      sub_1AC450324(a5, v26);
      *(&__src[5] + 1) = 0;
      LOWORD(__src[6]) = 256;
      *(&__src[6] + 8) = 0u;
      *(&__src[7] + 8) = 0u;
      sub_1AC450324(v26, v24);
      type metadata accessor for DoubleParser();
      memset(__src, 0, 40);
      v15 = swift_allocObject();
      *(v15 + 16) = swift_slowAlloc();
      *(v15 + 24) = 128;
      *(&__src[3] + 1) = v15;
      v16 = &v9[v10];
      *(&__src[2] + 1) = v9;
      *&__src[3] = &v9[v10];
      result = sub_1AC46B9B4(v24, __src);
      *&__src[4] = a3;
      WORD4(__src[4]) = a4 & 0x101;
      if (__OFSUB__(a3, 1))
      {
        __break(1u);
      }

      else
      {
        *&__src[5] = a3 - 1;
        do
        {
          v17 = *v9;
          if (v17 > 0x23)
          {
            break;
          }

          if (((1 << v17) & 0x100002600) == 0)
          {
            if (v17 == 35)
            {
              ++v9;
              while (v9 != v16)
              {
                v19 = *v9++;
                v18 = v19;
                if (v19 == 10 || v18 == 13)
                {
                  goto LABEL_8;
                }
              }

              *(&__src[2] + 1) = v16;
            }

            break;
          }

          ++v9;
LABEL_8:
          *(&__src[2] + 1) = v9;
        }

        while (v9 != v16);
        sub_1AC455360(v24);
        if (dynamic_cast_existential_1_conditional(a7))
        {
          (*(v21 + 8))(v24);
          sub_1AC455360(v26);
          sub_1AC458E14(*(&__src[6] + 1));
          *(&__src[7] + 8) = v24[1];
          *(&__src[6] + 8) = v24[0];
          *(&__src[8] + 1) = a7;
          *&__src[9] = a8;
          memcpy(__dst, __src, 0x98uLL);
          (*(a8 + 64))(__dst, &type metadata for TextFormatDecoder, &off_1F211BCA0, a7, a8);
          if (!v8 && __dst[5] != __dst[6])
          {
            sub_1AC477954();
            swift_allocError();
            *v22 = 2;
            swift_willThrow();
          }

          return sub_1AC477AA8(__dst);
        }

        else
        {
          sub_1AC477954();
          swift_allocError();
          *v23 = 6;
          swift_willThrow();
          sub_1AC455360(v26);
          sub_1AC477A04(__src);
          return sub_1AC458E14(*(&__src[6] + 1));
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AC46B978(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 41))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_1AC46B6AC(a1, a2, *(v2 + 32), v3 | *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 16), *(v2 + 24));
}

uint64_t sub_1AC46B9B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB557F98, &qword_1AC520460);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t _NameMap.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v361 = a2;
  type metadata accessor for InternPool();
  v759 = swift_allocObject();
  *(v759 + 16) = MEMORY[0x1E69E7CC0];
  v694 = sub_1AC51ED58();
  sub_1AC46C9B4();
  v3 = OUTLINED_FUNCTION_33_5();
  v4 = OUTLINED_FUNCTION_33_5();
  v650 = *(a1 + 16);
  if (v650)
  {
    v5 = 0;
    v606 = a1;
    v628 = a1 + 32;
    while (1)
    {
      if (v5 >= *(a1 + 16))
      {
        goto LABEL_141;
      }

      v6 = v628 + 56 * v5;
      v7 = *(v6 + 8);
      v781 = *v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      v10 = *(v6 + 32);
      v11 = *(v6 + 40);
      v12 = *(v6 + 48);
      v672 = v5 + 1;
      switch(v8 >> 62)
      {
        case 1uLL:
          swift_retain_n();
          v166 = OUTLINED_FUNCTION_51();
          sub_1AC46CA08(v166, v167, v8, v168);
          *&v520[8] = v819[0];
          v169 = v820;
          v170 = v821;
          *v716 = v819[1];
          if (v821)
          {
            sub_1AC51F2E8();
          }

          else
          {
          }

          v171 = sub_1AC46CB70();
          v173 = v172;

          v174 = sub_1AC46CC84(v171, v173);
          v176 = v175;

          v843[0] = v174;
          v843[1] = v176;
          v843[2] = v171;
          v843[3] = v173;
          v844 = 0;
          BYTE2(v815) = v170;
          v845[0] = v174;
          v845[1] = v176;
          v845[2] = v171;
          v845[3] = v173;
          v846 = 0;
          v847 = v814;
          v848 = WORD2(v814);
          v850 = *v716;
          v849 = *&v520[8];
          v851 = v169;
          v852 = v170;
          sub_1AC46D160(v819, &v804);

          OUTLINED_FUNCTION_36_4();
          v804 = v174;
          sub_1AC46D198(v845, v781);
          v694 = v804;
          swift_isUniquelyReferenced_nonNull_native();
          v804 = v3;
          sub_1AC46D330(v781, v819);
          v3 = v804;
          swift_isUniquelyReferenced_nonNull_native();
          v804 = v4;
          sub_1AC46D330(v781, v819);
          sub_1AC46D4D4(v819);
          v177 = v804;
          swift_isUniquelyReferenced_nonNull_native();
          v804 = v177;
          sub_1AC46D330(v781, v843);

          v4 = v804;
          goto LABEL_134;
        case 2uLL:
          swift_retain_n();
          sub_1AC46CA08(v10, v11, v12, &v822);
          v66 = v822;
          v433 = v823;
          v67 = v7;
          v68 = v824;
          v69 = v825;
          sub_1AC46CA08(v67, v9, v8, &v826);
          v479 = v826;
          *v520 = v827;
          LODWORD(v716[0]) = v828;
          if (v69)
          {
            v70 = 256;
          }

          else
          {
            v70 = 0;
          }

          BYTE1(v815) = BYTE1(v828);
          sub_1AC46D160(&v822, &v804);
          sub_1AC46D160(&v826, &v804);
          OUTLINED_FUNCTION_36_4();
          v814 = v69;
          sub_1AC45AA38(v781);
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v73, v74))
          {
            goto LABEL_144;
          }

          v75 = v71;
          v76 = v72;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
          v77 = OUTLINED_FUNCTION_30_5();
          if ((v77 & 1) == 0)
          {
            goto LABEL_23;
          }

          sub_1AC45AA38(v781);
          OUTLINED_FUNCTION_9_16();
          if (!v34)
          {
            goto LABEL_162;
          }

          v75 = v77;
LABEL_23:
          v85 = v70 | v68;
          if (v76)
          {
            OUTLINED_FUNCTION_8_17(v77, v78, v79, v80, v81, v82, v83, v84, v361, v383, v66.n128_i64[1], v433.n128_i64[0], v433.n128_i64[1], v479.n128_i64[0], v479.n128_i64[1], *v520, *&v520[8], *&v520[16], v584, v606, v628, v650, v672, v694, v716[0], v716[1], v759, v781, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814);
            v88 = v86 + v75 * v87;
            v97 = OUTLINED_FUNCTION_23_10(v89, v90, v91, v92, v93, v94, v95, v96, v366, v388, v410, v434, v457, v480, v503, v525, v546, v567, v589, v611, v633, v655, v677, v699, v721, v742, v764, v786, v804);
            *v88 = v66.n128_u64[0];
            *(v88 + 8) = v411;
            *(v88 + 16) = v435;
            *(v88 + 24) = v458;
            *(v88 + 32) = v85;
            OUTLINED_FUNCTION_15_11(v97, v98, v99, v100, v101, v102, v103, v104, v367, v389, v411, v435, v458, v481, v504, v526, v547, v568, v590, v612, v634, v656, v678, v700, v722, v743, v765, v787, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815);
            *(v88 + 40) = v482;
            *(v88 + 48) = v505;
            *(v88 + 56) = v527;
            *(v88 + 64) = v548;
            *(v88 + 72) = v723;
            OUTLINED_FUNCTION_25_5(v105, v106, v107, v108, v109, v110, v111, v112, v368, v390, v412, v436, v459, v482, v505, v527, v548, v569, v591, v613, v635, v657, v679, v701, v723, v744, v766, v788, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, SBYTE1(v815));
          }

          else
          {
            OUTLINED_FUNCTION_4_17(&v814[v75 >> 6]);
            OUTLINED_FUNCTION_17_12(v178, v179, v180, v181, v182, v183, v184, v185, v361, v383, v66.n128_i64[1], v433.n128_i64[0], v433.n128_i64[1], v479.n128_i64[0], v479.n128_i64[1], *v520, *&v520[8], *&v520[16], v584, v606, v628, v650, v672, v694, v716[0], v716[1], v759, v781);
            *v186 = v66.n128_u64[0];
            *(v186 + 8) = v419;
            *(v186 + 16) = v443;
            *(v186 + 24) = v465;
            *(v186 + 32) = v85;
            OUTLINED_FUNCTION_14_12(v186, v374, v396, v419, v443, v465, v489, v511, v533, v554, v575, v597, v619, v641, v663, v685, v707, v729, v750, v772, v794, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815);
            *(v187 + 40) = v490;
            *(v187 + 48) = v512;
            *(v187 + 56) = v534;
            *(v187 + 64) = v555;
            *(v187 + 72) = v730;
            OUTLINED_FUNCTION_13_12(v187, v375, v397, v420, v444, v466, v490, v512, v534, v555, v576, v598, v620, v642, v664, v686, v708, v730, v751, v773, v795, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, SBYTE1(v815));
            if (v190)
            {
              goto LABEL_154;
            }

            v702 = v189;
            *(v189 + 16) = v188;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v814 = v3;
          sub_1AC4599C0(&v826);
          OUTLINED_FUNCTION_12_15();
          a1 = v614;
          if (__OFADD__(v193, v194))
          {
            goto LABEL_145;
          }

          v195 = v191;
          v196 = v192;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
          if ((OUTLINED_FUNCTION_24_9() & 1) == 0)
          {
            goto LABEL_45;
          }

          sub_1AC4599C0(&v826);
          OUTLINED_FUNCTION_5_19();
          if (!v34)
          {
            goto LABEL_162;
          }

          v195 = v197;
LABEL_45:
          if (v196)
          {
            v3 = v814;
            OUTLINED_FUNCTION_7_16(v814[7], v369, v391, v413, v437, v460, v483, v506, v528, v549, v570, v592, v614, v636, v658, v680, v702, v724, v745, v767, v789);
          }

          else
          {
            v837 = v827;
            v838 = v828;
            v3 = v814;
            OUTLINED_FUNCTION_0_28(&v814[v195 >> 6]);
            v242 = v3[6];
            OUTLINED_FUNCTION_22_10();
            v244 = v826;
            v243 = v827;
            v245[2].n128_u16[0] = v828;
            *v245 = v244;
            v245[1] = v243;
            OUTLINED_FUNCTION_7_16(v3[7], v369, v391, v413, v437, v460, v483, v506, v528, v549, v570, v592, v614, v636, v658, v680, v702, v724, v745, v767, v789);
            OUTLINED_FUNCTION_21_8();
            if (v190)
            {
              goto LABEL_156;
            }

            v3[2] = v246;
            sub_1AC46D444(&v837, &v804);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v804 = v4;
          sub_1AC4599C0(&v826);
          v248 = v247;
          v249 = v4[2];
          OUTLINED_FUNCTION_6_18();
          if (v190)
          {
            goto LABEL_150;
          }

          if ((OUTLINED_FUNCTION_32_6() & 1) == 0)
          {
            goto LABEL_72;
          }

          sub_1AC4599C0(&v826);
          OUTLINED_FUNCTION_5_19();
          if (!v34)
          {
            goto LABEL_162;
          }

          v195 = v250;
LABEL_72:
          v251 = v804;
          if (v248)
          {
            OUTLINED_FUNCTION_7_16(v804[7], v376, v398, v421, v445, v467, v491, v513, v535, v556, v577, v599, v621, v643, v665, v687, v709, v731, v752, v774, v796);
            sub_1AC46D4D4(&v826);
          }

          else
          {
            OUTLINED_FUNCTION_0_28(&v804[v195 >> 6]);
            v283 = v251[6];
            OUTLINED_FUNCTION_22_10();
            OUTLINED_FUNCTION_16_10(v284, v826, v827);
            OUTLINED_FUNCTION_7_16(v251[7], v376, v398, v421, v445, v467, v491, v513, v535, v556, v577, v599, v621, v643, v665, v687, v709, v731, v752, v774, v796);
            v285 = v251[2];
            v190 = __OFADD__(v285, 1);
            v286 = v285 + 1;
            if (v190)
            {
              goto LABEL_160;
            }

            v251[2] = v286;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v804 = v251;
          sub_1AC4599C0(&v822);
          v288 = v287;
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v290, v291))
          {
            goto LABEL_151;
          }

          v292 = v289;
          if ((sub_1AC51F338() & 1) == 0)
          {
            goto LABEL_99;
          }

          sub_1AC4599C0(&v822);
          OUTLINED_FUNCTION_5_19();
          if (!v34)
          {
            goto LABEL_162;
          }

          v292 = v293;
LABEL_99:
          v4 = v804;
          if (v288)
          {
            OUTLINED_FUNCTION_7_16(v804[7], v382, v404, v427, v451, v473, v497, v519, v541, v562, v583, v605, v627, v649, v671, v693, v715, v737, v758, v780, v802);
            v282 = &v822;
LABEL_101:
            sub_1AC46D4D4(v282);
          }

          else
          {
            OUTLINED_FUNCTION_0_28(&v804[v292 >> 6]);
            v358 = v4[6];
            OUTLINED_FUNCTION_22_10();
            OUTLINED_FUNCTION_16_10(v359, v822, v823);
            OUTLINED_FUNCTION_7_16(v4[7], v382, v404, v427, v451, v473, v497, v519, v541, v562, v583, v605, v627, v649, v671, v693, v715, v737, v758, v780, v802);
            OUTLINED_FUNCTION_26_8();
            if (v190)
            {
              goto LABEL_161;
            }

LABEL_131:
            v4[2] = v357;
          }

          goto LABEL_134;
        case 3uLL:

          v113 = OUTLINED_FUNCTION_51();
          *v520 = v11;
          *&v520[8] = v12;
          sub_1AC4F009C(v113, v114, v8);
          v414 = v9;
          v115 = OUTLINED_FUNCTION_51();
          v438 = v8;
          sub_1AC46CA08(v115, v116, v8, v117);
          v118 = v829;
          v484 = v830;
          v119 = v831;
          v841 = v830;
          v842 = v831;
          if (HIBYTE(v831))
          {
            v120 = 256;
          }

          else
          {
            v120 = 0;
          }

          BYTE1(v815) = HIBYTE(v831);
          sub_1AC46D444(&v841, &v804);
          sub_1AC46D444(&v841, &v804);
          OUTLINED_FUNCTION_36_4();
          v814 = v759;
          sub_1AC45AA38(v781);
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v123, v124))
          {
            goto LABEL_142;
          }

          v125 = v121;
          v126 = v122;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
          v127 = sub_1AC51F338();
          if ((v127 & 1) == 0)
          {
            goto LABEL_32;
          }

          v127 = sub_1AC45AA38(v781);
          if ((v126 & 1) != (v128 & 1))
          {
            goto LABEL_162;
          }

          v125 = v127;
LABEL_32:
          v135 = v120 | v119;
          if (v126)
          {
            OUTLINED_FUNCTION_8_17(v127, v128, v129, v130, v131, v132, v133, v134, v361, v7, v414, v438, v118.n128_i64[1], v484.n128_i64[0], v484.n128_i64[1], *v520, *&v520[8], *&v520[16], v584, v606, v628, v650, v672, v694, v10, v716[1], v759, v781, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814);
            v138 = v136 + v125 * v137;
            v147 = OUTLINED_FUNCTION_23_10(v139, v140, v141, v142, v143, v144, v145, v146, v370, v392, v415, v439, v461, v485, v507, v529, v550, v571, v593, v615, v637, v659, v681, v703, v725, v746, v768, v790, v804);
            *v138 = v118.n128_u64[0];
            *(v138 + 8) = v462;
            *(v138 + 16) = v486;
            *(v138 + 24) = v508;
            *(v138 + 32) = v135;
            OUTLINED_FUNCTION_15_11(v147, v148, v149, v150, v151, v152, v153, v154, v371, v393, v416, v440, v462, v486, v508, v530, v551, v572, v594, v616, v638, v660, v682, v704, v726, v747, v769, v791, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815);
            *(v138 + 40) = v118.n128_u64[0];
            *(v138 + 48) = v155;
            *(v138 + 56) = v157;
            *(v138 + 64) = v156;
            *(v138 + 72) = v119;
            OUTLINED_FUNCTION_25_5(v158, v159, v160, v161, v162, v163, v164, v165, v372, v394, v417, v441, v463, v487, v509, v531, v552, v573, v595, v617, v639, v661, v683, v705, v727, v748, v770, v792, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, SBYTE1(v815));
          }

          else
          {
            OUTLINED_FUNCTION_4_17(&v814[v125 >> 6]);
            *(*(v198 + 48) + 8 * v125) = v781;
            v199 = *(v198 + 56) + 80 * v125;
            *v199 = v118;
            *(v199 + 16) = v484;
            *(v199 + 32) = v135;
            OUTLINED_FUNCTION_14_12(v199, v361, v7, v414, v438, v118.n128_i64[1], v484.n128_i64[0], v484.n128_i64[1], *v520, *&v520[8], *&v520[16], v584, v606, v628, v650, v672, v694, v10, v716[1], v759, v781, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815);
            *(v200 + 40) = v118.n128_u64[0];
            *(v200 + 48) = v201;
            *(v200 + 56) = v203;
            *(v200 + 64) = v202;
            *(v200 + 72) = v119;
            OUTLINED_FUNCTION_13_12(v200, v377, v399, v422, v446, v468, v492, v514, v536, v557, v578, v600, v622, v644, v666, v688, v710, v732, v753, v775, v797, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, SBYTE1(v815));
            if (v190)
            {
              goto LABEL_152;
            }

            v706 = v205;
            *(v205 + 16) = v204;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v814 = v3;
          sub_1AC4599C0(&v829);
          OUTLINED_FUNCTION_12_15();
          if (__OFADD__(v208, v209))
          {
            goto LABEL_146;
          }

          v210 = v206;
          v211 = v207;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
          v212 = sub_1AC51F338();
          if ((v212 & 1) == 0)
          {
            goto LABEL_54;
          }

          sub_1AC4599C0(&v829);
          OUTLINED_FUNCTION_10_12();
          if (!v34)
          {
            goto LABEL_162;
          }

          v210 = v212;
LABEL_54:
          v3 = v814;
          if (v211)
          {
            OUTLINED_FUNCTION_11_12(v212, v213, v214, v215, v216, v217, v218, v219, v373, v395, v418, v442, v464, v488, v510, v532, v553, v574, v596, v618, v640, v662, v684, v706, v728, v749, v771, v793);
          }

          else
          {
            OUTLINED_FUNCTION_3_24(&v814[v210 >> 6]);
            OUTLINED_FUNCTION_16_10((v252 + v210 * v253), v829, v830);
            OUTLINED_FUNCTION_11_12(v254, v255, v256, v257, v258, v259, v260, v261, v373, v395, v418, v442, v464, v488, v510, v532, v553, v574, v596, v618, v640, v662, v684, v706, v728, v749, v771, v793);
            OUTLINED_FUNCTION_21_8();
            if (v190)
            {
              goto LABEL_155;
            }

            v3[2] = v262;
            sub_1AC46D444(&v841, &v804);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v804 = v4;
          sub_1AC4599C0(&v829);
          v264 = v263;
          v265 = v4[2];
          OUTLINED_FUNCTION_6_18();
          if (v190)
          {
            goto LABEL_149;
          }

          v266 = OUTLINED_FUNCTION_28_5();
          if ((v266 & 1) == 0)
          {
            goto LABEL_81;
          }

          sub_1AC4599C0(&v829);
          OUTLINED_FUNCTION_10_12();
          if (!v34)
          {
            goto LABEL_162;
          }

          v210 = v266;
LABEL_81:
          v274 = v733;
          v4 = v804;
          if (v264)
          {
            OUTLINED_FUNCTION_20_10(v266, v267, v268, v269, v270, v271, v272, v273, v378, v400, v423, v447, v469, v493, v515, v537, v558, v579, v601, v623, v645, v667, v689, v711, v733, v754, v776, v798);
            sub_1AC46D4D4(&v829);
          }

          else
          {
            OUTLINED_FUNCTION_2_19(&v804[v210 >> 6]);
            OUTLINED_FUNCTION_16_10((v294 + v210 * v295), v829, v830);
            OUTLINED_FUNCTION_20_10(v296, v297, v298, v299, v300, v301, v302, v303, v378, v400, v423, v447, v469, v493, v515, v537, v558, v579, v601, v623, v645, v667, v689, v711, v733, v754, v776, v798);
            OUTLINED_FUNCTION_26_8();
            if (v190)
            {
              goto LABEL_158;
            }

            v4[2] = v304;
          }

          v305 = *(v274 + 16);
          if (v305)
          {
            v306 = 0;
            v307 = (v274 + 48);
            while (v306 < *(v274 + 16))
            {
              v309 = *(v307 - 2);
              v308 = *(v307 - 1);
              v310 = *v307;

              sub_1AC46CA08(v309, v308, v310, &v832);
              swift_isUniquelyReferenced_nonNull_native();
              v814 = v3;
              sub_1AC4599C0(&v832);
              v312 = v311;
              v313 = v3[2];
              OUTLINED_FUNCTION_6_18();
              if (v190)
              {
                goto LABEL_137;
              }

              v315 = v314;
              v316 = sub_1AC51F338();
              if (v316)
              {
                sub_1AC4599C0(&v832);
                OUTLINED_FUNCTION_10_12();
                if (!v34)
                {
                  goto LABEL_162;
                }

                v315 = v316;
              }

              v3 = v814;
              if (v312)
              {
                OUTLINED_FUNCTION_11_12(v316, v317, v318, v319, v320, v321, v322, v323, v361, v383, v405, v428, v452, v474, v498, *v520, *&v520[8], *&v520[16], v584, v606, v628, v650, v672, v694, v716[0], v716[1], v759, v803);
              }

              else
              {
                OUTLINED_FUNCTION_3_24(&v814[v315 >> 6]);
                OUTLINED_FUNCTION_16_10((v324 + v315 * v325), v832, v833);
                OUTLINED_FUNCTION_11_12(v326, v327, v328, v329, v330, v331, v332, v333, v361, v383, v405, v428, v452, v474, v498, *v520, *&v520[8], *&v520[16], v584, v606, v628, v650, v672, v694, v716[0], v716[1], v759, v803);
                OUTLINED_FUNCTION_21_8();
                if (v190)
                {
                  goto LABEL_139;
                }

                v3[2] = v334;
                v839 = v833;
                v840 = v834;
                sub_1AC46D444(&v839, &v804);
              }

              swift_isUniquelyReferenced_nonNull_native();
              v804 = v4;
              sub_1AC4599C0(&v832);
              v336 = v335;
              v337 = v4[2];
              OUTLINED_FUNCTION_6_18();
              if (v190)
              {
                goto LABEL_138;
              }

              if (OUTLINED_FUNCTION_28_5())
              {
                sub_1AC4599C0(&v832);
                OUTLINED_FUNCTION_10_12();
                if (!v34)
                {
                  goto LABEL_162;
                }

                v315 = v338;
              }

              v274 = v716[0];
              if (v336)
              {
                sub_1AC46D4D4(&v832);
                v4 = v804;
                *(v804[7] + 8 * v315) = v803;
              }

              else
              {
                v4 = v804;
                OUTLINED_FUNCTION_2_19(&v804[v315 >> 6]);
                v341 = (v339 + v315 * v340);
                LOWORD(v340) = v834;
                v342 = v833;
                *v341 = v832;
                v341[1] = v342;
                v341[2].n128_u16[0] = v340;
                OUTLINED_FUNCTION_20_10(v343, v344, v345, v346, v347, v348, v349, v350, v361, v383, v405, v428, v452, v474, v498, *v520, *&v520[8], *&v520[16], v584, v606, v628, v650, v672, v694, v716[0], v716[1], v759, v803);
                OUTLINED_FUNCTION_26_8();
                if (v190)
                {
                  goto LABEL_140;
                }

                v4[2] = v351;
              }

              ++v306;
              v307 += 24;
              if (v305 == v306)
              {
                v352 = v383;
                v353 = v405;
                v354 = v428;
                goto LABEL_133;
              }
            }

            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
            __break(1u);
LABEL_140:
            __break(1u);
LABEL_141:
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
            while (1)
            {
LABEL_162:
              sub_1AC51F408();
              __break(1u);
            }
          }

          v352 = v383;
          v353 = v405;
          v354 = v428;
LABEL_133:
          sub_1AC4F0568(v352, v353, v354);
          a1 = v606;
LABEL_134:
          v5 = v672;
          if (v672 == v650)
          {
            goto LABEL_135;
          }

          break;
        default:

          v13 = OUTLINED_FUNCTION_51();
          sub_1AC46CA08(v13, v14, v8, v15);
          *v520 = v816.n128_u64[1];
          v16 = v816.n128_u64[0];
          v17 = v817;
          v18 = v818;
          v835 = v817;
          v836 = v818;
          if (HIBYTE(v818))
          {
            v19 = 256;
          }

          else
          {
            v19 = 0;
          }

          BYTE1(v815) = HIBYTE(v818);
          sub_1AC46D444(&v835, &v804);
          sub_1AC46D444(&v835, &v804);
          OUTLINED_FUNCTION_36_4();
          v814 = v759;
          sub_1AC45AA38(v781);
          OUTLINED_FUNCTION_1_24();
          if (__OFADD__(v22, v23))
          {
            goto LABEL_143;
          }

          v24 = v20;
          v25 = v21;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
          v26 = OUTLINED_FUNCTION_30_5();
          if ((v26 & 1) == 0)
          {
            goto LABEL_13;
          }

          sub_1AC45AA38(v781);
          OUTLINED_FUNCTION_9_16();
          if (!v34)
          {
            goto LABEL_162;
          }

          v24 = v26;
LABEL_13:
          v35 = v19 | v18;
          if (v25)
          {
            OUTLINED_FUNCTION_8_17(v26, v27, v28, v29, v30, v31, v32, v33, v361, v383, v405, v428, v452, v474, v498, *v520, v17.n128_i64[0], *&v520[16], v584, v606, v628, v650, v672, v694, v17.n128_i64[1], v716[1], v759, v781, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814);
            v38 = v36 + v24 * v37;
            v47 = OUTLINED_FUNCTION_23_10(v39, v40, v41, v42, v43, v44, v45, v46, v362, v384, v406, v429, v453, v475, v499, v521, v542, v563, v585, v607, v629, v651, v673, v695, v717, v738, v760, v782, v804);
            *v38 = v16;
            *(v38 + 8) = v522;
            *(v38 + 16) = v543;
            *(v38 + 24) = v718;
            *(v38 + 32) = v35;
            OUTLINED_FUNCTION_15_11(v47, v48, v49, v50, v51, v52, v53, v54, v363, v385, v407, v430, v454, v476, v500, v522, v543, v564, v586, v608, v630, v652, v674, v696, v718, v739, v761, v783, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815);
            *(v38 + 40) = v16;
            *(v38 + 48) = v55;
            *(v38 + 56) = v57;
            *(v38 + 64) = v56;
            *(v38 + 72) = v18;
            OUTLINED_FUNCTION_25_5(v58, v59, v60, v61, v62, v63, v64, v65, v364, v386, v408, v431, v455, v477, v501, v523, v544, v565, v587, v609, v631, v653, v675, v697, v719, v740, v762, v784, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, SBYTE1(v815));
            a1 = v610;
          }

          else
          {
            OUTLINED_FUNCTION_4_17(&v814[v24 >> 6]);
            OUTLINED_FUNCTION_17_12(v220, v221, v222, v223, v224, v225, v226, v227, v361, v383, v405, v428, v452, v474, v498, *v520, v17.n128_i64[0], *&v520[16], v584, v606, v628, v650, v672, v694, v17.n128_i64[1], v716[1], v759, v781);
            *v228 = v16;
            *(v228 + 8) = v538;
            *(v228 + 16) = v559;
            *(v228 + 24) = v734;
            *(v228 + 32) = v35;
            OUTLINED_FUNCTION_14_12(v228, v379, v401, v424, v448, v470, v494, v516, v538, v559, v580, v602, v624, v646, v668, v690, v712, v734, v755, v777, v799, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815);
            *(v229 + 40) = v16;
            *(v229 + 48) = v230;
            *(v229 + 56) = v232;
            *(v229 + 64) = v231;
            *(v229 + 72) = v18;
            OUTLINED_FUNCTION_13_12(v229, v380, v402, v425, v449, v471, v495, v517, v539, v560, v581, v603, v625, v647, v669, v691, v713, v735, v756, v778, v800, v804, v805, v806, v807, v808, v809, v810, v811, v812, v813, v814, v815, SBYTE1(v815));
            a1 = v610;
            if (v190)
            {
              goto LABEL_153;
            }

            v698 = v234;
            *(v234 + 16) = v233;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v814 = v3;
          sub_1AC4599C0(&v816);
          OUTLINED_FUNCTION_12_15();
          if (__OFADD__(v237, v238))
          {
            goto LABEL_147;
          }

          v239 = v235;
          v240 = v236;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
          if ((OUTLINED_FUNCTION_24_9() & 1) == 0)
          {
            goto LABEL_63;
          }

          sub_1AC4599C0(&v816);
          OUTLINED_FUNCTION_5_19();
          if (!v34)
          {
            goto LABEL_162;
          }

          v239 = v241;
LABEL_63:
          v3 = v814;
          if (v240)
          {
            OUTLINED_FUNCTION_7_16(v814[7], v365, v387, v409, v432, v456, v478, v502, v524, v545, v566, v588, v610, v632, v654, v676, v698, v720, v741, v763, v785);
          }

          else
          {
            OUTLINED_FUNCTION_0_28(&v814[v239 >> 6]);
            v275 = v3[6];
            OUTLINED_FUNCTION_22_10();
            OUTLINED_FUNCTION_16_10(v276, v816, v817);
            OUTLINED_FUNCTION_7_16(v3[7], v365, v387, v409, v432, v456, v478, v502, v524, v545, v566, v588, v610, v632, v654, v676, v698, v720, v741, v763, v785);
            OUTLINED_FUNCTION_21_8();
            if (v190)
            {
              goto LABEL_157;
            }

            v3[2] = v277;
            sub_1AC46D444(&v835, &v804);
          }

          swift_isUniquelyReferenced_nonNull_native();
          v804 = v4;
          sub_1AC4599C0(&v816);
          v279 = v278;
          v280 = v4[2];
          OUTLINED_FUNCTION_6_18();
          if (v190)
          {
            goto LABEL_148;
          }

          if ((OUTLINED_FUNCTION_32_6() & 1) == 0)
          {
            goto LABEL_90;
          }

          sub_1AC4599C0(&v816);
          OUTLINED_FUNCTION_5_19();
          if (!v34)
          {
            goto LABEL_162;
          }

          v239 = v281;
LABEL_90:
          v4 = v804;
          if (v279)
          {
            OUTLINED_FUNCTION_7_16(v804[7], v381, v403, v426, v450, v472, v496, v518, v540, v561, v582, v604, v626, v648, v670, v692, v714, v736, v757, v779, v801);
            v282 = &v816;
            goto LABEL_101;
          }

          OUTLINED_FUNCTION_0_28(&v804[v239 >> 6]);
          v355 = v4[6];
          OUTLINED_FUNCTION_22_10();
          OUTLINED_FUNCTION_16_10(v356, v816, v817);
          OUTLINED_FUNCTION_7_16(v4[7], v381, v403, v426, v450, v472, v496, v518, v540, v561, v582, v604, v626, v648, v670, v692, v714, v736, v757, v779, v801);
          OUTLINED_FUNCTION_26_8();
          if (v190)
          {
            goto LABEL_159;
          }

          goto LABEL_131;
      }
    }
  }

LABEL_135:

  *v361 = v759;
  v361[1] = v694;
  v361[2] = v3;
  v361[3] = v4;
  return result;
}

unint64_t sub_1AC46C9B4()
{
  result = qword_1ED6E4340;
  if (!qword_1ED6E4340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6E4340);
  }

  return result;
}

unint64_t sub_1AC46CA08@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = result;
  if ((a3 & 1) == 0)
  {

    if (v6)
    {
      v9 = a2 + v6;
      v10 = v6;
LABEL_10:
      *a4 = v10;
      *(a4 + 8) = v9;
      *(a4 + 16) = v6;
      *(a4 + 24) = a2;
      *(a4 + 32) = a3;
      *(a4 + 33) = 1;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  v8 = HIDWORD(result);
  if (HIDWORD(result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if ((result & 0xFFFFF800) != 0xD800)
  {
    v8 = result >> 16;
    if (result >> 16 <= 0x10)
    {
      if (result <= 0x7F)
      {
        v11 = result + 1;
LABEL_9:
        v12 = __clz(v11);
        v19 = (v11 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (v12 >> 3))));
        v10 = sub_1AC4EFB98(&v19, 4 - (v12 >> 3));
        v9 = v13;

        goto LABEL_10;
      }

LABEL_14:
      v14 = (v6 & 0x3F) << 8;
      v15 = (v6 >> 6) + v14 + 33217;
      v16 = (v14 | (v6 >> 6) & 0x3F) << 8;
      v17 = (v6 >> 18) + ((v16 | (v6 >> 12) & 0x3F) << 8) - 2122219023;
      v18 = (v6 >> 12) + v16 + 8487393;
      if (v8)
      {
        v11 = v17;
      }

      else
      {
        v11 = v18;
      }

      if (v6 < 0x800)
      {
        v11 = v15;
      }

      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC46CB70()
{

  v0 = 0;
  while (1)
  {
    v1 = sub_1AC51EF38();
    if (!v2)
    {
      break;
    }

    v3 = v1;
    v4 = v2;
    v5 = v1 == 95 && v2 == 0xE100000000000000;
    if (v5 || (sub_1AC51F3D8() & 1) != 0)
    {

      v0 = 1;
    }

    else
    {
      if (v0)
      {
        v6 = sub_1AC51EE58();
        v8 = v7;

        MEMORY[0x1AC5B4340](v6, v8);
      }

      else
      {
        MEMORY[0x1AC5B4340](v3, v4);
      }

      v0 = 0;
    }
  }

  return 0;
}

uint64_t sub_1AC46CC84(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v6 = sub_1AC51EF48();
  }

  else if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v7 = swift_slowAlloc();
  sub_1AC46CD6C(a1, a2, v7);
  swift_beginAccess();
  sub_1AC46D068();
  v8 = *(*(v3 + 16) + 16);
  sub_1AC46D148(v8);
  v9 = *(v3 + 16);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = v7;
  *(v10 + 40) = v7 + v6;
  *(v3 + 16) = v9;
  swift_endAccess();
  return v7;
}

unint64_t sub_1AC46CD6C(unint64_t result, unint64_t a2, uint64_t a3)
{
  v19[0] = result;
  v19[1] = a2;
  if (a3)
  {
    v5 = result;
    MEMORY[0x1EEE9AC00](result);
    v15[2] = v19;
    v15[3] = v6;
    v15[4] = v7;
    v15[5] = v6;
    result = sub_1AC46CF58(sub_1AC46CFFC, v15, v5, a2);
    if (result)
    {
      v8 = 0;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v9 = v5 & 0xFFFFFFFFFFFFLL;
      }

      v10 = (v5 >> 59) & 1;
      if ((a2 & 0x1000000000000000) == 0)
      {
        LOBYTE(v10) = 1;
      }

      v11 = 4 << v10;
      v16 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v17 = a2 & 0xFFFFFFFFFFFFFFLL;
      v12 = 15;
      while (1)
      {
        if (4 * v9 == v12 >> 14)
        {
          return result;
        }

        result = v12;
        if ((v12 & 0xC) == v11)
        {
          result = sub_1AC488FF0(v12, v5, a2);
        }

        v13 = result >> 16;
        if (result >> 16 >= v9)
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return result;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          result = sub_1AC51EF88();
          v14 = result;
        }

        else if ((a2 & 0x2000000000000000) != 0)
        {
          v18[0] = v5;
          v18[1] = v17;
          v14 = *(v18 + v13);
        }

        else
        {
          result = v16;
          if ((v5 & 0x1000000000000000) == 0)
          {
            result = sub_1AC51F308();
          }

          v14 = *(result + v13);
        }

        if ((v12 & 0xC) == v11)
        {
          result = sub_1AC488FF0(v12, v5, a2);
          v12 = result;
          if ((a2 & 0x1000000000000000) == 0)
          {
LABEL_21:
            v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
            goto LABEL_26;
          }
        }

        else if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_21;
        }

        if (v9 <= v12 >> 16)
        {
          goto LABEL_31;
        }

        result = sub_1AC51EF58();
        v12 = result;
LABEL_26:
        if (__OFADD__(v8, 1))
        {
          goto LABEL_30;
        }

        *(a3 + v8++) = v14;
      }
    }
  }

  return result;
}

void *sub_1AC46CF58(void *(*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a4) & 0xF;
    v10[0] = a3;
    v10[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v7 = v10;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v7 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = sub_1AC51F308();
  }

  result = a1(&v11, v7, v8);
  if (!v4)
  {
    return ((a4 & 0x1000000000000000) >> 60);
  }

  return result;
}

void *sub_1AC46D01C(void *__src, size_t __len, int a3, int a4, int a5, int a6, void *__dst)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(__dst, __src, __len);
    }
  }

  return __src;
}

void sub_1AC46D080()
{
  OUTLINED_FUNCTION_8_3();
  if (v5)
  {
    OUTLINED_FUNCTION_2_4();
    if (v7 != v8)
    {
      OUTLINED_FUNCTION_7_3();
      if (v7)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_1_5();
    }
  }

  else
  {
    v6 = v4;
  }

  OUTLINED_FUNCTION_5_3(v6);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB558270, &qword_1AC520A30);
    v9 = OUTLINED_FUNCTION_12_3();
    _swift_stdlib_malloc_size(v9);
    OUTLINED_FUNCTION_3_5();
    v9[2] = v3;
    v9[3] = v10;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = OUTLINED_FUNCTION_11_3();
  if (v1)
  {
    if (v9 != v0 || &v12[16 * v3] <= v11)
    {
      memmove(v11, v12, 16 * v3);
    }

    v0[2] = 0;
  }

  else
  {
    memcpy(v11, v12, 16 * v3);
  }
}

void *sub_1AC46D198(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1AC45AA38(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C0, &qword_1AC529120);
  if ((sub_1AC51F338() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = *v3;
  v12 = sub_1AC45AA38(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_13:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v9 = v12;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    v15 = v14[7] + 80 * v9;

    return sub_1AC4F0AB0(a1, v15);
  }

  else
  {

    return sub_1AC46D2C0(v9, a2, a1, v14);
  }
}

void *sub_1AC46D2C0(unint64_t a1, uint64_t a2, void *__src, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = memcpy((a4[7] + 80 * a1), __src, 0x4AuLL);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1AC46D330(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1AC4599C0(a2);
  if (__OFADD__(*(v6 + 16), (v8 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5598C8, &qword_1AC529128);
  result = sub_1AC51F338();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = *v3;
  result = sub_1AC4599C0(a2);
  if ((v10 & 1) != (v13 & 1))
  {
LABEL_10:
    result = sub_1AC51F408();
    __break(1u);
    return result;
  }

  v9 = result;
LABEL_5:
  v14 = *v3;
  if (v10)
  {
    *(v14[7] + 8 * v9) = a1;
  }

  else
  {
    sub_1AC46D47C(v9, a2, a1, v14);
    v16 = *(a2 + 16);
    v17 = *(a2 + 32);
    return sub_1AC46D444(&v16, v15);
  }

  return result;
}

unint64_t sub_1AC46D47C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1AC46D518()
{
  sub_1AC51F468();
  sub_1AC46D554();
  return sub_1AC51F4C8();
}

uint64_t sub_1AC46D554()
{
  v1 = *v0;
  if (*v0)
  {
    for (i = v0[1]; v1 != i; result = sub_1AC51F488())
    {
      v3 = *v1++;
    }
  }

  return result;
}

uint64_t sub_1AC46D5B8()
{
  result = sub_1AC4FA494();
  if (v0)
  {
    return v2;
  }

  return result;
}

InternalSwiftProtobuf::BinaryDecodingOptions __swiftcall BinaryDecodingOptions.init()()
{
  *v0 = 100;
  *(v0 + 8) = 0;
  return result;
}

void *Message.hash(into:)(void *__src, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, __src, sizeof(__dst));
  (*(a3 + 72))(__dst, &type metadata for HashVisitor, &off_1F211C928, a2, a3);
  return memcpy(__src, __dst, 0x48uLL);
}

char *sub_1AC46DCF0(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[40 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_5(a3, result);
  }

  return result;
}

void sub_1AC46DDD8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_1AC46DDE4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[3] = 0xF000000000000000;
}

void sub_1AC46DDF4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xF000000000000000;
}

uint64_t sub_1AC46DEB0@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_FileOptions.OptimizeMode.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AC46DEFC@<X0>(uint64_t *a1@<X8>)
{
  result = Google_Protobuf_FeatureSet.JsonFormat.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1AC46E384()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FileDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E3B0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FileDescriptorProto.package.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E3EC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FileDescriptorProto.syntax.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E5B0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_DescriptorProto.ExtensionRange.start.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E5FC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_DescriptorProto.ExtensionRange.end.getter();
  *v0 = result;
  return result;
}

void *sub_1AC46E648()
{
  OUTLINED_FUNCTION_200();
  Google_Protobuf_DescriptorProto.ExtensionRange.options.getter(v1);
  return memcpy(v0, __src, 0x47uLL);
}

double sub_1AC46E728()
{
  OUTLINED_FUNCTION_63_0();
  v1 = Google_Protobuf_ExtensionRangeOptions.features.getter(v0);
  *&result = OUTLINED_FUNCTION_45_1(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, *v13, *&v13[4]).n128_u64[0];
  return result;
}

uint64_t sub_1AC46E764()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ExtensionRangeOptions.Declaration.number.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E7B0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ExtensionRangeOptions.Declaration.fullName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E7DC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ExtensionRangeOptions.Declaration.type.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E808()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_ExtensionRangeOptions.Declaration.reserved.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46E854()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_ExtensionRangeOptions.Declaration.repeated.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46E8A0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E8CC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.number.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E928()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.typeName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E954()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.extendee.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E980()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.defaultValue.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46E9AC()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.oneofIndex.getter();
  *v0 = result;
  return result;
}

uint64_t sub_1AC46E9F8()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_FieldDescriptorProto.jsonName.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46EA2C()
{
  OUTLINED_FUNCTION_89_1();
  v0 = Google_Protobuf_FieldDescriptorProto.proto3Optional.getter();
  return OUTLINED_FUNCTION_156(v0);
}

uint64_t sub_1AC46EA78()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_OneofDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

__n128 sub_1AC46EAA4()
{
  OUTLINED_FUNCTION_63_0();
  v2 = Google_Protobuf_OneofDescriptorProto.options.getter(v1);
  OUTLINED_FUNCTION_362(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v10);
  result = v14;
  *(v0 + 46) = v14;
  return result;
}

uint64_t sub_1AC46EAE0()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_EnumDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

void *sub_1AC46EB0C()
{
  OUTLINED_FUNCTION_200();
  v1 = Google_Protobuf_EnumDescriptorProto.options.getter(v0);
  return OUTLINED_FUNCTION_330(v1, v3);
}

uint64_t sub_1AC46EB9C()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_EnumValueDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_1AC46EBC8()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_EnumValueDescriptorProto.number.getter();
  *v0 = result;
  return result;
}

void *sub_1AC46EC14()
{
  OUTLINED_FUNCTION_200();
  Google_Protobuf_EnumValueDescriptorProto.options.getter(v1);
  return memcpy(v0, __src, 0x71uLL);
}

uint64_t sub_1AC46EC54()
{
  OUTLINED_FUNCTION_89_1();
  result = Google_Protobuf_ServiceDescriptorProto.name.getter();
  *v0 = result;
  v0[1] = v2;
  return result;
}

__n128 sub_1AC46EC80()
{
  OUTLINED_FUNCTION_63_0();
  v2 = Google_Protobuf_ServiceDescriptorProto.options.getter(v1);
  OUTLINED_FUNCTION_362(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13, v10);
  result = v14;
  *(v0 + 47) = v14;
  return result;
}