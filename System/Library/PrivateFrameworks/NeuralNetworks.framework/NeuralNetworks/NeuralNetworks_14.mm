uint64_t sub_25BB93210(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, _OWORD *), uint64_t a3, uint64_t a4)
{
  v6 = a1;
  v14 = a1;
  v7 = *(a4 + 16);
  for (i = (a4 + 32); v7; --v7)
  {
    v9 = i[1];
    v13[0] = *i;
    v13[1] = v9;
    v10 = i[3];
    v13[2] = i[2];
    v13[3] = v10;
    a2(&v12, &v14, v13);
    if (v4)
    {
      break;
    }

    v6 = v12;
    v14 = v12;
    i += 4;
  }

  return v6;
}

uint64_t sub_25BB932A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + 8);
  result = type metadata accessor for MILBlobStorageWriter(0);
  v9 = *(a3 + *(result + 28));
  v10 = __CFADD__(v6, v9);
  v11 = v6 + v9;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    if ((v7 & 0x3F) != 0)
    {
      v12 = 64 - (v7 & 0x3F);
      v10 = __CFADD__(v7, v12);
      v7 += v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    v10 = __CFADD__(v11, v7);
    v13 = v11 + v7;
    if (!v10)
    {
      *a4 = v13;
      return result;
    }
  }

  __break(1u);
LABEL_8:
  __break(1u);
  return result;
}

void sub_25BB9332C()
{
  OUTLINED_FUNCTION_17_1();
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = sub_25BCB598C();
  v1 = OUTLINED_FUNCTION_2(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_1();
  v8 = v7 - v6;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  sub_25BCB595C();
  v11 = sub_25BCB633C();

  v12 = [v10 fileExistsAtPath_];

  if ((v12 & 1) == 0)
  {
    v13 = [v9 defaultManager];
    sub_25BCB593C();
    v14 = sub_25BCB592C();
    (*(v3 + 8))(v8, v0);
    v22[0] = 0;
    v15 = [v13 createDirectoryAtURL:v14 withIntermediateDirectories:1 attributes:0 error:v22];

    if (v15)
    {
      v16 = v22[0];
      v17 = [v9 defaultManager];
      sub_25BCB595C();
      v18 = sub_25BCB633C();

      type metadata accessor for FileAttributeKey(0);
      sub_25BB944FC();
      v19 = sub_25BCB614C();
      sub_25BB9440C(v18, 0, v19, v17);
    }

    else
    {
      v20 = v22[0];
      sub_25BCB58CC();

      swift_willThrow();
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
}

void sub_25BB93590()
{
  OUTLINED_FUNCTION_17_1();
  v44 = v1;
  v45 = v2;
  v4 = v3;
  v47 = v6;
  v48 = v5;
  v46 = v7;
  v49 = v8;
  v10 = v9;
  v52 = *MEMORY[0x277D85DE8];
  v11 = type metadata accessor for MILBlobStorageWriter.BlobWriter(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v15 = v14 - v13;
  v16 = sub_25BCB598C();
  v17 = OUTLINED_FUNCTION_2(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_1();
  v24 = v23 - v22;
  sub_25BB0CE80();
  v25 = *(v19 + 16);
  v26 = OUTLINED_FUNCTION_12_18();
  v27(v26);
  v28 = sub_25BB0AF90(v24);
  if (v0)
  {
  }

  else
  {
    v29 = v28;
    sub_25BB0CEC4(v10, v15);
    *(v15 + *(v11 + 20)) = v29;
    v30 = v29;
    v45(v15, v49, v46, v48, v47, v4, v44);
    v31 = type metadata accessor for MILBlobStorageWriter(0);
    v32 = *(v31 + 20);
    v33 = (v10 + v32);
    v34 = *(v15 + v32 + 16);
    *v33 = *(v15 + v32);
    v33[1] = v34;
    v35 = *(v15 + v32 + 48);
    v33[2] = *(v15 + v32 + 32);
    v33[3] = v35;
    v36 = *(v31 + 32);
    v37 = *(v10 + v36);
    *(v10 + v36) = *(v15 + v36);
    sub_25BCB617C();

    v50 = 0;
    if (([v30 seekToOffset:0 error:&v50] & 1) == 0)
    {
      goto LABEL_6;
    }

    v38 = v33[1];
    v51[0] = *v33;
    v51[1] = v38;
    v39 = v33[3];
    v51[2] = v33[2];
    v51[3] = v39;
    v40 = v50;
    sub_25BB93AF4(v51, v30);
    v50 = 0;
    if ([v30 closeAndReturnError_])
    {
      v41 = v50;
      sub_25BB94554(v15);
    }

    else
    {
LABEL_6:
      v42 = v50;
      sub_25BCB58CC();

      swift_willThrow();
      sub_25BB94554(v15);
    }
  }

  v43 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_16();
}

uint64_t sub_25BB93920@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  Tensor.scalarType.getter();
  result = sub_25BB93C9C();
  if (result == 4)
  {
    sub_25BCB70FC();

    Tensor.scalarType.getter();

    v7 = sub_25BCB7C1C();
    MEMORY[0x25F876C90](v7);

    MEMORY[0x25F876C90](11872, 0xE200000000000000);
    sub_25BB944A8();
    swift_allocError();
    *v8 = 0xD000000000000026;
    v8[1] = 0x800000025BCDD9A0;
    return swift_willThrow();
  }

  v9 = result;
  v10 = *(*(v5 + 16) + 152);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = (v10 + 32);
    v13 = 1;
    while (1)
    {
      v14 = *v12++;
      v15 = v13 * v14;
      if ((v13 * v14) >> 64 != (v13 * v14) >> 63)
      {
        break;
      }

      v13 = v15;
      if (!--v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = 1;
LABEL_9:
  v16 = Tensor.scalarType.getter();
  v18 = v17;

  result = sub_25BC89FF4(v16, v18);
  v19 = v15 * result;
  if ((v15 * result) >> 64 != (v15 * result) >> 63)
  {
    goto LABEL_13;
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    *a3 = -559038737;
    *(a3 + 4) = (v9 + 1);
    *(a3 + 8) = v19;
    *(a3 + 16) = a2;
    *(a3 + 24) = 0u;
    *(a3 + 40) = 0u;
    *(a3 + 56) = 0;
    return result;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25BB93AF4(uint64_t a1, void *a2)
{
  v4 = sub_25BCB588C();
  OUTLINED_FUNCTION_17_18(v4);
  swift_allocObject();
  v9 = 0x4000000000;
  v10 = sub_25BCB585C();
  sub_25BB942B4(&v9, 0);
  v10 |= 0x4000000000000000uLL;
  sub_25BB93D58(&v9, a1);
  v5 = v9;
  v6 = v10;
  v7 = sub_25BCB59FC();
  [a2 writeData_];

  return sub_25BB0D160(v5, v6);
}

uint64_t sub_25BB93BC0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v3 = *(*(a3 + 16) + 152);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = (v3 + 32);
      v6 = 1;
      while (1)
      {
        v7 = *v5++;
        v8 = v6 * v7;
        if ((v6 * v7) >> 64 != (v6 * v7) >> 63)
        {
          break;
        }

        v6 = v8;
        if (!--v4)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
      v8 = 1;
LABEL_8:
      v9 = Tensor.scalarType.getter();
      result = sub_25BC89FF4(v9, v10);
      if ((v8 * result) >> 64 == (v8 * result) >> 63)
      {
        sub_25BB5C3B0();
        return sub_25BCB6CAC();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25BB93C9C()
{
  if (swift_dynamicCastMetatype())
  {
    return 0;
  }

  if (swift_dynamicCastMetatype())
  {
    return 1;
  }

  if (swift_dynamicCastMetatype())
  {
    return 2;
  }

  if (swift_dynamicCastMetatype())
  {
    return 3;
  }

  return 4;
}

uint64_t sub_25BB93D28()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25BCB617C();
  return v1;
}

uint64_t *sub_25BB93D58(uint64_t *result, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v2 = result[1];
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:
      v7 = v2 & 0x3FFFFFFFFFFFFFFFLL;

      sub_25BB0D160(v3, v2);
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      v8 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v8 < v3)
      {
        goto LABEL_15;
      }

      if (sub_25BCB584C() && __OFSUB__(v3, sub_25BCB587C()))
      {
        goto LABEL_16;
      }

      v11 = sub_25BCB588C();
      OUTLINED_FUNCTION_17_18(v11);
      swift_allocObject();
      v12 = sub_25BCB583C();

      v7 = v12;
      v8 = v3 >> 32;
LABEL_10:
      if (v8 < v3)
      {
        __break(1u);
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
      }

      sub_25BB93FC0(v3, v8, v7, a2);

      v10 = v7 | 0x4000000000000000;
LABEL_12:
      *v5 = v3;
      v5[1] = v10;
LABEL_13:
      v13 = *MEMORY[0x277D85DE8];
      return result;
    case 2uLL:
      v9 = *result;

      sub_25BB0D160(v3, v2);
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      sub_25BCB599C();
      result = sub_25BB93FC0(*(v3 + 16), *(v3 + 24), v2 & 0x3FFFFFFFFFFFFFFFLL, a2);
      v10 = v2 & 0x3FFFFFFFFFFFFFFFLL | 0x8000000000000000;
      goto LABEL_12;
    case 3uLL:
      goto LABEL_13;
    default:
      result = sub_25BB0D160(*result, v2);
      v6 = *(a2 + 8) | (*(a2 + 12) << 32) | (*(a2 + 13) << 40) | (*(a2 + 14) << 48);
      *v5 = *a2;
      v5[1] = v6;
      goto LABEL_13;
  }
}

uint64_t sub_25BB93FC0(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  result = sub_25BCB584C();
  if (result)
  {
    v7 = result;
    result = sub_25BCB587C();
    if (!__OFSUB__(a1, result))
    {
      v8 = (v7 + a1 - result);
      result = sub_25BCB586C();
      v9 = a4[1];
      *v8 = *a4;
      v8[1] = v9;
      v10 = a4[3];
      v8[2] = a4[2];
      v8[3] = v10;
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *sub_25BB94038(uint64_t *result, int a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = *result;
  v2 = result[1];
  v5 = result;
  switch(v2 >> 62)
  {
    case 1uLL:

      sub_25BB0D160(v3, v2);
      __b = v3;
      v23 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      result = sub_25BB942B4(&__b, a2);
      v6 = __b;
      v7 = v23 | 0x4000000000000000;
      goto LABEL_4;
    case 2uLL:
      v9 = *result;

      sub_25BB0D160(v3, v2);
      __b = v3;
      v23 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      sub_25BCB599C();
      v10 = v23;
      v11 = *(__b + 16);
      v12 = *(__b + 24);
      result = sub_25BCB584C();
      if (!result)
      {
        __break(1u);
        return result;
      }

      v13 = result;
      v14 = sub_25BCB587C();
      v15 = v11 - v14;
      if (__OFSUB__(v11, v14))
      {
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (v16)
      {
        goto LABEL_14;
      }

      v18 = sub_25BCB586C();
      if (v18 >= v17)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      result = memset(v13 + v15, a2, v19);
      *v5 = __b;
      v5[1] = v10 | 0x8000000000000000;
LABEL_12:
      v20 = *MEMORY[0x277D85DE8];
      return result;
    case 3uLL:
      goto LABEL_12;
    default:
      sub_25BB0D160(v3, v2);
      __b = v3;
      LOWORD(v23) = v2;
      BYTE2(v23) = BYTE2(v2);
      BYTE3(v23) = BYTE3(v2);
      BYTE4(v23) = BYTE4(v2);
      BYTE5(v23) = BYTE5(v2);
      BYTE6(v23) = BYTE6(v2);
      result = memset(&__b, a2, BYTE6(v2));
      v6 = __b;
      v7 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
LABEL_4:
      *v5 = v6;
      v5[1] = v7;
      goto LABEL_12;
  }
}

uint64_t sub_25BB942B4(int *a1, int a2)
{
  result = sub_25BCB59CC();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_25BCB584C();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_25BCB587C();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_25BCB586C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_25BB9439C(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_25BB9440C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  type metadata accessor for FileAttributeKey(0);
  sub_25BB944FC();
  v7 = sub_25BCB60FC();

  v8 = [a4 createFileAtPath:a1 contents:a2 attributes:v7];

  return v8;
}

unint64_t sub_25BB944A8()
{
  result = qword_27FBB5AA8;
  if (!qword_27FBB5AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5AA8);
  }

  return result;
}

unint64_t sub_25BB944FC()
{
  result = qword_27FBB36B0;
  if (!qword_27FBB36B0)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB36B0);
  }

  return result;
}

uint64_t sub_25BB94554(uint64_t a1)
{
  v2 = type metadata accessor for MILBlobStorageWriter.BlobWriter(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25BB945F8()
{
  result = type metadata accessor for MILBlobStorageWriter(319);
  if (v1 <= 0x3F)
  {
    result = sub_25BB0CE80();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25BB946A4()
{
  sub_25BCB598C();
  if (v0 <= 0x3F)
  {
    sub_25BB9473C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25BB9473C()
{
  if (!qword_27FBB5AD0)
  {
    v0 = sub_25BCB68CC();
    if (!v1)
    {
      atomic_store(v0, &qword_27FBB5AD0);
    }
  }
}

void sub_25BB947A4()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_25BADFD68();
  v0 = *MEMORY[0x277D85DE8];
}

void sub_25BB947F0()
{
  v1 = *MEMORY[0x277D85DE8];
  sub_25BADFDC8();
  v0 = *MEMORY[0x277D85DE8];
}

uint64_t sub_25BB9483C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25BAC27B0(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
  if (OUTLINED_FUNCTION_9_22())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = v7;
    v5 = 1;
  }

  else if (OUTLINED_FUNCTION_9_22())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = v7;
    v5 = 2;
  }

  else if (OUTLINED_FUNCTION_9_22())
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v4 = v7;
    v5 = 3;
  }

  else
  {
    if (!OUTLINED_FUNCTION_9_22())
    {
      sub_25BCB70FC();
      MEMORY[0x25F876C90](0xD000000000000025, 0x800000025BCDA730);
      sub_25BCB73CC();
      MEMORY[0x25F876C90](11872, 0xE200000000000000);
      sub_25BA97890();
    }

    __swift_destroy_boxed_opaque_existential_1(a1);
    v5 = 0;
    v4 = v7;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v8);
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return result;
}

void *sub_25BB949D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, unsigned int a4@<S0>)
{
  result = (*(a2 + 32))(&v64);
  v8 = MEMORY[0x277D849A8];
  switch(v64)
  {
    case 1:
    case 2:
    case 3:
      if (OUTLINED_FUNCTION_10_19(&protocol witness table for Float) == v8)
      {
        OUTLINED_FUNCTION_13_18();
        v11 = &qword_27FBB4528;
        v12 = &unk_25BCC1A60;
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_13_18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_0_38())
      {
        goto LABEL_4;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
      if (OUTLINED_FUNCTION_0_38())
      {
        OUTLINED_FUNCTION_6_31();
        v19 = *(v18 - 256);
        OUTLINED_FUNCTION_16_21();
        OUTLINED_FUNCTION_11_3();
        v10 = sub_25BCB6F8C();
LABEL_15:
        __swift_destroy_boxed_opaque_existential_1(v58);
        v9 = 0;
        goto LABEL_16;
      }

      if (OUTLINED_FUNCTION_2_31())
      {
        sub_25BBF075C();
        if (BYTE4(v60[0]))
        {
          OUTLINED_FUNCTION_8_23();
          OUTLINED_FUNCTION_4_29();
          v21 = 0x363174616F6C46;
          v22 = 0xE700000000000000;
LABEL_41:
          MEMORY[0x25F876C90](v21, v22);
          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_15_17();
          MEMORY[0x25F876C90](a1 + 16, 0x800000025BCDDAC0);
LABEL_42:
          sub_25BCB74CC();
          __break(1u);
LABEL_43:
          if (OUTLINED_FUNCTION_0_38())
          {
            v13 = 0;
            v14 = LOBYTE(v60[0]);
          }

          else
          {
            LOWORD(v14) = 0;
            v13 = 1;
          }

LABEL_68:
          __swift_destroy_boxed_opaque_existential_1(v61);
          *v61 = v14;
          BYTE2(v61[0]) = v13;
          v23 = &unk_27FBB5B08;
          v24 = &unk_25BCC4140;
LABEL_69:
          __swift_instantiateConcreteTypeFromMangledNameV2(v23, v24);
          v52 = OUTLINED_FUNCTION_12_19();
          if ((v52 & 1) == 0)
          {
            LOWORD(v60[0]) = 0;
          }

          v16 = LOWORD(v60[0]);
          result = __swift_destroy_boxed_opaque_existential_1(v62);
          if (v52)
          {
            v17 = 2;
            goto LABEL_73;
          }

          goto LABEL_83;
        }
      }

      else if (OUTLINED_FUNCTION_2_31())
      {
        sub_25BBF0614();
        if (BYTE4(v60[0]))
        {
          OUTLINED_FUNCTION_8_23();
          OUTLINED_FUNCTION_4_29();
          v21 = 0x74616F6C46;
          v22 = 0xE500000000000000;
          goto LABEL_41;
        }
      }

      else
      {
        if ((OUTLINED_FUNCTION_2_31() & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
          if ((OUTLINED_FUNCTION_0_38() & 1) == 0)
          {
            if (OUTLINED_FUNCTION_0_38())
            {
              v9 = 0;
              v10 = LOBYTE(v60[0]);
            }

            else
            {
              v10 = 0;
              v9 = 1;
            }

            goto LABEL_16;
          }

          OUTLINED_FUNCTION_6_31();
          v47 = *(v46 - 256);
          OUTLINED_FUNCTION_16_21();
          sub_25BB959AC();
          sub_25BCB744C();
          if ((v57[0] & 0x100000000) == 0)
          {
            v10 = v57[0];
            goto LABEL_15;
          }

          v57[0] = 0;
          v57[1] = 0xE000000000000000;
          sub_25BCB70FC();
          v54 = sub_25BCB7C1C();
          v56 = v55;
          MEMORY[0x25F876C90](v54);

          OUTLINED_FUNCTION_11_0();
          OUTLINED_FUNCTION_15_17();
          MEMORY[0x25F876C90](v56 + 16, 0x800000025BCDDAC0);
          goto LABEL_42;
        }

        sub_25BBF0474(v60, trunc(v58[0]));
        if (BYTE4(v60[0]))
        {
          OUTLINED_FUNCTION_8_23();
          OUTLINED_FUNCTION_4_29();
          v21 = 0x656C62756F44;
          v22 = 0xE600000000000000;
          goto LABEL_41;
        }
      }

LABEL_4:
      v9 = 0;
      v10 = v60[0];
LABEL_16:
      __swift_destroy_boxed_opaque_existential_1(v61);
      LODWORD(v61[0]) = v10;
      BYTE4(v61[0]) = v9;
      v11 = &unk_27FBB5AF0;
      v12 = &unk_25BCC4130;
LABEL_17:
      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      v20 = OUTLINED_FUNCTION_12_19();
      if ((v20 & 1) == 0)
      {
        LODWORD(v60[0]) = 0;
      }

      v16 = SLODWORD(v60[0]);
      result = __swift_destroy_boxed_opaque_existential_1(v62);
      if ((v20 & 1) == 0)
      {
        goto LABEL_83;
      }

      v17 = 1;
LABEL_73:
      *a3 = v16;
      *(a3 + 8) = 0;
      *(a3 + 16) = v17;
      return result;
    case 8:
      if (OUTLINED_FUNCTION_10_19(&protocol witness table for Float) == MEMORY[0x277D84DC8])
      {
        OUTLINED_FUNCTION_13_18();
        v23 = &qword_27FBB4528;
        v24 = &unk_25BCC1A60;
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_13_18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_0_38())
      {
        v13 = 0;
        v14 = *v60;
        goto LABEL_68;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_0_38())
      {
        sub_25BA97060(v60, v58);
        v27 = v59;
        v28 = __swift_project_boxed_opaque_existential_1(v58, v59);
        v29 = *(*(v27 - 8) + 64);
        v30 = MEMORY[0x28223BE20](v28);
        (*(v32 + 16))(v57 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0), v30);
        sub_25BBF2A24();
        v14 = v33;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE0, &qword_25BCC4120);
        if (!OUTLINED_FUNCTION_0_38())
        {
          goto LABEL_43;
        }

        OUTLINED_FUNCTION_6_31();
        v38 = *(v37 - 256);
        v39 = OUTLINED_FUNCTION_16_21();
        v40 = *(v8 - 8);
        v41 = *(v40 + 64);
        v42 = MEMORY[0x28223BE20](v39);
        v44 = v57 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v40 + 16))(v44, v42);
        OUTLINED_FUNCTION_11_3();
        if (sub_25BCB6F9C() <= 64)
        {
          OUTLINED_FUNCTION_11_3();
          v48 = sub_25BCB6FAC();
          OUTLINED_FUNCTION_11_3();
          v49 = sub_25BCB6F8C();
          (*(v40 + 8))(v44, v8);
          if (v48)
          {
            v14 = v49;
          }

          else
          {
            v14 = v49;
          }
        }

        else
        {
          sub_25BB95A00();
          sub_25BB95A54();
          sub_25BCB60DC();
          (*(v40 + 8))(v44, v8);
          v14 = *v57;
        }
      }

      __swift_destroy_boxed_opaque_existential_1(v58);
      v13 = 0;
      goto LABEL_68;
    case 10:
      v16 = a4;
      v17 = 3;
      goto LABEL_73;
    case 12:
      if (OUTLINED_FUNCTION_10_19(&protocol witness table for Float) == MEMORY[0x277D839B0])
      {
        OUTLINED_FUNCTION_13_18();
        v25 = &qword_27FBB4528;
        v26 = &unk_25BCC1A60;
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_13_18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      if (OUTLINED_FUNCTION_0_38())
      {
        v15 = v60[0];
        goto LABEL_59;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5AE8, &qword_25BCC4128);
      if (OUTLINED_FUNCTION_0_38())
      {
        OUTLINED_FUNCTION_6_31();
        v35 = *(v34 - 256);
        OUTLINED_FUNCTION_16_21();
        v36 = *(v35 + 16);
        v15 = (sub_25BCB61FC() & 1) == 0;
        __swift_destroy_boxed_opaque_existential_1(v58);
        goto LABEL_59;
      }

      if (OUTLINED_FUNCTION_0_38())
      {
        goto LABEL_37;
      }

      if (OUTLINED_FUNCTION_0_38())
      {
        goto LABEL_46;
      }

      if (OUTLINED_FUNCTION_0_38())
      {
        goto LABEL_54;
      }

      if (OUTLINED_FUNCTION_0_38() || OUTLINED_FUNCTION_0_38())
      {
        goto LABEL_76;
      }

      if (OUTLINED_FUNCTION_0_38())
      {
LABEL_37:
        v45 = LOBYTE(v60[0]);
      }

      else if (OUTLINED_FUNCTION_0_38())
      {
LABEL_46:
        v45 = LOWORD(v60[0]);
      }

      else
      {
        if (!OUTLINED_FUNCTION_0_38())
        {
          if (!OUTLINED_FUNCTION_0_38())
          {
            v15 = 2;
            goto LABEL_59;
          }

LABEL_76:
          v50 = *&v60[0] == 0;
LABEL_56:
          v15 = !v50;
LABEL_59:
          __swift_destroy_boxed_opaque_existential_1(v61);
          LOBYTE(v61[0]) = v15;
          v25 = &unk_27FBB5B00;
          v26 = &unk_25BCC4138;
LABEL_60:
          __swift_instantiateConcreteTypeFromMangledNameV2(v25, v26);
          if ((OUTLINED_FUNCTION_12_19() & 1) == 0)
          {
            LOBYTE(v60[0]) = 2;
          }

          v51 = LOBYTE(v60[0]);
          result = __swift_destroy_boxed_opaque_existential_1(v62);
          if (v51 != 2)
          {
            v17 = 0;
            v16 = v51 & 1;
            goto LABEL_73;
          }

LABEL_83:
          v62[0] = 0;
          v62[1] = 0xE000000000000000;
          sub_25BCB70FC();
          MEMORY[0x25F876C90](0xD000000000000013, 0x800000025BCDD9D0);
          sub_25BCB69CC();
          MEMORY[0x25F876C90](0x707974206F742060, 0xEB00000000602065);
          v53 = sub_25BCB7C1C();
          MEMORY[0x25F876C90](v53);

          MEMORY[0x25F876C90](96, 0xE100000000000000);
          v63 = 9;
          sub_25BA97890();
        }

LABEL_54:
        v45 = v60[0];
      }

      v50 = v45 == 0;
      goto LABEL_56;
    default:
      goto LABEL_83;
  }
}

uint64_t sub_25BB95470(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v6 != 1)
      {
        goto LABEL_32;
      }

      v39 = OUTLINED_FUNCTION_110();
      v41 = OUTLINED_FUNCTION_3_20(v39, v40, 1);
      v43 = 1;
      goto LABEL_26;
    case 2:
      if (v6 != 2)
      {
        goto LABEL_32;
      }

      v24 = OUTLINED_FUNCTION_110();
      v26 = OUTLINED_FUNCTION_3_20(v24, v25, 2);
      sub_25BB06134(v26, v27, 2);
      v28 = *&v2 == *&v5;
      goto LABEL_27;
    case 3:
      if (v6 != 3)
      {
        goto LABEL_32;
      }

      v29 = OUTLINED_FUNCTION_110();
      v31 = OUTLINED_FUNCTION_3_20(v29, v30, 3);
      sub_25BB06134(v31, v32, 3);
      v28 = *&v2 == *&v5;
      goto LABEL_27;
    case 4:
      if (v6 != 4)
      {
        v72 = a1[1];
        goto LABEL_31;
      }

      v12 = *a1;
      if (v2 != v5 || v3 != a2[1])
      {
        v14 = sub_25BCB789C();
        v15 = OUTLINED_FUNCTION_24_1();
        v17 = OUTLINED_FUNCTION_1_31(v15, v16, 4);
        v19 = OUTLINED_FUNCTION_1_31(v17, v18, 4);
        v21 = OUTLINED_FUNCTION_3_20(v19, v20, 4);
        v23 = 4;
        goto LABEL_22;
      }

      v80 = OUTLINED_FUNCTION_1_31(v12, v3, 4);
      v82 = OUTLINED_FUNCTION_1_31(v80, v81, 4);
      sub_25BB06134(v82, v83, 4);
      v84 = OUTLINED_FUNCTION_110();
      sub_25BB06134(v84, v85, 4);
      v11 = 1;
      return v11 & 1;
    case 5:
      if (v6 != 5)
      {
        goto LABEL_23;
      }

      v14 = sub_25BAB5C48(*a1, *a2);
      v44 = OUTLINED_FUNCTION_24_1();
      v46 = OUTLINED_FUNCTION_1_31(v44, v45, 5);
      v48 = OUTLINED_FUNCTION_1_31(v46, v47, 5);
      v21 = OUTLINED_FUNCTION_3_20(v48, v49, 5);
      v23 = 5;
      goto LABEL_22;
    case 6:
      if (v6 != 6)
      {
        goto LABEL_23;
      }

      v14 = sub_25BC6FEC4(*a1, *a2);
      v50 = OUTLINED_FUNCTION_24_1();
      v52 = OUTLINED_FUNCTION_1_31(v50, v51, 6);
      v54 = OUTLINED_FUNCTION_1_31(v52, v53, 6);
      v21 = OUTLINED_FUNCTION_3_20(v54, v55, 6);
      v23 = 6;
      goto LABEL_22;
    case 7:
      if (v6 == 7)
      {
        v14 = sub_25BAB5C48(*a1, *a2);
        v33 = OUTLINED_FUNCTION_24_1();
        v35 = OUTLINED_FUNCTION_1_31(v33, v34, 7);
        v37 = OUTLINED_FUNCTION_1_31(v35, v36, 7);
        v21 = OUTLINED_FUNCTION_3_20(v37, v38, 7);
        v23 = 7;
LABEL_22:
        sub_25BB06134(v21, v22, v23);
        return v14 & 1;
      }

LABEL_23:
      v57 = *a1;
LABEL_31:
      sub_25BCB617C();
      goto LABEL_32;
    case 8:
      if (v6 == 8)
      {
        v58 = OUTLINED_FUNCTION_24_1();
        v60 = OUTLINED_FUNCTION_1_31(v58, v59, 8);
        sub_25BB060F0(v60, v61, 8);
        v62 = OUTLINED_FUNCTION_24_1();
        v64 = OUTLINED_FUNCTION_1_31(v62, v63, 8);
        v66 = OUTLINED_FUNCTION_1_31(v64, v65, 8);
        v68 = OUTLINED_FUNCTION_3_20(v66, v67, 8);
        sub_25BB06134(v68, v69, 8);
        v70 = OUTLINED_FUNCTION_110();
        v41 = OUTLINED_FUNCTION_3_20(v70, v71, 8);
        v43 = 8;
LABEL_26:
        sub_25BB06134(v41, v42, v43);
        v28 = v2 == v5;
LABEL_27:
        v11 = v28;
      }

      else
      {
        v79 = *a1;
        swift_unknownObjectRetain();
LABEL_32:
        v73 = OUTLINED_FUNCTION_24_1();
        v75 = OUTLINED_FUNCTION_1_31(v73, v74, v6);
        v77 = OUTLINED_FUNCTION_3_20(v75, v76, v4);
        sub_25BB06134(v77, v78, v6);
        v11 = 0;
      }

      return v11 & 1;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_32;
      }

      v7 = OUTLINED_FUNCTION_110();
      v9 = OUTLINED_FUNCTION_3_20(v7, v8, 0);
      sub_25BB06134(v9, v10, 0);
      v11 = v5 ^ v2 ^ 1;
      return v11 & 1;
  }
}

uint64_t sub_25BB9574C()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
    case 8:
      result = MEMORY[0x25F878200](v1);
      break;
    case 2:
      result = sub_25BCB79FC();
      break;
    case 3:
      result = sub_25BCB7A0C();
      break;
    case 4:
      v6 = v0[1];

      result = sub_25BCB625C();
      break;
    case 5:
      v7 = *(v1 + 16);
      result = MEMORY[0x25F878200](v7);
      if (v7)
      {
        v8 = (v1 + 32);
        do
        {
          v9 = *v8++;
          result = MEMORY[0x25F878200](v9);
          --v7;
        }

        while (v7);
      }

      break;
    case 6:
      v3 = *(v1 + 16);
      result = MEMORY[0x25F878200](v3);
      if (v3)
      {
        v4 = (v1 + 32);
        do
        {
          v5 = *v4++;
          result = sub_25BCB7A0C();
          --v3;
        }

        while (v3);
      }

      break;
    case 7:
      v10 = *(v1 + 16);
      result = MEMORY[0x25F878200](v10);
      if (v10)
      {
        v11 = (v1 + 32);
        do
        {
          v12 = *v11++;
          result = MEMORY[0x25F878200](v12);
          --v10;
        }

        while (v10);
      }

      break;
    default:
      result = sub_25BCB79EC();
      break;
  }

  return result;
}

uint64_t sub_25BB958A4()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25BCB79CC();
  sub_25BB9574C();
  return sub_25BCB7A3C();
}

uint64_t sub_25BB95900()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_25BCB79CC();
  sub_25BB9574C();
  return sub_25BCB7A3C();
}

unint64_t sub_25BB95958()
{
  result = qword_27FBB5AD8;
  if (!qword_27FBB5AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5AD8);
  }

  return result;
}

unint64_t sub_25BB959AC()
{
  result = qword_27FBB5AF8;
  if (!qword_27FBB5AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5AF8);
  }

  return result;
}

unint64_t sub_25BB95A00()
{
  result = qword_27FBB5B10;
  if (!qword_27FBB5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5B10);
  }

  return result;
}

unint64_t sub_25BB95A54()
{
  result = qword_27FBB5B18;
  if (!qword_27FBB5B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5B18);
  }

  return result;
}

uint64_t sub_25BB95AB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xF8 && *(a1 + 17))
    {
      v2 = *a1 + 247;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 8)
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

uint64_t sub_25BB95AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 16) = 0;
    *result = a2 - 248;
    *(result + 8) = 0;
    if (a3 >= 0xF8)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BB95B6C()
{
  if (qword_28154F9D0 != -1)
  {
    swift_once();
  }

  return dword_281557408;
}

uint64_t sub_25BB95BE8(uint64_t a1)
{
  result = sub_25BB95C70(&qword_28154F720);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB95C2C(uint64_t a1)
{
  result = sub_25BB95C70(qword_28154F728);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB95C70(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InputOperation();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25BB95CB0@<X0>(char a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 16))
  {
    if (a1)
    {
      LOBYTE(v7) = 13;
      sub_25BCB617C();
      Tensor.init(stacking:alongAxis:scalarType:)();
      v5 = &unk_286D423B0;
      v6 = v8;
      Tensor.reshaped(to:)(&v5, &v7);

      v6 = v7;
      Tensor.sum(squeezingAxes:)(a3);
    }

    else
    {
      sub_25BCB617C();
      Tensor.init(stacking:alongAxis:scalarType:)();
      v6 = &unk_286D42360;
      v7 = v8;
      Tensor.reshaped(to:)(&v6, &v5);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  else
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB95E1C(uint64_t *a1)
{
  v2 = *a1;
  v3 = (v1 + 8);
  v4 = *(v1 + 8);
  if (!*(v4 + 16) || (sub_25BAB5C48(*(*(*(v4 + 32) + 16) + 152), *(*(v2 + 16) + 152)) & 1) != 0 && (v9 = *(v4 + 32), v5 = Tensor.scalarType.getter(), v5 == Tensor.scalarType.getter()))
  {

    sub_25BAB3120();
    v6 = *(*v3 + 16);
    result = sub_25BAB6E4C(v6);
    v8 = *v3;
    *(v8 + 16) = v6 + 1;
    *(v8 + 8 * v6 + 32) = v2;
    *v3 = v8;
  }

  else
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

int *sub_25BB95F20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  (*(*(a10 - 8) + 32))(a9, a1, a10);
  result = type metadata accessor for TrainingLoop();
  *(a9 + result[9]) = a2;
  v19 = (a9 + result[10]);
  *v19 = a3;
  v19[1] = a4;
  v20 = (a9 + result[11]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a9 + result[12]);
  *v21 = a7;
  v21[1] = a8;
  return result;
}

uint64_t sub_25BB95FF0(uint64_t a1)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v39 - v8;
  v10 = sub_25BCB6E8C();
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v39 - v13;
  v15 = *(v4 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v45 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v4;
  v47 = v3;
  v50 = swift_getAssociatedTypeWitness();
  v18 = *(v50 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v50);
  v48 = a1;
  v49 = &v39 - v20;
  v21 = v1 + *(a1 + 40);
  v22 = *v21;
  v43 = *(v21 + 8);
  v44 = v22;
  v23 = v22(1);
  v24 = v1;
  if (v23)
  {
    v42 = *(v1 + v48[9]);
    v25 = v15 + 16;
    v26 = *(v15 + 16);
    v27 = (v6 + 32);
    v28 = (v6 + 8);
    v40 = (v18 + 8);
    v41 = v26;
    v29 = 1;
    v30 = 1;
    v39 = v25;
    while (2)
    {
      if (v42)
      {
        v29 = 1;
      }

      v31 = v24;
      v41(v45, v24, v46);
      sub_25BCB655C();
      swift_getAssociatedConformanceWitness();
      while (1)
      {
        sub_25BCB6EDC();
        if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
        {
          break;
        }

        (*v27)(v9, v14, AssociatedTypeWitness);
        v32 = v31 + v48[12];
        v33 = *(v32 + 8);
        LOBYTE(v33) = (*v32)(v30, v29, v9);
        result = (*v28)(v9, AssociatedTypeWitness);
        if ((v33 & 1) == 0)
        {
          (*v40)(v49, v50);
          v24 = v31;
          return (*(*(v48 - 1) + 8))(v24);
        }

        v35 = __OFADD__(v29++, 1);
        if (v35)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return result;
        }
      }

      (*v40)(v49, v50);
      v36 = v31 + v48[11];
      v37 = *(v36 + 8);
      result = (*v36)(v30);
      v24 = v31;
      if ((result & 1) == 0)
      {
        return (*(*(v48 - 1) + 8))(v24);
      }

      v35 = __OFADD__(v30++, 1);
      if (v35)
      {
        goto LABEL_17;
      }

      v38 = v44(v30);
      v24 = v31;
      if (v38)
      {
        continue;
      }

      break;
    }
  }

  return (*(*(v48 - 1) + 8))(v24);
}

uint64_t TrainingCount.description.getter()
{
  if (*(v0 + 8) == 1)
  {
    v1 = 0x207368636F7045;
  }

  else
  {
    v1 = 0x207370657453;
  }

  v5 = v1;
  v4 = *v0;
  v2 = sub_25BCB77FC();
  MEMORY[0x25F876C90](v2);

  return v5;
}

uint64_t TrainingAction.hashValue.getter()
{
  v1 = *v0;
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  return sub_25BCB7A3C();
}

uint64_t train<A, B, C, D>(_:on:using:count:evaluatingOn:criterion:eventHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v78 = a8;
  v79 = a6;
  v80 = a7;
  v81 = a1;
  v76 = a3;
  v77 = a2;
  v18 = sub_25BCB6E8C();
  v19 = OUTLINED_FUNCTION_2(v18);
  v82 = v20;
  v83 = v19;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  v85 = &v68 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_25BCB6E8C();
  v26 = OUTLINED_FUNCTION_2(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  v31 = MEMORY[0x28223BE20](v26);
  v33 = &v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v68 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v68 - v37;
  v75 = *a4;
  v39 = *(a4 + 8);
  v84 = v28;
  v40 = *(v28 + 16);
  v74 = v39;
  if ((v39 & 1) == 0)
  {
    v41 = a5;
    v40(&v68 - v37, a5, v25);
    OUTLINED_FUNCTION_4_30(v38);
    if (v42)
    {
      (*(v84 + 8))(v38, v25);
    }

    else
    {
      v43 = v38[*(TupleTypeMetadata2 + 48) + 8];
      OUTLINED_FUNCTION_2_32();
      (*(v44 + 8))(v38, a11);
      v42 = v43 == 1;
      a5 = v41;
      if (v42)
      {
        result = sub_25BCB74CC();
        __break(1u);
        return result;
      }
    }
  }

  v40(v36, a5, v25);
  OUTLINED_FUNCTION_4_30(v36);
  if (v42)
  {
    (*(v84 + 8))(v36, v25);
    v47 = 1;
    v46 = v85;
  }

  else
  {
    OUTLINED_FUNCTION_2_32();
    v46 = v85;
    (*(v45 + 32))(v85, v36, a11);
    v47 = 0;
  }

  v72 = a15;
  v73 = a16;
  v70 = a13;
  v71 = a14;
  v69 = a12;
  __swift_storeEnumTagSinglePayload(v46, v47, 1, a11);
  v40(v33, a5, v25);
  OUTLINED_FUNCTION_4_30(v33);
  if (v42)
  {
    (*(v84 + 8))(v33, v25);
    v49 = 0;
    v50 = -1;
  }

  else
  {
    v48 = &v33[*(TupleTypeMetadata2 + 48)];
    v49 = *v48;
    v50 = v48[8];
    OUTLINED_FUNCTION_2_32();
    (*(v51 + 8))(v33, a11);
  }

  v52 = swift_allocObject();
  *(v52 + 16) = 0;
  *(v52 + 24) = MEMORY[0x277D84F90];
  v53 = swift_allocObject();
  *(v53 + 16) = 0;
  v54 = MEMORY[0x28223BE20](v53);
  *(&v68 - 22) = a10;
  *(&v68 - 21) = a11;
  v55 = v70;
  *(&v68 - 20) = v69;
  *(&v68 - 19) = v55;
  v56 = v72;
  *(&v68 - 18) = v71;
  *(&v68 - 17) = v56;
  v58 = v76;
  v57 = v77;
  *(&v68 - 16) = v73;
  *(&v68 - 15) = v58;
  *(&v68 - 14) = v57;
  v59 = v74;
  *(&v68 - 104) = v74;
  v60 = v75;
  *(&v68 - 12) = v54;
  *(&v68 - 11) = v60;
  *(&v68 - 80) = v59;
  v61 = v78;
  v62 = v79;
  *(&v68 - 9) = v52;
  *(&v68 - 8) = v61;
  v63 = v85;
  *(&v68 - 7) = a9;
  *(&v68 - 6) = v63;
  *(&v68 - 5) = v49;
  *(&v68 - 32) = v50;
  v65 = v80;
  v64 = v81;
  *(&v68 - 3) = v62;
  v67 = v65;
  sub_25BAB2F30(v64, sub_25BB96CB4, (&v68 - 24), a10, MEMORY[0x277D84A98]);

  return (*(v82 + 8))(v63, v83);
}

BOOL sub_25BB96A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v13 = sub_25BCB6E8C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v24 - v16;
  v18 = *a1;
  v19 = *(a1 + 8);
  swift_beginAccess();
  if (*(a2 + 16) == 2)
  {
    return 0;
  }

  (*(v14 + 16))(v17, a3, v13);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v17, 1, a7);
  (*(v14 + 8))(v17, v13);
  if (EnumTagSinglePayload == 1 || ~a5 == 0)
  {
    return 0;
  }

  if (!v19)
  {
    if ((a5 & 1) == 0)
    {
      if (a4 != -1)
      {
        if (!a4)
        {
          return v18 == 0;
        }

        return v18 % a4 == 0;
      }

      return 1;
    }

    return 0;
  }

  if ((a5 & 1) == 0)
  {
    return 0;
  }

  if (a4 == -1)
  {
    return 1;
  }

  if (!a4)
  {
    return v18 == 0;
  }

  return v18 % a4 == 0;
}

uint64_t sub_25BB96BF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, __int128 a18, uint64_t a19, uint64_t a20)
{
  v21[2] = a15;
  v21[3] = a16;
  v21[4] = a17;
  v22 = a18;
  v23 = a19;
  v24 = a20;
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a7 & 1;
  v30 = a8;
  v31 = a9;
  v32 = a10;
  v33 = a11;
  v34 = a12;
  v35 = a1;
  v36 = a13;
  v37 = a14;
  return sub_25BAB2F30(a2, sub_25BB991AC, v21, a17, MEMORY[0x277D84A98]);
}

uint64_t sub_25BB96CB4(uint64_t a1)
{
  *&v3[16] = *(v1 + 48);
  *v3 = *(v1 + 32);
  return sub_25BB96BF4(a1, *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), *(v1 + 120), *(v1 + 128), *(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 16), *(v1 + 24), *(v1 + 32), *&v3[8], *(v1 + 56), *(v1 + 64));
}

uint64_t sub_25BB96D28(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), int a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, __int128 *), uint64_t a9, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v86 = a5;
  v87 = a8;
  v96 = a4;
  v97 = a7;
  v84 = a6;
  v81 = a3;
  v74 = a2;
  v78 = a1;
  v90 = a14;
  v92 = a13;
  v93 = a12;
  v94 = a11;
  v102 = a22;
  v99 = a21;
  v77 = a15;
  v98 = a9;
  v100 = a16;
  v101 = a19;
  v85 = a20;
  v88 = a10;
  v89 = a18;
  v95 = sub_25BCB6E8C();
  v103 = *(v95 - 8);
  v83 = v103[8];
  v22 = MEMORY[0x28223BE20](v95);
  v91 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v69 - v25;
  v72 = &v69 - v25;
  v27 = *(a17 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v24);
  v30 = &v69 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = v30;
  v80 = type metadata accessor for TrainingLoop();
  v79 = *(v80 - 8);
  v31 = *(v79 + 64);
  MEMORY[0x28223BE20](v80);
  v76 = &v69 - v32;
  v33 = *(v27 + 16);
  v82 = a17;
  v33(v30, v74, a17);
  v34 = swift_allocObject();
  v35 = v97;
  v37 = v86;
  v36 = v87;
  *(v34 + 16) = v96;
  *(v34 + 24) = v37;
  v84 &= 1u;
  *(v34 + 32) = v84;
  *(v34 + 40) = v35;
  *(v34 + 48) = v36;
  *(v34 + 56) = a9;
  v38 = v103;
  v74 = v103[2];
  v74(v26, v88, v95);
  v39 = *(v38 + 80);
  v69 = (v39 + 120) & ~v39;
  v71 = (v69 + v83 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = (v69 + v83 + 23) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v70 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  v42 = v101;
  *(v41 + 16) = v100;
  *(v41 + 24) = a17;
  v43 = v89;
  *(v41 + 32) = v89;
  *(v41 + 40) = v42;
  v44 = v99;
  *(v41 + 48) = v85;
  *(v41 + 56) = v44;
  *(v41 + 64) = v102;
  *(v41 + 72) = v37;
  *(v41 + 80) = v84;
  v45 = v96;
  *(v41 + 88) = v96;
  *(v41 + 96) = v36;
  *(v41 + 104) = v98;
  *(v41 + 112) = v35;
  v46 = v103[4];
  v103 += 4;
  v73 = v46;
  v47 = v95;
  v46(v41 + v69, v72, v95);
  v48 = v41 + v71;
  *v48 = v94;
  *(v48 + 8) = v93;
  v49 = v91;
  *(v41 + v70) = v92;
  v50 = (v41 + v40);
  v51 = v77;
  *v50 = v90;
  v50[1] = v51;
  v74(v49, v88, v47);
  v52 = (v39 + 152) & ~v39;
  v53 = (v83 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  v55 = v101;
  v56 = v82;
  *(v54 + 16) = v100;
  *(v54 + 24) = v56;
  *(v54 + 32) = v43;
  *(v54 + 40) = v55;
  v57 = v99;
  *(v54 + 48) = v85;
  *(v54 + 56) = v57;
  *(v54 + 64) = v102;
  *(v54 + 72) = v45;
  v58 = v87;
  *(v54 + 80) = v86;
  *(v54 + 88) = v84;
  v59 = v98;
  *(v54 + 96) = v97;
  *(v54 + 104) = v58;
  v60 = v91;
  v61 = v92;
  *(v54 + 112) = v59;
  *(v54 + 120) = v61;
  v62 = v90;
  *(v54 + 128) = v78;
  *(v54 + 136) = v62;
  *(v54 + 144) = v51;
  v73(v54 + v52, v60, v95);
  v63 = v54 + v53;
  *v63 = v94;
  *(v63 + 8) = v93;
  v68 = v56;
  v64 = v76;
  sub_25BB95F20(v75, v81, sub_25BB99248, v34, sub_25BB9925C, v41, sub_25BB99370, v54, v76, v68);

  v65 = v98;
  sub_25BA9D8C4(v58);
  v66 = v97;
  swift_retain_n();

  sub_25BA9D8C4(v58);

  sub_25BA9D8C4(v58);

  sub_25BB981AC(v58, v65, v64, v66);
  return (*(v79 + 8))(v64, v80);
}

BOOL sub_25BB97350(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, void (*a6)(void *__return_ptr, void *))
{
  swift_beginAccess();
  v12 = *(a2 + 16);
  result = v12 != 2;
  if (v12 != 2 && (a4 & 1) != 0)
  {
    if (a3 >= a1)
    {
      swift_beginAccess();
      v14 = *(a5 + 24);
      *(a5 + 24) = MEMORY[0x277D84F90];

      if (a6)
      {
        v17[0] = a1;
        v17[1] = 0x1000000000000000;
        a6(v16, v17);
        v15 = v16[0];
      }

      else
      {
        v15 = 0;
      }

      swift_beginAccess();
      *(a2 + 16) = v15;
      swift_beginAccess();
      return *(a2 + 16) != 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_25BB97468(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, void (*a12)(__int128 *__return_ptr, char *, char *), uint64_t a13, uint64_t a14, void (**a15)(char *, uint64_t), uint64_t a16, uint64_t a17, uint64_t (**a18)(char *, char *, uint64_t), uint64_t a19, uint64_t a20)
{
  v74 = a6;
  v75 = a8;
  v76 = a5;
  v23 = a1;
  v24 = a14;
  v73 = *(a14 - 8);
  v25 = *(v73 + 64);
  MEMORY[0x28223BE20](a1);
  v72 = &v61[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_25BCB6E8C();
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v61[-v30];
  v32 = *(a15 - 1);
  v33 = *(v32 + 64);
  v34 = MEMORY[0x28223BE20](v29);
  v37 = &v61[-((v36 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a3 & 1) == 0)
  {
    return 1;
  }

  v66 = v35;
  v67 = v34;
  v65 = v37;
  v38 = a20;
  v39 = a17;
  v69 = a18;
  v70 = a16;
  v71 = a19;
  v40 = a10;
  v68 = a9;
  swift_beginAccess();
  if (*(a4 + 16) != 1 && v76)
  {
    swift_beginAccess();
    v63 = a4;
    v41 = *(a7 + 16);
    v42 = *(a7 + 24);
    v64 = v32;
    v62 = a10;
    v43 = v23;
    v44 = v76;
    sub_25BA9D8C4(v76);
    sub_25BCB617C();
    v45 = v41;
    v38 = a20;
    v39 = a17;
    v24 = a14;
    a4 = v63;
    sub_25BB95CB0(v45, v42, &v78);

    v46 = v78 | 0x2000000000000000;
    v78 = v43;
    v79 = v46;
    v44(&v77, &v78);
    v47 = v44;
    v23 = v43;
    v40 = v62;
    v32 = v64;
    sub_25BA9D148(v47);
    sub_25BB99174(v78, v79);
    LOBYTE(v42) = v77;
    swift_beginAccess();
    *(a4 + 16) = v42;
  }

  v78 = v23;
  LOBYTE(v79) = 1;
  v48 = v75;
  if (sub_25BB96A4C(&v78, a4, v75, v68, v40, v24, a15))
  {
    v49 = v66;
    v50 = v48;
    v51 = v67;
    (*(v66 + 16))(v31, v50, v67);
    if (__swift_getEnumTagSinglePayload(v31, 1, a15) == 1)
    {
      (*(v49 + 8))(v31, v51);
    }

    else
    {
      v75 = a13;
      v67 = v38;
      v68 = v39;
      v53 = v32;
      v54 = v65;
      (*(v32 + 32))(v65, v31, a15);
      v56 = v72;
      v55 = v73;
      (*(v73 + 16))(v72, a11, v24);
      v57 = swift_allocObject();
      v58 = v76;
      v59 = v74;
      v57[2] = v76;
      v57[3] = v59;
      v57[4] = a4;
      sub_25BA9D8C4(v58);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

      sub_25BB98794(sub_25BB99A20, v57, v54, v56, a12, v75, v24, a15, v68, AssociatedConformanceWitness, v69, v67);

      (*(v55 + 8))(v56, v24);
      (*(v53 + 8))(v54, a15);
    }
  }

  swift_beginAccess();
  return *(a4 + 16) != 2;
}

BOOL sub_25BB979D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, void (*a8)(uint64_t *__return_ptr, uint64_t *), uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(__int128 *__return_ptr, char *, char *), uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17, void (**a18)(char *, uint64_t), uint64_t a19, uint64_t a20, uint64_t (**a21)(char *, char *, uint64_t), uint64_t a22, uint64_t a23)
{
  v75 = a3;
  v76 = a8;
  v28 = *(a17 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x28223BE20](a1);
  v73 = &v58 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_25BCB6E8C();
  v74 = *(v31 - 8);
  v32 = *(v74 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v58 - v34;
  v72 = *(a18 - 1);
  v36 = *(v72 + 64);
  MEMORY[0x28223BE20](v33);
  v71 = (&v58 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  result = 0;
  if (*(a4 + 16) == 2 || !(a6 & 1 | (a5 >= a2)))
  {
    return result;
  }

  swift_beginAccess();
  if (*(a4 + 16) == 1)
  {
    return 1;
  }

  v70 = a19;
  v63 = a16;
  v62 = a15;
  v64 = a14;
  v39 = a13;
  v61 = a12;
  v60 = a10;
  if ((a6 & 1) == 0)
  {
    swift_beginAccess();
    v40 = *(a7 + 24);
    *(a7 + 24) = MEMORY[0x277D84F90];
  }

  v65 = v28;
  v69 = a23;
  v67 = a22;
  v66 = a21;
  v68 = a20;
  v59 = a9;
  if (v76)
  {
    v80 = a2;
    v81 = 0x3000000000000000;
    v76(v79, &v80);
    v41 = LOBYTE(v79[0]);
    if (LOBYTE(v79[0]) == 1)
    {
LABEL_16:
      swift_beginAccess();
      v45 = *(a4 + 16);
      goto LABEL_17;
    }
  }

  else
  {
    v41 = 0;
  }

  v42 = v75;
  v75 = a13;
  sub_25BB9805C(v60, v42, a11, v61, a13, a17, v70, v68, &v80, v67, v69);
  v43 = v80;
  swift_beginAccess();
  v79[0] = v43;
  sub_25BB95E1C(v79);
  swift_endAccess();
  v44 = v76;
  if (v76)
  {
    v80 = a2;
    v81 = v43 | 0x4000000000000000;

    v44(v79, &v80);

    sub_25BB99174(v80, v81);
    v41 = LOBYTE(v79[0]);
  }

  else
  {
  }

  v39 = v75;
  if (v41 != 2)
  {
    goto LABEL_16;
  }

  v45 = 2;
LABEL_17:
  swift_beginAccess();
  *(a4 + 16) = v45;
  v77 = a2;
  v78 = 0;
  v46 = v64;
  v47 = sub_25BB96A4C(&v77, a4, v64, v62, v63, a17, a18);
  v48 = v65;
  if (v47)
  {
    v49 = v74;
    (*(v74 + 16))(v35, v46, v31);
    if (__swift_getEnumTagSinglePayload(v35, 1, a18) == 1)
    {
      (*(v49 + 8))(v35, v31);
    }

    else
    {
      v50 = v72;
      v51 = v71;
      (*(v72 + 32))(v71, v35, a18);
      v52 = v73;
      (*(v48 + 16))(v73, v60, a17);
      v53 = swift_allocObject();
      v54 = v76;
      v55 = v59;
      v53[2] = v76;
      v53[3] = v55;
      v53[4] = a4;
      sub_25BA9D8C4(v54);
      v56 = v39;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

      sub_25BB98794(sub_25BB99484, v53, v51, v52, v61, v56, a17, a18, v68, AssociatedConformanceWitness, v66, v69);

      (*(v48 + 8))(v52, a17);
      (*(v50 + 8))(v51, a18);
    }
  }

  swift_beginAccess();
  return *(a4 + 16) != 2;
}

void sub_25BB9805C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v18 = objc_autoreleasePoolPush();
  sub_25BB98368(a1, a2, a4, a5, a3, a6, a7, a8, a9, a10, a11);

  objc_autoreleasePoolPop(v18);
}

uint64_t sub_25BB9810C@<X0>(__int128 *a1@<X0>, void (*a2)(void *__return_ptr, __int128 *)@<X1>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  if (!a2)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v10 = *a1;
  a2(v9, &v10);
  v6 = v9[0];
  if (LOBYTE(v9[0]) != 2)
  {
LABEL_5:
    swift_beginAccess();
    v7 = *(a3 + 16);
    goto LABEL_6;
  }

  v7 = 2;
LABEL_6:
  result = swift_beginAccess();
  *(a3 + 16) = v7;
  *a4 = v6;
  return result;
}

uint64_t sub_25BB981AC(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for TrainingLoop();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  if (a1)
  {
    v17 = xmmword_25BCC4310;

    a1(&v15, &v17);
    if (!v15)
    {
      (*(v8 + 16))(v11, a3, v7);
      sub_25BB95FF0(v7);
    }

    swift_beginAccess();
    v12 = *(a4 + 16);
    v13 = *(a4 + 24);
    sub_25BCB617C();
    sub_25BB95CB0(v12, v13, &v15);

    v16 = 0;
    a1(&v18, &v15);
    sub_25BA9D148(a1);
    return sub_25BB99174(v15, v16);
  }

  else
  {
    (*(v8 + 16))(v11, a3, v7);
    return sub_25BB95FF0(v7);
  }
}

uint64_t sub_25BB98368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v27 = a9;
  v25 = a1;
  v26 = a5;
  v24 = a4;
  v16 = *(a6 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](a1);
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v19);
  v28 = a6;
  v29 = a7;
  v30 = a8;
  v31 = a10;
  v32 = a11;
  v33 = a2;
  v34 = a3;
  v35 = v24;
  swift_getAssociatedConformanceWitness();
  v20 = valueWithGradient<A>(at:of:)();
  (*(v16 + 8))(v19, a6);
  v21 = v36;
  (*(a10 + 48))(v25, v20, a7, a10);

  *v27 = v21;
  return result;
}

uint64_t sub_25BB98510@<X0>(uint64_t a1@<X0>, void (*a2)(char *, char *)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>, uint64_t a7)
{
  v27 = a5;
  v28 = a1;
  v30 = a3;
  v31 = a2;
  v29 = a6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &AssociatedConformanceWitness - v11;
  v25 = swift_getAssociatedTypeWitness();
  v13 = *(v25 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v25);
  v17 = &AssociatedConformanceWitness - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &AssociatedConformanceWitness - v18;
  v20 = v27;
  (*(a7 + 24))(v27, a7);
  Layer.callAsFunction(_:)(v12, a4, AssociatedConformanceWitness);
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  (*(a7 + 32))(v20, a7);
  v31(v19, v17);
  v21 = *(v13 + 8);
  v22 = v25;
  v21(v17, v25);
  return (v21)(v19, v22);
}

void *sub_25BB98794(void *(*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, void (*a5)(__int128 *__return_ptr, char *, char *), uint64_t a6, uint64_t a7, void (**a8)(char *, uint64_t), uint64_t a9, uint64_t a10, uint64_t (**a11)(char *, char *, uint64_t), uint64_t a12)
{
  v60 = a6;
  v61 = a5;
  v58 = a4;
  v67 = a3;
  v70 = a2;
  v71 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = *(AssociatedTypeWitness - 8);
  v14 = *(v63 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v57 = &v46 - v15;
  v56 = a10;
  v55 = a7;
  v68 = swift_getAssociatedTypeWitness();
  v62 = *(v68 - 8);
  v16 = *(v62 + 64);
  v17 = MEMORY[0x28223BE20](v68);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v69 = &v46 - v21;
  v49 = *(a9 - 8);
  v22 = *(v49 + 64);
  MEMORY[0x28223BE20](v20);
  v72 = &v46 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = sub_25BCB6E8C();
  v54 = *(v24 - 8);
  v25 = *(v54 + 64);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v46 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v46 - v29;
  v53 = sub_25BCB754C();
  v31 = *(*(v53 - 8) + 64);
  MEMORY[0x28223BE20](v53);
  v52 = a8;
  v66 = a11;
  v32 = sub_25BCB753C();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  MEMORY[0x28223BE20](v32);
  v36 = &v46 - v35;
  BYTE1(v75) = 0;
  v76 = MEMORY[0x277D84F90];
  v74 = xmmword_25BCC4320;
  result = v71(&v75, &v74);
  if (!v75)
  {
    v47 = v33;
    MEMORY[0x25F876DF0](v52, v66);
    sub_25BCB751C();
    v67 = (v54 + 32);
    v66 = (v49 + 32);
    v53 = a12 + 24;
    v52 = (v63 + 8);
    v54 = a12;
    v51 = a12 + 32;
    v50 = (v62 + 8);
    v63 = v49 + 8;
    v38 = TupleTypeMetadata2;
    v39 = v36;
    v64 = v32;
    v65 = v36;
    while (1)
    {
      sub_25BCB752C();
      (*v67)(v30, v28, v24);
      if (__swift_getEnumTagSinglePayload(v30, 1, v38) == 1)
      {
LABEL_10:
        (*(v47 + 8))(v39, v32);
        if (v75 == 2)
        {
        }

        sub_25BB95CB0(SBYTE1(v75), v76, &v74);

        *(&v74 + 1) = 0x5000000000000000;
        v71(&v73, &v74);
        return sub_25BB99174(v74, *(&v74 + 1));
      }

      v40 = *v30;
      result = (*v66)(v72, &v30[*(v38 + 48)], a9);
      if (__OFADD__(v40, 1))
      {
        __break(1u);
        return result;
      }

      *&v74 = v40 + 1;
      *(&v74 + 1) = 0x6000000000000000;
      v71(&v73, &v74);
      LOBYTE(v75) = v73;
      if (v73 == 1)
      {
        break;
      }

      v41 = v54;
      v42 = v57;
      (*(v54 + 24))(a9, v54);
      Layer.prediction(from:)();
      (*v52)(v42, AssociatedTypeWitness);
      (*(v41 + 32))(a9, v41);
      v61(&v74, v69, v19);
      v62 = *v50;
      (v62)(v19, v68);
      v43 = v74;
      sub_25BB95E1C(&v74);
      *&v74 = v40 + 1;
      *(&v74 + 1) = v43 | 0x7000000000000000;

      v71(&v73, &v74);
      v44 = v68;

      sub_25BB99174(v74, *(&v74 + 1));
      (v62)(v69, v44);
      (*v63)(v72, a9);
      v45 = v73;
      if (v73 == 1)
      {
        goto LABEL_8;
      }

LABEL_9:
      LOBYTE(v75) = v45;
      v32 = v64;
      v39 = v65;
      if (v45 == 2)
      {
        goto LABEL_10;
      }
    }

    (*v63)(v72, a9);
LABEL_8:
    v45 = 0;
    goto LABEL_9;
  }

  return result;
}

unint64_t sub_25BB98F38()
{
  result = qword_27FBB5B20[0];
  if (!qword_27FBB5B20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FBB5B20);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TrainingAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t get_enum_tag_for_layout_string_14NeuralNetworks13TrainingEventO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 60;
  }

  else
  {
    return (*a1 + 8);
  }
}

uint64_t sub_25BB99098(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x78 && *(a1 + 16))
    {
      v2 = *a1 + 119;
    }

    else
    {
      v2 = ((*(a1 + 8) >> 60) & 0x8F | (16 * (*(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x77)
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

uint64_t sub_25BB990E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x77)
  {
    *result = a2 - 120;
    *(result + 8) = 0;
    if (a3 >= 0x78)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x78)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_25BB99140(void *result, uint64_t a2)
{
  if (a2 < 8)
  {
    result[1] = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 60);
  }

  else
  {
    *result = (a2 - 8);
    result[1] = 0x8000000000000000;
  }

  return result;
}

uint64_t sub_25BB99174(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 60)
  {
    case 0uLL:
    case 2uLL:
    case 4uLL:
    case 5uLL:
    case 7uLL:

      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_25BB9925C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v14 = *(v1 + 48);
  v15 = *(v1 + 32);
  v5 = *(v1 + 64);
  v6 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_0_39(v6);
  v8 = v7;
  v10 = v9;
  v11 = (*(v8 + 80) + 120) & ~*(v8 + 80);
  v12 = v11 + *(v10 + 64);
  return sub_25BB97468(a1, *(v1 + 72), *(v1 + 80), *(v1 + 88), *(v1 + 96), *(v1 + 104), *(v1 + 112), v1 + v11, *(v1 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v12 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v12 + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v4, v3, v15, *(&v15 + 1), v14, *(&v14 + 1), v5);
}

BOOL sub_25BB99370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v7 = *(v3 + 24);
  v18 = *(v3 + 48);
  v19 = *(v3 + 32);
  v9 = *(v3 + 64);
  v10 = sub_25BCB6E8C();
  OUTLINED_FUNCTION_0_39(v10);
  v12 = v11;
  v14 = v13;
  v15 = (*(v12 + 80) + 152) & ~*(v12 + 80);
  v16 = (*(v14 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_25BB979D4(a1, a2, a3, *(v3 + 72), *(v3 + 80), *(v3 + 88), *(v3 + 96), *(v3 + 104), *(v3 + 112), *(v3 + 120), *(v3 + 128), *(v3 + 136), *(v3 + 144), v3 + v15, *(v3 + v16), *(v3 + v16 + 8), v8, v7, v19, *(&v19 + 1), v18, *(&v18 + 1), v9);
}

uint64_t sub_25BB994A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 56);
  return sub_25BB98510(a1, *(v2 + 64), *(v2 + 72), *(v2 + 16), *(v2 + 32), a2, *(v2 + 48));
}

uint64_t objectdestroy_29Tm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_25BB99520(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    result = sub_25BB6A730();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25BB995B8(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *(((v6 + result) & 0xFFFFFFFFFFFFFFF8) + 8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = (((((v6 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_25BB996FC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = (((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if ((((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = &a1[v9] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              *(v17 + 16) = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *(v17 + 8) = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if ((((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if ((((((v9 & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, (((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for EvaluationMetricLogger.ReductionKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB999CC()
{
  result = qword_27FBB5BA8;
  if (!qword_27FBB5BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BA8);
  }

  return result;
}

uint64_t sub_25BB99A24(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  *(v5 + 32) = *a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = v6;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return v5;
}

uint64_t sub_25BB99A40(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v40 = a7;
  v11 = *a1;
  v12 = *a2;
  type metadata accessor for IOSurfaceTensorStorage();
  v34 = v11;
  v37 = v11;
  LOBYTE(v35) = v12;
  v13 = qword_25BCC4698;
  if ((v12 - 1) > 0xA)
  {
    v14 = 1;
  }

  else
  {
    v14 = qword_25BCC4698[(v12 - 1)];
  }

  v15 = sub_25BADD208(&v37, &v35, v14);
  IOSurfaceLock(v15, 0, 0);
  BaseAddress = IOSurfaceGetBaseAddress(v15);
  if (!BaseAddress)
  {
    goto LABEL_20;
  }

  v7 = *(a5 + 16);
  if (v7)
  {
    v17 = (a5 + 32);
    v18 = 1;
    v19 = *(a5 + 16);
    while (1)
    {
      v20 = *v17++;
      v21 = v18 * v20;
      if ((v18 * v20) >> 64 != (v18 * v20) >> 63)
      {
        break;
      }

      v18 = v21;
      if (!--v19)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v21 = 1;
LABEL_11:
  if ((a6 - 1) > 0xAu)
  {
    v13 = 1;
  }

  else
  {
    v13 = qword_25BCC4698[(a6 - 1)];
  }

  if ((v21 * v13) >> 64 != (v21 * v13) >> 63)
  {
    goto LABEL_19;
  }

  v22 = sub_25BBCA04C(BaseAddress, v21 * v13, 1, 0, 0);
  if (!v22)
  {
LABEL_21:
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_25BCB70FC();

    v35 = 0xD000000000000027;
    v36 = 0x800000025BCDDC80;
    if (v7)
    {
      goto LABEL_26;
    }

    v29 = 1;
LABEL_23:
    v30 = v29 * v13;
    if ((v29 * v13) >> 64 == (v29 * v13) >> 63)
    {
LABEL_31:
      v37 = v30;
      v33 = sub_25BCB77FC();
      MEMORY[0x25F876C90](v33);

      MEMORY[0x25F876C90](24622, 0xE200000000000000);
      v37 = v35;
      v38 = v36;
      v39 = 9;
      sub_25BCB617C();
      sub_25BA97890();
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v30 = a5 + 32;
    v31 = 1;
    while (1)
    {
      v32 = *v30;
      v30 += 8;
      v29 = v31 * v32;
      if ((v31 * v32) >> 64 != (v31 * v32) >> 63)
      {
        break;
      }

      v31 = v29;
      if (!--v7)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v23 = v22;
  if (![*(a4 + 24) commandBuffer])
  {
    goto LABEL_25;
  }

  swift_getObjectType();
  v24 = [v23 length];
  v25 = OUTLINED_FUNCTION_61_3();
  v26 = OUTLINED_FUNCTION_61_3();
  sub_25BC671E0(v40, v25, v23, v26, v24);
  sub_25BC671A0();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  IOSurfaceUnlock(v15, 0, 0);
  v27 = swift_allocObject();
  *(v27 + 32) = v12;
  *(v27 + 16) = v15;
  *(v27 + 24) = v34;
  *(v27 + 40) = sub_25BA9D8D4;
  *(v27 + 48) = 0;
  swift_unknownObjectRelease();

  return v27;
}

uint64_t sub_25BB99DA0(uint64_t a1)
{
  sub_25BAA4554(1);
  IOSurfaceGetBaseAddress(*(a1 + 16));
  sub_25BAA4640();
  sub_25BB5C3B0();
  v2 = sub_25BCB582C();
  sub_25BAA46FC(1);
  return v2;
}

Swift::Int __swiftcall roundUp(_:toMultipleOf:)(Swift::Int _, Swift::Int toMultipleOf)
{
  if (!toMultipleOf)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (_ == 0x8000000000000000 && toMultipleOf == -1)
  {
    goto LABEL_13;
  }

  v3 = _ % toMultipleOf;
  if (!(_ % toMultipleOf))
  {
    return _;
  }

  v4 = _ + toMultipleOf;
  if (__OFADD__(_, toMultipleOf))
  {
    goto LABEL_11;
  }

  _ = v4 - v3;
  if (__OFSUB__(v4, v3))
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
  }

  return _;
}

uint64_t Collection<>.collated()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OUTLINED_FUNCTION_2(a1);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(v9 + 16))(v13, v3, a1);
  return (*(a3 + 8))(v13, a1, a2, AssociatedTypeWitness, a3);
}

uint64_t Tensor.init<A>(collating:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v18[-v14];
  sub_25BCB6ADC();
  v19 = a2;
  v20 = a3;
  v21 = a1;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25BB50EEC(1, sub_25BB9A1BC, v18, AssociatedTypeWitness, &type metadata for Tensor, AssociatedConformanceWitness);
  (*(v11 + 8))(v15, AssociatedTypeWitness);
  v22 = 13;
  Tensor.init(stacking:alongAxis:scalarType:)();
  *a4 = v23;
  return (*(*(a2 - 8) + 8))(a1, a2);
}

uint64_t sub_25BB9A150@<X0>(void *a1@<X8>)
{
  v2 = sub_25BCB6B8C();
  v4 = *v3;

  result = v2(&v6, 0);
  *a1 = v4;
  return result;
}

uint64_t sub_25BB9A1BC@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_25BB9A150(a1);
}

uint64_t sub_25BB9A240()
{
  (*(*v0 + 136))();
  sub_25BCB625C();

  MEMORY[0x25F878200](v0[6]);
  MEMORY[0x25F878200](v0[7]);
  MEMORY[0x25F878200](v0[8]);
  MEMORY[0x25F878200](v0[9]);
  MEMORY[0x25F878200](v0[10]);
  return MEMORY[0x25F878200](v0[11]);
}

void *sub_25BB9A2E4()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[12];

  return v0;
}

uint64_t sub_25BB9A314()
{
  sub_25BB9A2E4();

  return swift_deallocClassInstance();
}

uint64_t sub_25BB9A41C(uint64_t a1)
{
  v3 = *v1;
  WitnessTable = swift_getWitnessTable();
  return sub_25BC60CAC(a1, WitnessTable);
}

void sub_25BB9A474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t *a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_14_6();
  v33 = *a26;
  v34 = *(a26 + 8);
  *(v29 + 176) = a28;
  *(v29 + 184) = a29;
  *(v29 + 192) = a25;
  if (!v32)
  {
    v35 = OUTLINED_FUNCTION_1_33(0x5F677661u);
    sub_25BAA5EA0(v35, v36);
    OUTLINED_FUNCTION_5_27();
  }

  OUTLINED_FUNCTION_8_2(v30, v31, v32);
  *(v29 + 40) = v37;
  *(v29 + 48) = v38;
  *(v29 + 56) = v39;
  *(v29 + 64) = v40;
  *(v29 + 72) = v41;
  *(v29 + 80) = a23;
  *(v29 + 88) = a24;
  *(v29 + 96) = v42;
  *(v29 + 104) = v34;
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_25BB9A504()
{
  sub_25BB9A240();
  v1 = *(v0 + 192);
  return sub_25BCB79EC();
}

void sub_25BB9A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t *a27)
{
  OUTLINED_FUNCTION_14_6();
  v31 = *a27;
  v32 = *(a27 + 8);
  *(v27 + 176) = v33;
  *(v27 + 184) = a26;
  if (!v30)
  {
    v34 = OUTLINED_FUNCTION_0_41(0x5F677661u);
    sub_25BAA5EA0(v34, v35);
    OUTLINED_FUNCTION_5_27();
  }

  OUTLINED_FUNCTION_8_2(v28, v29, v30);
  *(v27 + 40) = v36;
  *(v27 + 48) = v37;
  *(v27 + 56) = v38;
  *(v27 + 64) = v39;
  *(v27 + 72) = a23;
  *(v27 + 80) = a24;
  *(v27 + 88) = a25;
  *(v27 + 96) = v40;
  *(v27 + 104) = v32;
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_25BB9A61C()
{
  sub_25BB9A240();
  v1 = *(v0 + 184);
  return sub_25BCB79EC();
}

void sub_25BB9A684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t *a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  OUTLINED_FUNCTION_14_6();
  v32 = *a25;
  v33 = *(a25 + 8);
  *(v28 + 176) = a27;
  *(v28 + 184) = a28;
  if (!v31)
  {
    v34 = OUTLINED_FUNCTION_1_33(0x5F78616Du);
    sub_25BAA5EA0(v34, v35);
    OUTLINED_FUNCTION_5_27();
  }

  OUTLINED_FUNCTION_8_2(v29, v30, v31);
  *(v28 + 40) = v36;
  *(v28 + 48) = v37;
  *(v28 + 56) = v38;
  *(v28 + 64) = v39;
  *(v28 + 72) = v40;
  *(v28 + 80) = v41;
  *(v28 + 88) = a24;
  *(v28 + 96) = v32;
  *(v28 + 104) = v33;
  OUTLINED_FUNCTION_3_22();
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_25BB9A714()
{
  sub_25BB9A2E4();
  v1 = *(v0 + 184);
  sub_25BA9D148(*(v0 + 176));

  return swift_deallocClassInstance();
}

void sub_25BB9A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t *a26)
{
  OUTLINED_FUNCTION_14_6();
  v30 = *a26;
  v31 = *(a26 + 8);
  *(v26 + 176) = v32;
  if (!v29)
  {
    v33 = OUTLINED_FUNCTION_0_41(0x5F78616Du);
    v27 = sub_25BAA5EA0(v33, v34);
  }

  OUTLINED_FUNCTION_8_2(v27, v28, v29);
  *(v26 + 40) = v35;
  *(v26 + 48) = v36;
  *(v26 + 56) = v37;
  *(v26 + 64) = v38;
  *(v26 + 72) = a23;
  *(v26 + 80) = a24;
  *(v26 + 88) = a25;
  *(v26 + 96) = v30;
  *(v26 + 104) = v31;
  OUTLINED_FUNCTION_2_34();
  OUTLINED_FUNCTION_15_2();
}

uint64_t sub_25BB9A844()
{
  sub_25BB9A2E4();
  v1 = *(v0 + 176);

  return swift_deallocClassInstance();
}

uint64_t sub_25BB9A8B0(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB44F0, type metadata accessor for Max2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9A908(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB4500, type metadata accessor for Average2DPoolGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9A960(uint64_t a1)
{
  result = sub_25BB9A9B8(&qword_27FBB5BB8, type metadata accessor for Base2DPoolOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9A9B8(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_25BB9AA18(uint64_t a1, uint64_t a2)
{

  sub_25BB9ACC4();
  *(a1 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) = 0;
  v4 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data;
  swift_beginAccess();
  v5 = sub_25BB9B5A8((a1 + v4), a2);
  swift_endAccess();

  return v5;
}

uint64_t sub_25BB9AAB4()
{
  OUTLINED_FUNCTION_0_42();
  *(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) = 0;
  swift_beginAccess();
  sub_25BCB5A0C();
  return swift_endAccess();
}

uint64_t sub_25BB9AB48(uint64_t a1, uint64_t a2, uint64_t *a3, char *a4)
{
  v7 = *a3;
  v8 = *a4;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_initializationState) = 0;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data) = xmmword_25BCC3FB0;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_isSynchronizedWithSource) = 1;
  v9 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_url;
  v10 = sub_25BCB598C();
  (*(*(v10 - 8) + 32))(v4 + v9, a1, v10);
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_offset) = a2;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape) = v7;
  *(v4 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType) = v8;
  return v4;
}

uint64_t sub_25BB9AC20()
{
  OUTLINED_FUNCTION_0_42();
  v1 = (v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_25BB33C70(v3, v2);
  sub_25BCB59EC();
  return sub_25BB0D160(v3, v2);
}

void sub_25BB9ACC4()
{
  if ((*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_initializationState) & 1) == 0)
  {
    sub_25BB9AE1C();
  }
}

void sub_25BB9AE1C()
{
  v2 = v0;
  v34[3] = *MEMORY[0x277D85DE8];
  v3 = sub_25BCB598C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BB2BA50(0, &qword_27FBB4038, 0x277CCA9F8);
  (*(v4 + 16))(v7, v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_url, v3);
  v8 = sub_25BB9B0C8(v7);
  if (!v1)
  {
    v9 = v8;
    v10 = *(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_offset);
    v34[0] = 0;
    v11 = [v8 seekToOffset:v10 error:v34];
    v12 = v34[0];
    if (!v11)
    {
      goto LABEL_17;
    }

    v13 = *(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = (v13 + 32);
      v16 = 1;
      while (1)
      {
        v17 = *v15++;
        v18 = v16 * v17;
        if ((v16 * v17) >> 64 != (v16 * v17) >> 63)
        {
          break;
        }

        v16 = v18;
        if (!--v14)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
      goto LABEL_20;
    }

    v18 = 1;
LABEL_9:
    if (*(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType) - 1 > 0xA)
    {
      v19 = 1;
    }

    else
    {
      v19 = qword_25BCC4A10[(*(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_scalarType) - 1)];
    }

    if ((v18 * v19) >> 64 != (v18 * v19) >> 63)
    {
LABEL_20:
      __break(1u);
    }

    v20 = v34[0];
    v21 = sub_25BCB6C9C();
    v23 = v22;
    if (v22 >> 60 != 15)
    {
      v24 = v21;
      v25 = (v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data);
      swift_beginAccess();
      v26 = *v25;
      v27 = v25[1];
      *v25 = v24;
      v25[1] = v23;
      sub_25BB0D160(v26, v27);
    }

    v33 = 0;
    v28 = [v9 closeAndReturnError_];
    v12 = v33;
    if (v28)
    {
      v29 = v33;

      *(v2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_initializationState) = 1;
    }

    else
    {
LABEL_17:
      v30 = v12;
      sub_25BCB58CC();

      swift_willThrow();
    }
  }

  v31 = *MEMORY[0x277D85DE8];
}

id sub_25BB9B0C8(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25BCB592C();
  v12[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v12];

  v4 = v12[0];
  if (v3)
  {
    v5 = sub_25BCB598C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v12[0];
    sub_25BCB58CC();

    swift_willThrow();
    v9 = sub_25BCB598C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t sub_25BB9B220()
{
  v1 = OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_url;
  v2 = sub_25BCB598C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_25BB0D160(*(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data), *(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_data + 8));
  v3 = *(v0 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);

  return v0;
}

uint64_t sub_25BB9B2A4()
{
  sub_25BB9B220();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DataSourceTensorStorage()
{
  result = qword_27FBB5BC0;
  if (!qword_27FBB5BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25BB9B350()
{
  result = sub_25BCB598C();
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

_BYTE *storeEnumTagSinglePayload for DataSourceTensorStorage.InitializationState(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB9B4FC()
{
  result = qword_27FBB5BD0;
  if (!qword_27FBB5BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BD0);
  }

  return result;
}

uint64_t sub_25BB9B5A8(uint64_t *a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  switch(v2 >> 62)
  {
    case 1uLL:
      v30 = v2 & 0x3FFFFFFFFFFFFFFFLL;
      swift_retain_n();
      sub_25BB33C70(v3, v2);
      sub_25BB0D160(v3, v2);
      *a1 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      v31 = v3 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_13;
      }

      if (v31 < v3)
      {
        goto LABEL_21;
      }

      if (sub_25BCB584C() && __OFSUB__(v3, sub_25BCB587C()))
      {
        goto LABEL_22;
      }

      v32 = sub_25BCB588C();
      v33 = *(v32 + 48);
      v34 = *(v32 + 52);
      swift_allocObject();
      v35 = sub_25BCB583C();

      v30 = v35;
LABEL_13:
      if (v31 < v3)
      {
        goto LABEL_19;
      }

      result = sub_25BCB584C();
      if (!result)
      {
        goto LABEL_24;
      }

      v36 = result;
      v37 = sub_25BCB587C();
      v38 = v3 - v37;
      if (__OFSUB__(v3, v37))
      {
        goto LABEL_20;
      }

      sub_25BCB586C();
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      v39 = *(a2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
      v40 = sub_25BCB617C();
      v41 = sub_25BAF99E8(v40);

      v42 = sub_25BBC046C();
      v23 = sub_25BBC052C(v41, v36 + v38, v42);

      v24 = v30 | 0x4000000000000000;
      *a1 = v3;
      goto LABEL_17;
    case 2uLL:
      swift_retain_n();
      sub_25BB33C70(v3, v2);
      sub_25BB0D160(v3, v2);
      *&v44 = v3;
      *(&v44 + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_25BCC3FB0;
      sub_25BB0D160(0, 0xC000000000000000);
      sub_25BCB599C();
      v13 = *(v44 + 16);

      result = sub_25BCB584C();
      if (result)
      {
        v15 = result;
        v16 = sub_25BCB587C();
        v17 = __OFSUB__(v13, v16);
        v18 = v13 - v16;
        if (v17)
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
        }

        sub_25BCB586C();
        sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
        v19 = *(a2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
        v20 = sub_25BCB617C();
        v21 = sub_25BAF99E8(v20);

        v22 = sub_25BBC046C();
        v23 = sub_25BBC052C(v21, v15 + v18, v22);

        v24 = *(&v44 + 1) | 0x8000000000000000;
        *a1 = v44;
LABEL_17:
        a1[1] = v24;
        v43 = *MEMORY[0x277D85DE8];
        return v23;
      }

      else
      {
        __break(1u);
LABEL_24:
        __break(1u);
      }

      return result;
    case 3uLL:
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      *&v44 = 0;
      *(&v44 + 7) = 0;
      v25 = *(a2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
      v26 = sub_25BCB617C();
      v27 = sub_25BAF99E8(v26);

      v28 = sub_25BBC046C();
      v10 = sub_25BBC052C(v27, &v44, v28);

      goto LABEL_7;
    default:
      swift_retain_n();
      sub_25BB0D160(v3, v2);
      *&v44 = v3;
      WORD4(v44) = v2;
      BYTE10(v44) = BYTE2(v2);
      BYTE11(v44) = BYTE3(v2);
      BYTE12(v44) = BYTE4(v2);
      BYTE13(v44) = BYTE5(v2);
      BYTE14(v44) = BYTE6(v2);
      sub_25BB2BA50(0, &unk_28154BDE8, off_279970BC8);
      v6 = *(a2 + OBJC_IVAR____TtC14NeuralNetworks23DataSourceTensorStorage_shape);
      v7 = sub_25BCB617C();
      v8 = sub_25BAF99E8(v7);

      v9 = sub_25BBC046C();
      v10 = sub_25BBC052C(v8, &v44, v9);
      v11 = v44;
      v12 = DWORD2(v44) | ((WORD6(v44) | (BYTE14(v44) << 16)) << 32);

      *a1 = v11;
      a1[1] = v12;
LABEL_7:
      v29 = *MEMORY[0x277D85DE8];
      return v10;
  }
}

uint64_t MaxPool1D.forward(_:)(uint64_t *a1)
{
  v2 = *a1;
  Tensor.expandingShape(at:)();
  maxPool2D(_:kernelSize:stride:padding:)();

  Tensor.squeezingShape(at:)();
}

uint64_t sub_25BB9BBC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536C656E72656BLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656469727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x676E6964646170 && a2 == 0xE700000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_25BCB789C();

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

uint64_t sub_25BB9BCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB9BBC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB9BD04(uint64_t a1)
{
  v2 = sub_25BB9E370();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9BD40(uint64_t a1)
{
  v2 = sub_25BB9E370();

  return MEMORY[0x2821FE720](a1, v2);
}

void MaxPool1D.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v13[1] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5BD8, &qword_25BCC4A80);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v12 = v3[4];
  OUTLINED_FUNCTION_21_16(v3, v3[3]);
  sub_25BB9E370();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_3_23();
  sub_25BCB778C();
  if (!v0)
  {
    OUTLINED_FUNCTION_20_16();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
    OUTLINED_FUNCTION_26_14();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_16();
}

uint64_t MaxPool1D.init(from:)(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5BE8, &qword_25BCC4A88);
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  OUTLINED_FUNCTION_21_16(a1, a1[3]);
  sub_25BB9E370();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B2C();
  OUTLINED_FUNCTION_4_32();
  v9 = sub_25BCB769C();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  v11 = *(v4 + 8);
  v12 = OUTLINED_FUNCTION_25_12();
  v13(v12);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t sub_25BB9C064(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  return MaxPool1D.forward(_:)(a1);
}

uint64_t sub_25BB9C070@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MaxPool1D.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_25BB9C0A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MaxPool1D.encode(to:)();
}

uint64_t MaxPool2D.kernelSize.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t MaxPool2D.stride.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t MaxPool2D.padding.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

void __swiftcall MaxPool2D.init(kernelSize:stride:padding:)(NeuralNetworks::MaxPool2D *__return_ptr retstr, Swift::tuple_height_Int_width_Int kernelSize, Swift::tuple_Int_Int_optional stride, Swift::tuple_Int_Int padding)
{
  retstr->kernelSize = kernelSize;
  if (stride.is_nil)
  {
    width = kernelSize.width;
  }

  else
  {
    width = stride.value._1;
  }

  if (stride.is_nil)
  {
    height = kernelSize.height;
  }

  else
  {
    height = stride.value._0;
  }

  retstr->stride.y = height;
  retstr->stride.x = width;
  retstr->padding = padding;
}

void MaxPool2D.forward(_:)(uint64_t *a1)
{
  v8 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  maxPool2D(_:kernelSize:stride:padding:)();
}

double sub_25BB9C130@<D0>(_OWORD *a1@<X8>)
{
  MaxPool2D.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

void MaxPool2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5BF0, &unk_25BCC4A90);
  OUTLINED_FUNCTION_2(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_21();
  v7 = v2[4];
  OUTLINED_FUNCTION_21_16(v2, v2[3]);
  sub_25BB9E3C4();
  OUTLINED_FUNCTION_19_16();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_56_0(&qword_27FBB4760);
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    v8 = OUTLINED_FUNCTION_7_1();
    v9(v8);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_22_15();
  }

  OUTLINED_FUNCTION_16();
}

uint64_t MaxPool2D.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C00, &unk_25BCC4AA0);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  OUTLINED_FUNCTION_21_16(a1, a1[3]);
  sub_25BB9E3C4();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B6C();
  v17 = *v3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
  OUTLINED_FUNCTION_51(&qword_27FBB4770);
  OUTLINED_FUNCTION_2_35();
  if (!v2)
  {
    v17 = v3[1];
    v16 = 1;
    OUTLINED_FUNCTION_2_35();
    v17 = v3[2];
    v16 = 2;
    OUTLINED_FUNCTION_2_35();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_25BB9C4B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BAE060C();
  *a2 = result;
  return result;
}

uint64_t sub_25BB9C4E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BAE060C();
  *a1 = result;
  return result;
}

uint64_t sub_25BB9C508(uint64_t a1)
{
  v2 = sub_25BB9E3C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9C544(uint64_t a1)
{
  v2 = sub_25BB9E3C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AveragePool1D.forward(_:)@<X0>(ValueMetadata **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v42 = *a1;
  Tensor.expandingShape(at:)();
  v11 = v56;
  v12 = *(v56 + 16);
  v13 = *(v12 + 160);
  if (!sub_25BAA80BC(v13, &unk_286D42270))
  {
    LOBYTE(v57[0]) = v13;
    v42 = sub_25BC8FACC();
    v43 = v37;
    v44 = xmmword_25BCBCE20;
    LOBYTE(v45) = 0;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    v47 = 2;
    v52 = 3;
    OUTLINED_FUNCTION_6_32();
    sub_25BADDD28();
  }

  HIDWORD(v40) = a5;
  v41 = a6;
  v42 = *(v12 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  *(inited + 48) = a2;
  *(inited + 56) = 1;
  v57[0] = inited;
  sub_25BCB617C();
  sub_25BCA4578(&v42, v57, a3, 1, a4, 0, &v55);

  v15 = v55;
  if (v55)
  {
    v16 = *(v11 + 16);
    v57[0] = v11;
    v17 = Tensor.scalarType.getter();
    v19 = v18;
    v20 = *(v18 + 32);

    v20(&v43, v17, v19);
    v42 = v15;
    v21 = swift_allocObject();
    *(v21 + 16) = a2;
    *(v21 + 24) = 1;
    *(v21 + 32) = a3;
    *(v21 + 40) = 1;
    *(v21 + 48) = a4;
    *(v21 + 56) = 0;
    *(v21 + 64) = BYTE4(v40) & 1;
    v22 = sub_25BAAF074(sub_25BB9E418);
    v24 = v23;

    v54[55] = 0;
    OUTLINED_FUNCTION_23_14("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v58 = xmmword_25BCC4A70;
    OUTLINED_FUNCTION_27_13(v25);
    swift_allocObject();
    LOBYTE(v38) = BYTE4(v40) & 1;
    v26 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v26, v27, v28, v16, a2, 1, a3, 1, a4, 0, v38, &v42, v57, v22, v24, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51);
    v30 = v29;
    sub_25BAA51C8(*(v11 + 16) + 168, v54);
    sub_25BAA51C8(v54, v53);
    type metadata accessor for ContextManager();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v42);

    v31 = v51;

    sub_25BAA4AF4(&v42);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v42);

    v32 = v50;

    sub_25BAA4AF4(&v42);
    type metadata accessor for TensorRepresentation();
    v33 = swift_allocObject();
    LOBYTE(v42) = 1;
    v34 = sub_25BC0EDE4(v30, 0, v53, 0x100000000, v31, v32, v33);
    type metadata accessor for TensorHandle();
    v35 = swift_allocObject();
    v35[1].Kind = v34;

    sub_25BAA6EB0();

    sub_25BA9C2C8(v54);

    v42 = v35;
    Tensor.squeezingShape(at:)();
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    result = OUTLINED_FUNCTION_5_28();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB9C9BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69536C656E72656BLL && a2 == 0xEA0000000000657ALL;
  if (v4 || (sub_25BCB789C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656469727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_25BCB789C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x676E6964646170 && a2 == 0xE700000000000000;
      if (v7 || (sub_25BCB789C() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x800000025BCDDF90 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_25BCB789C();

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

unint64_t sub_25BB9CB28(char a1)
{
  result = 0x69536C656E72656BLL;
  switch(a1)
  {
    case 1:
      result = 0x656469727473;
      break;
    case 2:
      result = 0x676E6964646170;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25BB9CBB0()
{
  v1 = *v0;
  sub_25BCB79CC();
  sub_25BADE7BC(v3, v1);
  return sub_25BCB7A3C();
}

uint64_t sub_25BB9CBFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25BB9C9BC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25BB9CC24@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BB9CB20();
  *a1 = result;
  return result;
}

uint64_t sub_25BB9CC4C(uint64_t a1)
{
  v2 = sub_25BB9E41C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9CC88(uint64_t a1)
{
  v2 = sub_25BB9E41C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AveragePool1D.encode(to:)()
{
  OUTLINED_FUNCTION_17_1();
  v13[1] = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C08, &qword_25BCC4AB0);
  OUTLINED_FUNCTION_2(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v9);
  v11 = v13 - v10;
  v12 = v3[4];
  OUTLINED_FUNCTION_21_16(v3, v3[3]);
  sub_25BB9E41C();
  sub_25BCB7B6C();
  OUTLINED_FUNCTION_3_23();
  sub_25BCB778C();
  if (!v0)
  {
    OUTLINED_FUNCTION_20_16();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
    OUTLINED_FUNCTION_26_14();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB778C();
    OUTLINED_FUNCTION_3_23();
    sub_25BCB776C();
  }

  (*(v6 + 8))(v11, v4);
  OUTLINED_FUNCTION_16();
}

void AveragePool1D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C18, &qword_25BCC4AB8);
  OUTLINED_FUNCTION_2(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v7);
  v8 = v1[4];
  OUTLINED_FUNCTION_21_16(v1, v1[3]);
  sub_25BB9E41C();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B2C();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_20_16();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_26_14();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB769C();
  OUTLINED_FUNCTION_4_32();
  sub_25BCB767C();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_25_12();
  v11(v10);
  __swift_destroy_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_16();
}

void sub_25BB9D000(uint64_t a1@<X8>)
{
  AveragePool1D.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6 & 1;
  }
}

void sub_25BB9D038()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  AveragePool1D.encode(to:)();
}

uint64_t AveragePool2D.kernelSize.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t AveragePool2D.stride.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AveragePool2D.padding.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

void __swiftcall AveragePool2D.init(kernelSize:stride:padding:countIncludesPadding:)(NeuralNetworks::AveragePool2D *__return_ptr retstr, Swift::tuple_height_Int_width_Int kernelSize, Swift::tuple_Int_Int_optional stride, Swift::tuple_Int_Int padding, Swift::Bool countIncludesPadding)
{
  retstr->kernelSize = kernelSize;
  if (stride.is_nil)
  {
    width = kernelSize.width;
  }

  else
  {
    width = stride.value._1;
  }

  if (stride.is_nil)
  {
    height = kernelSize.height;
  }

  else
  {
    height = stride.value._0;
  }

  retstr->stride.y = height;
  retstr->stride.x = width;
  retstr->padding = padding;
  retstr->countIncludesPadding = countIncludesPadding;
}

uint64_t AveragePool2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  v6 = *(v2 + 8);
  v8 = *(v2 + 16);
  v7 = *(v2 + 24);
  v9 = *(v2 + 32);
  v49 = *(v2 + 40);
  HIDWORD(v45) = *(v2 + 48);
  v10 = *(*a1 + 16);
  v11 = *(v10 + 160);
  if (!sub_25BAA80BC(v11, &unk_286D42270))
  {
    LOBYTE(v62[0]) = v11;
    v50 = sub_25BC8FACC();
    v51 = v41;
    v52 = xmmword_25BCBCE20;
    LOBYTE(v53) = 0;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v55) = 2;
    v58 = 3;
    OUTLINED_FUNCTION_6_32();
    sub_25BADDD28();
  }

  v47 = a2;
  v50 = *(v10 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBDF80;
  *(inited + 32) = vdupq_n_s64(1uLL);
  v46 = v5;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  v62[0] = inited;
  sub_25BCB617C();
  v13 = v8;
  OUTLINED_FUNCTION_8_24();
  sub_25BCA4578(v14, v15, v16, v17, v18, v49, v19);

  v20 = v61;
  if (v61)
  {
    v44 = *(v4 + 16);
    v62[0] = v4;
    v21 = Tensor.scalarType.getter();
    v23 = v22;
    v24 = *(v22 + 32);

    v24(&v51, v21, v23);
    v50 = v20;
    v25 = swift_allocObject();
    *(v25 + 16) = v46;
    *(v25 + 24) = v6;
    *(v25 + 32) = v8;
    *(v25 + 40) = v7;
    *(v25 + 48) = v9;
    *(v25 + 56) = v49;
    *(v25 + 64) = BYTE4(v45);
    v26 = sub_25BAAF074(sub_25BB9F188);
    v28 = v27;

    v60[55] = 0;
    OUTLINED_FUNCTION_23_14("/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift");
    v63 = xmmword_25BCC4A70;
    OUTLINED_FUNCTION_27_13(v29);
    swift_allocObject();
    LOBYTE(v42) = BYTE4(v45);
    v30 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v30, v31, v32, v44, v46, v6, v13, v7, v9, v49, v42, &v50, v62, v26, v28, v4, v44, v45, v46, v6, v47, v49, v50, v51, v52, *(&v52 + 1), v53, v54, v55);
    v34 = v33;
    sub_25BAA51C8(*(v43 + 16) + 168, v60);
    sub_25BAA51C8(v60, v59);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v50);

    v35 = v57;

    sub_25BAA4AF4(&v50);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v50);

    v36 = v56;

    sub_25BAA4AF4(&v50);
    type metadata accessor for TensorRepresentation();
    v37 = swift_allocObject();
    LOBYTE(v50) = 1;
    v38 = sub_25BC0EDE4(v34, 0, v59, 0x100000000, v35, v36, v37);
    type metadata accessor for TensorHandle();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;

    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    result = sub_25BA9C2C8(v60);
    *v48 = v39;
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    result = OUTLINED_FUNCTION_5_28();
    __break(1u);
  }

  return result;
}

double sub_25BB9D480@<D0>(uint64_t a1@<X8>)
{
  AveragePool2D.init(from:)();
  if (!v1)
  {
    *a1 = v4;
    *(a1 + 16) = v5;
    result = *&v6;
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
  }

  return result;
}

void AveragePool2D.init(from:)()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C20, &qword_25BCC4AC0);
  OUTLINED_FUNCTION_2(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_14_21();
  v9 = v2[4];
  OUTLINED_FUNCTION_21_16(v2, v2[3]);
  sub_25BB9E470();
  OUTLINED_FUNCTION_19_16();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
    OUTLINED_FUNCTION_56_0(&qword_27FBB4760);
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    OUTLINED_FUNCTION_1_34();
    v10 = OUTLINED_FUNCTION_7_1();
    v11(v10);
    __swift_destroy_boxed_opaque_existential_1(v2);
    OUTLINED_FUNCTION_22_15();
    *(v4 + 48) = 0;
  }

  OUTLINED_FUNCTION_16();
}

uint64_t AveragePool2D.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5C30, &qword_25BCC4AC8);
  OUTLINED_FUNCTION_2(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - v11;
  v13 = a1[4];
  OUTLINED_FUNCTION_21_16(a1, a1[3]);
  sub_25BB9E470();
  OUTLINED_FUNCTION_8_24();
  sub_25BCB7B6C();
  v17 = *v3;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4758, &qword_25BCBEB10);
  OUTLINED_FUNCTION_51(&qword_27FBB4770);
  OUTLINED_FUNCTION_2_35();
  if (!v2)
  {
    v17 = v3[1];
    v16 = 1;
    OUTLINED_FUNCTION_2_35();
    v17 = v3[2];
    v16 = 2;
    OUTLINED_FUNCTION_2_35();
  }

  return (*(v7 + 8))(v12, v5);
}

uint64_t sub_25BB9D7EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_25BAE0668();
  *a2 = result;
  return result;
}

uint64_t sub_25BB9D81C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25BAE0668();
  *a1 = result;
  return result;
}

uint64_t sub_25BB9D844(uint64_t a1)
{
  v2 = sub_25BB9E470();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9D880(uint64_t a1)
{
  v2 = sub_25BB9E470();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB9D90C(uint64_t a1)
{
  v2 = sub_25BB9E4C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9D948(uint64_t a1)
{
  v2 = sub_25BB9E4C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalAveragePool2D.forward(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 152);
  v6 = v5[2];
  if (v6 <= 2)
  {
    *&v39 = 0;
    v37 = 2;
LABEL_8:
    v38 = 0;
    BYTE8(v39) = -1;
    v41 = 0;
    v42 = 0;
    v40 = v6;
    LOBYTE(v43) = -1;
    v49 = 4;
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    goto LABEL_10;
  }

  if (v6 == 3)
  {
    *&v39 = 0;
    v37 = 3;
    goto LABEL_8;
  }

  v7 = v5[6];
  v8 = v5[7];
  v9 = *(v4 + 160);
  if (!sub_25BAA80BC(v9, &unk_286D42270))
  {
    LOBYTE(v54[0]) = v9;
    v37 = sub_25BC8FACC();
    v38 = v33;
    v39 = xmmword_25BCBCE20;
    LOBYTE(v40) = 0;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4140, &qword_25BCC2F10);
    LOBYTE(v42) = 2;
    v49 = 3;
    OUTLINED_FUNCTION_6_32();
LABEL_10:
    sub_25BADDD28();
  }

  v35 = a2;
  v37 = *(v4 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25BCBDF80;
  *(v10 + 32) = vdupq_n_s64(1uLL);
  *(v10 + 48) = v7;
  *(v10 + 56) = v8;
  v54[0] = v10;
  sub_25BCB617C();
  sub_25BCA4578(&v37, v54, 1, 1, 0, 0, &v53);

  v11 = v53;
  if (v53)
  {
    v12 = *(v3 + 16);
    v54[0] = v3;
    v13 = Tensor.scalarType.getter();
    v15 = v14;
    v16 = *(v14 + 32);

    v16(&v38, v13, v15);
    v37 = v11;
    v17 = swift_allocObject();
    v17[1].i64[0] = v7;
    v17[1].i64[1] = v8;
    v17[2] = vdupq_n_s64(1uLL);
    v17[3].i64[0] = 0;
    v17[3].i64[1] = 0;
    v17[4].i8[0] = 0;
    v18 = sub_25BAAF074(sub_25BB9F188);
    v20 = v19;

    v52 = 0;
    v54[0] = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/PoolingOps.swift";
    v54[1] = 112;
    v55 = 2;
    v56 = xmmword_25BCC4A70;
    v57 = "init(id:operand:kernelSize:stride:padding:countIncludesPadding:resultDescriptor:creationSite:backward:)";
    v58 = 103;
    v59 = 2;
    type metadata accessor for Average2DPoolOperation();
    swift_allocObject();
    LOBYTE(v34) = 0;
    v21 = OUTLINED_FUNCTION_3();
    sub_25BB9A474(v21, v22, v23, v12, v7, v8, 1, 1, 0, 0, v34, &v37, v54, v18, v20, v35, v37, v38, v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45, v46, v47, v48);
    v25 = v24;
    sub_25BAA51C8(*(v3 + 16) + 168, v51);
    sub_25BAA51C8(v51, v50);
    type metadata accessor for ContextManager();
    OUTLINED_FUNCTION_9_7();
    swift_retain_n();
    sub_25BAA49B8();
    sub_25BAA4A5C(&v37);

    v26 = v46;

    sub_25BAA4AF4(&v37);
    sub_25BAA49B8();
    sub_25BAA4A5C(&v37);

    v27 = v45;

    sub_25BAA4AF4(&v37);
    type metadata accessor for TensorRepresentation();
    v28 = swift_allocObject();
    LOBYTE(v37) = 1;
    v29 = sub_25BC0EDE4(v25, 0, v50, 0x100000000, v26, v27, v28);
    type metadata accessor for TensorHandle();
    v30 = swift_allocObject();
    *(v30 + 16) = v29;

    sub_25BAA6EB0();
    OUTLINED_FUNCTION_9_7();

    sub_25BA9C2C8(v51);
    v37 = v30;
    v31 = *(v29 + 152);
    sub_25BCB617C();
    sub_25BB74DC8(2, v31, v51);
    Tensor.reshaped(to:)(v51, v36);
  }

  else
  {
    OUTLINED_FUNCTION_10_20();
    result = OUTLINED_FUNCTION_5_28();
    __break(1u);
  }

  return result;
}

uint64_t sub_25BB9DE5C(uint64_t a1)
{
  v2 = sub_25BB9E54C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9DE98(uint64_t a1)
{
  v2 = sub_25BB9E54C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25BB9DF74(uint64_t a1)
{
  v2 = sub_25BB9E5A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9DFB0(uint64_t a1)
{
  v2 = sub_25BB9E5A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GlobalMaxPool2D.forward(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v10 = *a1;
  v3 = *(*(v10 + 16) + 152);
  if (v3[2] < 4uLL)
  {
    v9 = v3[2];
    sub_25BCB617C();
    OUTLINED_FUNCTION_17_4();
    sub_25BADDD28();
  }

  v4 = v3[6];
  v5 = v3[7];
  maxPool2D(_:kernelSize:stride:padding:)();
  v6 = *(*(v8 + 16) + 152);
  sub_25BCB617C();
  sub_25BB74DC8(2, v6, &v10);
  Tensor.reshaped(to:)(&v10, a2);
}

uint64_t sub_25BB9E1A0(uint64_t a1)
{
  v2 = sub_25BB9E5F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25BB9E1DC(uint64_t a1)
{
  v2 = sub_25BB9E5F4();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_25BB9E25C()
{
  OUTLINED_FUNCTION_17_1();
  v2 = v1;
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_2(v7);
  v9 = v8;
  v11 = *(v10 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_21();
  v13 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  v2();
  sub_25BCB7B6C();
  (*(v9 + 8))(v0, v7);
  OUTLINED_FUNCTION_16();
}

unint64_t sub_25BB9E370()
{
  result = qword_27FBB5BE0;
  if (!qword_27FBB5BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BE0);
  }

  return result;
}

unint64_t sub_25BB9E3C4()
{
  result = qword_27FBB5BF8;
  if (!qword_27FBB5BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5BF8);
  }

  return result;
}

unint64_t sub_25BB9E41C()
{
  result = qword_27FBB5C10;
  if (!qword_27FBB5C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C10);
  }

  return result;
}

unint64_t sub_25BB9E470()
{
  result = qword_27FBB5C28;
  if (!qword_27FBB5C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C28);
  }

  return result;
}

unint64_t sub_25BB9E4C4()
{
  result = qword_27FBB5C40;
  if (!qword_27FBB5C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C40);
  }

  return result;
}

unint64_t sub_25BB9E54C()
{
  result = qword_27FBB5C50;
  if (!qword_27FBB5C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C50);
  }

  return result;
}

unint64_t sub_25BB9E5A0()
{
  result = qword_27FBB5C60;
  if (!qword_27FBB5C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C60);
  }

  return result;
}

unint64_t sub_25BB9E5F4()
{
  result = qword_27FBB5C70;
  if (!qword_27FBB5C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MaxPool1D(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for MaxPool1D(uint64_t result, int a2, int a3)
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

uint64_t sub_25BB9E6AC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_25BB9E6F8(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25BB9E768(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 49))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 48);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
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

uint64_t sub_25BB9E7B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AveragePool1D.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_25BB9E980(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25BB9EA60()
{
  result = qword_27FBB5C78;
  if (!qword_27FBB5C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C78);
  }

  return result;
}

unint64_t sub_25BB9EAB8()
{
  result = qword_27FBB5C80;
  if (!qword_27FBB5C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C80);
  }

  return result;
}

unint64_t sub_25BB9EB10()
{
  result = qword_27FBB5C88;
  if (!qword_27FBB5C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C88);
  }

  return result;
}

unint64_t sub_25BB9EB68()
{
  result = qword_27FBB5C90;
  if (!qword_27FBB5C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C90);
  }

  return result;
}

unint64_t sub_25BB9EBC0()
{
  result = qword_27FBB5C98;
  if (!qword_27FBB5C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5C98);
  }

  return result;
}

unint64_t sub_25BB9EC18()
{
  result = qword_27FBB5CA0;
  if (!qword_27FBB5CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CA0);
  }

  return result;
}

unint64_t sub_25BB9EC70()
{
  result = qword_27FBB5CA8;
  if (!qword_27FBB5CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CA8);
  }

  return result;
}

unint64_t sub_25BB9ECC8()
{
  result = qword_27FBB5CB0;
  if (!qword_27FBB5CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CB0);
  }

  return result;
}

unint64_t sub_25BB9ED20()
{
  result = qword_27FBB5CB8;
  if (!qword_27FBB5CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CB8);
  }

  return result;
}

unint64_t sub_25BB9ED78()
{
  result = qword_27FBB5CC0;
  if (!qword_27FBB5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CC0);
  }

  return result;
}

unint64_t sub_25BB9EDD0()
{
  result = qword_27FBB5CC8;
  if (!qword_27FBB5CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CC8);
  }

  return result;
}

unint64_t sub_25BB9EE28()
{
  result = qword_27FBB5CD0;
  if (!qword_27FBB5CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CD0);
  }

  return result;
}

unint64_t sub_25BB9EE80()
{
  result = qword_27FBB5CD8;
  if (!qword_27FBB5CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CD8);
  }

  return result;
}

unint64_t sub_25BB9EED8()
{
  result = qword_27FBB5CE0;
  if (!qword_27FBB5CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CE0);
  }

  return result;
}

unint64_t sub_25BB9EF30()
{
  result = qword_27FBB5CE8;
  if (!qword_27FBB5CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CE8);
  }

  return result;
}

unint64_t sub_25BB9EF88()
{
  result = qword_27FBB5CF0;
  if (!qword_27FBB5CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CF0);
  }

  return result;
}

unint64_t sub_25BB9EFE0()
{
  result = qword_27FBB5CF8;
  if (!qword_27FBB5CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5CF8);
  }

  return result;
}

unint64_t sub_25BB9F038()
{
  result = qword_27FBB5D00;
  if (!qword_27FBB5D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D00);
  }

  return result;
}

unint64_t sub_25BB9F090()
{
  result = qword_27FBB5D08;
  if (!qword_27FBB5D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D08);
  }

  return result;
}

unint64_t sub_25BB9F0E8()
{
  result = qword_27FBB5D10;
  if (!qword_27FBB5D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D10);
  }

  return result;
}

__n128 *sub_25BB9F1B4(uint64_t a1, id *a2)
{
  v5 = *(v2 + 152);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v6, xmmword_25BCBB6D0);
  switch(v5)
  {
    case 1uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v12 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (!v3)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    case 2uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v9 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 3uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v10 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 4uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v8 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 5uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v13 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 6uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v14 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        goto LABEL_33;
      }

      goto LABEL_40;
    case 7uLL:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v11 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
LABEL_33:
        OUTLINED_FUNCTION_27_4();
      }

      else
      {
LABEL_40:
        v22 = a2[5];
      }

      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_3_24();
      v21 = sub_25BB07CA4(v23, v24, v25, v26, v27, v28);
      break;
    default:
      if (v3)
      {
        OUTLINED_FUNCTION_29_2();
      }

      else
      {
        v7 = a2[4];
      }

      OUTLINED_FUNCTION_0_43();
      if (v3)
      {
        OUTLINED_FUNCTION_27_4();
      }

      else
      {
        v15 = a2[5];
      }

      OUTLINED_FUNCTION_2_36();
      OUTLINED_FUNCTION_3_24();
      v21 = sub_25BB2B6D4(v16, v17, v18, v19, v20);
      break;
  }

  v29 = v21;

  v6[2].n128_u64[0] = v29;
  return v6;
}

uint64_t sub_25BB9F468(void *a1, uint64_t a2)
{
  v6 = sub_25BB9F510(a1, a2);
  if (!v3)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_25BCBB6D0;
    v9 = *(v2 + 24);
    v8 = *(v2 + 32);
    sub_25BCB617C();
    *(v4 + 32) = sub_25BB9FAD0(v7, 2147483656, v9, v8, a1);
  }

  return v4;
}

id sub_25BB9F510(void *a1, uint64_t a2)
{
  MEMORY[0x25F876C90](*(v2 + 24), *(v2 + 32));
  v5 = *(v2 + 130);
  v6 = a2 & 0xC000000000000001;
  sub_25BAB4D78(0, (a2 & 0xC000000000000001) == 0, a2);
  switch(v5)
  {
    case 1:
      if (v6)
      {
        v16 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v16 = *(a2 + 32);
      }

      v8 = v16;
      sub_25BAB4D78(1, v6 == 0, a2);
      if (v6)
      {
        v17 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v17 = *(a2 + 40);
      }

      v20 = v17;
      v21 = &selRef_greaterThanWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 2:
      if (v6)
      {
        v12 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      v8 = v12;
      sub_25BAB4D78(1, v6 == 0, a2);
      if (v6)
      {
        v13 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v13 = *(a2 + 40);
      }

      v20 = v13;
      v21 = &selRef_greaterThanOrEqualToWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 3:
      if (v6)
      {
        v14 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v14 = *(a2 + 32);
      }

      v8 = v14;
      sub_25BAB4D78(1, v6 == 0, a2);
      if (v6)
      {
        v15 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v15 = *(a2 + 40);
      }

      v20 = v15;
      v21 = &selRef_lessThanWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 4:
      if (v6)
      {
        v10 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v10 = *(a2 + 32);
      }

      v8 = v10;
      sub_25BAB4D78(1, v6 == 0, a2);
      if (v6)
      {
        v11 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v11 = *(a2 + 40);
      }

      v20 = v11;
      v21 = &selRef_lessThanOrEqualToWithPrimaryTensor_secondaryTensor_name_;
      break;
    case 5:
      if (v6)
      {
        v18 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v18 = *(a2 + 32);
      }

      v8 = v18;
      sub_25BAB4D78(1, v6 == 0, a2);
      if (v6)
      {
        v19 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v19 = *(a2 + 40);
      }

      v20 = v19;
      v21 = &selRef_notEqualWithPrimaryTensor_secondaryTensor_name_;
      break;
    default:
      if (v6)
      {
        v7 = MEMORY[0x25F8779B0](0, a2);
      }

      else
      {
        v7 = *(a2 + 32);
      }

      v8 = v7;
      sub_25BAB4D78(1, v6 == 0, a2);
      if (v6)
      {
        v9 = MEMORY[0x25F8779B0](1, a2);
      }

      else
      {
        v9 = *(a2 + 40);
      }

      v20 = v9;
      v21 = &selRef_equalWithPrimaryTensor_secondaryTensor_name_;
      break;
  }

  v22 = sub_25BB07CA4(v8, v20, 1600483952, v24, a1, v21);

  return v22;
}

__n128 *sub_25BB9F838(uint64_t a1, id *a2)
{
  v5 = *(v2 + 130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_2_27(v6, xmmword_25BCBB6D0);
  if (!v5)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
      v9 = a2[4];
    }

    v8 = v9;
    OUTLINED_FUNCTION_1_35();
    if (v3)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (v5 != 1)
  {
    if (v3)
    {
      OUTLINED_FUNCTION_29_2();
    }

    else
    {
      v10 = a2[4];
    }

    v8 = v10;
    OUTLINED_FUNCTION_1_35();
    if (v3)
    {
      goto LABEL_14;
    }

LABEL_15:
    v11 = a2[5];
    goto LABEL_16;
  }

  if (v3)
  {
    OUTLINED_FUNCTION_29_2();
  }

  else
  {
    v7 = a2[4];
  }

  v8 = v7;
  OUTLINED_FUNCTION_1_35();
  if (!v3)
  {
    goto LABEL_15;
  }

LABEL_14:
  OUTLINED_FUNCTION_27_4();
LABEL_16:
  OUTLINED_FUNCTION_2_36();
  OUTLINED_FUNCTION_3_24();
  v18 = sub_25BB07CA4(v12, v13, v14, v15, v16, v17);

  v6[2].n128_u64[0] = v18;
  return v6;
}

uint64_t sub_25BB9F9B0(uint64_t a1)
{
  result = sub_25BB9FA7C(&qword_27FBB4908, type metadata accessor for BinaryLogicalOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9F9F4(uint64_t a1)
{
  result = sub_25BB9FA7C(qword_28154D158, type metadata accessor for BinaryComparisonOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9FA38(uint64_t a1)
{
  result = sub_25BB9FA7C(qword_28154D288, type metadata accessor for BinaryArithmeticOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BB9FA7C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BB9FAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = sub_25BCB633C();

  v9 = [a5 castTensor:a1 toType:a2 name:v8];

  return v9;
}

uint64_t sub_25BB9FB60()
{
  result = 2;
  switch(*v0)
  {
    case 1:
      result = 6;
      break;
    case 2:
    case 3:
      result = 7;
      break;
    case 4:
      result = 9;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 11;
      break;
    case 7:
      result = 12;
      break;
    case 8:
      return result;
    case 9:
      result = sub_25BCB74CC();
      __break(1u);
      break;
    case 0xA:
      result = 3;
      break;
    case 0xB:
      result = 4;
      break;
    case 0xC:
      result = 0;
      break;
    default:
      result = 5;
      break;
  }

  return result;
}

uint64_t sub_25BB9FC3C()
{
  result = 909209702;
  switch(*v0)
  {
    case 0:
      result = 947154537;
      break;
    case 1:
      result = 0x3631746E69;
      break;
    case 2:
      result = 0x3233746E69;
      break;
    case 3:
      result = 0x3436746E69;
      break;
    case 4:
      result = 0x38746E6975;
      break;
    case 5:
      result = 0x3631746E6975;
      break;
    case 8:
      return result;
    case 9:
      result = 909207138;
      break;
    case 0xA:
      result = 842231910;
      break;
    case 0xC:
      result = 1819242338;
      break;
    default:
      result = sub_25BCB74CC();
      __break(1u);
      break;
  }

  return result;
}

void sub_25BB9FD70(uint64_t a1)
{
  v1 = 0;
  v2 = *(a1 + 16);
  v3 = a1 + 56;
  v18 = MEMORY[0x277D84F90];
  v16 = a1 + 56;
LABEL_2:
  v4 = (v3 + 32 * v1);
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

    v6 = *v4;
    v8 = *(v4 - 3);
    v7 = *(v4 - 2);
    swift_bridgeObjectRetain_n();
    sub_25BCB617C();
    v9 = sub_25BADBE78(v17, v8, v7);

    if (v9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = *(v18 + 16);
        sub_25BAB1E30();
        v18 = v14;
      }

      v3 = v16;
      v10 = *(v18 + 16);
      if (v10 >= *(v18 + 24) >> 1)
      {
        sub_25BAB1E30();
        v18 = v15;
      }

      v11 = v18;
      *(v18 + 16) = v10 + 1;
      v12 = v11 + 16 * v10;
      *(v12 + 32) = v8;
      *(v12 + 40) = v7;
      v1 = v5;
      goto LABEL_2;
    }

    ++v1;
    v4 += 4;
  }
}

BOOL sub_25BB9FED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_25BCB79CC();
  OUTLINED_FUNCTION_109();
  sub_25BCB625C();
  v7 = sub_25BCB7A3C();
  v8 = ~(-1 << *(a3 + 32));
  do
  {
    v9 = v7 & v8;
    v10 = (1 << (v7 & v8)) & *(a3 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8));
    v11 = v10 != 0;
    if (!v10)
    {
      break;
    }

    v12 = (*(a3 + 48) + 16 * v9);
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v14 = OUTLINED_FUNCTION_18_2();
    v7 = v9 + 1;
  }

  while ((v14 & 1) == 0);
  return v11;
}

uint64_t sub_25BB9FFB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = *(a2 + 40);
    v6 = sub_25BCB79BC();
    v7 = ~(-1 << *(a2 + 32));
    do
    {
      v8 = v6 & v7;
      v9 = (1 << (v6 & v7)) & *(a2 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v9 != 0;
      if (!v9)
      {
        break;
      }

      v6 = v8 + 1;
    }

    while (*(*(a2 + 48) + 8 * v8) != a1);
  }

  return v2;
}

void sub_25BBA003C()
{
  v1 = v0;
  v2 = objc_autoreleasePoolPush();
  sub_25BBA37F8(v1, &v3, &v4);
  objc_autoreleasePoolPop(v2);
}

void sub_25BBA00B4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BCB617C();
  v12 = v4 + 48;
  OUTLINED_FUNCTION_109();
  sub_25BADBE78(v13, v14, v15);
  swift_endAccess();

  switch(v11)
  {
    case 1:
      Strong = swift_unknownObjectUnownedLoadStrong();
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v44)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v71 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_50;
        }

        v19 = OUTLINED_FUNCTION_12_20(v71, v72);
      }

      v70 = OUTLINED_FUNCTION_41_9(Strong, sel_constantScalar_dataType_name_location_, v17, 7);
      goto LABEL_41;
    case 2:
      _H8 = v9;
      v23 = swift_unknownObjectUnownedLoadStrong();
      __asm { FCVT            S8, H8 }

      v29 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v30) = _S8;
      v31 = [v29 initWithFloat_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v32)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v63 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_46;
        }

        v19 = OUTLINED_FUNCTION_12_20(v63, v64);
      }

      v65 = OUTLINED_FUNCTION_41_9(v23, sel_constantScalar_dataType_name_location_, v31, 2);
      goto LABEL_34;
    case 3:
      v33 = v9;
      v23 = swift_unknownObjectUnownedLoadStrong();
      v34 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      LODWORD(v35) = v33;
      v31 = [v34 initWithFloat_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v36)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v66 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_47;
        }

        v19 = OUTLINED_FUNCTION_12_20(v66, v67);
      }

      v65 = OUTLINED_FUNCTION_41_9(v23, sel_constantScalar_dataType_name_location_, v31, 3);
LABEL_34:

      goto LABEL_43;
    case 4:
      v20 = swift_unknownObjectUnownedLoadStrong();
      v17 = sub_25BCB633C();
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v21)
      {
        v19 = 0;
LABEL_27:

        goto LABEL_42;
      }

      v56 = *(a4 + 24);
      v57 = *(a4 + 32);
      v59 = *a4;
      v58 = *(a4 + 8);
      v60 = *(a4 + 16);
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v61 = sub_25BC1E9E0(v59, v58, v60);
      if (((v57 | v56) & 0x8000000000000000) == 0)
      {
        v19 = OUTLINED_FUNCTION_12_20(v61, v62);
        goto LABEL_27;
      }

      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return;
    case 5:
      v37 = swift_unknownObjectUnownedLoadStrong();
      sub_25BAF99E8(v9);
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v38 = OUTLINED_FUNCTION_30_10();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v39 = swift_allocObject();
      *(v39 + 32) = [OUTLINED_FUNCTION_31_11(v39 xmmword_25BCBB6D0)];
      v40 = OUTLINED_FUNCTION_30_10();

      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_25_13();
      if (v45)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_23_15();
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v46 = OUTLINED_FUNCTION_20_17();
      if ((a2 | v39) < 0)
      {
        goto LABEL_51;
      }

      v39 = OUTLINED_FUNCTION_12_20(v46, v47);
      goto LABEL_23;
    case 6:
      v37 = swift_unknownObjectUnownedLoadStrong();
      sub_25BAF9F20(v9);
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v38 = OUTLINED_FUNCTION_30_10();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v39 = swift_allocObject();
      *(v39 + 32) = [OUTLINED_FUNCTION_31_11(v39 xmmword_25BCBB6D0)];
      v40 = OUTLINED_FUNCTION_30_10();

      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_25_13();
      if (v48)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_23_15();
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v49 = OUTLINED_FUNCTION_20_17();
      if ((a2 | v39) < 0)
      {
        goto LABEL_52;
      }

      v39 = OUTLINED_FUNCTION_12_20(v49, v50);
      goto LABEL_23;
    case 7:
      v37 = swift_unknownObjectUnownedLoadStrong();
      sub_25BAF99E8(v9);
      sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
      v38 = OUTLINED_FUNCTION_30_10();

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
      v39 = swift_allocObject();
      *(v39 + 32) = [OUTLINED_FUNCTION_31_11(v39 xmmword_25BCBB6D0)];
      v40 = OUTLINED_FUNCTION_30_10();

      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_25_13();
      if (v41)
      {
        goto LABEL_23;
      }

      OUTLINED_FUNCTION_23_15();
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v42 = OUTLINED_FUNCTION_20_17();
      if ((a2 | v39) < 0)
      {
        goto LABEL_48;
      }

      v39 = OUTLINED_FUNCTION_12_20(v42, v43);
LABEL_23:
      v51 = OUTLINED_FUNCTION_22_16();

      return;
    case 8:
      ObjectType = swift_getObjectType();
      MEMORY[0x28223BE20](ObjectType);
      v73[2] = v5;
      v73[3] = v9;
      v73[4] = v10;
      v73[5] = a2;
      v73[6] = a3;
      v73[7] = a4;
      v54 = *(v10 + 64);
      v55 = sub_25BB2BA50(0, &qword_28154BDD8, off_279970BF0);
      v54(v74, sub_25BBA46A0, v73, v55, ObjectType, v10);

      return;
    default:
      Strong = swift_unknownObjectUnownedLoadStrong();
      v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
      OUTLINED_FUNCTION_9_23();
      sub_25BCB633C();
      OUTLINED_FUNCTION_28_12();
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_16_22();
        sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
        v68 = OUTLINED_FUNCTION_13_19();
        if ((a2 | v12) < 0)
        {
          goto LABEL_49;
        }

        v19 = OUTLINED_FUNCTION_12_20(v68, v69);
      }

      v70 = OUTLINED_FUNCTION_41_9(Strong, sel_constantScalar_dataType_name_location_, v17, 0);
LABEL_41:

LABEL_42:
LABEL_43:

      return;
  }
}

id sub_25BBA0884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_25BCB633C();

  v8 = [v6 initWithFilename:v7 line:a3 column:a4];

  return v8;
}

void *sub_25BBA0910@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_35();
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    sub_25BAD6FB0(v3 + 240 * v4 - 208, v7);
  }

  else
  {
    bzero(v7, 0xECuLL);
  }

  sub_25BBA45C8(v7, v6);
  if (v6[0])
  {
    sub_25BBA4638(v7);
    return memcpy(a1, v6, 0xECuLL);
  }

  else
  {
    result = sub_25BBA4638(v6);
    __break(1u);
  }

  return result;
}

uint64_t sub_25BBA09D4(uint64_t a1, void *a2, char a3, char a4)
{
  v9 = MEMORY[0x277D84FA0];
  *(v4 + 32) = 0;
  *(v4 + 40) = v9;
  *(v4 + 48) = v9;
  v10 = MEMORY[0x277D84F90];
  *(v4 + 64) = sub_25BCB614C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3998, &unk_25BCC5B70);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25BCBAE50;
  sub_25BAD6FB0(a1, v11 + 32);
  *(v4 + 16) = v11;
  sub_25BA9AC78(a1);
  *(v4 + 56) = v10;
  swift_unknownObjectUnownedInit();

  *(v4 + 72) = a3;
  *(v4 + 73) = a4;
  return v4;
}

void *sub_25BBA0ABC()
{
  v1 = v0[2];

  swift_unknownObjectUnownedDestroy();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return v0;
}

uint64_t sub_25BBA0B0C()
{
  sub_25BBA0ABC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA0B64(uint64_t a1)
{
  v3 = v1;
  OUTLINED_FUNCTION_35();
  v5 = sub_25BB73218(*(v1 + 56));
  if (v5 && (v6 = v5, v7 = OUTLINED_FUNCTION_27_14(), sub_25BB3EFD4(v7, v8, 0, v6), OUTLINED_FUNCTION_34(), , v2))
  {
    if (*(v1 + 73) == 1)
    {
      OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v9)
        {
          break;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v14)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v10)
        {
          OUTLINED_FUNCTION_39_10();
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2(v11);
            if ((v12 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_8_25();
            v14 = v14 && v2 == v13;
            if (!v14)
            {
              OUTLINED_FUNCTION_18_2();
              v11 = OUTLINED_FUNCTION_35_9();
              if ((v15 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }
        }

        v16 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v16);
LABEL_18:
      }

LABEL_38:

      return v33;
    }
  }

  else
  {
    sub_25BBA0910(v34);
    v17 = v35;
    v18 = v36;
    v1 = a1;
    v19 = sub_25BAC44E4();
    sub_25BB2E238(v19, v20, v17, v18);
    OUTLINED_FUNCTION_34();

    if (!v17)
    {
      v17 = v37;
      v21 = v38;
      v1 = a1;
      v22 = sub_25BAC44E4();
      sub_25BB2E238(v22, v23, v17, v21);
      OUTLINED_FUNCTION_34();

      if (!v17)
      {
        v1 = a1;
        sub_25BAC44E4();
        OUTLINED_FUNCTION_34();
      }
    }

    sub_25BA9AC78(v34);
    if (*(v3 + 73))
    {
      OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v24)
        {
          goto LABEL_38;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v14)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v25)
        {
          OUTLINED_FUNCTION_39_10();
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2(v26);
            if ((v27 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_8_25();
            if (!v14 || v17 != v28)
            {
              OUTLINED_FUNCTION_18_2();
              v26 = OUTLINED_FUNCTION_35_9();
              if ((v30 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_37;
          }
        }

        v31 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v31);
LABEL_37:
      }
    }
  }

  return v1;
}

uint64_t sub_25BBA0DCC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 64);
  if (*(v4 + 16) && (v5 = OUTLINED_FUNCTION_35_8(), v7 = sub_25BA9266C(v5, v6), (v8 & 1) != 0))
  {
    v9 = *(*(v4 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  result = swift_endAccess();
  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_21_17();
    swift_beginAccess();
    v11 = *(v2 + 64);
    swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v2 + 64);
    sub_25BAD3E08();
    *(v2 + 64) = v13;
    swift_endAccess();
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v12 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v12);

    return a1;
  }

  return result;
}

void sub_25BBA0EF4(uint64_t a1)
{
  if (sub_25BAB3058() && (v3 = v2, ObjectType = swift_getObjectType(), (*(v3 + 48))(v19, ObjectType, v3), swift_unknownObjectRelease(), (v23 & 1) == 0))
  {
    v6 = v21;
    v7 = v22;
    v9 = v19[0];
    v8 = v19[1];
    v10 = v20;
    sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
    v11 = sub_25BC1E9E0(v9, v8, v10);
    if ((v7 | v6) < 0)
    {
      __break(1u);
      return;
    }

    v5 = sub_25BBA0884(v11, v12, v6, v7);
  }

  else
  {
    v5 = 0;
  }

  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_25BAF99E8(*(a1 + 152));
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v17 = sub_25BCB672C();

  v18 = *(a1 + 160);
  v14 = sub_25BB9FB60();
  sub_25BBA0B64(a1);
  v15 = sub_25BCB633C();

  v16 = [Strong placeholderWithShape:v17 dataType:v14 name:v15 location:v5];
}

void sub_25BBA10A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  OUTLINED_FUNCTION_35();
  v9 = *(v4 + 48);
  sub_25BCB617C();
  v10 = OUTLINED_FUNCTION_9_23();
  v12 = sub_25BB9FED4(v10, v11, v9);

  if (!v12)
  {
    OUTLINED_FUNCTION_109();
    sub_25BBA00B4(v13, v14, v15, a4);
  }
}

void sub_25BBA114C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BCB617C();
  sub_25BADBE78(v24, a2, a3);
  swift_endAccess();

  Strong = swift_unknownObjectUnownedLoadStrong();
  v11 = *(a6 + 16);
  v12 = OUTLINED_FUNCTION_9_23();
  v14 = v13(v12);
  v15 = sub_25BCB633C();
  v16 = 0;
  if (*(a4 + 57))
  {
    goto LABEL_4;
  }

  v17 = *(a4 + 24);
  v18 = *(a4 + 32);
  v20 = *a4;
  v19 = *(a4 + 8);
  v21 = *(a4 + 16);
  sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
  v22 = sub_25BC1E9E0(v20, v19, v21);
  if (((v18 | v17) & 0x8000000000000000) == 0)
  {
    v16 = sub_25BBA0884(v22, v23, v17, v18);
LABEL_4:

    return;
  }

  __break(1u);
}

void sub_25BBA12C0(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X7>, void *a4@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  ObjectType = swift_getObjectType();
  (*(a2 + 16))(&v25, ObjectType, a2);
  sub_25BAF99E8(v25);

  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v9 = sub_25BCB672C();

  (*(a2 + 8))(&v24, ObjectType, a2);
  v10 = sub_25BB9FB60();
  v11 = sub_25BCB633C();
  v12 = 0;
  if (*(a3 + 57))
  {
    goto LABEL_4;
  }

  v21 = a1;
  v23 = Strong;
  v13 = *(a3 + 24);
  v14 = *(a3 + 32);
  v16 = *a3;
  v15 = *(a3 + 8);
  v17 = *(a3 + 16);
  sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
  v18 = sub_25BC1E9E0(v16, v15, v17);
  if (((v14 | v13) & 0x8000000000000000) == 0)
  {
    v12 = sub_25BBA0884(v18, v19, v13, v14);
    Strong = v23;
    a1 = v21;
LABEL_4:
    v20 = [Strong constantTensorWithBytes:a1 shape:v9 dataType:v10 name:v11 location:v12];

    *a4 = v20;
    return;
  }

  __break(1u);
}

uint64_t sub_25BBA1494(_BYTE *a1, uint64_t a2, uint64_t a3, float _S0)
{
  switch(*a1)
  {
    case 1:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_59;
      }

      if (v23 <= -32769.0)
      {
        goto LABEL_67;
      }

      if (v23 >= 32768.0)
      {
        goto LABEL_75;
      }

      v24 = v23;
      v25 = MEMORY[0x277D84958];
      v26 = &protocol witness table for Int16;
      goto LABEL_45;
    case 2:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_55;
      }

      if (v17 <= -2147500000.0)
      {
        goto LABEL_63;
      }

      if (v17 >= 2147500000.0)
      {
        goto LABEL_71;
      }

      v36 = v17;
      v37 = 0;
      v38 = 1;
      OUTLINED_FUNCTION_2_37();
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 1;
      return sub_25BB06134(v13, v14, v15);
    case 3:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_56;
      }

      if (v18 <= -9.2234e18)
      {
        goto LABEL_64;
      }

      if (v18 >= 9.2234e18)
      {
        goto LABEL_72;
      }

      v19 = v18;
      v20 = MEMORY[0x277D84A28];
      v21 = &protocol witness table for Int64;
      goto LABEL_32;
    case 4:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
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
        goto LABEL_70;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_62;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
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
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        *&v40 = 0;
        *(&v40 + 1) = 0xE000000000000000;
        sub_25BCB70FC();
        MEMORY[0x25F876C90](0xD000000000000027, 0x800000025BCDE640);
        LOBYTE(v36) = 9;
        sub_25BCB73CC();
        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        v44 = 9;
        sub_25BA97890();
      }

      v10 = v16;
      v11 = MEMORY[0x277D84B78];
      v12 = &protocol witness table for UInt8;
LABEL_15:
      *(&v41 + 1) = v11;
      *v42 = v12;
      LOBYTE(v40) = v10;
LABEL_52:
      sub_25BB9483C(&v40, &v36);
      v29 = v36;
      v30 = v37;
      v31 = v38;
      v34[0] = v36;
      v34[1] = v37;
      v35 = v38;
      v39 = 1;
      v40 = 0u;
      v41 = 0u;
      memset(v42, 0, sizeof(v42));
      v43 = 1;
      sub_25BBA10A8(v34, a2, a3, &v40);
      v13 = v29;
      v14 = v30;
      v15 = v31;
      return sub_25BB06134(v13, v14, v15);
    case 5:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_68;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
        goto LABEL_76;
      }

      v24 = v27;
      v25 = MEMORY[0x277D84C58];
      v26 = &protocol witness table for UInt16;
LABEL_45:
      *(&v41 + 1) = v25;
      *v42 = v26;
      LOWORD(v40) = v24;
      goto LABEL_52;
    case 6:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_61;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
        goto LABEL_77;
      }

      *(&v41 + 1) = MEMORY[0x277D84CC0];
      *v42 = &protocol witness table for UInt32;
      LODWORD(v40) = v28;
      goto LABEL_52;
    case 7:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_57;
      }

      OUTLINED_FUNCTION_36_8();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_65;
      }

      OUTLINED_FUNCTION_29_12();
      if (!_NF)
      {
        goto LABEL_73;
      }

      v19 = v22;
      v20 = MEMORY[0x277D84D38];
      v21 = &protocol witness table for UInt64;
LABEL_32:
      *(&v41 + 1) = v20;
      *v42 = v21;
      *&v40 = v19;
      goto LABEL_52;
    case 8:
      __asm { FCVT            H0, S0; jumptable 000000025BBA14D8 case 8 }

      v36 = LODWORD(_S0);
      v37 = 0;
      v38 = 2;
      OUTLINED_FUNCTION_2_37();
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 2;
      return sub_25BB06134(v13, v14, v15);
    case 9:
      goto LABEL_78;
    case 0xA:
      v36 = LODWORD(_S0);
      v37 = 0;
      v38 = 3;
      OUTLINED_FUNCTION_2_37();
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 3;
      return sub_25BB06134(v13, v14, v15);
    case 0xB:
      *(&v41 + 1) = MEMORY[0x277D839F8];
      *v42 = &protocol witness table for Double;
      *&v40 = _S0;
      goto LABEL_52;
    case 0xC:
      v36 = _S0 > 0.0;
      v37 = 0;
      v38 = 0;
      OUTLINED_FUNCTION_2_37();
      v13 = OUTLINED_FUNCTION_27_14();
      v15 = 0;
      return sub_25BB06134(v13, v14, v15);
    default:
      OUTLINED_FUNCTION_1_36();
      if (!(_NF ^ _VF | _ZF))
      {
        goto LABEL_58;
      }

      OUTLINED_FUNCTION_29_12();
      if (_NF ^ _VF | _ZF)
      {
        goto LABEL_66;
      }

      if (v9 >= 128.0)
      {
        goto LABEL_74;
      }

      v10 = v9;
      v11 = MEMORY[0x277D84900];
      v12 = &protocol witness table for Int8;
      goto LABEL_15;
  }
}

uint64_t sub_25BBA18D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = *(a3 + 16);
  if (v9)
  {
    v10 = (a3 + 48);
    v11 = MEMORY[0x277D84F90];
    do
    {
      v12 = *(v10 - 2);
      v13 = *(v10 - 1);
      v14 = *v10;
      sub_25BCB617C();

      v16 = sub_25BBA0B64(v15);
      v18 = v17;
      sub_25BCB617C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v11 + 16);
        sub_25BAFE1C4();
        v11 = v22;
      }

      v19 = *(v11 + 16);
      if (v19 >= *(v11 + 24) >> 1)
      {
        sub_25BAFE1C4();
        v11 = v23;
      }

      *(v11 + 16) = v19 + 1;
      v20 = (v11 + 32 * v19);
      v20[4] = v12;
      v20[5] = v13;
      v20[6] = v16;
      v20[7] = v18;
      v10 += 3;
      --v9;
    }

    while (v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v31 = sub_25BCB614C();
  sub_25BAFCBDC();
  sub_25BBA1A84(a1, a2, v11, v31, a5, v24, a7, v25, a9);
}

void sub_25BBA1A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_25BB2BA50(0, &qword_28154BE08, off_279970C18);
  v10 = MEMORY[0x277D84F90];
  v126 = sub_25BCB614C();
  v130 = MEMORY[0x277D84FA0];
  v116 = a3;
  sub_25BB9FD70(a3);
  v12 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5088, &qword_25BCC2AB8);
  *(swift_initStackObject() + 16) = v12;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D28, &qword_25BCC5B80);
  inited = swift_initStackObject();
  *(inited + 16) = v12;
  *(inited + 24) = 0;
  sub_25BCB617C();

  while (1)
  {
    v14 = sub_25BBA4560();
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v129 = v10;
    v120 = v14;
    sub_25BBA242C(v14, v15, v116, a4);
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      v123 = v16;
      sub_25BB2BA50(0, &qword_28154BDD8, off_279970BF0);
      v20 = (v18 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        OUTLINED_FUNCTION_21_17();
        swift_beginAccess();
        swift_bridgeObjectRetain_n();
        sub_25BADBE78(&v128, v21, v22);
        swift_endAccess();

        sub_25BBA3BD8(v21, v22, &selRef_initWithName_);
        MEMORY[0x25F876F40]();
        if (*((v129 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v129 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25BCB67AC();
        }

        sub_25BCB680C();
        v20 += 2;
        --v19;
      }

      while (v19);
      v23 = v129;
      v10 = MEMORY[0x277D84F90];
      v16 = v123;
    }

    else
    {
      v23 = v10;
    }

    if (!(v23 >> 62))
    {
      v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v24)
      {
        goto LABEL_12;
      }

      if (v24 != 1)
      {
        sub_25BCB617C();
        sub_25BCB78CC();
LABEL_18:
        sub_25BB2BA50(0, &qword_28154BDE0, off_279970BE0);
        v26 = sub_25BBA2574();
        goto LABEL_19;
      }

      goto LABEL_14;
    }

    if (sub_25BCB749C())
    {
      if (sub_25BCB749C() != 1)
      {
        sub_25BCB617C();
        sub_25BCB74EC();

        goto LABEL_18;
      }

LABEL_14:
      if ((v23 & 0xC000000000000001) == 0)
      {
        v25 = v126;
        if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v124 = *(v23 + 32);
        goto LABEL_20;
      }

      v26 = MEMORY[0x25F8779B0](0, v23);
LABEL_19:
      v124 = v26;
      v25 = v126;
LABEL_20:
      swift_isUniquelyReferenced_nonNull_native();
      v27 = sub_25BA9266C(v120, v16);
      if (__OFADD__(v25[2], (v28 & 1) == 0))
      {
        goto LABEL_69;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D30, &qword_25BCC5B88);
      if (sub_25BCB745C())
      {
        v31 = v120;
        v32 = sub_25BA9266C(v120, v16);
        if ((v30 & 1) != (v33 & 1))
        {
          goto LABEL_74;
        }

        v29 = v32;
      }

      else
      {
        v31 = v120;
      }

      v126 = v25;
      if (v30)
      {
        v34 = v25[7];
        v35 = *(v34 + 8 * v29);
        *(v34 + 8 * v29) = v124;
      }

      else
      {
        v25[(v29 >> 6) + 8] |= 1 << v29;
        v36 = (v25[6] + 16 * v29);
        *v36 = v31;
        v36[1] = v16;
        *(v25[7] + 8 * v29) = v124;
        v37 = v25[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_71;
        }

        v25[2] = v39;
      }
    }

    else
    {
LABEL_12:
    }
  }

  v40 = *(a5 + 16);
  if (!v40)
  {
LABEL_44:
    v86 = *(a7 + 16);
    v87 = MEMORY[0x277D84F90];
    if (v86)
    {
      v127 = MEMORY[0x277D84F90];
      sub_25BCB727C();
      v88 = 0;
      v122 = v86;
      do
      {
        v89 = a7 + 32 + 32 * v88;
        v90 = *v89;
        v91 = *(v89 + 8);
        v92 = *(v89 + 16);
        v93 = *(v89 + 24);
        v94 = *(v92 + 16);
        sub_25BCB617C();
        sub_25BCB617C();
        if (v94)
        {
          v128 = v87;
          sub_25BCB727C();
          v95 = (v92 + 32);
          do
          {
            v96 = *v95++;
            sub_25BCB6A6C();
            sub_25BCB723C();
            v97 = v128[2];
            sub_25BCB728C();
            sub_25BCB729C();
            sub_25BCB725C();
            --v94;
          }

          while (v94);
          v98 = v128;
          v87 = MEMORY[0x277D84F90];
        }

        else
        {
          v98 = v87;
        }

        ++v88;
        v99 = 2;
        switch(v93)
        {
          case 1:
            v99 = 6;
            break;
          case 2:
          case 3:
            v99 = 7;
            break;
          case 4:
            v99 = 9;
            break;
          case 5:
            v99 = 10;
            break;
          case 6:
            v99 = 11;
            break;
          case 7:
            v99 = 12;
            break;
          case 8:
            break;
          case 9:
            goto LABEL_73;
          case 10:
            v99 = 3;
            break;
          case 11:
            v99 = 4;
            break;
          case 12:
            v99 = 0;
            break;
          default:
            v99 = 5;
            break;
        }

        sub_25BCB617C();
        v100 = objc_allocWithZone(SNNMILValueDescriptor);
        sub_25BBA44B0(v98, v99);

        sub_25BCB723C();
        v101 = *(v127 + 16);
        sub_25BCB728C();
        sub_25BCB729C();
        sub_25BCB725C();
      }

      while (v88 != v122);
    }

    Strong = swift_unknownObjectUnownedLoadStrong();
    v103 = sub_25BCB633C();
    v104 = sub_25BCB60FC();

    sub_25BB2BA50(0, &qword_28154BD98, &off_279970C20);
    v105 = sub_25BCB672C();

    v106 = 0;
    if ((*(a9 + 57) & 1) == 0)
    {
      v107 = *(a9 + 24);
      v108 = *(a9 + 32);
      v110 = *a9;
      v109 = *(a9 + 8);
      v111 = *(a9 + 16);
      sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
      v112 = sub_25BC1E9E0(v110, v109, v111);
      if ((v108 | v107) < 0)
      {
        goto LABEL_72;
      }

      v106 = sub_25BBA0884(v112, v113, v107, v108);
    }

    return;
  }

  v41 = (a5 + 64);
  while (1)
  {
    v118 = v41;
    v119 = v40;
    v42 = *(v41 - 4);
    v43 = *(v41 - 3);
    v45 = *(v41 - 2);
    v44 = *(v41 - 1);
    v46 = *v41;
    sub_25BCB617C();
    v47 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v47, v48, v49);
    sub_25BCB617C();
    v50 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v50, v51, v52);

    v53 = OUTLINED_FUNCTION_3_25();
    sub_25BB06134(v53, v54, v55);
    sub_25BCB617C();
    v56 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v56, v57, v58);
    v59 = OUTLINED_FUNCTION_3_25();
    sub_25BB06134(v59, v60, v61);
    sub_25BCB617C();
    v62 = OUTLINED_FUNCTION_3_25();
    sub_25BB060F0(v62, v63, v64);

    v121 = sub_25BB3E4C0();
    v65 = OUTLINED_FUNCTION_3_25();
    sub_25BB06134(v65, v66, v67);
    swift_isUniquelyReferenced_nonNull_native();
    v128 = v126;
    v125 = v42;
    v68 = sub_25BA9266C(v42, v43);
    if (__OFADD__(*(v126 + 16), (v69 & 1) == 0))
    {
      break;
    }

    v70 = v68;
    v71 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D30, &qword_25BCC5B88);
    if (sub_25BCB745C())
    {
      v72 = sub_25BA9266C(v42, v43);
      if ((v71 & 1) != (v73 & 1))
      {
        goto LABEL_74;
      }

      v70 = v72;
    }

    if (v71)
    {

      v126 = v128;
      v74 = v128[7];
      v75 = *(v74 + 8 * v70);
      *(v74 + 8 * v70) = v121;

      v76 = OUTLINED_FUNCTION_3_25();
      sub_25BB06134(v76, v77, v78);
    }

    else
    {
      v79 = v128;
      v128[(v70 >> 6) + 8] |= 1 << v70;
      v80 = (v79[6] + 16 * v70);
      *v80 = v125;
      v80[1] = v43;
      *(v79[7] + 8 * v70) = v121;

      v81 = OUTLINED_FUNCTION_3_25();
      sub_25BB06134(v81, v82, v83);
      v84 = v79[2];
      v38 = __OFADD__(v84, 1);
      v85 = v84 + 1;
      if (v38)
      {
        goto LABEL_68;
      }

      v126 = v79;
      v79[2] = v85;
    }

    v41 = v118 + 40;
    v40 = v119 - 1;
    if (v119 == 1)
    {
      goto LABEL_44;
    }
  }

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
LABEL_73:
  sub_25BCB74CC();
  __break(1u);
LABEL_74:
  sub_25BCB795C();
  __break(1u);
}

void sub_25BBA242C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v6 = sub_25BA9266C(a1, a2);
    if (v7)
    {
      v8 = *(*(a4 + 56) + 8 * v6);
      v9 = *(v8 + 16);
      if (v9)
      {
        v20 = MEMORY[0x277D84F90];
        sub_25BCB617C();
        sub_25BB004E4();
        v10 = 0;
        v19 = a3 + 32;
        v11 = *(a3 + 16);
        while (v10 < *(v8 + 16))
        {
          v12 = *(v8 + 8 * v10 + 32);
          if (v12 >= v11)
          {
            goto LABEL_13;
          }

          v13 = v19 + 32 * v12;
          v15 = *(v13 + 16);
          v14 = *(v13 + 24);
          v17 = *(v20 + 16);
          v16 = *(v20 + 24);
          sub_25BCB617C();
          if (v17 >= v16 >> 1)
          {
            sub_25BB004E4();
          }

          ++v10;
          *(v20 + 16) = v17 + 1;
          v18 = v20 + 16 * v17;
          *(v18 + 32) = v15;
          *(v18 + 40) = v14;
          if (v9 == v10)
          {

            return;
          }
        }

        __break(1u);
LABEL_13:
        __break(1u);
      }
    }
  }
}

id sub_25BBA2574()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_25BB2BA50(0, &qword_28154BE08, off_279970C18);
  v1 = sub_25BCB672C();

  v2 = [v0 initWithValues_];

  return v2;
}

uint64_t sub_25BBA25FC(uint64_t a1, uint64_t a2)
{
  sub_25BAAF54C(*(a1 + 88));
  sub_25BAAF54C(*(a1 + 152));
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BAFD0D0();
  v6 = *(*(v2 + 16) + 16);
  sub_25BAFD178(v6);
  v7 = *(v2 + 16);
  *(v7 + 16) = v6 + 1;
  sub_25BAD6FB0(a1, v7 + 240 * v6 + 32);
  *(v2 + 16) = v7;
  swift_endAccess();
  OUTLINED_FUNCTION_21_17();
  swift_beginAccess();
  sub_25BCB617C();
  sub_25BAFD0B8();
  v8 = *(*(v2 + 56) + 16);
  sub_25BAFD210(v8);
  v9 = *(v2 + 56);
  *(v9 + 16) = v8 + 1;
  *(v9 + 8 * v8 + 32) = a2;
  *(v2 + 56) = v9;
  swift_endAccess();
  sub_25BBA0910(v26);
  v10 = v27;
  sub_25BCB617C();
  result = sub_25BA9AC78(v26);
  v12 = 0;
  v25 = *(v10 + 16);
  v28 = v10;
  for (i = (v10 + 40); ; i += 2)
  {
    if (v25 == v12)
    {

      return sub_25BBA288C();
    }

    if (v12 >= *(v28 + 16))
    {
      break;
    }

    v14 = *(i - 1);
    v15 = *i;
    swift_getObjectType();
    if (!dynamic_cast_existential_1_conditional(v14))
    {
      swift_unknownObjectRetain();

      ObjectType = swift_getObjectType();
      v21 = (*(v15 + 24))(ObjectType, v15);
      v23 = v22;
      sub_25BBA41B4();
      swift_allocError();
      *v24 = v21;
      *(v24 + 8) = v23;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0;
      swift_willThrow();
      goto LABEL_10;
    }

    v17 = v16;
    v18 = swift_getObjectType();
    v19 = *(v17 + 16);
    swift_unknownObjectRetain_n();
    v19(v2, v18, v17);
    if (v3)
    {

      swift_unknownObjectRelease();
LABEL_10:
      swift_unknownObjectRelease();
      return sub_25BBA288C();
    }

    result = swift_unknownObjectRelease_n();
    ++v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBA288C()
{
  swift_beginAccess();
  sub_25BB3BEFC();
  swift_endAccess();

  swift_beginAccess();
  sub_25BB3BF8C(v1);
  swift_endAccess();
  return sub_25BA9AC78(v1);
}

uint64_t sub_25BBA291C(char a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9)
{
  v14 = *a8;
  HIDWORD(v41) = *(a8 + 8);
  v15 = sub_25BBCBB14(a1);
  v45 = v16;
  v47 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v18 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE70);
  v18[3].n128_u64[0] = a2;
  v18[3].n128_u64[1] = a3;
  v18[4].n128_u64[0] = 121;
  v18[4].n128_u64[1] = v19;
  v18[5].n128_u64[0] = a4;
  v18[5].n128_u64[1] = a5;
  sub_25BCB617C();
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v20 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_35_8();
  v51 = sub_25BCB614C();
  sub_25BAFA1D4(inited, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, a6, v45, v47, a9, v50);
  v29 = v28;
  swift_setDeallocating();
  v30 = sub_25BC0C500();
  sub_25BAFCBDC(v30);
  v31 = v29;
  v32 = v51;
  OUTLINED_FUNCTION_35_8();
  v52 = sub_25BCB614C();
  sub_25BAFCD30(v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_25BCBAE50;
  *(v33 + 32) = v44;
  *(v33 + 40) = a7;
  *(v33 + 48) = v14;
  *(v33 + 56) = v42;
  sub_25BCB617C();
  sub_25BCB617C();
  OUTLINED_FUNCTION_35_8();
  sub_25BCB614C();
  v34 = sub_25BAF9B54(v33);
  swift_setDeallocating();
  sub_25BC0C4EC();
  sub_25BAFC990();
  sub_25BBA1A84(v48, v46, v31, v32, v20, v35, v34, v36, v49);
}

uint64_t sub_25BBA2B64(char a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v10 = *a6;
  HIDWORD(v36) = *(a6 + 8);
  v11 = sub_25BBCBBB4(a1);
  v40 = v12;
  v42 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB39B8, &unk_25BCC5B90);
  inited = swift_initStackObject();
  v14 = OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE50);
  v14[3].n128_u64[0] = a2;
  v14[3].n128_u64[1] = a3;
  sub_25BCB617C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  v15 = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_9_23();
  v45 = sub_25BCB614C();
  sub_25BAFA1D4(inited, v16, v17, v18, v19, v20, v21, v22, v32, v33, 1, 2, v35, v36, a4, v40, v42);
  v24 = v23;
  swift_setDeallocating();
  v25 = sub_25BC0C500();
  sub_25BAFCBDC(v25);
  v26 = v45;
  OUTLINED_FUNCTION_9_23();
  v46 = sub_25BCB614C();
  sub_25BAFCD30(v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v27 = swift_initStackObject();
  *(v27 + 16) = v34;
  *(v27 + 32) = v39;
  *(v27 + 40) = a5;
  *(v27 + 48) = v10;
  *(v27 + 56) = v37;
  sub_25BCB617C();
  sub_25BCB617C();
  OUTLINED_FUNCTION_9_23();
  sub_25BCB614C();
  v28 = sub_25BAF9B54(v27);
  swift_setDeallocating();
  sub_25BC0C4EC();
  sub_25BAFC990();
  sub_25BBA1A84(v43, v41, v24, v26, v15, v29, v28, v30, a7);
}

uint64_t sub_25BBA2D88(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a4;
  v8 = *(a4 + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB38D8, &qword_25BCC5BA0);
  inited = swift_initStackObject();
  OUTLINED_FUNCTION_17_19(inited, xmmword_25BCBAE50)[3].n128_u64[0] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5DF0, &qword_25BCC2AA0);
  OUTLINED_FUNCTION_24_10();
  v44 = sub_25BCB614C();
  v10 = sub_25BAD8178(inited);
  swift_setDeallocating();
  v11 = sub_25BC0C4C4();
  sub_25BAD8324(v11);
  v12 = v10;
  v34 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5D38, &qword_25BCC5BA8);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_25BCBAE50;
  *(v13 + 32) = 0x6570797464;
  *(v13 + 40) = 0xE500000000000000;
  *(v13 + 48) = sub_25BB9FC3C();
  *(v13 + 56) = v14;
  *(v13 + 64) = 4;
  OUTLINED_FUNCTION_24_10();
  v45 = sub_25BCB614C();
  sub_25BAFA0CC(v13, v15, v16, v17, v18, v19, v20, v21, v22, v32, v33, v34, a2, a5, v39, 1, 2, v41, v42, v43);
  v24 = v23;
  swift_setDeallocating();
  v25 = sub_25BC0C4D8();
  sub_25BAFCD30(v25);
  v26 = v24;
  v27 = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3900, &qword_25BCBB8A8);
  v28 = swift_initStackObject();
  *(v28 + 16) = v40;
  *(v28 + 32) = v36;
  *(v28 + 40) = a3;
  *(v28 + 48) = v7;
  *(v28 + 56) = v8;
  sub_25BCB617C();
  sub_25BCB617C();
  OUTLINED_FUNCTION_24_10();
  v46 = sub_25BCB614C();
  v29 = sub_25BAF9B54(v28);
  swift_setDeallocating();
  sub_25BC0C4EC();
  sub_25BAFC990();
  sub_25BBA18D8(1953718627, 0xE400000000000000, v12, v30, v26, v27, v29, v46, v38);
}

uint64_t sub_25BBA2FF8(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  *v15 = a3;
  *&v15[8] = a4;
  sub_25BCB617C();
  MEMORY[0x25F876C90](0x7669746167656E5FLL, 0xED0000656E6F5F65);
  v11 = *v15;
  LOBYTE(v13) = v10;
  v17 = 1;
  memset(v15, 0, sizeof(v15));
  v16 = 1;
  sub_25BBA1494(&v13, v11, *(&v11 + 1), -1.0);
  v13 = v9;
  v14 = v10;
  sub_25BBA291C(2, a1, a2, v11, *(&v11 + 1), a3, a4, &v13, v15);
}

void sub_25BBA3110(uint64_t a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50D0, &unk_25BCC5B60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25BCBAE50;
  *(v3 + 32) = sub_25BBA0B64(a1);
  *(v3 + 40) = v4;
  v5 = sub_25BCB672C();

  [Strong retainOutputsWithNames_];
}

uint64_t sub_25BBA31D0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!(a3 >> 62))
  {
    v7 = sub_25BAC4018();
    return MEMORY[0x25F878200](v7);
  }

  if (a3 >> 62 != 1)
  {
    v9 = a3 & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    (*(v9 + 16))(ObjectType, v9);
    sub_25BCB625C();

    v7 = a4;
    return MEMORY[0x25F878200](v7);
  }

  v4 = a3 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = swift_getObjectType();
  (*(v4 + 16))(v5, v4);
  sub_25BCB625C();
}

uint64_t sub_25BBA32B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (!(a2 >> 62))
  {
    if (a5 >> 62)
    {
      return 0;
    }

    v20 = sub_25BAC4018();
    return v20 == sub_25BAC4018();
  }

  if (a2 >> 62 != 1)
  {
    if (a5 >> 62 != 2)
    {
      return 0;
    }

    v24 = a2 & 0x3FFFFFFFFFFFFFFFLL;
    v25 = a5 & 0x3FFFFFFFFFFFFFFFLL;
    ObjectType = swift_getObjectType();
    v27 = (*(v24 + 16))(ObjectType, v24);
    v29 = v28;
    v31 = v30;
    v32 = swift_getObjectType();
    if (v27 != (*(v25 + 16))(v32, v25))
    {
      goto LABEL_20;
    }

    if (v29 == v33 && v31 == v34)
    {
    }

    else
    {
      v36 = sub_25BCB789C();

      if ((v36 & 1) == 0)
      {
        return 0;
      }
    }

    return a3 == a6;
  }

  if (a5 >> 62 != 1)
  {
    return 0;
  }

  v6 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  v7 = a5 & 0x3FFFFFFFFFFFFFFFLL;
  v8 = swift_getObjectType();
  v9 = (*(v6 + 16))(v8, v6);
  v11 = v10;
  v13 = v12;
  v14 = swift_getObjectType();
  if (v9 != (*(v7 + 16))(v14, v7))
  {
LABEL_20:

    return 0;
  }

  if (v11 == v15 && v13 == v16)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_35_8();
    v18 = sub_25BCB789C();

    return v18 & 1;
  }
}

uint64_t sub_25BBA34D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_25BCB79CC();
  sub_25BBA31D0(v7, a1, a2, a3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BBA3550()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_25BCB79CC();
  sub_25BBA31D0(v5, v1, v2, v3);
  return sub_25BCB7A3C();
}

uint64_t sub_25BBA35C4(uint64_t a1, char a2, char a3, _OWORD *a4)
{
  v5 = v4;
  sub_25BAD6FB0(a1, v5 + 16);
  *(v5 + 314) = a2;
  *(v5 + 315) = a3;
  v10 = a4[1];
  *(v5 + 256) = *a4;
  *(v5 + 272) = v10;
  *(v5 + 288) = a4[2];
  *(v5 + 298) = *(a4 + 42);
  sub_25BBA3650(a2);
  LOBYTE(a4) = v11;
  sub_25BA9AC78(a1);
  *(v5 + 316) = a4;
  return v5;
}

void sub_25BBA3650(char a1)
{
  v3 = 0;
  v4 = *(v1 + 120);
  v5 = *(v4 + 16);
  v6 = v4 + 32;
  v7 = MEMORY[0x277D84F90];
LABEL_2:
  v8 = (v6 + 16 * v3);
  while (v5 != v3)
  {
    if (v3 >= *(v4 + 16))
    {
      __break(1u);
      return;
    }

    ++v3;
    v9 = v8 + 2;
    v10 = *v8;
    swift_getObjectType();
    v11 = dynamic_cast_existential_1_conditional(v10);
    v8 = v9;
    if (v11)
    {
      v13 = v11;
      v14 = v12;
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = v7[2];
        sub_25BAFD334();
        v7 = v18;
      }

      v15 = v7[2];
      if (v15 >= v7[3] >> 1)
      {
        sub_25BAFD334();
        v7 = v19;
      }

      v7[2] = v15 + 1;
      v16 = &v7[2 * v15];
      v16[4] = v13;
      v16[5] = v14;
      v6 = v4 + 32;
      goto LABEL_2;
    }
  }

  v20 = v7[2];
  if (v20)
  {
    v21 = 0;
    v22 = v7 + 5;
    do
    {
      v23 = *(v22 - 1);
      v24 = *v22;
      ObjectType = swift_getObjectType();
      swift_unknownObjectRetain();
      v26 = sub_25BBF7534(a1 & 1, ObjectType, v24);
      swift_unknownObjectRelease();
      if (v21 <= v26)
      {
        v21 = v26;
      }

      v22 += 2;
      --v20;
    }

    while (v20);
  }
}

void sub_25BBA37F8(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  sub_25BB2BA50(0, &qword_28154BE00, off_279970BC0);
  v6 = sub_25BBF749C(*(a1 + 316));
  v8 = sub_25BBA3BD8(v6, v7, &selRef_initWithOpsetName_);
  v9 = 0;
  if ((*(a1 + 313) & 1) == 0)
  {
    v10 = *(a1 + 280);
    v11 = *(a1 + 288);
    v13 = *(a1 + 256);
    v12 = *(a1 + 264);
    v14 = *(a1 + 272);
    sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
    v15 = sub_25BC1E9E0(v13, v12, v14);
    if ((v11 | v10) < 0)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = sub_25BBA0884(v15, v16, v10, v11);
  }

  sub_25BB2BA50(0, &qword_28154BDA8, off_279970C08);
  v49 = v8;
  v17 = sub_25BBA3C48(v49, v9);
  v18 = sub_25BCB633C();
  v19 = 0;
  v50 = v17;
  if (*(a1 + 313))
  {
LABEL_7:
    v27 = [v17 functionWithName:v18 location:v19];

    sub_25BAD6FB0(a1 + 16, v53);
    v28 = *(a1 + 314);
    v29 = *(a1 + 315);
    type metadata accessor for MILFunctionBuilder();
    swift_allocObject();
    v48 = v27;
    v54 = sub_25BBA09D4(v53, v48, v28, v29);
    v30 = 0;
    v31 = *(a1 + 136);
    v51 = v31;
    v52 = *(v31 + 16);
    for (i = (v31 + 40); ; i += 2)
    {
      if (v52 == v30)
      {
        sub_25BBA3CA4(v54);
        sub_25BBA3FA8();
        v39 = [v50 build];

        *a3 = v39;
        return;
      }

      if (v30 >= *(v51 + 16))
      {
        break;
      }

      v33 = *(i - 1);
      v34 = *i;
      swift_getObjectType();
      if (!dynamic_cast_existential_1_conditional(v33))
      {
        ObjectType = swift_getObjectType();
        v41 = *(v34 + 24);
        swift_unknownObjectRetain();
        v42 = v41(ObjectType, v34);
        v44 = v43;
        sub_25BBA41B4();
        v4 = swift_allocError();
        *v45 = v42;
        *(v45 + 8) = v44;
        *(v45 + 16) = 0;
        *(v45 + 24) = 0;
        *(v45 + 32) = 0;
        swift_willThrow();
LABEL_15:
        swift_unknownObjectRelease();

        *a2 = v4;
        return;
      }

      v36 = v35;
      v37 = swift_getObjectType();
      v38 = *(v36 + 16);
      swift_unknownObjectRetain_n();
      v38(v54, v37, v36);
      swift_unknownObjectRelease();
      if (v3)
      {
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      ++v30;
    }

    __break(1u);
    goto LABEL_17;
  }

  v20 = *(a1 + 280);
  v21 = *(a1 + 288);
  v23 = *(a1 + 256);
  v22 = *(a1 + 264);
  v24 = *(a1 + 272);
  sub_25BB2BA50(0, &qword_28154BDA0, off_279970C10);
  v25 = sub_25BC1E9E0(v23, v22, v24);
  if (((v21 | v20) & 0x8000000000000000) == 0)
  {
    v19 = sub_25BBA0884(v25, v26, v20, v21);
    v17 = v50;
    goto LABEL_7;
  }

LABEL_18:
  __break(1u);
}

id sub_25BBA3BD8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  OUTLINED_FUNCTION_9_23();
  v5 = sub_25BCB633C();

  v6 = [v4 *a3];

  return v6;
}

id sub_25BBA3C48(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a1 location:a2];

  return v4;
}

uint64_t sub_25BBA3CA4(uint64_t result)
{
  v2 = result;
  v3 = *(v1 + 104);
  if (v3 >> 62)
  {
    goto LABEL_40;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      if (v4 < 1)
      {
        __break(1u);
        return result;
      }

      v5 = v42[15];
      v6 = v42[16];
      v44 = v3 & 0xC000000000000001;
      swift_beginAccess();
      v7 = 0;
      v39 = v5;
      v40 = v3 + 32;
      v38 = v5 + 32;
      v43 = v6;
      v41 = v4;
      while (1)
      {
        if (v44)
        {
          v8 = MEMORY[0x25F8779B0](v7, v3);
        }

        else
        {
          v8 = *(v40 + 8 * v7);
        }

        v9 = sub_25BAC44E4();
        if (!*(v6 + 16))
        {

          goto LABEL_14;
        }

        v11 = sub_25BA9266C(v9, v10);
        v13 = v12;

        if (v13)
        {
          break;
        }

LABEL_14:
        v19 = v42[19];
        v18 = v42[20];
        v20 = sub_25BAC44E4();
        if (!*(v18 + 16))
        {

LABEL_21:
          v17 = sub_25BAC44E4();
          v16 = v27;
          goto LABEL_22;
        }

        v22 = sub_25BA9266C(v20, v21);
        v24 = v23;

        if ((v24 & 1) == 0)
        {
          goto LABEL_21;
        }

        v25 = *(*(v18 + 56) + 8 * v22);
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_38;
        }

        if (v25 >= *(v19 + 16))
        {
          goto LABEL_39;
        }

        v26 = v19 + 16 * v25;
        v17 = *(v26 + 32);
        v16 = *(v26 + 40);
LABEL_19:
        sub_25BCB617C();
LABEL_22:
        v28 = *(v2 + 40);
        if (*(v28 + 16))
        {
          v29 = v3;
          v30 = v2;
          v31 = *(v28 + 40);
          sub_25BCB79CC();
          sub_25BCB617C();
          sub_25BCB625C();
          v32 = sub_25BCB7A3C();
          v33 = ~(-1 << *(v28 + 32));
          while (1)
          {
            v34 = v32 & v33;
            if (((*(v28 + 56 + (((v32 & v33) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v32 & v33)) & 1) == 0)
            {
              break;
            }

            v35 = (*(v28 + 48) + 16 * v34);
            if (*v35 != v17 || v35[1] != v16)
            {
              v37 = sub_25BCB789C();
              v32 = v34 + 1;
              if ((v37 & 1) == 0)
              {
                continue;
              }
            }

            v2 = v30;
            sub_25BBA0EF4(v8);

            goto LABEL_33;
          }

          v2 = v30;
LABEL_33:
          v3 = v29;
          v4 = v41;
        }

        else
        {
        }

        ++v7;
        v6 = v43;
        if (v7 == v4)
        {
          return result;
        }
      }

      v14 = *(*(v6 + 56) + 8 * v11);
      if ((v14 & 0x8000000000000000) == 0)
      {
        if (v14 >= *(v39 + 16))
        {
          goto LABEL_37;
        }

        v15 = (v38 + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        goto LABEL_19;
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      result = sub_25BCB749C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_25BBA3FA8()
{
  v1 = *(v0 + 168);
  if (v1 >> 62)
  {
    v2 = sub_25BCB749C();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v2; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25F8779B0](i, v1);
      }

      else
      {
        v4 = *(v1 + 8 * i + 32);
      }

      sub_25BBA3110(v4);
    }
  }
}

uint64_t sub_25BBA4068()
{
  sub_25BA9AC78(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_25BBA40D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 24))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 57) >> 5) | (4 * ((*(a1 + 8) >> 57) & 0x18 | *(a1 + 8) & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
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

uint64_t sub_25BBA4124(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = 0;
    }
  }

  return result;
}

unint64_t sub_25BBA41B4()
{
  result = qword_27FBB5D20;
  if (!qword_27FBB5D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB5D20);
  }

  return result;
}

unint64_t sub_25BBA4208()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  switch(*(v0 + 32))
  {
    case 1:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v13 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v13);
      OUTLINED_FUNCTION_38_9();
      v14 = OUTLINED_FUNCTION_15_18();
      MEMORY[0x25F876C90](v14);
      goto LABEL_8;
    case 2:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();

      v16 = 0xD000000000000019;
      v8 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v8);
      OUTLINED_FUNCTION_38_9();
      v9 = OUTLINED_FUNCTION_15_18();
      MEMORY[0x25F876C90](v9);
      v10 = 46;
      v11 = 0xE100000000000000;
      break;
    case 3:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v12 = OUTLINED_FUNCTION_15_18();
      MEMORY[0x25F876C90](v12);
      MEMORY[0x25F876C90](0x7269757165722060, 0xEF60207962206465);
      v7 = OUTLINED_FUNCTION_10_21();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      MEMORY[0x25F876C90](0x7265706F20656854, 0xEF60206E6F697461);
      v6 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v6);
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v7 = OUTLINED_FUNCTION_15_18();
LABEL_6:
      MEMORY[0x25F876C90](v7);
      v10 = 11872;
      v11 = 0xE200000000000000;
      break;
    default:
      OUTLINED_FUNCTION_21_2();
      sub_25BCB70FC();
      OUTLINED_FUNCTION_37_7();
      OUTLINED_FUNCTION_26_15();
      MEMORY[0x25F876C90]();
      v5 = OUTLINED_FUNCTION_10_21();
      MEMORY[0x25F876C90](v5);
LABEL_8:
      OUTLINED_FUNCTION_26_15();
      break;
  }

  MEMORY[0x25F876C90](v10, v11);
  return v16;
}

unint64_t sub_25BBA445C()
{
  result = qword_28154EA70;
  if (!qword_28154EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28154EA70);
  }

  return result;
}

id sub_25BBA44B0(uint64_t a1, uint64_t a2)
{
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v4 = sub_25BCB672C();

  v5 = sub_25BCB633C();

  v6 = [v2 initWithShape:v4 dataType:a2 name:v5];

  return v6;
}

uint64_t sub_25BBA4560()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 16);
  if (v2 == v3)
  {
    return 0;
  }

  if (v2 < v3)
  {
    v5 = v1 + 16 * v2;
    v4 = *(v5 + 32);
    v6 = *(v5 + 40);
    *(v0 + 24) = v2 + 1;
    sub_25BCB617C();
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_25BBA45C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4828, &qword_25BCBF518);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25BBA4638(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4828, &qword_25BCBF518);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_25BBA46A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[6];
  sub_25BBA12C0(a1, v2[4], v2[7], a2);
}

uint64_t sub_25BBA46C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_35();
  v10 = sub_25BB73218(*(a3 + 56));
  if (v10 && (v11 = sub_25BB3EFD4(a1, a5 | 0x8000000000000000, a2, v10), v13 = v12, , v13))
  {
    if (*(a3 + 73) == 1)
    {
      OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v14)
        {
          break;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v19)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v15)
        {
          OUTLINED_FUNCTION_39_10();
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2(v16);
            if ((v17 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_8_25();
            v19 = v19 && v11 == v18;
            if (!v19)
            {
              OUTLINED_FUNCTION_18_2();
              v16 = OUTLINED_FUNCTION_35_9();
              if ((v20 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_18;
          }
        }

        v21 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v21);
LABEL_18:
      }

LABEL_37:

      return v35;
    }
  }

  else
  {
    sub_25BBA0910(v36);
    v11 = (*(a5 + 72))(a2, a4, a5);
    v23 = sub_25BB2E238(v11, v22, v37, v38);
    if (v24)
    {
      v25 = v23;

      v11 = v25;
    }

    sub_25BA9AC78(v36);
    if (*(a3 + 73) == 1)
    {
      OUTLINED_FUNCTION_33_11();
      OUTLINED_FUNCTION_6_33();
      while (1)
      {
        sub_25BCB648C();
        if (!v26)
        {
          goto LABEL_37;
        }

        OUTLINED_FUNCTION_7_23();
        if (!v19)
        {
          OUTLINED_FUNCTION_0_44();
        }

        OUTLINED_FUNCTION_32_10();
        if (v27)
        {
          OUTLINED_FUNCTION_39_10();
          OUTLINED_FUNCTION_109();
          sub_25BCB625C();
          sub_25BCB7A3C();
          OUTLINED_FUNCTION_5_29();
          while (1)
          {
            OUTLINED_FUNCTION_4_2(v28);
            if ((v29 & 1) == 0)
            {
              break;
            }

            OUTLINED_FUNCTION_8_25();
            if (!v19 || v11 != v30)
            {
              OUTLINED_FUNCTION_18_2();
              v28 = OUTLINED_FUNCTION_35_9();
              if ((v32 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_36;
          }
        }

        v33 = OUTLINED_FUNCTION_9_23();
        MEMORY[0x25F876C80](v33);
LABEL_36:
      }
    }
  }

  return v11;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25BBA4950(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 33))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 4)
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