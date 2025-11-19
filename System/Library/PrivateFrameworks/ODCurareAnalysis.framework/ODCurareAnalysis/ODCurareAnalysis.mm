__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_25C7B8E3C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25C7B8E84(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25C7B8EF8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25C7B8F40(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25C7B8FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_25C7B9970(a1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
  if (swift_dynamicCast())
  {
    if (*(v14 + 16) && (v4 = sub_25C7BB2FC(0x6E6F6974636E7566, 0xE800000000000000), (v5 & 1) != 0) && (sub_25C7B9970(*(v14 + 56) + 32 * v4, v16), (swift_dynamicCast() & 1) != 0))
    {
      if (*(v14 + 16) && (v6 = sub_25C7BB2FC(0x746E656D75677261, 0xE900000000000073), (v7 & 1) != 0))
      {
        sub_25C7B9970(*(v14 + 56) + 32 * v6, v16);

        if (swift_dynamicCast())
        {
          result = __swift_destroy_boxed_opaque_existential_0(a1);
          *a2 = v14;
          a2[1] = v15;
          a2[2] = v14;
          return result;
        }
      }

      else
      {
      }

      v10 = 0xD000000000000032;
      v11 = "Call arguments must be represented as a dictionary";
    }

    else
    {

      v10 = 0xD000000000000032;
      v11 = "Call function name must be represented as a string";
    }

    v9 = v11 - 32;
  }

  else
  {
    v9 = "Failed to parse test step";
    v10 = 0xD000000000000036;
  }

  v12 = v9 | 0x8000000000000000;
  sub_25C7B9A14();
  swift_allocError();
  *v13 = v10;
  *(v13 + 8) = v12;
  *(v13 + 16) = 0;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25C7B919C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v5 = 0xD000000000000023;
  sub_25C7B9970(a1, v65);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = "Test specification must be represented as a dictionary";
LABEL_18:
    v24 = (v23 - 32);
    v5 = 0xD000000000000036;
LABEL_19:
    v25 = v24 | 0x8000000000000000;
    sub_25C7B9A14();
    swift_allocError();
    *v26 = v5;
    *(v26 + 8) = v25;
    *(v26 + 16) = 0;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_0(v3);
  }

  v6 = v61;
  if (!*(v61 + 16) || (v7 = sub_25C7BB2FC(0x73646C656966, 0xE600000000000000), (v8 & 1) == 0) || (sub_25C7B9970(*(v61 + 56) + 32 * v7, v65), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10), (swift_dynamicCast() & 1) == 0))
  {

    v23 = "Test fields must be represented as an array of strings";
    goto LABEL_18;
  }

  if (!*(v61 + 16) || (v9 = sub_25C7BB2FC(0xD000000000000012, 0x800000025C7CE560), (v10 & 1) == 0) || (sub_25C7B9970(*(v61 + 56) + 32 * v9, v65), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E8, &qword_25C7CDE18), (swift_dynamicCast() & 1) == 0))
  {

    v24 = "preprocessingSteps";
    goto LABEL_19;
  }

  v53 = a2;
  v57 = v61;
  v11 = v61;
  v12 = *(v61 + 16);
  if (v12)
  {
    v55 = v3;
    v67 = MEMORY[0x277D84F90];
    result = sub_25C7CC57C(0, v12, 0);
    v14 = 0;
    v15 = v67;
    v16 = v61 + 32;
    v58 = v12;
    v60 = v61;
    while (v14 < *(v11 + 16))
    {
      sub_25C7B9970(v16, v65);
      sub_25C7B9970(v65, &v61);
      sub_25C7B8FA0(&v61, &v63);
      if (v2)
      {
        MEMORY[0x25F88EF00](v2);

        __swift_destroy_boxed_opaque_existential_0(v65);

        v24 = "preprocessingSteps";
        v3 = v55;
        goto LABEL_19;
      }

      v17 = v11;
      result = __swift_destroy_boxed_opaque_existential_0(v65);
      v18 = v63;
      v19 = v64;
      v67 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        v52 = v64;
        result = sub_25C7CC57C((v20 > 1), v21 + 1, 1);
        v19 = v52;
        v15 = v67;
      }

      ++v14;
      *(v15 + 16) = v21 + 1;
      v22 = v15 + 24 * v21;
      *(v22 + 32) = v18;
      *(v22 + 40) = v19;
      v16 += 32;
      v11 = v17;
      v6 = v60;
      if (v58 == v14)
      {

        v3 = v55;
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v15 = MEMORY[0x277D84F90];
LABEL_24:
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
  v66 = v59;
  v27 = swift_allocObject();
  v28 = v27;
  v65[0] = v27;
  if (*(v6 + 16))
  {
    v29 = sub_25C7BB2FC(0x6E697474696C7073, 0xED00007065745367);
    if (v30)
    {
      sub_25C7B9970(*(v6 + 56) + 32 * v29, v28 + 16);
    }

    else
    {
      *(v28 + 16) = 0u;
      *(v28 + 32) = 0u;
    }
  }

  else
  {
    *(v27 + 16) = 0u;
    *(v27 + 32) = 0u;
  }

  sub_25C7B8FA0(v65, &v61);
  if (v2)
  {
    MEMORY[0x25F88EF00](v2);

    v24 = "preprocessing steps";
    v5 = 0xD00000000000001ELL;
    goto LABEL_19;
  }

  v31 = v62;
  if (!*(v6 + 16) || (v50 = v61, v32 = sub_25C7BB2FC(0xD000000000000013, 0x800000025C7CE5D0), (v33 & 1) == 0) || (sub_25C7B9970(*(v6 + 56) + 32 * v32, v65), (swift_dynamicCast() & 1) == 0))
  {

    v24 = "postprocessingSteps";
    v5 = 0xD000000000000024;
    goto LABEL_19;
  }

  v34 = v61;
  v35 = *(v61 + 16);
  if (v35)
  {
    v56 = v3;
    v67 = MEMORY[0x277D84F90];
    result = sub_25C7CC57C(0, v35, 0);
    v36 = 0;
    v37 = v67;
    v38 = v34 + 32;
    v54 = v34;
    v51 = v35;
    while (v36 < *(v34 + 16))
    {
      sub_25C7B9970(v38, v65);
      sub_25C7B9970(v65, &v61);
      sub_25C7B8FA0(&v61, &v63);
      result = __swift_destroy_boxed_opaque_existential_0(v65);
      v39 = v63;
      v40 = v64;
      v67 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      v43 = v37;
      if (v42 >= v41 >> 1)
      {
        v49 = v64;
        result = sub_25C7CC57C((v41 > 1), v42 + 1, 1);
        v40 = v49;
        v43 = v67;
      }

      ++v36;
      *(v43 + 16) = v42 + 1;
      v44 = v43 + 24 * v42;
      *(v44 + 32) = v39;
      *(v44 + 40) = v40;
      v38 += 32;
      v37 = v43;
      v34 = v54;
      if (v51 == v36)
      {

        v3 = v56;
        goto LABEL_44;
      }
    }

LABEL_50:
    __break(1u);
    return result;
  }

  v37 = MEMORY[0x277D84F90];
LABEL_44:
  v66 = v59;
  v45 = swift_allocObject();
  v65[0] = v45;
  if (*(v6 + 16) && (v46 = sub_25C7BB2FC(0x7065745374736574, 0xE800000000000000), (v47 & 1) != 0))
  {
    sub_25C7B9970(*(v6 + 56) + 32 * v46, v45 + 16);
  }

  else
  {
    *(v45 + 16) = 0u;
    *(v45 + 32) = 0u;
  }

  sub_25C7B8FA0(v65, &v61);
  result = __swift_destroy_boxed_opaque_existential_0(v3);
  v48 = v61;
  *v53 = v57;
  *(v53 + 8) = v15;
  *(v53 + 16) = v50;
  *(v53 + 24) = v31;
  *(v53 + 40) = v37;
  *(v53 + 48) = v48;
  *(v53 + 56) = v62;
  return result;
}

uint64_t sub_25C7B9970(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_25C7B9A14()
{
  result = qword_27FC158D8;
  if (!qword_27FC158D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC158D8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_25C7B9AB4()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25C7B9AF4()
{
  result = sub_25C7C23D8(&unk_286E692B8);
  qword_27FC15A60 = result;
  return result;
}

void sub_25C7B9B1C(double a1)
{
  if (a1 != 0.0 && a1 != 1.0 && a1 >= 0.0 && a1 <= 1.0)
  {
    if (a1 >= 0.5)
    {
      v2 = a1;
    }

    else
    {
      v2 = 1.0 - a1;
    }

    if (qword_27FC158C8 != -1)
    {
      swift_once();
    }

    v3 = qword_27FC15A60;
    v4 = *(qword_27FC15A60 + 16);
    if (v4)
    {
      v5 = sub_25C7BA198(*(qword_27FC15A60 + 16), 0);
      v6 = sub_25C7BAAC8(&v26, v5 + 4, v4, v3);
      swift_bridgeObjectRetain_n();
      sub_25C7BABC8();
      if (v6 == v4)
      {
        goto LABEL_17;
      }

      __break(1u);
    }

    v5 = MEMORY[0x277D84F90];
LABEL_17:
    v26 = v5;
    v7 = 0;
    sub_25C7BA21C(&v26);

    v8 = *(v26 + 2);
    if (v8)
    {
      v9 = 0;
      v10 = 0;
      for (i = 0; i != v8; ++i)
      {
        if (*&v26[8 * i + 32] <= v2)
        {
          v9 = i + 1;
          v10 = i;
        }
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }

    if (v10 >= v8)
    {
      __break(1u);
    }

    else
    {
      v12 = *&v26[8 * v10 + 32];
      if (v2 != v12)
      {
        if (v9 == v8)
        {

          return;
        }

        if (v9 < v8)
        {
          v16 = *&v26[8 * v9 + 32];
          v17 = *(v3 + 16);
          if (v2 == v16)
          {
            if (!v17)
            {
LABEL_45:
              __break(1u);
              goto LABEL_46;
            }

            v7 = sub_25C7BB374(v16);
            v19 = v18;

            if (v19)
            {
              goto LABEL_28;
            }

            __break(1u);
          }

          if (v17)
          {
            v20 = sub_25C7BB374(v12);
            if (v21)
            {
              v7 = *(v3 + 56);
              v22 = *(v7 + 8 * v20);
              v23 = sub_25C7BB374(v16);
              if (v24)
              {
                v25 = *(v7 + 8 * v23);

                return;
              }

              goto LABEL_48;
            }

LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
            MEMORY[0x25F88EF00](v7);

            __break(1u);
            return;
          }

LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      if (*(v3 + 16))
      {
        v7 = sub_25C7BB374(v12);
        v14 = v13;

        if (v14)
        {
LABEL_28:
          v15 = *(*(v3 + 56) + 8 * v7);
          return;
        }

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }
}

char *sub_25C7B9E2C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F8, &qword_25C7CDE28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_25C7B9F30(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15918, &qword_25C7CDE48);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7BA064(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15908, &qword_25C7CDE38);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25C7BA198(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15900, &qword_25C7CDE30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_25C7BA21C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25C7BAAB4(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_25C7CD404();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_25C7CD284();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25C7BA350(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25C7BA350(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25C7BAAA0(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_25C7BA8AC((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_25C7B9E2C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_25C7B9E2C((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
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
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_25C7BA8AC((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_25C7BA8AC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_25C7BAAC8(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t runPostprocessingSteps(_:steps:lastRun:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return result;
  }

  v3 = result;
  for (i = (a2 + 48); ; i += 3)
  {
    v6 = *(i - 2);
    v5 = *(i - 1);
    v7 = *i;
    v8 = v6 == 0x786966667573 && v5 == 0xE600000000000000;
    if (v8 || (v9 = *(i - 2), v10 = *(i - 1), (sub_25C7CD414() & 1) != 0))
    {
      if (!*(v7 + 16))
      {
        goto LABEL_24;
      }

      v11 = sub_25C7BB2FC(0x74676E654C78616DLL, 0xE900000000000068);
      if ((v12 & 1) == 0)
      {

LABEL_24:
        v16 = 0x800000025C7CE7A0;
        v17 = 0xD000000000000025;
        goto LABEL_27;
      }

      sub_25C7B9970(*(v7 + 56) + 32 * v11, &v19);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_24;
      }

      result = sub_25C7BAEC0(v21, *v3);
      *v3 = result;
      goto LABEL_3;
    }

    v13 = v6 == 0xD000000000000010 && 0x800000025C7CE700 == v5;
    if (!v13 && (sub_25C7CD414() & 1) == 0)
    {
      break;
    }

    if (!*(v7 + 16))
    {
      goto LABEL_26;
    }

    v14 = sub_25C7BB2FC(0xD000000000000011, 0x800000025C7CE740);
    if ((v15 & 1) == 0)
    {

LABEL_26:
      v16 = 0x800000025C7CE760;
      v17 = 0xD000000000000037;
      goto LABEL_27;
    }

    sub_25C7B9970(*(v7 + 56) + 32 * v14, &v19);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_26;
    }

    result = sub_25C7BB13C(v3, v21);
LABEL_3:
    if (!--v2)
    {
      return result;
    }
  }

  v19 = 0;
  v20 = 0xE000000000000000;

  sub_25C7CD314();

  v19 = 0xD00000000000001DLL;
  v20 = 0x800000025C7CE720;
  MEMORY[0x25F88E8A0](v6, v5);

  v17 = v19;
  v16 = v20;
LABEL_27:
  sub_25C7B9A14();
  swift_allocError();
  *v18 = v17;
  *(v18 + 8) = v16;
  *(v18 + 16) = 0;
  return swift_willThrow();
}

unint64_t sub_25C7BAEC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v2 = a2;
  if (!result)
  {

    return MEMORY[0x277D84F90];
  }

  v33 = result;
  if (*(a2 + 16) >= result)
  {
    v3 = result;
  }

  else
  {
    v3 = *(a2 + 16);
  }

  v35 = MEMORY[0x277D84F90];
  result = sub_25C7CC59C(0, v3, 0);
  v4 = v35;
  v5 = *(v2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = v2 + 56;
    v31 = *(v2 + 16);
    v32 = v2;
    v28 = v5 - 1;
    v29 = v2 + 56;
    v9 = v33;
    do
    {
      v30 = v7;
      v10 = (v8 + 32 * v6);
      while (1)
      {
        if (v6 >= *(v2 + 16))
        {
          __break(1u);
          goto LABEL_32;
        }

        v11 = *(v10 - 3);
        v12 = *(v10 - 2);
        v14 = *(v10 - 1);
        v13 = *v10;
        v15 = v6 + 1;
        v16 = v4[2];
        if (v16 >= v9)
        {
          break;
        }

        v36 = v4;
        v17 = v4[3];
        v18 = v4;
        result = swift_unknownObjectRetain();
        v4 = v18;
        if (v16 >= v17 >> 1)
        {
          result = sub_25C7CC59C((v17 > 1), v16 + 1, 1);
          v4 = v36;
        }

        v4[2] = v16 + 1;
        v19 = &v4[4 * v16];
        v19[4] = v11;
        v19[5] = v12;
        v19[6] = v14;
        v19[7] = v13;
        v10 += 4;
        v6 = v15;
        v2 = v32;
        v9 = v33;
        if (v31 == v15)
        {
          v7 = v30;
          goto LABEL_23;
        }
      }

      v20 = v4;
      result = swift_unknownObjectRetain();
      if (v30 >= v16)
      {
        goto LABEL_33;
      }

      v21 = &v20[4 * v30];
      v22 = v21[4];
      v21[4] = v11;
      v21[5] = v12;
      v21[6] = v14;
      v21[7] = v13;
      result = swift_unknownObjectRelease();
      v4 = v20;
      v2 = v32;
      v9 = v33;
      if ((v30 + 1) < v33)
      {
        v7 = v30 + 1;
      }

      else
      {
        v7 = 0;
      }

      v8 = v29;
    }

    while (v28 != v6++);
LABEL_23:
    v24 = v4;

    if (!v7)
    {
      return v24;
    }

    v25 = v24[2];
    v34 = MEMORY[0x277D84F90];
    result = sub_25C7CC59C(0, v25, 0);
    if (v25 >= v7)
    {
      if (v7 < 0)
      {
        goto LABEL_35;
      }

      v26 = v24[2];
      if (v26 >= v7 && v26 >= v25)
      {

        sub_25C7BB4E0(v27, (v24 + 4), v7, (2 * v25) | 1);

        sub_25C7BB4E0(v24, (v24 + 4), 0, (2 * v7) | 1);

        return v34;
      }

      goto LABEL_36;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  v24 = v35;

  return v24;
}

uint64_t sub_25C7BB13C(uint64_t *a1, uint64_t a2)
{
  result = *a1;
  v4 = *(result + 16);
  if (v4 != 1)
  {
    if (!v4)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
      result = swift_allocObject();
      *(result + 16) = xmmword_25C7CDE50;
      v5 = MEMORY[0x277D84F90];
      v6 = MEMORY[0x277D84F90] + 32;
      *(result + 32) = MEMORY[0x277D84F90];
      *(result + 40) = v6;
      *(result + 48) = xmmword_25C7CDE60;
      *(result + 64) = v5;
      *(result + 72) = v6;
      *(result + 80) = xmmword_25C7CDE60;
      *a1 = result;
    }

    return result;
  }

  v8 = *(result + 32);
  v9 = *(result + 40);
  v11 = *(result + 48);
  v10 = *(result + 56);
  swift_unknownObjectRetain();

  v12 = v10 >> 1;
  v13 = (v10 >> 1) - v11;
  if (__OFSUB__(v10 >> 1, v11))
  {
    __break(1u);
    goto LABEL_18;
  }

  v14 = v13 - a2;
  if (__OFSUB__(v13, a2))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = a2;
  v16 = v14 & ~(v14 >> 63);
  v17 = v16 - v15;
  if (__OFSUB__(v16, v15))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
  result = swift_allocObject();
  *(result + 16) = xmmword_25C7CDE50;
  if (v17 > v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v17 > v12)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17 & ~(v17 >> 63);
  if (v18 < v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v14 > v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v16 < v11)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(result + 32) = v8;
  *(result + 40) = v9;
  *(result + 48) = v18;
  *(result + 56) = v10 & 1 | (2 * v16);
  if (v12 < v11)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  *(result + 64) = v8;
  *(result + 72) = v9;
  *(result + 80) = v16;
  *(result + 88) = v10;
  *a1 = result;

  return swift_unknownObjectRetain();
}

unint64_t sub_25C7BB2FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25C7CD4A4();
  sub_25C7CD244();
  v6 = sub_25C7CD4B4();

  return sub_25C7BB3C0(a1, a2, v6);
}

unint64_t sub_25C7BB374(double a1)
{
  v3 = *(v1 + 40);
  v4 = sub_25C7CD494();

  return sub_25C7BB478(v4, a1);
}

unint64_t sub_25C7BB3C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_25C7CD414())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25C7BB478(uint64_t a1, double a2)
{
  v3 = -1 << *(v2 + 32);
  result = a1 & ~v3;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v5 = ~v3;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a2)
      {
        break;
      }

      result = (result + 1) & v5;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_25C7BB4E0(void *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  v11 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v12 = v7;
      }

      else
      {
        v12 = v6;
      }

LABEL_11:
      result = sub_25C7CC59C(result, v12, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15918, &qword_25C7CDE48);
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v13 = *(v10 + 16);
    v14 = __OFADD__(v13, v9);
    v15 = v13 + v9;
    if (!v14)
    {
      *(v10 + 16) = v15;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_16ODCurareAnalysis10UsageErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25C7BB630(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25C7BB678(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_25C7BB6C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

void sub_25C7BB74C(uint64_t a1, uint64_t a2, double a3)
{
  if (a1 != -1 && a1 != a2)
  {
    v3 = 1.0 - a3;
    if (a1)
    {
      if (__OFSUB__(a2, a1))
      {
        __break(1u);
      }

      else if (!__OFADD__(a1, 1))
      {
        sub_25C7BC1E8(v3, (a2 - a1), (a1 + 1));
        return;
      }

      __break(1u);
    }

    else
    {
      pow(v3, a2);
    }
  }
}

void sub_25C7BB7E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xE400000000000000;
  v5 = 1936942412;
  if (v2 != 1)
  {
    v5 = 0x72657461657247;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x65646953206F7754;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_25C7BB83C(uint64_t a1, unint64_t a2, unsigned __int8 a3, double a4)
{
  if (a1 < 0)
  {
    v5 = 0x800000025C7CE890;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD00000000000001FLL;
    goto LABEL_13;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = 0x800000025C7CE860;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD000000000000021;
    goto LABEL_13;
  }

  if (a1 < a2)
  {
    v5 = 0x800000025C7CE820;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD000000000000031;
LABEL_13:
    *v6 = v7;
    *(v6 + 8) = v5;
    *(v6 + 16) = 0;
    swift_willThrow();
    return;
  }

  if (a4 < 0.0 || a4 > 1.0)
  {
    v5 = 0x800000025C7CE7F0;
    sub_25C7B9A14();
    swift_allocError();
    v7 = 0xD00000000000002FLL;
    goto LABEL_13;
  }

  v84 = a4;
  if (a3)
  {
    if (a3 == 1)
    {
      v9 = a2;

      goto LABEL_18;
    }

    v10 = a3;
    v9 = a2;
  }

  else
  {
    v10 = a3;
    v9 = a2;
  }

  v11 = sub_25C7CD414();

  if ((v11 & 1) == 0)
  {
    if (v10 > 1u)
    {
    }

    else
    {
      v12 = sub_25C7CD414();

      if ((v12 & 1) == 0)
      {
        v13 = v9;
        v14 = v84;
        __y = a1;
        v15 = a1 * v84;
        if (v15 <= v9)
        {
          if (v15 < v9)
          {
            sub_25C7BB74C(v9 - 1, a1, v84);
            if (!v4)
            {
              v18 = __y + 1.0;
              v19 = sub_25C7C89C8(__y + 1.0);
              v20 = v19 - sub_25C7C89C8(v13 + 1.0);
              v21 = v20 - sub_25C7C89C8(__y - v13 + 1.0);
              v81 = log(v84);
              __x = 1.0 - v84;
              v79 = log(1.0 - v84);
              v13 = exp(v81 * v13 + v79 * (__y - v13) + v21);
              v22 = floor(v15);
              if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_103:
                __break(1u);
                goto LABEL_104;
              }

              if (v22 <= -9.22337204e18)
              {
LABEL_104:
                __break(1u);
                goto LABEL_105;
              }

              if (v22 >= 9.22337204e18)
              {
LABEL_105:
                __break(1u);
                goto LABEL_106;
              }

              v23 = v22;
              if (v22 < 0)
              {
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              v24 = -1.0;
              v25 = v18 + -1.0;
              v26 = v25 * log(v18 + -1.0) - v25;
              v27 = 1.0;
              v28 = 0;
              v29 = 0;
              v77 = v26 + 0.572364943 + log(v25 * (v25 * 4.0 * (v25 + v25 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
              v30 = 3.0;
              while (1)
              {
                v31 = v77;
                if (v18 <= v30)
                {
                  v31 = sub_25C7C8A6C(v18);
                }

                v84 = v31;
                v32 = v28;
                v33 = v28 + v27;
                if (v33 <= v30)
                {
                  v37 = sub_25C7C8A6C(v33);
                }

                else
                {
                  v34 = v33 + v24;
                  v35 = v34 * log(v33 + v24) - v34;
                  v36 = v34 * (v34 * 4.0 * (v34 + v34 + v27) + v27);
                  v30 = 3.0;
                  v37 = v35 + 0.572364943 + log(v36 + 0.0333333333) * 0.166666667;
                }

                v15 = 1.0;
                v38 = __y - v32 + 1.0;
                if (v38 <= v30)
                {
                  v47 = sub_25C7C8A6C(v38);
                }

                else
                {
                  v39 = v38 + v24;
                  v40 = log(v38 + v24);
                  v41 = v13;
                  v42 = v18;
                  v43 = v39 * v40 - v39;
                  v44 = v39 * (v39 * 4.0 * (v39 + v39 + 1.0) + 1.0);
                  v30 = 3.0;
                  v45 = log(v44 + 0.0333333333);
                  v46 = v43 + 0.572364943;
                  v18 = v42;
                  v13 = v41;
                  v24 = -1.0;
                  v47 = v46 + v45 * 0.166666667;
                }

                if (exp(v81 * v32 + v79 * (__y - v32) + v84 - v37 - v47) <= v13)
                {
                  v48 = __OFADD__(v29++, 1);
                  v27 = 1.0;
                  if (v48)
                  {
                    goto LABEL_96;
                  }

                  v16 = a1;
                }

                else
                {
                  v16 = a1;
                  v27 = 1.0;
                }

                if (v23 == v28)
                {
                  break;
                }

                v48 = __OFADD__(v28++, 1);
                if (v48)
                {
                  __break(1u);
                  goto LABEL_54;
                }
              }

              if (v29)
              {
                v72 = v29 - 1;
                if (__OFSUB__(v29, 1))
                {
LABEL_107:
                  __break(1u);
                  goto LABEL_108;
                }

                if (v72 != v16)
                {
                  if (v29 != 1)
                  {
                    v48 = __OFSUB__(v16, v72);
                    v73 = v16 - v72;
                    if (!v48)
                    {
                      if (!__OFADD__(v72, 1))
                      {
                        sub_25C7BC1E8(__x, v73, v29);
                        return;
                      }

                      goto LABEL_109;
                    }

LABEL_108:
                    __break(1u);
LABEL_109:
                    __break(1u);
                    return;
                  }

                  pow(__x, __y);
                }
              }
            }
          }

          return;
        }

        v16 = a1 - v9;
        if (a1 == v9)
        {
          v17 = 1.0 - v84;
        }

        else
        {
LABEL_54:
          if (v9)
          {
            if (__OFADD__(v9, 1))
            {
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

            v17 = 1.0 - v14;
            sub_25C7BC1E8(1.0 - v14, v16, (v9 + 1));
            if (v4)
            {
              return;
            }
          }

          else
          {
            v17 = 1.0 - v14;
            pow(1.0 - v14, __y);
          }
        }

        __xa = __y + 1.0;
        v49 = sub_25C7C89C8(__y + 1.0);
        v50 = v49 - sub_25C7C89C8(v13 + 1.0);
        v51 = v50 - sub_25C7C89C8(__y - v13 + 1.0);
        v82 = log(v84);
        v80 = log(v17);
        v78 = exp(v82 * v13 + v80 * (__y - v13) + v51);
        v52 = ceil(v15);
        if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v52 > -9.22337204e18)
          {
            v53 = __y + 1.0;
            if (v52 < 9.22337204e18)
            {
              v54 = v52;
              if (v52 <= a1)
              {
                v55 = __xa + -1.0;
                v56 = v55 * log(__xa + -1.0) - v55;
                v57 = 0;
                v76 = v56 + 0.572364943 + log(v55 * (v55 * 4.0 * (v55 + v55 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
                while (1)
                {
                  v58 = v76;
                  if (v53 <= 3.0)
                  {
                    v58 = sub_25C7C8A6C(v53);
                  }

                  v59 = v54;
                  v60 = v54 + 1.0;
                  if (v60 <= 3.0)
                  {
                    v63 = sub_25C7C8A6C(v60);
                  }

                  else
                  {
                    v61 = v60 + -1.0;
                    v62 = v61 * log(v60 + -1.0) - v61;
                    v63 = v62 + 0.572364943 + log(v61 * (v61 * 4.0 * (v61 + v61 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
                  }

                  v64 = __y - v59 + 1.0;
                  if (v64 <= 3.0)
                  {
                    v69 = sub_25C7C8A6C(v64);
                  }

                  else
                  {
                    v65 = v64 + -1.0;
                    v66 = v65 * log(v64 + -1.0) - v65;
                    v67 = log(v65 * (v65 * 4.0 * (v65 + v65 + 1.0) + 1.0) + 0.0333333333);
                    v68 = v66 + 0.572364943;
                    v53 = __y + 1.0;
                    v69 = v68 + v67 * 0.166666667;
                  }

                  if (exp(v82 * v59 + v80 * (__y - v59) + v58 - v63 - v69) <= v78)
                  {
                    v48 = __OFADD__(v57++, 1);
                    v71 = v84;
                    if (v48)
                    {
                      __break(1u);
                      goto LABEL_95;
                    }

                    v70 = a1;
                  }

                  else
                  {
                    v70 = a1;
                    v71 = v84;
                  }

                  if (v70 == v54)
                  {
                    break;
                  }

                  v48 = __OFADD__(v54++, 1);
                  if (v48)
                  {
                    __break(1u);
                    break;
                  }
                }

                if (!v57)
                {
                  return;
                }

                if (!__OFSUB__(v70, v57))
                {
                  sub_25C7BB74C(v70 - v57, a1, v71);
                  return;
                }

                goto LABEL_101;
              }

LABEL_100:
              __break(1u);
LABEL_101:
              __break(1u);
              goto LABEL_102;
            }

LABEL_99:
            __break(1u);
            goto LABEL_100;
          }

LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    sub_25C7BB74C(v9 - 1, a1, v84);
    return;
  }

LABEL_18:
  if (a1 != v9)
  {
    if (!v9)
    {
      pow(1.0 - v84, a1);
      return;
    }

    if (!__OFADD__(v9, 1))
    {
      sub_25C7BC1E8(1.0 - v84, (a1 - v9), (v9 + 1));
      return;
    }

LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }
}

void sub_25C7BC1E8(long double a1, double a2, double a3)
{
  v4 = 0xD000000000000032;
  if (a1 < 0.0 || a1 > 1.0)
  {
    v6 = "ned for the beta function.";
LABEL_6:
    v7 = v6 | 0x8000000000000000;
    sub_25C7B9A14();
    swift_allocError();
    *v8 = v4;
    *(v8 + 8) = v7;
    *(v8 + 16) = 0;
    swift_willThrow();
    return;
  }

  v6 = "numberOfTrials was less than 0.";
  v4 = 0xD00000000000005ALL;
  if (a2 <= 0.0 || a3 <= 0.0)
  {
    goto LABEL_6;
  }

  if (a1 != 0.0 && a1 != 1.0)
  {
    v25 = log(a1);
    v26 = a1;
    v12 = 1.0 - a1;
    v13 = log(v12);
    v14 = sub_25C7C89C8(a2);
    v15 = sub_25C7C89C8(a3);
    v16 = a2 + a3;
    v17 = sub_25C7C89C8(a2 + a3);
    v27 = a3;
    if (a2 > a3)
    {
      v18 = a2;
    }

    else
    {
      v18 = a3;
    }

    v19 = ceil(sqrt(v18));
    if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v19 > -9.22337204e18)
    {
      if (v19 < 9.22337204e18)
      {
        v20 = v25 * a2 + v13 * a3;
        v21 = v14 + v15 - v17;
        if (v19 <= 100)
        {
          v22 = 100;
        }

        else
        {
          v22 = v19;
        }

        if ((a2 + 1.0) / (v16 + 2.0) <= v26)
        {
          sub_25C7BC434(v22, v12, v27, a2);
          if (!v3)
          {
            v24 = log(v27);
            exp(v20 - v21 - v24);
          }
        }

        else
        {
          sub_25C7BC434(v22, v26, a2, v27);
          if (!v3)
          {
            v23 = log(a2);
            exp(v20 - v21 - v23);
          }
        }

        return;
      }

LABEL_28:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_28;
  }
}

uint64_t sub_25C7BC434(uint64_t result, double a2, double a3, double a4)
{
  if (result < 1)
  {
LABEL_17:
    sub_25C7B9A14();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 0;
    *(v21 + 16) = 3;
    return swift_willThrow();
  }

  else
  {
    v4 = (a3 + a4) * a2 / (a3 + 1.0);
    if (vabdd_f64(1.0, v4) >= 1.0e-30)
    {
      v5 = 1.0 / (1.0 - v4);
    }

    else
    {
      v5 = 1.0e30;
    }

    v6 = 1;
    v7 = v5;
    v8 = 1.0;
    while (1)
    {
      v9 = v6;
      v10 = v9 + v9 + a3;
      v11 = (a4 - v6) * v6 * a2 / (v10 * (v10 + -1.0));
      v12 = v11 / v8 + 1.0;
      v13 = v7 * v11 + 1.0;
      if (fabs(v12) < 1.0e-30)
      {
        v12 = 1.0e-30;
      }

      v14 = fabs(v13);
      v15 = 1.0 / v13;
      if (v14 < 1.0e-30)
      {
        v15 = 1.0e30;
      }

      v16 = v5 * (v12 * v15);
      v17 = -((v9 + a3) * (a3 + a4 + v9)) * a2 / (v10 * (v10 + 1.0));
      v8 = v17 / v12 + 1.0;
      v18 = v17 * v15 + 1.0;
      if (fabs(v8) < 1.0e-30)
      {
        v8 = 1.0e-30;
      }

      v19 = fabs(v18);
      v7 = 1.0 / v18;
      if (v19 < 1.0e-30)
      {
        v7 = 1.0e30;
      }

      v5 = v16 * (v8 * v7);
      if (fabs(v8 * v7 + -1.0) < 0.000457247371)
      {
        break;
      }

      v20 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        return result;
      }

      ++v6;
      if (v20 > result)
      {
        goto LABEL_17;
      }
    }
  }

  return result;
}

void runSplittingStep(_:step:lastRun:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = MEMORY[0x25F88EB50]();
  sub_25C7BC65C(v5, v6, v7, a1, a3, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

uint64_t sub_25C7BC65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = a1 == 1937334628 && a2 == 0xE400000000000000;
  if (v12 || (sub_25C7CD414() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v16 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064);
      if (v17)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v16, v32);
        if (swift_dynamicCast())
        {
          v18 = v30;
          v19 = v31;
          goto LABEL_10;
        }
      }
    }

    v23 = 0x800000025C7CE9D0;
    sub_25C7B9A14();
    v21 = swift_allocError();
    v25 = 0xD000000000000023;
    goto LABEL_13;
  }

  if ((a1 != 0x736B656577 || a2 != 0xE500000000000000) && (sub_25C7CD414() & 1) == 0)
  {
    if ((a1 != 0x6E75527473616CLL || a2 != 0xE700000000000000) && (sub_25C7CD414() & 1) == 0)
    {
      sub_25C7CD314();

      v32[0] = 0xD000000000000018;
      v32[1] = 0x800000025C7CE950;
      MEMORY[0x25F88E8A0](a1, a2);
      sub_25C7B9A14();
      v21 = swift_allocError();
      *v24 = 0xD000000000000018;
      *(v24 + 8) = 0x800000025C7CE950;
      goto LABEL_14;
    }

    if (*(a3 + 16))
    {
      v28 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064);
      if (v29)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v28, v32);
        if (swift_dynamicCast())
        {
          v20 = sub_25C7BD320(a4, v30, v31, a5);
          v21 = v7;

          if (!v7)
          {
            goto LABEL_11;
          }

          goto LABEL_15;
        }
      }
    }

    v23 = 0x800000025C7CE970;
    sub_25C7B9A14();
    v21 = swift_allocError();
    v25 = 0xD000000000000026;
LABEL_13:
    *v24 = v25;
    *(v24 + 8) = v23;
LABEL_14:
    *(v24 + 16) = 0;
    result = swift_willThrow();
    goto LABEL_15;
  }

  if (!*(a3 + 16) || (v26 = sub_25C7BB2FC(0x6C656946656D6974, 0xE900000000000064), (v27 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v26, v32), (swift_dynamicCast() & 1) == 0))
  {
    v23 = 0x800000025C7CE9A0;
    sub_25C7B9A14();
    v21 = swift_allocError();
    v25 = 0xD000000000000024;
    goto LABEL_13;
  }

  v18 = v30;
  v19 = v31;
LABEL_10:
  v20 = sub_25C7BCA4C(a4, v18, v19);
  v21 = v7;

  if (!v7)
  {
LABEL_11:
    *a7 = v20;
    return result;
  }

LABEL_15:
  *a6 = v21;
  return result;
}

uint64_t sub_25C7BCA4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220) - 8) + 64);
  v8 = (MEMORY[0x28223BE20])();
  v80 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v68 - v10;
  v12 = sub_25C7CD1D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v87 = v68 - v19;
  MEMORY[0x28223BE20](v18);
  v86 = v68 - v20;
  v21 = *(a1 + 16);
  if (!v21)
  {
    return MEMORY[0x277D84F90];
  }

  v22 = (v21 - 1);
  v83 = a1;
  v84 = a1 + 32;
  v23 = *(a1 + 32 + 8 * (v21 - 1));
  if (!*(v23 + 16))
  {
    goto LABEL_39;
  }

  v78 = v21;

  v24 = sub_25C7BB2FC(a2, a3);
  if ((v25 & 1) == 0)
  {

LABEL_39:
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_40;
  }

  sub_25C7B9970(*(v23 + 56) + 32 * v24, &v88);

  v26 = swift_dynamicCast();
  v76 = *(v13 + 56);
  v77 = v13 + 56;
  v76(v11, v26 ^ 1u, 1, v12);
  v74 = *(v13 + 48);
  v75 = v13 + 48;
  if (v74(v11, 1, v12) == 1)
  {
LABEL_40:
    sub_25C7BDAE8(v11);
    v88 = 0;
    v89 = 0xE000000000000000;
    sub_25C7CD314();

    v88 = 0xD00000000000002CLL;
    v89 = 0x800000025C7CEA00;
    MEMORY[0x25F88E8A0](a2, a3);
    v57 = v88;
    v58 = v89;
    sub_25C7B9A14();
    swift_allocError();
    *v59 = v57;
    *(v59 + 8) = v58;
    *(v59 + 16) = 1;
    return swift_willThrow();
  }

  v71 = v22;
  v68[1] = v3;
  v72 = *(v13 + 32);
  v72(v86, v11, v12);
  v82 = 0;
  v73 = v13 + 32;
  v85 = (v13 + 8);
  v27 = MEMORY[0x277D84F90];
  v28 = v78;
  v29 = v78;
  v30 = v78;
  v31 = v78;
  v70 = a3;
  v69 = a2;
  while (1)
  {
    v32 = v82;
    if (v29 == v28)
    {
      v32 = v28;
      v30 = v28;
      v31 = v28;
    }

    v33 = v32 - 1;
    if (__OFSUB__(v32, 1))
    {
      break;
    }

    v34 = v29 - 1;
    if (v34 >= v28)
    {
      goto LABEL_45;
    }

    v81 = v31;
    v35 = *(v84 + 8 * v34);
    v36 = v80;
    if (!*(v35 + 16))
    {
      goto LABEL_42;
    }

    v79 = v34;

    v37 = sub_25C7BB2FC(a2, a3);
    if ((v38 & 1) == 0)
    {

LABEL_42:
      v76(v36, 1, 1, v12);
LABEL_43:

      sub_25C7BDAE8(v36);
      v88 = 0;
      v89 = 0xE000000000000000;
      sub_25C7CD314();

      v88 = 0xD00000000000002CLL;
      v89 = 0x800000025C7CEA00;
      MEMORY[0x25F88E8A0](a2, a3);
      v60 = v88;
      v61 = v89;
      sub_25C7B9A14();
      swift_allocError();
      *v62 = v60;
      *(v62 + 8) = v61;
      *(v62 + 16) = 1;
      swift_willThrow();
      return (*v85)(v86, v12);
    }

    sub_25C7B9970(*(v35 + 56) + 32 * v37, &v88);

    v39 = swift_dynamicCast();
    v76(v36, v39 ^ 1u, 1, v12);
    if (v74(v36, 1, v12) == 1)
    {
      goto LABEL_43;
    }

    v72(v87, v36, v12);
    v82 = v33;
    v40 = (v33 + 1);
    a3 = __OFADD__(v33, 1);
    sub_25C7CD1A4();
    v41 = sub_25C7BDB50();
    v42 = sub_25C7CD214();
    v33 = *v85;
    (*v85)(v17, v12);
    if (v42)
    {
      v31 = v81;
    }

    else
    {
      if (a3)
      {
        __break(1u);
LABEL_54:
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
        goto LABEL_60;
      }

      v43 = (v71 + 1);
      a3 = v83;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_54;
      }

      if (v43 < v40)
      {
        goto LABEL_55;
      }

      if (v81 < v40)
      {
        goto LABEL_56;
      }

      if (v40 < 0)
      {
        goto LABEL_57;
      }

      if (v81 < v43)
      {
        goto LABEL_58;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_25C7B9F30(0, v27[2] + 1, 1, v27);
      }

      v45 = v27[2];
      v44 = v27[3];
      v46 = v45 + 1;
      if (v45 >= v44 >> 1)
      {
        v71 = (v45 + 1);
        v55 = sub_25C7B9F30((v44 > 1), v45 + 1, 1, v27);
        v46 = v71;
        v27 = v55;
      }

      v27[2] = v46;
      v47 = &v27[4 * v45];
      v48 = v84;
      v47[4] = a3;
      v47[5] = v48;
      v47[6] = v40;
      v47[7] = (2 * v43) | 1;
      sub_25C7CD1B4();
      sub_25C7CD1A4();
      v49 = sub_25C7CD214();
      (v33)(v17, v12);
      if ((v49 & 1) == 0)
      {
        do
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_25C7B9F30(0, v27[2] + 1, 1, v27);
          }

          v51 = v27[2];
          v50 = v27[3];
          if (v51 >= v50 >> 1)
          {
            v27 = sub_25C7B9F30((v50 > 1), v51 + 1, 1, v27);
          }

          v27[2] = v51 + 1;
          v52 = &v27[4 * v51];
          v53 = v84;
          v52[4] = v83;
          v52[5] = v53;
          v52[6] = v40;
          v52[7] = (2 * v40) | 1;
          sub_25C7CD1B4();
          sub_25C7CD1A4();
          v54 = sub_25C7CD214();
          (v33)(v17, v12);
        }

        while ((v54 & 1) == 0);
      }

      v31 = v81;
      v71 = v82;
      v30 = v81;
    }

    (v33)(v87, v12);
    a3 = v70;
    a2 = v69;
    v28 = v78;
    v29 = v79;
    if (!v79)
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  v41 = (v71 + 1);
  if (__OFADD__(v71, 1))
  {
    goto LABEL_59;
  }

  a3 = v83;
  if (v41 < 0)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  if (v30 < v41)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_50;
  }

LABEL_62:
  v27 = sub_25C7B9F30(0, v27[2] + 1, 1, v27);
LABEL_50:
  v64 = v27[2];
  v63 = v27[3];
  if (v64 >= v63 >> 1)
  {
    v27 = sub_25C7B9F30((v63 > 1), v64 + 1, 1, v27);
  }

  v27[2] = v64 + 1;
  v65 = &v27[4 * v64];
  v66 = v84;
  v65[4] = a3;
  v65[5] = v66;
  v65[6] = 0;
  v65[7] = (2 * v41) | 1;
  v67 = sub_25C7BD658(v27);
  (v33)(v86, v12);
  return v67;
}

uint64_t sub_25C7BD320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v28 - v11;
  v13 = sub_25C7CD1D4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C7BDBA8(a4, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_25C7BDAE8(v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_25C7CDFC0;
    v18 = (2 * *(a1 + 16)) | 1;
    *(a3 + 32) = a1;
    *(a3 + 40) = a1 + 32;
    *(a3 + 48) = 0;
    *(a3 + 56) = v18;

    return a3;
  }

  v19 = (*(v14 + 32))(v17, v12, v13);
  MEMORY[0x28223BE20](v19);
  v28[-4] = a2;
  v28[-3] = a3;
  v28[-2] = v17;
  v20 = sub_25C7BDA34(sub_25C7BDC18, &v28[-6], a1);
  if (v4)
  {
    (*(v14 + 8))(v17, v13);
    return a3;
  }

  if (v21)
  {
    v22 = *(a1 + 16);
  }

  else
  {
    v22 = v20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15910, &qword_25C7CDE40);
  if (v22 < 1)
  {
    a3 = swift_allocObject();
    *(a3 + 16) = xmmword_25C7CDFC0;
    v26 = (2 * *(a1 + 16)) | 1;
    *(a3 + 32) = a1;
    *(a3 + 40) = a1 + 32;
    *(a3 + 48) = 0;
    *(a3 + 56) = v26;
    v27 = *(v14 + 8);

    v27(v17, v13);
    return a3;
  }

  result = swift_allocObject();
  *(result + 16) = xmmword_25C7CDE50;
  v24 = *(a1 + 16);
  if (v24 >= v22)
  {
    a3 = result;
    *(result + 32) = a1;
    *(result + 40) = a1 + 32;
    *(result + 48) = 0;
    *(result + 56) = (2 * v22) | 1;
    *(result + 64) = a1;
    *(result + 72) = a1 + 32;
    *(result + 80) = v22;
    *(result + 88) = (2 * v24) | 1;
    v25 = *(v14 + 8);
    swift_bridgeObjectRetain_n();
    v25(v17, v13);
    return a3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25C7BD658(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 4 * v2; ; i -= 4)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v10 = v1[2];
    if (v4 >= v10)
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_14;
    }

    v15 = *&v1[v3 + 6];
    v16 = *&v1[v3 + 4];
    v17 = *&v1[i];
    v11 = v1[i + 2];
    v12 = v1[i + 3];
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_25C7C86B8(v1);
    }

    v13 = &v1[v3];
    v14 = v1[v3 + 4];
    *(v13 + 2) = v17;
    v13[6] = v11;
    v13[7] = v12;
    result = swift_unknownObjectRelease();
    if (v6 >= v1[2])
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    v9 = v1[i];
    *v8 = v16;
    v8[1] = v15;
    result = swift_unknownObjectRelease();
LABEL_5:
    ++v4;
    --v6;
    v3 += 4;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_25C7BD788(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = sub_25C7CD1D4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (!*(v15 + 16) || (v16 = sub_25C7BB2FC(a2, a3), (v17 & 1) == 0))
  {
    (*(v11 + 56))(v9, 1, 1, v10);
    goto LABEL_6;
  }

  sub_25C7B9970(*(v15 + 56) + 32 * v16, &v23);
  v18 = swift_dynamicCast();
  (*(v11 + 56))(v9, v18 ^ 1u, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
LABEL_6:
    sub_25C7BDAE8(v9);
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_25C7CD314();

    v23 = 0xD00000000000002CLL;
    v24 = 0x800000025C7CEA00;
    MEMORY[0x25F88E8A0](a2, a3);
    v19 = v23;
    v20 = v24;
    sub_25C7B9A14();
    swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v20;
    *(v21 + 16) = 1;
    swift_willThrow();
    return v19 & 1;
  }

  (*(v11 + 32))(v14, v9, v10);
  LOBYTE(v19) = sub_25C7CD194();
  (*(v11 + 8))(v14, v10);
  return v19 & 1;
}

uint64_t sub_25C7BDA34(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 8 * v6);

    v8 = a1(&v10);

    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t sub_25C7BDAE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_25C7BDB50()
{
  result = qword_27FC15928;
  if (!qword_27FC15928)
  {
    sub_25C7CD1D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15928);
  }

  return result;
}

uint64_t sub_25C7BDBA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

ODCurareAnalysis::TestSkippedReason_optional __swiftcall TestSkippedReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25C7CD3F4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t TestSkippedReason.rawValue.getter()
{
  if (*v0)
  {
    result = 0xD000000000000018;
  }

  else
  {
    result = 0xD000000000000025;
  }

  *v0;
  return result;
}

uint64_t sub_25C7BDCDC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD000000000000025;
  }

  if (v3)
  {
    v5 = "%@\n maxTimestamp2=%@\n";
  }

  else
  {
    v5 = "ed while running test";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD000000000000025;
  }

  if (*a2)
  {
    v8 = "ed while running test";
  }

  else
  {
    v8 = "%@\n maxTimestamp2=%@\n";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_25C7CD414();
  }

  return v10 & 1;
}

unint64_t sub_25C7BDD8C()
{
  result = qword_27FC15930;
  if (!qword_27FC15930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC15930);
  }

  return result;
}

uint64_t sub_25C7BDDE0()
{
  v1 = *v0;
  sub_25C7CD4A4();
  sub_25C7CD244();

  return sub_25C7CD4B4();
}

uint64_t sub_25C7BDE60()
{
  *v0;
  sub_25C7CD244();
}

uint64_t sub_25C7BDECC()
{
  v1 = *v0;
  sub_25C7CD4A4();
  sub_25C7CD244();

  return sub_25C7CD4B4();
}

uint64_t sub_25C7BDF48@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25C7CD3F4();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_25C7BDFA8(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD000000000000025;
  }

  if (*v1)
  {
    v3 = "ed while running test";
  }

  else
  {
    v3 = "%@\n maxTimestamp2=%@\n";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t sub_25C7BDFE8(uint64_t a1)
{
  v2 = sub_25C7CD1D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_25C7B9970(a1, v19);
  sub_25C7B9970(v19, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
  swift_dynamicCast();
  if (!v18)
  {
    v10 = [objc_allocWithZone(MEMORY[0x277CBEB68]) init];
LABEL_5:
    v11 = v10;
    goto LABEL_10;
  }

  sub_25C7C04D8(&v16);
  if ((swift_dynamicCast() & 1) != 0 || swift_dynamicCast())
  {
    v11 = sub_25C7CD224();

    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    (*(v3 + 32))(v7, v9, v2);
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    sub_25C7CD174();
    v11 = sub_25C7CD2B4();
    (*(v3 + 8))(v7, v2);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v10 = sub_25C7CD2D4();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v10 = sub_25C7CD2B4();
    goto LABEL_5;
  }

  if (swift_dynamicCast())
  {
    sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v10 = sub_25C7CD2C4();
    goto LABEL_5;
  }

  sub_25C7C0540(0, &qword_27FC159B8, 0x277D82BB8);
  if (!swift_dynamicCast())
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_25C7CD314();
    MEMORY[0x25F88E8A0](0xD00000000000002ALL, 0x800000025C7CEAF0);
    sub_25C7CD394();
    v11 = v16;
    v13 = v17;
    sub_25C7B9A14();
    swift_allocError();
    *v14 = v11;
    *(v14 + 8) = v13;
    *(v14 + 16) = 1;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v19);
    return v11;
  }

  v11 = v16;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_0(v19);
  return v11;
}

uint64_t sub_25C7BE44C()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[3] = type metadata accessor for BinomialTestResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for BinomialTestResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v20 = v0;
  v17 = sub_25C7C069C;
  v18 = &v19;
  v14 = sub_25C7C0684;
  v15 = &v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v8 = sub_25C7CD384();
  if (v1)
  {
    v21[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = v8;

    if (*(v10 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v11 = sub_25C7CD3E4();
    }

    else
    {
      v11 = MEMORY[0x277D84F98];
    }

    v21[0] = v11;

    sub_25C7BF9D8(v12, 1, v21);
    (*(v3 + 8))(v6, v2);

    return v21[0];
  }
}

uint64_t sub_25C7BE6C0()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[3] = type metadata accessor for ZTestResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for ZTestResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v20 = v0;
  v17 = sub_25C7C069C;
  v18 = &v19;
  v14 = sub_25C7C0684;
  v15 = &v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v8 = sub_25C7CD384();
  if (v1)
  {
    v21[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = v8;

    if (*(v10 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v11 = sub_25C7CD3E4();
    }

    else
    {
      v11 = MEMORY[0x277D84F98];
    }

    v21[0] = v11;

    sub_25C7BF9D8(v12, 1, v21);
    (*(v3 + 8))(v6, v2);

    return v21[0];
  }
}

uint64_t sub_25C7BE934()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[3] = type metadata accessor for KSTestTwoSampleResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for KSTestTwoSampleResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v20 = v0;
  v17 = sub_25C7C05F0;
  v18 = &v19;
  v14 = sub_25C7C0684;
  v15 = &v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v8 = sub_25C7CD384();
  if (v1)
  {
    v21[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = v8;

    if (*(v10 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v11 = sub_25C7CD3E4();
    }

    else
    {
      v11 = MEMORY[0x277D84F98];
    }

    v21[0] = v11;

    sub_25C7BF9D8(v12, 1, v21);
    (*(v3 + 8))(v6, v2);

    return v21[0];
  }
}

uint64_t sub_25C7BEBA8()
{
  v2 = sub_25C7CD4E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21[3] = type metadata accessor for MalformedTestResult(0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  sub_25C7C0588(v0, boxed_opaque_existential_0, type metadata accessor for MalformedTestResult);
  sub_25C7CD4C4();
  sub_25C7CD4D4();
  v20 = v0;
  v17 = sub_25C7C069C;
  v18 = &v19;
  v14 = sub_25C7BF9C0;
  v15 = &v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A0, qword_25C7CE1E0);
  v8 = sub_25C7CD384();
  if (v1)
  {
    v21[0] = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_willThrowTypedImpl();

    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v10 = v8;

    if (*(v10 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
      v11 = sub_25C7CD3E4();
    }

    else
    {
      v11 = MEMORY[0x277D84F98];
    }

    v21[0] = v11;

    sub_25C7BF9D8(v12, 1, v21);
    (*(v3 + 8))(v6, v2);

    return v21[0];
  }
}

unint64_t sub_25C7BEE1C(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v7 = 0xE300000000000000;
    a1 = 7104878;
    goto LABEL_5;
  }

  sub_25C7BDFE8(a3);
  if (v3)
  {
    MEMORY[0x25F88EF00](v3);

    v7 = a2;
LABEL_5:
    sub_25C7CD314();
    MEMORY[0x25F88E8A0](0xD00000000000001BLL, 0x800000025C7CEAA0);

    MEMORY[0x25F88E8A0](a1, v7);

    MEMORY[0x25F88E8A0](8236, 0xE200000000000000);
    sub_25C7CD394();
    MEMORY[0x25F88E8A0](0xD000000000000022, 0x800000025C7CEAC0);
    a1 = 0xE000000000000000;
    sub_25C7B9A14();
    swift_allocError();
    *v8 = 0;
    *(v8 + 8) = 0xE000000000000000;
    *(v8 + 16) = 1;
    swift_willThrow();
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for TestSkippedReason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TestSkippedReason(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_25C7BF240()
{
  sub_25C7BF910(319, &qword_27FC15948);
  if (v0 <= 0x3F)
  {
    sub_25C7BF354();
    if (v1 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15958);
      if (v2 <= 0x3F)
      {
        sub_25C7BF910(319, &qword_27FC15960);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25C7BF354()
{
  if (!qword_27FC15950)
  {
    sub_25C7CD1D4();
    v0 = sub_25C7CD2F4();
    if (!v1)
    {
      atomic_store(v0, &qword_27FC15950);
    }
  }
}

void sub_25C7BF3F4()
{
  sub_25C7BF910(319, &qword_27FC15948);
  if (v0 <= 0x3F)
  {
    sub_25C7BF354();
    if (v1 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15958);
      if (v2 <= 0x3F)
      {
        sub_25C7BF910(319, &qword_27FC15960);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25C7BF55C()
{
  sub_25C7BF910(319, &qword_27FC15948);
  if (v0 <= 0x3F)
  {
    sub_25C7BF354();
    if (v1 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15958);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25C7BF804(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25C7BF83C()
{
  sub_25C7BF910(319, &qword_27FC15948);
  if (v0 <= 0x3F)
  {
    sub_25C7BF354();
    if (v1 <= 0x3F)
    {
      sub_25C7BF910(319, &qword_27FC15998);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25C7BF910(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25C7CD2F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_25C7BF9D8(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_25C7BB2FC(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_25C7BFED4(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_25C7BB2FC(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_25C7CD434();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  sub_25C7BFD68();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    MEMORY[0x25F88EF10](v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x25F88EF00](v20);
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_25C7CD314();
    MEMORY[0x25F88E8A0](0xD00000000000001BLL, 0x800000025C7CEA80);
    sub_25C7CD394();
    MEMORY[0x25F88E8A0](39, 0xE100000000000000);
    result = sub_25C7CD3A4();
    __break(1u);
    return result;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = sub_25C7BB2FC(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        sub_25C7BFED4(v34, 1);
        v35 = *a3;
        v30 = sub_25C7BB2FC(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
      }
    }

    goto LABEL_25;
  }
}

id sub_25C7BFD68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
  v2 = *v0;
  v3 = sub_25C7CD3C4();
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

uint64_t sub_25C7BFED4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
  v39 = a2;
  result = sub_25C7CD3D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_25C7CD4A4();
      sub_25C7CD244();
      result = sub_25C7CD4B4();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_25C7C0178(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v36 = a2;
  result = sub_25C7CD3D4();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_25C7C0668(v25, v37);
      }

      else
      {
        sub_25C7B9970(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_25C7CD4A4();
      sub_25C7CD244();
      result = sub_25C7CD4B4();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_25C7C0668(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

__n128 sub_25C7C0430@<Q0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t *)@<X1>, uint64_t a3@<X8>)
{
  a2(&v8, a1, &v7);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159A8, &qword_25C7CE180);
    swift_allocError();
    *v6 = v7;
  }

  else
  {
    result = v9;
    *a3 = v8;
    *(a3 + 8) = result;
  }

  return result;
}

double sub_25C7C04BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  *&result = sub_25C7C0430(a1, *(v2 + 16), a2).n128_u64[0];
  return result;
}

uint64_t sub_25C7C04D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25C7C0540(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_25C7C0588(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C7C060C@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  result = v7(*a1, a1[1], a1 + 2);
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    *a3 = result;
    a3[1] = v10;
    a3[2] = v11;
  }

  return result;
}

_OWORD *sub_25C7C0668(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C7C06D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159D0, &qword_25C7CE1D0);
  v12[0] = a2;

  sub_25C7B919C(v12, v13);
  v10[2] = v13[2];
  v10[3] = v13[3];
  v11 = v14;
  v10[0] = v13[0];
  v10[1] = v13[1];
  sub_25C7C0C60(a1, v13, a3, v15);
  sub_25C7C25B8(v10);
  v6 = v16;
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v8 = (*(v7 + 40))(v6, v7);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return v8;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

void *sub_25C7C0C60@<X0>(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = a2[5];
  v71 = a2[4];
  v72 = a2[3];
  v11 = a2[6];
  v12 = a2[7];
  v13 = a2[8];
  v14 = sub_25C7C8D34(a1);
  if (v14)
  {
    v77[0] = v14;
    runPreprocessingSteps(_:steps:lastRun:)(v77, v7);
    v38 = v77[0];
    v39 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v9, v72, v71, v38, a3, &v75, v74);

    objc_autoreleasePoolPop(v39);
    v76 = *&v74[0];
    v51 = runPostprocessingSteps(_:steps:lastRun:)(&v76, v10);
    v52 = v76;
    v53 = MEMORY[0x25F88EB50](v51);
    sub_25C7C9480(v11, v12, v13, v52, &v75, v74);

    objc_autoreleasePoolPop(v53);
    return sub_25C7C519C(v74, a4);
  }

  v73 = v8;
  v69 = v9;
  v70 = v7;
  v15 = sub_25C7C8E5C(a1);
  if (!v15)
  {
    v44 = 0x800000025C7CED90;
    v40 = type metadata accessor for MalformedTestResult(0);
    a4[3] = v40;
    a4[4] = &off_286E69AA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
    *boxed_opaque_existential_0 = 0x656D726F666C614DLL;
    boxed_opaque_existential_0[1] = 0xE900000000000064;
    *(boxed_opaque_existential_0 + 8) = 0;
    v42 = *(v40 + 28);
    v43 = sub_25C7CD1D4();
    result = (*(*(v43 - 8) + 56))(boxed_opaque_existential_0 + v42, 1, 1, v43);
    v49 = (boxed_opaque_existential_0 + *(v40 + 32));
    v50 = 0xD00000000000001FLL;
LABEL_31:
    *v49 = v50;
    v49[1] = v44;
    return result;
  }

  v16 = v15;
  v62 = v11;
  v63 = v10;
  v60 = v13;
  v61 = v12;
  v17 = v8;
  v18 = (v15 >> 62);
  v66 = a3;
  v67 = v73[2];
  if (v67)
  {
    if (v18)
    {
      goto LABEL_35;
    }

    for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_25C7CD3B4())
    {
      v20 = 0;
      v21 = (v17 + 4);
      v64 = (v17 + 4);
      v65 = v18;
      while (v20 < v17[2])
      {
        v22 = &v21[16 * v20];
        v24 = *v22;
        v23 = *(v22 + 1);
        v68 = v20 + 1;

        v25 = 0;
        while (i != v25)
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v26 = MEMORY[0x25F88E970](v25, v16);
          }

          else
          {
            if (v25 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_33;
            }

            v26 = *(v16 + 8 * v25 + 32);
          }

          v18 = v26;
          if (__OFADD__(v25, 1))
          {
            __break(1u);
LABEL_33:
            __break(1u);
            goto LABEL_34;
          }

          v17 = [v18 respondsToSelector_];

          ++v25;
          if ((v17 & 1) == 0)
          {

            v44 = 0x800000025C7CEDB0;
            v45 = type metadata accessor for MalformedTestResult(0);
            a4[3] = v45;
            a4[4] = &off_286E69AA8;
            v46 = __swift_allocate_boxed_opaque_existential_0(a4);
            *v46 = 0x656D726F666C614DLL;
            v46[1] = 0xE900000000000064;
            *(v46 + 8) = 0;
            v47 = *(v45 + 28);
            v48 = sub_25C7CD1D4();
            result = (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
            v49 = (v46 + *(v45 + 32));
            v50 = 0xD000000000000028;
            goto LABEL_31;
          }
        }

        v20 = v68;
        v17 = v73;
        v21 = v64;
        v18 = v65;
        if (v68 == v67)
        {
          goto LABEL_19;
        }
      }

LABEL_34:
      __break(1u);
LABEL_35:
      ;
    }
  }

LABEL_19:
  if (v18)
  {
    v27 = sub_25C7CD3B4();
    v28 = v70;
    if (v27)
    {
      goto LABEL_21;
    }

LABEL_37:

    v30 = MEMORY[0x277D84F90];
LABEL_38:
    v77[0] = v30;
    runPreprocessingSteps(_:steps:lastRun:)(v77, v28);
    v55 = v77[0];
    v56 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v69, v72, v71, v55, v66, &v75, v74);

    objc_autoreleasePoolPop(v56);
    v76 = *&v74[0];
    v57 = runPostprocessingSteps(_:steps:lastRun:)(&v76, v63);
    v58 = v76;
    v59 = MEMORY[0x25F88EB50](v57);
    sub_25C7C9480(v62, v61, v60, v58, &v75, v74);

    objc_autoreleasePoolPop(v59);
    return sub_25C7C519C(v74, a4);
  }

  v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v28 = v70;
  if (!v27)
  {
    goto LABEL_37;
  }

LABEL_21:
  *&v74[0] = MEMORY[0x277D84F90];
  result = sub_25C7CC5BC(0, v27 & ~(v27 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v29 = 0;
    v30 = *&v74[0];
    do
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x25F88E970](v29, v16);
      }

      else
      {
        v31 = *(v16 + 8 * v29 + 32);
      }

      v32 = v31;
      v33 = sub_25C7CD264();
      v34 = [v32 dictionaryWithValuesForKeys_];

      v35 = sub_25C7CD204();
      *&v74[0] = v30;
      v37 = *(v30 + 16);
      v36 = *(v30 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_25C7CC5BC((v36 > 1), v37 + 1, 1);
        v30 = *&v74[0];
      }

      ++v29;
      *(v30 + 16) = v37 + 1;
      *(v30 + 8 * v37 + 32) = v35;
    }

    while (v27 != v29);

    v28 = v70;
    goto LABEL_38;
  }

  __break(1u);
  return result;
}

void sub_25C7C1448(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v82 = a2;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A30, &qword_25C7CE270);
  v6 = *(*(v79 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v79);
  v83 = (&v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v73 = (&v72 - v10);
  MEMORY[0x28223BE20](v9);
  v77 = (&v72 - v11);
  v74 = a1 >> 62;
  if (!(a1 >> 62))
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_3;
  }

  while (1)
  {
    v12 = sub_25C7CD3B4();
LABEL_3:
    v13 = *(v82 + 16);
    if (v13 >= v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = *(v82 + 16);
    }

    v95 = MEMORY[0x277D84F90];
    sub_25C7CC5BC(0, v14 & ~(v14 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
LABEL_64:

      __break(1u);
      return;
    }

    v15 = v95;
    v78 = a1;
    v72 = v4;
    v81 = v13;
    if (!v14)
    {
      break;
    }

    v76 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v74)
    {
      v75 = sub_25C7CD3B4();
    }

    else
    {
      v75 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v80 = a1 & 0xC000000000000001;
    v84 = v14;
    while (v14 != v16)
    {
      if (v75 == v16)
      {
        goto LABEL_57;
      }

      if (v80)
      {
        v17 = MEMORY[0x25F88E970](v16, a1);
      }

      else
      {
        if (v16 >= *(v76 + 16))
        {
          goto LABEL_61;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v3 = v17;
      if (v81 == v16)
      {
        goto LABEL_64;
      }

      v18 = v15;
      v19 = sub_25C7CD1D4();
      v20 = *(v19 - 8);
      v4 = *(v20 + 16);
      v21 = v83;
      v22 = v82 + ((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v16;
      v23 = *(v79 + 48);
      *v83 = v3;
      (v4)(v21 + v23, v22, v19);
      v92[0] = 1635017060;
      v92[1] = 0xE400000000000000;
      v24 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
      v92[2] = v3;
      v92[5] = v24;
      v93[0] = 0x6D617473656D6974;
      v93[1] = 0xE900000000000070;
      v94[3] = v19;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v94);
      (v4)(boxed_opaque_existential_0, v21 + v23, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v26 = sub_25C7CD3E4();
      v27 = v3;

      sub_25C7C51B4(v92, &v89, &qword_27FC15A10, &qword_25C7CE248);
      v3 = v89;
      a1 = v90;
      v28 = sub_25C7BB2FC(v89, v90);
      v15 = v18;
      if (v29)
      {
        goto LABEL_52;
      }

      v4 = (v26 + 8);
      *(v26 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v28;
      v30 = (v26[6] + 16 * v28);
      *v30 = v3;
      v30[1] = a1;
      sub_25C7C0668(v91, (v26[7] + 32 * v28));
      v31 = v26[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_53;
      }

      v26[2] = v33;
      sub_25C7C51B4(v93, &v89, &qword_27FC15A10, &qword_25C7CE248);
      a1 = v89;
      v3 = v90;
      v34 = sub_25C7BB2FC(v89, v90);
      if (v35)
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
        break;
      }

      *(v4 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      v36 = (v26[6] + 16 * v34);
      *v36 = a1;
      v36[1] = v3;
      sub_25C7C0668(v91, (v26[7] + 32 * v34));
      v37 = v26[2];
      v32 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v32)
      {
        goto LABEL_53;
      }

      v26[2] = v38;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
      swift_arrayDestroy();
      sub_25C7C528C(v83, &qword_27FC15A30, &qword_25C7CE270);
      v95 = v18;
      v4 = *(v18 + 16);
      v39 = *(v18 + 24);
      v3 = (v4 + 1);
      if (v4 >= v39 >> 1)
      {
        sub_25C7CC5BC((v39 > 1), v4 + 1, 1);
        v15 = v95;
      }

      ++v16;
      *(v15 + 16) = v3;
      *(v15 + 8 * v4 + 32) = v26;
      v14 = v84;
      a1 = v78;
      if (v84 == v16)
      {
        v4 = v76;
        v13 = v81;
        goto LABEL_28;
      }
    }

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

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  v80 = a1 & 0xC000000000000001;
LABEL_28:
  if (a1 < 0)
  {
    v40 = a1;
  }

  else
  {
    v40 = v4;
  }

  v83 = v40;
  v76 = v4;
  if (v74)
  {
    while (v14 != sub_25C7CD3B4())
    {
LABEL_35:
      if (v80)
      {
        v41 = MEMORY[0x25F88E970](v14, a1);
      }

      else
      {
        if (v14 >= *(v4 + 16))
        {
          goto LABEL_59;
        }

        v41 = *(a1 + 8 * v14 + 32);
      }

      v42 = v41;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_58;
      }

      if (v13 == v14)
      {

        return;
      }

      if (v14 >= v13)
      {
        goto LABEL_60;
      }

      v43 = sub_25C7CD1D4();
      v44 = *(v43 - 8);
      v45 = *(v44 + 16);
      v46 = v82 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v47 = *(v44 + 72);
      v84 = v14;
      v48 = v46 + v47 * v14;
      v49 = v79;
      v50 = *(v79 + 48);
      v51 = v73;
      *v73 = v42;
      v45(v51 + v50, v48, v43);
      v52 = v77;
      sub_25C7C521C(v51, v77);
      v53 = *v52;
      v54 = *(v49 + 48);
      v86[0] = 1635017060;
      v86[1] = 0xE400000000000000;
      v55 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
      v86[2] = v53;
      v86[5] = v55;
      v87[0] = 0x6D617473656D6974;
      v87[1] = 0xE900000000000070;
      v88[3] = v43;
      v4 = &v85;
      v56 = __swift_allocate_boxed_opaque_existential_0(v88);
      v45(v56, v52 + v54, v43);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      a1 = sub_25C7CD3E4();
      v57 = v53;

      sub_25C7C51B4(v86, &v89, &qword_27FC15A10, &qword_25C7CE248);
      v3 = v89;
      v58 = v90;
      v59 = sub_25C7BB2FC(v89, v90);
      if (v60)
      {
        goto LABEL_54;
      }

      *(a1 + 64 + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
      v61 = (*(a1 + 48) + 16 * v59);
      *v61 = v3;
      v61[1] = v58;
      sub_25C7C0668(v91, (*(a1 + 56) + 32 * v59));
      v62 = *(a1 + 16);
      v32 = __OFADD__(v62, 1);
      v63 = v62 + 1;
      if (v32)
      {
        goto LABEL_55;
      }

      *(a1 + 16) = v63;
      sub_25C7C51B4(v87, &v89, &qword_27FC15A10, &qword_25C7CE248);
      v3 = v89;
      v64 = v90;
      v65 = sub_25C7BB2FC(v89, v90);
      if (v66)
      {
        goto LABEL_54;
      }

      *(a1 + 64 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
      v67 = (*(a1 + 48) + 16 * v65);
      *v67 = v3;
      v67[1] = v64;
      sub_25C7C0668(v91, (*(a1 + 56) + 32 * v65));
      v68 = *(a1 + 16);
      v32 = __OFADD__(v68, 1);
      v69 = v68 + 1;
      if (v32)
      {
        goto LABEL_55;
      }

      *(a1 + 16) = v69;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
      swift_arrayDestroy();
      sub_25C7C528C(v77, &qword_27FC15A30, &qword_25C7CE270);
      v95 = v15;
      v71 = *(v15 + 16);
      v70 = *(v15 + 24);
      v3 = (v71 + 1);
      if (v71 >= v70 >> 1)
      {
        sub_25C7CC5BC((v70 > 1), v71 + 1, 1);
        v15 = v95;
      }

      *(v15 + 16) = v3;
      *(v15 + 8 * v71 + 32) = a1;
      v14 = v84 + 1;
      a1 = v78;
      v13 = v81;
      v4 = v76;
      if (!v74)
      {
        goto LABEL_32;
      }
    }
  }

  else
  {
LABEL_32:
    if (v14 != *(v4 + 16))
    {
      goto LABEL_35;
    }
  }
}

id Timeseries.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Timeseries.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Timeseries();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Timeseries.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Timeseries();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25C7C23D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A28, &unk_25C7CE260);
    v3 = sub_25C7CD3E4();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_25C7BB374(v5);
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

unint64_t sub_25C7C24B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159B0, qword_25C7CE280);
    v3 = sub_25C7CD3E4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_25C7BB2FC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_25C7C260C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
    v3 = sub_25C7CD3E4();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C7C51B4(v4, &v13, &qword_27FC15A10, &qword_25C7CE248);
      v5 = v13;
      v6 = v14;
      result = sub_25C7BB2FC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25C7C0668(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_25C7C273C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, __CFString *a8)
{
  v147 = a8;
  v148 = a6;
  v144 = a7;
  v150 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v146 = v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v142 = v131 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = v131 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v131 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A38, &qword_25C7CE278);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v145 = v131 - v25;
  v149 = type metadata accessor for BinomialTestResult(0);
  v26 = *(*(v149 - 8) + 64);
  MEMORY[0x28223BE20](v149);
  v29 = v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v130 = v27;
    v30 = sub_25C7CD3B4();
    v27 = v130;
  }

  else
  {
    v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v30 != *(a2 + 16))
  {
    v34 = 0x800000025C7CEC30;
    sub_25C7B9A14();
    swift_allocError();
    v36 = 0xD000000000000036;
LABEL_24:
    *v35 = v36;
    *(v35 + 8) = v34;
    *(v35 + 16) = 0;
LABEL_25:
    swift_willThrow();
    return v34;
  }

  v139 = v27;
  v140 = v29;
  v141 = v22;
  v31 = a3 == 0x736B6E756863 && a4 == 0xE600000000000000;
  v32 = v31;
  v33 = v150;
  if (!v31)
  {
    if ((sub_25C7CD414() & 1) == 0)
    {
      if (a3 == 1937334628 && a4 == 0xE400000000000000)
      {
LABEL_17:
        if ((sub_25C7CD414() & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_18;
      }

      if ((sub_25C7CD414() & 1) == 0)
      {
        v34 = 0x800000025C7CEC70;
        sub_25C7B9A14();
        swift_allocError();
        v36 = 0xD000000000000024;
        goto LABEL_24;
      }
    }

    if (v32)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_18:
  if (!v33 || [v33 integerValue] <= 0)
  {
    v34 = 0x800000025C7CED10;
    sub_25C7B9A14();
    swift_allocError();
    v36 = 0xD00000000000004CLL;
    goto LABEL_24;
  }

LABEL_20:
  v134 = v20;
  v37 = v143;
  sub_25C7C1448(a1, a2);
  v138 = v38;
  v132 = v37;
  v131[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A00, &qword_25C7CE230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25C7CDE50;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A08, &unk_25C7CE238);
  v41 = swift_initStackObject();
  v143 = xmmword_25C7CDFC0;
  *(v41 + 16) = xmmword_25C7CDFC0;
  *(v41 + 32) = 0x73646C656966;
  *(v41 + 40) = 0xE600000000000000;
  *(v41 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10);
  *(v41 + 48) = &unk_286E69730;
  v42 = sub_25C7C260C(v41);
  swift_setDeallocating();
  sub_25C7C528C(v41 + 32, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 32) = 0x6148657275736E65;
  *(inited + 40) = 0xEF73646C65694673;
  *(inited + 48) = v42;
  v131[2] = v40;
  v43 = swift_initStackObject();
  *(v43 + 16) = v143;
  *(v43 + 32) = 0x646C656966;
  v44 = v43 + 32;
  *(v43 + 72) = MEMORY[0x277D837D0];
  *(v43 + 40) = 0xE500000000000000;
  *(v43 + 48) = 0x6D617473656D6974;
  *(v43 + 56) = 0xE900000000000070;
  v45 = sub_25C7C260C(v43);
  swift_setDeallocating();
  v46 = 1937334628;
  sub_25C7C528C(v44, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000025C7CECA0;
  v137 = inited;
  *(inited + 72) = v45;
  if (a3 == 1937334628 && a4 == 0xE400000000000000)
  {
    v133 = 1937334628;
    v136 = 0xE400000000000000;
  }

  else
  {
    v48 = sub_25C7CD414();
    if ((v48 & 1) == 0)
    {
      v46 = 0x6E75527473616CLL;
    }

    v133 = v46;
    if (v48)
    {
      v49 = 0xE400000000000000;
    }

    else
    {
      v49 = 0xE700000000000000;
    }

    v136 = v49;
  }

  v50 = swift_initStackObject();
  *(v50 + 32) = 0x6C656946656D6974;
  v51 = v50 + 32;
  *(v50 + 16) = v143;
  *(v50 + 72) = MEMORY[0x277D837D0];
  *(v50 + 40) = 0xE900000000000064;
  *(v50 + 48) = 0x6D617473656D6974;
  v131[0] = 0xE900000000000070;
  *(v50 + 56) = 0xE900000000000070;
  v135 = sub_25C7C260C(v50);
  swift_setDeallocating();
  sub_25C7C528C(v51, &qword_27FC15A10, &qword_25C7CE248);
  v52 = swift_initStackObject();
  *(v52 + 16) = v143;
  v53 = swift_initStackObject();
  *(v53 + 16) = v143;
  *(v53 + 32) = 0x74676E654C78616DLL;
  v54 = v53 + 32;
  *(v53 + 72) = MEMORY[0x277D83B88];
  *(v53 + 40) = 0xE900000000000068;
  *(v53 + 48) = 1;
  v55 = sub_25C7C260C(v53);
  swift_setDeallocating();
  sub_25C7C528C(v54, &qword_27FC15A10, &qword_25C7CE248);
  *(v52 + 32) = 0x786966667573;
  *(v52 + 40) = 0xE600000000000000;
  *&v143 = v52;
  *(v52 + 48) = v55;
  v56 = v150;
  if (v150)
  {
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_25C7CE190;
    *(v57 + 32) = 0x6C65694661746164;
    *(v57 + 40) = 0xE900000000000064;
    *(v57 + 48) = 1635017060;
    *(v57 + 56) = 0xE400000000000000;
    v58 = MEMORY[0x277D837D0];
    *(v57 + 72) = MEMORY[0x277D837D0];
    *(v57 + 80) = 0x6C656946656D6974;
    *(v57 + 88) = 0xE900000000000064;
    *(v57 + 96) = 0x6D617473656D6974;
    *(v57 + 104) = v131[0];
    v59 = v56;
    *(v57 + 120) = v58;
    *(v57 + 128) = 0xD000000000000011;
    *(v57 + 136) = 0x800000025C7CE740;
    v60 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    *(v57 + 144) = v56;
    *(v57 + 168) = v60;
    *(v57 + 176) = 0xD000000000000011;
    v61 = v144;
    *(v57 + 184) = 0x800000025C7CECC0;
    *(v57 + 192) = v61;
    *(v57 + 216) = v60;
    *(v57 + 224) = 0x6568746F70794870;
    *(v57 + 264) = v60;
    v62 = v147;
    *(v57 + 232) = 0xEB00000000736973;
    *(v57 + 240) = v62;
    v63 = v61;
    v64 = v62;
    v65 = v59;
    v66 = sub_25C7C260C(v57);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
    swift_deallocClassInstance();
  }

  else
  {
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_25C7CE1A0;
    *(v67 + 32) = 0x6C65694661746164;
    *(v67 + 40) = 0xE900000000000064;
    *(v67 + 48) = 1635017060;
    *(v67 + 56) = 0xE400000000000000;
    v68 = MEMORY[0x277D837D0];
    *(v67 + 72) = MEMORY[0x277D837D0];
    *(v67 + 80) = 0x6C656946656D6974;
    *(v67 + 88) = 0xE900000000000064;
    *(v67 + 96) = 0x6D617473656D6974;
    *(v67 + 104) = v131[0];
    *(v67 + 120) = v68;
    *(v67 + 128) = 0xD000000000000011;
    *(v67 + 136) = 0x800000025C7CECC0;
    v69 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v70 = v144;
    *(v67 + 144) = v144;
    *(v67 + 168) = v69;
    *(v67 + 176) = 0x6568746F70794870;
    *(v67 + 216) = v69;
    v71 = v147;
    *(v67 + 184) = 0xEB00000000736973;
    *(v67 + 192) = v71;
    v72 = v70;
    v73 = v71;
    v66 = sub_25C7C260C(v67);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
  }

  v74 = v136;
  v75 = v137;
  v155[0] = &unk_286E69770;
  v155[1] = v137;
  v76 = v133;
  v155[2] = v133;
  v155[3] = v136;
  v77 = v135;
  v155[4] = v135;
  v156 = v143;
  strcpy(v157, "BinomialTest");
  BYTE5(v157[1]) = 0;
  HIWORD(v157[1]) = -5120;
  v158 = v66;
  v159 = v138;

  v150 = v66;

  v78 = v148;
  v79 = v132;
  runPreprocessingSteps(_:steps:lastRun:)(&v159, v75);
  if (v79)
  {

    swift_getErrorValue();
    v81 = sub_25C7CD444();
    v83 = v82;
    v84 = type metadata accessor for MalformedTestResult(0);
    v154[3] = v84;
    v154[4] = &off_286E69AA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v154);
    *boxed_opaque_existential_0 = 0x656D726F666C614DLL;
    boxed_opaque_existential_0[1] = 0xE900000000000064;
    *(boxed_opaque_existential_0 + 8) = 0;
    v86 = *(v84 + 28);
    v87 = sub_25C7CD1D4();
    (*(*(v87 - 8) + 56))(boxed_opaque_existential_0 + v86, 1, 1, v87);
    v88 = (boxed_opaque_existential_0 + *(v84 + 32));
    *v88 = v81;
    v88[1] = v83;
    MEMORY[0x25F88EF00](v79);
  }

  else
  {
    v80 = v159;
    v147 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v76, v74, v77, v80, v78, &v152, v151);
    v101 = v156;

    objc_autoreleasePoolPop(v147);
    v153[0] = *&v151[0];
    v102 = runPostprocessingSteps(_:steps:lastRun:)(v153, v101);
    v124 = v157[0];
    v125 = v157[1];
    v126 = v158;
    v127 = v153[0];
    v128 = MEMORY[0x25F88EB50](v102);
    sub_25C7C9480(v124, v125, v126, v127, &v152, v151);

    objc_autoreleasePoolPop(v128);
    sub_25C7C519C(v151, v154);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A18, &qword_25C7CE250);
  v89 = v145;
  v90 = v149;
  v91 = swift_dynamicCast();
  v92 = v134;
  v93 = v140;
  if ((v91 & 1) == 0)
  {

    sub_25C7C25B8(v155);

    v34 = 1;
    (*(v139 + 56))(v89, 1, 1, v90);
    sub_25C7C528C(v89, &qword_27FC15A38, &qword_25C7CE278);
    sub_25C7B9A14();
    swift_allocError();
    *v99 = 0xD000000000000027;
    *(v99 + 8) = 0x800000025C7CED60;
    *(v99 + 16) = 1;
    goto LABEL_25;
  }

  (*(v139 + 56))(v89, 0, 1, v90);
  sub_25C7C52EC(v89, v93, type metadata accessor for BinomialTestResult);
  v94 = *(v93 + 17);
  if (v94 != 2)
  {
    if (v94)
    {
      v100 = "ed while running test";
    }

    else
    {
      v100 = "%@\n maxTimestamp2=%@\n";
    }

    if (v100 | 0x8000000000000000) != 0x800000025C7CE490 || (v94)
    {
      v103 = sub_25C7CD414();

      if ((v103 & 1) == 0)
      {
        v122 = *(v93 + 17);
        if (v122 == 2)
        {
          goto LABEL_41;
        }

        sub_25C7C25B8(v155);

        if (v122)
        {
          v123 = "ed while running test";
        }

        else
        {
          v123 = "%@\n maxTimestamp2=%@\n";
        }

        if (v123 | 0x8000000000000000) == 0x800000025C7CE4C0 && (v122)
        {

          v95 = v146;
          v96 = v142;
          v98 = v148;
        }

        else
        {
          v129 = sub_25C7CD414();

          v95 = v146;
          v96 = v142;
          v98 = v148;
          if ((v129 & 1) == 0)
          {
            v147 = 0;
            goto LABEL_55;
          }
        }

        v104 = &smallSampleSize;
LABEL_54:
        v147 = *v104;
LABEL_55:
        v97 = v149;
        goto LABEL_56;
      }

      v95 = v146;
      v96 = v142;
      v98 = v148;
    }

    else
    {

      v95 = v146;
      v96 = v142;
      v98 = v148;
    }

    sub_25C7C25B8(v155);

    v104 = testError;
    goto LABEL_54;
  }

LABEL_41:

  sub_25C7C25B8(v155);

  v147 = 0;
  v95 = v146;
  v96 = v142;
  v98 = v148;
  v97 = v149;
LABEL_56:
  LODWORD(v150) = *(v93 + 16);
  if (v150 == 1)
  {
    sub_25C7C51B4(v93 + v97[12], v141, &qword_27FC15920, &qword_25C7CE220);
    v98 = v93 + v97[7];
  }

  else
  {
    v105 = sub_25C7CD1D4();
    (*(*(v105 - 8) + 56))(v141, 1, 1, v105);
  }

  sub_25C7C51B4(v98, v92, &qword_27FC15920, &qword_25C7CE220);
  v106 = v93 + v97[8];
  if (*(v106 + 8))
  {
    v149 = 0;
  }

  else
  {
    v107 = *v106;
    v149 = sub_25C7CD2A4();
  }

  if (*(v93 + v97[9]) == 2)
  {
    v148 = 0;
  }

  else
  {
    v148 = sub_25C7CD294();
  }

  v108 = *(v93 + v97[10]);
  v144 = *(v93 + v97[11]);
  v145 = v108;
  sub_25C7C51B4(v141, v96, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C51B4(v92, v95, &qword_27FC15920, &qword_25C7CE220);
  v109 = sub_25C7CD1D4();
  v110 = *(v109 - 8);
  v111 = *(v110 + 48);
  v112 = v111(v96, 1, v109);
  v147 = v147;
  v113 = 0;
  if (v112 != 1)
  {
    v113 = sub_25C7CD184();
    (*(v110 + 8))(v96, v109);
  }

  v114 = v146;
  if (v111(v146, 1, v109) == 1)
  {
    v115 = 0;
  }

  else
  {
    v115 = sub_25C7CD184();
    (*(v110 + 8))(v114, v109);
  }

  v116 = v134;
  v117 = objc_allocWithZone(TestResult);
  v119 = v147;
  v118 = v148;
  v120 = v149;
  v121 = [v117 initWithTestRan:v150 testSkippedReason:v147 pValue:v149 rejectNullHypothesis:v148 sampleSize:v145 numSuccesses:v144 minTimestamp:v113 maxTimestamp:v115];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A20, &qword_25C7CE258);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_25C7CE1B0;
  *(v34 + 32) = v121;

  sub_25C7C528C(v116, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v141, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C5354(v140, type metadata accessor for BinomialTestResult);
  return v34;
}

uint64_t sub_25C7C3A20(unint64_t a1, uint64_t a2, uint64_t a3, __CFString *a4, void *a5, uint64_t a6, void *a7)
{
  v168 = a7;
  v169 = a6;
  v173 = a5;
  v174 = a4;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v167 = &v150 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v163 = (&v150 - v16);
  v17 = MEMORY[0x28223BE20](v15);
  v166 = &v150 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v162 = &v150 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v150 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v150 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v150 - v28;
  MEMORY[0x28223BE20](v27);
  v172 = &v150 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159F8, &qword_25C7CE228);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x28223BE20](v31 - 8);
  v34 = &v150 - v33;
  v170 = type metadata accessor for ZTestResult(0);
  v35 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v171 = &v150 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v34;
  if (a1 >> 62)
  {
    v147 = v36;
    v38 = sub_25C7CD3B4();
    v36 = v147;
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v38 != *(a2 + 16))
  {
    v42 = 0x800000025C7CEC30;
    sub_25C7B9A14();
    swift_allocError();
    v44 = 0xD000000000000036;
    goto LABEL_25;
  }

  v158 = v36;
  v159 = v26;
  v161 = v29;
  v39 = v173;
  v40 = a3 == 0x736B6E756863 && v174 == 0xE600000000000000;
  v41 = v40;
  if (v40)
  {
LABEL_18:
    if (v39 && [v39 integerValue] > 0)
    {
      goto LABEL_20;
    }

    v42 = 0x800000025C7CED10;
    sub_25C7B9A14();
    swift_allocError();
    v44 = 0xD00000000000004CLL;
LABEL_25:
    *v43 = v44;
    *(v43 + 8) = v42;
    *(v43 + 16) = 0;
LABEL_26:
    swift_willThrow();
    return v42;
  }

  if ((sub_25C7CD414() & 1) == 0)
  {
    if (a3 == 1937334628 && v174 == 0xE400000000000000)
    {
      goto LABEL_17;
    }

    if ((sub_25C7CD414() & 1) == 0)
    {
      v42 = 0x800000025C7CEC70;
      sub_25C7B9A14();
      swift_allocError();
      v44 = 0xD000000000000024;
      goto LABEL_25;
    }
  }

  if (v41)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (sub_25C7CD414())
  {
    goto LABEL_18;
  }

LABEL_20:
  v154 = v23;
  sub_25C7C1448(a1, a2);
  v157 = v45;
  v152 = v7;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A00, &qword_25C7CE230);
  inited = swift_initStackObject();
  v150 = xmmword_25C7CDE50;
  *(inited + 16) = xmmword_25C7CDE50;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A08, &unk_25C7CE238);
  v48 = swift_initStackObject();
  v164 = xmmword_25C7CDFC0;
  *(v48 + 16) = xmmword_25C7CDFC0;
  *(v48 + 32) = 0x73646C656966;
  *(v48 + 40) = 0xE600000000000000;
  *(v48 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10);
  *(v48 + 48) = &unk_286E697B0;
  v49 = sub_25C7C260C(v48);
  swift_setDeallocating();
  sub_25C7C528C(v48 + 32, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 32) = 0x6148657275736E65;
  *(inited + 40) = 0xEF73646C65694673;
  *(inited + 48) = v49;
  v155 = v47;
  v50 = swift_initStackObject();
  *(v50 + 16) = v164;
  *(v50 + 32) = 0x646C656966;
  v51 = v50 + 32;
  *(v50 + 72) = MEMORY[0x277D837D0];
  *(v50 + 40) = 0xE500000000000000;
  *(v50 + 48) = 0x6D617473656D6974;
  *(v50 + 56) = 0xE900000000000070;
  v52 = sub_25C7C260C(v50);
  swift_setDeallocating();
  sub_25C7C528C(v51, &qword_27FC15A10, &qword_25C7CE248);
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000025C7CECA0;
  v160 = inited;
  *(inited + 72) = v52;
  v153 = 1937334628;
  if (a3 == 1937334628 && v174 == 0xE400000000000000 || (sub_25C7CD414() & 1) != 0)
  {
    v53 = swift_allocObject();
    *(v53 + 32) = 0x6C656946656D6974;
    v54 = v53 + 32;
    *(v53 + 16) = v164;
    *(v53 + 72) = MEMORY[0x277D837D0];
    *(v53 + 40) = 0xE900000000000064;
    *(v53 + 48) = 0x6D617473656D6974;
    *(v53 + 56) = 0xE900000000000070;
    v174 = sub_25C7C260C(v53);
    swift_setDeallocating();
    sub_25C7C528C(v54, &qword_27FC15A10, &qword_25C7CE248);
    swift_deallocClassInstance();
    v156 = 0xE400000000000000;
  }

  else
  {
    v56 = swift_initStackObject();
    *(v56 + 32) = 0x6C656946656D6974;
    v57 = v56 + 32;
    *(v56 + 16) = v164;
    *(v56 + 72) = MEMORY[0x277D837D0];
    *(v56 + 40) = 0xE900000000000064;
    *(v56 + 48) = 0x6D617473656D6974;
    *(v56 + 56) = 0xE900000000000070;
    v174 = sub_25C7C260C(v56);
    swift_setDeallocating();
    sub_25C7C528C(v57, &qword_27FC15A10, &qword_25C7CE248);
    v156 = 0xE700000000000000;
    v153 = 0x6E75527473616CLL;
  }

  v58 = MEMORY[0x277D83B88];
  v59 = v173;
  if (v173)
  {
    v60 = swift_allocObject();
    *(v60 + 16) = v150;
    v61 = swift_initStackObject();
    *(v61 + 32) = 0x74676E654C78616DLL;
    v62 = v61 + 32;
    *(v61 + 16) = v164;
    *(v61 + 72) = v58;
    *(v61 + 40) = 0xE900000000000068;
    *(v61 + 48) = 2;
    v63 = sub_25C7C260C(v61);
    swift_setDeallocating();
    sub_25C7C528C(v62, &qword_27FC15A10, &qword_25C7CE248);
    *(v60 + 32) = 0x786966667573;
    *(v60 + 40) = 0xE600000000000000;
    *(v60 + 48) = v63;
    v151 = 0x800000025C7CE700;
    v64 = swift_initStackObject();
    *(v64 + 16) = v164;
    *(v64 + 32) = 0xD000000000000011;
    *(v64 + 40) = 0x800000025C7CE740;
    v65 = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    *(v64 + 72) = v65;
    *(v64 + 48) = v59;
    v66 = v59;
    v67 = sub_25C7C260C(v64);
    swift_setDeallocating();
    sub_25C7C528C(v64 + 32, &qword_27FC15A10, &qword_25C7CE248);
    v68 = v151;
    *(v60 + 56) = 0xD000000000000010;
    *(v60 + 64) = v68;
    *(v60 + 72) = v67;
    v69 = swift_allocObject();
    *(v69 + 16) = xmmword_25C7CE1A0;
    *(v69 + 32) = 0x6C65694661746164;
    *(v69 + 40) = 0xE900000000000064;
    *(v69 + 48) = 1635017060;
    *(v69 + 56) = 0xE400000000000000;
    v70 = MEMORY[0x277D837D0];
    *(v69 + 72) = MEMORY[0x277D837D0];
    *(v69 + 80) = 0x6C656946656D6974;
    *(v69 + 88) = 0xE900000000000064;
    *(v69 + 96) = 0x6D617473656D6974;
    *(v69 + 104) = 0xE900000000000070;
    *(v69 + 120) = v70;
    *(v69 + 128) = 0xD000000000000011;
    *(v69 + 136) = 0x800000025C7CE740;
    *(v69 + 144) = v66;
    *(v69 + 168) = v65;
    *(v69 + 176) = 0xD000000000000011;
    *(v69 + 216) = v65;
    v71 = v168;
    *(v69 + 184) = 0x800000025C7CECC0;
    *(v69 + 192) = v71;
    v72 = v71;
    v73 = v66;
    v74 = sub_25C7C260C(v69);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
    v75 = v60;
    swift_deallocClassInstance();
  }

  else
  {
    v75 = swift_allocObject();
    *(v75 + 16) = v164;
    v76 = swift_initStackObject();
    *(v76 + 32) = 0x74676E654C78616DLL;
    v77 = v76 + 32;
    *(v76 + 16) = v164;
    *(v76 + 72) = v58;
    *(v76 + 40) = 0xE900000000000068;
    *(v76 + 48) = 2;
    v78 = sub_25C7C260C(v76);
    swift_setDeallocating();
    sub_25C7C528C(v77, &qword_27FC15A10, &qword_25C7CE248);
    *(v75 + 32) = 0x786966667573;
    *(v75 + 40) = 0xE600000000000000;
    *(v75 + 48) = v78;
    v79 = swift_initStackObject();
    *(v79 + 16) = xmmword_25C7CE1C0;
    *(v79 + 32) = 0x6C65694661746164;
    *(v79 + 40) = 0xE900000000000064;
    *(v79 + 48) = 1635017060;
    *(v79 + 56) = 0xE400000000000000;
    v80 = MEMORY[0x277D837D0];
    *(v79 + 72) = MEMORY[0x277D837D0];
    *(v79 + 80) = 0x6C656946656D6974;
    *(v79 + 88) = 0xE900000000000064;
    *(v79 + 96) = 0x6D617473656D6974;
    *(v79 + 104) = 0xE900000000000070;
    *(v79 + 120) = v80;
    *(v79 + 128) = 0xD000000000000011;
    *(v79 + 136) = 0x800000025C7CECC0;
    *(v79 + 168) = sub_25C7C0540(0, &qword_27FC159C0, 0x277CCABB0);
    v81 = v168;
    *(v79 + 144) = v168;
    v82 = v81;
    v74 = sub_25C7C260C(v79);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A10, &qword_25C7CE248);
    swift_arrayDestroy();
  }

  v83 = v165;
  v179[0] = &unk_286E697F0;
  v84 = v160;
  v179[1] = v160;
  v180 = v153;
  v181 = v156;
  v182 = v174;
  v183 = v75;
  v184 = 0x747365545ALL;
  v185 = 0xE500000000000000;
  v186 = v74;
  v187 = v157;

  v168 = v74;

  v85 = v169;
  v86 = v152;
  runPreprocessingSteps(_:steps:lastRun:)(&v187, v84);
  v173 = v75;
  if (v86)
  {

    swift_getErrorValue();
    v92 = sub_25C7CD444();
    v94 = v93;
    v95 = type metadata accessor for MalformedTestResult(0);
    v178[3] = v95;
    v178[4] = &off_286E69AA8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v178);
    *boxed_opaque_existential_0 = 0x656D726F666C614DLL;
    boxed_opaque_existential_0[1] = 0xE900000000000064;
    *(boxed_opaque_existential_0 + 8) = 0;
    v97 = *(v95 + 28);
    v98 = sub_25C7CD1D4();
    (*(*(v98 - 8) + 56))(boxed_opaque_existential_0 + v97, 1, 1, v98);
    v99 = (boxed_opaque_existential_0 + *(v95 + 32));
    *v99 = v92;
    v99[1] = v94;
    MEMORY[0x25F88EF00](v86);
  }

  else
  {
    v87 = v180;
    v88 = v181;
    v89 = v182;
    v90 = v187;
    v91 = MEMORY[0x25F88EB50]();
    sub_25C7BC65C(v87, v88, v89, v90, v85, &v176, v175);
    v109 = v183;

    objc_autoreleasePoolPop(v91);
    v177[0] = *&v175[0];
    v110 = runPostprocessingSteps(_:steps:lastRun:)(v177, v109);
    v141 = v184;
    v142 = v185;
    v143 = v186;
    v144 = v177[0];
    v145 = MEMORY[0x25F88EB50](v110);
    sub_25C7C9480(v141, v142, v143, v144, &v176, v175);

    objc_autoreleasePoolPop(v145);
    sub_25C7C519C(v175, v178);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A18, &qword_25C7CE250);
  v100 = v170;
  v101 = swift_dynamicCast();
  v102 = v171;
  if ((v101 & 1) == 0)
  {

    sub_25C7C25B8(v179);

    v106 = v100;
    v42 = 1;
    (*(v158 + 56))(v83, 1, 1, v106);
    sub_25C7C528C(v83, &qword_27FC159F8, &qword_25C7CE228);
    sub_25C7B9A14();
    swift_allocError();
    *v107 = 0xD000000000000020;
    *(v107 + 8) = 0x800000025C7CECE0;
    *(v107 + 16) = 1;
    goto LABEL_26;
  }

  (*(v158 + 56))(v83, 0, 1, v100);
  sub_25C7C52EC(v83, v102, type metadata accessor for ZTestResult);
  v103 = *(v102 + 17);
  if (v103 == 2)
  {
LABEL_39:

    sub_25C7C25B8(v179);

    v174 = 0;
    v104 = v159;
    v105 = v163;
    goto LABEL_50;
  }

  if (v103)
  {
    v108 = "ed while running test";
  }

  else
  {
    v108 = "%@\n maxTimestamp2=%@\n";
  }

  if ((v108 | 0x8000000000000000) == 0x800000025C7CE490 && (v103 & 1) == 0)
  {

    v104 = v159;
LABEL_49:
    v105 = v163;
    v100 = v170;

    sub_25C7C25B8(v179);

    v174 = @"Exception happened while running test";
    goto LABEL_50;
  }

  v111 = sub_25C7CD414();

  if (v111)
  {
    v104 = v159;
    goto LABEL_49;
  }

  v139 = *(v102 + 17);
  v100 = v170;
  if (v139 == 2)
  {
    goto LABEL_39;
  }

  sub_25C7C25B8(v179);

  if (v139)
  {
    v140 = "ed while running test";
  }

  else
  {
    v140 = "%@\n maxTimestamp2=%@\n";
  }

  if (v140 | 0x8000000000000000) == 0x800000025C7CE4C0 && (v139)
  {

    v104 = v159;
    v105 = v163;
  }

  else
  {
    v146 = sub_25C7CD414();

    v104 = v159;
    v105 = v163;
    if ((v146 & 1) == 0)
    {
      v174 = 0;
      v100 = v170;
      goto LABEL_50;
    }
  }

  v174 = @"Sample size is too small";
  v100 = v170;
LABEL_50:
  LODWORD(v173) = *(v102 + 16);
  if (v173 == 1)
  {
    sub_25C7C51B4(v102 + v100[12], v172, &qword_27FC15920, &qword_25C7CE220);
    sub_25C7C51B4(v102 + v100[13], v161, &qword_27FC15920, &qword_25C7CE220);
    sub_25C7C51B4(v102 + v100[16], v104, &qword_27FC15920, &qword_25C7CE220);
    v112 = v102 + v100[7];
    v113 = v162;
  }

  else
  {
    v114 = sub_25C7CD1D4();
    v115 = *(*(v114 - 8) + 56);
    v115(v172, 1, 1, v114);
    v115(v161, 1, 1, v114);
    v115(v104, 1, 1, v114);
    v113 = v162;
    v112 = v169;
  }

  sub_25C7C51B4(v112, v154, &qword_27FC15920, &qword_25C7CE220);
  v170 = *(v102 + v100[14]);
  if (v170 < 1)
  {
    v168 = 0;
    v169 = 0;
  }

  else
  {
    v116 = *(v102 + v100[11]);
    v168 = *(v102 + v100[10]);
    v169 = v116;
  }

  v117 = v102 + v100[8];
  if (*(v117 + 8))
  {
    v165 = 0;
  }

  else
  {
    v118 = *v117;
    v165 = sub_25C7CD2A4();
  }

  if (*(v102 + v100[9]) == 2)
  {
    *&v164 = 0;
  }

  else
  {
    *&v164 = sub_25C7CD294();
  }

  sub_25C7C51B4(v172, v113, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C51B4(v161, v166, &qword_27FC15920, &qword_25C7CE220);
  v162 = *(v102 + v100[15]);
  sub_25C7C51B4(v104, v105, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C51B4(v154, v167, &qword_27FC15920, &qword_25C7CE220);
  v119 = sub_25C7CD1D4();
  v120 = v113;
  v121 = *(v119 - 8);
  v122 = *(v121 + 48);
  v123 = v122(v120, 1, v119);
  v163 = v174;
  v174 = 0;
  if (v123 != 1)
  {
    v174 = sub_25C7CD184();
    (*(v121 + 8))(v120, v119);
  }

  v124 = v166;
  if (v122(v166, 1, v119) == 1)
  {
    v125 = 0;
  }

  else
  {
    v125 = sub_25C7CD184();
    (*(v121 + 8))(v124, v119);
  }

  if (v122(v105, 1, v119) == 1)
  {
    v126 = 0;
  }

  else
  {
    v127 = sub_25C7CD184();
    v128 = v105;
    v126 = v127;
    (*(v121 + 8))(v128, v119);
  }

  v129 = v167;
  if (v122(v167, 1, v119) == 1)
  {
    v130 = 0;
  }

  else
  {
    v131 = v129;
    v130 = sub_25C7CD184();
    (*(v121 + 8))(v131, v119);
  }

  v132 = objc_allocWithZone(TwoSampleTestResult);
  v149 = v126;
  v148 = v125;
  v133 = v126;
  v134 = v125;
  v135 = v174;
  v136 = v163;
  v137 = v164;
  v138 = v165;
  v173 = [v132 initWithTestRan:v173 testSkippedReason:v163 testStatistic:v165 rejectNullHypothesis:v164 sampleSize1:v168 numSuccesses1:v169 minTimestamp1:v174 maxTimestamp1:v148 sampleSize2:v170 numSuccesses2:v162 minTimestamp2:v149 maxTimestamp2:v130];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A20, &qword_25C7CE258);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_25C7CE1B0;
  *(v42 + 32) = v173;

  sub_25C7C528C(v154, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v159, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v161, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C528C(v172, &qword_27FC15920, &qword_25C7CE220);
  sub_25C7C5354(v171, type metadata accessor for ZTestResult);
  return v42;
}

uint64_t sub_25C7C519C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_25C7C51B4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25C7C521C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15A30, &qword_25C7CE270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25C7C528C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_25C7C52EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25C7C5354(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void runPreprocessingSteps(_:steps:lastRun:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(a2 + 16);
  if (v4)
  {
    for (i = (a2 + 48); ; i += 3)
    {
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 2);

      v11 = MEMORY[0x25F88EB50](v10);
      sub_25C7C54E4(v9, v7, v8, a1, &v12);
      if (v3)
      {
        break;
      }

      v3 = 0;

      objc_autoreleasePoolPop(v11);
      if (!--v4)
      {
        return;
      }
    }

    objc_autoreleasePoolPop(v11);
  }
}

uint64_t sub_25C7C54E4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v10 = a1;
  v11 = a1 == 0x6148657275736E65 && a2 == 0xEF73646C65694673;
  if (v11 || (sub_25C7CD414() & 1) != 0)
  {
    if (*(a3 + 16))
    {
      v12 = sub_25C7BB2FC(0x73646C656966, 0xE600000000000000);
      if (v13)
      {
        sub_25C7B9970(*(a3 + 56) + 32 * v12, v60);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158E0, &qword_25C7CDE10);
        if (swift_dynamicCast())
        {
          v14 = *a4;

          sub_25C7C5F28(v15, v58);
          goto LABEL_10;
        }
      }
    }

    v18 = 0x800000025C7CEFA0;
    sub_25C7B9A14();
    v16 = swift_allocError();
    v20 = 0xD00000000000002BLL;
    goto LABEL_13;
  }

  if ((v10 != 0xD000000000000012 || 0x800000025C7CECA0 != a2) && (sub_25C7CD414() & 1) == 0)
  {
    if (v10 == 0x6C694E746F6ELL && a2 == 0xE600000000000000 || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v25 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v26)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v25, v60);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v27 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v28 & 1) == 0))
            {
              v29 = 0;
              v30 = 0;
              goto LABEL_45;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v27, v60);
            if (swift_dynamicCast())
            {
              v29 = v58;
              v30 = v59;
LABEL_45:
              sub_25C7C66D0(a4, v58, v59, v29, v30);
LABEL_46:
              v16 = v5;
              if (v5)
              {

                goto LABEL_15;
              }
            }
          }
        }
      }

      v18 = 0x800000025C7CEF30;
      sub_25C7B9A14();
      v16 = swift_allocError();
      v20 = 0xD000000000000034;
      goto LABEL_13;
    }

    if (v10 == 0x754E6F5465746164 && a2 == 0xED0000636972656DLL || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v31 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v32)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v31, v60);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v33 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v34 & 1) == 0))
            {
              v35 = 0;
              v36 = 0;
              goto LABEL_61;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v33, v60);
            if (swift_dynamicCast())
            {
              v35 = v58;
              v36 = v59;
LABEL_61:
              sub_25C7C6DF0(a4, v58, v59, v35, v36);
              goto LABEL_46;
            }
          }
        }
      }

      v49 = "DateToNumeric expects arguments: (inputField, outputField?)";
LABEL_78:
      v18 = (v49 - 32) | 0x8000000000000000;
      sub_25C7B9A14();
      v16 = swift_allocError();
      v20 = 0xD00000000000003BLL;
      goto LABEL_13;
    }

    if (v10 == 0x54636972656D756ELL && a2 == 0xED0000657461446FLL || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v37 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v38)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v37, v60);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v39 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v40 & 1) == 0))
            {
              v41 = 0;
              v42 = 0;
              goto LABEL_75;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v39, v60);
            if (swift_dynamicCast())
            {
              v41 = v58;
              v42 = v59;
LABEL_75:
              sub_25C7C778C(a4, v58, v59, v41, v42);
              goto LABEL_46;
            }
          }
        }
      }

      v49 = "NumericToDate expects arguments: (inputField, outputField?)";
      goto LABEL_78;
    }

    if (v10 == 0xD000000000000011 && 0x800000025C7CEE00 == a2 || (sub_25C7CD414() & 1) != 0)
    {
      if (*(a3 + 16))
      {
        v43 = sub_25C7BB2FC(0x6569467475706E69, 0xEA0000000000646CLL);
        if (v44)
        {
          sub_25C7B9970(*(a3 + 56) + 32 * v43, v60);
          if (swift_dynamicCast())
          {
            if (!*(a3 + 16) || (v45 = sub_25C7BB2FC(0x694674757074756FLL, 0xEB00000000646C65), (v46 & 1) == 0))
            {
              v47 = 0;
              v48 = 0;
              goto LABEL_101;
            }

            sub_25C7B9970(*(a3 + 56) + 32 * v45, v60);
            if (swift_dynamicCast())
            {
              v47 = v58;
              v48 = v59;
LABEL_101:
              sub_25C7C7F18(a4, v58, v59, v47, v48);
              goto LABEL_46;
            }
          }
        }
      }

      v18 = 0x800000025C7CEE70;
      sub_25C7B9A14();
      v16 = swift_allocError();
      v20 = 0xD00000000000003FLL;
      goto LABEL_13;
    }

    if ((v10 != 0x73726946706F7264 || a2 != 0xE900000000000074) && (sub_25C7CD414() & 1) == 0)
    {
      sub_25C7CD314();

      v60[0] = 0xD00000000000001CLL;
      v60[1] = 0x800000025C7CEE20;
      MEMORY[0x25F88E8A0](v10, a2);
      sub_25C7B9A14();
      v16 = swift_allocError();
      *v19 = 0xD00000000000001CLL;
      *(v19 + 8) = 0x800000025C7CEE20;
      goto LABEL_14;
    }

    if (!*(a3 + 16) || (v50 = sub_25C7BB2FC(0x73706F72446D756ELL, 0xE800000000000000), (v51 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v50, v60), (swift_dynamicCast() & 1) == 0))
    {
      v18 = 0x800000025C7CEE40;
      sub_25C7B9A14();
      v16 = swift_allocError();
      v20 = 0xD000000000000027;
      goto LABEL_13;
    }

    if ((v58 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      a5 = *a4;
      v10 = *(*a4 + 16);
      if (v10 >= v58)
      {
        v52 = v58;
      }

      else
      {
        v52 = *(*a4 + 16);
      }

      if (v58)
      {
        a3 = v52;
      }

      else
      {
        a3 = 0;
      }

      sub_25C7CD424();
      swift_unknownObjectRetain_n();

      v53 = swift_dynamicCastClass();
      if (!v53)
      {
        swift_unknownObjectRelease();
        v53 = MEMORY[0x277D84F90];
      }

      v54 = *(v53 + 16);

      if (v54 == v10 - a3)
      {
        v55 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        if (v55)
        {
LABEL_98:
          v56 = *a4;
          *a4 = v55;
        }

        v55 = MEMORY[0x277D84F90];
LABEL_97:
        swift_unknownObjectRelease();
        goto LABEL_98;
      }
    }

    swift_unknownObjectRelease();
    sub_25C7C86E0(a5, (a5 + 4), a3, (2 * v10) | 1);
    v55 = v57;
    goto LABEL_97;
  }

  if (!*(a3 + 16) || (v21 = sub_25C7BB2FC(0x646C656966, 0xE500000000000000), (v22 & 1) == 0) || (sub_25C7B9970(*(a3 + 56) + 32 * v21, v60), (swift_dynamicCast() & 1) == 0))
  {
    v18 = 0x800000025C7CEF70;
    sub_25C7B9A14();
    v16 = swift_allocError();
    v20 = 0xD00000000000002DLL;
LABEL_13:
    *v19 = v20;
    *(v19 + 8) = v18;
LABEL_14:
    *(v19 + 16) = 0;
    result = swift_willThrow();
    goto LABEL_15;
  }

  v23 = *a4;

  sub_25C7C60FC(v24, v58, v59);
LABEL_10:
  v16 = v5;

  if (v5)
  {
LABEL_15:
    *a5 = v16;
  }

  return result;
}

uint64_t sub_25C7C5F28(uint64_t result, uint64_t a2)
{
  v18 = *(result + 16);
  if (v18)
  {
    v2 = 0;
    v3 = *(a2 + 16);
    v4 = result + 32;
    v16 = result + 32;
    v17 = (a2 + 40);
    v20 = v3;
    while (1)
    {
      v5 = *(v4 + 8 * v2);

      if (v3)
      {
        break;
      }

LABEL_3:
      ++v2;

      v3 = v20;
      v4 = v16;
      if (v2 == v18)
      {
        return result;
      }
    }

    v6 = v17;
    v7 = v20;
    while (1)
    {
      v9 = *(v6 - 1);
      v8 = *v6;
      v10 = *(v5 + 16);

      if (!v10)
      {
        break;
      }

      v11 = sub_25C7BB2FC(v9, v8);
      if ((v12 & 1) == 0)
      {
        break;
      }

      v13 = v11;

      sub_25C7B9970(*(v5 + 56) + 32 * v13, v19);
      sub_25C7C528C(v19, &qword_27FC158F0, &qword_25C7CDE20);
      v6 += 2;
      if (!--v7)
      {
        goto LABEL_3;
      }
    }

    memset(v19, 0, sizeof(v19));
    sub_25C7C528C(v19, &qword_27FC158F0, &qword_25C7CDE20);
    *&v19[0] = 0;
    *(&v19[0] + 1) = 0xE000000000000000;
    sub_25C7CD314();

    *&v19[0] = 0xD000000000000028;
    *(&v19[0] + 1) = 0x800000025C7CEFD0;
    MEMORY[0x25F88E8A0](v9, v8);

    v14 = v19[0];
    sub_25C7B9A14();
    swift_allocError();
    *v15 = v14;
    *(v15 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25C7C60FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v43 = a3;
  v4 = sub_25C7CD1D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v47 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v54 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v18 = *(v5 + 56);
  v52 = v5 + 56;
  v48 = &v40 - v19;
  v18();
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (a1 + 32);
    v22 = (v5 + 32);
    v45 = v18;
    v46 = (v5 + 48);
    v41 = (v5 + 8);
    v51 = v10;
    v44 = (v5 + 32);
    do
    {
      v50 = v20;
      v24 = *v21;
      if (*(*v21 + 16))
      {
        v25 = *v21;

        v26 = sub_25C7BB2FC(v42, v43);
        if (v27)
        {
          sub_25C7B9970(*(v24 + 56) + 32 * v26, v53);

          goto LABEL_10;
        }
      }

      memset(v53, 0, sizeof(v53));
LABEL_10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
      v28 = swift_dynamicCast();
      v29 = v47;
      v30 = v48;
      if (!v28)
      {
        v33 = v54;
        (v18)(v54, 1, 1, v4);
        sub_25C7C528C(v33, &qword_27FC15920, &qword_25C7CE220);
        *&v53[0] = 0;
        *(&v53[0] + 1) = 0xE000000000000000;
        sub_25C7CD314();
        MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
        MEMORY[0x25F88E8A0](v42, v43);
        MEMORY[0x25F88E8A0](0xD000000000000017, 0x800000025C7CF030);
        MEMORY[0x25F88E8A0](1702125892, 0xE400000000000000);
        v34 = v53[0];
        sub_25C7B9A14();
        swift_allocError();
        *v35 = v34;
        *(v35 + 16) = 1;
        swift_willThrow();
        return sub_25C7C528C(v48, &qword_27FC15920, &qword_25C7CE220);
      }

      v49 = v21;
      v31 = v54;
      (v18)(v54, 0, 1, v4);
      v32 = *v22;
      (*v22)(v51, v31, v4);
      sub_25C7C51B4(v30, v15, &qword_27FC15920, &qword_25C7CE220);
      if ((*v46)(v15, 1, v4) == 1)
      {
        sub_25C7C528C(v30, &qword_27FC15920, &qword_25C7CE220);
        v23 = v15;
      }

      else
      {
        v32(v29, v15, v4);
        sub_25C7BDB50();
        if (sub_25C7CD214())
        {
          *&v53[0] = 0;
          *(&v53[0] + 1) = 0xE000000000000000;
          sub_25C7CD314();

          *&v53[0] = 0x6569662065746144;
          *(&v53[0] + 1) = 0xEB0000000020646CLL;
          MEMORY[0x25F88E8A0](v42, v43);
          MEMORY[0x25F88E8A0](0x20746F6E20736920, 0xEE00646574726F73);
          v36 = v53[0];
          sub_25C7B9A14();
          swift_allocError();
          *v37 = v36;
          *(v37 + 16) = 1;
          swift_willThrow();
          v38 = *v41;
          (*v41)(v29, v4);
          v38(v51, v4);
          return sub_25C7C528C(v48, &qword_27FC15920, &qword_25C7CE220);
        }

        (*v41)(v29, v4);
        v30 = v48;
        v23 = v48;
      }

      sub_25C7C528C(v23, &qword_27FC15920, &qword_25C7CE220);
      v22 = v44;
      v32(v30, v51, v4);
      v18 = v45;
      (v45)(v30, 0, 1, v4);
      v21 = v49 + 1;
      v20 = v50 - 1;
    }

    while (v50 != 1);
  }

  return sub_25C7C528C(v48, &qword_27FC15920, &qword_25C7CE220);
}

void sub_25C7C66D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v93 = *(*a1 + 16);
  if (!v93)
  {
    return;
  }

  v6 = a5;
  v7 = 0;
  while (1)
  {
    v11 = MEMORY[0x25F88EB50]();
    if (v7 >= v5[2])
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      goto LABEL_79;
    }

    v10 = v11;
    v12 = v5[v7 + 4];
    if (*(v12 + 16))
    {
      v13 = v5[v7 + 4];

      v14 = sub_25C7BB2FC(a2, a3);
      if (v15)
      {
        sub_25C7B9970(*(v12 + 56) + 32 * v14, &v104);

        goto LABEL_12;
      }
    }

    v104 = 0u;
    v105 = 0u;
LABEL_12:
    v106[0] = v104;
    v106[1] = v105;
    v16 = a4;
    v17 = v6;
    if (!v6)
    {
      v17 = a3;

      v16 = a2;
    }

    *(&v105 + 1) = MEMORY[0x277D83B88];
    sub_25C7C51B4(v106, &v102, &qword_27FC158F0, &qword_25C7CDE20);
    if (*(&v103 + 1))
    {
      sub_25C7C897C();

      if (swift_dynamicCast())
      {

        v18 = 1;
        goto LABEL_19;
      }
    }

    else
    {

      sub_25C7C528C(&v102, &qword_27FC158F0, &qword_25C7CDE20);
    }

    v18 = 0;
LABEL_19:
    *&v104 = v18;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25C7C86CC(v5);
    }

    if (v7 >= v5[2])
    {
      goto LABEL_75;
    }

    v19 = v5 + 4;
    if (!*(&v105 + 1))
    {
      break;
    }

    v98 = v10;
    v99 = v5;
    sub_25C7C0668(&v104, &v102);
    v20 = v19[v7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v107 = v19[v7];
    v22 = v107;
    v19[v7] = 0x8000000000000000;
    v23 = v16;
    v24 = v17;
    v26 = sub_25C7BB2FC(v16, v17);
    v27 = *(v22 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_76;
    }

    v30 = v25;
    if (*(v22 + 24) >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v22;
        if ((v25 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v50 = sub_25C7CD3C4();
      v31 = v50;
      if (*(v22 + 16))
      {
        v51 = (v50 + 64);
        v52 = (v22 + 64);
        v53 = ((1 << *(v31 + 32)) + 63) >> 6;
        if (v31 != v22 || v51 >= &v52[8 * v53])
        {
          memmove(v51, v52, 8 * v53);
        }

        v54 = 0;
        *(v31 + 16) = *(v22 + 16);
        v55 = 1 << *(v22 + 32);
        if (v55 < 64)
        {
          v56 = ~(-1 << v55);
        }

        else
        {
          v56 = -1;
        }

        v57 = v56 & *(v22 + 64);
        v58 = (v55 + 63) >> 6;
        v82 = v58;
        if (v57)
        {
          do
          {
            v59 = __clz(__rbit64(v57));
            v88 = (v57 - 1) & v57;
LABEL_52:
            v62 = v59 | (v54 << 6);
            v83 = 16 * v62;
            v63 = (*(v22 + 48) + 16 * v62);
            v90 = v63[1];
            v84 = *v63;
            v86 = 32 * v62;
            sub_25C7B9970(*(v22 + 56) + 32 * v62, v101);
            v64 = (*(v31 + 48) + v83);
            *v64 = v84;
            v64[1] = v90;
            sub_25C7C0668(v101, (*(v31 + 56) + v86));

            v58 = v82;
            v57 = v88;
          }

          while (v88);
        }

        v60 = v54;
        while (1)
        {
          v54 = v60 + 1;
          if (__OFADD__(v60, 1))
          {
            goto LABEL_78;
          }

          if (v54 >= v58)
          {
            break;
          }

          v61 = *(v22 + 64 + 8 * v54);
          ++v60;
          if (v61)
          {
            v59 = __clz(__rbit64(v61));
            v88 = (v61 - 1) & v61;
            goto LABEL_52;
          }
        }
      }

      if ((v30 & 1) == 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_25C7C0178(v29, isUniquelyReferenced_nonNull_native);
      v31 = v107;
      v32 = sub_25C7BB2FC(v23, v24);
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_80;
      }

      v26 = v32;
      if ((v30 & 1) == 0)
      {
LABEL_34:
        *(v31 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v46 = (*(v31 + 48) + 16 * v26);
        *v46 = v23;
        v46[1] = v24;
        sub_25C7C0668(&v102, (*(v31 + 56) + 32 * v26));
        v47 = *(v31 + 16);
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_77;
        }

        *(v31 + 16) = v49;
        goto LABEL_4;
      }
    }

LABEL_3:
    v8 = (*(v31 + 56) + 32 * v26);
    __swift_destroy_boxed_opaque_existential_0(v8);
    sub_25C7C0668(&v102, v8);

LABEL_4:
    v9 = v19[v7];
    v19[v7] = v31;

    v6 = a5;
    v10 = v98;
    v5 = v99;
LABEL_5:
    ++v7;
    sub_25C7C528C(v106, &qword_27FC158F0, &qword_25C7CDE20);
    *a1 = v5;
    objc_autoreleasePoolPop(v10);
    if (v7 == v93)
    {
      return;
    }
  }

  sub_25C7C528C(&v104, &qword_27FC158F0, &qword_25C7CDE20);
  v34 = v16;
  v35 = v19[v7];
  v36 = sub_25C7BB2FC(v34, v17);
  if ((v37 & 1) == 0)
  {
    v102 = 0u;
    v103 = 0u;
    goto LABEL_37;
  }

  v38 = v36;
  v100 = v5;
  v39 = v10;
  v40 = v19[v7];
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v42 = v19[v7];
  v19[v7] = 0x8000000000000000;
  if (v41)
  {
    v43 = v42;
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v65 = sub_25C7CD3C4();
  v43 = v65;
  if (!*(v42 + 16))
  {
LABEL_72:

    v6 = a5;
LABEL_31:
    v44 = *(*(v43 + 48) + 16 * v38 + 8);

    sub_25C7C0668((*(v43 + 56) + 32 * v38), &v102);
    sub_25C7C87CC(v38, v43);
    v45 = v19[v7];
    v19[v7] = v43;

    v10 = v39;
    v5 = v100;
LABEL_37:

    sub_25C7C528C(&v102, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v66 = (v65 + 64);
  v67 = (v42 + 64);
  v68 = ((1 << *(v43 + 32)) + 63) >> 6;
  if (v43 != v42 || v66 >= &v67[8 * v68])
  {
    memmove(v66, v67, 8 * v68);
  }

  v69 = 0;
  *(v43 + 16) = *(v42 + 16);
  v70 = 1 << *(v42 + 32);
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  else
  {
    v71 = -1;
  }

  v72 = v71 & *(v42 + 64);
  v73 = (v70 + 63) >> 6;
  v85 = v73;
  if (v72)
  {
    do
    {
      v74 = __clz(__rbit64(v72));
      v91 = (v72 - 1) & v72;
LABEL_70:
      v77 = v74 | (v69 << 6);
      v87 = 16 * v77;
      v78 = (*(v42 + 48) + 16 * v77);
      v79 = v78[1];
      v89 = *v78;
      v80 = 32 * v77;
      sub_25C7B9970(*(v42 + 56) + 32 * v77, &v102);
      v81 = (*(v43 + 48) + v87);
      *v81 = v89;
      v81[1] = v79;
      sub_25C7C0668(&v102, (*(v43 + 56) + v80));

      v73 = v85;
      v72 = v91;
    }

    while (v91);
  }

  v75 = v69;
  while (1)
  {
    v69 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v69 >= v73)
    {
      goto LABEL_72;
    }

    v76 = *(v42 + 64 + 8 * v69);
    ++v75;
    if (v76)
    {
      v74 = __clz(__rbit64(v76));
      v91 = (v76 - 1) & v76;
      goto LABEL_70;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C6DF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v116 = a4;
  v117 = a2;
  v118 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15920, &qword_25C7CE220);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v100 - v9;
  v11 = sub_25C7CD1D4();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v16 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v114 = *(*a1 + 16);
  v115 = a1;
  if (!v114)
  {
    return;
  }

  v18 = 0;
  v19 = (v14 + 56);
  v113 = (v14 + 32);
  v110 = (v14 + 8);
  v107 = v10;
  v109 = v11;
  v108 = a5;
  v112 = &v100 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = (v14 + 56);
  while (1)
  {
    v23 = MEMORY[0x25F88EB50](v13);
    if (v18 >= v17[2])
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v22 = v23;
    v24 = v17[v18 + 4];
    if (*(v24 + 16))
    {
      v25 = v17[v18 + 4];

      v26 = sub_25C7BB2FC(v117, v118);
      if (v27)
      {
        sub_25C7B9970(*(v24 + 56) + 32 * v26, &v123);

        goto LABEL_12;
      }
    }

    v123 = 0u;
    v124 = 0u;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    v28 = swift_dynamicCast();
    v29 = *v19;
    if (!v28)
    {
      v29(v10, 1, 1, v11);
      sub_25C7C528C(v10, &qword_27FC15920, &qword_25C7CE220);
      *&v123 = 0;
      *(&v123 + 1) = 0xE000000000000000;
      sub_25C7CD314();
      MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
      MEMORY[0x25F88E8A0](v117, v118);
      MEMORY[0x25F88E8A0](0xD00000000000001ALL, 0x800000025C7CF050);
      MEMORY[0x25F88E8A0](1702125892, 0xE400000000000000);
      v98 = v123;
      sub_25C7B9A14();
      swift_allocError();
      *v99 = v98;
      *(v99 + 16) = 1;
      swift_willThrow();
      objc_autoreleasePoolPop(v22);
      return;
    }

    v29(v10, 0, 1, v11);
    (*v113)(v16, v10, v11);
    v30 = v116;
    v31 = a5;
    if (!a5)
    {

      v30 = v117;
    }

    v120 = v31;
    *(&v124 + 1) = MEMORY[0x277D839F8];

    sub_25C7CD174();
    *&v123 = v32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_25C7C86CC(v17);
    }

    if (v18 >= v17[2])
    {
      goto LABEL_71;
    }

    v33 = v17 + 4;
    if (!*(&v124 + 1))
    {
      break;
    }

    v119 = v22;
    sub_25C7C0668(&v123, v122);
    v34 = v33[v18];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v33[v18];
    v36 = v125;
    v33[v18] = 0x8000000000000000;
    v38 = sub_25C7BB2FC(v30, v120);
    v39 = *(v36 + 16);
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_72;
    }

    v42 = v37;
    if (*(v36 + 24) < v41)
    {
      sub_25C7C0178(v41, isUniquelyReferenced_nonNull_native);
      v43 = v125;
      v44 = sub_25C7BB2FC(v30, v120);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_76;
      }

      v38 = v44;
      goto LABEL_29;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v61 = sub_25C7CD3C4();
      v43 = v61;
      if (!*(v36 + 16))
      {
LABEL_50:

        goto LABEL_29;
      }

      v62 = (v61 + 64);
      v63 = (v36 + 64);
      v64 = ((1 << *(v43 + 32)) + 63) >> 6;
      v100 = v36 + 64;
      if (v43 != v36 || v62 >= &v63[8 * v64])
      {
        memmove(v62, v63, 8 * v64);
      }

      v65 = 0;
      *(v43 + 16) = *(v36 + 16);
      v66 = 1 << *(v36 + 32);
      if (v66 < 64)
      {
        v67 = ~(-1 << v66);
      }

      else
      {
        v67 = -1;
      }

      v68 = v67 & *(v36 + 64);
      v69 = (v66 + 63) >> 6;
      v101 = v69;
      if (v68)
      {
        do
        {
          v70 = __clz(__rbit64(v68));
          v105 = (v68 - 1) & v68;
LABEL_48:
          v73 = v70 | (v65 << 6);
          v102 = 16 * v73;
          v74 = *(v36 + 56);
          v75 = (*(v36 + 48) + 16 * v73);
          v77 = *v75;
          v76 = v75[1];
          v103 = v77;
          v106 = v76;
          v104 = 32 * v73;
          sub_25C7B9970(v74 + 32 * v73, v121);
          v78 = (*(v43 + 48) + v102);
          v79 = v106;
          *v78 = v103;
          v78[1] = v79;
          sub_25C7C0668(v121, (*(v43 + 56) + v104));

          v69 = v101;
          v68 = v105;
        }

        while (v105);
      }

      v71 = v65;
      while (1)
      {
        v65 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v65 >= v69)
        {
          goto LABEL_50;
        }

        v72 = *(v100 + 8 * v65);
        ++v71;
        if (v72)
        {
          v70 = __clz(__rbit64(v72));
          v105 = (v72 - 1) & v72;
          goto LABEL_48;
        }
      }

LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    v43 = v36;
LABEL_29:
    v11 = v109;
    if (v42)
    {
      v20 = (*(v43 + 56) + 32 * v38);
      __swift_destroy_boxed_opaque_existential_0(v20);
      sub_25C7C0668(v122, v20);
    }

    else
    {
      *(v43 + 8 * (v38 >> 6) + 64) |= 1 << v38;
      v56 = (*(v43 + 48) + 16 * v38);
      v57 = v120;
      *v56 = v30;
      v56[1] = v57;
      sub_25C7C0668(v122, (*(v43 + 56) + 32 * v38));
      v58 = *(v43 + 16);
      v59 = __OFADD__(v58, 1);
      v60 = v58 + 1;
      if (v59)
      {
        goto LABEL_73;
      }

      *(v43 + 16) = v60;
    }

    v21 = v33[v18];
    v33[v18] = v43;

    a5 = v108;
    v22 = v119;
    v10 = v107;
LABEL_5:
    v16 = v112;
    v19 = v111;
    ++v18;
    (*v110)(v112, v11);
    *v115 = v17;
    objc_autoreleasePoolPop(v22);
    if (v18 == v114)
    {
      return;
    }
  }

  sub_25C7C528C(&v123, &qword_27FC158F0, &qword_25C7CDE20);
  v46 = v33[v18];
  v47 = sub_25C7BB2FC(v30, v120);
  if ((v48 & 1) == 0)
  {
    memset(v122, 0, sizeof(v122));
    goto LABEL_33;
  }

  v49 = v47;
  v50 = v33[v18];
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v52 = v33[v18];
  v33[v18] = 0x8000000000000000;
  if (v51)
  {
    v53 = v52;
    goto LABEL_26;
  }

  v119 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v80 = sub_25C7CD3C4();
  v53 = v80;
  if (!*(v52 + 16))
  {
LABEL_67:

    a5 = v108;
    v22 = v119;
    v10 = v107;
LABEL_26:
    v54 = *(*(v53 + 48) + 16 * v49 + 8);

    sub_25C7C0668((*(v53 + 56) + 32 * v49), v122);
    sub_25C7C87CC(v49, v53);
    v55 = v33[v18];
    v33[v18] = v53;

    v11 = v109;
LABEL_33:

    sub_25C7C528C(v122, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v81 = (v80 + 64);
  v82 = (v52 + 64);
  v83 = ((1 << *(v53 + 32)) + 63) >> 6;
  v102 = v52 + 64;
  if (v53 != v52 || v81 >= &v82[8 * v83])
  {
    memmove(v81, v82, 8 * v83);
  }

  v84 = 0;
  *(v53 + 16) = *(v52 + 16);
  v85 = 1 << *(v52 + 32);
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  else
  {
    v86 = -1;
  }

  v87 = v86 & *(v52 + 64);
  v88 = (v85 + 63) >> 6;
  v103 = v88;
  if (v87)
  {
    do
    {
      v89 = __clz(__rbit64(v87));
      v104 = (v87 - 1) & v87;
LABEL_65:
      v92 = v89 | (v84 << 6);
      v105 = 16 * v92;
      v93 = *(v52 + 56);
      v94 = (*(v52 + 48) + 16 * v92);
      v95 = v94[1];
      v106 = *v94;
      v96 = 32 * v92;
      sub_25C7B9970(v93 + 32 * v92, v122);
      v97 = (*(v53 + 48) + v105);
      *v97 = v106;
      v97[1] = v95;
      sub_25C7C0668(v122, (*(v53 + 56) + v96));

      v88 = v103;
      v87 = v104;
    }

    while (v104);
  }

  v90 = v84;
  while (1)
  {
    v84 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v84 >= v88)
    {
      goto LABEL_67;
    }

    v91 = *(v102 + 8 * v84);
    ++v90;
    if (v91)
    {
      v89 = __clz(__rbit64(v91));
      v104 = (v91 - 1) & v91;
      goto LABEL_65;
    }
  }

LABEL_75:
  __break(1u);
LABEL_76:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v95 = *(*a1 + 16);
  if (!v95)
  {
    return;
  }

  v6 = a5;
  v7 = 0;
  while (1)
  {
    v11 = MEMORY[0x25F88EB50]();
    if (v7 >= v5[2])
    {
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v10 = v11;
    v12 = v5[v7 + 4];
    if (*(v12 + 16))
    {
      v13 = v5[v7 + 4];

      v14 = sub_25C7BB2FC(a2, a3);
      if (v15)
      {
        sub_25C7B9970(*(v12 + 56) + 32 * v14, &v105);

        goto LABEL_12;
      }
    }

    v105 = 0u;
    v106 = 0u;
LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    if (!swift_dynamicCast())
    {
      *&v105 = 0;
      *(&v105 + 1) = 0xE000000000000000;
      sub_25C7CD314();
      MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
      MEMORY[0x25F88E8A0](a2, a3);
      MEMORY[0x25F88E8A0](0xD00000000000001ALL, 0x800000025C7CF050);
      MEMORY[0x25F88E8A0](0x656C62756F44, 0xE600000000000000);
      v81 = v105;
      sub_25C7B9A14();
      swift_allocError();
      *v82 = v81;
      *(v82 + 16) = 1;
      swift_willThrow();
      objc_autoreleasePoolPop(v10);
      return;
    }

    if (v6)
    {
      v16 = a4;
      v17 = v6;
    }

    else
    {
      v17 = a3;

      v16 = a2;
    }

    *(&v106 + 1) = sub_25C7CD1D4();
    __swift_allocate_boxed_opaque_existential_0(&v105);

    sub_25C7CD164();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v5 = sub_25C7C86CC(v5);
    }

    if (v7 >= v5[2])
    {
      goto LABEL_73;
    }

    v18 = v5 + 4;
    if (!*(&v106 + 1))
    {
      break;
    }

    v99 = v5;
    v100 = v10;
    sub_25C7C0668(&v105, v104);
    v19 = v18[v7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = v18[v7];
    v21 = v103;
    v18[v7] = 0x8000000000000000;
    v22 = v16;
    v23 = v16;
    v24 = v17;
    v26 = sub_25C7BB2FC(v23, v17);
    v27 = *(v21 + 16);
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_74;
    }

    v30 = v25;
    if (*(v21 + 24) >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v31 = v21;
        if ((v25 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_3;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
      v49 = sub_25C7CD3C4();
      v31 = v49;
      if (*(v21 + 16))
      {
        v50 = (v49 + 64);
        v51 = (v21 + 64);
        v52 = ((1 << *(v31 + 32)) + 63) >> 6;
        if (v31 != v21 || v50 >= &v51[8 * v52])
        {
          memmove(v50, v51, 8 * v52);
        }

        v53 = 0;
        *(v31 + 16) = *(v21 + 16);
        v54 = 1 << *(v21 + 32);
        if (v54 < 64)
        {
          v55 = ~(-1 << v54);
        }

        else
        {
          v55 = -1;
        }

        v56 = v55 & *(v21 + 64);
        v57 = (v54 + 63) >> 6;
        v83 = v57;
        if (v56)
        {
          do
          {
            v58 = __clz(__rbit64(v56));
            v89 = (v56 - 1) & v56;
LABEL_49:
            v61 = v58 | (v53 << 6);
            v84 = 16 * v61;
            v62 = (*(v21 + 48) + 16 * v61);
            v91 = v62[1];
            v85 = *v62;
            v87 = 32 * v61;
            sub_25C7B9970(*(v21 + 56) + 32 * v61, v102);
            v63 = (*(v31 + 48) + v84);
            *v63 = v85;
            v63[1] = v91;
            sub_25C7C0668(v102, (*(v31 + 56) + v87));

            v57 = v83;
            v56 = v89;
          }

          while (v89);
        }

        v59 = v53;
        while (1)
        {
          v53 = v59 + 1;
          if (__OFADD__(v59, 1))
          {
            goto LABEL_76;
          }

          if (v53 >= v57)
          {
            break;
          }

          v60 = *(v21 + 64 + 8 * v53);
          ++v59;
          if (v60)
          {
            v58 = __clz(__rbit64(v60));
            v89 = (v60 - 1) & v60;
            goto LABEL_49;
          }
        }
      }

      if ((v30 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      sub_25C7C0178(v29, isUniquelyReferenced_nonNull_native);
      v31 = v103;
      v32 = sub_25C7BB2FC(v22, v24);
      if ((v30 & 1) != (v33 & 1))
      {
        goto LABEL_78;
      }

      v26 = v32;
      if ((v30 & 1) == 0)
      {
LABEL_31:
        *(v31 + 8 * (v26 >> 6) + 64) |= 1 << v26;
        v45 = (*(v31 + 48) + 16 * v26);
        *v45 = v22;
        v45[1] = v24;
        sub_25C7C0668(v104, (*(v31 + 56) + 32 * v26));
        v46 = *(v31 + 16);
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_75;
        }

        *(v31 + 16) = v48;
        goto LABEL_4;
      }
    }

LABEL_3:
    v8 = (*(v31 + 56) + 32 * v26);
    __swift_destroy_boxed_opaque_existential_0(v8);
    sub_25C7C0668(v104, v8);

LABEL_4:
    v9 = v18[v7];
    v18[v7] = v31;

    v5 = v99;
    v10 = v100;
    v6 = a5;
LABEL_5:
    ++v7;
    *a1 = v5;
    objc_autoreleasePoolPop(v10);
    if (v7 == v95)
    {
      return;
    }
  }

  sub_25C7C528C(&v105, &qword_27FC158F0, &qword_25C7CDE20);
  v34 = v17;
  v35 = v18[v7];
  v36 = sub_25C7BB2FC(v16, v34);
  if ((v37 & 1) == 0)
  {
    memset(v104, 0, sizeof(v104));
    goto LABEL_34;
  }

  v38 = v36;
  v39 = v18[v7];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v41 = v18[v7];
  v18[v7] = 0x8000000000000000;
  if (v40)
  {
    v42 = v41;
    goto LABEL_28;
  }

  v101 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v64 = sub_25C7CD3C4();
  v42 = v64;
  if (!*(v41 + 16))
  {
LABEL_69:

    v10 = v101;
    v6 = a5;
LABEL_28:
    v43 = *(*(v42 + 48) + 16 * v38 + 8);

    sub_25C7C0668((*(v42 + 56) + 32 * v38), v104);
    sub_25C7C87CC(v38, v42);
    v44 = v18[v7];
    v18[v7] = v42;

LABEL_34:

    sub_25C7C528C(v104, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v65 = (v64 + 64);
  v66 = (v41 + 64);
  v67 = ((1 << *(v42 + 32)) + 63) >> 6;
  if (v42 != v41 || v65 >= &v66[8 * v67])
  {
    memmove(v65, v66, 8 * v67);
  }

  v68 = 0;
  *(v42 + 16) = *(v41 + 16);
  v69 = 1 << *(v41 + 32);
  if (v69 < 64)
  {
    v70 = ~(-1 << v69);
  }

  else
  {
    v70 = -1;
  }

  v71 = v70 & *(v41 + 64);
  v72 = (v69 + 63) >> 6;
  v86 = v72;
  if (v71)
  {
    do
    {
      v73 = __clz(__rbit64(v71));
      v88 = (v71 - 1) & v71;
LABEL_67:
      v76 = v73 | (v68 << 6);
      v90 = 16 * v76;
      v77 = (*(v41 + 48) + 16 * v76);
      v78 = v77[1];
      v92 = *v77;
      v79 = 32 * v76;
      sub_25C7B9970(*(v41 + 56) + 32 * v76, v104);
      v80 = (*(v42 + 48) + v90);
      *v80 = v92;
      v80[1] = v78;
      sub_25C7C0668(v104, (*(v42 + 56) + v79));

      v72 = v86;
      v71 = v88;
    }

    while (v88);
  }

  v74 = v68;
  while (1)
  {
    v68 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v68 >= v72)
    {
      goto LABEL_69;
    }

    v75 = *(v41 + 64 + 8 * v68);
    ++v74;
    if (v75)
    {
      v73 = __clz(__rbit64(v75));
      v88 = (v75 - 1) & v75;
      goto LABEL_67;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C7F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  if (!v6)
  {
    return;
  }

  v7 = a5;
  v8 = a3;
  v9 = a2;
  v10 = 0;
  v11 = 0.0;
  v12 = 1;
  v101 = *(*a1 + 16);
  while (1)
  {
    v15 = MEMORY[0x25F88EB50]();
    if (v10 >= v5[2])
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v16 = v15;
    v17 = v5[v10 + 4];
    if (*(v17 + 16))
    {
      v18 = v5[v10 + 4];

      v19 = sub_25C7BB2FC(v9, v8);
      if (v20)
      {
        sub_25C7B9970(*(v17 + 56) + 32 * v19, &v111);

        goto LABEL_13;
      }
    }

    v111 = 0u;
    v112 = 0u;
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158F0, &qword_25C7CDE20);
    if (!swift_dynamicCast())
    {
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_25C7CD314();
      MEMORY[0x25F88E8A0](0xD000000000000027, 0x800000025C7CF000);
      MEMORY[0x25F88E8A0](v9, v8);
      MEMORY[0x25F88E8A0](0xD000000000000017, 0x800000025C7CF030);
      MEMORY[0x25F88E8A0](0x656C62756F44, 0xE600000000000000);
      v87 = v111;
      sub_25C7B9A14();
      swift_allocError();
      *v88 = v87;
      *(v88 + 16) = 1;
      swift_willThrow();
      objc_autoreleasePoolPop(v16);
      return;
    }

    v21 = *v110;
    if ((v12 & 1) == 0)
    {
      break;
    }

LABEL_6:
    ++v10;
    objc_autoreleasePoolPop(v16);
    v12 = 0;
    v11 = v21;
    if (v10 == v6)
    {
      return;
    }
  }

  v22 = a4;
  v23 = v7;
  if (!v7)
  {

    v22 = v9;
    v23 = v8;
  }

  *(&v112 + 1) = MEMORY[0x277D839F8];
  *&v111 = v21 - v11;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_25C7C86CC(v5);
  }

  if (v10 >= v5[2])
  {
    goto LABEL_74;
  }

  v24 = v5 + 4;
  if (*(&v112 + 1))
  {
    sub_25C7C0668(&v111, v110);
    v25 = v24[v10];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v22;
    v113 = v24[v10];
    v28 = v113;
    v105 = v23;
    v107 = v5 + 4;
    v24[v10] = 0x8000000000000000;
    v29 = v27;
    v31 = sub_25C7BB2FC(v27, v23);
    v32 = *(v28 + 16);
    v33 = (v30 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      goto LABEL_75;
    }

    v35 = v30;
    if (*(v28 + 24) < v34)
    {
      sub_25C7C0178(v34, isUniquelyReferenced_nonNull_native);
      v36 = v113;
      v37 = sub_25C7BB2FC(v29, v105);
      if ((v35 & 1) != (v38 & 1))
      {
        goto LABEL_79;
      }

      v31 = v37;
      v8 = a3;
      if ((v35 & 1) == 0)
      {
LABEL_32:
        *(v36 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v52 = (*(v36 + 48) + 16 * v31);
        *v52 = v29;
        v52[1] = v105;
        sub_25C7C0668(v110, (*(v36 + 56) + 32 * v31));
        v53 = *(v36 + 16);
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_76;
        }

        *(v36 + 16) = v55;
LABEL_4:
        v14 = v107[v10];
        v107[v10] = v36;

        v9 = a2;
LABEL_5:
        v6 = v101;
        v7 = a5;
        *a1 = v5;
        goto LABEL_6;
      }

LABEL_3:
      v13 = (*(v36 + 56) + 32 * v31);
      __swift_destroy_boxed_opaque_existential_0(v13);
      sub_25C7C0668(v110, v13);

      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v36 = v28;
      v8 = a3;
      if ((v30 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
    v56 = sub_25C7CD3C4();
    v36 = v56;
    if (!*(v28 + 16))
    {
LABEL_52:

      v8 = a3;
      if ((v35 & 1) == 0)
      {
        goto LABEL_32;
      }

      goto LABEL_3;
    }

    v57 = (v56 + 64);
    v58 = (v28 + 64);
    v59 = ((1 << *(v36 + 32)) + 63) >> 6;
    if (v36 != v28 || v57 >= &v58[8 * v59])
    {
      memmove(v57, v58, 8 * v59);
    }

    v60 = 0;
    *(v36 + 16) = *(v28 + 16);
    v61 = 1 << *(v28 + 32);
    if (v61 < 64)
    {
      v62 = ~(-1 << v61);
    }

    else
    {
      v62 = -1;
    }

    v63 = v62 & *(v28 + 64);
    v64 = (v61 + 63) >> 6;
    v89 = v64;
    if (v63)
    {
      do
      {
        v65 = __clz(__rbit64(v63));
        v95 = (v63 - 1) & v63;
LABEL_50:
        v68 = v65 | (v60 << 6);
        v90 = 16 * v68;
        v69 = (*(v28 + 48) + 16 * v68);
        v97 = v69[1];
        v91 = *v69;
        v93 = 32 * v68;
        sub_25C7B9970(*(v28 + 56) + 32 * v68, v109);
        v70 = (*(v36 + 48) + v90);
        *v70 = v91;
        v70[1] = v97;
        sub_25C7C0668(v109, (*(v36 + 56) + v93));

        v64 = v89;
        v63 = v95;
      }

      while (v95);
    }

    v66 = v60;
    while (1)
    {
      v60 = v66 + 1;
      if (__OFADD__(v66, 1))
      {
        break;
      }

      if (v60 >= v64)
      {
        goto LABEL_52;
      }

      v67 = *(v28 + 64 + 8 * v60);
      ++v66;
      if (v67)
      {
        v65 = __clz(__rbit64(v67));
        v95 = (v67 - 1) & v67;
        goto LABEL_50;
      }
    }

LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  sub_25C7C528C(&v111, &qword_27FC158F0, &qword_25C7CDE20);
  v39 = v23;
  v40 = v24[v10];
  v41 = v22;
  v42 = v5 + 4;
  v43 = sub_25C7BB2FC(v41, v39);
  if ((v44 & 1) == 0)
  {
    memset(v110, 0, sizeof(v110));
    goto LABEL_35;
  }

  v45 = v43;
  v46 = v42[v10];
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = v42[v10];
  v108 = v5 + 4;
  v42[v10] = 0x8000000000000000;
  if (v47)
  {
    v49 = v48;
    goto LABEL_29;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC159C8, &qword_25C7CE188);
  v71 = sub_25C7CD3C4();
  v49 = v71;
  if (!*(v48 + 16))
  {
LABEL_70:

LABEL_29:
    v50 = *(*(v49 + 48) + 16 * v45 + 8);

    sub_25C7C0668((*(v49 + 56) + 32 * v45), v110);
    sub_25C7C87CC(v45, v49);
    v51 = v108[v10];
    v108[v10] = v49;

    v9 = a2;
LABEL_35:

    sub_25C7C528C(v110, &qword_27FC158F0, &qword_25C7CDE20);
    goto LABEL_5;
  }

  v72 = (v71 + 64);
  v73 = (v48 + 64);
  v74 = ((1 << *(v49 + 32)) + 63) >> 6;
  if (v49 != v48 || v72 >= &v73[8 * v74])
  {
    memmove(v72, v73, 8 * v74);
  }

  v75 = 0;
  *(v49 + 16) = *(v48 + 16);
  v76 = 1 << *(v48 + 32);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v48 + 64);
  v79 = (v76 + 63) >> 6;
  v92 = v79;
  if (v78)
  {
    do
    {
      v80 = __clz(__rbit64(v78));
      v106 = (v78 - 1) & v78;
LABEL_68:
      v83 = v80 | (v75 << 6);
      v94 = 16 * v83;
      v84 = (*(v48 + 48) + 16 * v83);
      v85 = v84[1];
      v96 = *v84;
      v98 = 32 * v83;
      sub_25C7B9970(*(v48 + 56) + 32 * v83, v110);
      v86 = (*(v49 + 48) + v94);
      *v86 = v96;
      v86[1] = v85;
      sub_25C7C0668(v110, (*(v49 + 56) + v98));

      v8 = a3;
      v79 = v92;
      v78 = v106;
    }

    while (v106);
  }

  v81 = v75;
  while (1)
  {
    v75 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      break;
    }

    if (v75 >= v79)
    {
      goto LABEL_70;
    }

    v82 = *(v48 + 64 + 8 * v75);
    ++v81;
    if (v82)
    {
      v80 = __clz(__rbit64(v82));
      v106 = (v82 - 1) & v82;
      goto LABEL_68;
    }
  }

LABEL_78:
  __break(1u);
LABEL_79:
  sub_25C7CD434();
  __break(1u);
}

void sub_25C7C86E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC15908, &qword_25C7CDE38);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_25C7C87CC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C7CD304() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_25C7CD4A4();

      sub_25C7CD244();
      v14 = sub_25C7CD4B4();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_25C7C897C()
{
  result = qword_27FC15A40;
  if (!qword_27FC15A40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FC15A40);
  }

  return result;
}

long double sub_25C7C89C8(double a1)
{
  if (a1 <= 3.0)
  {

    return sub_25C7C8A6C(a1);
  }

  else
  {
    v2 = a1 + -1.0;
    v3 = v2 * log(a1 + -1.0) - v2;
    return v3 + 0.572364943 + log(v2 * (v2 * 4.0 * (v2 + v2 + 1.0) + 1.0) + 0.0333333333) * 0.166666667;
  }
}

long double sub_25C7C8A6C(double a1)
{
  v1 = vdupq_lane_s64(*&a1, 0);
  v2 = vdivq_f64(unk_286E696B0, vaddq_f64(v1, xmmword_25C7CE2C0));
  v3 = *&qword_286E696A8 + 0.0 + v2.f64[0] + v2.f64[1];
  v4 = vdivq_f64(unk_286E696C0, vaddq_f64(v1, xmmword_25C7CE2D0));
  v5 = vdivq_f64(unk_286E696D0, vaddq_f64(v1, xmmword_25C7CE2E0));
  v6 = v3 + v4.f64[0] + v4.f64[1] + v5.f64[0] + v5.f64[1];
  v7 = (a1 + 0.5) * log(a1 + 5.5) - (a1 + 5.5) + 0.918938533;
  return v7 + log(v6 / a1);
}

uint64_t sub_25C7C8B54(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a1 + 16) && *(a2 + 16))
  {
    v25 = a1;

    sub_25C7BA21C(&v25);
    if (v3)
    {
LABEL_30:
      MEMORY[0x25F88EF00](v3);

      __break(1u);
    }

    else
    {
      v6 = v25;
      v25 = a2;

      sub_25C7BA21C(&v25);
      v7 = *(v6 + 2);
      if (v7)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v25 + 2);
        v11 = v6 + 32;
        v12 = v25 + 32;
        v13 = v10;
        v14 = v7;
        v15 = 0.0;
        while (v9 < v10)
        {
          if (v8 < 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
            goto LABEL_30;
          }

          if (v9 < 0)
          {
            goto LABEL_29;
          }

          v17 = *&v11[8 * v8];
          if (*&v12[8 * v9] < v17)
          {
            v17 = *&v12[8 * v9];
          }

          if (v8 < v7)
          {
            do
            {
              if (*&v11[8 * v8] != v17)
              {
                goto LABEL_19;
              }

              ++v8;
            }

            while (v7 != v8);
            v8 = *(v6 + 2);
          }

LABEL_19:
          while (*&v12[8 * v9] == v17)
          {
            if (v10 == ++v9)
            {
              v9 = *(v25 + 2);
              break;
            }
          }

          v18 = v8;
          v19 = v9;
          if (a3)
          {
            v20 = v18 / v14;
            v21 = v19 / v13;
            v22 = v20 - v21;
            v16 = v21 - v20;
            if (a3 == 1)
            {
              v16 = v22;
            }
          }

          else
          {
            v16 = vabdd_f64(v18 / v14, v19 / v13);
          }

          if (v15 <= v16)
          {
            v15 = v16;
          }

          if (v8 >= v7)
          {
            break;
          }
        }
      }
    }
  }

  else
  {
    sub_25C7B9A14();
    swift_allocError();
    *v23 = 0xD000000000000022;
    *(v23 + 8) = 0x800000025C7CF3C0;
    *(v23 + 16) = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25C7C8D34(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25C7CC5BC(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25C7B9970(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC158D0, &qword_25C7CDE08);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25C7CC5BC((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}