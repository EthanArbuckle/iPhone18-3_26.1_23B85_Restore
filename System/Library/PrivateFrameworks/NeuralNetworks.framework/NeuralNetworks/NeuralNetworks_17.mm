uint64_t sub_25BBCC040(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v47 = MEMORY[0x277D84F90];
    sub_25BB00810(0, v2, 0);
    v3 = v47;
    result = sub_25BBE092C(a1);
    v7 = result;
    v8 = 0;
    v9 = a1 + 64;
    v39 = v5;
    v40 = v2;
    v38 = a1 + 72;
    v41 = a1 + 64;
    while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
    {
      v10 = v7 >> 6;
      if ((*(v9 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v5)
      {
        goto LABEL_25;
      }

      v43 = v8;
      v44 = v5;
      HIDWORD(v42) = v6;
      v11 = (*(a1 + 48) + 16 * v7);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(a1 + 56) + 16 * v7);
      v15 = v14[1];
      v45 = *v14;
      v46 = v12;
      v17 = *(v47 + 16);
      v16 = *(v47 + 24);
      sub_25BCB617C();
      result = sub_25BCB617C();
      if (v17 >= v16 >> 1)
      {
        result = sub_25BB00810(v16 > 1, v17 + 1, 1);
      }

      *(v47 + 16) = v17 + 1;
      v18 = (v47 + 32 * v17);
      v18[4] = v46;
      v18[5] = v13;
      v18[6] = v45;
      v18[7] = v15;
      v19 = 1 << *(a1 + 32);
      if (v7 >= v19)
      {
        goto LABEL_26;
      }

      v9 = a1 + 64;
      v20 = *(v41 + 8 * v10);
      if ((v20 & (1 << v7)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v44)
      {
        goto LABEL_28;
      }

      v21 = v20 & (-2 << (v7 & 0x3F));
      if (v21)
      {
        v19 = __clz(__rbit64(v21)) | v7 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v10 << 6;
        v23 = v10 + 1;
        v24 = (v38 + 8 * v10);
        while (v23 < (v19 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_25BB33E48(v7, v44, BYTE4(v42) & 1);
            v19 = __clz(__rbit64(v25)) + v22;
            goto LABEL_19;
          }
        }

        result = sub_25BB33E48(v7, v44, BYTE4(v42) & 1);
      }

LABEL_19:
      v6 = 0;
      v8 = v43 + 1;
      v7 = v19;
      v5 = v39;
      if (v43 + 1 == v40)
      {

        goto LABEL_22;
      }
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

    v3 = MEMORY[0x277D84F90];
LABEL_22:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BCB614C();
    sub_25BAFA1D4(v3, v27, v28, v29, v30, v31, v32, v33, v37, v38, v39, v40, v41, v42, v43, v44, v45);
    v35 = v34;

    sub_25BAFCBDC(v36);
    return v35;
  }

  return result;
}

uint64_t sub_25BBCC2F8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3938, &qword_25BCBE490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4860, &unk_25BCBF6D0);
  if (swift_dynamicCast())
  {
    sub_25BA97060(v21, &v16);
    v6 = v19;
    v7 = v20;
    v8 = __swift_project_boxed_opaque_existential_1(&v16, v19);
    sub_25BBE0F88(v2, a1);
    v10 = v9;
    OUTLINED_FUNCTION_108_3();
    sub_25BBA114C(v8, v11, v10, v21, v6, v7);

    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }

  else
  {
    v22 = 0;
    memset(v21, 0, sizeof(v21));
    sub_25BB3ECB0(v21);
    v16 = v4;
    v17 = v5;
    v18 = 8;
    swift_unknownObjectRetain();
    sub_25BBE0F88(v2, a1);
    v14 = v13;
    OUTLINED_FUNCTION_108_3();
    sub_25BBA00B4(&v16, v15, v14, v21);

    return sub_25BB06134(v16, v17, v18);
  }
}

void sub_25BBCC484()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v3 = *(v0 + 16);
  swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(v3))
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v7 = *(v5 + 16);
    swift_unknownObjectRetain();
    v7(v2, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = sub_25BB30FF8();
    v10 = v9;
    sub_25BBA41B4();
    OUTLINED_FUNCTION_14_0();
    *v11 = v8;
    *(v11 + 8) = v10;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    swift_willThrow();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBCC580()
{
  v1 = 0x65725F796B61656CLL;
  if (*(v0 + 128) == 1)
  {
    v1 = 0x64696F6D676973;
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

uint64_t sub_25BBCC5D8()
{
  if (*(v0 + 128) == 2)
  {
    if (*(v0 + 136))
    {
      sub_25BCB70FC();

      v24 = sub_25BBB2E50();
      MEMORY[0x25F876C90](v24);

      MEMORY[0x25F876C90](96, 0xE100000000000000);
      sub_25BCB617C();
      sub_25BA97890();
    }

    v1 = *(v0 + 132);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = 0x6168706C61;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BCB614C();
    sub_25BAFA0CC(inited, v3, v4, v5, v6, v7, v8, v9, v10, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    v12 = v11;
    swift_setDeallocating();
    v13 = sub_25BC0C4D8();
    v36 = v12;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v14 = MEMORY[0x277D84F90];
    sub_25BCB614C();
    sub_25BAFA0CC(v14, v15, v16, v17, v18, v19, v20, v21, v22, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    v36 = v13;
  }

  sub_25BAFCD30(v13);
  return v36;
}

uint64_t sub_25BBCCCC4()
{
  swift_getKeyPath();
  v0 = sub_25BBDE260();

  type metadata accessor for TensorHandle();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  sub_25BAA6EB0();

  sub_25BC6E030(var48, &v14, v2, v3, v4, v5, v6, v7, v1, var48[0], var48[1], var48[2], var48[3], var48[4], var48[5], var48[6], var48[7], var48[8], var48[9], var48[10]);
  v9 = v8;

  swift_getKeyPath();
  v10 = sub_25BBDE260();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  sub_25BAA6EB0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25BCBAE50;
  var48[0] = v11;
  v9(var48);

  return v12;
}

uint64_t sub_25BBCCE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61D8, &qword_25BCC8B30);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v9 = sub_25BCB614C();
  *(inited + 16) = a2;
  *(inited + 24) = v9;
  v10 = sub_25BBDB6D0(inited, a3, a4);
  if (v4)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v10;
    v13 = sub_25BCB614C();
    v38 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v14 = 0;
    v36 = isUniquelyReferenced_nonNull_native;
    while (v38 != v14)
    {
      if (v14 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v15 = *(*(isUniquelyReferenced_nonNull_native + 8 * v14 + 32) + 16);

      v16 = sub_25BAC44E4();
      v18 = v17;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37[0] = v13;
      v19 = sub_25BA9266C(v16, v18);
      if (__OFADD__(v13[2], (v20 & 1) == 0))
      {
        goto LABEL_27;
      }

      v21 = v19;
      v22 = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v23 = sub_25BA9266C(v16, v18);
        if ((v22 & 1) != (v24 & 1))
        {
          goto LABEL_31;
        }

        v21 = v23;
      }

      v13 = v37[0];
      if (v22)
      {
        *(*(v37[0] + 56) + 8 * v21) = v14;
      }

      else
      {
        *(v37[0] + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v25 = (v13[6] + 16 * v21);
        *v25 = v16;
        v25[1] = v18;
        *(v13[7] + 8 * v21) = v14;
        v26 = v13[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          goto LABEL_28;
        }

        v13[2] = v28;
      }

      ++v14;
      isUniquelyReferenced_nonNull_native = v36;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v29 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v29)
    {
      v37[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v30 = 32;
      do
      {
        v31 = *(*(isUniquelyReferenced_nonNull_native + v30) + 16);

        sub_25BCB723C();
        v32 = *(v37[0] + 16);
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v30 += 8;
        --v29;
      }

      while (v29);

      v33 = v37[0];
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v37[0]) = 0;
    v37[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    if (sub_25BACF298(v33, v37))
    {
      sub_25BAD6344();
      v35 = v34;
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    if (*(v35 + 16))
    {
      sub_25BAD6FB0(v35 + 32, v37);

      sub_25BBDFAB4(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation);
      sub_25BBDE37C();
      sub_25BBDD638(v37);
      sub_25BA9AC78(v37);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBCD2F0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61D0, &qword_25BCC8AD8);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v5 = sub_25BCB614C();
  *(inited + 16) = a2;
  *(inited + 24) = v5;
  v6 = sub_25BBDB530();
  if (v2)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v6;
    v9 = sub_25BCB614C();
    v34 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v10 = 0;
    v32 = isUniquelyReferenced_nonNull_native;
    while (v34 != v10)
    {
      if (v10 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v11 = *(*(isUniquelyReferenced_nonNull_native + 8 * v10 + 32) + 16);

      v12 = sub_25BAC44E4();
      v14 = v13;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v33[0] = v9;
      v15 = sub_25BA9266C(v12, v14);
      if (__OFADD__(v9[2], (v16 & 1) == 0))
      {
        goto LABEL_27;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v19 = sub_25BA9266C(v12, v14);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_31;
        }

        v17 = v19;
      }

      v9 = v33[0];
      if (v18)
      {
        *(*(v33[0] + 56) + 8 * v17) = v10;
      }

      else
      {
        *(v33[0] + 8 * (v17 >> 6) + 64) |= 1 << v17;
        v21 = (v9[6] + 16 * v17);
        *v21 = v12;
        v21[1] = v14;
        *(v9[7] + 8 * v17) = v10;
        v22 = v9[2];
        v23 = __OFADD__(v22, 1);
        v24 = v22 + 1;
        if (v23)
        {
          goto LABEL_28;
        }

        v9[2] = v24;
      }

      ++v10;
      isUniquelyReferenced_nonNull_native = v32;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v25 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v25)
    {
      v33[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v26 = 32;
      do
      {
        v27 = *(*(isUniquelyReferenced_nonNull_native + v26) + 16);

        sub_25BCB723C();
        v28 = *(v33[0] + 16);
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v26 += 8;
        --v25;
      }

      while (v25);

      v29 = v33[0];
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v33[0]) = 0;
    v33[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    if (sub_25BACF298(v29, v33))
    {
      sub_25BAD6344();
      v31 = v30;
    }

    else
    {
      v31 = MEMORY[0x277D84F90];
    }

    if (*(v31 + 16))
    {
      sub_25BAD6FB0(v31 + 32, v33);

      sub_25BBDFAB4(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation);
      sub_25BBDE37C();
      sub_25BBDD638(v33);
      sub_25BA9AC78(v33);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBCD7A8(float a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61C0, &qword_25BCC8A30);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v7 = sub_25BCB614C();
  *(inited + 16) = a3;
  *(inited + 24) = v7;
  v8 = sub_25BBDAC0C(a1);
  if (v3)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v8;
    v11 = sub_25BCB614C();
    v35 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v12 = 0;
    v34 = isUniquelyReferenced_nonNull_native;
    while (v35 != v12)
    {
      if (v12 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v13 = *(*(isUniquelyReferenced_nonNull_native + 8 * v12 + 32) + 16);

      v14 = sub_25BAC44E4();
      v16 = v15;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36[0] = v11;
      v17 = sub_25BA9266C(v14, v16);
      if (__OFADD__(v11[2], (v18 & 1) == 0))
      {
        goto LABEL_27;
      }

      v19 = v17;
      v20 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v21 = sub_25BA9266C(v14, v16);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_31;
        }

        v19 = v21;
      }

      v11 = v36[0];
      if (v20)
      {
        *(*(v36[0] + 56) + 8 * v19) = v12;
      }

      else
      {
        *(v36[0] + 8 * (v19 >> 6) + 64) |= 1 << v19;
        v23 = (v11[6] + 16 * v19);
        *v23 = v14;
        v23[1] = v16;
        *(v11[7] + 8 * v19) = v12;
        v24 = v11[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_28;
        }

        v11[2] = v26;
      }

      ++v12;
      isUniquelyReferenced_nonNull_native = v34;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v27 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v27)
    {
      v36[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v28 = 32;
      do
      {
        v29 = *(*(isUniquelyReferenced_nonNull_native + v28) + 16);

        sub_25BCB723C();
        v30 = *(v36[0] + 16);
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v28 += 8;
        --v27;
      }

      while (v27);

      v31 = v36[0];
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v36[0]) = 0;
    v36[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    if (sub_25BACF298(v31, v36))
    {
      sub_25BAD6344();
      v33 = v32;
    }

    else
    {
      v33 = MEMORY[0x277D84F90];
    }

    if (*(v33 + 16))
    {
      sub_25BAD6FB0(v33 + 32, v36);

      sub_25BBDFAB4(&qword_27FBB6140, type metadata accessor for BatchNormGradientOperation);
      sub_25BBDE37C();
      sub_25BBDD638(v36);
      sub_25BA9AC78(v36);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBCDC5C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6198, &qword_25BCC88D0);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v5 = sub_25BCB614C();
  *(inited + 16) = a2;
  *(inited + 24) = v5;
  v6 = sub_25BBCCCC4();
  if (v2)
  {
  }

  isUniquelyReferenced_nonNull_native = v6;
  v9 = sub_25BCB614C();
  v34 = *(isUniquelyReferenced_nonNull_native + 16);
  sub_25BCB617C();
  v10 = 0;
  v32 = isUniquelyReferenced_nonNull_native;
  while (v34 != v10)
  {
    if (v10 >= *(isUniquelyReferenced_nonNull_native + 16))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v11 = *(*(isUniquelyReferenced_nonNull_native + 8 * v10 + 32) + 16);

    v12 = sub_25BAC44E4();
    v14 = v13;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33[0] = v9;
    v15 = sub_25BA9266C(v12, v14);
    if (__OFADD__(v9[2], (v16 & 1) == 0))
    {
      goto LABEL_27;
    }

    v17 = v15;
    v18 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
    if (sub_25BCB745C())
    {
      v19 = sub_25BA9266C(v12, v14);
      if ((v18 & 1) != (v20 & 1))
      {
        goto LABEL_31;
      }

      v17 = v19;
    }

    v9 = v33[0];
    if (v18)
    {
      *(*(v33[0] + 56) + 8 * v17) = v10;
    }

    else
    {
      *(v33[0] + 8 * (v17 >> 6) + 64) |= 1 << v17;
      v21 = (v9[6] + 16 * v17);
      *v21 = v12;
      v21[1] = v14;
      *(v9[7] + 8 * v17) = v10;
      v22 = v9[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_28;
      }

      v9[2] = v24;
    }

    ++v10;
    isUniquelyReferenced_nonNull_native = v32;
  }

  if (qword_28154F2C8 == -1)
  {
    goto LABEL_16;
  }

LABEL_29:
  swift_once();
LABEL_16:
  v25 = *(isUniquelyReferenced_nonNull_native + 16);
  if (v25)
  {
    v33[0] = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v26 = 32;
    do
    {
      v27 = *(*(isUniquelyReferenced_nonNull_native + v26) + 16);

      sub_25BCB723C();
      v28 = *(v33[0] + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      v26 += 8;
      --v25;
    }

    while (v25);

    v29 = v33[0];
  }

  else
  {

    v29 = MEMORY[0x277D84F90];
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v33[0]) = 0;
  v33[1] = MEMORY[0x277D84FA0];
  sub_25BCB617C();
  if (sub_25BACF298(v29, v33))
  {
    sub_25BAD6344();
    v31 = v30;
  }

  else
  {
    v31 = MEMORY[0x277D84F90];
  }

  if (*(v31 + 16))
  {
    sub_25BAD6FB0(v31 + 32, v33);

    sub_25BBDFAB4(qword_28154E000, type metadata accessor for ReLUGradientOperation);
    sub_25BBDE37C();
    sub_25BBDD638(v33);
    sub_25BA9AC78(v33);
  }

  __break(1u);
LABEL_31:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BBCE0B4(float a1, float a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61B8, &qword_25BCC8960);
  inited = swift_initStackObject();
  type metadata accessor for TensorRepresentation();

  v11 = sub_25BCB614C();
  *(inited + 16) = a4;
  *(inited + 24) = v11;
  v12 = sub_25BBDA5F0(a1, a2, inited, a5);
  if (v5)
  {
    swift_setDeallocating();
    sub_25BBDE814(MEMORY[0x277D85008]);
    return swift_deallocClassInstance();
  }

  else
  {
    isUniquelyReferenced_nonNull_native = v12;
    v15 = sub_25BCB614C();
    v40 = *(isUniquelyReferenced_nonNull_native + 16);
    sub_25BCB617C();
    v16 = 0;
    v38 = isUniquelyReferenced_nonNull_native;
    while (v40 != v16)
    {
      if (v16 >= *(isUniquelyReferenced_nonNull_native + 16))
      {
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v17 = *(*(isUniquelyReferenced_nonNull_native + 8 * v16 + 32) + 16);

      v18 = sub_25BAC44E4();
      v20 = v19;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39[0] = v15;
      v21 = sub_25BA9266C(v18, v20);
      if (__OFADD__(v15[2], (v22 & 1) == 0))
      {
        goto LABEL_27;
      }

      v23 = v21;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61A0, &qword_25BCC88D8);
      if (sub_25BCB745C())
      {
        v25 = sub_25BA9266C(v18, v20);
        if ((v24 & 1) != (v26 & 1))
        {
          goto LABEL_31;
        }

        v23 = v25;
      }

      v15 = v39[0];
      if (v24)
      {
        *(*(v39[0] + 56) + 8 * v23) = v16;
      }

      else
      {
        *(v39[0] + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v27 = (v15[6] + 16 * v23);
        *v27 = v18;
        v27[1] = v20;
        *(v15[7] + 8 * v23) = v16;
        v28 = v15[2];
        v29 = __OFADD__(v28, 1);
        v30 = v28 + 1;
        if (v29)
        {
          goto LABEL_28;
        }

        v15[2] = v30;
      }

      ++v16;
      isUniquelyReferenced_nonNull_native = v38;
    }

    if (qword_28154F2C8 == -1)
    {
      goto LABEL_16;
    }

LABEL_29:
    swift_once();
LABEL_16:
    v31 = *(isUniquelyReferenced_nonNull_native + 16);
    if (v31)
    {
      v39[0] = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v32 = 32;
      do
      {
        v33 = *(*(isUniquelyReferenced_nonNull_native + v32) + 16);

        sub_25BCB723C();
        v34 = *(v39[0] + 16);
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        v32 += 8;
        --v31;
      }

      while (v31);

      v35 = v39[0];
    }

    else
    {

      v35 = MEMORY[0x277D84F90];
    }

    type metadata accessor for LazyTensorFunctionBuilder();
    LOBYTE(v39[0]) = 0;
    v39[1] = MEMORY[0x277D84FA0];
    sub_25BCB617C();
    if (sub_25BACF298(v35, v39))
    {
      sub_25BAD6344();
      v37 = v36;
    }

    else
    {
      v37 = MEMORY[0x277D84F90];
    }

    if (*(v37 + 16))
    {
      sub_25BAD6FB0(v37 + 32, v39);

      sub_25BBDFAB4(&qword_27FBB6148, type metadata accessor for BatchNormOperation);
      sub_25BBDE37C();
      sub_25BBDD638(v39);
      sub_25BA9AC78(v39);

      swift_setDeallocating();
      sub_25BBDE814(MEMORY[0x277D85008]);
      swift_deallocClassInstance();
    }

    __break(1u);
LABEL_31:
    result = sub_25BCB795C();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBCE858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25BAB3058();
  if (!v5 || (Class = object_getClass(v5), result = swift_unknownObjectRelease(), Class != _TtC14NeuralNetworks17ConstantOperation))
  {
    sub_25BBA41B4();
    OUTLINED_FUNCTION_14_0();
    *v8 = xmmword_25BCC8160;
    *(v8 + 16) = a2;
    *(v8 + 24) = a3;
    *(v8 + 32) = 4;
    swift_willThrow();
    return sub_25BCB617C();
  }

  return result;
}

void sub_25BBCE90C()
{
  OUTLINED_FUNCTION_17_1();
  v4 = OUTLINED_FUNCTION_197(v3);
  if (!v5)
  {
    sub_25BBA41B4();
    OUTLINED_FUNCTION_14_0();
    *v35 = xmmword_25BCC8160;
    *(v35 + 16) = 0xD000000000000034;
    *(v35 + 24) = 0x800000025BCE0750;
    v36 = 2;
LABEL_20:
    *(v35 + 32) = v36;
    swift_willThrow();
    goto LABEL_37;
  }

  v6 = v0;
  v7 = v4;
  v8 = sub_25BB49D04();
  sub_25BAB4D78(1, (v8 & 0xC000000000000001) == 0, v8);
  if ((v8 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](1, v8);
  }

  else
  {
    v9 = *(v8 + 40);
  }

  OUTLINED_FUNCTION_196();
  sub_25BBCE858(v10, v11, v12);

  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    inited = swift_initStackObject();
    OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
    sub_25BB49D04();
    OUTLINED_FUNCTION_91_3();
    sub_25BAB4D78(0, v14, v6);
    if (v2)
    {
      v15 = MEMORY[0x25F8779B0](0, v6);
    }

    else
    {
      v15 = *(v6 + 32);
    }

    inited[3].n128_u64[0] = v15;
    inited[3].n128_u64[1] = 0x685F746867696577;
    inited[4].n128_u64[0] = 0xE900000000000068;
    v16 = sub_25BB49D04();
    sub_25BAB4D78(1, (v16 & 0xC000000000000001) == 0, v16);
    if ((v16 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x25F8779B0](1, v16);
    }

    else
    {
      v17 = *(v16 + 40);
    }

    inited[4].n128_u64[1] = v17;
    type metadata accessor for TensorRepresentation();
    sub_25BCB614C();
    v18 = sub_25BB4AD90();
    if ((v19 & 1) == 0)
    {
      v20 = v18;
      sub_25BB49D04();
      OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_214(v21, v22);
      if (v15)
      {
        OUTLINED_FUNCTION_213();
      }

      else
      {
        v23 = *(v6 + 8 * v20 + 32);
      }

      v15 = 0x695F746867696577;

      OUTLINED_FUNCTION_196();
      sub_25BBCE858(v24, v25, v26);

      v27 = sub_25BB49D04();
      OUTLINED_FUNCTION_214(v27, (v27 & 0xC000000000000001) == 0);
      if ((v27 & 0xC000000000000001) != 0)
      {
        OUTLINED_FUNCTION_213();
      }

      else
      {
        v28 = *(v27 + 8 * v20 + 32);
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_140();
      OUTLINED_FUNCTION_196();
      sub_25BC1A420();
    }

    v29 = sub_25BB4ADA8();
    if ((v30 & 1) == 0)
    {
      v31 = v29;
      sub_25BB49D04();
      OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_214(v32, v33);
      if (v15)
      {
        OUTLINED_FUNCTION_213();
        v34 = v147;
      }

      else
      {
        v34 = *(v6 + 8 * v31 + 32);
      }

      sub_25BBCE858(v34, 1935763810, 0xE400000000000000);

      sub_25BB49D04();
      OUTLINED_FUNCTION_91_3();
      OUTLINED_FUNCTION_214(v37, v38);
      if (v34)
      {
        OUTLINED_FUNCTION_213();
      }

      else
      {
        v39 = *(v6 + 8 * v31 + 32);
      }

      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_140();
      sub_25BC1A420();
    }

    v40 = sub_25BB4ADD4();
    if (v41)
    {

      sub_25BBA41B4();
      OUTLINED_FUNCTION_14_0();
      *v35 = xmmword_25BCC8160;
      *(v35 + 16) = xmmword_25BCC8190;
      v36 = 3;
      goto LABEL_20;
    }

    v42 = v40;
    v43 = sub_25BB49D04();
    sub_25BAB4D78(v42, (v43 & 0xC000000000000001) == 0, v43);
    if ((v43 & 0xC000000000000001) != 0)
    {
      MEMORY[0x25F8779B0](v42, v43);
    }

    else
    {
      v44 = *(v43 + 8 * v42 + 32);
    }

    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_196();
    sub_25BC1A420();
    v45 = v6;
    v46 = sub_25BB49D04();
    v47 = __OFADD__(v42, 1);
    v48 = v42 + 1;
    if (v47)
    {
      __break(1u);
    }

    else
    {
      v45 = v46;
      v49 = v46 & 0xC000000000000001;
      sub_25BAB4D78(v48, (v46 & 0xC000000000000001) == 0, v46);
      if (!v49)
      {
        v50 = *(v45 + 8 * v48 + 32);

LABEL_31:

        swift_isUniquelyReferenced_nonNull_native();
        sub_25BC1A420();
        v51 = v415;
        v52 = 0x64726177726F66;
        if (*(v6 + 96))
        {
          v52 = 0x7463657269646962;
        }

        v423 = v52;
        if (*(v6 + 96))
        {
          v53 = 0xED00006C616E6F69;
        }

        else
        {
          v53 = 0xE700000000000000;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
        v54 = swift_allocObject();
        *(v54 + 16) = xmmword_25BCBAE90;
        *(v54 + 32) = sub_25BB4AE88();
        *(v54 + 40) = sub_25BB4AF2C();
        *(v54 + 48) = sub_25BB4AF84();
        OUTLINED_FUNCTION_54();
        v225 = swift_allocObject();
        *(v225 + 16) = xmmword_25BCBAE70;
        *(v225 + 32) = sub_25BB4AF2C();
        *(v225 + 40) = sub_25BB4AF84();
        OUTLINED_FUNCTION_54();
        v189 = swift_allocObject();
        *(v189 + 16) = xmmword_25BCBAE70;
        *(v189 + 32) = sub_25BB4AF2C();
        *(v189 + 40) = sub_25BB4AF84();
        v243 = swift_allocObject();
        *(v243 + 16) = xmmword_25BCBAE90;
        *(v243 + 32) = 1;
        *(v243 + 40) = sub_25BB4AF2C();
        *(v243 + 48) = sub_25BB4AF84();
        v55 = OUTLINED_FUNCTION_5_17();
        v57 = v56;
        sub_25BBE0D70(v55, v58, v56, type metadata accessor for LSTMLayerOperation, v59, v60, v61, v62, v148, v157, v165, v173, v181, v189, v198, v207, v216, v225, v234, v243, v250, v257, v264, &unk_25BCBFD48, 3, 6, 2, 4, v287, v291, v295, v299, v303, v307, v311, v315, v319, v323, v327, v331, v335, v339, v343, v347, v351, v355, v359, v363, v367, v371, v375, v379, v383, v387, v391, v395, v399, v403, v407, v411);
        v416 = v63;
        v417 = v64;
        MEMORY[0x25F876C90](0x74735F6C6C65635FLL, 0xEB00000000657461);
        v65 = sub_25BBCBD8C(v51);
        v199 = v66;
        v208 = v65;
        v235 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
        v67 = swift_initStackObject();
        *(v67 + 16) = xmmword_25BCC4630;
        *(v67 + 32) = 0x6F69746365726964;
        *(v67 + 40) = 0xE90000000000006ELL;
        *(v67 + 48) = v423;
        *(v67 + 56) = v53;
        *(v67 + 64) = 4;
        *(v67 + 72) = 0xD000000000000014;
        *(v67 + 80) = 0x800000025BCE0790;
        *(v67 + 88) = xmmword_25BCC8170;
        *(v67 + 104) = 4;
        *(v67 + 112) = 0x7463615F6C6C6563;
        *(v67 + 120) = 0xEF6E6F6974617669;
        *(v67 + 128) = xmmword_25BCC8180;
        *(v67 + 144) = 4;
        *(v67 + 152) = 0x6974617669746361;
        *(v67 + 160) = 0xEA00000000006E6FLL;
        *(v67 + 168) = xmmword_25BCC8180;
        *(v67 + 184) = 4;
        *(v67 + 192) = 0x735F74757074756FLL;
        *(v67 + 200) = 0xEF65636E65757165;
        *(v67 + 208) = xmmword_25BCC06A0;
        *(v67 + 224) = 0;
        sub_25BB060F0(v423, v53, 4);
        v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
        v68 = sub_25BCB614C();
        v69 = OUTLINED_FUNCTION_190(v68);
        sub_25BAFA0CC(v69, v70, v71, v72, v73, v74, v75, v76, v77, v149, v158, v166, v174, v182, v190, v199, v208, v217, v226, v235);
        OUTLINED_FUNCTION_157();
        v78 = sub_25BC0C4D8();
        sub_25BAFCD30(v78);
        v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
        v79 = swift_initStackObject();
        OUTLINED_FUNCTION_17_29(v79, v80, v81, v82, v83, v84, v85, v86, v150, v417, v51, v175, v183, v191, v200, v209, v218, v227, v236, v244, v53, v258, v417, v270, v87);
        v88 = v271;
        sub_25BBE0998(v6, 0, v7, v57, type metadata accessor for LSTMLayerOperation, v271, sub_25BC60CB8, v89, v151, v159, v167, sub_25BC60CB8, type metadata accessor for LSTMLayerOperation, v192, v201, v210, v219, v228, v237, v245, v251, v259, v265, v271, v276, v278, v416, v284, v288, v292, v296, v300, v304, v308, v312, v316, v320, v324, v328, v332, v336, v340, v344, v348, v352, v356, v360, v364, v368, v372, v376, v380, v384, v388, v392, v396, v400, v404, v408, v412);
        sub_25BCB617C();
        v90 = OUTLINED_FUNCTION_141();
        sub_25BBE0998(v90, v91, v92, v57, type metadata accessor for LSTMLayerOperation, v88, sub_25BC60CB8, v93, v152, v160, v168, v176, v184, v193, v202, v211, v220, v229, v238, v246, v252, v260, v266, v272, v277, v279, v280, v285, v289, v293, v297, v301, v305, v309, v313, v317, v321, v325, v329, v333, v337, v341, v345, v349, v353, v357, v361, v365, v369, v373, v377, v381, v385, v389, v393, v397, v401, v405, v409, v413);
        *&v418 = v94;
        *(&v418 + 1) = v95;
        *&v419 = v230;
        BYTE8(v419) = 10;
        v96 = sub_25BCB614C();
        v97 = OUTLINED_FUNCTION_190(v96);
        sub_25BAF9B54(v97);
        OUTLINED_FUNCTION_57_2();
        swift_setDeallocating();
        sub_25BC0C4EC();
        sub_25BAFC990();
        v98 = *(v6 + 120);
        v421[0] = *(v6 + 104);
        v421[1] = v98;
        v422[0] = *(v6 + 136);
        *(v422 + 10) = *(v6 + 146);
        sub_25BBA18D8(1836348268, 0xE400000000000000, v212, v203, v169, v161, sub_25BC60CB8, v417, v421);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
        v99 = swift_initStackObject();
        v100 = OUTLINED_FUNCTION_17_19(v99, xmmword_25BCBAE50);
        v100[3].n128_u64[0] = v281;
        v100[3].n128_u64[1] = v267;
        v101 = MEMORY[0x277D837D0];
        v102 = sub_25BCB614C();
        v282 = sub_25BBCC040(v102);
        v104 = v103;
        v105 = swift_initStackObject();
        OUTLINED_FUNCTION_17_29(v105, v106, v107, v108, v109, v110, v111, v112, v153, v161, v169, v177, v185, v194, v203, v212, v221, v230, v239, v247, v253, v261, v267, v273, v113);
        OUTLINED_FUNCTION_23_21();
        *(v114 + 32) = v115;
        *(v114 + 40) = v116;
        *(v7 + 48) = v248;
        *(v7 + 56) = 0;
        *(v7 + 64) = 7;
        sub_25BCB617C();
        v117 = v262;
        OUTLINED_FUNCTION_64_4();
        v118 = sub_25BCB614C();
        v119 = OUTLINED_FUNCTION_190(v118);
        sub_25BAFA0CC(v119, v120, v121, v122, v123, v124, v125, v126, v127, v154, v162, v170, v178, v186, v195, v204, v213, v222, v231, v240);
        OUTLINED_FUNCTION_157();
        v128 = sub_25BC0C4D8();
        sub_25BAFCD30(v128);
        v129 = swift_initStackObject();
        OUTLINED_FUNCTION_17_29(v129, v130, v131, v132, v133, v134, v135, v136, v155, v163, v171, v179, v187, v196, v205, v214, v223, v232, v241, v248, v254, v262, v268, v274, v137);
        v138 = OUTLINED_FUNCTION_89_3();
        sub_25BBE0998(v138, v139, v140, &qword_27FBB4938, v188, v275, v180, v141, v156, v164, v172, v180, v188, v197, v206, v215, v224, v233, v242, v249, v255, v263, v269, v275, 1, 2, v282, v286, v290, v294, v298, v302, v306, v310, v314, v318, v322, v326, v330, v334, v338, v342, v346, v350, v354, v358, v362, v366, v370, v374, v378, v382, v386, v390, v394, v398, v402, v406, v410, v414);
        v142 = sub_25BCB614C();
        v143 = OUTLINED_FUNCTION_190(v142);
        sub_25BAF9B54(v143);
        OUTLINED_FUNCTION_147();
        sub_25BC0C4EC();
        sub_25BAFC990();
        v144 = *(v6 + 120);
        v418 = *(v6 + 104);
        v419 = v144;
        v420[0] = *(v6 + 136);
        *(v420 + 10) = *(v6 + 146);
        v145 = OUTLINED_FUNCTION_6_5();
        sub_25BBA1A84(v145, v146, v283, v104, v101, v417, v117, v417, &v418);
        sub_25BB06134(v423, v256, 4);

        goto LABEL_37;
      }
    }

    MEMORY[0x25F8779B0](v48, v45);
    goto LABEL_31;
  }

LABEL_37:
  OUTLINED_FUNCTION_16();
}

void *sub_25BBCF4E8@<X0>(uint64_t a1@<X8>)
{
  v6 = *(*(v1 + 40) + 160);
  v3 = sub_25BC8FACC();

  return sub_25BB949D8(v3, v4, a1, 0x2EDBE6FFu);
}

uint64_t sub_25BBCF540()
{
  OUTLINED_FUNCTION_42_10();
  v2 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = sub_25BCB614C();
  v6 = OUTLINED_FUNCTION_40_12(v5);
  sub_25BAD8178(v6);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v7);
  if (v2 == 17 || v2 == 14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v9 = swift_initStackObject();
    OUTLINED_FUNCTION_96_2(v9, v10, v11, v12, v13, v14, v15, v16, v67, v71, v123, v122, v17);
    *(v18 + 32) = 0x6E6F6C69737065;
    *(v18 + 40) = 0xE700000000000000;
    sub_25BBCF4E8(v18 + 48);
    v19 = sub_25BCB614C();
    v20 = OUTLINED_FUNCTION_63_1(v19);
    sub_25BAFA0CC(v20, v21, v22, v23, v24, v25, v26, v27, v28, v68, v72, v76, v80, 1, 2, v87, v89, v91, v93, v95);
    OUTLINED_FUNCTION_216();
    sub_25BC0C4D8();
    OUTLINED_FUNCTION_62_3();
  }

  else
  {
    v29 = sub_25BCB614C();
    v30 = OUTLINED_FUNCTION_63_1(v29);
    sub_25BAFA0CC(v30, v31, v32, v33, v34, v35, v36, v37, v38, v67, v71, v123, v122, 1, 2, v87, v89, v91, v93, v95);
    v122 = v39;
  }

  sub_25BAFCD30(v39);
  v41 = v122;
  v40 = v123;
  v73 = sub_25BBCBBB4(v2);
  v43 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v44 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v44, v45, v46, v47, v48, v49, v50, v51, v69, v73, v77, v81, v52);
  v53 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v53, v54, v1, v55, v56, v57, v58, v59, v70, v74, v78, v82, v84, v86, v88, v90, v92, v94, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138);
  v44[2].n128_u64[0] = v60;
  v44[2].n128_u64[1] = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v62 = swift_initStackObject();
  OUTLINED_FUNCTION_67_3(v62, v85);
  sub_25BAB9E04(v63);
  v64 = v62[2].n128_u8[8];
  v44[3].n128_u64[0] = v62[2].n128_u64[0];
  v44[3].n128_u8[8] = v64;
  swift_setDeallocating();
  sub_25BCB617C();
  sub_25BAB9E1C();
  v124 = sub_25BCB614C();
  v65 = sub_25BAF9B54(v44);
  swift_setDeallocating();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_163();
  OUTLINED_FUNCTION_118_2();
  sub_25BBA18D8(v75, v43, v83, v79, v41, v40, v65, v124, v4);
}

uint64_t sub_25BBCFD84()
{
  result = 0x6C61757165;
  switch(*(v0 + 130))
  {
    case 1:
      result = 0x72657461657267;
      break;
    case 2:
      result = 0x5F72657461657267;
      break;
    case 3:
      result = 1936942444;
      break;
    case 4:
      result = 0x7571655F7373656CLL;
      break;
    case 5:
      result = 0x617571655F746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

void sub_25BBCFE3C()
{
  OUTLINED_FUNCTION_17_1();
  v4 = v0;
  v5 = *(v0 + 40);
  v564 = v3;
  if (*(v5 + 160) == 12)
  {
    v6 = v3;

    v8 = sub_25BBA0B64(v7);
    v10 = v9;

    v11 = *(v0 + 48);

    v13 = sub_25BBA0B64(v12);
    v339 = v14;
    v356 = v13;

    sub_25BBE0D70(v0, v6, qword_28154D158, type metadata accessor for BinaryComparisonOperation, &unk_25BCD4048, v15, v16, v17, v231, v247, v263, v278, v293, v308, v322, v339, v356, &unk_25BCD4048, type metadata accessor for BinaryComparisonOperation, v398, v407, v415, v423, v432, v440, v1, v457, v460, v462, v465, v468, v471, v474, v477, v480, v483, v486, v489, v492, v495, v498, v501, v504, v507, v510, v513, v516, v519, v522, v525, v528, v531, v534, v537, v540, v543, v546, v549, v552, v555);
    *&v561 = v18;
    *(&v561 + 1) = v19;
    OUTLINED_FUNCTION_201_0();
    MEMORY[0x25F876C90]();
    sub_25BBE0D70(v0, v6, qword_28154D158, type metadata accessor for BinaryComparisonOperation, &unk_25BCD4048, v20, v21, v22, v232, v248, v264, v279, v294, v309, v323, v340, v357, v373, v386, v399, *(&v561 + 1), v416, v424, v433, v561, v449, v458, v461, v463, v466, v469, v472, v475, v478, v481, v484, v487, v490, v493, v496, v499, v502, v505, v508, v511, v514, v517, v520, v523, v526, v529, v532, v535, v538, v541, v544, v547, v550, v553, v556);
    *&v561 = v23;
    *(&v561 + 1) = v24;
    OUTLINED_FUNCTION_201_0();
    MEMORY[0x25F876C90]();
    v25 = v561;
    v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    inited = swift_initStackObject();
    v27 = OUTLINED_FUNCTION_182(inited, xmmword_25BCBAE50);
    v27[3].n128_u64[0] = v8;
    v27[3].n128_u64[1] = v10;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v29 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_77_2();
    v30 = sub_25BCB614C();
    v31 = OUTLINED_FUNCTION_40_12(v30);
    sub_25BAFA1D4(v31, v32, v33, v34, v35, v36, v37, v38, v233, v249, v265, v280, v295, v310, v324, v341, v358);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C500();
    OUTLINED_FUNCTION_48_8();
    sub_25BAFCBDC(v39);
    v40 = *(&v561 + 1);
    v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v41 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v41, v42, v43, v44, v45, v46, v47, v48, v234, v250, v266, v561, v296, v311, v325, v342, v359, v374, v387, v400, v408, *(&v25 + 1), v425, v25, v441, v450, v49);
    v51 = OUTLINED_FUNCTION_44_7(v50, 1887007844);
    *(v51 + 48) = xmmword_25BCC81A0;
    *(v51 + 64) = 4;
    OUTLINED_FUNCTION_77_2();
    v52 = sub_25BCB614C();
    v53 = OUTLINED_FUNCTION_40_12(v52);
    sub_25BAFA0CC(v53, v54, v55, v56, v57, v58, v59, v60, v61, v235, v251, v267, v281, 0x3233746E69, 0xE500000000000000, v326, v343, v360, v375, v388);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    OUTLINED_FUNCTION_62_3();
    sub_25BAFCD30(v62);
    v63 = v561;
    v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v64 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v64, v65, v66, v67, v68, v69, v70, v71, v236, v252, v268, v282, v297, v312, v327, v344, v361, v376, v389, v401, v409, v417, v426, v434, v442, v451, v72);
    *(v73 + 32) = v443;
    inited[2].n128_u64[1] = v410;
    OUTLINED_FUNCTION_211(*(v4 + 40));
    sub_25BCB617C();
    OUTLINED_FUNCTION_77_2();
    v74 = sub_25BCB614C();
    v75 = OUTLINED_FUNCTION_40_12(v74);
    sub_25BAF9B54(v75);
    OUTLINED_FUNCTION_147();
    sub_25BC0C4EC();
    sub_25BAFC990();
    v76 = *(&v561 + 1);
    v561 = 0u;
    v562 = 0u;
    memset(v563, 0, 25);
    BYTE9(v563[1]) = 1;
    OUTLINED_FUNCTION_90_1();
    OUTLINED_FUNCTION_176();
    sub_25BBA1A84(v77, v78, v79, v80, v63, *(&v63 + 1), v29, v76, &v561);

    v81 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v81, v82, v83, v84, v85, v86, v87, v88, v237, v253, v269, v283, v298, v313, v328, v345, v362, v377, v390, v402, v410, v418, v427, v435, v443, v452, v89);
    v91 = OUTLINED_FUNCTION_136(v90);
    v91[5] = v92;
    v91[6] = v363;
    v91[7] = v346;
    v93 = sub_25BCB614C();
    v94 = OUTLINED_FUNCTION_73_3(v93);
    sub_25BAFA1D4(v94, v95, v96, v97, v98, v99, v100, v101, v238, v254, v270, v284, v299, v314, v329, v346, v363);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v102 = sub_25BC0C500();
    sub_25BAFCBDC(v102);
    v103 = *(&v558[0] + 1);
    v104 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v104, v105, v106, v107, v108, v109, v110, v111, v239, v255, v271, v285, v300, v315, v330, v347, v364, v378, v391, v403, v411, v419, v428, v436, v444, v453, v112);
    v114 = OUTLINED_FUNCTION_184(v113, 1887007844);
    *(v114 + 48) = v301;
    *(v114 + 64) = 4;
    v115 = sub_25BCB614C();
    v116 = OUTLINED_FUNCTION_73_3(v115);
    sub_25BAFA0CC(v116, v117, v118, v119, v120, v121, v122, v123, v124, v240, v256, v28, v286, v301, *(&v301 + 1), v331, v348, v365, v379, v392);
    OUTLINED_FUNCTION_104_3();
    v125 = sub_25BC0C4D8();
    *&v558[0] = v28;
    sub_25BAFCD30(v125);
    v126 = *(&v558[0] + 1);
    v127 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v127, v128, v129, v130, v131, v132, v133, v134, v241, v257, v272, v287, v302, v316, v332, v349, v366, v380, v393, v404, v412, v420, v429, v437, v445, v454, v135);
    *(v136 + 32) = v438;
    v560 = v421;
    OUTLINED_FUNCTION_211(*(v4 + 48));
    sub_25BCB617C();
    OUTLINED_FUNCTION_111_3();
    v137 = sub_25BCB614C();
    v138 = OUTLINED_FUNCTION_73_3(v137);
    sub_25BAF9B54(v138);
    OUTLINED_FUNCTION_157();
    sub_25BC0C4EC();
    sub_25BAFC990();
    v139 = OUTLINED_FUNCTION_90_1();
    sub_25BBA1A84(v139, v140, v40, v103, v28, v126, v28, *(&v558[0] + 1), &v561);

    v141 = sub_25BBCFD84();
    v350 = v142;
    v367 = v141;
    v143 = swift_allocObject();
    v144 = OUTLINED_FUNCTION_17_19(v143, xmmword_25BCBAE70);
    v144[3].n128_u64[0] = v446;
    v144[3].n128_u64[1] = v413;
    v145 = OUTLINED_FUNCTION_120_2(v144);
    *(v145 + 80) = v438;
    *(v145 + 88) = v421;
    v146 = MEMORY[0x277D84F90];
    v147 = sub_25BCB614C();
    v148 = OUTLINED_FUNCTION_73_3(v147);
    sub_25BAFA1D4(v148, v149, v150, v151, v152, v153, v154, v155, v242, v258, v273, v288, v303, v317, v333, v350, v367);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v156 = sub_25BC0C500();
    sub_25BAFCBDC(v156);
    *(&v558[0] + 1) = sub_25BCB614C();
    sub_25BAFA0CC(v146, v157, v158, v159, v160, v161, v162, v163, v164, v243, v259, v274, v289, v304, v318, v334, v351, v368, v381, v394);
    *&v558[0] = v165;
    sub_25BAFCD30(v165);
    v166 = v558[0];
    v167 = OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_14_26(v167, v168, v169, v170, v171, v172, v173, v174, v244, v260, v275, v290, v305, v319, v335, v352, v369, v382, v395, v405, v413, v421, v430, v438, v40, v455, v175);
    v176 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v176, v177, v564, qword_28154D158, v396, v383, v178, v179, v245, v261, v276, v291, v306, v320, v336, v353, v370, v383, v396, v406, v414, v422, v431, v439, v447, v456, 1, 2, v464, v467, v470, v473, v476, v479, v482, v485, v488, v491, v494, v497, v500, v503, v506, v509, v512, v515, v518, v521, v524, v527, v530, v533, v536, v539, v542, v545, v548, v551, v554, v557);
    v559 = v180;
    v560 = v181;
    OUTLINED_FUNCTION_105_2(*(v4 + 56), *(v4 + 64));
    v182 = sub_25BCB614C();
    v183 = OUTLINED_FUNCTION_73_3(v182);
    v184 = sub_25BAF9B54(v183);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v558[0] = v184;
    sub_25BAFC990();
    v185 = *(&v558[0] + 1);
    v186 = *(v4 + 88);
    v558[0] = *(v4 + 72);
    v558[1] = v186;
    OUTLINED_FUNCTION_187(v558);
    OUTLINED_FUNCTION_11_21();
    sub_25BBA1A84(v187, v188, v189, v190, v166, *(&v166 + 1), v184, v185, v558);
  }

  else
  {
    v459 = sub_25BBCFD84();
    v448 = v191;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    v192 = swift_initStackObject();
    v193 = OUTLINED_FUNCTION_17_19(v192, xmmword_25BCBAE70);
    v193[3].n128_u64[0] = v5;
    v193[3].n128_u64[1] = 121;
    v193[4].n128_u64[0] = v194;
    v193[4].n128_u64[1] = *(v0 + 48);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v195 = MEMORY[0x277D837D0];
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_191();
    v196 = sub_25BCB614C();
    v197 = OUTLINED_FUNCTION_40_12(v196);
    sub_25BAD8178(v197);
    OUTLINED_FUNCTION_157();
    v198 = sub_25BC0C4C4();
    sub_25BAD8324(v198);
    OUTLINED_FUNCTION_26_0();
    OUTLINED_FUNCTION_191();
    v199 = sub_25BCB614C();
    v200 = OUTLINED_FUNCTION_179(v199);
    sub_25BAFA0CC(v200, v201, v202, v203, v204, v205, v206, v207, v208, v231, v247, v263, v278, v293, v308, v322, v338, v355, v372, v385);
    *&v561 = v209;
    sub_25BAFCD30(v209);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v210 = swift_initStackObject();
    *(v210 + 16) = xmmword_25BCBAE50;
    v211 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v211, v212, v564, v213, v214, v215, v216, v217, v246, v262, v277, v292, v307, v321, v337, v354, v371, v384, v397, v398, v407, v415, v423, v2, v448, v1, v459, v460, v462, v465, v468, v471, v474, v477, v480, v483, v486, v489, v492, v495, v498, v501, v504, v507, v510, v513, v516, v519, v522, v525, v528, v531, v534, v537, v540, v543, v546, v549, v552, v555);
    *(v210 + 32) = v218;
    *(v210 + 40) = v219;
    OUTLINED_FUNCTION_105_2(*(v4 + 56), *(v4 + 64));
    OUTLINED_FUNCTION_26_0();
    v220 = sub_25BCB614C();
    v221 = OUTLINED_FUNCTION_40_12(v220);
    sub_25BAF9B54(v221);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v561 = v195;
    sub_25BAFC990();
    v222 = *(v4 + 88);
    v561 = *(v4 + 72);
    v562 = v222;
    v563[0] = *(v4 + 104);
    *(v563 + 10) = *(v4 + 114);
    OUTLINED_FUNCTION_29_17();
    OUTLINED_FUNCTION_149_0();
    sub_25BBA18D8(v223, v224, v225, v226, v227, v228, v229, v230, &v561);
  }

  OUTLINED_FUNCTION_16();
}

void sub_25BBD0BEC()
{
  OUTLINED_FUNCTION_17_1();
  v124 = v1;
  v2 = v0;
  v4 = v3;
  v5 = *(v2 + 48);
  *v201 = *(*(v2 + 40) + 152);
  v6 = *(v5 + 16);
  sub_25BCB617C();
  static ShapeInference.broadcasting(_:toRank:)(v201, v6, &v204);

  v7 = v204;
  if (!v204)
  {
LABEL_5:
    *v201 = 0;
    *&v201[8] = 0xE000000000000000;
    sub_25BCB70FC();
    v205 = *v201;
    MEMORY[0x25F876C90](0xD000000000000017, 0x800000025BCE07B0);
    v106 = *(*(v2 + 40) + 152);
    v107 = sub_25BCB617C();
    v108 = MEMORY[0x25F876F80](v107, MEMORY[0x277D83B88]);
    MEMORY[0x25F876C90](v108);

    MEMORY[0x25F876C90](0x6E6172206F742060, 0xEB0000000060206BLL);
    *v201 = *(v5 + 16);
    v109 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v109);

    MEMORY[0x25F876C90](0xD000000000000022, 0x800000025BCE07D0);
    *v201 = v205;
    v203 = 3;
    sub_25BCB617C();
    OUTLINED_FUNCTION_50_7();
    sub_25BA97890();
  }

  v8 = *(v2 + 40);

  v165 = v4;
  v10 = sub_25BBA0B64(v9);
  v12 = v11;

  v13 = OUTLINED_FUNCTION_27_19();
  v208 = sub_25BB2BAEC(v13 & 0xFFFFFFFFFFFFLL | 0x6465000000000000, 0xE800000000000000);
  v172 = v14;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v16 = OUTLINED_FUNCTION_182(inited, xmmword_25BCBAE50);
  v16[3].n128_u64[0] = v10;
  v16[3].n128_u64[1] = v12;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_88_3();
  *&v201[8] = sub_25BCB614C();
  sub_25BAFA1D4(inited, v18, v19, v20, v21, v22, v23, v24, v110, v117, v124, v131, v137, v144, v151, v158, v165);
  OUTLINED_FUNCTION_183();
  swift_setDeallocating();
  v25 = sub_25BC0C500();
  *v201 = v10;
  sub_25BAFCBDC(v25);
  v138 = *&v201[8];
  v145 = *v201;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v26 = swift_initStackObject();
  OUTLINED_FUNCTION_142(v26, v27, v28, v29, v30, v31, v32, v33, v111, v118, v125, v132, v138, v145, v152, v159, v166, v172, v34);
  OUTLINED_FUNCTION_23_21();
  *(v35 + 32) = v36;
  *(v35 + 40) = v37;
  *(v35 + 48) = v7;
  *(v35 + 56) = 0;
  *(v35 + 64) = 7;
  sub_25BCB617C();
  OUTLINED_FUNCTION_88_3();
  *&v201[8] = sub_25BCB614C();
  sub_25BAFA0CC(v201, v38, v39, v40, v41, v42, v43, v44, v45, v112, v119, v126, v17, v139, v146, v153, v160, v167, v173, 1);
  OUTLINED_FUNCTION_183();
  swift_setDeallocating();
  v46 = sub_25BC0C4D8();
  *v201 = v10;
  sub_25BAFCD30(v46);
  v47 = *v201;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v48 = swift_initStackObject();
  OUTLINED_FUNCTION_142(v48, v49, v50, v51, v52, v53, v54, v55, v113, v120, v127, v133, v140, v147, v154, v161, v168, v174, v56);
  *(v57 + 32) = v208;
  *&v201[40] = v175;
  v58 = *(*(v2 + 40) + 160);
  *&v201[48] = v7;
  v201[56] = v58;
  sub_25BCB617C();
  OUTLINED_FUNCTION_88_3();
  *&v201[8] = sub_25BCB614C();
  v59 = sub_25BAF9B54(v201);
  swift_setDeallocating();
  sub_25BC0C4EC();
  *v201 = v59;
  sub_25BAFC990();
  v60 = *v201;
  v200 = 1;
  memset(v201, 0, sizeof(v201));
  v202 = 1;
  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_11_21();
  v5 = v169;
  sub_25BBA1A84(v61, v62, v63, v64, v47, *(&v47 + 1), v60, *(&v60 + 1), v201);

  v65 = sub_25BB2BAEC(0x746E6174736E6F63, 0xE800000000000000);
  v67 = v66;
  v68 = *(v2 + 40);
  *&v205 = *(v2 + 48);
  HIBYTE(v199[0]) = *(v68 + 160);
  sub_25BCB617C();
  v69 = sub_25BBD1250(&v205, v199 + 7);
  v71 = v70;

  *&v205 = v69;
  *(&v205 + 1) = v71;
  LOBYTE(v206) = 8;
  v148 = v69;
  swift_unknownObjectRetain();
  sub_25BBA10A8(&v205, v65, v67, v201);
  sub_25BB06134(v205, *(&v205 + 1), v206);
  v72 = swift_initStackObject();
  v73 = OUTLINED_FUNCTION_17_19(v72, xmmword_25BCBAE70);
  v73[3].n128_u64[0] = v208;
  v73[3].n128_u64[1] = v175;
  v74 = OUTLINED_FUNCTION_120_2(v73);
  *(v74 + 80) = v65;
  *(v74 + 88) = v67;
  v75 = MEMORY[0x277D84F90];
  v76 = sub_25BCB614C();
  v77 = OUTLINED_FUNCTION_40_12(v76);
  sub_25BAFA1D4(v77, v78, v79, v80, v81, v82, v83, v84, v114, v121, v128, v134, v141, v148, v155, v162, v169);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C500();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCBDC(v85);
  v86 = v205;
  v87 = sub_25BCB614C();
  *&v205 = v75;
  *(&v205 + 1) = v87;
  sub_25BAFCD30(v87);
  v88 = v205;
  v89 = swift_initStackObject();
  OUTLINED_FUNCTION_142(v89, v90, v91, v92, v93, v94, v95, v96, v115, v122, v129, v135, v142, v149, v156, v163, v170, v175, v97);
  sub_25BBE0998(v2, 0, v5, &qword_28154ED78, type metadata accessor for BroadcastOperation, &unk_25BCCE338, sub_25BAC683C, v98, v116, v123, v130, v136, v143, v150, v157, v164, v171, v176, v177, 2, v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, v196, v197, v198, v199[0], v199[1], v199[2], v199[3], v199[4], v199[5], v199[6], v199[7], v199[8], v199[9], v199[10], v199[11], v199[12], v199[13], v199[14], v199[15], v199[16], v199[17], v199[18]);
  v72[2].n128_u64[0] = v99;
  v72[2].n128_u64[1] = v100;
  v101 = *(v2 + 56);
  if (!*(v101 + 16))
  {
    __break(1u);
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_105_2(*(v101 + 32), *(v101 + 40));
  v102 = sub_25BCB614C();
  v103 = OUTLINED_FUNCTION_40_12(v102);
  sub_25BAF9B54(v103);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v205 = v5;
  OUTLINED_FUNCTION_133();
  v104 = v205;
  v105 = *(v2 + 80);
  v205 = *(v2 + 64);
  v206 = v105;
  v207[0] = *(v2 + 96);
  *(v207 + 10) = *(v2 + 106);
  sub_25BBA1A84(7107949, 0xE300000000000000, v86, *(&v86 + 1), v88, *(&v88 + 1), v104, *(&v104 + 1), v75);
  swift_unknownObjectRelease();

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD1250(uint64_t *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for NativeTensorStorage();
  v8 = v2;
  v7 = v3;
  if ((v3 - 1) > 0xA)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_25BCC8BA8[(v3 - 1)];
  }

  sub_25BCB617C();
  return sub_25BBC0AF4(&v8, &v7, v5, v4, v3);
}

void sub_25BBD12E8(_BYTE *a1, _BYTE *a2, char a3)
{
  switch(a3)
  {
    case 1:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 == v10)
        {
          goto LABEL_38;
        }

        __break(1u);
        goto LABEL_36;
      }

      return;
    case 2:
      if (a1)
      {
        v11 = a2 - a1;
        if (a2 - a1 >= -3)
        {
          goto LABEL_42;
        }

        __break(1u);
        goto LABEL_25;
      }

      return;
    case 3:
LABEL_25:
      if (a1)
      {
        v12 = a2 - a1;
        if (a2 - a1 >= -7)
        {
          goto LABEL_30;
        }

        __break(1u);
        goto LABEL_28;
      }

      return;
    case 4:
      if (a1)
      {
        v4 = a2 - a1;
        v3 = a2 == a1;
        if (a2 - a1 >= 0)
        {
          goto LABEL_14;
        }

        __break(1u);
        goto LABEL_12;
      }

      return;
    case 5:
LABEL_36:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 != v10)
        {
          goto LABEL_58;
        }

LABEL_38:
        if ((v13 + 1) >= 3)
        {
          OUTLINED_FUNCTION_137();
          v7 = &unk_25BCC8210;
          goto LABEL_52;
        }
      }

      return;
    case 6:
      if (a1)
      {
        v11 = a2 - a1;
        if (a2 - a1 < -3)
        {
          goto LABEL_59;
        }

LABEL_42:
        if ((v11 + 3) >= 7)
        {
          v6 = 4 * (v11 / 4);
          v7 = &unk_25BCC8200;
          goto LABEL_52;
        }
      }

      return;
    case 7:
LABEL_28:
      if (a1)
      {
        v12 = a2 - a1;
        if (a2 - a1 < -7)
        {
          goto LABEL_57;
        }

LABEL_30:
        if ((v12 + 7) >= 0xF)
        {
          v6 = 8 * (v12 / 8);
          v7 = &unk_25BCC81F0;
          goto LABEL_52;
        }
      }

      return;
    case 8:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 != v10)
        {
          goto LABEL_61;
        }

        if ((v15 + 1) >= 3)
        {
          OUTLINED_FUNCTION_137();
          v7 = &unk_25BCC8220;
          goto LABEL_52;
        }
      }

      return;
    case 9:
      if (a1)
      {
        OUTLINED_FUNCTION_185();
        if (v9 != v10)
        {
          goto LABEL_56;
        }

        if ((v8 + 1) >= 3)
        {
          OUTLINED_FUNCTION_137();
          v7 = &unk_25BCC8230;
          goto LABEL_52;
        }
      }

      return;
    case 10:
      if (a1)
      {
        v14 = a2 - a1;
        if (a2 - a1 < -3)
        {
          goto LABEL_60;
        }

        if ((v14 + 3) >= 7)
        {
          v6 = 4 * (v14 / 4);
          v7 = &unk_25BCC8240;
          goto LABEL_52;
        }
      }

      return;
    case 11:
      goto LABEL_5;
    case 12:
LABEL_12:
      if (!a1)
      {
        return;
      }

      v4 = a2 - a1;
      v3 = a2 == a1;
      if (a2 - a1 >= 0)
      {
        goto LABEL_14;
      }

      goto LABEL_55;
    default:
      if (!a1)
      {
        return;
      }

      v4 = a2 - a1;
      v3 = a2 == a1;
      if (a2 - a1 >= 0)
      {
LABEL_14:
        if (!v3)
        {

          memset(a1, 1, v4);
        }
      }

      else
      {
        __break(1u);
LABEL_5:
        if (a1)
        {
          v5 = a2 - a1;
          if (a2 - a1 < -7)
          {
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
LABEL_61:
            __break(1u);
          }

          else if ((v5 + 7) >= 0xF)
          {
            v6 = 8 * (v5 / 8);
            v7 = &unk_25BCC8250;
LABEL_52:
            memset_pattern16(a1, v7, v6);
          }
        }
      }

      return;
  }
}

void *sub_25BBD1538(uint64_t a1)
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v57 = v1;
  v4 = *(v1 + 40);
  v5 = sub_25BAAF54C(v4);
  v6 = MEMORY[0x277D84F90];
  v55 = v2;
  if (v5)
  {
    v7 = v5;
    v8 = v5 & ~(v5 >> 63);
    sub_25BCB617C();
    result = sub_25BB00850(0, v8, 0);
    if (v7 < 0)
    {
      goto LABEL_14;
    }

    v10 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x25F8779B0](v10, v4);
      }

      else
      {
        v11 = *(v4 + 8 * v10 + 32);
      }

      v90 = v6;
      v13 = *(v6 + 16);
      v12 = *(v6 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_25BB00850((v12 > 1), v13 + 1, 1);
      }

      ++v10;
      *(v6 + 16) = v13 + 1;
      v14 = (v6 + 24 * v13);
      v14[4] = 0x7365756C6176;
      v14[5] = 0xE600000000000000;
      v14[6] = v11;
    }

    while (v7 != v10);
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_12_27();
  v16 = sub_25BCB614C();
  v17 = OUTLINED_FUNCTION_40_12(v16);
  sub_25BAD8178(v17);
  OUTLINED_FUNCTION_57_2();

  OUTLINED_FUNCTION_132(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  inited = swift_initStackObject();
  v20 = OUTLINED_FUNCTION_31_16(inited, xmmword_25BCBAE70);
  v21 = OUTLINED_FUNCTION_36_11(v20);
  *(v21 + 72) = 0x61656C7265746E69;
  *(v21 + 80) = 0xEA00000000006576;
  OUTLINED_FUNCTION_177(v21, *(v57 + 56));
  OUTLINED_FUNCTION_12_27();
  v22 = sub_25BCB614C();
  v23 = OUTLINED_FUNCTION_40_12(v22);
  sub_25BAFA0CC(v23, v24, v25, v26, v27, v28, v29, v30, v31, v48, v90, v91, v55, v57, v59, v61, v63, v65, v67, v69);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30(v32);
  v33 = v90;
  v34 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  v35 = OUTLINED_FUNCTION_35_13();
  sub_25BBE0998(v35, v36, v37, v38, v39, v40, v41, v42, v49, v51, v53, v56, v58, v60, v62, v64, v66, v68, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v93, v94, v95, v96, v97, v98, v99, v100, v101, a1, v102, v103, v104, v105, v106, v107, v108, v109, vars0, vars8);
  v45 = OUTLINED_FUNCTION_74_3(v43, v44);
  result = sub_25BAB52A4(v45);
  if (result[2])
  {
    OUTLINED_FUNCTION_38_12(result);

    v46 = sub_25BCB614C();
    v47 = OUTLINED_FUNCTION_63_1(v46);
    sub_25BAF9B54(v47);
    OUTLINED_FUNCTION_156();
    sub_25BC0C4EC();
    sub_25BAFC990();
    OUTLINED_FUNCTION_95_3();
    sub_25BBA18D8(0x7461636E6F63, 0xE600000000000000, v52, v54, v33, v34, v15, v92, v50);
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_25BBD1B54()
{
  v1 = 0x726568746167;
  if (*(v0 + 56) != 1)
  {
    v1 = 0x6E5F726568746167;
  }

  if (*(v0 + 56))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_25BBD1BB4()
{
  v1 = *(v0 + 40);
  if (!*(v0 + 56))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_25BCBAE50;
    v5 = 1936291937;
    v6 = 0xE400000000000000;
LABEL_6:
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    goto LABEL_7;
  }

  if (*(v0 + 56) != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    v3 = inited;
    *(inited + 16) = xmmword_25BCBAE50;
    v5 = 0x69645F6863746162;
    v6 = 0xEA0000000000736DLL;
    goto LABEL_6;
  }

  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_25BCBAE70;
  *(v3 + 32) = 1936291937;
  *(v3 + 40) = 0xE400000000000000;
  *(v3 + 48) = v1;
  *(v3 + 56) = 0;
  *(v3 + 64) = 1;
  *(v3 + 72) = 0x69645F6863746162;
  *(v3 + 80) = 0xEA0000000000736DLL;
  *(v3 + 88) = v2;
  *(v3 + 96) = 0;
  *(v3 + 104) = 1;
LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(v3, v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  v16 = v15;
  swift_setDeallocating();
  v17 = sub_25BC0C4D8();
  sub_25BAFCD30(v17);
  return v16;
}

unint64_t sub_25BBD1FD0()
{
  v1 = 0x72657474616373;
  if (*(v0 + 48) != 1)
  {
    v1 = 0x5F72657474616373;
  }

  if (*(v0 + 48))
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_25BBD2034()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  if (v2 > 1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    *(inited + 32) = 1701080941;
    *(inited + 40) = 0xE400000000000000;
    v7 = *(v0 + 80);
    v8 = qword_25BCC8C00[v7];
    v9 = qword_25BCC8C38[v7];
    *(inited + 48) = v8;
    *(inited + 56) = v9;
    *(inited + 64) = 4;
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 1936291937;
    *(inited + 40) = 0xE400000000000000;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 1701080941;
    *(inited + 80) = 0xE400000000000000;
    v4 = *(v0 + 80);
    v5 = qword_25BCC8C00[v4];
    v6 = qword_25BCC8C38[v4];
    *(inited + 88) = v5;
    *(inited + 96) = v6;
    *(inited + 104) = 4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(inited, v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
  v19 = v18;
  swift_setDeallocating();
  v20 = sub_25BC0C4D8();
  sub_25BAFCD30(v20);
  return v19;
}

uint64_t sub_25BBD2BE4()
{
  v1 = *(v0 + 48);
  if (*(v0 + 56) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 0x69735F74696C7073;
    *(inited + 40) = 0xEB0000000073657ALL;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 5;
    *(inited + 72) = 1936291937;
    *(inited + 80) = 0xE400000000000000;
    *(inited + 88) = *(v0 + 64);
    *(inited + 96) = 0;
    *(inited + 104) = 1;
    sub_25BCB617C();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 0x696C70735F6D756ELL;
    *(inited + 40) = 0xEA00000000007374;
    *(inited + 48) = v1;
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 1936291937;
    *(inited + 80) = 0xE400000000000000;
    *(inited + 88) = *(v0 + 64);
    *(inited + 96) = 0;
    *(inited + 104) = 1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(inited, v3, v4, v5, v6, v7, v8, v9, v10, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25);
  v12 = v11;
  swift_setDeallocating();
  v13 = sub_25BC0C4D8();
  sub_25BAFCD30(v13);
  return v12;
}

uint64_t sub_25BBD2D68()
{
  OUTLINED_FUNCTION_43_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v13[0] + 1) = sub_25BCB614C();
  sub_25BAD8178(inited);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  v3 = sub_25BC0C4C4();
  *&v13[0] = v1;
  sub_25BAD8324(v3);
  v4 = v13[0];
  v5 = sub_25BBD2BE4();
  v7 = v6;
  v8 = OUTLINED_FUNCTION_5_17();
  v9 = sub_25BBD2EE4(v8);
  v10 = v0[7];
  v13[0] = v0[6];
  v13[1] = v10;
  v14[0] = v0[8];
  *(v14 + 10) = *(v0 + 138);
  sub_25BBA18D8(0x74696C7073, 0xE500000000000000, v4, *(&v4 + 1), v5, v7, v9, v11, v13);
}

uint64_t sub_25BBD3A2C()
{
  result = 0x6D5F656375646572;
  switch(*(v0 + 130))
  {
    case 3:
      result = 0x705F656375646572;
      break;
    case 4:
      result = OUTLINED_FUNCTION_215();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BBD3ABC(uint64_t a1)
{
  v3 = v1;
  v59 = sub_25BBD3A2C();
  v114 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE50);
  inited[3].n128_u64[0] = *(v3 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v7 = OUTLINED_FUNCTION_208();
  v8 = OUTLINED_FUNCTION_40_12(v7);
  sub_25BAD8178(v8);
  OUTLINED_FUNCTION_147();
  v9 = sub_25BC0C4C4();
  sub_25BAD8324(v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_25BCBAE70;
  OUTLINED_FUNCTION_65_1(v10, 1936029793);
  *(v10 + 48) = *(v3 + 136);
  *(v10 + 56) = 0;
  *(v10 + 64) = 5;
  OUTLINED_FUNCTION_51_9();
  *(v10 + 72) = v11;
  *(v10 + 80) = v12;
  *(v10 + 88) = *(v3 + 48);
  *(v10 + 96) = 0;
  *(v10 + 104) = 0;
  sub_25BCB617C();
  v13 = OUTLINED_FUNCTION_208();
  v14 = OUTLINED_FUNCTION_40_12(v13);
  sub_25BAFA0CC(v14, v15, v16, v17, v18, v19, v20, v21, v22, v50, v53, v101, v59, 1, 2, v65, v67, v69, v71, v73);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30(v23);
  v24 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v25 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v25, v26, v27, v28, v29, v30, v31, v32, v51, v54, v56, v60, v33);
  v34 = OUTLINED_FUNCTION_151();
  sub_25BBE0B84(v34, v35, a1, v36, v37, v38, v39, v40, v52, v55, v57, v61, v63, v64, v66, v68, v70, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v2, v101, v103, v105, v106, v108, v109, v110, v111, v112, v113, v114, v116, v117, v118, v119);
  v25[2].n128_u64[0] = v41;
  v25[2].n128_u64[1] = v42;
  result = sub_25BABCFCC();
  if (*(result + 16))
  {
    v44 = *(result + 40);
    v25[3].n128_u64[0] = *(result + 32);
    v25[3].n128_u8[8] = v44;
    sub_25BCB617C();

    v45 = sub_25BCB614C();
    v46 = OUTLINED_FUNCTION_179(v45);
    v47 = sub_25BAF9B54(v46);
    swift_setDeallocating();
    sub_25BC0C4EC();
    OUTLINED_FUNCTION_163();
    v48 = v47;
    v49 = v102;
    v100 = *(v3 + 72);
    v104 = *(v3 + 88);
    *v107 = *(v3 + 104);
    *&v107[10] = *(v3 + 114);
    sub_25BBA18D8(v62, v115, v2, v58, v2, v24, v48, v49, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBD46A8()
{
  OUTLINED_FUNCTION_53_7();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  v4 = OUTLINED_FUNCTION_0_58(inited, xmmword_25BCBAE70);
  OUTLINED_FUNCTION_135(v4);
  inited[4].n128_u64[1] = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_11_29();
  v6 = sub_25BCB614C();
  v7 = OUTLINED_FUNCTION_40_12(v6);
  sub_25BAD8178(v7);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_62_3();
  sub_25BAD8324(v8);
  OUTLINED_FUNCTION_174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v9 = swift_initStackObject();
  OUTLINED_FUNCTION_21_22(v9, v10, v11, v12, v13, v14, v15, v16, v50, v53, v17);
  *(v18 + 32) = 0x736F70736E617274;
  *(v18 + 40) = 0xEB00000000785F65;
  *(v18 + 48) = *(v0 + 56);
  *(v18 + 56) = 0;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0x736F70736E617274;
  *(v18 + 80) = 0xEB00000000795F65;
  OUTLINED_FUNCTION_177(v18, *(v0 + 57));
  OUTLINED_FUNCTION_11_29();
  v19 = sub_25BCB614C();
  v20 = OUTLINED_FUNCTION_40_12(v19);
  sub_25BAFA0CC(v20, v21, v22, v23, v24, v25, v26, v27, v28, v51, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_62_3();
  sub_25BAFCD30(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  v30 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v30, v31, v2, v32, v33, v34, v35, v36, v52, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v103, v104, v106, v107, v109, v110, v111, v112, v113, v114, v115, v116, v117);
  OUTLINED_FUNCTION_81_3(v37, v38);
  OUTLINED_FUNCTION_11_29();
  v39 = sub_25BCB614C();
  v40 = OUTLINED_FUNCTION_40_12(v39);
  sub_25BAF9B54(v40);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_103_3();
  v102 = *(v0 + 96);
  v105 = *(v0 + 112);
  *v108 = *(v0 + 128);
  *&v108[10] = *(v0 + 138);
  v41 = OUTLINED_FUNCTION_85_3();
  OUTLINED_FUNCTION_32_14(v41, v42, v43, v44, v45, v46, v47, v48, v5);
}

uint64_t sub_25BBD4934()
{
  sub_25BB2B624(v0, v2);
  switch(v3)
  {
    case 0:
      return 0x7463656C666572;
    case 2:
      return 0x746163696C706572;
    case 1:
      sub_25BA97890();
  }

  sub_25BB2B680(v2);
  return 0x746E6174736E6F63;
}

uint64_t sub_25BBD4A04@<X0>(uint64_t a1@<X8>)
{
  sub_25BB2B624(v1, &v4);
  if (v5 >= 3)
  {
    return sub_25BA97060(&v4, a1);
  }

  *(a1 + 24) = MEMORY[0x277D83A90];
  *(a1 + 32) = &protocol witness table for Float;
  *a1 = 0;
  return sub_25BB2B680(&v4);
}

void sub_25BBD4A74()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  sub_25BB2B624(v0 + 48, &v82);
  v3 = *(&v83 + 1);
  sub_25BB2B680(&v82);
  if (v3 == 1)
  {
    goto LABEL_17;
  }

  v75 = v0;
  v4 = *(v0 + 88);
  v5 = *(v4 + 16);
  v77 = v2;
  if (v5)
  {
    v6 = (v4 + 40);
    v7 = MEMORY[0x277D84F90];
    v80 = 4;
    while (1)
    {
      v8 = *(v6 - 1);
      v9 = *v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE70;
      *(inited + 32) = v8;
      v11 = (inited + 32);
      *(inited + 40) = v9;
      v12 = *(v7 + 16);
      if (__OFADD__(v12, 2))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || (v13 = *(v7 + 24) >> 1, v13 < v12 + 2))
      {
        sub_25BA96630();
        v7 = v14;
        v13 = *(v14 + 24) >> 1;
      }

      v15 = *(v7 + 16);
      if (v13 - v15 < 2)
      {
        goto LABEL_15;
      }

      *(v7 + 8 * v15 + 32) = *v11;

      v16 = *(v7 + 16);
      v17 = __OFADD__(v16, 2);
      v18 = v16 + 2;
      if (v17)
      {
        goto LABEL_16;
      }

      v6 += 2;
      *(v7 + 16) = v18;
      if (!--v5)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    OUTLINED_FUNCTION_86();
    *&v82 = 0xD000000000000011;
    *(&v82 + 1) = v63;
    v83 = 0u;
    memset(v84, 0, sizeof(v84));
    LODWORD(v85) = 0;
    BYTE4(v87) = 6;
    OUTLINED_FUNCTION_50_7();
    sub_25BA97890();
  }

  v7 = MEMORY[0x277D84F90];
LABEL_13:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  v19 = swift_initStackObject();
  OUTLINED_FUNCTION_17_19(v19, xmmword_25BCBAE50);
  v20 = v75;
  v19[3].n128_u64[0] = *(v75 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v21 = MEMORY[0x277D84F90];
  *(&v82 + 1) = OUTLINED_FUNCTION_114_2();
  sub_25BAD8178(v19);
  OUTLINED_FUNCTION_157();
  v22 = sub_25BC0C4C4();
  *&v82 = 0;
  sub_25BAD8324(v22);
  v23 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_25BCBAE90;
  OUTLINED_FUNCTION_41_11();
  v25[4] = v26;
  v25[5] = v27;
  v25[6] = v7;
  v25[7] = 0;
  v28 = OUTLINED_FUNCTION_200(v25);
  *(v28 + 72) = 1701080941;
  *(v28 + 80) = 0xE400000000000000;
  *(v24 + 88) = sub_25BBD4934();
  *(v24 + 96) = v29;
  *(v24 + 104) = 4;
  OUTLINED_FUNCTION_181();
  *(v24 + 112) = v30;
  *(v24 + 120) = 0xEC0000006C61765FLL;
  sub_25BBD4A04(&v82);
  sub_25BB9483C(&v82, v24 + 128);
  *(&v82 + 1) = OUTLINED_FUNCTION_114_2();
  sub_25BAFA0CC(v24, v31, v32, v33, v34, v35, v36, v37, v38, v64, v67, 1, 2, v72, *(&v23 + 1), v75, v77, v23, v80, v82);
  v40 = v39;
  swift_setDeallocating();
  v41 = sub_25BC0C4D8();
  *&v82 = v40;
  sub_25BAFCD30(v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v42 = swift_initStackObject();
  OUTLINED_FUNCTION_21_22(v42, v43, v44, v45, v46, v47, v48, v49, v65, v68, v50);
  sub_25BBE0998(v20, 0, v78, &qword_27FBB4518, type metadata accessor for PadOperation, &unk_25BCC1A44, sub_25BC60CB0, v51, v66, v69, v70, v71, v73, v74, v76, v78, v79, v81, v82, *(&v82 + 1), v83, *(&v83 + 1), *&v84[0], *(&v84[0] + 1), *&v84[1], *(&v84[1] + 1), v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  *&v84[0] = v52;
  *(&v84[0] + 1) = v53;
  OUTLINED_FUNCTION_105_2(*(v20 + 96), *(v20 + 104));
  *(&v82 + 1) = OUTLINED_FUNCTION_114_2();
  sub_25BAF9B54(&v82);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v82 = v21;
  sub_25BAFC990();
  v54 = *(v20 + 128);
  v82 = *(v20 + 112);
  v83 = v54;
  v84[0] = *(v20 + 144);
  *(v84 + 10) = *(v20 + 154);
  OUTLINED_FUNCTION_149_0();
  sub_25BBA18D8(v55, v56, v57, v58, v59, v60, v61, v62, &v82);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD4EE8()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v71 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v3 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v4 = sub_25BCB614C();
  v5 = OUTLINED_FUNCTION_40_12(v4);
  sub_25BAD8178(v5);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v7 = swift_initStackObject();
  OUTLINED_FUNCTION_28_16(v7, xmmword_25BCC81C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v8, *(v0 + 48), xmmword_25BCBAE70);
  v7[4].n128_u8[0] = 5;
  OUTLINED_FUNCTION_9_33();
  OUTLINED_FUNCTION_193(v9);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_39_12(v10, *(v0 + 64), xmmword_25BCBAE70);
  OUTLINED_FUNCTION_22_21(v11, xmmword_25BCBDF80);
  v7[9].n128_u8[0] = 5;
  OUTLINED_FUNCTION_8_32();
  v7[9].n128_u64[1] = v12;
  v7[10].n128_u64[0] = v13;
  OUTLINED_FUNCTION_139(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_86();
  v7[12].n128_u64[0] = 0xD00000000000001CLL;
  v7[12].n128_u64[1] = v14;
  v7[13].n128_u64[0] = (*(v0 + 192) & 1) == 0;
  v7[13].n128_u64[1] = 0;
  v7[14].n128_u8[0] = 0;
  OUTLINED_FUNCTION_49_10();
  v7[14].n128_u64[1] = v15;
  v7[15].n128_u64[0] = v16;
  v7[15].n128_u64[1] = 0;
  v7[16].n128_u64[0] = 0;
  v7[16].n128_u8[8] = 0;
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v17 = sub_25BCB614C();
  v18 = OUTLINED_FUNCTION_40_12(v17);
  sub_25BAFA0CC(v18, v19, v20, v21, v22, v23, v24, v25, v26, v57, v60, 2, 4, 1, 2, v69, v71, v119, v74, v76);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v28 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v28, v29, v30, v31, v32, v33, v34, v35, v58, v61, v63, v65, v36);
  v37 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v37, v38, v72, v39, v40, v41, v42, v43, v59, v62, v64, v66, v67, v68, v70, v72, v73, v75, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116, v117, v118);
  OUTLINED_FUNCTION_82_4(v44, v45);
  OUTLINED_FUNCTION_64_4();
  v46 = sub_25BCB614C();
  v47 = OUTLINED_FUNCTION_40_12(v46);
  sub_25BAF9B54(v47);
  OUTLINED_FUNCTION_147();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_71_2(*(v0 + 112), *(v0 + 128));
  *(v48 + 32) = *(v0 + 144);
  *(v48 + 42) = *(v0 + 154);
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_125_0(v49, v50, v51, v52, v53, v54, v55, v56, v3);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD51F4()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v52 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_79_3(inited, xmmword_25BCBAE70);
  OUTLINED_FUNCTION_58_4(v1[11].n128_i64[0]);
  inited[4].n128_u64[1] = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v4 = sub_25BCB614C();
  v5 = OUTLINED_FUNCTION_40_12(v4);
  sub_25BAD8178(v5);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v7 = swift_initStackObject();
  OUTLINED_FUNCTION_28_16(v7, xmmword_25BCC81C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v8, v1[3], xmmword_25BCBAE70);
  v7[4].n128_u8[0] = 5;
  OUTLINED_FUNCTION_9_33();
  OUTLINED_FUNCTION_193(v9);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  v11 = OUTLINED_FUNCTION_39_12(v10, v1[4], xmmword_25BCBAE70);
  OUTLINED_FUNCTION_22_21(v11, xmmword_25BCBDF80);
  v7[9].n128_u8[0] = 5;
  OUTLINED_FUNCTION_8_32();
  v7[9].n128_u64[1] = v12;
  v7[10].n128_u64[0] = v13;
  OUTLINED_FUNCTION_139(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_86();
  v7[12].n128_u64[0] = 0xD00000000000001CLL;
  v7[12].n128_u64[1] = v14;
  v7[13].n128_u64[0] = (v1[11].n128_u8[8] & 1) == 0;
  v7[13].n128_u64[1] = 0;
  v7[14].n128_u8[0] = 0;
  OUTLINED_FUNCTION_49_10();
  v7[14].n128_u64[1] = v15;
  v7[15].n128_u64[0] = v16;
  v7[15].n128_u64[1] = 0;
  v7[16].n128_u64[0] = 0;
  v7[16].n128_u8[8] = 0;
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v17 = sub_25BCB614C();
  v18 = OUTLINED_FUNCTION_40_12(v17);
  sub_25BAFA0CC(v18, v19, v20, v21, v22, v23, v24, v25, v26, v47, v50, v52, v108, 2, 4, v57, v59, v61, v63, v65);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  *(swift_initStackObject() + 16) = xmmword_25BCBAE50;
  v28 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v28, v29, v53, v30, v31, v32, v33, v34, v48, v51, v53, v54, v55, v56, v58, v60, v62, v64, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107);
  OUTLINED_FUNCTION_82_4(v35, v36);
  OUTLINED_FUNCTION_64_4();
  v37 = sub_25BCB614C();
  v38 = OUTLINED_FUNCTION_40_12(v37);
  sub_25BAF9B54(v38);
  OUTLINED_FUNCTION_147();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_173();
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_125_0(v39, v40, v41, v42, v43, v44, v45, v46, v49);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD5500()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v67 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v3 = sub_25BCB614C();
  v4 = OUTLINED_FUNCTION_40_12(v3);
  sub_25BAD8178(v4);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4C4();
  OUTLINED_FUNCTION_48_8();
  sub_25BAD8324(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v6 = swift_initStackObject();
  OUTLINED_FUNCTION_28_16(v6, xmmword_25BCC4630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v7 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v7, v0[3], xmmword_25BCBAE70);
  v6[4].n128_u8[0] = 5;
  OUTLINED_FUNCTION_9_33();
  OUTLINED_FUNCTION_193(v8);
  OUTLINED_FUNCTION_54();
  v9 = swift_allocObject();
  v10 = OUTLINED_FUNCTION_39_12(v9, v0[4], xmmword_25BCBAE70);
  OUTLINED_FUNCTION_22_21(v10, xmmword_25BCBDF80);
  v6[9].n128_u8[0] = 5;
  OUTLINED_FUNCTION_8_32();
  v6[9].n128_u64[1] = v11;
  v6[10].n128_u64[0] = v12;
  OUTLINED_FUNCTION_139(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_49_10();
  v6[12].n128_u64[0] = v13;
  v6[12].n128_u64[1] = v14;
  v6[13].n128_u64[0] = 0;
  v6[13].n128_u64[1] = 0;
  v6[14].n128_u8[0] = 0;
  OUTLINED_FUNCTION_107();
  OUTLINED_FUNCTION_64_4();
  v15 = sub_25BCB614C();
  v16 = OUTLINED_FUNCTION_40_12(v15);
  sub_25BAFA0CC(v16, v17, v18, v19, v20, v21, v22, v23, v24, v54, v58, 2, 4, 1, 2, v67, v117, v70, v72, v74);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v26 = swift_initStackObject();
  OUTLINED_FUNCTION_96_2(v26, v27, v28, v29, v30, v31, v32, v33, v55, v59, v61, v63, v34);
  v35 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0B84(v35, v36, v68, v37, v38, v39, v40, v41, v56, v60, v62, v64, v65, v66, v68, v69, v71, v73, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, v108, v109, v110, v111, v112, v113, v114, v115, v116);
  OUTLINED_FUNCTION_82_4(v42, v43);
  OUTLINED_FUNCTION_64_4();
  v44 = sub_25BCB614C();
  v45 = OUTLINED_FUNCTION_40_12(v44);
  sub_25BAF9B54(v45);
  OUTLINED_FUNCTION_147();
  sub_25BC0C4EC();
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_99_3();
  OUTLINED_FUNCTION_34_12();
  OUTLINED_FUNCTION_125_0(v46, v47, v48, v49, v50, v51, v52, v53, v57);

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD57D0()
{
  v1 = *(v0 + 64);
  if (v1 == 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE70;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x800000025BCE0910;
    *(inited + 48) = *(v0 + 48);
    *(inited + 56) = 0;
    *(inited + 64) = 1;
    *(inited + 72) = 0xD000000000000011;
    *(inited + 80) = 0x800000025BCE0930;
    *(inited + 88) = *(v0 + 56);
    *(inited + 96) = 0;
    *(inited + 104) = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v3 = swift_initStackObject();
    inited = v3;
    *(v3 + 16) = xmmword_25BCBAE90;
    *(v3 + 32) = 0xD000000000000012;
    *(v3 + 40) = 0x800000025BCE0910;
    *(v3 + 48) = *(v0 + 48);
    *(v3 + 56) = 0;
    *(v3 + 64) = 1;
    *(v3 + 72) = 0xD000000000000011;
    *(v3 + 80) = 0x800000025BCE0930;
    *(v3 + 88) = *(v0 + 56);
    *(v3 + 96) = 0;
    *(v3 + 104) = 1;
    strcpy((v3 + 112), "sampling_mode");
    *(v3 + 126) = -4864;
    v4 = 0x5F4E47494C414E55;
    if (v1)
    {
      v4 = 0x4F435F4E47494C41;
    }

    v5 = 0xEF5352454E524F43;
    if (v1)
    {
      v5 = 0xED00005352454E52;
    }

    *(v3 + 128) = v4;
    *(v3 + 136) = v5;
    *(v3 + 144) = 4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(inited, v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  v15 = v14;
  swift_setDeallocating();
  v16 = sub_25BC0C4D8();
  sub_25BAFCD30(v16);
  return v15;
}

void sub_25BBD59D4()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v3 = v2;
  v4 = *(v0 + 40);
  if (*(*(v4 + 152) + 16) == 3)
  {
    OUTLINED_FUNCTION_70_3();
    v451 = v5;
    v6 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v6, v7, v3, v8, v9, v10, v11, v12, v244, v259, v274, v289, v304, v319, v334, v349, v362, v376, v389, v400, v410, sub_25BC60CB4, &unk_25BCC6504, v441, v451, v462, v471, v474, v476, v479, v482, v485, v488, v491, v494, v497, v500, v503, v506, v509, v512, v515, v518, v521, v524, v527, v530, v533, v536, v539, v542, v545, v548, v551, v554, v557, v560, v563, v566, v569);
    v577 = v13;
    v578 = v14;
    MEMORY[0x25F876C90](0x65646E617078655FLL, 0xE900000000000064);
    v463 = v577;
    v377 = v578;
    v15 = *(*(v1 + 40) + 152);
    v577 = &unk_286D421D0;
    v16 = sub_25BCB617C();
    sub_25BAC0F84(v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    inited = swift_initStackObject();
    inited[3].n128_u64[0] = OUTLINED_FUNCTION_1_45(inited, xmmword_25BCBAE50);

    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    OUTLINED_FUNCTION_189_0();
    v19 = sub_25BCB614C();
    v20 = OUTLINED_FUNCTION_40_12(v19);
    sub_25BAD8178(v20);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4C4();
    OUTLINED_FUNCTION_62_3();
    sub_25BAD8324(v21);
    v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v22 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v22, v23, v24, v25, v26, v27, v28, v29, v245, v260, v275, v290, v305, v320, v335, v578, v363, v377, v577, v401, v411, v422, v432, v442, v452, v463, v30);
    OUTLINED_FUNCTION_23_21();
    *(v31 + 32) = v32;
    *(v31 + 40) = v33;
    *(v31 + 48) = &unk_286D421D0;
    *(v31 + 56) = 0;
    *(v31 + 64) = 7;
    sub_25BCB617C();
    OUTLINED_FUNCTION_189_0();
    v34 = sub_25BCB614C();
    v35 = OUTLINED_FUNCTION_40_12(v34);
    sub_25BAFA0CC(v35, v36, v37, v38, v39, v40, v41, v42, v43, v246, v261, v276, v291, v306, v321, v336, v350, v18, v378, v390);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4D8();
    OUTLINED_FUNCTION_62_3();
    sub_25BAFCD30(v44);
    v45 = v3;
    v47 = v577;
    v46 = v578;
    v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v48 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v48, v49, v50, v51, v52, v53, v54, v55, v247, v262, v277, v292, v307, v322, v337, v351, v364, v379, v391, v402, v412, v423, v433, v443, v453, v464, v56);
    *(v57 + 32) = v465;
    inited[2].n128_u64[1] = v380;
    v58 = *(*(v1 + 40) + 160);
    inited[3].n128_u64[0] = &unk_286D421D0;
    inited[3].n128_u8[8] = v58;
    sub_25BCB617C();
    OUTLINED_FUNCTION_64_4();
    v59 = sub_25BCB614C();
    v60 = OUTLINED_FUNCTION_40_12(v59);
    sub_25BAF9B54(v60);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4EC();
    v577 = &unk_286D421D0;
    OUTLINED_FUNCTION_163();
    v61 = v578;
    v62 = OUTLINED_FUNCTION_83_3();
    v65 = OUTLINED_FUNCTION_199(v63, v62, v64);
    *(v66 + 170) = v65;
    v67 = OUTLINED_FUNCTION_6_5();
    sub_25BBA18D8(v67, v68, v392, v352, v47, v46, &unk_286D421D0, v61, v18);

    sub_25BCB70FC();
    v69 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v69, v70, v45, &qword_27FBB4078, v454, v434, v424, v71, v248, v263, v278, v293, v308, v323, v338, v352, v365, v380, v392, v45, v413, v424, v434, v444, v454, v465, 1, 2, v477, v480, v483, v486, v489, v492, v495, v498, v501, v504, v507, v510, v513, v516, v519, v522, v525, v528, v531, v534, v537, v540, v543, v546, v549, v552, v555, v558, v561, v564, v567, v570);
    v73 = v72;
    v75 = v74;

    v575 = v73;
    v576 = v75;
    MEMORY[0x25F876C90](0xD000000000000011, 0x800000025BCE08F0);
    v76 = *(v1 + 72);
    v575 = &unk_286D421F8;
    v77 = sub_25BCB617C();
    sub_25BAC0F84(v77);
    v78 = *(v1 + 64);
    OUTLINED_FUNCTION_86();
    v82 = v81 == 2;
    v83 = 0x625F657A69736572;
    if (v82)
    {
      v83 = 0xD000000000000017;
    }

    v309 = v83;
    if (!v82)
    {
      v79 = 0xEF7261656E696C69;
    }

    v279 = v80;
    v294 = v79;
    v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    v84 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v84, v85, v86, v87, v88, v89, v90, v91, v249, v264, v279, v294, v309, v324, v339, v75, v366, v381, v73, v403, v414, v425, v435, v445, v455, v466, v92);
    v94 = OUTLINED_FUNCTION_136(v93);
    v94[5] = v95;
    v94[6] = v467;
    v96 = v367;
    v94[7] = v382;
    v97 = sub_25BCB614C();
    v98 = OUTLINED_FUNCTION_73_3(v97);
    sub_25BAFA1D4(v98, v99, v100, v101, v102, v103, v104, v105, v250, v265, v280, v295, v310, v325, v340, v353, v367);
    OUTLINED_FUNCTION_104_3();
    v106 = sub_25BC0C500();
    v575 = v75;
    sub_25BAFCBDC(v106);
    v107 = sub_25BBD57D0();
    v109 = v108;
    v110 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v110, v111, v112, v113, v114, v115, v116, v117, v251, v266, v281, v296, v311, v326, v341, v354, v368, v382, v393, v404, v415, v426, v436, v446, v456, v467, v118);
    *(v119 + 32) = v394;
    *(v1 + 40) = v355;
    v120 = *(*(v1 + 40) + 160);
    *(v1 + 48) = v282;
    *(v1 + 56) = v120;
    sub_25BCB617C();
    OUTLINED_FUNCTION_88_3();
    v121 = sub_25BCB614C();
    v122 = OUTLINED_FUNCTION_73_3(v121);
    sub_25BAF9B54(v122);
    OUTLINED_FUNCTION_57_2();
    swift_setDeallocating();
    sub_25BC0C4EC();
    v575 = v96;
    sub_25BAFC990();
    v123 = v576;
    v124 = OUTLINED_FUNCTION_83_3();
    *(v125 + 64) = v124;
    *(v125 + 80) = v126;
    *(v125 + 96) = *(v1 + 120);
    *(v125 + 106) = *(v1 + 130);
    OUTLINED_FUNCTION_64_4();
    v127 = v405;
    sub_25BBA1A84(v128, v129, v130, v131, v107, v109, v96, v123, &v575);

    v132 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v132, v133, v134, v135, v136, v137, v138, v139, v252, v267, v282, v297, v312, v327, v342, v355, v369, v383, v394, v405, v416, v427, v437, v447, v457, v468, v140);
    v142 = OUTLINED_FUNCTION_136(v141);
    v142[5] = v143;
    v142[6] = v395;
    v144 = v370;
    v142[7] = v356;
    OUTLINED_FUNCTION_111_3();
    v573 = sub_25BCB614C();
    sub_25BAFA1D4(v127, v145, v146, v147, v148, v149, v150, v151, v253, v268, v283, v298, v313, v328, v343, v356, v370);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v152 = sub_25BC0C500();
    v572 = v123;
    sub_25BAFCBDC(v152);
    v153 = swift_allocObject();
    OUTLINED_FUNCTION_14_26(v153, v154, v155, v156, v157, v158, v159, v160, v254, v269, v284, v299, v314, v329, v344, v357, v371, v384, v395, v406, v417, v428, v438, v448, v458, v123, v161);
    OUTLINED_FUNCTION_184(v162, 1885431923);
    *&v574[6] = *(v1 + 72);
    *&v574[14] = 0;
    LOBYTE(v575) = 7;
    sub_25BCB617C();
    OUTLINED_FUNCTION_111_3();
    v573 = sub_25BCB614C();
    sub_25BAFA0CC(&v572, v163, v164, v165, v166, v167, v168, v169, v170, v255, v270, v285, v300, v315, v330, v345, v358, v372, v385, v396);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v171 = sub_25BC0C4D8();
    v572 = v123;
    sub_25BAFCD30(v171);
    v172 = swift_initStackObject();
    OUTLINED_FUNCTION_14_26(v172, v173, v174, v175, v176, v177, v178, v179, v256, v271, v286, v301, v316, v331, v346, v359, v373, v386, v397, v407, v418, v429, v439, v449, v459, v469, v180);
    v181 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v181, v182, v408, &qword_27FBB4078, v460, v440, v430, v183, v257, v272, v287, v302, v317, v332, v347, v360, v374, v387, v398, v408, v419, v430, v440, v450, v460, v470, v472, v475, v478, v481, v484, v487, v490, v493, v496, v499, v502, v505, v508, v511, v514, v517, v520, v523, v526, v529, v532, v535, v538, v541, v544, v547, v550, v553, v556, v559, v562, v565, v568, v571);
    OUTLINED_FUNCTION_55_4(v184, v185);
    v573 = sub_25BCB614C();
    sub_25BAF9B54(&v572);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4EC();
    v572 = v144;
    sub_25BAFC990();
    v186 = OUTLINED_FUNCTION_83_3();
    *v187 = v186;
    *(v187 + 16) = v188;
    *(v187 + 32) = *(v1 + 120);
    *v574 = *(v1 + 130);
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_126();
    sub_25BBA1A84(v189, v190, v191, v192, v193, v194, v195, v196, &v572);
  }

  else
  {
    v197 = *(v1 + 64);
    OUTLINED_FUNCTION_86();
    v203 = v202 == 2;
    if (v202 == 2)
    {
      v204 = v200;
    }

    else
    {
      v204 = v201;
    }

    v473 = v204;
    if (!v203)
    {
      v198 = v199;
    }

    v461 = v198;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
    v205 = swift_initStackObject();
    OUTLINED_FUNCTION_17_19(v205, xmmword_25BCBAE50)[3].n128_u64[0] = v4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v206 = MEMORY[0x277D84F90];
    v207 = MEMORY[0x277D837E0];
    v208 = OUTLINED_FUNCTION_160();
    v209 = OUTLINED_FUNCTION_40_12(v208);
    sub_25BAD8178(v209);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4C4();
    OUTLINED_FUNCTION_48_8();
    sub_25BAD8324(v210);
    sub_25BBD57D0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v211 = swift_initStackObject();
    OUTLINED_FUNCTION_59_3(v211, v212, v213, v214, v215, v216, v217, v218, v244, v259, v274, v289, v304, v319, v334, v349, v362, v376, v389, v400, v410, v421, v219);
    OUTLINED_FUNCTION_70_3();
    v220 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0B84(v220, v221, v3, v222, v223, v224, v225, v226, v258, v273, v288, v303, v318, v333, v348, v361, v375, v388, v399, v409, v420, v431, 1, 2, v461, v577, v473, v474, v476, v479, v482, v485, v488, v491, v494, v497, v500, v503, v506, v509, v512, v515, v518, v521, v524, v527, v530, v533, v536, v539, v542, v545, v548, v551, v554, v557, v560, v563, v566, v569);
    OUTLINED_FUNCTION_55_4(v227, v228);
    v229 = OUTLINED_FUNCTION_160();
    v230 = OUTLINED_FUNCTION_40_12(v229);
    sub_25BAF9B54(v230);
    OUTLINED_FUNCTION_104_3();
    sub_25BC0C4EC();
    v577 = v206;
    OUTLINED_FUNCTION_163();
    v231 = OUTLINED_FUNCTION_83_3();
    v234 = OUTLINED_FUNCTION_199(v232, v231, v233);
    *(v235 + 170) = v234;
    OUTLINED_FUNCTION_126();
    sub_25BBA18D8(v236, v237, v238, v239, v240, v241, v242, v243, v207);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD62B0(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_197(a1);
  if (v2)
  {
    return sub_25BBD62D8(v1);
  }

  else
  {
    return sub_25BBD64E8(v1);
  }
}

uint64_t sub_25BBD64E8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);

  v6 = sub_25BBA0B64(v5);
  v8 = v7;

  v9 = *(v2 + 48);

  v162 = a1;
  v11 = sub_25BBA0B64(v10);
  v13 = v12;

  if (*(v2 + 56))
  {
    *&v160[0] = v6;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v11, v13);
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v15 = sub_25BBA0DCC(0x6C756D74616DLL);
    MEMORY[0x25F876C90](v15);

    v16 = v8;
    v118 = v6;
  }

  else
  {
    sub_25BBE0B84(v2, 0, v162, &qword_28154F570, type metadata accessor for LinearOperation, &unk_25BCC60D4, sub_25BABB6E8, v14, v78, v82, v86, v89, v91, v95, v99, v104, v107, v110, v112, v115, v116, v117, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
    v118 = v17;
    v16 = v18;
  }

  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  *(&v113 + 1) = 4;
  *(inited + 16) = xmmword_25BCBAE70;
  *(inited + 32) = 120;
  *(inited + 40) = 0xE100000000000000;
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  *(inited + 64) = 121;
  *(inited + 72) = 0xE100000000000000;
  *(inited + 80) = v11;
  *(inited + 88) = v13;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v160[0] + 1) = sub_25BCB614C();
  sub_25BAFA1D4(inited, v21, v22, v23, v24, v25, v26, v27, v78, v82, v86, v89, v91, v95, v100, v104, v107);
  v29 = v28;
  swift_setDeallocating();
  v30 = sub_25BC0C500();
  sub_25BAFCBDC(v30);
  v31 = *(&v160[0] + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v32 = swift_initStackObject();
  *(v32 + 16) = xmmword_25BCBAE70;
  *(v32 + 32) = 0x736F70736E617274;
  *(v32 + 40) = 0xEB00000000785F65;
  *(v32 + 48) = 0;
  *(v32 + 56) = 0;
  *(v32 + 64) = 0;
  *(v32 + 72) = 0x736F70736E617274;
  *(v32 + 80) = 0xEB00000000795F65;
  *(v32 + 88) = xmmword_25BCC06A0;
  *(v32 + 104) = 0;
  *(&v160[0] + 1) = sub_25BCB614C();
  sub_25BAFA0CC(v32, v33, v34, v35, v36, v37, v38, v39, v40, v79, v83, v87, v90, v92, v96, v101, v105, v29, v110, 2);
  v42 = v41;
  swift_setDeallocating();
  v43 = sub_25BC0C4D8();
  *&v160[0] = v42;
  sub_25BAFCD30(v43);
  v44 = v160[0];
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_25BCBAE50;
  *(v45 + 32) = v118;
  *(v45 + 40) = v16;
  v46 = *(v2 + 72);
  *(v45 + 48) = *(v2 + 64);
  *(v45 + 56) = v46;
  sub_25BCB617C();
  sub_25BCB617C();
  *(&v160[0] + 1) = sub_25BCB614C();
  v47 = sub_25BAF9B54(v45);
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v160[0] = v47;
  sub_25BAFC990();
  v48 = v160[0];
  v49 = *(v2 + 112);
  v160[0] = *(v2 + 96);
  v160[1] = v49;
  v161[0] = *(v2 + 128);
  *(v161 + 10) = *(v2 + 138);
  sub_25BBA1A84(0x6C756D74616DLL, 0xE600000000000000, v108, v31, v44, *(&v44 + 1), v48, *(&v48 + 1), v160);

  if (*(v2 + 56))
  {
    v50 = *(v2 + 56);

    v52 = sub_25BBA0B64(v51);
    v54 = v53;
    v55 = swift_initStackObject();
    *(v55 + 16) = v113;
    *(v55 + 32) = 120;
    *(v55 + 40) = 0xE100000000000000;
    *(v55 + 48) = v118;
    *(v55 + 56) = v16;
    *(v55 + 64) = 121;
    *(v55 + 72) = 0xE100000000000000;
    *(v55 + 80) = v52;
    *(v55 + 88) = v54;
    v56 = MEMORY[0x277D84F90];
    *(&v158[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(v55, v57, v58, v59, v60, v61, v62, v63, v80, v84, 1, 2, v93, v97, v102, v20, v108);
    v65 = v64;
    swift_setDeallocating();
    v66 = sub_25BC0C500();
    *&v158[0] = v65;
    sub_25BAFCBDC(v66);
    v67 = v158[0];
    *&v158[0] = v56;
    *(&v158[0] + 1) = sub_25BCB614C();
    sub_25BAFCD30(*(&v158[0] + 1));
    v68 = v158[0];
    v69 = swift_initStackObject();
    *(v69 + 16) = v88;
    sub_25BBE0B84(v2, 0, v162, &qword_28154F570, type metadata accessor for LinearOperation, &unk_25BCC60D4, sub_25BABB6E8, v70, v81, v85, v88, *(&v88 + 1), v94, v98, v103, v106, v109, v111, *(&v67 + 1), *(&v113 + 1), v116, v67, v120, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
    *(v69 + 32) = v71;
    *(v69 + 40) = v72;
    v73 = *(v2 + 72);
    *(v69 + 48) = *(v2 + 64);
    *(v69 + 56) = v73;
    sub_25BCB617C();
    *(&v158[0] + 1) = sub_25BCB614C();
    v74 = sub_25BAF9B54(v69);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v158[0] = v74;
    sub_25BAFC990();
    v75 = v158[0];
    v76 = *(v2 + 112);
    v158[0] = *(v2 + 96);
    v158[1] = v76;
    v159[0] = *(v2 + 128);
    *(v159 + 10) = *(v2 + 138);
    sub_25BBA1A84(6579297, 0xE300000000000000, v119, v114, v68, *(&v68 + 1), v75, *(&v75 + 1), v158);
  }
}

void sub_25BBD6B44()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v0;
  v4 = v3;
  v5 = v0[5];

  v7 = sub_25BBA0B64(v6);
  v9 = v8;

  v10 = v0[6];

  v389 = sub_25BBA0B64(v11);
  v409 = v12;

  v13 = v0[7];

  v15 = sub_25BBA0B64(v14);
  v17 = v16;

  v537 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v19 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
  v447 = v9;
  v19[3].n128_u64[0] = v7;
  v19[3].n128_u64[1] = v9;
  v20 = OUTLINED_FUNCTION_120_2(v19);
  *(v20 + 80) = v15;
  *(v20 + 88) = v17;
  sub_25BCB617C();
  sub_25BCB617C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v670[0] + 1) = OUTLINED_FUNCTION_206();
  sub_25BAFA1D4(inited, v22, v23, v24, v25, v26, v27, v28, v311, v331, v1, v17, v389, v409, v7, v447, v465);
  v30 = v29;
  swift_setDeallocating();
  v31 = sub_25BC0C500();
  *&v670[0] = v30;
  sub_25BAFCBDC(v31);
  v485 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v33 = swift_initStackObject();
  OUTLINED_FUNCTION_59_3(v33, v34, v35, v36, v37, v38, v39, v40, v312, v332, v351, v370, v390, v410, v428, v448, v466, v485, *(&v670[0] + 1), v517, v527, v537, v41);
  *(v42 + 32) = 0x736F70736E617274;
  *(v42 + 40) = 0xEB00000000785F65;
  *(v42 + 48) = 0;
  *(v42 + 56) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 0x736F70736E617274;
  *(v42 + 80) = 0xEB00000000795F65;
  *(v42 + 88) = 0;
  *(v42 + 96) = 0;
  *(v42 + 104) = 0;
  v43 = OUTLINED_FUNCTION_206();
  v44 = OUTLINED_FUNCTION_40_12(v43);
  sub_25BAFA0CC(v44, v45, v46, v47, v48, v49, v50, v51, v52, v313, v333, v352, v371, v391, v411, v429, v449, v467, v486, v502);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_62_3();
  sub_25BAFCD30(v53);
  v54 = v670[0];
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v56 = swift_initStackObject();
  *(v56 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_20_20();
  v672 = v4;
  sub_25BBE0998(v2, 0, v4, v57, v58, &unk_25BCC6048, sub_25BAC9864, v59, v314, v334, v353, v372, v392, v412, v430, v450, v468, v487, v503, v518, v528, v538, 2, 4, 1, 2, v560, v563, v566, v569, v572, v575, v578, v581, v584, v587, v590, v593, v596, v599, v602, v605, v608, v611, v614, v617, v620, v623, v626, v629, v632, v635, v638, v641, v644, v647, v650, v653, v656, v659);
  *(v56 + 32) = v60;
  *(v56 + 40) = v61;
  v62 = *(v2 + 72);
  if (!*(v62 + 16))
  {
    goto LABEL_26;
  }

  v519 = v55;
  v529 = v32;
  OUTLINED_FUNCTION_105_2(*(v62 + 32), *(v62 + 40));
  v469 = v21;
  v63 = sub_25BCB614C();
  v64 = OUTLINED_FUNCTION_40_12(v63);
  sub_25BAF9B54(v64);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4EC();
  *&v670[0] = v54;
  sub_25BAFC990();
  v65 = *(&v670[0] + 1);
  v66 = *(v2 + 96);
  v670[0] = *(v2 + 80);
  v670[1] = v66;
  v671[0] = *(v2 + 112);
  *(v671 + 10) = *(v2 + 122);
  v67 = OUTLINED_FUNCTION_85_3();
  v68 = v2;
  sub_25BBA1A84(v67, v69, v488, v504, v54, *(&v54 + 1), v54, v65, v670);

  if (*(*(*(v2 + 40) + 152) + 16) == 2)
  {
    v70 = v431.n128_u64[1];
    v489 = v431.n128_u64[0];
    v71 = v393;
    v72 = v2;
  }

  else
  {
    v73 = v431.n128_i64[1];
    v668[0] = v431;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v74 = OUTLINED_FUNCTION_27_19();
    v75 = sub_25BBA0DCC(v74 & 0xFFFFFFFFFFFFLL | 0x6465000000000000);
    MEMORY[0x25F876C90](v75);

    v490 = v431;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    OUTLINED_FUNCTION_54();
    v76 = swift_allocObject();
    *(v76 + 16) = v547;
    v77 = *(*(v2 + 40) + 152);
    sub_25BCB617C();
    sub_25BBD78EC(1, v77);
    v80 = v469;
    v72 = v2;
    if (v79 >> 1 != v78)
    {
      if ((v79 >> 1) <= v78)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      while (1)
      {
        OUTLINED_FUNCTION_194_0();
        if (!v82)
        {
          break;
        }

        if (v81 == 1)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_25;
    }

LABEL_9:
    swift_unknownObjectRelease();
    *(v76 + 32) = 1;
    v83 = sub_25BB731F4(*(*(v2 + 40) + 152));
    if (v84)
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    *(v76 + 40) = v83;
    v85 = swift_initStackObject();
    OUTLINED_FUNCTION_17_19(v85, v558)[3] = v431;
    v86 = MEMORY[0x277D837E0];
    OUTLINED_FUNCTION_189_0();
    v87 = sub_25BCB614C();
    v88 = OUTLINED_FUNCTION_73_3(v87);
    sub_25BAFA1D4(v88, v89, v90, v91, v92, v93, v94, v95, v315, v335, v354, v373, v393, v413, v431.n128_i64[0], v431.n128_i64[1], v469);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v96 = sub_25BC0C500();
    sub_25BAFCBDC(v96);
    v97 = *(&v668[0] + 1);
    v98 = swift_initStackObject();
    OUTLINED_FUNCTION_17_29(v98, v99, v100, v101, v102, v103, v104, v105, v316, v336, v355, v374, v394, v414, v432, v73, v470, v490.n128_i64[0], v490.n128_i64[1], v519, v529, v539, v547.n128_i64[0], v547.n128_i64[1], v106);
    v108 = OUTLINED_FUNCTION_154(v107);
    *(v108 + 48) = v76;
    *(v108 + 56) = 0;
    OUTLINED_FUNCTION_200(v108);
    sub_25BCB617C();
    OUTLINED_FUNCTION_189_0();
    v109 = sub_25BCB614C();
    v110 = OUTLINED_FUNCTION_73_3(v109);
    sub_25BAFA0CC(v110, v111, v112, v113, v114, v115, v116, v117, v118, v317, v337, v356, v375, v395, v415, v433, v451, v471, v491, v505);
    OUTLINED_FUNCTION_104_3();
    v119 = sub_25BC0C4D8();
    *&v668[0] = v86;
    sub_25BAFCD30(v119);
    v121 = v86;
    v120 = *(&v668[0] + 1);
    v122 = OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_17_29(v122, v123, v124, v125, v126, v127, v128, v129, v318, v338, v357, v376, v396, v416, v434, v452, v472, v492, v506, v520, v530, v540, v548, v553, v130);
    *(v131 + 32) = v489;
    *(v131 + 40) = v507;
    v132 = *(*(v68 + 40) + 160);
    *(v131 + 48) = v76;
    *(v131 + 56) = v132;
    sub_25BCB617C();
    v133 = sub_25BCB614C();
    v134 = OUTLINED_FUNCTION_73_3(v133);
    sub_25BAF9B54(v134);
    OUTLINED_FUNCTION_57_2();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v668[0] = v80;
    sub_25BAFC990();
    v135 = *(&v668[0] + 1);
    v136 = *(v72 + 96);
    v668[0] = *(v72 + 80);
    v668[1] = v136;
    v669[0] = *(v72 + 112);
    *(v669 + 10) = *(v72 + 122);
    v137 = OUTLINED_FUNCTION_6_5();
    sub_25BBA1A84(v137, v138, v431.n128_i64[1], v97, v121, v120, v80, v135, v668);

    v70 = v507;

    v71 = v393;
  }

  v508 = v70;
  if (*(*(*(v72 + 48) + 152) + 16) == 2)
  {
    v139 = v71;
    v140 = v413;
    v141 = v539;
    goto LABEL_20;
  }

  *&v666[0] = v71;
  v142 = v413;
  *(&v666[0] + 1) = v413;
  sub_25BCB617C();
  MEMORY[0x25F876C90](95, 0xE100000000000000);
  v143 = OUTLINED_FUNCTION_27_19();
  v144 = sub_25BBA0DCC(v143 & 0xFFFFFFFFFFFFLL | 0x6465000000000000);
  MEMORY[0x25F876C90](v144);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v145 = swift_allocObject();
  *(v145 + 16) = v547;
  v146 = *(*(v72 + 48) + 152);
  sub_25BCB617C();
  sub_25BBD78EC(1, v146);
  v149 = v469;
  if (v148 >> 1 != v147)
  {
    if ((v148 >> 1) <= v147)
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    while (1)
    {
      OUTLINED_FUNCTION_194_0();
      if (!v82)
      {
        break;
      }

      if (v150 == 1)
      {
        goto LABEL_18;
      }
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_18:
  swift_unknownObjectRelease();
  *(v145 + 32) = 1;
  v151 = sub_25BB731F4(*(*(v72 + 48) + 152));
  if ((v152 & 1) == 0)
  {
    v153 = v151;

    *(v145 + 40) = v153;
    v154 = OUTLINED_FUNCTION_112_2();
    v155 = OUTLINED_FUNCTION_17_19(v154, v558);
    v155[3].n128_u64[0] = v71;
    v155[3].n128_u64[1] = v413;
    *(&v666[0] + 1) = OUTLINED_FUNCTION_210();
    sub_25BAFA1D4(v154, v156, v157, v158, v159, v160, v161, v162, v315, v335, v354, v373, v72, v413, v71, v413, v469);
    OUTLINED_FUNCTION_104_3();
    v163 = sub_25BC0C500();
    *&v666[0] = v142;
    sub_25BAFCBDC(v163);
    v164 = v142;
    v165 = swift_allocObject();
    OUTLINED_FUNCTION_17_29(v165, v166, v167, v168, v169, v170, v171, v172, v319, v339, v358, v377, v397, *(&v666[0] + 1), v435, v453, v473, v489, v508, v519, v529, v539, v547.n128_i64[0], v547.n128_i64[1], v173);
    v175 = OUTLINED_FUNCTION_154(v174);
    *(v175 + 48) = v145;
    *(v175 + 56) = 0;
    OUTLINED_FUNCTION_200(v175);
    sub_25BCB617C();
    *(&v666[0] + 1) = OUTLINED_FUNCTION_210();
    sub_25BAFA0CC(v666, v176, v177, v178, v179, v180, v181, v182, v183, v320, v340, v359, v378, v398, v417, v436, v454, v474, v493, v509);
    OUTLINED_FUNCTION_104_3();
    v184 = sub_25BC0C4D8();
    *&v666[0] = v142;
    sub_25BAFCD30(v184);
    v185 = *(&v666[0] + 1);
    v186 = *&v666[0];
    v187 = OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_17_29(v187, v188, v189, v190, v191, v192, v193, v194, v321, v341, v360, v379, v399, v418, v437, v455, v475, v494, v510, v521, v531, v541, v549, v554, v195);
    *(v196 + 32) = v431.n128_u64[0];
    *(&v667[0] + 1) = v431.n128_u64[1];
    v197 = *(*(v393 + 48) + 160);
    *&v667[1] = v145;
    BYTE8(v667[1]) = v197;
    sub_25BCB617C();
    *(&v666[0] + 1) = sub_25BCB614C();
    sub_25BAF9B54(v666);
    OUTLINED_FUNCTION_57_2();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v666[0] = v149;
    sub_25BAFC990();
    v199 = *(&v666[0] + 1);
    v198 = *&v666[0];
    v200 = *(v393 + 96);
    v666[0] = *(v393 + 80);
    v666[1] = v200;
    v667[0] = *(v393 + 112);
    *(v667 + 10) = *(v393 + 122);
    v201 = OUTLINED_FUNCTION_6_5();
    sub_25BBA1A84(v201, v202, v164, v413, v186, v185, v198, v199, v666);
    v141 = v539;

    v140 = v431.n128_i64[1];

    v139 = v431.n128_u64[0];
    v70 = v508;
    v72 = v393;
LABEL_20:

    v203 = swift_allocObject();
    v204 = OUTLINED_FUNCTION_17_19(v203, v547);
    v204[3].n128_u64[0] = v489;
    v204[3].n128_u64[1] = v70;
    v205 = OUTLINED_FUNCTION_120_2(v204);
    *(v205 + 80) = v139;
    *(v205 + 88) = v140;
    sub_25BCB617C();
    v206 = MEMORY[0x277D837E0];
    *(&v664[0] + 1) = OUTLINED_FUNCTION_165();
    sub_25BAFA1D4(v203, v207, v208, v209, v210, v211, v212, v213, v315, v335, v354, v373, v393, v413, v431.n128_i64[0], v431.n128_i64[1], v469);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v214 = sub_25BC0C500();
    *&v664[0] = v141;
    sub_25BAFCBDC(v214);
    v456 = v141;
    v215 = *(&v664[0] + 1);
    v216 = swift_allocObject();
    OUTLINED_FUNCTION_59_3(v216, v217, v218, v219, v220, v221, v222, v223, v322, v342, v361, v380, v400, v419, v438, v456, v476, v489, v508, v519, v529, v539, v224);
    *(v225 + 32) = 0x736F70736E617274;
    *(v225 + 40) = 0xEB00000000785F65;
    *(v225 + 48) = xmmword_25BCC06A0;
    *(v225 + 64) = 0;
    *(v225 + 72) = 0x736F70736E617274;
    *(v225 + 80) = 0xEB00000000795F65;
    *(v225 + 88) = 0;
    *(v225 + 96) = 0;
    *(v225 + 104) = 0;
    *(&v664[0] + 1) = OUTLINED_FUNCTION_165();
    sub_25BAFA0CC(v664, v226, v227, v228, v229, v230, v231, v232, v233, v323, v343, v362, v381, v401, v420, v439, v457, v477, v495, v511);
    OUTLINED_FUNCTION_104_3();
    v234 = sub_25BC0C4D8();
    *&v664[0] = v206;
    sub_25BAFCD30(v234);
    v235 = v664[0];
    v236 = OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_17_29(v236, v237, v238, v239, v240, v241, v242, v243, v324, v344, v363, v382, v402, v421, v440, v458, v478, v496, v512, v522, v532, v542, v547.n128_i64[0], v547.n128_i64[1], v244);
    OUTLINED_FUNCTION_20_20();
    sub_25BBE0998(v72, 1, v672, v245, v246, &unk_25BCC6048, sub_25BAC9864, v247, v325, v345, v364, v383, v403, v422, v441, v459, v479, v497, v513, v523, v533, v543, v550, v555, v558.n128_i64[0], v558.n128_i64[1], v561, v564, v567, v570, v573, v576, v579, v582, v585, v588, v591, v594, v597, v600, v603, v606, v609, v612, v615, v618, v621, v624, v627, v630, v633, v636, v639, v642, v645, v648, v651, v654, v657, v660);
    *&v665[0] = v248;
    *(&v665[0] + 1) = v249;
    v250 = *(v72 + 72);
    if (*(v250 + 16) >= 2uLL)
    {
      OUTLINED_FUNCTION_105_2(*(v250 + 48), *(v250 + 56));
      *(&v664[0] + 1) = sub_25BCB614C();
      sub_25BAF9B54(v664);
      OUTLINED_FUNCTION_104_3();
      sub_25BC0C4EC();
      *&v664[0] = v206;
      sub_25BAFC990();
      v251 = v664[0];
      v252 = *(v72 + 96);
      v664[0] = *(v72 + 80);
      v664[1] = v252;
      v665[0] = *(v72 + 112);
      *(v665 + 10) = *(v72 + 122);
      v253 = OUTLINED_FUNCTION_85_3();
      sub_25BBA1A84(v253, v254, v460, v215, v235, *(&v235 + 1), v251, *(&v251 + 1), v664);

      if (!*(v72 + 64))
      {
LABEL_24:

        OUTLINED_FUNCTION_16();
        return;
      }

      v255 = OUTLINED_FUNCTION_112_2();
      OUTLINED_FUNCTION_17_19(v255, v559)[3] = v498;
      v256 = MEMORY[0x277D837E0];
      OUTLINED_FUNCTION_152();
      sub_25BCB614C();
      sub_25BAFA1D4(v255, v257, v258, v259, v260, v261, v262, v263, v326, v346, v365, v384, v404, v423, v442, v460, v480);
      OUTLINED_FUNCTION_46_9();
      swift_setDeallocating();
      v264 = sub_25BC0C500();
      *&v662[0] = v215;
      sub_25BAFCBDC(v264);
      v265 = swift_allocObject();
      OUTLINED_FUNCTION_59_3(v265, v266, v267, v268, v269, v270, v271, v272, v327, v347, v366, v385, v405, v424, v443, v461, v481, v498.n128_i64[0], v498.n128_i64[1], v524, v534, v544, v273);
      v274[4] = 1936029793;
      v274[5] = 0xE400000000000000;
      v274[6] = &unk_286D42310;
      v274[7] = 0;
      OUTLINED_FUNCTION_200(v274);
      OUTLINED_FUNCTION_51_9();
      *(v275 + 72) = v276;
      *(v275 + 80) = v277;
      *(v275 + 88) = 0;
      *(v275 + 96) = 0;
      *(v275 + 104) = 0;
      OUTLINED_FUNCTION_152();
      *(&v662[0] + 1) = sub_25BCB614C();
      sub_25BAFA0CC(v662, v278, v279, v280, v281, v282, v283, v284, v285, v328, v348, v367, v386, v406, v425, v444, v462, v482, v499, v514);
      OUTLINED_FUNCTION_104_3();
      v286 = sub_25BC0C4D8();
      *&v662[0] = v256;
      sub_25BAFCD30(v286);
      v287 = OUTLINED_FUNCTION_112_2();
      OUTLINED_FUNCTION_17_29(v287, v288, v289, v290, v291, v292, v293, v294, v329, v349, v368, v387, v407, v426, v445, v463, v483, v500, v515, v525, v535, v545, v551, v556, v295);
      OUTLINED_FUNCTION_20_20();
      sub_25BBE0998(v72, 2, v672, v296, v297, &unk_25BCC6048, sub_25BAC9864, v298, v330, v350, v369, v388, v408, v427, v446, v464, v484, v501, v516, v526, v536, v546, v552, v557, v559.n128_i64[0], v559.n128_i64[1], v562, v565, v568, v571, v574, v577, v580, v583, v586, v589, v592, v595, v598, v601, v604, v607, v610, v613, v616, v619, v622, v625, v628, v631, v634, v637, v640, v643, v646, v649, v652, v655, v658, v661);
      *&v663[0] = v299;
      *(&v663[0] + 1) = v300;
      v301 = *(v72 + 72);
      if (*(v301 + 16) >= 3uLL)
      {
        OUTLINED_FUNCTION_105_2(*(v301 + 64), *(v301 + 72));
        *(&v662[0] + 1) = sub_25BCB614C();
        sub_25BAF9B54(v662);
        OUTLINED_FUNCTION_104_3();
        sub_25BC0C4EC();
        *&v662[0] = v256;
        sub_25BAFC990();
        v302 = *(v72 + 96);
        v662[0] = *(v72 + 80);
        v662[1] = v302;
        v663[0] = *(v72 + 112);
        *(v663 + 10) = *(v72 + 122);
        OUTLINED_FUNCTION_215();
        OUTLINED_FUNCTION_149_0();
        sub_25BBA1A84(v303, v304, v305, v306, v307, v308, v309, v310, v662);

        goto LABEL_24;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_32:
  __break(1u);
}

uint64_t sub_25BBD78EC(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_25BBFD330(0, (v3 - result) & ~((v3 - result) >> 63), v3, a2);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_25BABAF60(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_25BBD799C()
{
  OUTLINED_FUNCTION_17_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_25BBD825C();
  v51 = v5;
  v53 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCC4630;
  OUTLINED_FUNCTION_9_33();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v10, *(v1 + 64), xmmword_25BCBAE70);
  *(inited + 64) = 5;
  OUTLINED_FUNCTION_41_11();
  OUTLINED_FUNCTION_193(v11);
  v12 = OUTLINED_FUNCTION_112_2();
  v97.val[0] = *(v1 + 80);
  v13 = (v12 + 32);
  v97.val[1] = v97.val[0];
  vst2q_f64(v13, v97);
  *(v12 + 16) = xmmword_25BCBDF80;
  *(inited + 88) = v12;
  *(inited + 96) = 0;
  *(inited + 104) = 5;
  OUTLINED_FUNCTION_8_32();
  *(inited + 112) = v14;
  *(inited + 120) = v15;
  OUTLINED_FUNCTION_72_3(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_54();
  v16 = swift_allocObject();
  v17 = *(v1 + 96);
  *(v16 + 16) = xmmword_25BCBAE70;
  *(v16 + 32) = v17;
  *(inited + 168) = v16;
  *(inited + 176) = 0;
  *(inited + 184) = 5;
  *(inited + 192) = 0x7370756F7267;
  *(inited + 200) = 0xE600000000000000;
  OUTLINED_FUNCTION_134(*(v1 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v18 = MEMORY[0x277D837E0];
  v19 = OUTLINED_FUNCTION_207();
  v20 = OUTLINED_FUNCTION_40_12(v19);
  sub_25BAFA0CC(v20, v21, v22, v23, v24, v25, v26, v27, v28, v43, v45, 2, 4, v49, v51, v53, v55, v57, v59, v61);
  OUTLINED_FUNCTION_147();
  v29 = sub_25BC0C4D8();
  sub_25BAFCD30(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_25BCBAE50;
  sub_25BBE0B84(v1, 0, v3, qword_28154DC68, type metadata accessor for Convolution2DOperation, &unk_25BCC5FD8, sub_25BAB95AC, v31, v44, v46, v47, v48, v50, v52, v54, v56, v58, v60, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96[0], v96[1], v96[2], v96[3], v96[4], v96[5], v96[6], v96[7]);
  *(v30 + 32) = v32;
  *(v30 + 40) = v33;
  OUTLINED_FUNCTION_105_2(*(v1 + 192), *(v1 + 200));
  v34 = OUTLINED_FUNCTION_207();
  v35 = OUTLINED_FUNCTION_40_12(v34);
  sub_25BAF9B54(v35);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  v96[0] = v18;
  sub_25BAFC990();
  OUTLINED_FUNCTION_71_2(*(v1 + 128), *(v1 + 144));
  *(v36 + 32) = *(v1 + 160);
  *(v36 + 42) = *(v1 + 170);
  OUTLINED_FUNCTION_33_14(1986948963, 0xE400000000000000, v37, v38, v39, v40, v41, v42, v96);

  OUTLINED_FUNCTION_16();
}

void sub_25BBD7C60()
{
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_53_7();
  v41 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_79_3(inited, xmmword_25BCBAE90);
  OUTLINED_FUNCTION_58_4(*(v1 + 192));
  inited[4].n128_u64[1] = v0;
  inited[5].n128_u64[0] = 0x746867696577;
  inited[5].n128_u64[1] = 0xE600000000000000;
  inited[6].n128_u64[0] = *(v1 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v5 = OUTLINED_FUNCTION_165();
  v6 = OUTLINED_FUNCTION_40_12(v5);
  sub_25BAD8178(v6);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  v7 = sub_25BC0C4C4();
  OUTLINED_FUNCTION_132(v7);
  OUTLINED_FUNCTION_174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_25BCC81E0;
  OUTLINED_FUNCTION_9_33();
  *(v9 + 32) = v10;
  *(v9 + 40) = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v12 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v12, *(v1 + 64), xmmword_25BCBAE70);
  *(v8 + 64) = 5;
  OUTLINED_FUNCTION_8_32();
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  *(v8 + 88) = xmmword_25BCC81D0;
  *(v8 + 104) = 4;
  OUTLINED_FUNCTION_41_11();
  *(v8 + 112) = v15;
  *(v8 + 120) = v16;
  v17 = OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_22_21(v17, xmmword_25BCBDF80);
  *(v8 + 144) = 5;
  *(v8 + 152) = 0x6E6F6974616C6964;
  *(v8 + 160) = 0xE900000000000073;
  OUTLINED_FUNCTION_54();
  v18 = swift_allocObject();
  OUTLINED_FUNCTION_121_1(v18, *(v1 + 96), xmmword_25BCBAE70);
  *(v8 + 192) = v19;
  *(v8 + 200) = 0xE600000000000000;
  OUTLINED_FUNCTION_134(*(v1 + 112));
  strcpy((v8 + 232), "has_input_grad");
  *(v8 + 247) = -18;
  *(v8 + 248) = xmmword_25BCC06A0;
  *(v8 + 264) = 0;
  *(v8 + 272) = 0x676965775F736168;
  *(v8 + 280) = 0xEF646172675F7468;
  *(v8 + 288) = xmmword_25BCC06A0;
  *(v8 + 304) = 0;
  strcpy((v8 + 312), "has_bias_grad");
  *(v8 + 326) = -4864;
  *(v8 + 328) = *(v1 + 56) != 0;
  *(v8 + 336) = 0;
  *(v8 + 344) = 0;
  v20 = OUTLINED_FUNCTION_165();
  v21 = OUTLINED_FUNCTION_40_12(v20);
  sub_25BAFA0CC(v21, v22, v23, v24, v25, v26, v27, v28, v29, v36, v37, 2, 4, v38, v39, v41, v43, v44, v45, v46);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  v30 = sub_25BC0C4D8();
  v47[0] = 5;
  sub_25BAFCD30(v30);
  v31 = v47[1];
  v32 = sub_25BBD7FBC(v42);
  v34 = v33;
  OUTLINED_FUNCTION_71_2(*(v1 + 128), *(v1 + 144));
  *(v35 + 32) = *(v1 + 160);
  *(v35 + 42) = *(v1 + 170);
  sub_25BBA18D8(0x6172675F766E6F63, 0xE900000000000064, v40, v2, 5, v31, v32, v34, v47);

  OUTLINED_FUNCTION_16();
}

__n128 *sub_25BBD825C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38C0, &unk_25BCC8950);
  v1 = swift_allocObject();
  OUTLINED_FUNCTION_17_19(v1, xmmword_25BCBAE70);
  v2 = v0[6];
  v1[3].n128_u64[0] = v0[5];
  v1[3].n128_u64[1] = 0x746867696577;
  v1[4].n128_u64[0] = 0xE600000000000000;
  v1[4].n128_u64[1] = v2;
  v3 = v0[7];

  if (v3)
  {

    sub_25BAFD648();
    v1 = v4;
    v4[1].n128_u64[0] = 3;
    v4[5].n128_u64[0] = 1935763810;
    v4[5].n128_u64[1] = 0xE400000000000000;
    v4[6].n128_u64[0] = v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v6 = sub_25BCB614C();
  sub_25BAD8324(v6);
  return v1;
}

void sub_25BBD8378()
{
  OUTLINED_FUNCTION_17_1();
  v219 = v1;
  v225 = v4;
  v5 = OUTLINED_FUNCTION_197(v4);
  if (!v6)
  {
    OUTLINED_FUNCTION_86();
    OUTLINED_FUNCTION_155();
    OUTLINED_FUNCTION_50_7();
    goto LABEL_52;
  }

  v236 = v0;
  v7 = sub_25BAB4308(v5);
  v8 = sub_25BA9BEA0(v7);
  v9 = 0;
  v10 = _TtC14NeuralNetworks17ConstantOperation;
  while (v8 != v9)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v2 = MEMORY[0x25F8779B0](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }

      v2 = *(v7 + 8 * v9 + 32);
    }

    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v3 = sub_25BAC4018();
    v0 = *(v236 + 40);
    if (v3 == sub_25BAC4018())
    {
    }

    else
    {
      v0 = sub_25BAB3058();

      if (!v0)
      {
        goto LABEL_49;
      }

      if (object_getClass(v0) != _TtC14NeuralNetworks17ConstantOperation)
      {

        swift_unknownObjectRelease();
        goto LABEL_51;
      }

      swift_unknownObjectRelease();
    }

    ++v9;
  }

  v10 = v236;
  v0 = v236;
  v9 = sub_25BB2BAEC(0x6172745F766E6F63, 0xEF6465736F70736ELL);
  v8 = v11;
  v2 = &off_25BCBA000;
  v213 = v11;
  v186 = v9;
  if (*(v236 + 232) <= 0 && *(v236 + 224) < 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v29 = OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_67_3(v29, xmmword_25BCBDF80);
    v269.val[0] = *(v236 + 80);
    v269.val[1] = v269.val[0];
    v229 = v269.val[0];
    v233 = v269.val[0];
    vst2q_f64(v135, v269);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBAE50;
    OUTLINED_FUNCTION_69_3();
    v137 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v137, v138, v225, v139, v140, v141, v142, v143, v148, v155, v163, v170, v178, v9, v193, v201, v206, v213, v1, v225, *&v229.f64[0], *&v229.f64[1], *&v233.f64[0], *&v233.f64[1], v235, v236, v237, *(&v237 + 1), v238, *(&v238 + 1), *&v239[0], *(&v239[0] + 1), *&v239[1], *(&v239[1] + 1), v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265);
    *(inited + 32) = v144;
    *(inited + 40) = v145;
    OUTLINED_FUNCTION_105_2(v10[12].n128_i64[0], v10[12].n128_i8[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    sub_25BCB614C();
    v146 = OUTLINED_FUNCTION_150();
    sub_25BAF9B54(v146);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v237 = v7;
    sub_25BAFC990();
    v194 = *(&v237 + 1);
    v28 = v7;
    v179 = v230;
    v156 = v231;
    goto LABEL_29;
  }

  v3 = *(v236 + 80);
  v12 = 2 * v3;
  if (__OFADD__(v3, v3))
  {
    goto LABEL_39;
  }

  v13 = *(v236 + 224);
  v0 = (v12 - v13);
  if (__OFSUB__(v12, v13))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    sub_25BAA2110(v7);
    v7 = v147;
    goto LABEL_22;
  }

  v7 = *(v236 + 192);
  if (*(v7 + 16) <= 2uLL)
  {
    *&v238 = 0;
    v237 = 2uLL;
    OUTLINED_FUNCTION_110_3();
    sub_25BCB617C();
    goto LABEL_55;
  }

  v14 = *(v236 + 192);
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_22:
  v15 = *(v7 + 16);
  if (v15 < 3)
  {
    __break(1u);
    goto LABEL_43;
  }

  v16 = *(v7 + 48);
  v17 = __OFADD__(v16, v0);
  v18 = &v0[v16];
  if (v17)
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  *(v7 + 48) = v18;
  v19 = v10[5].n128_u64[1];
  v20 = 2 * v19;
  if (__OFADD__(v19, v19))
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v21 = v10[14].n128_u64[1];
  v17 = __OFSUB__(v20, v21);
  v22 = v20 - v21;
  if (v17)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v15 == 3)
  {
    *&v238 = 0;
    v237 = 3uLL;
    OUTLINED_FUNCTION_110_3();
LABEL_55:
    sub_25BADDD28();
  }

  v23 = *(v7 + 56);
  v17 = __OFADD__(v23, v22);
  v24 = v23 + v22;
  if (v17)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v156 = v10[5].n128_i64[1];
  v179 = v3;
  *(v7 + 56) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v25 = OUTLINED_FUNCTION_112_2();
  *(v25 + 16) = *(v2 + 229);
  *(v25 + 32) = v9;
  *(v25 + 40) = v8;
  v26 = v10[12].n128_u8[8];
  *(v25 + 48) = v7;
  *(v25 + 56) = v26;
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  v27 = OUTLINED_FUNCTION_150();
  sub_25BAF9B54(v27);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v237 = v7;
  sub_25BAFC990();
  v28 = v7;
  v194 = *(&v237 + 1);
  v29 = &unk_286D42400;
LABEL_29:
  v30 = sub_25BBD825C();
  v32 = v31;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_25BCC4630;
  OUTLINED_FUNCTION_9_33();
  *(v34 + 32) = v35;
  *(v34 + 40) = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  OUTLINED_FUNCTION_54();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_122_3(v38, v10[4], xmmword_25BCBAE70);
  *(v33 + 64) = 5;
  OUTLINED_FUNCTION_41_11();
  *(v33 + 72) = v39;
  *(v33 + 80) = v40;
  *(v33 + 88) = v29;
  *(v33 + 96) = 0;
  *(v33 + 104) = 5;
  OUTLINED_FUNCTION_8_32();
  *(v33 + 112) = v41;
  *(v33 + 120) = v42;
  OUTLINED_FUNCTION_72_3(xmmword_25BCC81D0);
  OUTLINED_FUNCTION_54();
  v43 = swift_allocObject();
  OUTLINED_FUNCTION_121_1(v43, v10[6], xmmword_25BCBAE70);
  *(v33 + 192) = v44;
  *(v33 + 200) = 0xE600000000000000;
  OUTLINED_FUNCTION_134(v10[7].n128_i64[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  v45 = OUTLINED_FUNCTION_150();
  sub_25BAFA0CC(v45, v46, v47, v48, v49, v50, v51, v52, v53, v148, v156, v37, v171, v179, v186, v194, v201, v206, v213, v219);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  v54 = sub_25BC0C4D8();
  *&v237 = 5;
  sub_25BAFCD30(v54);
  v55 = v237;
  v56 = *(v236 + 144);
  v237 = *(v236 + 128);
  v238 = v56;
  v239[0] = *(v236 + 160);
  *(v239 + 10) = *(v236 + 170);
  v57 = v236;
  sub_25BBA18D8(0x6172745F766E6F63, 0xEE0065736F70736ELL, v30, v32, v55, *(&v55 + 1), v28, v195, &v237);

  if (*(v236 + 232) > 0 || *(v236 + 224) >= 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    v58 = swift_initStackObject();
    v59 = OUTLINED_FUNCTION_17_19(v58, xmmword_25BCBAE50);
    v59[3].n128_u64[0] = v187;
    v59[3].n128_u64[1] = v214;
    v60 = sub_25BCB614C();
    v61 = OUTLINED_FUNCTION_40_12(v60);
    sub_25BAFA1D4(v61, v62, v63, v64, v65, v66, v67, v68, v149, v157, v164, v172, v180, v187, 1, 2, v207);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    sub_25BC0C500();
    OUTLINED_FUNCTION_48_8();
    sub_25BAFCBDC(v69);
    v70 = v266;
    v71 = swift_initStackObject();
    OUTLINED_FUNCTION_60_3(v71, v72, v73, v74, v75, v76, v77, v78, v150, v158, v165, v173, v181, v188, v196, v202, v208, v214, v220, v225, v79);
    *(v80 + 32) = 0x6965685F706F7263;
    *(v80 + 40) = 0xEB00000000746867;
    OUTLINED_FUNCTION_54();
    v81 = swift_allocObject();
    OUTLINED_FUNCTION_94_3(v81, v82, v83, v84, v85, v86, v87, v88, v151, v159, v166, v174, v182, v189, v197, v203, v209, v215, v221, v226, v89);
    *(v90 + 32) = v183;
    v91 = *(v236 + 224);
    v17 = __OFSUB__(v183, v91);
    v92 = v183 - v91;
    if (!v17)
    {
      *(v90 + 40) = v92;
      v58[3].n128_u64[0] = v90;
      v58[3].n128_u64[1] = 0;
      v58[4].n128_u8[0] = 5;
      v58[4].n128_u64[1] = 0x6469775F706F7263;
      v58[5].n128_u64[0] = 0xEA00000000006874;
      OUTLINED_FUNCTION_54();
      v93 = swift_allocObject();
      OUTLINED_FUNCTION_94_3(v93, v94, v95, v96, v97, v98, v99, v100, v152, v160, v167, v175, v183, v190, v198, v204, v210, v216, v222, v227, v101);
      *(v102 + 32) = v161;
      v103 = *(v236 + 232);
      v17 = __OFSUB__(v161, v103);
      v104 = v161 - v103;
      if (!v17)
      {
        *(v102 + 40) = v104;
        v58[5].n128_u64[1] = v102;
        v58[6].n128_u64[0] = 0;
        v58[6].n128_u8[8] = 5;
        v105 = MEMORY[0x277D84F90];
        OUTLINED_FUNCTION_188();
        v106 = sub_25BCB614C();
        v107 = OUTLINED_FUNCTION_40_12(v106);
        sub_25BAFA0CC(v107, v108, v109, v110, v111, v112, v113, v114, v115, v153, v161, v168, v176, v184, v191, v199, v205, v211, v217, v223);
        OUTLINED_FUNCTION_46_9();
        swift_setDeallocating();
        sub_25BC0C4D8();
        OUTLINED_FUNCTION_48_8();
        sub_25BAFCD30(v116);
        v117 = v266;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
        v118 = OUTLINED_FUNCTION_112_2();
        *(v118 + 16) = v200;
        OUTLINED_FUNCTION_69_3();
        v119 = OUTLINED_FUNCTION_47_10();
        sub_25BBE0998(v119, v120, v228, v121, v122, v123, v124, v125, v154, v162, v169, v177, v185, v192, v200, *(&v200 + 1), v212, v218, v224, v228, v70, 4, v232, v234, v235, v236, v237, *(&v237 + 1), v238, *(&v238 + 1), *&v239[0], *(&v239[0] + 1), *&v239[1], *(&v239[1] + 1), v240, v241, v242, v243, v244, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257, v258, v259, v260, v261, v262, v263, v264, v265);
        *(v118 + 32) = v126;
        *(v118 + 40) = v127;
        OUTLINED_FUNCTION_105_2(*(v57 + 192), *(v57 + 200));
        OUTLINED_FUNCTION_188();
        v128 = sub_25BCB614C();
        v129 = OUTLINED_FUNCTION_40_12(v128);
        sub_25BAF9B54(v129);
        OUTLINED_FUNCTION_183();
        swift_setDeallocating();
        sub_25BC0C4EC();
        *&v266 = v57;
        OUTLINED_FUNCTION_163();
        v130 = v266;
        v266 = 0u;
        v267 = 0u;
        memset(v268, 0, 25);
        v268[25] = 1;
        OUTLINED_FUNCTION_64_4();
        sub_25BBA1A84(v131, v132, v133, v134, v117, *(&v117 + 1), v130, *(&v130 + 1), v105);

        goto LABEL_34;
      }

LABEL_48:
      __break(1u);
LABEL_49:

LABEL_51:
      OUTLINED_FUNCTION_86();
      OUTLINED_FUNCTION_155();
      OUTLINED_FUNCTION_50_7();
LABEL_52:
      sub_25BA97890();
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

LABEL_34:

  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BBD8D24()
{
  sub_25BB2C64C(v0 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (!LOBYTE(__dst[15]))
  {
    goto LABEL_4;
  }

  if (LOBYTE(__dst[15]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&__dst[10]);
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    return 0x6E5F6D6F646E6172;
  }

  __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  return 0x755F6D6F646E6172;
}

BOOL sub_25BBD8DE8()
{
  sub_25BC31C8C(&v2);
  v0 = v3;

  return v0 == 8;
}

BOOL sub_25BBD8E28()
{
  sub_25BC31C8C(&v2);
  v0 = v3;

  return (v0 & 0xFFFFFFFD) != 8;
}

BOOL sub_25BBD8E6C()
{
  sub_25BB2C64C(v0 + 48, __src);
  memcpy(v3, __src, 0x79uLL);
  v1 = LOBYTE(v3[15]);
  if (LOBYTE(v3[15]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_1(&v3[10]);
    __swift_destroy_boxed_opaque_existential_1(&v3[5]);
    __swift_destroy_boxed_opaque_existential_1(v3);
  }

  else
  {
    sub_25BBE12D8(v3);
  }

  return v1 == 1;
}

uint64_t sub_25BBD8EF0()
{
  v1 = v0;
  sub_25BB2C64C(v0 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (!BYTE8(__dst[7]))
  {
    OUTLINED_FUNCTION_170(__dst);
    goto LABEL_5;
  }

  if (BYTE8(__dst[7]) == 1)
  {
    OUTLINED_FUNCTION_170(__dst);
    __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
LABEL_5:
    v2 = sub_25BBD8DE8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    if (v2)
    {
      inited = swift_allocObject();
      *(inited + 16) = xmmword_25BCBAE90;
      OUTLINED_FUNCTION_65_1(inited, 1851876717);
      v4 = OUTLINED_FUNCTION_7_32(v58);
      *(inited + 48) = sub_25BC32028(v4);
      *(inited + 56) = 0;
      *(inited + 64) = 2;
      *(inited + 72) = 0x766564647473;
      *(inited + 80) = 0xE600000000000000;
      v5 = OUTLINED_FUNCTION_7_32(v57);
      *(inited + 88) = sub_25BC32028(v5);
      *(inited + 96) = 0;
      *(inited + 104) = 2;
      OUTLINED_FUNCTION_23_21();
      *(inited + 112) = v6;
      *(inited + 120) = v7;
      *(inited + 128) = *(v1 + 176);
      *(inited + 136) = 0;
      *(inited + 144) = 7;
    }

    else
    {
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25BCBAE90;
      OUTLINED_FUNCTION_65_1(inited, 1851876717);
      v8 = OUTLINED_FUNCTION_7_32(v58);
      *(inited + 48) = COERCE_UNSIGNED_INT(sub_25BC31CA0(v8));
      *(inited + 56) = 0;
      *(inited + 64) = 3;
      *(inited + 72) = 0x766564647473;
      *(inited + 80) = 0xE600000000000000;
      v9 = OUTLINED_FUNCTION_7_32(v57);
      *(inited + 88) = COERCE_UNSIGNED_INT(sub_25BC31CA0(v9));
      *(inited + 96) = 0;
      *(inited + 104) = 3;
      OUTLINED_FUNCTION_23_21();
      *(inited + 112) = v10;
      *(inited + 120) = v11;
      OUTLINED_FUNCTION_195();
    }

    sub_25BCB617C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    __src[1] = sub_25BCB614C();
    sub_25BAFA0CC(inited, v12, v13, v14, v15, v16, v17, v18, v19, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    v21 = v20;
    swift_setDeallocating();
    v22 = sub_25BC0C4D8();
    __src[0] = v21;
    sub_25BAFCD30(v22);
    v23 = __src[0];
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_170(__dst);
  v24 = sub_25BBD8DE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_25BCBAE90;
  *(v25 + 32) = 7827308;
  *(v25 + 40) = 0xE300000000000000;
  v26 = OUTLINED_FUNCTION_7_32(v58);
  if (v24)
  {
    *(v25 + 48) = sub_25BC32028(v26);
    *(v25 + 56) = 0;
    v27 = 2;
    *(v25 + 64) = 2;
    *(v25 + 72) = 1751607656;
    *(v25 + 80) = 0xE400000000000000;
    v28 = OUTLINED_FUNCTION_7_32(v57);
    v29 = sub_25BC32028(v28);
  }

  else
  {
    *(v25 + 48) = COERCE_UNSIGNED_INT(sub_25BC31CA0(v26));
    *(v25 + 56) = 0;
    v27 = 3;
    *(v25 + 64) = 3;
    *(v25 + 72) = 1751607656;
    *(v25 + 80) = 0xE400000000000000;
    v30 = OUTLINED_FUNCTION_7_32(v57);
    v29 = COERCE_UNSIGNED_INT(sub_25BC31CA0(v30));
  }

  *(v25 + 88) = v29;
  *(v25 + 96) = 0;
  *(v25 + 104) = v27;
  *(v25 + 112) = 0x6570616873;
  *(v25 + 120) = 0xE500000000000000;
  OUTLINED_FUNCTION_195();
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  sub_25BCB614C();
  sub_25BAFA0CC(v25, v31, v32, v33, v34, v35, v36, v37, v38, v43, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  v40 = v39;
  swift_setDeallocating();
  v41 = sub_25BC0C4D8();
  sub_25BAFCD30(v41);
  v23 = v40;
LABEL_13:
  v44 = v23;
  __swift_destroy_boxed_opaque_existential_1(v57);
  __swift_destroy_boxed_opaque_existential_1(v58);
  return v44;
}

uint64_t sub_25BBD92C4(uint64_t a1)
{
  v3 = v1;
  v5 = *(v1 + 40);

  v7 = sub_25BBA0B64(v6);
  v9 = v8;

  *&__src[0] = v7;
  *(&__src[0] + 1) = v9;
  OUTLINED_FUNCTION_201_0();
  MEMORY[0x25F876C90]();
  v10 = v7;
  v264 = v9;
  v11 = *(v3 + 40);
  type metadata accessor for TensorHandle();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  swift_retain_n();
  sub_25BAA6EB0();

  v13 = sub_25BBCB800(v12);

  v15 = *(v13 + 16);
  if (v15 < 2)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v15 == 2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v15 < 4)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v15 == 4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v15 < 6)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v15 == 6)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  v284 = *(v13 + 36);
  v16 = *(v13 + 52);

  sub_25BB6B190(v284, v16);
  __src[0] = v17;
  LOBYTE(__src[1]) = 1;
  v18 = *(v3 + 200);
  v299[0] = *(v3 + 184);
  v299[1] = v18;
  v300[0] = *(v3 + 216);
  *(v300 + 10) = *(v3 + 226);
  v19 = v10;
  sub_25BBA00B4(__src, v10, v264, v299);
  sub_25BB06134(*&__src[0], *(&__src[0] + 1), __src[1]);
  OUTLINED_FUNCTION_19_19();
  v20 = OUTLINED_FUNCTION_47_10();
  sub_25BBE0998(v20, v21, a1, v22, v23, v24, v25, v26, v174, v184, v194, v205, v216, v226, v236, v245, v254, v264, v271, v277, v284.i64[0], v284.i64[1], v286, *(&v286 + 1), v287, v288, v289, *(&v289 + 1), v290, v291, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
  v278 = v27;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  inited = swift_initStackObject();
  v285 = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_67_3(inited, xmmword_25BCBAE50);
  sub_25BC31C8C(v31);
  v32 = inited[2].n128_i64[0];
  v33 = inited[2].n128_u8[8];
  swift_setDeallocating();
  sub_25BCB617C();
  sub_25BAB9E1C();
  if (sub_25BBD8E6C() || sub_25BBD8E28())
  {
    *&__src[0] = v278;
    *(&__src[0] + 1) = v29;
    MEMORY[0x25F876C90](1735291487, 0xE400000000000000);
    v29 = *(&__src[0] + 1);
    v278 = *&__src[0];
  }

  if (sub_25BBD8E28())
  {

    sub_25BC31C8C(__src);
    v255 = *&__src[0];
    v34 = 10;
  }

  else
  {
    v255 = v32;
    v34 = v33;
  }

  v35 = sub_25BBD8D24();
  v195 = v36;
  v206 = v35;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  v37 = OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_60_3(v37, v38, v39, v40, v41, v42, v43, v44, v175, v185, v195, v206, v217, v227, v2, v29, v255, v265, a1, v278, v45);
  v47 = OUTLINED_FUNCTION_65_1(v46, 1684366707);
  *(v47 + 48) = v19;
  *(v47 + 56) = v266;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&__src[0] + 1) = sub_25BCB614C();
  sub_25BAFA1D4(v3, v49, v50, v51, v52, v53, v54, v55, v176, v186, v196, v207, v218, v228, v237, v246, v256);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  v56 = sub_25BC0C500();
  *&__src[0] = inited;
  sub_25BAFCBDC(v56);
  v57 = sub_25BBD8EF0();
  v59 = v58;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v60 = OUTLINED_FUNCTION_112_2();
  OUTLINED_FUNCTION_60_3(v60, v61, v62, v63, v64, v65, v66, v67, v177, v187, v197, v208, v219, v229, v238, v247, v257, v266, v272, v279, v68);
  *(v69 + 32) = v280;
  *(v3 + 40) = v248;
  *(v3 + 48) = v258;
  HIDWORD(v188) = v34;
  *(v3 + 56) = v34;
  sub_25BCB617C();
  sub_25BCB617C();
  v267 = v48;
  *(&__src[0] + 1) = sub_25BCB614C();
  sub_25BAF9B54(v3);
  OUTLINED_FUNCTION_104_3();
  sub_25BC0C4EC();
  *&__src[0] = v34;
  sub_25BAFC990();
  v70 = __src[0];
  v71 = *(v3 + 200);
  v297[0] = *(v3 + 184);
  v297[1] = v71;
  v298[0] = *(v3 + 216);
  *(v298 + 10) = *(v3 + 226);
  OUTLINED_FUNCTION_191();
  sub_25BBA1A84(v72, v73, v74, v75, v57, v59, v70, *(&v70 + 1), v297);

  sub_25BB2C64C(v3 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (__dst[120] == 1)
  {
    sub_25BA97060(&__dst[80], v294);
    __swift_destroy_boxed_opaque_existential_1(&__dst[40]);
    __swift_destroy_boxed_opaque_existential_1(__dst);
    v76 = v280;
    *v295 = v280;
    v77 = v248;
    *&v295[8] = v248;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v78 = sub_25BBA0DCC(0x657268745F6F7774);
    MEMORY[0x25F876C90](v78);

    v79 = *v295;
    sub_25BAC27B0(v294, v295);
    sub_25BB9483C(v295, &v289);
    v286 = v289;
    LOBYTE(v287) = v290;
    HIBYTE(v291) = 1;
    memset(v295, 0, sizeof(v295));
    v296 = 1;
    sub_25BBA10A8(&v286, v79, *(&v79 + 1), v295);
    sub_25BB06134(v286, *(&v286 + 1), v287);
    if (sub_25BBD8E28())
    {
      *&v289 = v280;
      *(&v289 + 1) = v248;
      sub_25BCB617C();
      MEMORY[0x25F876C90](0x7461636E7572745FLL, 0xEA00000000006465);
      v199 = *(&v289 + 1);
      v210 = v289;
    }

    else
    {
      OUTLINED_FUNCTION_19_19();
      v82 = OUTLINED_FUNCTION_47_10();
      sub_25BBE0998(v82, v83, v273, v84, v85, v86, v87, v88, v178, v188, v198, v209, v220, v230, v239, v248, v258, v48, v273, v280, 1, 2, v286, *(&v286 + 1), v287, v288, v289, *(&v289 + 1), v290, v291, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
      v199 = v90;
      v210 = v89;
    }

    v91 = swift_allocObject();
    v92 = OUTLINED_FUNCTION_17_19(v91, xmmword_25BCBAE70);
    v92[3].n128_u64[0] = v76;
    v92[3].n128_u64[1] = v77;
    *(OUTLINED_FUNCTION_120_2(v92) + 80) = v79;
    v93 = MEMORY[0x277D84F90];
    sub_25BCB614C();
    v94 = OUTLINED_FUNCTION_150();
    sub_25BAFA1D4(v94, v95, v96, v97, v98, v99, v100, v101, v178, v188, v199, v210, v220, v230, v239, v248, v258);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v102 = sub_25BC0C500();
    *&v289 = *(&v79 + 1);
    sub_25BAFCBDC(v102);
    v103 = *(&v289 + 1);
    v281 = v289;
    OUTLINED_FUNCTION_111_3();
    v104 = sub_25BCB614C();
    *&v289 = v93;
    *(&v289 + 1) = v104;
    sub_25BAFCD30(v104);
    v105 = v289;
    v106 = OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_60_3(v106, v107, v108, v109, v110, v111, v112, v113, v179, v189, v200, v211, v221, v231, v240, v249, v259, v267, v273, v281, v114);
    v80 = v198;
    *(v115 + 32) = v209;
    *(v115 + 40) = v198;
    *(v115 + 48) = v258;
    *(v115 + 56) = BYTE4(v188);
    sub_25BCB617C();
    OUTLINED_FUNCTION_111_3();
    sub_25BCB614C();
    v116 = OUTLINED_FUNCTION_150();
    v117 = sub_25BAF9B54(v116);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&v289 = v117;
    sub_25BAFC990();
    sub_25BBA1A84(6582125, 0xE300000000000000, v280, v103, v105, *(&v105 + 1), v289, *(&v289 + 1), v295);

    __swift_destroy_boxed_opaque_existential_1(v294);
    v81 = v209;
  }

  else
  {

    sub_25BBE12D8(__dst);
    v80 = v248;
    v81 = v280;
  }

  if (sub_25BBD8E28())
  {
    v118 = OUTLINED_FUNCTION_112_2();
    v119 = OUTLINED_FUNCTION_17_19(v118, v285);
    v119[3].n128_u64[0] = v81;
    v119[3].n128_u64[1] = v80;
    *(&__src[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(v118, v120, v121, v122, v123, v124, v125, v126, v178, v188, v198, v209, v220, v230, v239, v248, v258);
    OUTLINED_FUNCTION_46_9();
    swift_setDeallocating();
    v127 = sub_25BC0C500();
    *&__src[0] = v80;
    sub_25BAFCBDC(v127);
    v128 = __src[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v129 = swift_allocObject();
    OUTLINED_FUNCTION_94_3(v129, v130, v131, v132, v133, v134, v135, v136, v180, v190, v201, v212, v222, v232, v241, v250, v260, v267, v273, v280, v137);
    OUTLINED_FUNCTION_44_7(v138, 1887007844);
    sub_25BC31C8C(__src);
    LOBYTE(v118) = BYTE8(__src[0]);

    __dst[0] = v118;
    v129[3].n128_u64[0] = sub_25BB9FC3C();
    v129[3].n128_u64[1] = v139;
    v129[4].n128_u8[0] = 4;
    *(&__src[0] + 1) = sub_25BCB614C();
    sub_25BAFA0CC(v129, v140, v141, v142, v143, v144, v145, v146, v147, v181, v191, v202, v213, v223, v233, v242, v251, v261, v268, v274);
    v149 = v148;
    swift_setDeallocating();
    v150 = sub_25BC0C4D8();
    *&__src[0] = v149;
    sub_25BAFCD30(v150);
    v151 = __src[0];
    v152 = OUTLINED_FUNCTION_112_2();
    OUTLINED_FUNCTION_94_3(v152, v153, v154, v155, v156, v157, v158, v159, v182, v192, v203, v214, v224, v234, v243, v252, v262, v269, v275, v282, v160);
    OUTLINED_FUNCTION_19_19();
    v161 = OUTLINED_FUNCTION_47_10();
    sub_25BBE0998(v161, v162, v276, v163, v164, v165, v166, v167, v183, v193, v204, v215, v225, v235, v244, v253, v263, v270, v276, v283, v285.n128_i64[0], v285.n128_i64[1], v286, *(&v286 + 1), v287, v288, v289, *(&v289 + 1), v290, v291, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], *&__dst[96], *&__dst[104], *&__dst[112], *&__dst[120], *&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1), *&__src[2], *(&__src[2] + 1), *&__src[3], *(&__src[3] + 1), *&__src[4], *(&__src[4] + 1), *&__src[5], *(&__src[5] + 1), *&__src[6], *(&__src[6] + 1));
    v152[2].n128_u64[0] = v168;
    v152[2].n128_u64[1] = v169;
    sub_25BC31C8C(&v152[3]);
    *(&__src[0] + 1) = sub_25BCB614C();
    v170 = sub_25BAF9B54(v152);
    swift_setDeallocating();
    sub_25BC0C4EC();
    *&__src[0] = v170;
    sub_25BAFC990();
    v171 = __src[0];
    __dst[0] = 1;
    memset(__src, 0, 57);
    BYTE9(__src[3]) = 1;
    v172 = OUTLINED_FUNCTION_90_1();
    sub_25BBA1A84(v172, v173, v128, *(&v128 + 1), v151, *(&v151 + 1), v171, *(&v171 + 1), __src);
  }
}

uint64_t sub_25BBD9F54(uint64_t a1)
{
  OUTLINED_FUNCTION_197(a1);
  if (!v3)
  {
    return sub_25BBDA5CC(a1);
  }

  result = sub_25BBD9F94(a1);
  if (!v1 && (result & 1) == 0)
  {
    return sub_25BBDA5CC(a1);
  }

  return result;
}

uint64_t sub_25BBD9F94(uint64_t a1)
{
  v2 = v1;
  v105 = *MEMORY[0x277D85DE8];
  if (*(v1 + 168))
  {
    if (*(v1 + 168) != 1)
    {
      goto LABEL_8;
    }

LABEL_9:
    result = 0;
    goto LABEL_10;
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v68);

  if (v73)
  {
    v4 = *(v73 + 24);
    sub_25BAA4AF4(&v68);
    if (v4)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_25BAA4AF4(&v68);
  }

LABEL_8:
  if ((*(*(*(v1 + 40) + 152) + 16) - 6) < 0xFFFFFFFFFFFFFFFDLL)
  {
    goto LABEL_9;
  }

  result = *(v1 + 152);
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = *(v1 + 160);
  if (!v7)
  {
    goto LABEL_9;
  }

  v60 = a1;
  v64 = *(v1 + 152);

  v66 = v7;

  v8 = sub_25BC5E468();
  v9 = sub_25BA9BEA0(v8);
  v10 = 0;
  LODWORD(v11) = v8 & 0xFFFFFFF8;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      a1 = MEMORY[0x25F8779B0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      a1 = *(v8 + 8 * v10 + 32);
    }

    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      sub_25BAD80BC();
      inited = v49;
LABEL_34:
      inited[2] = a1;
      v20 = &inited[3 * v11];
      v20[4] = 0x616D6D6167;
      v20[5] = 0xE500000000000000;
      v20[6] = v8;
      goto LABEL_35;
    }

    v12 = sub_25BAC4018();
    v13 = *(v2 + 40);
    if (v12 == sub_25BAC4018())
    {
    }

    else
    {
      v14 = sub_25BAB3058();

      if (!v14)
      {

LABEL_30:

        result = 0;
        goto LABEL_10;
      }

      if (object_getClass(v14) != _TtC14NeuralNetworks17ConstantOperation)
      {

        swift_unknownObjectRelease();
        goto LABEL_30;
      }

      swift_unknownObjectRelease();
    }

    ++v10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_25BCBAE90;
  inited[4] = 120;
  inited[5] = 0xE100000000000000;
  inited[6] = *(v2 + 40);
  inited[7] = 1851876717;
  inited[8] = 0xE400000000000000;
  inited[9] = v64;
  inited[10] = 0x65636E6169726176;
  inited[11] = 0xE800000000000000;
  inited[12] = v7;
  v16 = *(v2 + 56);

  if (v16)
  {

    v11 = 4;
    sub_25BAD80BC();
    inited = v17;
    v17[2] = 4;
    v17[13] = 1635018082;
    v17[14] = 0xE400000000000000;
    v17[15] = v16;
  }

  else
  {
    v11 = 3;
  }

  v8 = *(v2 + 48);
  if (v8)
  {
    v18 = inited[3];
    a1 = v11 + 1;
    v19 = *(v2 + 48);

    if (v11 >= v18 >> 1)
    {
      goto LABEL_38;
    }

    goto LABEL_34;
  }

LABEL_35:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  *(&v68 + 1) = sub_25BCB614C();
  v21 = sub_25BAD8178(inited);

  *&v68 = v21;
  sub_25BAD8324(v22);
  v23 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v24 = swift_initStackObject();
  *(v24 + 16) = xmmword_25BCBAE50;
  *(v24 + 32) = 0x6E6F6C69737065;
  *(v24 + 40) = 0xE700000000000000;
  v25 = *(v2 + 76);
  LOBYTE(v68) = *(*(v2 + 40) + 160);
  v26 = sub_25BC8FACC();
  sub_25BB949D8(v26, v27, v24 + 48, v25);
  *(&v68 + 1) = sub_25BCB614C();
  sub_25BAFA0CC(v24, v28, v29, v30, v31, v32, v33, v34, v35, v50, v52, 1, 2, v55, *(&v23 + 1), v60, v23, v64, v66, v68);
  v37 = v36;
  swift_setDeallocating();
  v38 = sub_25BC0C4D8();
  *&v68 = v37;
  sub_25BAFCD30(v38);
  v39 = *(&v68 + 1);
  v56 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v40 = swift_initStackObject();
  *(v40 + 16) = v54;
  sub_25BBE0998(v2, 0, v61, &unk_27FBB6148, type metadata accessor for BatchNormOperation, &unk_25BCD1FC0, sub_25BC60CBC, v41, v51, v53, v54, *(&v54 + 1), v56, v58, v61, v62, v65, v67, v68, *(&v68 + 1), v69, *(&v69 + 1), *&v70[0], *(&v70[0] + 1), *&v70[1], *(&v70[1] + 1), v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
  *(v40 + 32) = v42;
  *(v40 + 40) = v43;
  v44 = *(v2 + 40);

  sub_25BAC9400(v45, v40 + 48);
  *(&v68 + 1) = sub_25BCB614C();
  v46 = sub_25BAF9B54(v40);
  swift_setDeallocating();
  sub_25BC0C4EC();
  *&v68 = v46;
  sub_25BAFC990();
  v47 = v68;
  v48 = *(v2 + 96);
  v68 = *(v2 + 80);
  v69 = v48;
  v70[0] = *(v2 + 112);
  *(v70 + 10) = *(v2 + 122);
  sub_25BBA18D8(0x6F6E5F6863746162, 0xEA00000000006D72, v63, v59, v57, v39, v47, *(&v47 + 1), &v68);

  result = 1;
LABEL_10:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BBDA5F0(float a1, float a2, uint64_t a3, char a4)
{
  swift_getKeyPath();
  v7 = sub_25BBDE260();

  type metadata accessor for TensorHandle();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  sub_25BAA6EB0();

  swift_getKeyPath();
  v9 = sub_25BBDE2EC();

  if (!v9)
  {
    v23 = 0xD00000000000002FLL;
    v24 = 0x800000025BCE09D0;
    BYTE4(v25) = 3;
    goto LABEL_24;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  sub_25BAA6EB0();

  swift_getKeyPath();
  v11 = sub_25BBDE2EC();

  if (!v11)
  {
    v23 = 0xD000000000000030;
    v24 = 0x800000025BCE0A20;
    BYTE4(v25) = 3;
    goto LABEL_24;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v11;

  sub_25BAA6EB0();

  swift_getKeyPath();
  v13 = sub_25BBDE2EC();

  if (!v13)
  {
    v23 = 0xD000000000000035;
    v24 = 0x800000025BCE0A60;
    BYTE4(v25) = 3;
    goto LABEL_24;
  }

  v14 = swift_allocObject();
  *(v14 + 16) = v13;

  sub_25BAA6EB0();

  v30 = v14;
  swift_getKeyPath();
  v15 = sub_25BBDE2EC();

  if (!v15)
  {
    v23 = 0xD000000000000039;
    v24 = 0x800000025BCE0AA0;
    BYTE4(v25) = 3;
LABEL_24:
    sub_25BA97890();
  }

  v16 = swift_allocObject();
  *(v16 + 16) = v15;

  sub_25BAA6EB0();

  v28 = v8;
  v29 = v16;
  v27 = v10;
  v26 = v12;
  if (a4)
  {

    v17 = a4 == 1;
  }

  else
  {
    type metadata accessor for ContextManager();

    sub_25BAA49B8();
    sub_25BAA4A5C(&v23);

    if (v25)
    {
      v17 = *(v25 + 24) & 1;
    }

    else
    {
      v17 = 0;
    }

    sub_25BAA4AF4(&v23);
  }

  basicBatchNorm(_:runningMean:runningVariance:scale:offset:isTraining:momentum:epsilon:)(&v28, &v30, &v29, &v27, &v26, v17, &v23, a1, a2);

  v18 = v23;
  if (!a4)
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v23);

    if (v25)
    {
      v19 = *(v25 + 24);
      sub_25BAA4AF4(&v23);
      if (v19)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_25BAA4AF4(&v23);
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_25BCBAE50;
    *(v20 + 32) = v18;

    goto LABEL_19;
  }

  if (a4 != 1)
  {
    goto LABEL_18;
  }

LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_25BCBAE90;
  v21 = v30;
  *(v20 + 32) = v18;
  *(v20 + 40) = v21;
  *(v20 + 48) = v29;

LABEL_19:

  return v20;
}

uint64_t sub_25BBDAB4C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 152);
  *(*a2 + 152) = *a1;
}

uint64_t sub_25BBDAB90(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 160);
  *(*a2 + 160) = *a1;
}

uint64_t sub_25BBDAC0C(float a1)
{
  swift_getKeyPath();
  v2 = sub_25BBDE260();

  type metadata accessor for TensorHandle();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;

  sub_25BAA6EB0();

  swift_getKeyPath();
  v4 = sub_25BBDE2EC();

  if (!v4)
  {
    v21 = 0xD00000000000002FLL;
    v22 = 0x800000025BCE09D0;
    v23 = 3;
    goto LABEL_6;
  }

  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  sub_25BAA6EB0();

  swift_getKeyPath();
  v6 = sub_25BBDE2EC();

  if (!v6)
  {
    v21 = 0xD000000000000030;
    v22 = 0x800000025BCE0A20;
    v23 = 3;
LABEL_6:
    sub_25BA97890();
  }

  v7 = swift_allocObject();
  *(v7 + 16) = v6;

  sub_25BAA6EB0();

  MEMORY[0x28223BE20](v8);
  *&v17[4] = a1;
  v9 = sub_25BBDFAFC(&v21, v3, v5, v7, sub_25BBE1348, v17);

  swift_getKeyPath();
  v10 = sub_25BBDE260();

  v11 = swift_allocObject();
  *(v11 + 16) = v10;

  sub_25BAA6EB0();

  v18 = v11;
  v9(&v21, &v20, &v19, &v18);
  v13 = v20;
  v12 = v21;
  v14 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_25BCBAE90;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(v15 + 48) = v14;

  return v15;
}

uint64_t sub_25BBDAF54(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_178(a1, a2);
  v4 = *(v3 + 48);
  *(v3 + 48) = v2;
}

uint64_t sub_25BBDAF94(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_178(a1, a2);
  v4 = *(v3 + 56);
  *(v3 + 56) = v2;
}

uint64_t sub_25BBDAFD4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, float a5@<S0>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = *(*a2 + 16);
  v21 = *(v10 + 152);
  LOBYTE(v19) = *(v10 + 160);
  sub_25BAA51C8(v10 + 168, v20);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();

  sub_25BCB617C();
  LOBYTE(v18) = 1;
  v11 = sub_25BC5F250(&v21, &v19, v20, 0x100000000);
  type metadata accessor for TensorHandle();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;

  sub_25BAA6EB0();

  v21 = v12;
  v13 = *(v8 + 16);
  v19 = *(v13 + 152);
  LOBYTE(v18) = *(v13 + 160);
  sub_25BAA51C8(v13 + 168, v20);
  swift_allocObject();

  sub_25BCB617C();
  v14 = sub_25BC5F250(&v19, &v18, v20, 0x100000000);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  sub_25BAA6EB0();

  v19 = v7;
  v20[0] = v15;
  v17 = v9;
  v18 = v8;

  basicBatchNorm(_:runningMean:runningVariance:scale:offset:isTraining:momentum:epsilon:)(&v19, &v21, v20, &v18, &v17, 1, a4, 0.9, a5);
}

uint64_t sub_25BBDB200()
{
  OUTLINED_FUNCTION_42_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_78_3();
  *(v3 + 32) = v4;
  *(v3 + 40) = 0xE700000000000000;
  *(inited + 48) = *(v0 + 40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_11_29();
  v5 = sub_25BCB614C();
  v6 = OUTLINED_FUNCTION_40_12(v5);
  sub_25BAD8178(v6);
  OUTLINED_FUNCTION_57_2();
  swift_setDeallocating();
  v7 = sub_25BC0C4C4();
  OUTLINED_FUNCTION_132(v7);
  OUTLINED_FUNCTION_153();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_25BCBAE90;
  OUTLINED_FUNCTION_86();
  *(v9 + 32) = 0xD000000000000013;
  *(v9 + 40) = v10;
  v11 = OUTLINED_FUNCTION_36_11(v9);
  *(v11 + 72) = 0x65756C61765F6E6FLL;
  *(v11 + 80) = 0xE800000000000000;
  sub_25BAC27B0(v0 + 56, &v102);
  sub_25BB9483C(&v102, v8 + 88);
  *(v8 + 112) = 0x756C61765F66666FLL;
  *(v8 + 120) = 0xE900000000000065;
  sub_25BAC27B0(v0 + 96, &v102);
  sub_25BB9483C(&v102, v8 + 128);
  OUTLINED_FUNCTION_11_29();
  v12 = sub_25BCB614C();
  v13 = OUTLINED_FUNCTION_40_12(v12);
  sub_25BAFA0CC(v13, v14, v15, v16, v17, v18, v19, v20, v21, v52, v55, 1, 2, v61, v63, v65, v67, v69, v71, v73);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4D8();
  OUTLINED_FUNCTION_48_8();
  sub_25BAFCD30(v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v23 = swift_initStackObject();
  OUTLINED_FUNCTION_30_14(v23, v24, v25, v26, v27, v28, v29, v30, v53, v56, v31);
  v32 = OUTLINED_FUNCTION_47_10();
  OUTLINED_FUNCTION_169(v32, v33, v34, v35, v36, v37, v38, v39, v54, v57, v59, v60, v62, v64, v66, v68, v70, v72, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, *(&v102 + 1), v103, *(&v103 + 1), *&v104[0], *(&v104[0] + 1), *&v104[1], *(&v104[1] + 1), v105, v106, v107, v108, v109, v110);
  OUTLINED_FUNCTION_74_3(v40, v41);
  result = sub_25BAA0648();
  if (*(result + 16))
  {
    OUTLINED_FUNCTION_37_10(result);

    v43 = sub_25BCB614C();
    v44 = OUTLINED_FUNCTION_63_1(v43);
    sub_25BAF9B54(v44);
    OUTLINED_FUNCTION_156();
    sub_25BC0C4EC();
    OUTLINED_FUNCTION_61_4();
    v45 = *(v0 + 168);
    v102 = *(v0 + 152);
    v103 = v45;
    v104[0] = *(v0 + 184);
    *(v104 + 10) = *(v0 + 194);
    OUTLINED_FUNCTION_13_27(0x746F685F656E6FLL, 0xE700000000000000, v46, v47, v48, v49, v50, v51, v1, v58);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBDB50C(uint64_t a1)
{
  v2 = *(v1 + 152);
  v3 = *(v1 + 160);
  return sub_25BBCD2F0(a1, v1);
}

uint64_t sub_25BBDB530()
{
  swift_getKeyPath();
  v0 = sub_25BBDE260();

  type metadata accessor for TensorHandle();
  v1 = swift_allocObject();
  *(v1 + 16) = v0;

  sub_25BAA6EB0();

  swift_getKeyPath();
  v2 = sub_25BBDE260();

  *(swift_allocObject() + 16) = v2;

  sub_25BAA6EB0();

  v6[0] = v1;
  basicSoftmaxCrossEntropy(logits:labels:axis:reduction:)(v6);
  v3 = v6[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_25BCBAE50;
  *(v4 + 32) = v3;

  return v4;
}

uint64_t sub_25BBDB6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  v5 = sub_25BBDE260();

  type metadata accessor for TensorHandle();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  sub_25BAA6EB0();

  swift_getKeyPath();
  v7 = sub_25BBDE260();

  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  sub_25BAA6EB0();

  sub_25BC6E46C(v21, v20, v8, a2, a3, v9, v10, v11, v19, v6, v20[1], v21[0], v21[1], v21[2], v21[3], v21[4], v21[5], v21[6], v21[7], v21[8]);
  v13 = v12;

  swift_getKeyPath();
  v14 = sub_25BBDE260();

  v15 = swift_allocObject();
  *(v15 + 16) = v14;

  sub_25BAA6EB0();

  v20[0] = v15;
  v13(v21, v20);
  v16 = v21[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_25BCBAE50;
  *(v17 + 32) = v16;

  return v17;
}

uint64_t sub_25BBDB8C8(uint64_t *a1, uint64_t *a2)
{
  v2 = OUTLINED_FUNCTION_178(a1, a2);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_25BBDB920(uint64_t a1@<X8>)
{
  if (*(*(v1 + 40) + 160) == 8)
  {
    _S0 = *(v1 + 116);
    __asm { FCVT            H0, S0 }

    v7 = _S0;
    v8 = 2;
  }

  else
  {
    v7 = *(v1 + 116);
    v8 = 3;
  }

  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = v8;
}

uint64_t sub_25BBDB958(uint64_t a1)
{
  if (*(v1 + 120) == 1)
  {
    return sub_25BBDB984();
  }

  else
  {
    return sub_25BBDC150(a1);
  }
}

uint64_t sub_25BBDC150(uint64_t a1)
{
  v2 = v1;
  v4 = v1[5];

  v98 = sub_25BBA0B64(v5);
  v213 = v6;

  v7 = v1[6];

  v9 = sub_25BBA0B64(v8);
  v93 = v10;

  v11 = v1[16];

  v13 = sub_25BBA0B64(v12);
  v15 = v14;

  if (v1[17])
  {
    v16 = v1[17];

    v18 = sub_25BBA0B64(v17);
    v20 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25BCBDF80;
    *(inited + 32) = 29560;
    *(inited + 40) = 0xE200000000000000;
    v22 = v213;
    *(inited + 48) = v98;
    *(inited + 56) = v22;
    *(inited + 64) = 7567460;
    *(inited + 72) = 0xE300000000000000;
    *(inited + 80) = v9;
    *(inited + 88) = v93;
    strcpy((inited + 96), "learning_rate");
    *(inited + 110) = -4864;
    *(inited + 112) = v13;
    *(inited + 120) = v15;
    *(inited + 128) = 0x6D75746E656D6F6DLL;
    *(inited + 136) = 0xE800000000000000;
    *(inited + 144) = v18;
    *(inited + 152) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    *(&v211[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(inited, v23, v24, v25, v26, v27, v28, v29, v78, v83, v88, v93, v98, v103, v108, v113, v118);
    v31 = v30;
    swift_setDeallocating();
    v32 = sub_25BC0C500();
    sub_25BAFCBDC(v32);
    v33 = *(&v211[0] + 1);
    v213 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_25BCBAE50;
    strcpy((v34 + 32), "momentum_val");
    *(v34 + 45) = 0;
    *(v34 + 46) = -5120;
    sub_25BBDB920(v34 + 48);
    *(&v211[0] + 1) = sub_25BCB614C();
    sub_25BAFA0CC(v34, v35, v36, v37, v38, v39, v40, v41, v42, v79, v84, v89, v94, v99, v104, v109, v114, v119, v123, v126);
    v44 = v43;
    swift_setDeallocating();
    v45 = sub_25BC0C4D8();
    *&v211[0] = v44;
    sub_25BAFCD30(v45);
    v46 = v44;
    v47 = *(&v211[0] + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_25BCBAE70;
    sub_25BBE0B84(v2, 0, a1, &qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, &unk_25BCBB060, sub_25BC602DC, v49, v80, v85, v90, v95, v100, v105, v110, v115, v120, v124, v127, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209);
    *(v48 + 32) = v50;
    *(v48 + 40) = v51;
    result = sub_25BAF4B64();
    if (*(result + 16))
    {
      v53 = *(result + 40);
      *(v48 + 48) = *(result + 32);
      *(v48 + 56) = v53;
      sub_25BCB617C();

      sub_25BBE0B84(v2, 1, a1, &qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, &unk_25BCBB060, sub_25BC602DC, v54, v81, v86, v91, v96, v101, v106, v111, v116, v121, v125, v128, v130, v132, v134, v136, v138, v140, v142, v144, v146, v148, v150, v152, v154, v156, v158, v160, v162, v164, v166, v168, v170, v172, v174, v176, v178, v180, v182, v184, v186, v188, v190, v192, v194, v196, v198, v200, v202, v204, v206, v208, v210);
      *(v48 + 64) = v55;
      *(v48 + 72) = v56;
      result = sub_25BAF4B64();
      if (*(result + 16) >= 2uLL)
      {
        v57 = *(result + 56);
        *(v48 + 80) = *(result + 48);
        *(v48 + 88) = v57;
LABEL_7:
        sub_25BCB617C();

        *(&v211[0] + 1) = sub_25BCB614C();
        v75 = sub_25BAF9B54(v48);
        swift_setDeallocating();
        sub_25BC0C4EC();
        *&v211[0] = v75;
        sub_25BAFC990();
        v76 = *(&v211[0] + 1);
        v77 = *(v2 + 72);
        v211[0] = *(v2 + 56);
        v211[1] = v77;
        v212[0] = *(v2 + 88);
        *(v212 + 10) = *(v2 + 98);
        sub_25BBA1A84(6580083, 0xE300000000000000, v213, v33, v46, v47, v75, v76, v211);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
    v58 = swift_initStackObject();
    *(v58 + 16) = xmmword_25BCBAE90;
    *(v58 + 32) = 29560;
    *(v58 + 40) = 0xE200000000000000;
    v59 = v213;
    *(v58 + 48) = v98;
    *(v58 + 56) = v59;
    *(v58 + 64) = 7567460;
    *(v58 + 72) = 0xE300000000000000;
    *(v58 + 80) = v9;
    *(v58 + 88) = v93;
    strcpy((v58 + 96), "learning_rate");
    *(v58 + 110) = -4864;
    *(v58 + 112) = v13;
    *(v58 + 120) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
    v60 = MEMORY[0x277D84F90];
    *(&v211[0] + 1) = sub_25BCB614C();
    sub_25BAFA1D4(v58, v61, v62, v63, v64, v65, v66, v67, v78, v83, v88, v93, v98, v103, v108, v113, v118);
    v69 = v68;
    swift_setDeallocating();
    v70 = sub_25BC0C500();
    *&v211[0] = v69;
    sub_25BAFCBDC(v70);
    v33 = *(&v211[0] + 1);
    v213 = *&v211[0];
    *&v211[0] = v60;
    *(&v211[0] + 1) = sub_25BCB614C();
    sub_25BAFCD30(*(&v211[0] + 1));
    v46 = v60;
    v47 = *(&v211[0] + 1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
    v48 = swift_initStackObject();
    *(v48 + 16) = xmmword_25BCBAE50;
    sub_25BBE0B84(v2, 0, a1, &qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation, &unk_25BCBB060, sub_25BC602DC, v71, v82, v87, v92, v97, v102, v107, v112, v117, v122, v123, v126, v129, v131, v133, v135, v137, v139, v141, v143, v145, v147, v149, v151, v153, v155, v157, v159, v161, v163, v165, v167, v169, v171, v173, v175, v177, v179, v181, v183, v185, v187, v189, v191, v193, v195, v197, v199, v201, v203, v205, v207, v209);
    *(v48 + 32) = v72;
    *(v48 + 40) = v73;
    result = sub_25BAF4B64();
    if (*(result + 16))
    {
      v74 = *(result + 40);
      *(v48 + 48) = *(result + 32);
      *(v48 + 56) = v74;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBDC7F8(unint64_t a1)
{
  v2 = v1;
  v4 = *(*(v1 + 40) + 160);
  v5 = *(*(v1 + 160) + 152);
  sub_25BCB617C();
  v6 = sub_25BB2BAEC(6647407, 0xE300000000000000);
  v350 = v7;
  v357 = v6;
  LOBYTE(v429) = *(*(v1 + 40) + 160);
  HIBYTE(v446) = 1;
  v443 = 0u;
  v444 = 0u;
  memset(v445, 0, 25);
  v445[25] = 1;
  sub_25BBA1494(&v429, v6, v7, 1.0);
  v8 = OUTLINED_FUNCTION_117_3();
  v366 = sub_25BB2BAEC(v8 & 0xFFFF0000FFFFFFFFLL | 0x3100000000, 0xE500000000000000);
  v375 = v9;
  v10 = *(v1 + 116);
  OUTLINED_FUNCTION_16_31();
  sub_25BBA1494(v11, v13, v12, v10);
  v14 = OUTLINED_FUNCTION_117_3();
  v15 = sub_25BB2BAEC(v14 & 0xFFFF0000FFFFFFFFLL | 0x3200000000, 0xE500000000000000);
  v337 = v16;
  v344 = v15;
  v17 = *(v1 + 120);
  OUTLINED_FUNCTION_16_31();
  sub_25BBA1494(v18, v20, v19, v17);
  v21 = sub_25BB2BAEC(0x7361635F70657473, 0xE900000000000074);
  v23 = v22;
  v24 = *(v1 + 168);
  v429 = v5;
  LOBYTE(v430) = v4;

  sub_25BBA2D88(v25, v21, v23, &v429, &v443);

  v26 = OUTLINED_FUNCTION_148(0xD000000000000012, "ampened_new_velocity");
  v311 = v27;
  v28 = v27;
  v29 = *(v2 + 160);
  v429 = v5;
  LOBYTE(v430) = v4;

  sub_25BBA2D88(v30, v26, v28, &v429, &v443);

  v31 = OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_168(v31 & 0xFFFF0000FFFFFFFFLL | 0x5F3100000000);
  OUTLINED_FUNCTION_186_0();
  v429 = v5;
  LOBYTE(v430) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_167(4, v366, v375, v32, v33, v34, v35, v36, v255);
  v37 = OUTLINED_FUNCTION_56_4("one_minus_beta1_pow_t");
  v293 = v38;
  v302 = v37;
  v429 = v5;
  LOBYTE(v430) = v4;
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(1, v357, v350, v5, v29, v39, v40, v41, v256);

  v42 = OUTLINED_FUNCTION_117_3();
  OUTLINED_FUNCTION_168(v42 & 0xFFFF0000FFFFFFFFLL | 0x5F3200000000);
  OUTLINED_FUNCTION_186_0();
  v429 = v5;
  LOBYTE(v430) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_167(4, v344, v337, v43, v44, v45, v46, v47, v257);

  v48 = OUTLINED_FUNCTION_56_4("one_minus_beta2_pow_t");
  v50 = v49;
  v429 = v5;
  LOBYTE(v430) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_11_21();
  sub_25BBA291C(v51, v52, v53, v54, v29, v48, v50, v55, v258);

  OUTLINED_FUNCTION_87_3();
  v58 = OUTLINED_FUNCTION_148(v56 + 5, v57);
  v60 = v59;
  v429 = v5;
  LOBYTE(v430) = v4;
  v61 = v48;
  v62 = a1;
  sub_25BBA2B64(21, v61, v50, v58, v60, &v429, &v443);

  OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_148(v63 - 2, v64);
  OUTLINED_FUNCTION_124_1();
  v429 = v5;
  LOBYTE(v430) = v4;
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_158(3, v58, v60, v302, v293, v65, v66, v67, v259);

  sub_25BB2BAEC(0x7A69735F70657473, 0xE900000000000065);
  v429 = v5;
  LOBYTE(v430) = v4;
  OUTLINED_FUNCTION_191();
  v320 = v68;
  v351 = v69;
  sub_25BBA291C(v70, v71, v72, v73, a1, v68, v69, v74, &v443);

  v75 = OUTLINED_FUNCTION_209("beta1_mul_momentum", v260, v276, v5, v293, v302, v311, v320, 0xD000000000000012);
  v77 = v76;
  v78 = *(v2 + 136);

  v80 = sub_25BBA0B64(v79);
  v82 = v81;

  OUTLINED_FUNCTION_45_9(*(v2 + 136));
  v83 = v366;
  v84 = v375;
  v358 = v75;
  v367 = v77;
  sub_25BBA291C(2, v83, v375, v80, v82, v75, v77, &v429, &v443);

  v85 = OUTLINED_FUNCTION_117_3();
  v86 = sub_25BB2BAEC(v85 | 0x766E493100000000, 0xE800000000000000);
  v88 = v87;
  OUTLINED_FUNCTION_16_31();
  sub_25BBA1494(v89, v86, v88, v90);
  OUTLINED_FUNCTION_56_4("beta1Inv_mul_gradient");
  OUTLINED_FUNCTION_186_0();
  v91 = *(v2 + 48);

  v93 = sub_25BBA0B64(v92);
  v95 = v94;

  OUTLINED_FUNCTION_45_9(*(v2 + 48));
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(2, v86, v88, v93, v95, v82, v375, v96, v261);

  OUTLINED_FUNCTION_2_47();
  v97 = OUTLINED_FUNCTION_89_3();
  sub_25BBE0B84(v97, v98, v99, v100, v101, v102, v103, v104, v262, v277, v285, v294, v303, v312, v321, v329, v337, v344, v351, v358, v367, v375, v381, v387, v393, v399, v405, v411, v417, v423, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, *(&v444 + 1), *v445, *&v445[8], *&v445[16], *&v445[24], v446, v447, v448, v449, v450, v451, v452, v453);
  v106 = v105;
  v108 = v107;
  result = sub_25BACE690();
  if (*(result + 16) < 2uLL)
  {
    __break(1u);
    goto LABEL_9;
  }

  v110 = *(result + 48);
  v111 = *(result + 56);
  sub_25BCB617C();

  v429 = v110;
  LOBYTE(v430) = v111;
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(0, v359, v368, v82, v84, v106, v108, v112, v263);

  v369 = OUTLINED_FUNCTION_209("beta2_mul_velocity", v264, v278, v286, v295, v304, v313, v322, v330);
  v376 = v62;
  v114 = v113;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v116 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
  v116[3].n128_u64[0] = v345;
  v116[3].n128_u64[1] = v338;
  OUTLINED_FUNCTION_120_2(v116);
  v117 = *(v2 + 144);

  v119 = sub_25BBA0B64(v118);
  v121 = v120;

  inited[5].n128_u64[0] = v119;
  inited[5].n128_u64[1] = v121;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v122 = MEMORY[0x277D84F90];
  v123 = MEMORY[0x277D837D0];
  OUTLINED_FUNCTION_138();
  v430 = sub_25BCB614C();
  sub_25BAFA1D4(inited, v124, v125, v126, v127, v128, v129, v130, v265, v279, v287, v296, v305, v314, v323, v331, v338);
  v132 = v131;
  swift_setDeallocating();
  v133 = sub_25BC0C500();
  v429 = v132;
  sub_25BAFCBDC(v133);
  v360 = v429;
  OUTLINED_FUNCTION_138();
  v134 = sub_25BCB614C();
  v429 = v122;
  v430 = v134;
  sub_25BAFCD30(v134);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v135 = swift_initStackObject();
  *(v135 + 16) = xmmword_25BCBAE50;
  *(v135 + 32) = v369;
  *(v135 + 40) = v114;
  v136 = *(v2 + 144);
  sub_25BCB617C();

  sub_25BAC9400(v137, v135 + 48);
  OUTLINED_FUNCTION_138();
  v430 = sub_25BCB614C();
  sub_25BAF9B54(v135);
  OUTLINED_FUNCTION_46_9();
  swift_setDeallocating();
  sub_25BC0C4EC();
  v429 = v123;
  sub_25BAFC990();
  v138 = v430;
  OUTLINED_FUNCTION_143();
  sub_25BBA1A84(v139, v140, v141, v142, v143, v144, v145, v138, &v443);

  v146 = OUTLINED_FUNCTION_117_3();
  sub_25BB2BAEC(v146 | 0x766E493200000000, 0xE800000000000000);
  OUTLINED_FUNCTION_16_31();
  OUTLINED_FUNCTION_111_3();
  sub_25BBA1494(v147, v148, v149, v150);
  OUTLINED_FUNCTION_87_3();
  v153 = OUTLINED_FUNCTION_148(v151 - 5, v152);
  v155 = v154;
  v156 = *(v2 + 48);

  sub_25BBA0B64(v157);
  v159 = v158;

  OUTLINED_FUNCTION_45_9(*(v2 + 48));
  OUTLINED_FUNCTION_176();
  sub_25BBA2B64(v160, v161, v162, v163, v155, v164, v165);

  OUTLINED_FUNCTION_87_3();
  OUTLINED_FUNCTION_148(v166 + 8, v167);
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_45_9(*(v2 + 48));
  OUTLINED_FUNCTION_18_25();
  OUTLINED_FUNCTION_111_3();
  OUTLINED_FUNCTION_158(v168, v169, v170, v153, v155, v171, v172, v173, v266);

  OUTLINED_FUNCTION_2_47();
  v174 = OUTLINED_FUNCTION_141();
  sub_25BBE0B84(v174, v175, v176, v177, v178, v179, v180, v181, v267, v280, v288, v297, v306, v315, v324, v332, v339, v114, v352, v360, v369, v376, v382, v388, v394, v400, v406, v412, v418, v424, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, *(&v444 + 1), *v445, *&v445[8], *&v445[16], *&v445[24], v446, v447, v448, v449, v450, v451, v452, v453);
  OUTLINED_FUNCTION_192();
  result = sub_25BACE690();
  if (*(result + 16) < 3uLL)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v182 = *(result + 64);
  v183 = *(result + 72);
  sub_25BCB617C();

  v429 = v182;
  LOBYTE(v430) = v183;
  OUTLINED_FUNCTION_18_25();
  sub_25BBA291C(0, v370, v346, v159, v156, v155, v153, v184, v268);
  v185 = v377;

  OUTLINED_FUNCTION_2_47();
  v186 = OUTLINED_FUNCTION_141();
  sub_25BBE0B84(v186, v187, v188, v189, v190, v191, v192, v193, v269, v281, v289, v298, v307, v316, v325, v333, v340, v346, v353, v361, v370, v377, v383, v389, v395, v401, v407, v413, v419, v425, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, *(&v444 + 1), *v445, *&v445[8], *&v445[16], *&v445[24], v446, v447, v448, v449, v450, v451, v452, v453);
  OUTLINED_FUNCTION_192();
  if (!*(v2 + 152))
  {
    goto LABEL_6;
  }

  v194 = *(v2 + 152);

  sub_25BBA0B64(v195);
  OUTLINED_FUNCTION_124_1();
  OUTLINED_FUNCTION_2_47();
  sub_25BBE0B84(v2, 3, v185, v196, v197, &unk_25BCBB060, sub_25BACE864, v198, v270, v282, v290, v299, v308, v317, v326, v334, v341, v347, v354, v362, v371, v378, v384, v390, v396, v402, v408, v414, v420, v426, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, *(&v444 + 1), *v445, *&v445[8], *&v445[16], *&v445[24], v446, v447, v448, v449, v450, v451, v452, v453);
  v372 = v199;
  v201 = v200;
  result = sub_25BACE690();
  if (*(result + 16) >= 4uLL)
  {
    v202 = *(result + 80);
    v363 = v159;
    v203 = *(result + 88);
    sub_25BCB617C();

    v429 = v202;
    LOBYTE(v430) = v203;
    OUTLINED_FUNCTION_18_25();
    sub_25BBA291C(5, v155, v153, v363, v156, v372, v201, v204, v271);

    OUTLINED_FUNCTION_2_47();
    sub_25BBE0B84(v2, 3, v185, v205, v206, &unk_25BCBB060, sub_25BACE864, v207, v272, v283, v291, v300, v309, v318, v327, v335, v342, v348, v355, v363, v372, v379, v385, v391, v397, v403, v409, v415, v421, v427, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, *(&v444 + 1), *v445, *&v445[8], *&v445[16], *&v445[24], v446, v447, v448, v449, v450, v451, v452, v453);
    OUTLINED_FUNCTION_192();

LABEL_6:
    v208 = OUTLINED_FUNCTION_148(0xD000000000000014, "beta2Inv_mul_squared_gradient");
    v210 = v209;
    OUTLINED_FUNCTION_45_9(*(v2 + 144));
    sub_25BBA2B64(21, v155, v153, v208, v210, &v429, &v443);

    v211 = sub_25BB2BAEC(0x6E6F6C69737065, 0xE700000000000000);
    v213 = v212;
    v214 = *(v2 + 124);
    OUTLINED_FUNCTION_16_31();
    sub_25BBA1494(v215, v211, v213, v216);
    v373 = OUTLINED_FUNCTION_148(0xD00000000000001DLL, "sqrt_update_velocity");
    v218 = v217;
    OUTLINED_FUNCTION_45_9(*(v2 + 144));
    OUTLINED_FUNCTION_18_25();
    sub_25BBA291C(0, v208, v210, v211, v213, v373, v218, v219, v270);

    OUTLINED_FUNCTION_148(0xD000000000000016, "sqrt_update_velocity_plus_eps");
    OUTLINED_FUNCTION_124_1();
    OUTLINED_FUNCTION_2_47();
    v364 = v220;
    v221 = OUTLINED_FUNCTION_89_3();
    sub_25BBE0B84(v221, v222, v223, v224, v225, v226, v227, v228, v273, v282, v290, v299, v308, v317, v326, v334, sub_25BACE864, &unk_25BCBB060, v354, v364, v373, v378, v384, v390, v396, v402, v408, v414, v420, v426, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, *(&v444 + 1), *v445, *&v445[8], *&v445[16], *&v445[24], v446, v447, v448, v449, v450, v451, v452, v453);
    v230 = v229;
    v232 = v231;
    OUTLINED_FUNCTION_45_9(*(v2 + 136));
    OUTLINED_FUNCTION_158(2, v328, v356, v230, v232, v233, v234, &v429, &v443);

    v235 = OUTLINED_FUNCTION_56_4("parameter_update_step");
    v237 = v236;
    OUTLINED_FUNCTION_45_9(*(v2 + 136));
    OUTLINED_FUNCTION_152();
    sub_25BBA291C(v238, v239, v240, v374, v218, v235, v237, v241, &v443);

    v242 = *(v2 + 40);

    sub_25BBA0B64(v243);
    OUTLINED_FUNCTION_186_0();

    v244 = OUTLINED_FUNCTION_35_13();
    sub_25BBE0B84(v244, v245, v246, qword_28154FD70, v365, v349, v343, v247, v274, v284, v292, v301, v310, v319, v328, v336, v343, v349, v356, v365, v374, v380, v386, v392, v398, v404, v410, v416, v422, v428, v429, v430, v431, v432, v433, v434, v435, v436, v437, v438, v439, v440, v441, v442, v443, *(&v443 + 1), v444, *(&v444 + 1), *v445, *&v445[8], *&v445[16], *&v445[24], v446, v447, v448, v449, v450, v451, v452, v453);
    v249 = v248;
    v251 = v250;
    result = sub_25BACE690();
    if (*(result + 16))
    {
      v252 = *(result + 32);
      v253 = *(result + 40);
      sub_25BCB617C();

      v429 = v252;
      LOBYTE(v430) = v253;
      OUTLINED_FUNCTION_18_25();
      sub_25BBA291C(1, v208, v218, v235, v237, v249, v251, v254, v275);
    }

    goto LABEL_10;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_25BBDDF70()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = (*(*(v1 + 88) + 32))(*(v1 + 80));
  v4 = sub_25BAAF54C(v3);
  if (v4)
  {
    v5 = v4;
    v13 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    if ((v5 & 0x8000000000000000) == 0)
    {
      for (i = 0; ; ++i)
      {
        v7 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x25F8779B0](i, v3);
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_14;
          }

          v8 = *(v3 + 8 * i + 32);
        }

        v11 = v8;
        sub_25BBDE114(&v11, &v12);

        sub_25BCB723C();
        v9 = *(v13 + 16);
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
        if (v7 == v5)
        {

          return v13;
        }
      }

      __break(1u);
LABEL_14:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_25BBDE114@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_25BBDE5D8(&v5, *a1);
  v3 = *(v5 + 16);

  *a2 = v3;
  return result;
}

double sub_25BBDE1D4@<D0>(_OWORD *a1@<X8>)
{
  v3 = v1[2];
  (*(*(*v1 + 88) + 48))(v6, *(*v1 + 80));
  v4 = v6[1];
  *a1 = v6[0];
  a1[1] = v4;
  a1[2] = v7[0];
  result = *(v7 + 10);
  *(a1 + 42) = *(v7 + 10);
  return result;
}

uint64_t sub_25BBDE260()
{
  v4 = *(v0 + 16);

  swift_getAtKeyPath();

  sub_25BBDE5DC(v3, &v5);

  v1 = *(v5 + 16);

  return v1;
}

uint64_t sub_25BBDE2EC()
{
  v4 = *(v0 + 16);

  swift_getAtKeyPath();

  v1 = v3;
  if (v3)
  {
    sub_25BBDE5DC(v3, &v4);

    v1 = *(v4 + 16);
  }

  return v1;
}

uint64_t sub_25BBDE37C()
{
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v3 = *(v0 + 24);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v31 = v3;
  sub_25BCB617C();
  v9 = 0;
  v10 = MEMORY[0x277D84F98];
  v29 = v8;
  v30 = v4;
  if (v7)
  {
    while (1)
    {
      v11 = v9;
LABEL_8:
      v12 = __clz(__rbit64(v7)) | (v11 << 6);
      v13 = (*(v31 + 48) + 16 * v12);
      v32 = *v13;
      v33 = v13[1];
      v14 = *(*(v31 + 56) + 8 * v12);
      sub_25BCB617C();

      sub_25BAC44E4();
      OUTLINED_FUNCTION_124_1();
      swift_isUniquelyReferenced_nonNull_native();
      v15 = sub_25BA9266C(v2, v1);
      if (__OFADD__(v10[2], (v16 & 1) == 0))
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61B0, &qword_25BCC88F0);
      if (sub_25BCB745C())
      {
        v19 = sub_25BA9266C(v2, v1);
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      v7 &= v7 - 1;
      if (v18)
      {

        v21 = (v10[7] + 16 * v17);
        v22 = v21[1];
        *v21 = v32;
        v21[1] = v33;
      }

      else
      {
        v10[(v17 >> 6) + 8] |= 1 << v17;
        v23 = (v10[6] + 16 * v17);
        *v23 = v2;
        v23[1] = v1;
        v24 = (v10[7] + 16 * v17);
        *v24 = v32;
        v24[1] = v33;

        v25 = v10[2];
        v26 = __OFADD__(v25, 1);
        v27 = v25 + 1;
        if (v26)
        {
          goto LABEL_21;
        }

        v10[2] = v27;
      }

      v9 = v11;
      v8 = v29;
      v4 = v30;
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return v10;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_25BCB795C();
  __break(1u);
  return result;
}

uint64_t sub_25BBDE5DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = sub_25BAC44E4();
  v8 = v7;
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v9 = *(v3 + 24);
  sub_25BCB617C();
  v10 = sub_25BADCE14(v6, v8, v9);

  if (v10)
  {
    type metadata accessor for TensorHandle();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;

    sub_25BAA6EB0();
  }

  else
  {
    v17 = *(a1 + 152);
    v16 = *(a1 + 160);
    sub_25BAA51C8(a1 + 168, v15);
    type metadata accessor for TensorRepresentation();
    swift_allocObject();
    OUTLINED_FUNCTION_183();
    sub_25BCB617C();
    v13 = sub_25BC5F250(&v17, &v16, v15, 0x100000000);
    type metadata accessor for TensorHandle();
    v11 = swift_allocObject();
    *(v11 + 16) = v13;

    sub_25BAA6EB0();

    sub_25BAC44E4();
    swift_beginAccess();

    v14 = *(v3 + 24);
    swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v3 + 24);
    OUTLINED_FUNCTION_107();
    sub_25BC1A420();
    *(v3 + 24) = v17;

    result = swift_endAccess();
  }

  *a2 = v11;
  return result;
}

uint64_t sub_25BBDE814(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return v1;
}

uint64_t sub_25BBDE844()
{
  sub_25BBDE814(MEMORY[0x277D85028]);

  return swift_deallocClassInstance();
}

double sub_25BBDE8B0@<D0>(_OWORD *a1@<X8>)
{
  sub_25BBDE1D4(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  a1[2] = v5[0];
  result = *(v5 + 10);
  *(a1 + 42) = *(v5 + 10);
  return result;
}

uint64_t sub_25BBDE8FC(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

uint64_t sub_25BBDE948(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDE984(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154FD70, type metadata accessor for AdamOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDE9DC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB5D58, type metadata accessor for StochasticGradientDescentOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEA34(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB48F8, type metadata accessor for SoftmaxCrossEntropyGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEA8C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4900, type metadata accessor for SoftmaxCrossEntropyOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEAE4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F488, type metadata accessor for OneHotOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEB3C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6140, type metadata accessor for BatchNormGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEB94(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6148, type metadata accessor for BatchNormOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEBEC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB3FC8, type metadata accessor for TileOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEC44(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F3A0, type metadata accessor for RandomOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEC9C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB44E8, type metadata accessor for ConvolutionTranspose2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDECF4(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154C7D0, type metadata accessor for Convolution2DGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDED4C(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154DC68, type metadata accessor for Convolution2DOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEDA4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154D770, type metadata accessor for LinearGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEDFC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F570, type metadata accessor for LinearOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEE54(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4078, type metadata accessor for ResizeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEEAC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB44F8, type metadata accessor for Max2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEF04(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEF5C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4508, type metadata accessor for Average2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDEFB4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4518, type metadata accessor for PadOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF00C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4520, type metadata accessor for MatrixMultiplicationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF064(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB3820, type metadata accessor for SelectOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF0BC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6150, type metadata accessor for TopKOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF114(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB49E0, type metadata accessor for ArgumentReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF16C(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154E988, type metadata accessor for ReductionOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF1C4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6158, type metadata accessor for BandPartOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF21C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6160, type metadata accessor for NonZeroIndicesOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF274(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6168, type metadata accessor for SliceGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF2CC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6170, type metadata accessor for SliceOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF324(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6178, type metadata accessor for SplitOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF37C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4D08, type metadata accessor for ArgumentSortOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF3D4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6180, type metadata accessor for ReverseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF42C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154E7E8, type metadata accessor for TransposeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF484(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6188, type metadata accessor for ScatterOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF4DC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB6190, type metadata accessor for GatherOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF534(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154FAA0, type metadata accessor for CastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF58C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F658, type metadata accessor for ConcatOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF5E4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154ED78, type metadata accessor for BroadcastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF63C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F1F8, type metadata accessor for ReshapeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF694(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154D288, type metadata accessor for BinaryArithmeticOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF6EC(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154D158, type metadata accessor for BinaryComparisonOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF744(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF79C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB5188, type metadata accessor for UnaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF7F4(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154D4F0, type metadata accessor for UnaryArithmeticOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF84C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4938, type metadata accessor for LSTMLayerOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF8A4(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154F128, type metadata accessor for SoftmaxOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF8FC(uint64_t a1)
{
  result = sub_25BBDFAB4(qword_28154E000, type metadata accessor for ReLUGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF954(uint64_t a1)
{
  result = sub_25BBDFAB4(&unk_28154F9C0, type metadata accessor for ReLUOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDF9AC(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB3FB8, type metadata accessor for ActivationOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDFA04(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_28154F010, type metadata accessor for TrackedOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDFA5C(uint64_t a1)
{
  result = sub_25BBDFAB4(&qword_27FBB4570, type metadata accessor for ConstantOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BBDFAB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t (*sub_25BBDFAFC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v60 = a5;
  v61 = a6;
  v67 = a1;
  *&v68 = sub_25BCB5EBC();
  v66 = *(v68 - 8);
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v68);
  v59 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BCB5EEC();
  v57 = *(v11 - 8);
  v58 = v11;
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v71 = a2;
  *&v83 = &unk_286D54CA0;
  *(&v83 + 1) = &off_281E23E38;

  sub_25BC689A4(&v71, v82);
  *&v71 = a3;
  *&v81 = &unk_286D54CA0;
  *(&v81 + 1) = &off_281E23E38;

  sub_25BC689A4(&v71, v80);
  *&v71 = a4;
  *&v79 = &unk_286D54CA0;
  *(&v79 + 1) = &off_281E23E38;

  sub_25BC689A4(&v71, v78);
  v15 = __swift_project_boxed_opaque_existential_1(v82, v83);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *__swift_allocate_boxed_opaque_existential_0(&v71) = *v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB61C8, &qword_25BCC8AD0);
  swift_dynamicCast();
  v16 = __swift_project_boxed_opaque_existential_1(v80, v81);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *__swift_allocate_boxed_opaque_existential_0(&v71) = *v16;

  swift_dynamicCast();
  v17 = __swift_project_boxed_opaque_existential_1(v78, v79);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *__swift_allocate_boxed_opaque_existential_0(&v71) = *v17;

  swift_dynamicCast();
  v64 = v83;
  __swift_project_boxed_opaque_existential_1(v82, v83);
  v18 = swift_allocObject();
  *(v18 + 16) = v64;
  *(v18 + 32) = sub_25BC68BF4;
  *(v18 + 40) = 0;
  *&v64 = v18;
  v63 = v81;
  __swift_project_boxed_opaque_existential_1(v80, v81);
  v19 = swift_allocObject();
  *(v19 + 16) = v63;
  *(v19 + 32) = sub_25BC68BF4;
  *(v19 + 40) = 0;
  *&v63 = v19;
  v62 = v79;
  __swift_project_boxed_opaque_existential_1(v78, v79);
  v20 = swift_allocObject();
  *(v20 + 16) = v62;
  *(v20 + 32) = sub_25BC68BF4;
  *(v20 + 40) = 0;
  *&v62 = v20;
  if (qword_28154BE88 != -1)
  {
    swift_once();
  }

  v21 = v58;
  v22 = __swift_project_value_buffer(v58, qword_28154BE90);
  v23 = v57;
  v24 = v14;
  (*(v57 + 16))(v14, v22, v21);
  v25 = v59;
  sub_25BCB5EAC();
  v26 = swift_slowAlloc();
  *v26 = 0;
  v27 = sub_25BCB5EDC();
  v28 = sub_25BCB6D5C();
  v29 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v27, v28, v29, "Backpropagation (Forward Pass)", "", v26, 2u);
  v56 = &v56;
  v76 = v77[2];
  v77[0] = v77[3];
  v75 = v77[1];
  MEMORY[0x28223BE20](v30);
  v31 = v61;
  *(&v56 - 6) = v60;
  *(&v56 - 5) = v31;
  *(&v56 - 4) = v77;
  *(&v56 - 3) = &v76;
  *(&v56 - 2) = &v75;
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v71);

  v32 = v74;
  v65 = v24;
  if (v74)
  {
    v33 = *(v74 + 24);
    if (v33)
    {

      v37 = objc_autoreleasePoolPush();
      sub_25BAB6FD4();
      objc_autoreleasePoolPop(v37);
      v35 = v32;
      goto LABEL_9;
    }

    v34 = v33 | 1;
  }

  else
  {
    v34 = 1;
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v35 = sub_25BAB6EC8(v34, MEMORY[0x277D84F90]);

  v74 = v35;
  v36 = objc_autoreleasePoolPush();
  sub_25BAB6FD4();
  objc_autoreleasePoolPop(v36);
LABEL_9:
  sub_25BAA4AF4(&v71);
  v38 = sub_25BCB6D4C();
  v39 = sub_25BCB5E9C();
  _os_signpost_emit_with_name_impl(&dword_25BA90000, v27, v38, v39, "Backpropagation (Forward Pass)", "", v26, 2u);

  v40 = *(&v69[0] + 1);
  MEMORY[0x25F8797F0](v26, -1, -1);
  (*(v66 + 8))(v25, v68);
  (*(v23 + 8))(v65, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v41 = swift_allocObject();
  v68 = xmmword_25BCBAE50;
  *(v41 + 16) = xmmword_25BCBAE50;
  *(v41 + 32) = v40;
  v42 = v82[0];
  v43 = swift_allocObject();
  *(v43 + 16) = v68;
  *(v43 + 32) = v42;
  v44 = v80[0];
  inited = swift_initStackObject();
  *(inited + 16) = v68;
  *(inited + 32) = v44;
  v70 = v43;

  sub_25BC03860(inited);
  v46 = v78[0];
  v47 = swift_initStackObject();
  *(v47 + 16) = v68;
  *(v47 + 32) = v46;

  sub_25BC03860(v47);
  v48 = sub_25BAC1988(v41, v70, v35);
  v50 = v49;

  *v67 = v40;
  sub_25BAC27B0(v82, &v71);
  sub_25BAC27B0(v80, v69);
  v51 = swift_allocObject();
  v51[2] = v48;
  v51[3] = v50;
  v52 = v64;
  v51[4] = sub_25BBE1350;
  v51[5] = v52;
  sub_25BA97060(&v71, (v51 + 6));
  v53 = v63;
  v51[11] = sub_25BBE1448;
  v51[12] = v53;
  sub_25BA97060(v69, (v51 + 13));
  v54 = v62;
  v51[18] = sub_25BBE1448;
  v51[19] = v54;

  __swift_destroy_boxed_opaque_existential_1(v78);
  __swift_destroy_boxed_opaque_existential_1(v80);
  __swift_destroy_boxed_opaque_existential_1(v82);
  return sub_25BBE1404;
}

uint64_t sub_25BBE0414(uint64_t (*a1)(uint64_t *, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a4;
  v8 = a3;
  v6 = a5;
  return a1(&v8, &v7, &v6);
}

uint64_t sub_25BBE0464(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6, void (*a7)(_OWORD *__return_ptr, uint64_t), uint64_t a8, unint64_t a9, void (*a10)(_OWORD *__return_ptr, uint64_t), uint64_t a11, void *a12, void (*a13)(_OWORD *__return_ptr, uint64_t))
{
  v15 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_25BCBAE50;
  *(v16 + 32) = a4;

  v17 = a5(v16);

  v18 = *(a9 + 24);
  v19 = *(a9 + 32);
  v20 = __swift_project_boxed_opaque_existential_1(v15, *(v15 + 24));
  v21 = v19[3];
  v22 = v20;
  v23 = v21(v18, v19);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_34;
  }

  v63 = v17;
  v22 = sub_25BABAF60(0, v23, v17);
  a4 = v25;
  v15 = v26;
  if (v26)
  {
    v60 = v24;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v29 = swift_dynamicCastClass();
    if (!v29)
    {
      swift_unknownObjectRelease();
      v29 = MEMORY[0x277D84F90];
    }

    v30 = *(v29 + 16);

    if (__OFSUB__(v15 >> 1, a4))
    {
      goto LABEL_37;
    }

    if (v30 != (v15 >> 1) - a4)
    {
      goto LABEL_38;
    }

    v28 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v28)
    {
      goto LABEL_11;
    }

    v28 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

  while (1)
  {
    sub_25BAFFB88(v22, v24, a4, v15);
    v28 = v27;
LABEL_10:
    swift_unknownObjectRelease();
LABEL_11:
    a4 = a12;
    a7(v69, v28);

    v31 = v21(v18, v19);
    v21 = a12[3];
    v32 = a12[4];
    v19 = __swift_project_boxed_opaque_existential_1(a4, a4[3]);
    v18 = v32 + 24;
    v33 = *(v32 + 24);
    v22 = v19;
    v34 = (v33)(v21, v32);
    v35 = v31 + v34;
    if (__OFADD__(v31, v34))
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    if (v35 < v31)
    {
      goto LABEL_35;
    }

    v37 = sub_25BABAF60(v31, v35, v63);
    v39 = v38;
    v15 = v40;
    if ((v40 & 1) == 0)
    {
      goto LABEL_14;
    }

    v61 = v36;
    a7 = v33;
    sub_25BCB78DC();
    swift_unknownObjectRetain_n();
    v43 = swift_dynamicCastClass();
    if (!v43)
    {
      swift_unknownObjectRelease();
      v43 = MEMORY[0x277D84F90];
    }

    v44 = *(v43 + 16);

    if (__OFSUB__(v15 >> 1, v39))
    {
      __break(1u);
LABEL_40:
      swift_unknownObjectRelease();
      v36 = v61;
LABEL_14:
      sub_25BAFFB88(v37, v36, v39, v15);
      v42 = v41;
      a4 = v63;
      goto LABEL_21;
    }

    if (v44 != (v15 >> 1) - v39)
    {
      goto LABEL_40;
    }

    v42 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    a4 = v63;
    if (v42)
    {
      goto LABEL_22;
    }

    v42 = MEMORY[0x277D84F90];
LABEL_21:
    swift_unknownObjectRelease();
LABEL_22:
    a10(v68, v42);

    v22 = v19;
    v45 = (v33)(v21, v32);
    v46 = __OFADD__(v31, v45);
    v47 = v31 + v45;
    if (!v46)
    {
      break;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_unknownObjectRelease();
    v24 = v60;
  }

  v48 = sub_25BBCB9F8(v47, a4);
  v50 = v49;
  v52 = v51;
  v54 = v53;

  if ((v54 & 1) == 0)
  {
    goto LABEL_24;
  }

  sub_25BCB78DC();
  swift_unknownObjectRetain_n();
  v57 = swift_dynamicCastClass();
  if (!v57)
  {
    swift_unknownObjectRelease();
    v57 = MEMORY[0x277D84F90];
  }

  v58 = *(v57 + 16);

  if (__OFSUB__(v54 >> 1, v52))
  {
    __break(1u);
  }

  else if (v58 == (v54 >> 1) - v52)
  {
    v56 = swift_dynamicCastClass();
    swift_unknownObjectRelease_n();
    if (!v56)
    {
      v56 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  swift_unknownObjectRelease_n();
LABEL_24:
  sub_25BAFFB88(v48, v50, v52, v54);
  v56 = v55;
LABEL_31:
  swift_unknownObjectRelease();
LABEL_32:
  a13(v67, v56);

  sub_25BB1D62C(v69, &v66);
  swift_dynamicCast();
  sub_25BB1D62C(v68, &v65);
  swift_dynamicCast();
  sub_25BB1D62C(v67, &v64);
  return swift_dynamicCast();
}

uint64_t sub_25BBE092C(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  result = sub_25BCB703C();
  v4 = *(a1 + 36);
  return result;
}

void *sub_25BBE096C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = sub_25BBCBA58(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

void sub_25BBE0998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  OUTLINED_FUNCTION_33_0();
  a59 = v64;
  a60 = v65;
  v71 = OUTLINED_FUNCTION_119_2(v66, v67, v68, v69, v70);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v72 = sub_25BB73218(*(v60 + 56));
  if (v72)
  {
    OUTLINED_FUNCTION_166(v72);
    OUTLINED_FUNCTION_198();

    if (v71)
    {
      OUTLINED_FUNCTION_172();
      if (!v78)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        sub_25BCB648C();
        if (!v73)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v78)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_10();
        if (v74)
        {
          OUTLINED_FUNCTION_39_10();
          OUTLINED_FUNCTION_93_4();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2(v75);
            if ((v76 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_8_25();
            v78 = v78 && v61 == v77;
            if (!v78)
            {
              OUTLINED_FUNCTION_18_2();
              v75 = OUTLINED_FUNCTION_35_9();
              if ((v79 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_92_4();
LABEL_19:
      }
    }
  }

  sub_25BBA0910(&a15);
  v62(v63);
  OUTLINED_FUNCTION_198();
  v82 = sub_25BB2E238(v80, v81, a32, a33);
  if (v83)
  {
    v84 = v82;

    v61 = v84;
  }

  sub_25BA9AC78(&a15);
  OUTLINED_FUNCTION_172();
  if (v78)
  {
    OUTLINED_FUNCTION_4_42();
    while (1)
    {
      sub_25BCB648C();
      if (!v85)
      {
        break;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v78)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v86)
      {
        OUTLINED_FUNCTION_39_10();
        OUTLINED_FUNCTION_93_4();
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2(v87);
          if ((v88 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_8_25();
          if (!v78 || v61 != v89)
          {
            OUTLINED_FUNCTION_18_2();
            v87 = OUTLINED_FUNCTION_35_9();
            if ((v91 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_38;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_38:
    }

LABEL_39:
  }

LABEL_40:
  OUTLINED_FUNCTION_32_0();
}

void sub_25BBE0B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  OUTLINED_FUNCTION_33_0();
  a59 = v64;
  a60 = v65;
  v71 = OUTLINED_FUNCTION_119_2(v66, v67, v68, v69, v70);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v72 = sub_25BB73218(*(v60 + 56));
  if (v72)
  {
    OUTLINED_FUNCTION_166(v72);
    OUTLINED_FUNCTION_198();

    if (v71)
    {
      OUTLINED_FUNCTION_172();
      if (!v78)
      {
        goto LABEL_40;
      }

      OUTLINED_FUNCTION_4_42();
      while (1)
      {
        sub_25BCB648C();
        if (!v73)
        {
          goto LABEL_39;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v78)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_10();
        if (v74)
        {
          OUTLINED_FUNCTION_39_10();
          OUTLINED_FUNCTION_93_4();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2(v75);
            if ((v76 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_8_25();
            v78 = v78 && v61 == v77;
            if (!v78)
            {
              OUTLINED_FUNCTION_18_2();
              v75 = OUTLINED_FUNCTION_35_9();
              if ((v79 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_19;
          }
        }

        OUTLINED_FUNCTION_92_4();
LABEL_19:
      }
    }
  }

  sub_25BBA0910(&a15);
  v62(v63);
  OUTLINED_FUNCTION_198();
  v82 = sub_25BB2E238(v80, v81, a32, a33);
  if (v83)
  {
    v84 = v82;

    v61 = v84;
  }

  sub_25BA9AC78(&a15);
  OUTLINED_FUNCTION_172();
  if (v78)
  {
    OUTLINED_FUNCTION_4_42();
    while (1)
    {
      sub_25BCB648C();
      if (!v85)
      {
        break;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v78)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v86)
      {
        OUTLINED_FUNCTION_39_10();
        OUTLINED_FUNCTION_93_4();
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2(v87);
          if ((v88 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_8_25();
          if (!v78 || v61 != v89)
          {
            OUTLINED_FUNCTION_18_2();
            v87 = OUTLINED_FUNCTION_35_9();
            if ((v91 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_38;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_38:
    }

LABEL_39:
  }

LABEL_40:
  OUTLINED_FUNCTION_32_0();
}

void sub_25BBE0D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  OUTLINED_FUNCTION_33_0();
  a59 = v60;
  a60 = v61;
  v63 = v62;
  v65 = v64;
  v68 = sub_25BBDFAB4(v66, v67);
  OUTLINED_FUNCTION_17_10();
  swift_beginAccess();
  v69 = sub_25BB73218(*(v63 + 56));
  if (!v69 || (sub_25BB3EFD4(v65, v68 | 0x4000000000000000, 0, v69), v71 = v70, , !v71))
  {
    sub_25BBA0910(&a15);
    sub_25BA9AC78(&a15);
    v79 = *(v65 + 24);
    v80 = *(v65 + 32);
    if (*(v63 + 73) != 1)
    {
      v88 = *(v65 + 32);
      sub_25BCB617C();
      goto LABEL_37;
    }

    OUTLINED_FUNCTION_97_2();
    sub_25BCB617C();
    while (1)
    {
      sub_25BCB648C();
      if (!v81)
      {
        goto LABEL_35;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v77)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v82)
      {
        OUTLINED_FUNCTION_39_10();
        OUTLINED_FUNCTION_93_4();
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2(v83);
          if ((v84 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_8_25();
          if (!v77 || v63 != v85)
          {
            OUTLINED_FUNCTION_18_2();
            v83 = OUTLINED_FUNCTION_35_9();
            if ((v87 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_34;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_34:
    }
  }

  if (*(v63 + 73) == 1)
  {
    OUTLINED_FUNCTION_97_2();
    while (1)
    {
      sub_25BCB648C();
      if (!v72)
      {
        break;
      }

      OUTLINED_FUNCTION_7_23();
      if (!v77)
      {
        swift_once();
      }

      OUTLINED_FUNCTION_32_10();
      if (v73)
      {
        OUTLINED_FUNCTION_39_10();
        OUTLINED_FUNCTION_93_4();
        sub_25BCB7A3C();
        OUTLINED_FUNCTION_5_29();
        while (1)
        {
          OUTLINED_FUNCTION_4_2(v74);
          if ((v75 & 1) == 0)
          {
            break;
          }

          OUTLINED_FUNCTION_8_25();
          v77 = v77 && v63 == v76;
          if (!v77)
          {
            OUTLINED_FUNCTION_18_2();
            v74 = OUTLINED_FUNCTION_35_9();
            if ((v78 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_18;
        }
      }

      OUTLINED_FUNCTION_92_4();
LABEL_18:
    }

LABEL_35:
  }

LABEL_37:
  OUTLINED_FUNCTION_32_0();
}

uint64_t sub_25BBE0F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_25BBDFAB4(&qword_27FBB4570, type metadata accessor for ConstantOperation);
  swift_beginAccess();
  v5 = sub_25BB73218(*(a2 + 56));
  if (v5 && (v6 = sub_25BB3EFD4(a1, v4 | 0x4000000000000000, 0, v5), v8 = v7, , v8))
  {
    if (*(a2 + 73) == 1)
    {
      while (1)
      {
        v9 = sub_25BCB648C();
        if (!v10)
        {
          break;
        }

        v11 = v9;
        v12 = v10;
        if (qword_27FBB33A0 != -1)
        {
          swift_once();
        }

        v13 = off_27FBB5D18;
        if (*(off_27FBB5D18 + 2))
        {
          v14 = *(off_27FBB5D18 + 5);
          sub_25BCB79CC();
          sub_25BCB625C();
          v15 = sub_25BCB7A3C();
          v16 = ~(-1 << v13[32]);
          while (1)
          {
            v17 = v15 & v16;
            if (((*&v13[(((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v15 & v16)) & 1) == 0)
            {
              break;
            }

            v18 = (*(v13 + 6) + 16 * v17);
            if (*v18 != v11 || v12 != v18[1])
            {
              v20 = sub_25BCB789C();
              v15 = v17 + 1;
              if ((v20 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_17;
          }
        }

        MEMORY[0x25F876C80](v11, v12);
LABEL_17:
      }

LABEL_33:

      return 0;
    }
  }

  else
  {
    sub_25BBA0910(v35);
    v6 = *(a1 + 24);
    v21 = *(a1 + 32);
    sub_25BCB617C();
    sub_25BA9AC78(v35);
    if (*(a2 + 73) == 1)
    {
      while (1)
      {
        v22 = sub_25BCB648C();
        if (!v23)
        {
          goto LABEL_33;
        }

        v24 = v22;
        v25 = v23;
        if (qword_27FBB33A0 != -1)
        {
          swift_once();
        }

        v26 = off_27FBB5D18;
        if (*(off_27FBB5D18 + 2))
        {
          v27 = *(off_27FBB5D18 + 5);
          sub_25BCB79CC();
          sub_25BCB625C();
          v28 = sub_25BCB7A3C();
          v29 = ~(-1 << v26[32]);
          while (1)
          {
            v30 = v28 & v29;
            if (((*&v26[(((v28 & v29) >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> (v28 & v29)) & 1) == 0)
            {
              break;
            }

            v31 = (*(v26 + 6) + 16 * v30);
            if (*v31 != v24 || v25 != v31[1])
            {
              v33 = sub_25BCB789C();
              v28 = v30 + 1;
              if ((v33 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_32;
          }
        }

        MEMORY[0x25F876C80](v24, v25);
LABEL_32:
      }
    }
  }

  return v6;
}

uint64_t sub_25BBE1350()
{
  v1 = v0[2];
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  return sub_25BC6AE78();
}

uint64_t OUTLINED_FUNCTION_36_11(uint64_t result)
{
  *(result + 48) = *(v1 + 48);
  *(result + 56) = 0;
  *(result + 64) = 1;
  return result;
}

__n128 OUTLINED_FUNCTION_95_3()
{
  v2 = *(v1 + 112);
  *v0 = *(v1 + 96);
  *(v0 + 16) = v2;
  *(v0 + 32) = *(v1 + 128);
  result = *(v1 + 138);
  *(v0 + 42) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_96_2(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __n128 a13)
{
  result = a13;
  a1[1] = a13;
  return result;
}

__n128 OUTLINED_FUNCTION_99_3()
{
  v2 = *(v1 - 160);
  v3 = *(v1 - 152);
  v4 = *(v0 + 128);
  *(v1 - 160) = *(v0 + 112);
  *(v1 - 144) = v4;
  *(v1 - 128) = *(v0 + 144);
  result = *(v0 + 154);
  *(v1 - 118) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_105_2@<X0>(uint64_t a1@<X0>, char a2@<W8>)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;

  return sub_25BCB617C();
}

uint64_t OUTLINED_FUNCTION_119_2(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void (*a5)(uint64_t))
{

  return sub_25BBDFAB4(a4, a5);
}

uint64_t OUTLINED_FUNCTION_120_2(uint64_t result)
{
  *(result + 64) = 121;
  *(result + 72) = v1;
  return result;
}

__n128 *OUTLINED_FUNCTION_122_3(__n128 *result, __n128 a2, __n128 a3)
{
  result[1] = a3;
  result[2] = a2;
  *(v3 + 48) = result;
  *(v3 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_154(uint64_t result)
{
  *(result + 32) = 0x6570616873;
  *(result + 40) = 0xE500000000000000;
  return result;
}

uint64_t OUTLINED_FUNCTION_157()
{

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_159()
{
  v3 = *(v1 + 40);
  *(v0 + 48) = *(v1 + 32);
  *(v0 + 56) = v3;

  return swift_setDeallocating();
}

uint64_t OUTLINED_FUNCTION_160()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_165()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_170(__int128 *a1)
{
  sub_25BA97060(a1, v2 - 104);

  return sub_25BA97060((v1 + 40), v2 - 144);
}

__n128 OUTLINED_FUNCTION_187@<Q0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = *(v1 + 104);
  result = *(v1 + 114);
  *(a1 + 42) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_199@<Q0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>)
{
  *(a1 + 128) = a2;
  *(a1 + 144) = a3;
  *(a1 + 160) = *(v3 + 120);
  return *(v3 + 130);
}

uint64_t OUTLINED_FUNCTION_206()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_208()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_209@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_25BB2BAEC(a9, (a1 - 32) | 0x8000000000000000);
}

uint64_t OUTLINED_FUNCTION_210()
{

  return sub_25BCB614C();
}

uint64_t OUTLINED_FUNCTION_211@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 48) = *(a1 + 152);
  *(v1 + 56) = 2;

  return sub_25BCB617C();
}

void OUTLINED_FUNCTION_213()
{

  JUMPOUT(0x25F8779B0);
}

uint64_t OUTLINED_FUNCTION_214(uint64_t a1, uint64_t a2)
{

  return sub_25BAB4D78(v3, a2, v2);
}

uint64_t OUTLINED_FUNCTION_216()
{

  return swift_setDeallocating();
}

uint64_t Tensor.inverted()()
{
  v1 = *v0;
  if ((sub_25BAB74D0(*(*(*(v1 + 16) + 152) + 16), 2, 0, 0) & 1) == 0)
  {
    OUTLINED_FUNCTION_0_59();
    goto LABEL_6;
  }

  v2 = *(v1 + 16);
  if (*(v2 + 160) != 10)
  {
    v13 = *(v2 + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_0_59();
LABEL_6:
    sub_25BADDD28();
  }

  v3 = *(v1 + 16);

  sub_25BB3FA0C(sub_25BBE1EF4, v1, v4, v5, v6, v7, v8, v9, v11, v12);
}

uint64_t sub_25BBE19F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = v4;
  v10 = *(a3 + 16);
  v11 = *(v10 + 152);
  v12 = *(v10 + 160);
  sub_25BAA51C8(v10 + 168, v29);
  sub_25BAA51C8(v29, &v23);
  if (*(&v24 + 1))
  {
    v27[0] = v23;
    v27[1] = v24;
    v27[2] = v25;
    v28 = v26;

    sub_25BCB617C();
  }

  else
  {
    type metadata accessor for ContextManager();

    sub_25BCB617C();
    sub_25BAA49B8();
    sub_25BAA4A5C(v22);

    sub_25BAA51C8(v22, v27);
    sub_25BAA4AF4(v22);
    if (*(&v24 + 1))
    {
      sub_25BA9C2C8(&v23);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    swift_once();
  }

  v13 = qword_281557400;
  v22[0] = v11;
  LOBYTE(v23) = v12;

  sub_25BC73618(v22, &v23, v27, v13, a1, a2, a3);
  if (v5)
  {
    sub_25BA9C2C8(v27);
    sub_25BA9C2C8(v29);
  }

  else
  {
    v16 = v14;

    sub_25BAA51C8(v27, v22);
    type metadata accessor for TensorRepresentation();
    v17 = swift_allocObject();
    ObjectType = swift_getObjectType();
    v19 = swift_unknownObjectRetain();
    LOBYTE(v23) = 1;
    v20 = sub_25BAA5BB4(v19, v22, 0x100000000, v17, ObjectType, v16);
    type metadata accessor for TensorHandle();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;

    sub_25BAA6EB0();
    swift_unknownObjectRelease();

    sub_25BA9C2C8(v27);
    sub_25BA9C2C8(v29);

    *a4 = v21;
  }

  return result;
}

uint64_t sub_25BBE1C64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  sub_25BCB6EEC();
  v6 = *(*(a5 + 16) + 152);
  v7 = v6[2];
  if (!v7)
  {
LABEL_19:
    sub_25BCB617C();
    sub_25BADDD28();
  }

  v8 = v6[4];
  if (v8 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v8 > 0x7FFFFFFF)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v7 == 1)
  {
    goto LABEL_19;
  }

  v9 = v6[5];
  if (v9 < 0xFFFFFFFF80000000)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  if (v9 > 0x7FFFFFFF)
  {
    goto LABEL_18;
  }

  if (v9 >= v8)
  {
    v10 = v6[4];
  }

  else
  {
    v10 = v6[5];
  }

  sub_25BC552FC(0, v10);
  v12 = v11;
  sub_25BAC26E8(v9, 0.0);
  v14 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = *(v12 + 16);
    sub_25BAFE638();
  }

  sgetrf_NEWLAPACK();
  sub_25BCB617C();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = *(v14 + 16);
    sub_25BAFE610();
  }

  sgetri_NEWLAPACK();

  result = swift_bridgeObjectRelease_n();
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_25BBE1F20()
{
  result = qword_27FBB61E0[0];
  if (!qword_27FBB61E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB61E0);
  }

  return result;
}

uint64_t sub_25BBE1F74()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BBE1FE4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = a8;
  v9 = v8;
  v63 = a2;
  v64 = a4;
  v62 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v57 = *(AssociatedTypeWitness - 8);
  v15 = *(v57 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = a5;
  v51 = &v45 - v16;
  v48 = *(a5 - 8);
  v17 = *(v48 + 64);
  MEMORY[0x28223BE20](v18);
  v60 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v58 = &v45 - v21;
  v22 = sub_25BCB6E8C();
  v46 = *(v22 - 8);
  v47 = v22;
  v23 = *(v46 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v45 - v27;
  v29 = *(*(a4 - 1) + 64);
  MEMORY[0x28223BE20](v30);
  v59 = &v45 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v56 = *(a3 - 8);
  v33 = *(v56 + 64);
  MEMORY[0x28223BE20](v34);
  v55 = &v45 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = a6;
  v65 = swift_getAssociatedTypeWitness();
  v52 = *(v65 - 8);
  v36 = *(v52 + 64);
  MEMORY[0x28223BE20](v65);
  v38 = &v45 - v37;
  v39 = sub_25BCB657C();
  v66 = sub_25BCB731C();
  v61 = sub_25BCB732C();
  sub_25BCB726C();
  (*(v56 + 16))(v55, v53, a3);
  v64 = v38;
  v56 = a3;
  result = sub_25BCB655C();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v57 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25BCB6EDC();
      result = __swift_getEnumTagSinglePayload(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v62(v28, v58);
      if (v9)
      {
        (*(v52 + 8))(v64, v65);

        (*(v48 + 32))(v49, v58, v50);
        return (*v41)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v41)(v28, AssociatedTypeWitness);
      sub_25BCB72FC();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v42 = (v57 + 32);
  v43 = (v57 + 8);
  v44 = v51;
  while (1)
  {
    sub_25BCB6EDC();
    if (__swift_getEnumTagSinglePayload(v25, 1, AssociatedTypeWitness) == 1)
    {
      (*(v52 + 8))(v64, v65);
      (*(v46 + 8))(v25, v47);
      return v66;
    }

    (*v42)(v44, v25, AssociatedTypeWitness);
    v62(v44, v60);
    if (v9)
    {
      break;
    }

    v9 = 0;
    (*v43)(v44, AssociatedTypeWitness);
    sub_25BCB72FC();
  }

  (*v43)(v44, AssociatedTypeWitness);
  (*(v52 + 8))(v64, v65);

  return (*(v48 + 32))(v49, v60, v50);
}

uint64_t sub_25BBE2650(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[12] = a3;
  v14[13] = a4;
  v14[14] = a5;
  sub_25BCB61AC();
  sub_25BCB617C();
  swift_getWitnessTable();
  v8 = sub_25BCB664C();

  v14[17] = v8;
  v14[6] = a3;
  v14[7] = a4;
  v14[8] = a5;
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = swift_getKeyPath();
  swift_getTupleTypeMetadata2();
  v9 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25BAB2B20(sub_25BBE42FC, v14, v9, a3, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  return v12;
}

uint64_t sub_25BBE2850@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v17[1] = a3;
  v3 = *a2;
  v4 = MEMORY[0x277D84DE8];
  v5 = *(*a2 + *MEMORY[0x277D84DE8]);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = v17 - v12;
  (*(v6 + 16))(v17 - v12, v11);
  v14 = *(v5 + 48);
  v15 = *&v13[v14];
  (*(*(*(v3 + *v4 + 8) - 8) + 32))(v9, v13);
  *&v9[v14] = v15;
  swift_getAtKeyPath();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_25BBE29FC@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  sub_25BCB61BC();
  if (v6)
  {
    v4 = 1;
  }

  else
  {
    sub_25BCB690C();
    v4 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v4, 1, a1);
}

void sub_25BBE2A8C()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_9();
  v39 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v42 = v13 - v12;
  OUTLINED_FUNCTION_9();
  v38 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v20 = v19 - v18;
  v21 = OUTLINED_FUNCTION_9_34();
  OUTLINED_FUNCTION_9();
  v23 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v26);
  v28 = &v36 - v27;
  OUTLINED_FUNCTION_7_33();
  v41 = sub_25BCB67CC();
  v49 = v41;
  OUTLINED_FUNCTION_9_34();
  sub_25BCB67CC();
  v43 = v5;
  v44 = v1;
  v48 = sub_25BCB614C();
  sub_25BCB617C();
  v29 = sub_25BCB674C();

  v47 = v29;
  if (v29 == sub_25BCB681C())
  {
LABEL_2:

    OUTLINED_FUNCTION_10_16();
    return;
  }

  v37 = v25;
  v30 = *(v21 + 48);
  v40 = (v23 + 16);
  v41 = v30;
  v31 = (v38 + 32);
  v32 = (v39 + 32);
  while (1)
  {
    v33 = sub_25BCB67FC();
    sub_25BCB677C();
    if ((v33 & 1) == 0)
    {
      break;
    }

    (*(v23 + 16))(v28, v7 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v21);
LABEL_6:
    sub_25BCB68AC();
    (*v31)(v20, v28, v43);
    v45 = sub_25BCB681C();
    v46 = 0;
    sub_25BCB61AC();
    sub_25BCB61CC();
    (*v32)(v42, &v28[v41], v3);
    OUTLINED_FUNCTION_7_33();
    sub_25BCB68CC();
    sub_25BCB687C();
    v34 = sub_25BCB681C();
    v29 = v47;
    if (v47 == v34)
    {
      goto LABEL_2;
    }
  }

  v35 = sub_25BCB717C();
  if (v37 == 8)
  {
    v45 = v35;
    (*v40)(v28, &v45, v21);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_25BBE2E30(void *a1@<X1>, void *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  sub_25BBE2A8C();
  *a2 = v6;
  a2[1] = v7;
}

void sub_25BBE2E64()
{
  OUTLINED_FUNCTION_9_18();
  v87 = v0;
  v101 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  OUTLINED_FUNCTION_9();
  v15 = v14;
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_1();
  v88 = v20 - v19;
  v21 = sub_25BCB6E8C();
  v97 = OUTLINED_FUNCTION_9_34();
  OUTLINED_FUNCTION_9();
  v77 = v22;
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v99 = v73 - v26;
  OUTLINED_FUNCTION_9();
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_50();
  v89 = v32;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v33);
  v90 = v73 - v34;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v35);
  v98 = v73 - v36;
  v37 = sub_25BCB6E8C();
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = v73 - v39;
  v95 = v13;
  v41 = sub_25BCB681C();
  v96 = v9;
  v42 = sub_25BCB681C();
  if (v41 != v42)
  {
    goto LABEL_6;
  }

  v100 = v15;
  v92 = v11;
  v43 = v101;
  v102 = sub_25BBE2650(v42, v11, v5, v3, v101);
  sub_25BCB68CC();
  swift_getWitnessTable();
  v44 = OUTLINED_FUNCTION_5_40();
  v102 = sub_25BBE2650(v44, v7, v5, v3, v43);
  OUTLINED_FUNCTION_5_40();
  sub_25BCB617C();
  sub_25BCB69EC();

  v45 = sub_25BCB6A2C();

  if ((v45 & 1) == 0)
  {

LABEL_6:
    OUTLINED_FUNCTION_10_16();
    return;
  }

  v85 = v7;
  v46 = v44;
  if ((v44 & 0xC000000000000001) != 0)
  {
    sub_25BCB705C();
    sub_25BCB6A3C();
    v46 = v102;
    v47 = v103;
    v48 = v104;
    v49 = v105;
    v50 = v106;
  }

  else
  {
    v49 = 0;
    v51 = -1 << *(v44 + 32);
    v47 = v44 + 56;
    v52 = ~v51;
    v53 = -v51;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v50 = v54 & *(v44 + 56);
    v48 = v52;
  }

  v55 = v90;
  v56 = v98;
  v73[1] = v48;
  v57 = (v48 + 64) >> 6;
  v82 = (v28 + 16);
  v74 = (v100 + 32);
  v76 = (v100 + 8);
  v83 = (v28 + 8);
  v58 = v99;
  v84 = v46;
  v86 = v47;
  v79 = v57;
  v93 = v5 - 8;
  v80 = v40;
  v75 = v5;
  v81 = v21;
  while (1)
  {
    v94 = v49;
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

    v91 = v50;
    if (!sub_25BCB706C())
    {
LABEL_27:
      __swift_storeEnumTagSinglePayload(v40, 1, 1, v5);
      goto LABEL_28;
    }

    v61 = v55;
    sub_25BCB787C();
    swift_unknownObjectRelease();
    v100 = v91;
    v56 = v98;
LABEL_21:
    __swift_storeEnumTagSinglePayload(v40, 0, 1, v5);
    sub_25BBE29FC(v3, v56);
    sub_25BBE29FC(v3, v61);
    v55 = v61;
    (*(*(v5 - 8) + 8))(v40, v5);
    v40 = *(v97 + 48);
    v62 = *v82;
    v63 = v81;
    (*v82)(v58, v56, v81);
    v62(v58 + v40, v55, v63);
    if (__swift_getEnumTagSinglePayload(v58, 1, v3) == 1)
    {
      v46 = v83;
      v64 = *v83;
      (*v83)(v55, v63);
      v64(v56, v63);
      if (__swift_getEnumTagSinglePayload(v58 + v40, 1, v3) != 1)
      {
        goto LABEL_30;
      }

      v64(v58, v63);
      OUTLINED_FUNCTION_3_35();
      v50 = v100;
    }

    else
    {
      v65 = v3;
      v66 = v89;
      v62(v89, v58, v63);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v58 + v40, 1, v65);
      v68 = v83;
      if (EnumTagSinglePayload == 1)
      {
        v72 = *v83;
        (*v83)(v90, v63);
        v72(v98, v63);
        (*v76)(v66, v65);
LABEL_30:
        (*(v77 + 8))(v58, v97);
LABEL_28:
        sub_25BAB3820();
        goto LABEL_6;
      }

      v69 = v58 + v40;
      v70 = v88;
      (*v74)(v88, v69, v65);
      v78 = sub_25BCB630C();
      v71 = *v76;
      (*v76)(v70, v65);
      v40 = *v68;
      v55 = v90;
      (*v68)(v90, v63);
      v46 = v98;
      (v40)(v98, v63);
      v71(v66, v65);
      v5 = v75;
      (v40)(v99, v63);
      v58 = v99;
      v3 = v65;
      v56 = v46;
      OUTLINED_FUNCTION_3_35();
      if ((v78 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  v59 = v50;
  if (v50)
  {
LABEL_18:
    v61 = v55;
    v91 = v50;
    v100 = (v59 - 1) & v59;
    (*(*(v5 - 8) + 16))(v40, *(v46 + 48) + *(*(v5 - 8) + 72) * (__clz(__rbit64(v59)) | (v49 << 6)), v5);
    goto LABEL_21;
  }

  v60 = v94;
  while (1)
  {
    v49 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v49 >= v57)
    {
      goto LABEL_27;
    }

    v59 = *(v47 + 8 * v49);
    ++v60;
    if (v59)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

void sub_25BBE36F4(uint64_t *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *a1;
  v6 = a1[1];
  v8 = *a2;
  v7 = a2[1];
  v9 = a3[2];
  v10 = a3[3];
  v11 = a3[4];
  sub_25BBE2E64();
}

void sub_25BBE3718()
{
  OUTLINED_FUNCTION_9_18();
  v51 = v0;
  v52 = v1;
  v3 = v2;
  v5 = v4;
  v48 = v6;
  v49 = v7;
  v50 = v8;
  OUTLINED_FUNCTION_9();
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_1();
  v47 = v15 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_9();
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v18);
  v44 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v20);
  v45 = &v41 - v22;
  v46 = v3;
  v23 = v5 + 64;
  v24 = 1 << *(v5 + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & *(v5 + 64);
  v27 = (v24 + 63) >> 6;
  v42 = (v10 + 8);
  v43 = v3 - 8;
  v41 = (v21 + 8);
  v53 = v5;
  sub_25BCB617C();
  v28 = 0;
  v29 = v46;
  while (v26)
  {
    v30 = v28;
LABEL_9:
    v31 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v32 = v31 | (v30 << 6);
    v33 = v53;
    v34 = *(v29 - 8);
    v35 = v45;
    (*(v34 + 16))(v45, *(v53 + 48) + *(v34 + 72) * v32, v29);
    v36 = *(*(v33 + 56) + 8 * v32);
    v37 = *(TupleTypeMetadata2 + 48);
    v38 = v44;
    (*(v34 + 32))(v44, v35, v29);
    *&v38[v37] = v36;
    sub_25BCB624C();
    v39 = v47;
    v40 = v50;
    sub_25BCB690C();
    sub_25BCB624C();
    (*v42)(v39, v40);
    (*v41)(v38, TupleTypeMetadata2);
  }

  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v27)
    {

      OUTLINED_FUNCTION_10_16();
      return;
    }

    v26 = *(v23 + 8 * v30);
    ++v28;
    if (v26)
    {
      v28 = v30;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_25BBE3A44()
{
  sub_25BCB79CC();
  sub_25BBE3718();
  return sub_25BCB7A3C();
}

uint64_t sub_25BBE3AC4(void *a1, uint64_t a2)
{
  v3 = *(a2 - 16);
  v5 = *v2;
  v4 = v2[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  return sub_25BBE3A44();
}

void sub_25BBE3ADC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 - 16);
  v6 = *v3;
  v5 = v3[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  sub_25BBE3718();
}

uint64_t sub_25BBE3AF4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  sub_25BCB79CC();
  v6 = *v3;
  v7 = v3[1];
  v8 = a2[2];
  v9 = a2[3];
  v10 = a2[4];
  sub_25BBE3718();
  return sub_25BCB7A3C();
}

uint64_t sub_25BBE3B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v20 - v14;
  v22 = *(swift_getTupleTypeMetadata2() + 48);
  v16 = *(v9 + 16);
  v16(v15, a1, TupleTypeMetadata2);
  v23 = *(TupleTypeMetadata2 + 48);
  v17 = *(a2 - 8);
  (*(v17 + 32))(a4, v15, a2);
  v16(v12, v21, TupleTypeMetadata2);
  v18 = *(a3 - 8);
  (*(v18 + 32))(a4 + v22, &v12[*(TupleTypeMetadata2 + 48)], a3);
  (*(v17 + 8))(v12, a2);
  return (*(v18 + 8))(&v15[v23], a3);
}

void sub_25BBE3D7C()
{
  OUTLINED_FUNCTION_9_18();
  v48 = v1;
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_7_33();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(*(TupleTypeMetadata2 - 8) + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  OUTLINED_FUNCTION_50();
  v45 = v7;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  OUTLINED_FUNCTION_7_33();
  v11 = OUTLINED_FUNCTION_9_34();
  OUTLINED_FUNCTION_9();
  v46 = v12;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_50();
  v47 = v16;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v21 = *v0;
  v20 = v0[1];
  if (v20 >= sub_25BCB681C())
  {
    OUTLINED_FUNCTION_10_16();

    __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  }

  else
  {
    v22 = *(v11 + 48);
    v39 = v10;
    v40 = v22;
    sub_25BCB690C();
    v23 = *(TupleTypeMetadata2 + 48);
    v42 = v0;
    v43 = v23;
    v24 = *(v4 - 8);
    v25 = v45;
    v41 = *(v24 + 32);
    v44 = v24 + 32;
    v41(v19, v10, v4);
    sub_25BCB690C();
    v26 = *(TupleTypeMetadata2 + 48);
    v27 = *(v3 - 8);
    v38 = *(v27 + 32);
    v38(&v19[v40], v25 + v26, v3);
    (*(v24 + 8))(v25, v4);
    (*(v27 + 8))(&v39[v43], v3);
    v42[1] = v20 + 1;
    v28 = v47;
    (*(v46 + 32))(v47, v19, v11);
    v29 = *(v11 + 48);
    v30 = *(TupleTypeMetadata2 + 48);
    v31 = v48;
    v41(v48, v28, v4);
    v38((v31 + v30), &v28[v29], v3);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, TupleTypeMetadata2);
    OUTLINED_FUNCTION_10_16();
  }
}

uint64_t sub_25BBE40B0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  sub_25BBE2650(a1, v4, v5, v6, v7);
  sub_25BBE29F8();

  v8 = sub_25BCB68CC();
  v9 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  sub_25BCB793C();

  v27 = v29;
  v28 = v30;
  v20 = v5;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  v24 = v9;
  v25 = WitnessTable;
  v26 = v11;
  v12 = sub_25BCB715C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = swift_getWitnessTable();
  v16 = sub_25BBE1FE4(sub_25BBE4320, v19, v12, TupleTypeMetadata2, MEMORY[0x277D84A98], v14, MEMORY[0x277D84AC0], v15);

  *a2 = v16;
  a2[1] = 0;
  return result;
}

uint64_t sub_25BBE4280(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 24);
  return sub_25BCB681C();
}

BOOL sub_25BBE42D8(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_25BBE27E4(a1, a2);
}

uint64_t sub_25BBE42FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25BBE2850(a1, *(v2 + 32), a2);
}

uint64_t sub_25BBE4344()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25BBE4440(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_28154F2C8 != -1)
  {
    swift_once();
  }

  v4 = *(a1 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v17 = MEMORY[0x277D84F90];
    sub_25BCB727C();
    v6 = (a1 + 32);
    do
    {
      v7 = *v6++;
      v8 = *(v7 + 16);

      sub_25BCB723C();
      v9 = *(v17 + 16);
      sub_25BCB728C();
      sub_25BCB729C();
      sub_25BCB725C();
      --v4;
    }

    while (v4);
    v5 = v17;
  }

  type metadata accessor for LazyTensorFunctionBuilder();
  LOBYTE(v17) = 1;
  v18 = MEMORY[0x277D84FA0];
  if (sub_25BACF298(v5, &v17))
  {
    sub_25BAD6344();
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  v12 = *(v11 + 16);
  if (!v12)
  {

    return 0;
  }

  if (v12 == 1)
  {
    sub_25BAD6FB0(v11 + 32, &v17);

    v13 = a2(v14);
    sub_25BA9AC78(&v17);
    return v13;
  }

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_25BCB70FC();
  MEMORY[0x25F876C90](0xD000000000000061, 0x800000025BCE0E70);
  v19 = v12;
  v16 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v16);

  MEMORY[0x25F876C90](0x6F6974636E756620, 0xEB000000002E736ELL);
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BBE46A4()
{
  sub_25BAD6FB0(v0, v6);
  sub_25BC46E18(v7);
  type metadata accessor for MILProgramBuilder();
  swift_initStackObject();
  sub_25BBA35C4(v6, 0, 1, v7);
  sub_25BBA003C();
  v2 = v1;
  v3 = [v1 description];
  v4 = sub_25BCB636C();

  return v4;
}

uint64_t sub_25BBE47B0(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, __n128))
{
  v5 = sub_25BCB639C();
  v6 = OUTLINED_FUNCTION_2(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v6);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(a2, v11);
  sub_25BCB638C();
  v14 = sub_25BCB637C();
  v16 = v15;

  result = (*(v8 + 8))(v13, v5);
  if (v16 >> 60 != 15)
  {
    sub_25BCB5A5C();
    return sub_25BBE4B68(v14, v16);
  }

  return result;
}

uint64_t sub_25BBE490C(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v3;

  v5 = a1(inited);
  swift_setDeallocating();
  sub_25BAB3FD0();
  return v5;
}

uint64_t sub_25BBE49D0(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_25BCB639C();
  v5 = OUTLINED_FUNCTION_2(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39C0, &unk_25BCC8940);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = v12;

  a2(inited);
  swift_setDeallocating();
  sub_25BAB3FD0();
  sub_25BCB638C();
  v14 = sub_25BCB637C();
  v16 = v15;

  result = (*(v7 + 8))(v11, v4);
  if (v16 >> 60 != 15)
  {
    sub_25BCB5A5C();
    return sub_25BBE4B68(v14, v16);
  }

  return result;
}

uint64_t sub_25BBE4B68(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25BB0D160(a1, a2);
  }

  return a1;
}

void Tensor.init<A>(repeating:shape:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = *v10;
  sub_25BAA51C8(v4, v24);
  if (v25)
  {
    OUTLINED_FUNCTION_158_0(v26);
    v26[12] = v12;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v23);

    sub_25BAA51C8(v23, v26);
    sub_25BAA4AF4(v23);
    if (v25)
    {
      sub_25BA9C2C8(v24);
    }
  }

  if (qword_28154F2C8 != -1)
  {
    OUTLINED_FUNCTION_0_0();
    swift_once();
  }

  v23[0] = v11;
  v13 = (*(v1 + 32))(v24, v3, v1);
  MEMORY[0x28223BE20](v13);
  v22[2] = v3;
  v22[3] = v1;
  v22[4] = v7;
  sub_25BAA4B48(v23, v24, v26, sub_25BBEEFC4, v22);
  v15 = v14;

  v16 = type metadata accessor for TensorRepresentation();
  sub_25BAA51C8(v26, v23);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  LOBYTE(v24[0]) = 1;
  OUTLINED_FUNCTION_149();
  sub_25BC5FAD0(v18, v23, v19, v16, ObjectType, v15);
  OUTLINED_FUNCTION_9_19();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v20 = swift_allocObject();
  OUTLINED_FUNCTION_14_2(v20);
  sub_25BAA6EB0();
  swift_unknownObjectRelease();

  sub_25BA9C2C8(v5);
  sub_25BA9C2C8(v26);
  *v9 = v20;
  OUTLINED_FUNCTION_11_1(v3);
  (*(v21 + 8))(v7, v3);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.init<A>(randomUniform:in:seed:scalarType:on:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v56 = v6;
  v8 = v7;
  v10 = v9;
  v58 = v11;
  v59 = v12;
  v14 = v13;
  v60 = sub_25BCB62FC();
  OUTLINED_FUNCTION_2(v60);
  v57 = v15;
  v17 = *(v16 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  v21 = *v14;
  v54 = v5;
  v55 = v21;
  sub_25BAA51C8(v5, &v69);
  if (*(&v70[0] + 1))
  {
    v68[0] = v69;
    v68[1] = v70[0];
    v68[2] = v70[1];
    OUTLINED_FUNCTION_214_0();
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    OUTLINED_FUNCTION_175_0();

    sub_25BAA51C8(v67, v68);
    sub_25BAA4AF4(v67);
    if (*(&v70[0] + 1))
    {
      sub_25BA9C2C8(&v69);
    }
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_10;
  }

  v22 = type metadata accessor for ContextManager();
  v23 = sub_25BAA49B8();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_180();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[2] = v5;
  if (isUniquelyReferenced_nonNull_native)
  {
    if (v22)
    {
      goto LABEL_8;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_25BBF1454(v5);
  v5 = v53;
  v23[2] = v53;
  if (!v22)
  {
    goto LABEL_20;
  }

LABEL_8:
  if (v22 > *(v5 + 16))
  {
LABEL_21:
    __break(1u);
    return;
  }

  v10 = sub_25BC32FA0();
  v23[2] = v5;
  swift_endAccess();

LABEL_10:
  v25 = sub_25BBE5CAC(v10);
  v65 = v26;
  OUTLINED_FUNCTION_82_5(v25, v27, *&v26, v28);
  v29 = *(v66 + 16);

  v62[0] = v55;
  v31 = v57;
  v30 = v58;
  OUTLINED_FUNCTION_206_0();
  v32 = OUTLINED_FUNCTION_102_0();
  v34 = v33(v32);
  OUTLINED_FUNCTION_126_0(v34, *(v1 + 8));
  v35(&v69, v3);
  sub_25BC3209C(v20, &v69, v3, v1, v67);
  v64 = 0;
  OUTLINED_FUNCTION_19_3("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/RandomOp.swift");
  *(v70 + 8) = xmmword_25BCBC690;
  OUTLINED_FUNCTION_72_4(v36);
  v37 = OUTLINED_FUNCTION_201();
  v38 = OUTLINED_FUNCTION_3();
  sub_25BC323E4(v38, v39, v40, v29, v41, v42, v43);
  OUTLINED_FUNCTION_11_30();
  sub_25BBF3030(v44, v45);
  v46 = OUTLINED_FUNCTION_185_0();
  sub_25BAA51C8(v46, v62);
  if (v63)
  {
    OUTLINED_FUNCTION_65_2();
    sub_25BABEF40(v67, v61);
    sub_25BC170C8(v37, v61, v62);
    sub_25BA9C2C8(v61);
    sub_25BABF0A8(v67);
  }

  else
  {
    sub_25BA9C2C8(v62);
    OUTLINED_FUNCTION_114_3();
  }

  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v67);
  sub_25BAA49B8();
  OUTLINED_FUNCTION_175_0();

  sub_25BAA4AF4(v67);
  type metadata accessor for TensorRepresentation();
  OUTLINED_FUNCTION_93();
  swift_allocObject();

  OUTLINED_FUNCTION_48_9();
  v47 = sub_25BC0C634();
  type metadata accessor for TensorHandle();
  OUTLINED_FUNCTION_22();
  v48 = swift_allocObject();
  *(v48 + 16) = v47;

  sub_25BAA6EB0();
  sub_25BAA51C8(v68, v62);
  if (v63)
  {
    OUTLINED_FUNCTION_65_2();
    v62[0] = v48;
    v49 = Tensor.scalarType.getter();
    sub_25BBABD24(v49, v50);
    OUTLINED_FUNCTION_186();
    if (!v51)
    {
      OUTLINED_FUNCTION_78_4();
      OUTLINED_FUNCTION_55(v67, v52);
    }

    OUTLINED_FUNCTION_200_0();

    sub_25BA9C2C8(v54);
    (*(v31 + 8))(v30, v60);
    sub_25BABF0A8(v67);
    sub_25BA9C2C8(v68);
    v48 = v62[0];
  }

  else
  {

    sub_25BA9C2C8(v54);
    (*(v31 + 8))(v30, v60);
    sub_25BA9C2C8(v68);
    sub_25BA9C2C8(v62);
  }

  *v59 = v48;
  OUTLINED_FUNCTION_10_16();
}