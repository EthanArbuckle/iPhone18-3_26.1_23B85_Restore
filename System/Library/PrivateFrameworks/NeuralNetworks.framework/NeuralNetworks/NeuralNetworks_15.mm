uint64_t sub_25BBA4990(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BBA49FC(uint64_t a1)
{
  v2 = sub_25BCB641C();
  v3 = __OFADD__(v2, a1);
  result = v2 + a1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x25F876C10](result);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D48, &unk_25BCC6180);
    sub_25BBA5860();
    sub_25BCB644C();
    sub_25BCB644C();
    return 0;
  }

  return result;
}

uint64_t sub_25BBA4AC8()
{
  v1 = OUTLINED_FUNCTION_14_13();
  if (v2 <= 1)
  {
LABEL_4:
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_3_0();
  }

  v3 = *(v1 + 40);
  v4 = *(v0 + 112);
  result = v3 * v4;
  if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
  {
    __break(1u);
    goto LABEL_4;
  }

  return result;
}

uint64_t sub_25BBA4B70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BBA4BCC(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, uint64_t *a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  v16 = *a8;
  v17 = *(a8 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x6C756D74616DLL, 0xE600000000000000);
  }

  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  *(v11 + 48) = a6;
  *(v11 + 56) = a5 & 1;
  *(v11 + 57) = a7 & 1;
  *(v11 + 64) = v16;
  *(v11 + 72) = v17;
  *(v11 + 80) = a10;
  *(v11 + 88) = a11;
  v18 = a9[1];
  *(v11 + 96) = *a9;
  *(v11 + 112) = v18;
  *(v11 + 128) = a9[2];
  *(v11 + 138) = *(a9 + 42);
  return v11;
}

uint64_t sub_25BBA4C84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25BAC4018();
  v5 = *(v1 + 40);
  v6 = v4 == sub_25BAC4018();
  v7 = v6;
  if (v6)
  {
    OUTLINED_FUNCTION_17_20();
  }

  v8 = *(a1 + 16);
  v9 = *(v2 + 48);
  if (sub_25BAC4018() == v8)
  {
    OUTLINED_FUNCTION_15_19();

    return 1;
  }

  return v7;
}

void *sub_25BBA4D20()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];
  sub_25BA9D148(v0[10]);
  return v0;
}

uint64_t sub_25BBA4D60()
{
  sub_25BBA4D20();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA4DBC()
{
  sub_25BCB625C();
  v1 = *(v0 + 56);
  sub_25BCB79EC();
  v2 = *(v0 + 57);
  return sub_25BCB79EC();
}

uint64_t sub_25BBA4E28()
{
  OUTLINED_FUNCTION_1_0();
  v3 = sub_25BAC4018();
  v4 = v1[5];
  if (v3 == sub_25BAC4018())
  {
    OUTLINED_FUNCTION_17_20();
LABEL_8:

    return 1;
  }

  v5 = *(v2 + 16);
  v6 = v1[6];
  if (sub_25BAC4018() == v5)
  {
    OUTLINED_FUNCTION_15_19();
    goto LABEL_8;
  }

  if (!v1[7])
  {
    return 0;
  }

  v7 = *(v2 + 16);
  if (sub_25BAC4018() != v7)
  {
    return 0;
  }

  v9 = v1[7];
  v1[7] = v0;

  return 1;
}

uint64_t sub_25BBA4EE4()
{
  OUTLINED_FUNCTION_1_0();
  v3 = sub_25BAC4018();
  v4 = v1[5];
  if (v3 == sub_25BAC4018())
  {
    OUTLINED_FUNCTION_17_20();
LABEL_10:

    return 1;
  }

  v5 = *(v2 + 16);
  v6 = v1[6];
  if (sub_25BAC4018() == v5)
  {
    OUTLINED_FUNCTION_15_19();
    goto LABEL_10;
  }

  v7 = *(v2 + 16);
  v8 = v1[7];
  if (sub_25BAC4018() == v7)
  {
    v11 = v1[7];
    v1[7] = v0;
    goto LABEL_10;
  }

  if (!v1[8])
  {
    return 0;
  }

  v9 = *(v2 + 16);
  if (sub_25BAC4018() != v9)
  {
    return 0;
  }

  v12 = v1[8];
  v1[8] = v0;

  return 1;
}

uint64_t sub_25BBA5020()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (!v1)
  {
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_0();
  }

  return *(v0 + 32);
}

uint64_t sub_25BBA50F0()
{
  OUTLINED_FUNCTION_1_0();
  v3 = sub_25BAC4018();
  v4 = v1[5];
  if (v3 == sub_25BAC4018())
  {
    OUTLINED_FUNCTION_17_20();
  }

  else
  {
    v5 = *(v2 + 16);
    v6 = v1[6];
    if (sub_25BAC4018() == v5)
    {
      OUTLINED_FUNCTION_15_19();
    }

    else
    {
      if (!v1[7])
      {
        return 0;
      }

      v7 = *(v2 + 16);
      if (sub_25BAC4018() != v7)
      {
        return 0;
      }

      v9 = v1[7];
      v1[7] = v0;
    }
  }

  return 1;
}

uint64_t sub_25BBA519C()
{
  sub_25BAA32B8();

  return swift_deallocClassInstance();
}

__n128 sub_25BBA51F4@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 160);
  result = *(v1 + 170);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BBA523C(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BBA528C()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BBA50F0() & 1) == 0)
  {
    v2 = sub_25BAC4018();
    v3 = *(v1 + 192);
    if (v2 != sub_25BAC4018())
    {
      return 0;
    }

    v5 = *(v1 + 192);
    *(v1 + 192) = v0;
  }

  return 1;
}

uint64_t sub_25BBA5304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 *a17, uint64_t a18, uint64_t a19)
{
  v20 = *(a16 + 8);
  *(v19 + 192) = *a16;
  *(v19 + 200) = v20;
  *(v19 + 208) = a18;
  *(v19 + 216) = a19;
  *(v19 + 224) = a11;
  *(v19 + 232) = a12;
  if (a3)
  {
    v21 = OUTLINED_FUNCTION_35_8();
    v22 = sub_25BA9D8C4(v21);
  }

  else
  {
    v30 = OUTLINED_FUNCTION_35_8();
    sub_25BA9D8C4(v30);
    v31 = OUTLINED_FUNCTION_9_24();
    v22 = sub_25BAA5EA0(v31, v32);
  }

  *(v19 + 112) = a15;
  *(v19 + 120) = 0;
  OUTLINED_FUNCTION_3_26(v22, v23, v24, v25, v26, v27, v28, v29, v40, a13, a14, a4, a5, a6, a7, a8);
  *(v19 + 88) = a10;
  *(v19 + 96) = v33;
  *(v19 + 104) = v34;
  v35 = *a17;
  v36 = a17[1];
  v37 = a17[2];
  *(v19 + 170) = *(a17 + 42);
  *(v19 + 144) = v36;
  *(v19 + 160) = v37;
  *(v19 + 128) = v35;
  v38 = OUTLINED_FUNCTION_35_8();
  sub_25BA9D148(v38);
  return v19;
}

uint64_t sub_25BBA53FC()
{
  v1 = v0[24];

  v2 = v0[26];
  v3 = v0[27];

  return sub_25BA9D148(v2);
}

uint64_t sub_25BBA542C()
{
  sub_25BAA3558();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA5484()
{
  OUTLINED_FUNCTION_14_22();
  v2 = v1;
  OUTLINED_FUNCTION_5_30(v3, v4, v1, v5);

  if (!v2)
  {
    v6 = sub_25BAA5EA0(0xD000000000000013, 0x800000025BCDC030);
  }

  OUTLINED_FUNCTION_0_45(v6, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20);
  return v0;
}

uint64_t sub_25BBA5518()
{
  OUTLINED_FUNCTION_1_0();
  if ((sub_25BBA50F0() & 1) == 0)
  {
    v2 = *(v1 + 192);
    v3 = sub_25BAC4018();
    if (v3 != sub_25BAC4018())
    {
      return 0;
    }

    v5 = *(v1 + 192);
    *(v1 + 192) = v0;
  }

  return 1;
}

uint64_t sub_25BBA55B4(uint64_t a1)
{
  result = sub_25BBA581C(&qword_27FBB44E0, type metadata accessor for ConvolutionTranspose2DGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA560C(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA5664(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154CCD8, type metadata accessor for BaseConvolution2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA56BC(uint64_t a1)
{
  result = sub_25BBA581C(&qword_28154D770, type metadata accessor for LinearGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA5714(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154D778, type metadata accessor for LinearGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA576C(uint64_t a1)
{
  result = sub_25BBA581C(qword_28154F578, type metadata accessor for LinearOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA57C4(uint64_t a1)
{
  result = sub_25BBA581C(&qword_27FBB5D40, type metadata accessor for MatrixMultiplicationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA581C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25BBA5860()
{
  result = qword_27FBB5D50;
  if (!qword_27FBB5D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB5D48, &unk_25BCC6180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D50);
  }

  return result;
}

uint64_t *sub_25BBA58F4(uint64_t a1)
{
  v7 = v1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  OUTLINED_FUNCTION_2_38();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v12);
  v13 = OUTLINED_FUNCTION_26_2();
  v14 = sub_25BB3EE04(v13, a1);
  if (!v14)
  {
    goto LABEL_8;
  }

  v16 = v14;
  v3 = v15;
  v17 = *(v1 + 48);
  v18 = sub_25BAC4018();
  v49 = sub_25BB3EE04(v18, a1);
  if (!v49)
  {
LABEL_7:
    swift_unknownObjectRelease();
LABEL_8:
    sub_25BB0E2EC();
    v26 = swift_allocError();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC6190, v26, v27);
    return v3;
  }

  v47 = v19;
  v48 = v3;
  v20 = *(v7 + 128);
  v21 = sub_25BAC4018();
  v22 = sub_25BB3EE04(v21, a1);
  if (!v22)
  {
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v3 = v23;
  v46 = v22;
  if (*(v7 + 136))
  {
    v24 = sub_25BAC4018();
    v44 = sub_25BB3EE04(v24, a1);
    v45 = v25;
  }

  else
  {
    if (*(v7 + 116) != 0.0)
    {
      sub_25BB0E2EC();
      v37 = swift_allocError();
      OUTLINED_FUNCTION_11_2(xmmword_25BCC6190, v37, v38);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v3;
    }

    v44 = 0;
    v45 = 0;
  }

  ObjectType = swift_getObjectType();
  (v3[7])(&v50, sub_25BBA69D8, 0, MEMORY[0x277D83A90], ObjectType, v3);
  v43 = v2;
  v30 = v50;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_46(v6);
  OUTLINED_FUNCTION_0_46(v4);
  v31 = OUTLINED_FUNCTION_0_46(v5);
  v3 = &v43;
  MEMORY[0x28223BE20](v31);
  v41[4] = v30;
  v42 = v7;
  v32 = swift_getObjectType();
  MEMORY[0x28223BE20](v32);
  v40[2] = v49;
  v40[3] = v47;
  v33 = v44;
  v40[4] = v4;
  v40[5] = v44;
  v40[6] = v45;
  v40[7] = v5;
  v40[8] = sub_25BBA690C;
  v40[9] = v41;
  v34 = v43;
  sub_25BC675C0(sub_25BBA692C, v40, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v34)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v6);
    sub_25BB0EA20(v5);
    sub_25BB0EA20(v4);
  }

  else
  {
    v35 = v45;
    sub_25BB0EA20(v6);
    sub_25BB0EA20(v5);
    sub_25BB0EA20(v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = swift_allocObject();
    if (v33)
    {
      *(v3 + 1) = xmmword_25BCBAE70;
      v36 = v48;
      v3[4] = v16;
      v3[5] = v36;
      v3[6] = v33;
      v3[7] = v35;
    }

    else
    {
      *(v3 + 1) = xmmword_25BCBAE50;
      v39 = v48;
      v3[4] = v16;
      v3[5] = v39;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v3;
}

uint64_t sub_25BBA5CD8(const void *a1, const void *a2, const void *a3, uint64_t a4, float a5)
{
  v25 = sub_25BCB539C();
  v11 = *(v25 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v25);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x25F875BB0](0, 1, *(a4 + 120), 0, 0, a5, *(a4 + 116), 1.0, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
  v15 = swift_allocObject();
  v26 = xmmword_25BCBAE50;
  *(v15 + 16) = xmmword_25BCBAE50;
  memcpy((v15 + 32), a1, 0xB0uLL);
  v16 = swift_allocObject();
  *(v16 + 16) = v26;
  memcpy((v16 + 32), a2, 0xB0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D60, qword_25BCC61E8);
  inited = swift_initStackObject();
  *(inited + 16) = v26;
  memcpy((inited + 32), a3, 0xB1uLL);

  memcpy(v27, a3, 0xB1uLL);
  if (sub_25BB456E4(v27) != 1)
  {
    *&v26 = v5;
    sub_25BAFE3EC();
    v19 = v18;
    v20 = *(v18 + 16);
    if (v20 >= *(v18 + 24) >> 1)
    {
      sub_25BAFE3EC();
      v19 = v23;
    }

    *(v19 + 16) = v20 + 1;
    memcpy((v19 + 176 * v20 + 32), a3, 0xB0uLL);
  }

  sub_25BCB6E0C();
  sub_25BCB6D6C();
  v21 = v25;
  sub_25BCB509C();
  (*(v11 + 8))(v14, v21);
}

__n128 *sub_25BBA5FD4(__n128 *a1)
{
  v5 = v1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_2_38();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v10);
  v12 = &v70 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v70 - v14;
  MEMORY[0x28223BE20](v16);
  v17 = OUTLINED_FUNCTION_26_2();
  v18 = sub_25BB3EE04(v17, a1);
  if (!v18)
  {
    goto LABEL_17;
  }

  v20 = v18;
  v82 = v19;
  v21 = *(v1 + 48);
  v22 = sub_25BAC4018();
  v23 = sub_25BB3EE04(v22, a1);
  if (!v23)
  {
LABEL_16:
    swift_unknownObjectRelease();
LABEL_17:
    sub_25BB0E2EC();
    v43 = swift_allocError();
    OUTLINED_FUNCTION_11_2(xmmword_25BCC61A0, v43, v44);
    return a1;
  }

  v80 = v24;
  v83 = v23;
  v25 = *(v5 + 136);
  v26 = sub_25BAC4018();
  v27 = sub_25BB3EE04(v26, a1);
  if (!v27)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v78 = v28;
  v81 = v27;
  v29 = *(v5 + 144);
  v30 = sub_25BAC4018();
  v31 = sub_25BB3EE04(v30, a1);
  if (!v31)
  {
    a1 = v20;
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v76 = v32;
  v79 = v31;
  v33 = *(v5 + 160);
  v34 = sub_25BAC4018();
  v35 = sub_25BB3EE04(v34, a1);
  if (!v35)
  {
    a1 = v83;
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v73 = v36;
  v77 = v35;
  v37 = *(v5 + 168);
  v38 = sub_25BAC4018();
  v39 = sub_25BB3EE04(v38, a1);
  if (!v39)
  {
    swift_unknownObjectRelease();
    a1 = v81;
    goto LABEL_13;
  }

  v71 = v40;
  v74 = v39;
  if (*(v5 + 152))
  {
    v41 = sub_25BAC4018();
    v75 = sub_25BB3EE04(v41, a1);
    v72 = v42;
  }

  else
  {
    v75 = 0;
    v72 = 0;
  }

  ObjectType = swift_getObjectType();
  v47 = v84;
  (v73[7])(&v85 + 4, sub_25BBA69D8, 0, MEMORY[0x277D83A90], ObjectType);
  v48 = HIDWORD(v85);
  v49 = swift_getObjectType();
  (v71[7])(&v85, sub_25BBA654C, 0, MEMORY[0x277D849A8], v49);
  v84 = v47;
  v50 = v85;
  sub_25BCB54EC();
  OUTLINED_FUNCTION_0_46(v4);
  OUTLINED_FUNCTION_0_46(v15);
  OUTLINED_FUNCTION_0_46(v12);
  OUTLINED_FUNCTION_0_46(v2);
  v51 = OUTLINED_FUNCTION_0_46(v3);
  v73 = &v70;
  v52 = *(v5 + 124);
  v53 = *(v5 + 116);
  v54 = MEMORY[0x28223BE20](v51).n128_u32[0];
  *(&v70 - 8) = v48;
  *(&v70 - 28) = v55;
  *(&v70 - 5) = v50;
  *(&v70 - 4) = v54;
  *(&v70 - 1) = v5;
  v56 = swift_getObjectType();
  v71 = &v70;
  MEMORY[0x28223BE20](v56);
  v57 = v80;
  v58 = v81;
  *(&v70 - 14) = v83;
  *(&v70 - 13) = v57;
  *(&v70 - 12) = v15;
  *(&v70 - 11) = v58;
  a1 = v79;
  *(&v70 - 10) = v78;
  *(&v70 - 9) = v12;
  v59 = v75;
  v60 = v76;
  *(&v70 - 8) = a1;
  *(&v70 - 7) = v60;
  *(&v70 - 6) = v2;
  *(&v70 - 5) = v59;
  *(&v70 - 4) = v72;
  *(&v70 - 3) = v3;
  *(&v70 - 2) = sub_25BBA6960;
  *(&v70 - 1) = (&v70 - 6);
  v61 = v84;
  sub_25BC675C0(sub_25BBA698C, (&v70 - 16), MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v61)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v4);
    sub_25BB0EA20(v3);
    sub_25BB0EA20(v2);
    sub_25BB0EA20(v12);
    sub_25BB0EA20(v15);
  }

  else
  {
    v62 = v72;
    sub_25BB0EA20(v4);
    sub_25BB0EA20(v3);
    sub_25BB0EA20(v2);
    sub_25BB0EA20(v12);
    sub_25BB0EA20(v15);
    if (v75)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      a1 = swift_allocObject();
      v63 = OUTLINED_FUNCTION_3_27(a1, xmmword_25BCBDF80);
      v64 = v75;
      v65 = v76;
      v63[4].n128_u64[0] = v66;
      v63[4].n128_u64[1] = v65;
      v63[5].n128_u64[0] = v64;
      v63[5].n128_u64[1] = v62;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
      a1 = swift_allocObject();
      v67 = OUTLINED_FUNCTION_3_27(a1, xmmword_25BCBAE90);
      v68 = v76;
      v67[4].n128_u64[0] = v69;
      v67[4].n128_u64[1] = v68;
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return a1;
}

_DWORD *sub_25BBA654C@<X0>(_DWORD *result@<X0>, _DWORD *a2@<X8>)
{
  if (result)
  {
    *a2 = *result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBA6560(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a2;
  *&v20 = a5;
  v21 = a1;
  v10 = sub_25BCB51EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BCB51DC();
  v15 = *(a7 + 128);
  sub_25BCB51CC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D0, &qword_25BCBB880);
  v16 = swift_allocObject();
  v16[1] = xmmword_25BCBAE70;
  memcpy(v16 + 2, a3, 0xB0uLL);
  memcpy(v16 + 13, a4, 0xB0uLL);
  v25 = v16;
  memcpy(v23, v20, 0xB1uLL);
  if (sub_25BB456E4(v23) != 1)
  {
    memcpy(v24, v23, 0xB0uLL);
    sub_25BC03638(v24);
  }

  v17 = swift_allocObject();
  v20 = xmmword_25BCBAE50;
  *(v17 + 16) = xmmword_25BCBAE50;
  memcpy((v17 + 32), v21, 0xB0uLL);
  v18 = swift_allocObject();
  *(v18 + 16) = v20;
  memcpy((v18 + 32), v22, 0xB0uLL);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  sub_25BCB509C();
  (*(v11 + 8))(v14, v10);
}

uint64_t sub_25BBA6830(uint64_t a1)
{
  result = sub_25BBA68B8(qword_28154FD70, type metadata accessor for AdamOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA6874(uint64_t a1)
{
  result = sub_25BBA68B8(&qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA68B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BBA692C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25BB57B78(a1, v2[5], v2[6], v2[7], v2[8], a2, v2[9]);
}

uint64_t sub_25BBA6960(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v7 = *(v5 + 20);
  v8 = *(v5 + 24);
  v9 = *(v5 + 32);
  return sub_25BBA6560(a1, a2, a3, a4, a5, *(v5 + 28), *(v5 + 40));
}

id sub_25BBA69F0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CD7860]) init];
  [v1 setBidirectional_];
  [v1 setProduceCell_];
  [v1 setTraining_];
  [v1 setInputGateActivation_];
  [v1 setForgetGateActivation_];
  [v1 setCellGateActivation_];
  [v1 setOutputGateActivation_];
  [v1 setActivation_];
  [v1 setForgetGateLast_];
  return v1;
}

uint64_t sub_25BBA6ADC(void *a1, uint64_t a2)
{
  v5 = sub_25BB4AD90();
  if (v6)
  {
    v7 = 0;
  }

  else
  {
    v8 = v5;
    sub_25BAB4D78(v5, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x25F8779B0](v8, a2);
    }

    else
    {
      v9 = *(a2 + 8 * v8 + 32);
    }

    v7 = v9;
  }

  v10 = sub_25BB4ADA8();
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v13 = v10;
    sub_25BAB4D78(v10, (a2 & 0xC000000000000001) == 0, a2);
    if ((a2 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x25F8779B0](v13, a2);
    }

    else
    {
      v14 = *(a2 + 8 * v13 + 32);
    }

    v12 = v14;
  }

  v15 = sub_25BB4ADD4();
  v16 = a2 & 0xC000000000000001;
  v17 = (a2 & 0xC000000000000001) == 0;
  if (v18)
  {
    v19 = 0;
    v20 = 0;
    goto LABEL_18;
  }

  v21 = v15;
  sub_25BAB4D78(v15, v16 == 0, a2);
  if (v16)
  {
    v22 = MEMORY[0x25F8779B0](v21, a2);
  }

  else
  {
    v22 = *(a2 + 8 * v21 + 32);
  }

  v20 = v22;
  if (__OFADD__(v21, 1))
  {
    __break(1u);
  }

  else
  {
    sub_25BAB4D78(v21 + 1, v16 == 0, a2);
    if (!v16)
    {
      v19 = *(a2 + 8 * (v21 + 1) + 32);
      v17 = 1;
      goto LABEL_18;
    }
  }

  v19 = MEMORY[0x25F8779B0](v21 + 1, a2);
  v17 = 0;
LABEL_18:
  sub_25BAB4D78(0, v17, a2);
  if (v17)
  {
    v23 = *(a2 + 32);
  }

  else
  {
    v23 = MEMORY[0x25F8779B0](0, a2);
  }

  v24 = v23;
  sub_25BAB4D78(1, v17, a2);
  if (v17)
  {
    v25 = *(a2 + 40);
  }

  else
  {
    v25 = MEMORY[0x25F8779B0](1, a2);
  }

  v26 = v25;
  v27 = sub_25BBA69F0();
  v28 = *(v2 + 24);
  v29 = *(v2 + 32);
  v30 = sub_25BCB633C();
  v31 = [a1 LSTMWithSourceTensor:v24 recurrentWeight:v26 inputWeight:v7 bias:v12 initState:v20 initCell:v19 descriptor:v27 name:v30];

  sub_25BB0607C();
  v32 = sub_25BCB673C();

  return v32;
}

uint64_t sub_25BBA6D60(void *a1, unint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  if (v5)
  {
    v6 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v6 = *(a2 + 32);
  }

  v46 = v6;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(1, v7, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v45 = v8;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(2, v9, a2);
  if (v5)
  {
    v10 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  v47 = v10;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(3, v11, a2);
  if (v5)
  {
    v12 = MEMORY[0x25F8779B0](3, a2);
  }

  else
  {
    v12 = *(a2 + 56);
  }

  v13 = v12;
  OUTLINED_FUNCTION_0_47();
  sub_25BAB4D78(4, v14, a2);
  if (v5)
  {
    v15 = MEMORY[0x25F8779B0](4, a2);
  }

  else
  {
    v15 = *(a2 + 64);
  }

  v16 = v15;
  if (v2[8])
  {
    OUTLINED_FUNCTION_0_47();
    sub_25BAB4D78(5, v17, a2);
    if (v5)
    {
      v18 = MEMORY[0x25F8779B0](5, a2);
    }

    else
    {
      v18 = *(a2 + 72);
    }

    v44 = v18;
  }

  else
  {
    v44 = 0;
  }

  v19 = sub_25BBA706C();
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v22 = v19;
    OUTLINED_FUNCTION_0_47();
    sub_25BAB4D78(v23, v24, a2);
    if (v5)
    {
      v25 = MEMORY[0x25F8779B0](v22, a2);
    }

    else
    {
      v25 = *(a2 + 8 * v22 + 32);
    }

    v21 = v25;
  }

  v26 = sub_25BBA7098();
  if (v27)
  {
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = v26;
    OUTLINED_FUNCTION_0_47();
    sub_25BAB4D78(v31, v32, a2);
    if (v5)
    {
      v33 = MEMORY[0x25F8779B0](v30, a2);
    }

    else
    {
      v33 = *(a2 + 8 * v30 + 32);
    }

    v29 = v33;
    OUTLINED_FUNCTION_0_47();
    v34 = v30 + 1;
    sub_25BAB4D78(v34, v35, a2);
    if (v5)
    {
      v36 = MEMORY[0x25F8779B0](v34, a2);
    }

    else
    {
      v36 = *(a2 + 8 * v34 + 32);
    }

    v28 = v36;
  }

  v37 = sub_25BBA69F0();
  v38 = v2[3];
  v39 = v2[4];
  v40 = sub_25BCB633C();
  v41 = [a1 LSTMGradientsWithSourceTensor:v13 recurrentWeight:v16 sourceGradient:v46 zState:v47 cellOutputFwd:v45 inputWeight:v44 bias:v21 initState:v29 initCell:v28 descriptor:v37 name:v40];

  sub_25BB0607C();
  v42 = sub_25BCB673C();

  return v42;
}

uint64_t sub_25BBA706C()
{
  if (!*(v0 + 72))
  {
    return 0;
  }

  if (*(v0 + 64))
  {
    return 6;
  }

  return 5;
}

uint64_t sub_25BBA7098()
{
  result = sub_25BB49CB0();
  if (result)
  {
    sub_25BB4AE24(result);
    v2 = 5;
    if (*(v0 + 64))
    {
      v2 = 6;
    }

    if (*(v0 + 72))
    {
      return v2 + 1;
    }

    else
    {
      return v2;
    }
  }

  return result;
}

uint64_t sub_25BBA7100(uint64_t a1)
{
  result = sub_25BBA7188(&qword_27FBB4930, type metadata accessor for LSTMLayerGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA7144(uint64_t a1)
{
  result = sub_25BBA7188(&qword_27FBB4938, type metadata accessor for LSTMLayerOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA7188(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BBA71DC()
{
  v1 = *(*(v0 + 16) + 40);

  sub_25BAA3234();
  sub_25BBC9228();
  sub_25BAA3258();
}

id sub_25BBA7240()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAC60]) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_25BBA72AC(void *a1)
{
  result = sub_25BBA73D4(a1);
  if (!v1)
  {
    v5 = v4;
    v6 = sub_25BBA747C(a1);
    v8 = v7;
    ObjectType = swift_getObjectType();
    v10 = (*(v5 + 24))(v6, v8, ObjectType, v5);
    v12 = v11;

    sub_25BBA7584(v10, v12, a1);
    swift_unknownObjectRelease();
  }

  return result;
}

id sub_25BBA73D4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = a1;
  result = sub_25BAD8524(sub_25BAD8508, v3);
  if (!result)
  {
    MEMORY[0x28223BE20](0);
    return sub_25BBA7D18(sub_25BBA7E9C);
  }

  return result;
}

uint64_t sub_25BBA747C(uint64_t a1)
{
  v1 = *(a1 + 88);
  v8[2] = a1;
  v2 = sub_25BBFC200(sub_25BBA7E7C, v8, v1);
  v3 = *(v2 + 16);
  if (v3 == sub_25BAAF54C(v1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v10 = sub_25BCB614C();
    v4 = sub_25BAD8178(v2);

    v9 = v4;
    sub_25BAD8324(v5);
    return v9;
  }

  else
  {

    sub_25BBA7E28();
    swift_allocError();
    *v7 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_25BBA7584(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3[19];
  v50 = *(a1 + 16);
  if (v50 != sub_25BAAF54C(v5))
  {
    sub_25BBA7E28();
    swift_allocError();
    *v41 = 1;
    return swift_willThrow();
  }

  result = sub_25BA9BEA0(v5);
  v47 = result;
  if (result)
  {
    v7 = 0;
    v48 = v5 & 0xC000000000000001;
    v8 = a3[14];
    v43 = a3[13];
    v44 = v5 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 + 32;
    v46 = v5;
    while (1)
    {
      if (v48)
      {
        result = MEMORY[0x25F8779B0](v7, v5);
        v9 = result;
      }

      else
      {
        if (v7 >= *(v44 + 16))
        {
          goto LABEL_37;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        return result;
      }

      v11 = sub_25BAC44E4();
      if (!*(v8 + 16))
      {
        break;
      }

      v13 = sub_25BA9266C(v11, v12);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_15;
      }

      v16 = *(*(v8 + 56) + 8 * v13);
      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_38;
      }

      if (v16 >= *(v43 + 16))
      {
        goto LABEL_39;
      }

      v17 = (v43 + 32 + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_25BCB617C();
LABEL_23:
      if (!*(a2 + 16))
      {

LABEL_33:
        sub_25BBA7E28();
        swift_allocError();
        *v42 = 1;
        swift_willThrow();
      }

      v32 = sub_25BA9266C(v19, v18);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        goto LABEL_33;
      }

      v35 = *(*(a2 + 56) + 8 * v32);
      if (!*(v35 + 16))
      {
        goto LABEL_33;
      }

      v36 = *(v35 + 32);
      if (v36 >= v50)
      {
        goto LABEL_36;
      }

      v37 = v45 + 32 * v36;
      v38 = *(v37 + 16);
      v39 = *(v37 + 24);
      swift_unknownObjectRetain_n();

      v40 = sub_25BA928B4();
      [v40 lock];

      swift_beginAccess();
      sub_25BA9323C(v9 + 40, v53);
      if (!v53[105])
      {
        sub_25BA9323C(v9 + 40, v51);
        sub_25BA9BD18(v38, v39, v52);
        sub_25BA9778C(v51);
        swift_beginAccess();
        sub_25BA97834(v52, v9 + 40);
        swift_endAccess();
      }

      sub_25BA9778C(v53);
      [*(v9 + 224) unlock];
      swift_unknownObjectRelease_n();

      ++v7;
      v5 = v46;
      if (v10 == v47)
      {
        return result;
      }
    }

LABEL_15:
    v54 = v7 + 1;
    v20 = a2;
    v21 = v8;
    v23 = a3[17];
    v22 = a3[18];
    v24 = sub_25BAC44E4();
    if (*(v22 + 16))
    {
      v26 = sub_25BA9266C(v24, v25);
      v28 = v27;

      if (v28)
      {
        v29 = *(*(v22 + 56) + 8 * v26);
        if ((v29 & 0x8000000000000000) != 0)
        {
          goto LABEL_40;
        }

        if (v29 >= *(v23 + 16))
        {
          goto LABEL_41;
        }

        v30 = v23 + 16 * v29;
        v19 = *(v30 + 32);
        v18 = *(v30 + 40);
        sub_25BCB617C();
        goto LABEL_22;
      }
    }

    else
    {
    }

    v19 = sub_25BAC44E4();
    v18 = v31;
LABEL_22:
    v8 = v21;
    a2 = v20;
    v10 = v54;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_25BBA7958@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_25BC458D0();
  a2[1] = v4;
  a2[2] = v3;
}

uint64_t sub_25BBA79A8()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_25BBA79D0()
{
  sub_25BBA79A8();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA7A28()
{
  v1 = v0;
  if (qword_27FBB3378 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_27FBB3840;
  type metadata accessor for LazyTensorFunctionExecutorCache();
  swift_allocObject();
  *(v1 + 16) = sub_25BBC8CAC(v2);
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_25BBA7AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t **a3@<X8>)
{
  sub_25BAA51C8(a1 + 168, &v17);
  if (*(&v18 + 1))
  {
    v7 = *(&v19 + 1);
    if ((*(&v19 + 1) - 1) >= 2)
    {
      swift_unknownObjectRetain();
      sub_25BABF0A8(&v17);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_25BABF0A8(&v17);
    }
  }

  else
  {
    sub_25BA9C2C8(&v17);
  }

  v8 = sub_25BC17078();
  if (v8)
  {
    v7 = v8;
LABEL_8:
    type metadata accessor for SharedMetalDevice();
    v9 = sub_25BBC97E0(v7);
    if (v3)
    {
      return swift_unknownObjectRelease();
    }

    v11 = v9;
    sub_25BAD6FB0(a1, &v17);
    type metadata accessor for MPSGraphExecutor();
    swift_allocObject();

    v14 = sub_25BBB4A0C(&v17, v11);
    v15 = *(a2 + 16);
    sub_25BAD6F54(a1, &v17);

    sub_25BBC8BC4(v16, &off_286D4D800, &v17);
    swift_unknownObjectRelease();

    *a3 = v14;
    a3[1] = &off_286D4D800;
    return result;
  }

  sub_25BAA51C8(a1 + 168, &v21);
  if (*(&v22 + 1))
  {
    v17 = v21;
    v18 = v22;
    v19 = v23;
    v20 = v24;
  }

  else
  {
    *(&v18 + 1) = &unk_286D4F738;
    *&v19 = &off_286D4F7B8;
    *(&v19 + 1) = 0;
    v20 = sub_25BC176D0(0);
    if (*(&v22 + 1))
    {
      sub_25BA9C2C8(&v21);
    }
  }

  sub_25BBA7EB8();
  swift_allocError();
  v13 = v12;
  sub_25BABEF40(&v17, v12);
  *(v13 + 108) = 19;
  swift_willThrow();
  return sub_25BABF0A8(&v17);
}

id sub_25BBA7D18(void (*a1)(uint64_t *__return_ptr))
{
  v3 = v1;
  v5 = sub_25BBA7240();
  [v5 lock];

  a1(&v7);
  if (v2)
  {
    return [*(v3 + 24) unlock];
  }

  [*(v3 + 24) unlock];
  return v7;
}

void sub_25BBA7DBC(void (*a1)(void))
{
  v3 = *(v1 + 40);
  sub_25BAA3234();
  a1();
  sub_25BAA3258();
}

unint64_t sub_25BBA7E28()
{
  result = qword_27FBB5D68;
  if (!qword_27FBB5D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D68);
  }

  return result;
}

unint64_t sub_25BBA7EB8()
{
  result = qword_27FBB5D70;
  if (!qword_27FBB5D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MPSGraphBackend.ResolutionError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BBA7FEC()
{
  result = qword_27FBB5D78;
  if (!qword_27FBB5D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D78);
  }

  return result;
}

uint64_t sub_25BBA80A8()
{
  sub_25BA9D740();

  return swift_deallocClassInstance();
}

__n128 sub_25BBA8100@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 80);
  result = *(v1 + 90);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BBA8140(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BBA8194()
{
  sub_25BA9D740();
  v1 = *(v0 + 120);
  sub_25BA9D148(*(v0 + 112));

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA81F4(uint64_t a1)
{
  result = sub_25BBA82A4(qword_28154CE88, type metadata accessor for UnaryElementwiseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA824C(uint64_t a1)
{
  result = sub_25BBA82A4(&qword_28154C9C8, type metadata accessor for BaseUnaryElementwiseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA82A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BBA8348()
{
  (*(*v0 + 128))();
  sub_25BCB625C();

  MEMORY[0x25F878200](*(v0 + 48));
  MEMORY[0x25F878200](*(v0 + 56));
  if (*(v0 + 64) == 2)
  {
    MEMORY[0x25F878200](1);
  }

  else
  {
    MEMORY[0x25F878200](0);
    sub_25BCB79EC();
  }

  return MEMORY[0x25F878200](*(*(*(v0 + 40) + 152) + 16));
}

void *sub_25BBA8410()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[9];

  return v0;
}

uint64_t sub_25BBA8440()
{
  sub_25BBA8410();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA8528(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BBA8588(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = *a7;
  v13 = *a8;
  v14 = *(a8 + 8);
  *(v11 + 152) = a10;
  *(v11 + 160) = a11;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x657A69736572, 0xE600000000000000);
  }

  return OUTLINED_FUNCTION_0_48(a1, a2, a3);
}

uint64_t sub_25BBA8604()
{
  sub_25BBA8410();
  v1 = *(v0 + 160);
  sub_25BA9D148(*(v0 + 152));

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA8664()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BBA86B0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 152);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BBA8718(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 *a8, uint64_t *a9)
{
  v10 = *a8;
  v11 = *a9;
  v12 = *(a9 + 8);
  *(v9 + 152) = a4;
  if (!a3)
  {
    v13 = OUTLINED_FUNCTION_1_37();
    a1 = sub_25BAA5EA0(v13, v14);
  }

  return OUTLINED_FUNCTION_0_48(a1, a2, a3);
}

uint64_t sub_25BBA877C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!sub_25BB07E0C(a1, a2))
  {
    v5 = sub_25BAC4018();
    v6 = *(v2 + 152);
    if (v5 == sub_25BAC4018())
    {
      v7 = *(v3 + 152);
      *(v3 + 152) = a2;
    }
  }

  return 1;
}

uint64_t sub_25BBA87F4()
{
  sub_25BBA8410();
  v1 = *(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA8854(uint64_t a1)
{
  result = sub_25BBA8904(&qword_27FBB4070, type metadata accessor for ResizeGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA88AC(uint64_t a1)
{
  result = sub_25BBA8904(&qword_27FBB5D80, type metadata accessor for BaseResizeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBA8904(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BBA894C()
{
  v0 = sub_25BCB739C();

  v2 = *(v0 + 16);
  if (v2 < 2)
  {
    return v0;
  }

  v3 = 0;
  v4 = v2 >> 1;
  v5 = v2 - 1;
  v6 = 48 * v2 - 16;
  for (i = 32; ; i += 48)
  {
    if (v3 == v5)
    {
      goto LABEL_11;
    }

    v8 = *(v0 + 16);
    if (v3 >= v8)
    {
      break;
    }

    result = OUTLINED_FUNCTION_6_34(v0 + i, v11);
    if (v5 >= v8)
    {
      goto LABEL_14;
    }

    OUTLINED_FUNCTION_6_34(v0 + v6, v10);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BBF1348(v0);
      v0 = v9;
    }

    result = sub_25BBA9C24(v10, v0 + i);
    if (v5 >= *(v0 + 16))
    {
      goto LABEL_15;
    }

    result = sub_25BBA9C24(v11, v0 + v6);
LABEL_11:
    ++v3;
    --v5;
    v6 -= 48;
    if (v4 == v3)
    {
      return v0;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_25BBA8A7C(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2 < 2)
  {
    return;
  }

  v3 = v2 >> 1;
  v4 = v2 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_9;
    }

    v6 = *(v1 + 16);
    if (i - 4 >= v6)
    {
      break;
    }

    if (v4 - 4 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + 8 * i);
    v8 = *(v1 + 8 * v4);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BAA2110(v1);
      v1 = v9;
    }

    *(v1 + 8 * i) = v8;
    *(v1 + 8 * v4) = v7;
LABEL_9:
    --v4;
    if (!--v3)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

void sub_25BBA8B34(uint64_t a1, uint64_t a2)
{
  v2 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_18;
  }

  if (!v2)
  {
    goto LABEL_5;
  }

  v5 = sub_25BABD89C(a2 - a1, 0);
  if (sub_25BCA6178(v14, v5 + 4, v2, a1, a2) != v2)
  {
    __break(1u);
LABEL_5:
    v5 = MEMORY[0x277D84F90];
  }

  v6 = v5[2];
  if (v6 < 2)
  {
    return;
  }

  v7 = v6 >> 1;
  v8 = v6 + 3;
  for (i = 4; ; ++i)
  {
    if (i == v8)
    {
      goto LABEL_14;
    }

    v10 = v5[2];
    if (i - 4 >= v10)
    {
      break;
    }

    if (v8 - 4 >= v10)
    {
      goto LABEL_17;
    }

    v11 = v5[i];
    v12 = v5[v8];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BBF14E4(v5);
      v5 = v13;
    }

    v5[i] = v12;
    v5[v8] = v11;
LABEL_14:
    --v8;
    if (!--v7)
    {
      return;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_25BBA8C44(uint64_t a1, uint64_t a2)
{
  v2 = sub_25BC089B8(a1, a2);

  v3 = v2[2];
  if (v3 < 2)
  {
    return;
  }

  v4 = v3 >> 1;
  v5 = v3 + 1;
  for (i = 2; ; ++i)
  {
    if (i == v5)
    {
      goto LABEL_9;
    }

    v7 = v2[2];
    if (i - 2 >= v7)
    {
      break;
    }

    if (v5 - 2 >= v7)
    {
      goto LABEL_12;
    }

    v9 = *&v2[2 * v5];
    v10 = *&v2[2 * i];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25BBF152C(v2);
      v2 = v8;
    }

    *&v2[2 * i] = v9;
    *&v2[2 * v5] = v10;
LABEL_9:
    --v5;
    if (!--v4)
    {
      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t matmul(_:transposed:_:transposed:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, ValueMetadata *a3@<X2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  v10 = sub_25BCB783C();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x28223BE20](v10);
  v61 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  Kind = a3->Kind;
  if ((OUTLINED_FUNCTION_1_38(*(*a1 + 16)) & 1) == 0)
  {
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_1_38(*(Kind + 16)) & 1) == 0)
  {
    v63 = a3;
    *v64 = xmmword_25BCC6530;
    v64[16] = 0;
    OUTLINED_FUNCTION_3_28(xmmword_25BCBC6A0);
    OUTLINED_FUNCTION_0_49();
    goto LABEL_13;
  }

  v63 = v14;
  Tensor.scalarType.getter();
  (*(v16 + 32))(v73);
  v17 = v73[0];
  *&v76 = Kind;
  a3 = Tensor.scalarType.getter();
  (*(v18 + 32))(v72);
  if (v17 == LOBYTE(v72[0]))
  {
    goto LABEL_6;
  }

  v19 = LOBYTE(v72[0]) + 13 * v17;
  if (v19 > 0xA8)
  {
    __break(1u);
LABEL_9:
    v63 = a3;
    *v64 = xmmword_25BCC6520;
    v64[16] = 0;
    OUTLINED_FUNCTION_3_28(xmmword_25BCBC6A0);
    OUTLINED_FUNCTION_0_49();
    goto LABEL_13;
  }

  v17 = byte_286D42018[v19 + 32];
  if (v17 == 13)
  {
LABEL_12:
    *&v76 = v14;
    v48 = Tensor.scalarType.getter();
    v50 = v49;
    *v73 = Kind;
    v51 = Tensor.scalarType.getter();
    v63 = v48;
    *v64 = v50;
    *&v64[8] = xmmword_25BCC06A0;
    v65 = 6;
    v66 = v51;
    v67 = v52;
    v68 = xmmword_25BCBC6A0;
    LOBYTE(v69) = 6;
    v71 = 1;
    OUTLINED_FUNCTION_0_49();
LABEL_13:
    sub_25BADDD28();
  }

LABEL_6:
  v60 = a5;
  v63 = *(*(v14 + 16) + 152);
  *&v76 = *(*(Kind + 16) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  v57 = a2 & 1;
  v58 = a4 & 1;
  sub_25BCA3E80(&v63, a2 & 1, &v76, a4 & 1, &v75);

  v62 = Kind;
  if (!v75)
  {
    v63 = 0;
    *v64 = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000021, 0x800000025BCDEC30);
    v41 = *(*(v14 + 16) + 152);
    v42 = sub_25BCB617C();
    v43 = MEMORY[0x277D83B88];
    v44 = MEMORY[0x25F876F80](v42, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v44);

    MEMORY[0x25F876C90](0xD000000000000029, 0x800000025BCDEC60);
    v45 = *(*(v62 + 16) + 152);
    v46 = sub_25BCB617C();
    v47 = MEMORY[0x25F876F80](v46, v43);
    MEMORY[0x25F876C90](v47);

    MEMORY[0x25F876C90](11817, 0xE200000000000000);
    sub_25BCB74CC();
    __break(1u);
    goto LABEL_12;
  }

  v63 = v14;
  *&v76 = v75;
  v20 = v75;
  v54 = v75;
  sub_25BABDA0C(&v76);
  LOBYTE(v76) = v17;
  v21 = *MEMORY[0x277D84660];
  v55 = v17;
  v56 = v14;
  v22 = v11[13];
  v23 = v61;
  v22(v61, v21, v10);
  OUTLINED_FUNCTION_5_31();
  v24 = v11[1];
  v53[1] = v11 + 1;
  v24(v23, v10);

  v25 = v63;
  v59 = v63;
  v63 = v62;
  *&v76 = v20;
  sub_25BABDA0C(&v76);
  LOBYTE(v20) = v55;
  LOBYTE(v76) = v55;
  v22(v23, v21, v10);
  OUTLINED_FUNCTION_5_31();
  v24(v23, v10);

  v26 = *(v25 + 16);
  v27 = *(v63 + 16);
  v63 = v54;
  v64[0] = v20;
  v28 = swift_allocObject();
  LOBYTE(v20) = v57;
  LOBYTE(v23) = v58;
  *(v28 + 16) = v57;
  *(v28 + 17) = v23;

  v29 = sub_25BAAF074(sub_25BBA9C10);
  v31 = v30;

  v74 = 0;
  *&v76 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  *(&v76 + 1) = 107;
  v77 = 2;
  v78 = xmmword_25BCC6540;
  v79 = "init(id:leftOperand:transposed:rightOperand:transposed:resultDescriptor:creationSite:backward:)";
  v80 = 95;
  v81 = 2;
  type metadata accessor for MatrixMultiplicationOperation();
  swift_allocObject();
  v32 = sub_25BBA4BCC(0, 0, 0, v26, v20, v27, v23, &v63, &v76, v29, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_25BCBAE70;
  v34 = v62;
  *(v33 + 32) = v56;
  *(v33 + 40) = v34;

  sub_25BAB524C(v33, "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/Operations/LinearAlgebra.swift", 106, 2, 85, "matmul(_:transposed:_:transposed:)", 34, 2);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA486C(v73, v72, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(&v63);

  v35 = v70;

  sub_25BAA4AF4(&v63);
  sub_25BAA49B8();
  sub_25BAA4A5C(&v63);

  v36 = v69;

  sub_25BAA4AF4(&v63);
  type metadata accessor for TensorRepresentation();
  v37 = swift_allocObject();
  LOBYTE(v63) = 1;
  v38 = sub_25BC0E0A8(v32, 0, v72, 0x100000000, v35, v36, v37);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v39 = swift_allocObject();
  *(v39 + 16) = v38;

  sub_25BAA6EB0();

  result = sub_25BA9C2C8(v73);
  *v60 = v39;
  return result;
}

uint64_t sub_25BBA94C0(uint64_t result, void *a2, char a3, char a4)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = a2[2];
  if (!v6)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 != 1)
  {
    v21[9] = v4;
    v21[10] = v5;
    v7 = *(result + 32);
    v8 = a2[4];
    v9 = a2[5];
    if (a3)
    {
      if (a4)
      {
        v19 = a2[5];
        v20 = v7;

        matmul(_:transposed:_:transposed:)(v21, &v20, 1, &v19, 1);
        v10 = v21[0];
        v19 = v7;
        v20 = v8;
        v11 = 1;
        v12 = 1;
LABEL_13:
        matmul(_:transposed:_:transposed:)(v21, &v20, v11, &v19, v12);
        v13 = v21[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_25BCBAE70;
        *(v14 + 32) = v10;
        v15 = *(v8 + 16);

        *(v14 + 40) = sub_25BAC42B0();
        *(v14 + 48) = v16;
        *(v14 + 56) = v13;
        v17 = *(v9 + 16);

        *(v14 + 64) = sub_25BAC42B0();
        *(v14 + 72) = v18;

        return v14;
      }

      v19 = *(result + 32);
      v20 = v9;

      matmul(_:transposed:_:transposed:)(v21, &v20, 0, &v19, 1);
      v10 = v21[0];
      v19 = v7;
      v20 = v8;
      v11 = 0;
    }

    else
    {
      v19 = a2[5];
      v20 = v7;
      if (a4)
      {

        matmul(_:transposed:_:transposed:)(v21, &v20, 0, &v19, 0);
        v10 = v21[0];
        v19 = v8;
        v20 = v7;
      }

      else
      {

        matmul(_:transposed:_:transposed:)(v21, &v20, 0, &v19, 1);
        v10 = v21[0];
        v19 = v7;
        v20 = v8;
      }

      v11 = 1;
    }

    v12 = 0;
    goto LABEL_13;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_25BBA970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (!*(a2 + 16))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    v16[1] = 0;
    v16[2] = 0;
    v16[0] = v4;
    v17 = -1;
    v19 = 0;
    v20 = 0;
    v18 = v3;
    v21 = -1;
    v22 = 4;
    sub_25BADDD28();
  }

  v6 = *(a1 + 32);
  v7 = *(a2 + 32);
  v3 = *(a3 + 16);

  v8 = sub_25BAC0E14(-1, v3);
  if (v3)
  {
    v9 = 0;
    v10 = a3 + 32;
    while (1)
    {
      v4 = *(v10 + 8 * v9);
      if (v4 < 0)
      {
        if (v4 < -v3)
        {
          goto LABEL_19;
        }

        v4 += v3;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (v4 < 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_25BAA2110(v8);
        v8 = v11;
        if (v4 < 0)
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      if (v4 >= *(v8 + 16))
      {
        break;
      }

      *(v8 + 8 * v4 + 32) = v9++;
      if (v3 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  v23 = v6;
  Tensor.transposed(permutation:)(v16, v8);

  *(v12 + 32) = v16[0];
  v13 = *(v7 + 16);

  *(v12 + 40) = sub_25BAC42B0();
  *(v12 + 48) = v14;

  return v12;
}

uint64_t Tensor.transposed()@<X0>(uint64_t *a1@<X8>)
{
  sub_25BBA8B34(0, *(*(*(*v1 + 16) + 152) + 16));
  Tensor.transposed(permutation:)(v3, a1);
}

uint64_t Tensor.gramMatrix(scale:)(float a1)
{
  v3 = *v1;
  v4 = *(*(*(*v1 + 16) + 152) + 16);
  if ((sub_25BAB74D0(v4, 4, 0, 0) & 1) == 0)
  {
    *&v21 = 0;
    v20 = v4;
    BYTE8(v21) = 6;
    v22 = xmmword_25BCBCE40;
    LOBYTE(v23) = 0;
    v25 = 7;
    goto LABEL_15;
  }

  v5 = *(*(v3 + 16) + 152);
  v6 = v5[2];
  if (!v6)
  {
    v20 = 0uLL;
    *&v21 = 0;
    BYTE8(v21) = -1;
    v23 = 0;
    v22 = 0uLL;
    v24 = -1;
LABEL_14:
    v25 = 4;
    sub_25BCB617C();
LABEL_15:
    sub_25BADDD28();
  }

  if (v6 == 1)
  {
    goto LABEL_9;
  }

  if (v6 <= 2)
  {
    *&v21 = 0;
    *&v20 = 2;
    goto LABEL_13;
  }

  if (v6 == 3)
  {
LABEL_9:
    *&v21 = 0;
    *&v20 = v6;
LABEL_13:
    *(&v20 + 1) = 0;
    BYTE8(v21) = -1;
    v23 = 0;
    v22 = v6;
    v24 = -1;
    goto LABEL_14;
  }

  v7 = v5[4];
  v8 = v5[5];
  v9 = v5[6];
  v10 = v5[7];
  v16[0] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE90;
  *(v11 + 32) = v7;
  *(v11 + 40) = v8;
  v6 = v9 * v10;
  if ((v9 * v10) >> 64 != (v9 * v10) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v11 + 48) = v6;
  v19 = v11;
  Tensor.reshaped(to:)(&v19, &v20);

  v16[0] = v20;
  v19 = v20;
  matmul(_:transposed:_:transposed:)(v16, 0, &v19, 1, &v20);
  v19 = v20;
  v12 = *(*(v3 + 16) + 160);
  LODWORD(v23) = 0;
  v21 = 0u;
  v22 = 0u;
  v20 = 0u;
  v18 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  v17 = v12;
  sub_25BAA486C(&v20, v16, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v18, inited, &v17, v16, &v15);
  sub_25BA9C2C8(&v20);
  static Tensor.* infix(_:_:)();
}

uint64_t sub_25BBA9C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3868, &qword_25BCBE9A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static FeatureInputType.rgbImage(size:channelsFirst:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v4 = 0x2000000000000000;
  if (a3)
  {
    v4 = 0x2000000000000100;
  }

  *a4 = result;
  a4[1] = a2;
  a4[2] = v4;
  return result;
}

uint64_t static FeatureInputType.tensor(like:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(*a1 + 16);
  v3 = *(v2 + 152);
  v4 = *(v2 + 160);
  return OUTLINED_FUNCTION_3_29(v3, a2);
}

void *static FeatureInputType.tensor(shape:scalarType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a3 + 32);
  sub_25BCB617C();
  result = v8(&v11, a2, a3);
  v10 = v11;
  *a4 = v7;
  a4[1] = v10;
  a4[2] = 0;
  return result;
}

uint64_t static FeatureInputType.tensor(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 8) = xmmword_25BCC4310;
}

uint64_t sub_25BBA9DB8@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = v1[2];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_25BCBDF80;
    *(v10 + 32) = 1;
    if ((v4 & 0x100) != 0)
    {
      v12 = 3;
      if (v9 >= 2)
      {
        v12 = 1;
      }

      *(v10 + 40) = v12;
      *(v10 + 48) = v2;
      *(v10 + 56) = v3;
    }

    else
    {
      *(v10 + 40) = v2;
      *(v10 + 48) = v3;
      v11 = 3;
      if (v9 >= 2)
      {
        v11 = 1;
      }

      *(v10 + 56) = v11;
    }

    v21 = v10;
    v20 = 10;
    goto LABEL_13;
  }

  if (!(v4 >> 62))
  {
    v21 = *v1;
    v20 = v3;
    OUTLINED_FUNCTION_14_23();
    v14 = OUTLINED_FUNCTION_9_25();
    sub_25BB06184(v14, v15, v16);
    return Tensor.init(zeros:scalarType:on:)(&v21);
  }

  if (v4 >> 62 == 1)
  {
    v21 = *v1;
    v5 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v6 = OUTLINED_FUNCTION_9_25();
    sub_25BB06184(v6, v7, v8);
    v5(&v20, v3, v4 & 0x1FFFFFFFFFFFFFFFLL);
LABEL_13:
    OUTLINED_FUNCTION_14_23();
    return Tensor.init(zeros:scalarType:on:)(&v21);
  }

  *a1 = v2;
  v17 = OUTLINED_FUNCTION_9_25();

  return sub_25BB06184(v17, v18, v19);
}

uint64_t sub_25BBA9F24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[5] = a1;
  v11[2] = a2;
  v11[3] = a3;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = sub_25BCB61AC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_25BAB2B20(sub_25BBAB9E4, v11, v5, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v8);

  return (*(a3 + 24))(v9, a2, a3);
}

uint64_t sub_25BBAA08C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v14 - v8;
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  (*(v6 + 16))(v9, a1, TupleTypeMetadata2);
  sub_25BB0D1B8(*&v9[*(TupleTypeMetadata2 + 48)], *&v9[*(TupleTypeMetadata2 + 48) + 8], *&v9[*(TupleTypeMetadata2 + 48) + 16]);
  (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
  v11 = (a1 + *(TupleTypeMetadata2 + 48));
  v12 = *(v11 + 2);
  v14 = *v11;
  v15 = v12;
  return sub_25BBA9DB8((a2 + v10));
}

uint64_t sub_25BBAA234(uint64_t a1, uint64_t a2)
{
  v11 = (*(a2 + 32))();
  v10[2] = a1;
  v10[3] = a2;
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v4 = sub_25BCB68CC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_25BAB2B20(sub_25BBABA04, v10, v4, TupleTypeMetadata2, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  v11 = v8;
  sub_25BCB68CC();
  swift_getAssociatedConformanceWitness();
  swift_getWitnessTable();
  return sub_25BCB615C();
}

uint64_t sub_25BBAA3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v13 - v8;
  v10 = a2 + *(swift_getTupleTypeMetadata2() + 48);
  (*(v6 + 16))(v9, a1, TupleTypeMetadata2);
  v11 = *&v9[*(TupleTypeMetadata2 + 48)];

  (*(*(AssociatedTypeWitness - 8) + 32))(a2, v9, AssociatedTypeWitness);
  *v10 = *(a1 + *(TupleTypeMetadata2 + 48));
  *(v10 + 8) = xmmword_25BCC4310;
}

uint64_t sub_25BBAA588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v87 = a4;
  v85 = a2;
  v86 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D98, &qword_25BCC6828);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v76 - v8;
  v10 = sub_25BCB5B4C();
  v11 = OUTLINED_FUNCTION_2(v10);
  v81 = v12;
  v82 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v17 = v16 - v15;
  v18 = sub_25BCB5B7C();
  v19 = OUTLINED_FUNCTION_2(v18);
  v83 = v20;
  v84 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1();
  v25 = v24 - v23;
  v26 = sub_25BCB5B8C();
  v27 = OUTLINED_FUNCTION_2(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1();
  v34 = v33 - v32;
  v36 = *v4;
  v35 = v4[1];
  v37 = v4[2];
  if ((v37 & 0x2000000000000000) == 0)
  {
    if (v37 >> 62)
    {
      if (v37 >> 62 != 1)
      {
        v89 = *v4;
        v69 = v36;
        Tensor.scalarType.getter();
        sub_25BBAADFC(v70, v34);
        v71 = *(*(v69 + 16) + 152);
        sub_25BCB617C();
        OUTLINED_FUNCTION_16_24();

        return (*(v29 + 8))(v34, v26);
      }

      v38 = *v4;
      v39 = v4[1];
      sub_25BBAADFC(v37 & 0x1FFFFFFFFFFFFFFFLL, v34);
    }

    else
    {
      LOBYTE(v89) = v4[1];
      sub_25BBAAC68(v34);
    }

    OUTLINED_FUNCTION_16_24();
    return (*(v29 + 8))(v34, v26);
  }

  v40 = *(a1 + 152);
  v41 = *(v40 + 16);
  if ((v41 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_10_22();
    v91 = *(v40 + 16);
LABEL_7:
    v42 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v42);

    MEMORY[0x25F876C90](0x6E6920726F662060, 0xED00002720747570);
    MEMORY[0x25F876C90](v85, v86);
    v43 = 11815;
LABEL_27:
    MEMORY[0x25F876C90](v43, 0xE200000000000000);
    v65 = v89;
    v66 = v90;
    sub_25BB0A3A4();
    swift_allocError();
    *v67 = v65;
    v67[1] = v66;
    return swift_willThrow();
  }

  v76 = a1;
  v77 = v9;
  v80 = v35;
  v44 = v41 - 2;
  v45 = v41 - 1;
  v46 = v41 - 3;
  v47 = v41 == 4;
  if ((v37 & 0x100) != 0)
  {
    v48 = v47;
  }

  else
  {
    v48 = v45;
  }

  if ((v37 & 0x100) != 0)
  {
    v49 = v44;
  }

  else
  {
    v49 = v46;
  }

  v89 = v40;
  v78 = v49;
  v50 = v40;
  v51 = v36;
  v52 = TensorShape.subscript.getter(v49);
  v79 = v51;
  if (v52 != v51 || ((v37 & 0x100) != 0 ? (v53 = v45) : (v53 = v44), v89 = v50, v54 = TensorShape.subscript.getter(v53), v54 != v80))
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCDF000);
    MEMORY[0x25F876C90](v85, v86);
    MEMORY[0x25F876C90](0x60206572612027, 0xE700000000000000);
    OUTLINED_FUNCTION_12_21();
    v63 = v78;
    v88 = TensorShape.subscript.getter(v78);
    OUTLINED_FUNCTION_5_32();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](120, 0xE100000000000000);
    OUTLINED_FUNCTION_12_21();
    v88 = TensorShape.subscript.getter(v63);
    OUTLINED_FUNCTION_5_32();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](0xD00000000000001DLL, 0x800000025BCDF030);
    v91 = v79;
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](120, 0xE100000000000000);
    v91 = v80;
    OUTLINED_FUNCTION_23_0();
    v64 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v64);

    v43 = 11872;
    goto LABEL_27;
  }

  v89 = v50;
  v55 = TensorShape.subscript.getter(v48);
  if (v37 >= 2u)
  {
    v56 = 1;
  }

  else
  {
    v56 = 3;
  }

  if (v55 != v56)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    MEMORY[0x25F876C90](0xD000000000000030, 0x800000025BCDEE80);
    v91 = v56;
    OUTLINED_FUNCTION_23_0();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_18_21();

    MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDEEC0);
    LOBYTE(v91) = v37;
    sub_25BCB73CC();
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_12_21();
    v88 = TensorShape.subscript.getter(v48);
    OUTLINED_FUNCTION_5_32();
    goto LABEL_7;
  }

  v57 = *MEMORY[0x277D250B8];
  v58 = v82;
  v59 = *(v81 + 104);
  v59(v17, v57, v82);
  sub_25BCB5B6C();
  if (!v37)
  {
    v60 = v77;
LABEL_36:
    v62 = v60;
    v61 = v57;
    goto LABEL_37;
  }

  v60 = v77;
  if (v37 == 1)
  {
    v61 = *MEMORY[0x277D250B0];
    v62 = v77;
LABEL_37:
    v59(v62, v61, v58);
    OUTLINED_FUNCTION_15_20();
    goto LABEL_38;
  }

  v59(v77, *MEMORY[0x277D250C0], v58);
  OUTLINED_FUNCTION_15_20();
  if (*(v76 + 160) == 8)
  {
    v57 = *MEMORY[0x277D250A8];
    goto LABEL_36;
  }

LABEL_38:
  v72 = v87;
  (*(v83 + 32))(v87, v25, v84);
  v73 = *MEMORY[0x277D25120];
  v74 = sub_25BCB5B9C();
  OUTLINED_FUNCTION_4_34(v74);
  return (*(v75 + 104))(v72, v73);
}

uint64_t sub_25BBAAC68@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x277D250E0];
  switch(*v1)
  {
    case 0:
      break;
    case 2:
      v3 = MEMORY[0x277D250E8];
      break;
    case 8:
      v3 = MEMORY[0x277D250F8];
      break;
    case 9:
      sub_25BA97890();
    case 10:
      v3 = MEMORY[0x277D25100];
      break;
    case 11:
      v3 = MEMORY[0x277D250F0];
      break;
    default:
      v8 = *v1;
      sub_25BC8FACC();
      sub_25BADDD28();
  }

  v4 = *v3;
  v5 = sub_25BCB5B8C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t _s14NeuralNetworks16FeatureInputTypeO11ColorLayoutO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

unint64_t sub_25BBAAE94()
{
  result = qword_27FBB5D88;
  if (!qword_27FBB5D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D88);
  }

  return result;
}

unint64_t sub_25BBAAEEC()
{
  result = qword_27FBB5D90;
  if (!qword_27FBB5D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D90);
  }

  return result;
}

uint64_t sub_25BBAAF58(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 7 && *(a1 + 24))
    {
      v2 = *a1 + 6;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 59) >> 2) & 1 | (2 * ((*(a1 + 16) >> 59) & 2 | (*(a1 + 16) >> 2) & 1))) ^ 7;
      if (v2 >= 6)
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

uint64_t sub_25BBAAFA8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 6)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 7;
    if (a3 >= 7)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 7)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 3 | (4 * (-a2 & 7));
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = ((v3 << 59) | (4 * v3)) & 0x3000000000000004;
    }
  }

  return result;
}

uint64_t sub_25BBAB050(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FE && *(a1 + 24))
    {
      v2 = *a1 + 2045;
    }

    else
    {
      v2 = (((*(a1 + 16) >> 53) >> 9) | (4 * ((*(a1 + 8) >> 60) & 0x8F | (16 * (*(a1 + 16) & 7)) | (*(a1 + 16) >> 53) & 0x180))) ^ 0x7FF;
      if (v2 >= 0x7FD)
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

uint64_t sub_25BBAB0AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2046;
    if (a3 >= 0x7FE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1FF | ((-a2 & 0x7FF) << 9);
      *result = 0;
      *(result + 8) = v3 << 60;
      *(result + 16) = ((v3 >> 4) | (v3 << 53)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_25BBAB11C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *(result + 8) &= 0xFFFFFFFFFFFFFFFuLL;
  *(result + 16) = v2;
  return result;
}

unsigned __int16 *getEnumTagSinglePayload for FeatureOutputType(unsigned __int16 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *(result + 1);
    v7 = v6 >= 2;
    v8 = (v6 + 2147483646) & 0x7FFFFFFF;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 65282;
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v3 = 2;
    }

    else
    {
      v3 = 4;
    }

    if (v2 < 0xFF0000)
    {
      v3 = 1;
    }

    if (v2 >= 0x10000)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = *(result + 2);
        if (!*(result + 2))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 16)) - 65282);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FeatureOutputType(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v6)
    {
      case 1:
        *(result + 2) = v7;
        break;
      case 2:
        *(result + 2) = v7;
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v7;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 2) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          *(result + 1) = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25BBAB2E0(uint64_t a1)
{
  v1 = *(a1 + 1);
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BBAB2FC(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 1) = a2 + 1;
  }

  return result;
}

_BYTE *sub_25BBAB32C(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BBAB404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v75 = a2;
  v7 = sub_25BCB5B8C();
  v8 = OUTLINED_FUNCTION_2(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D98, &qword_25BCC6828);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = &v67 - v18;
  v19 = sub_25BCB5B4C();
  v20 = OUTLINED_FUNCTION_2(v19);
  v72 = v21;
  v73 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_1();
  v26 = v25 - v24;
  v27 = sub_25BCB5B7C();
  v28 = OUTLINED_FUNCTION_2(v27);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v35 = v34 - v33;
  v36 = *v4;
  v37 = *(a1 + 152);
  v38 = *(a1 + 160);
  if ((*v4 & 0xFF00) == 0x200)
  {
    LOBYTE(v78) = v38;
    sub_25BBAAC68(v15);
    sub_25BCB5B3C();
    return (*(v10 + 8))(v15, v7);
  }

  v71 = a4;
  v40 = *(v37 + 16);
  if ((v40 - 5) < 0xFFFFFFFFFFFFFFFELL)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    OUTLINED_FUNCTION_10_22();
    v80 = *(v37 + 16);
LABEL_22:
    v58 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v58);

    MEMORY[0x25F876C90](0x756F20726F662060, 0xEE00272074757074);
    MEMORY[0x25F876C90](v75, v76);
    MEMORY[0x25F876C90](11815, 0xE200000000000000);
    v59 = v78;
    v60 = v79;
    sub_25BB0A3A4();
    swift_allocError();
    *v61 = v59;
    v61[1] = v60;
    return swift_willThrow();
  }

  v69 = v31;
  v70 = v35;
  v68 = v32;
  v41 = v40 - 1;
  if ((v36 & 0x100) != 0)
  {
    v42 = v40 == 4;
  }

  else
  {
    v42 = v40 - 1;
  }

  v78 = v37;
  v43 = TensorShape.subscript.getter(v42);
  if ((v36 & 0xFE) != 0)
  {
    v44 = 1;
  }

  else
  {
    v44 = 3;
  }

  if (v43 != v44)
  {
    OUTLINED_FUNCTION_11_6();
    sub_25BCB70FC();
    OUTLINED_FUNCTION_13_21();
    MEMORY[0x25F876C90](0xD000000000000030, 0x800000025BCDEE80);
    v80 = v44;
    OUTLINED_FUNCTION_23_0();
    v57 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v57);

    MEMORY[0x25F876C90](0xD000000000000014, 0x800000025BCDEEC0);
    LOBYTE(v80) = v36;
    sub_25BCB73CC();
    OUTLINED_FUNCTION_17_21();
    OUTLINED_FUNCTION_12_21();
    v77 = TensorShape.subscript.getter(v42);
    OUTLINED_FUNCTION_5_32();
    goto LABEL_22;
  }

  v45 = v40 - 2;
  if ((v36 & 0x100) != 0)
  {
    v46 = v40 - 2;
  }

  else
  {
    v46 = v40 - 3;
  }

  if ((v36 & 0x100) != 0)
  {
    v47 = v41;
  }

  else
  {
    v47 = v45;
  }

  v78 = v37;
  TensorShape.subscript.getter(v47);
  OUTLINED_FUNCTION_12_21();
  TensorShape.subscript.getter(v46);
  v48 = *MEMORY[0x277D250B8];
  v49 = v73;
  v50 = *(v72 + 104);
  v50(v26, v48, v73);
  sub_25BCB5B6C();
  if (v36)
  {
    v51 = v74;
    if (v36 == 1)
    {
      v50(v74, *MEMORY[0x277D250B0], v49);
      OUTLINED_FUNCTION_8_26();
      v52 = v70;
      sub_25BCB5B5C();
      v53 = v71;
      (*(v68 + 32))(v71, v52, v69);
      v54 = *MEMORY[0x277D25120];
      v55 = sub_25BCB5B9C();
      OUTLINED_FUNCTION_4_34(v55);
      return (*(v56 + 104))(v53, v54);
    }

    v50(v74, *MEMORY[0x277D250C0], v49);
    OUTLINED_FUNCTION_8_26();
    v63 = v70;
    sub_25BCB5B5C();
    v62 = v71;
    if (v38 != 8)
    {
      goto LABEL_27;
    }

    v48 = *MEMORY[0x277D250A8];
  }

  else
  {
    v62 = v71;
    v51 = v74;
  }

  v50(v51, v48, v49);
  OUTLINED_FUNCTION_8_26();
  v63 = v70;
  sub_25BCB5B5C();
LABEL_27:
  (*(v68 + 32))(v62, v63, v69);
  v64 = *MEMORY[0x277D25120];
  v65 = sub_25BCB5B9C();
  OUTLINED_FUNCTION_4_34(v65);
  return (*(v66 + 104))(v62, v64);
}

uint64_t sub_25BBAB9E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25BBAA08C(a1, a2);
}

uint64_t sub_25BBABA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25BBAA3F0(a1, a2);
}

uint64_t sub_25BBABA44(uint64_t a1)
{
  v1 = *(a1 + 88);
  v5[2] = a1;
  v2 = sub_25BBFC060(sub_25BBABC10, v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v7 = sub_25BCB614C();
  v3 = sub_25BAF9B54(v2);

  v6 = v3;
  sub_25BAFC990();
  return v6;
}

uint64_t sub_25BBABAF8(uint64_t a1)
{
  v1 = *(a1 + 152);
  v5[2] = a1;
  v2 = sub_25BBFC060(sub_25BBABC30, v5, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v7 = sub_25BCB614C();
  v3 = sub_25BAF9B54(v2);

  v6 = v3;
  sub_25BAFC990();
  return v6;
}

uint64_t sub_25BBABBAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*a1 + 152);
  v4 = *(*a1 + 160);
  sub_25BCB617C();
  result = sub_25BC458D0();
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ComputePrecision(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25BBABD24(uint64_t a1, uint64_t a2)
{
  (*(a2 + 32))(&var1);
  if (var1 - 8 >= 3)
  {
    return 2;
  }

  else
  {
    return 0x10000u >> (8 * (var1 - 8));
  }
}

uint64_t sub_25BBABDB0(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25BBABDEC@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BBABDB0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BBABE18@<X0>(_DWORD *a1@<X8>)
{
  result = sub_25BBABDC8(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_25BBABE44()
{
  result = qword_28154F2D0;
  if (!qword_28154F2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154F2D0);
  }

  return result;
}

uint64_t sub_25BBABF10(char a1)
{
  if (a1)
  {
    return 0x656C676E6973;
  }

  else
  {
    return 1718378856;
  }
}

__n128 sub_25BBABF48@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 184);
  result = *(v1 + 194);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BBABF6C(uint64_t a1)
{
  result = sub_25BBABFF4(&qword_28154F488);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBABFB0(uint64_t a1)
{
  result = sub_25BBABFF4(qword_28154F490);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBABFF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OneHotOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BBAC034(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA8, &qword_25BCC6A38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25BBAC09C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BBAC0F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = OUTLINED_FUNCTION_15_21();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - v13;
  sub_25BCB690C();
  v15 = *(v11 + 48);
  (*(*(a6 - 8) + 32))(a1, v14, a6);
  return (*(*(a7 - 8) + 32))(a2, &v14[v15], a7);
}

uint64_t sub_25BBAC20C()
{
  sub_25BCB605C();
  sub_25BCB617C();
  swift_getTupleTypeMetadata2();
  sub_25BCB68CC();
  swift_getWitnessTable();
  sub_25BCB65BC();

  OUTLINED_FUNCTION_11_25();
  sub_25BCB68CC();
  swift_getWitnessTable();
  v0 = sub_25BCB70AC();

  return v0;
}

void sub_25BBAC340(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = 0;
  v23 = *(a1 + 16);
  v21 = a1 + 32;
  v4 = MEMORY[0x277D84F90];
  while (1)
  {
LABEL_2:
    v5 = v3;
    if (v3 == v23)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      v24 = sub_25BCB614C();
      sub_25BAD8324(v24);
      return;
    }

    if (v3 >= v23)
    {
      break;
    }

    ++v3;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_23;
    }

    v6 = (v21 + 24 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *a3;
    if (*(*a3 + 16))
    {
      v11 = *(v10 + 40);
      sub_25BCB79CC();
      sub_25BCB617C();

      sub_25BCB617C();
      sub_25BCB625C();
      v12 = sub_25BCB7A3C();
      v13 = ~(-1 << *(v10 + 32));
      while (1)
      {
        v14 = v12 & v13;
        if (((*(v10 + 56 + (((v12 & v13) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v12 & v13)) & 1) == 0)
        {
          break;
        }

        v15 = (*(v10 + 48) + 16 * v14);
        if (*v15 != v8 || v15[1] != v7)
        {
          v17 = sub_25BCB789C();
          v12 = v14 + 1;
          if ((v17 & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_2;
      }
    }

    else
    {
      sub_25BCB617C();
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = *(v4 + 16);
      OUTLINED_FUNCTION_12_22();
    }

    v19 = *(v4 + 16);
    if (v19 >= *(v4 + 24) >> 1)
    {
      sub_25BAD8238();
    }

    *(v4 + 16) = v19 + 1;
    v20 = (v4 + 24 * v19);
    v20[4] = v8;
    v20[5] = v7;
    v20[6] = v9;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_25BBAC568()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v11 = sub_25BCB61BC();
  if (!v15)
  {
    goto LABEL_5;
  }

  if (!*(v15 + 16))
  {

LABEL_5:
    OUTLINED_FUNCTION_11_25();
    sub_25BCB67CC();
    goto LABEL_6;
  }

  MEMORY[0x28223BE20](v11);
  v14[2] = v5;
  v14[3] = v3;
  v14[4] = v1;
  v14[5] = v9;
  v14[6] = v7;
  v12 = sub_25BB074EC();
  sub_25BAB2B20(sub_25BBAEDD8, v14, v10, v3, MEMORY[0x277D84A98], v12, MEMORY[0x277D84AC0], v13);

LABEL_6:
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BBAC69C()
{
  OUTLINED_FUNCTION_3_30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_5_33();
  sub_25BCB67CC();
  sub_25BCB614C();
  OUTLINED_FUNCTION_2_41();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_41();
  swift_getTupleTypeMetadata2();
  v0 = sub_25BCB73BC();

  OUTLINED_FUNCTION_2_41();
  v1 = type metadata accessor for KeyValuePairsCollection();
  sub_25BBACA6C(v1);
  return v0;
}

uint64_t sub_25BBAC76C()
{
  OUTLINED_FUNCTION_3_30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_5_33();
  sub_25BCB67CC();
  sub_25BCB614C();
  OUTLINED_FUNCTION_2_41();
  v1 = type metadata accessor for KeyValuePairsCollection();
  sub_25BBACA6C(v1);
  return v0;
}

uint64_t sub_25BBAC7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a2;
  v29 = a4;
  v30 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v25 - v10;
  v12 = *(a3 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v8 + 16);
  v27 = a1;
  v26(v11, a1, TupleTypeMetadata2, v15);
  v18 = *(TupleTypeMetadata2 + 48);
  sub_25BCB6A4C();
  v19 = sub_25BCB6A1C();
  v28 = v12;
  (*(v12 + 8))(v17, a3);
  v20 = v29;
  v21 = *(*(v29 - 8) + 8);
  v21(&v11[v18], v29);
  if ((v19 & 1) == 0)
  {
    return __swift_storeEnumTagSinglePayload(v30, 1, 1, a3);
  }

  (v26)(v11, v27, TupleTypeMetadata2);
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = v30;
  (*(v28 + 32))(v30, v11, a3);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, a3);
  return (v21)(&v11[v22], v20);
}

uint64_t sub_25BBACA6C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  v58 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v55 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v68 = &v47 - v9;
  MEMORY[0x28223BE20](v10);
  v54 = &v47 - v11;
  MEMORY[0x28223BE20](v12);
  v67 = &v47 - v13;
  v14 = swift_getTupleTypeMetadata2();
  v62 = sub_25BCB6E8C();
  v15 = *(v62 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v62);
  v61 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = (&v47 - v19);
  v21 = *v1;
  v70 = v1 + 1;
  v72[1] = v21;
  v56 = TupleTypeMetadata2;
  v22 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F876DF0](v72, v22, WitnessTable);
  v71 = v72[0];
  sub_25BCB754C();
  sub_25BCB751C();
  v24 = sub_25BCB753C();
  v59 = (v15 + 32);
  v60 = v24;
  v57 = v3;
  v51 = v3 - 8;
  v69 = v2;
  v50 = v2 - 8;
  v49 = (v5 + 16);
  v48 = (v5 + 8);
  v53 = v14;
  v52 = v20;
  while (1)
  {
    v25 = v61;
    sub_25BCB752C();
    (*v59)(v20, v25, v62);
    if (__swift_getEnumTagSinglePayload(v20, 1, v14) == 1)
    {
      break;
    }

    v26 = *v20;
    v27 = v20 + *(v14 + 48);
    v29 = v56;
    v28 = v57;
    v30 = *(v56 + 48);
    v65 = *(v57 - 8);
    v66 = v26;
    v63 = *(v65 + 32);
    v31 = v54;
    v63(v54, v27, v57);
    v32 = v69;
    v64 = *(v69 - 8);
    v33 = *(v64 + 32);
    v33(&v31[v30], &v27[v30], v69);
    v34 = *(v29 + 48);
    v35 = v67;
    v63(v67, v31, v28);
    v33(&v35[v34], &v31[v30], v32);
    v36 = *v49;
    (*v49)(v68, v35, v29);
    v37 = v55;
    v36(v55, v35, v29);
    v38 = *v70;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v39 = *(v58 + 32);
    v40 = v28;
    sub_25BCB61BC();
    if (v72[0])
    {
      v41 = v72[0];
    }

    else
    {
      v41 = MEMORY[0x277D84F90];
    }

    v42 = *(v29 + 48);
    v43 = *(v64 + 8);
    v44 = v69;
    v43(&v37[v42], v69);
    (*(v65 + 8))(v37, v40);
    v72[0] = v41;
    sub_25BA95FB0(v66);
    v20 = v52;
    sub_25BCB61AC();
    v45 = v68;
    sub_25BCB61CC();
    (*v48)(v67, v29);
    v43(&v45[v42], v44);
    v14 = v53;
  }
}

uint64_t sub_25BBAD020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v14 - v10;
  v12 = *a1;
  sub_25BCB690C();
  (*(*(a3 - 8) + 32))(a4, &v11[*(TupleTypeMetadata2 + 48)], a3);
  return (*(*(a2 - 8) + 8))(v11, a2);
}

uint64_t sub_25BBAD17C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void)@<X3>, uint64_t *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4]);
  *a4 = result;
  a4[1] = v6;
  return result;
}

uint64_t sub_25BBAD1B8()
{
  swift_getTupleTypeMetadata2();

  return sub_25BCB674C();
}

uint64_t sub_25BBAD210()
{
  swift_getTupleTypeMetadata2();

  return sub_25BCB681C();
}

uint64_t sub_25BBAD268()
{
  OUTLINED_FUNCTION_7_25();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x2821FC2F0](v1, v0, TupleTypeMetadata2);
}

uint64_t sub_25BBAD2BC()
{
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_16_25();
  v0 = OUTLINED_FUNCTION_9_26();

  return MEMORY[0x2821FC338](v0, v1, v2, v3);
}

uint64_t sub_25BBAD304()
{
  OUTLINED_FUNCTION_4_35();
  OUTLINED_FUNCTION_16_25();
  v0 = OUTLINED_FUNCTION_9_26();

  return MEMORY[0x2821FC308](v0, v1, v2, v3);
}

uint64_t sub_25BBAD34C()
{
  OUTLINED_FUNCTION_3_30();
  OUTLINED_FUNCTION_15_21();
  return sub_25BCB684C();
}

uint64_t sub_25BBAD39C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  result = sub_25BBAD1B8();
  *a2 = result;
  return result;
}

uint64_t sub_25BBAD3D0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  result = sub_25BBAD210();
  *a2 = result;
  return result;
}

void (*sub_25BBAD404(uint64_t **a1, uint64_t *a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v7 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v7;
  v9 = a3[2];
  v8 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7[4] = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  v7[5] = v11;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v7[6] = v12;
  v13 = a3[4];
  v14 = sub_25BBAD5FC(v7, *a2, *v3, v3[1], v9, v8);
  v16 = v15;
  v7[7] = v14;
  (*(*(v9 - 8) + 16))(v12);
  (*(*(v8 - 8) + 16))(&v12[*(TupleTypeMetadata2 + 48)], v16, v8);
  return sub_25BBAD584;
}

void sub_25BBAD584(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_25BBAD5FC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(void *a1)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  a1[1] = v12;
  v13 = __swift_coroFrameAllocStub(*(v12 + 64));
  a1[2] = v13;
  sub_25BBAC0F0(v13, v13 + *(TupleTypeMetadata2 + 48), a2, a3, v14, a5, a6);
  return sub_25BB4B344;
}

uint64_t sub_25BBAD6FC()
{
  swift_getWitnessTable();

  return sub_25BCB6A9C();
}

uint64_t sub_25BBAD77C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  result = sub_25BBAD268();
  *a3 = result;
  return result;
}

uint64_t sub_25BBAD7B4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25BBAD268();
  *a1 = result;
  return result;
}

uint64_t sub_25BBAD7EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  *a2 = v5;
  a2[1] = v4;
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  sub_25BCB617C();
  sub_25BCB617C();
  v8 = sub_25BBAD1B8();

  a2[2] = v8;
  return result;
}

uint64_t sub_25BBAD860(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25BBAD8B4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7C8](a1, WitnessTable);
}

uint64_t sub_25BBAD908()
{
  OUTLINED_FUNCTION_7_25();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x2821FC2F8](v1, v0, TupleTypeMetadata2);
}

uint64_t sub_25BBAD95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = *v3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  result = sub_25BBAD908();
  *a3 = result;
  return result;
}

uint64_t sub_25BBAD994(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  result = sub_25BBAD908();
  *a1 = result;
  return result;
}

uint64_t sub_25BBAD9CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *v4;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  result = sub_25BBAD34C();
  *a4 = result;
  *(a4 + 8) = v12 & 1;
  return result;
}

void sub_25BBADA10()
{
  OUTLINED_FUNCTION_9_18();
  v52 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = sub_25BCB6E8C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v57 = v43 - v17;
  v67 = v14;
  v68 = v12;
  v53 = v12;
  OUTLINED_FUNCTION_11_25();
  type metadata accessor for KeyValuePairsCollection();
  swift_getWitnessTable();
  v18 = sub_25BCB6B4C();
  v58 = v10;
  v59 = v10;
  v54 = v8;
  v60 = v8;
  if (v18 != sub_25BCB6B4C())
  {
    goto LABEL_29;
  }

  v67 = sub_25BBAC20C();
  OUTLINED_FUNCTION_11_25();
  sub_25BCB709C();
  swift_getWitnessTable();
  v19 = OUTLINED_FUNCTION_6_35();
  v67 = sub_25BBAC20C();
  OUTLINED_FUNCTION_6_35();
  sub_25BCB617C();
  sub_25BCB69EC();

  v20 = sub_25BCB6A2C();

  if ((v20 & 1) == 0)
  {

LABEL_29:
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v50 = v4;
  if ((v19 & 0xC000000000000001) != 0)
  {
    sub_25BCB705C();
    sub_25BCB6A3C();
    v19 = v67;
    v45 = v68;
    v21 = v69;
    v22 = v70;
    v23 = v71;
  }

  else
  {
    v22 = 0;
    v24 = -1 << *(v19 + 32);
    v25 = *(v19 + 56);
    v45 = v19 + 56;
    v21 = ~v24;
    v26 = -v24;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v23 = v27 & v25;
  }

  v43[1] = v21;
  v44 = (v21 + 64) >> 6;
  v47 = v6 - 8;
  v48 = v19;
  v46 = v14;
  while (1)
  {
    v49 = v22;
    if ((v19 & 0x8000000000000000) == 0)
    {
      break;
    }

    v51 = v23;
    v31 = sub_25BCB706C();
    v28 = v50;
    v29 = v57;
    if (!v31)
    {
      OUTLINED_FUNCTION_17_22();
LABEL_26:
      sub_25BAB3820();
      goto LABEL_29;
    }

    sub_25BCB787C();
    swift_unknownObjectRelease();
    v56 = v51;
LABEL_22:
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v6);
    sub_25BBAC568();
    v34 = v33;
    sub_25BBAC568();
    v36 = v35;
    (*(*(v6 - 8) + 8))(v29, v6);
    v37 = sub_25BCB681C();
    if (v37 != sub_25BCB681C())
    {

LABEL_28:
      OUTLINED_FUNCTION_8_27();
      sub_25BAB3820();
      goto LABEL_29;
    }

    v59 = v34;
    v63 = v36;
    v38 = sub_25BCB68CC();
    OUTLINED_FUNCTION_7_2();
    WitnessTable = swift_getWitnessTable();
    sub_25BCB793C();

    v55 = v43;
    v63 = v65;
    v64 = v66;
    MEMORY[0x28223BE20](v40);
    v43[-4] = v6;
    v43[-3] = v28;
    v41 = v52;
    v43[-2] = v2;
    v43[-1] = v41;
    v59 = v38;
    v60 = v38;
    v61 = WitnessTable;
    v62 = WitnessTable;
    sub_25BCB715C();
    swift_getWitnessTable();
    v42 = sub_25BCB65AC();

    v23 = v56;
    v19 = v48;
    if ((v42 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v28 = v50;
  v29 = v57;
  if (v23)
  {
    v51 = v23;
    v30 = v23;
LABEL_21:
    v56 = (v30 - 1) & v30;
    (*(*(v6 - 8) + 16))(v57, *(v19 + 48) + *(*(v6 - 8) + 72) * (__clz(__rbit64(v30)) | (v22 << 6)), v6);
    goto LABEL_22;
  }

  v32 = v22;
  while (1)
  {
    v22 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      break;
    }

    if (v22 >= v44)
    {
      OUTLINED_FUNCTION_17_22();
      OUTLINED_FUNCTION_8_27();
      goto LABEL_26;
    }

    v30 = *(v45 + 8 * v22);
    ++v32;
    if (v30)
    {
      v51 = 0;
      goto LABEL_21;
    }
  }

  __break(1u);
}

void sub_25BBAE064(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v7 = a2[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = a3[4];
  sub_25BBADA10();
}

void sub_25BBAE088()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v38 = v12;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = OUTLINED_FUNCTION_2(TupleTypeMetadata2);
  v41 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v32 - v21;
  v50 = v11;
  v42 = v9;
  v43 = v7;
  v44 = v9;
  v45 = v7;
  v46 = v5;
  v47 = v3;
  v39 = v3;
  v40 = v1;
  v48 = v1;
  sub_25BCB68CC();
  sub_25BCB617C();
  OUTLINED_FUNCTION_7_2();
  swift_getWitnessTable();
  v23 = sub_25BCB664C();

  sub_25BCB617C();
  v24 = sub_25BCB674C();

  v50 = v24;
  if (v24 == sub_25BCB681C())
  {
LABEL_2:

    OUTLINED_FUNCTION_10_16();
    return;
  }

  v25 = *(TupleTypeMetadata2 + 48);
  v26 = v42;
  v36 = (v41 + 16);
  v37 = v25;
  v34 = v43 - 8;
  v35 = v42 - 8;
  v27 = (v41 + 8);
  while (1)
  {
    v28 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v28 & 1) == 0)
    {
      break;
    }

    (*(v41 + 16))(v22, v23 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v24, TupleTypeMetadata2);
LABEL_6:
    sub_25BCB68AC();
    v29 = *(TupleTypeMetadata2 + 48);
    (*(*(v26 - 8) + 32))(v19, v22, v26);
    (*(*(v43 - 8) + 32))(&v19[v29], &v22[v37], v43);
    sub_25BCB624C();
    sub_25BCB624C();
    (*v27)(v19, TupleTypeMetadata2);
    v30 = sub_25BCB681C();
    v24 = v50;
    if (v50 == v30)
    {
      goto LABEL_2;
    }
  }

  v31 = sub_25BCB717C();
  if (v33 == 8)
  {
    v49 = v31;
    (*v36)(v22, &v49, TupleTypeMetadata2);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_25BBAE3F0()
{
  sub_25BCB79CC();
  sub_25BBAE088();
  return sub_25BCB7A3C();
}

uint64_t sub_25BBAE470(void *a1, uint64_t a2)
{
  v4 = *(a2 - 16);
  v3 = *(a2 - 8);
  v5 = *v2;
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  return sub_25BBAE3F0();
}

void sub_25BBAE488(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  v6 = *v3;
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  sub_25BBAE088();
}

uint64_t sub_25BBAE4A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a3 - 16);
  v5 = *(a3 - 8);
  sub_25BCB79CC();
  v7 = *v3;
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  sub_25BBAE088();
  return sub_25BCB7A3C();
}

void sub_25BBAE500()
{
  OUTLINED_FUNCTION_9_18();
  v69 = v1;
  v3 = *(v2 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = OUTLINED_FUNCTION_2(TupleTypeMetadata2);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_50();
  v70 = v10;
  MEMORY[0x28223BE20](v11);
  v62 = &v56 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v56 - v14;
  v16 = swift_getTupleTypeMetadata2();
  v68 = sub_25BCB6E8C();
  v17 = OUTLINED_FUNCTION_2(v68);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_50();
  v67 = v22;
  MEMORY[0x28223BE20](v23);
  v25 = (&v56 - v24);
  v64 = v0;
  v71[3] = *v0;
  v26 = sub_25BCB68CC();
  OUTLINED_FUNCTION_7_2();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x25F876DF0](v71, v26, WitnessTable);
  v71[2] = v71[0];
  sub_25BCB754C();
  sub_25BCB751C();
  v59 = v26;
  v28 = sub_25BCB753C();
  v65 = (v19 + 32);
  v66 = v28;
  v57 = (v7 + 16);
  v58 = v3 - 8;
  v63 = v7;
  v56 = v7 + 8;
  v60 = v25;
  for (i = v16; ; v16 = i)
  {
    v29 = v67;
    sub_25BCB752C();
    (*v65)(v25, v29, v68);
    if (__swift_getEnumTagSinglePayload(v25, 1, v16) == 1)
    {

      OUTLINED_FUNCTION_10_16();
      return;
    }

    v30 = *v25;
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = *(v25 + *(v16 + 48) + v31);
    v33 = *(v3 - 8);
    v34 = *(v33 + 32);
    v35 = v3;
    v36 = v62;
    v34(v62);
    *&v36[v31] = v32;
    v37 = *(TupleTypeMetadata2 + 48);
    v38 = v36;
    v3 = v35;
    (v34)(v15, v38, v35);
    *&v15[v37] = v32;
    v39 = v70;
    (*v57)(v70, v15, TupleTypeMetadata2);
    v40 = *(v39 + *(TupleTypeMetadata2 + 48));

    v41 = *&v15[v37];
    v42 = &protocol witness table for Int8;
    v43 = MEMORY[0x277D84900];
    switch(*(*(v41 + 16) + 160))
    {
      case 1:
        v43 = MEMORY[0x277D84958];
        v42 = &protocol witness table for Int16;
        break;
      case 2:
        v43 = MEMORY[0x277D849A8];
        v42 = &protocol witness table for Int32;
        break;
      case 3:
        v43 = MEMORY[0x277D83B88];
        v42 = &protocol witness table for Int;
        break;
      case 4:
        v43 = MEMORY[0x277D84B78];
        v42 = &protocol witness table for UInt8;
        break;
      case 5:
        v43 = MEMORY[0x277D84C58];
        v42 = &protocol witness table for UInt16;
        break;
      case 6:
        v43 = MEMORY[0x277D84CC0];
        v42 = &protocol witness table for UInt32;
        break;
      case 7:
        v43 = MEMORY[0x277D84D38];
        v42 = &protocol witness table for UInt64;
        break;
      case 8:
        v43 = MEMORY[0x277D84DC8];
        v42 = &protocol witness table for Float16;
        break;
      case 9:
        v42 = sub_25BB18AFC();
        v43 = &type metadata for BFloat16;
        break;
      case 0xA:
        v43 = MEMORY[0x277D83A90];
        v42 = &protocol witness table for Float;
        break;
      case 0xB:
        v43 = MEMORY[0x277D839F8];
        v42 = &protocol witness table for Double;
        break;
      case 0xC:
        v43 = MEMORY[0x277D839B0];
        v42 = &protocol witness table for Bool;
        break;
      default:
        break;
    }

    v44 = sub_25BBABD24(v43, v42);
    if (v44 != 2 && *(v69 + 40) == 2 && (v44 & 1) != 0)
    {
      break;
    }

    v71[0] = v41;

    Tensor.place(on:)(v69);
    v45 = v71[0];
    v46 = v59;
    v47 = v64;
    sub_25BCB67BC();
    v48 = *v47;
    sub_25BC19AE4(v30, *v47);
    v49 = v63;
    v50 = v48 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v63 + 72) * v30;
    (*(v33 + 40))(v50, v70, v3);
    v51 = *(TupleTypeMetadata2 + 48);
    v52 = *(v50 + v51);
    *(v50 + v51) = v45;

    nullsub_1(v46, v53);
    (*(v49 + 8))(v15, TupleTypeMetadata2);
    v25 = v60;
  }

  v71[0] = 0;
  v71[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000002ALL, 0x800000025BCDF0B0);
  v54 = ComputeDevice.description.getter();
  MEMORY[0x25F876C90](v54);

  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDF0E0);
  MEMORY[0x25F876C90](0x656C676E6973, 0xE600000000000000);
  MEMORY[0x25F876C90](0xD00000000000002ELL, 0x800000025BCDF100);
  v55 = sub_25BCB7C1C();
  MEMORY[0x25F876C90](v55);

  MEMORY[0x25F876C90](0xD000000000000028, 0x800000025BCDF130);
  sub_25BCB74CC();
  __break(1u);
}

uint64_t sub_25BBAEB80()
{
  OUTLINED_FUNCTION_4_35();
  v2 = v0;
  type metadata accessor for KeyValuePairsCollection();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BBAE500();
  return v2;
}

uint64_t sub_25BBAEBF8@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v4 = v2[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  result = sub_25BBAEB80();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_25BBAEDB4()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  return sub_25BBADFFC() & 1;
}

uint64_t sub_25BBAEDD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[6];
  return sub_25BBAD020(a1, v2[2], v2[3], a2);
}

uint64_t sub_25BBAEE00()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  return sub_25BCB629C() & 1;
}

uint64_t sub_25BBAF110(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_25BCBAE50;
      *(v4 + 32) = v2;
      v5 = *(v3 + 16);
      swift_retain_n();

      *(v4 + 40) = sub_25BAC42B0();
      *(v4 + 48) = v6;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t acos(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_4_36(a1);
  if (!sub_25BAA80BC(v2, &unk_286D42270))
  {
    LOBYTE(v27) = v2;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v24[0] = v1;
    v24[1] = &v27;
    OUTLINED_FUNCTION_0_51();
    OUTLINED_FUNCTION_5_34();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_24_11();
  OUTLINED_FUNCTION_15_22();
  *&v27 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryArithmeticOps.swift";
  *(&v27 + 1) = 120;
  v28 = 2;
  v29 = xmmword_25BCC6DB0;
  v30 = "init(id:operator:operand:creationSite:backward:)";
  v31 = 48;
  v32 = 2;
  type metadata accessor for UnaryArithmeticOperation();
  OUTLINED_FUNCTION_23_16();
  OUTLINED_FUNCTION_10_23(0, 0, 0, 1, v3, &v27);
  v4 = OUTLINED_FUNCTION_7_26();
  sub_25BAA51C8(v4, v26);
  sub_25BAA51C8(v26, v25);
  v5 = type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_9_7();
  swift_retain_n();
  v6 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v6, v7, v8, v9, v10, v11, v12, v13, v24[0]);

  sub_25BAA4AF4(v24);
  v14 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v14, v15, v16, v17, v18, v19, v20, v21, v24[0]);

  OUTLINED_FUNCTION_21_18();
  sub_25BAA4AF4(v24);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  LOBYTE(v24[0]) = 1;
  sub_25BABE62C(v2);
  OUTLINED_FUNCTION_17_7();
  v22 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v22);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_9_7();

  result = sub_25BA9C2C8(v26);
  *v1 = v5;
  return result;
}

uint64_t sub_25BBAF3C4(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = MEMORY[0x277D84F90];
      v10 = v4;
      sub_25BAA51C8(v13, v9);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v11, &unk_286D44F98, &v10, v9, &v12);
      sub_25BA9C2C8(v13);
      v5 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      *&v13[0] = v2;
      static Tensor.- prefix(_:)(v13);
      v12 = v5;
      *&v13[0] = v3;
      Tensor.squared()();
      static Tensor.- infix(_:_:)();

      v12 = *&v13[0];
      rsqrt(_:)(&v11, &v12);

      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v13[0];
      v7 = *(v3 + 16);

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v8;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBAF874(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = MEMORY[0x277D84F90];
      v10 = v4;
      sub_25BAA51C8(v13, v9);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v11, &unk_286D44FC0, &v10, v9, &v12);
      sub_25BA9C2C8(v13);
      v5 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      v9[0] = v2;
      *&v13[0] = v3;
      Tensor.squared()();
      v11 = v5;
      static Tensor.- infix(_:_:)();

      v12 = *&v13[0];
      rsqrt(_:)(&v11, &v12);

      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v13[0];
      v7 = *(v3 + 16);

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v8;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBAFD4C(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void *__return_ptr, uint64_t *, uint64_t *))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      OUTLINED_FUNCTION_29_13(result, a2);
      v8 = *(*(v4 + 16) + 160);
      OUTLINED_FUNCTION_8_28();
      OUTLINED_FUNCTION_16_26(v9, v34);

      v18 = OUTLINED_FUNCTION_17_23(v10, v11, v12, v13, v14, v15, v16, v17, v35, v37, v38, v39, v40, v41, v42, v43, v44);
      Tensor.init(shape:coercingScalars:scalarType:on:)(v18, v5, v19, v20, v21);
      sub_25BA9C2C8(v46);
      v22 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v23 = OUTLINED_FUNCTION_32_11();
      *(v23 + 16) = xmmword_25BCBAE50;
      v45 = v22;
      v46[0] = v4;
      Tensor.squared()();
      a4(v46, &v45, &v44);

      v45 = v46[0];
      rsqrt(_:)(&v44, &v45);

      OUTLINED_FUNCTION_28_13(v24, v25, v26, v27, v28, v29, v30, v31, v36, v6);
      static Tensor.* infix(_:_:)();

      *(v23 + 32) = v46[0];
      v32 = *(v4 + 16);

      *(v23 + 40) = sub_25BAC42B0();
      *(v23 + 48) = v33;

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB01F0(uint64_t result, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, void *, uint64_t *))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      OUTLINED_FUNCTION_29_13(result, a2);
      v8 = *(*(v4 + 16) + 160);
      OUTLINED_FUNCTION_8_28();
      OUTLINED_FUNCTION_16_26(v9, v34);

      v18 = OUTLINED_FUNCTION_17_23(v10, v11, v12, v13, v14, v15, v16, v17, v35, v37, v38, v39, v40, v41, v42, v43, v44);
      Tensor.init(shape:coercingScalars:scalarType:on:)(v18, v5, v19, v20, v21);
      sub_25BA9C2C8(v46);
      v22 = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v23 = OUTLINED_FUNCTION_32_11();
      *(v23 + 16) = xmmword_25BCBAE50;
      v45 = v4;
      v46[0] = v22;
      Tensor.squared()();
      a4(&v45, v46, &v44);

      OUTLINED_FUNCTION_28_13(v24, v25, v26, v27, v28, v29, v30, v31, v36, v6);
      static Tensor./ infix(_:_:)();

      *(v23 + 32) = v46[0];
      v32 = *(v4 + 16);

      *(v23 + 40) = sub_25BAC42B0();
      *(v23 + 48) = v33;

      return v23;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB0638(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_25BCBAE50;
      v8 = v2;

      static Tensor.- prefix(_:)(&v8);
      v8 = v3;
      sin(_:)(&v7, &v8);
      static Tensor.* infix(_:_:)();

      *(v4 + 32) = v8;
      v5 = *(v3 + 16);

      *(v4 + 40) = sub_25BAC42B0();
      *(v4 + 48) = v6;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB0D60(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = MEMORY[0x277D84F90];
      v10 = v4;
      sub_25BAA51C8(v13, v9);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v11, &unk_286D45088, &v10, v9, &v12);
      sub_25BA9C2C8(v13);
      v5 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      *&v13[0] = v2;
      v9[0] = v3;
      exp2(_:)(&v12, v9);
      static Tensor.* infix(_:_:)();

      v12 = v5;
      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v13[0];
      v7 = *(v3 + 16);

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v8;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t exp10(_:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_35_10(a1);
  v3 = *(v2 + 16);
  v4 = *(v3 + 160);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    v19 = v4;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v30[0] = v1;
    v30[1] = &v19;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28();
  }

  v5 = *(v3 + 160);
  OUTLINED_FUNCTION_8_28();
  v7 = OUTLINED_FUNCTION_37_8(v6, v15, v17);
  OUTLINED_FUNCTION_36_9(v7, &unk_286D450B0, v8, v9, v10, v11, v12, v13, v16, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  sub_25BA9C2C8(v30);
  v30[0] = v2;
  pow(_:_:)();
}

uint64_t sub_25BBB1280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(*(*a1 + 16) + 160);
  if (!sub_25BAA80BC(v6, &unk_286D42270))
  {
    LOBYTE(v10[0]) = v6;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v15[0] = a3;
    v15[1] = v10;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28();
  }

  v15[0] = v5;
  log(_:)(&v14, v15);
  v7 = *(*(v5 + 16) + 160);
  OUTLINED_FUNCTION_8_28();
  v12 = MEMORY[0x277D84F90];
  v11 = v8;
  sub_25BAA51C8(v15, v10);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v12, a2, &v11, v10, &v13);
  sub_25BA9C2C8(v15);
  v15[0] = v13;
  log(_:)(v10, v15);

  static Tensor./ infix(_:_:)();
}

uint64_t log(onePlus:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_35_10(a1);
  v3 = *(v2 + 16);
  v4 = *(v3 + 160);
  if (!sub_25BAA80BC(v4, &unk_286D42270))
  {
    LOBYTE(v29[0]) = v4;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v35[0] = v1;
    v35[1] = v29;
    OUTLINED_FUNCTION_9_27();
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28();
  }

  v5 = *(v3 + 160);
  OUTLINED_FUNCTION_8_28();
  v7 = OUTLINED_FUNCTION_37_8(v6, v23, v26);
  OUTLINED_FUNCTION_36_9(v7, &unk_286D45150, v8, v9, v10, v11, v12, v13, v24, v27, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v30, v31, v32, v33, v34);
  v14 = sub_25BA9C2C8(v35);
  OUTLINED_FUNCTION_28_13(v14, v15, v16, v17, v18, v19, v20, v21, v25, v28);
  static Tensor.+ infix(_:_:)();

  v29[0] = v35[0];
  log(_:)(v1, v29);
}

uint64_t sub_25BBB1834(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v12 = MEMORY[0x277D84F90];
      v11 = v4;
      sub_25BAA51C8(v13, v10);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v12, &unk_286D451A0, &v11, v10, &v9);
      sub_25BA9C2C8(v13);
      static Tensor.- prefix(_:)(&v9);

      *&v13[0] = v3;
      Tensor.squared()();
      static Tensor./ infix(_:_:)();

      v12 = v2;
      v9 = *&v13[0];

      static Tensor.* infix(_:_:)();

      v5 = v10[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      *(v6 + 32) = v5;
      v7 = *(v3 + 16);

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v8;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB1B68(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      v5 = MEMORY[0x277D84F90];
      v17 = MEMORY[0x277D84F90];
      LOBYTE(v15) = v4;
      sub_25BAA51C8(&v19, v16);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v17, &unk_286D451C8, &v15, v16, &v18);
      sub_25BA9C2C8(&v19);
      v6 = v18;
      v7 = *(*(v3 + 16) + 160);
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      v17 = v5;
      LOBYTE(v15) = v7;
      sub_25BAA51C8(&v19, v16);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v17, &unk_286D451F0, &v15, v16, &v18);
      sub_25BA9C2C8(&v19);
      v8 = v18;
      v9 = *(*(v3 + 16) + 160);
      v22 = 0;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      v17 = v5;
      LOBYTE(v15) = v9;
      sub_25BAA51C8(&v19, v16);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v17, &unk_286D45218, &v15, v16, &v18);
      sub_25BA9C2C8(&v19);
      v10 = v18;
      *&v19 = v2;
      v16[0] = v6;
      static Tensor.* infix(_:_:)();
      *&v19 = v10;
      v16[0] = v3;
      v17 = v8;
      pow(_:_:)();
      static Tensor.* infix(_:_:)();

      static Tensor./ infix(_:_:)();

      v11 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_25BCBAE50;
      *(v12 + 32) = v11;
      v13 = *(v3 + 16);

      *(v12 + 40) = sub_25BAC42B0();
      *(v12 + 48) = v14;

      return v12;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB1DFC(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v14[0] = *(a2 + 32);
      v3 = v14[0];

      sqrt(_:)(&v18, v14);
      v4 = v18;
      v5 = *(*(v18 + 16) + 160);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v6 = MEMORY[0x277D84F90];
      v16 = MEMORY[0x277D84F90];
      v15 = v5;
      sub_25BAA51C8(&v18, v14);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v16, &unk_286D45240, &v15, v14, &v17);
      sub_25BA9C2C8(&v18);
      v7 = v17;
      v8 = *(*(v4 + 16) + 160);
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v16 = v6;
      v15 = v8;
      sub_25BAA51C8(&v18, v14);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v16, &unk_286D45268, &v15, v14, &v17);
      sub_25BA9C2C8(&v18);
      v9 = v17;
      v14[0] = v7;
      v17 = v4;
      *&v18 = v9;
      static Tensor.* infix(_:_:)();
      static Tensor./ infix(_:_:)();

      v16 = v18;
      v17 = v2;

      static Tensor.* infix(_:_:)();

      v10 = v14[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25BCBAE50;
      *(v11 + 32) = v10;
      v12 = *(v3 + 16);

      *(v11 + 40) = sub_25BAC42B0();
      *(v11 + 48) = v13;

      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB2358(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      OUTLINED_FUNCTION_29_13(result, a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v5 = OUTLINED_FUNCTION_32_11();
      *(v5 + 16) = xmmword_25BCBAE50;
      v8[1] = v4;
      v9 = v2;

      v3(v8, &v9);
      Tensor.squared()();

      static Tensor./ infix(_:_:)();

      *(v5 + 32) = v9;
      v6 = *(v2 + 16);

      *(v5 + 40) = sub_25BAC42B0();
      *(v5 + 48) = v7;

      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB276C(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v4 = OUTLINED_FUNCTION_32_11();
      *(v4 + 16) = xmmword_25BCBAE50;
      v7[0] = v2;
      swift_retain_n();

      Tensor.init(zerosLike:)(v7);
      *(v4 + 32) = v7[1];
      v5 = *(v3 + 16);

      *(v4 + 40) = sub_25BAC42B0();
      *(v4 + 48) = v6;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB29BC(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(*(v3 + 16) + 160);
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v11 = MEMORY[0x277D84F90];
      v10 = v4;
      sub_25BAA51C8(v13, v9);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v11, &unk_286D45290, &v10, v9, &v12);
      sub_25BA9C2C8(v13);
      v5 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_25BCBAE50;
      v9[0] = v2;
      v12 = v3;
      *&v13[0] = v5;
      static Tensor.* infix(_:_:)();
      static Tensor.* infix(_:_:)();

      *(v6 + 32) = *&v13[0];
      v7 = *(v3 + 16);

      *(v6 + 40) = sub_25BAC42B0();
      *(v6 + 48) = v8;

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Tensor.clamped(to:)@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  v7 = *v3;
  v8 = *(*v3 + 16);
  v9 = *(v8 + 160);
  if (!sub_25BAA80BC(v9, &unk_286D42270))
  {
    LOBYTE(v54) = v9;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_30();
    v68[0] = a1;
    v68[1] = &v54;
    v68[2] = 0;
    v68[3] = 0;
    v69 = 6;
    v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v71 = 2;
    v72 = 3;
    OUTLINED_FUNCTION_6_36();
    sub_25BADDD28();
  }

  v10 = *(v8 + 160);
  OUTLINED_FUNCTION_34_11();
  v11 = MEMORY[0x277D84F90];
  v66 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  HIBYTE(v60) = v10;
  v13 = sub_25BAA51C8(v68, &v54);
  v21 = OUTLINED_FUNCTION_33(v13, v14, v15, v16, v17, v18, v19, v20, 1, 2, v42, v44, v46, v48, v50, v52, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v21, inited, v22, v23, v24);
  sub_25BA9C2C8(v68);
  v25 = v67;
  v26 = *(*(v7 + 16) + 160);
  OUTLINED_FUNCTION_34_11();
  v66 = v11;
  v27 = swift_initStackObject();
  *(v27 + 16) = v41;
  *(v27 + 32) = a3;
  HIBYTE(v60) = v26;
  v28 = sub_25BAA51C8(v68, &v54);
  v36 = OUTLINED_FUNCTION_33(v28, v29, v30, v31, v32, v33, v34, v35, v41, *(&v41 + 1), v43, v45, v47, v49, v51, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v36, v27, v37, v38, v39);
  sub_25BA9C2C8(v68);
  v68[0] = v7;
  v54 = v67;
  min(_:_:)();
  v68[0] = v25;
  max(_:_:)();
}

uint64_t OUTLINED_FUNCTION_36_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, unsigned __int8 a20, uint64_t a21)
{

  return Tensor.init(shape:coercingScalars:scalarType:on:)(&a21, a2, &a20, &a11, &a10);
}

uint64_t sub_25BBB2D20()
{
  v0 = sub_25BCB761C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_25BBB2D6C(char a1)
{
  if (!a1)
  {
    return 6713957;
  }

  if (a1 == 1)
  {
    return 0x64696F6D676973;
  }

  return 0x4C6552796B61656CLL;
}

uint64_t sub_25BBB2DE4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BBB2D20();
  *a2 = result;
  return result;
}

uint64_t sub_25BBB2E14@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BBB2D6C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BBB2E50()
{
  v1 = 0x64696F6D676973;
  if (*(v0 + 128) != 1)
  {
    v1 = 0x4C6552796B61656CLL;
  }

  if (*(v0 + 128))
  {
    return v1;
  }

  else
  {
    return 6713957;
  }
}

uint64_t sub_25BBB2EA8(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 128) = a4;
  *(v10 + 132) = a6;
  *(v10 + 136) = BYTE4(a6) & 1;
  *(v10 + 140) = a7;
  *(v10 + 144) = BYTE4(a7) & 1;
  if (!a3)
  {
    a1 = sub_25BC7C6B4(a4);
  }

  v13 = a8[1];
  v15[0] = *a8;
  v15[1] = v13;
  *v16 = a8[2];
  *&v16[9] = *(a8 + 41);
  v17 = 0;
  *(v10 + 112) = a9;
  *(v10 + 120) = a10;
  return sub_25BAB9A8C(a1, a2, a3, a5, v15);
}

uint64_t sub_25BBB2F6C()
{
  sub_25BBB2E50();
  sub_25BCB625C();

  if (*(v0 + 136) == 1)
  {
    sub_25BCB79EC();
  }

  else
  {
    v1 = *(v0 + 132);
    sub_25BCB79EC();
    sub_25BCB7A0C();
  }

  if (*(v0 + 144) == 1)
  {
    return sub_25BCB79EC();
  }

  v3 = *(v0 + 140);
  sub_25BCB79EC();
  return sub_25BCB7A0C();
}

uint64_t sub_25BBB3050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (!sub_25BB07E0C(a1, a2))
  {
    v5 = sub_25BAC4018();
    swift_beginAccess();
    v6 = *(v2 + 112);
    if (v5 != sub_25BAC4018())
    {
      return 0;
    }

    v8 = *(v3 + 112);
    *(v3 + 112) = a2;
  }

  return 1;
}

uint64_t sub_25BBB3104(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6, uint64_t a7, uint64_t a8)
{
  v8[16] = a5;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x78616D74666F73, 0xE700000000000000);
  }

  v13 = a6[1];
  v15[0] = *a6;
  v15[1] = v13;
  *v16 = a6[2];
  *&v16[9] = *(a6 + 41);
  v17 = 0;
  v8[14] = a7;
  v8[15] = a8;
  return sub_25BAB9A8C(a1, a2, a3, a4, v15);
}

_BYTE *storeEnumTagSinglePayload for ActivationOperation.Operator(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BBB32A4()
{
  result = qword_27FBB5DB0;
  if (!qword_27FBB5DB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB5DB8, qword_25BCC6E60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5DB0);
  }

  return result;
}

unint64_t sub_25BBB330C()
{
  result = qword_27FBB5DC0;
  if (!qword_27FBB5DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5DC0);
  }

  return result;
}

uint64_t sub_25BBB33C8(uint64_t a1)
{
  result = sub_25BBB3450(qword_28154F128, type metadata accessor for SoftmaxOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBB340C(uint64_t a1)
{
  result = sub_25BBB3450(&qword_27FBB3FB8, type metadata accessor for ActivationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBB3450(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BBB34A0()
{
  v1 = v0;
  if (qword_28154E1F0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_28154E1F8;
  type metadata accessor for LazyTensorFunctionExecutorCache();
  swift_allocObject();
  *(v1 + 16) = sub_25BBC8CAC(v2);
  return v1;
}

uint64_t sub_25BBB3568(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    sub_25BCB654C();
    OUTLINED_FUNCTION_1_41();
    sub_25BAFE070();
    v15 = v30;
    v8 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v31 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v32 = (v15 + 32 * v8);
      v32[4] = v6;
      v32[5] = v10;
      v32[6] = v11;
      v32[7] = v12;
      return v15;
    }

LABEL_41:
    sub_25BAFE070();
    v15 = v33;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v43 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v41 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v41;
        goto LABEL_30;
      }

      OUTLINED_FUNCTION_0_53();
      v17 = sub_25BCB652C();
      v11 = v18;
      v44[0] = v17;
      v44[1] = v18;
      v19 = v45(v44);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      OUTLINED_FUNCTION_0_53();
      v16 = sub_25BCB642C();
    }

    v22 = (v41 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v41 >> 14)
    {
      break;
    }

    v42 = sub_25BCB654C();
    v37 = v24;
    v38 = v23;
    v36 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v43 + 16);
      sub_25BAFE070();
      v43 = v28;
    }

    v12 = *(v43 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v43 + 24) >> 1)
    {
      sub_25BAFE070();
      v43 = v29;
    }

    *(v43 + 16) = v11;
    v26 = (v43 + 32 * v12);
    v26[4] = v42;
    v26[5] = v38;
    v26[6] = v37;
    v26[7] = v36;
LABEL_20:
    OUTLINED_FUNCTION_0_53();
    v16 = sub_25BCB642C();
    if ((v22 & 1) == 0 && *(v43 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v43;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        sub_25BCB654C();
        OUTLINED_FUNCTION_1_41();
        v15 = v43;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v31 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v34 = *(v15 + 16);
      sub_25BAFE070();
      v15 = v35;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB38C4(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, unint64_t a5)
{
  v45 = a3;
  if (a1 < 0)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = a5;
  v13 = *(a5 + 16);
  if (!a1 || !v13)
  {
    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v5 = sub_25BABAF60(0, v13, a5);
    v9 = v25;
    v10 = v26;
    v11 = v27;

    sub_25BAFE4A8();
    v15 = v28;
    v7 = *(v28 + 16);
    v29 = *(v28 + 24);
LABEL_35:
    v8 = v7 + 1;
    if (v7 < v29 >> 1)
    {
LABEL_36:
      *(v15 + 16) = v8;
      v33 = (v15 + 32 * v7);
      v33[4] = v5;
      v33[5] = v9;
      v33[6] = v10;
      v33[7] = v11;
      return v15;
    }

LABEL_40:
    sub_25BAFE4A8();
    v15 = v34;
    goto LABEL_36;
  }

  v5 = a4;
  v41 = a2;
  v11 = 0;
  v37 = a5 + 32;
  v14 = -v13;
  v15 = MEMORY[0x277D84F90];
  v39 = -v13;
  v40 = *(a5 + 16);
  while (1)
  {
    v43 = v15;
    v9 = 2 * v11;
    while (2)
    {
      v16 = 0;
      v15 = v14 + v11;
      v42 = v9;
      while (1)
      {
        if (!(v15 + v16))
        {
          v15 = v43;
          v21 = v40;
          goto LABEL_28;
        }

        if ((v11 + v16) >= *(v8 + 16))
        {
          __break(1u);
          goto LABEL_39;
        }

        v17 = v8 + 8 * v9;
        v10 = *(v17 + 40);
        v44[0] = *(v17 + 32);
        v44[1] = v10;
        sub_25BCB617C();
        v18 = v45(v44);
        if (v6)
        {

          return v15;
        }

        v7 = v18;

        if (v7)
        {
          break;
        }

        ++v16;
        v9 += 2;
      }

      if (!v16 && (v41 & 1) != 0)
      {
        ++v11;
        v9 = v42 + 2;
        v14 = v39;
        continue;
      }

      break;
    }

    if (v11 < 0)
    {
      break;
    }

    v15 = v43;
    if (*(v8 + 16) < (v11 + v16))
    {
      goto LABEL_44;
    }

    sub_25BCB617C();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = *(v43 + 16);
      sub_25BAFE4A8();
      v15 = v23;
    }

    v7 = *(v15 + 16);
    v10 = v7 + 1;
    if (v7 >= *(v15 + 24) >> 1)
    {
      sub_25BAFE4A8();
      v15 = v24;
    }

    *(v15 + 16) = v10;
    v20 = (v15 + 32 * v7);
    v20[4] = v8;
    v20[5] = v37;
    v20[6] = v11;
    v20[7] = v9 + 1;
    v11 += v16 + 1;
    v14 = v39;
    v21 = v40;
    if (v10 == a1)
    {
LABEL_28:
      if (v11 == v21 && (v41 & 1) != 0)
      {

        return v15;
      }

      if (v21 < v11)
      {
        __break(1u);
      }

      else
      {
        v5 = sub_25BABAF60(v11, v21, v8);
        v9 = v30;
        v10 = v31;
        v11 = v32;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_34:
          v7 = *(v15 + 16);
          v29 = *(v15 + 24);
          goto LABEL_35;
        }
      }

      v35 = *(v15 + 16);
      sub_25BAFE4A8();
      v15 = v36;
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

unint64_t sub_25BBB3BEC()
{
  result = qword_27FBB5DC8;
  if (!qword_27FBB5DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5DC8);
  }

  return result;
}

uint64_t sub_25BBB3C40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  result = sub_25BC458D0();
  *a2 = result;
  a2[1] = v7;
  return result;
}

uint64_t sub_25BBB3C9C(uint64_t a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v27[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v27[-v10];
  v12 = sub_25BAA07E0();
  sub_25BAB4D78(0, (v12 & 0xC000000000000001) == 0, v12);
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](0, v12);
  }

  else
  {
    v13 = *(v12 + 32);
  }

  v14 = sub_25BAC4018();

  if (!sub_25BB3EE04(v14, a1))
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v22 = xmmword_25BCBCE20;
    *(v22 + 16) = 0x4000;
    swift_willThrow();
    return v8;
  }

  type metadata accessor for NativeTensorStorage();
  result = sub_25BABCFCC();
  if (*(result + 16))
  {
    v16 = *(result + 32);
    sub_25BCB617C();

    v29 = v16;
    result = sub_25BABCFCC();
    if (*(result + 16))
    {
      v17 = *(result + 40);

      v28 = v17;
      sub_25BBC0130(&v29, &v28, 0);
      v19 = v18;
      v20 = *(*(v3 + 40) + 152);
      if (v20[2])
      {
        v21 = *(*(v3 + 40) + 152);
        sub_25BCB617C();
      }

      else
      {
        v20 = &unk_286D431F8;
      }

      sub_25BBF5A38(v20, 0);

      v23 = sub_25BCB54EC();
      __swift_storeEnumTagSinglePayload(v11, 0, 1, v23);
      v24 = *(v19 + 16);
      if (v24[2])
      {
        v25 = *(v19 + 16);
        sub_25BCB617C();
      }

      else
      {
        v24 = &unk_286D43220;
      }

      sub_25BBF5A38(v24, 0);

      __swift_storeEnumTagSinglePayload(v8, 0, 1, v23);
      ObjectType = swift_getObjectType();
      MEMORY[0x28223BE20](ObjectType);
      *&v27[-48] = v19;
      *&v27[-40] = &off_286D4DBE0;
      *&v27[-32] = v8;
      *&v27[-24] = sub_25BBB4048;
      *&v27[-16] = 0;
      sub_25BC675C0(sub_25BB0E9FC, &v27[-64], MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
      if (v2)
      {
        swift_unknownObjectRelease();

        sub_25BB0EA20(v11);
        sub_25BB0EA20(v8);
      }

      else
      {
        sub_25BB0EA20(v11);
        sub_25BB0EA20(v8);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v8 = swift_allocObject();
        *(v8 + 1) = xmmword_25BCBAE50;
        *(v8 + 4) = v19;
        *(v8 + 5) = &off_286D4DBE0;
        swift_unknownObjectRelease();
      }

      return v8;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_25BBB4088(uint64_t a1)
{
  result = sub_25BBB40B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25BBB40B0()
{
  result = qword_27FBB3FC8;
  if (!qword_27FBB3FC8)
  {
    type metadata accessor for TileOperation();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB3FC8);
  }

  return result;
}

uint64_t sub_25BBB410C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v5 = result;
  v7 = *(a2 + 16);
  v8 = (a2 + 56);
  if (v7)
  {
    while (1)
    {
      v9 = *v8;
      v10 = *(v8 - 2);
      v11 = *(v8 - 1);
      v13 = *(v8 - 3);
      *&v14 = v10;
      *(&v14 + 1) = v11;
      v15 = v9;
      sub_25BCB617C();
      sub_25BCB617C();
      result = v5(&v13);
      if (v4)
      {
      }

      if (result)
      {
        break;
      }

      v8 += 32;
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    v12 = v15;
    *a3 = v13;
    *(a3 + 8) = v14;
    *(a3 + 24) = v12;
  }

  else
  {
LABEL_5:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 24) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_25BBB4200(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 48;
  v19 = MEMORY[0x277D84F90];
  v17 = a1 + 48;
LABEL_2:
  v4 = (v3 + 24 * v1);
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_15:
      __break(1u);
      return;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_15;
    }

    v6 = *(v4 - 1);
    v7 = *v4;
    v8 = *(v4 - 2);
    swift_bridgeObjectRetain_n();
    v9 = v7;
    v10 = sub_25BADBE78(v18, v8, v6);

    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = *(v19 + 16);
        sub_25BAB1E30();
        v19 = v15;
      }

      v3 = v17;
      v11 = *(v19 + 16);
      if (v11 >= *(v19 + 24) >> 1)
      {
        sub_25BAB1E30();
        v19 = v16;
      }

      v12 = v19;
      *(v19 + 16) = v11 + 1;
      v13 = v12 + 16 * v11;
      *(v13 + 32) = v8;
      *(v13 + 40) = v6;
      v1 = v5;
      goto LABEL_2;
    }

    ++v1;
    v4 += 3;
  }
}

id sub_25BBB4368()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    if (v2 < 0)
    {
      v8 = *v0;
    }

    v3 = sub_25BCB749C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  sub_25BAB4D78(*(v0 + 8), (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x25F8779B0](v4, v2);
  }

  else
  {
    v1 = *(v2 + 8 * v4 + 32);
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v6 = sub_25BA9BEA0(v5);
    v4 = *(v0 + 24);
    if (v4 == v6)
    {

      goto LABEL_11;
    }

    sub_25BAB4D78(*(v0 + 24), (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {
      result = *(v5 + 8 * v4 + 32);
      goto LABEL_14;
    }
  }

  result = MEMORY[0x25F8779B0](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB44A8(uint64_t a1, unint64_t a2)
{
  v3 = sub_25BCB738C();
  v4 = sub_25BAAF54C(a2);
  if (v4 >= v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  v29 = MEMORY[0x277D84F90];
  sub_25BB00694(0, v5 & ~(v5 >> 63), 0);
  sub_25BCB737C();
  if (v5 < 0)
  {
LABEL_40:
    __break(1u);
LABEL_41:
  }

  else
  {
    v26 = a2 >> 62;
    v24 = a2;
    if (!v5)
    {
      v7 = a2 & 0xFFFFFFFFFFFFFF8;
      v25 = a2 & 0xC000000000000001;
      goto LABEL_21;
    }

    v6 = 0;
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
    v25 = a2 & 0xC000000000000001;
    v23 = a2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      result = sub_25BCB75DC();
      if (!v28)
      {
        break;
      }

      if (v26)
      {
        v9 = sub_25BCB749C();
      }

      else
      {
        v9 = *(v7 + 16);
      }

      if (v6 == v9)
      {
        goto LABEL_41;
      }

      if (v25)
      {
        v10 = MEMORY[0x25F8779B0](v6, a2);
      }

      else
      {
        if (v6 >= *(v7 + 16))
        {
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v10 = *(a2 + 8 * v6 + 32);
      }

      v11 = *(v10 + 152);
      v12 = *(v10 + 160);
      sub_25BCB617C();

      v14 = *(v29 + 16);
      v13 = *(v29 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_25BB00694(v13 > 1, v14 + 1, 1);
      }

      ++v6;
      *(v29 + 16) = v14 + 1;
      v15 = v29 + 32 * v14;
      *(v15 + 32) = v27;
      *(v15 + 40) = v28;
      *(v15 + 48) = v11;
      *(v15 + 56) = v12;
      v7 = v23;
      a2 = v24;
      if (v5 == v6)
      {
        while (1)
        {
LABEL_21:
          sub_25BCB75DC();
          if (!v28)
          {

            return v29;
          }

          v16 = v26 ? sub_25BCB749C() : *(v7 + 16);
          if (v5 == v16)
          {
            break;
          }

          if (v25)
          {
            v17 = MEMORY[0x25F8779B0](v5, a2);
          }

          else
          {
            if (v5 >= *(v7 + 16))
            {
              goto LABEL_39;
            }

            v17 = *(a2 + 8 * v5 + 32);
          }

          if (__OFADD__(v5, 1))
          {
            goto LABEL_38;
          }

          v18 = *(v17 + 152);
          v19 = *(v17 + 160);
          sub_25BCB617C();

          v21 = *(v29 + 16);
          v20 = *(v29 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_25BB00694(v20 > 1, v21 + 1, 1);
          }

          *(v29 + 16) = v21 + 1;
          v22 = v29 + 32 * v21;
          *(v22 + 32) = v27;
          *(v22 + 40) = v28;
          *(v22 + 48) = v18;
          *(v22 + 56) = v19;
          ++v5;
          a2 = v24;
        }

        return v29;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBB47B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v11 = a1;
  v12 = a2;
  sub_25BBB410C(sub_25BBB9C20, a3, &v7);
  if (v8)
  {
    v5 = v10;
    *a4 = v9;
    *(a4 + 8) = v5;
  }

  else
  {
    sub_25BB3D6B4(v7, 0);
    v7 = 0;
    v8 = 0xE000000000000000;
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000012, 0x800000025BCDF9D0);
    sub_25BCB73CC();
    MEMORY[0x25F876C90](0xD000000000000015, 0x800000025BCDF9F0);
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBB4908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a5 && a2 == a6)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C() & 1;
  }
}

unint64_t sub_25BBB4954(char a1)
{
  result = 0x696D207475706E49;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x6D2074757074754FLL;
      break;
    default:
      result = 0xD000000000000016;
      break;
  }

  return result;
}

uint64_t *sub_25BBB4A0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v32 = *v2;
  v4 = sub_25BCB6CDC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v6 = sub_25BCB6CFC();
  v7 = OUTLINED_FUNCTION_2(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  v15 = sub_25BCB603C();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_1();
  sub_25BB2BA50(0, &qword_28154BDB0, 0x277D85C78);
  sub_25BCB601C();
  (*(v9 + 104))(v14, *MEMORY[0x277D85268], v6);
  *&v36 = MEMORY[0x277D84F90];
  sub_25BB72FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4E50, &qword_25BCC2AB0);
  sub_25BBB8DF0();
  sub_25BCB702C();
  v2[12] = sub_25BCB6D2C();
  v2[2] = a2;
  swift_unownedRetain();
  sub_25BBB4E90(a1, a2, &v38);
  if (v35)
  {
    sub_25BA9AC78(a1);
    v17 = v2[2];
    swift_unownedRelease();

    OUTLINED_FUNCTION_10_24();
  }

  else
  {
    v18 = v38;
    v19 = v39;
    v49 = v39;
    v20 = v40;
    v21 = v41;
    v3[3] = v38;
    v3[4] = v19;
    v22 = v42;
    v47 = v42;
    v48 = v20;
    v3[5] = v20;
    v3[6] = v21;
    v3[7] = v22;
    *&v36 = MEMORY[0x277D84FA0];
    v23 = v18;
    sub_25BAA486C(&v49, v37, &qword_27FBB5DD8, &qword_25BCC7138);
    sub_25BAA486C(&v48, v37, &unk_27FBB5DE0, &qword_25BCC7140);
    sub_25BCB617C();
    sub_25BAA486C(&v47, v37, &unk_27FBB5DE0, &qword_25BCC7140);
    sub_25BBB4200(v21);
    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
    v26 = swift_allocObject();
    *(v26 + 16) = v25;

    v27 = *(a1 + 152);
    sub_25BCB617C();
    v28 = sub_25BBB44A8(v26, v27);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v36 + 1) = sub_25BCB614C();
    v29 = sub_25BAF9B54(v28);

    *&v36 = v29;
    sub_25BAFC990();
    sub_25BA9AC78(a1);
    *(v3 + 4) = v36;
    v30 = v44;
    v45 = v44;
    v46 = v43;
    v3[10] = v43;
    v3[11] = v30;
    sub_25BAA486C(&v46, &v36, &qword_27FBB5DD8, &qword_25BCC7138);
    sub_25BAA486C(&v45, &v36, &unk_27FBB5DE0, &qword_25BCC7140);
    sub_25BBB8E54(&v38);
  }

  return v3;
}

double sub_25BBB4E90@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v31[2] = a2;
  v35 = a1;
  v5 = sub_25BCB5EBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v31 - v11;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v13 = sub_25BCB5EEC();
  __swift_project_value_buffer(v13, qword_28154BEB8);
  sub_25BCB5EAC();
  v14 = sub_25BCB5EDC();
  v15 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v16 = swift_slowAlloc();
    v31[1] = v3;
    v17 = a3;
    v18 = v16;
    *v16 = 0;
    v19 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v14, v15, v19, "Build MPSGraph", "", v18, 2u);
    v20 = v18;
    a3 = v17;
    MEMORY[0x25F8797F0](v20, -1, -1);
  }

  (*(v6 + 16))(v10, v12, v5);
  v21 = sub_25BCB5F2C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = sub_25BCB5F1C();
  (*(v6 + 8))(v12, v5);
  type metadata accessor for MPSGraphExecutor.MPSGraphExecutorComponentsBuilder();
  swift_initStackObject();

  v26 = sub_25BBB8CB0(v25);
  v27 = v35;
  sub_25BBB71D0(v35, v26);
  v28 = v31[3];
  sub_25BBB7694(v27, v26);
  if (v28)
  {

    sub_25BBB6F68(v24, "Build MPSGraph");
  }

  else
  {
    sub_25BBB7DF4(v27, v26);
    sub_25BBB8304(v32);

    sub_25BBB6F68(v24, "Build MPSGraph");

    v29 = v32[1];
    *a3 = v32[0];
    *(a3 + 16) = v29;
    result = *&v33;
    *(a3 + 32) = v33;
    *(a3 + 48) = v34;
  }

  return result;
}

uint64_t sub_25BBB51A4()
{
  v2 = *(v0 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5050, &unk_25BCC7160);
  result = sub_25BCB6D0C();
  if (!v1)
  {
    return v4;
  }

  return result;
}

uint64_t sub_25BBB522C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _OWORD *a4@<X8>)
{
  v5 = v4;
  v159 = a2;
  v139 = a4;
  i = sub_25BCB5EEC();
  v148 = *(i - 8);
  v9 = *(v148 + 64);
  MEMORY[0x28223BE20](i);
  v147 = &v131 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_25BCB5EBC();
  v11 = *(v150 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v150);
  v143 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v146 = &v131 - v15;
  MEMORY[0x28223BE20](v16);
  v153 = &v131 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v131 - v19;
  v160 = a1;
  v21 = a1[2];
  swift_unownedRetainStrong();
  sub_25BBC9934();
  v154 = v22;
  v155 = v21;

  if (qword_28154BEB0 != -1)
  {
    goto LABEL_107;
  }

LABEL_2:
  v149 = i;
  v23 = __swift_project_value_buffer(i, qword_28154BEB8);
  sub_25BCB5EAC();
  v151 = v23;
  v24 = sub_25BCB5EDC();
  v25 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v26 = a3;
    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v24, v25, v28, "Prepare MPSGraph Inputs", "", v27, 2u);
    v29 = v27;
    a3 = v26;
    MEMORY[0x25F8797F0](v29, -1, -1);
  }

  v30 = *(v11 + 16);
  i = v150;
  v142 = v11 + 16;
  v141 = v30;
  v30(v153, v20, v150);
  v31 = sub_25BCB5F2C();
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v140 = v31;
  swift_allocObject();
  v152 = sub_25BCB5F1C();
  v34 = *(v11 + 8);
  v11 += 8;
  v145 = v11;
  v144 = v34;
  v34(v20, i);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E40, &unk_25BCC7170);
  v35 = MEMORY[0x277D84F90];
  v36 = sub_25BCB614C();
  v37 = 0;
  v170 = v36;
  v168 = v35;
  v169 = v35;
  v38 = v160[4];
  v156 = v159 + 32;
  v39 = (v38 + 48);
  v40 = *(v38 + 16);
  v157 = v38;
  v158 = v40;
  while (v158 != v37)
  {
    if (v37 >= *(v157 + 16))
    {
      goto LABEL_100;
    }

    v20 = *(v39 - 1);
    v41 = *v39;
    if (!a3[2])
    {
      v64 = v41;
      sub_25BCB617C();
LABEL_22:
      v65 = v152;

      sub_25BBB9B78();
      swift_allocError();
      *v66 = 1;
      swift_willThrow();

      sub_25BBB6F68(v65, "Prepare MPSGraph Inputs");
    }

    v161 = v39;
    v162 = v37;
    v42 = v5;
    v11 = v35;
    v43 = *(v39 - 2);
    swift_bridgeObjectRetain_n();
    v44 = a3;
    a3 = v41;
    v5 = sub_25BA9266C(v43, v20);
    LOBYTE(v43) = v45;

    if ((v43 & 1) == 0)
    {
      goto LABEL_22;
    }

    v46 = *(v44[7] + 8 * v5);
    if (!*(v46 + 16))
    {
      goto LABEL_22;
    }

    v47 = *(v46 + 32);
    if ((v47 & 0x8000000000000000) != 0)
    {
      goto LABEL_101;
    }

    if (v47 >= *(v159 + 16))
    {
      goto LABEL_102;
    }

    i = v44;
    v48 = *(v156 + 24 * v47 + 16);
    swift_retain_n();
    v49 = sub_25BA928B4();
    [v49 lock];

    sub_25BA92920(v48, 0, 0, &aBlock);
    if (v42)
    {
      [*(v48 + 224) unlock];

      __break(1u);
      while (1)
      {
LABEL_110:
        sub_25BCB74CC();
        __break(1u);
      }
    }

    v11 = 0;
    [*(v48 + 224) unlock];

    v50 = sub_25BBB6800(aBlock, *(&aBlock + 1), a3, v160, &v170, &v169);
    swift_unknownObjectRelease();
    v51 = v50;
    MEMORY[0x25F876F40]();
    if (*((v168 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v168 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_25BCB67AC();
    }

    sub_25BCB680C();

    v35 = v168;
    v39 = v161 + 3;
    v37 = v162 + 1;
    v5 = 0;
    a3 = i;
  }

  swift_beginAccess();
  v52 = sub_25BCB617C();
  v53 = sub_25BC54C2C(v52);
  swift_beginAccess();
  v136 = v169;

  sub_25BBB6F68(v152, "Prepare MPSGraph Inputs");

  (*(v148 + 16))(v147, v151, v149);
  sub_25BCB5EAC();
  v54 = swift_slowAlloc();
  *v54 = 0;
  v55 = sub_25BCB5EDC();
  v56 = sub_25BCB6D5C();
  v57 = sub_25BCB5E9C();
  v134 = v55;
  v132 = v54;
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v55, v56, v57, "Run MPSGraph", "", v54, 2u);
  v58 = v155;
  swift_unownedRetainStrong();
  v59 = *(v58 + 24);
  swift_unknownObjectRetain();

  v138 = [objc_opt_self() commandBufferFromCommandQueue_];
  swift_unknownObjectRelease();
  v60 = *(v53 + 16);
  v133 = v5;
  v137 = v35;
  v135 = v53;
  if (v60)
  {
    v61 = (v53 + 40);
    v62 = v138;
    v63 = MEMORY[0x277D84F90];
    do
    {
      [v62 encodeWaitForEvent:*(v61 - 1) value:*v61];
      v61 += 2;
      --v60;
    }

    while (v60);
  }

  else
  {
    v63 = MEMORY[0x277D84F90];
  }

  v170 = v63;
  v68 = v160;
  v69 = v160[6];
  sub_25BAC1E24(*(v69 + 16), 0);
  v11 = v170;
  v169 = v63;
  v161 = v69;
  sub_25BAC1E24(*(v69 + 16), 0);
  v70 = v169;
  v71 = v68[9];
  sub_25BAFA7F0(v68[8]);
  sub_25BCB737C();

  i = qword_25BCC7310;
  v5 = 0x277CD7000uLL;
  while (1)
  {
    sub_25BCB75DC();
    v20 = aBlock;
    if (!aBlock)
    {
      break;
    }

    a3 = BYTE8(aBlock);
    v72 = *(aBlock + 16);
    if (v72)
    {
      v73 = (aBlock + 32);
      v74 = 1;
      while (1)
      {
        v75 = *v73++;
        v76 = v74 * v75;
        if ((v74 * v75) >> 64 != (v74 * v75) >> 63)
        {
          break;
        }

        v74 = v76;
        if (!--v72)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      swift_once();
      goto LABEL_2;
    }

    v76 = 1;
LABEL_32:
    if (BYTE8(aBlock) - 1 > 0xA)
    {
      v77 = 1;
    }

    else
    {
      v77 = qword_25BCC7310[(BYTE8(aBlock) - 1)];
    }

    v78 = v76 * v77;
    if ((v76 * v77) >> 64 != (v76 * v77) >> 63)
    {
      goto LABEL_103;
    }

    swift_unownedRetainStrong();
    v79 = sub_25BBC9A4C(v78, 0);

    if (!v79)
    {

      sub_25BBB9B78();
      swift_allocError();
      *v122 = 2;
      swift_willThrow();

      v144(v146, v150);
      return (*(v148 + 8))(v147, v149);
    }

    v80 = sub_25BCB617C();
    v81 = sub_25BAF99E8(v80);

    v82 = 268435472;
    switch(a3)
    {
      case 1uLL:
        v82 = 536870928;
        goto LABEL_49;
      case 2uLL:
        v82 = 536870944;
        goto LABEL_49;
      case 3uLL:
        v82 = 536870976;
        goto LABEL_49;
      case 4uLL:
        v82 = 8;
        goto LABEL_49;
      case 5uLL:
        v82 = 16;
        goto LABEL_49;
      case 6uLL:
        v82 = 32;
        goto LABEL_49;
      case 7uLL:
        v82 = 64;
        goto LABEL_49;
      case 8uLL:
        goto LABEL_49;
      case 9uLL:
        v82 = 2415919120;
        goto LABEL_49;
      case 0xAuLL:
        v82 = 268435488;
        goto LABEL_49;
      case 0xBuLL:
        goto LABEL_110;
      case 0xCuLL:
        v82 = 2147483656;
        goto LABEL_49;
      default:
        v82 = 536870920;
LABEL_49:
        objc_allocWithZone(MEMORY[0x277CD7890]);
        v83 = swift_unknownObjectRetain();
        v84 = sub_25BBB8E84(v83, v81, v82);

        v85 = swift_unknownObjectRetain();
        MEMORY[0x25F876F40](v85);
        if (*((v170 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v170 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v11 = v170;
        v86 = v84;
        MEMORY[0x25F876F40]();
        if (*((v169 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v169 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();

        swift_unknownObjectRelease();
        v70 = v169;
        break;
    }
  }

  sub_25BCB617C();
  if (v11 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E48, &unk_25BCC7180);
    v159 = sub_25BCB74EC();
  }

  else
  {
    sub_25BCB78CC();
    v159 = v11;
  }

  v87 = v143;

  v88 = v160[3];
  sub_25BB2BA50(0, &unk_27FBB5E50, 0x277CD7890);
  v89 = sub_25BCB672C();
  v157 = v70;
  v90 = sub_25BCB672C();
  v91 = v138;

  swift_unownedRetainStrong();
  v92 = sub_25BBC998C();

  v93 = v154;
  [v91 encodeSignalEvent:v92 value:v154];
  swift_unknownObjectRelease();
  swift_unownedRetainStrong();
  v94 = sub_25BBC99EC();

  [v91 encodeSignalEvent:v94 value:v93];
  swift_unknownObjectRelease();
  v95 = swift_allocObject();
  *(v95 + 16) = v136;
  v166 = nullsub_1;
  v167 = v95;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v164 = sub_25BBB66B8;
  v165 = &block_descriptor_0;
  v96 = _Block_copy(&aBlock);
  sub_25BCB617C();

  [v91 addCompletedHandler_];
  _Block_release(v96);
  [v91 commit];
  sub_25BCB5EAC();
  v97 = sub_25BCB5EDC();
  v20 = sub_25BCB6D5C();
  if (sub_25BCB6E1C())
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    v99 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v97, v20, v99, "Prepare MPSGraph Outputs", "", v98, 2u);
    MEMORY[0x25F8797F0](v98, -1, -1);
  }

  v100 = v150;
  v141(v153, v87, v150);
  v101 = *(v140 + 48);
  v102 = *(v140 + 52);
  swift_allocObject();
  v143 = sub_25BCB5F1C();
  v144(v87, v100);
  v103 = v161[2];
  v156 = v159 & 0xC000000000000001;
  v152 = v159 & 0xFFFFFFFFFFFFFF8;
  v11 = v157;
  v153 = (v157 & 0xC000000000000001);
  v151 = v157 & 0xFFFFFFFFFFFFFF8;
  v104 = (v161 + 5);
  v158 = -v103;
  v162 = MEMORY[0x277D84F90];
  for (i = 4; v158 + i != 4; ++i)
  {
    v105 = i - 4;
    if (i - 4 >= v161[2])
    {
      goto LABEL_104;
    }

    v106 = *(v104 - 1);
    v107 = *v104;
    if (v156)
    {
      v118 = *v104;
      sub_25BCB617C();
      v20 = MEMORY[0x25F8779B0](i - 4, v159);
    }

    else
    {
      if (v105 >= *(v152 + 16))
      {
        goto LABEL_105;
      }

      v20 = *(v159 + 8 * i);
      v108 = *v104;
      sub_25BCB617C();
      swift_unknownObjectRetain();
    }

    if (v153)
    {
      v109 = MEMORY[0x25F8779B0](i - 4, v11);
    }

    else
    {
      if (v105 >= *(v151 + 16))
      {
        goto LABEL_106;
      }

      v109 = *(v11 + 8 * i);
    }

    a3 = v109;
    v110 = sub_25BBB6E1C(v106, v107, v109, v160);
    TensorShape.init(_:)(v110);
    v111 = [a3 dataType];
    switch(v111)
    {
      case 0x80000008:
        v112 = 12;
        break;
      case 0x20000040u:
        goto LABEL_79;
      case 8u:
        v112 = 4;
        break;
      case 0x10u:
        v112 = 5;
        break;
      case 0x20u:
        v112 = 6;
        break;
      case 0x40u:
LABEL_79:
        v112 = 3;
        break;
      case 0x10000010u:
        v112 = 8;
        break;
      case 0x10000020u:
        v112 = 10;
        break;
      case 0x20000008u:
        v112 = 0;
        break;
      case 0x20000010u:
        v112 = 1;
        break;
      case 0x20000020u:
        v112 = 2;
        break;
      case 0x90000010:
        v112 = 9;
        break;
      default:
        goto LABEL_110;
    }

    LOBYTE(v170) = v112;
    v113 = v155;
    swift_unownedRetainStrong();
    type metadata accessor for MPSGraphTensorStorage();
    swift_allocObject();
    swift_unknownObjectRetain();
    v114 = sub_25BC297AC(&aBlock, &v170, v20, v154, v113);
    v5 = v106;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v119 = *(v162 + 16);
      sub_25BAFE55C();
      v162 = v120;
    }

    v115 = *(v162 + 16);
    if (v115 >= *(v162 + 24) >> 1)
    {
      sub_25BAFE55C();
      v162 = v121;
    }

    swift_unknownObjectRelease();
    v116 = v162;
    *(v162 + 16) = v115 + 1;
    v117 = (v116 + 32 * v115);
    v117[4] = v106;
    v117[5] = v107;
    v117[6] = v114;
    v117[7] = &off_286D50248;
    v104 += 3;
    v11 = v157;
  }

  sub_25BBB6F68(v143, "Prepare MPSGraph Outputs");

  v123 = sub_25BCB6D4C();
  v124 = v146;
  v125 = sub_25BCB5E9C();
  v126 = v123;
  v127 = v134;
  v128 = v132;
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v134, v126, v125, "Run MPSGraph", "", v132, 2u);

  MEMORY[0x25F8797F0](v128, -1, -1);

  v144(v124, v150);
  (*(v148 + 8))(v147, v149);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&aBlock + 1) = sub_25BCB614C();
  v129 = sub_25BA93BF8(v162);

  *&aBlock = v129;
  result = sub_25BA957C4(v130);
  *v139 = aBlock;
  return result;
}

uint64_t sub_25BBB66B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_25BBB6718()
{
  v1 = *(v0 + 16);
  swift_unownedRelease();

  v3 = *(v0 + 32);
  v2 = *(v0 + 40);

  v5 = *(v0 + 48);
  v4 = *(v0 + 56);

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);

  v9 = *(v0 + 80);
  v8 = *(v0 + 88);

  return v0;
}

uint64_t sub_25BBB6790()
{
  sub_25BBB6718();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBB6800(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  if (object_getClass(a1) != _TtC14NeuralNetworks21MPSGraphTensorStorage || a1 == 0)
  {
    goto LABEL_11;
  }

  swift_unknownObjectRetain();
  v13 = sub_25BC29614();
  if (!v13)
  {
    swift_unknownObjectRelease();
LABEL_11:
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v38[2] = a4;
    v38[3] = a3;
    v38[4] = a1;
    v38[5] = a2;
    v38[6] = a6;
    v26 = *(a2 + 64);
    v27 = sub_25BB2BA50(0, &unk_27FBB5E50, 0x277CD7890);
    v26(v41, sub_25BBB9C40, v38, v27, ObjectType, a2);
    return v41[0];
  }

  v14 = v13;
  v15 = *(a4 + 16);
  swift_unownedRetainStrong();
  v16 = sub_25BC296A0();
  v19 = v16;
  v20 = v17;
  v21 = v18;
  if (v18 >> 62)
  {
    sub_25BBB9C64(v16, v17, v18);
  }

  else
  {
    v39 = v14;
    v22 = *(v15 + 16);

    v23 = [v22 registryID];
    if (v23 != [*(v21 + 16) registryID])
    {

      v24 = sub_25BBC998C();
      goto LABEL_14;
    }

    if (v15 != v21)
    {

      v24 = sub_25BBC99EC();
LABEL_14:
      v29 = v24;
      v14 = v39;

      sub_25BBB9C64(v19, v20, v21);

      swift_beginAccess();
      if (sub_25BB3EE04(v29, *a5))
      {
        swift_endAccess();
        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }

      swift_beginAccess();
      swift_unknownObjectRetain();
      v30 = *a5;
      swift_isUniquelyReferenced_nonNull_native();
      v40 = *a5;
      sub_25BC1A63C();
      *a5 = v40;
      swift_endAccess();
      swift_unknownObjectRelease();
      goto LABEL_18;
    }

    sub_25BBB9C64(v19, v20, v21);

    v14 = v39;
  }

LABEL_18:
  v31 = sub_25BBB9A9C(a3, &selRef_shape, &qword_28154BD90, 0x277CCABB0);
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v33 = swift_getObjectType();
    (*(a2 + 16))(v41, v33, a2);
    v32 = sub_25BAF99E8(v41[0]);
  }

  v34 = swift_getObjectType();
  (*(a2 + 8))(v41, v34, a2);
  v35 = sub_25BC6640C();
  v36 = objc_allocWithZone(MEMORY[0x277CD7890]);
  v28 = sub_25BBB8E84(v14, v32, v35);
  swift_unknownObjectRelease();
  return v28;
}

uint64_t sub_25BBB6BAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, void *a8@<X8>)
{
  v34 = a4;
  v36 = a8;
  v14 = sub_25BCB59BC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 + 16);
  swift_unownedRetainStrong();
  v35 = sub_25BBC98B8();

  if (a1)
  {
    (*(v15 + 104))(v18, *MEMORY[0x277CC92A8], v14);
    v21 = MEMORY[0x25F876200](a1, a2 - a1, v18);
    v23 = v22;
    v24 = sub_25BBB9A9C(v34, &selRef_shape, &qword_28154BD90, 0x277CCABB0);
    if (v24)
    {
      v25 = v24;
    }

    else
    {
      ObjectType = swift_getObjectType();
      (*(a6 + 16))(v37, ObjectType, a6);
      v25 = sub_25BAF99E8(v37[0]);
    }

    v27 = swift_getObjectType();
    (*(a6 + 8))(v37, v27, a6);
    v28 = sub_25BC6640C();
    v29 = objc_allocWithZone(MEMORY[0x277CD7890]);
    v30 = sub_25BBB8F1C(v35, v21, v23, v25, v28);
    swift_beginAccess();
    sub_25BAFD0A0();
    v31 = *(*a7 + 16);
    sub_25BAFD1F8(v31);
    v32 = *a7;
    *(v32 + 16) = v31 + 1;
    v33 = v32 + 16 * v31;
    *(v33 + 32) = a5;
    *(v33 + 40) = a6;
    swift_endAccess();
    *v36 = v30;
    return swift_unknownObjectRetain();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBB6E1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 64);
  v7 = *(a4 + 72);
  sub_25BBB47B0(a1, a2, v6, &v17);
  v8 = v17;
  v9 = *(v17 + 16);
  if (v9)
  {
    v10 = (v17 + 32);
    v11 = 1;
    while (1)
    {
      v12 = *v10++;
      v13 = v11 * v12;
      if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
      {
        break;
      }

      v11 = v13;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  v13 = 1;
LABEL_7:
  sub_25BB730A4();
  if (v13 != v14)
  {
LABEL_10:
    v17 = 0;
    v18 = 0xE000000000000000;
    sub_25BCB70FC();

    MEMORY[0x25F876C90](a1, a2);
    MEMORY[0x25F876C90](11815, 0xE200000000000000);
    v17 = 0xD00000000000002BLL;
    v18 = 0x800000025BCDF940;
    v19 = 4;
    sub_25BCB617C();
    sub_25BA97890();
  }

  v15 = sub_25BAF99E8(v8);

  return v15;
}

uint64_t sub_25BBB6F68(uint64_t a1, const char *a2)
{
  v2 = sub_25BCB5EFC();
  v3 = OUTLINED_FUNCTION_2(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = sub_25BCB5EBC();
  v12 = OUTLINED_FUNCTION_2(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_1();
  v19 = v18 - v17;
  if (qword_28154BEB0 != -1)
  {
    swift_once();
  }

  v20 = sub_25BCB5EEC();
  __swift_project_value_buffer(v20, qword_28154BEB8);
  v21 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v22 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v5 + 88))(v10, v2) == *MEMORY[0x277D85B00])
    {
      v23 = "[Error] Interval already ended";
    }

    else
    {
      (*(v5 + 8))(v10, v2);
      v23 = "";
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v21, v22, v25, a2, v23, v24, 2u);
    MEMORY[0x25F8797F0](v24, -1, -1);
  }

  return (*(v14 + 8))(v19, v11);
}

void sub_25BBB71D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 88);
  if (v3 >> 62)
  {
    goto LABEL_41;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v47 = a2[2];
      v49 = v3 & 0xC000000000000001;
      swift_beginAccess();
      v5 = 0;
      v44 = v3 + 32;
      v45 = v4;
      v46 = v3;
      v48 = a2;
LABEL_4:
      sub_25BAB4D78(v5, v49 == 0, v3);
      if (v49)
      {
        v6 = MEMORY[0x25F8779B0](v5, v3);
      }

      else
      {
        v6 = *(v44 + 8 * v5);
      }

      v7 = __OFADD__(v5++, 1);
      if (v7)
      {
        break;
      }

      v8 = sub_25BC458D0();
      v10 = v9;
      sub_25BAF99E8(*(v6 + 152));
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v11 = sub_25BCB672C();

      v52 = *(v6 + 160);
      v12 = sub_25BC6640C();
      v13 = sub_25BBB9A2C(v11, v12, v8, v10, v47);

      v14 = *(v6 + 152);
      v50 = *(v6 + 160);
      v15 = a2[5];
      v16 = (v15 + 48);
      v17 = *(v15 + 16) + 1;
      while (--v17)
      {
        v18 = *v16;
        if (*(v16 - 2) != v8 || *(v16 - 1) != v10)
        {
          v16 += 3;
          if ((sub_25BCB789C() & 1) == 0)
          {
            continue;
          }
        }

        sub_25BCB617C();
        sub_25BCB617C();
        v20 = v18;
        if (v18 != v13)
        {
          sub_25BCB70FC();

          MEMORY[0x25F876C90](v8, v10);
          MEMORY[0x25F876C90](11872, 0xE200000000000000);
          sub_25BCB617C();
          sub_25BA97890();
        }

        a2 = v48;
LABEL_32:
        sub_25BAC44E4();
        swift_beginAccess();
        v42 = v13;
        v43 = a2[4];
        swift_isUniquelyReferenced_nonNull_native();
        v51 = a2[4];
        sub_25BC19B38();
        a2[4] = v51;

        swift_endAccess();

        v3 = v46;
        if (v5 != v45)
        {
          goto LABEL_4;
        }

        return;
      }

      v21 = v14;
      sub_25BCB617C();
      a2 = v48;
      swift_beginAccess();
      sub_25BCB617C();
      v22 = v13;
      sub_25BAFD018();
      v23 = *(v48[5] + 16);
      v3 = (v48 + 5);
      sub_25BAFD160(v23);
      v24 = v48[5];
      *(v24 + 16) = v23 + 1;
      v25 = (v24 + 24 * v23);
      v25[4] = v8;
      v25[5] = v10;
      v25[6] = v22;
      v48[5] = v24;
      swift_endAccess();

      v26 = *(v21 + 16);
      if (v26)
      {
        v27 = (v21 + 32);
        v28 = 1;
        while (1)
        {
          v29 = *v27++;
          v30 = v28 * v29;
          if ((v28 * v29) >> 64 != (v28 * v29) >> 63)
          {
            break;
          }

          v28 = v30;
          if (!--v26)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        break;
      }

      v30 = 1;
LABEL_23:
      if ((v50 - 1) > 0xA)
      {
        v31 = 1;
      }

      else
      {
        v31 = qword_25BCC7310[(v50 - 1)];
      }

      v3 = v30 * v31;
      if ((v30 * v31) >> 64 != (v30 * v31) >> 63)
      {
        goto LABEL_36;
      }

      v32 = v48[6];
      v7 = __OFADD__(v32, v3);
      v33 = v32 + v3;
      if (v7)
      {
        goto LABEL_37;
      }

      v48[6] = v33;
      v34 = v48[3];
      swift_unownedRetainStrong();
      v35 = *(v34 + 16);
      swift_unknownObjectRetain();

      v3 = [v35 heapBufferSizeAndAlignWithLength:v3 options:0];
      v37 = v36;
      swift_unknownObjectRelease();

      v38 = v37 - 1;
      if (__OFSUB__(v37, 1))
      {
        goto LABEL_38;
      }

      if (__OFADD__(v3, v38))
      {
        goto LABEL_39;
      }

      v39 = (v3 + v38) & ~v38;
      v40 = v48[7];
      v7 = __OFADD__(v40, v39);
      v41 = v40 + v39;
      if (!v7)
      {
        v48[7] = v41;
        goto LABEL_32;
      }

LABEL_40:
      __break(1u);
LABEL_41:
      v4 = sub_25BCB749C();
      if (!v4)
      {
        return;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }
}

uint64_t sub_25BBB7694(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = 0;
  v88 = result;
  v4 = *(result + 120);
  v76 = v4;
  v77 = *(v4 + 16);
  v75 = v4 + 32;
LABEL_2:
  while (2)
  {
    if (v3 == v77)
    {
      return result;
    }

    if (v3 >= *(v76 + 16))
    {
      goto LABEL_70;
    }

    v5 = (v75 + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
    swift_getObjectType();
    if (!dynamic_cast_existential_1_conditional(v7))
    {
      sub_25BBB9B78();
      swift_allocError();
      *v72 = 0;
      return swift_willThrow();
    }

    v9 = v8;
    v82 = v3;
    v10 = swift_unknownObjectRetain_n();
    v11 = sub_25BBB8AD0(v10, v6, v2);
    v12 = sub_25BAAF54C(v11);
    ObjectType = swift_getObjectType();
    v78 = v6[4];
    v14 = v78(ObjectType, v6);
    v15 = sub_25BAAF54C(v14);

    if (v12 != v15)
    {

      sub_25BBB9B78();
      swift_allocError();
      v74 = 1;
LABEL_61:
      *v73 = v74;
      swift_willThrow();
      return swift_unknownObjectRelease_n();
    }

    v16 = swift_getObjectType();
    v17 = (*(v9 + 24))(*(v2 + 16), v11, v16, v9);
    if (v81)
    {
      swift_unknownObjectRelease_n();
    }

    v80 = v16;
    v87 = v17;
    v18 = sub_25BAAF54C(v17);
    v19 = v6[5];
    v20 = *(v19(ObjectType, v6) + 16);

    if (v18 != v20)
    {

      sub_25BBB9B78();
      swift_allocError();
      v74 = 3;
      goto LABEL_61;
    }

    v79 = v9;
    v21 = *(v19(ObjectType, v6) + 16);

    v2 = a2;
    v86 = v21;
    if (!v21)
    {
LABEL_23:
      v3 = v82 + 1;

      if (((*(v79 + 16))(v80) & 1) == 0)
      {
        swift_unknownObjectRelease_n();

        continue;
      }

      v78(ObjectType, v6);
      swift_beginAccess();
      swift_beginAccess();
      while (1)
      {
        if (!sub_25BBB4368())
        {

          swift_unknownObjectRelease_n();

          goto LABEL_2;
        }

        v43 = v42;
        v44 = v88[13];
        v45 = v88[14];
        v46 = sub_25BAC44E4();
        if (*(v45 + 16) && (v48 = sub_25BA9266C(v46, v47), (v49 & 1) != 0))
        {
          v50 = *(*(v45 + 56) + 8 * v48);
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }

          if (v50 >= *(v44 + 16))
          {
            goto LABEL_67;
          }
        }

        else
        {

          v44 = v88[17];
          v51 = v88[18];
          v52 = sub_25BAC44E4();
          if (!*(v51 + 16) || (v54 = sub_25BA9266C(v52, v53), (v55 & 1) == 0))
          {

            v58 = sub_25BAC44E4();
            v57 = v59;
            goto LABEL_37;
          }

          v50 = *(*(v51 + 56) + 8 * v54);
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_68;
          }

          if (v50 >= *(v44 + 16))
          {
            goto LABEL_69;
          }
        }

        v56 = v44 + 16 * v50;
        v58 = *(v56 + 32);
        v57 = *(v56 + 40);
        sub_25BCB617C();

LABEL_37:
        v2 = a2;
        v60 = *(a2 + 88);
        v61 = (v60 + 40);
        v62 = *(v60 + 16) + 1;
        while (--v62)
        {
          if (*(v61 - 1) != v58 || *v61 != v57)
          {
            v61 += 3;
            if ((sub_25BCB789C() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        v64 = *(a2 + 64);
        v65 = (v64 + 40);
        v66 = *(v64 + 16) + 1;
        while (--v66)
        {
          if (*(v65 - 1) != v58 || *v65 != v57)
          {
            v65 += 3;
            if ((sub_25BCB789C() & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        swift_beginAccess();
        sub_25BCB617C();
        v68 = v43;
        sub_25BAFD018();
        v69 = *(*(a2 + 88) + 16);
        sub_25BAFD160(v69);
        v70 = *(a2 + 88);
        *(v70 + 16) = v69 + 1;
        v71 = (v70 + 24 * v69);
        v2 = a2;
        v71[4] = v58;
        v71[5] = v57;
        v71[6] = v68;
        *(a2 + 88) = v70;
        swift_endAccess();
LABEL_54:
      }
    }

    break;
  }

  v22 = 0;
  v85 = v6[9];
  v83 = ObjectType;
  v84 = v6;
  while (1)
  {
    v23 = v85(v22, ObjectType, v6);
    v25 = v24;
    if ((v87 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x25F8779B0](v22, v87);
    }

    else
    {
      if (v22 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_65;
      }

      v26 = *(v87 + 8 * v22 + 32);
    }

    v27 = v26;
    swift_beginAccess();
    v28 = *(v2 + 32);
    swift_isUniquelyReferenced_nonNull_native();
    v29 = *(v2 + 32);
    *(v2 + 32) = 0x8000000000000000;
    v30 = sub_25BA9266C(v23, v25);
    if (__OFADD__(v29[2], (v31 & 1) == 0))
    {
      break;
    }

    v32 = v30;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E30, &unk_25BCCBEA0);
    if (sub_25BCB745C())
    {
      v34 = sub_25BA9266C(v23, v25);
      v2 = a2;
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_71;
      }

      v32 = v34;
      if ((v33 & 1) == 0)
      {
LABEL_18:
        v29[(v32 >> 6) + 8] |= 1 << v32;
        v36 = (v29[6] + 16 * v32);
        *v36 = v23;
        v36[1] = v25;
        *(v29[7] + 8 * v32) = v27;
        v37 = v29[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_64;
        }

        v29[2] = v39;
        goto LABEL_22;
      }
    }

    else
    {
      v2 = a2;
      if ((v33 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v40 = v29[7];
    v41 = *(v40 + 8 * v32);
    *(v40 + 8 * v32) = v27;

LABEL_22:
    ++v22;
    *(v2 + 32) = v29;
    swift_endAccess();
    ObjectType = v83;
    v6 = v84;
    if (v86 == v22)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BBB7DF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 152);
  v53 = sub_25BA9BEA0(v4);
  swift_beginAccess();
  result = swift_beginAccess();
  v6 = 0;
  v51 = v4 & 0xC000000000000001;
  v52 = v4;
  v50 = v4 + 32;
LABEL_2:
  while (v6 != v53)
  {
    v7 = v51;
    sub_25BAB4D78(v6, v51 == 0, v52);
    if (v51)
    {
      v8 = MEMORY[0x25F8779B0](v6, v52);
    }

    else
    {
      v8 = *(v50 + 8 * v6);
    }

    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_44;
    }

    v2 = sub_25BC458D0();
    v7 = v10;
    v11 = sub_25BAC44E4();
    v13 = v12;
    swift_beginAccess();
    v14 = sub_25BB3EDBC(v11, v13, a2[4]);

    if (!v14)
    {
      swift_endAccess();

      sub_25BBB9B78();
      swift_allocError();
      *v49 = 3;
      swift_willThrow();
    }

    swift_endAccess();
    v55 = *(v8 + 152);
    v54 = *(v8 + 160);
    v15 = a2;
    v16 = a2[8];
    v17 = (v16 + 48);
    v18 = *(v16 + 16) + 1;
    while (--v18)
    {
      v19 = *v17;
      if (*(v17 - 2) != v2 || *(v17 - 1) != v7)
      {
        v17 += 3;
        if ((sub_25BCB789C() & 1) == 0)
        {
          continue;
        }
      }

      sub_25BCB617C();
      sub_25BCB617C();
      v21 = v19;
      if (v19 == v14)
      {

        a2 = v15;
        goto LABEL_2;
      }

LABEL_50:
      sub_25BCB70FC();

      MEMORY[0x25F876C90](v2, v7);
      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BCB617C();
      sub_25BA97890();
    }

    a2 = v15;
    v22 = v15[11];
    v23 = *(v22 + 16);
    sub_25BCB617C();
    v24 = 0;
    v25 = (v22 + 40);
    while (v23 != v24)
    {
      v26 = *(v25 - 1) == v2 && *v25 == v7;
      if (v26 || (sub_25BCB789C() & 1) != 0)
      {
        swift_beginAccess();
        sub_25BB3080C(v24);
        v28 = v27;
        swift_endAccess();

        break;
      }

      ++v24;
      v25 += 3;
    }

    swift_beginAccess();
    sub_25BCB617C();
    v29 = v14;
    sub_25BAFD018();
    v30 = *(v15[8] + 16);
    sub_25BAFD160(v30);
    v31 = v15[8];
    *(v31 + 16) = v30 + 1;
    v32 = (v31 + 24 * v30);
    v32[4] = v2;
    v32[5] = v7;
    v32[6] = v29;
    v15[8] = v31;
    swift_endAccess();

    v2 = v55;
    v33 = *(v55 + 16);
    if (v33)
    {
      v34 = (v55 + 32);
      v35 = 1;
      while (1)
      {
        v36 = *v34++;
        v37 = v35 * v36;
        if ((v35 * v36) >> 64 != (v35 * v36) >> 63)
        {
          break;
        }

        v35 = v37;
        if (!--v33)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v37 = 1;
LABEL_31:
    if ((v54 - 1) > 0xA)
    {
      v38 = 1;
    }

    else
    {
      v38 = qword_25BCC7310[(v54 - 1)];
    }

    v7 = v37 * v38;
    if ((v37 * v38) >> 64 != (v37 * v38) >> 63)
    {
      goto LABEL_45;
    }

    v39 = v15[9];
    v9 = __OFADD__(v39, v7);
    v40 = (v39 + v7);
    if (v9)
    {
      goto LABEL_46;
    }

    v15[9] = v40;
    v41 = v15[3];
    swift_unownedRetainStrong();
    v42 = *(v41 + 16);
    swift_unknownObjectRetain();

    v7 = [v42 heapBufferSizeAndAlignWithLength:v7 options:0];
    v44 = v43;
    swift_unknownObjectRelease();

    v45 = v44 - 1;
    if (__OFSUB__(v44, 1))
    {
      goto LABEL_47;
    }

    if (__OFADD__(v7, v45))
    {
      goto LABEL_48;
    }

    v46 = (v7 + v45) & ~v45;
    v47 = v15[10];
    v9 = __OFADD__(v47, v46);
    v48 = v47 + v46;
    if (v9)
    {
      goto LABEL_49;
    }

    v15[10] = v48;
  }

  return result;
}

void sub_25BBB8304(uint64_t a1@<X8>)
{
  v2 = v1;
  v3 = [objc_allocWithZone(MEMORY[0x277CD7810]) init];
  [v3 setCompilerOptions_];
  [v3 setOptimizationLevel_];
  v68 = v3;
  [v3 setWaitForCompilationCompletion_];
  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  sub_25BB2BA50(0, &qword_27FBB5E00, 0x277CD7880);
  sub_25BBB9B10();
  v78 = sub_25BCB614C();
  swift_beginAccess();
  v4 = v1[5];
  v81 = v1;
  v73 = *(v4 + 16);
  if (v73)
  {
    sub_25BCB617C();
    v5 = 0;
    v6 = 48;
    v71 = v4;
    while (v5 < *(v4 + 16))
    {
      v7 = *(v4 + v6);
      v8 = sub_25BBB9A9C(v7, &selRef_shape, &qword_28154BD90, 0x277CCABB0);
      v9 = [v7 dataType];
      v10 = objc_allocWithZone(MEMORY[0x277CD7880]);
      v11 = sub_25BBB8FE4(v8, v9);
      if (v11)
      {
        v12 = v11;
        v13 = v78;
        if ((v78 & 0xC000000000000001) != 0)
        {
          if (v78 >= 0)
          {
            v13 = (v78 & 0xFFFFFFFFFFFFFF8);
          }

          v14 = sub_25BCB749C();
          if (__OFADD__(v14, 1))
          {
            goto LABEL_49;
          }

          v13 = sub_25BBB9804(v13, v14 + 1);
        }

        swift_isUniquelyReferenced_nonNull_native();
        v15 = sub_25BAFEE6C(v7);
        if (__OFADD__(v13[2], (v16 & 1) == 0))
        {
          goto LABEL_48;
        }

        v17 = v15;
        v18 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5E18, &qword_25BCC7148);
        if (sub_25BCB745C())
        {
          v19 = sub_25BAFEE6C(v7);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_54;
          }

          v17 = v19;
        }

        if (v18)
        {
          v21 = v13[7];
          v22 = *(v21 + 8 * v17);
          *(v21 + 8 * v17) = v12;
        }

        else
        {
          v13[(v17 >> 6) + 8] |= 1 << v17;
          *(v13[6] + 8 * v17) = v7;
          *(v13[7] + 8 * v17) = v12;
          v24 = v13[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_50;
          }

          v13[2] = v26;
        }

        v78 = v13;
        v4 = v71;
      }

      else
      {
        v23 = sub_25BBC94A8(v7);
      }

      ++v5;
      v6 += 24;
      if (v73 == v5)
      {

        v2 = v81;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

LABEL_22:
  v28 = v2[2];
  v27 = v2[3];
  swift_unownedRetainStrong();
  v29 = sub_25BBC98B8();

  v30 = sub_25BCB60FC();
  swift_beginAccess();
  v31 = v2[8];
  v32 = *(v31 + 16);
  if (v32)
  {
    v76 = MEMORY[0x277D84F90];
    sub_25BCB617C();
    sub_25BCB727C();
    v33 = 48;
    do
    {
      v34 = *(v31 + v33);
      sub_25BCB723C();
      v35 = *(v76 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      v33 += 24;
      --v32;
    }

    while (v32);
  }

  else
  {
  }

  v36 = sub_25BCB672C();

  v37 = [v28 compileWithDevice:v29 feeds:v30 targetTensors:v36 targetOperations:0 compilationDescriptor:v68];

  v38 = sub_25BBB9A9C(v37, &selRef_feedTensors, &qword_27FBB3908, 0x277CD7888);
  v39 = v81;
  if (!v38)
  {
    v44 = v81[5];
    sub_25BCB617C();
LABEL_46:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v80 + 1) = sub_25BCB614C();
    v59 = sub_25BAF9A88(v44);

    *&v80 = v59;
    sub_25BAFC800(v60);
    v75 = v80;
    v61 = v39[8];
    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v80 + 1) = sub_25BCB614C();
    v62 = sub_25BAF9A88(v61);

    *&v80 = v62;
    sub_25BAFC800(v63);
    swift_beginAccess();
    v64 = v39[11];
    sub_25BCB617C();
    *(&v77 + 1) = sub_25BCB614C();
    v65 = sub_25BAF9A88(v64);

    *&v77 = v65;
    sub_25BAFC800(v66);
    *a1 = v37;
    *(a1 + 8) = v75;
    *(a1 + 24) = v80;
    *(a1 + 40) = v77;
    return;
  }

  v40 = v38;
  v41 = sub_25BAAF54C(v38);
  if (!v41)
  {

    v44 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v42 = v41;
  v79 = MEMORY[0x277D84F90];
  sub_25BB00654(0, v41 & ~(v41 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v43 = 0;
    v44 = v79;
    v45 = v40 & 0xC000000000000001;
    while (1)
    {
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      if (v45)
      {
        v47 = MEMORY[0x25F8779B0](v43, v40);
      }

      else
      {
        if (v43 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_53;
        }

        v47 = *(v40 + 32 + 8 * v43);
      }

      v48 = v47;
      ++v43;
      v49 = v81[5];
      v50 = (v49 + 48);
      v51 = *(v49 + 16) + 1;
      do
      {
        if (!--v51)
        {

          sub_25BBB9B78();
          swift_allocError();
          *v58 = 1;
          swift_willThrow();

          return;
        }

        v52 = v50 + 3;
        v53 = *v50;
        v50 += 3;
      }

      while (v53 != v47);
      v74 = v37;
      v70 = *(v52 - 5);
      v72 = v45;
      v54 = *(v52 - 4);
      sub_25BCB617C();
      v69 = v53;

      v56 = *(v79 + 16);
      v55 = *(v79 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_25BB00654((v55 > 1), v56 + 1, 1);
      }

      *(v79 + 16) = v56 + 1;
      v57 = (v79 + 24 * v56);
      v57[4] = v70;
      v57[5] = v54;
      v57[6] = v69;
      v37 = v74;
      v45 = v72;
      if (v46 == v42)
      {

        v39 = v81;
        goto LABEL_46;
      }
    }

LABEL_51:
    __break(1u);
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  sub_25BCB795C();
  __break(1u);
}

uint64_t sub_25BBB8AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 32))(ObjectType, a2);
  v21 = MEMORY[0x277D84F90];
  v22 = MEMORY[0x277D84F90];
  result = sub_25BA9BEA0(v6);
  v8 = result;
  v9 = 0;
  while (1)
  {
    if (v8 == v9)
    {

      return v21;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F8779B0](v9, v6);
    }

    else
    {
      if (v9 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v10 = *(v6 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      break;
    }

    v11 = sub_25BAC44E4();
    v13 = v12;
    swift_beginAccess();
    v14 = *(a3 + 32);
    if (*(v14 + 16))
    {
      v15 = sub_25BA9266C(v11, v13);
      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_13;
      }

      v18 = *(*(v14 + 56) + 8 * v15);
      swift_endAccess();
      v19 = v18;

      MEMORY[0x25F876F40](v20);
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      result = sub_25BCB680C();
      v21 = v22;
      ++v9;
    }

    else
    {

LABEL_13:
      swift_endAccess();

      ++v9;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}