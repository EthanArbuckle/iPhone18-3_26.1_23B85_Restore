uint64_t sub_25BAC719C(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);

  v6 = *(a1 + 32);
  *(a1 + 32) = a2;

  v7 = *(a2 + 24);
  if (v7)
  {
    v8 = *(v7 + 32);
    *(v7 + 32) = a1;

    v9 = *(a2 + 24);
  }

  else
  {
  }

  *(a2 + 24) = a1;

  v10 = *(v2 + 16);
  if (v10 && v10 == a2)
  {
    *(v2 + 16) = a1;
  }
}

uint64_t sub_25BAC729C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!*(a2 + 16))
  {
LABEL_6:
    __break(1u);
LABEL_7:
    v12 = *(*(v3 + 16) + 152);
    v14[1] = 0;
    v14[2] = 0;
    v14[0] = v4;
    v15 = -1;
    v17 = 0;
    v18 = 0;
    v16 = v12;
    v19 = -1;
    v20 = 8;
    sub_25BCB617C();
    sub_25BCB617C();
    OUTLINED_FUNCTION_3_40();
    sub_25BADDD28();
  }

  v4 = a3;
  v3 = *(a1 + 32);
  v5 = *(a2 + 32);
  v14[0] = a3;
  v21 = *(*(v3 + 16) + 152);

  sub_25BCB617C();
  v6 = static ShapeInference.broadcastingAxes(_:_:)(v14, &v21);

  if (!v6)
  {
    goto LABEL_7;
  }

  v14[0] = v3;
  Tensor.sum(alongAxes:)(&v21, v6);

  v13[0] = v4;
  v13[1] = v21;
  Tensor.reshaped(to:)(v13, v14);

  v7 = v14[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v8 = OUTLINED_FUNCTION_32_11();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = v7;
  v9 = *(v5 + 16);

  *(v8 + 40) = sub_25BAC42B0();
  *(v8 + 48) = v10;

  return v8;
}

uint64_t static ShapeInference.broadcastingAxes(_:_:)(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_25BAB5C48(*a1, *a2) & 1) == 0)
  {
    if (*(v3 + 16) <= *(v2 + 16))
    {
      v5 = *(v2 + 16);
    }

    else
    {
      v5 = *(v3 + 16);
    }

    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BAAE04C();
    v4 = v6;
    if (*(v3 + 16) <= *(v2 + 16))
    {
      v7 = *(v2 + 16);
    }

    else
    {
      v7 = *(v3 + 16);
    }

    sub_25BAAE04C();
    v35 = v8;
    v9 = *(v2 + 16);
    v10 = *(v3 + 16);
    if (v9 >= v10)
    {
      if (v10 >= v9)
      {
LABEL_21:
        sub_25BCB617C();
        sub_25BCB617C();
        v19 = 0;
        for (i = 0; ; i += v21 + 1)
        {
          v21 = 0;
          v22 = *(v2 + 16);
          while (1)
          {
            v23 = v19 + v21;
            if (!(i - v22 + v21))
            {
              v33 = *(v3 + 16);
              if (v23 == v33)
              {

                return v4;
              }

              if (v23 < v33)
              {
LABEL_48:
                sub_25BCB74CC();
                __break(1u);
              }

LABEL_49:
              OUTLINED_FUNCTION_27_37();
LABEL_50:
              OUTLINED_FUNCTION_17_4();
              sub_25BADDD28();
            }

            if (i + v21 < -v22 || i + v21 >= v22)
            {
              goto LABEL_50;
            }

            v25 = *(v3 + 16);
            if (v23 == v25)
            {
              goto LABEL_48;
            }

            if (v23 >= v25)
            {
              goto LABEL_49;
            }

            v26 = *(v3 + 32 + 8 * v19 + 8 * v21);
            if (v26 == 1)
            {
              break;
            }

            v27 = *(v2 + 32 + 8 * i + 8 * v21);
            if (v27 == 1)
            {
              v29 = *(v4 + 16);
              v32 = *(v4 + 24);
              v30 = v29 + 1;
              if (v29 >= v32 >> 1)
              {
                OUTLINED_FUNCTION_81(v32);
                sub_25BAAE04C();
                v4 = v31;
              }

              else
              {
                v31 = v4;
              }

              goto LABEL_38;
            }

            ++v21;
            if (v27 != v26)
            {

              return 0;
            }
          }

          v29 = *(v35 + 16);
          v28 = *(v35 + 24);
          v30 = v29 + 1;
          if (v29 >= v28 >> 1)
          {
            OUTLINED_FUNCTION_81(v28);
            sub_25BAAE04C();
            v35 = v31;
          }

          else
          {
            v31 = v35;
          }

LABEL_38:
          *(v31 + 16) = v30;
          *(v31 + 8 * v29 + 32) = v19 + v21;
          v19 += v21 + 1;
        }
      }

      v15 = sub_25BAC0E14(1, v9 - v10);
      v16 = *(v3 + 16);
      v17 = *(v15 + 16);
      if (!__OFADD__(v16, v17))
      {
        if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v17 > *(v3 + 24) >> 1)
        {
          sub_25BA96630();
          v3 = v18;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v11 = sub_25BAC0E14(1, v10 - v9);
      v12 = *(v2 + 16);
      v13 = *(v11 + 16);
      if (!__OFADD__(v12, v13))
      {
        if (!swift_isUniquelyReferenced_nonNull_native() || v12 + v13 > *(v2 + 24) >> 1)
        {
          sub_25BA96630();
          v2 = v14;
        }

LABEL_20:
        OUTLINED_FUNCTION_30_30();
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_50;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25BAC783C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = a3 - v5;
  if (__OFSUB__(a3, v5))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = *v4;
  v10 = (v9 + 32 + 8 * result);
  if (!v7)
  {
    goto LABEL_7;
  }

  v11 = *(v9 + 16);
  v12 = __OFSUB__(v11, a2);
  v13 = v11 - a2;
  if (v12)
  {
    goto LABEL_15;
  }

  result = sub_25BAB254C(v9 + 32 + 8 * a2, v13, &v10[8 * a3]);
  v14 = *(v9 + 16);
  v12 = __OFADD__(v14, v7);
  v15 = v14 + v7;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v9 + 16) = v15;
LABEL_7:
  if (a3 >= 1)
  {
    if (*(a4 + 16) == a3)
    {
      memcpy(v10, (a4 + 32), 8 * a3);
      goto LABEL_10;
    }

LABEL_17:
    __break(1u);
    return result;
  }

LABEL_10:
}

uint64_t sub_25BAC7908(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = a2[2];
  if (!v4)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v17[12] = v2;
    v17[13] = v3;
    v5 = *(result + 32);
    v6 = a2[5];
    v7 = *(a2[4] + 16);
    swift_retain_n();

    v8 = sub_25BAC42B0();
    v10 = v9;
    v17[0] = v5;
    static Tensor.- prefix(_:)(v17);
    v11 = v17[1];
    v12 = *(v6 + 16);

    v13 = sub_25BAC42B0();
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_25BCBAE70;
    *(v16 + 32) = v5;
    *(v16 + 40) = v8;
    *(v16 + 48) = v10;
    *(v16 + 56) = v11;
    *(v16 + 64) = v13;
    *(v16 + 72) = v15;

    return v16;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_25BAC7A2C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BAC7A60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25BCBAE50;
  sub_25BAB9E04(v0 + 32);
  return v0;
}

uint64_t sub_25BAC7AE4(uint64_t result, uint64_t a2)
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
      v7 = v3;
      v8 = v2;

      static Tensor./ infix(_:_:)(&v9, &v8, &v7);
      *(v4 + 32) = v9;
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

uint64_t sub_25BAC7BB0(uint64_t result, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v4 = *(result + 32);
      v5 = *(a2 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v6 = OUTLINED_FUNCTION_32_11();
      *(v6 + 16) = xmmword_25BCBAE50;
      v9[1] = v4;
      v10 = v5;

      a3(v9, &v10);
      static Tensor.* infix(_:_:)();

      *(v6 + 32) = v10;
      v7 = *(v5 + 16);

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

void static Tensor.+ infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = OUTLINED_FUNCTION_119_4();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_15_30();
  do
  {
    if (v8 == 4)
    {
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v9);
  v10 = 0;
  do
  {
    if (v10 == 4)
    {
      v57 = OUTLINED_FUNCTION_171_0();
      v58 = v50;
      v49 = xmmword_25BCC6530;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v9);
  OUTLINED_FUNCTION_98_6(v11);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  if (!v60)
  {
    OUTLINED_FUNCTION_54_10(v2[1].Kind);
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v51, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_14_30();
    goto LABEL_18;
  }

  v12 = OUTLINED_FUNCTION_207_1();
  OUTLINED_FUNCTION_35_16(v12, v13);
  v14();
  v15 = OUTLINED_FUNCTION_151_1();
  OUTLINED_FUNCTION_53_11(v15, v16);
  v17();
  OUTLINED_FUNCTION_195_1();
  if (!v9)
  {
    OUTLINED_FUNCTION_128();
    if (!(!v9 & v19))
    {
      OUTLINED_FUNCTION_127_0(v18);
      if (!v9)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_203_0();
      v52 = OUTLINED_FUNCTION_101_5();
      v57 = v60;
      v58 = v0;
      OUTLINED_FUNCTION_52_10(v52, v53, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v54, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_14_30();
LABEL_18:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_15:
    v57 = OUTLINED_FUNCTION_172_1();
    v58 = v48;
    v49 = xmmword_25BCC6520;
LABEL_17:
    OUTLINED_FUNCTION_12_32(v49);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_18;
  }

LABEL_13:
  v57 = v2;
  v20 = OUTLINED_FUNCTION_103_5();
  LOBYTE(v60) = v3;
  v21 = OUTLINED_FUNCTION_46_14(v20, *MEMORY[0x277D84660]);
  v22(v21);
  OUTLINED_FUNCTION_62_6();
  v23 = OUTLINED_FUNCTION_126_1();
  v1(v23);

  OUTLINED_FUNCTION_57_6();
  v24 = OUTLINED_FUNCTION_66_7();
  v25(v24);
  OUTLINED_FUNCTION_62_6();
  v26 = OUTLINED_FUNCTION_25_12();
  v1(v26);

  OUTLINED_FUNCTION_90_4();

  v27 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v27);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v61 = xmmword_25BCCB470;
  OUTLINED_FUNCTION_77_5(v28);
  OUTLINED_FUNCTION_161_1();
  v29 = OUTLINED_FUNCTION_29_20();
  OUTLINED_FUNCTION_108_5(v29, v30, v31, 0, v32, v33, v34, v35, v55, v56);
  OUTLINED_FUNCTION_137_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v36 = OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_102_5(v36, xmmword_25BCBAE70);

  v37 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v37, v38, v39, v40, 110, v41);
  swift_setDeallocating();
  sub_25BAB3FD0();
  OUTLINED_FUNCTION_175_1();
  type metadata accessor for ContextManager();
  OUTLINED_FUNCTION_176_1();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_174_1();
  sub_25BAA4AF4(&v57);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_152_1();

  OUTLINED_FUNCTION_173_1();
  sub_25BAA4AF4(&v57);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v57) = v42;
  OUTLINED_FUNCTION_1_53();
  OUTLINED_FUNCTION_64_8(v43, v44, v45, v46);
  OUTLINED_FUNCTION_107_6();
  v47 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v47);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(&v59);
  OUTLINED_FUNCTION_124_3();
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAC80D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v8 = *(result + 32);
      v9 = *(a2 + 32);

      OUTLINED_FUNCTION_38_16();
      a5(a3);
      v15[0] = v16;
      v15[1] = a4;
      v14 = v8;
      sub_25BAC81F4(a3, v15, &v14);
      v10 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_25BCBAE50;
      *(v11 + 32) = v10;
      v12 = *(v9 + 16);

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

uint64_t sub_25BAC81F4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v7 = sub_25BCB783C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = *a3;
  v20 = *v3;
  v14 = v20;
  v21 = v12;
  static Tensor..== infix(_:_:)(&v19, &v21, &v20);
  LOBYTE(v20) = *(*(v14 + 16) + 160);
  (*(v8 + 104))(v11, *MEMORY[0x277D84660], v7);
  Tensor.cast(to:roundingRule:)();
  (*(v8 + 8))(v11, v7);

  v15 = v21;
  v20 = v21;
  Tensor.sum(alongAxes:)(&v21, a1);
  v16 = v21;
  v20 = *(*(v14 + 16) + 152);
  v21 = v13;
  sub_25BCB617C();
  Tensor.broadcasted(to:)(&v20);

  v21 = v15;
  static Tensor.* infix(_:_:)();

  v21 = v16;
  static Tensor./ infix(_:_:)();
}

BOOL sub_25BAC863C(uint64_t a1)
{
  v2 = *(*v1 + 16);
  v3 = (*v1 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_25BAC8690(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  OUTLINED_FUNCTION_11_51(a1, a2, a3, a4, a5, a6, a7);
  if (!v11)
  {
    v9 = sub_25BABCB24(v12, sub_25BAC86EC);
  }

  v13 = *v7;
  v14 = v7[1];
  *(v8 + 72) = *v7;
  return OUTLINED_FUNCTION_0_90(v9, v10, v11, v13.n128_f64[0], v14);
}

uint64_t sub_25BAC86EC(char a1)
{
  result = 0x6C61757165;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_8_57();
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_75();
      break;
    case 3:
      result = OUTLINED_FUNCTION_10_51();
      break;
    case 4:
      result = OUTLINED_FUNCTION_4_67();
      break;
    case 5:
      result = 0x6C61757145746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAC87B4()
{
  OUTLINED_FUNCTION_1_64();
  v6 = v5;
  v8 = *v7;
  if (!v4)
  {
    v2 = sub_25BAA5EA0(1953718627, 0xE400000000000000);
  }

  v9 = v0[1];
  *(v1 + 56) = *v0;
  OUTLINED_FUNCTION_8_2(v2, v3, v4);
  *(v1 + 40) = v6;
  *(v1 + 48) = v8;
  return OUTLINED_FUNCTION_2_68(v10, v11);
}

uint64_t OUTLINED_FUNCTION_194_1()
{

  return swift_retain_n();
}

uint64_t sub_25BAC8B08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(*(v0 + 40) + 152), *(v0 + 48));
  return v1;
}

uint64_t sub_25BAC8B7C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = OUTLINED_FUNCTION_24_1();
  sub_25BA9D8C4(v3);
  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BAC8C10(uint64_t result, void *a2, char a3)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2[2];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = *(result + 32);
  v6 = a2[4];
  v5 = a2[5];
  if ((a3 & 1) == 0)
  {
    v11 = 0;
    v38 = 0;
    v8 = *(v4 + 16);
    v9 = *(v6 + 16);
    v10 = *(v5 + 16);
    goto LABEL_8;
  }

  if (v3 < 3)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = a2[6];
  v8 = *(v4 + 16);
  v9 = *(v6 + 16);
  v10 = *(v5 + 16);
  v11 = *(v7 + 16);

  v38 = v7;

LABEL_8:
  v44[55] = 0;
  *&v45 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  *(&v45 + 1) = 107;
  v46 = 2;
  v47 = xmmword_25BCC2C00;
  v48 = "init(id:gradient:input:weight:bias:creationSite:)";
  v49 = 49;
  v50 = 2;
  type metadata accessor for LinearGradientOperation();
  swift_allocObject();

  v12 = sub_25BAC9234(0, 0, 0, v8, v9, v10, v11, &v45);
  sub_25BAA51C8(*(v4 + 16) + 168, v44);
  sub_25BAA51C8(v44, v43);
  sub_25BAA51C8(v43, v42);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v39);

  v13 = v41;

  sub_25BAA4AF4(v39);
  sub_25BAA49B8();
  sub_25BAA4A5C(v39);

  v14 = v40;

  sub_25BAA4AF4(v39);
  type metadata accessor for TensorRepresentation();
  v15 = swift_allocObject();
  v39[0] = 1;
  v16 = sub_25BAC94A0(v12, 0, v42, 0x100000000, v13, v14, v15);
  type metadata accessor for TensorHandle();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v43);
  sub_25BAA51C8(v44, v43);
  sub_25BAA51C8(v43, v42);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v39);

  v18 = v41;

  sub_25BAA4AF4(v39);
  sub_25BAA49B8();
  sub_25BAA4A5C(v39);

  v19 = v40;

  sub_25BAA4AF4(v39);
  v20 = swift_allocObject();
  v39[0] = 1;
  v21 = sub_25BAC94A0(v12, 1, v42, 0x100000000, v18, v19, v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25BCBAE70;
  *(v23 + 32) = v17;
  v24 = *(v6 + 16);

  *(v23 + 40) = sub_25BAC42B0();
  *(v23 + 48) = v25;
  *(v23 + 56) = v22;
  v26 = *(v5 + 16);

  *(v23 + 64) = sub_25BAC42B0();
  *(v23 + 72) = v27;
  if (v38)
  {
    sub_25BAA51C8(v44, v43);
    sub_25BAA51C8(v43, v42);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v39);

    v28 = v41;

    sub_25BAA4AF4(v39);
    sub_25BAA49B8();
    sub_25BAA4A5C(v39);

    v29 = v40;

    sub_25BAA4AF4(v39);
    v30 = swift_allocObject();
    v39[0] = 1;
    v31 = sub_25BAC94A0(v12, 2, v42, 0x100000000, v28, v29, v30);
    v32 = swift_allocObject();
    *(v32 + 16) = v31;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v43);
    v33 = *(v38 + 16);

    v34 = sub_25BAC42B0();
    v36 = v35;
    sub_25BAC98F4();
    v23 = v37;

    sub_25BA9C2C8(v44);
    *(v23 + 16) = 3;
    *(v23 + 80) = v32;
    *(v23 + 88) = v34;
    *(v23 + 96) = v36;
  }

  else
  {
    sub_25BA9C2C8(v44);
  }

  return v23;
}

uint64_t sub_25BAC9234(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _OWORD *a8)
{
  *(v8 + 64) = 0;
  if (!a3)
  {
    v14 = OUTLINED_FUNCTION_4_3(0x7261656E696CLL);
    a1 = sub_25BAA5EA0(v14, v15);
    v16 = *(v8 + 64);
  }

  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;

  v17 = a8[1];
  *(v8 + 80) = *a8;
  *(v8 + 96) = v17;
  *(v8 + 112) = a8[2];
  *(v8 + 122) = *(a8 + 42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_25BCBAE70;

  sub_25BAC9400(v19, v18 + 32);

  sub_25BAC9400(v20, v18 + 48);
  if (a7)
  {
    v21 = *(a7 + 152);
    v27 = *(a7 + 160);
    v23 = *(v18 + 16);
    v22 = *(v18 + 24);

    sub_25BCB617C();
    if (v23 >= v22 >> 1)
    {
      sub_25BAC944C();
      v18 = v26;
    }

    *(v18 + 16) = v23 + 1;
    v24 = v18 + 16 * v23;
    *(v24 + 32) = v21;
    *(v24 + 40) = v27;
  }

  else
  {
  }

  *(v8 + 72) = v18;
  return v8;
}

uint64_t sub_25BAC9400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  sub_25BCB617C();

  *a2 = v3;
  *(a2 + 8) = v4;
  return result;
}

char *sub_25BAC9480(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

__n128 *sub_25BAC9730()
{
  v1 = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v2 = swift_allocObject();
  if (v1)
  {
    OUTLINED_FUNCTION_16_23(v2, xmmword_25BCC5CB0);
    v2[3].n128_u64[0] = v0;
    v2[3].n128_u64[1] = v1;
  }

  else
  {
    OUTLINED_FUNCTION_16_23(v2, xmmword_25BCBAE60);
    v2[3].n128_u64[0] = v0;
  }

  return v2;
}

uint64_t OUTLINED_FUNCTION_177@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 88) = a2;
  *(result + 96) = 0;
  *(result + 104) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_177_1()
{

  return sub_25BAAF54C(v0);
}

__n128 *OUTLINED_FUNCTION_182(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = 120;
  result[2].n128_u64[1] = 0xE100000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_182_0@<X0>(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v3 - 104) = a2;
  *(v3 - 88) = v2;
  *(v3 - 80) = 39;
  *(v3 - 72) = a1;
  *(v3 - 71) = 0;

  return type metadata accessor for InputOperation();
}

uint64_t sub_25BAC986C()
{
  if (*(v0[9] + 16) == 1)
  {
    v1 = v0[3];
    v2 = v0[4];
    sub_25BCB617C();
  }

  else
  {
    v4 = v0[3];
    v5 = v0[4];
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    sub_25BCB77FC();
    OUTLINED_FUNCTION_28_0();
  }

  return OUTLINED_FUNCTION_24_1();
}

char *sub_25BAC9928(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_0_82(a3, result);
  }

  return result;
}

uint64_t sub_25BAC9950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  swift_retain_n();
  while (1)
  {
    v7 = *(*(a3 + 16) + 24);

    v8 = *(v6 + 24);
    if (v7 >= v8)
    {
      break;
    }

    v9 = *(a3 + 24);
    if (!v9)
    {
      break;
    }

    v10 = *(a3 + 24);
    swift_retain_n();

    a3 = v9;
  }

  if (a3 == a2 && *(*(a2 + 16) + 24) < v8)
  {
    sub_25BAC719C(a1, a2);
  }

  else
  {
    sub_25BAC9A20(a1, a3);
  }
}

uint64_t sub_25BAC9A20(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 32);
  *(a1 + 32) = *(a2 + 32);

  v6 = *(a1 + 24);
  *(a1 + 24) = a2;

  v7 = *(a2 + 32);
  if (v7)
  {
    v8 = *(v7 + 24);
    *(v7 + 24) = a1;

    v9 = *(a2 + 32);
  }

  else
  {
  }

  *(a2 + 32) = a1;

  v10 = *(v2 + 24);
  if (v10 && v10 == a2)
  {
    *(v2 + 24) = a1;
  }
}

uint64_t sub_25BAC9B04(uint64_t result, uint64_t a2)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v2 = *(result + 32);
      v3 = *(a2 + 32);
      v4 = *(v2 + 16);
      v5 = *(v3 + 16);
      v26 = 0;
      *&v20 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ActivationOps.swift";
      *(&v20 + 1) = 115;
      v21 = 2;
      v22 = xmmword_25BCD3A40;
      v23 = "init(id:gradientOperand:operand:creationSite:)";
      v24 = 46;
      v25 = 2;
      type metadata accessor for ReLUGradientOperation();
      swift_allocObject();

      v6 = sub_25BAC9D9C(0, 0, 0, v4, v5, &v20);
      sub_25BAA51C8(*(v2 + 16) + 168, v19);
      sub_25BAA51C8(v19, v18);
      type metadata accessor for ContextManager();
      swift_retain_n();
      sub_25BAA49B8();
      sub_25BAA4A5C(v15);

      v7 = v17;

      sub_25BAA4AF4(v15);
      sub_25BAA49B8();
      sub_25BAA4A5C(v15);

      v8 = v16;

      sub_25BAA4AF4(v15);
      type metadata accessor for TensorRepresentation();
      v9 = swift_allocObject();
      v15[0] = 1;
      v10 = sub_25BAC9DF0(v6, 0, v18, 0x100000000, v7, v8, v9);
      type metadata accessor for TensorHandle();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;

      sub_25BAA6EB0();

      sub_25BA9C2C8(v19);
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

uint64_t sub_25BAC9D9C(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _OWORD *a6)
{
  *(v6 + 112) = a4;
  if (!a3)
  {
    v9 = OUTLINED_FUNCTION_0_52();
    a1 = sub_25BAA5EA0(v9, v10);
  }

  return sub_25BAB9A8C(a1, a2, a3, a5, a6);
}

uint64_t sub_25BACA0D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE40;
  swift_beginAccess();
  v2 = *(v0 + 112);
  v3 = *(v0 + 40);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t OUTLINED_FUNCTION_43_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_1(uint64_t a1)
{
  *(a1 + 16) = v1;
}

uint64_t OUTLINED_FUNCTION_43_3()
{

  return sub_25BCB6D8C();
}

void OUTLINED_FUNCTION_43_4()
{
  v1 = *(v0 - 344);
  v2 = *(v0 - 248);
  v3 = *(v0 - 224);
}

void OUTLINED_FUNCTION_43_9()
{

  JUMPOUT(0x25F876C90);
}

uint64_t OUTLINED_FUNCTION_43_10()
{

  return sub_25BCB74CC();
}

uint64_t OUTLINED_FUNCTION_43_14()
{
  v2 = *(v0 - 120);
  v3 = *(v0 - 112);
  v4 = *(v0 - 144);
  v5 = *(v0 - 176);

  return sub_25BCB681C();
}

uint64_t OUTLINED_FUNCTION_43_16()
{

  return sub_25BCB643C();
}

uint64_t OUTLINED_FUNCTION_43_17()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_43_18()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_43_19()
{

  return sub_25BCB74CC();
}

__n128 *OUTLINED_FUNCTION_43_21(__n128 *result, __n128 a2)
{
  result[1] = a2;
  result[2].n128_u64[0] = v2;
  return result;
}

uint64_t sub_25BACA374()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = OUTLINED_FUNCTION_24_1();
  sub_25BA9D8C4(v3);
  return OUTLINED_FUNCTION_24_1();
}

uint64_t sub_25BACA420(uint64_t result, void *a2, char a3)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = a2[2];
  if (!v3)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v3 == 1)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = *(result + 32);
  v5 = a2[4];
  v6 = a2[5];
  v42 = v4;
  v43 = v6;
  v44 = v5;
  if ((a3 & 1) == 0)
  {
    v41 = 0;
    v12 = *(v4 + 16);
    v13 = *(v5 + 16);
    v14 = *(v6 + 16);
    goto LABEL_8;
  }

  if (v3 < 3)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v7 = a2[6];
  v8 = *(v4 + 16);
  v9 = *(v5 + 16);
  v10 = *(v6 + 16);
  v11 = *(v7 + 16);

  v41 = v7;

LABEL_8:
  v51[55] = 0;
  v52 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/NNOps.swift";
  v53 = 107;
  v54 = 2;
  v55 = xmmword_25BCD6FA0;
  v56 = "init(id:gradient:input:weight:bias:stride:padding:dilation:groupCount:creationSite:)";
  v57 = 84;
  v58 = 2;
  type metadata accessor for Convolution2DGradientOperation();
  swift_allocObject();

  v15 = sub_25BACAA60();
  sub_25BAA51C8(*(v42 + 16) + 168, v51);
  sub_25BAA51C8(v51, v49);
  sub_25BAA51C8(v49, v48);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v16 = v47;

  sub_25BAA4AF4(v45);
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v17 = v46;

  sub_25BAA4AF4(v45);
  type metadata accessor for TensorRepresentation();
  v18 = swift_allocObject();
  v45[0] = 1;
  v19 = sub_25BACAAF8(v15, 0, v48, 0x100000000, v16, v17, v18);
  type metadata accessor for TensorHandle();
  v20 = swift_allocObject();
  *(v20 + 16) = v19;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v49);
  sub_25BAA51C8(v51, v49);
  sub_25BAA51C8(v49, v48);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v21 = v47;

  sub_25BAA4AF4(v45);
  sub_25BAA49B8();
  sub_25BAA4A5C(v45);

  v22 = v46;

  sub_25BAA4AF4(v45);
  v23 = swift_allocObject();
  v45[0] = 1;
  v24 = sub_25BACAAF8(v15, 1, v48, 0x100000000, v21, v22, v23);
  v25 = swift_allocObject();
  *(v25 + 16) = v24;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_25BCBAE70;
  *(v26 + 32) = v20;
  v27 = *(v44 + 16);

  *(v26 + 40) = sub_25BAC42B0();
  *(v26 + 48) = v28;
  *(v26 + 56) = v25;
  v29 = *(v43 + 16);

  *(v26 + 64) = sub_25BAC42B0();
  *(v26 + 72) = v30;
  if (v41)
  {
    v50 = 0;
    memset(v49, 0, sizeof(v49));
    sub_25BAA51C8(v49, v48);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v45);

    v31 = v47;

    sub_25BAA4AF4(v45);
    sub_25BAA49B8();
    sub_25BAA4A5C(v45);

    v32 = v46;

    sub_25BAA4AF4(v45);
    v33 = swift_allocObject();
    v45[0] = 1;
    v34 = sub_25BACAAF8(v15, 2, v48, 0x100000000, v31, v32, v33);
    v35 = swift_allocObject();
    *(v35 + 16) = v34;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v49);
    v36 = *(v41 + 16);

    v37 = sub_25BAC42B0();
    v39 = v38;
    sub_25BAC98F4();
    v26 = v40;

    sub_25BA9C2C8(v51);
    *(v26 + 16) = 3;
    *(v26 + 80) = v35;
    *(v26 + 88) = v37;
    *(v26 + 96) = v39;
  }

  else
  {
    sub_25BA9C2C8(v51);
  }

  return v26;
}

uint64_t sub_25BACAA60()
{
  OUTLINED_FUNCTION_14_22();
  OUTLINED_FUNCTION_5_30(v1, v2, v3, v4);
  if (v5)
  {
  }

  else
  {

    v14 = OUTLINED_FUNCTION_4_3(0x6432766E6F63);
    v6 = sub_25BAA5EA0(v14, v15);
  }

  OUTLINED_FUNCTION_0_45(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22);
  return v0;
}

uint64_t sub_25BACAD94()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE70;
  v2 = v0[5];

  sub_25BAC9400(v3, v1 + 32);
  v4 = v0[6];

  sub_25BAC9400(v5, v1 + 48);
  v6 = v0[7];
  if (v6)
  {
    v7 = *(v6 + 152);
    v8 = *(v6 + 160);

    sub_25BCB617C();
    sub_25BAC944C();
    v1 = v9;

    *(v1 + 16) = 3;
    *(v1 + 64) = v7;
    *(v1 + 72) = v8;
  }

  return v1;
}

uint64_t sub_25BACAE6C()
{
  v1 = *(v0 + 192);
  v2 = sub_25BAB4304();

  v4 = sub_25BACAEC4(v3, v2);

  return v4;
}

uint64_t sub_25BACAEC4(uint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84F90];
  v2 = sub_25BAAF54C(a2);
  v3 = __OFADD__(v2, 1);
  result = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    sub_25BAC1E24(result, 0);

    sub_25BACAF48(v5);
    v6 = sub_25BCB617C();
    sub_25BAC1D78(v6);
    return v7;
  }

  return result;
}

uint64_t sub_25BACAF48(uint64_t a1)
{
  v3 = sub_25BAAF54C(*v1);
  v4 = __OFADD__(v3, 1);
  result = v3 + 1;
  if (v4)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_25BAC1E24(result, 1);
  v6 = *v1;
  v7 = *v1 & 0xFFFFFFFFFFFFFF8;
  v8 = *(v7 + 0x10);
  v9 = *(v7 + 0x18) >> 1;
  v10 = v9 - v8;
  if (v9 != v8)
  {
    v11 = 0;
    while (1)
    {
      if ((v10 & ~(v10 >> 63)) == v11)
      {
        __break(1u);
        goto LABEL_12;
      }

      if (!a1)
      {
        break;
      }

      *(v7 + 8 * v8 + 32 + 8 * v11++) = a1;
      a1 = 0;
      if (v10 == v11)
      {
        v11 = v10;
        break;
      }
    }

    if (v11 < 1)
    {
      goto LABEL_14;
    }

    v4 = __OFADD__(v8, v11);
    v12 = v8 + v11;
    if (!v4)
    {
      *(v7 + 16) = v12;
      *v1 = v6;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25BACB000()
{
  v0 = sub_25BAB3058();
  if (v0)
  {
    v1 = v0;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(v1))
    {
      v2 = sub_25BACB108();
    }

    else
    {
      v2 = 0;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_25BACB06C()
{
  OUTLINED_FUNCTION_17_10();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_6_54(v0, v1, v2, v3, v4, v5, v6, v7, v11[0], v11[1]);
  if (v14)
  {
    if (v14 != 1)
    {
      sub_25BA9778C(v12);
      return 0;
    }

    OUTLINED_FUNCTION_7_54();
    swift_unknownObjectRelease();
    v8 = &v13;
  }

  else
  {
    v8 = v12;
  }

  sub_25BA9BE3C(v8, v11);
  Strong = swift_weakLoadStrong();
  sub_25BA977E0(v11);
  return Strong;
}

uint64_t sub_25BACB108()
{
  result = sub_25BACB06C();
  if (result)
  {
    v1 = *(result + 24);

    return v1 & 1;
  }

  return result;
}

void sub_25BACB138()
{
  v1 = v0;
  sub_25BACB3B4();
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);

  v4 = 0;
  v22 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v4 >= *(v2 + 16))
    {
      break;
    }

    v5 = *(v2 + 8 * v4 + 32);
    swift_retain_n();
    v6 = sub_25BAB3058();
    if (v6 && (Class = object_getClass(v6), swift_unknownObjectRelease(), Class == _TtC14NeuralNetworks16TrackedOperation))
    {
      v23 = 0;
      v24 = 0xE000000000000000;
      v11 = sub_25BAC44E4();
      MEMORY[0x25F876C90](v11);

      MEMORY[0x25F876C90](95, 0xE100000000000000);
      sub_25BAC4018();
      sub_25BCB73CC();

      v8 = v23;
      v10 = v24;
    }

    else
    {
      v8 = sub_25BAC44E4();
      v10 = v9;
    }

    swift_beginAccess();
    v12 = *(v1 + 32);
    if (*(v12 + 16))
    {
      v13 = sub_25BA9266C(v8, v10);
      v15 = v14;

      if ((v15 & 1) == 0)
      {
        goto LABEL_13;
      }

      v16 = *(*(v12 + 56) + 8 * v13);
      swift_endAccess();
      if (*(v1 + 40))
      {
        v23 = v16;

        sub_25BAC481C(&v23);
      }

      else
      {
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = *(v22 + 16);
        sub_25BAA1B64();
        v22 = v20;
      }

      v18 = *(v22 + 16);
      v17 = *(v22 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_14_15(v17);
        sub_25BAA1B64();
        v22 = v21;
      }

      ++v4;
      *(v22 + 16) = v18 + 1;
      *(v22 + 8 * v18 + 32) = v16;
    }

    else
    {

LABEL_13:
      swift_endAccess();

      ++v4;
    }
  }

  __break(1u);
}

void sub_25BACB3B4()
{
  v1 = *(v0 + 16);
  v37 = *(v1 + 16);
  if (v37)
  {
    v2 = v0;

    v3 = 0;
    v36 = v1;
    while (v3 < *(v1 + 16))
    {
      v4 = *(v1 + 8 * v3 + 32);
      swift_retain_n();
      v5 = sub_25BAB3058();
      if (v5 && (Class = object_getClass(v5), swift_unknownObjectRelease(), Class == _TtC14NeuralNetworks16TrackedOperation))
      {
        v40 = 0;
        v41 = 0xE000000000000000;
        v9 = sub_25BAC44E4();
        MEMORY[0x25F876C90](v9);

        MEMORY[0x25F876C90](95, 0xE100000000000000);
        v48[0] = sub_25BAC4018();
        sub_25BCB73CC();

        v8 = v41;
        v39 = v40;
      }

      else
      {
        v39 = sub_25BAC44E4();
        v8 = v7;
      }

      swift_beginAccess();
      if (*(*(v2 + 32) + 16) && (sub_25BA9266C(v39, v8), (v10 & 1) != 0))
      {
        swift_endAccess();
      }

      else
      {
        v38 = v8;
        swift_endAccess();
        v11 = *(v4 + 152);
        v12 = *(v4 + 160);
        v49 = 0;
        memset(v48, 0, sizeof(v48));
        sub_25BAA51C8(v48, &v42);
        if (*(&v43 + 1))
        {
          v46[0] = v42;
          v46[1] = v43;
          v46[2] = v44;
          v47 = v45;
        }

        else
        {
          type metadata accessor for ContextManager();
          sub_25BAA49B8();
          sub_25BAA4A5C(&v40);

          sub_25BAA51C8(&v40, v46);
          sub_25BAA4AF4(&v40);
          if (*(&v43 + 1))
          {
            sub_25BA9C2C8(&v42);
          }
        }

        if (qword_28154F2C8 != -1)
        {
          swift_once();
        }

        v40 = v11;
        LOBYTE(v42) = v12;
        sub_25BC72C64(&v40, &v42, v46, qword_281557400);
        v14 = v13;
        v15 = type metadata accessor for TensorRepresentation();
        sub_25BAA51C8(v46, &v40);
        ObjectType = swift_getObjectType();
        v17 = swift_unknownObjectRetain();
        LOBYTE(v42) = 1;
        v18 = sub_25BC5FAD0(v17, &v40, 0x100000000uLL, v15, ObjectType, v14);
        type metadata accessor for TensorHandle();
        v19 = swift_allocObject();
        *(v19 + 16) = v18;

        sub_25BAA6EB0();
        swift_unknownObjectRelease();

        sub_25BA9C2C8(v46);
        sub_25BA9C2C8(v48);
        swift_beginAccess();
        v20 = *(v2 + 32);
        swift_isUniquelyReferenced_nonNull_native();
        v48[0] = *(v2 + 32);
        v21 = v48[0];
        *(v2 + 32) = 0x8000000000000000;
        v22 = sub_25BA9266C(v39, v38);
        if (__OFADD__(*(v21 + 16), (v23 & 1) == 0))
        {
          goto LABEL_31;
        }

        v24 = v22;
        v25 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6700, &qword_25BCCBEF0);
        if (sub_25BCB745C())
        {
          v26 = v38;
          v27 = sub_25BA9266C(v39, v38);
          if ((v25 & 1) != (v28 & 1))
          {
            goto LABEL_33;
          }

          v24 = v27;
        }

        else
        {
          v26 = v38;
        }

        v29 = v48[0];
        if (v25)
        {
          v30 = *(v48[0] + 56);
          v31 = *(v30 + 8 * v24);
          *(v30 + 8 * v24) = v19;
        }

        else
        {
          *(v48[0] + 8 * (v24 >> 6) + 64) |= 1 << v24;
          v32 = (v29[6] + 16 * v24);
          *v32 = v39;
          v32[1] = v26;
          *(v29[7] + 8 * v24) = v19;
          v33 = v29[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_32;
          }

          v29[2] = v35;
        }

        *(v2 + 32) = v29;
        swift_endAccess();

        v1 = v36;
      }

      if (v37 == ++v3)
      {

        return;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_25BCB795C();
    __break(1u);
  }
}

void sub_25BACB85C()
{
  OUTLINED_FUNCTION_13_40();
  if (v4 >= v2 && v2 + 8 * v3 > v4)
  {
    if (v1 != v0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
      v7 = OUTLINED_FUNCTION_9_26();

      MEMORY[0x2821FE820](v7);
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
    v6 = OUTLINED_FUNCTION_9_26();

    MEMORY[0x2821FE828](v6);
  }
}

uint64_t sub_25BACB90C()
{
  sub_25BACB93C();
  OUTLINED_FUNCTION_54();

  return swift_deallocClassInstance();
}

void *sub_25BACB93C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t sub_25BACB974()
{
  sub_25BACB9A4();
  OUTLINED_FUNCTION_30_0();

  return swift_deallocClassInstance();
}

uint64_t sub_25BACB9A4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_25BACB9CC()
{
  v0 = sub_25BCB5EFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BCB5EBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v10 = sub_25BCB5EEC();
  __swift_project_value_buffer(v10, qword_28154BE90);
  v11 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v12 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v11, v12, v15, "Backpropagation (Gradient Pass)", v13, v14, 2u);
    MEMORY[0x25F8797F0](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BACBC58(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25BACBC64(a1);
}

uint64_t sub_25BACBC64(uint64_t a1)
{
  sub_25BCB736C();
  swift_getTupleTypeMetadata2();
  v7 = sub_25BCB604C();
  v2 = *(a1 + 16);
  sub_25BCB68CC();
  sub_25BCB679C();
  if (v2)
  {
    v3 = 0;
    v4 = a1 + 32;
    do
    {
      sub_25BCB690C();
      v6 = *(v4 + 8 * v3);

      sub_25BCB687C();
      ++v3;
    }

    while (v2 != v3);
  }

  return v7;
}

uint64_t objectdestroy_44Tm()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  OUTLINED_FUNCTION_50_17();

  return MEMORY[0x2821FE8E8](v3, v4, v5);
}

uint64_t sub_25BACBDA4()
{
  sub_25BACBDE0();
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25BACBDE0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = sub_25BA9BEA0(v1);
  sub_25BCB617C();
  for (i = 0; v2 != i; ++i)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x25F8779B0](i, v1);
    }

    else
    {
      if (i >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      *&v13 = 0xD000000000000026;
      *(&v13 + 1) = 0x800000025BCDC350;
      v16 = 9;
      sub_25BA97890();
    }

    v5 = sub_25BA928B4();
    [v5 lock];

    swift_beginAccess();
    sub_25BA9323C(v4 + 40, v18);
    if (v20 && v20 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA9323C(v4 + 40, v12);
      sub_25BA9323C(v12, &v7);
      if (v11 == 1)
      {
        v13 = v7;
        v14 = v8;
        v15 = v9;
        v17 = 2;
        sub_25BA977E0(&v10);
      }

      else
      {
        if (v11 != 2)
        {
          goto LABEL_20;
        }

        sub_25BA9778C(&v7);
        sub_25BA9323C(v12, &v13);
      }

      sub_25BA9778C(v12);
      swift_beginAccess();
      sub_25BA97834(&v13, v4 + 40);
      swift_endAccess();
      sub_25BA977E0(&v19);
    }

    else
    {
      sub_25BA9778C(v18);
    }

    [*(v4 + 224) unlock];
  }
}

uint64_t OUTLINED_FUNCTION_88_0()
{

  return sub_25BCB789C();
}

uint64_t OUTLINED_FUNCTION_88_1(_WORD *a1)
{
  *a1 = 0;

  return sub_25BCB5E9C();
}

uint64_t OUTLINED_FUNCTION_88_5()
{

  return Tensor.init<A>(_:scalarType:on:)(v1, v2 - 144, v0, (v2 - 192));
}

uint64_t OUTLINED_FUNCTION_103(uint64_t a1)
{
  v3 = *(*(v1 + 56) + 8 * a1);

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_103_3()
{
  *(v1 - 160) = v0;

  return sub_25BAFC990();
}

uint64_t OUTLINED_FUNCTION_103_5()
{

  return sub_25BABDA0C(v0 - 152);
}

uint64_t sub_25BACC1B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v34 = a2;
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v9 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
LABEL_13:
    v26[0] = a1;
    LOBYTE(v27) = 10;
    sub_25BAA4B48(v26, &v27, v31, sub_25BACC614, v4);
    v15 = v14;

    sub_25BAA51C8(v31, v26);
    type metadata accessor for TensorRepresentation();
    v16 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v18 = swift_unknownObjectRetain();
    LOBYTE(v27) = 1;
    v19 = sub_25BAA5BB4(v18, v26, 0x100000000, v16, ObjectType, v15);
    type metadata accessor for TensorHandle();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(a3);
    sub_25BA9C2C8(v31);
    sub_25BA9C2C8(v33);

    *a4 = v20;
    return result;
  }

  v10 = 1;
LABEL_7:
  if (v10 == *(a2 + 16))
  {
    v12 = sub_25BAA51C8(a3, v33);
    MEMORY[0x28223BE20](v12);
    OUTLINED_FUNCTION_71_0();
    *(v13 - 16) = &v34;
    sub_25BAA51C8(v33, &v27);
    if (*(&v28 + 1))
    {
      v31[0] = v27;
      v31[1] = v28;
      v31[2] = v29;
      v32 = v30;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v26);

      sub_25BAA51C8(v26, v31);
      sub_25BAA4AF4(v26);
      if (*(&v28 + 1))
      {
        sub_25BA9C2C8(&v27);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(a1 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v11)
      {
        break;
      }

      if (v22 == 1)
      {
        goto LABEL_21;
      }
    }

    __break(1u);

    sub_25BA9C2C8(v31);
    sub_25BA9C2C8(v33);

    __break(1u);
  }

  v23 = 1;
LABEL_21:
  v33[0] = v23;
  OUTLINED_FUNCTION_102_0();
  v24 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v24);

  MEMORY[0x25F876C90](0x7372616C61637320, 0xED00002074756220);
  v33[0] = *(a2 + 16);
  OUTLINED_FUNCTION_102_0();
  v25 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v25);

  MEMORY[0x25F876C90](0x7270206572657720, 0xEF2E64656469766FLL);
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

void *sub_25BACC5B8(void *result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = (a2 - result) / 4;
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a3 + 16);
  if (v4)
  {
    if (v3 < v4)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, (a3 + 32), 4 * v4);
    }
  }

  return result;
}

uint64_t sub_25BACC6A0(uint64_t a1, void *a2)
{
  v5 = v2[6];
  v6 = v2[7];
  v7 = v2[8];
  result = v6(a1 + v5);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_25BACC6F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8)
{
  v80 = a4;
  v81 = a5;
  v92 = a3;
  v82 = a2;
  v13 = sub_25BCB783C();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v16 = *(a7 - 8);
  v17 = v16[8];
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v72 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v18);
  v25 = &v72 - v22;
  if ((*(a1 + 8) & 1) == 0)
  {
    v72 = v24;
    v73 = v23;
    v74 = result;
    v75 = a6;
    v76 = a1;
    v77 = v8;
    v79 = v16[2];
    v79(&v72 - v22, v92, a7);
    v26 = a8;
    v27 = *(a8 + 48);
    v28 = v27(a7, a8);
    v78 = v16[1];
    v78(v25, a7);
    if (v28 == 1.0)
    {
      v29 = v82;
    }

    else
    {
      v79(v25, v92, a7);
      v30 = v27(a7, a8);
      v78(v25, a7);
      OUTLINED_FUNCTION_0_94();
      v31 = v82;
      v32 = *(*(v82 + 16) + 160);
      v33 = OUTLINED_FUNCTION_6_6();
      sub_25BAA51C8(v33, v34);
      v89 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = v30;
      LOBYTE(v84) = v32;
      v36 = OUTLINED_FUNCTION_1_78();
      sub_25BAA51C8(v36, v37);
      Tensor.init(shape:coercingScalars:scalarType:on:)(&v89, inited, &v84, v88, &v85);
      sub_25BA9C2C8(v90);
      sub_25BA9C2C8(v91);
      v90[0] = v31;
      v88[0] = v85;

      OUTLINED_FUNCTION_1_78();
      static Tensor.* infix(_:_:)();

      v29 = v91[0];
    }

    v79(v20, v92, a7);
    v38 = *(v26 + 40);

    v38(&v85, a7, v26);
    v78(v20, a7);
    v39 = v29;
    v40 = v76;
    v41 = v26;
    if (v87 == 255)
    {

      v91[0] = v39;
    }

    else
    {
      v42 = v39;
      v43 = v85;
      v44 = v86;
      v45 = *v80;
      if (v87)
      {
        v80 = *v80;
        if (v87 == 1)
        {

          OUTLINED_FUNCTION_0_94();
          v46 = *(*(v42 + 16) + 160);
          v47 = OUTLINED_FUNCTION_6_6();
          sub_25BAA51C8(v47, v48);
          v84 = MEMORY[0x277D84F90];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v49 = swift_initStackObject();
          *(v49 + 16) = xmmword_25BCBAE50;
          *(v49 + 32) = v43;
          v83 = v46;
          v50 = OUTLINED_FUNCTION_1_78();
          sub_25BAA51C8(v50, v51);
          OUTLINED_FUNCTION_2_79();
          sub_25BA9C2C8(v90);
          sub_25BA9C2C8(v91);
          v52 = v89;
          v90[0] = v42;
          Tensor.squared()();
          v88[0] = v91[0];
          v89 = &unk_286D423B0;
          Tensor.reshaped(to:)(&v89, v90);

          v88[0] = v90[0];
          Tensor.sum(squeezingAxes:)(&v89);

          sqrt(_:)(v91, &v89);

          v53 = v91[0];
          v89 = v52;
          v90[0] = v42;
          v91[0] = v52;
          v88[0] = v53;
          max(_:_:)();
          static Tensor./ infix(_:_:)();

          OUTLINED_FUNCTION_1_78();
          static Tensor.* infix(_:_:)();
        }

        else
        {
          OUTLINED_FUNCTION_0_94();
          v55 = *(*(v42 + 16) + 160);
          v56 = OUTLINED_FUNCTION_6_6();
          sub_25BAA51C8(v56, v57);
          v84 = MEMORY[0x277D84F90];
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v58 = swift_initStackObject();
          *(v58 + 16) = xmmword_25BCBAE50;
          *(v58 + 32) = v44;
          v83 = v55;
          v59 = OUTLINED_FUNCTION_1_78();
          sub_25BAA51C8(v59, v60);

          OUTLINED_FUNCTION_2_79();
          sub_25BA9C2C8(v90);
          sub_25BA9C2C8(v91);
          v82 = v42;
          v91[0] = v42;
          v90[0] = v89;
          OUTLINED_FUNCTION_6_6();
          static Tensor.* infix(_:_:)();
          v91[0] = v45;
          LOBYTE(v90[0]) = *(*(v42 + 16) + 160);
          v62 = v73;
          v61 = v74;
          v63 = a7;
          v64 = v72;
          (*(v73 + 104))(v72, *MEMORY[0x277D84660], v74);
          Tensor.cast(to:roundingRule:)();
          v65 = v64;
          a7 = v63;
          (*(v62 + 8))(v65, v61);
          static Tensor./ infix(_:_:)();
        }
      }

      else
      {
        v54 = *v80;

        v90[0] = v42;
        Tensor.clamped(to:)(v91, *&v43, *(&v43 + 1));
      }
    }

    v66 = *(*v40 + 32);
    if ((~v66 & 0xF000000000000007) != 0 && v66 < 0)
    {
      v90[0] = v66 & 0x7FFFFFFFFFFFFFFFLL;
      v88[0] = v91[0];
      v67 = *(v41 + 64);
      sub_25BAB3020(v66);

      v67(v91, v81, v90, v88, a7, v41);

      v68 = v91[0];

      v69 = v75;
      sub_25BAB3120();
      v70 = *(*v69 + 16);
      sub_25BAB6E4C(v70);
      v71 = *v69;
      *(v71 + 16) = v70 + 1;
      *(v71 + 8 * v70 + 32) = v68;
      v91[0] = v68;

      Parameter.wrappedValue.setter(v91);

      sub_25BAB310C(v66);
    }

    else
    {
      result = sub_25BCB74CC();
      __break(1u);
    }
  }

  return result;
}

void sub_25BACCF44(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 28);
  *a1 = *(v1 + 16);
  *(a1 + 12) = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_25BACCF60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = v5;
  v10 = *a2;
  v11 = *a3;
  if (qword_28154E1E0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v60 = a5;
  if (byte_27FBB3838 == 1)
  {
    if (*(v5 + 36) == 255)
    {
    }

    else
    {
      v12 = *(v5 + 32) | (*(v5 + 36) << 32);
      LODWORD(v70) = *(v5 + 32);
      BYTE4(v70) = BYTE4(v12) & 1;
      v71[0] = v11;
      v67[0] = v10;
      sub_25BB08FF0(v71, v67);
    }

    v13 = *v5;
    v14 = *(*(v10 + 16) + 160);
    LODWORD(v64) = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v70 = sub_25BACD7D8(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v15 = swift_allocObject();
    v16 = sub_25BACD7C4(v15, 1);
    *v17 = v13;
    v18 = nullsub_1(v16, v17);
    LOBYTE(v69) = v14;
    sub_25BAA51C8(&v61, v71);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v70, v18, &v69, v71, v67);
    sub_25BA9C2C8(&v61);
    v59 = v67[0];
    v19 = Adam.step.getter();
    v20 = *(*(v10 + 16) + 160);
    LODWORD(v64) = 0;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    v70 = sub_25BACD7D8(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v21 = swift_allocObject();
    v22 = sub_25BACD7C4(v21, 1);
    *v23 = v19;
    v24 = nullsub_1(v22, v23);
    LOBYTE(v69) = v20;
    sub_25BAA51C8(&v61, v71);
    Tensor.init(shape:coercingScalars:scalarType:on:)(&v70, v24, &v69, v71, v67);
    sub_25BA9C2C8(&v61);
    v58 = v67[0];
    if (!*(v7 + 48))
    {
      *&v61 = *(v7 + 56);
      v48 = *(a4 + 16);
      v49 = *(a4 + 24);
      v27 = type metadata accessor for OptimizerStateDictionary();
      OptimizerStateDictionary.subscript.getter(sub_25BB28290, v27, v71);
      v56 = v71[0];
      goto LABEL_17;
    }

    v57 = v10;
    v25 = *(a4 + 16);
    v26 = *(a4 + 24);
    v27 = type metadata accessor for OptimizerStateDictionary();
    OptimizerStateDictionary.subscript.getter(a1, v27);
    if (v61)
    {
      v56 = v61;
LABEL_17:
      *&v61 = *(v7 + 64);
      type metadata accessor for OptimizerStateDictionary();
      v50 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v27, v71);
      v57 = v7;
      if (*(v7 + 72))
      {
        *&v61 = *(v7 + 72);
        v50 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v27, v71);
      }

      MEMORY[0x28223BE20](v50);
      sub_25BACDABC(sub_25BB28274);
    }

LABEL_24:
    v65 = 0u;
    memset(v66, 0, 28);
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v66[28] = 22;
    sub_25BADDD28();
  }

  if (*(v5 + 36) == 255)
  {
  }

  else
  {
    v28 = *(v5 + 32) | (*(v5 + 36) << 32);
    LODWORD(v70) = *(v5 + 32);
    BYTE4(v70) = BYTE4(v28) & 1;
    v71[0] = v11;
    v67[0] = v10;
    sub_25BB08FF0(v71, v67);
    v11 = v61;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  v30 = sub_25BACD7C4(inited, 2);
  *v31 = v10;
  v31[1] = v11;
  v32 = nullsub_1(v30, v31);

  v59 = v11;

  sub_25BAB7DE8(v32, v71);

  v33 = *v7;
  v34 = *(*(v10 + 16) + 160);
  LODWORD(v64) = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v69 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  v35 = swift_initStackObject();
  v36 = sub_25BACD7C4(v35, 1);
  *v37 = v33;
  v38 = nullsub_1(v36, v37);
  v68[0] = v34;
  sub_25BAA51C8(&v61, v67);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v69, v38, v68, v67, &v70);
  sub_25BA9C2C8(&v61);
  v39 = v70;
  v40 = Adam.step.getter();
  LODWORD(v64) = 0;
  v62 = 0u;
  v63 = 0u;
  v61 = 0u;
  v69 = sub_25BACD7D8(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v41 = swift_allocObject();
  v42 = sub_25BACD7C4(v41, 1);
  *v43 = v40;
  v44 = nullsub_1(v42, v43);
  v68[0] = 2;
  sub_25BAA51C8(&v61, v67);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v69, v44, v68, v67, &v70);
  sub_25BA9C2C8(&v61);
  v57 = v70;
  if (*(v7 + 48))
  {
    v45 = *(a4 + 16);
    v46 = *(a4 + 24);
    v47 = type metadata accessor for OptimizerStateDictionary();
    OptimizerStateDictionary.subscript.getter(a1, v47);
    if (!v61)
    {
      goto LABEL_24;
    }

    v56 = v61;
  }

  else
  {
    *&v61 = *(v7 + 56);
    v51 = *(a4 + 16);
    v52 = *(a4 + 24);
    v47 = type metadata accessor for OptimizerStateDictionary();
    OptimizerStateDictionary.subscript.getter(sub_25BB28290, v47, v67);
    v56 = v67[0];
  }

  v58 = v39;
  *&v61 = *(v7 + 64);
  type metadata accessor for OptimizerStateDictionary();
  v53 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v47, v67);
  if (*(v7 + 72))
  {
    *&v61 = *(v7 + 72);
    v53 = OptimizerStateDictionary.subscript.getter(sub_25BB28290, v47, v67);
  }

  v55[1] = v55;
  MEMORY[0x28223BE20](v53);
  sub_25BACDABC(sub_25BACE350);

  return sub_25BA9C2C8(v71);
}

uint64_t sub_25BACD7C8(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_25BACD7D8(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      result = sub_25BCB67DC();
      *(result + 16) = v1;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return result;
}

uint64_t Adam.step.getter()
{
  v1 = *(v0 + 48);
  result = v1 + 1;
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t OptimizerStateDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  sub_25BCB6FEC();
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  type metadata accessor for OptimizerStateDictionary.ParameterKey();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  sub_25BCB61BC();
}

uint64_t sub_25BACD904(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_25BACD94C(v7, *v2, v2[1]);
  return sub_25BCB7A3C();
}

uint64_t sub_25BACD974(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24);
  return sub_25BACD990(*a1, a1[1], *a2, a2[1]);
}

uint64_t sub_25BACD990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (a1 == a3)
  {
    return 1;
  }

  sub_25BCB6FFC();
  return MEMORY[0x25F877800](a1, a3) & 1;
}

uint64_t OptimizerStateDictionary.subscript.getter@<X0>(uint64_t (*a1)(uint64_t)@<X1>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v7 = *v3;

  sub_25BCB6FEC();
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  type metadata accessor for OptimizerStateDictionary.ParameterKey();
  OUTLINED_FUNCTION_0_23();
  swift_getWitnessTable();
  sub_25BCB61BC();

  if (!v11)
  {
    return a1(result);
  }

  *a3 = v11;
  return result;
}

uint64_t sub_25BACDABC(void (*a1)(uint64_t))
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v5);

  type metadata accessor for ResolutionDependencies();
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;

  v5[9] = v2;
  sub_25BAA49B8();
  sub_25BAB7060(v5);

  a1(v2);

  sub_25BAA49B8();
  sub_25BAB814C();

  return sub_25BAA4AF4(v5);
}

uint64_t sub_25BACDBCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t *a11)
{
  v13 = *a11;
  v14 = *(a1 + 16);
  v15 = *(a2 + 16);
  v16 = *(a3 + 16);
  v17 = *(a4 + 16);
  if (a5)
  {
    v18 = *(a5 + 16);
  }

  else
  {
    v18 = 0;
  }

  v19 = *(a6 + 16);
  v20 = *(a7 + 16);
  v21 = *(a9 + 4);
  v22 = *(a9 + 8);
  v23 = *(a9 + 12);
  v48 = *(v13 + *MEMORY[0x277D84308]);
  v24 = *(a9 + 72) != 0;
  v56[55] = 0;
  v57 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/OptimizerOps.swift";
  v58 = 114;
  v59 = 2;
  v60 = xmmword_25BCBD7D0;
  v61 = "init(id:parameter:gradient:momentum:velocity:maximumVelocity:learningRate:step:beta1:beta2:epsilon:usesAMSGrad:creationSite:)";
  v62 = 125;
  v63 = 2;
  type metadata accessor for AdamOperation();
  swift_allocObject();

  v25 = sub_25BACE38C(0, 0, 0, v21, v22, v23, v14, v15, v16, v17, v18, v19, v20, v24);
  sub_25BAA51C8(a10, v56);
  sub_25BAA51C8(v56, v55);
  type metadata accessor for ContextManager();
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v52);

  v26 = v54;

  sub_25BAA4AF4(v52);
  sub_25BAA49B8();
  sub_25BAA4A5C(v52);

  v27 = v53;

  sub_25BAA4AF4(v52);
  type metadata accessor for TensorRepresentation();
  v28 = swift_allocObject();
  LOBYTE(v52[0]) = 1;
  v29 = sub_25BACE3F4(v25, 0, v55, 0x100000000, v26, v27, v28);
  type metadata accessor for TensorHandle();
  v50 = swift_allocObject();
  *(v50 + 16) = v29;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v56);
  sub_25BAA51C8(a10, v56);
  sub_25BAA51C8(v56, v55);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v52);

  v30 = v54;

  sub_25BAA4AF4(v52);
  sub_25BAA49B8();
  sub_25BAA4A5C(v52);

  v31 = v53;

  sub_25BAA4AF4(v52);
  v32 = swift_allocObject();
  LOBYTE(v52[0]) = 1;
  v33 = sub_25BACE3F4(v25, 1, v55, 0x100000000, v30, v31, v32);
  v34 = swift_allocObject();
  *(v34 + 16) = v33;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v56);
  v52[0] = v34;
  v35 = type metadata accessor for OptimizerStateDictionary();

  v49 = v34;

  OptimizerStateDictionary.subscript.setter(v52, a11, v35);
  sub_25BAA51C8(a10, v56);
  sub_25BAA51C8(v56, v55);
  swift_retain_n();
  sub_25BAA49B8();
  sub_25BAA4A5C(v52);

  v36 = v54;

  sub_25BAA4AF4(v52);
  sub_25BAA49B8();
  sub_25BAA4A5C(v52);

  v37 = v53;

  sub_25BAA4AF4(v52);
  v38 = swift_allocObject();
  LOBYTE(v52[0]) = 1;
  v39 = sub_25BACE3F4(v25, 2, v55, 0x100000000, v36, v37, v38);
  v40 = swift_allocObject();
  *(v40 + 16) = v39;

  sub_25BAA6EB0();

  sub_25BA9C2C8(v56);
  v52[0] = v40;

  OptimizerStateDictionary.subscript.setter(v52, a11, v35);
  if (*(a9 + 72))
  {
    sub_25BAA51C8(a10, v56);
    sub_25BAA51C8(v56, v55);
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(v52);

    v41 = v54;

    sub_25BAA4AF4(v52);
    sub_25BAA49B8();
    sub_25BAA4A5C(v52);

    v42 = v53;

    sub_25BAA4AF4(v52);
    v43 = swift_allocObject();
    LOBYTE(v52[0]) = 1;
    v44 = sub_25BACE3F4(v25, 3, v55, 0x100000000, v41, v42, v43);
    v45 = swift_allocObject();
    *(v45 + 16) = v44;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v56);
    if (*(a9 + 72))
    {
      v52[0] = v45;

      OptimizerStateDictionary.subscript.setter(v52, a11, v35);
    }
  }

  else
  {
    v45 = 0;
  }

  v52[0] = v50;
  sub_25BAC481C(v52);
  v52[0] = v45;
  sub_25BACE994(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_25BCBAE70;
  *(v46 + 32) = v40;
  *(v46 + 40) = v49;

  sub_25BACEA3C(v46);

  swift_setDeallocating();
  result = sub_25BAB3FD0();
  *a8 = v50;
  return result;
}

uint64_t sub_25BACE38C(int a1, uint64_t a2, uint64_t a3, float a4, float a5, float a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  *(v14 + 136) = a9;
  *(v14 + 144) = a10;
  *(v14 + 152) = a11;
  *(v14 + 160) = a12;
  *(v14 + 168) = a13;
  *(v14 + 116) = a4;
  *(v14 + 120) = a5;
  *(v14 + 124) = a6;
  *(v14 + 128) = a14;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(1835099233, 0xE400000000000000);
  }

  return OUTLINED_FUNCTION_0_4(a1, a2, a3);
}

uint64_t sub_25BACE690()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE90;
  v2 = v0[5];

  sub_25BAC9400(v3, v1 + 32);
  v4 = v0[17];

  sub_25BAC9400(v5, v1 + 48);
  v6 = v0[18];

  sub_25BAC9400(v7, v1 + 64);
  v8 = v0[19];
  if (v8)
  {
    v9 = *(v8 + 152);
    v10 = *(v8 + 160);
    v11 = sub_25BCB617C();
    sub_25BC03008(v11, v10);
  }

  return v1;
}

uint64_t sub_25BACE748()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  v2 = v1;
  v7 = *(v0 + 136);
  *(v1 + 32) = *(v0 + 40);
  *(v1 + 48) = v7;
  *(v1 + 16) = xmmword_25BCBAE80;
  v3 = *(v0 + 168);
  v4 = *(v0 + 152);
  *(v1 + 64) = *(v0 + 160);
  *(v1 + 72) = v3;
  if (v4)
  {
    v8 = v1;

    sub_25BACAF48(v5);
    return v8;
  }

  else
  {
  }

  return v2;
}

uint64_t OptimizerStateDictionary.subscript.setter(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {

    sub_25BCB6FEC();
    v4 = *(a3 + 16);
    v5 = *(a3 + 24);
    type metadata accessor for OptimizerStateDictionary.ParameterKey();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_21_10();
    sub_25BCB61AC();
    sub_25BCB61CC();
  }

  else
  {

    sub_25BCB6FEC();
    v6 = *(a3 + 16);
    v7 = *(a3 + 24);
    type metadata accessor for OptimizerStateDictionary.ParameterKey();
    OUTLINED_FUNCTION_0_23();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_21_10();
    sub_25BCB61AC();
    sub_25BCB611C();
  }
}

uint64_t sub_25BACE994(uint64_t result)
{
  if (*result)
  {
    v2 = v1;
    v3 = *(*result + 16);
    OUTLINED_FUNCTION_3_48();
    swift_weakAssign();
    OUTLINED_FUNCTION_0_69();

    sub_25BAC4888();
    v4 = *(*(v1 + 24) + 16);
    sub_25BAC48A0(v4);
    v5 = *(v1 + 24);
    *(v5 + 16) = v4 + 1;
    sub_25BAC48B8(v6, v5 + 8 * v4 + 32);
    *(v2 + 24) = v5;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_25BACEA3C(uint64_t result)
{
  v2 = *(result + 16);
  if (v2)
  {
    v3 = result + 32;
    do
    {
      v4 = *(*v3 + 16);
      OUTLINED_FUNCTION_3_48();
      swift_weakAssign();
      OUTLINED_FUNCTION_0_69();
      v5 = *(v1 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v1 + 24) = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = *(v5 + 16);
        sub_25BACEB4C();
        v5 = v9;
        *(v1 + 24) = v9;
      }

      v7 = *(v5 + 16);
      if (v7 >= *(v5 + 24) >> 1)
      {
        sub_25BACEB4C();
        v5 = v10;
      }

      *(v5 + 16) = v7 + 1;
      sub_25BAC48B8(v11, v5 + 8 * v7 + 32);
      *(v1 + 24) = v5;
      swift_endAccess();

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  return result;
}

void sub_25BACEB4C()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DA8, &qword_25BCBBD28);
      v8 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_10_0(v8);
      OUTLINED_FUNCTION_9_1(v9);
      if (v1)
      {
LABEL_9:
        OUTLINED_FUNCTION_7_4();
        sub_25BACB85C();
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3DB0, &qword_25BCCCD60);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BACEC0C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 32);
  if ((~v3 & 0xF000000000000007) != 0)
  {
    if (v3 < 0)
    {
      if ((v2 & 0xF000000000000007) == 0xF000000000000007 || (v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((v2 & 0xF000000000000007) == 0xF000000000000007)
    {
      goto LABEL_12;
    }
  }

  else if ((~v2 & 0xF000000000000007) != 0)
  {
    v4 = *a1;
    sub_25BAB69FC();
    sub_25BAB310C(v3);
    sub_25BAB310C(v2);
LABEL_12:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  sub_25BAB3020(*a1);
  sub_25BAB3020(v3);
  sub_25BAB310C(v3);

  return sub_25BAB310C(v2);
}

uint64_t sub_25BACED40(uint64_t *a1)
{
  v5 = *a1;
  v2 = v5;
  sub_25BACEC0C(&v5);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;

  return sub_25BAB310C(v3);
}

uint64_t Array<A>.resolve(descriptor:)(__int128 *a1, uint64_t a2)
{
  v3 = 0;
  v10 = *a1;
  v11 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v4 = *(a2 + 16);
  v5 = a2 + 32;
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      OUTLINED_FUNCTION_0_0();
      swift_once();
      goto LABEL_15;
    }

    v2 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_18;
    }

    v6 = *(*(v5 + 8 * v3) + 16);
    swift_retain_n();

    v7 = sub_25BA928B4();
    [v7 lock];

    swift_beginAccess();
    sub_25BA9323C(v6 + 40, v12);
    if (v14 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v13);
LABEL_9:
      [*(v6 + 224) unlock];

      ++v3;
    }

    else
    {
      if (v14 == 2)
      {
        sub_25BA9778C(v12);
        goto LABEL_9;
      }

      sub_25BA9778C(v12);
      [*(v6 + 224) unlock];

      MEMORY[0x25F876F40](v8);
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      sub_25BCB680C();
      v11 = v15;
      ++v3;
    }
  }

  v2 = v11;
  if (!sub_25BA9AC54(v11))
  {
  }

  if (qword_28154F2C8 != -1)
  {
    goto LABEL_19;
  }

LABEL_15:
  *v12 = v10;
  sub_25BACEFC8(v2, v12);
}

uint64_t sub_25BACEFC8(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(v2 + 24);
  v8 = swift_allocObject();
  v8[2] = v3;
  v8[3] = a1;
  v8[4] = v5;
  v8[5] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_25BACF1E8;
  *(v9 + 24) = v8;
  v12[4] = sub_25BACF244;
  v12[5] = v9;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_25BACF24C;
  v12[3] = &block_descriptor_3;
  v10 = _Block_copy(v12);
  sub_25BCB617C();

  sub_25BCB617C();

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BACF140()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25BACF21C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_25BACF298(uint64_t a1, char *a2)
{
  v10 = *a2;
  v11 = *(a2 + 1);
  v12 = MEMORY[0x277D84F90];
  v13[0] = MEMORY[0x277D84F90];
  result = sub_25BA9BEA0(a1);
  v4 = result;
  v5 = 0;
  while (v4 != v5)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F8779B0](v5, a1);
      v6 = result;
    }

    else
    {
      if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v7 = sub_25BA928B4();
    [v7 lock];

    OUTLINED_FUNCTION_17_10();
    swift_beginAccess();
    sub_25BA9323C(v6 + 40, v14);
    if (v17 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v15);
LABEL_11:
      [*(v6 + 224) unlock];
      OUTLINED_FUNCTION_51_0();

      ++v5;
    }

    else
    {
      if (v17 == 2)
      {
        sub_25BA9778C(v14);
        goto LABEL_11;
      }

      sub_25BA9778C(v14);
      [*(v6 + 224) unlock];

      MEMORY[0x25F876F40](v8);
      v9 = *((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v13[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= v9 >> 1)
      {
        OUTLINED_FUNCTION_81(v9);
        sub_25BCB67AC();
      }

      result = sub_25BCB680C();
      v12 = v13[0];
      ++v5;
    }
  }

  if (sub_25BA9BEA0(v12))
  {
    v16 = 0;
    v15 = 0u;
    memset(v14, 0, sizeof(v14));
    LOBYTE(v13[0]) = v10;
    v13[1] = v11;
    swift_allocObject();
    result = sub_25BACF4E0(v12, v14, 0, v13);
    if (result)
    {
      return result;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_25BACF4E0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v8 = *a4;
  v17 = *(a4 + 1);
  *(v4 + 16) = 0;
  v9 = MEMORY[0x277D84F90];
  v10 = sub_25BCB614C();
  *(v4 + 40) = v9;
  *(v4 + 48) = v10;
  *(v4 + 56) = v9;
  v11 = sub_25BCB614C();
  *(v4 + 64) = v9;
  *(v4 + 72) = v11;
  sub_25BACF724();
  v12 = sub_25BCB614C();
  *(v4 + 80) = v9;
  *(v4 + 88) = v12;
  *(v4 + 96) = v9;
  v13 = sub_25BCB614C();
  *(v4 + 104) = v9;
  *(v4 + 112) = v13;
  *(v4 + 120) = v9;
  v14 = sub_25BCB614C();
  *(v4 + 144) = 0u;
  *(v4 + 128) = v9;
  *(v4 + 136) = v14;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 192) = 0;
  *(v4 + 200) = MEMORY[0x277D84FA0];
  if (qword_28154F9D0 != -1)
  {
    swift_once();
  }

  *(v4 + 208) = dword_281557408;
  *(v4 + 216) = v9;
  swift_beginAccess();
  sub_25BACF778(a2, v4 + 144);
  swift_endAccess();
  *(v4 + 24) = v8;
  *(v4 + 32) = v17;
  if (a3)
  {
    v15 = a3;
  }

  else
  {
    type metadata accessor for LazyTensorFunctionBuilder.TraceContext();
    v15 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69D0, &qword_25BCCEC30);
    *(v15 + 16) = sub_25BCB614C();
  }

  sub_25BACF80C(a1, v15);

  sub_25BAA6F5C(a2, &qword_27FBB6730, &qword_25BCBC4B0);
  return v4;
}

unint64_t sub_25BACF724()
{
  result = qword_28154ED90;
  if (!qword_28154ED90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154ED90);
  }

  return result;
}

uint64_t sub_25BACF778(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BACF80C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v211 = a1;
  v212 = a2;
  v209 = *v2;
  ObjectType = sub_25BCB5EBC();
  v5 = *(ObjectType - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](ObjectType);
  v9 = &v205 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v205 - v10;
  if (qword_28154BE88 != -1)
  {
    goto LABEL_173;
  }

  while (1)
  {
    v12 = sub_25BCB5EEC();
    __swift_project_value_buffer(v12, qword_28154BE90);
    sub_25BCB5EAC();
    v13 = sub_25BCB5EDC();
    v14 = sub_25BCB6D5C();
    if (sub_25BCB6E1C())
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      v16 = sub_25BCB5E9C();
      _os_signpost_emit_with_name_impl(&dword_25BA90000, v13, v14, v16, "Trace Tensor Function", "", v15, 2u);
      MEMORY[0x25F8797F0](v15, -1, -1);
    }

    (*(v5 + 16))(v9, v11, ObjectType);
    v17 = sub_25BCB5F2C();
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v206 = sub_25BCB5F1C();
    v20 = *(v5 + 8);
    v5 += 8;
    v20(v11, ObjectType);
    v21 = sub_25BCB617C();
    v22 = sub_25BAD15E4(v21);
    v227 = v22;
    v226[10] = MEMORY[0x277D84FA0];
    v23 = *(v22 + 16);
    v214 = v3;
    if (!v23)
    {
      break;
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v24 = *(v22 + 16);
    v208 = xmmword_25BCBB6D0;
    while (!v24)
    {
LABEL_117:
      v22 = v227;
      v24 = *(v227 + 16);
      if (!v24)
      {
        goto LABEL_126;
      }
    }

    v25 = *(v22 + 8 * v24 + 24);

    v26 = sub_25BAB3058();
    if (!v26)
    {
      goto LABEL_180;
    }

    v5 = v27;
    v213 = v26;
    v28 = sub_25BAD1678(v26, v27);
    if (v29 == 2)
    {
      sub_25BAA4930(v3 + 144, &v216, &qword_27FBB6730, &qword_25BCBC4B0);
      if (*(&v217 + 1))
      {
        v220 = v216;
        v221 = v217;
        v222 = v218;
        v223 = v219;
        v9 = v213;
      }

      else
      {
        v9 = v213;
        sub_25BAD1778(v215, v5, v3, &v220);
        if (*(&v217 + 1))
        {
          sub_25BAA6F5C(&v216, &qword_27FBB6730, &qword_25BCBC4B0);
        }
      }

      swift_beginAccess();
      sub_25BAD1994(&v220, v3 + 144);
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v50 = v3;
      v11 = *(v5 + 64);
      if ((*(v3 + 208) & (v11)(ObjectType, v5)) == 0 || (sub_25BAD1D74(v3, v215 + 168, v9, v5) & 1) == 0 || (sub_25BAD2078(v3, v9, v5) & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
        v65 = swift_allocObject();
        *(v65 + 16) = v208;
        v66 = v215;
        *(v65 + 32) = v215;
        v223 = 0;
        v221 = 0u;
        v222 = 0u;
        v220 = 0u;
        v67 = *(v3 + 32);
        LOBYTE(v216) = 0;
        *(&v216 + 1) = v67;
        swift_allocObject();

        v68 = v212;

        sub_25BCB617C();
        v69 = sub_25BACF4E0(v65, &v220, v68, &v216);
        v3 = v50;
        if (v69)
        {
          v70 = swift_beginAccess();
          MEMORY[0x25F876F40](v70);
          sub_25BAD5150(*((v50[27] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          swift_endAccess();
        }

        v9 = sub_25BAC44E4();
        ObjectType = v71;
        swift_beginAccess();
        v72 = v50[6];
        if (*(v72 + 16) && (v73 = sub_25BA9266C(v9, ObjectType), (v74 & 1) != 0))
        {
          v75 = *(*(v72 + 56) + 8 * v73);
          v76 = v50[5];
          if ((v76 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F8779B0](v75);
            swift_endAccess();

            swift_unknownObjectRelease();
            v11 = v213;
          }

          else
          {
            v11 = v213;
            if ((v75 & 0x8000000000000000) != 0)
            {
              goto LABEL_171;
            }

            if (v75 >= *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_172;
            }

            swift_endAccess();
          }
        }

        else
        {

          MEMORY[0x25F876F40](v77);
          v78 = *((v50[5] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_25BAD5150(*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          if (__OFSUB__(sub_25BAAF54C(*(v3 + 40)), 1))
          {
            goto LABEL_168;
          }

          v79 = *(v3 + 48);
          swift_isUniquelyReferenced_nonNull_native();
          *&v216 = *(v3 + 48);
          sub_25BAD3E08();
          *(v3 + 48) = v216;
          swift_endAccess();

          v80 = *(v66 + 152);
          v81 = *(v66 + 160);
          swift_beginAccess();
          sub_25BCB617C();
          sub_25BAFD048();
          v82 = *(*(v214 + 56) + 16);
          sub_25BAFD1A8();
          v83 = *(v214 + 56);
          *(v83 + 16) = v82 + 1;
          v84 = v83 + 16 * v82;
          *(v84 + 32) = v80;
          *(v84 + 40) = v81;
          v3 = v214;
          *(v214 + 56) = v83;
          swift_endAccess();
          *&v220 = 0x5F7475706E69;
          *(&v220 + 1) = 0xE600000000000000;
          *&v216 = *(*(v3 + 64) + 16);
          v85 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v85);

          v9 = *(&v220 + 1);
          ObjectType = v220;
          v86 = sub_25BAC44E4();
          v87 = v22;
          v89 = v88;
          swift_beginAccess();
          sub_25BAD3BF4(ObjectType, v9, v86, v89, 1);
          swift_endAccess();
          v22 = v87;

          v90 = *(v66 + 160);
          v11 = v213;
          if ((v90 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v216, v90 == 10);
            swift_endAccess();
          }
        }

        if (!*(v22 + 16))
        {
          goto LABEL_166;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v227 = v22;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v22 = sub_25BC1B13C(v22);
          v227 = v22;
        }

        v92 = *(v22 + 16);
        if (!v92)
        {
          goto LABEL_167;
        }

        v93 = v92 - 1;
        ObjectType = *(v22 + 8 * v93 + 32);
        *(v22 + 16) = v93;
        sub_25BCB725C();

        swift_unknownObjectRelease();

        goto LABEL_117;
      }

      *(v3 + 208) &= (v11)(ObjectType, v5);
      sub_25BAD21F4(v9, v5);
      v11 = &qword_25BCCCD60;
      if (*(v3 + 24) == 1)
      {
        v51 = sub_25BAD259C();
        if (v51)
        {
          ObjectType = v51;
          v52 = sub_25BAC4018();
          if (!sub_25BAC40D8(&v220, v52) || (swift_beginAccess(), v53 = *(ObjectType + 24), (v54 = *(v53 + 16)) == 0))
          {

            goto LABEL_121;
          }

          v207 = ObjectType;
          v9 = v53 + 32;
          sub_25BCB617C();
          v55 = 1;
          v56 = v54;
          *&v210 = v53;
          while (2)
          {
            if (v55 - 1 >= v56)
            {
              goto LABEL_169;
            }

            sub_25BAA4930(v9, v226, &qword_27FBB3DB0, &qword_25BCCCD60);
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              ObjectType = Strong;
              if (*(Strong + 32) <= 0)
              {
                sub_25BAA6F5C(v226, &qword_27FBB3DB0, &qword_25BCCCD60);

                goto LABEL_41;
              }

              v58 = sub_25BA928B4();
              [v58 lock];

              swift_beginAccess();
              sub_25BA9323C(ObjectType + 40, &v220);
              if (v225)
              {
                if (v225 == 1)
                {

                  swift_unknownObjectRelease();
                  sub_25BA977E0(&v222);
                }

                else
                {
                  sub_25BA9778C(&v220);
                }

                [*(ObjectType + 224) unlock];

                sub_25BAA6F5C(v226, &qword_27FBB3DB0, &qword_25BCCCD60);
LABEL_40:

                v11 = &qword_25BCCCD60;
LABEL_41:
                if (v55 >= v54)
                {
LABEL_120:

                  v9 = v213;
                  goto LABEL_121;
                }
              }

              else
              {
                sub_25BA9BE3C(&v220, &v216);
                v59 = *(&v216 + 1);
                v60 = swift_getObjectType();
                v61 = *(v59 + 56);
                v62 = v59;
                v53 = v210;
                v63 = v61(v60, v62);
                sub_25BA977E0(&v216);
                [*(ObjectType + 224) unlock];

                sub_25BAA6F5C(v226, &qword_27FBB3DB0, &qword_25BCCCD60);
                if (v63)
                {
                  goto LABEL_40;
                }

                sub_25BCB723C();
                v64 = *(v227 + 16);
                sub_25BCB728C();
                v53 = v210;
                sub_25BCB729C();
                sub_25BCB725C();
                v11 = &qword_25BCCCD60;
                if (v55 >= v54)
                {
                  goto LABEL_120;
                }
              }

              v56 = *(v53 + 16);
              ++v55;
              v9 += 8;
              continue;
            }

            break;
          }

          sub_25BAA6F5C(v226, &qword_27FBB3DB0, &qword_25BCCCD60);
          goto LABEL_41;
        }
      }

LABEL_121:
      sub_25BAD285C(v9, v5, v212, v3, &v227);

      goto LABEL_116;
    }

    v30 = v28;
    v9 = v29;
    if (sub_25BAC4018() == v28)
    {
      if (v9)
      {
        v11 = 0;
        v94 = 0;
        ObjectType = 0;
      }

      else
      {
        v124 = swift_getObjectType();
        v9 = (*(v5 + 16))(v124, v5);
        swift_beginAccess();
        v125 = *(v3 + 88);
        if (*(v125 + 16) && (v126 = sub_25BAD23EC(), (v127 & 1) != 0))
        {
          v128 = *(*(v125 + 56) + 8 * v126);
          if ((v128 & 0x8000000000000000) != 0)
          {
            goto LABEL_178;
          }

          if (v128 >= *(*(v3 + 80) + 16))
          {
            goto LABEL_179;
          }

          swift_endAccess();

          v11 = 0;
          v94 = 0;
          ObjectType = 0;
          v129 = v213;
        }

        else
        {
          sub_25BAD46FC();
          v130 = v22;
          v131 = *(*(v3 + 80) + 16);
          sub_25BAD4820(v131);
          v132 = *(v3 + 80);
          *(v132 + 16) = v131 + 1;
          v133 = v132 + 16 * v131;
          v129 = v213;
          *(v133 + 32) = v213;
          *(v133 + 40) = v5;
          *(v3 + 80) = v132;
          swift_unknownObjectRetain();
          v134 = *(v3 + 88);
          swift_isUniquelyReferenced_nonNull_native();
          *&v216 = *(v3 + 88);
          v22 = v130;
          sub_25BAD4714();
          *(v3 + 88) = v216;
          swift_endAccess();

          v135 = swift_unknownObjectRetain();
          v11 = sub_25BAD4888(v135, v5);
          v94 = v136;
          ObjectType = v137;
          swift_beginAccess();

          sub_25BAD4DE8();
          v9 = *(*(v3 + 96) + 16);
          sub_25BAD4E40();
          v138 = *(v3 + 96);
          *(v138 + 16) = v9 + 1;
          v139 = (v138 + 24 * v9);
          v139[4] = v11;
          v139[5] = v94;
          v139[6] = ObjectType;
          *(v3 + 96) = v138;
          swift_endAccess();
        }

        sub_25BAD21F4(v129, v5);
      }

      v140 = *(v3 + 32);
      v5 = v215;
      if (*(v140 + 16))
      {
        v141 = sub_25BAC4018();
        if (*(v140 + 16))
        {
          v142 = v141;
          v143 = *(v140 + 40);
          v144 = sub_25BCB79BC();
          v145 = ~(-1 << *(v140 + 32));
          while (1)
          {
            v146 = v144 & v145;
            if (((*(v140 + 56 + (((v144 & v145) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v144 & v145)) & 1) == 0)
            {
              break;
            }

            v144 = v146 + 1;
            if (*(*(v140 + 48) + 8 * v146) == v142)
            {
              goto LABEL_103;
            }
          }
        }
      }

      if (*(v5 + 32) < 1)
      {
LABEL_103:

        v3 = v214;
      }

      else
      {
        *&v210 = v11;
        v9 = sub_25BAC44E4();
        v11 = v147;
        v3 = v214;
        swift_beginAccess();
        v148 = *(v3 + 112);
        if (*(v148 + 16) && (v149 = sub_25BA9266C(v9, v11), (v150 & 1) != 0))
        {
          v151 = *(*(v148 + 56) + 8 * v149);
          v152 = *(v3 + 104);
          if ((v152 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F8779B0](v151);
            swift_endAccess();

            swift_unknownObjectRelease();

LABEL_82:
            v5 = v215;
          }

          else
          {
            if ((v151 & 0x8000000000000000) != 0)
            {
              goto LABEL_176;
            }

            if (v151 >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_177;
            }

            swift_endAccess();

            v5 = v215;
          }
        }

        else
        {
          v207 = v22;
          v5 = v215;

          MEMORY[0x25F876F40](v153);
          sub_25BAD5150(*((*(v3 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          if (__OFSUB__(sub_25BAAF54C(*(v3 + 104)), 1))
          {
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
LABEL_179:
            __break(1u);
LABEL_180:
            *&v220 = 0;
            *(&v220 + 1) = 0xE000000000000000;
            sub_25BCB70FC();

            *&v216 = 0xD00000000000001DLL;
            *(&v216 + 1) = 0x800000025BCE48C0;
            *&v220 = v215;
            type metadata accessor for TensorRepresentation();

            v202 = sub_25BCB63AC();
            MEMORY[0x25F876C90](v202);

            v220 = v216;
            v224 = 9;
            sub_25BCB617C();
LABEL_182:
            sub_25BA97890();
          }

          v154 = *(v3 + 112);
          swift_isUniquelyReferenced_nonNull_native();
          *&v216 = *(v3 + 112);
          sub_25BAD3E08();
          *(v3 + 112) = v216;
          swift_endAccess();

          sub_25BAD5184(v155, v210, v94, ObjectType, &v220);
          v210 = v220;
          v205 = v221;
          v11 = *(&v222 + 1);
          v156 = v222;
          v157 = v223;
          swift_beginAccess();
          sub_25BAD562C();
          v158 = *(*(v214 + 120) + 16);
          sub_25BAD56F8(v158);
          v159 = *(v214 + 120);
          *(v159 + 16) = v158 + 1;
          v160 = v159 + 56 * v158;
          v161 = v205;
          *(v160 + 32) = v210;
          *(v160 + 48) = v161;
          *(v160 + 64) = __PAIR128__(v11, v156);
          v3 = v214;
          *(v160 + 80) = v157;
          *(v3 + 120) = v159;
          swift_endAccess();
          *&v220 = 0x5F74757074756FLL;
          *(&v220 + 1) = 0xE700000000000000;
          *&v216 = *(*(v3 + 128) + 16);
          v162 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v162);

          v9 = *(&v220 + 1);
          ObjectType = v220;
          v163 = sub_25BAC44E4();
          v165 = v164;
          swift_beginAccess();
          sub_25BAD3BF4(ObjectType, v9, v163, v165, 1);
          swift_endAccess();

          v166 = *(v5 + 160);
          v22 = v207;
          if ((v166 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v216, v166 == 10);
            swift_endAccess();
          }
        }
      }

LABEL_111:
      if (!*(v22 + 16))
      {
        goto LABEL_164;
      }

      v168 = swift_isUniquelyReferenced_nonNull_native();
      v227 = v22;
      if ((v168 & 1) == 0)
      {
        v22 = sub_25BC1B13C(v22);
        v227 = v22;
      }

      v169 = *(v22 + 16);
      if (!v169)
      {
        goto LABEL_165;
      }

      v170 = v169 - 1;
      ObjectType = *(v22 + 8 * v170 + 32);
      *(v22 + 16) = v170;
      sub_25BCB725C();

LABEL_116:
      swift_unknownObjectRelease();
      goto LABEL_117;
    }

    v31 = sub_25BC49EE4(v30);
    if (!v31)
    {
      *&v220 = 0;
      *(&v220 + 1) = 0xE000000000000000;
      sub_25BCB70FC();

      *&v216 = 0xD000000000000025;
      *(&v216 + 1) = 0x800000025BCE4920;
      *&v220 = sub_25BAB3058();
      *(&v220 + 1) = v203;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69D8, &qword_25BCCEC38);
      v204 = sub_25BCB63AC();
      MEMORY[0x25F876C90](v204);

      MEMORY[0x25F876C90](46, 0xE100000000000000);
      v220 = v216;
      v224 = 9;
      sub_25BCB617C();
      goto LABEL_182;
    }

    v11 = v31;
    v5 = v215;
    v9 = sub_25BAC44E4();
    ObjectType = v32;
    swift_beginAccess();
    v33 = sub_25BB3ED64(v9, ObjectType, *(v3 + 48));
    v207 = v22;
    if (v34)
    {

      MEMORY[0x25F876F40](v35);
      sub_25BAD5150(*((*(v3 + 40) & 0xFFFFFFFFFFFFFF8) + 0x10));
      sub_25BCB680C();
      if (__OFSUB__(sub_25BAAF54C(*(v3 + 40)), 1))
      {
        goto LABEL_170;
      }

      v36 = *(v3 + 48);
      swift_isUniquelyReferenced_nonNull_native();
      *&v216 = *(v3 + 48);
      sub_25BAD3E08();
      *(v3 + 48) = v216;
      swift_endAccess();

      v37 = *(v5 + 152);
      v38 = v11;
      v39 = v3;
      v40 = *(v5 + 160);
      swift_beginAccess();
      sub_25BCB617C();
      sub_25BAFD048();
      v41 = *(*(v39 + 56) + 16);
      sub_25BAFD1A8();
      v42 = *(v39 + 56);
      *(v42 + 16) = v41 + 1;
      v43 = v42 + 16 * v41;
      *(v43 + 32) = v37;
      *(v43 + 40) = v40;
      *(v39 + 56) = v42;
      swift_endAccess();
      *&v220 = 0x5F7475706E69;
      *(&v220 + 1) = 0xE600000000000000;
      *&v216 = *(*(v39 + 64) + 16);
      v44 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v44);

      v45 = v220;
      v46 = sub_25BAC44E4();
      v48 = v47;
      swift_beginAccess();
      v11 = v38;
      sub_25BAD3BF4(v45, *(&v45 + 1), v46, v48, 1);
      swift_endAccess();

      v49 = *(v5 + 160);
      if ((v49 - 8) < 3)
      {
        swift_beginAccess();
        sub_25BAD3ECC(&v216, v49 == 10);
        swift_endAccess();
      }
    }

    else
    {
      v95 = v33;
      v96 = *(v3 + 40);
      sub_25BAB4D78(v33, (v96 & 0xC000000000000001) == 0, v96);
      if ((v96 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v95, v96);
        swift_endAccess();

        swift_unknownObjectRelease();
      }

      else
      {
        swift_endAccess();
      }
    }

    swift_beginAccess();
    *&v210 = v11;
    ObjectType = *(v11 + 104);
    v9 = sub_25BA9BEA0(ObjectType);
    v11 = ObjectType & 0xC000000000000001;
    v3 = ObjectType & 0xFFFFFFFFFFFFFF8;
    sub_25BCB617C();
    v97 = 0;
    while (1)
    {
      if (v9 == v97)
      {

        v105 = sub_25BAC44E4();
        ObjectType = v106;
        v11 = v210;
        swift_beginAccess();
        v107 = sub_25BB3ED64(v105, ObjectType, *(v11 + 112));
        if (v108)
        {

          MEMORY[0x25F876F40](v109);
          sub_25BAD5150(*((*(v11 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          if (__OFSUB__(sub_25BAAF54C(*(v11 + 104)), 1))
          {
            goto LABEL_175;
          }

          v110 = *(v11 + 112);
          swift_isUniquelyReferenced_nonNull_native();
          *&v216 = *(v11 + 112);
          sub_25BAD3E08();
          *(v11 + 112) = v216;
          swift_endAccess();

          sub_25BAD5184(v111, 0, 0, 0, &v220);
          v215 = v220;
          v205 = v221;
          v11 = *(&v222 + 1);
          v112 = v222;
          v113 = v223;
          swift_beginAccess();
          sub_25BAD562C();
          v114 = *(*(v210 + 120) + 16);
          sub_25BAD56F8(v114);
          v115 = *(v210 + 120);
          *(v115 + 16) = v114 + 1;
          v116 = v115 + 56 * v114;
          v117 = v205;
          *(v116 + 32) = v215;
          *(v116 + 48) = v117;
          *(v116 + 64) = __PAIR128__(v11, v112);
          v118 = v210;
          *(v116 + 80) = v113;
          *(v118 + 120) = v115;
          swift_endAccess();
          *&v220 = 0x5F74757074756FLL;
          *(&v220 + 1) = 0xE700000000000000;
          swift_beginAccess();
          *&v216 = *(*(v118 + 128) + 16);
          v119 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v119);

          v9 = *(&v220 + 1);
          ObjectType = v220;
          v120 = sub_25BAC44E4();
          v122 = v121;
          swift_beginAccess();
          sub_25BAD3BF4(ObjectType, v9, v120, v122, 1);
          swift_endAccess();

          v123 = *(v5 + 160);
          if ((v123 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v216, v123 == 10);
            swift_endAccess();
          }
        }

        else
        {
          v167 = v107;
          v9 = *(v11 + 104);
          sub_25BAB4D78(v107, (v9 & 0xC000000000000001) == 0, v9);
          if ((v9 & 0xC000000000000001) != 0)
          {
            MEMORY[0x25F8779B0](v167, v9);
            swift_endAccess();

            swift_unknownObjectRelease();
          }

          else
          {
            swift_endAccess();
LABEL_109:
          }
        }

        v3 = v214;
        v22 = v207;
        goto LABEL_111;
      }

      if (v11)
      {
        MEMORY[0x25F8779B0](v97, ObjectType);
      }

      else
      {
        if (v97 >= *((ObjectType & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_158;
        }

        v98 = *(ObjectType + 8 * v97 + 32);
      }

      if (__OFADD__(v97, 1))
      {
        break;
      }

      v99 = sub_25BAC44E4();
      v101 = v100;
      if (v99 == sub_25BAC44E4() && v101 == v102)
      {

        v3 = v214;
        v22 = v207;
        goto LABEL_82;
      }

      v104 = sub_25BCB789C();

      ++v97;
      v5 = v215;
      if (v104)
      {
        goto LABEL_109;
      }
    }

    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    __break(1u);
LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
LABEL_166:
    __break(1u);
LABEL_167:
    __break(1u);
LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
LABEL_172:
    __break(1u);
LABEL_173:
    swift_once();
  }

LABEL_126:

  v171 = v211;
  *&v210 = sub_25BA9BEA0(v211);
  swift_beginAccess();
  v11 = 0;
  v209 = v171 & 0xC000000000000001;
  v207 = v22;
  *&v208 = v171 & 0xFFFFFFFFFFFFFF8;
  while (v210 != v11)
  {
    if (v209)
    {
      v5 = MEMORY[0x25F8779B0](v11, v211);
    }

    else
    {
      if (v11 >= *(v208 + 16))
      {
        goto LABEL_160;
      }

      v5 = *(v211 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      goto LABEL_159;
    }

    v172 = sub_25BAC44E4();
    ObjectType = v173;
    swift_beginAccess();
    v174 = *(v3 + 112);
    if (*(v174 + 16) && (v175 = sub_25BA9266C(v172, ObjectType), (v176 & 1) != 0))
    {
      v177 = *(*(v174 + 56) + 8 * v175);
      v178 = *(v3 + 104);
      if ((v178 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v177);
        swift_endAccess();

        swift_unknownObjectRelease();
      }

      else
      {
        if ((v177 & 0x8000000000000000) != 0)
        {
          goto LABEL_162;
        }

        if (v177 >= *((v178 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_163;
        }

        swift_endAccess();
      }
    }

    else
    {

      MEMORY[0x25F876F40](v179);
      if (*((*(v3 + 104) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + 104) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25BCB67AC();
      }

      sub_25BCB680C();
      v180 = *(v3 + 104);
      if (v180 >> 62)
      {
        if (v180 < 0)
        {
          v197 = *(v3 + 104);
        }

        v181 = sub_25BCB749C();
      }

      else
      {
        v181 = *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFSUB__(v181, 1))
      {
        goto LABEL_161;
      }

      *&v215 = v11;
      v182 = *(v3 + 112);
      swift_isUniquelyReferenced_nonNull_native();
      v226[0] = *(v3 + 112);
      sub_25BAD3E08();
      *(v3 + 112) = v226[0];
      swift_endAccess();

      sub_25BAD5184(v183, 0, 0, 0, &v220);
      v184 = *(&v220 + 1);
      v213 = v220;
      v185 = v221;
      v9 = *(&v222 + 1);
      v186 = v222;
      LODWORD(v212) = v223;
      swift_beginAccess();
      v187 = *(v3 + 120);
      v188 = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 120) = v187;
      if ((v188 & 1) == 0)
      {
        v198 = *(v187 + 16);
        sub_25BAD5644();
        v187 = v199;
        *(v3 + 120) = v199;
      }

      v189 = *(v187 + 16);
      if (v189 >= *(v187 + 24) >> 1)
      {
        sub_25BAD5644();
        v187 = v200;
      }

      *(v187 + 16) = v189 + 1;
      v190 = v187 + 56 * v189;
      v3 = v214;
      *(v190 + 32) = v213;
      *(v190 + 40) = v184;
      *(v190 + 48) = v185;
      *(v190 + 64) = v186;
      *(v190 + 72) = v9;
      *(v190 + 80) = v212;
      *(v3 + 120) = v187;
      swift_endAccess();
      *&v220 = 0x5F74757074756FLL;
      *(&v220 + 1) = 0xE700000000000000;
      v226[0] = *(*(v3 + 128) + 16);
      v191 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v191);

      v192 = *(&v220 + 1);
      ObjectType = v220;
      v193 = sub_25BAC44E4();
      v195 = v194;
      swift_beginAccess();
      sub_25BAD3BF4(ObjectType, v192, v193, v195, 1);
      swift_endAccess();

      v196 = *(v5 + 160);
      if ((v196 - 8) < 3)
      {
        swift_beginAccess();
        sub_25BAD3ECC(v226, v196 == 10);
        swift_endAccess();
      }

      v11 = v215;
    }

    ++v11;
  }

  sub_25BAD6080();
}

uint64_t sub_25BAD15E4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_25BCB749C();
    if (v4)
    {
      v5 = v4;
      v2 = sub_25BB72178(v4, 0);
      sub_25BAC1ED4(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        return v2;
      }

      __break(1u);
    }

    return MEMORY[0x277D84F90];
  }

  return a1 & 0xFFFFFFFFFFFFFF8;
}

uint64_t sub_25BAD1678(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = (*(a2 + 16))(ObjectType, a2);
  v8 = v7;
  v10 = v9;
  swift_beginAccess();
  v11 = sub_25BAD1720(v6, v8, v10, *(v3 + 16));
  swift_endAccess();

  return v11;
}

uint64_t sub_25BAD1720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v4 = sub_25BAD23EC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_15(v4);
  result = *v6;
  v8 = *(v6 + 8);
  return result;
}

double sub_25BAD1778@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_25BAA4930(a1 + 168, &v15, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v16 + 1))
  {
    v19 = v15;
    v20 = v16;
    v21 = v17;
    v22 = v18;
    if ((v18 & ~*(a3 + 208)) != 0)
    {
LABEL_9:
      sub_25BABF0A8(&v19);
      result = 0.0;
      *a4 = 0u;
      *(a4 + 16) = 0u;
      *(a4 + 32) = 0u;
      *(a4 + 48) = 0;
      return result;
    }

    ObjectType = swift_getObjectType();
    v8 = *(a2 + 32);

    swift_unknownObjectRetain();
    v9 = v8(ObjectType, a2);
    if (sub_25BA9BEA0(v9))
    {
      sub_25BAB4D78(0, (v9 & 0xC000000000000001) == 0, v9);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x25F8779B0](0, v9);

        swift_unknownObjectRelease();
        v11 = *(v14 + 160);
        swift_unknownObjectRelease();
      }

      else
      {
        v10 = *(v9 + 32);

        swift_unknownObjectRelease();
        v11 = *(v10 + 160);
      }

      if ((v11 - 8) >= 2 && v11 == 10 && *(&v21 + 1) == 2)
      {
        goto LABEL_9;
      }
    }

    else
    {

      swift_unknownObjectRelease();
    }

    v13 = v20;
    *a4 = v19;
    *(a4 + 16) = v13;
    result = *&v21;
    *(a4 + 32) = v21;
    *(a4 + 48) = v22;
  }

  else
  {
    sub_25BAA6F5C(&v15, &qword_27FBB6730, &qword_25BCBC4B0);
    *(a4 + 48) = 0;
    result = 0.0;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
  }

  return result;
}

uint64_t sub_25BAD1994(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6730, &qword_25BCBC4B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy52_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_25BAD1A20(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, os_unfair_lock_s *))
{
  if (qword_28154C3A0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_87();
  }

  v6 = qword_28154C3A8;
  MEMORY[0x28223BE20](a1);
  v10[2] = v3;
  v10[3] = a2;

  sub_25BAD1AEC(a3, v10, v6);
  v8 = v7;

  return v8;
}

void sub_25BAD1AEC(void (*a1)(uint64_t *__return_ptr, os_unfair_lock_s *), uint64_t a2, os_unfair_lock_s *a3)
{
  os_unfair_lock_lock(a3 + 6);
  a1(&v5, a3 + 4);
  os_unfair_lock_unlock(a3 + 6);
}

uint64_t sub_25BAD1B94@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X8>)
{
  ObjectType = swift_getObjectType();
  v9 = (*(a3 + 24))(ObjectType, a3);
  v11 = sub_25BAD1D18(v9, v10, *a1);
  if ((v11 & 0x100000000) != 0)
  {
    swift_getObjectType();
    v14 = dynamic_cast_existential_1_conditional(a2) != 0;
    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2))
    {
      v12 = ((v14 & 1) << 10) | 7;
    }

    else
    {
      v12 = v14 << 10;
    }

    swift_getObjectType();
    if (dynamic_cast_existential_1_conditional(a2))
    {
      v12 |= 0x100000u;
    }

    v15 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_25BC1AB44();

    *a1 = v16;
  }

  else
  {
    v12 = v11;
  }

  *a4 = v12;
  return result;
}

unint64_t sub_25BAD1D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    goto LABEL_5;
  }

  v5 = sub_25BA9266C(a1, a2);
  if ((v6 & 1) == 0)
  {
    v3 = 0;
LABEL_5:
    v7 = 1;
    return v3 | (v7 << 32);
  }

  v7 = 0;
  v3 = *(*(a3 + 56) + 4 * v5);
  return v3 | (v7 << 32);
}

uint64_t sub_25BAD1D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_25BAA4930(a1 + 144, &v22, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BAA4930(a2, &v26, &qword_27FBB6730, &qword_25BCBC4B0);
  if (!*(&v27 + 1))
  {
    if (!*(&v23 + 1))
    {
      sub_25BAA6F5C(&v22, qword_27FBB69E0, &unk_25BCCEC40);
      v9 = 1;
      return v9 & 1;
    }

    v18 = v22;
    v19 = v23;
    *v20 = v24;
    v21 = v25;
    ObjectType = swift_getObjectType();
    v9 = (*(a4 + 88))(&v18, ObjectType, a4);
    sub_25BABF0A8(&v18);
    v11 = &v26;
    goto LABEL_9;
  }

  if (!*(&v23 + 1))
  {
    v18 = v26;
    v19 = v27;
    *v20 = v28;
    v12 = v29;
    v21 = v29;
    v13 = *(a1 + 208);
    sub_25BABF0A8(&v18);
    v9 = (v12 & ~v13) == 0;
    v11 = &v22;
LABEL_9:
    sub_25BAA6F5C(v11, &qword_27FBB6730, &qword_25BCBC4B0);
    return v9 & 1;
  }

  v18 = v22;
  v19 = v23;
  *v20 = v24;
  v21 = v25;
  v15[0] = v26;
  v15[1] = v27;
  v16 = v28;
  v17 = v29;
  if ((v29 & ~*(a1 + 208)) != 0)
  {
    sub_25BABF0A8(v15);
    sub_25BABF0A8(&v18);
    v9 = 0;
  }

  else
  {
    if (sub_25BAD1FB0(v20[1], *(&v16 + 1)))
    {
      v7 = *(&v19 + 1);
      v8 = v20[0];
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      v9 = v8[3](v15, v7, v8);
    }

    else
    {
      v9 = 0;
    }

    sub_25BABF0A8(v15);
    sub_25BABF0A8(&v18);
  }

  return v9 & 1;
}

uint64_t sub_25BAD1FB0(id a1, char *a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a1 == 1)
  {
    return a2 == 1;
  }

  if ((a2 - 1) < 2)
  {
    return 0;
  }

  if (a1)
  {
    v5 = [a1 registryID];
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = [a2 registryID];
  }

  else
  {
    v6 = 0;
  }

  if (a2)
  {
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (a1)
  {
    return v8;
  }

  else
  {
    return a2 == 0;
  }
}

uint64_t sub_25BAD2078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_25BAA4930(a1 + 144, &v12, &qword_27FBB6730, &qword_25BCBC4B0);
  if (!*(&v13 + 1))
  {
    sub_25BAA6F5C(&v12, &qword_27FBB6730, &qword_25BCBC4B0);
LABEL_10:
    v9 = 1;
    return v9 & 1;
  }

  v16[0] = v12;
  v16[1] = v13;
  v17 = v14;
  v18 = v15;
  ObjectType = swift_getObjectType();
  v6 = (*(a3 + 32))(ObjectType, a3);
  if (!sub_25BA9BEA0(v6))
  {

LABEL_9:
    sub_25BABF0A8(v16);
    goto LABEL_10;
  }

  sub_25BAB4D78(0, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x25F8779B0](0, v6);

    v8 = *(v11 + 160);
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = *(v6 + 32);

    v8 = *(v7 + 160);
  }

  if ((v8 - 8) >= 3)
  {
    goto LABEL_9;
  }

  v9 = (*(&v17 + 1) != 2) | (3u >> (v8 & 7));
  sub_25BABF0A8(v16);
  return v9 & 1;
}

uint64_t sub_25BAD21F4(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(ObjectType, a2);
  sub_25BAC4018();
  OUTLINED_FUNCTION_20_30();
  v5 = *(v2 + 16);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 16);
  sub_25BAD22CC();
  *(v2 + 16) = v7;

  return swift_endAccess();
}

void sub_25BAD22CC()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_25BAD23EC();
  OUTLINED_FUNCTION_1_56(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6728, &unk_25BCCBF18);
  if ((OUTLINED_FUNCTION_23_26() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v1;
  OUTLINED_FUNCTION_12_34();
  v21 = sub_25BAD23EC();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v18 = v21;
LABEL_5:
  v23 = *v1;
  if (v19)
  {
    v24 = v23[7] + 16 * v18;
    *v24 = v11;
    *(v24 + 8) = v9 & 1;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BAD2540(v18, v7, v5, v3, v11, v9 & 1, v23);
    OUTLINED_FUNCTION_10_16();

    sub_25BCB617C();
  }
}

unint64_t sub_25BAD23EC()
{
  v1 = *(v0 + 40);
  sub_25BCB79CC();
  OUTLINED_FUNCTION_109();
  sub_25BCB625C();
  sub_25BCB7A3C();
  OUTLINED_FUNCTION_109();

  return sub_25BAD246C(v2, v3, v4, v5);
}

unint64_t sub_25BAD246C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v11 = ~v6;
    v12 = *(v4 + 48);
    do
    {
      v13 = v12 + 24 * v7;
      if (*v13 == a1)
      {
        v14 = *(v13 + 8) == a2 && *(v13 + 16) == a3;
        if (v14 || (sub_25BCB789C() & 1) != 0)
        {
          break;
        }
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t sub_25BAD2540(unint64_t result, int a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 24 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  *(v7 + 16) = a4;
  v8 = a7[7] + 16 * result;
  *v8 = a5;
  *(v8 + 8) = a6 & 1;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_25BAD259C()
{
  OUTLINED_FUNCTION_17_10();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_6_54(v0, v1, v2, v3, v4, v5, v6, v7, v10[0], v10[1]);
  if (v13)
  {
    if (v13 == 1)
    {
      OUTLINED_FUNCTION_7_54();
      swift_unknownObjectRelease();
      sub_25BA977E0(&v12);
    }

    else
    {
      sub_25BA9778C(v11);
    }

    return 0;
  }

  else
  {
    sub_25BA9BE3C(v11, v10);
    v8 = v10[5];

    sub_25BA977E0(v10);
  }

  return v8;
}

uint64_t sub_25BAD2634(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6970, &qword_25BCCE4A0);
  result = sub_25BCB70CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        result = sub_25BCB79BC();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + 8 * v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_25;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_25:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_25BAD285C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v8 = (*(a2 + 32))(ObjectType, a2);
  v9 = sub_25BA9BEA0(v8);
  if (v9)
  {
    v10 = v9;
    v161 = v8 & 0xC000000000000001;
    swift_beginAccess();
    swift_beginAccess();
    v11 = 0;
    v156 = v8 + 32;
    v157 = v8 & 0xFFFFFFFFFFFFFF8;
    v158 = v8;
    v160 = v10;
    while (1)
    {
      if (v161)
      {
        v12 = MEMORY[0x25F8779B0](v11, v8);
      }

      else
      {
        if (v11 >= *(v157 + 16))
        {
          goto LABEL_129;
        }

        v12 = *(v156 + 8 * v11);
      }

      v13 = __OFADD__(v11++, 1);
      if (v13)
      {
        break;
      }

      v14 = sub_25BAB3058();
      if (!v14)
      {
        sub_25BAA4930((a4 + 18), &v162, &qword_27FBB6730, &qword_25BCBC4B0);
        if (*(&v163 + 1))
        {
          v166 = v162;
          v167 = v163;
          v168 = v164;
          v169 = v165;
        }

        else
        {
          sub_25BAA4930(v12 + 168, &v166, &qword_27FBB6730, &qword_25BCBC4B0);
          if (*(&v163 + 1))
          {
            sub_25BAA6F5C(&v162, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        swift_beginAccess();
        sub_25BAD1994(&v166, (a4 + 18));
        swift_endAccess();
        v46 = sub_25BAC44E4();
        v48 = v47;
        swift_beginAccess();
        v49 = a4[6];
        if (*(v49 + 16))
        {
          v50 = sub_25BA9266C(v46, v48);
          if (v51)
          {
            v52 = *(*(v49 + 56) + 8 * v50);
            v53 = a4[5];
            if ((v53 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F8779B0](v52);
              swift_endAccess();

              swift_unknownObjectRelease();
            }

            else
            {
              if ((v52 & 0x8000000000000000) != 0)
              {
                goto LABEL_136;
              }

              if (v52 >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
LABEL_137:
                __break(1u);
                goto LABEL_138;
              }

              swift_endAccess();
            }

            v8 = v158;
            goto LABEL_86;
          }
        }

        MEMORY[0x25F876F40](v54);
        if (*((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v55 = a4[5];
        if (v55 >> 62)
        {
          if (v55 < 0)
          {
            v141 = a4[5];
          }

          v56 = sub_25BCB749C();
        }

        else
        {
          v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v57 = v56 - 1;
        if (!__OFSUB__(v56, 1))
        {
          v159 = v11;
          v58 = a4[6];
          swift_isUniquelyReferenced_nonNull_native();
          *&v162 = a4[6];
          v59 = v162;
          a4[6] = 0x8000000000000000;
          v60 = sub_25BA9266C(v46, v48);
          if (!__OFADD__(*(v59 + 16), (v61 & 1) == 0))
          {
            v62 = v60;
            v63 = v61;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
            if (sub_25BCB745C())
            {
              v64 = sub_25BA9266C(v46, v48);
              if ((v63 & 1) != (v65 & 1))
              {
                goto LABEL_142;
              }

              v62 = v64;
            }

            v66 = v162;
            if (v63)
            {
              *(*(v162 + 56) + 8 * v62) = v57;
            }

            else
            {
              *(v162 + 8 * (v62 >> 6) + 64) |= 1 << v62;
              v67 = (v66[6] + 16 * v62);
              *v67 = v46;
              v67[1] = v48;
              *(v66[7] + 8 * v62) = v57;
              v68 = v66[2];
              v13 = __OFADD__(v68, 1);
              v69 = v68 + 1;
              if (v13)
              {
                goto LABEL_135;
              }

              v66[2] = v69;
              sub_25BCB617C();
            }

            a4[6] = v66;
            swift_endAccess();

            v70 = *(v12 + 152);
            v71 = *(v12 + 160);
            swift_beginAccess();
            v72 = a4[7];
            sub_25BCB617C();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            a4[7] = v72;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v142 = *(v72 + 16);
              sub_25BAD3BC4();
              v72 = v143;
              a4[7] = v143;
            }

            v8 = v158;
            v74 = *(v72 + 16);
            if (v74 >= *(v72 + 24) >> 1)
            {
              sub_25BAD3BC4();
              v72 = v144;
            }

            *(v72 + 16) = v74 + 1;
            v75 = v72 + 16 * v74;
            *(v75 + 32) = v70;
            *(v75 + 40) = v71;
            a4[7] = v72;
            swift_endAccess();
            *&v166 = 0x5F7475706E69;
            *(&v166 + 1) = 0xE600000000000000;
            *&v162 = *(a4[8] + 16);
            v76 = sub_25BCB77FC();
            MEMORY[0x25F876C90](v76);

            v77 = v166;
            v78 = sub_25BAC44E4();
            v80 = v79;
            swift_beginAccess();
            sub_25BAD3BF4(v77, *(&v77 + 1), v78, v80, 1);
            swift_endAccess();

            v81 = *(v12 + 160);
            if ((v81 - 8) < 3)
            {
              swift_beginAccess();
              sub_25BAD3ECC(&v162, v81 == 10);
              swift_endAccess();
            }

LABEL_60:
            v11 = v159;
            v10 = v160;
            goto LABEL_86;
          }

LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

LABEL_132:
        __break(1u);
        goto LABEL_133;
      }

      v16 = sub_25BAD1678(v14, v15);
      v18 = v17;

      v19 = sub_25BA928B4();
      [v19 lock];

      swift_beginAccess();
      sub_25BA9323C(v12 + 40, &v166);
      if (v171)
      {
        if (v171 == 1)
        {

          swift_unknownObjectRelease();
          sub_25BA977E0(&v168);
        }

        else
        {
          sub_25BA9778C(&v166);
        }

        v22 = 1;
      }

      else
      {
        sub_25BA9BE3C(&v166, &v162);
        v20 = *(&v162 + 1);
        v21 = swift_getObjectType();
        v22 = (*(v20 + 56))(v21, v20);
        sub_25BA977E0(&v162);
      }

      [*(v12 + 224) unlock];

      if (v18 == 2)
      {
        if ((v22 & 1) == 0)
        {
          sub_25BCB723C();
          v23 = *(*a5 + 16);
          sub_25BCB728C();
          sub_25BCB729C();
          sub_25BCB725C();
LABEL_73:
          swift_unknownObjectRelease();
          goto LABEL_86;
        }

LABEL_62:
        sub_25BAA4930((a4 + 18), &v162, &qword_27FBB6730, &qword_25BCBC4B0);
        if (*(&v163 + 1))
        {
          v166 = v162;
          v167 = v163;
          v168 = v164;
          v169 = v165;
        }

        else
        {
          sub_25BAA4930(v12 + 168, &v166, &qword_27FBB6730, &qword_25BCBC4B0);
          if (*(&v163 + 1))
          {
            sub_25BAA6F5C(&v162, &qword_27FBB6730, &qword_25BCBC4B0);
          }
        }

        swift_beginAccess();
        sub_25BAD1994(&v166, (a4 + 18));
        swift_endAccess();
        v82 = sub_25BAC44E4();
        v84 = v83;
        swift_beginAccess();
        v85 = a4[6];
        if (*(v85 + 16))
        {
          v86 = sub_25BA9266C(v82, v84);
          if (v87)
          {
            v88 = *(*(v85 + 56) + 8 * v86);
            v89 = a4[5];
            if ((v89 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F8779B0](v88);
              swift_endAccess();

              swift_unknownObjectRelease();
              goto LABEL_73;
            }

            if ((v88 & 0x8000000000000000) == 0)
            {
              if (v88 < *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                swift_endAccess();

                goto LABEL_72;
              }

LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
              sub_25BCB795C();
              __break(1u);
LABEL_143:
              *&v166 = 0;
              *(&v166 + 1) = 0xE000000000000000;
              sub_25BCB70FC();

              *&v162 = 0xD000000000000025;
              *(&v162 + 1) = 0x800000025BCE4920;
              *&v166 = sub_25BAB3058();
              *(&v166 + 1) = v150;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB69D8, &qword_25BCCEC38);
              v151 = sub_25BCB63AC();
              MEMORY[0x25F876C90](v151);

              MEMORY[0x25F876C90](46, 0xE100000000000000);
              v166 = v162;
              v170 = 9;
              sub_25BCB617C();
              sub_25BA97890();
            }

LABEL_138:
            __break(1u);
            goto LABEL_139;
          }
        }

        MEMORY[0x25F876F40](v90);
        if (*((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v91 = a4[5];
        if (v91 >> 62)
        {
          if (v91 < 0)
          {
            v145 = a4[5];
          }

          v92 = sub_25BCB749C();
        }

        else
        {
          v92 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (!__OFSUB__(v92, 1))
        {
          v93 = a4[6];
          swift_isUniquelyReferenced_nonNull_native();
          *&v162 = a4[6];
          sub_25BAD3E08();
          a4[6] = v162;
          swift_endAccess();

          v94 = *(v12 + 152);
          v95 = *(v12 + 160);
          swift_beginAccess();
          v96 = a4[7];
          sub_25BCB617C();
          v97 = swift_isUniquelyReferenced_nonNull_native();
          a4[7] = v96;
          v98 = v11;
          if ((v97 & 1) == 0)
          {
            v146 = *(v96 + 16);
            sub_25BAD3BC4();
            v96 = v147;
            a4[7] = v147;
          }

          v99 = *(v96 + 16);
          if (v99 >= *(v96 + 24) >> 1)
          {
            sub_25BAD3BC4();
            v96 = v148;
          }

          *(v96 + 16) = v99 + 1;
          v100 = v96 + 16 * v99;
          *(v100 + 32) = v94;
          *(v100 + 40) = v95;
          a4[7] = v96;
          swift_endAccess();
          *&v166 = 0x5F7475706E69;
          *(&v166 + 1) = 0xE600000000000000;
          *&v162 = *(a4[8] + 16);
          v101 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v101);

          v102 = v166;
          v103 = sub_25BAC44E4();
          v105 = v104;
          swift_beginAccess();
          sub_25BAD3BF4(v102, *(&v102 + 1), v103, v105, 1);
          swift_endAccess();

          v106 = *(v12 + 160);
          if ((v106 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v162, v106 == 10);
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          v10 = v160;
          v11 = v98;
          goto LABEL_86;
        }

LABEL_134:
        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
        goto LABEL_137;
      }

      if ((v18 & 1) == 0)
      {
        if (v22)
        {
          goto LABEL_62;
        }

LABEL_72:

        goto LABEL_73;
      }

      v24 = sub_25BAC4018();
      if (!v16)
      {
        if ((v22 & 1) == 0)
        {
          swift_unknownObjectRelease();

          goto LABEL_86;
        }

        goto LABEL_62;
      }

      if (v22)
      {
        goto LABEL_62;
      }

      if (v24 == v16)
      {
        goto LABEL_72;
      }

      v25 = sub_25BC49EE4(v16);
      if (!v25)
      {
        goto LABEL_143;
      }

      v26 = v25;
      v27 = sub_25BAC44E4();
      v29 = v28;
      swift_beginAccess();
      v30 = sub_25BB3ED64(v27, v29, a4[6]);
      if (v31)
      {

        MEMORY[0x25F876F40](v32);
        sub_25BAD5150(*((a4[5] & 0xFFFFFFFFFFFFFF8) + 0x10));
        sub_25BCB680C();
        if (__OFSUB__(sub_25BAAF54C(a4[5]), 1))
        {
          goto LABEL_140;
        }

        v33 = a4[6];
        swift_isUniquelyReferenced_nonNull_native();
        *&v162 = a4[6];
        sub_25BAD3E08();
        a4[6] = v162;
        swift_endAccess();

        v34 = *(v12 + 152);
        v35 = *(v12 + 160);
        swift_beginAccess();
        sub_25BCB617C();
        sub_25BAFD048();
        v36 = *(a4[7] + 16);
        sub_25BAFD1A8();
        v37 = a4[7];
        *(v37 + 16) = v36 + 1;
        v38 = v37 + 16 * v36;
        *(v38 + 32) = v34;
        *(v38 + 40) = v35;
        a4[7] = v37;
        swift_endAccess();
        *&v166 = 0x5F7475706E69;
        *(&v166 + 1) = 0xE600000000000000;
        *&v162 = *(a4[8] + 16);
        v39 = sub_25BCB77FC();
        MEMORY[0x25F876C90](v39);

        v40 = v166;
        v41 = sub_25BAC44E4();
        v42 = v11;
        v44 = v43;
        swift_beginAccess();
        sub_25BAD3BF4(v40, *(&v40 + 1), v41, v44, 1);
        swift_endAccess();
        v11 = v42;

        v45 = *(v12 + 160);
        if ((v45 - 8) < 3)
        {
          swift_beginAccess();
          sub_25BAD3ECC(&v162, v45 == 10);
          swift_endAccess();
        }
      }

      else
      {
        v107 = v30;
        v108 = a4[5];
        sub_25BAB4D78(v30, (v108 & 0xC000000000000001) == 0, v108);
        if ((v108 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8779B0](v107, v108);
          swift_endAccess();

          swift_unknownObjectRelease();
        }

        else
        {
          swift_endAccess();
        }
      }

      swift_beginAccess();
      v153 = v26;
      v109 = v26[13];
      v110 = sub_25BA9BEA0(v109);
      sub_25BCB617C();
      v111 = 0;
      while (1)
      {
        if (v110 == v111)
        {

          v120 = sub_25BAC44E4();
          v122 = v121;
          swift_beginAccess();
          v123 = sub_25BB3ED64(v120, v122, v153[14]);
          if ((v124 & 1) == 0)
          {
            v139 = v123;
            v140 = v153[13];
            sub_25BAB4D78(v123, (v140 & 0xC000000000000001) == 0, v140);
            v8 = v158;
            if ((v140 & 0xC000000000000001) != 0)
            {
              MEMORY[0x25F8779B0](v139, v140);
              swift_endAccess();

              swift_unknownObjectRelease();
            }

            else
            {
              swift_endAccess();
            }

            swift_unknownObjectRelease();
            goto LABEL_114;
          }

          v159 = v11;

          MEMORY[0x25F876F40](v125);
          sub_25BAD5150(*((v153[13] & 0xFFFFFFFFFFFFFF8) + 0x10));
          sub_25BCB680C();
          v8 = v158;
          if (__OFSUB__(sub_25BAAF54C(v153[13]), 1))
          {
            goto LABEL_141;
          }

          v126 = v153[14];
          swift_isUniquelyReferenced_nonNull_native();
          *&v162 = v153[14];
          sub_25BAD3E08();
          v153[14] = v162;
          swift_endAccess();

          sub_25BAD5184(v127, 0, 0, 0, &v166);
          v155 = v166;
          v152 = v167;
          v128 = v168;
          v129 = v169;
          swift_beginAccess();
          sub_25BAD562C();
          v130 = *(v153[15] + 16);
          sub_25BAD56F8(v130);
          v131 = v153[15];
          *(v131 + 16) = v130 + 1;
          v132 = v131 + 56 * v130;
          *(v132 + 32) = v155;
          *(v132 + 48) = v152;
          *(v132 + 64) = v128;
          *(v132 + 80) = v129;
          v153[15] = v131;
          swift_endAccess();
          *&v166 = 0x5F74757074756FLL;
          *(&v166 + 1) = 0xE700000000000000;
          swift_beginAccess();
          *&v162 = *(v153[16] + 16);
          v133 = sub_25BCB77FC();
          MEMORY[0x25F876C90](v133);

          v134 = v166;
          v135 = sub_25BAC44E4();
          v137 = v136;
          swift_beginAccess();
          sub_25BAD3BF4(v134, *(&v134 + 1), v135, v137, 1);
          swift_endAccess();

          v138 = *(v12 + 160);
          if ((v138 - 8) < 3)
          {
            swift_beginAccess();
            sub_25BAD3ECC(&v162, v138 == 10);
            swift_endAccess();
          }

          swift_unknownObjectRelease();
          goto LABEL_60;
        }

        if ((v109 & 0xC000000000000001) != 0)
        {
          MEMORY[0x25F8779B0](v111, v109);
        }

        else
        {
          if (v111 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_131;
          }

          v112 = *(v109 + 8 * v111 + 32);
        }

        if (__OFADD__(v111, 1))
        {
          goto LABEL_130;
        }

        v113 = v11;
        v114 = sub_25BAC44E4();
        v116 = v115;
        if (v114 == sub_25BAC44E4() && v116 == v117)
        {
          break;
        }

        v119 = sub_25BCB789C();

        ++v111;
        v11 = v113;
        if (v119)
        {

          swift_unknownObjectRelease();
          goto LABEL_110;
        }
      }

      swift_unknownObjectRelease();

      v11 = v113;
LABEL_110:

      v8 = v158;
LABEL_114:
      v10 = v160;
LABEL_86:
      if (v11 == v10)
      {
      }
    }

    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }
}

uint64_t sub_25BAD3BF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v8 = a3;
  v11 = v5[1];
  if (*(v11 + 16))
  {
    v12 = sub_25BA9266C(a3, a4);
    if (v13)
    {
      v14 = *(*(v11 + 56) + 8 * v12);
      if ((v14 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v8 = *v6;
        if (v14 < *(*v6 + 16))
        {
          v15 = v8 + 16 * v14;
          v11 = *(v15 + 32);
          v16 = *(v15 + 40);
          sub_25BCB617C();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_6:
            v17 = v8 + 16 * v14;
            v18 = *(v17 + 40);
            *(v17 + 32) = a1;
            *(v17 + 40) = a2;
            sub_25BCB617C();

            *v6 = v8;
            return v11;
          }

LABEL_13:
          sub_25BBF143C(v8);
          v8 = v24;
          goto LABEL_6;
        }
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  if ((a5 & 1) == 0)
  {
    return 0;
  }

  sub_25BCB617C();
  sub_25BAD3D60();
  v19 = *(*v6 + 16);
  sub_25BAD3DB8();
  v20 = *v6;
  *(v20 + 16) = v19 + 1;
  v21 = v20 + 16 * v19;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *v6 = v20;
  v22 = v6[1];
  swift_isUniquelyReferenced_nonNull_native();
  v25 = v6[1];
  sub_25BAD3E08();
  v11 = 0;
  v6[1] = v25;
  return v11;
}

void sub_25BAD3D60()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_62();
    sub_25BAB1E60();
    *v1 = v4;
  }
}

void sub_25BAD3DB8()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_35_0();
    sub_25BAB1E60();
    *v0 = v4;
  }
}

void sub_25BAD3E08()
{
  OUTLINED_FUNCTION_40_17();
  v6 = OUTLINED_FUNCTION_0_66(v4, v5);
  v8 = sub_25BA9266C(v6, v7);
  OUTLINED_FUNCTION_1_56(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_12:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
  if (OUTLINED_FUNCTION_10_33())
  {
    v11 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v11, v12);
    OUTLINED_FUNCTION_4_50();
    if (!v14)
    {
      goto LABEL_12;
    }

    v3 = v13;
  }

  if (v2)
  {
    *(*(*v1 + 56) + 8 * v3) = v0;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

BOOL sub_25BAD3ECC(char *a1, char a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_25BCB79CC();
  v8 = a2 & 1;
  sub_25BCB7A0C();
  sub_25BCB7A3C();
  v9 = *(v6 + 32);
  OUTLINED_FUNCTION_10_40();
  while (1)
  {
    v14 = v10 & v12;
    v15 = (v13 << (v10 & v12)) & *(v11 + (((v10 & v12) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v15)
    {
      v17 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      sub_25BAD41EC(v8, v14, isUniquelyReferenced_nonNull_native);
      *v3 = v20;
      goto LABEL_10;
    }

    v16 = *(*(v6 + 48) + v14) ? v13 + 1 : v13;
    if (v16 == (a2 & 1) + 1)
    {
      break;
    }

    v10 = v14 + 1;
  }

  v8 = *(*(v6 + 48) + v14);
LABEL_10:
  result = v15 == 0;
  *a1 = v8;
  return result;
}

uint64_t sub_25BAD3FC8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6988, &qword_25BCCE4B8);
  result = sub_25BCB70CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_14:
        v16 = *(*(v3 + 48) + (v13 | (v7 << 6)));
        v17 = *(v6 + 40);
        sub_25BCB79CC();
        sub_25BCB7A0C();
        result = sub_25BCB7A3C();
        v18 = -1 << *(v6 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        *(*(v6 + 48) + v21) = v16;
        ++*(v6 + 16);
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_23;
        }
      }
    }

    else
    {
LABEL_9:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {

          v2 = v26;
          goto LABEL_27;
        }

        v15 = *(v3 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v6;
  }

  return result;
}

void sub_25BAD41EC(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BC42564(v6 + 1);
      goto LABEL_10;
    }

    if (v7 <= v6)
    {
      sub_25BAD3FC8(v6 + 1);
LABEL_10:
      v12 = *v3;
      v13 = *(*v3 + 40);
      sub_25BCB79CC();
      sub_25BCB7A0C();
      v14 = sub_25BCB7A3C();
      v15 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v14 & v15;
        if (((*(v12 + 56 + (((v14 & v15) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v14 & v15)) & 1) == 0)
        {
          goto LABEL_7;
        }

        if (*(*(v12 + 48) + a2))
        {
          v16 = 2;
        }

        else
        {
          v16 = 1;
        }

        if (v16 == (a1 & 1) + 1)
        {
          goto LABEL_18;
        }

        v14 = a2 + 1;
      }
    }

    sub_25BC4AA74();
  }

LABEL_7:
  v8 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v8 + 48) + a2) = a1 & 1;
  v9 = *(v8 + 16);
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
LABEL_18:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v11;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25BAD43D0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_25BCB79CC();
  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BAD4418(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6970, &qword_25BCCE4A0);
  result = sub_25BCB70CC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v7 = 0;
  v9 = (v3 + 56);
  v8 = *(v3 + 56);
  v10 = 1 << *(v3 + 32);
  v27 = v2;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & v8;
  v13 = result + 56;
  if ((v11 & v8) == 0)
  {
LABEL_9:
    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v7 >= ((v10 + 63) >> 6))
      {
        break;
      }

      v16 = v9[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    if (v10 >= 64)
    {
      sub_25BC42288(0, (v10 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v9 = -1 << v10;
    }

    v2 = v27;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    result = sub_25BCB79BC();
    v19 = -1 << *(v6 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v6 + 48) + 8 * v22) = v17;
    ++*(v6 + 16);
    if (!v12)
    {
      goto LABEL_9;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v13 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25BAD468C(int a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if (a2 == a5 && a3 == a6)
  {
    return 1;
  }

  else
  {
    return sub_25BCB789C();
  }
}

void sub_25BAD4714()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_25BAD23EC();
  OUTLINED_FUNCTION_1_56(v11, v12);
  if (v15)
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v13;
  v17 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F8, &unk_25BCCEC10);
  if ((OUTLINED_FUNCTION_44_13() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = *v1;
  OUTLINED_FUNCTION_12_34();
  v19 = sub_25BAD23EC();
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_11:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v16 = v19;
LABEL_5:
  v21 = *v1;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v16) = v9;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BAD4838(v16, v7, v5, v3, v9, v21);
    OUTLINED_FUNCTION_10_16();

    sub_25BCB617C();
  }
}

uint64_t sub_25BAD4838(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_21_27(a1, a6 + 8 * (a1 >> 6));
  v8 = v7[6] + 24 * result;
  *v8 = v9;
  *(v8 + 8) = v10;
  *(v8 + 16) = v11;
  *(v7[7] + 8 * result) = v12;
  v13 = v7[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v15;
  }

  return result;
}

uint64_t sub_25BAD4888(uint64_t a1, uint64_t a2)
{
  sub_25BCB7A4C();
  sub_25BAD4A64(a1, a2, v19);
  v16 = sub_25BCB7A2C();
  ObjectType = swift_getObjectType();
  sub_25BAD4CB8(ObjectType, a2);
  v5 = *(a2 + 32);
  v6 = v5(ObjectType, a2);
  sub_25BAAF54C(v6);

  v18 = MEMORY[0x277D84F90];
  sub_25BAD4D9C();
  v17 = v5(ObjectType, a2);
  result = sub_25BA9BEA0(v17);
  if (!result)
  {
LABEL_10:
    swift_unknownObjectRelease();

    return v16;
  }

  v8 = result;
  if (result >= 1)
  {
    v9 = 0;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x25F8779B0](v9, v17);
      }

      else
      {
        v10 = *(v17 + 8 * v9 + 32);
      }

      v11 = *(v10 + 152);
      v12 = *(v10 + 160);
      v14 = *(v18 + 16);
      v13 = *(v18 + 24);
      sub_25BCB617C();
      if (v14 >= v13 >> 1)
      {
        sub_25BAD4D9C();
      }

      ++v9;
      *(v18 + 16) = v14 + 1;
      v15 = v18 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
    }

    while (v8 != v9);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAD4A64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a1;
  v15 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E40, &qword_25BCC88E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB46F8, &qword_25BCBEA90);
  if (!swift_dynamicCast())
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    sub_25BAA6F5C(v12, &qword_27FBB4700, &qword_25BCBEA98);
    sub_25BCB70FC();

    *&v12[0] = 0xD00000000000002FLL;
    *(&v12[0] + 1) = 0x800000025BCE4850;
    swift_getObjectType();
    v7 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v7);

    MEMORY[0x25F876C90](96, 0xE100000000000000);
    v8 = v12[0];
    v11 = 9;
    sub_25BCB617C();
    sub_25BA97890();
  }

  sub_25BA97060(v12, &v8);
  v4 = v9;
  v5 = v10;
  __swift_project_boxed_opaque_existential_1(&v8, v9);
  (*(v5 + 8))(a3, v4, v5);
  return __swift_destroy_boxed_opaque_existential_1(&v8);
}

void sub_25BAD4C2C()
{
  sub_25BCB625C();
  v0 = OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78(v0, v1);
}

void sub_25BAD4C78(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_59(a1, a2);
  if (v2)
  {
    v4 = (v3 + 32);
    do
    {
      v5 = *v4++;
      MEMORY[0x25F878200](v5);
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_25BAD4CB8(uint64_t a1, uint64_t a2)
{
  v2 = *((*(a2 + 40))() + 16);

  return v2;
}

void sub_25BAD4CF4()
{
  OUTLINED_FUNCTION_75();
  if ((v6 & 1) == 0)
  {
    v7 = v5;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v8 == v9)
  {
LABEL_7:
    OUTLINED_FUNCTION_52(v7);
    if (v4)
    {
      OUTLINED_FUNCTION_87(v10, v11, v12, v13, v14, v15);
      v16 = OUTLINED_FUNCTION_77();
      OUTLINED_FUNCTION_2_2(v16);
      v16[2] = v3;
      v16[3] = v17;
      if (v2)
      {
LABEL_9:
        v18 = OUTLINED_FUNCTION_54_0();
        v1(v18);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_51_2();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v8)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAD4D9C()
{
  v1 = *v0;
  sub_25BAD4CF4();
  *v0 = v2;
}

void sub_25BAD4DE8()
{
  v2 = OUTLINED_FUNCTION_124_0();
  *v1 = v0;
  if (!v2)
  {
    v3 = *(v0 + 16);
    OUTLINED_FUNCTION_34_1();
    OUTLINED_FUNCTION_62();
    sub_25BAC5498();
    *v1 = v4;
  }
}

void sub_25BAD4E40()
{
  OUTLINED_FUNCTION_47_1();
  if (!(v2 ^ v3 | v1))
  {
    OUTLINED_FUNCTION_34_1();
    sub_25BAC5498();
    *v0 = v4;
  }
}

BOOL sub_25BAD4E90(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, os_unfair_lock_s *))
{
  v7 = a1;
  if (qword_28154C3A0 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_87();
  }

  v8 = qword_28154C3A8;
  MEMORY[0x28223BE20](a1);
  v12[2] = v4;
  v12[3] = a3;

  sub_25BAD1AEC(a4, v12, v8);
  v10 = v9;

  return (*(v7 + 48) & ~v10) == 0;
}

uint64_t sub_25BAD4F98()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  return sub_25BCB617C();
}

uint64_t sub_25BAD500C()
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v0 + 48));
  sub_25BAC27B0(v0 + 56, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA0, &unk_25BCCD2A0);
  v1 = OUTLINED_FUNCTION_0_50();
  if (v1)
  {
    sub_25BA97060(&v18, v22);
    __swift_project_boxed_opaque_existential_1(v22, v23);
    sub_25BCB624C();
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    OUTLINED_FUNCTION_1_39(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19, v20);
  }

  sub_25BAC27B0(v0 + 96, v21);
  v9 = OUTLINED_FUNCTION_0_50();
  if ((v9 & 1) == 0)
  {
    return OUTLINED_FUNCTION_1_39(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19, v20);
  }

  sub_25BA97060(&v18, v22);
  __swift_project_boxed_opaque_existential_1(v22, v23);
  sub_25BCB624C();
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_25BAD5158(uint64_t result)
{
  if (result + 1 > *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    return sub_25BCB67AC();
  }

  return result;
}

uint64_t sub_25BAD5184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!sub_25BAB3058())
  {
LABEL_16:
    strcpy(__dst, "Invalid output");
    HIBYTE(__dst[1]) = -18;
    v31 = 9;
    sub_25BA97890();
  }

  v11 = v10;
  v12 = sub_25BAD5384();
  if (v13)
  {
LABEL_15:
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  v27 = v12;
  if (a3)
  {
    v28 = a4;
  }

  else
  {
    v14 = swift_unknownObjectRetain();
    a2 = sub_25BAD4888(v14, v11);
    a3 = v15;
    v28 = v16;
  }

  sub_25BCB7A4C();
  ObjectType = swift_getObjectType();
  v18 = (*(v11 + 32))(ObjectType, v11);
  v19 = sub_25BA9BEA0(v18);
  if (!v19)
  {
    goto LABEL_13;
  }

  v20 = v19;
  if (v19 < 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  for (i = 0; i != v20; ++i)
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x25F8779B0](i, v18);
    }

    else
    {
      v22 = *(v18 + 8 * i + 32);
    }

    sub_25BAD5418(v22, __src, 0, 1);
  }

LABEL_13:

  memcpy(__dst, __src, sizeof(__dst));
  v23 = sub_25BCB7A2C();
  swift_unknownObjectRelease();
  v24 = *(a1 + 152);
  v25 = *(a1 + 160);
  sub_25BCB617C();

  *a5 = a2;
  *(a5 + 8) = a3;
  *(a5 + 16) = v28;
  *(a5 + 24) = v23;
  *(a5 + 32) = v27;
  *(a5 + 40) = v24;
  *(a5 + 48) = v25;
  return result;
}

uint64_t sub_25BAD5384()
{
  OUTLINED_FUNCTION_17_10();
  v0 = swift_beginAccess();
  OUTLINED_FUNCTION_6_54(v0, v1, v2, v3, v4, v5, v6, v7, v11[0], v11[1]);
  if (v14)
  {
    if (v14 != 1)
    {
      sub_25BA9778C(v12);
      return 0;
    }

    OUTLINED_FUNCTION_7_54();
    swift_unknownObjectRelease();
    v8 = &v13;
  }

  else
  {
    v8 = v12;
  }

  sub_25BA9BE3C(v8, v11);
  v9 = v11[2];
  sub_25BA977E0(v11);
  return v9;
}

void sub_25BAD5418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 < a4 && sub_25BAB3058())
  {
    v6 = v5;
    ObjectType = swift_getObjectType();
    v8 = (*(v6 + 32))(ObjectType, v6);
    v9 = sub_25BA9BEA0(v8);
    v10 = 0;
    while (v10 != v9)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8779B0](v10, v8);
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v11 = *(v8 + 32 + 8 * v10);
      }

      if (__OFADD__(v10++, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      sub_25BCB7A4C();
      v13 = sub_25BAB3058();
      if (v13)
      {
        sub_25BAD4A64(v13, v14, __src);
        v15 = sub_25BAD5384();
        if (v16)
        {
          sub_25BCB79EC();
        }

        else
        {
          v17 = v15;
          sub_25BCB79EC();
          MEMORY[0x25F878200](v17);
        }

        swift_unknownObjectRelease();
      }

      v18 = *(v11 + 152);
      v19 = *(v11 + 160);
      MEMORY[0x25F878200](*(v18 + 16));
      v20 = *(v18 + 16);
      if (v20)
      {
        v21 = (v18 + 32);
        do
        {
          v22 = *v21++;
          MEMORY[0x25F878200](v22);
          --v20;
        }

        while (v20);
      }

      MEMORY[0x25F878200](v19);
      memcpy(__dst, __src, sizeof(__dst));
      v23 = sub_25BCB7A2C();
      MEMORY[0x25F878200](v23);
      sub_25BAD5418(v11, a2, a3 + 1, a4);
    }

    swift_unknownObjectRelease();
  }
}

void sub_25BAD5644()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3E58, &qword_25BCBBDB8);
      v8 = OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAD5810(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    OUTLINED_FUNCTION_29_3();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_25BAD5734()
{
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v0 + 48));
  v1 = *(v0 + 56);
  return sub_25BCB79EC();
}

void sub_25BAD57BC()
{
  sub_25BCB625C();
  v0 = OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78(v0, v1);
}

char *sub_25BAD5810(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[56 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_1_67(a3, result, 56 * a2);
  }

  return result;
}

uint64_t sub_25BAD5860()
{
  (*(*v0 + 160))();
  sub_25BCB625C();

  v1 = sub_25BAD593C();
  MEMORY[0x25F878200](v1);
  sub_25BAD593C();
  MEMORY[0x25F878200](v2);
  MEMORY[0x25F878200](v0[8]);
  MEMORY[0x25F878200](v0[9]);
  MEMORY[0x25F878200](v0[10]);
  MEMORY[0x25F878200](v0[11]);
  MEMORY[0x25F878200](v0[12]);
  MEMORY[0x25F878200](v0[13]);
  MEMORY[0x25F878200](v0[14]);
  v3 = v0[7];
  return sub_25BCB79EC();
}

uint64_t sub_25BAD593C()
{
  v0 = OUTLINED_FUNCTION_14_13();
  if (v1 < 4)
  {
    OUTLINED_FUNCTION_7_24();
    OUTLINED_FUNCTION_3_0();
  }

  v2 = *(v0 + 56);
  return *(v0 + 48);
}

uint64_t sub_25BAD5A00()
{
  result = 6579297;
  switch(*(v0 + 152))
  {
    case 1:
      result = OUTLINED_FUNCTION_5_61();
      break;
    case 2:
      result = OUTLINED_FUNCTION_7_60();
      break;
    case 3:
      result = OUTLINED_FUNCTION_6_61();
      break;
    case 4:
      result = OUTLINED_FUNCTION_9_57();
      break;
    case 5:
      result = OUTLINED_FUNCTION_13_48(0x6978616Du);
      break;
    case 6:
      result = OUTLINED_FUNCTION_13_48(0x696E696Du);
      break;
    case 7:
      result = 0x6F6C75646F6DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAD5AC0()
{
  result = 0x6D756D6978616DLL;
  switch(*(v0 + 130))
  {
    case 1:
      result = OUTLINED_FUNCTION_2_70();
      break;
    case 2:
      result = OUTLINED_FUNCTION_3_57();
      break;
    case 3:
      result = OUTLINED_FUNCTION_1_72();
      break;
    case 4:
      result = 7173491;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAD5B28()
{
  result = 0x6C61757165;
  switch(*(v0 + 130))
  {
    case 1:
      result = OUTLINED_FUNCTION_8_57();
      break;
    case 2:
      result = OUTLINED_FUNCTION_2_75();
      break;
    case 3:
      result = OUTLINED_FUNCTION_10_51();
      break;
    case 4:
      result = OUTLINED_FUNCTION_4_67();
      break;
    case 5:
      result = 0x6C61757145746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BAD5BD4()
{
  OUTLINED_FUNCTION_13_20();
  sub_25BCB625C();
  v1 = *(v0 + 56);
  return sub_25BCB79EC();
}

void sub_25BAD5C34(uint64_t a1)
{
  sub_25BAD5AC0();
  sub_25BCB625C();

  v3 = *(v1 + 48);
  sub_25BCB79EC();
  v4 = *(v1 + 136);

  sub_25BAD4C78(a1, v4);
}

uint64_t sub_25BAD5CCC()
{
  sub_25BABE12C(*(v0 + 128));
  sub_25BCB625C();
}

uint64_t sub_25BAD5D58(uint64_t a1, void (*a2)(void))
{
  a2();
  sub_25BCB625C();
}

void sub_25BAD5E88()
{
  sub_25BCB625C();
  v0 = OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78(v0, v1);
}

uint64_t sub_25BAD5F08()
{
  OUTLINED_FUNCTION_13_20();
  sub_25BCB625C();
  v1 = *(v0 + 64);
  return sub_25BCB79EC();
}

uint64_t sub_25BAD5FD8()
{
  sub_25BCB625C();
  *(v0 + 116);
  sub_25BCB7A0C();
  *(v0 + 120);
  sub_25BCB7A0C();
  *(v0 + 124);
  sub_25BCB7A0C();
  v1 = *(v0 + 128);
  return sub_25BCB79EC();
}

uint64_t sub_25BAD6080()
{
  v0 = sub_25BCB5EFC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25BCB5EBC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v10 = sub_25BCB5EEC();
  __swift_project_value_buffer(v10, qword_28154BE90);
  v11 = sub_25BCB5EDC();
  sub_25BCB5F0C();
  v12 = sub_25BCB6D4C();
  if (sub_25BCB6E1C())
  {

    sub_25BCB5F3C();

    if ((*(v1 + 88))(v4, v0) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1 + 8))(v4, v0);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_25BCB5E9C();
    _os_signpost_emit_with_name_impl(&dword_25BA90000, v11, v12, v15, "Trace Tensor Function", v13, v14, 2u);
    MEMORY[0x25F8797F0](v14, -1, -1);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BAD630C()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_25BAD6344()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v2 = *(v0 + 96);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 120);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  OUTLINED_FUNCTION_14_36();
  sub_25BAA4930(v4, v5, v6, v7);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v8 = *(v0 + 200);
  v49[0] = v1;
  v49[1] = v2;
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  sub_25BCB617C();
  v49[2] = sub_25BAD680C(v3);
  v49[10] = v8;
  sub_25BAD6F54(v49, v40);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v35 = *(v0 + 40);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v36 = *(v0 + 64);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v37 = *(v0 + 80);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v10 = *(v0 + 104);
  v9 = *(v0 + 112);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v38 = *(v0 + 128);
  OUTLINED_FUNCTION_14_36();
  sub_25BAA4930(v11, v12, v13, v14);
  v15 = *(v0 + 200);
  v16 = *(v0 + 208);
  v42 = v36;
  v41 = v35;
  v45 = v10;
  v46 = v9;
  v44 = v38;
  v43 = v37;
  v47 = v15;
  v48 = v16;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  if (sub_25BA9BEA0(*(v0 + 216)))
  {
    v17 = *(v0 + 216);
    v18 = sub_25BA9BEA0(v17);
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    v19 = 0;
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v18 == v19)
      {

        sub_25BAD6FB0(v40, v39);
        OUTLINED_FUNCTION_14_36();
        sub_25BAA4930(v30, v31, v32, v33);
        sub_25BC03168();
        sub_25BAA6F5C(v39, &qword_27FBB6618, &qword_25BCCB668);
        sub_25BA9AC78(v40);
        sub_25BAD700C(v49);
        goto LABEL_22;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x25F8779B0](v19, v17);
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v21 = *(v17 + 8 * v19 + 32);
      }

      if (__OFADD__(v19, 1))
      {
        break;
      }

      v23 = sub_25BAD6344(v22);

      v24 = *(v23 + 16);
      v25 = *(v20 + 16);
      if (__OFADD__(v25, v24))
      {
        goto LABEL_25;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v25 + v24 > *(v20 + 24) >> 1)
      {
        sub_25BAFD704();
        v20 = v26;
      }

      if (*(v23 + 16))
      {
        if ((*(v20 + 24) >> 1) - *(v20 + 16) < v24)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v27 = *(v20 + 16);
          v28 = __OFADD__(v27, v24);
          v29 = v27 + v24;
          if (v28)
          {
            goto LABEL_28;
          }

          *(v20 + 16) = v29;
        }
      }

      else
      {

        if (v24)
        {
          goto LABEL_26;
        }
      }

      ++v19;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3998, &unk_25BCC5B70);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_25BCBAE50;
    sub_25BAD6FB0(v40, v34 + 32);
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BCB617C();
    sub_25BA9AC78(v40);
    sub_25BAD700C(v49);
LABEL_22:
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BAD680C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_25BAD68EC();
  result = MEMORY[0x25F877220](v2, &type metadata for LazyTensorFunction.Key.OutputDescriptionKey, v3);
  v5 = 0;
  v10 = result;
  v6 = *(a1 + 16);
  for (i = 32; ; i += 56)
  {
    if (v6 == v5)
    {

      return v10;
    }

    if (v5 >= *(a1 + 16))
    {
      break;
    }

    v8 = *(a1 + i + 16);
    v11[0] = *(a1 + i);
    v11[1] = v8;
    v11[2] = *(a1 + i + 32);
    v12 = *(a1 + i + 48);
    ++v5;
    sub_25BAD6940(v11, &v9);
    sub_25BAD699C(&v9, v11);
  }

  __break(1u);
  return result;
}

unint64_t sub_25BAD68EC()
{
  result = qword_28154EB28[0];
  if (!qword_28154EB28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_28154EB28);
  }

  return result;
}

uint64_t sub_25BAD699C(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  v5 = a2[3];
  v4 = a2[4];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = *v2;
  v10 = *(*v2 + 40);
  sub_25BCB79CC();
  v11 = *(v3 + 40);
  v12 = *(v3 + 48);
  v50 = v7;
  v52 = v8;
  sub_25BAD6C2C(v54, v6, v7);
  MEMORY[0x25F878200](v5);
  v51 = v4;
  MEMORY[0x25F878200](v4);
  sub_25BAD4C78(v54, v11);
  MEMORY[0x25F878200](v12);
  v13 = sub_25BCB7A3C();
  v14 = -1 << *(v9 + 32);
  v15 = v13 & ~v14;
  if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
  {
LABEL_28:
    v39 = *v48;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v48;
    sub_25BAD6940(v3, v54);
    sub_25BAD6CC4(v3, v15, isUniquelyReferenced_nonNull_native);
    *v48 = v53;
    v41 = *(v3 + 16);
    *a1 = *v3;
    *(a1 + 16) = v41;
    *(a1 + 32) = *(v3 + 32);
    *(a1 + 48) = *(v3 + 48);
    return 1;
  }

  v16 = ~v14;
  v47 = v3;
  v17 = *(v9 + 48);
  v18 = (v11 + 32);
  v19 = v50;
  v20 = v51;
  while (1)
  {
    v21 = (v17 + 56 * v15);
    if (*(v21 + 48) != v12)
    {
      goto LABEL_27;
    }

    v22 = v21[5];
    v23 = *(v22 + 16);
    if (v23 != *(v11 + 16))
    {
      goto LABEL_27;
    }

    v25 = *v21;
    result = v21[1];
    v26 = v21[2];
    v27 = v21[3];
    v28 = !v23 || v22 == v11;
    v29 = v21[4];
    if (!v28)
    {
      break;
    }

LABEL_13:
    if (v29 == v20 && v27 == v5 && v25 == v6 && *(result + 16) == *(v19 + 16) && v26 == v52)
    {
      v35 = v5;
      v36 = v6;
      v37 = v18;
      v38 = sub_25BAD916C(result, v19);
      v18 = v37;
      v6 = v36;
      v5 = v35;
      v3 = v47;
      v19 = v50;
      v20 = v51;
      if (v38)
      {
        sub_25BC4352C(v47);
        v42 = *(v9 + 48) + 56 * v15;
        v43 = *(v42 + 8);
        v44 = *(v42 + 32);
        v45 = *(v42 + 40);
        v46 = *(v42 + 48);
        *a1 = *v42;
        *(a1 + 8) = v43;
        *(a1 + 16) = *(v42 + 16);
        *(a1 + 32) = v44;
        *(a1 + 40) = v45;
        *(a1 + 48) = v46;

        sub_25BCB617C();
        return 0;
      }
    }

LABEL_27:
    v15 = (v15 + 1) & v16;
    if (((*(v9 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v30 = (v22 + 32);
  v31 = v18;
  while (v23)
  {
    if (*v30 != *v31)
    {
      goto LABEL_27;
    }

    ++v30;
    ++v31;
    if (!--v23)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAD6C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = MEMORY[0x25F878200](a2);
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a3 + 32;
    do
    {
      v8 = (v7 + 16 * v6);
      v9 = *v8;
      v10 = v8[8];
      MEMORY[0x25F878200](*(*v8 + 16));
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = (v9 + 32);
        do
        {
          v13 = *v12++;
          MEMORY[0x25F878200](v13);
          --v11;
        }

        while (v11);
      }

      ++v6;
      result = MEMORY[0x25F878200](v10);
    }

    while (v6 != v5);
  }

  return result;
}

void sub_25BAD6CC4(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_25BC427BC(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_25BC4ABEC();
        goto LABEL_35;
      }

      sub_25BC42EFC(v7 + 1);
    }

    v10 = *(a1 + 24);
    v9 = *(a1 + 32);
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v14 = *v4;
    v15 = *(*v4 + 40);
    sub_25BCB79CC();
    v16 = *(a1 + 40);
    v17 = *(a1 + 48);
    v51 = v12;
    v52 = v11;
    v53 = v13;
    sub_25BAD6C2C(v54, v11, v12);
    MEMORY[0x25F878200](v10);
    MEMORY[0x25F878200](v9);
    sub_25BAD4C78(v54, v16);
    MEMORY[0x25F878200](v17);
    v18 = sub_25BCB7A3C();
    v19 = v14 + 56;
    v20 = -1 << *(v14 + 32);
    a2 = v18 & ~v20;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v21 = ~v20;
      v22 = *(v14 + 48);
      v23 = (v16 + 32);
      v24 = v52;
      v25 = v9;
      v26 = v51;
      v50 = v4;
      do
      {
        v27 = (v22 + 56 * a2);
        if (*(v27 + 48) == v17)
        {
          v28 = v27[5];
          v29 = *(v28 + 16);
          if (v29 == *(v16 + 16))
          {
            v31 = *v27;
            v30 = v27[1];
            v32 = v27[2];
            v33 = v27[3];
            if (v29)
            {
              v34 = v28 == v16;
            }

            else
            {
              v34 = 1;
            }

            v35 = v27[4];
            if (!v34)
            {
              v36 = (v28 + 32);
              v37 = v23;
              while (v29)
              {
                if (*v36 != *v37)
                {
                  goto LABEL_34;
                }

                ++v36;
                ++v37;
                if (!--v29)
                {
                  goto LABEL_20;
                }
              }

              __break(1u);
              goto LABEL_38;
            }

LABEL_20:
            if (v35 == v25 && v33 == v10 && v31 == v24 && *(v30 + 16) == *(v26 + 16) && v32 == v53)
            {
              v41 = v10;
              v42 = v23;
              v43 = sub_25BAD916C(v30, v26);
              v23 = v42;
              v10 = v41;
              v4 = v50;
              v26 = v51;
              v24 = v52;
              v25 = v9;
              if (v43)
              {
                goto LABEL_39;
              }
            }
          }
        }

LABEL_34:
        a2 = (a2 + 1) & v21;
      }

      while (((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_35:
  v44 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v45 = *(v44 + 48) + 56 * a2;
  v46 = *(a1 + 16);
  *v45 = *a1;
  *(v45 + 16) = v46;
  *(v45 + 32) = *(a1 + 32);
  *(v45 + 48) = *(a1 + 48);
  v47 = *(v44 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v44 + 16) = v49;
  }
}

uint64_t sub_25BAD7060()
{
  sub_25BAD7094();

  return swift_deallocClassInstance();
}

void *sub_25BAD7094()
{
  v1 = v0[4];

  v3 = v0[5];
  v2 = v0[6];

  v4 = v0[7];

  v6 = v0[8];
  v5 = v0[9];

  v8 = v0[10];
  v7 = v0[11];

  v9 = v0[12];

  v11 = v0[13];
  v10 = v0[14];

  v12 = v0[15];

  v14 = v0[16];
  v13 = v0[17];

  sub_25BAA6F5C((v0 + 18), &qword_27FBB6730, &qword_25BCBC4B0);
  v15 = v0[25];

  v16 = v0[27];

  return v0;
}

uint64_t sub_25BAD714C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25BAA51C8(a1 + 168, &v34);
  if (*(&v35 + 1))
  {
    v38 = v34;
    v39 = v35;
    v40 = v36;
    v41 = v37;
    goto LABEL_26;
  }

  v5 = sub_25BC46FA0(v4);
  v6 = *(a1 + 232);
  static ComputeDevice.mpsGPU.getter(&v38);
  if (*(&v39 + 1))
  {
    v31 = v39;
    v32 = v40;
    v30 = v38;
    v33 = v41;
    v7 = *(&v40 + 1) != 2 || v5 == 2;
    if ((v7 || (v5 & 1) == 0) && (v33 & ~v6) == 0)
    {
      goto LABEL_23;
    }

    sub_25BABF0A8(&v30);
  }

  else
  {
    sub_25BA9C2C8(&v38);
  }

  *(&v31 + 1) = &unk_286D4F718;
  *&v32 = &off_286D4F7D8;
  *(&v32 + 1) = 1;
  v33 = 1;
  if ((v6 & 1) == 0)
  {
    sub_25BABF0A8(&v30);
    static ComputeDevice.classicEspressoGPU.getter(&v38);
    if (*(&v39 + 1))
    {
      v31 = v39;
      v32 = v40;
      v30 = v38;
      v33 = v41;
      v8 = *(&v40 + 1) != 2 || v5 == 2;
      if ((v8 || (v5 & 1) == 0) && (v33 & ~v6) == 0)
      {
        goto LABEL_23;
      }

      sub_25BABF0A8(&v30);
    }

    else
    {
      sub_25BA9C2C8(&v38);
    }

    *(&v31 + 1) = &unk_286D4F6F8;
    *&v32 = &off_286D4F798;
    *(&v32 + 1) = 1;
    v33 = sub_25BC177D8(1);
    if ((v33 & ~v6) != 0)
    {
      sub_25BABF0A8(&v30);
      if (v5 == 2)
      {
        if (qword_27FBB3390 != -1)
        {
          swift_once();
        }

        v13 = sub_25BCB5F6C();
        __swift_project_value_buffer(v13, qword_27FBDB4C0);
        v14 = sub_25BCB5F4C();
        v15 = sub_25BCB6CBC();
        if (!os_log_type_enabled(v14, v15))
        {
          goto LABEL_43;
        }

        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_25BA90000, v14, v15, "Failed to find compatible compute device for network, fallbacking back to CPU.", v16, 2u);
      }

      else
      {
        if (qword_27FBB3390 != -1)
        {
          swift_once();
        }

        v17 = sub_25BCB5F6C();
        __swift_project_value_buffer(v17, qword_27FBDB4C0);
        v14 = sub_25BCB5F4C();
        v18 = sub_25BCB6CBC();
        if (!os_log_type_enabled(v14, v18))
        {
          goto LABEL_43;
        }

        v16 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *&v38 = v19;
        *v16 = 136315138;
        if (v5)
        {
          v20 = 0x656C676E6973;
        }

        else
        {
          v20 = 1718378856;
        }

        if (v5)
        {
          v21 = 0xE600000000000000;
        }

        else
        {
          v21 = 0xE400000000000000;
        }

        v22 = sub_25BB72474(v20, v21, &v38);

        *(v16 + 4) = v22;
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x25F8797F0](v19, -1, -1);
      }

      MEMORY[0x25F8797F0](v16, -1, -1);
LABEL_43:

      if (qword_28154E200 != -1)
      {
        swift_once();
      }

      v23 = qword_2815573E8;
      v24 = unk_2815573F0;
      v25 = __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
      v26 = *(*(v23 - 8) + 64);
      MEMORY[0x28223BE20](v25);
      v28 = &v30 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v28);
      sub_25BC16FAC(1, v28, v23, v24, &v38);
      goto LABEL_24;
    }
  }

LABEL_23:
  v38 = v30;
  v39 = v31;
  v40 = v32;
  v41 = v33;
LABEL_24:
  if (*(&v35 + 1))
  {
    sub_25BA9C2C8(&v34);
  }

LABEL_26:
  v9 = sub_25BAD761C(&v38);
  v11 = v10;
  result = sub_25BABF0A8(&v38);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_25BAD761C(uint64_t a1)
{
  v2 = v1;
  sub_25BAC27B0(a1, v25);
  v4 = v26;
  v5 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v6 = (*(v5 + 8))(v4, v5);
  v8 = v7;
  swift_beginAccess();
  v9 = sub_25BAD7914(v6, v8, *(v2 + 16));

  if (v9)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    sub_25BAC27B0(v25, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if (swift_dynamicCast())
    {
      type metadata accessor for MPSGraphBackend();
      swift_allocObject();
      sub_25BBA7A28();
      v10 = OUTLINED_FUNCTION_14_43();
      v11(v10);
      OUTLINED_FUNCTION_23_34();

      v12 = *(v2 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_48_20();
      v14 = &off_286D4D020;
    }

    else if (swift_dynamicCast())
    {
      type metadata accessor for MILEspressoBackend();
      swift_allocObject();
      sub_25BBB34A0();
      v15 = OUTLINED_FUNCTION_14_43();
      v16(v15);
      OUTLINED_FUNCTION_23_34();

      v17 = *(v2 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_48_20();
      v14 = &off_286D4D7C8;
    }

    else
    {
      if (!swift_dynamicCast())
      {
        sub_25BABEF40(a1, v23);
        v23[84] = 2;
        sub_25BA97890();
      }

      type metadata accessor for BNNSBackend();
      swift_allocObject();
      v18 = OUTLINED_FUNCTION_14_43();
      v19(v18);
      OUTLINED_FUNCTION_23_34();

      v20 = *(v2 + 16);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_48_20();
      v14 = &off_286D485A0;
    }

    sub_25BC7475C(0, a1, v8, v13, &v22, v14);
    *(v2 + 16) = v22;

    swift_endAccess();
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  __swift_destroy_boxed_opaque_existential_1(v25);
  return OUTLINED_FUNCTION_15_29();
}

uint64_t sub_25BAD78C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_25BA9266C(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_11_15(v3);
  v6 = *v5;
  v7 = v5[1];
  return swift_unknownObjectRetain();
}

void sub_25BAD7934(uint64_t *a1)
{
  v2 = a1[11];
  v69 = v2;
  v70 = a1;
  v72 = sub_25BA9BEA0(v2);
  if (!v72)
  {
    v6 = MEMORY[0x277D84F90];
    v30 = *(MEMORY[0x277D84F90] + 16);
LABEL_33:
    v35 = sub_25BAAF54C(v2);
    if (v30 == v35)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
      v76 = sub_25BCB614C();
      v36 = sub_25BAD8178(v6);

      v75 = v36;
      sub_25BAD8324(v37);
    }

    else
    {
      v38 = v6[2];
      v39 = MEMORY[0x277D84F90];
      if (v38)
      {
        v75 = MEMORY[0x277D84F90];
        sub_25BB004E4();
        v39 = v75;
        v40 = v6 + 5;
        do
        {
          v42 = *(v40 - 1);
          v41 = *v40;
          v75 = v39;
          v44 = *(v39 + 16);
          v43 = *(v39 + 24);
          v35 = sub_25BCB617C();
          if (v44 >= v43 >> 1)
          {
            sub_25BB004E4();
            v39 = v75;
          }

          *(v39 + 16) = v44 + 1;
          v45 = v39 + 16 * v44;
          *(v45 + 32) = v42;
          *(v45 + 40) = v41;
          v40 += 3;
          --v38;
        }

        while (v38);
        v2 = v69;
      }

      MEMORY[0x28223BE20](v35);
      v64 = v70;
      v46 = sub_25BBFC394(sub_25BBB3C40, v63, v2);

      sub_25BBB3BEC();
      v65 = swift_allocError();
      v48 = v47;
      v75 = 0;
      v76 = 0xE000000000000000;
      sub_25BCB70FC();

      v75 = 0xD00000000000001FLL;
      v76 = 0x800000025BCDF510;
      v73 = 8236;
      v74 = 0xE200000000000000;
      MEMORY[0x28223BE20](v49);
      v64 = &v73;
      v50 = sub_25BBB38C4(0x7FFFFFFFFFFFFFFFLL, 1, sub_25BADA100, v63, v46);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3960, &qword_25BCBB900);
      v52 = MEMORY[0x25F876F80](v50, v51);
      v54 = v53;

      MEMORY[0x25F876C90](v52, v54);

      v55 = MEMORY[0x25F876C90](0x6365722074756220, 0xEE00206465766965);
      v73 = 8236;
      v74 = 0xE200000000000000;
      MEMORY[0x28223BE20](v55);
      v64 = &v73;
      sub_25BBB38C4(0x7FFFFFFFFFFFFFFFLL, 1, sub_25BBB3C80, v63, v39);
      v56 = MEMORY[0x25F876F80]();
      v58 = v57;

      MEMORY[0x25F876C90](v56, v58);

      MEMORY[0x25F876C90](46, 0xE100000000000000);
      v59 = v76;
      *v48 = v75;
      *(v48 + 8) = v59;
      *(v48 + 84) = 5;
      swift_willThrow();
    }

    return;
  }

  v3 = 0;
  v4 = a1[13];
  v5 = a1[14];
  v71 = v2 & 0xC000000000000001;
  v68 = v2 & 0xFFFFFFFFFFFFFF8;
  v67 = v4;
  v66 = v4 + 32;
  v6 = MEMORY[0x277D84F90];
  v79 = v5;
  while (1)
  {
    if (v71)
    {
      v7 = MEMORY[0x25F8779B0](v3, v2);
    }

    else
    {
      if (v3 >= *(v68 + 16))
      {
        goto LABEL_44;
      }

      v7 = *(v2 + 8 * v3 + 32);
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    v9 = sub_25BAC44E4();
    if (!*(v5 + 16))
    {

LABEL_14:
      v19 = v70[17];
      v18 = v70[18];
      v20 = sub_25BAC44E4();
      if (*(v18 + 16))
      {
        v22 = sub_25BA9266C(v20, v21);
        v24 = v23;

        if (v24)
        {
          v25 = *(*(v18 + 56) + 8 * v22);
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_47;
          }

          if (v25 >= *(v19 + 16))
          {
            goto LABEL_48;
          }

          v26 = v19 + 16 * v25;
          v17 = *(v26 + 32);
          v16 = *(v26 + 40);
          sub_25BCB617C();
          goto LABEL_21;
        }
      }

      else
      {
      }

      v17 = sub_25BAC44E4();
      v16 = v27;
LABEL_21:
      v2 = v69;
      goto LABEL_22;
    }

    v11 = sub_25BA9266C(v9, v10);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      goto LABEL_14;
    }

    v14 = *(*(v79 + 56) + 8 * v11);
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    if (v14 >= *(v67 + 16))
    {
      goto LABEL_46;
    }

    v15 = (v66 + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_25BCB617C();
LABEL_22:

    v28 = sub_25BA928B4();
    [v28 lock];

    swift_beginAccess();
    sub_25BA9323C(v7 + 40, &v75);
    if (v78 == 1)
    {

      swift_unknownObjectRelease();
      sub_25BA977E0(&v77);
    }

    else
    {
      if (v78 != 2)
      {
        sub_25BA9778C(&v75);
        [*(v7 + 224) unlock];

        sub_25BBB3BEC();
        swift_allocError();
        v61 = v60;
        v75 = 0;
        v76 = 0xE000000000000000;
        sub_25BCB70FC();

        v75 = 0xD00000000000001FLL;
        v76 = 0x800000025BCDF4D0;
        MEMORY[0x25F876C90](v17, v16);

        MEMORY[0x25F876C90](0xD000000000000011, 0x800000025BCDF4F0);
        v62 = v76;
        *v61 = v75;
        *(v61 + 8) = v62;
        *(v61 + 84) = 5;
        swift_willThrow();

        return;
      }

      sub_25BA9778C(&v75);
    }

    [*(v7 + 224) unlock];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = v6[2];
      sub_25BAD80BC();
      v6 = v33;
    }

    v29 = v6[2];
    v30 = v29 + 1;
    if (v29 >= v6[3] >> 1)
    {
      sub_25BAD80BC();
      v6 = v34;
    }

    v6[2] = v30;
    v31 = &v6[3 * v29];
    v31[4] = v17;
    v31[5] = v16;
    v31[6] = v7;
    ++v3;
    v5 = v79;
    if (v8 == v72)
    {
      goto LABEL_33;
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
}

void sub_25BAD80BC()
{
  OUTLINED_FUNCTION_37();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_6_10();
  if (v6 == v7)
  {
LABEL_7:
    OUTLINED_FUNCTION_8_5(v5);
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
      v8 = OUTLINED_FUNCTION_30_2();
      OUTLINED_FUNCTION_3_5(v8);
      if (v1)
      {
LABEL_9:
        v9 = OUTLINED_FUNCTION_7_4();
        sub_25BAC9924(v9);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38E0, &qword_25BCBB888);
    OUTLINED_FUNCTION_17();
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_31_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_5_7();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_25BAD8238()
{
  v1 = *v0;
  sub_25BB015E0();
  *v0 = v2;
}

uint64_t OUTLINED_FUNCTION_181_0()
{
  v2 = *(v0 + 24);

  return sub_25BCB6F5C();
}

void OUTLINED_FUNCTION_181_1(__n128 a1)
{
  *(v1 + 72) = a1;
  *(v1 + 88) = 6;
  *(v1 + 96) = v2;
}

uint64_t OUTLINED_FUNCTION_158(char a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{

  return sub_25BBA291C(a1, a2, a3, a4, a5, v10, v9, a8, a9);
}

__n128 OUTLINED_FUNCTION_158_0@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v2;
  result = *(v1 + 184);
  *(a1 + 32) = result;
  v4 = *(v1 + 200);
  return result;
}

uint64_t sub_25BAD8478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25BAD85B0(a1);
  v6 = v5;
  ObjectType = swift_getObjectType();
  v8 = (*(v6 + 24))(a2, a3, ObjectType, v6);
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_25BAD8524(void (*a1)(uint64_t *__return_ptr), uint64_t a2)
{
  v6 = *(v2 + 40);
  sub_25BAA3234();
  a1(&v8);
  if (!v3)
  {
    a2 = v8;
  }

  sub_25BAA3258();
  return a2;
}

uint64_t sub_25BAD85B0(uint64_t a1)
{
  v8[2] = *(v1 + 16);
  v8[3] = a1;
  v3 = sub_25BAD8524(sub_25BAD8508, v8);
  if (v3)
  {
    return v3;
  }

  type metadata accessor for EspressoV1Executor();
  sub_25BAD6FB0(a1, v9);
  sub_25BB6FC6C();
  v4 = v5;
  sub_25BAD6F54(a1, v9);

  sub_25BBC8BC4(v6, &off_286D4B000, v9);
  return v4;
}

uint64_t sub_25BAD8678@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 16);
  if (*(v6 + 16) && (v7 = sub_25BAD885C(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    swift_endAccess();
    Strong = swift_weakLoadStrong();

    if (!Strong || (, Strong != v9))
    {
      v11 = swift_weakLoadStrong();
      if (v11)
      {
        v12 = v11;

        if (v9 == v12)
        {
          swift_weakLoadStrong();
          swift_weakAssign();
        }
      }

      if (swift_weakLoadStrong())
      {
        swift_weakLoadStrong();
        swift_weakAssign();
      }

      if (swift_weakLoadStrong())
      {
        swift_weakLoadStrong();
        swift_weakAssign();
      }

      swift_weakAssign();
      swift_weakLoadStrong();
      swift_weakAssign();

      if (swift_weakLoadStrong())
      {
        swift_weakAssign();
      }

      swift_weakAssign();
    }

    v14 = *(v9 + 104);
    swift_unknownObjectRetain();

    *a3 = v14;
  }

  else
  {
    result = swift_endAccess();
    *a3 = 0;
    *(a3 + 8) = 0;
  }

  return result;
}

unint64_t sub_25BAD885C(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_25BCB79CC();
  sub_25BAD88C8(v6);
  v4 = sub_25BCB7A3C();

  return sub_25BAD8E54(a1, v4);
}

uint64_t sub_25BAD88C8(void *a1)
{
  v2 = v1;
  sub_25BAD89FC(a1, *v2);
  v4 = v2[1];
  sub_25BAD8A84();
  sub_25BAD8B30(a1, v2[2]);
  sub_25BAA4930((v2 + 3), v8, &qword_27FBB6730, &qword_25BCBC4B0);
  if (v9)
  {
    v5 = v10;
    if (!v10 || v10 == 2 || v10 == 1)
    {
      sub_25BCB625C();
    }

    else
    {
      v6 = [swift_unknownObjectRetain() registryID];
      MEMORY[0x25F878240](v6);
      sub_25BB7304C(v5);
    }

    sub_25BABF0A8(v8);
  }

  else
  {
    sub_25BAA6F5C(v8, &qword_27FBB6730, &qword_25BCBC4B0);
  }

  return sub_25BAD8D2C(a1, v2[10]);
}

void sub_25BAD89FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_59(a1, a2);
  if (v2)
  {
    v4 = 0;
    v5 = v3 + 32;
    do
    {
      v6 = (v5 + 16 * v4);
      v7 = *v6;
      v8 = v6[8];
      MEMORY[0x25F878200](*(*v6 + 16));
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = (v7 + 32);
        do
        {
          v11 = *v10++;
          MEMORY[0x25F878200](v11);
          --v9;
        }

        while (v9);
      }

      ++v4;
      MEMORY[0x25F878200](v8);
    }

    while (v4 != v2);
  }
}

void sub_25BAD8A84()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_5_59(v2, v3);
  if (v0)
  {
    v4 = 0;
    v5 = v1 + 32;
    do
    {
      v6 = (v5 + 24 * v4);
      v7 = v6[1];
      MEMORY[0x25F878200](*v6);
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = 0;
        v10 = v7 + 32;
        do
        {
          v11 = (v10 + 16 * v9);
          v12 = *v11;
          v13 = v11[8];
          MEMORY[0x25F878200](*(*v11 + 16));
          v14 = *(v12 + 16);
          if (v14)
          {
            v15 = (v12 + 32);
            do
            {
              v16 = *v15++;
              MEMORY[0x25F878200](v16);
              --v14;
            }

            while (v14);
          }

          ++v9;
          MEMORY[0x25F878200](v13);
        }

        while (v9 != v8);
      }

      ++v4;
    }

    while (v4 != v0);
  }

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BAD8B30(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_25BCB7A3C();
  v29 = a2;
  result = 0;
  v4 = 0;
  v7 = *(a2 + 56);
  v6 = a2 + 56;
  v5 = v7;
  v8 = 1 << *(v6 - 24);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v28 = v11;
  if ((v9 & v5) != 0)
  {
    do
    {
      v34 = result;
LABEL_9:
      v13 = *(v29 + 48) + 56 * (__clz(__rbit64(v10)) | (v4 << 6));
      v15 = *v13;
      v14 = *(v13 + 8);
      v30 = *(v13 + 24);
      v31 = *(v13 + 32);
      v32 = *(v13 + 40);
      v33 = *(v13 + 48);
      sub_25BCB79CC();
      MEMORY[0x25F878200](v15);
      v16 = *(v14 + 16);
      if (v16)
      {
        v17 = 0;
        v18 = v14 + 32;
        do
        {
          v19 = (v18 + 16 * v17);
          v20 = *v19;
          v21 = v19[8];
          MEMORY[0x25F878200](*(*v19 + 16));
          v22 = *(v20 + 16);
          if (v22)
          {
            v23 = (v20 + 32);
            do
            {
              v24 = *v23++;
              MEMORY[0x25F878200](v24);
              --v22;
            }

            while (v22);
          }

          ++v17;
          MEMORY[0x25F878200](v21);
        }

        while (v17 != v16);
      }

      MEMORY[0x25F878200](v30);
      MEMORY[0x25F878200](v31);
      v25 = *(v32 + 16);
      MEMORY[0x25F878200](v25);
      if (v25)
      {
        v26 = (v32 + 32);
        do
        {
          v27 = *v26++;
          MEMORY[0x25F878200](v27);
          --v25;
        }

        while (v25);
      }

      v10 &= v10 - 1;
      MEMORY[0x25F878200](v33);
      result = sub_25BCB7A3C() ^ v34;
      v11 = v28;
    }

    while (v10);
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      return MEMORY[0x25F878200](result);
    }

    v10 = *(v6 + 8 * v12);
    ++v4;
    if (v10)
    {
      v34 = result;
      v4 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BAD8D2C(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  result = sub_25BCB7A3C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_25BCB79CC();
    sub_25BCB7A0C();
    result = sub_25BCB7A3C();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x25F878200](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_25BAD8E54(uint64_t *a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_25BAD6F54(*(v2 + 48) + 88 * i, v8);
    v6 = sub_25BAD8F18(v8, a1);
    sub_25BAD700C(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

BOOL sub_25BAD8F18(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*(v4 + 16) != *(v5 + 16))
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  if (*(v6 + 16) != *(v7 + 16))
  {
    return 0;
  }

  v8 = a1[2];
  v9 = a2[2];
  if (*(v8 + 16) != *(v9 + 16) || (sub_25BAD916C(v4, v5) & 1) == 0 || (sub_25BAD922C(v8, v9) & 1) == 0 || (sub_25BAD9550(v6, v7) & 1) == 0)
  {
    return 0;
  }

  sub_25BAA4930((a1 + 3), &v42, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v43 + 1))
  {
    v46 = v42;
    v47 = v43;
    v48 = v44;
    v49 = v45;
    sub_25BAA4930((a2 + 3), &v38, &qword_27FBB6730, &qword_25BCBC4B0);
    if (*(&v39 + 1))
    {
      v42 = v38;
      v43 = v39;
      v44 = v40;
      v45 = v41;
      if (sub_25BAD1FB0(*(&v48 + 1), *(&v40 + 1)))
      {
        v10 = *(&v47 + 1);
        v11 = v48;
        __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
        v12 = (*(v11 + 24))(&v42, v10, v11);
        sub_25BABF0A8(&v42);
        sub_25BABF0A8(&v46);
        if ((v12 & 1) == 0)
        {
          return 0;
        }

LABEL_16:
        v30 = a1[10];
        v31 = a2[10];
        sub_25BCB617C();
        v32 = OUTLINED_FUNCTION_24_1();
        v34 = *(sub_25BAD95F0(v32, v33) + 16);

        return v34 == 0;
      }

      sub_25BABF0A8(&v42);
      sub_25BABF0A8(&v46);
      return 0;
    }

    sub_25BABF0A8(&v46);
    v13 = &v38;
  }

  else
  {
    v13 = &v42;
  }

  sub_25BAA6F5C(v13, &qword_27FBB6730, &qword_25BCBC4B0);
  v14 = sub_25BAA4930((a1 + 3), &v46, &qword_27FBB6730, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_47_18(v14, v15, v16, v17, v18, v19, v20, v21, v36, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
  if (!v8)
  {
    v22 = sub_25BAA4930((a2 + 3), &v46, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_47_18(v22, v23, v24, v25, v26, v27, v28, v29, v37, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1), v41);
    goto LABEL_16;
  }

  return 0;
}

uint64_t sub_25BAD916C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return OUTLINED_FUNCTION_6_8();
  }

  if (!v2 || result == a2)
  {
    return OUTLINED_FUNCTION_53_0();
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = (v4 + 16 * v3);
    v6 = *v5;
    v7 = (a2 + 32 + 16 * v3);
    v8 = *v7;
    v9 = *(*v5 + 16);
    if (v9 != *(*v7 + 16))
    {
      return OUTLINED_FUNCTION_6_8();
    }

    v10 = v5[8];
    v11 = v7[8];
    if (v9)
    {
      v12 = v6 == v8;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = (v6 + 32);
      v14 = (v8 + 32);
      while (v9)
      {
        result = *v14;
        if (*v13 != *v14)
        {
          return OUTLINED_FUNCTION_6_8();
        }

        ++v13;
        ++v14;
        if (!--v9)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      break;
    }

LABEL_15:
    if (v10 != v11)
    {
      return OUTLINED_FUNCTION_6_8();
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}