uint64_t sub_25BC03638(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_13_32();
  sub_25BB281E0(v4, v5);
  v6 = *v1;
  v7 = *(*v1 + 16);
  v8 = *(*v1 + 24) >> 1;
  v9 = v8 - v7;
  memcpy(__dst, a1, 0xB0uLL);
  sub_25BB45694(__dst);
  if (v8 == v7)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  sub_25BB45648(v21);
  memcpy(__src, __dst, sizeof(__src));
  a1 = 0;
  v2 = v9 & ~(v9 >> 63);
  v10 = 176 * v7 + 32;
  v11 = ~v7 + v8;
  while (1)
  {
    if (v2 == a1)
    {
      __break(1u);
      goto LABEL_14;
    }

    memcpy(v19, __src, 0xB1uLL);
    if (sub_25BB456E4(v19) == 1)
    {
      result = memcpy(v22, v21, 0xB1uLL);
      goto LABEL_9;
    }

    memcpy((v6 + v10), __src, 0xB0uLL);
    if (v11 == a1)
    {
      break;
    }

    memcpy(__src, v21, sizeof(__src));
    v10 += 176;
    ++a1;
  }

  result = memcpy(v22, v21, 0xB1uLL);
  a1 = v9;
LABEL_9:
  if (a1 < 1)
  {
    goto LABEL_27;
  }

  v13 = *(v6 + 16);
  v2 = v13 + a1;
  if (__OFADD__(v13, a1))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *(v6 + 16) = v2;
  if (a1 != v9)
  {
    goto LABEL_12;
  }

LABEL_15:
  memcpy(v21, v22, 0xB1uLL);
  result = sub_25BB456E4(v21);
  if (result == 1)
  {
LABEL_12:
    *v1 = v6;
    return result;
  }

  v14 = *(v6 + 24);
  v15 = v14 >> 1;
  a1 = v2 + 1;
  LOBYTE(v9) = __OFADD__(v2, 1);
  if (v15 < a1)
  {
LABEL_28:
    OUTLINED_FUNCTION_83_6();
    sub_25BAFE3EC();
    v6 = v18;
    v14 = *(v18 + 24);
    v15 = v14 >> 1;
  }

  if (v2 >= v15)
  {
    do
    {
      *(v6 + 16) = v2;
      v16 = v14 >> 1;
      if ((v14 >> 1) < a1)
      {
        OUTLINED_FUNCTION_83_6();
        sub_25BAFE3EC();
        v6 = v17;
        v14 = *(v17 + 24);
        v16 = v14 >> 1;
      }
    }

    while (v2 >= v16);
  }

  result = memmove((v6 + 176 * v2 + 32), v22, 0xB0uLL);
  if ((v9 & 1) == 0)
  {
    *(v6 + 16) = a1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_25BC03860(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB27818(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_17_32(v3 + 8 * v7);
  swift_arrayInitWithCopy();

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

void sub_25BC0390C(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_1_52(a1);
  if (v5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_25BB28210(v4, 1);
  OUTLINED_FUNCTION_38_14();
  if (!v6)
  {

    if (!v1)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_2_52();
  if (v8 != v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = OUTLINED_FUNCTION_17_32(v3 + v7);
  memcpy(v9, v10, v11);

  if (!v1)
  {
LABEL_8:
    *v2 = v3;
    return;
  }

  OUTLINED_FUNCTION_37_14();
  if (!v5)
  {
    *(v3 + 16) = v12;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
}

uint64_t Tensor.init(shape:data:scalarType:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v11 = *a1;
  v12 = *a4;
  if (sub_25BC02C80(a2, a3))
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
  }

  else
  {
    v13 = OUTLINED_FUNCTION_26_0();
    v14 = MEMORY[0x25F876270](v13);
    if (*(v11 + 16))
    {
      while (1)
      {
        OUTLINED_FUNCTION_92_0();
        if (!v17)
        {
          break;
        }

        if (v16 == 1)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
      goto LABEL_19;
    }

    v15 = 1;
LABEL_8:
    if ((v12 - 1) > 0xA)
    {
      v18 = 1;
    }

    else
    {
      v18 = qword_25BCCB678[(v12 - 1)];
    }

    if ((v15 * v18) >> 64 != (v15 * v18) >> 63)
    {
LABEL_19:
      __break(1u);
LABEL_20:
      OUTLINED_FUNCTION_0_0();
      swift_once();
LABEL_18:
      v24 = qword_281557400;
      v52[0] = v11;
      LOBYTE(v53) = v12;
      v25 = OUTLINED_FUNCTION_26_0();
      sub_25BB33C70(v25, v26);
      sub_25BC73098(v52, &v53, v56, v24, a2, a3);
      v28 = v27;

      sub_25BAA48D4(v56, v52, &qword_27FBB6730, &qword_25BCBC4B0);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_93();
      v29 = swift_allocObject();
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      OUTLINED_FUNCTION_19_22();
      sub_25BAA5BB4(v31, v32, v33, v29, ObjectType, v28);
      OUTLINED_FUNCTION_9_19();
      type metadata accessor for TensorHandle();
      OUTLINED_FUNCTION_22();
      v34 = swift_allocObject();
      OUTLINED_FUNCTION_34_15(v34);
      sub_25BAA6EB0();

      v35 = OUTLINED_FUNCTION_26_0();
      sub_25BB0D160(v35, v36);
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_77_4(a5);
      OUTLINED_FUNCTION_77_4(v56);
      OUTLINED_FUNCTION_77_4(v58);
      v37 = OUTLINED_FUNCTION_26_0();
      result = sub_25BB0D160(v37, v38);
      *a6 = v29;
      return result;
    }

    if (v14 >= v15 * v18)
    {
      OUTLINED_FUNCTION_101_4(a5, v58);
      OUTLINED_FUNCTION_101_4(v58, &v53);
      if (*(&v54 + 1))
      {
        OUTLINED_FUNCTION_12_31(v56, v48, v49, v50, v51, v52[0], v52[1], v52[2], v52[3], v52[4], v52[5], v52[6], v52[7], v52[8], v52[9], v52[10], v52[11], v52[12], v52[13], v52[14], v52[15], v52[16], v53, v54, v55);
        v57 = v19;
        v20 = OUTLINED_FUNCTION_26_0();
        sub_25BB33C70(v20, v21);
      }

      else
      {
        type metadata accessor for ContextManager();
        v22 = OUTLINED_FUNCTION_26_0();
        sub_25BB33C70(v22, v23);
        sub_25BAA49B8();
        sub_25BAA4A5C(v52);

        sub_25BAA48D4(v52, v56, &qword_27FBB6730, &qword_25BCBC4B0);
        sub_25BAA4AF4(v52);
        if (*(&v54 + 1))
        {
          sub_25BAA6FBC(&v53, &qword_27FBB6730, &qword_25BCBC4B0);
        }
      }

      if (qword_28154F2C8 == -1)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    }

    OUTLINED_FUNCTION_7_0();
  }

  OUTLINED_FUNCTION_25_0();
  __break(1u);
  v40 = OUTLINED_FUNCTION_26_0();
  sub_25BB0D160(v40, v41);

  OUTLINED_FUNCTION_25_20();
  sub_25BAA6FBC(v42, v43, v44);
  OUTLINED_FUNCTION_25_20();
  sub_25BAA6FBC(v45, v46, v47);

  __break(1u);
  return result;
}

uint64_t Tensor.init(unsafeUninitializedShape:scalarType:computeDevice:initializingWith:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_59_6(a1);
  v12 = *v11;
  sub_25BAA48D4(v7, &v28, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v29 + 1))
  {
    v32[0] = v28;
    v32[1] = v29;
    v32[2] = v30;
    v33 = v31;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v27);

    sub_25BAA48D4(v27, v32, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v27);
    if (*(&v29 + 1))
    {
      sub_25BAA6FBC(&v28, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v27[0] = v8;
  LOBYTE(v28) = v12;
  sub_25BAA4B48(v27, &v28, v32, a4, a5);
  if (v6)
  {
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v14, v15, v16);
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v17, v18, v19);
  }

  else
  {
    v21 = v13;

    sub_25BAA48D4(v32, v27, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v22 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v28) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v24, v27, v25, v22, ObjectType, v21);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v26 = swift_allocObject();
    OUTLINED_FUNCTION_34_15(v26);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BAA6FBC(v7, &qword_27FBB6730, &qword_25BCBC4B0);
    result = sub_25BAA6FBC(v32, &qword_27FBB6730, &qword_25BCBC4B0);
    *v5 = v22;
  }

  return result;
}

uint64_t sub_25BC03F70(uint64_t *a1)
{
  OUTLINED_FUNCTION_59_6(a1);
  v6 = *v5;
  if (sub_25BAC1900(0, v4))
  {
    OUTLINED_FUNCTION_101_4(v3, v35);
    OUTLINED_FUNCTION_101_4(v35, &v30);
    if (*(&v31 + 1))
    {
      OUTLINED_FUNCTION_12_31(v33, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v29[4], v29[5], v29[6], v29[7], v29[8], v29[9], v29[10], v29[11], v29[12], v29[13], v29[14], v29[15], v29[16], v30, v31, v32);
      v34 = v7;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v29);

      sub_25BAA48D4(v29, v33, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v29);
      if (*(&v31 + 1))
      {
        sub_25BAA6FBC(&v30, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v29[0] = v4;
    LOBYTE(v30) = v6;
    sub_25BC728E8(v29, &v30, v33, qword_281557400);
    OUTLINED_FUNCTION_47_13();
    sub_25BAA48D4(v33, v29, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v8 = swift_allocObject();
    swift_getObjectType();
    OUTLINED_FUNCTION_105_4();
    OUTLINED_FUNCTION_19_22();
    OUTLINED_FUNCTION_28_19();
    sub_25BAA5BB4(v9, v10, v11, v12, v13, v14);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v15 = swift_allocObject();
    OUTLINED_FUNCTION_32_18(v15);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    v16 = OUTLINED_FUNCTION_9_23();
    sub_25BAA6FBC(v16, v17, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_58_7(v33);
    result = OUTLINED_FUNCTION_58_7(v35);
    *v1 = v8;
  }

  else
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_52_9();
    __break(1u);

    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v19, v20, v21);
    OUTLINED_FUNCTION_25_20();
    sub_25BAA6FBC(v22, v23, v24);

    __break(1u);
  }

  return result;
}

uint64_t Tensor.init(zeros:scalarType:on:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_59_6(a1);
  v5 = *v4;
  sub_25BAA48D4(v2, &v25, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v26 + 1))
  {
    OUTLINED_FUNCTION_11_33(v28, v22, v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v24[6], v24[7], v24[8], v24[9], v24[10], v24[11], v24[12], v24[13], v24[14], v24[15], v24[16], v25, v26, v27);
    v29 = v6;
  }

  else
  {
    type metadata accessor for ContextManager();
    v7 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v7, v8);

    sub_25BAA48D4(v24, v28, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v24);
    if (*(&v26 + 1))
    {
      sub_25BAA6FBC(&v25, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v24[0] = v3;
  LOBYTE(v25) = v5;
  sub_25BC72C64(v24, &v25, v28, qword_281557400);
  OUTLINED_FUNCTION_47_13();
  v9 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_73_6(v28, v10, v11);
  swift_getObjectType();
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_28_19();
  sub_25BC5FAD0(v12, v13, v14, v15, v16, v17);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_32_18(v18);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  v19 = OUTLINED_FUNCTION_9_23();
  sub_25BAA6FBC(v19, v20, &qword_25BCBC4B0);
  result = OUTLINED_FUNCTION_58_7(v28);
  *v1 = v9;
  return result;
}

uint64_t Tensor.init(_:on:)@<X0>(void *a1@<X8>, float a2@<S0>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  OUTLINED_FUNCTION_24_17(inited);
  sub_25BACC1B0(MEMORY[0x277D84F90], inited, v6, &v7);
  result = OUTLINED_FUNCTION_33_18();
  *a1 = v7;
  return result;
}

void Tensor.init(_:on:)()
{
  OUTLINED_FUNCTION_68_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v0;
  OUTLINED_FUNCTION_41_15(inited);
  OUTLINED_FUNCTION_57_5();
  sub_25BBECAE0();
  v2 = OUTLINED_FUNCTION_24_1();
  sub_25BAA6FBC(v2, v3, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_66_6();
}

void Tensor.init(_:on:)(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6600, &qword_25BCCB580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  OUTLINED_FUNCTION_41_15(inited);
  OUTLINED_FUNCTION_57_5();
  sub_25BC04800();
  v3 = OUTLINED_FUNCTION_24_1();
  sub_25BAA6FBC(v3, v4, &qword_25BCBC4B0);
  OUTLINED_FUNCTION_66_6();
}

void sub_25BC04800()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v40 = v3;
  if (*(v5 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_15:
    OUTLINED_FUNCTION_0_0();
    swift_once();
LABEL_14:
    v32[0] = v6;
    LOBYTE(v33) = 12;
    sub_25BAA4B48(v32, &v33, v37, sub_25BC090F0, v0);
    v13 = v12;

    sub_25BAA48D4(v37, v32, &qword_27FBB6730, &qword_25BCBC4B0);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_93();
    v14 = swift_allocObject();
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v33) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BAA5BB4(v16, v32, v17, v14, ObjectType, v13);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v18 = swift_allocObject();
    OUTLINED_FUNCTION_34_15(v18);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_77_4(v2);
    OUTLINED_FUNCTION_77_4(v37);
    OUTLINED_FUNCTION_77_4(v39);

    *v8 = v14;
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v10 = 1;
LABEL_8:
  if (v10 == *(v4 + 16))
  {
    v11 = OUTLINED_FUNCTION_102_4(v2, v39);
    v31 = &v31;
    MEMORY[0x28223BE20](v11);
    v0 = v30;
    v30[2] = &v40;
    OUTLINED_FUNCTION_102_4(v39, &v33);
    if (*(&v34 + 1))
    {
      v37[0] = v33;
      v37[1] = v34;
      v37[2] = v35;
      v38 = v36;
    }

    else
    {
      type metadata accessor for ContextManager();
      sub_25BAA49B8();
      sub_25BAA4A5C(v32);

      sub_25BAA48D4(v32, v37, &qword_27FBB6730, &qword_25BCBC4B0);
      sub_25BAA4AF4(v32);
      if (*(&v34 + 1))
      {
        sub_25BAA6FBC(&v33, &qword_27FBB6730, &qword_25BCBC4B0);
      }
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDA710);
  if (*(v6 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_0();
      if (!v9)
      {
        break;
      }

      OUTLINED_FUNCTION_222();
      if (v9)
      {
        goto LABEL_23;
      }
    }

    __break(1u);

    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v20, v21, v22);
    OUTLINED_FUNCTION_161_0();
    sub_25BAA6FBC(v23, v24, v25);

    __break(1u);
  }

  v19 = 1;
LABEL_23:
  v39[0] = v19;
  v26 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v26);

  v27 = OUTLINED_FUNCTION_51_1();
  MEMORY[0x25F876C90](v27);
  v39[0] = *(v4 + 16);
  v28 = OUTLINED_FUNCTION_107_5();
  MEMORY[0x25F876C90](v28);

  v29 = OUTLINED_FUNCTION_50_8();
  MEMORY[0x25F876C90](v29);
  OUTLINED_FUNCTION_122_0();
  OUTLINED_FUNCTION_10_5();
  OUTLINED_FUNCTION_25_0();
  __break(1u);
}

void Tensor.init<A>(_:on:)()
{
  sub_25BC04D2C();
}

{
  sub_25BC04D2C();
}

{
  sub_25BC04D2C();
}

uint64_t sub_25BC04C38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t *__return_ptr, uint64_t, uint64_t, _BYTE *)@<X2>, void *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v8 = OUTLINED_FUNCTION_5();
  *(v8 + 16) = xmmword_25BCBAE50;
  *(v8 + 32) = *(a1 + 16);
  sub_25BAA48D4(a2, v13, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BCB617C();
  a3(&v14, v8, a1, v13);
  OUTLINED_FUNCTION_86_4();
  sub_25BAA6FBC(v9, v10, v11);

  *a4 = v14;
  return result;
}

void sub_25BC04D2C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(v4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v17 = OUTLINED_FUNCTION_5();
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = sub_25BCB6ABC();
  v21 = v17;
  v18 = *(v12 + 16);
  OUTLINED_FUNCTION_161_0();
  v19();
  sub_25BAA48D4(v7, v20, &qword_27FBB6730, &qword_25BCBC4B0);
  v1(&v22, &v21, v16, v20, v5, v3);
  sub_25BAA6FBC(v7, &qword_27FBB6730, &qword_25BCBC4B0);
  (*(v12 + 8))(v9, v5);
  *v11 = v22;
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init(coercing:scalarType:on:)()
{
  OUTLINED_FUNCTION_68_6();
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v3 = OUTLINED_FUNCTION_5();
  *(v3 + 16) = xmmword_25BCBAE50;
  *(v3 + 32) = *(v0 + 16);
  v6 = v3;
  v5 = v2;
  OUTLINED_FUNCTION_24_17(v3);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v6, v0, &v5, v4, &v7);
  OUTLINED_FUNCTION_33_18();
  OUTLINED_FUNCTION_66_6();
}

uint64_t sub_25BC04F50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = (a2 - a1) / 4;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D849A8], a4, a5);
}

uint64_t sub_25BC04FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D84900], a4, a5);
}

void *sub_25BC05024(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = a2 - result;
    if (!result)
    {
      v4 = 0;
    }

    if (v4 < v3)
    {
      __break(1u);
    }

    else
    {
      return memcpy(result, (a3 + 32), *(a3 + 16));
    }
  }

  return result;
}

uint64_t sub_25BC05054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v6 = a2 - a1;
  }

  else
  {
    v6 = 0;
  }

  return sub_25BA9F5A8(a3, a1, v6, MEMORY[0x277D839B0], a4, a5);
}

uint64_t Tensor.init(repeating:shape:on:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, float a4@<S0>)
{
  v6 = *a1;
  sub_25BAA48D4(a2, &v29, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v30 + 1))
  {
    OUTLINED_FUNCTION_11_33(v32, v26, v27, v28[0], v28[1], v28[2], v28[3], v28[4], v28[5], v28[6], v28[7], v28[8], v28[9], v28[10], v28[11], v28[12], v28[13], v28[14], v28[15], v28[16], v29, v30, v31);
    v33 = v7;
  }

  else
  {
    type metadata accessor for ContextManager();
    v8 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v8, v9);

    sub_25BAA48D4(v28, v32, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v28);
    if (*(&v30 + 1))
    {
      sub_25BAA6FBC(&v29, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v28[0] = v6;
  OUTLINED_FUNCTION_56_7();
  sub_25BC73B74(v10, v11, v32, v12, a4);
  OUTLINED_FUNCTION_47_13();
  v13 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_73_6(v32, v14, v15);
  swift_getObjectType();
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_28_19();
  sub_25BC5FAD0(v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v22 = swift_allocObject();
  OUTLINED_FUNCTION_32_18(v22);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  v23 = OUTLINED_FUNCTION_9_23();
  sub_25BAA6FBC(v23, v24, &qword_25BCBC4B0);
  result = OUTLINED_FUNCTION_58_7(v32);
  *a3 = v13;
  return result;
}

uint64_t sub_25BC0527C(uint64_t result, uint64_t a2, int16x4_t a3)
{
  if (result)
  {
    v3 = a2 - result;
    if (a2 - result < -3)
    {
      __break(1u);
    }

    else if ((v3 + 3) >= 7)
    {
      v4 = 0;
      v5 = v3 / 4;
      v6 = vdupq_n_s64(v5 - 1);
      v7 = (v5 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      v8 = (result + 8);
      do
      {
        v9 = vdupq_n_s64(v4);
        v10 = vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25BCCB570)));
        if (vuzp1_s16(v10, a3).u8[0])
        {
          *(v8 - 2) = a3.i32[0];
        }

        if (vuzp1_s16(v10, a3).i8[2])
        {
          *(v8 - 1) = a3.i32[0];
        }

        if (vuzp1_s16(a3, vmovn_s64(vcgeq_u64(v6, vorrq_s8(v9, xmmword_25BCCB560)))).i32[1])
        {
          *v8 = a3.i32[0];
          v8[1] = a3.i32[0];
        }

        v4 += 4;
        v8 += 4;
      }

      while (v7 != v4);
    }
  }

  return result;
}

uint64_t Tensor.init(repeating:shape:on:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  sub_25BAA48D4(a2, &v27, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v28 + 1))
  {
    OUTLINED_FUNCTION_11_33(v30, v24, v25, v26[0], v26[1], v26[2], v26[3], v26[4], v26[5], v26[6], v26[7], v26[8], v26[9], v26[10], v26[11], v26[12], v26[13], v26[14], v26[15], v26[16], v27, v28, v29);
    v31 = v5;
  }

  else
  {
    type metadata accessor for ContextManager();
    v6 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v6, v7);

    sub_25BAA48D4(v26, v30, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v26);
    if (*(&v28 + 1))
    {
      sub_25BAA6FBC(&v27, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v26[0] = v4;
  OUTLINED_FUNCTION_56_7();
  sub_25BC73D24(v8, v9, v30, v10);
  OUTLINED_FUNCTION_47_13();
  v11 = type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_73_6(v30, v12, v13);
  swift_getObjectType();
  OUTLINED_FUNCTION_105_4();
  OUTLINED_FUNCTION_8_36();
  OUTLINED_FUNCTION_28_19();
  sub_25BC5FAD0(v14, v15, v16, v17, v18, v19);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_32_18(v20);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  v21 = OUTLINED_FUNCTION_9_23();
  sub_25BAA6FBC(v21, v22, &qword_25BCBC4B0);
  result = OUTLINED_FUNCTION_58_7(v30);
  *a3 = v11;
  return result;
}

uint64_t sub_25BC054EC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = a2 - result;
    if (a2 - result < -7)
    {
      __break(1u);
    }

    else if ((v3 + 7) >= 0xF)
    {
      v4 = 0;
      v5 = v3 / 8;
      v6 = (v3 / 8 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = (result + 8);
      do
      {
        v9 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(vdupq_n_s64(v4), xmmword_25BCCB570)));
        if (v9.i8[0])
        {
          *(v8 - 1) = a3;
        }

        if (v9.i8[4])
        {
          *v8 = a3;
        }

        v4 += 2;
        v8 += 2;
      }

      while (v6 != v4);
    }
  }

  return result;
}

void Tensor.init(ioSurfaceNoCopy:shape:scalarType:deallocator:)(__IOSurface *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v11 = *a2;
  v12 = *a3;
  AllocSize = IOSurfaceGetAllocSize(a1);
  if (*(v11 + 16))
  {
    while (1)
    {
      OUTLINED_FUNCTION_92_0();
      if (!v16)
      {
        break;
      }

      if (v15 == 1)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_14;
  }

  v14 = 1;
LABEL_7:
  if ((v12 - 1) > 0xA)
  {
    v17 = 1;
  }

  else
  {
    v17 = qword_25BCCB678[(v12 - 1)];
  }

  if ((v14 * v17) >> 64 != (v14 * v17) >> 63)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (AllocSize < v14 * v17)
  {
LABEL_15:
    OUTLINED_FUNCTION_7_0();
    goto LABEL_17;
  }

  if (!IOSurfaceGetPlaneCount(a1))
  {
    *&v25[0] = v11;
    v27[0] = v12;
    type metadata accessor for IOSurfaceTensorStorage();
    swift_allocObject();
    sub_25BB99A24(v25, v27, a1, a4, a5);
    type metadata accessor for TensorRepresentation();
    memset(v25, 0, sizeof(v25));
    v26 = 0;
    OUTLINED_FUNCTION_93();
    v18 = swift_allocObject();
    v19 = a1;
    v20 = OUTLINED_FUNCTION_9_23();
    sub_25BA9D8C4(v20);

    v27[0] = 1;
    OUTLINED_FUNCTION_149();
    sub_25BBF1F60(v21, v25, v22, v18);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v23 = swift_allocObject();
    OUTLINED_FUNCTION_32_18(v23);
    sub_25BAA6EB0();

    v24 = OUTLINED_FUNCTION_9_23();
    sub_25BA9D148(v24);

    *a6 = v6;
    return;
  }

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_0();
LABEL_17:
  OUTLINED_FUNCTION_25_0();
  __break(1u);
}

void Tensor.withUnsafeIOSurface<A>(_:)(void (*a1)(id))
{
  v4 = *(*v1 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v5 = sub_25BA928B4();
  [v5 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v6, v7, v8, v9);
  if (v2)
  {
    [*(v4 + 224) unlock];

    __break(1u);
  }

  else
  {
    [*(v4 + 224) unlock];
    OUTLINED_FUNCTION_10();

    if (object_getClass(v19) == _TtC14NeuralNetworks22IOSurfaceTensorStorage && v19)
    {
      v10 = v19[2];
      swift_unknownObjectRelease();
      a1(v10);
      OUTLINED_FUNCTION_83_6();
      __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    }

    else
    {
      swift_unknownObjectRelease();
      OUTLINED_FUNCTION_83_6();
      __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    }
  }
}

void Tensor.withUnsafeUnsafeMutableIOSurface<A>(_:)(void (*a1)(id)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = *(v13 + 16);
    swift_retain_n();
    v15 = sub_25BA928B4();
    [v15 lock];

    OUTLINED_FUNCTION_6_19();
    sub_25BA92920(v16, v17, v18, v19);
    if (v5)
    {
      [*(v14 + 224) unlock];
      goto LABEL_13;
    }

    [*(v14 + 224) unlock];

    if (qword_28154F2C8 != -1)
    {
      OUTLINED_FUNCTION_0_0();
      swift_once();
    }

    v20 = qword_281557400;
    v21 = *(v13 + 16);
    v50 = *(v21 + 152);
    v49 = *(v21 + 160);
    OUTLINED_FUNCTION_99_5(v21, v38, a1, a4, a3, a2);
    swift_unknownObjectRetain();
    sub_25BCB617C();
    sub_25BC72A84(&v50, &v49, v48, v20, v48[0], v48[1]);
    v23 = v22;
    v6 = 0;
    sub_25BAA6FBC(v48, &qword_27FBB6730, &qword_25BCBC4B0);

    v24 = type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_99_5(*(v13 + 16), v39, v40, v42, v44, v47);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v50) = 1;
    OUTLINED_FUNCTION_149();
    sub_25BC5FAD0(v26, v48, v27, v24, ObjectType, v23);
    OUTLINED_FUNCTION_9_19();
    type metadata accessor for TensorHandle();
    OUTLINED_FUNCTION_22();
    v28 = swift_allocObject();
    OUTLINED_FUNCTION_34_15(v28);
    sub_25BAA6EB0();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v29 = *v7;

    *v7 = v13;
    a4 = v43;
    a3 = v45;
    a1 = v41;
  }

  v30 = *(v13 + 16);
  OUTLINED_FUNCTION_10();
  swift_retain_n();
  v31 = sub_25BA928B4();
  [v31 lock];

  OUTLINED_FUNCTION_6_19();
  sub_25BA92920(v32, v33, v34, v35);
  if (v6)
  {
    [*(v30 + 224) unlock];
LABEL_13:

    __break(1u);
    return;
  }

  [*(v30 + 224) unlock];
  OUTLINED_FUNCTION_10();

  v36 = v48[0];
  if (object_getClass(v48[0]) == _TtC14NeuralNetworks22IOSurfaceTensorStorage && v36)
  {
    v37 = v36[2];
    swift_unknownObjectRelease();
    a1(v37);
    __swift_storeEnumTagSinglePayload(a4, 0, 1, a3);
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  }
}

void sub_25BC05C00(void *__dst, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v6 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v7 = a3;
        goto LABEL_7;
      }

      __break(1u);
      goto LABEL_10;
    case 2uLL:
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
LABEL_7:
      sub_25BC08BF4(v7, v6, a4 & 0x3FFFFFFFFFFFFFFFLL, __dst);
      if (v4)
      {
LABEL_10:

        __break(1u);
      }

      break;
    case 3uLL:
      return;
    default:
      __src = a3;
      v9 = a4;
      v10 = BYTE2(a4);
      v11 = BYTE3(a4);
      v12 = BYTE4(a4);
      v13 = BYTE5(a4);
      if (__dst)
      {
        memcpy(__dst, &__src, BYTE6(a4));
      }

      break;
  }
}

uint64_t Tensor.init(contentsOfFile:shape:scalarType:on:)@<X0>(uint64_t *a1@<X2>, unsigned __int8 *a2@<X3>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v30 = sub_25BCB598C();
  v8 = OUTLINED_FUNCTION_2(v30);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = *a1;
  v17 = *a2;
  sub_25BCB591C();

  sub_25BAA48D4(a3, v34, &qword_27FBB6730, &qword_25BCBC4B0);
  v18 = sub_25BCB59AC();
  if (v4)
  {

    OUTLINED_FUNCTION_50_10();
    sub_25BAA6FBC(v20, v21, v22);
    OUTLINED_FUNCTION_50_10();
    sub_25BAA6FBC(v23, v24, v25);
    return (*(v10 + 8))(v15, v30);
  }

  else
  {
    v27 = v18;
    v28 = v19;
    v33 = v16;
    v32 = v17;
    sub_25BAA48D4(v34, v31, &qword_27FBB6730, &qword_25BCBC4B0);
    Tensor.init(shape:data:scalarType:on:)(&v33, v27, v28, &v32, v31, &v35);
    sub_25BAA6FBC(a3, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA6FBC(v34, &qword_27FBB6730, &qword_25BCBC4B0);
    result = (*(v10 + 8))(v15, v30);
    *a4 = v35;
  }

  return result;
}

uint64_t Tensor.init(contentsOf:shape:scalarType:on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a2;
  v10 = *a3;
  sub_25BCB59AC();
  if (v5)
  {

    sub_25BAA6FBC(a4, &qword_27FBB6730, &qword_25BCBC4B0);
    v11 = sub_25BCB598C();
    OUTLINED_FUNCTION_9_3(v11);
    return (*(v12 + 8))(a1);
  }

  else
  {
    v23 = v9;
    v22[55] = v10;
    sub_25BAA48D4(a4, v22, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_86_4();
    Tensor.init(shape:data:scalarType:on:)(v14, v15, v16, v17, v18, v19);
    sub_25BAA6FBC(a4, &qword_27FBB6730, &qword_25BCBC4B0);
    v20 = sub_25BCB598C();
    OUTLINED_FUNCTION_9_3(v20);
    result = (*(v21 + 8))(a1);
    *a5 = v24;
  }

  return result;
}

uint64_t Tensor.init(floatLiteral:)@<X0>(void *a1@<X8>, float a2@<S0>)
{
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  sub_25BAA48D4(v8, v6, &qword_27FBB6730, &qword_25BCBC4B0);
  sub_25BACC1B0(MEMORY[0x277D84F90], inited, v6, &v7);
  result = sub_25BAA6FBC(v8, &qword_27FBB6730, &qword_25BCBC4B0);
  *a1 = v7;
  return result;
}

uint64_t Tensor.init(integerLiteral:)@<X0>(int a1@<W0>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a1;
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  result = sub_25BB2F098(MEMORY[0x277D84F90], inited, v6, &v8);
  *a2 = v8;
  return result;
}

uint64_t Tensor.init(BOOLeanLiteral:)@<X0>(uint64_t *a1@<X8>)
{
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  sub_25BAA48D4(v23, &v17, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v18 + 1))
  {
    v21[0] = v17;
    v21[1] = v18;
    v21[2] = v19;
    v22 = v20;
  }

  else
  {
    type metadata accessor for ContextManager();
    v2 = sub_25BAA49B8();
    OUTLINED_FUNCTION_60_5(v2, v3);

    sub_25BAA48D4(v16, v21, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v16);
    if (*(&v18 + 1))
    {
      sub_25BAA6FBC(&v17, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v16[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_56_7();
  sub_25BC73464(v4, v5, v21, v6);
  v8 = v7;
  sub_25BAA48D4(v21, v16, &qword_27FBB6730, &qword_25BCBC4B0);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  v9 = swift_allocObject();
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  OUTLINED_FUNCTION_8_36();
  sub_25BAA5BB4(v11, v12, v13, v9, ObjectType, v8);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v14 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v14);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  sub_25BAA6FBC(v21, &qword_27FBB6730, &qword_25BCBC4B0);
  result = sub_25BAA6FBC(v23, &qword_27FBB6730, &qword_25BCBC4B0);
  *a1 = v14;
  return result;
}

void Tensor.init(arrayLiteral:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    Tensor.init(stacking:alongAxis:scalarType:)();
    *a2 = v3;
  }

  else
  {
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_7_0();
    OUTLINED_FUNCTION_52_9();
    __break(1u);
  }
}

void sub_25BC0649C(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
    if (v2)
    {
      if (v2 < 1)
      {
        __break(1u);
      }

      else
      {
        bzero(a1, v2);
      }
    }
  }
}

uint64_t Tensor.init(identity:scalarType:on:)@<X0>(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(*a1 + 16);
  if ((sub_25BAB74D0(v8, 2, 0, 2) & 1) == 0)
  {
    v13 = v8;
    v14 = xmmword_25BCC8F30;
    v15 = 0;
    v16 = xmmword_25BCBC6A0;
    v17 = 2;
    v18 = 7;
    OUTLINED_FUNCTION_60_6();
    sub_25BADDD28();
  }

  v12 = v6;
  v11 = v7;
  OUTLINED_FUNCTION_46_13(a3, &v13);
  Tensor.init(ones:scalarType:on:)(&v12, &v11, &v13, &v10);
  Tensor.bandPart(lowerBandCount:upperBandCount:)(0, 0, &v13);
  OUTLINED_FUNCTION_44_11(a3);

  *a4 = v13;
  return result;
}

uint64_t Tensor.init(oneHotAtIndex:depth:onValue:offValue:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_40_15();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v5;
  OUTLINED_FUNCTION_46_13(a3, v11);
  OUTLINED_FUNCTION_81_6();
  sub_25BBECAE0();
  OUTLINED_FUNCTION_46_13(v11, v10);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_44_11(v11);
  v10[0] = v10[7];
  Tensor.squeezingShape(at:)();
  OUTLINED_FUNCTION_44_11(a3);

  *v7 = v11[0];
  return result;
}

{
  OUTLINED_FUNCTION_40_15();
  v5 = v4;
  v7 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v5;
  OUTLINED_FUNCTION_46_13(a3, v12);
  OUTLINED_FUNCTION_81_6();
  sub_25BB2F098(&unk_286D454D8, inited, v11, &v10);
  OUTLINED_FUNCTION_46_13(v12, v11);
  OUTLINED_FUNCTION_63_4();
  OUTLINED_FUNCTION_44_11(v12);
  v11[0] = v11[7];
  Tensor.squeezingShape(at:)();
  OUTLINED_FUNCTION_44_11(a3);

  *v7 = v12[0];
  return result;
}

void Tensor.init<A>(oneHotAtIndices:depth:onValue:offValue:on:)()
{
  sub_25BC06820();
}

{
  sub_25BC06820();
}

void sub_25BC06820()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_40_15();
  OUTLINED_FUNCTION_68_6();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v17 = OUTLINED_FUNCTION_5();
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = sub_25BCB6ABC();
  v24 = v17;
  (*(v11 + 16))(v16, v0, v7);
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v3(&v21, &v24, v16, v22, v7, v5);
  sub_25BAA48D4(v9, v22, &qword_27FBB6730, &qword_25BCBC4B0);
  Tensor.init(oneHotAtIndices:depth:onValue:offValue:on:)();
  OUTLINED_FUNCTION_86_4();
  sub_25BAA6FBC(v18, v19, v20);
  (*(v11 + 8))(v0, v7);
  *v1 = v24;
  OUTLINED_FUNCTION_37_0();
}

void Tensor.init(rangeFrom:to:stride:on:)(float a1, float a2, float a3)
{
  if (a3 == 0.0)
  {
    __break(1u);
  }

  else
  {
    sub_25BC08DFC(a1, a2, a3);
    v4 = OUTLINED_FUNCTION_24_17(v3);
    OUTLINED_FUNCTION_96_3(v4);
    OUTLINED_FUNCTION_33_18();
  }
}

uint64_t Tensor.init(rangeFrom:to:stride:on:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = sub_25BC086B0(result | (a2 << 32), a3);
    v4 = OUTLINED_FUNCTION_24_17(v3);
    OUTLINED_FUNCTION_96_3(v4);
    return OUTLINED_FUNCTION_33_18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Tensor.init(linearSpaceFrom:through:count:on:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float a4@<S0>, float a5@<S1>)
{
  if (a1 < 2)
  {
    OUTLINED_FUNCTION_10_5();
    result = OUTLINED_FUNCTION_25_0();
    __break(1u);
  }

  else
  {
    v9 = (a5 - a4) / (a1 - 1);
    v17[0] = MEMORY[0x277D84F90];
    sub_25BB00CD0();
    v10 = 0;
    v11 = v17[0];
    v12 = *(v17[0] + 16);
    do
    {
      v17[0] = v11;
      if (v12 >= *(v11 + 24) >> 1)
      {
        sub_25BB00CD0();
        v11 = v17[0];
      }

      *(v11 + 16) = v12 + 1;
      *(v11 + 4 * v12++ + 32) = (v9 * v10++) + a4;
    }

    while (a1 != v10);
    OUTLINED_FUNCTION_46_13(a2, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v13 = OUTLINED_FUNCTION_5();
    *(v13 + 16) = xmmword_25BCBAE50;
    *(v13 + 32) = *(v11 + 16);
    OUTLINED_FUNCTION_46_13(v17, v15);
    sub_25BACC1B0(v13, v11, v15, &v16);
    OUTLINED_FUNCTION_44_11(a2);
    result = OUTLINED_FUNCTION_44_11(v17);
    *a3 = v16;
  }

  return result;
}

void Tensor.init(randomUniform:in:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  OUTLINED_FUNCTION_40_15();
  v11 = v10;
  v48 = v12;
  v47 = sub_25BCB783C();
  v13 = OUTLINED_FUNCTION_2(v47);
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = *v11;
  v46 = *v5;
  sub_25BAA48D4(v3, &v63, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v64[0] + 1))
  {
    v61[0] = v63;
    v61[1] = v64[0];
    v61[2] = v64[1];
    v62 = v65;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_75_5();

    sub_25BAA48D4(v56, v61, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v56);
    if (*(&v64[0] + 1))
    {
      sub_25BAA6FBC(&v63, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  v7 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35();
  v11 = v7[2];
  v22 = v11[2];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[2] = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v22)
  {
    while (v22 <= v11[2])
    {
      v9 = sub_25BC32FA0();
      v7[2] = v11;
      swift_endAccess();

LABEL_10:
      v24 = sub_25BBE5CAC(v9);
      v54 = v25;
      OUTLINED_FUNCTION_64_7(v24, v26, *&v25, v27);
      v22 = *(v55 + 16);

      v51[0] = v21;
      if (v1 <= v0)
      {
        v56[3] = MEMORY[0x277D83A90];
        v56[4] = &protocol witness table for Float;
        *v56 = v1;
        v58 = MEMORY[0x277D83A90];
        v59 = &protocol witness table for Float;
        v57 = v0;
        v60 = 2562;
        v53 = 0;
        *&v63 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift";
        *(&v63 + 1) = 110;
        LOBYTE(v64[0]) = 2;
        *(v64 + 8) = xmmword_25BCBC690;
        *(&v64[1] + 1) = "init(id:state:shape:distribution:creationSite:)";
        v65 = 47;
        v66 = 2;
        type metadata accessor for RandomOperation();
        v28 = OUTLINED_FUNCTION_201();
        OUTLINED_FUNCTION_16_34(v28, v29, v30, v31, v51, v56, &v63);
        sub_25BB18AA4();
        sub_25BAA48D4(v61, v51, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v52)
        {
          OUTLINED_FUNCTION_54_9();
          sub_25BABEF40(v56, v49);
          OUTLINED_FUNCTION_97_4();
          sub_25BAA6FBC(v49, &qword_27FBB6730, &qword_25BCBC4B0);
          sub_25BABF0A8(v56);
        }

        else
        {
          sub_25BAA6FBC(v51, &qword_27FBB6730, &qword_25BCBC4B0);
          OUTLINED_FUNCTION_89_6();
        }

        type metadata accessor for ContextManager();
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v56);
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v56);
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_93();
        swift_allocObject();

        v33 = OUTLINED_FUNCTION_36_14(v32);
        type metadata accessor for TensorHandle();
        OUTLINED_FUNCTION_22();
        v34 = swift_allocObject();
        *(v34 + 16) = v33;

        sub_25BAA6EB0();
        sub_25BAA48D4(v61, v51, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v52)
        {
          OUTLINED_FUNCTION_54_9();
          v51[0] = v34;
          v35 = Tensor.scalarType.getter();
          sub_25BBABD24(v35, v36);
          OUTLINED_FUNCTION_186();
          if (!v37)
          {
            OUTLINED_FUNCTION_84_4();
            OUTLINED_FUNCTION_55(v56, v38);
          }

          v51[0] = v34;
          Tensor.place(on:)(v56);
          sub_25BABF0A8(v56);
          v34 = v51[0];
        }

        else
        {
          sub_25BAA6FBC(v51, &qword_27FBB6730, &qword_25BCBC4B0);
          v51[0] = v34;
        }

        v49[0] = v34;
        v50 = v46;
        (*(v15 + 104))(v20, *MEMORY[0x277D84660], v47);
        OUTLINED_FUNCTION_94_5();

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v39, v40, v41);
        (*(v15 + 8))(v20, v47);

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v42, v43, v44);
        *v48 = v56[0];
        OUTLINED_FUNCTION_37_0();
        return;
      }

      __break(1u);
LABEL_21:
      sub_25BBF1454(v11);
      v11 = v45;
      v7[2] = v45;
      if (!v22)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v51 = v12;
  v13 = sub_25BCB783C();
  v14 = OUTLINED_FUNCTION_2(v13);
  v49 = v15;
  v50 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = *v11;
  v22 = *v3;
  sub_25BAA48D4(v1, &v66, &qword_27FBB6730, &qword_25BCBC4B0);
  if (*(&v67[0] + 1))
  {
    v64[0] = v66;
    v64[1] = v67[0];
    v64[2] = v67[1];
    v65 = v68;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_75_5();

    sub_25BAA48D4(v59, v64, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v59);
    if (*(&v67[0] + 1))
    {
      sub_25BAA6FBC(&v66, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

  v1 = v22;
  type metadata accessor for ContextManager();
  v23 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35();
  v22 = v23[2];
  v24 = *(v22 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[2] = v22;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v24)
  {
    while (v24 <= *(v22 + 16))
    {
      v7 = sub_25BC32FA0();
      v23[2] = v22;
      swift_endAccess();

      v22 = v1;
LABEL_10:
      v23 = HIDWORD(v9);
      v26 = sub_25BBE5CAC(v7);
      v57 = v27;
      OUTLINED_FUNCTION_64_7(v26, v28, *&v27, v29);
      v24 = *(v58 + 16);

      v54[0] = v21;
      if (SHIDWORD(v9) >= v9)
      {
        v59[3] = MEMORY[0x277D849A8];
        v59[4] = &protocol witness table for Int32;
        LODWORD(v59[0]) = v9;
        v61 = MEMORY[0x277D849A8];
        v62 = &protocol witness table for Int32;
        v60 = HIDWORD(v9);
        v63 = 514;
        v56 = 0;
        OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
        *(v67 + 8) = xmmword_25BCBC690;
        *(&v67[1] + 1) = "init(id:state:shape:distribution:creationSite:)";
        v68 = 47;
        v69 = v30;
        type metadata accessor for RandomOperation();
        v31 = OUTLINED_FUNCTION_201();
        OUTLINED_FUNCTION_16_34(v31, v32, v33, v34, v54, v59, &v66);
        sub_25BB18AA4();
        sub_25BAA48D4(v64, v54, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v55)
        {
          OUTLINED_FUNCTION_53_10();
          sub_25BABEF40(v59, v52);
          OUTLINED_FUNCTION_97_4();
          sub_25BAA6FBC(v52, &qword_27FBB6730, &qword_25BCBC4B0);
          sub_25BABF0A8(v59);
        }

        else
        {
          sub_25BAA6FBC(v54, &qword_27FBB6730, &qword_25BCBC4B0);
          OUTLINED_FUNCTION_89_6();
        }

        type metadata accessor for ContextManager();
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v59);
        sub_25BAA49B8();
        OUTLINED_FUNCTION_75_5();

        sub_25BAA4AF4(v59);
        type metadata accessor for TensorRepresentation();
        OUTLINED_FUNCTION_93();
        swift_allocObject();

        v36 = OUTLINED_FUNCTION_36_14(v35);
        type metadata accessor for TensorHandle();
        OUTLINED_FUNCTION_22();
        v37 = swift_allocObject();
        *(v37 + 16) = v36;

        sub_25BAA6EB0();
        sub_25BAA48D4(v64, v54, &qword_27FBB6730, &qword_25BCBC4B0);
        if (v55)
        {
          OUTLINED_FUNCTION_53_10();
          v54[0] = v37;
          v38 = Tensor.scalarType.getter();
          sub_25BBABD24(v38, v39);
          OUTLINED_FUNCTION_186();
          if (!v40)
          {
            OUTLINED_FUNCTION_84_4();
            OUTLINED_FUNCTION_55(v59, v41);
          }

          v54[0] = v37;
          Tensor.place(on:)(v59);
          sub_25BABF0A8(v59);
          v37 = v54[0];
        }

        else
        {
          sub_25BAA6FBC(v54, &qword_27FBB6730, &qword_25BCBC4B0);
          v54[0] = v37;
        }

        v52[0] = v37;
        v53 = v22;
        (*(v49 + 104))(v20, *MEMORY[0x277D84660], v50);
        OUTLINED_FUNCTION_94_5();

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v42, v43, v44);
        (*(v49 + 8))(v20, v50);

        OUTLINED_FUNCTION_50_10();
        sub_25BAA6FBC(v45, v46, v47);
        *v51 = v59[0];
        OUTLINED_FUNCTION_10_16();
        return;
      }

      __break(1u);
LABEL_21:
      sub_25BBF1454(v22);
      v22 = v48;
      v23[2] = v48;
      if (!v24)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  __break(1u);
}

void Tensor.init(randomNormal:mean:standardDeviation:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_21(v6, v7, v8, v9);
  sub_25BAA48D4(v10, &v144, &qword_27FBB6730, &qword_25BCBC4B0);
  if (v145)
  {
    OUTLINED_FUNCTION_49_13();
  }

  else
  {
    type metadata accessor for ContextManager();
    v11 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v11, v12, v13, v14, v15, v16, v17, v18, v114, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142[0]);

    sub_25BAA48D4(v142, &v143, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v142);
    if (v145)
    {
      sub_25BAA6FBC(&v144, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = type metadata accessor for ContextManager();
  v20 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_61_7();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[2] = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v3);
  v3 = v113;
  v20[2] = v113;
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v19 > *(v3 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v1 = sub_25BC32FA0();
  v20[2] = v3;
  swift_endAccess();

LABEL_10:
  v22 = sub_25BBE5CAC(v1);
  OUTLINED_FUNCTION_48_12(v30, v22, v23, v24, v25, v26, v27, v28, v29, v114, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141);
  v31 = *(v141 + 16);

  *&v128 = v5;
  OUTLINED_FUNCTION_82_6();
  v142[120] = 0;
  v142[121] = v4;
  HIBYTE(v132) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v32, xmmword_25BCBC690);
  v33 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_16_34(v33, v34, v35, v36, &v128, v142, &v144);
  v37 = sub_25BB18AA4();
  v43 = OUTLINED_FUNCTION_100_4(v37, v38, &qword_27FBB6730, &qword_25BCBC4B0, v39, v40, v41, v42, v115, v121, v122, v123);
  if (*(&v129 + 1))
  {
    OUTLINED_FUNCTION_3_41(v43, v44, v45, v46, v47, v48, v49, v50, v116, v121, v122, v123, v124, v125, v126, v127, v128, v129, v51);
    v52 = sub_25BABEF40(v142, &v121);
    OUTLINED_FUNCTION_30_3(v52);
    sub_25BAA6FBC(&v121, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BABF0A8(v142);
  }

  else
  {
    sub_25BAA6FBC(&v128, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v53 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v53, v54, v55, v56, v57, v58, v59, v60, v116, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142[0]);

  sub_25BAA4AF4(v142);
  v61 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v61, v62, v63, v64, v65, v66, v67, v68, v117, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142[0]);

  sub_25BAA4AF4(v142);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();

  v77 = OUTLINED_FUNCTION_8(v69, v70, v71, v72, v73, v74, v75, v76, v118, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, *(&v129 + 1), v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142[0]);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v78 = swift_allocObject();
  *(v78 + 16) = v77;

  sub_25BAA6EB0();
  v85 = OUTLINED_FUNCTION_100_4(v79, v80, &qword_27FBB6730, &qword_25BCBC4B0, v81, v82, v83, v84, v119, v121, v122, v123);
  if (*(&v129 + 1))
  {
    OUTLINED_FUNCTION_3_41(v85, v86, v87, v88, v89, v90, v91, v92, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v93);
    *&v128 = v78;
    v94 = Tensor.scalarType.getter();
    sub_25BBABD24(v94, v95);
    OUTLINED_FUNCTION_186();
    if (!v96)
    {
      OUTLINED_FUNCTION_84_4();
      OUTLINED_FUNCTION_55(v142, v97);
    }

    *&v128 = v78;
    Tensor.place(on:)(v142);

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v98, v99, v100);
    sub_25BABF0A8(v142);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v101, v102, v103);
    v78 = v128;
  }

  else
  {

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v104, v105, v106);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v107, v108, v109);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v110, v111, v112);
  }

  *v0 = v78;
  OUTLINED_FUNCTION_37_0();
}

void Tensor.init(randomTruncatedNormal:mean:standardDeviation:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_38_2();
  OUTLINED_FUNCTION_26_21(v6, v7, v8, v9);
  sub_25BAA48D4(v10, &v151, &qword_27FBB6730, &qword_25BCBC4B0);
  if (v152)
  {
    OUTLINED_FUNCTION_49_13();
  }

  else
  {
    type metadata accessor for ContextManager();
    v11 = sub_25BAA49B8();
    OUTLINED_FUNCTION_36_0(v11, v12, v13, v14, v15, v16, v17, v18, v116, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144[0]);

    sub_25BAA48D4(v144, &v150, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BAA4AF4(v144);
    if (v152)
    {
      sub_25BAA6FBC(&v151, &qword_27FBB6730, &qword_25BCBC4B0);
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_10;
  }

  v19 = type metadata accessor for ContextManager();
  v20 = sub_25BAA49B8();
  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_61_7();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[2] = v3;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v19)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v3);
  v3 = v115;
  v20[2] = v115;
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v19 > *(v3 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v1 = sub_25BC32FA0();
  v20[2] = v3;
  swift_endAccess();

LABEL_10:
  v22 = sub_25BBE5CAC(v1);
  OUTLINED_FUNCTION_48_12(v30, v22, v23, v24, v25, v26, v27, v28, v29, v116, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143);
  v31 = *(v143 + 16);

  *&v130 = v5;
  OUTLINED_FUNCTION_82_6();
  v146 = v32;
  v147 = v33;
  LODWORD(v145) = 0x40000000;
  v148 = 1;
  v149 = v4;
  HIBYTE(v134) = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  OUTLINED_FUNCTION_14_3(v34, xmmword_25BCBC690);
  v35 = OUTLINED_FUNCTION_201();
  OUTLINED_FUNCTION_16_34(v35, v36, v37, v38, &v130, v144, &v151);
  v39 = sub_25BB18AA4();
  v45 = OUTLINED_FUNCTION_100_4(v39, v40, &qword_27FBB6730, &qword_25BCBC4B0, v41, v42, v43, v44, v117, v123, v124, v125);
  if (*(&v131 + 1))
  {
    OUTLINED_FUNCTION_3_41(v45, v46, v47, v48, v49, v50, v51, v52, v118, v123, v124, v125, v126, v127, v128, v129, v130, v131, v53);
    v54 = sub_25BABEF40(v144, &v123);
    OUTLINED_FUNCTION_30_3(v54);
    sub_25BAA6FBC(&v123, &qword_27FBB6730, &qword_25BCBC4B0);
    sub_25BABF0A8(v144);
  }

  else
  {
    sub_25BAA6FBC(&v130, &qword_27FBB6730, &qword_25BCBC4B0);
    OUTLINED_FUNCTION_27_1();
  }

  type metadata accessor for ContextManager();
  v55 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v55, v56, v57, v58, v59, v60, v61, v62, v118, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144[0]);

  sub_25BAA4AF4(v144);
  v63 = sub_25BAA49B8();
  OUTLINED_FUNCTION_36_0(v63, v64, v65, v66, v67, v68, v69, v70, v119, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144[0]);

  sub_25BAA4AF4(v144);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();

  v79 = OUTLINED_FUNCTION_8(v71, v72, v73, v74, v75, v76, v77, v78, v120, v123, v124, v125, v126, v127, v128, v129, v130, *(&v130 + 1), v131, *(&v131 + 1), v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144[0]);
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v80 = swift_allocObject();
  *(v80 + 16) = v79;

  sub_25BAA6EB0();
  v87 = OUTLINED_FUNCTION_100_4(v81, v82, &qword_27FBB6730, &qword_25BCBC4B0, v83, v84, v85, v86, v121, v123, v124, v125);
  if (*(&v131 + 1))
  {
    OUTLINED_FUNCTION_3_41(v87, v88, v89, v90, v91, v92, v93, v94, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v95);
    *&v130 = v80;
    v96 = Tensor.scalarType.getter();
    sub_25BBABD24(v96, v97);
    OUTLINED_FUNCTION_186();
    if (!v98)
    {
      OUTLINED_FUNCTION_84_4();
      OUTLINED_FUNCTION_55(v144, v99);
    }

    *&v130 = v80;
    Tensor.place(on:)(v144);

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v100, v101, v102);
    sub_25BABF0A8(v144);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v103, v104, v105);
    v80 = v130;
  }

  else
  {

    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v106, v107, v108);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v109, v110, v111);
    OUTLINED_FUNCTION_18_29();
    sub_25BAA6FBC(v112, v113, v114);
  }

  *v0 = v80;
  OUTLINED_FUNCTION_37_0();
}

uint64_t sub_25BC07EE0(uint64_t a1)
{
  OUTLINED_FUNCTION_35();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  result = sub_25BCB617C();
  v35 = 0;
  v5 = 0;
  v37 = MEMORY[0x277D84F90];
  v33 = (MEMORY[0x277D84F90] + 32);
  v6 = &off_279972000;
  while (2)
  {
    if (v5 < v3)
    {
      v7 = v2 + 32 + 8 * v5;
      while (1)
      {
        if (v5 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_40;
        }

        OUTLINED_FUNCTION_46_13(v7, v42);
        Strong = swift_weakLoadStrong();
        if (Strong)
        {
          break;
        }

        result = OUTLINED_FUNCTION_44_11(v42);
LABEL_17:
        ++v5;
        v7 += 8;
        if (v5 >= v3)
        {
          goto LABEL_35;
        }
      }

      v9 = Strong;
      if (*(Strong + 32) > 0)
      {

        v10 = sub_25BA928B4();
        [v10 v6[150]];

        OUTLINED_FUNCTION_35();
        sub_25BA9323C(v9 + 40, v39);
        if (!v41)
        {
          sub_25BA9BE3C(v39, v38);
          v11 = v6;
          v12 = v38[1];
          ObjectType = swift_getObjectType();
          v14 = *(v12 + 56);
          v15 = v12;
          v6 = v11;
          v16 = v14(ObjectType, v15);
          sub_25BA977E0(v38);
          [*(v9 + 224) unlock];

          result = OUTLINED_FUNCTION_44_11(v42);
          if ((v16 & 1) == 0)
          {
            v17 = v35;
            if (!v35)
            {
              if ((v37[3] >> 1) + 0x4000000000000000 < 0)
              {
                goto LABEL_42;
              }

              OUTLINED_FUNCTION_90_3();
              if (v20 ^ v21 | v19)
              {
                v22 = 1;
              }

              else
              {
                v22 = v18;
              }

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
              v23 = OUTLINED_FUNCTION_77();
              v24 = (_swift_stdlib_malloc_size_0(v23) - 32) / 8;
              v23[2] = v22;
              v23[3] = (2 * v24) | 1;
              v25 = (v23 + 4);
              v26 = v37[3];
              v27 = v26 >> 1;
              if (v37[2])
              {
                if (v23 != v37 || v25 >= &v37[v27 + 4])
                {
                  v34 = v37[3];
                  v36 = v24;
                  memmove(v23 + 4, v37 + 4, 8 * v27);
                  v25 = (v23 + 4);
                  v26 = v34;
                  v24 = v36;
                }

                v37[2] = 0;
              }

              v33 = (v25 + 8 * v27);
              v17 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - (v26 >> 1);

              v37 = v23;
              v6 = v11;
            }

            v21 = __OFSUB__(v17, 1);
            v29 = v17 - 1;
            if (!v21)
            {
              ++v5;
              *v33++ = v9;
              v35 = v29;
              continue;
            }

LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            return result;
          }

          goto LABEL_16;
        }

        if (v41 == 1)
        {

          swift_unknownObjectRelease();
          sub_25BA977E0(&v40);
        }

        else
        {
          sub_25BA9778C(v39);
        }

        [*(v9 + 224) unlock];
      }

      OUTLINED_FUNCTION_44_11(v42);
LABEL_16:

      goto LABEL_17;
    }

    break;
  }

LABEL_35:

  result = v37;
  v30 = v37[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v21 = __OFSUB__(v31, v35);
    v32 = v31 - v35;
    if (v21)
    {
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v37[2] = v32;
  }

  return result;
}

uint64_t sub_25BC08208()
{
  v0 = sub_25BB70FE0();
  v2 = v1;
  result = sub_25BA9BEA0(v0);
  v4 = result;
  v5 = 0;
  v6 = v0 & 0xC000000000000001;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  v9 = v0 & 0xFFFFFFFFFFFFFF8;
  v27 = v0 & 0xFFFFFFFFFFFFFF8;
  v28 = v0;
  while (1)
  {
    if (v4 == v2)
    {

      v24 = v7[3];
      if (v24 >= 2)
      {
        v25 = v24 >> 1;
        v16 = __OFSUB__(v25, v5);
        v26 = v25 - v5;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v26;
      }

      return v7;
    }

    if (v6)
    {
      result = MEMORY[0x25F8779B0](v2, v0);
      v10 = result;
      goto LABEL_7;
    }

    if ((v2 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v2 >= *(v9 + 16))
    {
      goto LABEL_31;
    }

    v10 = *(v0 + 8 * v2 + 32);

LABEL_7:
    if (__OFADD__(v2, 1))
    {
      goto LABEL_30;
    }

    if (!v5)
    {
      if ((v7[3] >> 1) + 0x4000000000000000 < 0)
      {
        goto LABEL_33;
      }

      v11 = v4;
      v12 = v6;
      OUTLINED_FUNCTION_90_3();
      if (v15 ^ v16 | v14)
      {
        v17 = 1;
      }

      else
      {
        v17 = v13;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v18 = OUTLINED_FUNCTION_77();
      v19 = (_swift_stdlib_malloc_size_0(v18) - 32) / 8;
      v18[2] = v17;
      v18[3] = (2 * v19) | 1;
      v20 = (v18 + 4);
      v21 = v7[3];
      v22 = v21 >> 1;
      if (v7[2])
      {
        if (v18 != v7 || v20 >= &v7[v22 + 4])
        {
          memmove(v18 + 4, v7 + 4, 8 * v22);
        }

        v7[2] = 0;
      }

      v8 = (v20 + 8 * v22);
      v5 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - (v21 >> 1);

      v7 = v18;
      v6 = v12;
      v4 = v11;
      v9 = v27;
      v0 = v28;
    }

    v16 = __OFSUB__(v5--, 1);
    if (v16)
    {
      goto LABEL_32;
    }

    *v8++ = v10;
    ++v2;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_25BC083D4(unint64_t a1)
{
  v2 = sub_25BAAF54C(a1);
  v3 = v2;
  if (v2)
  {
    if (v2 <= 0)
    {
      v4 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v4 = swift_allocObject();
      v5 = _swift_stdlib_malloc_size_0(v4);
      v4[2] = v3;
      v4[3] = 2 * ((v5 - 32) / 24);
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  v6 = v4[3];

  v7 = OUTLINED_FUNCTION_9_23();
  v9 = sub_25BC4E1E4(v7, v8);
  sub_25BCB617C();
  sub_25BC45D94(v9, a1);
  v11 = v10;

  if (v3 < 0)
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    return result;
  }

  v13 = v4 + 4;
  v14 = v6 >> 1;
  if (v3)
  {
    v15 = 0;
    v16 = *(v11 + 16);
    v14 -= v3;
    v17 = (v11 + 48);
    while (v16 != v15)
    {
      if (v15 >= *(v11 + 16))
      {
        goto LABEL_39;
      }

      ++v15;
      v19 = *(v17 - 2);
      v18 = *(v17 - 1);
      v20 = *v17;
      v17 += 3;
      *v13 = v19;
      v13[1] = v18;
      v13[2] = v20;
      v13 += 3;
      sub_25BCB617C();

      if (v3 == v15)
      {
        goto LABEL_13;
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

LABEL_13:
  v21 = (v11 + 24 * v3 + 48);
  v39 = v11;
  while (v3 < *(v11 + 16))
  {
    v22 = *(v21 - 2);
    v23 = *(v21 - 1);
    v24 = *v21;
    if (v14)
    {
      v25 = *(v21 - 1);
      sub_25BCB617C();

      v26 = v4;
    }

    else
    {
      if ((v4[3] >> 1) + 0x4000000000000000 < 0)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_90_3();
      if (v29 ^ v30 | v28)
      {
        v31 = 1;
      }

      else
      {
        v31 = v27;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
      v26 = swift_allocObject();
      v32 = (_swift_stdlib_malloc_size_0(v26) - 32) / 24;
      v26[2] = v31;
      v26[3] = 2 * v32;
      v33 = v26 + 4;
      v34 = v4[3] >> 1;
      v13 = &v26[3 * v34 + 4];
      v14 = (v32 & 0x7FFFFFFFFFFFFFFFLL) - v34;
      if (v4[2])
      {
        if (v26 != v4 || v33 >= &v4[3 * v34 + 4])
        {
          memmove(v33, v4 + 4, 24 * v34);
        }

        sub_25BCB617C();

        v4[2] = 0;
      }

      else
      {
        sub_25BCB617C();
      }

      v11 = v39;
    }

    v30 = __OFSUB__(v14--, 1);
    if (v30)
    {
      __break(1u);
      goto LABEL_38;
    }

    *v13 = v22;
    v13[1] = v23;
    v13[2] = v24;
    v13 += 3;
    v21 += 3;
    ++v3;
    v4 = v26;
  }

  v36 = v4[3];
  if (v36 >= 2)
  {
    v37 = v36 >> 1;
    v30 = __OFSUB__(v37, v14);
    v38 = v37 - v14;
    if (v30)
    {
      goto LABEL_42;
    }

    v4[2] = v38;
  }

  return v4;
}

uint64_t sub_25BC086B0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = sub_25BC08CE8(a1, a2);
  v5 = v4;
  if (v4)
  {
    if (v4 <= 0)
    {
      v6 = MEMORY[0x277D84F90];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size_0(v6);
      v6[2] = v5;
      v6[3] = 2 * ((v7 - 32) / 4);
    }
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v8 = v6[3];

  if (v5 < 0)
  {
    goto LABEL_71;
  }

  v10 = HIDWORD(v3);
  v11 = v6 + 4;
  v12 = v8 >> 1;
  v13 = a2 >> 63;
  if (!v5)
  {
    goto LABEL_24;
  }

  v12 -= v5;
  do
  {
    v14 = v3 <= v10;
    if (a2 > 0)
    {
      v14 = v3 >= v10;
    }

    if (v14)
    {
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
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
      __break(1u);
LABEL_72:
      __break(1u);
      return result;
    }

    if (a2 < 0 == ((v3 & 0x80000000) == 0))
    {
      v15 = a2 + v3;
      if (__OFADD__(a2, v3))
      {
        goto LABEL_66;
      }

      if (v15 < 0xFFFFFFFF80000000)
      {
        goto LABEL_69;
      }

      if (v15 > 0x7FFFFFFF)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_67;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_68;
      }

      LODWORD(v15) = v3 + a2;
      if (__OFADD__(v3, a2))
      {
        LODWORD(v15) = v13 ^ 0x7FFFFFFF;
      }
    }

    *v11++ = v3;
    LODWORD(v3) = v15;
    --v5;
  }

  while (v5);
  LODWORD(v3) = v15;
LABEL_24:
  v31 = v13 ^ 0x7FFFFFFF;
  while (2)
  {
    v16 = v3 <= v10;
    if (a2 > 0)
    {
      v16 = v3 >= v10;
    }

    if (!v16)
    {
      if (a2 < 0 == ((v3 & 0x80000000) == 0))
      {
        v17 = a2 + v3;
        if (__OFADD__(a2, v3))
        {
          goto LABEL_60;
        }

        if (v17 < 0xFFFFFFFF80000000)
        {
          goto LABEL_62;
        }

        if (v17 > 0x7FFFFFFF)
        {
          goto LABEL_64;
        }

LABEL_38:
        if (v12)
        {
LABEL_52:
          v27 = __OFSUB__(v12--, 1);
          if (v27)
          {
            __break(1u);
            goto LABEL_59;
          }

          *v11++ = v3;
          LODWORD(v3) = v17;
          continue;
        }
      }

      else
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          goto LABEL_61;
        }

        if (a2 > 0x7FFFFFFF)
        {
          goto LABEL_63;
        }

        LODWORD(v17) = v3 + a2;
        if (!__OFADD__(v3, a2))
        {
          goto LABEL_38;
        }

        LODWORD(v17) = v31;
        if (v12)
        {
          LODWORD(v17) = v31;
          goto LABEL_52;
        }
      }

      v18 = v6[3];
      if (((v18 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_65;
      }

      v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
      if (v19 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v19;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C8, &unk_25BCC2630);
      v21 = swift_allocObject();
      v22 = (_swift_stdlib_malloc_size_0(v21) - 32) / 4;
      v21[2] = v20;
      v21[3] = 2 * v22;
      v23 = (v21 + 4);
      v24 = v6[3];
      v25 = v24 >> 1;
      if (v6[2])
      {
        if (v21 != v6 || v23 >= v6 + 4 * v25 + 32)
        {
          memmove(v21 + 4, v6 + 4, 4 * v25);
        }

        v6[2] = 0;
      }

      v11 = (v23 + 4 * v25);
      v12 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

      v6 = v21;
      goto LABEL_52;
    }

    break;
  }

  v28 = v6[3];
  if (v28 >= 2)
  {
    v29 = v28 >> 1;
    v27 = __OFSUB__(v29, v12);
    v30 = v29 - v12;
    if (v27)
    {
      goto LABEL_72;
    }

    v6[2] = v30;
  }

  return v6;
}

void *sub_25BC089B8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
    v7 = OUTLINED_FUNCTION_77();
    v8 = 2 * ((_swift_stdlib_malloc_size_0(v7) - 32) / 16);
    v7[2] = v6;
    v7[3] = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 24);
  }

  result = v7;
  v10 = v7 + 4;
  v11 = v8 >> 1;
  if (v6)
  {
    v12 = 0;
    while (v4 != v12)
    {
      if (v5 == v12)
      {
        goto LABEL_40;
      }

      v13 = *(a2 + 32 + 8 * v12);
      v14 = v12 + 1;
      *v10 = *(a1 + 32 + 8 * v12);
      v10[1] = v13;
      v10 += 2;
      v12 = v14;
      if (v6 == v14)
      {
        v11 -= v14;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

LABEL_13:
  v15 = a1 + 32;
  v16 = a2 + 32;
  v36 = a2 + 32;
  v37 = a1 + 32;
  while (v4 != v6)
  {
    if (v6 >= v4)
    {
      goto LABEL_41;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_42;
    }

    if (v5 == v6)
    {
      break;
    }

    if (v6 >= v5)
    {
      goto LABEL_43;
    }

    v17 = *(v15 + 8 * v6);
    v18 = *(v16 + 8 * v6);
    if (!v11)
    {
      if ((result[3] >> 1) + 0x4000000000000000 < 0)
      {
        goto LABEL_45;
      }

      OUTLINED_FUNCTION_90_3();
      if (v22 ^ v23 | v21)
      {
        v24 = 1;
      }

      else
      {
        v24 = v20;
      }

      v38 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39D0, &qword_25BCBB950);
      v25 = OUTLINED_FUNCTION_77();
      v26 = _swift_stdlib_malloc_size_0(v25) - 32;
      v27 = v38;
      v28 = v26 / 16;
      v25[2] = v24;
      v25[3] = 2 * (v26 / 16);
      v29 = (v25 + 4);
      v30 = v38[3];
      v31 = v30 >> 1;
      if (v38[2])
      {
        if (v25 != v38 || v29 >= &v38[2 * v31 + 4])
        {
          memmove(v25 + 4, v38 + 4, 16 * v31);
          v27 = v38;
        }

        v27[2] = 0;
      }

      v10 = (v29 + 16 * v31);
      v11 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - (v30 >> 1);

      result = v25;
      v16 = v36;
      v15 = v37;
    }

    v23 = __OFSUB__(v11--, 1);
    if (v23)
    {
      goto LABEL_44;
    }

    *v10 = v17;
    v10[1] = v18;
    v10 += 2;
    ++v6;
  }

  v33 = result[3];
  if (v33 >= 2)
  {
    v34 = v33 >> 1;
    v23 = __OFSUB__(v34, v11);
    v35 = v34 - v11;
    if (v23)
    {
LABEL_46:
      __break(1u);
      return result;
    }

    result[2] = v35;
  }

  return result;
}

char *sub_25BC08BF4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_25BCB584C();
  v8 = result;
  if (result)
  {
    result = sub_25BCB587C();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
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
    goto LABEL_15;
  }

  result = sub_25BCB586C();
  if (a4 && v8)
  {
    if (result >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = result;
    }

    return memmove(a4, v8, v11);
  }

  return result;
}

uint64_t sub_25BC08CA4(int64_t a1, int64_t a2, uint64_t a3)
{
  result = 0;
  while (1)
  {
    v5 = a1 <= a2;
    if (a3 > 0)
    {
      v5 = a1 >= a2;
    }

    if (v5)
    {
      break;
    }

    v6 = __OFADD__(a1, a3);
    a1 += a3;
    if (v6)
    {
      a1 = (a1 >> 63) ^ 0x8000000000000000;
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_25BC08CE8(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = HIDWORD(a1);
  while (1)
  {
    v5 = a1 <= v4;
    if (a2 > 0)
    {
      v5 = a1 >= v4;
    }

    if (v5)
    {
      return result;
    }

    if (a2 < 0 == a1 >= 0)
    {
      v6 = __OFADD__(a2, a1);
      a1 = a2 + a1;
      if (v6)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        return result;
      }

      if (a1 < 0xFFFFFFFF80000000)
      {
        goto LABEL_21;
      }

      if (a1 > 0x7FFFFFFF)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (a2 < 0xFFFFFFFF80000000)
      {
        goto LABEL_19;
      }

      if (a2 > 0x7FFFFFFF)
      {
        goto LABEL_20;
      }

      v6 = __OFADD__(a1, a2);
      LODWORD(a1) = a1 + a2;
      if (v6)
      {
        LODWORD(a1) = (a2 >> 63) ^ 0x7FFFFFFF;
      }
    }

    v6 = __OFADD__(result++, 1);
    if (v6)
    {
      __break(1u);
      return result;
    }
  }
}

void sub_25BC08DFC(float a1, float a2, float a3)
{
  v5 = a1;
  v6 = 0;
  for (i = 32; ; i += 4)
  {
    v8 = a1 <= a2;
    if (a3 > 0.0)
    {
      v8 = a1 >= a2;
    }

    if (v8)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    a1 = v5 + (++v6 * a3);
  }

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
    v9 = swift_allocObject();
    v10 = 2 * ((_swift_stdlib_malloc_size_0(v9) - 32) / 4);
    *(v9 + 2) = v6;
    *(v9 + 3) = v10;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
    v10 = *(MEMORY[0x277D84F90] + 24);
  }

  v11 = v10 >> 1;
  v12 = v9 + 8;
  if (!v6)
  {
    v16 = v5;
    goto LABEL_18;
  }

  v13 = 0;
  v11 -= v6;
  v14 = v5;
  while (1)
  {
    v15 = v14 <= a2;
    if (a3 > 0.0)
    {
      v15 = v14 >= a2;
    }

    if (v15)
    {
      break;
    }

    v16 = v5 + (++v13 * a3);
    *v12++ = v14;
    v14 = v16;
    if (v6 == v13)
    {
      while (1)
      {
LABEL_18:
        v17 = v16 <= a2;
        if (a3 > 0.0)
        {
          v17 = v16 >= a2;
        }

        if (v17)
        {
          break;
        }

        if (__OFADD__(v6, 1))
        {
          goto LABEL_43;
        }

        if (!v11)
        {
          v18 = *(v9 + 3);
          if (((v18 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_46;
          }

          v19 = v18 & 0xFFFFFFFFFFFFFFFELL;
          if (v19 <= 1)
          {
            v20 = 1;
          }

          else
          {
            v20 = v19;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
          v21 = swift_allocObject();
          v22 = (_swift_stdlib_malloc_size_0(v21) - 32) / 4;
          *(v21 + 2) = v20;
          *(v21 + 3) = 2 * v22;
          v23 = (v21 + 8);
          v24 = *(v9 + 3);
          v25 = v24 >> 1;
          if (*(v9 + 2))
          {
            if (v21 != v9 || v23 >= &v9[v25 + 8])
            {
              memmove(v21 + 8, v9 + 8, 4 * v25);
            }

            *(v9 + 2) = 0;
          }

          v12 = (v23 + 4 * v25);
          v11 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

          v9 = v21;
        }

        v27 = __OFSUB__(v11--, 1);
        if (v27)
        {
          goto LABEL_44;
        }

        *v12++ = v16;
        v16 = v5 + (++v6 * a3);
      }

      v28 = *(v9 + 3);
      if (v28 >= 2)
      {
        v29 = v28 >> 1;
        v27 = __OFSUB__(v29, v11);
        v30 = v29 - v11;
        if (v27)
        {
          goto LABEL_47;
        }

        *(v9 + 2) = v30;
      }

      return;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
}

unint64_t sub_25BC0908C()
{
  result = qword_27FBB6610;
  if (!qword_27FBB6610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FBB6608, &qword_25BCCB660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6610);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_36_14(uint64_t a1)
{
  *(v1 + 224) = 1;

  return sub_25BC0C634(a1, 0, v1 + 96, 0x100000000, v3, v2, v4);
}

uint64_t OUTLINED_FUNCTION_96_3(uint64_t a1, ...)
{
  va_start(va, a1);

  return sub_25BC04C38(v3, va, v1, v2);
}

void OUTLINED_FUNCTION_97_4()
{

  sub_25BC170C8(v1, v0 + 40, v0 + 96);
}

uint64_t OUTLINED_FUNCTION_99_5@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  return sub_25BAA48D4(a1 + 168, va, v6, v7);
}

uint64_t OUTLINED_FUNCTION_101_4(uint64_t a1, uint64_t a2)
{

  return sub_25BAA48D4(a1, a2, v2, v3);
}

uint64_t OUTLINED_FUNCTION_105_4()
{

  return swift_unknownObjectRetain();
}

uint64_t sub_25BC091D0(uint64_t a1)
{
  v4 = sub_25BCB783C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_164_0();
  if (v10)
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v13)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    while (v11 != 1);
    if (v12 == 1)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_198_1();

    v32 = OUTLINED_FUNCTION_149_1("The tensor is not a scalar, but has shape ");
    v33 = MEMORY[0x25F876F80](v32, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v33);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    OUTLINED_FUNCTION_163_1();
    OUTLINED_FUNCTION_10_5();
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
LABEL_6:
    v37 = a1;
    v14 = Tensor.scalarType.getter();
    OUTLINED_FUNCTION_126_0(v14, v15);
    v16(&v36);
    if (v36 == 12)
    {

      v17 = OUTLINED_FUNCTION_116_3();
      sub_25BB3F7AC(v17, v18, v19, v20, v21, v22, v23, v24, v34, v35);
      v26 = v25;
    }

    else
    {
      swift_retain_n();
      v27 = sub_25BA928B4();
      [v27 lock];

      OUTLINED_FUNCTION_170_1();
      [*(v1 + 224) unlock];

      swift_unknownObjectRelease();
      v36 = a1;
      v28 = *MEMORY[0x277D84660];
      v29 = OUTLINED_FUNCTION_186_1();
      v30(v29);
      OUTLINED_FUNCTION_199_1();
      (*(v7 + 8))(v2, v4);
      v26 = sub_25BC091D0(v37);
    }

    return v26 & 1;
  }

  return result;
}

uint64_t sub_25BC09420(uint64_t a1)
{
  v4 = sub_25BCB783C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_164_0();
  if (v10)
  {
    do
    {
      OUTLINED_FUNCTION_0();
      if (!v13)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    while (v11 != 1);
    if (v12 == 1)
    {
      goto LABEL_6;
    }

LABEL_10:
    OUTLINED_FUNCTION_198_1();

    v32 = OUTLINED_FUNCTION_149_1("The tensor is not a scalar, but has shape ");
    v33 = MEMORY[0x25F876F80](v32, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v33);

    MEMORY[0x25F876C90](46, 0xE100000000000000);
    OUTLINED_FUNCTION_163_1();
    OUTLINED_FUNCTION_10_5();
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
LABEL_6:
    v37 = a1;
    v14 = Tensor.scalarType.getter();
    OUTLINED_FUNCTION_126_0(v14, v15);
    v16(&v36);
    if (v36 == 3)
    {

      v17 = OUTLINED_FUNCTION_116_3();
      sub_25BB3FB20(v17, v18, v19, v20, v21, v22, v23, v24, v34, v35);
      v26 = v25;
    }

    else
    {
      swift_retain_n();
      v27 = sub_25BA928B4();
      [v27 lock];

      OUTLINED_FUNCTION_170_1();
      [*(v1 + 224) unlock];

      swift_unknownObjectRelease();
      v36 = a1;
      v28 = *MEMORY[0x277D84660];
      v29 = OUTLINED_FUNCTION_186_1();
      v30(v29);
      OUTLINED_FUNCTION_199_1();
      (*(v7 + 8))(v2, v4);
      v26 = sub_25BC09420(v37);
    }

    return v26;
  }

  return result;
}

void pow(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v3 = OUTLINED_FUNCTION_118_3();
  v4 = OUTLINED_FUNCTION_2(v3);
  v61 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = *v0;
  v12 = *v1;
  v64 = *(*(*v1 + 16) + 152);
  v69[0] = *(*(v11 + 16) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:_:)(&v64, v69, v70);

  v13 = v70[0];
  if (!v70[0])
  {
    goto LABEL_7;
  }

  v64 = v12;
  v14 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_35_16(v14, v15);
  v16();
  v17 = LOBYTE(v69[0]);
  v70[0] = v11;
  v18 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_126_0(v18, v19);
  v20(v68);
  v62 = v2;
  v63 = v11;
  if (v17 != LOBYTE(v68[0]))
  {
    v21 = LOBYTE(v68[0]) + 13 * v17;
    if (v21 <= 0xA8)
    {
      v17 = byte_286D42018[v21 + 32];
      if (v17 != 13)
      {
        goto LABEL_5;
      }

      v70[0] = v12;
      v54 = Tensor.scalarType.getter();
      v56 = v55;
      v57 = OUTLINED_FUNCTION_157_1(v11);
      v64 = v54;
      v65 = v56;
      OUTLINED_FUNCTION_180_0(v57, v58, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_179_1(v59, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_2_14();
LABEL_9:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_7:
    v52 = *(*(v11 + 16) + 152);
    v64 = *(*(v12 + 16) + 152);
    OUTLINED_FUNCTION_181_1(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_200_1(v53, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_14();
    goto LABEL_9;
  }

LABEL_5:
  v64 = v12;
  v70[0] = v13;
  v22 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v22);
  LOBYTE(v70[0]) = v17;
  v23 = *MEMORY[0x277D84660];
  OUTLINED_FUNCTION_139_1();
  v60 = v24;
  v25 = OUTLINED_FUNCTION_191_1();
  v26(v25);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v27 = *(v61 + 8);
  v27(v10, v10);

  v28 = v64;
  v64 = v63;
  v70[0] = v13;
  v29 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v29);
  LOBYTE(v70[0]) = v17;
  v60(v10, v23, v10);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v27(v10, v10);

  v30 = *(v28 + 16);
  v31 = *(v64 + 16);
  v64 = v13;
  LOBYTE(v65) = v17;

  v32 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v32);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v71 = xmmword_25BCCB470;
  OUTLINED_FUNCTION_77_5(v33);
  OUTLINED_FUNCTION_161_1();
  v34 = OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_108_5(v34, v35, v36, 4, v37, v38, v39, v40, v23, v13);
  OUTLINED_FUNCTION_137_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v41 = OUTLINED_FUNCTION_31();
  *(v41 + 16) = xmmword_25BCBAE70;
  *(v41 + 32) = v12;
  *(v41 + 40) = v63;

  v42 = OUTLINED_FUNCTION_34_16();
  sub_25BAAF130(v42, v43, v44, v45, 424, v46, 9, 2);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v69, v68);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v47 = v67;

  sub_25BAA4AF4(&v64);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v48 = v66;

  sub_25BAA4AF4(&v64);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v64) = v49;
  OUTLINED_FUNCTION_1_53();
  sub_25BABF20C(v31, 0, v68, v50, v47, v48);
  OUTLINED_FUNCTION_107_6();
  v51 = OUTLINED_FUNCTION_15_7();
  *(v51 + 16) = v48;

  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v69);
  *v62 = v51;
  OUTLINED_FUNCTION_10_16();
}

uint64_t Tensor.squared()()
{
  v9 = *v0;
  v1 = *(*(v9 + 16) + 160);
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v5 = MEMORY[0x277D84F90];
  v4 = v1;
  sub_25BAA51C8(v7, v3);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v5, &unk_286D42220, &v4, v3, &v6);
  sub_25BA9C2C8(v7);
  *&v7[0] = v6;
  pow(_:_:)();
}

void max(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = OUTLINED_FUNCTION_118_3();
  v5 = OUTLINED_FUNCTION_2(v4);
  v61 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_154_1();
  do
  {
    if (v9 == 4)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v10);
  v11 = 0;
  do
  {
    if (v11 == 4)
    {
      v62 = OUTLINED_FUNCTION_171_0();
      v63 = v51;
      v50 = xmmword_25BCC6530;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v10);
  OUTLINED_FUNCTION_98_6(v12);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  v13 = v66;
  if (!v66)
  {
    OUTLINED_FUNCTION_54_10(*(v2 + 16));
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v52, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_14();
    goto LABEL_22;
  }

  v62 = v2;
  v14 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_35_16(v14, v15);
  v16();
  LOBYTE(v17) = v65[0];
  v66 = v0;
  v18 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_53_11(v18, v19);
  v20();
  if (v65[0] != v64)
  {
    v21 = v64 + 13 * v65[0];
    if (v21 <= 0xA8)
    {
      v17 = byte_286D42018[v21 + 32];
      if (v17 != 13)
      {
        goto LABEL_13;
      }

      v66 = v2;
      v53 = Tensor.scalarType.getter();
      v55 = v54;
      v56 = OUTLINED_FUNCTION_157_1(v0);
      v62 = v53;
      v63 = v55;
      OUTLINED_FUNCTION_52_10(v56, v57, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v58, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_2_14();
LABEL_22:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_19:
    v62 = OUTLINED_FUNCTION_172_1();
    v63 = v49;
    v50 = xmmword_25BCC6520;
LABEL_21:
    OUTLINED_FUNCTION_12_32(v50);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_22;
  }

LABEL_13:
  v62 = v2;
  v66 = v13;
  OUTLINED_FUNCTION_103_5();
  LOBYTE(v66) = v17;
  v60 = *MEMORY[0x277D84660];
  OUTLINED_FUNCTION_139_1();
  v59 = v22;
  v22(v1);
  OUTLINED_FUNCTION_62_6();
  v23 = *(v61 + 8);
  v24 = OUTLINED_FUNCTION_194();
  v23(v24);

  v62 = v0;
  v66 = v13;
  OUTLINED_FUNCTION_103_5();
  v25 = OUTLINED_FUNCTION_153_1();
  v26(v25);
  OUTLINED_FUNCTION_62_6();
  v27 = OUTLINED_FUNCTION_194();
  v23(v27);

  if (OUTLINED_FUNCTION_117_4(*(v2 + 16)) && OUTLINED_FUNCTION_117_4(*(v0 + 16)))
  {
    OUTLINED_FUNCTION_131_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_1();

    v28 = OUTLINED_FUNCTION_116_3();
    sub_25BAAF074(v28);
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
    v67 = xmmword_25BCCB470;
    OUTLINED_FUNCTION_77_5(v29);
    OUTLINED_FUNCTION_161_1();
    v30 = OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_108_5(v30, v31, v32, 5, v33, v34, v35, v36, v2, v59);
    OUTLINED_FUNCTION_137_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v37 = OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_155_1(v37, xmmword_25BCBAE70);

    v38 = OUTLINED_FUNCTION_34_16();
    sub_25BAB524C(v38, v39, v40, v41, 504, v42, 9, 2);
    swift_setDeallocating();
    sub_25BAB3FD0();
    OUTLINED_FUNCTION_175_1();
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_176_1();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_174_1();
    sub_25BAA4AF4(&v62);
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_173_1();
    sub_25BAA4AF4(&v62);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_20_23();
    LOBYTE(v62) = v43;
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_64_8(v44, v45, v46, v47);
    OUTLINED_FUNCTION_107_6();
    v48 = OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_13_22(v48);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_162_1();

    sub_25BA9C2C8(v65);
    *v3 = v2;
  }

  OUTLINED_FUNCTION_10_16();
}

void static Tensor.* infix<A>(_:_:)()
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

uint64_t sub_25BC0A13C(void (*a1)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  a1();
  swift_setDeallocating();
  sub_25BAB9E1C();
  return 1;
}

unsigned __int8 *sub_25BC0A1B8(unsigned __int8 *result)
{
  if (result)
  {
    return *result;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC0A1C8(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  __break(1u);
  return result;
}

void min(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v4 = OUTLINED_FUNCTION_118_3();
  v5 = OUTLINED_FUNCTION_2(v4);
  v61 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_24_18();
  OUTLINED_FUNCTION_154_1();
  do
  {
    if (v9 == 4)
    {
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_56_8();
  }

  while (!v10);
  v11 = 0;
  do
  {
    if (v11 == 4)
    {
      v62 = OUTLINED_FUNCTION_171_0();
      v63 = v51;
      v50 = xmmword_25BCC6530;
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_55_6();
  }

  while (!v10);
  OUTLINED_FUNCTION_98_6(v12);
  sub_25BCB617C();
  OUTLINED_FUNCTION_129_1();

  v13 = v66;
  if (!v66)
  {
    OUTLINED_FUNCTION_54_10(*(v2 + 16));
    OUTLINED_FUNCTION_50_11(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_97_5(v52, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_2_14();
    goto LABEL_22;
  }

  v62 = v2;
  v14 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_35_16(v14, v15);
  v16();
  LOBYTE(v17) = v65[0];
  v66 = v0;
  v18 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_53_11(v18, v19);
  v20();
  if (v65[0] != v64)
  {
    v21 = v64 + 13 * v65[0];
    if (v21 <= 0xA8)
    {
      v17 = byte_286D42018[v21 + 32];
      if (v17 != 13)
      {
        goto LABEL_13;
      }

      v66 = v2;
      v53 = Tensor.scalarType.getter();
      v55 = v54;
      v56 = OUTLINED_FUNCTION_157_1(v0);
      v62 = v53;
      v63 = v55;
      OUTLINED_FUNCTION_52_10(v56, v57, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_49_14(v58, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_2_14();
LABEL_22:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_19:
    v62 = OUTLINED_FUNCTION_172_1();
    v63 = v49;
    v50 = xmmword_25BCC6520;
LABEL_21:
    OUTLINED_FUNCTION_12_32(v50);
    OUTLINED_FUNCTION_23_24();
    goto LABEL_22;
  }

LABEL_13:
  v62 = v2;
  v66 = v13;
  OUTLINED_FUNCTION_103_5();
  LOBYTE(v66) = v17;
  v60 = *MEMORY[0x277D84660];
  OUTLINED_FUNCTION_139_1();
  v59 = v22;
  v22(v1);
  OUTLINED_FUNCTION_62_6();
  v23 = *(v61 + 8);
  v24 = OUTLINED_FUNCTION_194();
  v23(v24);

  v62 = v0;
  v66 = v13;
  OUTLINED_FUNCTION_103_5();
  v25 = OUTLINED_FUNCTION_153_1();
  v26(v25);
  OUTLINED_FUNCTION_62_6();
  v27 = OUTLINED_FUNCTION_194();
  v23(v27);

  if (OUTLINED_FUNCTION_117_4(*(v2 + 16)) && OUTLINED_FUNCTION_117_4(*(v0 + 16)))
  {
    OUTLINED_FUNCTION_131_0();
  }

  else
  {
    OUTLINED_FUNCTION_156_1();

    v28 = OUTLINED_FUNCTION_116_3();
    sub_25BAAF074(v28);
    OUTLINED_FUNCTION_65_3();
    OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
    v67 = xmmword_25BCCB470;
    OUTLINED_FUNCTION_77_5(v29);
    OUTLINED_FUNCTION_161_1();
    v30 = OUTLINED_FUNCTION_29_20();
    OUTLINED_FUNCTION_108_5(v30, v31, v32, 6, v33, v34, v35, v36, v2, v59);
    OUTLINED_FUNCTION_137_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v37 = OUTLINED_FUNCTION_31();
    OUTLINED_FUNCTION_155_1(v37, xmmword_25BCBAE70);

    v38 = OUTLINED_FUNCTION_34_16();
    sub_25BAB524C(v38, v39, v40, v41, 559, v42, 9, 2);
    swift_setDeallocating();
    sub_25BAB3FD0();
    OUTLINED_FUNCTION_175_1();
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_176_1();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_174_1();
    sub_25BAA4AF4(&v62);
    sub_25BAA49B8();
    OUTLINED_FUNCTION_152_1();

    OUTLINED_FUNCTION_173_1();
    sub_25BAA4AF4(&v62);
    type metadata accessor for TensorRepresentation();
    OUTLINED_FUNCTION_16_3();
    OUTLINED_FUNCTION_20_23();
    LOBYTE(v62) = v43;
    OUTLINED_FUNCTION_1_53();
    OUTLINED_FUNCTION_64_8(v44, v45, v46, v47);
    OUTLINED_FUNCTION_107_6();
    v48 = OUTLINED_FUNCTION_15_7();
    OUTLINED_FUNCTION_13_22(v48);
    sub_25BAA6EB0();
    OUTLINED_FUNCTION_162_1();

    sub_25BA9C2C8(v65);
    *v3 = v2;
  }

  OUTLINED_FUNCTION_10_16();
}

void static Tensor.% infix(_:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v3 = OUTLINED_FUNCTION_118_3();
  v4 = OUTLINED_FUNCTION_2(v3);
  v62 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  v10 = v9 - v8;
  v11 = *v1;
  v12 = *v0;
  v64 = *(*(v11 + 16) + 152);
  v69[0] = *(*(v12 + 16) + 152);
  sub_25BCB617C();
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:_:)(&v64, v69, v70);

  v13 = v70[0];
  if (!v70[0])
  {
    goto LABEL_7;
  }

  v64 = v11;
  v14 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_35_16(v14, v15);
  v16();
  v17 = LOBYTE(v69[0]);
  v70[0] = v12;
  v18 = Tensor.scalarType.getter();
  OUTLINED_FUNCTION_126_0(v18, v19);
  v20(v68);
  v63 = v2;
  if (v17 != LOBYTE(v68[0]))
  {
    v21 = LOBYTE(v68[0]) + 13 * v17;
    if (v21 <= 0xA8)
    {
      v17 = byte_286D42018[v21 + 32];
      if (v17 != 13)
      {
        goto LABEL_5;
      }

      v70[0] = v11;
      v54 = Tensor.scalarType.getter();
      v56 = v55;
      v57 = OUTLINED_FUNCTION_157_1(v12);
      v64 = v54;
      v65 = v56;
      OUTLINED_FUNCTION_180_0(v57, v58, xmmword_25BCC06A0);
      OUTLINED_FUNCTION_179_1(v59, xmmword_25BCBC6A0);
      OUTLINED_FUNCTION_30_18();
LABEL_9:
      sub_25BADDD28();
    }

    __break(1u);
LABEL_7:
    v52 = *(*(v12 + 16) + 152);
    v64 = *(*(v11 + 16) + 152);
    OUTLINED_FUNCTION_181_1(xmmword_25BCC06A0);
    OUTLINED_FUNCTION_200_1(v53, xmmword_25BCBC6A0);
    sub_25BCB617C();
    OUTLINED_FUNCTION_30_18();
    goto LABEL_9;
  }

LABEL_5:
  v64 = v11;
  v70[0] = v13;
  v22 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v22);
  LOBYTE(v70[0]) = v17;
  v23 = *MEMORY[0x277D84660];
  OUTLINED_FUNCTION_139_1();
  v60 = v24;
  v25 = OUTLINED_FUNCTION_191_1();
  v26(v25);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v27 = *(v62 + 8);
  v27(v10, v10);

  v61 = v11;
  v28 = v64;
  v64 = v12;
  v70[0] = v13;
  v29 = OUTLINED_FUNCTION_106_5();
  sub_25BABDA0C(v29);
  LOBYTE(v70[0]) = v17;
  v60(v10, v23, v10);
  OUTLINED_FUNCTION_105_5();
  Tensor.cast(to:roundingRule:)();
  v27(v10, v10);

  v30 = *(v28 + 16);
  v31 = *(v64 + 16);
  v64 = v13;
  LOBYTE(v65) = v17;

  v32 = OUTLINED_FUNCTION_116_3();
  sub_25BAAF074(v32);
  OUTLINED_FUNCTION_65_3();
  OUTLINED_FUNCTION_33_19("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/BinaryElementwiseOps.swift");
  v71 = xmmword_25BCCB470;
  OUTLINED_FUNCTION_77_5(v33);
  OUTLINED_FUNCTION_161_1();
  v34 = OUTLINED_FUNCTION_32_19();
  OUTLINED_FUNCTION_108_5(v34, v35, v36, 7, v37, v38, v39, v40, v23, v13);
  OUTLINED_FUNCTION_137_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v41 = OUTLINED_FUNCTION_31();
  *(v41 + 16) = xmmword_25BCBAE70;
  *(v41 + 32) = v61;
  *(v41 + 40) = v12;

  v42 = OUTLINED_FUNCTION_34_16();
  OUTLINED_FUNCTION_178_1(v42, v43, v44, v45, 44, v46);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BAA51C8(v69, v68);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v47 = v67;

  sub_25BAA4AF4(&v64);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_206_1();

  v48 = v66;

  sub_25BAA4AF4(&v64);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_20_23();
  LOBYTE(v64) = v49;
  OUTLINED_FUNCTION_1_53();
  sub_25BABF20C(v31, 0, v68, v50, v47, v48);
  OUTLINED_FUNCTION_107_6();
  v51 = OUTLINED_FUNCTION_15_7();
  OUTLINED_FUNCTION_13_22(v51);
  sub_25BAA6EB0();
  OUTLINED_FUNCTION_162_1();

  sub_25BA9C2C8(v69);
  *v63 = v47;
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC0ABD0(uint64_t result, void *a2)
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
    v20[11] = v2;
    v20[12] = v3;
    v5 = *(result + 32);
    v7 = a2[4];
    v6 = a2[5];
    v8 = *(v7 + 16);
    swift_retain_n();

    v9 = sub_25BAC42B0();
    v11 = v10;
    v19 = v6;
    v20[0] = v7;
    static Tensor./ infix(_:_:)();
    floor(_:)(v20, &v18);

    v18 = v20[0];
    static Tensor.- prefix(_:)(&v18);

    v18 = v19;
    static Tensor.* infix(_:_:)();

    v12 = v20[0];
    v13 = *(v6 + 16);

    v14 = sub_25BAC42B0();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_25BCBAE70;
    *(v17 + 32) = v5;
    *(v17 + 40) = v9;
    *(v17 + 48) = v11;
    *(v17 + 56) = v12;
    *(v17 + 64) = v14;
    *(v17 + 72) = v16;

    return v17;
  }

LABEL_7:
  __break(1u);
  return result;
}

void static Tensor.% infix<A>(_:_:)()
{
  sub_25BC0B42C();
}

{
  sub_25BC0B2B4();
}

uint64_t sub_25BC0AD8C(uint64_t result, void *a2)
{
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_6;
  }

  v2 = a2[2];
  if (!v2)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v2 != 1)
  {
    v3 = *(result + 32);
    v4 = a2[5];
    v5 = *(a2[4] + 16);
    swift_retain_n();

    v6 = sub_25BAC42B0();
    v8 = v7;
    v9 = *(v4 + 16);

    v10 = sub_25BAC42B0();
    v12 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_25BCBAE70;
    *(v13 + 32) = v3;
    *(v13 + 40) = v6;
    *(v13 + 48) = v8;
    *(v13 + 56) = v3;
    *(v13 + 64) = v10;
    *(v13 + 72) = v12;

    return v13;
  }

LABEL_7:
  __break(1u);
  return result;
}

void static Tensor.+ infix<A>(_:_:)()
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

void static Tensor.- infix<A>(_:_:)()
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

uint64_t sub_25BC0AF40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *))
{
  v7 = *a1;
  a5(&v8, &v7);

  *a1 = v8;
  return result;
}

uint64_t sub_25BC0AFEC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t *))
{
  v8 = *v4;
  v21 = v8;
  v18 = a2;
  v19 = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v17);
  (*(*(a2 - 8) + 16))(boxed_opaque_existential_0, a1, a2);
  Tensor.scalarType.getter();
  OUTLINED_FUNCTION_35_12();
  OUTLINED_FUNCTION_14_23();
  Tensor.init(coercing:scalarType:on:)(v17, v10, v11, v16, v11, v12, v13, v14, v16[0], v16[1], v16[2], v16[3], v16[4], v16[5], v16[6], v16[7], v8, v17[0], v17[1], v17[2], v18, v19);
  v16[0] = v20;
  a4(&v21, v16);
}

uint64_t sub_25BC0B10C(uint64_t result, void *a2)
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
    v23[11] = v2;
    v23[12] = v3;
    v5 = *(result + 32);
    v7 = a2[4];
    v21 = a2[5];
    v6 = v21;
    v22 = v5;

    static Tensor./ infix(_:_:)(v23, &v22, &v21);
    v8 = v23[0];
    v9 = *(v7 + 16);

    v10 = sub_25BAC42B0();
    v12 = v11;
    v22 = v7;
    static Tensor.- prefix(_:)(&v22);
    v21 = v23[0];
    v22 = v6;
    Tensor.squared()();
    v19 = v20;
    static Tensor./ infix(_:_:)(&v22, &v21, &v19);

    v20 = v5;
    v21 = v22;
    static Tensor.* infix(_:_:)();

    v13 = v23[0];
    v14 = *(v6 + 16);

    v15 = sub_25BAC42B0();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_25BCBAE70;
    *(v18 + 32) = v8;
    *(v18 + 40) = v10;
    *(v18 + 48) = v12;
    *(v18 + 56) = v13;
    *(v18 + 64) = v15;
    *(v18 + 72) = v17;

    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

void static Tensor./ infix<A>(_:_:)()
{
  sub_25BC0B2B4();
}

{
  sub_25BC0B42C();
}

void sub_25BC0B2B4()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = *v5;
  v10 = OUTLINED_FUNCTION_51_10(v7, v5, v8, v9);
  v11(v10);
  v12 = OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_96_4(v12, v13);
  v14();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v36, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v15) ? (v15 = v1 == 12) : (v15 = 0), !v15 ? (v16 = v36 == 12) : (v16 = 0), v16))
  {
    v26 = OUTLINED_FUNCTION_95_4();
    v27(v26);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v17();
    OUTLINED_FUNCTION_204_1();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  }

  v28 = OUTLINED_FUNCTION_120_4();
  v0(v28);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC0B42C()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = *v5;
  v10 = OUTLINED_FUNCTION_51_10(v5, v7, v8, v9);
  v11(v10);
  v12 = OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_96_4(v12, v13);
  v14();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v36, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v15) ? (v15 = v1 == 12) : (v15 = 0), !v15 ? (v16 = v36 == 12) : (v16 = 0), v16))
  {
    v26 = OUTLINED_FUNCTION_95_4();
    v27(v26);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v17();
    OUTLINED_FUNCTION_204_1();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  }

  v28 = OUTLINED_FUNCTION_120_4();
  v0(v28);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC0B5A4(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t *))
{
  v4 = *a1;
  v6 = *a2;
  v7 = v4;
  a3(&v8, &v7, &v6);

  *a1 = v8;
  return result;
}

uint64_t sub_25BC0B614(uint64_t result, void *a2)
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
    v23 = v2;
    v24 = v3;
    v5 = *(result + 32);
    v7 = a2[4];
    v6 = a2[5];
    v8 = *(*(v6 + 16) + 160);
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    v19 = MEMORY[0x277D84F90];
    LOBYTE(v17) = v8;
    sub_25BAA51C8(v21, v18);

    Tensor.init(shape:coercingScalars:scalarType:on:)(&v19, &unk_286D45550, &v17, v18, &v20);
    sub_25BA9C2C8(v21);
    v20 = v6;
    *&v21[0] = v5;
    static Tensor.* infix(_:_:)();
    v20 = v18[0];
    *&v21[0] = v7;
    v19 = v6;
    static Tensor.- infix(_:_:)();
    v16 = v17;
    pow(_:_:)(&v19, v21, &v16);

    v17 = v19;
    static Tensor.* infix(_:_:)();

    v9 = *&v21[0];
    v18[0] = v7;
    v20 = v6;
    pow(_:_:)(v21, v18, &v20);
    v19 = v5;
    v20 = *&v21[0];
    static Tensor.* infix(_:_:)();

    v20 = v18[0];
    *&v21[0] = v7;
    log(_:)(&v19, v21);
    v17 = v19;
    static Tensor.* infix(_:_:)();

    v10 = *&v21[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_25BCBAE70;
    *(v11 + 32) = v9;
    v12 = *(v7 + 16);

    *(v11 + 40) = sub_25BAC42B0();
    *(v11 + 48) = v13;
    *(v11 + 56) = v10;
    v14 = *(v6 + 16);

    *(v11 + 64) = sub_25BAC42B0();
    *(v11 + 72) = v15;

    return v11;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t squaredDifference(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *a1;
  static Tensor.- infix(_:_:)();
  Tensor.squared()();
}

uint64_t root(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 16) + 160);
  OUTLINED_FUNCTION_187_1();
  v5 = MEMORY[0x277D84F90];
  v14 = MEMORY[0x277D84F90];
  LOBYTE(v12) = v6;
  sub_25BAA51C8(v16, v13);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v14, &unk_286D45578, &v12, v13, &v15);
  sub_25BA9C2C8(v16);
  v7 = *(*(v3 + 16) + 160);
  OUTLINED_FUNCTION_187_1();
  v12 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a2;
  v11 = v7;
  sub_25BAA51C8(v16, v13);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v12, inited, &v11, v13, &v14);
  sub_25BA9C2C8(v16);
  v13[0] = v14;
  static Tensor./ infix(_:_:)();

  v9 = v16[0];
  v16[0] = v3;
  v13[0] = v9;
  pow(_:_:)();
}

uint64_t static Tensor.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  v5 = *(*a2 + 16);
  if (v4 == v5)
  {
    return 1;
  }

  v6 = *(v5 + 160);
  if (*(v4 + 160) != v6)
  {
    LOBYTE(v13) = *(v4 + 160);
    LOBYTE(v12) = v6;
    v14[0] = sub_25BC8FACC();
    v14[1] = v10;
    v15 = xmmword_25BCC06A0;
    v16 = 6;
    v17 = sub_25BC8FACC();
    v18 = v11;
    v19 = xmmword_25BCBC6A0;
    v20 = 6;
    v21 = 0;
    OUTLINED_FUNCTION_2_14();
    sub_25BADDD28();
  }

  if ((sub_25BAB5C48(*(v4 + 152), *(v5 + 152)) & 1) == 0)
  {
    return 0;
  }

  v12 = v3;
  v13 = v2;
  static Tensor..== infix(_:_:)(v14, &v13, &v12);
  v12 = v14[0];
  v7 = OUTLINED_FUNCTION_197_1();
  Tensor.all(squeezingAxes:)(v7, &v13);

  v8 = sub_25BC091D0(v13);

  return v8 & 1;
}

uint64_t static Tensor.!= infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(*a1 + 16);
  v5 = *(*a2 + 16);
  if (v4 == v5)
  {
    return 0;
  }

  v12 = *a1;
  v6 = Tensor.scalarType.getter();
  v13 = v3;
  if (v6 == Tensor.scalarType.getter())
  {
    if (sub_25BAB5C48(*(v4 + 152), *(v5 + 152)))
    {
      v13 = v2;
      v11 = v3;
      static Tensor..!= infix(_:_:)(&v12, &v13, &v11);
      v11 = v12;
      v7 = OUTLINED_FUNCTION_197_1();
      Tensor.any(squeezingAxes:)(v7, &v13);

      v8 = sub_25BC091D0(v13);

      return v8 & 1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    Tensor.scalarType.getter();
    sub_25BCB7C1C();
    MEMORY[0x25F876C90](540877088, 0xE400000000000000);
    Tensor.scalarType.getter();
    v10 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v10);

    OUTLINED_FUNCTION_10_5();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

void max<A>(_:_:)()
{
  sub_25BC0C1EC();
}

{
  sub_25BC0C364();
}

void sub_25BC0BDAC()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_25BCB783C();
  v9 = OUTLINED_FUNCTION_2(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1();
  v16 = v15 - v14;
  if (!*(v7 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v17 = v5[2];
  if (!v17)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v17 == 1)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    v35[0] = 0xD000000000000056;
    v35[1] = 0x800000025BCE2F00;
    v37 = 9;
    OUTLINED_FUNCTION_2_14();
    sub_25BA97890();
  }

  v18 = *(v7 + 32);
  v20 = v5[5];
  v35[0] = v5[4];
  v19 = v35[0];
  v38[0] = v20;

  v3(v42, v35, v38);
  LOBYTE(v38[0]) = *(*(v18 + 16) + 160);
  (*(v11 + 104))(v16, *MEMORY[0x277D84660], v8);
  Tensor.cast(to:roundingRule:)();
  (*(v11 + 8))(v16, v8);

  v21 = v35[0];
  v38[0] = v18;
  v42[0] = v35[0];
  static Tensor.* infix(_:_:)();
  v22 = v35[0];
  v42[0] = v18;
  v23 = *(*(v21 + 16) + 160);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v40 = MEMORY[0x277D84F90];
  v39 = v23;
  sub_25BAA51C8(v35, v38);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v40, v1, &v39, v38, &v41);
  sub_25BA9C2C8(v35);
  v35[0] = v41;
  v41 = v21;
  static Tensor.- infix(_:_:)();

  v41 = v38[0];
  static Tensor.* infix(_:_:)();

  v24 = v35[0];
  v25 = *(*(v19 + 16) + 152);
  v34 = v20;
  v26 = *(*(v20 + 16) + 152);
  v35[0] = v25;
  v38[0] = v26;
  sub_25BCB617C();
  sub_25BCB617C();
  if (!static ShapeInference.broadcastingAxes(_:_:)(v35, v38))
  {
    goto LABEL_9;
  }

  v35[0] = v22;
  Tensor.sum(squeezingAxes:)(v38);

  v42[0] = v25;
  Tensor.reshaped(to:)(v42, v35);

  v38[0] = v24;
  Tensor.sum(squeezingAxes:)(v42);

  v41 = v26;
  Tensor.reshaped(to:)(&v41, v38);

  v27 = v35[0];
  v28 = v38[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_25BCBAE70;

  *(v29 + 32) = v27;
  v30 = *(v19 + 16);

  *(v29 + 40) = sub_25BAC42B0();
  *(v29 + 48) = v31;
  *(v29 + 56) = v28;
  v32 = *(v34 + 16);

  *(v29 + 64) = sub_25BAC42B0();
  *(v29 + 72) = v33;

  OUTLINED_FUNCTION_10_16();
}

void min<A>(_:_:)()
{
  sub_25BC0C1EC();
}

{
  sub_25BC0C364();
}

void sub_25BC0C1EC()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = *v5;
  v10 = OUTLINED_FUNCTION_51_10(v7, v5, v8, v9);
  v11(v10);
  v12 = OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_96_4(v12, v13);
  v14();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v36, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v15) ? (v15 = v1 == 12) : (v15 = 0), !v15 ? (v16 = v36 == 12) : (v16 = 0), v16))
  {
    v26 = OUTLINED_FUNCTION_95_4();
    v27(v26);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v17();
    OUTLINED_FUNCTION_204_1();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  }

  v28 = OUTLINED_FUNCTION_120_4();
  v0(v28);

  OUTLINED_FUNCTION_10_16();
}

void sub_25BC0C364()
{
  OUTLINED_FUNCTION_9_18();
  OUTLINED_FUNCTION_123_3();
  OUTLINED_FUNCTION_9();
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_26_1();
  v6 = *v5;
  v10 = OUTLINED_FUNCTION_51_10(v5, v7, v8, v9);
  v11(v10);
  v12 = OUTLINED_FUNCTION_150_1();
  OUTLINED_FUNCTION_96_4(v12, v13);
  v14();
  if (sub_25BAA80BC(v1, &unk_286D42270) && sub_25BAA80BC(v36, &unk_286D427E8) || ((OUTLINED_FUNCTION_48_7(), v15) ? (v15 = v1 == 12) : (v15 = 0), !v15 ? (v16 = v36 == 12) : (v16 = 0), v16))
  {
    v26 = OUTLINED_FUNCTION_95_4();
    v27(v26);
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_88_5();
  }

  else
  {
    OUTLINED_FUNCTION_205_0();
    OUTLINED_FUNCTION_121_3();
    v17();
    OUTLINED_FUNCTION_204_1();
    OUTLINED_FUNCTION_35_12();
    OUTLINED_FUNCTION_31_19();
    OUTLINED_FUNCTION_104_5(v18, v19, v20, v21, v22, v23, v24, v25, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
  }

  v28 = OUTLINED_FUNCTION_120_4();
  v0(v28);

  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC0C514()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC0C564(uint64_t *a1, uint64_t *a2)
{
  v3 = *(v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  OUTLINED_FUNCTION_130_1();

  return swift_deallocClassInstance();
}

unsigned __int8 *sub_25BC0C5AC@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25BC0A1B8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

unint64_t sub_25BC0C5E0()
{
  result = qword_27FBB6628;
  if (!qword_27FBB6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6628);
  }

  return result;
}

uint64_t sub_25BC12AC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25BC0A1C8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_97_5@<X0>(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v2 + 88) = a2;
  *(v2 + 104) = a1;
  *(v2 + 156) = 8;

  return sub_25BCB617C();
}

ValueMetadata *OUTLINED_FUNCTION_101_5()
{
  *(v1 - 208) = *(v0 + 40);

  return Tensor.scalarType.getter();
}

BOOL OUTLINED_FUNCTION_117_4@<W0>(uint64_t a1@<X8>)
{
  *(v1 + 48) = *(a1 + 152);

  return sub_25BAC863C(0);
}

uint64_t OUTLINED_FUNCTION_119_4()
{

  return sub_25BCB783C();
}

uint64_t OUTLINED_FUNCTION_131_0()
{
  v4 = *(v0 + 24);
  *(v2 - 152) = *(v0 + 32);
  *(v2 - 208) = v1;
  *(v0 + 96) = 0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 48) = 0u;

  return sub_25BC03F70((v2 - 152));
}

ValueMetadata *OUTLINED_FUNCTION_150_1()
{
  v3 = *(v1 - 192);
  *(v1 - 144) = v0;

  return Tensor.scalarType.getter();
}

uint64_t OUTLINED_FUNCTION_153_1()
{
  *(v3 - 152) = v2;
  result = v1;
  v5 = *(v0 + 20);
  v6 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_155_1(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
  v4 = v2[5];
  a1[2].n128_u64[0] = *v2;
  a1[2].n128_u64[1] = v4;
}

ValueMetadata *OUTLINED_FUNCTION_157_1@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 208) = a1;

  return Tensor.scalarType.getter();
}

uint64_t OUTLINED_FUNCTION_170_1()
{

  return sub_25BA92920(v0, 0, 0, v1 - 80);
}

ValueMetadata *OUTLINED_FUNCTION_171_0()
{
  *(v1 - 152) = v0;

  return sub_25BC8FACC();
}

ValueMetadata *OUTLINED_FUNCTION_172_1()
{
  *(v1 - 152) = v0;

  return sub_25BC8FACC();
}

void OUTLINED_FUNCTION_179_1(char a1@<W8>, __n128 a2@<Q0>)
{
  *(v2 + 120) = a2;
  *(v2 + 136) = a1;
  *(v2 + 172) = 1;
}

double OUTLINED_FUNCTION_187_1()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_197_1()
{
  v2 = *(*(*(v0 + 16) + 152) + 16);

  return sub_25BC54B00(0, v2);
}

uint64_t OUTLINED_FUNCTION_198_1()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  return sub_25BCB70FC();
}

void OUTLINED_FUNCTION_199_1()
{

  Tensor.cast(to:roundingRule:)();
}

uint64_t OUTLINED_FUNCTION_201_1()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_202_0@<X0>(uint64_t a1@<X8>)
{
  v2 = *(a1 + 16);
}

ValueMetadata *OUTLINED_FUNCTION_203_0()
{
  *(v1 - 152) = v0;

  return Tensor.scalarType.getter();
}

ValueMetadata *OUTLINED_FUNCTION_204_1()
{
  *(v1 - 200) = v0;

  return Tensor.scalarType.getter();
}

uint64_t *OUTLINED_FUNCTION_205_0()
{
  *(v2 - 168) = v0;
  *(v2 - 160) = v1;

  return __swift_allocate_boxed_opaque_existential_0((v2 - 192));
}

uint64_t OUTLINED_FUNCTION_206_1()
{

  return sub_25BAA4A5C(v0 + 64);
}

uint64_t sub_25BC12F54(void (*a1)(uint64_t *__return_ptr))
{
  OUTLINED_FUNCTION_29_21(*v1);
  a1(&v5);

  v3 = sub_25BC091D0(v5);

  return v3 & 1;
}

void Tensor.mean(alongAxes:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = OUTLINED_FUNCTION_54_11(a1);
  if (v3)
  {
    v6 = v5;
    v63 = OUTLINED_FUNCTION_25_21();
    sub_25BCB617C();
    sub_25BABC3B0();

    v7 = v60[0];
    if (v60[0])
    {
      OUTLINED_FUNCTION_15_31(MEMORY[0x277D84F90]);
      v8 = 32;
      do
      {
        v9 = *(v6 + v8);
        v10 = *(*(*(v2 + 16) + 152) + 16);
        v11 = __OFADD__(v9, v10);
        v12 = v9 + v10;
        if (v11)
        {
          __break(1u);
LABEL_19:
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          v60[1] = 0;
          v60[2] = 0;
          v60[0] = v12;
          OUTLINED_FUNCTION_35_17();
          OUTLINED_FUNCTION_2_54();
          sub_25BADDD28();
        }

        if (!v10)
        {
          goto LABEL_19;
        }

        OUTLINED_FUNCTION_70_6();
        if (v16 != v11)
        {
          goto LABEL_22;
        }

        v12 += v14 & (v12 >> 63);
        if (v12 >= v14)
        {
          goto LABEL_20;
        }

        v17 = *(v15 + 8 * v12 + 32);
        v63 = v13;
        v19 = *(v13 + 16);
        v18 = *(v13 + 24);
        if (v19 >= v18 >> 1)
        {
          OUTLINED_FUNCTION_14_31(v18);
          OUTLINED_FUNCTION_39_17();
          sub_25BAA21EC();
          v13 = v63;
        }

        *(v13 + 16) = v19 + 1;
        *(v13 + 8 * v19 + 32) = v17;
        v8 += 8;
        --v3;
      }

      while (v3);
      v20 = v19 + 1;
      v21 = 1;
      v22 = 32;
      do
      {
        v23 = *(v13 + v22);
        v12 = v21 * v23;
        if ((v21 * v23) >> 64 != (v21 * v23) >> 63)
        {
          goto LABEL_21;
        }

        v21 *= v23;
        v22 += 8;
        --v20;
      }

      while (v20);

      OUTLINED_FUNCTION_58_9();
      OUTLINED_FUNCTION_33_20();
      v59 = a2;
      v25 = *(v24 + 32);

      sub_25BCB617C();
      v26 = OUTLINED_FUNCTION_40_16();
      v25(v26);
      v60[0] = v7;
      v27 = *(*(v2 + 16) + 152);
      OUTLINED_FUNCTION_30_0();
      v28 = swift_allocObject();
      *(v28 + 16) = v21;
      *(v28 + 24) = v27;
      sub_25BCB617C();
      OUTLINED_FUNCTION_77_6();
      OUTLINED_FUNCTION_47_0();

      v62[55] = 0;
      OUTLINED_FUNCTION_3_43("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ReductionOps.swift");
      v64 = xmmword_25BCCB750;
      OUTLINED_FUNCTION_12_33(v29);
      OUTLINED_FUNCTION_46_15();
      OUTLINED_FUNCTION_64_9();
      OUTLINED_FUNCTION_5_45();
      OUTLINED_FUNCTION_11_35();
      sub_25BABCC4C(v30, v31, v32, v33, v34, v35, v36, v37, v56, v57, v58);
      v38 = OUTLINED_FUNCTION_25();
      sub_25BAA51C8(v38, v62);
      sub_25BAA51C8(v62, v61);
      v39 = type metadata accessor for ContextManager();
      OUTLINED_FUNCTION_15_8();
      swift_retain_n();
      v40 = sub_25BAA49B8();
      OUTLINED_FUNCTION_18_8(v40, v41, v42, v43);

      OUTLINED_FUNCTION_60_8();
      sub_25BAA4AF4(v60);
      v44 = sub_25BAA49B8();
      OUTLINED_FUNCTION_18_8(v44, v45, v46, v47);

      OUTLINED_FUNCTION_47_15();
      sub_25BAA4AF4(v60);
      type metadata accessor for TensorRepresentation();
      OUTLINED_FUNCTION_16_3();
      LOBYTE(v60[0]) = 1;
      OUTLINED_FUNCTION_37_16();
      sub_25BABCD30(v48, v49, v50, v51, v52, v53);
      OUTLINED_FUNCTION_17_7();
      OUTLINED_FUNCTION_22();
      v54 = swift_allocObject();
      OUTLINED_FUNCTION_21_25(v54);
      sub_25BAA6EB0();
      OUTLINED_FUNCTION_15_8();

      sub_25BA9C2C8(v62);
      *v59 = v39;
      OUTLINED_FUNCTION_122();
    }

    else
    {
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_7_38();
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_71_6();
    OUTLINED_FUNCTION_122();
  }
}

uint64_t sub_25BC13610(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 16))
  {
    if (*(a2 + 16))
    {
      v5 = *(result + 32);
      v6 = *(a2 + 32);
      v7 = a3;
      v21 = 0;
      memset(v20, 0, sizeof(v20));
      v8 = *(*(v5 + 16) + 160);
      sub_25BAA51C8(v20, v19);
      v17 = MEMORY[0x277D84F90];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE50;
      *(inited + 32) = v7;
      v16 = v8;
      sub_25BAA51C8(v19, v15);

      Tensor.init(shape:coercingScalars:scalarType:on:)(&v17, inited, &v16, v15, &v18);
      sub_25BA9C2C8(v19);
      sub_25BA9C2C8(v20);
      v10 = v18;
      v20[0] = v5;
      v19[0] = a4;
      Tensor.broadcasted(to:)(v19);
      v19[0] = v10;
      static Tensor./ infix(_:_:)();

      v11 = v20[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F30, &qword_25BCC3220);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_25BCBAE50;
      *(v12 + 32) = v11;
      v13 = *(v6 + 16);

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

uint64_t sub_25BC13B54(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = *v8;
  v11 = OUTLINED_FUNCTION_30_19(a1, a2, a3, a4, a5, a6, a7, a8, v14, a1);
  Tensor.reshaped(to:)(v11, v12);

  a3(a2);
}

uint64_t Tensor.variance(squeezingAxes:)()
{
  OUTLINED_FUNCTION_48_14();
  v4[1] = v0;
  v4[2] = v0;
  Tensor.mean(alongAxes:)(v1, v4);
  static Tensor.- infix(_:_:)();

  OUTLINED_FUNCTION_38_16();
  Tensor.squared()();

  v2 = OUTLINED_FUNCTION_51_11();
  Tensor.mean(squeezingAxes:)(v2);
}

{
  OUTLINED_FUNCTION_45_1();
  return Tensor.variance(squeezingAxes:)();
}

uint64_t Tensor.variance()()
{
  v15 = *v0;
  v13 = &unk_286D42360;
  Tensor.reshaped(to:)(&v13, &v14);

  v13 = v14;
  OUTLINED_FUNCTION_63_6();
  Tensor.mean(squeezingAxes:)(&unk_286D42388);

  OUTLINED_FUNCTION_56_9();
  OUTLINED_FUNCTION_63_6();
  Tensor.squared()();

  v14 = v15;
  v9 = OUTLINED_FUNCTION_30_19(v1, v2, v3, v4, v5, v6, v7, v8, v12, &unk_286D42360);
  Tensor.reshaped(to:)(v9, v10);

  v14 = v15;
  Tensor.mean(squeezingAxes:)(&unk_286D42388);
}

uint64_t Tensor.variance(alongAxes:)()
{
  OUTLINED_FUNCTION_48_14();
  v5[1] = v0;
  v5[2] = v0;
  Tensor.mean(alongAxes:)(v1, v5);
  static Tensor.- infix(_:_:)();

  OUTLINED_FUNCTION_38_16();
  Tensor.squared()();

  v2 = OUTLINED_FUNCTION_51_11();
  Tensor.mean(alongAxes:)(v2, v3);
}

{
  OUTLINED_FUNCTION_45_1();
  return Tensor.variance(alongAxes:)();
}

uint64_t Tensor.standardDeviation()@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_25BC54B00(0, *(*(*(v3 + 16) + 152) + 16));
  v5[1] = v3;
  Tensor.variance(squeezingAxes:)();
  sqrt(_:)(a1, v5);
}

uint64_t sub_25BC14160@<X0>(void (*a1)(void *__return_ptr)@<X1>, void *a2@<X8>)
{
  v5[1] = *v2;
  a1(v5);
  sqrt(_:)(a2, v5);
}

uint64_t Moments.mean.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}

uint64_t Moments.variance.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);

  *(v1 + 8) = v2;
  return result;
}

uint64_t Moments.tensors.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE70;
  *(v3 + 32) = v1;
  *(v3 + 40) = v2;

  return v3;
}

void *Moments.init(mean:variance:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t Tensor.moments(squeezingAxes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v9 = *v2;
  OUTLINED_FUNCTION_38_16();
  Tensor.mean(alongAxes:)(v5, v6);
  OUTLINED_FUNCTION_56_9();
  Tensor.squared()();

  OUTLINED_FUNCTION_63_6();
  Tensor.mean(squeezingAxes:)(a1);

  OUTLINED_FUNCTION_38_16();
  Tensor.sum(squeezingAxes:)(v7);

  *a2 = v10;
  a2[1] = v10;
  return result;
}

uint64_t Tensor.moments()@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_29_21(*v1);
  Tensor.moments(squeezingAxes:)(v3, a1);
}

uint64_t Tensor.moments(alongAxes:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  OUTLINED_FUNCTION_38_16();
  Tensor.mean(alongAxes:)(v6, v7);
  static Tensor.- infix(_:_:)();
  Tensor.squared()();

  OUTLINED_FUNCTION_63_6();
  Tensor.mean(alongAxes:)(a1, v8);

  *a2 = v10;
  a2[1] = v5;
  return result;
}

uint64_t sub_25BC14804()
{
  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_29_21(v1);
  v0();
}

void sub_25BC14E88(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = *v3;
  v6 = *(*(*v3 + 16) + 152);
  v7 = *(v6 + 16);
  if (-v7 > a1 || v7 <= a1)
  {
    goto LABEL_9;
  }

  v10 = (v7 & (a1 >> 63)) + a1;
  v28 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE50;
  *(v11 + 32) = v10;
  sub_25BCB617C();
  OUTLINED_FUNCTION_39_17();
  sub_25BABC3B0();
  swift_setDeallocating();
  OUTLINED_FUNCTION_30_0();
  swift_deallocClassInstance();

  if (!v35)
  {
    OUTLINED_FUNCTION_0_65(*(v5 + 16));
    v31 = 4;
    OUTLINED_FUNCTION_8_38();
LABEL_11:
    sub_25BADDD28();
  }

  v12 = *(v5 + 16);
  v28 = v35;
  LOBYTE(v29) = 2;
  v34 = 0;
  v36[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/ReductionOps.swift";
  v36[1] = 114;
  v37 = 2;
  v38 = xmmword_25BCCB760;
  v39 = "init(id:operator:operand:axis:keepingDimensions:resultDescriptor:creationSite:)";
  v40 = 79;
  v41 = 2;
  type metadata accessor for ArgumentReductionOperation();
  swift_allocObject();

  sub_25BCB617C();
  v13 = OUTLINED_FUNCTION_3();
  sub_25BC66840(v13, v14, v15, a2, v12, v10, 1, v16);
  v33[0] = *(*(v5 + 16) + 152);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = v10;
  sub_25BCB617C();
  sub_25BABC3B0();
  swift_setDeallocating();
  OUTLINED_FUNCTION_30_0();
  swift_deallocClassInstance();

  v18 = v28;
  if (!v28)
  {
    __break(1u);
LABEL_9:
    v29 = 0;
    v30 = 0;
    v28 = a1;
    OUTLINED_FUNCTION_35_17();
    OUTLINED_FUNCTION_2_54();
    goto LABEL_11;
  }

  sub_25BAA51C8(*(v5 + 16) + 168, v33);
  sub_25BAA51C8(v33, v32);
  type metadata accessor for ContextManager();
  swift_retain_n();
  v19 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v19, v20, v21, v22, v36);

  OUTLINED_FUNCTION_60_8();
  sub_25BAA4AF4(&v28);
  v23 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_8(v23, v24, v25, v26);

  OUTLINED_FUNCTION_47_15();
  sub_25BAA4AF4(&v28);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_16_3();
  OUTLINED_FUNCTION_31_20();
  OUTLINED_FUNCTION_37_16();
  sub_25BC11320();
  OUTLINED_FUNCTION_17_7();
  OUTLINED_FUNCTION_22();
  v27 = swift_allocObject();
  OUTLINED_FUNCTION_22_25(v27);

  sub_25BAA6EB0();

  sub_25BA9C2C8(v33);
  v28 = v27;
  v33[0] = v18;
  Tensor.reshaped(to:)(v33, a3);

  OUTLINED_FUNCTION_122();
}

uint64_t sub_25BC15224(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v10 = OUTLINED_FUNCTION_30_19(a1, a2, a3, a4, a5, a6, a7, a8, v13, a1);
  Tensor.reshaped(to:)(v10, v11);

  a2(0);
}

uint64_t sub_25BC152F8(uint64_t *a1, void (*a2)(uint64_t *__return_ptr))
{
  OUTLINED_FUNCTION_29_21(*a1);
  a2(&v5);

  v3 = sub_25BC091D0(v5);

  return v3 & 1;
}

uint64_t sub_25BC15428(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v10 = OUTLINED_FUNCTION_75_7();
  v11 = OUTLINED_FUNCTION_53(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52_11();
  v21[0] = v4;
  LOBYTE(v25) = 10;
  v16 = *MEMORY[0x277D84660];
  v17 = OUTLINED_FUNCTION_65_4();
  v18(v17);
  Tensor.cast(to:roundingRule:)();
  (*(v13 + 8))(v7, v6);
  v21[0] = v24[0];
  a3(&v25, v5);

  OUTLINED_FUNCTION_31_19();
  v23 = MEMORY[0x277D84F90];
  v22 = 10;
  sub_25BAA51C8(v24, v21);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v23, a4, &v22, v21, &v20);
  sub_25BA9C2C8(v24);
  static Tensor..> infix(_:_:)(&v25, &v20);
}

uint64_t sub_25BC15680@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X4>, void *a3@<X8>)
{
  v4 = *v3;
  if (*(*(*v3 + 16) + 160) != 12)
  {
    v9 = *(*(*v3 + 16) + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_8_38();
    sub_25BADDD28();
  }

  if (*(a1 + 16))
  {
    v7 = *v3;

    sub_25BCB617C();
    return a2(v4, a1);
  }

  else
  {
    *a3 = v4;
  }
}

uint64_t sub_25BC157C8(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t), uint64_t a4)
{
  v10 = OUTLINED_FUNCTION_75_7();
  v11 = OUTLINED_FUNCTION_53(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_52_11();
  v22 = v4;
  LOBYTE(v21) = 2;
  v16 = *MEMORY[0x277D84660];
  v17 = OUTLINED_FUNCTION_65_4();
  v18(v17);
  Tensor.cast(to:roundingRule:)();
  (*(v13 + 8))(v7, v6);
  v22 = v20[0];
  a3(&v21, v5);

  OUTLINED_FUNCTION_31_19();
  sub_25BB2F098(MEMORY[0x277D84F90], a4, v20, &v22);
  static Tensor..> infix(_:_:)(&v21, &v22);
}

void Dropout.init(probability:seed:)(uint64_t a1, float a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a2 < 0.0 || a2 > 1.0)
    {
      goto LABEL_21;
    }

    type metadata accessor for ContextManager();
    v3 = sub_25BAA49B8();
    swift_beginAccess();
    v4 = v3[2];
    v2 = *(v4 + 16);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3[2] = v4;
    if (isUniquelyReferenced_nonNull_native)
    {
      if (!v2)
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_14:
      if (v2 <= *(v4 + 16))
      {
        v6 = sub_25BC32FA0();
        v3[2] = v4;
        swift_endAccess();

        goto LABEL_16;
      }

      goto LABEL_20;
    }

LABEL_18:
    sub_25BBF1454(v4);
    v4 = v28;
    v3[2] = v28;
    if (!v2)
    {
      goto LABEL_19;
    }

    goto LABEL_14;
  }

  if ((a1 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (a2 >= 0.0 && a2 <= 1.0)
  {
    v6 = a1 & 0x7FFFFFFF;
LABEL_16:
    v9 = sub_25BBE5CAC(v6);
    v32 = v10;
    v33 = v11;
    v34 = v9 & 1;
    v35 = v12;
    sub_25BB6B668(v31);
    type metadata accessor for LayerVariableReference();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_4_49(v13, v14, v15, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6630, &qword_25BCCB7B8);
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_1_55(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v27);
    return;
  }

LABEL_21:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCE32E0);
  sub_25BCB69CC();
  OUTLINED_FUNCTION_6_44();
  __break(1u);
}

void Dropout.init(probability:seed:)(unint64_t a1, char a2, float a3)
{
  if (a3 < 0.0 || a3 > 1.0)
  {
    goto LABEL_14;
  }

  if ((a2 & 1) == 0)
  {
LABEL_10:
    v9 = sub_25BBE5CAC(a1);
    v32 = v10;
    v33 = v11;
    v34 = v9 & 1;
    v35 = v12;
    sub_25BB6B668(&v31);
    type metadata accessor for LayerVariableReference();
    v13 = swift_allocObject();
    OUTLINED_FUNCTION_4_49(v13, v14, v15, v16, v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6630, &qword_25BCCB7B8);
    v19 = swift_allocObject();
    OUTLINED_FUNCTION_1_55(v19, v20, v21, v22, v23, v24, v25, v26, v29, v30, v27);
    return;
  }

  type metadata accessor for ContextManager();
  v5 = sub_25BAA49B8();
  swift_beginAccess();
  v6 = v5[2];
  v7 = *(v6 + 16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[2] = v6;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v7)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_25BBF1454(v6);
    v6 = v28;
    v5[2] = v28;
    if (v7)
    {
LABEL_8:
      if (v7 <= *(v6 + 16))
      {
        a1 = sub_25BC32FA0();
        v5[2] = v6;
        swift_endAccess();

        goto LABEL_10;
      }

      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD00000000000003FLL, 0x800000025BCE32E0);
  sub_25BCB69CC();
  OUTLINED_FUNCTION_6_44();
  __break(1u);
}

uint64_t Dropout.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  v7 = *(v2 + 16);
  if (!*(v2 + 4))
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v11);

    if (v12)
    {
      v8 = *(v12 + 24);
      sub_25BAA4AF4(v11);
      if (v8)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_25BAA4AF4(v11);
    }

LABEL_10:
    *a2 = v4;
  }

  if (*(v2 + 4) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_beginAccess();
  sub_25BB6B668(&v13);
  swift_endAccess();
  v11[0] = v6;

  LayerState.wrappedValue.setter(&v13);

  v11[0] = v4;
  v9 = *(v6 + 32);
  if ((~v9 & 0xF000000000000007) != 0 && v9 < 0)
  {
    v13 = v9 & 0x7FFFFFFFFFFFFFFFLL;
    sub_25BAB69FC();
    sub_25BCA0404(&v13, a2, v5);
  }

  else
  {
    OUTLINED_FUNCTION_7_0();
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC16038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BAE15E8();
  *a2 = result;
  return result;
}

uint64_t sub_25BC16068@<X0>(uint64_t *a1@<X8>)
{
  result = sub_25BAE1634(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25BC1609C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BAE15E8();
  *a1 = result;
  return result;
}

uint64_t sub_25BC160C4(uint64_t a1)
{
  v2 = sub_25BC16678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BC16100(uint64_t a1)
{
  v2 = sub_25BC16678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Dropout.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6638, &qword_25BCCB7C0);
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC16678();
  sub_25BCB7B2C();
  if (!v2)
  {
    LOBYTE(v27) = 0;
    sub_25BCB768C();
    v11 = v10;
    sub_25BB1B9B0();
    OUTLINED_FUNCTION_3_44();
    v13 = v27;
    type metadata accessor for LayerVariableReference();
    swift_allocObject();
    swift_retain_n();
    v26 = sub_25BAB6D38(&v27, 0x100000000);
    v27 = v13;
    v14 = sub_25BB6B364(&v27);
    v25 = v15;
    v17 = v16;
    v18 = v14;
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6630, &qword_25BCCB7B8);
    v21 = swift_allocObject();
    *(v21 + 16) = v25;
    *(v21 + 32) = v17;
    *(v21 + 40) = v18 & 1;
    *(v21 + 48) = v20;
    sub_25BBC68D8();
    OUTLINED_FUNCTION_3_44();
    v22 = OUTLINED_FUNCTION_2_55();
    v23(v22);

    v24 = v27;
    *a2 = v11;
    *(a2 + 4) = v24;
    *(a2 + 8) = v26;
    *(a2 + 16) = v21;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Dropout.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6648, &qword_25BCCB7C8);
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v17 - v10;
  v12 = *v1;
  v18 = *(v1 + 4);
  v13 = *(v1 + 1);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25BC16678();
  sub_25BCB7B6C();
  v23 = 0;
  sub_25BCB777C();
  if (v2)
  {
    return (*(v7 + 8))(v11, v4);
  }

  v22 = v18;
  v21 = 1;
  sub_25BBC6830();
  sub_25BCB779C();
  v15 = *(v13 + 32);
  if ((~v15 & 0xF000000000000007) != 0 && v15 < 0)
  {
    v20 = v15 & 0x7FFFFFFFFFFFFFFFLL;
    v19 = 2;
    sub_25BAB69FC();
    sub_25BB1B95C();
    sub_25BCB779C();

    return (*(v7 + 8))(v11, v4);
  }

  OUTLINED_FUNCTION_7_0();
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

unint64_t sub_25BC16678()
{
  result = qword_27FBB6640;
  if (!qword_27FBB6640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6640);
  }

  return result;
}

uint64_t sub_25BC166CC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25BC1670C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for Dropout.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BC1683C()
{
  result = qword_27FBB6650;
  if (!qword_27FBB6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6650);
  }

  return result;
}

unint64_t sub_25BC16894()
{
  result = qword_27FBB6658;
  if (!qword_27FBB6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6658);
  }

  return result;
}

unint64_t sub_25BC168EC()
{
  result = qword_27FBB6660;
  if (!qword_27FBB6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6660);
  }

  return result;
}

uint64_t static ComputeDevice.cpu.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_28154E200 != -1)
  {
    swift_once();
  }

  v2 = qword_2815573E8;
  v3 = unk_2815573F0;
  __swift_project_boxed_opaque_existential_1(qword_2815573D0, qword_2815573E8);
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1();
  v9 = v8 - v7;
  (*(v10 + 16))(v8 - v7);
  return sub_25BC16FAC(1, v9, v2, v3, a1);
}

uint64_t sub_25BC16A40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 |= v4;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25BC16A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    LODWORD(v2) = 0;
    v3 = (a1 + 32);
    do
    {
      v5 = *v3++;
      v4 = v5;
      if ((v5 & ~v2) == 0)
      {
        v4 = 0;
      }

      v2 = v4 | v2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_25BC16AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_14_6();
  a21 = v23;
  a22 = v24;
  v25 = v22;

  sub_25BCB723C();
  v26 = *(*v22 + 16);
  sub_25BCB728C();
  sub_25BCB729C();
  sub_25BCB725C();
  v27 = *v22;
  v28 = *(*v22 + 16);
  v29 = v28 - 1;
  result = sub_25BC16CFC(v28 - 1, v27);
  v31 = result;
  a10 = result;
  v32 = v28 - 2;
  while (v29 >= 1)
  {
    if (v32 < -1)
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v33 = v32 / 2;
    v34 = *v25;
    if (v32 / 2 >= *(*v25 + 16))
    {
      goto LABEL_19;
    }

    v36 = v25[1];
    v35 = v25[2];
    a9 = *(v34 + 32 + 8 * v33);

    LOBYTE(v35) = v36(&a10, &a9);

    if ((v35 & 1) == 0)
    {
      break;
    }

    if (v33 >= *(v34 + 16))
    {
      goto LABEL_20;
    }

    v37 = *(v34 + 32 + 8 * v33);

    result = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v34;
    if ((result & 1) == 0)
    {
      result = sub_25BAE16C4(v34);
      v34 = result;
      *v25 = result;
    }

    if (v29 >= *(v34 + 16))
    {
      goto LABEL_21;
    }

    v38 = v34 + 8 * v29;
    v39 = *(v38 + 32);
    *(v38 + 32) = v37;

    result = sub_25BCB725C();
    v32 = v33 - 1;
    v29 = v33;
  }

  v40 = *v25;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v25 = v40;
  if ((result & 1) == 0)
  {
    result = sub_25BAE16C4(v40);
    v40 = result;
    *v25 = result;
  }

  if (v29 < 0)
  {
    goto LABEL_22;
  }

  if (v29 >= *(v40 + 16))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v41 = v40 + 8 * v29;
  v42 = *(v41 + 32);
  *(v41 + 32) = v31;

  OUTLINED_FUNCTION_15_2();

  return sub_25BCB725C();
}

uint64_t ComputeDevice.isEqual(to:)(uint64_t a1)
{
  if ((sub_25BAD1FB0(*(v1 + 40), *(a1 + 40)) & 1) == 0)
  {
    return 0;
  }

  v2 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(v1, *(v1 + 24));
  v3 = OUTLINED_FUNCTION_25_22();
  return v4(v3) & 1;
}

unint64_t sub_25BC16CFC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    v2 = *(a2 + 8 * result + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BC16D30(uint64_t a1)
{
  result = *v1 & a1;
  if (result)
  {
    *v1 &= ~a1;
  }

  return result;
}

unint64_t sub_25BC16D54(unsigned int a1)
{
  v2 = *v1;
  v3 = *v1 & a1;
  if (v3)
  {
    *v1 = v2 & ~a1;
    v4 = v2 & a1;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v3 == 0) << 32);
}

uint64_t sub_25BC16D94(uint64_t a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1;
}

unint64_t sub_25BC16DAC(unsigned int a1)
{
  v2 = *v1;
  *v1 |= a1;
  return v2 & a1 | (((v2 & a1) == 0) << 32);
}

double static ComputeDevice.gpu.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56();
  }

  OUTLINED_FUNCTION_45_12();
  if (v3)
  {
    return OUTLINED_FUNCTION_6_45();
  }

  v4 = MTLCreateSystemDefaultDevice();
  if (!v4)
  {
    return OUTLINED_FUNCTION_6_45();
  }

  v5 = v4;
  if (![v4 supportsFamily_] || !MPSSupportsMTLDevice(v5) || !MPSSupportsMTLDevice(v5))
  {
    swift_unknownObjectRelease();
    return OUTLINED_FUNCTION_6_45();
  }

  if (qword_27FBB3368 != -1)
  {
    OUTLINED_FUNCTION_15_32();
  }

  v6 = qword_27FBDB4A8;
  v7 = unk_27FBDB4B0;
  __swift_project_boxed_opaque_existential_1(qword_27FBDB490, qword_27FBDB4A8);
  OUTLINED_FUNCTION_9();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_33_21(v11);
  v13(v12);
  sub_25BC16FAC(v5, v1, v6, v7, a1);
  return result;
}

uint64_t sub_25BC16FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *(a5 + 32) = a4;
  *(a5 + 40) = a1;
  *(a5 + 24) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  v10 = *(a3 - 8);
  (*(v10 + 16))(boxed_opaque_existential_0, a2, a3);
  sub_25BB73038(a1);
  v11 = OUTLINED_FUNCTION_36_15();
  v12 = sub_25BC178C8(v11);
  result = (*(v10 + 8))(a2, a3);
  *(a5 + 48) = v12;
  return result;
}

id sub_25BC17078()
{
  v0 = MTLCreateSystemDefaultDevice();
  v1 = v0;
  if (v0 && ([v0 supportsFamily_] & 1) == 0)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  return v1;
}

void sub_25BC170C8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  ObjectType = swift_getObjectType();
  v7 = (*(a1 + 32))(ObjectType, a1);
  if (sub_25BA9BEA0(v7))
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x25F8779B0](0, v7);

      v9 = *(v72 + 160);
      swift_unknownObjectRelease();
    }

    else
    {
      if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return;
      }

      v8 = *(v7 + 32);

      v9 = *(v8 + 160);
    }

    *&v10 = 0x100000001;
    if (v9 < 0xB)
    {
      *&v10 = vshl_u32(0x3FF000000FFLL, vneg_s32(vdup_n_s32(v9)));
    }
  }

  else
  {

    *&v10 = 0x100000001;
  }

  v73 = v10;
  v11 = sub_25BAA51C8(a2, &v88);
  if (*(&v89 + 1))
  {
    OUTLINED_FUNCTION_26_24(v11, v12, v13, v14, v15, v16, v17, v18, v73, *(&v73 + 1), v80, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89, v19);
    v20 = *(a1 + 88);
    v29 = OUTLINED_FUNCTION_18_32(v21, v22, v23, v24, v25, v26, v27, v28, v74, v77, v81, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93);
    if (v20(v29))
    {
      goto LABEL_41;
    }

    if (*(&v95 + 1) == 2)
    {
      goto LABEL_26;
    }

    if (*(&v95 + 1) != 1)
    {
      sub_25BAC27B0(&v93, &v88);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
      if (swift_dynamicCast())
      {
        static ComputeDevice.mpsGPU.getter(&v84);
        if (*(&v85 + 1))
        {
          v88 = v84;
          v89 = v85;
          v90 = v86;
          LODWORD(v91) = v87;
          if ((BYTE4(v73) & 1) != 0 || (v73 & 1) != 0 || *(&v90 + 1) != 2)
          {
            static ComputeDevice.mpsGPU.getter(a3);
            sub_25BABF0A8(&v88);
            sub_25BABF0A8(&v93);
            return;
          }

          sub_25BABF0A8(&v88);
        }

        else
        {
          sub_25BA9C2C8(&v84);
        }
      }

      sub_25BAC27B0(&v93, &v88);
      if (swift_dynamicCast())
      {
        v32 = sub_25BC17078();
        sub_25BABF0A8(&v93);
        if (v32)
        {
          *(a3 + 24) = &unk_286D4F718;
          *(a3 + 32) = &off_286D4F7D8;
          *(a3 + 40) = v32;
          v31 = 2;
          goto LABEL_42;
        }
      }

      else
      {
        sub_25BABF0A8(&v93);
      }

      goto LABEL_32;
    }

    sub_25BAC27B0(&v93, &v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3848, &qword_25BCBB7D0);
    if (swift_dynamicCast())
    {
      *(&v89 + 1) = &unk_286D4F6F8;
      *&v90 = &off_286D4F798;
      *(&v90 + 1) = 1;
      LODWORD(v91) = 0x100000;
    }

    else
    {
      sub_25BAC27B0(&v93, &v88);
      if (!swift_dynamicCast())
      {
LABEL_26:
        sub_25BABF0A8(&v93);
        goto LABEL_32;
      }

      *(&v89 + 1) = &unk_286D4F718;
      *&v90 = &off_286D4F7D8;
      *(&v90 + 1) = 1;
      LODWORD(v91) = 1;
    }

    if ((v20)(&v88, ObjectType, a1))
    {
      sub_25BABF0A8(&v93);
      v30 = v89;
      *a3 = v88;
      *(a3 + 16) = v30;
      *(a3 + 32) = v90;
      v31 = v91;
LABEL_42:
      *(a3 + 48) = v31;
      return;
    }

    sub_25BABF0A8(&v88);
    goto LABEL_26;
  }

  sub_25BA9C2C8(&v88);
LABEL_32:
  v41.n128_f64[0] = static ComputeDevice.mpsGPU.getter(&v88);
  if (*(&v89 + 1))
  {
    OUTLINED_FUNCTION_26_24(v33, v34, v35, v36, v37, v38, v39, v40, v73, *(&v73 + 1), v80, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89, v41);
    v42 = *(a1 + 88);
    v51 = OUTLINED_FUNCTION_18_32(v43, v44, v45, v46, v47, v48, v49, v50, v75, v78, v82, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93);
    if ((v42(v51) & 1) != 0 && ((BYTE4(v73) & 1) != 0 || (v73 & 1) != 0 || *(&v95 + 1) != 2))
    {
      goto LABEL_41;
    }

    v52 = sub_25BABF0A8(&v93);
  }

  else
  {
    v52 = sub_25BA9C2C8(&v88);
    v42 = *(a1 + 88);
  }

  *(&v94 + 1) = &unk_286D4F718;
  *&v95 = &off_286D4F7D8;
  *(&v95 + 1) = 1;
  v96 = 1;
  v60 = OUTLINED_FUNCTION_18_32(v52, v53, v54, v55, v56, v57, v58, v59, v73, *(&v73 + 1), v80, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93);
  if (v42(v60) & 1) != 0 || (v61 = sub_25BABF0A8(&v93), *(&v94 + 1) = &unk_286D4F6F8, *&v95 = &off_286D4F798, *(&v95 + 1) = 1, v96 = 0x100000, v69 = OUTLINED_FUNCTION_18_32(v61, v62, v63, v64, v65, v66, v67, v68, v76, v79, v83, v84, *(&v84 + 1), v85, *(&v85 + 1), v86, *(&v86 + 1), v87, v88, *(&v88 + 1), v89, *(&v89 + 1), v90, *(&v90 + 1), v91, v92, v93), (v42(v69)))
  {
LABEL_41:
    v70 = v94;
    v71 = v95;
    *a3 = v93;
    *(a3 + 16) = v70;
    *(a3 + 32) = v71;
    v31 = v96;
    goto LABEL_42;
  }

  sub_25BABF0A8(&v93);
  OUTLINED_FUNCTION_6_45();
}

uint64_t ComputeDevice.description.getter()
{
  result = 5591111;
  v2 = *(v0 + 40);
  if (v2)
  {
    if (v2 == 1)
    {
      return 5591107;
    }

    else if (v2 == 2)
    {
      return 0x45206C617275654ELL;
    }

    else
    {
      sub_25BB73038(v2);
      MEMORY[0x25F876C90](10272, 0xE200000000000000);
      v3 = sub_25BC17678();
      MEMORY[0x25F876C90](v3);

      MEMORY[0x25F876C90](41, 0xE100000000000000);
      sub_25BB7304C(v2);
      return 5591111;
    }
  }

  return result;
}

uint64_t sub_25BC17628(uint64_t a1)
{
  v1 = 0x45206C617275654ELL;
  if (a1 != 2)
  {
    v1 = 5591111;
  }

  if (a1 == 1)
  {
    return 5591107;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25BC17678()
{
  v1 = [v0 name];
  v2 = sub_25BCB636C();

  return v2;
}

uint64_t sub_25BC176D0(uint64_t a1)
{
  if ((a1 - 1) < 2)
  {
    sub_25BCB70FC();
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_30_20();
    if (a1 == 1)
    {
      v3 = 5591107;
    }

    else
    {
      v3 = 0x45206C617275654ELL;
    }

    if (a1 == 1)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xED0000656E69676ELL;
    }

    MEMORY[0x25F876C90](v3, v4);

    OUTLINED_FUNCTION_39_18();
    MEMORY[0x25F876C90](0x687061724753504DLL, 0xEE00746567726154);
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_31_21();
  }

  sub_25BB7304C(a1);
  return 1024;
}

uint64_t sub_25BC177D8(uint64_t a1)
{
  if (a1 != 1)
  {
    sub_25BB73038(a1);
    sub_25BCB70FC();
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_30_20();
    if (a1 == 2)
    {
      v3 = 0x45206C617275654ELL;
    }

    else
    {
      v3 = 5591111;
    }

    if (a1 == 2)
    {
      v4 = 0xED0000656E69676ELL;
    }

    else
    {
      v4 = 0xE300000000000000;
    }

    MEMORY[0x25F876C90](v3, v4);

    OUTLINED_FUNCTION_39_18();
    MEMORY[0x25F876C90](0x67726154534E4E42, 0xEA00000000007465);
    OUTLINED_FUNCTION_22_26();
    OUTLINED_FUNCTION_42_15();
    OUTLINED_FUNCTION_31_21();
  }

  return 0x100000;
}

uint64_t sub_25BC178C8(uint64_t a1)
{
  if (a1 == 1)
  {
    if (swift_dynamicCastMetatype())
    {
      return 1;
    }

    if (swift_dynamicCastMetatype())
    {
      return 0x100000;
    }

    goto LABEL_15;
  }

  if (a1 != 2)
  {
    if (swift_dynamicCastMetatype())
    {
      v2 = 1024;
LABEL_13:
      sub_25BB7304C(a1);
      return v2;
    }

    if (swift_dynamicCastMetatype())
    {
      v2 = 2;
      goto LABEL_13;
    }

LABEL_15:
    sub_25BB73038(a1);
    sub_25BCB70FC();
    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE3320);
    v4 = 0xED0000656E69676ELL;
    v5 = 0x45206C617275654ELL;
    if (a1 != 2)
    {
      v5 = 5591111;
      v4 = 0xE300000000000000;
    }

    if (a1 == 1)
    {
      v6 = 5591107;
    }

    else
    {
      v6 = v5;
    }

    if (a1 == 1)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = v4;
    }

    MEMORY[0x25F876C90](v6, v7);

    MEMORY[0x25F876C90](0xD00000000000001BLL, 0x800000025BCE3350);
    v8 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v8);

    MEMORY[0x25F876C90](0x6E69626D6F632060, 0xEE002E6E6F697461);
    sub_25BA97890();
  }

  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_15;
  }

  return 4;
}

uint64_t ComputeDevice.isCompatible(with:)()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  v2 = OUTLINED_FUNCTION_25_22();
  return v3(v2) & 1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ComputeDevice.purgeCachedResources()()
{
  v2 = v1;
  v3 = v0;
  if (qword_28154F2C8 != -1)
  {
    goto LABEL_65;
  }

  while (1)
  {
    sub_25BAD761C(v3);
    v5 = v4;
    ObjectType = swift_getObjectType();
    (*(v5 + 16))(ObjectType, v5);
    v7 = *(v3 + 40);
    if ((v7 - 1) < 2 || !v7)
    {
      break;
    }

    type metadata accessor for SharedMetalDevice();
    v8 = swift_unknownObjectRetain();
    sub_25BBC97E0(v8);
    if (v2)
    {
      sub_25BB7304C(v7);
      break;
    }

    v54 = v7;
    v9 = sub_25BBC9B60();

    swift_beginAccess();
    v10 = *(v9 + 24);
    v13 = *(v10 + 64);
    v12 = v10 + 64;
    v11 = v13;
    v14 = 1 << *(*(v9 + 24) + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v60 = v15 & v11;
    v57 = (v14 + 63) >> 6;
    v58 = v9;
    v56 = *(v9 + 24);
    swift_bridgeObjectRetain_n();
    v16 = 0;
    v55 = v12;
    while (1)
    {
      v17 = v60;
      if (!v60)
      {
        break;
      }

LABEL_15:
      v59 = v16;
      v60 = (v17 - 1) & v17;
      v19 = *(v56 + 48) + 24 * (__clz(__rbit64(v17)) | (v16 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v3 = *(v19 + 16);
      swift_beginAccess();
      v22 = *(v58 + 24);
      if (*(v22 + 16) && (v23 = sub_25BAFEF78(v20, v21, v3), (v24 & 1) != 0))
      {
        v53 = v2;
        v25 = (*(v22 + 56) + 24 * v23);
        v26 = *v25;
        v27 = v25[2];
        swift_endAccess();
        v28 = MEMORY[0x277D84F90];
        v69 = MEMORY[0x277D84F90];
        v29 = sub_25BA9BEA0(v26);
        v64 = v3;
        v66 = v26;
        if (v29)
        {
          v30 = v29;
          if (v29 < 1)
          {
            __break(1u);
            return;
          }

          v31 = v26;
          v32 = v26 & 0xC000000000000001;
          swift_retain_n();

          v33 = 0;
          v34 = MEMORY[0x277D84F90];
          do
          {
            if (v32)
            {
              v35 = MEMORY[0x25F8779B0](v33, v31);
            }

            else
            {
              v35 = *(v31 + 8 * v33 + 32);
            }

            if ([*(v35 + 16) usedSize] || !sub_25BCB19DC())
            {

              MEMORY[0x25F876F40](v36);
              if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25BCB67AC();
              }

              sub_25BCB680C();

              v34 = v69;
            }

            else
            {
            }

            ++v33;
            v31 = v66;
          }

          while (v30 != v33);

          v28 = MEMORY[0x277D84F90];
          v3 = v64;
        }

        else
        {

          v34 = v28;
        }

        v68 = v28;
        v65 = sub_25BA9BEA0(v34);
        v2 = 0;
        v62 = v34 + 32;
        v63 = v34 & 0xC000000000000001;
        v61 = v34;
        while (v2 != v65)
        {
          sub_25BAA0930(v2, v63 == 0, v34);
          if (v63)
          {
            v51 = OUTLINED_FUNCTION_36_15();
            MEMORY[0x25F8779B0](v51);
          }

          else
          {
            v37 = *(v62 + 8 * v2);
          }

          if (__OFADD__(v2++, 1))
          {
            goto LABEL_62;
          }

          sub_25BCB723C();
          v3 = *(v68 + 16);
          sub_25BCB728C();
          sub_25BCB729C();
          sub_25BCB725C();
          v39 = v68;
          v40 = *(v68 + 16);
          v41 = v40 - 1;
          v42 = sub_25BC16CFC(v40 - 1, v68);
          v43 = v40 - 2;
          while (v41 >= 1)
          {
            if (v43 < -1)
            {
              __break(1u);
LABEL_58:
              __break(1u);
LABEL_59:
              __break(1u);
LABEL_60:
              __break(1u);
              goto LABEL_61;
            }

            v3 = v43 / 2;
            if (v43 / 2 >= *(v39 + 16))
            {
              goto LABEL_58;
            }

            v44 = *(v39 + 32 + 8 * v3);
            v45 = sub_25BCB198C();
            if (sub_25BCB198C() >= v45)
            {
              break;
            }

            if (v3 >= *(v39 + 16))
            {
              goto LABEL_59;
            }

            v46 = *(v39 + 32 + 8 * v3);

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v39 = sub_25BAE16C4(v39);
              v68 = v39;
            }

            if (v41 >= *(v39 + 16))
            {
              goto LABEL_60;
            }

            v47 = v39 + 8 * v41;
            v48 = *(v47 + 32);
            *(v47 + 32) = v46;

            sub_25BCB725C();
            v43 = v3 - 1;
            v39 = v68;
            v41 = v3;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_25BAE16C4(v39);
            v68 = v39;
          }

          v3 = v64;
          if (v41 < 0)
          {
            goto LABEL_63;
          }

          if (v41 >= *(v39 + 16))
          {
            goto LABEL_64;
          }

          v49 = v39 + 8 * v41;
          v50 = *(v49 + 32);
          *(v49 + 32) = v42;

          sub_25BCB725C();

          v34 = v61;
        }

        swift_beginAccess();
        v52 = *(v58 + 24);
        swift_isUniquelyReferenced_nonNull_native();
        v67 = *(v58 + 24);
        sub_25BC19ED8();
        *(v58 + 24) = v67;
        swift_endAccess();

        v2 = v53;
      }

      else
      {
        swift_endAccess();
      }

      v12 = v55;
      v16 = v59;
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v57)
      {
        sub_25BB7304C(v54);

        goto LABEL_6;
      }

      v17 = *(v12 + 8 * v18);
      ++v16;
      if (v17)
      {
        v16 = v18;
        goto LABEL_15;
      }
    }

LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    swift_once();
  }

LABEL_6:
  swift_unknownObjectRelease();
}

void sub_25BC181B0()
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56();
  }

  OUTLINED_FUNCTION_45_12();
  if (v0)
  {
    v1 = 1048583;
  }

  else
  {
    v1 = 1049607;
  }

  dword_281557408 = v1;
}

uint64_t sub_25BC1821C@<X0>(_DWORD *a1@<X8>)
{
  result = OUTLINED_FUNCTION_6_8();
  *a1 = result;
  return result;
}

uint64_t sub_25BC18250@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC68870(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BC18280@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BAFC7DC(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BC182B0@<X0>(unsigned int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC16D28(*a1, *v2);
  *a2 = result;
  return result;
}

unint64_t sub_25BC182E8@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16D54(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_25BC1831C@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_25BC16DAC(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_25BC18368@<X0>(int *a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC16E00(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t sub_25BC183C0@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = sub_25BC16A94(a1);
  *a2 = result;
  return result;
}

uint64_t sub_25BC183E8(uint64_t a1, uint64_t a2)
{
  switch(a2)
  {
    case 0:
LABEL_6:

      return sub_25BCB625C();
    case 2:
      OUTLINED_FUNCTION_20_25();
      goto LABEL_6;
    case 1:
      goto LABEL_6;
  }

  v4 = [swift_unknownObjectRetain() registryID];
  MEMORY[0x25F878240](v4);

  return sub_25BB7304C(a2);
}

uint64_t sub_25BC18498(uint64_t a1)
{
  sub_25BCB79CC();
  if (a1)
  {
    if (a1 == 2)
    {
      OUTLINED_FUNCTION_20_25();
    }

    else if (a1 != 1)
    {
      v2 = [swift_unknownObjectRetain() registryID];
      MEMORY[0x25F878240](v2);
      sub_25BB7304C(a1);
      return sub_25BCB7A3C();
    }
  }

  sub_25BCB625C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC1855C()
{
  v1 = *v0;
  sub_25BCB79CC();
  sub_25BC183E8(v3, v1);
  return sub_25BCB7A3C();
}

double static ComputeDevice.gpu(using:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56();
  }

  OUTLINED_FUNCTION_45_12();
  if ((v5 & 1) != 0 || !MPSSupportsMTLDevice(a1))
  {
    return OUTLINED_FUNCTION_6_45();
  }

  if (qword_27FBB3368 != -1)
  {
    OUTLINED_FUNCTION_15_32();
  }

  v6 = qword_27FBDB4A8;
  v7 = unk_27FBDB4B0;
  __swift_project_boxed_opaque_existential_1(qword_27FBDB490, qword_27FBDB4A8);
  OUTLINED_FUNCTION_9();
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1();
  v12 = OUTLINED_FUNCTION_33_21(v11);
  v13(v12);
  v14 = swift_unknownObjectRetain();
  sub_25BC16FAC(v14, v2, v6, v7, a2);
  return result;
}

void static ComputeDevice.neuralEngine.getter()
{
  OUTLINED_FUNCTION_9_18();
  v32 = v0;
  v1 = sub_25BCB5F8C();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_0();
  v9 = v7 - v8;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v31 - v12;
  v14 = MEMORY[0x25F8767A0](v11);
  v15 = 0;
  v16 = *(v14 + 16);
  v33 = v3 + 16;
  v34 = v16;
  v17 = *MEMORY[0x277CBFD60];
  v18 = (v3 + 8);
  while (1)
  {
    if (v34 == v15)
    {

      goto LABEL_9;
    }

    if (v15 >= *(v14 + 16))
    {
      break;
    }

    (*(v3 + 16))(v13, v14 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v1);
    (*(v3 + 32))(v9, v13, v1);
    v19 = *(v3 + 88);
    v20 = OUTLINED_FUNCTION_36_15();
    if (v21(v20) == v17)
    {

      v25 = *v18;
      v26 = OUTLINED_FUNCTION_36_15();
      v27(v26);
      if (qword_28154FE18 == -1)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    ++v15;
    v22 = *v18;
    v23 = OUTLINED_FUNCTION_36_15();
    v24(v23);
  }

  __break(1u);
LABEL_13:
  OUTLINED_FUNCTION_2_56();
LABEL_8:
  OUTLINED_FUNCTION_45_12();
  if (v28)
  {
LABEL_9:
    v29 = v32;
    *(v32 + 48) = 0;
    v29[1] = 0u;
    v29[2] = 0u;
    *v29 = 0u;
    goto LABEL_11;
  }

  v30 = v32;
  *(v32 + 24) = &unk_286D4F718;
  *(v30 + 32) = &off_286D4F7D8;
  *(v30 + 40) = 2;
  *(v30 + 48) = 4;
LABEL_11:
  OUTLINED_FUNCTION_10_16();
}

double static ComputeDevice.mpsGPU.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56();
  }

  OUTLINED_FUNCTION_45_12();
  if ((v2 & 1) == 0)
  {
    v3 = MTLCreateSystemDefaultDevice();
    if (v3)
    {
      v4 = v3;
      if ([v3 supportsFamily_])
      {
        v5 = swift_unknownObjectRetain();
        if (MPSSupportsMTLDevice(v5))
        {
          *(a1 + 24) = &unk_286D4F738;
          *(a1 + 32) = &off_286D4F7B8;
          *(a1 + 40) = v4;
          *(a1 + 48) = sub_25BC176D0(v4);
          return result;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return OUTLINED_FUNCTION_6_45();
}

double static ComputeDevice.classicEspressoGPU.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_28154FE18 != -1)
  {
    OUTLINED_FUNCTION_2_56();
  }

  OUTLINED_FUNCTION_45_12();
  if ((v2 & 1) == 0)
  {
    v3 = MTLCreateSystemDefaultDevice();
    if (v3)
    {
      v4 = v3;
      if ([v3 supportsFamily_])
      {
        v5 = swift_unknownObjectRetain();
        if (MPSSupportsMTLDevice(v5))
        {
          *(a1 + 24) = &unk_286D4F718;
          *(a1 + 32) = &off_286D4F7D8;
          swift_unknownObjectRelease();
          *(a1 + 40) = v4;
          *(a1 + 48) = 2;
          return result;
        }

        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  return OUTLINED_FUNCTION_6_45();
}

void static ComputeDevice.classicEspressoCPU.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_286D4F718;
  *(a1 + 32) = &off_286D4F7D8;
  *(a1 + 40) = 1;
  *(a1 + 48) = 1;
}

void static ComputeDevice.bnnsCPU.getter(uint64_t a1@<X8>)
{
  *(a1 + 24) = &unk_286D4F6F8;
  *(a1 + 32) = &off_286D4F798;
  *(a1 + 40) = 1;
  *(a1 + 48) = 0x100000;
}

uint64_t sub_25BC18AE4(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 16))(v1, v2) == 1397640770 && v3 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_25BCB789C();

    return v5 & 1;
  }
}

uint64_t sub_25BC18B8C(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  if ((*(v2 + 16))(v1, v2) == 0x687061724753504DLL && v3 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v5 = sub_25BCB789C();

    return v5 & 1;
  }
}

void Array<A>.place(on:)()
{
  OUTLINED_FUNCTION_14_6();
  v2 = v1;
  v4 = v3;
  v5 = *v0;
  v7 = *(v6 + 16);
  v8 = sub_25BCB681C();
  if (v8 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = v8;
    if (v8)
    {
      v10 = 0;
      v11 = *(v2 + 8);
      do
      {
        sub_25BCB67BC();
        sub_25BC19AE4(v10, *v0);
        _swift_isClassOrObjCExistentialType();
        v12 = *(*(v7 - 8) + 80);
        v13 = *(*(v7 - 8) + 72);
        v11(v4, v7, v2);
        ++v10;
      }

      while (v9 != v10);
    }

    OUTLINED_FUNCTION_15_2();
  }
}

uint64_t Array<A>.placed(on:)()
{
  OUTLINED_FUNCTION_35_18();
  sub_25BCB68CC();
  sub_25BCB617C();
  OUTLINED_FUNCTION_12_34();
  Array<A>.place(on:)();
  return v1;
}

uint64_t sub_25BC18DCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *v3;
  v7 = *(a1 + 16);
  result = Array<A>.placed(on:)();
  *a3 = result;
  return result;
}

void Dictionary<>.place(on:)()
{
  OUTLINED_FUNCTION_9_18();
  v86 = v1;
  v3 = v2;
  v77 = v4;
  v92 = *(v2 + 24);
  v76 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v93 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v8);
  v75 = v67 - v9;
  OUTLINED_FUNCTION_9();
  v69 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4_0();
  v74 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = v67 - v17;
  v78 = v3;
  v19 = *(v3 + 16);
  OUTLINED_FUNCTION_9();
  v68 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_1();
  v85 = v25 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v84 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_9();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_4_0();
  v83 = v32 - v33;
  MEMORY[0x28223BE20](v34);
  v88 = v67 - v35;
  v79 = v0;
  v36 = *v0;
  if ((v36 & 0xC000000000000001) != 0)
  {
    v37 = sub_25BCB748C();
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = v37 | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(v36 + 32);
    v39 = ~v42;
    v38 = v36 + 64;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v40 = v44 & *(v36 + 64);
    v41 = v36;
  }

  v91 = (v68 + 32);
  v45 = (v69 + 32);
  v67[0] = v39;
  v46 = (v39 + 64) >> 6;
  v67[2] = v68 + 16;
  v67[1] = v69 + 16;
  v81 = (v28 + 32);
  v73 = v86 + 16;
  v72 = (v93 + 8);
  v71 = (v69 + 8);
  v70 = (v68 + 8);
  sub_25BCB617C();
  v47 = 0;
  v48 = v85;
  v89 = TupleTypeMetadata2;
  v82 = v38;
  for (i = v41; ; v41 = i)
  {
    v80 = v40;
    v90 = v47;
    if ((v41 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_25BCB74BC())
    {
      v58 = 1;
      v66 = v40;
      TupleTypeMetadata2 = v89;
      v51 = v90;
      v93 = v66;
      v57 = v83;
      goto LABEL_19;
    }

    sub_25BCB787C();
    swift_unknownObjectRelease();
    v54 = v92;
    sub_25BCB787C();
    swift_unknownObjectRelease();
    TupleTypeMetadata2 = v89;
    v50 = v90;
    v93 = v40;
LABEL_18:
    v56 = *(TupleTypeMetadata2 + 48);
    v57 = v83;
    (*v91)(v83, v48, v19);
    (*v45)(v57 + v56, v18, v54);
    v58 = 0;
    v51 = v50;
LABEL_19:
    v52 = v88;
LABEL_20:
    __swift_storeEnumTagSinglePayload(v57, v58, 1, TupleTypeMetadata2);
    (*v81)(v52, v57, v84);
    if (__swift_getEnumTagSinglePayload(v52, 1, TupleTypeMetadata2) == 1)
    {
      sub_25BAB3820();
      OUTLINED_FUNCTION_10_16();
      return;
    }

    v59 = *(TupleTypeMetadata2 + 48);
    (*v91)(v48, v52, v19);
    v60 = (v52 + v59);
    v61 = v92;
    (*v45)(v18, v60, v92);
    (*(v86 + 16))(v77, v61);
    v62 = v19;
    v63 = v18;
    v64 = v75;
    v48 = v85;
    sub_25BCB612C();
    v65 = v64;
    v18 = v63;
    v19 = v62;
    TupleTypeMetadata2 = v89;
    (*v72)(v65, v76);
    (*v71)(v18, v61);
    (*v70)(v48, v19);
    v47 = v51;
    v40 = v93;
    v38 = v82;
  }

  v49 = v40;
  v50 = v47;
  if (v40)
  {
LABEL_15:
    v93 = (v49 - 1) & v49;
    OUTLINED_FUNCTION_41_17(*(v41 + 48));
    v53(v48);
    OUTLINED_FUNCTION_41_17(*(v41 + 56));
    v54 = v92;
    v55(v18);
    goto LABEL_18;
  }

  v51 = v47;
  v52 = v88;
  while (1)
  {
    v50 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v50 >= v46)
    {
      v93 = 0;
      v58 = 1;
      v57 = v83;
      goto LABEL_20;
    }

    v49 = *(v38 + 8 * v50);
    ++v51;
    if (v49)
    {
      v41 = i;
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t Dictionary<>.placed(on:)()
{
  OUTLINED_FUNCTION_35_18();
  sub_25BCB61AC();
  sub_25BCB617C();
  OUTLINED_FUNCTION_12_34();
  Dictionary<>.place(on:)();
  return v1;
}

uint64_t sub_25BC194C0@<X0>(void *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *v3;
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  result = Dictionary<>.placed(on:)();
  *a3 = result;
  return result;
}

uint64_t sub_25BC19AE4(unint64_t a1, uint64_t a2)
{
  result = _swift_isClassOrObjCExistentialType();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return result;
  }

  v5 = a2 & 0xFFFFFFFFFFFFFF8;
  if ((result & 1) == 0)
  {
    v5 = a2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_25BC19B38()
{
  OUTLINED_FUNCTION_40_17();
  v4 = OUTLINED_FUNCTION_0_66(v2, v3);
  v6 = sub_25BA9266C(v4, v5);
  OUTLINED_FUNCTION_1_56(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_16_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5E30, &unk_25BCCBEA0);
  v9 = OUTLINED_FUNCTION_10_33();
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v13, v14);
    OUTLINED_FUNCTION_4_50();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v9, v10, v11, v12, *v0);
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

uint64_t sub_25BC19C08()
{
  OUTLINED_FUNCTION_40_17();
  v4 = OUTLINED_FUNCTION_0_66(v2, v3);
  v6 = sub_25BA9266C(v4, v5);
  OUTLINED_FUNCTION_1_56(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66F0, &unk_25BCCBEE0);
  v9 = OUTLINED_FUNCTION_10_33();
  if (v9)
  {
    v13 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v13, v14);
    OUTLINED_FUNCTION_4_50();
    if (!v15)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v9, v10, v11, v12, *v0);
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v18, v19, v20, v21, v22);
    OUTLINED_FUNCTION_37_17();

    return sub_25BCB617C();
  }
}

void sub_25BC19CD8()
{
  OUTLINED_FUNCTION_40_17();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = *v0;
  v7 = sub_25BAFEEB0(v2);
  OUTLINED_FUNCTION_1_56(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    sub_25BCB795C();
    __break(1u);
    return;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66E0, &qword_25BCCBED0);
  OUTLINED_FUNCTION_29_22();
  if (sub_25BCB745C())
  {
    v14 = *v1;
    sub_25BAFEEB0(v3);
    OUTLINED_FUNCTION_4_50();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  if (v13)
  {
    *(*(*v1 + 56) + v12) = v5 & 1;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_37_17();

    sub_25BC1AC18(v17, v18, v19, v20);
  }
}

unint64_t sub_25BC19DC4()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_7_39(v8, v6);
  v13 = sub_25BAFEEEC(v10, v11, v12);
  OUTLINED_FUNCTION_1_56(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66E8, &qword_25BCCBED8);
  if ((OUTLINED_FUNCTION_44_13() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v0;
  v21 = sub_25BAFEEEC(v7, v5, v3 & 1);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  if (v19)
  {
    v23 = *(*v1 + 56);
    v24 = *(v23 + 8 * v18);
    *(v23 + 8 * v18) = v9;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    OUTLINED_FUNCTION_10_16();

    return sub_25BC1AC5C(v27, v28, v29, v30, v31, v32);
  }
}

uint64_t sub_25BC19ED8()
{
  OUTLINED_FUNCTION_14_6();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v38 = v8;
  v10 = v9;
  v12 = v11;
  v13 = *v0;
  v14 = sub_25BAFEF78(v6, v4, v2);
  OUTLINED_FUNCTION_1_56(v14, v15);
  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4810, &qword_25BCCBF00);
  if ((sub_25BCB745C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v1;
  v22 = sub_25BAFEF78(v7, v5 & 1, v3);
  if ((v20 & 1) != (v23 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v19 = v22;
LABEL_5:
  if (v20)
  {
    v24 = (*(*v1 + 56) + 24 * v19);
    v25 = *v24;
    v26 = v24[2];
    *v24 = v12;
    v24[1] = v10;
    v24[2] = v38;

    OUTLINED_FUNCTION_15_2();
  }

  else
  {
    OUTLINED_FUNCTION_15_2();

    return sub_25BC1ADB8(v29, v30, v31, v32, v33, v34, v35, v36);
  }
}

uint64_t sub_25BC1A070(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC1A0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_25BC1A128(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    a2 -= 0x7FFFFFFF;
    goto LABEL_5;
  }

  if (a2)
  {
LABEL_5:
    *result = a2;
  }

  return result;
}

unint64_t sub_25BC1A184()
{
  result = qword_27FBB6670;
  if (!qword_27FBB6670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6670);
  }

  return result;
}

unint64_t sub_25BC1A1DC()
{
  result = qword_27FBB6678;
  if (!qword_27FBB6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6678);
  }

  return result;
}

unint64_t sub_25BC1A234()
{
  result = qword_27FBB6680;
  if (!qword_27FBB6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6680);
  }

  return result;
}

unint64_t sub_25BC1A28C()
{
  result = qword_27FBB6688;
  if (!qword_27FBB6688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6688);
  }

  return result;
}

unint64_t sub_25BC1A2E4()
{
  result = qword_27FBB6690;
  if (!qword_27FBB6690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6690);
  }

  return result;
}

void sub_25BC1A34C()
{
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_3_45();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_7_39(v3, v5);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB66A8, &unk_25BCCBE90);
  if (OUTLINED_FUNCTION_10_33())
  {
    v11 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v11, v12);
    OUTLINED_FUNCTION_4_50();
    if (!v14)
    {
      goto LABEL_12;
    }

    v2 = v13;
  }

  if (v1)
  {
    *(*(*v0 + 56) + v2) = v4;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_25BC1AE14(v15, v16, v17, v4, v18);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

uint64_t sub_25BC1A434()
{
  OUTLINED_FUNCTION_9_18();
  v3 = v2;
  v5 = v4;
  v8 = OUTLINED_FUNCTION_0_66(v6, v7);
  v10 = sub_25BA9266C(v8, v9);
  OUTLINED_FUNCTION_1_56(v10, v11);
  if (v12)
  {
    __break(1u);
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v3);
  v13 = OUTLINED_FUNCTION_10_33();
  if (v13)
  {
    v17 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v17, v18);
    OUTLINED_FUNCTION_4_50();
    if (!v19)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    OUTLINED_FUNCTION_13_35(v13, v14, v15, v16, *v0);
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_5_46();
    sub_25BAC4690(v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_10_16();

    return sub_25BCB617C();
  }
}

uint64_t sub_25BC1A504()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_25BAFF060(v6, v4, v2);
  OUTLINED_FUNCTION_1_56(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A8, &qword_25BCC88E8);
  if ((OUTLINED_FUNCTION_23_26() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v1;
  v21 = sub_25BAFF060(v7, v5, v3);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v1;
  if (v19)
  {
    v24 = (*(v23 + 56) + 16 * v18);
    v25 = v24[1];
    *v24 = v11;
    v24[1] = v9;
    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BC1AE5C(v18, v7, v5, v3, v11, v9, v23);
    OUTLINED_FUNCTION_10_16();

    return sub_25BC1B0AC(v28, v29);
  }
}

unint64_t sub_25BC1A63C()
{
  OUTLINED_FUNCTION_40_17();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = *v0;
  v11 = sub_25BAFEEB0(v4);
  OUTLINED_FUNCTION_1_56(v11, v12);
  if (v13)
  {
    __break(1u);
LABEL_14:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB66C0, &unk_25BCCBEB0);
  if (OUTLINED_FUNCTION_10_33())
  {
    v14 = *v3;
    sub_25BAFEEB0(v5);
    OUTLINED_FUNCTION_4_50();
    if (!v16)
    {
      goto LABEL_14;
    }

    v2 = v15;
  }

  if (v1)
  {
    v17 = (*(*v3 + 56) + 16 * v2);
    v18 = *v17;
    *v17 = v9;
    v17[1] = v7;
    OUTLINED_FUNCTION_37_17();

    return swift_unknownObjectRelease();
  }

  else
  {
    OUTLINED_FUNCTION_37_17();

    return sub_25BC1AEB0(v21, v22, v23, v24, v25);
  }
}

void *sub_25BC1A738(uint64_t a1, uint64_t a2)
{
  v5 = v3;
  v6 = OUTLINED_FUNCTION_34_17(a1, a2);
  v7 = sub_25BAD885C(v6);
  OUTLINED_FUNCTION_1_56(v7, v8);
  if (v11)
  {
    __break(1u);
LABEL_12:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB66B0, &unk_25BCC80A0);
  OUTLINED_FUNCTION_29_22();
  if (sub_25BCB745C())
  {
    v14 = *v3;
    sub_25BAD885C(v4);
    OUTLINED_FUNCTION_4_50();
    if (!v16)
    {
      goto LABEL_12;
    }

    v12 = v15;
  }

  v17 = *v5;
  if (v13)
  {
    v18 = v17[7];
    v19 = *(v18 + 8 * v12);
    *(v18 + 8 * v12) = v2;
  }

  else
  {
    sub_25BAD6F54(v4, v21);
    return sub_25BC1AEF8(v12, v21, v2, v17);
  }
}

unint64_t sub_25BC1A840()
{
  OUTLINED_FUNCTION_40_17();
  v3 = v1;
  v6 = OUTLINED_FUNCTION_34_17(v4, v5);
  v7 = sub_25BAFEEB0(v6);
  OUTLINED_FUNCTION_1_56(v7, v8);
  if (v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v9;
  v13 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6718, &qword_25BCCBF08);
  OUTLINED_FUNCTION_29_22();
  if ((sub_25BCB745C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = *v1;
  v15 = sub_25BAFEEB0(v2);
  if ((v13 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v12 = v15;
LABEL_5:
  if (v13)
  {
    v17 = *(*v3 + 56);
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = v0;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_37_17();

    return sub_25BC1AF74(v21, v22, v23, v24);
  }
}

uint64_t sub_25BC1A934()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *v0;
  v13 = sub_25BA9266C(v4, v2);
  OUTLINED_FUNCTION_1_56(v13, v14);
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4850, &qword_25BCCBF10);
  if ((OUTLINED_FUNCTION_23_26() & 1) == 0)
  {
    goto LABEL_5;
  }

  v20 = *v1;
  v21 = sub_25BA9266C(v5, v3);
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v1;
  if (v19)
  {
    v24 = (*(v23 + 56) + 24 * v18);
    v26 = v24[1];
    v25 = v24[2];
    *v24 = v11;
    v24[1] = v9;
    v24[2] = v7;

    OUTLINED_FUNCTION_10_16();
  }

  else
  {
    sub_25BC1AFB8(v18, v5, v3, v11, v9, v7, v23);
    OUTLINED_FUNCTION_10_16();

    return sub_25BCB617C();
  }
}

uint64_t sub_25BC1AA6C()
{
  OUTLINED_FUNCTION_40_17();
  v4 = OUTLINED_FUNCTION_0_66(v2, v3);
  v6 = sub_25BA9266C(v4, v5);
  OUTLINED_FUNCTION_1_56(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_13:
    result = sub_25BCB795C();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_16_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB6708, &qword_25BCCBEF8);
  if (OUTLINED_FUNCTION_10_33())
  {
    v9 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v9, v10);
    OUTLINED_FUNCTION_4_50();
    if (!v11)
    {
      goto LABEL_13;
    }
  }

  if (v1)
  {
    v12 = *(*v0 + 56);
    OUTLINED_FUNCTION_37_17();

    return sub_25BC1B0DC(v13, v14);
  }

  else
  {
    v17 = OUTLINED_FUNCTION_5_46();
    sub_25BC1B00C(v17, v18, v19, v20, v21);
    OUTLINED_FUNCTION_37_17();

    return sub_25BCB617C();
  }
}

void sub_25BC1AB44()
{
  OUTLINED_FUNCTION_40_17();
  OUTLINED_FUNCTION_3_45();
  v4 = v3;
  v6 = OUTLINED_FUNCTION_7_39(v3, v5);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6698, &qword_25BCCBE80);
  if (OUTLINED_FUNCTION_10_33())
  {
    v11 = OUTLINED_FUNCTION_8_39();
    sub_25BA9266C(v11, v12);
    OUTLINED_FUNCTION_4_50();
    if (!v14)
    {
      goto LABEL_12;
    }

    v2 = v13;
  }

  if (v1)
  {
    *(*(*v0 + 56) + 4 * v2) = v4;
    OUTLINED_FUNCTION_37_17();
  }

  else
  {
    OUTLINED_FUNCTION_12_34();
    sub_25BC1B064(v15, v16, v17, v4, v18);
    OUTLINED_FUNCTION_37_17();

    sub_25BCB617C();
  }
}

unint64_t sub_25BC1AC18(unint64_t result, uint64_t a2, char a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_25BC1AC5C(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 24 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 16) = a4;
  *(a6[7] + 8 * result) = a5;
  v7 = a6[2];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v9;
  }

  return result;
}

uint64_t sub_25BC1ACAC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = OUTLINED_FUNCTION_21_27(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_25BC1AD28(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_11_36(a1, a2, a3, a4, a5);
  v9 = *(v8 + 56);
  v11 = v10(0);
  result = (*(*(v11 - 8) + 32))(v9 + *(*(v11 - 8) + 72) * a1, a4, v11);
  v13 = *(a5 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(a5 + 16) = v15;
  }

  return result;
}

uint64_t sub_25BC1ADB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = OUTLINED_FUNCTION_21_27(a1, a8 + 8 * (a1 >> 6));
  v10 = v9[6] + 24 * result;
  *v10 = v11;
  *(v10 + 8) = v12;
  *(v10 + 16) = v13;
  v14 = (v9[7] + 24 * result);
  *v14 = v15;
  v14[1] = v16;
  v14[2] = v17;
  v18 = v9[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    v9[2] = v20;
  }

  return result;
}

unint64_t sub_25BC1AE14(unint64_t result, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_25BC1AE5C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_21_27(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 24 * result);
  *v9 = v10;
  v9[1] = v11;
  v9[2] = v12;
  v13 = (v8[7] + 16 * result);
  *v13 = v14;
  v13[1] = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

unint64_t sub_25BC1AEB0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  *(a5[6] + 8 * result) = a2;
  v5 = (a5[7] + 16 * result);
  *v5 = a3;
  v5[1] = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_25BC1AEF8(unint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  result = memcpy((a4[6] + 88 * a1), a2, 0x58uLL);
  *(a4[7] + 8 * a1) = a3;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_25BC1AF74(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_25BC1AFB8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = OUTLINED_FUNCTION_21_27(a1, a7 + 8 * (a1 >> 6));
  v9 = (v8[6] + 16 * result);
  *v9 = v10;
  v9[1] = v11;
  v12 = (v8[7] + 24 * result);
  *v12 = v13;
  v12[1] = v14;
  v12[2] = v15;
  v16 = v8[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v8[2] = v18;
  }

  return result;
}

unint64_t sub_25BC1B00C(unint64_t result, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  v6 = (a5[7] + (result << 6));
  v7 = a4[1];
  *v6 = *a4;
  v6[1] = v7;
  v8 = a4[3];
  v6[2] = a4[2];
  v6[3] = v8;
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

unint64_t sub_25BC1B064(unint64_t result, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 4 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_25BC1B0AC(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
    case 2uLL:
      result = swift_unknownObjectRetain();
      break;
    case 3uLL:
      return result;
    default:

      break;
  }

  return result;
}

uint64_t sub_25BC1B14C()
{
  v1 = v0;
  v79 = swift_allocObject();
  *(v79 + 16) = MEMORY[0x277D84F90];
  v2 = (v79 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = MEMORY[0x277D84F98];
  v74 = v3 + 16;
  v4 = v0[11];
  result = sub_25BA9BEA0(v4);
  v75 = v79 + 16;
  if (result)
  {
    v6 = result;
    if (result >= 1)
    {
      v7 = 0;
      v8 = v4 & 0xC000000000000001;
      v77 = result;
      v78 = v4;
      v76 = v4 & 0xC000000000000001;
      while (1)
      {
        if (v8)
        {
          v9 = MEMORY[0x25F8779B0](v7, v4);
        }

        else
        {
          v9 = *(v4 + 8 * v7 + 32);
        }

        v10 = sub_25BAB3058();
        if (!v10)
        {
          break;
        }

        sub_25BC1BA90(v10, v11, 0, 1, v1, v79, v3);
        swift_unknownObjectRelease();

LABEL_43:
        if (v6 == ++v7)
        {
          goto LABEL_44;
        }
      }

      v12 = v1[13];
      v13 = v1[14];
      v14 = sub_25BAC44E4();
      if (*(v13 + 16))
      {
        v16 = sub_25BA9266C(v14, v15);
        v18 = v17;

        if (v18)
        {
          v19 = *(*(v13 + 56) + 8 * v16);
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_71;
          }

          if (v19 >= *(v12 + 16))
          {
            goto LABEL_72;
          }

LABEL_19:
          v26 = v12 + 16 * v19;
          v27 = *(v26 + 32);
          v28 = *(v26 + 40);
          sub_25BCB617C();
LABEL_22:
          v30 = *(v9 + 152);
          if (sub_25BC5F0F4() < 3)
          {
            v33 = &protocol witness table for Int8;
            v34 = MEMORY[0x277D84900];
            switch(*(v9 + 160))
            {
              case 1:
                v34 = MEMORY[0x277D84958];
                v33 = &protocol witness table for Int16;
                break;
              case 2:
                v34 = MEMORY[0x277D849A8];
                v33 = &protocol witness table for Int32;
                break;
              case 3:
                v34 = MEMORY[0x277D83B88];
                v33 = &protocol witness table for Int;
                break;
              case 4:
                v34 = MEMORY[0x277D84B78];
                v33 = &protocol witness table for UInt8;
                break;
              case 5:
                v34 = MEMORY[0x277D84C58];
                v33 = &protocol witness table for UInt16;
                break;
              case 6:
                v34 = MEMORY[0x277D84CC0];
                v33 = &protocol witness table for UInt32;
                break;
              case 7:
                v34 = MEMORY[0x277D84D38];
                v33 = &protocol witness table for UInt64;
                break;
              case 8:
                v34 = MEMORY[0x277D84DC8];
                v33 = &protocol witness table for Float16;
                break;
              case 9:
                v33 = sub_25BB18AFC();
                v34 = &type metadata for BFloat16;
                break;
              case 0xA:
                v34 = MEMORY[0x277D83A90];
                v33 = &protocol witness table for Float;
                break;
              case 0xB:
                v34 = MEMORY[0x277D839F8];
                v33 = &protocol witness table for Double;
                break;
              case 0xC:
                v34 = MEMORY[0x277D839B0];
                v33 = &protocol witness table for Bool;
                break;
              default:
                break;
            }

            sub_25BCB617C();
            sub_25BCB617C();
            v35 = sub_25BC1C8BC(v34, v9, v34, v33);
            v37 = v36;
            __src[0] = 0;
            __src[1] = 0xE000000000000000;
            sub_25BCB70FC();

            __src[0] = 0xD000000000000015;
            __src[1] = 0x800000025BCE3400;
            MEMORY[0x25F876C90](v35, v37);

            MEMORY[0x25F876C90](0x3E544E4F462F3CLL, 0xE700000000000000);
            v31 = __src[0];
            v32 = __src[1];
            v2 = (v79 + 16);
          }

          else
          {
            sub_25BCB617C();
            sub_25BCB617C();
            v31 = 0;
            v32 = 0;
          }

          __src[0] = v27;
          __src[1] = v28;
          __src[2] = v30;
          __src[3] = v27;
          __src[4] = v28;
          __src[5] = v31;
          __src[6] = v32;
          LOBYTE(__src[7]) = 0;
          *(&__src[7] + 1) = *v82;
          HIDWORD(__src[7]) = *&v82[3];
          LOWORD(__src[8]) = 257;
          BYTE2(__src[8]) = 1;
          *(&__src[8] + 3) = v83;
          HIBYTE(__src[8]) = v84;
          __src[9] = 0x636170736F6E6F6DLL;
          __src[10] = 0xE900000000000065;
          __src[11] = 10;
          LOBYTE(__src[12]) = 3;
          swift_beginAccess();
          v38 = *v2;
          sub_25BC1D49C(__src, __dst);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v40 = *(v38 + 16);
            sub_25BAFE7D0();
            v38 = v41;
          }

          v6 = v77;
          v4 = v78;
          v39 = *(v38 + 16);
          if (v39 >= *(v38 + 24) >> 1)
          {
            sub_25BAFE7D0();
            v38 = v42;
          }

          *(v38 + 16) = v39 + 1;
          memcpy((v38 + 104 * v39 + 32), __src, 0x61uLL);
          *v2 = v38;
          swift_endAccess();

          result = sub_25BC1D4D4(__src);
          v8 = v76;
          goto LABEL_43;
        }
      }

      else
      {
      }

      v12 = v1[17];
      v20 = v1[18];
      v21 = sub_25BAC44E4();
      if (*(v20 + 16))
      {
        v23 = sub_25BA9266C(v21, v22);
        v25 = v24;

        if (v25)
        {
          v19 = *(*(v20 + 56) + 8 * v23);
          if ((v19 & 0x8000000000000000) != 0)
          {
            goto LABEL_73;
          }

          if (v19 >= *(v12 + 16))
          {
            goto LABEL_74;
          }

          goto LABEL_19;
        }
      }

      else
      {
      }

      v27 = sub_25BAC44E4();
      v28 = v29;
      goto LABEL_22;
    }
  }

  else
  {
LABEL_44:
    v43 = 0;
    v44 = v1[15];
    v45 = *(v44 + 16);
    v46 = (v44 + 40);
    while (v45 != v43)
    {
      if (v43 >= *(v44 + 16))
      {
        goto LABEL_70;
      }

      v48 = *(v46 - 1);
      v47 = *v46;
      v49 = swift_unknownObjectRetain();
      sub_25BC1BA90(v49, v47, v43, 0, v1, v79, v3);
      result = swift_unknownObjectRelease();
      v46 += 2;
      ++v43;
    }

    v50 = v1[19];
    result = sub_25BA9BEA0(v50);
    if (result)
    {
      v51 = result;
      if (result < 1)
      {
        goto LABEL_76;
      }

      for (i = 0; i != v51; ++i)
      {
        if ((v50 & 0xC000000000000001) != 0)
        {
          v53 = MEMORY[0x25F8779B0](i, v50);
        }

        else
        {
          v53 = *(v50 + 8 * i + 32);
        }

        sub_25BC1C274(v53, v1, v79, v3);
      }
    }

    swift_beginAccess();
    v54 = *(*v75 + 16);
    if (v54)
    {
      v55 = (*v75 + 32);
      do
      {
        memcpy(__src, v55, 0x61uLL);
        sub_25BC1D49C(__src, __dst);
        MEMORY[0x25F876C90](10, 0xE100000000000000);
        v80 = __src[0];
        v81 = __src[1];
        sub_25BCB617C();
        MEMORY[0x25F876C90](23328, 0xE200000000000000);
        memcpy(__dst, __src, 0x61uLL);
        v56 = sub_25BC1CA08();
        MEMORY[0x25F876C90](v56);

        MEMORY[0x25F876C90](0x3D6C6562616C20, 0xE700000000000000);

        __dst[0] = 32;
        __dst[1] = 0xE100000000000000;
        v87 = __src[8];
        v88 = BYTE2(__src[8]);
        v89 = *&__src[9];
        v90 = __src[11];
        v91 = __src[12];
        v57 = sub_25BC1CD8C();
        MEMORY[0x25F876C90](v57);

        MEMORY[0x25F876C90](__dst[0], __dst[1]);

        MEMORY[0x25F876C90](93, 0xE100000000000000);
        MEMORY[0x25F876C90](v80, v81);

        sub_25BC1D4D4(__src);
        v55 += 104;
        --v54;
      }

      while (v54);
    }

    MEMORY[0x25F876C90](125, 0xE100000000000000);
    swift_beginAccess();
    v58 = *v74;
    v59 = *v74 + 64;
    v60 = 1 << *(*v74 + 32);
    v61 = -1;
    if (v60 < 64)
    {
      v61 = ~(-1 << v60);
    }

    v62 = v61 & *(*v74 + 64);
    v63 = (v60 + 63) >> 6;
    result = sub_25BCB617C();
    for (j = 0; v62; result = )
    {
      v65 = j;
LABEL_66:
      v66 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v67 = (*(v58 + 56) + 24 * (v66 | (v65 << 6)));
      v68 = *v67;
      v69 = v67[1];
      v70 = v67[2];
      sub_25BCB617C();
      sub_25BCB617C();
      MEMORY[0x25F876C90](10, 0xE100000000000000);
      v71 = sub_25BC1C730(v68, v69, v70);
      v73 = v72;

      __dst[0] = v71;
      __dst[1] = v73;
      MEMORY[0x25F876C90](32, 0xE100000000000000);
      MEMORY[0x25F876C90](__dst[0], __dst[1]);
    }

    while (1)
    {
      v65 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (v65 >= v63)
      {

        MEMORY[0x25F876C90](125, 0xE100000000000000);

        return 0xD000000000000042;
      }

      v62 = *(v59 + 8 * v65);
      ++j;
      if (v62)
      {
        j = v65;
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}