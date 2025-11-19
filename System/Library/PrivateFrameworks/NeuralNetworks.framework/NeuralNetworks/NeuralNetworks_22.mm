uint64_t sub_25BC2E5F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_25BC2E638(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_25BC2E660()
{
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t GradientContext.subscript.getter@<X0>(uint64_t *a1@<X0>, int *a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = (v3 + a2[9]);
  v8 = *v7;
  v9 = *(*a1 + 16);
  swift_retain_n();
  v47[0] = sub_25BAC42B0();
  v47[1] = v10;
  v11 = OUTLINED_FUNCTION_4_53();

  if (v11)
  {
    v12 = v7[1];
    OUTLINED_FUNCTION_3_49();
    v13 = sub_25BAC42B0();
    if (*(v12 + 16))
    {
      v15 = sub_25BA9266C(v13, v14);
      v17 = v16;

      if (v17)
      {
        v18 = *(*(v12 + 56) + 8 * v15);
LABEL_9:

        *a3 = v18;
        return result;
      }
    }

    else
    {
    }

    sub_25BC2E660();
    goto LABEL_19;
  }

  v19 = (v3 + a2[10]);
  v20 = *v19;
  v21 = *(v6 + 16);
  swift_retain_n();
  v22 = sub_25BAC42B0();
  v24 = OUTLINED_FUNCTION_1_59(v22, v23);
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_0_71();
  *(v25 - 16) = v47;
  LOBYTE(v20) = sub_25BAD9FE0(sub_25BC2F418, v26, v20);

  if (v20)
  {
    v27 = v19[1];
    OUTLINED_FUNCTION_3_49();
    v28 = sub_25BAC42B0();
    if (*(v27 + 16))
    {
      v30 = sub_25BA9266C(v28, v29);
      v32 = v31;

      if (v32)
      {
LABEL_8:
        v18 = *(*(v27 + 56) + 8 * v30);
        goto LABEL_9;
      }

      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v34 = (v3 + a2[11]);
  v35 = *v34;
  v36 = *(v6 + 16);
  swift_retain_n();
  v37 = sub_25BAC42B0();
  v39 = OUTLINED_FUNCTION_1_59(v37, v38);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0_71();
  *(v40 - 16) = v47;
  LOBYTE(v35) = sub_25BAD9FE0(sub_25BC2F418, v41, v35);

  if (v35)
  {
    v27 = v34[1];
    OUTLINED_FUNCTION_3_49();
    v42 = sub_25BAC42B0();
    if (*(v27 + 16))
    {
      v30 = sub_25BA9266C(v42, v43);
      v45 = v44;

      if (v45)
      {
        goto LABEL_8;
      }

LABEL_13:

LABEL_15:
      v47[0] = v6;

      return Tensor.init(zerosLike:)(v47);
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_19:
  v46 = sub_25BC2E660();
  return sub_25BC2EABC(v46);
}

uint64_t sub_25BC2EABC@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *(a1 + a2 - 16);
  v4 = *(a1 + a2 - 8);
  v8 = *a1;
  v6 = type metadata accessor for GradientContext();

  GradientContext.subscript.getter(&v8, v6, &v9);

  *a3 = v9;
  return result;
}

uint64_t sub_25BC2EB38(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v9 = *a3;
  v10 = v6;
  v7 = type metadata accessor for GradientContext();

  return GradientContext.subscript.setter(&v10, &v9, v7);
}

uint64_t GradientContext.subscript.setter(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *a1;
  v5 = *a2;
  v6 = v3;
  GradientContext.updateGradient(_:for:)(&v6, &v5, a3);
}

uint64_t GradientContext.updateGradient(_:for:)(uint64_t *a1, uint64_t *a2, int *a3)
{
  v41 = *a1;
  v5 = *a2;
  v6 = *(v3 + a3[9]);
  v7 = *(*a2 + 16);
  swift_retain_n();
  v42[0] = sub_25BAC42B0();
  v42[1] = v8;
  v9 = OUTLINED_FUNCTION_4_53();

  if (v9)
  {
    sub_25BC2E660();
  }

  else
  {
    v10 = (v3 + a3[10]);
    v11 = *v10;
    v12 = *(v5 + 16);
    swift_retain_n();
    v13 = sub_25BAC42B0();
    v15 = OUTLINED_FUNCTION_1_59(v13, v14);
    MEMORY[0x28223BE20](v15);
    OUTLINED_FUNCTION_0_71();
    *(v16 - 16) = v42;
    v18 = sub_25BAD9FE0(sub_25BC2F418, v17, v11);

    if (v18)
    {
      OUTLINED_FUNCTION_2_61();

      v19 = sub_25BAC42B0();
      v21 = OUTLINED_FUNCTION_1_59(v19, v20);
      MEMORY[0x28223BE20](v21);
      OUTLINED_FUNCTION_0_71();
      *(v22 - 16) = v42;
      if (sub_25BAD9FE0(sub_25BC2F418, v23, v11))
      {
        v24 = v10[1];
        swift_isUniquelyReferenced_nonNull_native();
        v42[0] = v10[1];
        sub_25BAC4594();

        v10[1] = v42[0];
        return result;
      }

LABEL_8:
    }

    v26 = (v3 + a3[11]);
    v27 = *v26;
    OUTLINED_FUNCTION_2_61();
    v28 = sub_25BAC42B0();
    v30 = OUTLINED_FUNCTION_1_59(v28, v29);
    MEMORY[0x28223BE20](v30);
    OUTLINED_FUNCTION_0_71();
    *(v31 - 16) = v42;
    v33 = sub_25BAD9FE0(sub_25BC2F418, v32, v27);

    if (v33)
    {
      OUTLINED_FUNCTION_2_61();

      v34 = sub_25BAC42B0();
      v36 = OUTLINED_FUNCTION_1_59(v34, v35);
      MEMORY[0x28223BE20](v36);
      OUTLINED_FUNCTION_0_71();
      *(v37 - 16) = v42;
      if (sub_25BAD9FE0(sub_25BC2F418, v38, v27))
      {
        v39 = v26[1];
        swift_isUniquelyReferenced_nonNull_native();
        v42[0] = v26[1];
        sub_25BAC4594();

        v26[1] = v42[0];
        return result;
      }

      goto LABEL_8;
    }
  }

  v40 = sub_25BC2E660();
  return GradientContext.subscript.modify(v40);
}

uint64_t (*GradientContext.subscript.modify(void *a1, uint64_t *a2, int *a3))(uint64_t *a1, char a2)
{
  a1[1] = a3;
  a1[2] = v3;
  v6 = *a2;
  a1[3] = *a2;
  v8 = v6;
  swift_retain_n();
  GradientContext.subscript.getter(&v8, a3, a1);

  return sub_25BC2EFB0;
}

uint64_t sub_25BC2EFB0(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = *a1;
  v4 = a1[1];
  if (a2)
  {
    v7 = *a1;
    v8 = v2;

    GradientContext.subscript.setter(&v7, &v8, v4);
  }

  else
  {
    v7 = *a1;
    v8 = v2;
    return GradientContext.subscript.setter(&v7, &v8, v4);
  }
}

uint64_t sub_25BC2F040(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25BC2F0BC(uint64_t result, unsigned int a2, uint64_t a3)
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
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
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
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
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

void sub_25BC2F208(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
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
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
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
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
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
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
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

uint64_t sub_25BC2F434()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v49 - v9;
  v11 = sub_25BCB54EC();
  v50 = *(v11 - 8);
  v12 = *(v50 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 40);
  type metadata accessor for TensorHandle();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  swift_retain_n();
  sub_25BAA6EB0();

  v17 = sub_25BBCB800(v16);

  v19 = *(v17 + 16);
  if (v19 < 2)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 == 2)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v19 < 4)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v19 == 4)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v19 < 6)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v19 != 6)
  {
    v52 = *(v17 + 36);
    v20 = *(v17 + 52);

    sub_25BB6B190(v52, v20);
    sub_25BB6B5B0(v21);
    v52.i64[0] = MEMORY[0x25F878460](0, v22, 0);
    type metadata accessor for NativeTensorStorage();
    sub_25BC31C8C(v55);
    v56[0] = *&v55[0];
    sub_25BC31C8C(v54);
    v23 = BYTE8(v54[0]);

    v53[0] = v23;
    sub_25BBC0130(v56, v53, 0);
    v51 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F48, &unk_25BCC2AF0);
    v25 = swift_allocObject();
    v49 = xmmword_25BCBAE50;
    *(v25 + 16) = xmmword_25BCBAE50;
    sub_25BC31C8C(v55);
    result = *&v55[0];
    v26 = *(*&v55[0] + 16);
    if (v26)
    {
      v27 = (*&v55[0] + 32);
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
          goto LABEL_13;
        }
      }

      __break(1u);
      goto LABEL_23;
    }

    v30 = 1;
LABEL_13:
    *(v25 + 32) = v30;

    v31 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v10, 1, 1, v31);
    sub_25BCB54FC();
    v32 = v50;
    (*(v50 + 16))(v6, v14, v11);
    v33 = __swift_storeEnumTagSinglePayload(v6, 0, 1, v11);
    MEMORY[0x28223BE20](v33);
    v34 = v52.i64[0];
    *(&v49 - 2) = v2;
    *(&v49 - 1) = v34;
    sub_25BC2FD94(v6, sub_25BC30FF0, (&v49 - 2), &v49);
    v35 = v11;
    if (v1)
    {

      sub_25BAA6F5C(v6, &qword_27FBB4080, &qword_25BCBC638);
      v36 = *(v32 + 8);
      v37 = v14;
      v38 = v11;
    }

    else
    {
      sub_25BAA6F5C(v6, &qword_27FBB4080, &qword_25BCBC638);
      sub_25BB2C64C(v2 + 48, v55);
      memcpy(v54, v55, 0x79uLL);
      if (BYTE8(v54[7]) != 1)
      {
        sub_25BBE12D8(v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v35 = swift_allocObject();
        *(v35 + 16) = v49;
        *(v35 + 32) = v51;
        *(v35 + 40) = &off_286D4DBE0;
        v41 = OUTLINED_FUNCTION_0_72();
        v42(v41);
        goto LABEL_20;
      }

      sub_25BA97060(&v54[5], v56);
      __swift_destroy_boxed_opaque_existential_1(&v54[2] + 1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      sub_25BAC27B0(v56, v53);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4528, &unk_25BCC1A60);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB68D0, &qword_25BCCCFF0);
      if (swift_dynamicCast())
      {
        sub_25BADF778(v54, v55);
        v39 = *(&v55[1] + 1);
        v40 = __swift_project_boxed_opaque_existential_1(v55, *(&v55[1] + 1));
        v44 = sub_25BC30160(v40, v2, v51, v39);
        v46 = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
        v35 = swift_allocObject();
        *(v35 + 16) = v49;
        *(v35 + 32) = v44;
        *(v35 + 40) = v46;

        __swift_destroy_boxed_opaque_existential_1(v56);
        v47 = OUTLINED_FUNCTION_0_72();
        v48(v47);
        __swift_destroy_boxed_opaque_existential_1(v55);
        goto LABEL_20;
      }

      memset(v54, 0, 48);
      sub_25BAA6F5C(v54, &qword_27FBB68D8, &qword_25BCCCFF8);
      sub_25BB0E2EC();
      swift_allocError();
      *v43 = xmmword_25BCCCFC0;
      *(v43 + 16) = 24576;
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1(v56);
      v37 = OUTLINED_FUNCTION_0_72();
    }

    v36(v37, v38);
LABEL_20:
    MEMORY[0x25F878470](v52.i64[0]);
    return v35;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_25BC2FAD4(BNNSNDArrayDescriptor *a1, uint64_t a2, void *a3)
{
  sub_25BB2C64C(a2 + 48, __src);
  memcpy(__dst, __src, 0x79uLL);
  if (!BYTE8(__dst[7]))
  {
    sub_25BA97060(__dst, v30);
    sub_25BA97060((&__dst[2] + 8), v28);
    goto LABEL_5;
  }

  if (BYTE8(__dst[7]) != 1)
  {
    sub_25BA97060(__dst, v24);
    sub_25BA97060((&__dst[2] + 8), v22);
    v12 = sub_25BAA80BC(*(a2 + 169), &unk_286D427E8);
    v13 = v25;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    if (v12)
    {
      v14 = sub_25BC31DE8(v13);
      v15 = v23;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v16 = sub_25BC31DE8(v15);
      if (!BNNSRandomFillUniformInt(a3, a1, v14, v16))
      {
LABEL_11:
        __swift_destroy_boxed_opaque_existential_1(v22);
        v11 = v24;
        return __swift_destroy_boxed_opaque_existential_1(v11);
      }
    }

    else
    {
      v19 = sub_25BC31CA0(v13);
      v20 = v23;
      __swift_project_boxed_opaque_existential_1(v22, v23);
      v21 = sub_25BC31CA0(v20);
      if (!BNNSRandomFillUniformFloat(a3, a1, v19, v21))
      {
        goto LABEL_11;
      }
    }

    sub_25BB0E2EC();
    swift_allocError();
    *v17 = 0xD000000000000024;
    *(v17 + 8) = 0x800000025BCE3AF0;
    *(v17 + 16) = 0x2000;
    swift_willThrow();
    goto LABEL_11;
  }

  sub_25BA97060(__dst, v30);
  sub_25BA97060((&__dst[2] + 8), v28);
  __swift_destroy_boxed_opaque_existential_1(&__dst[5]);
LABEL_5:
  v6 = v31;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  v7 = sub_25BC31CA0(v6);
  v8 = v29;
  __swift_project_boxed_opaque_existential_1(v28, v29);
  v9 = sub_25BC31CA0(v8);
  if (BNNSRandomFillNormalFloat(a3, a1, v7, v9))
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v10 = 0xD000000000000024;
    *(v10 + 8) = 0x800000025BCE3AF0;
    *(v10 + 16) = 0x2000;
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  v11 = v30;
  return __swift_destroy_boxed_opaque_existential_1(v11);
}

uint64_t sub_25BC2FD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v31 = a3;
  v32 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = sub_25BCB54EC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v5 + 24);
  if (v21 > 0xC || ((1 << v21) & 0x1777) == 0)
  {
    goto LABEL_13;
  }

  sub_25BB0EC04(a1, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {
    if (*(*(v5 + 16) + 16))
    {
      v22 = *(v5 + 16);
      sub_25BCB617C();
    }

    v23 = sub_25BCB50AC();
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v23);
    sub_25BCB54FC();
    if (__swift_getEnumTagSinglePayload(v15, 1, v16) != 1)
    {
      sub_25BAA6F5C(v15, &qword_27FBB4080, &qword_25BCBC638);
    }
  }

  else
  {
    (*(v17 + 32))(v20, v15, v16);
  }

  v24 = sub_25BCB54AC();
  if (v24 < 0)
  {
    __break(1u);
LABEL_13:
    LODWORD(v29) = 0;
    v28 = 34;
    goto LABEL_15;
  }

  MEMORY[0x28223BE20](v24);
  v28 = v20;
  v26 = sub_25BB0E6E4(sub_25BB0EC74, (&v30 - 4), 0, v25);
  if ((v26 & 1) == 0)
  {
    MEMORY[0x28223BE20](v26);
    *(&v30 - 4) = v5;
    *(&v30 - 3) = v20;
    v28 = a2;
    v29 = v31;
    sub_25BAABBA4(sub_25BC3106C);
    return (*(v17 + 8))(v20, v16);
  }

  LODWORD(v29) = 0;
  v28 = 37;
LABEL_15:
  result = sub_25BCB74CC();
  __break(1u);
  return result;
}

uint64_t sub_25BC30160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_25BBF12DC(a4, a4);
  v9 = *(v8 + 48);
  v10 = *(v8 + 52);
  v11 = *(a4 - 8);
  v12 = *(v11 + 72);
  v13 = *(v11 + 80);
  swift_allocObject();
  v14 = sub_25BCB676C();
  (*(v11 + 16))(v15, a1, a4);
  sub_25BBE4B7C();
  v26 = v14;
  v16 = sub_25BCB68CC();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  LODWORD(v25) = 0;
  WitnessTable = swift_getWitnessTable();
  sub_25BBE86F4(v16, WitnessTable);
  Tensor.init<A>(_:scalarType:on:)();
  v18 = *(v27 + 16);

  v19 = sub_25BA928B4();
  [v19 lock];

  sub_25BA92920(v18, 0, 0, &v22);
  if (v4)
  {
    [*(v18 + 224) unlock];

    __break(1u);
  }

  else
  {
    [*(v18 + 224) unlock];

    v20 = sub_25BC303B8(a3, &off_286D4DBE0, v22, *(&v22 + 1));
    swift_unknownObjectRelease();
    return v20;
  }

  return result;
}

uint64_t sub_25BC303B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v39 = &v32 - v11;
  v50 = sub_25BCB521C();
  v41 = *(v50 - 8);
  v12 = *(v41 + 64);
  MEMORY[0x28223BE20](v50);
  v37 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - v15;
  sub_25BC31C8C(v49);
  v17 = v49[0];
  sub_25BC31C8C(&v47);
  v18 = v48;

  type metadata accessor for NativeTensorStorage();
  v49[0] = v17;
  LOBYTE(v47) = v18;
  sub_25BBC0130(v49, &v47, 0);
  v35 = a1;
  v36 = v19;
  v38 = v4;
  ObjectType = swift_getObjectType();
  v34 = a2;
  v20 = *(a2 + 16);
  v20(v49, ObjectType, a2);
  v21 = swift_getObjectType();
  v22 = *(a4 + 16);
  v22(&v47, v21, a4);
  v40 = v16;
  sub_25BC30748(v49, &v47, v16);

  v23 = v21;
  v24 = v39;
  v22(v49, v23, a4);
  v25 = v37;
  v20(&v47, ObjectType, v34);
  v26 = v36;
  sub_25BC30748(v49, &v47, v25);

  v27 = sub_25BCB54EC();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v27);
  v43 = a3;
  v44 = a4;
  v45 = v26;
  v46 = v25;
  v28 = v38;
  sub_25BC675C0(sub_25BC3100C, v42, MEMORY[0x277D84F78] + 8, MEMORY[0x277D84F78]);
  if (v28)
  {
  }

  sub_25BAA6F5C(v24, &qword_27FBB4080, &qword_25BCBC638);
  v29 = *(v41 + 8);
  v30 = v50;
  v29(v40, v50);
  v29(v25, v30);
  return v26;
}

uint64_t sub_25BC30748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(*a1 + 16);
  v5 = *(*a2 + 16);
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    if (*(*a1 + 32) <= 1)
    {
      goto LABEL_6;
    }
  }

  else if (v5 >= v4)
  {
LABEL_6:
    v7 = MEMORY[0x277D82EA0];
    goto LABEL_9;
  }

  v7 = MEMORY[0x277D82E98];
LABEL_9:
  v8 = *v7;
  v9 = sub_25BCB521C();
  v10 = *(*(v9 - 8) + 104);

  return v10(a3, v8, v9);
}

uint64_t sub_25BC307F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v14[-v10];
  swift_getObjectType();
  v12 = sub_25BCB54EC();
  __swift_storeEnumTagSinglePayload(v11, 1, 1, v12);
  v15 = a2;
  v16 = a1;
  v17 = a3;
  sub_25BC675C0(sub_25BC3102C, v14, MEMORY[0x277D84F78] + 8, a4);
  return sub_25BAA6F5C(v11, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC30930(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v13[-v9];
  v11 = sub_25BCB54EC();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v11);
  v14 = a3;
  v15 = a1;
  v16 = a4;
  sub_25BBF3504(v10, sub_25BC3104C);
  return sub_25BAA6F5C(v10, &qword_27FBB4080, &qword_25BCBC638);
}

uint64_t sub_25BC30A48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a4;
  v31 = a2;
  v32 = a3;
  v33 = a1;
  v4 = sub_25BCB530C();
  v29 = *(v4 - 8);
  v30 = v4;
  v5 = *(v29 + 64);
  MEMORY[0x28223BE20](v4);
  v28 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_25BCB541C();
  v7 = *(v26 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v26);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_25BCB521C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v25 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v25 - v20;
  v25[2] = sub_25BCB53FC();
  v22 = *(v12 + 104);
  v22(v21, *MEMORY[0x277D82EA0], v11);
  (*(v12 + 16))(v18, v27, v11);
  v22(v15, *MEMORY[0x277D82E98], v11);
  (*(v7 + 104))(v10, *MEMORY[0x277D83078], v26);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  (*(v29 + 104))(v28, *MEMORY[0x277D82F78], v30);
  if (sub_25BCB53EC())
  {
    sub_25BCB53DC();
  }

  else
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v24 = 0xD000000000000013;
    *(v24 + 8) = 0x800000025BCE3AD0;
    *(v24 + 16) = 0x8000;
    return swift_willThrow();
  }
}

unint64_t sub_25BC30E04(uint64_t a1)
{
  result = sub_25BB18AA4();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC30E2C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t (*a3)(_DWORD *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v15[2] = a4;
  v16 = a3;
  v15[1] = a5;
  v7 = sub_25BCB54EC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = sub_25BCB6F2C();
  v12 = *(a1 + 24);
  (*(v8 + 16))(v11, a2, v7);
  LODWORD(a1) = sub_25BCB54CC();
  sub_25BCB54BC();
  sub_25BCB54DC();
  LOBYTE(v18[0]) = v12;
  v13 = sub_25BBF4F40();
  v17 = v12;
  LODWORD(a2) = sub_25BBF4F40();
  (*(v8 + 8))(v11, v7);
  v19 = v32;
  v20 = v33;
  v21 = v34;
  v22 = v35;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  v26 = v39;
  v18[0] = 0;
  v18[1] = a1;
  v27 = v15[0];
  v28 = v13;
  v29 = 0;
  v30 = a2;
  v31 = 1065353216;
  return v16(v18);
}

uint64_t sub_25BC3100C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  return sub_25BC307F8(a1, v2[4], v2[5], a2);
}

void Tensor.sequenced<A, B>(through:_:)()
{
  OUTLINED_FUNCTION_9_18();
  v15 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_31_13();
  v16 = *v0;
  Layer.callAsFunction(_:)(&v16, v8, v4);
  Layer.callAsFunction(_:)(v1, v6, v15);
  (*(v11 + 8))(v1, AssociatedTypeWitness);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C>(through:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_9_18();
  v45 = v21;
  v24 = v23;
  v26 = v25;
  v46 = v27;
  v29 = v28;
  v31 = v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v34 = v33;
  v36 = *(v35 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_36();
  v38 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v38);
  v40 = v39;
  v42 = *(v41 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_2_62();
  v44 = OUTLINED_FUNCTION_7_42(v45);
  Layer.callAsFunction(_:)(v44, v31, v26);
  Layer.callAsFunction(_:)(&associated type descriptor for Layer.Output, v29, v24);
  Layer.callAsFunction(_:)(v22, v46, a21);
  (*(v34 + 8))(v22, AssociatedTypeWitness);
  (*(v40 + 8))(&associated type descriptor for Layer.Output, v38);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C, D>(through:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_18();
  v51 = v24;
  v54 = v27;
  v29 = v28;
  v50 = v30;
  v52 = v31;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v33 = v32;
  v35 = *(v34 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_31_13();
  v37 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v37);
  v39 = v38;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_8_42();
  v43 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v43);
  v45 = v44;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_2_62();
  v49 = OUTLINED_FUNCTION_7_42(v51);
  Layer.callAsFunction(_:)(v49, v29, a21);
  Layer.callAsFunction(_:)(&associated type descriptor for Layer.Output, v50, a22);
  Layer.callAsFunction(_:)(v25, v52, a23);
  Layer.callAsFunction(_:)(v26, v54, a24);
  (*(v33 + 8))(v26, AssociatedTypeWitness);
  (*(v39 + 8))(v25, v37);
  (*(v45 + 8))(&associated type descriptor for Layer.Output, v43);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C, D, E>(through:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  OUTLINED_FUNCTION_9_18();
  v70 = v27;
  v71 = v29;
  v64 = v30;
  v32 = v31;
  v79 = v33;
  v80 = v34;
  v75 = v35;
  v81 = a27;
  v82 = v36;
  v65 = a24;
  v66 = v37;
  v67 = a25;
  v77 = v38;
  v78 = a22;
  v73 = a21;
  v74 = a26;
  v76 = OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_2(v76);
  v72 = v39;
  v41 = *(v40 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_2_62();
  v69 = OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_2(v69);
  v44 = v43;
  v46 = *(v45 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v47);
  v49 = &v63 - v48;
  v68 = OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_2(v68);
  v51 = v50;
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v54);
  v56 = &v63 - v55;
  v57 = OUTLINED_FUNCTION_10_36();
  OUTLINED_FUNCTION_2(v57);
  v59 = v58;
  v61 = *(v60 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_36();
  v83 = *v70;
  Layer.callAsFunction(_:)(&v83, v32, a23);
  Layer.callAsFunction(_:)(&associated type descriptor for Layer.Output, v64, v65);
  Layer.callAsFunction(_:)(v56, v66, v67);
  Layer.callAsFunction(_:)(v49, v73, v74);
  Layer.callAsFunction(_:)(v28, v78, v81);
  (*(v72 + 8))(v28, v76);
  (*(v44 + 8))(v49, v69);
  (*(v51 + 8))(v56, v68);
  (*(v59 + 8))(&associated type descriptor for Layer.Output, v57);
  OUTLINED_FUNCTION_10_16();
}

void Tensor.sequenced<A, B, C, D, E, F>(through:_:_:_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_9_18();
  v78 = v30;
  v67 = v32;
  v72 = v33;
  v91 = v34;
  v92 = v35;
  v88 = v36;
  v85 = v37;
  v82 = v38;
  v80 = v39;
  v90 = v40;
  v68 = a26;
  v71 = a27;
  v75 = a28;
  v69 = a21;
  v74 = a22;
  v89 = a30;
  v83 = a29;
  v87 = a24;
  v81 = a23;
  OUTLINED_FUNCTION_9_41();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(AssociatedTypeWitness);
  v84 = v41;
  v43 = *(v42 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v44);
  OUTLINED_FUNCTION_8_42();
  OUTLINED_FUNCTION_9_41();
  v79 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v79);
  v77 = v45;
  v47 = *(v46 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v48);
  v50 = &v67 - v49;
  OUTLINED_FUNCTION_9_41();
  v76 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v76);
  v52 = v51;
  v54 = *(v53 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_9_41();
  v73 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v73);
  v57 = v56;
  v59 = *(v58 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_2_62();
  v61 = v72;
  v70 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_2(v70);
  v63 = v62;
  v65 = *(v64 + 64);
  OUTLINED_FUNCTION_11();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_31_13();
  v93 = *v78;
  Layer.callAsFunction(_:)(&v93, v61, a25);
  Layer.callAsFunction(_:)(&protocol requirements base descriptor for Layer, v67, v68);
  Layer.callAsFunction(_:)(a26, v69, v71);
  Layer.callAsFunction(_:)(a27, v74, v75);
  Layer.callAsFunction(_:)(v50, v81, v83);
  Layer.callAsFunction(_:)(v31, v87, v89);
  (*(v84 + 8))(v31, AssociatedTypeWitness);
  (*(v77 + 8))(v50, v79);
  (*(v52 + 8))(a27, v76);
  (*(v57 + 8))(a26, v73);
  (*(v63 + 8))(&protocol requirements base descriptor for Layer, v70);
  OUTLINED_FUNCTION_10_16();
}

uint64_t sub_25BC31C8C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 169);
  *a1 = *(v1 + 176);
  *(a1 + 8) = v2;
  return sub_25BCB617C();
}

float sub_25BC31CA0(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_0_54(a1);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v3);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v1);
  if (OUTLINED_FUNCTION_5_49())
  {
    _H0 = LOWORD(v19);
    __asm { FCVT            S8, H0 }
  }

  else if (OUTLINED_FUNCTION_5_49())
  {
    LOWORD(v16) = LOWORD(v19);
    _S8 = v16;
  }

  else if (OUTLINED_FUNCTION_5_49())
  {
    _S8 = *&v19;
  }

  else if (OUTLINED_FUNCTION_5_49())
  {
    _S8 = v19;
  }

  else
  {
    _S8 = sub_25BC31DE8(v1);
  }

  (*(v5 + 8))(v9, v1);
  return _S8;
}

uint64_t sub_25BC31DE8(uint64_t a1)
{
  v3 = v2;
  v4 = OUTLINED_FUNCTION_0_54(a1);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v10, v3, v1);
  if (OUTLINED_FUNCTION_2_63())
  {
    v11 = v17;
  }

  else if (OUTLINED_FUNCTION_2_63())
  {
    v11 = v17;
  }

  else if (OUTLINED_FUNCTION_2_63())
  {
    v11 = v17;
  }

  else if (OUTLINED_FUNCTION_2_63())
  {
    v11 = v17;
  }

  else
  {
    if (OUTLINED_FUNCTION_2_63())
    {
      v11 = v17;
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_18;
      }

      __break(1u);
    }

    if (OUTLINED_FUNCTION_2_63())
    {
      v11 = v17;
    }

    else if (OUTLINED_FUNCTION_2_63())
    {
      v11 = v17;
    }

    else
    {
      if (!OUTLINED_FUNCTION_2_63())
      {
        v17 = 0;
        v18 = 0xE000000000000000;
        sub_25BCB70FC();
        v15 = v17;
        v16 = v18;
        MEMORY[0x25F876C90](0xD000000000000048, 0x800000025BCE3BA0);
        swift_getDynamicType();
        v13 = sub_25BCB7C1C();
        MEMORY[0x25F876C90](v13);

        MEMORY[0x25F876C90](11872, 0xE200000000000000);
        v17 = v15;
        v18 = v16;
        v19 = 9;
        sub_25BCB617C();
        sub_25BA97890();
      }

      v11 = v17;
    }
  }

LABEL_18:
  (*(v6 + 8))(v10, v1);
  return v11;
}

__int16 sub_25BC32028@<H0>(uint64_t a1@<X0>)
{
  _S0 = sub_25BC31CA0(a1);
  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t sub_25BC32044()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25BCBAE50;
  sub_25BC31C8C(v0 + 32);
  return v0;
}

uint64_t sub_25BC3209C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a2;
  v9 = *(a4 + 8);
  *(a5 + 24) = a3;
  *(a5 + 32) = v9;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a5);
  v11 = *(*(a3 - 8) + 32);
  v11(boxed_opaque_existential_0, a1, a3);
  v12 = *(sub_25BCB62FC() + 36);
  *(a5 + 64) = a3;
  *(a5 + 72) = v9;
  v13 = __swift_allocate_boxed_opaque_existential_0((a5 + 40));
  result = (v11)(v13, a1 + v12, a3);
  *(a5 + 120) = 2;
  *(a5 + 121) = v8;
  return result;
}

uint64_t sub_25BC32164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v11 = *(a5 + 8);
  *(a6 + 24) = a4;
  *(a6 + 32) = v11;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
  v13 = *(a4 - 8);
  (*(v13 + 16))(boxed_opaque_existential_0, a1, a4);
  *(a6 + 64) = a4;
  *(a6 + 72) = v11;
  v14 = __swift_allocate_boxed_opaque_existential_0((a6 + 40));
  (*(v13 + 32))(v14, a2, a4);
  result = (*(v13 + 8))(a1, a4);
  *(a6 + 120) = 0;
  *(a6 + 121) = v10;
  return result;
}

uint64_t sub_25BC32248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a4;
  v13 = *(a6 + 8);
  *(a7 + 24) = a5;
  *(a7 + 32) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a7);
  v15 = *(a5 - 8);
  v16 = *(v15 + 16);
  v16(boxed_opaque_existential_0, a1, a5);
  *(a7 + 64) = a5;
  *(a7 + 72) = v13;
  v17 = __swift_allocate_boxed_opaque_existential_0((a7 + 40));
  v16(v17, a2, a5);
  *(a7 + 104) = a5;
  *(a7 + 112) = v13;
  v18 = __swift_allocate_boxed_opaque_existential_0((a7 + 80));
  (*(v15 + 32))(v18, a3, a5);
  v19 = *(v15 + 8);
  v19(a2, a5);
  result = (v19)(a1, a5);
  *(a7 + 120) = 1;
  *(a7 + 121) = v12;
  return result;
}

uint64_t sub_25BC32370()
{
  v0 = 1049600;
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(v2);

  if (v3)
  {
    if ((*(v3 + 24) & 2) != 0)
    {
      v0 = 1049607;
    }

    else
    {
      v0 = 1049600;
    }
  }

  sub_25BAA4AF4(v2);
  return v0;
}

uint64_t sub_25BC323E4(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *__src, _OWORD *a7)
{
  v11 = *a5;
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x6D6F646E6172, 0xE600000000000000);
  }

  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 176) = v11;
  memcpy((v7 + 48), __src, 0x7AuLL);
  v12 = a7[1];
  *(v7 + 184) = *a7;
  *(v7 + 200) = v12;
  *(v7 + 216) = a7[2];
  *(v7 + 226) = *(a7 + 42);
  return v7;
}

void *sub_25BC32478()
{
  v1 = v0[4];

  v2 = v0[5];

  sub_25BC32D54((v0 + 6));
  v3 = v0[22];

  return v0;
}

uint64_t sub_25BC324B0()
{
  sub_25BC32478();

  return swift_deallocClassInstance();
}

__n128 sub_25BC32520@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 200);
  *a1 = *(v1 + 184);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 216);
  result = *(v1 + 226);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BC32558()
{
  sub_25BCB625C();
  sub_25BB2C64C(v0 + 48, __src);
  memcpy(v33, __src, 0x79uLL);
  if (BYTE8(v33[7]) && BYTE8(v33[7]) == 1)
  {
    sub_25BA97060(v33, v31);
    sub_25BA97060((&v33[2] + 8), v29);
    sub_25BCB625C();
    __swift_project_boxed_opaque_existential_1(v31, v32);
    OUTLINED_FUNCTION_1_60();
    v2 = *(v1 + 64);
    MEMORY[0x28223BE20](v3);
    v5 = OUTLINED_FUNCTION_0_73(v4, *&v27[0]);
    v6(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA0, &unk_25BCCD2A0);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v27, v28);
      OUTLINED_FUNCTION_7_43();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_1_60();
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v22);
    v24 = OUTLINED_FUNCTION_0_73(v23, *&v27[0]);
    v25(v24);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v27, v28);
      OUTLINED_FUNCTION_8_43();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v19 = &v33[5];
  }

  else
  {
    sub_25BA97060(v33, v31);
    sub_25BA97060((&v33[2] + 8), v29);
    sub_25BCB625C();
    __swift_project_boxed_opaque_existential_1(v31, v32);
    OUTLINED_FUNCTION_1_60();
    v8 = *(v7 + 64);
    MEMORY[0x28223BE20](v9);
    v11 = OUTLINED_FUNCTION_0_73(v10, *&v27[0]);
    v12(v11);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB5DA0, &unk_25BCCD2A0);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v27, v28);
      OUTLINED_FUNCTION_7_43();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_project_boxed_opaque_existential_1(v29, v30);
    OUTLINED_FUNCTION_1_60();
    v14 = *(v13 + 64);
    MEMORY[0x28223BE20](v15);
    v17 = OUTLINED_FUNCTION_0_73(v16, *&v27[0]);
    v18(v17);
    if (OUTLINED_FUNCTION_3_50())
    {
      sub_25BA97060(v27, v28);
      OUTLINED_FUNCTION_8_43();
      __swift_destroy_boxed_opaque_existential_1(v28);
    }

    else
    {
      OUTLINED_FUNCTION_4_54();
    }

    __swift_destroy_boxed_opaque_existential_1(v29);
    v19 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v19);
}

void *sub_25BC32964()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return v0;
}

uint64_t sub_25BC32994()
{
  sub_25BC32964();

  return swift_deallocClassInstance();
}

_BYTE *sub_25BC329EC(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_25BC32AA8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 122))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 120);
      if (v3 <= 2)
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

uint64_t sub_25BC32AE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 122) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 122) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

unint64_t sub_25BC32B5C()
{
  result = qword_27FBB68E0;
  if (!qword_27FBB68E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB68E0);
  }

  return result;
}

uint64_t sub_25BC32BB0(uint64_t a1)
{
  result = sub_25BC32D10(&qword_27FBB4550, type metadata accessor for RandomStateOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32C08(uint64_t a1)
{
  result = sub_25BC32D10(&qword_27FBB68E8, type metadata accessor for RandomStateOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32C60(uint64_t a1)
{
  result = sub_25BC32D10(&qword_28154F3A0, type metadata accessor for RandomOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32CB8(uint64_t a1)
{
  result = sub_25BC32D10(qword_28154F3A8, type metadata accessor for RandomOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC32D10(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_25BC32D8C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 121))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 120);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25BC32DC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 105) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 121) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 121) = 0;
    }

    if (a2)
    {
      *(result + 120) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC32E20(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 112) = 0;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 120) = a2;
  return result;
}

uint64_t sub_25BC32E60(uint64_t a1, char a2)
{
  v4 = type metadata accessor for ContextManager();
  v5 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v5, v6, v7, v8, v9, v10, v11, v12, v15[0]);

  if (v16)
  {
    v13 = *(v16 + 24);
    if ((v13 & 2) != 0 && ((v13 & 1) != 0 || (a2 & 1) == 0))
    {

      OUTLINED_FUNCTION_0_74();
      sub_25BAB35A8();
      if (v2)
      {
        goto LABEL_6;
      }

      v4 = v16;
LABEL_9:
      sub_25BAA4AF4(v15);
      return v4;
    }
  }

  type metadata accessor for PersistentGraphScope();
  swift_allocObject();
  v4 = sub_25BAB6EC8(a2 & 1 | 2, MEMORY[0x277D84F90]);

  v16 = v4;
  OUTLINED_FUNCTION_0_74();
  sub_25BAB35A8();
  if (!v2)
  {
    goto LABEL_9;
  }

LABEL_6:

  sub_25BAA4AF4(v15);
  return v4;
}

uint64_t sub_25BC32FA0()
{
  if (v0[7].i8[8] == 1)
  {
    v0[7].i8[8] = 0;
    return v0[8].i64[0];
  }

  else
  {
    v3 = v0[6];
    v2 = v0 + 6;
    sub_25BB6B190(v3, *v2[1].i64);
    sub_25BB6B5B0(v4);
    v2[1].i8[8] = 1;
    v2[2].i64[0] = v5;
    v1 = v6;
    sub_25BB6B5AC(v2->i8);
  }

  return v1;
}

uint64_t sub_25BC3305C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  type metadata accessor for ContextManager();

  sub_25BCB617C();
  v7 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v7, v8, v9, v10, v11, v12, v13, v14, v17[0]);

  v17[10] = 0;
  v15 = objc_autoreleasePoolPush();
  sub_25BC335E4(v17, a1, a2, a3);
  objc_autoreleasePoolPop(v15);
  sub_25BAA4AF4(v17);
  if (v3)
  {
  }

  else
  {
  }
}

uint64_t sub_25BC331AC()
{
  type metadata accessor for ContextManager();
  v0 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v0, v1, v2, v3, v4, v5, v6, v7, v9[0]);

  v9[10] = 0;
  OUTLINED_FUNCTION_0_74();
  sub_25BAB35A8();
  return sub_25BAA4AF4(v9);
}

time_t sub_25BC33240@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  result = time(0);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    result = UInt64.vector2.getter(result);
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = v3;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  return result;
}

void sub_25BC3329C(unint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    goto LABEL_6;
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
      goto LABEL_4;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_25BBF1454(v6);
  v6 = v14;
  v5[2] = v14;
  if (!v7)
  {
    goto LABEL_8;
  }

LABEL_4:
  if (v7 <= *(v6 + 16))
  {
    a1 = sub_25BC32FA0();
    v5[2] = v6;
    swift_endAccess();

LABEL_6:
    a3[3] = &type metadata for PhiloxRandomNumberGenerator;
    a3[4] = sub_25BB189FC();
    v9 = swift_allocObject();
    *a3 = v9;
    v10 = sub_25BBE5CAC(a1);
    *(v9 + 16) = v11;
    *(v9 + 32) = v12;
    *(v9 + 40) = v10 & 1;
    *(v9 + 48) = v13;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25BC333C8()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  result = pthread_key_create(v2, j_j__swift_release);
  qword_28154F8B0 = v2[0];
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BC33440()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F68, &qword_25BCBBE90);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE50;
  sub_25BC33240(v1 + 32);
  *(v0 + 16) = v1;
  return v0;
}

uint64_t sub_25BC3349C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAB7060(a1);

  v5 = a2;
  basicReLU(_:)(&v5);
  sub_25BAA49B8();
  sub_25BAB814C();
}

uint64_t sub_25BC3353C()
{
  OUTLINED_FUNCTION_1_61();
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAB7060(v2);

  v4 = v0;
  v1(&v4);
  sub_25BAA49B8();
  sub_25BAB814C();
}

uint64_t sub_25BC335E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAB7060(a1);

  a4(a2, a3);
  sub_25BAA49B8();
  sub_25BAB814C();
}

uint64_t withComputeDevice<A>(_:_:)()
{
  OUTLINED_FUNCTION_1_61();
  type metadata accessor for ContextManager();
  v1 = sub_25BAA49B8();
  OUTLINED_FUNCTION_18_0(v1, v2, v3, v4, v5, v6, v7, v8, v10[0]);

  sub_25BACF778(v0, v10);
  OUTLINED_FUNCTION_0_74();
  sub_25BAB35A8();
  return sub_25BAA4AF4(v10);
}

uint64_t sub_25BC33738(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 136))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_25BC3378C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void (*sub_25BC33810(uint64_t a1))(uint64_t, uint64_t)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_4_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v107 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v107 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v107 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = (&v107 - v19);
  v21 = sub_25BCB54EC();
  v22 = OUTLINED_FUNCTION_2(v21);
  v123 = v23;
  v124 = v22;
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_4_0();
  v126 = v26 - v27;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v28);
  v125 = &v107 - v29;
  v30 = *(v1 + 40);
  v31 = sub_25BAC4018();
  v32 = sub_25BB3EE04(v31, a1);
  if (v32)
  {
    v34 = v32;
    if (*(v2 + 48))
    {
      v121 = v33;
      v35 = sub_25BAC4018();
      v36 = sub_25BB3EE04(v35, a1);
      if (v36)
      {
        if (*(v2 + 56))
        {
          v118 = v37;
          v120 = v36;
          v38 = sub_25BAC4018();
          v39 = sub_25BB3EE04(v38, a1);
          if (v39)
          {
            v119 = v39;
            if (*(v2 + 152) && (v116 = v40, v41 = sub_25BAC4018(), (v42 = sub_25BB3EE04(v41, a1)) != 0))
            {
              v113 = v43;
              v117 = v42;
              if (*(v2 + 160))
              {
                v44 = sub_25BAC4018();
                v45 = sub_25BB3EE04(v44, a1);
                if (v45)
                {
                  v112 = v45;
                  v110 = v46;
                  ObjectType = swift_getObjectType();
                  v48 = sub_25BC5D23C(ObjectType, v121);
                  v115 = ObjectType;
                  if (v48 <= 1)
                  {
                    v52 = v121;
                    v53 = *(v121 + 16);
                    v51 = (v121 + 16) & 0xFFFFFFFFFFFFLL | 0xA7C3000000000000;
                    v109 = 1;
                  }

                  else
                  {
                    v49 = ObjectType;
                    v50 = v121 + 16;
                    v114 = *(v121 + 16);
                    (v114)(&v130, v49);
                    if (!v130[2])
                    {
                      OUTLINED_FUNCTION_4_55();
                      OUTLINED_FUNCTION_9_42();
                    }

                    v51 = v50 & 0xFFFFFFFFFFFFLL | 0xA7C3000000000000;
                    v109 = v130[4];

                    v52 = v121;
                    v53 = v114;
                  }

                  v111 = v51;
                  v114 = v53;
                  (v53)(v127, v115, v52);
                  v57 = v127[0];
                  v58 = *(v127[0] + 16);
                  if (v58 < 4)
                  {
                    v59 = 4 - v58;
                    sub_25BCB617C();
                    v60 = sub_25BAC0E14(1, v59);
                    v130 = v57;
                    sub_25BAC0EB8(v60);

                    v57 = v130;
                    if (!v130[2])
                    {

                      v57 = &unk_286D43608;
                    }
                  }

                  sub_25BBF5F44(v57, 0);

                  v61 = swift_getObjectType();
                  (*(v118 + 16))(v127, v61);
                  v62 = v127[0];
                  if (!*(v127[0] + 16))
                  {

                    v62 = &unk_286D43630;
                  }

                  sub_25BBF5F44(v62, 0);

                  v108 = type metadata accessor for NativeTensorStorage();
                  v63 = v121;
                  OUTLINED_FUNCTION_8_44();
                  v64();
                  (*(v63 + 8))(&v130, v115, v63);
                  v65 = OUTLINED_FUNCTION_0_75();
                  v66 = v122;
                  sub_25BBC0130(v65, v67, v68);
                  v111 = v69;
                  v108 = v66;
                  v114 = *(v123 + 16);
                  v122 = (v123 + 16);
                  v70 = v124;
                  (v114)(v20, v125, v124);
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v71, v72, v73, v70);
                  OUTLINED_FUNCTION_6_48();
                  (v114)();
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v74, v75, v76, v70);
                  OUTLINED_FUNCTION_6_48();
                  (v114)();
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v77, v78, v79, v70);
                  v80 = v114;
                  OUTLINED_FUNCTION_6_48();
                  v80();
                  OUTLINED_FUNCTION_5_1();
                  __swift_storeEnumTagSinglePayload(v81, v82, v83, v70);
                  OUTLINED_FUNCTION_6_48();
                  v80();
                  OUTLINED_FUNCTION_5_1();
                  v87 = __swift_storeEnumTagSinglePayload(v84, v85, v86, v70);
                  v122 = &v107;
                  MEMORY[0x28223BE20](v87);
                  v114 = &v107;
                  v88 = v125;
                  *(&v107 - 4) = v111;
                  *(&v107 - 3) = v88;
                  v89 = v109;
                  *(&v107 - 2) = v2;
                  *(&v107 - 1) = v89;
                  MEMORY[0x28223BE20](v90);
                  v91 = v118;
                  *(&v107 - 14) = v120;
                  *(&v107 - 13) = v91;
                  v92 = v119;
                  *(&v107 - 12) = v17;
                  *(&v107 - 11) = v92;
                  *(&v107 - 10) = v116;
                  *(&v107 - 9) = v14;
                  v93 = v113;
                  *(&v107 - 8) = v117;
                  *(&v107 - 7) = v93;
                  v94 = v112;
                  *(&v107 - 6) = v11;
                  *(&v107 - 5) = v94;
                  *(&v107 - 4) = v110;
                  *(&v107 - 3) = v8;
                  *(&v107 - 2) = sub_25BC35E70;
                  *(&v107 - 1) = v95;
                  v96 = v108;
                  sub_25BC675C0(sub_25BC35E9C, (&v107 - 16), MEMORY[0x277D84F78] + 8, v129);
                  if (v96)
                  {
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_10_37();
                    swift_unknownObjectRelease();

                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_7_44();
                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_6_48();
                    sub_25BB0EA20(v20);
                    v97 = v124;
                    v20 = *(v123 + 8);
                    v20(v126, v124);
                    sub_25BB0EA20(v8);
                    sub_25BB0EA20(v11);
                    sub_25BB0EA20(v14);
                    sub_25BB0EA20(v17);
                    v20(v125, v97);
                    return v20;
                  }

                  OUTLINED_FUNCTION_6_48();
                  sub_25BB0EA20(v20);
                  sub_25BB0EA20(v8);
                  sub_25BB0EA20(v11);
                  sub_25BB0EA20(v14);
                  sub_25BB0EA20(v17);
                  v98 = *(v2 + 168);
                  if (*(v2 + 168))
                  {
                    v100 = v123;
                    v99 = v124;
                    v101 = v126;
                    v102 = v111;
                    if (v98 != 1)
                    {
                      goto LABEL_38;
                    }

LABEL_36:
                    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
                    v20 = swift_allocObject();
                    *(v20 + 1) = xmmword_25BCBAE90;
                    *(v20 + 4) = v102;
                    *(v20 + 5) = &off_286D4DBE0;
                    v104 = v113;
                    *(v20 + 6) = v117;
                    *(v20 + 7) = v104;
                    v105 = v110;
                    *(v20 + 8) = v112;
                    *(v20 + 9) = v105;
LABEL_39:
                    swift_unknownObjectRelease();
                    OUTLINED_FUNCTION_10_37();
                    swift_unknownObjectRelease();
                    swift_unknownObjectRelease();
                    v106 = *(v100 + 8);
                    v106(v101, v99);
                    v106(v125, v99);
                    return v20;
                  }

                  type metadata accessor for ContextManager();
                  sub_25BAA49B8();
                  sub_25BAA4A5C(v127);

                  v100 = v123;
                  v99 = v124;
                  v101 = v126;
                  v102 = v111;
                  if (v128)
                  {
                    v103 = *(v128 + 24);
                    sub_25BAA4AF4(v127);
                    if (v103)
                    {
                      goto LABEL_36;
                    }
                  }

                  else
                  {
                    sub_25BAA4AF4(v127);
                  }

LABEL_38:
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
                  v20 = swift_allocObject();
                  *(v20 + 1) = xmmword_25BCBAE50;
                  *(v20 + 4) = v102;
                  *(v20 + 5) = &off_286D4DBE0;
                  swift_unknownObjectRelease();
                  swift_unknownObjectRelease();
                  goto LABEL_39;
                }
              }

              swift_unknownObjectRelease();
              OUTLINED_FUNCTION_10_37();
              v20 = v119;
            }

            else
            {
              v20 = v120;
            }

            swift_unknownObjectRelease();
          }

          else
          {
            v20 = v34;
          }
        }

        else
        {
          v20 = v34;
        }

        swift_unknownObjectRelease();
      }
    }

    swift_unknownObjectRelease();
  }

  sub_25BB0E2EC();
  v54 = swift_allocError();
  OUTLINED_FUNCTION_11_2(xmmword_25BCCD410, v54, v55);
  return v20;
}

uint64_t sub_25BC34200(uint64_t a1, void *a2, uint64_t a3, const void *a4, void *__src, int a6, uint64_t a7, uint64_t a8, size_t a9)
{
  v39 = a7;
  v43 = a3;
  v53 = a2;
  v42 = a1;
  memcpy(v48, __src, sizeof(v48));
  memcpy(v49, a4, sizeof(v49));
  v41 = sub_25BCB530C();
  v11 = *(v41 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v41);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_25BCB52CC();
  v15 = *(v40 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v40);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v38 - v21;
  v23 = sub_25BCB54EC();
  (*(*(v23 - 8) + 16))(v22, v39, v23);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v23);
  v24 = a8;

  v39 = v22;
  sub_25BC6728C(v22);
  sub_25BB1A740(&v46);
  memcpy(v50, v49, 0xB0uLL);
  sub_25BB45694(v50);
  memcpy(v51, v48, 0xB0uLL);
  sub_25BB45694(v51);
  sub_25BCB533C();
  memcpy(v52, v50, 0xB1uLL);
  memcpy(&v52[184], v51, 0xB1uLL);
  memcpy(v18, v52, 0x169uLL);
  v25 = v42;
  (*(v15 + 104))(v18, *MEMORY[0x277D82EB8], v40);
  v26 = *(v24 + 72);
  v27 = *(v24 + 76);
  (*(v11 + 104))(v14, *MEMORY[0x277D82F78], v41);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  if (!sub_25BCB532C())
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v29 = xmmword_25BCCD410;
    *(v29 + 16) = 0x8000;
    swift_willThrow();
LABEL_16:
    sub_25BB1A750();

    return sub_25BB0EA20(v39);
  }

  if (*(v24 + 168))
  {
    v28 = *(v24 + 168) == 1;
  }

  else
  {
    type metadata accessor for ContextManager();
    sub_25BAA49B8();
    sub_25BAA4A5C(v44);

    if (v45)
    {
      v28 = *(v45 + 24) & 1;
    }

    else
    {
      v28 = 0;
    }

    sub_25BAA4AF4(v44);
  }

  v30 = *(v25 + 136);
  if (!v30 || (v31 = v47) == 0)
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v37 = 0xD000000000000028;
    *(v37 + 8) = 0x800000025BCE3C80;
    *(v37 + 16) = 0x2000;
    swift_willThrow();

    goto LABEL_16;
  }

  v53 = sub_25BCB548C();
  v44[0] = *(*(v24 + 40) + 152);
  result = sub_25BC6FC68();
  if (!*(result + 16))
  {
    __break(1u);
    goto LABEL_19;
  }

  v33 = *(result + 32);

  v34 = *(*(v24 + 40) + 152);
  v43 = v24;
  v44[0] = v34;
  result = sub_25BC6FC68();
  if (!*(result + 16))
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v35 = *(result + 32);

  if (BNNSNormalizationFilterApplyBatch(v53, a9, v30, v33, v31, v35, v28))
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v36 = 0xD000000000000029;
    *(v36 + 8) = 0x800000025BCE3CB0;
    *(v36 + 16) = 0x2000;
    swift_willThrow();

    goto LABEL_16;
  }

  sub_25BB1A750();

  return sub_25BB0EA20(v39);
}

uint64_t sub_25BC347CC(uint64_t a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_4_0();
  v143 = (v8 - v9);
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v10);
  v144 = &v120 - v11;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v12);
  v146 = &v120 - v13;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v14);
  v147 = &v120 - v15;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v16);
  v142 = &v120 - v17;
  v18 = sub_25BCB54EC();
  v19 = OUTLINED_FUNCTION_2(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_4_0();
  v145 = v24 - v25;
  OUTLINED_FUNCTION_6_1();
  MEMORY[0x28223BE20](v26);
  v141 = &v120 - v27;
  swift_beginAccess();
  v28 = v1[19];
  v29 = sub_25BAC4018();
  v30 = sub_25BB3EE04(v29, a1);
  if (!v30)
  {
    goto LABEL_15;
  }

  v3 = v30;
  v139 = v31;
  v140 = v21;
  v32 = v4[5];
  v33 = sub_25BAC4018();
  v34 = sub_25BB3EE04(v33, a1);
  if (!v34)
  {
LABEL_14:
    swift_unknownObjectRelease();
LABEL_15:
    sub_25BB0E2EC();
    v75 = swift_allocError();
    OUTLINED_FUNCTION_11_2(xmmword_25BCCD420, v75, v76);
    return v3;
  }

  v36 = v34;
  if (!v4[6] || (v138 = v35, v37 = sub_25BAC4018(), v38 = sub_25BB3EE04(v37, a1), v136 = v39, !v38))
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v137 = v38;
  if (!v4[7] || (v40 = sub_25BAC4018(), (v41 = sub_25BB3EE04(v40, a1)) == 0))
  {
    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v120 = v3;
  v128 = v18;
  v134 = v41;
  v131 = v42;
  v130 = type metadata accessor for NativeTensorStorage();
  ObjectType = swift_getObjectType();
  v44 = v138;
  v45 = v138 + 16;
  v135 = *(v138 + 16);
  v46 = ObjectType;
  (v135)(v148, ObjectType, v138);
  v47 = *(v44 + 8);
  v129 = v46;
  v47(&v150, v46, v44);
  v48 = OUTLINED_FUNCTION_0_75();
  sub_25BBC0130(v48, v49, v50);
  v126 = v51;
  v127 = v45;
  (v135)(v148, v46, v44);
  v47(&v150, v46, v44);
  v52 = OUTLINED_FUNCTION_0_75();
  sub_25BBC0130(v52, v53, v54);
  v133 = v55;
  v56 = swift_getObjectType();
  v57 = v136;
  v58 = *(v136 + 16);
  v123 = v136 + 16;
  v121 = v58;
  v58(v148, v56, v136);
  v59 = *(v57 + 8);
  v122 = v56;
  v59(&v150, v56, v57);
  v60 = OUTLINED_FUNCTION_0_75();
  sub_25BBC0130(v60, v61, v62);
  v132 = v63;
  v64 = swift_getObjectType();
  v65 = v131;
  (*(v131 + 16))(v148, v64, v131);
  (*(v65 + 8))(&v150, v64, v65);
  v66 = OUTLINED_FUNCTION_0_75();
  v67 = v129;
  sub_25BBC0130(v66, v68, v69);
  v71 = v70;
  v125 = v2;
  v72 = sub_25BC5D23C(v67, v138);
  v130 = v71;
  if (v72 < 2)
  {
    v124 = 1;
    v74 = v141;
  }

  else
  {
    OUTLINED_FUNCTION_8_44();
    v73();
    v74 = v141;
    if (!v150[2])
    {
      OUTLINED_FUNCTION_4_55();
      OUTLINED_FUNCTION_9_42();
    }

    v124 = v150[4];
  }

  OUTLINED_FUNCTION_8_44();
  v78();
  v79 = v148[0];
  v80 = *(v148[0] + 16);
  if (v80 < 4)
  {
    v81 = 4 - v80;
    sub_25BCB617C();
    v82 = sub_25BAC0E14(1, v81);
    v150 = v79;
    sub_25BAC0EB8(v82);

    v79 = v150;
    if (!v150[2])
    {

      v79 = &unk_286D43AE0;
    }
  }

  sub_25BBF5F44(v79, 0);

  v121(v148, v122, v136);
  v83 = v148[0];
  if (!*(v148[0] + 16))
  {

    v83 = &unk_286D43B08;
  }

  sub_25BBF5F44(v83, 0);

  v84 = *(v140 + 16);
  v85 = v128;
  v84(v142, v74, v128);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v86, v87, v88, v85);
  v84(v147, v74, v85);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v85);
  v92 = v145;
  v84(v146, v145, v85);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v85);
  v84(v144, v92, v85);
  OUTLINED_FUNCTION_5_1();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v85);
  v99 = v143;
  v84(v143, v74, v85);
  OUTLINED_FUNCTION_5_1();
  v103 = __swift_storeEnumTagSinglePayload(v100, v101, v102, v85);
  v135 = &v120;
  MEMORY[0x28223BE20](v103);
  *(&v120 - 8) = v133;
  *(&v120 - 7) = v74;
  *(&v120 - 6) = v132;
  *(&v120 - 5) = v92;
  *(&v120 - 4) = v130;
  *(&v120 - 3) = v4;
  *(&v120 - 2) = v124;
  v104 = swift_getObjectType();
  MEMORY[0x28223BE20](v104);
  v105 = v138;
  *(&v120 - 14) = v36;
  *(&v120 - 13) = v105;
  v106 = v137;
  *(&v120 - 12) = v147;
  *(&v120 - 11) = v106;
  v107 = v146;
  *(&v120 - 10) = v136;
  *(&v120 - 9) = v107;
  v108 = v144;
  v109 = v131;
  *(&v120 - 8) = v134;
  *(&v120 - 7) = v109;
  v110 = v126;
  *(&v120 - 6) = v108;
  *(&v120 - 5) = v110;
  *(&v120 - 4) = &off_286D4DBE0;
  *(&v120 - 3) = v99;
  *(&v120 - 2) = sub_25BC35F54;
  *(&v120 - 1) = (&v120 - 10);
  v111 = v142;

  v112 = v125;
  sub_25BC675C0(sub_25BC36030, (&v120 - 16), MEMORY[0x277D84F78] + 8, v149);
  if (v112)
  {
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_7_44();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    sub_25BB0EA20(v111);
    sub_25BB0EA20(v143);
    sub_25BB0EA20(v108);
    sub_25BB0EA20(v146);
    sub_25BB0EA20(v147);
    v3 = *(v140 + 8);
    v113 = OUTLINED_FUNCTION_11_39();
    (v3)(v113);
    v114 = OUTLINED_FUNCTION_10_37();
    (v3)(v114, v106);
  }

  else
  {

    OUTLINED_FUNCTION_7_44();
    sub_25BB0EA20(v111);
    sub_25BB0EA20(v143);
    sub_25BB0EA20(v108);
    sub_25BB0EA20(v146);
    sub_25BB0EA20(v147);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB50C0, &qword_25BCBB8D8);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_25BCBAE90;
    *(v3 + 32) = v133;
    v115 = v132;
    *(v3 + 40) = &off_286D4DBE0;
    *(v3 + 48) = v115;
    v116 = v130;
    *(v3 + 56) = &off_286D4DBE0;
    *(v3 + 64) = v116;
    *(v3 + 72) = &off_286D4DBE0;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    v117 = *(v140 + 8);
    v118 = OUTLINED_FUNCTION_11_39();
    v117(v118);
    v119 = OUTLINED_FUNCTION_10_37();
    (v117)(v119, v106);
  }

  return v3;
}

uint64_t sub_25BC35280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v34 = a8;
  v36 = a6;
  v33 = a5;
  v32 = a4;
  v30 = a3;
  v29 = a2;
  v28 = a1;
  v35 = a9;
  v27 = a13;
  v31 = a11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4080, &qword_25BCBC638);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v27 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v27 - v22;
  v24 = sub_25BCB54EC();
  v25 = *(*(v24 - 8) + 16);
  v25(v23, a7, v24);
  __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
  v25(v20, a10, v24);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v24);
  v25(v17, a10, v24);
  __swift_storeEnumTagSinglePayload(v17, 0, 1, v24);
  v47 = a12;
  v48 = v27;
  v49 = v28;
  v50 = v29;
  v51 = v30;
  v52 = v32;
  v53 = v33;
  v38 = v34;
  v39 = &off_286D4DBE0;
  v40 = v20;
  v41 = v31;
  v42 = &off_286D4DBE0;
  v43 = v17;
  v44 = sub_25BC35FD0;
  v45 = &v46;
  sub_25BB0E340(v23, sub_25BC36004, v37, v35);
  sub_25BB0EA20(v23);
  sub_25BB0EA20(v17);
  return sub_25BB0EA20(v20);
}

uint64_t sub_25BC35520(const void *a1, const void *a2, const void *a3, uint64_t a4, size_t a5, const void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v49 = a1;
  v57 = a7;
  v58 = a8;
  v50 = a6;
  v51 = a2;
  v52 = a3;
  v53 = a5;
  v55 = a10;
  v56 = a9;
  v66 = *MEMORY[0x277D85DE8];
  v11 = sub_25BCB530C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_25BCB52CC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25BB45648(v64);
  v54 = sub_25BCB533C();
  memcpy(v65, v64, 0xB1uLL);
  memcpy(&v65[184], v64, 0xB1uLL);
  memcpy(v20, v65, 0x169uLL);
  (*(v17 + 104))(v20, *MEMORY[0x277D82EB8], v16);
  v21 = *(a4 + 72);
  v22 = *(a4 + 76);
  v23 = v11;
  v24 = v55;
  (*(v12 + 104))(v15, *MEMORY[0x277D82F78], v23);
  sub_25BCB6E0C();
  sub_25BCB6D6C();
  v25 = v57;
  if (!sub_25BCB532C())
  {
    sub_25BB0E2EC();
    swift_allocError();
    *v46 = xmmword_25BCCD420;
    *(v46 + 16) = 0x8000;
    result = swift_willThrow();
    goto LABEL_15;
  }

  v26 = *(v25 + 136);
  if (!v26 || (v27 = *(v24 + 136)) == 0)
  {
    v42 = 0x800000025BCE3CE0;
    sub_25BB0E2EC();
    swift_allocError();
    v44 = 0xD00000000000002DLL;
    goto LABEL_13;
  }

  v28 = sub_25BCB548C();
  v29 = a4;
  *&v63.flags = *(*(a4 + 40) + 152);
  v30 = sub_25BC6FC68();
  if (!*(v30 + 16))
  {
    __break(1u);
    goto LABEL_18;
  }

  v31 = *(v30 + 32);

  *&v63.flags = *(*(a4 + 40) + 152);
  v32 = sub_25BC6FC68();
  v33 = v53;
  if (!*(v32 + 16))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v34 = *(v32 + 32);

  if (!BNNSNormalizationFilterApplyBatch(v28, v33, v26, v31, v27, v34, 1))
  {
    memcpy(&v63, v49, sizeof(v63));
    memcpy(&v62, v50, sizeof(v62));
    memcpy(&v61, v51, sizeof(v61));
    memcpy(&v60, v52, sizeof(v60));
    v35 = sub_25BCB548C();
    v59 = *(*(v29 + 40) + 152);
    v36 = sub_25BC6FC68();
    if (*(v36 + 16))
    {
      v37 = *(v36 + 32);

      v59 = *(*(v29 + 40) + 152);
      v38 = sub_25BC6FC68();
      if (*(v38 + 16))
      {
        v39 = *(v38 + 32);

        v59 = *(*(v29 + 40) + 152);
        v40 = sub_25BC6FC68();
        if (*(v40 + 16))
        {
          v41 = *(v40 + 32);

          if (!BNNSNormalizationFilterApplyBackwardBatch(v35, v33, &v63, v37, v27, v39, &v62, v41, &v60, &v61))
          {

            goto LABEL_15;
          }

          goto LABEL_11;
        }

LABEL_21:
        __break(1u);
      }

LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_11:
  v42 = 0x800000025BCE3D10;
  sub_25BB0E2EC();
  swift_allocError();
  v44 = 0xD00000000000002ELL;
LABEL_13:
  *v43 = v44;
  *(v43 + 8) = v42;
  *(v43 + 16) = 0x2000;
  swift_willThrow();

LABEL_15:
  v47 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_25BC35A34(uint64_t a1)
{
  result = sub_25BC35ABC(&qword_27FBB6140, type metadata accessor for BatchNormGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC35A78(uint64_t a1)
{
  result = sub_25BC35ABC(&qword_27FBB6148, type metadata accessor for BatchNormOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC35ABC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_25BC35B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, __int128 a8, __int128 a9, uint64_t a10)
{
  swift_getObjectType();
  v18 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a1;
  return sub_25BC675C0(sub_25BC35EB4, v17, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BC35BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, __int128 a8, uint64_t a9)
{
  swift_getObjectType();
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a1;
  return sub_25BC675C0(sub_25BC35EF0, v16, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BC35CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, __int128 a7, uint64_t a8)
{
  swift_getObjectType();
  v16 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a7;
  v21 = a8;
  v22 = a1;
  return sub_25BC675C0(sub_25BC35F28, v15, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BC35DAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  swift_getObjectType();
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a7;
  v20 = a1;
  return sub_25BC675C0(sub_25BB457F0, v14, MEMORY[0x277D84F78] + 8, a6);
}

uint64_t sub_25BC36048(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return 0;
  }

  v6 = sub_25BB49D04();
  sub_25BAB4D78(a2, (v6 & 0xC000000000000001) == 0, v6);
  if ((v6 & 0xC000000000000001) != 0)
  {
    MEMORY[0x25F8779B0](a2, v6);
  }

  else
  {
    v7 = *(v6 + 8 * a2 + 32);
  }

  v8 = sub_25BAC4018();

  return sub_25BB3EE04(v8, a1);
}

void sub_25BC360F0(unint64_t a1)
{
  type metadata accessor for NativeTensorStorage();
  v3 = sub_25BB49E68();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(v3 + 16) <= a1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v4 = *(v3 + 16 * a1 + 32);
  sub_25BCB617C();

  v7 = v4;
  v5 = *(v1 + 168);
  if (*(v5 + 16) > a1)
  {
    v6 = *(v5 + 16 * a1 + 40);
    sub_25BBC0130(&v7, &v6, 0);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_25BC361B8(uint64_t result, uint64_t a2, int64_t a3)
{
  v3 = a3;
  if (result)
  {
    ObjectType = swift_getObjectType();
    v6 = *(a2 + 16);
    swift_unknownObjectRetain();
    v17 = ObjectType;
    v6(__dst, ObjectType, a2);
    result = __dst[0];
    if (*(__dst[0] + 16))
    {
      v7 = *(__dst[0] + 32);

      if (!v3)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      if (v7 == 0x8000000000000000 && v3 == -1)
      {
        goto LABEL_32;
      }

      if (v3 < 0)
      {
        goto LABEL_30;
      }

      v20 = MEMORY[0x277D84F90];
      v9 = v7 / v3;
      result = sub_25BB00AB4(0, v3, 0);
      v10 = 1;
      v11 = v20;
      while (1)
      {
        v12 = (v10 - 1) * v9;
        if (((v10 - 1) * v9) >> 64 != v12 >> 63)
        {
          break;
        }

        if ((v10 * v9) >> 64 != (v10 * v9) >> 63)
        {
          goto LABEL_26;
        }

        if (v10 * v9 < v12)
        {
          goto LABEL_27;
        }

        type metadata accessor for BNNSNDArrayDescriptor(0);
        sub_25BC36408((v10 - 1) * v9, v10 * v9, sub_25BC363F8, 0, v17, v13, a2, __src);
        memcpy(__dst, __src, sizeof(__dst));
        v20 = v11;
        v15 = *(v11 + 16);
        v14 = *(v11 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_25BB00AB4(v14 > 1, v15 + 1, 1);
          v11 = v20;
        }

        *(v11 + 16) = v15 + 1;
        result = memcpy((v11 + 176 * v15 + 32), __dst, 0xB0uLL);
        if (v3 == v10)
        {
          swift_unknownObjectRelease();
          return v11;
        }

        ++v10;
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
    }

    __break(1u);
    goto LABEL_29;
  }

  if (a3 < 0)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (!a3)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for BNNSNDArrayDescriptor(0);
  v11 = sub_25BCB67DC();
  *(v11 + 16) = v3;
  v16 = 32;
  do
  {
    bzero((v11 + v16), 0xB0uLL);
    v16 += 176;
    --v3;
  }

  while (v3);
  return v11;
}

uint64_t sub_25BC36408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v56 = a6;
  v10 = v8;
  v53 = a3;
  v54 = a4;
  v61 = a2;
  v62 = a1;
  v55 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB4090, &qword_25BCBC640);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v52 = &v51 - v15;
  v16 = sub_25BCB54EC();
  v17 = OUTLINED_FUNCTION_2(v16);
  v59 = v18;
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v58 = &v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a7 + 8;
  v60 = *(a7 + 8);
  v60(&v63, a5, a7, v21);
  if (v63 > 0xCu || ((1 << v63) & 0x1777) == 0)
  {
    goto LABEL_39;
  }

  v24 = a7 + 16;
  v25 = *(a7 + 16);
  v26 = OUTLINED_FUNCTION_1_62();
  v25(v26);
  v27 = v63[1].i64[0];

  if (v27)
  {
    v28 = v62 == v61;
  }

  else
  {
    v28 = 1;
  }

  if (v28 || (v29 = OUTLINED_FUNCTION_1_62(), v25(v29), OUTLINED_FUNCTION_7_45(), v30 = sub_25BAC863C(0), , v30))
  {
    OUTLINED_FUNCTION_10_38();
    v51 = 175;
    goto LABEL_42;
  }

  v31 = OUTLINED_FUNCTION_1_62();
  v25(v31);
  OUTLINED_FUNCTION_7_45();
  v32 = sub_25BC6FC68();

  if (!*(v32 + 16))
  {
    __break(1u);
    goto LABEL_30;
  }

  v57 = v16;
  v16 = *(v32 + 32);

  v9 = v16 * v62;
  if ((v16 * v62) >> 64 != (v16 * v62) >> 63)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v33 = OUTLINED_FUNCTION_1_62();
  (v60)(v33);
  if (v63 - 1 > 0xA)
  {
    v34 = 1;
  }

  else
  {
    v34 = qword_25BCCD4A0[(v63 - 1)];
  }

  v16 = v9 * v34;
  if ((v9 * v34) >> 64 != (v9 * v34) >> 63)
  {
    goto LABEL_31;
  }

  v35 = OUTLINED_FUNCTION_1_62();
  v25(v35);
  OUTLINED_FUNCTION_7_45();
  v32 = sub_25BC6FC68();

  if (!*(v32 + 16))
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v51 = v16;
  v16 = *(v32 + 32);

  v9 = v16 * v61;
  if ((v16 * v61) >> 64 != (v16 * v61) >> 63)
  {
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v36 = OUTLINED_FUNCTION_1_62();
  (v60)(v36);
  if (v63 - 1 > 0xA)
  {
    v37 = 1;
  }

  else
  {
    v37 = qword_25BCCD4A0[(v63 - 1)];
  }

  v16 = v57;
  v23 = v9 * v37;
  if ((v9 * v37) >> 64 != (v9 * v37) >> 63)
  {
    goto LABEL_34;
  }

  v38 = OUTLINED_FUNCTION_1_62();
  v25(v38);
  v32 = v58;
  if (v62 < 0)
  {
LABEL_41:
    OUTLINED_FUNCTION_10_38();
    v51 = 182;
    goto LABEL_42;
  }

  v9 = v63;
  if (!v63[1].i64[0])
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if (v63[2].i64[0] < v61)
  {
    goto LABEL_41;
  }

  v24 = v61 - v62;
  if (!__OFSUB__(v61, v62))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  sub_25BAA2110(v9);
  v9 = v48;
LABEL_25:
  if (!*(v9 + 16))
  {
    __break(1u);
LABEL_39:
    v50 = 0;
    v49 = 170;
LABEL_42:
    result = sub_25BCB74CC();
    __break(1u);
    return result;
  }

  *(v9 + 32) = v24;
  v39 = sub_25BCB50AC();
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v39);
  sub_25BCB617C();
  v40 = sub_25BCB54FC();
  if (*(v9 + 16) == 2)
  {
    v41 = v59;
    (*(v59 + 8))(v32, v16);
    *v32 = vextq_s8(*(v9 + 32), *(v9 + 32), 8uLL);
    *(v32 + 16) = vdupq_n_s64(1uLL);
    *(v32 + 32) = 0u;
    *(v32 + 48) = 0u;
    v40 = (*(v41 + 104))(v32, *MEMORY[0x277D830B0], v16);
  }

  v42 = MEMORY[0x28223BE20](v40);
  v43 = v56;
  *(&v51 - 10) = a5;
  *(&v51 - 9) = v43;
  v44 = v51;
  *(&v51 - 8) = a7;
  *(&v51 - 7) = v44;
  *(&v51 - 6) = v23;
  *(&v51 - 5) = v10;
  v46 = v53;
  v45 = v54;
  *(&v51 - 4) = v32;
  *(&v51 - 3) = v46;
  v49 = v45;
  (*(a7 + 56))(sub_25BC39A0C, v42);
  (*(v59 + 8))(v32, v16);
}

void *sub_25BC369A8@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X4>, void *a5@<X8>)
{
  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result[2] <= a4)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = memcpy(v9, &result[22 * a4 + 4], sizeof(v9));
  if (*(a2 + 16) <= a4)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  result = memcpy(__dst, (a2 + 176 * a4 + 32), sizeof(__dst));
  if (*(a3 + 16) > a4)
  {
    memcpy(&v12[704], (a3 + 176 * a4 + 32), 0xB0uLL);
    sub_25BCB6CCC();
    memcpy(__src, v9, 0xB0uLL);
    bzero(&__src[176], 0xB0uLL);
    memcpy(v12, __src, 0x160uLL);
    memcpy(&v12[352], __dst, 0xB0uLL);
    bzero(&v12[528], 0xB0uLL);
    return memcpy(a5, v12, 0x3A0uLL);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_25BC379A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11)
{
  MEMORY[0x28223BE20](a1);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  memcpy(v53, v25, 0xB1uLL);
  if (sub_25BB456E4(v53) == 1 || (memcpy(v47, v53, sizeof(v47)), memcpy(v52, v18, 0xB1uLL), sub_25BB456E4(v52) == 1) || (memcpy(v46, v52, sizeof(v46)), memcpy(v51, v16, 0xB1uLL), sub_25BB456E4(v51) == 1) || (memcpy(v45, v51, sizeof(v45)), memcpy(v50, v14, 0xB1uLL), sub_25BB456E4(v50) == 1))
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  else
  {
    memcpy(v44, v50, sizeof(v44));
    v32 = sub_25BB4AED4();
    v31 = sub_25BB4B058();
    v26 = sub_25BB4AF2C();
    v27 = sub_25BB4AE88();
    v28 = *(v12 + 96);
    memcpy(v49, v22, 0xB1uLL);
    if (sub_25BB456E4(v49) == 1)
    {
      bzero(v43, 0xB0uLL);
    }

    else
    {
      memcpy(v43, v22, sizeof(v43));
    }

    memcpy(v48, v20, 0xB1uLL);
    if (sub_25BB456E4(v48) == 1)
    {
      bzero(v42, 0xB0uLL);
    }

    else
    {
      memcpy(v42, v20, sizeof(v42));
    }

    memcpy(__dst, v47, 0xB0uLL);
    memcpy(&__dst[176], v43, 0xB0uLL);
    memcpy(&__dst[352], v42, 0xB0uLL);
    memcpy(__src, v46, 0xB0uLL);
    memcpy(&__src[176], v45, 0xB0uLL);
    memcpy(&__src[352], v44, 0xB0uLL);
    sub_25BCB6DCC();
    sub_25BC369A8(a9, a10, a11, 0, v41);
    sub_25BCB6DCC();
    sub_25BC369A8(a9, a10, a11, 1uLL, v40);
    sub_25BCB6DBC();
    sub_25BC369A8(a9, a10, a11, 2uLL, v39);
    sub_25BCB6DCC();
    sub_25BC369A8(a9, a10, a11, 3uLL, v38);
    sub_25BCB6DBC();
    sub_25BCB6CCC();
    *v24 = v32;
    *(v24 + 8) = v31;
    *(v24 + 16) = v26;
    *(v24 + 24) = 1;
    *(v24 + 32) = v27;
    *(v24 + 40) = 0;
    *(v24 + 44) = v28;
    bzero((v24 + 48), 0xB0uLL);
    memcpy((v24 + 224), __dst, 0x210uLL);
    memcpy((v24 + 752), __src, 0x210uLL);
    memcpy((v24 + 1280), v41, 0x3A0uLL);
    memcpy((v24 + 2208), v40, 0x3A0uLL);
    memcpy((v24 + 3136), v39, 0x3A0uLL);
    result = memcpy((v24 + 4064), v38, 0x3A0uLL);
    v30 = v36;
    *(v24 + 4992) = v35;
    *(v24 + 5008) = v30;
    *(v24 + 5024) = v37;
  }

  return result;
}

void sub_25BC37E88(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X5>, void (*a4)(_DWORD *)@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v53 = a5;
  v26 = a3;
  v27 = a6;
  v12 = sub_25BCB54EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 < a1)
  {
    __break(1u);
  }

  else
  {
    v25 = a4;
    v23 = a7;
    v18 = v15;
    v24 = sub_25BCB6F2C();
    (*(a9 + 8))(&v30, v23, a9);
    v19 = v30;
    (*(v13 + 16))(v17, v26, v18);
    v20 = sub_25BCB54CC();
    sub_25BCB54BC();
    sub_25BCB54DC();
    v29 = v19;
    v21 = sub_25BBF4F40();
    v28 = v19;
    v22 = sub_25BBF4F40();
    (*(v13 + 8))(v17, v18);
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v43 = v34;
    v44 = v35;
    v45 = v36;
    v46 = v37;
    v39[0] = 0;
    v39[1] = v20;
    v47 = v38;
    v48 = v24;
    v49 = v21;
    v50 = 0;
    v51 = v22;
    v52 = 1065353216;
    v25(v39);
  }
}

uint64_t sub_25BC380B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v112[2] = a3;
  v112[3] = a4;
  v112[4] = a5;
  v112[5] = a6;
  v112[6] = a8;
  v112[7] = a9;
  v112[8] = a10;
  v112[9] = a11;
  v112[10] = a12;
  v112[11] = a13;
  v112[12] = a14;
  v112[13] = a15;
  v112[14] = a16;
  v112[15] = a17;
  v112[16] = a18;
  v112[17] = a19;
  v112[18] = a20;
  v112[19] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v101 = sub_25BC39C14;
    v102 = v112;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v24 = v23;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v100, v24, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v103[1] = a5;
    v103[2] = a4;
    v108 = a16;
    v109 = a7;
    v110 = a13;
    v111 = v20;
    v106 = a1;
    v107 = a18;
    v104 = a3;
    v105 = a6;
    v103[3] = a8;
    v115 = a10;
    sub_25BB45648(v113);
    memcpy(v114, v113, 0xB1uLL);
    MEMORY[0x28223BE20](v106);
    v99[2] = v105;
    v99[3] = a8;
    v99[4] = a9;
    v99[5] = v27;
    v99[6] = v28;
    v99[7] = v29;
    v99[8] = v30;
    v99[9] = a14;
    v99[10] = v31;
    v99[11] = v32;
    v99[12] = v33;
    v99[13] = v34;
    v100[0] = v35;
    v100[1] = a20;
    v101 = v26;
    v102 = v114;
    if (v104)
    {
      v36 = swift_getObjectType();
      MEMORY[0x28223BE20](v36);
      v97 = sub_25BC39BFC;
      v98 = v99;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v38 = v37;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v96, v38, v109);
      return swift_unknownObjectRelease();
    }

    else
    {
      MEMORY[0x28223BE20](v26);
      v95[2] = v40;
      v95[3] = v41;
      v95[4] = v42;
      v95[5] = v43;
      v95[6] = a14;
      v95[7] = v44;
      v95[8] = v45;
      v95[9] = v46;
      v95[10] = v48;
      v95[11] = v47;
      v96[0] = a20;
      v96[1] = v39;
      v97 = v114;
      v98 = v114;
      if (v105)
      {
        v49 = swift_getObjectType();
        v115 = v95;
        MEMORY[0x28223BE20](v49);
        v93 = sub_25BC39BE4;
        v94 = v95;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v51 = v50;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v92, v51, v109);
        return swift_unknownObjectRelease();
      }

      else
      {
        MEMORY[0x28223BE20](v39);
        v91[2] = v53;
        v91[3] = a14;
        v91[4] = v54;
        v91[5] = v55;
        v91[6] = v56;
        v91[7] = v57;
        v91[8] = v58;
        v91[9] = a20;
        v92[0] = v52;
        v92[1] = v114;
        v93 = v114;
        v94 = v114;
        if (v59)
        {
          v110 = v95;
          v60 = swift_getObjectType();
          MEMORY[0x28223BE20](v60);
          v89 = sub_25BC39BB4;
          v90 = v91;
          type metadata accessor for BNNSLayerParametersLSTM(0);
          v62 = v61;
          swift_unknownObjectRetain();
          sub_25BC675C0(sub_25BB45828, v88, v62, v109);
          return swift_unknownObjectRelease();
        }

        else
        {
          v115 = v99;
          v105 = v103;
          MEMORY[0x28223BE20](v52);
          v87[2] = v64;
          v87[3] = v65;
          v87[4] = v67;
          v87[5] = v66;
          v87[6] = a20;
          v87[7] = v63;
          v88[0] = v68;
          v88[1] = v68;
          v89 = v68;
          v90 = v68;
          v69 = v109;
          if (v70)
          {
            v71 = swift_getObjectType();
            v108 = v87;
            MEMORY[0x28223BE20](v71);
            v85 = sub_25BC39BCC;
            v86 = v87;
            type metadata accessor for BNNSLayerParametersLSTM(0);
            v73 = v72;
            swift_unknownObjectRetain();
            sub_25BC675C0(sub_25BB45828, v84, v73, v69);
            return swift_unknownObjectRelease();
          }

          else
          {
            v76 = MEMORY[0x28223BE20](v63);
            v83[2] = v74;
            v83[3] = a20;
            v83[4] = v77;
            v83[5] = v114;
            v84[0] = v114;
            v84[1] = v114;
            v85 = v114;
            v86 = v114;
            if (v78)
            {
              v110 = v75;
              v79 = swift_getObjectType();
              MEMORY[0x28223BE20](v79);
              v82[2] = sub_25BC39B9C;
              v82[3] = v83;
              type metadata accessor for BNNSLayerParametersLSTM(0);
              v81 = v80;
              swift_unknownObjectRetain();
              sub_25BC675C0(sub_25BB45828, v82, v81, v109);
              return swift_unknownObjectRelease();
            }

            else
            {
              return v74(v76);
            }
          }
        }
      }
    }
  }
}

uint64_t sub_25BC38780@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v95[2] = a3;
  v95[3] = a4;
  v95[4] = a5;
  v95[5] = a6;
  v95[6] = a8;
  v95[7] = a9;
  v95[8] = a10;
  v95[9] = a11;
  v95[10] = a12;
  v95[11] = a13;
  v95[12] = a14;
  v95[13] = a15;
  v95[14] = a16;
  v95[15] = a17;
  v95[16] = a18;
  v95[17] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v84 = sub_25BC39BFC;
    v85 = v95;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v22 = v21;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v83, v22, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v86[1] = a5;
    v87 = a4;
    v90 = v18;
    v91 = a7;
    v93 = a15;
    v94 = a13;
    v98 = a10;
    v92 = a14;
    v88 = a8;
    v89 = a1;
    sub_25BB45648(v96);
    memcpy(v97, v96, 0xB1uLL);
    MEMORY[0x28223BE20](a6);
    v82[2] = v26;
    v82[3] = a8;
    v82[4] = v27;
    v82[5] = v28;
    v82[6] = a11;
    v82[7] = v29;
    v82[8] = a13;
    v82[9] = v30;
    v82[10] = v31;
    v82[11] = a16;
    v83[0] = v32;
    v83[1] = a18;
    v84 = v33;
    v85 = v34;
    if (a3)
    {
      v35 = swift_getObjectType();
      MEMORY[0x28223BE20](v35);
      v80 = sub_25BC39BE4;
      v81 = v82;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v37 = v36;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v79, v37, v91);
      return swift_unknownObjectRelease();
    }

    else
    {
      v87 = v86;
      MEMORY[0x28223BE20](v26);
      v78[2] = v38;
      v78[3] = a11;
      v78[4] = v39;
      v78[5] = a13;
      v78[6] = v40;
      v78[7] = v41;
      v78[8] = v43;
      v78[9] = v42;
      v79[0] = a18;
      v79[1] = v44;
      v80 = v45;
      v81 = v45;
      if (v46)
      {
        v47 = swift_getObjectType();
        MEMORY[0x28223BE20](v47);
        v76 = sub_25BC39BB4;
        v77 = v78;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v49 = v48;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v75, v49, v91);
        return swift_unknownObjectRelease();
      }

      else
      {
        MEMORY[0x28223BE20](0);
        v74[2] = a13;
        v74[3] = v51;
        v74[4] = v53;
        v74[5] = v52;
        v74[6] = v54;
        v74[7] = a18;
        v75[0] = v55;
        v75[1] = v97;
        v76 = v97;
        v77 = v97;
        if (v56)
        {
          v57 = swift_getObjectType();
          MEMORY[0x28223BE20](v57);
          v72 = sub_25BC39BCC;
          v73 = v74;
          type metadata accessor for BNNSLayerParametersLSTM(0);
          v59 = v58;
          swift_unknownObjectRetain();
          sub_25BC675C0(sub_25BB45828, v71, v59, v91);
          return swift_unknownObjectRelease();
        }

        else
        {
          v98 = v82;
          v61 = MEMORY[0x28223BE20](v50);
          v70[2] = v60;
          v70[3] = v62;
          v70[4] = a18;
          v70[5] = v63;
          v71[0] = v64;
          v71[1] = v64;
          v72 = v64;
          v73 = v64;
          v65 = v91;
          if (a13)
          {
            v66 = swift_getObjectType();
            MEMORY[0x28223BE20](v66);
            v69[2] = sub_25BC39B9C;
            v69[3] = v70;
            type metadata accessor for BNNSLayerParametersLSTM(0);
            v68 = v67;
            swift_unknownObjectRetain();
            sub_25BC675C0(sub_25BB45828, v69, v68, v65);
            return swift_unknownObjectRelease();
          }

          else
          {
            return v60(a18, v61);
          }
        }
      }
    }
  }
}

uint64_t sub_25BC38D10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v73[2] = a3;
  v73[3] = a4;
  v73[4] = a5;
  v73[5] = a6;
  v73[6] = a8;
  v73[7] = a9;
  v73[8] = a10;
  v73[9] = a11;
  v73[10] = a12;
  v73[11] = a13;
  v73[12] = a14;
  v73[13] = a15;
  v73[14] = a16;
  v73[15] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v65 = sub_25BC39BE4;
    v66 = v73;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v20 = v19;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v64, v20, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v67[1] = a5;
    v67[2] = a4;
    v70 = v16;
    v71 = a7;
    v76 = a10;
    v72 = a11;
    v68 = a3;
    v69 = a6;
    sub_25BB45648(v74);
    v22 = memcpy(v75, v74, 0xB1uLL);
    v23 = v69;
    v24 = v76;
    MEMORY[0x28223BE20](v22);
    v63[2] = v69;
    v63[3] = a8;
    v63[4] = v26;
    v63[5] = v24;
    v63[6] = v27;
    v63[7] = a12;
    v63[8] = v28;
    v63[9] = a14;
    v64[0] = v30;
    v64[1] = v29;
    v65 = v31;
    v66 = v32;
    if (v68)
    {
      v33 = swift_getObjectType();
      MEMORY[0x28223BE20](v33);
      v61 = sub_25BC39BB4;
      v62 = v63;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v35 = v34;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v60, v35, v71);
      return swift_unknownObjectRelease();
    }

    else
    {
      v68 = v67;
      MEMORY[0x28223BE20](v25);
      v59[2] = v24;
      v59[3] = v37;
      v59[4] = a12;
      v59[5] = v38;
      v59[6] = a14;
      v59[7] = v39;
      v60[0] = v40;
      v60[1] = v41;
      v61 = v42;
      v62 = v42;
      if (v23)
      {
        v43 = swift_getObjectType();
        MEMORY[0x28223BE20](v43);
        v57 = sub_25BC39BCC;
        v58 = v59;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v45 = v44;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v56, v45, v71);
        return swift_unknownObjectRelease();
      }

      else
      {
        v48 = MEMORY[0x28223BE20](v36);
        v55[2] = v47;
        v55[3] = a14;
        v55[4] = v46;
        v55[5] = v49;
        v56[0] = v50;
        v56[1] = v75;
        v57 = v75;
        v58 = v75;
        if (v24)
        {
          v51 = swift_getObjectType();
          MEMORY[0x28223BE20](v51);
          v54[2] = sub_25BC39B9C;
          v54[3] = v55;
          type metadata accessor for BNNSLayerParametersLSTM(0);
          v53 = v52;
          swift_unknownObjectRetain();
          sub_25BC675C0(sub_25BB45828, v54, v53, v71);
          return swift_unknownObjectRelease();
        }

        else
        {
          return v47(v46, v48);
        }
      }
    }
  }
}

uint64_t sub_25BC3918C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, __n128), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v53[2] = a3;
  v53[3] = a4;
  v53[4] = a5;
  v53[5] = a6;
  v53[6] = a8;
  v53[7] = a9;
  v53[8] = a10;
  v53[9] = a11;
  v53[10] = a12;
  v53[11] = a13;
  v53[12] = a14;
  v53[13] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v46 = sub_25BC39BB4;
    v47 = v53;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v18 = v17;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v45, v18, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v48 = a5;
    v49 = a4;
    v52 = a7;
    v56 = v14;
    v50 = a8;
    v51 = a6;
    sub_25BB45648(v54);
    v21 = memcpy(v55, v54, sizeof(v55));
    v22 = v51;
    MEMORY[0x28223BE20](v21);
    v44[2] = v51;
    v44[3] = a8;
    v44[4] = a9;
    v44[5] = a10;
    v44[6] = v24;
    v44[7] = a12;
    v45[0] = v25;
    v45[1] = a14;
    v46 = v26;
    v47 = v27;
    if (a3)
    {
      v28 = swift_getObjectType();
      MEMORY[0x28223BE20](v28);
      v42 = sub_25BC39BCC;
      v43 = v44;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v30 = v29;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v41, v30, v52);
      return swift_unknownObjectRelease();
    }

    else
    {
      v49 = v44;
      v31 = MEMORY[0x28223BE20](v23);
      v40[2] = a10;
      v40[3] = v32;
      v40[4] = a12;
      v40[5] = v33;
      v41[0] = a14;
      v41[1] = v34;
      v42 = v35;
      v43 = v35;
      if (v22)
      {
        v36 = swift_getObjectType();
        MEMORY[0x28223BE20](v36);
        v39[2] = sub_25BC39B9C;
        v39[3] = v40;
        type metadata accessor for BNNSLayerParametersLSTM(0);
        v38 = v37;
        swift_unknownObjectRetain();
        sub_25BC675C0(sub_25BB45828, v39, v38, v52);
        return swift_unknownObjectRelease();
      }

      else
      {
        return a10(a12, v31);
      }
    }
  }
}

uint64_t sub_25BC39540()
{
  OUTLINED_FUNCTION_0_76();
  OUTLINED_FUNCTION_8_45();
  return sub_25BC380B8(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168));
}

uint64_t sub_25BC395CC@<X0>(uint64_t (*a1)()@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34[2] = a3;
  v34[3] = a4;
  v34[4] = a5;
  v34[5] = a6;
  v34[6] = a8;
  v34[7] = a9;
  v34[8] = a10;
  v34[9] = a11;
  v34[10] = a12;
  v34[11] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v29 = sub_25BC399DC;
    v30 = v34;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v16 = v15;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v28, v16, a7);
    return swift_unknownObjectRelease();
  }

  else
  {
    v31 = a5;
    v32 = a4;
    v33 = a7;
    v37 = v12;
    sub_25BB45648(v35);
    memcpy(v36, v35, 0xB1uLL);
    v21 = MEMORY[0x28223BE20](a3);
    v27[2] = v20;
    v27[3] = a8;
    v27[4] = a9;
    v27[5] = a10;
    v28[0] = a11;
    v28[1] = a12;
    v29 = a1;
    v30 = v36;
    if (v22)
    {
      v23 = swift_getObjectType();
      MEMORY[0x28223BE20](v23);
      v26[2] = sub_25BC399F4;
      v26[3] = v27;
      type metadata accessor for BNNSLayerParametersLSTM(0);
      v25 = v24;
      swift_unknownObjectRetain();
      sub_25BC675C0(sub_25BB45828, v26, v25, v33);
      return swift_unknownObjectRelease();
    }

    else
    {
      return v20(a9, a10, a11, a12, a1, v36, v36, v21);
    }
  }
}

uint64_t sub_25BC39858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, _BYTE *)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v19 = a7;
  v20[2] = a3;
  v20[3] = a4;
  v20[4] = a5;
  v20[5] = a6;
  v20[6] = a8;
  v20[7] = a9;
  v20[8] = a10;
  v20[9] = a1;
  if (a2)
  {
    ObjectType = swift_getObjectType();
    MEMORY[0x28223BE20](ObjectType);
    v18[2] = sub_25BC39B9C;
    v18[3] = v20;
    type metadata accessor for BNNSLayerParametersLSTM(0);
    v12 = v11;
    swift_unknownObjectRetain();
    sub_25BC675C0(sub_25BB45828, v18, v12, v19);
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_25BB45648(v21);
    memcpy(v22, v21, 0xB1uLL);
    return a3(a5, a6, a8, a9, a10, a1, v22);
  }
}

uint64_t sub_25BC39A48()
{
  OUTLINED_FUNCTION_0_76();
  OUTLINED_FUNCTION_8_45();
  return sub_25BC38780(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, v0[17], v0[18], v0[19]);
}

uint64_t sub_25BC39A88()
{
  OUTLINED_FUNCTION_0_76();
  OUTLINED_FUNCTION_8_45();
  return sub_25BC38D10(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v15, *(v0 + 136));
}

uint64_t sub_25BC39C2C@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);

  v5 = sub_25BAAF074(sub_25BBAF110);
  v7 = v6;
  *&v33 = "/Library/Caches/com.apple.xbs/Sources/NeuralNetworks/Sources/NeuralNetworks/LazyCore/Operations/UnaryArithmeticOps.swift";
  *(&v33 + 1) = 120;
  v34 = 2;
  v35 = xmmword_25BCC6DB0;
  v36 = "init(id:operator:operand:creationSite:backward:)";
  v37 = 48;
  v38 = 2;
  type metadata accessor for UnaryArithmeticOperation();
  swift_allocObject();
  v8 = sub_25BABE090(0, 0, 0, 13, v4, &v33, v5, v7);
  sub_25BAA51C8(*(v3 + 16) + 168, v32);
  type metadata accessor for ContextManager();

  sub_25BAA49B8();
  sub_25BAA4A5C(v31);

  sub_25BAA4AF4(v31);
  sub_25BAA49B8();
  sub_25BAA4A5C(v31);

  sub_25BAA4AF4(v31);
  type metadata accessor for TensorRepresentation();
  swift_allocObject();
  OUTLINED_FUNCTION_0_77();
  v9 = sub_25BABE62C(v8);
  type metadata accessor for TensorHandle();
  inited = swift_initStackObject();
  *(inited + 16) = v9;

  sub_25BAA6EB0();
  v11 = *(inited + 16);

  v12 = sub_25BAB3058();
  v14 = v13;

  if (v12)
  {
    v30 = a1;
    type metadata accessor for TrackedOperation();
    v16 = swift_allocObject();
    *(v16 + 16) = v12;
    *(v16 + 24) = v14;
    sub_25BAA51C8(*(inited + 16) + 168, v32);

    swift_unknownObjectRetain();
    v17 = sub_25BAD259C();

    sub_25BAA49B8();
    sub_25BAA4A5C(v31);

    v18 = v31[10];

    sub_25BAA4AF4(v31);
    swift_allocObject();
    OUTLINED_FUNCTION_0_77();
    v22 = sub_25BC102F4(v16, 0, v19, v20, v18, v17, v21);
    v23 = *(inited + 16);

    v24 = sub_25BA9BEA8();
    v26 = v25;

    if (v24)
    {

      swift_unknownObjectRetain();
      v27 = sub_25BA928B4();
      [v27 lock];

      sub_25BC5F7F0(v22, v24, v26);
      [*(v22 + 224) unlock];
      swift_unknownObjectRelease_n();
    }

    v28 = swift_allocObject();
    *(v28 + 16) = v22;

    sub_25BAA6EB0();

    swift_setDeallocating();
    sub_25BA9B528();
    swift_deallocClassInstance();

    swift_unknownObjectRelease();

    a1 = v30;
  }

  else
  {
    v32[0] = inited;
    sub_25BC39C2C(v31, v15);

    swift_setDeallocating();
    sub_25BA9B528();
    result = swift_deallocClassInstance();
    v28 = v31[0];
  }

  *a1 = v28;
  return result;
}

uint64_t sub_25BC3A020()
{
  OUTLINED_FUNCTION_4_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(OUTLINED_FUNCTION_5() + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_0_78();
  if (v3)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v4 = *(v2 + 32);
  }

  v5 = v4;
  sub_25BAF99E8(v0[6]);
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v6 = sub_25BCB672C();

  v8 = v0[3];
  v7 = v0[4];
  sub_25BCB617C();
  sub_25BB2B6E0(v5, v6, v8, v7, v1);

  return OUTLINED_FUNCTION_2_66();
}

uint64_t sub_25BC3A124(void *a1, uint64_t a2, SEL *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v7 = OUTLINED_FUNCTION_5();
  *(v7 + 16) = xmmword_25BCBB6D0;
  v8 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v8, v9, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v10 = *(a2 + 32);
  }

  v11 = v10;
  sub_25BAF99E8(v3[6]);
  sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
  v12 = sub_25BCB672C();

  v14 = v3[3];
  v13 = v3[4];
  sub_25BCB617C();
  v15 = sub_25BB07CA4(v11, v12, v14, v13, a1, a3);

  *(v7 + 32) = v15;
  return v7;
}

uint64_t sub_25BC3A25C(void *a1, uint64_t a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = OUTLINED_FUNCTION_5();
  *(v6 + 16) = xmmword_25BCBB6D0;
  v7 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v7, v8, a2);
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = v9;
  v16 = *(v3 + 48);
  v11 = sub_25BC6640C();
  v12 = *(v3 + 24);
  v13 = *(v3 + 32);
  sub_25BCB617C();
  v14 = sub_25BB9FAD0(v10, v11, v12, v13, a1);

  *(v6 + 32) = v14;
  return v6;
}

uint64_t sub_25BC3A35C(void *a1, uint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  v6 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v6, v7, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  sub_25BAB4D78(1, v5 == 0, a2);
  if (v5)
  {
    v10 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v10 = *(a2 + 40);
  }

  v11 = v10;
  v12 = *(v2 + 40);
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      v13 = *(v2 + 48);
      v15 = *(v2 + 24);
      v14 = *(v2 + 32);
      sub_25BCB617C();
      v16 = sub_25BC3B1F4(v9, v11, v12, v13, v15, v14, a1);
      goto LABEL_12;
    }

    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    sub_25BCB617C();
    v19 = &selRef_gatherNDWithUpdatesTensor_indicesTensor_batchDimensions_name_;
    v20 = v9;
    v21 = v11;
    v22 = v12;
  }

  else
  {
    v18 = *(v2 + 24);
    v17 = *(v2 + 32);
    sub_25BCB617C();
    v19 = &selRef_gatherAlongAxis_withUpdatesTensor_indicesTensor_name_;
    v20 = v12;
    v21 = v9;
    v22 = v11;
  }

  v16 = sub_25BB2B84C(v20, v21, v22, v18, v17, a1, v19);
LABEL_12:
  v23 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  result = OUTLINED_FUNCTION_5();
  *(result + 16) = xmmword_25BCBB6D0;
  if (v23)
  {
    v25 = result;
    *(result + 32) = v23;

    return v25;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25BC3A510(void *a1, unint64_t a2)
{
  v4 = a2 & 0xC000000000000001;
  v5 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v5, v6, a2);
  if (v4)
  {
    v7 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v23 = v7;
  sub_25BAB4D78(1, v4 == 0, a2);
  if (v4)
  {
    v8 = MEMORY[0x25F8779B0](1, a2);
  }

  else
  {
    v8 = *(a2 + 40);
  }

  v9 = v8;
  sub_25BAB4D78(2, v4 == 0, a2);
  if (v4)
  {
    v10 = MEMORY[0x25F8779B0](2, a2);
  }

  else
  {
    v10 = *(a2 + 48);
  }

  v11 = v10;
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v14 = OUTLINED_FUNCTION_5();
  *(v14 + 16) = xmmword_25BCBB6D0;
  v15 = sub_25BC3A4FC();
  v17 = *(v2 + 24);
  v16 = *(v2 + 32);
  sub_25BCB617C();
  if (v13)
  {
    if (v13 == 1)
    {
      v18 = &selRef_scatterWithDataTensor_updatesTensor_indicesTensor_axis_mode_name_;
    }

    else
    {
      v18 = &selRef_scatterNDWithDataTensor_updatesTensor_indicesTensor_batchDimensions_mode_name_;
    }

    v19 = v23;
    v20 = sub_25BC3B290(v23, v11, v9, v12, v15, v17, v16, a1, v18);
  }

  else
  {
    v19 = v23;
    v20 = sub_25BC3B290(v12, v23, v11, v9, v15, v17, v16, a1, &selRef_scatterAlongAxis_withDataTensor_updatesTensor_indicesTensor_mode_name_);
  }

  *(v14 + 32) = v20;

  return v14;
}

uint64_t sub_25BC3A6D8(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v3 = OUTLINED_FUNCTION_5();
  *(v3 + 16) = xmmword_25BCBB6D0;
  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v4 = sub_25BCB672C();
  v5 = v1[6];
  v7 = v1[3];
  v6 = v1[4];
  sub_25BCB617C();
  v8 = sub_25BB07CA4(v4, v5, v7, v6, a1, &selRef_concatTensors_dimension_name_);

  *(v3 + 32) = v8;
  return v3;
}

uint64_t sub_25BC3A7DC(void *a1, uint64_t a2)
{
  v6 = *(v2 + 48);
  if (*(v2 + 56) == 1)
  {
    OUTLINED_FUNCTION_0_78();
    if (v3)
    {
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = v7;
    sub_25BAF99E8(v6);
    sub_25BB2BA50(0, &qword_28154BD90, 0x277CCABB0);
    v9 = sub_25BCB672C();

    v10 = *(v2 + 64);
    v11 = *(v2 + 24);
    v12 = *(v2 + 32);
    v13 = sub_25BCB633C();
    v14 = [a1 splitTensor:v8 splitSizes:v9 axis:v10 name:v13];
  }

  else
  {
    OUTLINED_FUNCTION_0_78();
    if (v3)
    {
      OUTLINED_FUNCTION_4_4();
    }

    else
    {
      v15 = *(a2 + 32);
    }

    v9 = v15;
    v16 = *(v2 + 64);
    v17 = *(v2 + 24);
    v18 = *(v2 + 32);
    v13 = sub_25BCB633C();
    v14 = [a1 splitTensor:v9 numSplits:v6 axis:v16 name:v13];
  }

  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v19 = sub_25BCB673C();

  return v19;
}

uint64_t sub_25BC3A96C(void *a1, uint64_t a2)
{
  v5 = a2 & 0xC000000000000001;
  v6 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v6, v7, a2);
  if (v5)
  {
    v8 = MEMORY[0x25F8779B0](0, a2);
  }

  else
  {
    v8 = *(a2 + 32);
  }

  v9 = v8;
  v10 = v2[6];
  v11 = v2[3];
  v12 = v2[4];
  v13 = sub_25BCB633C();
  v14 = [a1 topKWithSourceTensor:v9 k:v10 name:v13];

  sub_25BB2BA50(0, &qword_27FBB3908, 0x277CD7888);
  v15 = sub_25BCB673C();

  return v15;
}

uint64_t sub_25BC3AA60()
{
  OUTLINED_FUNCTION_4_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(OUTLINED_FUNCTION_5() + 16) = xmmword_25BCBB6D0;
  v3 = v2 & 0xC000000000000001;
  v4 = OUTLINED_FUNCTION_3_2();
  sub_25BAB4D78(v4, v5, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v6 = *(v2 + 32);
  }

  v7 = v6;
  sub_25BAB4D78(1, v3 == 0, v2);
  if (v3)
  {
    v8 = MEMORY[0x25F8779B0](1, v2);
  }

  else
  {
    v8 = *(v2 + 40);
  }

  v9 = v8;
  v10 = v0[7];
  v12 = v0[3];
  v11 = v0[4];
  sub_25BCB617C();
  sub_25BB2B84C(v7, v9, v10, v12, v11, v1, &selRef_topKWithGradientTensor_source_k_name_);

  return OUTLINED_FUNCTION_2_66();
}

uint64_t sub_25BC3AB98(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v6 = OUTLINED_FUNCTION_5();
  *(v6 + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_0_78();
  if (v3)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v7 = *(a2 + 32);
  }

  v8 = v7;
  v10 = *(v2 + 24);
  v9 = *(v2 + 32);
  sub_25BCB617C();
  v11 = sub_25BC3B33C(v8, v10, v9, a1);

  *(v6 + 32) = v11;
  return v6;
}

uint64_t sub_25BC3AC60()
{
  OUTLINED_FUNCTION_4_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  *(OUTLINED_FUNCTION_5() + 16) = xmmword_25BCBB6D0;
  OUTLINED_FUNCTION_0_78();
  if (v3)
  {
    OUTLINED_FUNCTION_4_4();
  }

  else
  {
    v4 = *(v2 + 32);
  }

  v5 = v4;
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[3];
  v8 = v0[4];
  sub_25BCB617C();
  sub_25BB2B84C(v5, v6, v7, v9, v8, v1, &selRef_bandPartWithTensor_numLower_numUpper_name_);

  return OUTLINED_FUNCTION_2_66();
}

uint64_t sub_25BC3AD34(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6158, type metadata accessor for BandPartOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AD8C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6160, type metadata accessor for NonZeroIndicesOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3ADE4(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6180, type metadata accessor for ReverseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AE3C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB68F0, type metadata accessor for TopKGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AE94(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6150, type metadata accessor for TopKOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AEEC(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6178, type metadata accessor for SplitOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AF44(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154E7E8, type metadata accessor for TransposeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AF9C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154F658, type metadata accessor for ConcatOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3AFF4(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6188, type metadata accessor for ScatterOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B04C(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_27FBB6190, type metadata accessor for GatherOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B0A4(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154FAA0, type metadata accessor for CastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B0FC(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154ED78, type metadata accessor for BroadcastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B154(uint64_t a1)
{
  result = sub_25BC3B1AC(&qword_28154F1F8, type metadata accessor for ReshapeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3B1AC(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_25BC3B1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v12 = sub_25BCB633C();

  v13 = [a7 gatherWithUpdatesTensor:a1 indicesTensor:a2 axis:a3 batchDimensions:a4 name:v12];

  return v13;
}

id sub_25BC3B290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, SEL *a9)
{
  v15 = sub_25BCB633C();

  v16 = [a8 *a9];

  return v16;
}

id sub_25BC3B33C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_25BCB633C();

  v7 = [a4 nonZeroIndicesOfTensor:a1 name:v6];

  return v7;
}

NeuralNetworks::LossReduction_optional __swiftcall LossReduction.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25BC3B3DC@<X0>(uint64_t *a1@<X8>)
{
  result = LossReduction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t l1Loss(predicted:target:reduction:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_50(a1, a2);
  v4 = *v3;
  OUTLINED_FUNCTION_27_26();
  abs(_:)(&v11, &v9);

  if (v4 == 2)
  {
    *v2 = v11;
  }

  else
  {
    if (v4)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v8, v9, v10);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v6);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v8, v9, v10);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v7);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t l2Loss(predicted:target:reduction:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_50(a1, a2);
  v4 = *v3;
  OUTLINED_FUNCTION_27_26();
  Tensor.squared()();

  if (v4 == 2)
  {
    *v2 = v11;
  }

  else
  {
    if (v4)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v8, v9, v10);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v6);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v8, v9, v10);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v7);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t sub_25BC3B67C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t *, uint64_t *, char *))
{
  v3 = *a2;
  v7 = *a1;
  v6 = v3;
  v5 = 0;
  return a3(&v7, &v6, &v5);
}

uint64_t meanSquaredLogarithmicError(predicted:target:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  OUTLINED_FUNCTION_1_63();
  v4 = *(*(v2 + 16) + 160);
  v13 = OUTLINED_FUNCTION_6_49(v5, v6, v7, v8, v9, v10, v11, v12, v106, v117, v126, v135, v144, v153, v162, v177, v184, v193, v194, v195, v196, v197, v198, v199, v200[0]);
  v15 = sub_25BAA51C8(v13, v14);
  v16 = MEMORY[0x277D84F90];
  HIBYTE(v163) = v4;
  v24 = OUTLINED_FUNCTION_11_41(v15, v17, v18, v19, v20, v21, v22, v23, v107, v118, v127, v136, v145, v154, v163, MEMORY[0x277D84F90], v185, v193);
  v26 = sub_25BAA51C8(v24, v25);
  OUTLINED_FUNCTION_4_58(v26, &unk_286D45938, v27, v28, v29, v30, v31, v32, v108, v119, v128, v137, v146, v155, v164, v171, v173, v175, v178, v186);
  sub_25BA9C2C8(&v193);
  sub_25BA9C2C8(v200);
  v33 = v187;
  OUTLINED_FUNCTION_1_63();
  v34 = *(*(v2 + 16) + 160);
  v43 = OUTLINED_FUNCTION_6_49(v35, v36, v37, v38, v39, v40, v41, v42, v109, v120, v129, v138, v147, v156, v165, v179, v187, v193, v194, v195, v196, v197, v198, v199, v200[0]);
  v45 = sub_25BAA51C8(v43, v44);
  HIBYTE(v166) = v34;
  v53 = OUTLINED_FUNCTION_11_41(v45, v46, v47, v48, v49, v50, v51, v52, v110, v121, v130, v139, v148, v157, v166, v16, v188, v193);
  v55 = sub_25BAA51C8(v53, v54);
  OUTLINED_FUNCTION_4_58(v55, &unk_286D45960, v56, v57, v58, v59, v60, v61, v111, v122, v131, v140, v149, v158, v167, v172, v174, v176, v180, v189);
  sub_25BA9C2C8(&v193);
  v62 = sub_25BA9C2C8(v200);
  v63 = v190;
  OUTLINED_FUNCTION_6_49(v62, v64, v65, v66, v67, v68, v69, v70, v112, v123, v132, v141, v150, v159, v168, v181, v190, v33, v194, v195, v196, v197, v198, v199, v2);
  max(_:_:)();
  v200[0] = v63;
  OUTLINED_FUNCTION_14_33(v71, v72, v73, v74, v75, v76, v77, v78, v113);
  static Tensor.+ infix(_:_:)();

  log(_:)(v200, &v193);

  LOBYTE(v2) = v200[0];
  OUTLINED_FUNCTION_6_49(v79, v80, v81, v82, v83, v84, v85, v86, v114, v124, v133, v142, v151, v160, v169, v182, v191, v33, v194, v195, v196, v197, v198, v199, v3);
  max(_:_:)();
  v200[0] = v63;
  OUTLINED_FUNCTION_14_33(v87, v88, v89, v90, v91, v92, v93, v94, v115);
  static Tensor.+ infix(_:_:)();

  log(_:)(v200, &v193);

  LOBYTE(v116) = 0;
  v103 = OUTLINED_FUNCTION_6_49(v95, v96, v97, v98, v99, v100, v101, v102, v116, v125, v134, v143, v152, v161, v170, v183, v192, v200[0], v194, v195, v196, v197, v198, v199, v2);
  l2Loss(predicted:target:reduction:)(v103, v104);
}

uint64_t meanAbsolutePercentageError(predicted:target:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v4 = *(*(v2 + 16) + 160);
  sub_25BAA51C8(v11, v10);
  v9 = MEMORY[0x277D84F90];
  v8 = v4;
  sub_25BAA51C8(v10, v7);
  Tensor.init(shape:coercingScalars:scalarType:on:)(&v9, &unk_286D45988, &v8, v7, &v6);
  sub_25BA9C2C8(v10);
  sub_25BA9C2C8(v11);
  *&v11[0] = v3;
  v10[0] = v2;
  static Tensor.- infix(_:_:)();
  *&v11[0] = v3;
  abs(_:)(v10, v11);
  static Tensor./ infix(_:_:)();

  abs(_:)(v11, &v9);

  v10[0] = *&v11[0];
  v7[0] = &unk_286D42360;
  Tensor.reshaped(to:)(v7, &v9);

  Tensor.mean(squeezingAxes:)(&unk_286D42388);

  static Tensor.* infix(_:_:)();
}

uint64_t hingeLoss(predicted:target:reduction:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, void *a4@<X8>)
{
  v8 = sub_25BCB783C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *a2;
  v15 = *(*a1 + 16);
  v16 = v14[2];
  v17 = *(v16 + 160);
  if (*(v15 + 160) != v17)
  {
    LOBYTE(v28) = *(v15 + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    LOBYTE(v27) = v17;
    v24 = sub_25BC8FACC();
    v29 = a4;
    *v30 = v8;
    *&v30[8] = xmmword_25BCCD6A0;
    LOBYTE(v31) = 0;
    *&v32 = v24;
    *(&v32 + 1) = v25;
    v33 = xmmword_25BCCD6B0;
    v34 = 0;
    v35 = 0;
    OUTLINED_FUNCTION_0_79();
    goto LABEL_11;
  }

  v18 = *a3;
  v19 = *(v15 + 152);
  v20 = *(v16 + 152);
  if ((sub_25BAB5C48(v19, v20) & 1) == 0)
  {
    v29 = v19;
    *v30 = xmmword_25BCCD6A0;
    v30[16] = 0;
    v31 = v20;
    v32 = xmmword_25BCCD6B0;
    LOBYTE(v33) = 0;
    v35 = 10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_18_35();
    OUTLINED_FUNCTION_0_79();
LABEL_11:
    sub_25BADDD28();
  }

  v28 = v14;
  v29 = v14;
  v27 = v14;

  Tensor.init(zerosLike:)(&v29);
  static Tensor..== infix(_:_:)(&v29, &v27, &v26);

  v27 = v29;
  LOBYTE(v26) = *(v14[2] + 160);
  (*(v9 + 104))(v12, *MEMORY[0x277D84660], v8);
  Tensor.cast(to:roundingRule:)();
  (*(v9 + 8))(v12, v8);

  static Tensor.- infix(_:_:)();

  v21 = v29;
  v29 = v14;

  Tensor.init(onesLike:)(&v29);
  v29 = v21;
  v27 = v13;
  static Tensor.* infix(_:_:)();
  static Tensor.- infix(_:_:)();

  relu(_:)(&v27);

  v22 = v29;
  if (v18 == 2)
  {

    *a4 = v22;
  }

  else
  {
    if (v18)
    {
      v28 = v29;
      v27 = &unk_286D423B0;
      Tensor.reshaped(to:)(&v27, &v29);

      v28 = v29;
      Tensor.sum(squeezingAxes:)(a4);
    }

    else
    {
      v28 = &unk_286D42360;
      Tensor.reshaped(to:)(&v28, &v27);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t squaredHingeLoss(predicted:target:reduction:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_50(a1, a2);
  v7 = *(*(v6 + 16) + 160);
  if (*(*(v5 + 16) + 160) != v7)
  {
    LOBYTE(v14) = *(*(v5 + 16) + 160);
    v10 = v7;
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    LOBYTE(v12) = v10;
    v15[0] = v2;
    v15[1] = v3;
    v16 = xmmword_25BCCD6A0;
    v17 = 0;
    v18 = sub_25BC8FACC();
    v19 = v11;
    v20 = xmmword_25BCCD6B0;
    v21 = 0;
    v22 = 0;
    OUTLINED_FUNCTION_0_79();
    sub_25BADDD28();
  }

  v8 = *v4;
  v14 = v6;
  v15[0] = v5;
  v13 = v8;
  hingeLoss(predicted:target:reduction:)(v15, &v14, &v13, &v12);
  OUTLINED_FUNCTION_15_35();
  Tensor.squared()();
}

uint64_t categoricalHingeLoss(predicted:target:reduction:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *(*(*a1 + 16) + 160);
  if (v8 != *(*(*a2 + 16) + 160))
  {
    LOBYTE(v182) = *(*(*a1 + 16) + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    v189[0] = a4;
    v189[1] = v4;
    v190 = xmmword_25BCCD6A0;
    v191 = 0;
    v192 = sub_25BC8FACC();
    v193 = v96;
    v194 = xmmword_25BCCD6B0;
    v195 = 0;
    v196 = 0;
    OUTLINED_FUNCTION_0_79();
    sub_25BADDD28();
  }

  v9 = *a3;
  OUTLINED_FUNCTION_1_63();
  v18 = OUTLINED_FUNCTION_6_49(v10, v11, v12, v13, v14, v15, v16, v17, v97, v106, v115, v124, v133, v142, v151, v166, v173, v182, v183, v184, v185, v186, v187, v188, v189[0]);
  v20 = sub_25BAA51C8(v18, v19);
  v21 = MEMORY[0x277D84F90];
  HIBYTE(v152) = v8;
  v29 = OUTLINED_FUNCTION_11_41(v20, v22, v23, v24, v25, v26, v27, v28, v98, v107, v116, v125, v134, v143, v152, MEMORY[0x277D84F90], v174, v182);
  v31 = sub_25BAA51C8(v29, v30);
  OUTLINED_FUNCTION_4_58(v31, &unk_286D459B0, v32, v33, v34, v35, v36, v37, v99, v108, v117, v126, v135, v144, v153, v160, v162, v164, v167, v175);
  sub_25BA9C2C8(&v182);
  sub_25BA9C2C8(v189);
  v38 = v176;
  OUTLINED_FUNCTION_1_63();
  v39 = *(*(v6 + 16) + 160);
  v48 = OUTLINED_FUNCTION_6_49(v40, v41, v42, v43, v44, v45, v46, v47, v100, v109, v118, v127, v136, v145, v154, v168, v176, v182, v183, v184, v185, v186, v187, v188, v189[0]);
  v50 = sub_25BAA51C8(v48, v49);
  HIBYTE(v155) = v39;
  v58 = OUTLINED_FUNCTION_11_41(v50, v51, v52, v53, v54, v55, v56, v57, v101, v110, v119, v128, v137, v146, v155, v21, v177, v182);
  v60 = sub_25BAA51C8(v58, v59);
  OUTLINED_FUNCTION_4_58(v60, &unk_286D459D8, v61, v62, v63, v64, v65, v66, v102, v111, v120, v129, v138, v147, v156, v161, v163, v165, v169, v178);
  sub_25BA9C2C8(&v182);
  sub_25BA9C2C8(v189);
  v67 = v179;
  v189[0] = v7;
  static Tensor.* infix(_:_:)();
  v103 = v182;
  Tensor.sum(alongAxes:)(v189, &unk_286D45A00);

  v69 = v189[0];
  OUTLINED_FUNCTION_6_49(v68, v70, v71, v72, v73, v74, v75, v76, v103, v112, v121, v130, v139, v148, v157, v170, v179, v7, v183, v184, v185, v186, v187, v188, v179);
  static Tensor.- infix(_:_:)();
  v189[0] = v6;
  OUTLINED_FUNCTION_14_33(v77, v78, v79, v80, v81, v82, v83, v84, v104);
  static Tensor.* infix(_:_:)();

  Tensor.max(alongAxes:)(v189);

  v182 = v38;
  static Tensor.- infix(_:_:)();
  v189[0] = v67;
  static Tensor.+ infix(_:_:)();

  OUTLINED_FUNCTION_11_41(v85, v86, v87, v88, v89, v90, v91, v92, v69, v113, v122, v131, v140, v149, v158, v171, v180, v182);
  max(_:_:)();

  v93 = v189[0];
  if (v9 == 2)
  {

    *a4 = v93;
  }

  else
  {
    if (v9)
    {
      OUTLINED_FUNCTION_26_27(&unk_286D423B0, v189[0], v114, v123, v132, v141, v150, v159, v172);

      OUTLINED_FUNCTION_13_38();
      Tensor.sum(squeezingAxes:)(v95);
    }

    else
    {
      v182 = v189[0];
      OUTLINED_FUNCTION_28_23(&unk_286D42360, v105, v114, v123, v132, v141, v150, v159, v172, v181);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t logCoshLoss(predicted:target:reduction:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  OUTLINED_FUNCTION_1_63();
  v8 = *(*(v5 + 16) + 160);
  v17 = OUTLINED_FUNCTION_6_49(v9, v10, v11, v12, v13, v14, v15, v16, v93, v101, v111, v121, v131, v141, v151, v167, v175, v185, v186, v187, v188, v189, v190, v191, v192[0]);
  v19 = sub_25BAA51C8(v17, v18);
  v20 = MEMORY[0x277D84F90];
  HIBYTE(v152) = v8;
  v28 = OUTLINED_FUNCTION_11_41(v19, v21, v22, v23, v24, v25, v26, v27, v94, v102, v112, v122, v132, v142, v152, MEMORY[0x277D84F90], v176, v185);
  v30 = sub_25BAA51C8(v28, v29);
  OUTLINED_FUNCTION_4_58(v30, &unk_286D45A50, v31, v32, v33, v34, v35, v36, v95, v103, v113, v123, v133, v143, v153, v161, v163, v165, v168, v177);
  sub_25BA9C2C8(&v185);
  sub_25BA9C2C8(v192);
  v37 = v178;
  OUTLINED_FUNCTION_1_63();
  v38 = *(*(v5 + 16) + 160);
  v47 = OUTLINED_FUNCTION_6_49(v39, v40, v41, v42, v43, v44, v45, v46, v96, v104, v114, v124, v134, v144, v154, v169, v178, v185, v186, v187, v188, v189, v190, v191, v192[0]);
  v49 = sub_25BAA51C8(v47, v48);
  HIBYTE(v155) = v38;
  v57 = OUTLINED_FUNCTION_11_41(v49, v50, v51, v52, v53, v54, v55, v56, v97, v105, v115, v125, v135, v145, v155, v20, v179, v185);
  v59 = sub_25BAA51C8(v57, v58);
  OUTLINED_FUNCTION_4_58(v59, &unk_286D45A78, v60, v61, v62, v63, v64, v65, v98, v106, v116, v126, v136, v146, v156, v162, v164, v166, v170, v180);
  sub_25BA9C2C8(&v185);
  v66 = sub_25BA9C2C8(v192);
  LOBYTE(v20) = v181;
  OUTLINED_FUNCTION_11_41(v66, v67, v68, v69, v70, v71, v72, v73, v6, v107, v117, v127, v137, v147, v157, v171, v181, v5);
  static Tensor.- infix(_:_:)();
  OUTLINED_FUNCTION_11_41(v74, v75, v76, v77, v78, v79, v80, v81, v192[0], v108, v118, v128, v138, v148, v158, v172, v182, v20);
  static Tensor.* infix(_:_:)();
  softplus(_:alpha:beta:)();

  OUTLINED_FUNCTION_6_49(v82, v83, v84, v85, v86, v87, v88, v89, v99, v109, v119, v129, v139, v149, v159, v173, v183, v185, v186, v187, v188, v189, v190, v191, v192[0]);
  static Tensor.+ infix(_:_:)();

  v192[0] = v37;
  log(_:)(&v185, v192);
  static Tensor.- infix(_:_:)();

  v90 = v192[0];
  if (v7 == 2)
  {

    *a4 = v90;
  }

  else
  {
    if (v7)
    {
      OUTLINED_FUNCTION_26_27(&unk_286D423B0, v192[0], v110, v120, v130, v140, v150, v160, v174);

      OUTLINED_FUNCTION_13_38();
      Tensor.sum(squeezingAxes:)(v92);
    }

    else
    {
      v185 = v192[0];
      OUTLINED_FUNCTION_28_23(&unk_286D42360, v100, v110, v120, v130, v140, v150, v160, v174, v184);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t poissonLoss(predicted:target:reduction:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_50(a1, a2);
  v4 = *v3;
  v12 = v5;
  v13 = v6;
  v11 = v5;
  log(_:)(&v10, &v11);
  static Tensor.* infix(_:_:)();

  static Tensor.- infix(_:_:)();

  if (v4 == 2)
  {
    *v2 = v13;
  }

  else
  {
    if (v4)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v10, v11, v12);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v8);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v10, v11, v12);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v9);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t kullbackLeiblerDivergence(predicted:target:reduction:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_5_50(a1, a2);
  v4 = *v3;
  v12 = v5;
  v13 = v5;
  v11 = v6;
  static Tensor./ infix(_:_:)();
  log(_:)(&v11, &v10);

  static Tensor.* infix(_:_:)();

  if (v4 == 2)
  {
    *v2 = v13;
  }

  else
  {
    if (v4)
    {
      OUTLINED_FUNCTION_7_46(&unk_286D423B0, v10, v11, v12);

      OUTLINED_FUNCTION_19_26();
      OUTLINED_FUNCTION_15_35();
      Tensor.sum(squeezingAxes:)(v8);
    }

    else
    {
      OUTLINED_FUNCTION_8_46(&unk_286D42360, v10, v11, v12);

      OUTLINED_FUNCTION_13_38();
      Tensor.mean(squeezingAxes:)(v9);
      OUTLINED_FUNCTION_30_23();
    }
  }

  return result;
}

uint64_t huberLoss(predicted:target:delta:reduction:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X8>, float a5@<S0>)
{
  v7 = *a1;
  v8 = *a2;
  v9 = *a3;
  v10 = *(*(*a1 + 16) + 152);
  v11 = *(*(*a2 + 16) + 152);
  if ((sub_25BAB5C48(v10, v11) & 1) == 0)
  {
    v131 = v10;
    v132 = xmmword_25BCCD6A0;
    v133 = 0;
    v134 = v11;
    v135 = xmmword_25BCCD6B0;
    v136 = 0;
    v137 = 10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_18_35();
    OUTLINED_FUNCTION_0_79();
    sub_25BADDD28();
  }

  OUTLINED_FUNCTION_16_40();
  v13 = *(v12 + 160);
  v14 = sub_25BAA51C8(&v131, v130);
  v15 = MEMORY[0x277D84F90];
  HIBYTE(v127) = v13;
  v23 = OUTLINED_FUNCTION_25_25(v14, v16, v17, v18, v19, v20, v21, v22, v85, v91, v97, v103, v109, v115, v121, v122, v123, v124, v125, v126, v127, MEMORY[0x277D84F90], v129, v130[0]);
  v25 = sub_25BAA51C8(v23, v24);
  v32 = OUTLINED_FUNCTION_24_21(v25, &unk_286D45B40, v26, v27, v28, v29, v30, v31, v86, v92, v98, v104, v110, v116, v121, v122, v123, v124, v125, v126, v127, v128);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v32, v33, v34, v35, v36);
  sub_25BA9C2C8(v130);
  sub_25BA9C2C8(&v131);
  v37 = v129;
  OUTLINED_FUNCTION_16_40();
  v39 = *(v38 + 160);
  sub_25BAA51C8(&v131, v130);
  v128 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F28, &qword_25BCBBE60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25BCBAE50;
  *(inited + 32) = a5;
  HIBYTE(v127) = v39;
  v48 = OUTLINED_FUNCTION_25_25(inited, v41, v42, v43, v44, v45, v46, v47, v87, v93, v99, v105, v111, v117, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130[0]);
  v50 = sub_25BAA51C8(v48, v49);
  v58 = OUTLINED_FUNCTION_24_21(v50, v51, v52, v53, v54, v55, v56, v57, v88, v94, v100, v106, v112, v118, v121, v122, v123, v124, v125, v126, v127, v128);
  Tensor.init(shape:coercingScalars:scalarType:on:)(v58, inited, v59, v60, v61);
  sub_25BA9C2C8(v130);
  v62 = sub_25BA9C2C8(&v131);
  v63 = v129;
  OUTLINED_FUNCTION_25_25(v62, v64, v65, v66, v67, v68, v69, v70, v89, v95, v101, v107, v113, v119, v7, v122, v123, v124, v125, v126, v127, v128, v129, v8);
  static Tensor.- infix(_:_:)();
  v71 = v131;
  v130[0] = v131;
  v72 = abs(_:)(&v131, v130);
  v80 = OUTLINED_FUNCTION_25_25(v72, v73, v74, v75, v76, v77, v78, v79, v90, v96, v102, v108, v114, v120, v63, v122, v123, v124, v125, v126, v127, v128, v129, v131);
  static Tensor..> infix(_:_:)(v80, v81);
  v82 = v131;
  v131 = v37;
  v130[0] = v71;
  Tensor.squared()();
  static Tensor.* infix(_:_:)();

  v131 = v63;
  static Tensor.* infix(_:_:)();
  v131 = v37;
  Tensor.squared()();
  static Tensor.* infix(_:_:)();

  static Tensor.- infix(_:_:)();

  v121 = v82;
  Tensor.replacing(with:where:)(&v128, &v121, &v131);

  v83 = v131;
  if (v9 == 2)
  {

    *a4 = v83;
  }

  else
  {
    if (v9)
    {
      v130[0] = v131;
      v121 = &unk_286D423B0;
      Tensor.reshaped(to:)(&v121, &v131);

      v130[0] = v131;
      Tensor.sum(squeezingAxes:)(a4);
    }

    else
    {
      v130[0] = &unk_286D42360;
      Tensor.reshaped(to:)(v130, &v121);

      Tensor.mean(squeezingAxes:)(&unk_286D42388);
    }
  }

  return result;
}

uint64_t cosineSimilarity(predicted:target:reduction:)@<X0>(uint64_t **a1@<X0>, uint64_t **a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t **a4@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = *a3;
  v9 = *(*((*a1)[2] + 152) + 16);
  if ((sub_25BAB74D0(v9, 1, 2, 1) & 1) == 0)
  {
    v21 = v9;
    *v22 = xmmword_25BCCD6A0;
    v22[16] = 0;
    *v23 = xmmword_25BCBAE50;
    v23[16] = 1;
    v26 = 7;
    OUTLINED_FUNCTION_0_79();
    goto LABEL_23;
  }

  if ((OUTLINED_FUNCTION_17_36(v6[2]) & 1) == 0)
  {
    v21 = v4;
    *v22 = xmmword_25BCCD6A0;
    v22[16] = 0;
    *v23 = v9;
    *&v23[8] = xmmword_25BCCD6B0;
    LOBYTE(v24) = 0;
    v26 = 10;
    swift_bridgeObjectRetain_n();
    OUTLINED_FUNCTION_18_35();
    OUTLINED_FUNCTION_0_79();
    goto LABEL_23;
  }

  v10 = *(v7[2] + 160);
  if (*(v6[2] + 160) != v10)
  {
    LOBYTE(v20.Description) = *(v6[2] + 160);
    sub_25BC8FACC();
    OUTLINED_FUNCTION_22_29();
    LOBYTE(v20.Kind) = v10;
    v21 = v6;
    *v22 = 1;
    *&v22[8] = xmmword_25BCCD6A0;
    v23[0] = 0;
    *&v23[8] = sub_25BC8FACC();
    *&v23[16] = v18;
    v24 = xmmword_25BCCD6B0;
    v25 = 0;
    v26 = 0;
    OUTLINED_FUNCTION_0_79();
LABEL_23:
    sub_25BADDD28();
  }

  if (v8 == 2 || (v8 & 1) != 0)
  {
    v20.Description = v6;
    OUTLINED_FUNCTION_23_28();
    Tensor.squared()();
    v19 = &unk_286D423B0;
    v20.Kind = v21;
    Tensor.reshaped(to:)(&v19, &v20.Description);

    v20.Kind = v20.Description;
    Tensor.sum(squeezingAxes:)(&v19);

    sqrt(_:)(&v21, &v19);

    v11 = v21;
    v20.Description = v7;
    OUTLINED_FUNCTION_23_28();
    Tensor.squared()();
    v19 = &unk_286D423B0;
    v20.Kind = v21;
    Tensor.reshaped(to:)(&v19, &v20.Description);

    v20.Kind = v20.Description;
    Tensor.sum(squeezingAxes:)(&v19);

    sqrt(_:)(&v21, &v19);

    v12 = v21;
    if (*(*(v6[2] + 152) + 16) == 1)
    {
      v20.Description = v6;
      OUTLINED_FUNCTION_23_28();
      Tensor.reshaped(toRank:)(2, v13);
      v6 = v21;
    }

    else
    {
    }

    if (*(*(v7[2] + 152) + 16) == 1)
    {
      v20.Description = v7;
      OUTLINED_FUNCTION_23_28();
      Tensor.reshaped(toRank:)(2, v14);
      v7 = v21;
    }

    else
    {
    }

    v21 = v6;
    v20.Kind = v7;
    matmul(_:transposed:_:transposed:)(&v21, 0, &v20, 1, &v20.Description);
    v19 = &unk_286D45B68;
    v20.Kind = v20.Description;
    Tensor.reshaped(to:)(&v19, &v21);

    v15 = v21;
    v20.Kind = v12;
    v20.Description = v11;
    static Tensor.* infix(_:_:)();
    v20.Kind = v21;
    v20.Description = v15;
    static Tensor./ infix(_:_:)();
    v16 = v21;
    if (v8 == 2)
    {

      *a4 = v16;
    }

    else
    {
      if (v8)
      {
        v20.Kind = &unk_286D423B0;
        v20.Description = v21;
        Tensor.reshaped(to:)(&v20.Kind, &v21);

        v20.Description = v21;
        Tensor.sum(squeezingAxes:)(a4);
      }

      else
      {
        v20.Description = &unk_286D42360;
        Tensor.reshaped(to:)(&v20.Description, &v20);

        Tensor.mean(squeezingAxes:)(&unk_286D42388);
      }
    }
  }

  else
  {
    result = sub_25BCB74CC();
    __break(1u);
  }

  return result;
}

unint64_t sub_25BC3D48C()
{
  result = qword_27FBB6900;
  if (!qword_27FBB6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6900);
  }

  return result;
}

unint64_t sub_25BC3D4F0()
{
  result = qword_27FBB6908;
  if (!qword_27FBB6908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6908);
  }

  return result;
}

uint64_t sub_25BC3D544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 88), *(v0 + 96));
  return v1;
}

uint64_t sub_25BC3D598()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  v2 = *(v0 + 40);

  sub_25BAC9400(v3, v1 + 32);
  return v1;
}

uint64_t sub_25BC3D5F0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BC3D624(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0x6C41726568746167;
  }

  if (a3 == 1)
  {
    return 0x726568746167;
  }

  return 0x6E5F726568746167;
}

uint64_t sub_25BC3D690()
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
    return 0x6C41726568746167;
  }
}

uint64_t sub_25BC3D6F8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BC3D754()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 80), *(v0 + 88));
  return v1;
}

uint64_t sub_25BC3D7A8()
{
  v0 = sub_25BC3D6F8();
  v16 = MEMORY[0x277D84F90];
  result = sub_25BA9BEA0(v0);
  v2 = result;
  for (i = 0; ; ++i)
  {
    if (v2 == i)
    {

      return v16;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x25F8779B0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v4 = *(v0 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v5 = sub_25BAC44E4();
    v7 = v6;
    v8 = *(v15 + 64);

    v9 = sub_25BAC44E4();
    v11 = v10;

    if (v5 == v9 && v7 == v11)
    {
    }

    else
    {
      v13 = sub_25BCB789C();

      if ((v13 & 1) == 0)
      {

        continue;
      }
    }

    sub_25BCB723C();
    v14 = *(v16 + 16);
    sub_25BCB728C();
    sub_25BCB729C();
    result = sub_25BCB725C();
  }

  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_25BC3D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t *a9, _OWORD *a10, uint64_t a11, uint64_t a12)
{
  v16 = *a9;
  v17 = *(a9 + 8);
  if (!a3)
  {
    a1 = sub_25BC3DB5C(a4, a5, a6);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v12 + 40) = a4;
  *(v12 + 48) = a5;
  *(v12 + 56) = a6;
  *(v12 + 64) = v18;
  *(v12 + 72) = v19;
  *(v12 + 80) = v16;
  *(v12 + 88) = v17;
  *(v12 + 96) = a11;
  *(v12 + 104) = a12;
  v20 = a10[1];
  *(v12 + 112) = *a10;
  *(v12 + 128) = v20;
  *(v12 + 144) = a10[2];
  *(v12 + 154) = *(a10 + 42);
  return v12;
}

uint64_t sub_25BC3DA00(char a1)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v10);

  v3 = v12;
  v2 = v13;
  sub_25BCB617C();
  sub_25BAA4AF4(&v10);
  if (a1)
  {
    v4 = 0x646F72706D7563;
  }

  else
  {
    v4 = 0x6D75736D7563;
  }

  if (a1)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v6 = sub_25BAA6090();
  if (v2)
  {
    v10 = v3;
    v11 = v2;
    sub_25BCB617C();
    OUTLINED_FUNCTION_11_4();
    MEMORY[0x25F876C90](v4, v5);

    OUTLINED_FUNCTION_11_4();
    v7 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v7);
  }

  else
  {
    v10 = v4;
    v11 = v5;
    OUTLINED_FUNCTION_11_4();
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  return v6;
}

uint64_t sub_25BC3DB5C(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v12);

  v5 = v14;
  v4 = v15;
  sub_25BCB617C();
  sub_25BAA4AF4(&v12);
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = 0xE600000000000000;
      v7 = 0x726568746167;
    }

    else
    {
      v6 = 0xE900000000000064;
      v7 = 0x6E5F726568746167;
    }
  }

  else
  {
    v6 = 0xEF73697841676E6FLL;
    v7 = 0x6C41726568746167;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v8 = sub_25BAA6090();
  if (v4)
  {
    v12 = v5;
    v13 = v4;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v7, v6);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v9 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v9);
  }

  else
  {
    v12 = v7;
    v13 = v6;
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v10 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v10);
  }

  return v8;
}

uint64_t sub_25BC3DD0C(uint64_t a1, char a2)
{
  type metadata accessor for ContextManager();
  sub_25BAA49B8();
  sub_25BAA4A5C(&v11);

  v4 = v13;
  v3 = v14;
  sub_25BCB617C();
  sub_25BAA4AF4(&v11);
  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xE700000000000000;
      v6 = 0x72657474616373;
    }

    else
    {
      v5 = 0xEA0000000000646ELL;
      v6 = 0x5F72657474616373;
    }
  }

  else
  {
    v5 = 0x800000025BCE0870;
    v6 = 0xD000000000000012;
  }

  type metadata accessor for TensorOperationIdentityGenerator();
  v7 = sub_25BAA6090();
  if (v3)
  {
    v11 = v4;
    v12 = v3;
    sub_25BCB617C();
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    MEMORY[0x25F876C90](v6, v5);

    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v8 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v8);
  }

  else
  {
    v11 = v6;
    v12 = v5;
    MEMORY[0x25F876C90](95, 0xE100000000000000);
    v9 = sub_25BCB77FC();
    MEMORY[0x25F876C90](v9);
  }

  return v7;
}

uint64_t sub_25BC3DEB8()
{
  v3 = OUTLINED_FUNCTION_14_34();
  v5 = (v1 + 64);
  v4 = *(v1 + 64);
  if (v3 != sub_25BAC4018())
  {
    v6 = *(v2 + 16);
    v8 = *(v1 + 72);
    v7 = (v1 + 72);
    if (sub_25BAC4018() != v6)
    {
      return 0;
    }

    v5 = v7;
  }

  v10 = *v5;
  *v5 = v0;

  return 1;
}

uint64_t sub_25BC3DF3C()
{
  v1 = v0[4];

  v2 = v0[8];

  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[13];
  return OUTLINED_FUNCTION_8_47(v0[12]);
}

uint64_t sub_25BC3DF78()
{
  sub_25BC3DF3C();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3DFE0()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BC3E018()
{
  sub_25BC3D690();
  sub_25BCB625C();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (v3 >= 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(v0 + 40);
  }

  MEMORY[0x25F878200](v4);
  if (v3 == 1)
  {
    v5 = v2;
  }

  else
  {
    v5 = v1;
  }

  if (v3)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x25F878200](v6);
}

uint64_t sub_25BC3E0BC(uint64_t a1, char a2)
{
  if (!a2)
  {
    return 0xD000000000000012;
  }

  if (a2 == 1)
  {
    return 0x72657474616373;
  }

  return 0x5F72657474616373;
}

uint64_t sub_25BC3E124()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_25BCBAE60;
  v2 = v0[8];
  *(v1 + 32) = v0[7];
  *(v1 + 40) = v2;
  *(v1 + 48) = v0[9];

  return v1;
}

uint64_t sub_25BC3E1A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB5060, &unk_25BCBF6E0);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE40;
  v2 = *(v0 + 56);
  v3 = *(v0 + 72);
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;

  return v1;
}

uint64_t sub_25BC3E200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char *a9, uint64_t *a10, _OWORD *a11, uint64_t a12, uint64_t a13)
{
  v14 = *a9;
  v15 = *a10;
  v16 = *(a10 + 8);
  if (!a3)
  {
    a1 = sub_25BC3DD0C(a4, a5);
  }

  v17 = a11[1];
  *(v13 + 120) = *a11;
  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v13 + 40) = v18;
  *(v13 + 48) = v19;
  *(v13 + 56) = v20;
  *(v13 + 64) = v21;
  *(v13 + 72) = v22;
  *(v13 + 80) = v14;
  *(v13 + 88) = v15;
  *(v13 + 96) = v16;
  *(v13 + 104) = v23;
  *(v13 + 112) = a13;
  *(v13 + 136) = v24;
  *(v13 + 152) = a11[2];
  *(v13 + 162) = *(a11 + 42);
  return v13;
}

uint64_t sub_25BC3E2D8()
{
  v3 = OUTLINED_FUNCTION_14_34();
  v5 = v1 + 7;
  v4 = v1[7];
  if (v3 != sub_25BAC4018())
  {
    v6 = *(v2 + 16);
    v5 = v1 + 8;
    v7 = v1[8];
    if (sub_25BAC4018() != v6)
    {
      v8 = *(v2 + 16);
      v10 = v1[9];
      v9 = v1 + 9;
      if (sub_25BAC4018() != v8)
      {
        return 0;
      }

      v5 = v9;
    }
  }

  v12 = *v5;
  *v5 = v0;

  return 1;
}

uint64_t sub_25BC3E374()
{
  v1 = v0[4];

  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  v6 = v0[14];
  return OUTLINED_FUNCTION_8_47(v0[13]);
}

uint64_t sub_25BC3E3B8()
{
  sub_25BC3E374();

  return swift_deallocClassInstance();
}

__n128 sub_25BC3E41C@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 120);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 152);
  result = *(v1 + 162);
  *(a1 + 42) = result;
  return result;
}

uint64_t sub_25BC3E440()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BC3E478(uint64_t a1)
{
  sub_25BBD1FD0();
  sub_25BCB625C();

  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  if (v4 >= 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v1 + 40);
  }

  if (v4 == 2)
  {
    v6 = *(v1 + 40);
  }

  else
  {
    v6 = 0;
  }

  MEMORY[0x25F878200](v5);
  MEMORY[0x25F878200](v6);
  v7 = *(v1 + 80);

  return sub_25BB4996C(a1, v7);
}

uint64_t sub_25BC3E52C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v5 = *(v2 + 40);
  if (v5 >> 62)
  {
    goto LABEL_21;
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  if (v6)
  {
    v8 = 4;
    do
    {
      v9 = v8 - 4;
      swift_beginAccess();
      v10 = *(v3 + 40);
      if ((v10 & 0xC000000000000001) != 0)
      {
        MEMORY[0x25F8779B0](v8 - 4);
      }

      else
      {
        if (v9 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_20:
          __break(1u);
LABEL_21:
          v18 = sub_25BCB749C();
          if (v18 < 0)
          {
            __break(1u);
          }

          v6 = v18;
          goto LABEL_3;
        }

        v11 = *(v10 + 8 * v8);
      }

      swift_endAccess();
      v12 = sub_25BAC4018();

      if (v12 == sub_25BAC4018())
      {
        swift_beginAccess();
        v13 = *(v3 + 40);

        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        *(v3 + 40) = v13;
        if (!isUniquelyReferenced_nonNull_bridgeObject || (v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
        {
          v13 = sub_25BBF1390(v13);
          *(v3 + 40) = v13;
        }

        v15 = v13 & 0xFFFFFFFFFFFFFF8;
        if (v9 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v16 = *(v15 + 8 * v8);
        *(v15 + 8 * v8) = a2;
        *(v3 + 40) = v13;
        swift_endAccess();

        v7 = 1;
      }

      ++v8;
      --v6;
    }

    while (v6);
  }

  return v7 & 1;
}

uint64_t sub_25BC3E6DC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_25BA9D8C4(v1);
  return v1;
}

uint64_t sub_25BC3E710(uint64_t a1, char a2, uint64_t a3, int a4)
{
  if ((a2 & 1) == 0)
  {
    return (a1 == a3) & ~a4;
  }

  if (a4)
  {
    return sub_25BAB5C48(a1, a3);
  }

  return 0;
}

void sub_25BC3E738(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    MEMORY[0x25F878200](1);

    sub_25BAD4C78(a1, a2);
  }

  else
  {
    MEMORY[0x25F878200](0);
    MEMORY[0x25F878200](a2);
  }
}

uint64_t sub_25BC3E79C(uint64_t a1, char a2)
{
  sub_25BCB79CC();
  if (a2)
  {
    MEMORY[0x25F878200](1);
    sub_25BAD4C78(v5, a1);
  }

  else
  {
    MEMORY[0x25F878200](0);
    MEMORY[0x25F878200](a1);
  }

  return sub_25BCB7A3C();
}

uint64_t sub_25BC3E82C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_25BCB79CC();
  sub_25BC3E738(v4, v1, v2);
  return sub_25BCB7A3C();
}

uint64_t sub_25BC3E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, _OWORD *a9, uint64_t a10, uint64_t a11)
{
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x74696C7073, 0xE500000000000000);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 56) = a6 & 1;
  *(v11 + 64) = a7;
  *(v11 + 72) = a8;
  *(v11 + 80) = a10;
  *(v11 + 88) = a11;
  v17 = a9[1];
  *(v11 + 96) = *a9;
  *(v11 + 112) = v17;
  *(v11 + 128) = a9[2];
  *(v11 + 138) = *(a9 + 42);
  return v11;
}

uint64_t sub_25BC3E938()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  sub_25BC3FAFC(*(v0 + 48), *(v0 + 56));
  v3 = *(v0 + 72);

  v4 = *(v0 + 88);
  return OUTLINED_FUNCTION_8_47(*(v0 + 80));
}

uint64_t sub_25BC3E978()
{
  sub_25BC3E938();
  OUTLINED_FUNCTION_7_47();

  return swift_deallocClassInstance();
}

void sub_25BC3E9DC(uint64_t a1)
{
  sub_25BCB625C();
  v3 = *(v1 + 48);
  if (*(v1 + 56) == 1)
  {
    MEMORY[0x25F878200](1);

    sub_25BAD4C78(a1, v3);
  }

  else
  {
    MEMORY[0x25F878200](0);
    MEMORY[0x25F878200](v3);
  }
}

void sub_25BC3EA94()
{
  OUTLINED_FUNCTION_1_64();
  v8 = v7;
  v10 = v9;
  if (!v6)
  {
    v4 = sub_25BAA5EA0(1802530676, 0xE400000000000000);
  }

  OUTLINED_FUNCTION_8_2(v4, v5, v6);
  *(v1 + 40) = v10;
  *(v1 + 48) = v8;
  v11 = *(v10 + 152);
  v12 = *(v11 + 16);

  sub_25BCB617C();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_25BAA2110(v11);
  v11 = v16;
  if (!v12)
  {
    goto LABEL_8;
  }

LABEL_5:
  if (v12 <= *(v11 + 16))
  {
    *(v11 + 8 * v12 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_25BCBAE70;
    v14 = *(v10 + 160);
    *(v13 + 32) = v11;
    *(v13 + 40) = v14;
    *(v13 + 48) = v11;
    *(v13 + 56) = 2;
    sub_25BCB617C();

    *(v1 + 56) = v13;
    *(v1 + 64) = v3;
    *(v1 + 72) = v2;
    v15 = v0[1];
    *(v1 + 80) = *v0;
    *(v1 + 96) = v15;
    *(v1 + 112) = v0[2];
    *(v1 + 122) = *(v0 + 42);
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_25BC3EBBC()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];
  return OUTLINED_FUNCTION_8_47(v0[8]);
}

uint64_t sub_25BC3EBF0()
{
  sub_25BC3EBBC();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3ECD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  v5 = sub_25BAC4018();
  if (v5 == sub_25BAC4018())
  {
    v8 = *(v2 + 40);
    *(v2 + 40) = a1;
  }

  else
  {
    v6 = *(v2 + 48);
    if (sub_25BAC4018() != *(a1 + 16))
    {
      return 0;
    }

    v9 = *(v2 + 48);
    *(v2 + 48) = a1;
  }

  return 1;
}

void *sub_25BC3ED60()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];

  return v0;
}

uint64_t sub_25BC3ED98()
{
  sub_25BC3ED60();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3EE84()
{
  OUTLINED_FUNCTION_1_64();
  v8 = v7;
  v10 = v9;
  if (!v6)
  {
    v4 = sub_25BAA5EA0(0x65737265766572, 0xE700000000000000);
  }

  v11 = v0[1];
  *(v1 + 72) = *v0;
  OUTLINED_FUNCTION_8_2(v4, v5, v6);
  *(v1 + 40) = v10;
  *(v1 + 48) = v8;
  *(v1 + 56) = v3;
  *(v1 + 64) = v2;
  *(v1 + 88) = v12;
  *(v1 + 104) = v0[2];
  *(v1 + 114) = *(v0 + 42);
  return v1;
}

uint64_t sub_25BC3EF04()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  v4 = v0[8];
  return OUTLINED_FUNCTION_8_47(v0[7]);
}

uint64_t sub_25BC3EF38()
{
  sub_25BC3EF04();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3EFAC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  sub_25BA9D8C4(v1);
  return v1;
}

void sub_25BC3EFE0()
{
  sub_25BCB625C();
  v0 = OUTLINED_FUNCTION_12_38();

  sub_25BAD4C78(v0, v1);
}

uint64_t sub_25BC3F050()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FBB3630, &unk_25BCBB080);
  v1 = OUTLINED_FUNCTION_31();
  *(v1 + 16) = xmmword_25BCBAE50;
  OUTLINED_FUNCTION_9_45(*(v0 + 48), *(v0 + 56));
  return v1;
}

uint64_t sub_25BC3F0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, _OWORD *a6)
{
  v9 = *a5;
  v10 = *(a5 + 8);
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x6F72657A5F6E6F6ELL, 0xE800000000000000);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v6 + 40) = a4;
  *(v6 + 48) = v9;
  *(v6 + 56) = v10;
  v11 = a6[1];
  *(v6 + 64) = *a6;
  *(v6 + 80) = v11;
  *(v6 + 96) = a6[2];
  *(v6 + 106) = *(a6 + 42);
  return v6;
}

void *sub_25BC3F124()
{
  v1 = v0[4];

  v2 = v0[5];

  v3 = v0[6];

  return v0;
}

uint64_t sub_25BC3F154()
{
  sub_25BC3F124();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3F1C8(uint64_t a1)
{
  sub_25BCB625C();
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  sub_25BAD4C78(a1, v3);
  return MEMORY[0x25F878200](v4);
}

uint64_t sub_25BC3F240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  if (!a3)
  {
    a1 = sub_25BAA5EA0(0x7261705F646E6162, 0xE900000000000074);
  }

  OUTLINED_FUNCTION_8_2(a1, a2, a3);
  *(v9 + 40) = a4;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  v15 = *(a4 + 160);
  *(v9 + 64) = *(a4 + 152);
  *(v9 + 72) = v15;
  v16 = a7[1];
  *(v9 + 96) = *a7;
  *(v9 + 112) = v16;
  *(v9 + 128) = a7[2];
  *(v9 + 138) = *(a7 + 42);
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  sub_25BCB617C();
  return v9;
}

uint64_t sub_25BC3F2EC()
{
  sub_25BA9C420(MEMORY[0x277D85008]);
  OUTLINED_FUNCTION_7_47();

  return swift_deallocClassInstance();
}

uint64_t sub_25BC3F368(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 9))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 2)
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

uint64_t sub_25BC3F3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25BC3F400(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_25BC3F440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

unint64_t sub_25BC3F494()
{
  result = qword_27FBB6910;
  if (!qword_27FBB6910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FBB6910);
  }

  return result;
}

uint64_t sub_25BC3F504(uint64_t a1)
{
  v2 = v1;
  sub_25BCB625C();
  MEMORY[0x25F878200](*(v2 + 48));
  MEMORY[0x25F878200](*(v2 + 56));
  v4 = *(v2 + 64);
  v5 = *(v2 + 72);
  sub_25BAD4C78(a1, v4);
  return MEMORY[0x25F878200](v5);
}

uint64_t sub_25BC3F590(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6918, type metadata accessor for BandPartOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F5E8(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6160, type metadata accessor for NonZeroIndicesOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F640(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6920, type metadata accessor for NonZeroIndicesOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F698(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6928, type metadata accessor for ReverseOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F6F0(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB68F0, type metadata accessor for TopKGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F748(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6930, type metadata accessor for TopKGradientOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F7A0(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6938, type metadata accessor for TopKOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F7F8(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6940, type metadata accessor for SplitOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F850(uint64_t a1)
{
  result = sub_25BC3FAB8(qword_28154E7F0, type metadata accessor for TransposeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F8A8(uint64_t a1)
{
  result = sub_25BC3FAB8(qword_28154F660, type metadata accessor for ConcatOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F900(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6948, type metadata accessor for ScatterOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F958(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_27FBB6950, type metadata accessor for GatherOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3F9B0(uint64_t a1)
{
  result = sub_25BC3FAB8(qword_28154FAA8, type metadata accessor for CastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3FA08(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154ED80, type metadata accessor for BroadcastOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3FA60(uint64_t a1)
{
  result = sub_25BC3FAB8(&qword_28154F200, type metadata accessor for ReshapeOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25BC3FAB8(unint64_t *a1, void (*a2)(void))
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

uint64_t sub_25BC3FAFC(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  return result;
}

void Layer.namedLayerStateKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v54 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v50[2] = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  v51 = v11;
  v12 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_59_10();
  v50[1] = v13;
  type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v53 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v19);
  v21 = v50 - v20;
  v22 = type metadata accessor for AnyLayerVariablePathCache();
  v28 = OUTLINED_FUNCTION_19_27(v22, v23, v24, v25, v26, v27, &protocol witness table for LayerState, v22);
  v57 = v12;
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    *&v59 = sub_25BCB604C();
    v30 = OUTLINED_FUNCTION_20_29(MEMORY[0x277D84FA0]);
    v31(v30);
    v32 = OUTLINED_FUNCTION_5();
    v33 = v52;
    *(v32 + 16) = v4;
    *(v32 + 24) = v33;
    v34 = OUTLINED_FUNCTION_9_46(v32, v6 & 1);
    OUTLINED_FUNCTION_46_18(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_33_24();
    v38(v37);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_6();
    v29 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_32_22();
    while (1)
    {
      OUTLINED_FUNCTION_64_10();
      v39 = v60;
      if (!v60)
      {
        break;
      }

      v40 = OUTLINED_FUNCTION_43_14();
      v60 = v39;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      v2 = &v59;
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
        v29 = v42;
      }

      OUTLINED_FUNCTION_14_35();
      if (v41)
      {
        OUTLINED_FUNCTION_4_59();
        v29 = v43;
      }

      OUTLINED_FUNCTION_12_39();
      if ((v4 & 0x400000000) != 0)
      {
        v2 = &v58;
        sub_25BAA2CDC(&v60, v40);
      }

      if (v4)
      {
        OUTLINED_FUNCTION_68_9(&v60);
      }

      v4 = v55;
      v21 = v56;
    }

    v44 = OUTLINED_FUNCTION_55_8();
    (v2)(v44);
    v60 = v4;
    v61 = &type metadata for LayerState;
    v62 = v12;
    v63 = &protocol witness table for LayerState;
    type metadata accessor for LayerVariablePaths();
    OUTLINED_FUNCTION_17_37();
    sub_25BAB2794();
    OUTLINED_FUNCTION_42_18(v45);
    (v2)(v51, v21);
  }

  OUTLINED_FUNCTION_50_14();
  if (!v46)
  {

    v48 = sub_25BC41DA0();

    v60 = v48;
    *&v58 = sub_25BAB9528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    sub_25BCB68CC();
    OUTLINED_FUNCTION_6_50();
    sub_25BC436C0(v49);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_25_26();

    v58 = v59;
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_45_15();
    OUTLINED_FUNCTION_8_48();
    OUTLINED_FUNCTION_63_8();
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    sub_25BCB73BC();
    OUTLINED_FUNCTION_67_7();

    goto LABEL_19;
  }

  v47 = sub_25BA9AC54(*(v29 + 16));
  if ((v47 & 0x8000000000000000) == 0)
  {
    v60 = 0;
    v61 = v47;
    MEMORY[0x28223BE20](v47);
    OUTLINED_FUNCTION_53_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    swift_getTupleTypeMetadata2();
    sub_25BB6A94C();
    OUTLINED_FUNCTION_37_20();
    OUTLINED_FUNCTION_67_7();
LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}

void Layer.value<A>(for:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = *(*v5 + *MEMORY[0x277D84DE8] + 8);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = v22 - v12;
  v15 = *v14;
  v22[2] = *v14;
  v22[3] = v6;
  v22[4] = v16;
  v22[5] = v17;
  v18 = sub_25BCB6FCC();
  if (v19)
  {
    swift_getAtKeyPath();
    (*(v2 + 8))(v6, v2);
    (*(v8 + 8))(v13, v6);
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    v22[-8] = v15;
    v22[-7] = v6;
    v22[-6] = v4;
    v22[-5] = v2;
    v22[-4] = v20;
    v22[-3] = sub_25BC422EC;
    v22[-2] = v22;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    sub_25BAB1BE8(v0, sub_25BC42334, &v22[-10], v15, v21);
  }

  OUTLINED_FUNCTION_10_16();
}

void Layer.updateValue<A>(_:for:)()
{
  OUTLINED_FUNCTION_9_18();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v9 = *v8;
  v10 = (*v7 + *MEMORY[0x277D84308]);
  v11 = *v10;
  v19[2] = *v10;
  v12 = v10[1];
  v19[3] = v12;
  v19[4] = v3;
  v19[5] = v1;
  v19[6] = v9;
  v13 = sub_25BCB6FCC();
  if (v14)
  {
    v15 = swift_modifyAtWritableKeyPath();
    sub_25BC41BB8(v9, v12, v2, v6);
    v15(&v20, 0);
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    v18[2] = v11;
    v18[3] = v12;
    v18[4] = v4;
    v18[5] = v2;
    v18[6] = v16;
    v18[7] = sub_25BC42374;
    v18[8] = v19;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6958, &qword_25BCCE3E8);
    sub_25BAB2F30(v0, sub_25BACC6A0, v18, v11, v17);
  }

  OUTLINED_FUNCTION_10_16();
}

void Layer.namedParameterKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v54 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_9();
  v50[2] = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_4();
  v51 = v11;
  v12 = sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_59_10();
  v50[1] = v13;
  type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v53 = v14;
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v19);
  v21 = v50 - v20;
  v22 = type metadata accessor for AnyLayerVariablePathCache();
  v28 = OUTLINED_FUNCTION_19_27(v22, v23, v24, v25, v26, v27, &protocol witness table for Parameter, v22);
  v57 = v12;
  if (v28)
  {
    v29 = v28;
  }

  else
  {
    *&v59 = sub_25BCB604C();
    v30 = OUTLINED_FUNCTION_20_29(MEMORY[0x277D84FA0]);
    v31(v30);
    v32 = OUTLINED_FUNCTION_5();
    v33 = v52;
    *(v32 + 16) = v4;
    *(v32 + 24) = v33;
    v34 = OUTLINED_FUNCTION_9_46(v32, v6 & 1);
    OUTLINED_FUNCTION_46_18(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_33_24();
    v38(v37);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_65_6();
    v29 = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_32_22();
    while (1)
    {
      OUTLINED_FUNCTION_64_10();
      v39 = v60;
      if (!v60)
      {
        break;
      }

      v40 = OUTLINED_FUNCTION_43_14();
      v60 = v39;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      v2 = &v59;
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
        v29 = v42;
      }

      OUTLINED_FUNCTION_14_35();
      if (v41)
      {
        OUTLINED_FUNCTION_4_59();
        v29 = v43;
      }

      OUTLINED_FUNCTION_12_39();
      if ((v4 & 0x400000000) != 0)
      {
        v2 = &v58;
        sub_25BAA2CDC(&v60, v40);
      }

      if (v4)
      {
        OUTLINED_FUNCTION_68_9(&v60);
      }

      v4 = v55;
      v21 = v56;
    }

    v44 = OUTLINED_FUNCTION_55_8();
    (v2)(v44);
    v60 = v4;
    v61 = &type metadata for Parameter;
    v62 = v12;
    v63 = &protocol witness table for Parameter;
    type metadata accessor for LayerVariablePaths();
    OUTLINED_FUNCTION_17_37();
    sub_25BAB2794();
    OUTLINED_FUNCTION_42_18(v45);
    (v2)(v51, v21);
  }

  OUTLINED_FUNCTION_50_14();
  if (!v46)
  {

    v48 = sub_25BC41DA0();

    v60 = v48;
    *&v58 = sub_25BAB9528();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
    sub_25BCB68CC();
    OUTLINED_FUNCTION_6_50();
    sub_25BC436C0(v49);
    swift_getWitnessTable();
    OUTLINED_FUNCTION_25_26();

    v58 = v59;
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    OUTLINED_FUNCTION_45_15();
    OUTLINED_FUNCTION_8_48();
    OUTLINED_FUNCTION_63_8();
    OUTLINED_FUNCTION_16_41();
    swift_getTupleTypeMetadata2();
    sub_25BCB73BC();
    OUTLINED_FUNCTION_67_7();

    goto LABEL_19;
  }

  v47 = sub_25BA9AC54(*(v29 + 16));
  if ((v47 & 0x8000000000000000) == 0)
  {
    v60 = 0;
    v61 = v47;
    MEMORY[0x28223BE20](v47);
    OUTLINED_FUNCTION_53_12();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    swift_getTupleTypeMetadata2();
    sub_25BB6A94C();
    OUTLINED_FUNCTION_37_20();
    OUTLINED_FUNCTION_67_7();
LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}

void sub_25BC40864(uint64_t a1)
{
  sub_25BB14688(&unk_286D42798);
  v3 = v2;
  v4 = 0;
  v5 = *(a1 + 16);
  v6 = a1 + 40;
  v26 = a1 + 40;
  v27 = MEMORY[0x277D84F90];
LABEL_2:
  for (i = (v6 + 16 * v4); ; i += 2)
  {
    if (v5 == v4)
    {

      return;
    }

    if (v4 >= v5)
    {
      break;
    }

    v8 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_23;
    }

    v9 = *(i - 1);
    v10 = *i;
    if ((*i & 0x2000000000000000) == 0)
    {
      v11 = *(i - 1);
    }

    v12 = *i;
    sub_25BCB617C();
    sub_25BCB643C();
    sub_25BCB654C();
    v13 = sub_25BCB6EBC();
    v15 = v14;

    sub_25BCB617C();
    v28 = sub_25BBFCCE0(1uLL, v9, v10);
    v29 = v16;
    sub_25BC43580();
    sub_25BCB644C();

    v17 = v13;
    v18 = v15;
    v19 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v19 = v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v19 && !sub_25BB9FED4(v13, v15, v3))
    {
      if (sub_25BCB64EC())
      {
        sub_25BC435D4();
        sub_25BC43628();
        sub_25BCB6B9C();

        v17 = v28;
        v18 = v29;
      }

      else
      {
      }

      v20 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = *(v27 + 16);
        sub_25BAB1E30();
        v20 = v24;
      }

      v21 = *(v20 + 16);
      if (v21 >= *(v20 + 24) >> 1)
      {
        sub_25BAB1E30();
        v20 = v25;
      }

      *(v20 + 16) = v21 + 1;
      v27 = v20;
      v22 = v20 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v18;
      v4 = v8;
      v6 = v26;
      goto LABEL_2;
    }

    ++v4;
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void Layer.parameterKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  v36 = v10;
  v11 = &type metadata for Parameter;
  sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_59_10();
  v12 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v17);
  type metadata accessor for AnyLayerVariablePathCache();
  v18 = OUTLINED_FUNCTION_36_18();
  if (v18)
  {
    p_Description = v18;
  }

  else
  {
    v41 = sub_25BCB604C();
    v20 = OUTLINED_FUNCTION_31_24(MEMORY[0x277D84FA0]);
    v21(v20);
    v22 = OUTLINED_FUNCTION_5();
    *(v22 + 16) = v3;
    *(v22 + 24) = v1;
    v23 = OUTLINED_FUNCTION_9_46(v22, v5 & 1);
    OUTLINED_FUNCTION_47_17(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_22_30();
    v27(v26);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_44_15();
    v28 = &type metadata for Parameter;
    while (1)
    {
      sub_25BAB173C(v12, &v37);
      v29 = v37;
      if (!v37)
      {
        break;
      }

      v11 = OUTLINED_FUNCTION_30_24();
      v37 = v29;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
      }

      OUTLINED_FUNCTION_14_35();
      if (v30)
      {
        OUTLINED_FUNCTION_4_59();
      }

      OUTLINED_FUNCTION_12_39();
      if ((v3 & 0x400000000) != 0)
      {
        OUTLINED_FUNCTION_68_9(&v37);
      }

      v28 = v12;
      if (v3)
      {
        sub_25BAA2CDC(&v37, v11);
      }

      OUTLINED_FUNCTION_58_10();
    }

    Description = v11->Description;
    p_Description = &v11->Description;
    Description(v36, v12);
    v37 = v3;
    v38 = v28;
    v39 = v1;
    v40 = &protocol witness table for Parameter;
    type metadata accessor for LayerVariablePaths();
    OUTLINED_FUNCTION_24_22();
    OUTLINED_FUNCTION_39_21(v32);
    Description(v35, v12);
  }

  OUTLINED_FUNCTION_56_11();
  if (!v33)
  {
    sub_25BAB9528();
    OUTLINED_FUNCTION_40_20();

    goto LABEL_19;
  }

  v34 = sub_25BA9AC54(*(p_Description + 16));
  if ((v34 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v34;
    MEMORY[0x28223BE20](v34);
    OUTLINED_FUNCTION_54_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB6A94C();
    OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_40_20();

LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}

void (*sub_25BC40F2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, void (*a6)(char *, uint64_t)))(char *, uint64_t)
{
  v16 = a4();
  v14[2] = a2;
  v14[3] = a3;
  v15 = v6;
  sub_25BCB736C();
  v10 = sub_25BCB68CC();
  WitnessTable = swift_getWitnessTable();
  sub_25BAB2B20(a6, v14, v10, &type metadata for Tensor, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v12);
  OUTLINED_FUNCTION_40_20();

  return a6;
}

void Layer.layerStateKeyPaths(recursively:)()
{
  OUTLINED_FUNCTION_9_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_9();
  v35 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_4();
  v36 = v10;
  v11 = &type metadata for LayerState;
  sub_25BCB736C();
  OUTLINED_FUNCTION_6_2();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_59_10();
  v12 = type metadata accessor for RecursiveStoredPropertiesIterator();
  OUTLINED_FUNCTION_9();
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_11_42();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_4_33();
  MEMORY[0x28223BE20](v17);
  type metadata accessor for AnyLayerVariablePathCache();
  v18 = OUTLINED_FUNCTION_36_18();
  if (v18)
  {
    p_Description = v18;
  }

  else
  {
    v41 = sub_25BCB604C();
    v20 = OUTLINED_FUNCTION_31_24(MEMORY[0x277D84FA0]);
    v21(v20);
    v22 = OUTLINED_FUNCTION_5();
    *(v22 + 16) = v3;
    *(v22 + 24) = v1;
    v23 = OUTLINED_FUNCTION_9_46(v22, v5 & 1);
    OUTLINED_FUNCTION_47_17(v23, v24, v25);
    v26 = OUTLINED_FUNCTION_22_30();
    v27(v26);
    OUTLINED_FUNCTION_4_5();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_44_15();
    v28 = &type metadata for LayerState;
    while (1)
    {
      sub_25BAB173C(v12, &v37);
      v29 = v37;
      if (!v37)
      {
        break;
      }

      v11 = OUTLINED_FUNCTION_30_24();
      v37 = v29;
      OUTLINED_FUNCTION_21_10();
      sub_25BCB68CC();
      OUTLINED_FUNCTION_69_8();
      sub_25BCB687C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_5_52();
      }

      OUTLINED_FUNCTION_14_35();
      if (v30)
      {
        OUTLINED_FUNCTION_4_59();
      }

      OUTLINED_FUNCTION_12_39();
      if ((v3 & 0x400000000) != 0)
      {
        OUTLINED_FUNCTION_68_9(&v37);
      }

      v28 = v12;
      if (v3)
      {
        sub_25BAA2CDC(&v37, v11);
      }

      OUTLINED_FUNCTION_58_10();
    }

    Description = v11->Description;
    p_Description = &v11->Description;
    Description(v36, v12);
    v37 = v3;
    v38 = v28;
    v39 = v1;
    v40 = &protocol witness table for LayerState;
    type metadata accessor for LayerVariablePaths();
    OUTLINED_FUNCTION_24_22();
    OUTLINED_FUNCTION_39_21(v32);
    Description(v35, v12);
  }

  OUTLINED_FUNCTION_56_11();
  if (!v33)
  {
    sub_25BAB9528();
    OUTLINED_FUNCTION_40_20();

    goto LABEL_19;
  }

  v34 = sub_25BA9AC54(*(p_Description + 16));
  if ((v34 & 0x8000000000000000) == 0)
  {
    v37 = 0;
    v38 = v34;
    MEMORY[0x28223BE20](v34);
    OUTLINED_FUNCTION_54_13();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB48E8, &qword_25BCBFAB0);
    sub_25BB6A94C();
    OUTLINED_FUNCTION_38_20();
    OUTLINED_FUNCTION_40_20();

LABEL_19:
    OUTLINED_FUNCTION_51_13();
    OUTLINED_FUNCTION_10_16();
    return;
  }

  __break(1u);
}

void sub_25BC41398(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = *a1;
  v10 = sub_25BC41DA0();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(v10 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 + 16 * v9;
  v12 = *(v11 + 40);
  v22 = *(v11 + 32);
  sub_25BCB617C();

  sub_25BAB9528();
  v13 = *(v8 + 208);
  sub_25BCB736C();
  sub_25BCB690C();

  v14 = v23;
  if ((sub_25BB9FFB0(v9, a2[7]) & 1) == 0)
  {
LABEL_9:
    *a4 = v22;
    a4[1] = v12;
    a4[2] = v14;
    return;
  }

  v15 = sub_25BCB6FCC();
  if (v16)
  {
    swift_getAtKeyPath();
    v17 = v23[4];

    if ((~v17 & 0xF000000000000007) == 0)
    {
LABEL_6:

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }

    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v15);
  v18 = *(v8 + 224);
  v21[2] = v13;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = sub_25BC4383C;
  v21[6] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8(a3, sub_25BC4380C, v21, v13, v20);
  if (!v4)
  {
    if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_12:

  __break(1u);
}

void sub_25BC415C4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = *a2;
  v10 = *a1;
  sub_25BAB9528();
  v11 = *(v8 + 208);
  sub_25BCB736C();
  sub_25BCB690C();

  v12 = v20;
  if ((sub_25BB9FFB0(v10, a2[7]) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_25BCB6FCC();
  if (v14)
  {
    swift_getAtKeyPath();
    v15 = v20[4];

    if ((~v15 & 0xF000000000000007) != 0)
    {
LABEL_5:
      *a4 = v12;
      return;
    }

LABEL_4:

    v12 = 0;
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v13);
  v16 = *(v9 + 224);
  v19[2] = v11;
  v19[3] = v16;
  v19[4] = v17;
  v19[5] = sub_25BC4383C;
  v19[6] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8(a3, sub_25BC43504, v19, v11, v18);
  if (!v4)
  {
    if (v21)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __break(1u);
}

void sub_25BC417A8(unint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = *a1;
  v10 = sub_25BC41DA0();
  if ((v9 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v9 >= *(v10 + 16))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v10 + 16 * v9;
  v12 = *(v11 + 40);
  v22 = *(v11 + 32);
  sub_25BCB617C();

  sub_25BAB9528();
  v13 = *(v8 + 208);
  sub_25BCB736C();
  sub_25BCB690C();

  v14 = v24;
  if ((sub_25BB9FFB0(v9, a2[7]) & 1) == 0)
  {
LABEL_9:
    *a4 = v22;
    a4[1] = v12;
    a4[2] = v14;
    return;
  }

  v15 = sub_25BCB6FCC();
  if (v16)
  {
    swift_getAtKeyPath();
    v17 = v24[4];

    if ((~v17 & 0xF000000000000007) == 0)
    {
LABEL_6:

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return;
    }

    goto LABEL_9;
  }

  MEMORY[0x28223BE20](v15);
  v18 = *(v8 + 224);
  v21[2] = v13;
  v21[3] = v18;
  v21[4] = v19;
  v21[5] = sub_25BC4383C;
  v21[6] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8(a3, sub_25BC43824, v21, v13, v20);
  if (!v4)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

LABEL_12:

  __break(1u);
}

void sub_25BC419D4(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a2;
  v9 = *a2;
  v10 = *a1;
  sub_25BAB9528();
  v11 = *(v8 + 208);
  sub_25BCB736C();
  sub_25BCB690C();

  v12 = v21;
  if ((sub_25BB9FFB0(v10, a2[7]) & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_25BCB6FCC();
  if (v14)
  {
    swift_getAtKeyPath();
    v15 = v21[4];

    if ((~v15 & 0xF000000000000007) != 0)
    {
LABEL_5:
      *a4 = v12;
      return;
    }

LABEL_4:

    v12 = 0;
    goto LABEL_5;
  }

  MEMORY[0x28223BE20](v13);
  v16 = *(v9 + 224);
  v19[2] = v11;
  v19[3] = v16;
  v19[4] = v17;
  v19[5] = sub_25BC4383C;
  v19[6] = 0;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3EC8, qword_25BCC3F80);
  sub_25BAB1BE8(a3, sub_25BC434DC, v19, v11, v18);
  if (!v4)
  {
    if (v20)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  __break(1u);
}

uint64_t sub_25BC41BB8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X5>, void *a4@<X8>)
{
  if ((*(a3 + 32))(a2, a3))
  {
    (*(a3 + 8))(&v11, a2, a3);
    v8 = v11;
  }

  else
  {
    v8 = 0;
  }

  v11 = a1;
  v9 = *(a3 + 16);

  result = v9(&v11, a2, a3);
  *a4 = v8;
  return result;
}

uint64_t sub_25BC41C8C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  OUTLINED_FUNCTION_9();
  v14 = v13;
  v16 = *(v15 + 64);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v20, v18 + v21, v22);
  a3(v20);
  result = (*(v14 + 8))(v20, a6);
  if (v10)
  {
    *a10 = v10;
  }

  return result;
}

uint64_t sub_25BC41DA0()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    v1 = sub_25BC41E00(v0);
    v2 = *(v0 + 32);
    *(v0 + 32) = v1;
    sub_25BCB617C();
  }

  sub_25BCB617C();
  return v1;
}

uint64_t sub_25BC41E00(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25BB004E4();
    type metadata accessor for AnyLayerVariablePathCache();
    v3 = v13;
    v4 = (v1 + 32);
    do
    {
      v5 = *v4;
      v6 = sub_25BCB617C();
      sub_25BC40864(v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB3F98, &unk_25BCC3720);
      sub_25BC436C0(&qword_27FBB51D0);
      v7 = sub_25BCB627C();
      v9 = v8;

      v10 = *(v13 + 16);
      if (v10 >= *(v13 + 24) >> 1)
      {
        sub_25BB004E4();
      }

      *(v13 + 16) = v10 + 1;
      v11 = v13 + 16 * v10;
      *(v11 + 32) = v7;
      *(v11 + 40) = v9;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_25BC41FB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x25F878200](a2);
  MEMORY[0x25F878200](a3);
  return sub_25BCB79EC();
}

uint64_t sub_25BC42000(uint64_t a1, uint64_t a2)
{
  sub_25BCB79CC();
  MEMORY[0x25F878200](a1);
  MEMORY[0x25F878200](a2);
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC42088()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_25BCB79CC();
  MEMORY[0x25F878200](v1);
  MEMORY[0x25F878200](v2);
  sub_25BCB79EC();
  return sub_25BCB7A3C();
}

uint64_t sub_25BC4210C()
{
  type metadata accessor for UnfairLock();
  swift_allocObject();
  result = sub_25BAA6F2C();
  qword_28154D3C8 = result;
  return result;
}

void *sub_25BC4214C()
{
  type metadata accessor for AnyLayerVariablePathCache();
  sub_25BC43488();
  result = sub_25BCB614C();
  off_28154D3B0 = result;
  return result;
}

uint64_t sub_25BC42198@<X0>(_BYTE *a1@<X8>)
{
  if (qword_28154D3A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  swift_isUniquelyReferenced_nonNull_native();
  v3 = off_28154D3B0;
  sub_25BC19DC4();
  off_28154D3B0 = v3;
  result = swift_endAccess();
  *a1 = 1;
  return result;
}

uint64_t sub_25BC42288(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_25BCCB570;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_25BC42374@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[4];
  return sub_25BC41BB8(v1[6], v1[3], v1[5], a1);
}

void sub_25BC423D0(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *a1;
  Layer.value<A>(for:)();
}

void sub_25BC42408(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *a1;
  Layer.value<A>(for:)();
}

uint64_t sub_25BC42564(uint64_t a1)
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
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v28 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
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

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      sub_25BC42288(0, (v27 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
    v18 = *(v6 + 40);
    sub_25BCB79CC();
    sub_25BCB7A0C();
    result = sub_25BCB7A3C();
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
    *(*(v6 + 48) + v22) = v17;
    ++*(v6 + 16);
    if (!v11)
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

uint64_t sub_25BC427BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6980, &qword_25BCCE4B0);
  result = sub_25BCB70CC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_38:

    *v2 = v6;
    return result;
  }

  v42 = v2;
  v7 = 0;
  v43 = (v3 + 56);
  v44 = result;
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
  v45 = v3;
  if (!v10)
  {
LABEL_9:
    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v7 >= v11)
      {
        break;
      }

      v15 = v43[v7];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v48 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    v41 = 1 << *(v3 + 32);
    if (v41 >= 64)
    {
      sub_25BC42288(0, (v41 + 63) >> 6, v43);
    }

    else
    {
      *v43 = -1 << v41;
    }

    v2 = v42;
    *(v3 + 16) = 0;
    goto LABEL_38;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v48 = (v10 - 1) & v10;
LABEL_14:
    v16 = *(v3 + 48) + 56 * (v13 | (v7 << 6));
    v17 = *v16;
    v18 = *(v16 + 8);
    v46 = *(v16 + 16);
    v49 = *(v16 + 32);
    v50 = *(v16 + 24);
    v51 = *(v16 + 48);
    v52 = *(v16 + 40);
    v19 = *(v6 + 40);
    sub_25BCB79CC();
    v47 = v17;
    MEMORY[0x25F878200](v17);
    v53 = v18;
    v20 = *(v18 + 16);
    if (v20)
    {
      v21 = 0;
      v22 = v18 + 32;
      do
      {
        v23 = (v22 + 16 * v21);
        v24 = *v23;
        v25 = v23[8];
        MEMORY[0x25F878200](*(*v23 + 16));
        v26 = *(v24 + 16);
        if (v26)
        {
          v27 = (v24 + 32);
          do
          {
            v28 = *v27++;
            MEMORY[0x25F878200](v28);
            --v26;
          }

          while (v26);
        }

        ++v21;
        MEMORY[0x25F878200](v25);
      }

      while (v21 != v20);
    }

    MEMORY[0x25F878200](v50);
    MEMORY[0x25F878200](v49);
    MEMORY[0x25F878200](*(v52 + 16));
    v29 = *(v52 + 16);
    if (v29)
    {
      v30 = (v52 + 32);
      do
      {
        v31 = *v30++;
        MEMORY[0x25F878200](v31);
        --v29;
      }

      while (v29);
    }

    MEMORY[0x25F878200](v51);
    result = sub_25BCB7A3C();
    v6 = v44;
    v32 = -1 << *(v44 + 32);
    v33 = result & ~v32;
    v34 = v33 >> 6;
    if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
    {
      break;
    }

    v35 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
    v3 = v45;
LABEL_32:
    *(v12 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v40 = *(v44 + 48) + 56 * v35;
    v10 = v48;
    *v40 = v47;
    *(v40 + 8) = v53;
    *(v40 + 16) = v46;
    *(v40 + 24) = v50;
    *(v40 + 32) = v49;
    *(v40 + 40) = v52;
    *(v40 + 48) = v51;
    ++*(v44 + 16);
    if (!v48)
    {
      goto LABEL_9;
    }
  }

  v36 = 0;
  v37 = (63 - v32) >> 6;
  v3 = v45;
  while (++v34 != v37 || (v36 & 1) == 0)
  {
    v38 = v34 == v37;
    if (v34 == v37)
    {
      v34 = 0;
    }

    v36 |= v38;
    v39 = *(v12 + 8 * v34);
    if (v39 != -1)
    {
      v35 = __clz(__rbit64(~v39)) + (v34 << 6);
      goto LABEL_32;
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_25BC42B38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6968, &unk_25BCCEBF0);
  result = sub_25BCB70CC();
  v6 = result;
  if (!*(v3 + 16))
  {
LABEL_29:

    *v2 = v6;
    return result;
  }

  v31 = v2;
  v7 = 0;
  v8 = (v3 + 56);
  v9 = 1 << *(v3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(v3 + 56);
  v12 = (v9 + 63) >> 6;
  v13 = result + 56;
  if (!v11)
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

      if (v7 >= v12)
      {
        break;
      }

      v16 = v8[v7];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v11 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      sub_25BC42288(0, (v30 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    v14 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_14:
    v17 = (*(v3 + 48) + 16 * (v14 | (v7 << 6)));
    v18 = *v17;
    v19 = v17[1];
    v20 = *(v6 + 40);
    sub_25BCB79CC();
    sub_25BCB625C();
    result = sub_25BCB7A3C();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v13 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v6 + 48) + 16 * v24);
    *v29 = v18;
    v29[1] = v19;
    ++*(v6 + 16);
    if (!v11)
    {
      goto LABEL_9;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v13 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_25BC42D94(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_25BC42B38(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_25BC43254(v8 + 1);
LABEL_10:
      v15 = *v4;
      v16 = *(*v4 + 40);
      sub_25BCB79CC();
      sub_25BCB625C();
      v17 = sub_25BCB7A3C();
      v18 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = v17 & v18;
        if (((*(v15 + 56 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v19 = (*(v15 + 48) + 16 * a3);
        v20 = *v19 == a1 && v19[1] == a2;
        if (v20 || (sub_25BCB789C() & 1) != 0)
        {
          goto LABEL_19;
        }

        v17 = a3 + 1;
      }
    }

    sub_25BC4AEC0();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = a1;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    sub_25BCB794C();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }
}

uint64_t sub_25BC42EFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6980, &qword_25BCCE4B0);
  result = sub_25BCB70CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    v41 = v12;
    v42 = result;
    v43 = v3;
    if (v11)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v11));
        v45 = (v11 - 1) & v11;
LABEL_14:
        v17 = *(v3 + 48) + 56 * (v14 | (v7 << 6));
        v19 = *v17;
        v18 = *(v17 + 8);
        v44 = *(v17 + 16);
        v46 = *(v17 + 32);
        v47 = *(v17 + 24);
        v48 = *(v17 + 48);
        v49 = *(v17 + 40);
        v20 = *(v6 + 40);
        sub_25BCB79CC();
        MEMORY[0x25F878200](v19);
        v50 = v18;
        v21 = *(v18 + 16);
        if (v21)
        {
          for (i = 0; i != v21; ++i)
          {
            v23 = (v50 + 32 + 16 * i);
            v24 = *v23;
            v25 = v23[8];
            MEMORY[0x25F878200](*(*v23 + 16));
            v26 = *(v24 + 16);
            if (v26)
            {
              v27 = (v24 + 32);
              do
              {
                v28 = *v27++;
                MEMORY[0x25F878200](v28);
                --v26;
              }

              while (v26);
            }

            MEMORY[0x25F878200](v25);
          }
        }

        MEMORY[0x25F878200](v47);
        MEMORY[0x25F878200](v46);
        MEMORY[0x25F878200](*(v49 + 16));
        v29 = *(v49 + 16);
        if (v29)
        {
          v30 = (v49 + 32);
          do
          {
            v31 = *v30++;
            MEMORY[0x25F878200](v31);
            --v29;
          }

          while (v29);
        }

        MEMORY[0x25F878200](v48);
        result = sub_25BCB7A3C();
        v6 = v42;
        v32 = -1 << *(v42 + 32);
        v33 = result & ~v32;
        v34 = v33 >> 6;
        if (((-1 << v33) & ~*(v13 + 8 * (v33 >> 6))) == 0)
        {
          break;
        }

        v35 = __clz(__rbit64((-1 << v33) & ~*(v13 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
        v3 = v43;
LABEL_32:
        *(v13 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
        v40 = *(v42 + 48) + 56 * v35;
        *v40 = v19;
        *(v40 + 8) = v50;
        *(v40 + 16) = v44;
        *(v40 + 24) = v47;
        *(v40 + 32) = v46;
        *(v40 + 40) = v49;
        *(v40 + 48) = v48;
        ++*(v42 + 16);

        result = sub_25BCB617C();
        v12 = v41;
        v11 = v45;
        if (!v45)
        {
          goto LABEL_9;
        }
      }

      v36 = 0;
      v37 = (63 - v32) >> 6;
      v3 = v43;
      while (++v34 != v37 || (v36 & 1) == 0)
      {
        v38 = v34 == v37;
        if (v34 == v37)
        {
          v34 = 0;
        }

        v36 |= v38;
        v39 = *(v13 + 8 * v34);
        if (v39 != -1)
        {
          v35 = __clz(__rbit64(~v39)) + (v34 << 6);
          goto LABEL_32;
        }
      }
    }

    else
    {
LABEL_9:
      v15 = v7;
      while (1)
      {
        v7 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v7 >= v12)
        {

          v2 = v1;
          goto LABEL_36;
        }

        v16 = *(v8 + 8 * v7);
        ++v15;
        if (v16)
        {
          v14 = __clz(__rbit64(v16));
          v45 = (v16 - 1) & v16;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_25BC43254(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FBB6968, &unk_25BCCEBF0);
  result = sub_25BCB70CC();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
        v16 = (*(v3 + 48) + 16 * (v13 | (v7 << 6)));
        v18 = *v16;
        v17 = v16[1];
        v19 = *(v6 + 40);
        sub_25BCB79CC();
        sub_25BCB625C();
        result = sub_25BCB7A3C();
        v20 = -1 << *(v6 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
        *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        v28 = (*(v6 + 48) + 16 * v23);
        *v28 = v18;
        v28[1] = v17;
        ++*(v6 + 16);
        result = sub_25BCB617C();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
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

          v2 = v29;
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