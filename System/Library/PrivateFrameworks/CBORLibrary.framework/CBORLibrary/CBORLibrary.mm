uint64_t sub_222775534()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22277557C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_222775700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 104))();
  *a2 = result;
  return result;
}

uint64_t sub_22277574C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 112);

  return v3(v4);
}

void *sub_2227757A0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 176))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2227757FC(unint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 184);
  sub_2227938F8(v5);
  return v3(&v5);
}

void *sub_222775860@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 200))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_2227758BC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 208))(&v4);
}

uint64_t sub_22277591C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2227759E4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_222775A1C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 8);
  v3 = *(a1 + 16);
  sub_222775A08();
}

uint64_t sub_222775A28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 88))();
  *a2 = result;
  return result;
}

uint64_t sub_222775A74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 96);

  return v3(v4);
}

uint64_t sub_222775AC8()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t sub_222775B00(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_222775B9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E08, &qword_2227A06A0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v9 - v3;
  v5 = sub_22279EF70();
  __swift_allocate_value_buffer(v5, qword_27D01A160);
  v6 = __swift_project_value_buffer(v5, qword_27D01A160);
  sub_22279EF60();
  v7 = *(v5 - 8);
  result = (*(v7 + 48))(v4, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 32))(v6, v4, v5);
  }

  __break(1u);
  return result;
}

uint64_t CBORDecoder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_2227810EC(MEMORY[0x277D84F90]);
  return v0;
}

void sub_222775D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v21 = a1;
  v7 = sub_22279EEA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_opt_self();
  v14 = sub_22279EC00();
  v15 = [v13 decodeFromData:v14 keepKeyOrdering:1 noCopy:0];

  if (v15)
  {
    (*(*v5 + 136))(v21, v15, a4, v20);
  }

  else
  {
    sub_22279EE90();
    v16 = sub_22279EEB0();
    swift_allocError();
    v18 = v17;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v18 = v21;
    (*(v8 + 16))(&v18[v19], v12, v7);
    (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
    swift_willThrow();
    (*(v8 + 8))(v12, v7);
  }
}

void sub_222775F8C(uint64_t a1@<X0>, char a2@<W3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v35 = a4;
  v6 = v5;
  v33 = a5;
  v34 = a3;
  v39 = a1;
  v8 = sub_22279EEA0();
  v31 = *(v8 - 8);
  v32 = v8;
  v9 = *(v31 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22279EF70();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27D019D40 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v13, qword_27D01A160);
  (*(v14 + 16))(v18, v19, v13);
  v38 = MEMORY[0x277D839B0];
  v20 = a2 & 1;
  v37[0] = a2 & 1;
  v21 = (*(*v6 + 104))(v36);
  sub_22277632C(v37, v18);
  v21(v36, 0);
  v22 = objc_opt_self();
  v23 = sub_22279EC00();
  v24 = [v22 decodeFromData:v23 keepKeyOrdering:1 noCopy:v20];

  if (v24)
  {
    (*(*v6 + 136))(v39, v24, v34, v35);
  }

  else
  {
    sub_22279EE90();
    v25 = sub_22279EEB0();
    swift_allocError();
    v27 = v26;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v27 = v39;
    v30 = v31;
    v29 = v32;
    (*(v31 + 16))(&v27[v28], v12, v32);
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84170], v25);
    swift_willThrow();
    (*(v30 + 8))(v12, v29);
  }
}

uint64_t sub_22277632C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_2227828C4(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_222789338(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_22279EF70();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_222782970(a1, &qword_27D019D78, &qword_2227A0658);
    sub_222787BC4(a2, v10);
    v8 = sub_22279EF70();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_222782970(v10, &qword_27D019D78, &qword_2227A0658);
  }

  return result;
}

uint64_t sub_222776448@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a4;
  v29 = a5;
  v9 = sub_22279EEA0();
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22279EE00();
  v31 = *(v13 - 8);
  v14 = (*(v31 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = MEMORY[0x28223BE20]();
  v17 = &v29 - v16;
  v18 = (*(*v5 + 88))(v15);
  type metadata accessor for _CBORDecoder();
  swift_allocObject();
  v19 = a2;
  sub_2227816A8(v19, MEMORY[0x277D84F90], v18);

  v20 = v33;
  sub_2227767D8(v19, a1, a3, v32, v17);
  if (v20)
  {
  }

  v22 = v31;
  v33 = a1;
  v23 = *(a3 - 8);
  if ((*(v23 + 48))(v17, 1, a3) == 1)
  {
    (*(v22 + 8))(v17, v13);
    sub_22279EE90();
    v24 = sub_22279EEB0();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v26 = v33;
    v28 = v30;
    (*(v30 + 16))(v26 + v27, v12, v9);
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84170], v24);
    swift_willThrow();

    return (*(v28 + 8))(v12, v9);
  }

  else
  {

    return (*(v23 + 32))(v29, v17, a3);
  }
}

id sub_2227767D8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_22277F070(a1, a2, a4, &v10);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D78, &qword_2227A0658);
    v9 = swift_dynamicCast();
    return (*(*(a3 - 8) + 56))(a5, v9 ^ 1u, 1, a3);
  }

  return result;
}

uint64_t CBORDecoder.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CBORDecoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

void sub_222776934(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = sub_22279EEB0();
    swift_allocError();
    v11 = v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v11 = a1;
    swift_beginAccess();
    v13 = *(v1 + 16);

    sub_22279EE90();
    (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
    swift_willThrow();
    return;
  }

  if (v3 < 0)
  {
    v14 = *(v1 + 24);
  }

  v4 = sub_22279EFA0();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_17:

    v6 = MEMORY[0x223DC00C0](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    v7 = [v6 dictionary];
    if (v7)
    {
      v8 = v7;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
      sub_22279EC60();

      swift_beginAccess();
      v15 = *(v1 + 16);
      type metadata accessor for _CBORDecoderKeyedContainer();
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      swift_getWitnessTable();
      sub_22279F050();

      return;
    }

    goto LABEL_11;
  }

  __break(1u);
}

void sub_222776C1C(void *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 24);
  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    v12 = sub_22279EEB0();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D60, &qword_2227A0648);
    swift_beginAccess();
    v16 = *(v1 + 16);

    sub_22279EE90();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
    swift_willThrow();
    return;
  }

  if (v3 < 0)
  {
    v17 = *(v1 + 24);
  }

  v4 = sub_22279EFA0();
  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  v5 = v4 - 1;
  if (__OFSUB__(v4, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
LABEL_17:

    v6 = MEMORY[0x223DC00C0](v5, v3);

    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(v3 + 8 * v5 + 32);
LABEL_8:
    v7 = [v6 array];
    if (v7)
    {
      v8 = v7;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      v9 = sub_22279ED80();

      swift_beginAccess();
      v10 = *(v1 + 16);
      a1[3] = &type metadata for _CBORDecoderUnkeyedContainer;
      a1[4] = sub_2227826B0();
      v11 = swift_allocObject();
      *a1 = v11;

      v11[2] = v10;
      v11[3] = 0;
      v11[4] = v1;
      v11[5] = v9;
      return;
    }

    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_222776E98()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_222776F34@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for _CBORDecoder();
  a1[4] = sub_22278276C(&qword_27D019D50);
  *a1 = v3;
}

char *sub_222776FA4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D839B0];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777164()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D837D0];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777324()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D839F8];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227774E4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D83A90];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227776A4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D83B88];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777864()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D84900];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777A24()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D84958];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777BE4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D849A8];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777DA4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D84A28];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222777F64()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D83E88];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222778124()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D84B78];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227782E4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D84C58];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_2227784A4()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D84CC0];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222778664()
{
  if (sub_222778A34())
  {
    v2 = sub_22279EEB0();
    swift_allocError();
    v4 = v3;
    v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v4 = MEMORY[0x277D84D38];
    swift_beginAccess();
    v6 = *(v0 + 16);

    sub_22279EE90();
    (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84170], v2);
    swift_willThrow();
    return v2;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  if (!(v8 >> 62))
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v2 = MEMORY[0x223DC00C0](v1, v8);

    return v2;
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v8 + 8 * v1 + 32);
  }

  __break(1u);
  return result;
}

char *sub_222778824(uint64_t a1)
{
  if (sub_222778A34())
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v6 = a1;
    swift_beginAccess();
    v8 = *(v1 + 16);

    sub_22279EE60();
    sub_22279F5B0();

    MEMORY[0x223DBFF30](0xD000000000000010, 0x80000002227A1D00);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84170], v4);
    swift_willThrow();
    return v4;
  }

  swift_beginAccess();
  v10 = *(v1 + 24);
  if (!(v10 >> 62))
  {
    result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_6;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_6:
  v2 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v10 & 0xC000000000000001) != 0)
  {
LABEL_14:

    v4 = MEMORY[0x223DC00C0](v2, v10);

    return v4;
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v10 + 8 * v2 + 32);
  }

  __break(1u);
  return result;
}

uint64_t sub_222778A34()
{
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v2 < 0)
  {
    v6 = *(v1 + 24);
  }

  if (!sub_22279EFA0())
  {
    goto LABEL_16;
  }

LABEL_3:
  v0 = *(v1 + 24);
  if (!(v0 >> 62))
  {
    result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_17:
  result = sub_22279EFA0();
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_5:
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if ((v0 & 0xC000000000000001) == 0)
  {
    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v1 < *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v4 = *(v0 + 8 * v1 + 32);
      goto LABEL_10;
    }

    __break(1u);
    return result;
  }

LABEL_20:

  v4 = MEMORY[0x223DC00C0](v1, v0);

LABEL_10:
  if ([v4 type] == 11)
  {

    return 1;
  }

  else
  {
    v5 = [v4 type];

    return v5 == 12;
  }
}

void *sub_222778B70(void *a1)
{
  if ([a1 type] == 3)
  {
    v3 = [a1 string];
    if (v3)
    {
      v4 = v3;
      v5 = sub_22279ECB0();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = sub_22279EEB0();
    swift_allocError();
    v8 = v7;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v8 = MEMORY[0x277D837D0];
    swift_beginAccess();
    v10 = *(v1 + 16);

    v11 = [a1 description];
    v12 = sub_22279ECB0();
    v14 = v13;

    v16[0] = v12;
    v16[1] = v14;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v5 = v16;
    MEMORY[0x223DBFF30](0x676E69727453, 0xE600000000000000);
    sub_22279EE90();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277D84160], v6);
    swift_willThrow();
  }

  return v5;
}

void sub_222778D40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = (*(*(sub_22279EE00() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v15 - v10;
  v12 = sub_222778824(a1);
  if (!v4)
  {
    v13 = v12;
    sub_2227767D8(v12, a1, a2, a3, v11);

    v14 = *(a2 - 8);
    if ((*(v14 + 48))(v11, 1, a2) == 1)
    {
      __break(1u);
    }

    else
    {
      (*(v14 + 32))(a4, v11, a2);
    }
  }
}

uint64_t sub_222778E98()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
}

uint64_t sub_222778F04()
{
  v3 = *v1;
  v4 = sub_222776FA4();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_2227818D0(v4);
  }

  return v0 & 1;
}

void *sub_222778F54()
{
  v3 = *v1;
  v4 = sub_222777164();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_222778B70(v4);
  }

  return v0;
}

double sub_222778FAC()
{
  v3 = *v0;
  v4 = sub_222777324();
  if (!v1)
  {
    v5 = v4;
    sub_222781A68(v4);
    v2 = v6;
  }

  return v2;
}

float sub_222778FFC()
{
  v3 = *v0;
  v4 = sub_2227774E4();
  if (!v1)
  {
    v5 = v4;
    sub_222781C30(v4);
    v2 = v6;
  }

  return v2;
}

uint64_t sub_22277904C()
{
  v3 = *v1;
  v4 = sub_2227776A4();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_2227824E4(v4, MEMORY[0x277D83B88], 7630409, 0xE300000000000000, &selRef_integerValue);
  }

  return v0;
}

uint64_t sub_222779138()
{
  v3 = *v1;
  v4 = sub_222777BE4();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_2227824E4(v4, MEMORY[0x277D849A8], 0x3233746E49, 0xE500000000000000, &selRef_intValue);
  }

  return v0;
}

uint64_t sub_2227791A8()
{
  v3 = *v1;
  v4 = sub_222777DA4();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_2227824E4(v4, MEMORY[0x277D84A28], 0x3436746E49, 0xE500000000000000, &selRef_longLongValue);
  }

  return v0;
}

uint64_t sub_222779230()
{
  v3 = *v1;
  v4 = sub_222777F64();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_2227824E4(v4, MEMORY[0x277D83E88], 1953384789, 0xE400000000000000, &selRef_unsignedIntegerValue);
  }

  return v0;
}

uint64_t (*sub_2227792DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void)))(void)
{
  v7 = *v4;
  v8 = a3();
  if (!v5)
  {
    v9 = v8;
    a4 = a4();
  }

  return a4;
}

uint64_t (*sub_222779378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void)))(void)
{
  v7 = *v4;
  v8 = a3();
  if (!v5)
  {
    v9 = v8;
    a4 = a4();
  }

  return a4;
}

uint64_t sub_2227793D4()
{
  v3 = *v1;
  v4 = sub_2227784A4();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_2227824E4(v4, MEMORY[0x277D84CC0], 0x3233746E4955, 0xE600000000000000, &selRef_unsignedIntValue);
  }

  return v0;
}

uint64_t sub_222779444()
{
  v3 = *v1;
  v4 = sub_222778664();
  if (!v2)
  {
    v5 = v4;
    v0 = sub_2227824E4(v4, MEMORY[0x277D84D38], 0x3436746E4955, 0xE600000000000000, &selRef_unsignedLongLongValue);
  }

  return v0;
}

uint64_t sub_2227794F0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E50, &unk_2227A0B30);
  sub_222783AF8();
  v0 = sub_22279ED50();

  return v0;
}

uint64_t sub_2227795AC@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ([a1 isWholeNumber])
  {
    v6 = [a1 numeric];
    [v6 integerValue];

    return sub_22279F580();
  }

  else
  {
    v8 = [a1 string];
    if (v8)
    {
      v9 = v8;
      sub_22279ECB0();

      return sub_22279F560();
    }

    else
    {
      v10 = *(*(a2 - 8) + 56);

      return v10(a3, 1, 1, a2);
    }
  }
}

BOOL sub_2227796E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  (*(v8 + 16))(v11, a1, a5);
  v13 = sub_222793008(v11, v12, a5);
  v14 = sub_222779804(v13, a3);

  if (v14)
  {
  }

  return v14 != 0;
}

void *sub_222779804(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_22279EFB0();

    if (v4)
    {
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      swift_dynamicCast();
      return v10;
    }
  }

  else if (*(a2 + 16))
  {
    v6 = sub_222794F78(a1);
    if (v7)
    {
      v8 = *(*(a2 + 56) + 8 * v6);
      v9 = v8;
      return v8;
    }
  }

  return 0;
}

uint64_t *sub_2227798C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v34 = a4;
  v10 = sub_22279EEA0();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v40 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v13, v17);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  v21 = *(v15 + 16);
  v35 = a1;
  v21(v19, a1, a5);
  v22 = sub_222793008(v19, v20, a5);
  v23 = sub_222779804(v22, a3);

  if (!v23)
  {
    v38 = 0;
    v39 = 0xE000000000000000;

    sub_22279EE60();
    MEMORY[0x223DBFF30](0xD00000000000001DLL, 0x80000002227A1F80);
    v24 = *(a6 + 16);
    v25 = v35;
    sub_22279F280();
    sub_22279EE90();
    v26 = sub_22279EEB0();
    swift_allocError();
    v23 = v27;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E48, &qword_2227A0B28) + 48);
    v23[3] = a5;
    v23[4] = a6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v23);
    v21(boxed_opaque_existential_1Tm, v25, a5);
    v31 = v36;
    v30 = v37;
    v32 = v40;
    (*(v36 + 16))(v23 + v28, v40, v37);
    (*(*(v26 - 8) + 104))(v23, *MEMORY[0x277D84158], v26);
    swift_willThrow();
    (*(v31 + 8))(v32, v30);
  }

  return v23;
}

uint64_t sub_222779BD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1, a2);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v34 - v20;
  v27 = sub_2227798C8(v19, v22, v23, v24, v25, v26);
  if (!v6)
  {
    v36 = v27;
    v38 = a4;
    v39 = 0;
    v35 = *(v13 + 16);
    v35(v21, a1, a5);
    swift_beginAccess();
    v28 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v28;
    v37 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_222789FB0(0, v28[2] + 1, 1, v28);
      *(a2 + 16) = v28;
    }

    v31 = v28[2];
    v30 = v28[3];
    if (v31 >= v30 >> 1)
    {
      v28 = sub_222789FB0((v30 > 1), v31 + 1, 1, v28);
      *(a2 + 16) = v28;
    }

    v35(v17, v21, a5);
    sub_222793174(v31, v17, (a2 + 16), a5, a6);
    (*(v13 + 8))(v21, a5);
    *(a2 + 16) = v28;
    swift_endAccess();
    v32 = v36;
    LOBYTE(a4) = [v36 type] == 11 || objc_msgSend(v32, sel_type) == 12;
    sub_22277A078(a2);
  }

  return a4 & 1;
}

unint64_t sub_222779E24(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1, a2);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v35 - v20;
  v27 = sub_2227798C8(v19, v22, v23, v24, v25, v26);
  if (!v6)
  {
    v37 = v27;
    v39 = a4;
    v40 = 0;
    v36 = *(v13 + 16);
    v36(v21, a1, a5);
    swift_beginAccess();
    v28 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v28;
    v38 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_222789FB0(0, v28[2] + 1, 1, v28);
      *(a2 + 16) = v28;
    }

    a3 = v28[2];
    v30 = v28[3];
    if (a3 >= v30 >> 1)
    {
      v28 = sub_222789FB0((v30 > 1), a3 + 1, 1, v28);
      *(a2 + 16) = v28;
    }

    v36(v17, v21, a5);
    sub_222793174(a3, v17, (a2 + 16), a5, a6);
    (*(v13 + 8))(v21, a5);
    *(a2 + 16) = v28;
    swift_endAccess();
    v31 = v37;
    v32 = v40;
    v33 = sub_2227818D0(v37);
    if (!v32)
    {
      LOBYTE(a3) = v33;
    }

    sub_22277A078(a2);
  }

  return a3 & 1;
}

uint64_t sub_22277A078(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v5 - 1]);
    v2[2] = v6;
    *(a1 + 16) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_22277A11C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a5 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1, a2);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v35 - v20;
  v27 = sub_2227798C8(v19, v22, v23, v24, v25, v26);
  if (!v6)
  {
    v37 = v27;
    v39 = a4;
    v40 = 0;
    v36 = *(v13 + 16);
    v36(v21, a1, a5);
    swift_beginAccess();
    v28 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v28;
    v38 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v28 = sub_222789FB0(0, v28[2] + 1, 1, v28);
      *(a2 + 16) = v28;
    }

    a3 = v28[2];
    v30 = v28[3];
    if (a3 >= v30 >> 1)
    {
      v28 = sub_222789FB0((v30 > 1), a3 + 1, 1, v28);
      *(a2 + 16) = v28;
    }

    v36(v17, v21, a5);
    sub_222793174(a3, v17, (a2 + 16), a5, a6);
    (*(v13 + 8))(v21, a5);
    *(a2 + 16) = v28;
    swift_endAccess();
    v31 = v37;
    v32 = v40;
    v33 = sub_222778B70(v37);
    if (!v32)
    {
      a3 = v33;
    }

    sub_22277A078(a2);
  }

  return a3;
}

double sub_22277A378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v37 - v21;
  v28 = sub_2227798C8(v20, v23, v24, v25, v26, v27);
  if (!v6)
  {
    v38 = v28;
    v40 = a4;
    v41 = 0;
    v37 = *(v14 + 16);
    v37(v22, a1, a5);
    swift_beginAccess();
    v29 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v29;
    v39 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_222789FB0(0, v29[2] + 1, 1, v29);
      *(a2 + 16) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_222789FB0((v31 > 1), v32 + 1, 1, v29);
      *(a2 + 16) = v29;
    }

    v37(v18, v22, a5);
    sub_222793174(v32, v18, (a2 + 16), a5, a6);
    (*(v14 + 8))(v22, a5);
    *(a2 + 16) = v29;
    swift_endAccess();
    v33 = v38;
    v34 = v41;
    sub_222781A68(v38);
    if (!v34)
    {
      v7 = v35;
    }

    sub_22277A078(a2);
  }

  return v7;
}

float sub_22277A5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v37 - v21;
  v28 = sub_2227798C8(v20, v23, v24, v25, v26, v27);
  if (!v6)
  {
    v38 = v28;
    v40 = a4;
    v41 = 0;
    v37 = *(v14 + 16);
    v37(v22, a1, a5);
    swift_beginAccess();
    v29 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v29;
    v39 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v29 = sub_222789FB0(0, v29[2] + 1, 1, v29);
      *(a2 + 16) = v29;
    }

    v32 = v29[2];
    v31 = v29[3];
    if (v32 >= v31 >> 1)
    {
      v29 = sub_222789FB0((v31 > 1), v32 + 1, 1, v29);
      *(a2 + 16) = v29;
    }

    v37(v18, v22, a5);
    sub_222793174(v32, v18, (a2 + 16), a5, a6);
    (*(v14 + 8))(v22, a5);
    *(a2 + 16) = v29;
    swift_endAccess();
    v33 = v38;
    v34 = v41;
    sub_222781C30(v38);
    if (!v34)
    {
      v7 = v35;
    }

    sub_22277A078(a2);
  }

  return v7;
}

char *sub_22277A828(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  v42 = a7;
  v13 = a1;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v37 - v21;
  v28 = sub_2227798C8(v20, v23, v24, v25, v26, v27);
  if (!v7)
  {
    v37 = v14;
    v38 = v28;
    v40 = a4;
    v41 = 0;
    v29 = *(v14 + 16);
    v29(v22, v13, a5);
    swift_beginAccess();
    v13 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v13;
    v39 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_222789FB0(0, *(v13 + 2) + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v32 = *(v13 + 2);
    v31 = *(v13 + 3);
    if (v32 >= v31 >> 1)
    {
      v13 = sub_222789FB0((v31 > 1), v32 + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v29(v18, v22, a5);
    sub_222793174(v32, v18, (a2 + 16), a5, a6);
    (*(v37 + 8))(v22, a5);
    *(a2 + 16) = v13;
    swift_endAccess();
    v33 = v38;
    v34 = v41;
    v35 = v42(v38);
    if (!v34)
    {
      v13 = v35;
    }

    sub_22277A078(a2);
  }

  return v13;
}

char *sub_22277AA80(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t *))
{
  v42 = a7;
  v13 = a1;
  v14 = *(a5 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = &v37 - v21;
  v28 = sub_2227798C8(v20, v23, v24, v25, v26, v27);
  if (!v7)
  {
    v37 = v14;
    v38 = v28;
    v40 = a4;
    v41 = 0;
    v29 = *(v14 + 16);
    v29(v22, v13, a5);
    swift_beginAccess();
    v13 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v13;
    v39 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_222789FB0(0, *(v13 + 2) + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v32 = *(v13 + 2);
    v31 = *(v13 + 3);
    if (v32 >= v31 >> 1)
    {
      v13 = sub_222789FB0((v31 > 1), v32 + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v29(v18, v22, a5);
    sub_222793174(v32, v18, (a2 + 16), a5, a6);
    (*(v37 + 8))(v22, a5);
    *(a2 + 16) = v13;
    swift_endAccess();
    v33 = v38;
    v34 = v41;
    v35 = v42(v38);
    if (!v34)
    {
      v13 = v35;
    }

    sub_22277A078(a2);
  }

  return v13;
}

char *sub_22277ACD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, SEL *a10)
{
  v51 = a8;
  v50 = a7;
  v17 = *(a5 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](a1, a2);
  v21 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v42 - v24;
  v31 = sub_2227798C8(v23, v26, v27, v28, v29, v30);
  if (!v10)
  {
    v45 = v17;
    v46 = v31;
    v48 = a4;
    v49 = 0;
    v43 = a9;
    v44 = a10;
    v42 = *(v17 + 16);
    v42(v25, a1, a5);
    swift_beginAccess();
    v32 = *(a2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v32;
    v47 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v32 = sub_222789FB0(0, v32[2] + 1, 1, v32);
      *(a2 + 16) = v32;
    }

    v34 = a6;
    v36 = v32[2];
    v35 = v32[3];
    v37 = v50;
    if (v36 >= v35 >> 1)
    {
      v32 = sub_222789FB0((v35 > 1), v36 + 1, 1, v32);
      *(a2 + 16) = v32;
    }

    v42(v21, v25, a5);
    sub_222793174(v36, v21, (a2 + 16), a5, v34);
    (*(v45 + 8))(v25, a5);
    *(a2 + 16) = v32;
    swift_endAccess();
    v38 = v46;
    v39 = v49;
    v40 = sub_2227824E4(v46, v37, v51, v43, v44);
    if (!v39)
    {
      v21 = v40;
    }

    sub_22277A078(a2);
  }

  return v21;
}

void sub_22277AF50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v54 = a7;
  v55 = a1;
  v51 = a9;
  v16 = sub_22279EE00();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16 - 8, v18);
  v21 = v46 - v20;
  v56 = *(a6 - 8);
  v22 = *(v56 + 64);
  v24 = MEMORY[0x28223BE20](v19, v23);
  v26 = v46 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v27);
  v29 = v46 - v28;
  v52 = a3;
  v53 = a2;
  v30 = v57;
  v31 = sub_2227798C8(a2, a3, a4, a5, a6, a8);
  if (!v30)
  {
    v48 = 0;
    v49 = v26;
    v57 = v31;
    v46[0] = v21;
    v46[1] = a4;
    v46[2] = a5;
    v47 = a8;
    v50 = a10;
    v32 = v53;
    v53 = *(v56 + 16);
    v53(v29, v32, a6);
    v33 = v52;
    swift_beginAccess();
    v34 = *(v33 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v33 + 16) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_222789FB0(0, v34[2] + 1, 1, v34);
      *(v33 + 16) = v34;
    }

    v36 = v46[0];
    v37 = v55;
    v39 = v34[2];
    v38 = v34[3];
    v40 = v49;
    if (v39 >= v38 >> 1)
    {
      v34 = sub_222789FB0((v38 > 1), v39 + 1, 1, v34);
      v40 = v49;
      *(v33 + 16) = v34;
    }

    v53(v40, v29, a6);
    sub_222793174(v39, v40, (v33 + 16), a6, v47);
    (*(v56 + 8))(v29, a6);
    *(v33 + 16) = v34;
    swift_endAccess();
    v41 = v57;
    v42 = v37;
    v43 = v54;
    v44 = v48;
    sub_2227767D8(v57, v42, v54, v50, v36);
    if (v44)
    {
      sub_22277A078(v33);
    }

    else
    {
      v45 = *(v43 - 8);
      if ((*(v45 + 48))(v36, 1, v43) == 1)
      {
        __break(1u);
      }

      else
      {
        (*(v45 + 32))(v51, v36, v43);
        sub_22277A078(v33);
      }
    }
  }
}

void sub_22277B2FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v65 = a7;
  v66 = a9;
  v67 = a1;
  v72 = *(a6 - 8);
  v15 = *(v72 + 64);
  v16 = MEMORY[0x28223BE20](a1, a2);
  v69 = v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = (v60 - v19);
  v21 = sub_22279EEA0();
  v68 = *(v21 - 8);
  v22 = v68[8];
  MEMORY[0x28223BE20](v21, v23);
  v25 = v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  v71 = a2;
  v26 = v76;
  v27 = sub_2227798C8(a2, a3, a4, a5, a6, a8);
  if (!v26)
  {
    v76 = v20;
    v61 = v25;
    v62 = v21;
    v28 = v70;
    v60[1] = a4;
    v63 = a5;
    v64 = a8;
    v60[2] = 0;
    v29 = v27;
    if ([v27 type] == 5)
    {
      v68 = v29;
      v30 = *(v72 + 16);
      v30(v76, v71, a6);
      v31 = v28;
      swift_beginAccess();
      v32 = *(v28 + 16);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v31 + 16) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_222789FB0(0, v32[2] + 1, 1, v32);
        *(v31 + 16) = v32;
      }

      v35 = v32[2];
      v34 = v32[3];
      v36 = v72;
      v37 = v76;
      v38 = v69;
      if (v35 >= v34 >> 1)
      {
        v59 = sub_222789FB0((v34 > 1), v35 + 1, 1, v32);
        v37 = v76;
        v32 = v59;
        v38 = v69;
        *(v31 + 16) = v59;
      }

      v30(v38, v37, a6);
      v76 = v30;
      v39 = v64;
      sub_222793174(v35, v38, (v31 + 16), a6, v64);
      (*(v36 + 8))(v37, a6);
      *(v31 + 16) = v32;
      swift_endAccess();
      v40 = [v68 dictionary];
      if (v40)
      {
        v41 = v40;
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
        v42 = sub_22279EC60();

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_2227A0440;
        *(inited + 56) = a6;
        *(inited + 64) = v39;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 32));
        v76(boxed_opaque_existential_1Tm, v71, a6);
        v73 = v63;

        sub_222780FE4(inited);
        v45 = v73;
        v73 = v31;
        v74 = v42;
        v75 = v45;
        type metadata accessor for _CBORDecoderKeyedContainer();
        swift_getWitnessTable();
        sub_22279F050();
        sub_22277A078(v31);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      v46 = v64;
      v47 = *(v64 + 16);

      v48 = v71;
      v49 = a6;
      sub_22279F280();
      MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
      v50 = sub_22279F5B0();
      MEMORY[0x223DBFF30](v50);

      v51 = v61;
      sub_22279EE90();
      v52 = sub_22279EEB0();
      swift_allocError();
      v54 = v53;
      v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E48, &qword_2227A0B28) + 48);
      v54[3] = v49;
      v54[4] = v46;
      v56 = __swift_allocate_boxed_opaque_existential_1Tm(v54);
      (*(v72 + 16))(v56, v48, v49);
      v57 = v68;
      v58 = v62;
      (v68[2])(v54 + v55, v51, v62);
      (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84158], v52);
      swift_willThrow();

      (v57[1])(v51, v58);
    }
  }
}

void sub_22277B910(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v59 = a7;
  v63 = *(a5 - 8);
  v13 = *(v63 + 64);
  v14 = MEMORY[0x28223BE20](a1, a2);
  v60 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v54 - v17;
  v19 = sub_22279EEA0();
  v61 = *(v19 - 8);
  v20 = *(v61 + 64);
  MEMORY[0x28223BE20](v19, v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = a1;
  v24 = a1;
  v25 = a2;
  v26 = v66;
  v27 = sub_2227798C8(v24, a2, a3, a4, a5, a6);
  if (!v26)
  {
    v66 = v18;
    v55 = v23;
    v56 = v19;
    v28 = v62;
    v57 = a4;
    v29 = v27;
    v30 = [v27 type];
    v58 = v29;
    if (v30 == 4)
    {
      v31 = *(v63 + 16);
      v31(v66, v28, a5);
      swift_beginAccess();
      v32 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v32;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = sub_222789FB0(0, v32[2] + 1, 1, v32);
        *(a2 + 16) = v32;
      }

      v34 = v60;
      v36 = v32[2];
      v35 = v32[3];
      v37 = v66;
      if (v36 >= v35 >> 1)
      {
        v32 = sub_222789FB0((v35 > 1), v36 + 1, 1, v32);
        *(v25 + 16) = v32;
      }

      v31(v34, v37, a5);
      sub_222793174(v36, v34, (v25 + 16), a5, a6);
      (*(v63 + 8))(v37, a5);
      *(v25 + 16) = v32;
      swift_endAccess();
      v38 = v58;
      v39 = [v58 array];
      if (v39)
      {
        v40 = v39;
        sub_222782C2C(0, qword_280BC4448, off_2784B4108);
        v41 = sub_22279ED80();

        v42 = *(v25 + 16);
        v43 = v59;
        v59[3] = &type metadata for _CBORDecoderUnkeyedContainer;
        v43[4] = sub_2227826B0();
        v44 = swift_allocObject();
        *v43 = v44;
        v44[2] = v42;
        v44[3] = 0;
        v44[4] = v25;
        v44[5] = v41;

        sub_22277A078(v25);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      v64 = 0;
      v65 = 0xE000000000000000;

      sub_22279EE60();
      v45 = *(a6 + 16);
      sub_22279F280();
      MEMORY[0x223DBFF30](0xD00000000000001BLL, 0x80000002227A1F60);
      v46 = v55;
      sub_22279EE90();
      v47 = sub_22279EEB0();
      swift_allocError();
      v49 = v48;
      v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E48, &qword_2227A0B28) + 48);
      v49[3] = a5;
      v49[4] = a6;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v49);
      (*(v63 + 16))(boxed_opaque_existential_1Tm, v28, a5);
      v52 = v61;
      v53 = v56;
      (*(v61 + 16))(v49 + v50, v46, v56);
      (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84158], v47);
      swift_willThrow();

      (*(v52 + 8))(v46, v53);
    }
  }
}

uint64_t sub_22277BE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v37[2] = a5;
  v37[3] = a6;
  v37[1] = a4;
  sub_222783A04(a1, v38);
  swift_beginAccess();
  v11 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_222789FB0(0, v11[2] + 1, 1, v11);
    *(a2 + 16) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  v37[0] = a3;
  if (v14 >= v13 >> 1)
  {
    v11 = sub_222789FB0((v13 > 1), v14 + 1, 1, v11);
    *(a2 + 16) = v11;
  }

  v15 = v39;
  v16 = v40;
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v18 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v17, v17);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  sub_222793174(v14, v20, (a2 + 16), v15, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  *(a2 + 16) = v11;
  swift_endAccess();
  v22 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_222783A04(a1, v38);
  v23 = v39;
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v38, v39);
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v24, v24);
  v27 = v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v27);
  v29 = sub_222793008(v27, v22, v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  v30 = sub_222779804(v29, v37[0]);

  if (!v30)
  {
    v30 = [objc_opt_self() cborNil];
  }

  v31 = *(a2 + 16);
  v32 = *(a2 + 32);
  v33 = type metadata accessor for _CBORDecoder();
  swift_allocObject();
  v34 = v30;

  v35 = sub_2227816A8(v34, v31, v32);

  a7[3] = v33;
  a7[4] = sub_22278276C(&qword_27D019D90);

  *a7 = v35;
  return sub_22277A078(a2);
}

uint64_t sub_22277C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  result = sub_22278B4D0(0x7265707573, 0xE500000000000000);
  if (v12)
  {
    v15 = result;
    v16 = v12;
    v17 = v13;
    v18 = v14;
    v21[3] = &type metadata for CBORCodingKey;
    v21[4] = sub_222782F30();
    v19 = swift_allocObject();
    v21[0] = v19;
    *(v19 + 16) = v15;
    *(v19 + 24) = v16;
    *(v19 + 32) = v17;
    *(v19 + 40) = v18 & 1;
    sub_22277BE1C(v21, a1, a2, a3, a4, a5, a6);
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *sub_22277C290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  result = sub_2227798C8(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {

    v17[3] = a5;
    v17[4] = a6;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v17);
    (*(*(a5 - 8) + 16))(boxed_opaque_existential_1Tm, a1, a5);
    sub_22277BE1C(v17, a2, a3, a4, a5, a6, a7);
    return __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }

  return result;
}

uint64_t sub_22277C370(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  return sub_2227794F0();
}

uint64_t sub_22277C7C4()
{
  result = sub_22279F320();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277C814()
{
  result = sub_22279F330();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277C8BC()
{
  result = sub_22279F360();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277C90C()
{
  result = sub_22279F340();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277CA4C()
{
  result = sub_22279F370();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277CA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = a4();
  if (v4)
  {
    return v6;
  }

  return result;
}

void sub_22277CC14()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[3];
  if (!(v3 >> 62))
  {
    if (v1 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_19:
    v12 = sub_22279EEB0();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v14 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84170], v12);
    swift_willThrow();
    return;
  }

  if (v3 < 0)
  {
    v11 = v0[3];
  }

  if (v1 >= sub_22279EFA0())
  {
    goto LABEL_19;
  }

LABEL_3:
  v4 = v3 + 8 * v1;
  if ((v3 & 0xC000000000000001) == 0)
  {
    if (v1 < 0)
    {
      __break(1u);
    }

    else if (v1 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v5 = *(v4 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = MEMORY[0x223DC00C0](v1, v3);
LABEL_7:
  v6 = v5;
  v7 = [v5 type];

  if (v7 == 11)
  {
LABEL_14:
    v0[1] = v1 + 1;
    return;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x223DC00C0](v1, v3);
    goto LABEL_13;
  }

  if (v1 < 0)
  {
    goto LABEL_23;
  }

  if (v1 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    __break(1u);
    return;
  }

  v8 = *(v4 + 32);
LABEL_13:
  v9 = v8;
  v10 = [v8 type];

  if (v10 == 12)
  {
    goto LABEL_14;
  }
}

uint64_t sub_22277CE1C()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v12 = sub_22279EEB0();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v14 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84170], v12);
    swift_willThrow();
    return v3;
  }

  if (v4 < 0)
  {
    v11 = v0[3];
  }

  result = sub_22279EFA0();
  if (v2 >= result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = v0[2];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = v1;
    v8 = v0;
    v9 = MEMORY[0x223DC00C0](v2, v4);
LABEL_7:
    v10 = v9;
    v3 = sub_222778B70(v9);

    if (!v7)
    {
      v8[1] = v2 + 1;
    }

    return v3;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = v1;
    v8 = v0;
    v9 = *(v4 + 8 * v2 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_22277CFDC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v35 = a3;
  v7 = sub_22279EE00();
  v8 = *(*(v7 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v16 = &v32 - v15;
  v17 = *v4;
  v18 = v4[1];
  v19 = v4[3];
  if (!(v19 >> 62))
  {
    if (v18 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    v28 = sub_22279EEB0();
    swift_allocError();
    v30 = v29;
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v30 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D84170], v28);
    swift_willThrow();
    return;
  }

  if (v19 < 0)
  {
    v26 = v4[3];
  }

  v33 = v14;
  v27 = sub_22279EFA0();
  v14 = v33;
  if (v18 >= v27)
  {
    goto LABEL_13;
  }

LABEL_3:
  v20 = v4[2];
  v32 = v4;
  v33 = v14;
  if ((v19 & 0xC000000000000001) == 0)
  {
    if (v18 < 0)
    {
      __break(1u);
    }

    else if (v18 < *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v21 = *(v19 + 8 * v18 + 32);
      goto LABEL_7;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v21 = MEMORY[0x223DC00C0](v18, v19);
LABEL_7:
  v22 = v21;
  v23 = v36;
  sub_2227767D8(v21, a1, a2, v35, v16);

  if (!v23)
  {
    v24 = v33;
    v32[1] = v18 + 1;
    (*(v24 + 16))(v12, v16, v7);
    v25 = *(a2 - 8);
    if ((*(v25 + 48))(v12, 1, a2) != 1)
    {
      (*(v24 + 8))(v16, v7);
      (*(v25 + 32))(v34, v12, a2);
      return;
    }

    goto LABEL_18;
  }
}

uint64_t sub_22277D2F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v62 = a3;
  v56 = a1;
  v7 = sub_22279EEA0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x28223BE20](v7, v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v4;
  v15 = v4[1];
  v16 = v4[3];
  if (!(v16 >> 62))
  {
    if (v15 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    v47 = sub_22279EEB0();
    swift_allocError();
    v49 = v48;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v49 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v47 - 8) + 104))(v49, *MEMORY[0x277D84170], v47);
    return swift_willThrow();
  }

  if (v16 < 0)
  {
    v43 = v4[3];
  }

  v55 = a4;
  v44 = a2;
  v45 = v11;
  v46 = sub_22279EFA0();
  v11 = v45;
  a2 = v44;
  a4 = v55;
  if (v15 >= v46)
  {
    goto LABEL_16;
  }

LABEL_3:
  v54 = v11;
  v55 = a4;
  if ((v16 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x223DC00C0](v15, v16);
LABEL_7:
    v18 = v17;
    v19 = [v17 dictionary];

    if (!v19)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227A0440;
      *&v57 = 0x3A6D657449;
      *(&v57 + 1) = 0xE500000000000000;
      v61 = v15;

      v28 = sub_22279F090();
      v29 = v8;
      MEMORY[0x223DBFF30](v28);

      v30 = v57;
      *(inited + 56) = &type metadata for CBORCodingKey;
      *(inited + 64) = sub_222782F30();
      v31 = swift_allocObject();
      *(inited + 32) = v31;
      *(v31 + 16) = v30;
      *(v31 + 32) = 0;
      *(v31 + 40) = 1;
      *&v57 = v14;
      sub_222780FE4(inited);
      *&v57 = 0;
      *(&v57 + 1) = 0xE000000000000000;
      sub_22279EE60();
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
      v33 = MEMORY[0x223DBFFE0](v14, v32);
      v35 = v34;

      *&v57 = v33;
      *(&v57 + 1) = v35;
      MEMORY[0x223DBFF30](0x206D65746920, 0xE600000000000000);
      v61 = v15;
      v36 = sub_22279F090();
      MEMORY[0x223DBFF30](v36);

      MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
      v37 = sub_22279F5B0();
      MEMORY[0x223DBFF30](v37);

      sub_22279EE90();
      v38 = sub_22279EEB0();
      swift_allocError();
      v40 = v39;
      v41 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
      *v40 = MEMORY[0x277D839B0];
      v42 = v54;
      (*(v29 + 16))(&v40[v41], v13, v54);
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      return (*(v29 + 8))(v13, v42);
    }

    v56 = a2;
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
    v54 = sub_22279EC60();

    a2 = v4;
    v13 = v4[2];
    *&v57 = 0x3A6D657449;
    *(&v57 + 1) = 0xE500000000000000;
    v61 = v15;
    v20 = sub_22279F090();
    MEMORY[0x223DBFF30](v20);

    v52 = *(&v57 + 1);
    v53 = v57;
    swift_beginAccess();
    a4 = *(v13 + 2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v13 + 2) = a4;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  if (v15 < 0)
  {
    __break(1u);
  }

  else if (v15 < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(v16 + 8 * v15 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_20:
  a4 = sub_222789FB0(0, a4[2] + 1, 1, a4);
  *(v13 + 2) = a4;
LABEL_9:
  v23 = a4[2];
  v22 = a4[3];
  if (v23 >= v22 >> 1)
  {
    a4 = sub_222789FB0((v22 > 1), v23 + 1, 1, a4);
  }

  v59 = &type metadata for CBORCodingKey;
  v60 = sub_222782F30();
  v24 = swift_allocObject();
  *&v57 = v24;
  v25 = v52;
  *(v24 + 16) = v53;
  *(v24 + 24) = v25;
  *(v24 + 32) = 0;
  *(v24 + 40) = 1;
  a4[2] = v23 + 1;
  sub_2227759E4(&v57, &a4[5 * v23 + 4]);
  *(v13 + 2) = a4;
  swift_endAccess();
  *(a2 + 8) = v15 + 1;
  *&v57 = v13;
  *(&v57 + 1) = v54;
  v58 = v14;
  type metadata accessor for _CBORDecoderKeyedContainer();

  swift_getWitnessTable();
  sub_22279F050();
  return sub_22277E024(a2);
}

uint64_t sub_22277D9D8@<X0>(void *a1@<X8>)
{
  v3 = sub_22279EEA0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v7 = MEMORY[0x28223BE20](v3, v6);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v1;
  v10 = *(v1 + 1);
  v12 = *(v1 + 3);
  if (!(v12 >> 62))
  {
    if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_16:
    v42 = sub_22279EEB0();
    swift_allocError();
    v44 = v43;
    v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v44 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84170], v42);
    return swift_willThrow();
  }

  if (v12 < 0)
  {
    v39 = *(v1 + 3);
  }

  v40 = v7;
  v41 = sub_22279EFA0();
  v7 = v40;
  if (v10 >= v41)
  {
    goto LABEL_16;
  }

LABEL_3:
  v53 = v7;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x223DC00C0](v10, v12);
LABEL_7:
    v14 = v13;
    v15 = [v13 array];

    if (!v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E38, &qword_2227A0B18);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227A0440;
      *&v49 = 0x3A6D657449;
      *(&v49 + 1) = 0xE500000000000000;
      v52 = v10;

      v26 = sub_22279F090();
      MEMORY[0x223DBFF30](v26);

      v27 = v49;
      *(inited + 56) = &type metadata for CBORCodingKey;
      *(inited + 64) = sub_222782F30();
      v28 = swift_allocObject();
      *(inited + 32) = v28;
      *(v28 + 16) = v27;
      *(v28 + 32) = 0;
      *(v28 + 40) = 1;
      *&v49 = v11;
      sub_222780FE4(inited);
      *&v49 = 0;
      *(&v49 + 1) = 0xE000000000000000;
      sub_22279EE60();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
      v30 = MEMORY[0x223DBFFE0](v11, v29);
      v32 = v31;

      *&v49 = v30;
      *(&v49 + 1) = v32;
      MEMORY[0x223DBFF30](0x206D65746920, 0xE600000000000000);
      v52 = v10;
      v33 = sub_22279F090();
      MEMORY[0x223DBFF30](v33);

      MEMORY[0x223DBFF30](0xD00000000000001BLL, 0x80000002227A1F60);
      sub_22279EE90();
      v34 = sub_22279EEB0();
      swift_allocError();
      v36 = v35;
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
      *v36 = MEMORY[0x277D839B0];
      v38 = v53;
      (*(v4 + 16))(&v36[v37], v9, v53);
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x277D84160], v34);
      swift_willThrow();
      return (*(v4 + 8))(v9, v38);
    }

    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    v53 = sub_22279ED80();

    v9 = v1;
    v11 = *(v1 + 2);
    *&v49 = 0x3A6D657449;
    *(&v49 + 1) = 0xE500000000000000;
    v52 = v10;
    v16 = sub_22279F090();
    MEMORY[0x223DBFF30](v16);

    v47 = *(&v49 + 1);
    v48 = v49;
    swift_beginAccess();
    v1 = *(v11 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v11 + 16) = v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 8 * v10 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_20:
  v1 = sub_222789FB0(0, *(v1 + 2) + 1, 1, v1);
  *(v11 + 16) = v1;
LABEL_9:
  v19 = *(v1 + 2);
  v18 = *(v1 + 3);
  if (v19 >= v18 >> 1)
  {
    v1 = sub_222789FB0((v18 > 1), v19 + 1, 1, v1);
  }

  v50 = &type metadata for CBORCodingKey;
  v51 = sub_222782F30();
  v20 = swift_allocObject();
  *&v49 = v20;
  v21 = v47;
  *(v20 + 16) = v48;
  *(v20 + 24) = v21;
  *(v20 + 32) = 0;
  *(v20 + 40) = 1;
  *(v1 + 2) = v19 + 1;
  sub_2227759E4(&v49, &v1[40 * v19 + 32]);
  *(v11 + 16) = v1;
  swift_endAccess();
  *(v9 + 1) = v10 + 1;
  a1[3] = &type metadata for _CBORDecoderUnkeyedContainer;
  a1[4] = sub_2227826B0();
  v22 = swift_allocObject();
  *a1 = v22;
  v22[2] = v1;
  v22[3] = 0;
  v23 = v53;
  v22[4] = v11;
  v22[5] = v23;

  return sub_22277E024(v9);
}

uint64_t sub_22277E024(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_222792F90(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    __swift_destroy_boxed_opaque_existential_1Tm(&v2[5 * v4 - 1]);
    v2[2] = v5;
    *(v1 + 16) = v2;
    swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_22277E0D8@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  v5 = *v1;
  v6 = v3[1];
  v7 = v3[3];
  if (v7 >> 62)
  {
    if (v7 < 0)
    {
      v23 = v3[3];
    }

    if (v6 < sub_22279EFA0())
    {
      goto LABEL_3;
    }

LABEL_15:
    v24 = sub_22279EEB0();
    swift_allocError();
    v26 = v25;
    v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v26 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x277D84170], v24);
    return swift_willThrow();
  }

  if (v6 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_15;
  }

LABEL_3:
  v28 = a1;
  v33 = v2;
  v8 = v3[2];
  *&v29 = 0x3A6D657449;
  *(&v29 + 1) = 0xE500000000000000;
  v32 = v6;
  v9 = sub_22279F090();
  MEMORY[0x223DBFF30](v9);

  swift_beginAccess();
  v10 = *(v8 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v8 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_222789FB0(0, v10[2] + 1, 1, v10);
    *(v8 + 16) = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_222789FB0((v12 > 1), v13 + 1, 1, v10);
  }

  v30 = &type metadata for CBORCodingKey;
  v31 = sub_222782F30();
  v14 = swift_allocObject();
  *&v29 = v14;
  *(v14 + 16) = 0x3A6D657449;
  *(v14 + 24) = 0xE500000000000000;
  *(v14 + 32) = 0;
  *(v14 + 40) = 1;
  v10[2] = v13 + 1;
  sub_2227759E4(&v29, &v10[5 * v13 + 4]);
  *(v8 + 16) = v10;
  result = swift_endAccess();
  if ((v7 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x223DC00C0](v6, v7);
    goto LABEL_11;
  }

  if (v6 < 0)
  {
    __break(1u);
  }

  else if (v6 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(v7 + 8 * v6 + 32);
LABEL_11:
    v17 = v16;
    v3[1] = v6 + 1;
    v18 = *(v8 + 16);
    v19 = *(v8 + 32);
    v20 = type metadata accessor for _CBORDecoder();
    swift_allocObject();
    v21 = v17;

    v22 = sub_2227816A8(v21, v18, v19);

    v28[3] = v20;
    v28[4] = sub_22278276C(&qword_27D019D90);

    *v28 = v22;
    return sub_22277E024(v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_22277E440()
{
  v1 = *(v0 + 24);
  if (!(v1 >> 62))
  {
    return *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v1 < 0)
  {
    v3 = *(v0 + 24);
  }

  return sub_22279EFA0();
}

BOOL sub_22277E480()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v5 = *(v0 + 24);
    }

    v3 = sub_22279EFA0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 >= v3;
}

uint64_t sub_22277E7C8()
{
  result = sub_22279F0C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277E818()
{
  result = sub_22279F0D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277E8C0()
{
  result = sub_22279F100();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277E910()
{
  result = sub_22279F0E0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277EA50()
{
  result = sub_22279F110();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_22277EAA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t sub_22277EB40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_22279EC40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20]();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([a1 isDate] & 1) != 0 && (v10 = objc_msgSend(a1, sel_date)) != 0)
  {
    v11 = v10;
    sub_22279EC30();

    (*(v6 + 32))(a2, v9, v5);
    return (*(v6 + 56))(a2, 0, 1, v5);
  }

  else
  {
    v13 = sub_22279EEB0();
    swift_allocError();
    v15 = v14;
    v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v15 = v5;
    swift_beginAccess();
    v17 = *(v2 + 16);

    v18 = [a1 description];
    v19 = sub_22279ECB0();
    v21 = v20;

    v22[1] = v19;
    v22[2] = v21;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](1702125892, 0xE400000000000000);
    sub_22279EE90();
    (*(*(v13 - 8) + 104))(v15, *MEMORY[0x277D84160], v13);
    return swift_willThrow();
  }
}

uint64_t sub_22277EE1C(void *a1)
{
  if ([a1 type] == 2)
  {
    v3 = [a1 data];
    if (v3)
    {
      v4 = v3;
      v5 = sub_22279EC10();

      return v5;
    }

    v7 = sub_22279EEB0();
    swift_allocError();
    v9 = v14;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v9 = MEMORY[0x277CC9318];
    swift_beginAccess();
    v16 = *(v1 + 16);

    sub_22279EE90();
    v13 = MEMORY[0x277D84170];
  }

  else
  {
    v7 = sub_22279EEB0();
    swift_allocError();
    v9 = v8;
    v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v9 = MEMORY[0x277CC9318];
    swift_beginAccess();
    v11 = *(v1 + 16);

    v12 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](1635017028, 0xE400000000000000);
    sub_22279EE90();
    v13 = MEMORY[0x277D84160];
  }

  (*(*(v7 - 8) + 104))(v9, *v13, v7);
  return swift_willThrow();
}

id sub_22277F070@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D80, &qword_2227A0660) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v12 = v39 - v11;
  v13 = MEMORY[0x277CC9318];
  if (a2 == MEMORY[0x277CC9318] || sub_222782C2C(0, &qword_280BC4438, 0x277CBEA90) == a2)
  {
    result = sub_22277EE1C(a1);
    if (!v5)
    {
      if (v16 >> 60 == 15)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        *(a4 + 24) = v13;
        *a4 = result;
        *(a4 + 8) = v16;
      }
    }

    return result;
  }

  v14 = sub_22279EC40();
  if (v14 == a2 || sub_222782C2C(0, &qword_27D019D88, 0x277CBEAA8) == a2)
  {
    result = sub_22277EB40(a1, v12);
    if (!v5)
    {
      v17 = *(v14 - 8);
      if ((*(v17 + 48))(v12, 1, v14) == 1)
      {
        result = sub_222782970(v12, &qword_27D019D80, &qword_2227A0660);
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        *(a4 + 24) = v14;
        boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a4);
        return (*(v17 + 32))(boxed_opaque_existential_1Tm, v12, v14);
      }
    }

    return result;
  }

  if (swift_dynamicCastMetatype())
  {
    *(a4 + 24) = &type metadata for CBORCodableWrapper;
    *a4 = a1;
    return a1;
  }

  v18 = swift_conformsToProtocol2();
  if (v18 && a2)
  {
    return sub_22277F568(a1, a2, v18, a4);
  }

  swift_beginAccess();
  v20 = a1;
  v21 = v4;
  MEMORY[0x223DBFFB0]();
  v22 = v4;
  if (*((*(v22 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v22 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v34 = *((*(v4 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22279EDA0();
    v22 = v4;
  }

  sub_22279EDB0();
  swift_endAccess();
  v39[3] = type metadata accessor for _CBORDecoder();
  v39[4] = sub_22278276C(&qword_27D019D90);
  v39[0] = v22;
  v41 = a2;
  v42 = a3;
  __swift_allocate_boxed_opaque_existential_1Tm(v40);

  sub_22279EDC0();
  if (!v5)
  {
    goto LABEL_28;
  }

  __swift_deallocate_boxed_opaque_existential_1(v40);
  a4 = v4;
  swift_beginAccess();
  v23 = *(v4 + 24);
  if (v23 >> 62)
  {
    if (v23 < 0)
    {
      v35 = *(v4 + 24);
    }

    if (sub_22279EFA0())
    {
      goto LABEL_23;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_39;
  }

LABEL_23:
  v24 = sub_222792F2C();
  if (v24)
  {
    goto LABEL_34;
  }

  v25 = *(v4 + 24);
  if (v25 >> 62)
  {
    goto LABEL_42;
  }

  v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = __OFSUB__(v26, 1);
  result = (v26 - 1);
  if (!v27)
  {
LABEL_33:
    v24 = sub_222792E9C(result);
    goto LABEL_34;
  }

  while (1)
  {
    __break(1u);
LABEL_28:
    v28 = v41;
    v29 = __swift_project_boxed_opaque_existential_1(v40, v41);
    *(a4 + 24) = v28;
    v30 = __swift_allocate_boxed_opaque_existential_1Tm(a4);
    (*(*(v28 - 8) + 16))(v30, v29, v28);
    __swift_destroy_boxed_opaque_existential_1Tm(v40);
    a4 = v21;
    swift_beginAccess();
    v31 = *(v21 + 24);
    if (v31 >> 62)
    {
      break;
    }

    if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    v36 = sub_22279EFA0();
    v27 = __OFSUB__(v36, 1);
    result = (v36 - 1);
    if (!v27)
    {
      goto LABEL_33;
    }
  }

LABEL_40:
  if (!sub_22279EFA0())
  {
    goto LABEL_41;
  }

LABEL_30:
  v24 = sub_222792F2C();
  if (v24)
  {
LABEL_34:

    return swift_endAccess();
  }

  v32 = *(v21 + 24);
  if (v32 >> 62)
  {
    if (v32 < 0)
    {
      v37 = *(v21 + 24);
    }

    v38 = sub_22279EFA0();
    v27 = __OFSUB__(v38, 1);
    result = (v38 - 1);
    if (v27)
    {
      goto LABEL_49;
    }

    goto LABEL_33;
  }

  v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v27 = __OFSUB__(v33, 1);
  result = (v33 - 1);
  if (!v27)
  {
    goto LABEL_33;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_22277F568@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v9 = sub_22279EEA0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v204 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 dictionary];
  if (!v14)
  {
    v26 = sub_22279EEB0();
    v27 = swift_allocError();
    v29 = v28;
    v225 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v29 = a2;
    swift_beginAccess();
    v30 = *(v4 + 16);

    v31 = [a1 description];
    v32 = sub_22279ECB0();
    v34 = v33;

    *&v229 = v32;
    *(&v229 + 1) = v34;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v35 = sub_22279F5B0();
    MEMORY[0x223DBFF30](v35);

    sub_22279EE90();
    (*(*(v26 - 8) + 104))(v29, *MEMORY[0x277D84160], v26);
    v224 = v27;
    return swift_willThrow();
  }

  v15 = v14;
  v211 = a4;
  v221 = v4;
  v205 = v13;
  v207 = v10;
  v208 = v9;
  v16 = sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_222782704(&qword_280BC4440, qword_280BC4448, off_2784B4108);
  v215 = v16;
  v17 = sub_22279EC60();

  v18 = sub_22278137C(MEMORY[0x277D84F90]);
  v19 = (*(a3 + 8))(a2, a3);
  v219 = v20;
  v220 = v19;
  v214 = (*(a3 + 16))(a2, a3);
  v210 = v21;
  v206 = a2;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v22 = sub_22279EF90();
    v225 = 0;
    v23 = 0;
    v24 = 0;
    v25 = v22 | 0x8000000000000000;
  }

  else
  {
    v37 = -1 << *(v17 + 32);
    v23 = ~v37;
    v38 = *(v17 + 64);
    v225 = v17 + 64;
    v39 = -v37;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v24 = v40 & v38;
    v25 = v17;
  }

  v212 = v17;

  v41 = 0;
  v42 = (v23 + 64) >> 6;
  v43 = 0x2784B4000uLL;
  v218 = v42;
  v217 = v25;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          v51 = sub_22279EFC0();
          if (!v51)
          {
            goto LABEL_138;
          }

          v53 = v52;
          v46 = v41;
          v222 = v18;
          *&v229 = v51;
          swift_dynamicCast();
          v50 = *&v228[0];
          *&v229 = v53;
          swift_dynamicCast();
          v223 = *&v228[0];
          v216 = v41;
          v47 = v24;
          if (!v50)
          {
LABEL_140:
            v18 = v222;
LABEL_138:
            sub_2227828A8();

            *&v228[0] = v18;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D98, &qword_2227A0668);
            v174 = v211;
            result = swift_dynamicCast();
            if ((result & 1) == 0)
            {
              *v174 = 0u;
              v174[1] = 0u;
            }

            return result;
          }
        }

        else
        {
          v44 = v41;
          v45 = v24;
          v46 = v41;
          if (!v24)
          {
            while (1)
            {
              v46 = v44 + 1;
              if (__OFADD__(v44, 1))
              {
                break;
              }

              if (v46 >= v42)
              {
                goto LABEL_138;
              }

              v45 = *(v225 + 8 * v46);
              ++v44;
              if (v45)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
LABEL_151:
            sub_22278291C(v228);

            goto LABEL_145;
          }

LABEL_15:
          v216 = v41;
          v222 = v18;
          v47 = (v45 - 1) & v45;
          v48 = (v46 << 9) | (8 * __clz(__rbit64(v45)));
          v49 = *(*(v25 + 56) + v48);
          v50 = *(*(v25 + 48) + v48);
          v223 = v49;
          if (!v50)
          {
            goto LABEL_140;
          }
        }

        v54 = [v50 *(v43 + 2608)];
        if (v54 > 4)
        {
          break;
        }

        if (v54 < 2)
        {
          goto LABEL_27;
        }

        if ((v54 - 2) >= 2)
        {
          if (v54 != 4)
          {
LABEL_149:

            v190 = v221;
            swift_beginAccess();
            v191 = *(v190 + 16);
            *&v229 = 0;
            *(&v229 + 1) = 0xE000000000000000;

            sub_22279EE60();
            v192 = [v50 description];
            v193 = sub_22279ECB0();
            v195 = v194;

            MEMORY[0x223DBFF30](v193, v195);

            MEMORY[0x223DBFF30](0x6570797420666F20, 0xE900000000000020);
            *&v226 = [v50 *(v43 + 2608)];
            type metadata accessor for CBORType(0);
            sub_22279EF50();
            MEMORY[0x223DBFF30](0xD000000000000018, 0x80000002227A1F20);
            v196 = v205;
            sub_22279EE90();
            v197 = sub_22279EEB0();
            v198 = swift_allocError();
            v200 = v199;
            v201 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
            *v200 = v206;
            v202 = v207;
            v203 = v208;
            (*(v207 + 16))(&v200[v201], v196, v208);
            (*(*(v197 - 8) + 104))(v200, *MEMORY[0x277D84160], v197);
            v224 = v198;
            swift_willThrow();
            sub_2227828A8();

            return (*(v202 + 8))(v196, v203);
          }

          v77 = v224;
          sub_22277F070(&v229, v50, v214, v210);
          v224 = v77;
          if (v77)
          {
            goto LABEL_144;
          }

          v213 = v47;
          v209 = v50;
          if (!v230)
          {
            goto LABEL_162;
          }

          sub_2227828C4(&v229, v228);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DB0, &qword_2227A0678);
          swift_dynamicCast();
          *&v229 = v226;
          sub_222782A78(&qword_27D019DB8, &qword_27D019DB0, &qword_2227A0678);
          sub_22279EE50();
          v78 = v224;
          sub_22277F070(&v229, v223, v220, v219);
          v224 = v78;
          if (v78)
          {
            sub_22278291C(v228);

LABEL_142:
LABEL_145:
            sub_2227828A8();
          }

          v79 = v222;
          if (v230)
          {
            sub_2227828C4(&v229, &v226);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v231 = v79;
            v81 = sub_222794F34(v228);
            v83 = v79[2];
            v84 = (v82 & 1) == 0;
            v68 = __OFADD__(v83, v84);
            v85 = v83 + v84;
            if (v68)
            {
              goto LABEL_155;
            }

            v86 = v82;
            v25 = v217;
            if (v79[3] < v85)
            {
              sub_2227885C4(v85, isUniquelyReferenced_nonNull_native);
              v81 = sub_222794F34(v228);
              v88 = v209;
              if ((v86 & 1) != (v87 & 1))
              {
                goto LABEL_164;
              }

LABEL_83:
              v18 = v231;
              if ((v86 & 1) == 0)
              {
                goto LABEL_84;
              }

              goto LABEL_110;
            }

            v88 = v209;
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_83;
            }

            v167 = v23;
            v168 = v43;
            v169 = v81;
            sub_222789B48();
            v81 = v169;
            v43 = v168;
            v23 = v167;
            v18 = v231;
            if ((v86 & 1) == 0)
            {
LABEL_84:
              v18[(v81 >> 6) + 8] |= 1 << v81;
              v131 = v81;
              sub_2227829D0(v228, v18[6] + 40 * v81);
              sub_2227828C4(&v226, (v18[7] + 32 * v131));

              sub_22278291C(v228);
              v132 = v18[2];
              v68 = __OFADD__(v132, 1);
              v133 = v132 + 1;
              if (v68)
              {
                goto LABEL_159;
              }

              goto LABEL_135;
            }

LABEL_110:
            v155 = (v18[7] + 32 * v81);
            __swift_destroy_boxed_opaque_existential_1Tm(v155);
            sub_2227828C4(&v226, v155);

            sub_22278291C(v228);
LABEL_136:
            v42 = v218;
LABEL_137:
            v24 = v213;
            v41 = v46;
          }

          else
          {
            sub_222782970(&v229, &qword_27D019D78, &qword_2227A0658);
            v126 = sub_222794F34(v228);
            v18 = v79;
            if (v127)
            {
              v128 = v126;
              v129 = swift_isUniquelyReferenced_nonNull_native();
              v231 = v79;
              v25 = v217;
              v130 = v209;
              if ((v129 & 1) == 0)
              {
                sub_222789B48();
                v18 = v231;
              }

              sub_22278291C(v18[6] + 40 * v128);
              sub_2227828C4((v18[7] + 32 * v128), &v226);
              sub_222789008(v128, v18);

              sub_22278291C(v228);
            }

            else
            {
              sub_22278291C(v228);

              v226 = 0u;
              v227 = 0u;
              v25 = v217;
            }

            v24 = v213;
            sub_222782970(&v226, &qword_27D019D78, &qword_2227A0658);
            v41 = v46;
            v42 = v218;
          }
        }

        else if (v214 == MEMORY[0x277D837D0])
        {
          v213 = v47;
          v89 = [v50 string];
          if (v89)
          {
            v90 = v23;
            v91 = v89;
            v92 = sub_22279ECB0();
            v94 = v93;

            v23 = v90;
          }

          else
          {
            v92 = 0;
            v94 = 0;
          }

          *&v229 = v92;
          *(&v229 + 1) = v94;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DD8, &qword_2227A0688);
          sub_222782BB0();
          sub_22279EE50();
          v134 = v224;
          sub_22277F070(&v229, v223, v220, v219);
          v224 = v134;
          if (v134)
          {
LABEL_143:
            sub_22278291C(v228);

            goto LABEL_145;
          }

          v25 = v217;
          if (v230)
          {
            sub_2227828C4(&v229, &v226);
            v135 = v222;
            v136 = swift_isUniquelyReferenced_nonNull_native();
            v231 = v135;
            v137 = sub_222794F34(v228);
            v139 = v135[2];
            v140 = (v138 & 1) == 0;
            v68 = __OFADD__(v139, v140);
            v141 = v139 + v140;
            v43 = 0x2784B4000;
            if (v68)
            {
              goto LABEL_156;
            }

            v142 = v138;
            if (v135[3] < v141)
            {
              sub_2227885C4(v141, v136);
              v137 = sub_222794F34(v228);
              if ((v142 & 1) != (v143 & 1))
              {
                goto LABEL_164;
              }

              goto LABEL_103;
            }

            if (v136)
            {
LABEL_103:
              v153 = v231;
              if (v142)
              {
                goto LABEL_104;
              }
            }

            else
            {
              v170 = v137;
              sub_222789B48();
              v137 = v170;
              v43 = 0x2784B4000;
              v153 = v231;
              if (v142)
              {
LABEL_104:
                v154 = (v153[7] + 32 * v137);
                __swift_destroy_boxed_opaque_existential_1Tm(v154);
                sub_2227828C4(&v226, v154);

                sub_22278291C(v228);
                v42 = v218;
                v18 = v153;
                goto LABEL_137;
              }
            }

            v153[(v137 >> 6) + 8] |= 1 << v137;
            v171 = v137;
            sub_2227829D0(v228, v153[6] + 40 * v137);
            sub_2227828C4(&v226, (v153[7] + 32 * v171));

            sub_22278291C(v228);
            v172 = v153[2];
            v68 = __OFADD__(v172, 1);
            v133 = v172 + 1;
            if (v68)
            {
              goto LABEL_160;
            }

            v18 = v153;
LABEL_135:
            v18[2] = v133;
            goto LABEL_136;
          }

          sub_222782970(&v229, &qword_27D019D78, &qword_2227A0658);
          v144 = v222;
          v145 = sub_222794F34(v228);
          v43 = 0x2784B4000;
          if (v146)
          {
            v147 = v145;
            v148 = swift_isUniquelyReferenced_nonNull_native();
            v231 = v144;
            if ((v148 & 1) == 0)
            {
              sub_222789B48();
              v144 = v231;
            }

            sub_22278291C(*(v144 + 48) + 40 * v147);
            sub_2227828C4((*(v144 + 56) + 32 * v147), &v226);
            v122 = v144;
            sub_222789008(v147, v144);

            sub_22278291C(v228);
          }

          else
          {
            v122 = v144;
            sub_22278291C(v228);

            v226 = 0u;
            v227 = 0u;
          }

          sub_222782970(&v226, &qword_27D019D78, &qword_2227A0658);
          v41 = v46;
          v24 = v213;
LABEL_118:
          v42 = v218;
          v18 = v122;
        }

        else
        {
          v209 = v23;
          if (v214 != MEMORY[0x277CC9318])
          {

            v175 = v221;
            swift_beginAccess();
            v176 = v43;
            v177 = *(v175 + 16);
            *&v229 = 0;
            *(&v229 + 1) = 0xE000000000000000;

            sub_22279EE60();
            v178 = [v50 description];
            v179 = sub_22279ECB0();
            v181 = v180;

            MEMORY[0x223DBFF30](v179, v181);

            MEMORY[0x223DBFF30](0x6570797420666F20, 0xE900000000000020);
            *&v226 = [v50 (v176 + 504)];
            type metadata accessor for CBORType(0);
            sub_22279EF50();
            MEMORY[0x223DBFF30](0xD000000000000018, 0x80000002227A1F20);
            v182 = v205;
            sub_22279EE90();
            v183 = sub_22279EEB0();
            v184 = swift_allocError();
            v186 = v185;
            v187 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
            *v186 = v206;
            v188 = v207;
            v189 = v208;
            (*(v207 + 16))(&v186[v187], v182, v208);
            (*(*(v183 - 8) + 104))(v186, *MEMORY[0x277D84160], v183);
            v224 = v184;
            swift_willThrow();
            sub_2227828A8();

            return (*(v188 + 8))(v182, v189);
          }

          v55 = [v50 data];
          if (v55)
          {
            v56 = v55;
            v57 = sub_22279EC10();
            v59 = v58;
          }

          else
          {
            v57 = 0;
            v59 = 0xF000000000000000;
          }

          v23 = v209;
          *&v229 = v57;
          *(&v229 + 1) = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DC0, &qword_2227A0680);
          sub_222782AD8();
          sub_22279EE50();
          v106 = v224;
          sub_22277F070(&v229, v223, v220, v219);
          v224 = v106;
          if (v106)
          {
            goto LABEL_143;
          }

          v25 = v217;
          if (!v230)
          {
            sub_222782970(&v229, &qword_27D019D78, &qword_2227A0658);
            v116 = v222;
            v117 = sub_222794F34(v228);
            if (v118)
            {
              v119 = v117;
              v120 = v47;
              v121 = swift_isUniquelyReferenced_nonNull_native();
              v231 = v116;
              if ((v121 & 1) == 0)
              {
                sub_222789B48();
                v116 = v231;
              }

              sub_22278291C(*(v116 + 48) + 40 * v119);
              sub_2227828C4((*(v116 + 56) + 32 * v119), &v226);
              v122 = v116;
              sub_222789008(v119, v116);

              sub_22278291C(v228);
            }

            else
            {
              v120 = v47;
              v122 = v116;
              sub_22278291C(v228);

              v226 = 0u;
              v227 = 0u;
            }

            sub_222782970(&v226, &qword_27D019D78, &qword_2227A0658);
            v24 = v120;
            v41 = v46;
            goto LABEL_118;
          }

          sub_2227828C4(&v229, &v226);
          v107 = v222;
          v108 = swift_isUniquelyReferenced_nonNull_native();
          v231 = v107;
          v109 = sub_222794F34(v228);
          v111 = v107[2];
          v112 = (v110 & 1) == 0;
          v68 = __OFADD__(v111, v112);
          v113 = v111 + v112;
          if (v68)
          {
            goto LABEL_154;
          }

          v114 = v110;
          if (v107[3] < v113)
          {
            sub_2227885C4(v113, v108);
            v109 = sub_222794F34(v228);
            if ((v114 & 1) != (v115 & 1))
            {
              goto LABEL_164;
            }

LABEL_76:
            v123 = v47;
            v124 = v231;
            if (v114)
            {
              goto LABEL_77;
            }

            goto LABEL_127;
          }

          if (v108)
          {
            goto LABEL_76;
          }

          v123 = v47;
          v162 = v43;
          v163 = v109;
          sub_222789B48();
          v109 = v163;
          v43 = v162;
          v124 = v231;
          if (v114)
          {
LABEL_77:
            v125 = (v124[7] + 32 * v109);
            __swift_destroy_boxed_opaque_existential_1Tm(v125);
            sub_2227828C4(&v226, v125);

            sub_22278291C(v228);
            v42 = v218;
            v18 = v124;
            goto LABEL_129;
          }

LABEL_127:
          v124[(v109 >> 6) + 8] |= 1 << v109;
          v164 = v109;
          sub_2227829D0(v228, v124[6] + 40 * v109);
          sub_2227828C4(&v226, (v124[7] + 32 * v164));

          sub_22278291C(v228);
          v165 = v124[2];
          v68 = __OFADD__(v165, 1);
          v166 = v165 + 1;
          if (v68)
          {
            goto LABEL_158;
          }

          v18 = v124;
          v124[2] = v166;
          v42 = v218;
LABEL_129:
          v24 = v123;
          v41 = v46;
        }
      }

      if ((v54 - 6) < 5)
      {
        break;
      }

      if (v54 != 5)
      {
        if (v54 != 13)
        {
          goto LABEL_149;
        }

        break;
      }

      v95 = v224;
      sub_22277F070(&v229, v50, v214, v210);
      v224 = v95;
      if (v95)
      {
LABEL_144:

        goto LABEL_145;
      }

      v213 = v47;
      v209 = v23;
      if (!v230)
      {
        goto LABEL_163;
      }

      v96 = v43;
      v97 = v25;
      v25 = v50;
      sub_2227828C4(&v229, v228);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DA0, &qword_2227A0670);
      swift_dynamicCast();
      *&v229 = v226;
      sub_222782A78(&qword_27D019DA8, &qword_27D019DA0, &qword_2227A0670);
      sub_22279EE50();
      v98 = v224;
      sub_22277F070(&v229, v223, v220, v219);
      v224 = v98;
      if (v98)
      {
        goto LABEL_151;
      }

      v88 = v50;
      v18 = v222;
      if (v230)
      {
        sub_2227828C4(&v229, &v226);
        v99 = swift_isUniquelyReferenced_nonNull_native();
        v231 = v18;
        v81 = sub_222794F34(v228);
        v101 = v18[2];
        v102 = (v100 & 1) == 0;
        v68 = __OFADD__(v101, v102);
        v103 = v101 + v102;
        if (v68)
        {
          goto LABEL_157;
        }

        v104 = v100;
        v25 = v97;
        v43 = v96;
        if (v18[3] >= v103)
        {
          if ((v99 & 1) == 0)
          {
            v173 = v81;
            sub_222789B48();
            v81 = v173;
            v43 = v96;
          }
        }

        else
        {
          sub_2227885C4(v103, v99);
          v81 = sub_222794F34(v228);
          if ((v104 & 1) != (v105 & 1))
          {
            goto LABEL_164;
          }
        }

        v23 = v209;
        v18 = v231;
        if ((v104 & 1) == 0)
        {
          v231[(v81 >> 6) + 8] |= 1 << v81;
          v156 = v81;
          sub_2227829D0(v228, v18[6] + 40 * v81);
          sub_2227828C4(&v226, (v18[7] + 32 * v156));

          sub_22278291C(v228);
          v157 = v18[2];
          v68 = __OFADD__(v157, 1);
          v133 = v157 + 1;
          if (v68)
          {
            goto LABEL_161;
          }

          goto LABEL_135;
        }

        goto LABEL_110;
      }

      sub_222782970(&v229, &qword_27D019D78, &qword_2227A0658);
      v149 = sub_222794F34(v228);
      v25 = v97;
      if (v150)
      {
        v151 = v149;
        v152 = swift_isUniquelyReferenced_nonNull_native();
        v231 = v18;
        v43 = v96;
        if ((v152 & 1) == 0)
        {
          sub_222789B48();
          v18 = v231;
        }

        sub_22278291C(v18[6] + 40 * v151);
        sub_2227828C4((v18[7] + 32 * v151), &v226);
        sub_222789008(v151, v18);

        sub_22278291C(v228);
      }

      else
      {
        sub_22278291C(v228);

        v226 = 0u;
        v227 = 0u;
        v43 = v96;
      }

      v23 = v209;
      sub_222782970(&v226, &qword_27D019D78, &qword_2227A0658);
      v41 = v46;
      v24 = v213;
      v42 = v218;
    }

LABEL_27:
    v60 = v47;
    v61 = v50;
    *&v229 = [v50 numeric];
    sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
    sub_222782704(&qword_27D019DF0, &qword_27D019DE8, 0x277CCABB0);
    sub_22279EE50();
    v62 = v224;
    sub_22277F070(&v229, v223, v220, v219);
    v224 = v62;
    if (v62)
    {
      sub_22278291C(v228);

      goto LABEL_142;
    }

    v18 = v222;
    if (v230)
    {
      break;
    }

    sub_222782970(&v229, &qword_27D019D78, &qword_2227A0658);
    v72 = sub_222794F34(v228);
    if (v73)
    {
      v74 = v72;
      v75 = swift_isUniquelyReferenced_nonNull_native();
      v231 = v18;
      if ((v75 & 1) == 0)
      {
        sub_222789B48();
        v18 = v231;
      }

      sub_22278291C(v18[6] + 40 * v74);
      sub_2227828C4((v18[7] + 32 * v74), &v226);
      sub_222789008(v74, v18);

      sub_22278291C(v228);
    }

    else
    {
      sub_22278291C(v228);

      v226 = 0u;
      v227 = 0u;
    }

    sub_222782970(&v226, &qword_27D019D78, &qword_2227A0658);
    v41 = v46;
    v24 = v47;
LABEL_125:
    v42 = v218;
    v25 = v217;
    v43 = 0x2784B4000;
  }

  sub_2227828C4(&v229, &v226);
  v63 = swift_isUniquelyReferenced_nonNull_native();
  v231 = v18;
  v64 = sub_222794F34(v228);
  v66 = v18[2];
  v67 = (v65 & 1) == 0;
  v68 = __OFADD__(v66, v67);
  v69 = v66 + v67;
  if (!v68)
  {
    v70 = v65;
    if (v18[3] >= v69)
    {
      if (v63)
      {
        goto LABEL_38;
      }

      v158 = v64;
      sub_222789B48();
      v64 = v158;
      v47 = v60;
      v18 = v231;
      if ((v70 & 1) == 0)
      {
        goto LABEL_122;
      }

LABEL_39:
      v76 = (v18[7] + 32 * v64);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      sub_2227828C4(&v226, v76);

      sub_22278291C(v228);
    }

    else
    {
      sub_2227885C4(v69, v63);
      v64 = sub_222794F34(v228);
      if ((v70 & 1) != (v71 & 1))
      {
        goto LABEL_164;
      }

LABEL_38:
      v18 = v231;
      if (v70)
      {
        goto LABEL_39;
      }

LABEL_122:
      v18[(v64 >> 6) + 8] |= 1 << v64;
      v159 = v64;
      sub_2227829D0(v228, v18[6] + 40 * v64);
      sub_2227828C4(&v226, (v18[7] + 32 * v159));

      sub_22278291C(v228);
      v160 = v18[2];
      v68 = __OFADD__(v160, 1);
      v161 = v160 + 1;
      if (v68)
      {
        goto LABEL_153;
      }

      v18[2] = v161;
    }

    v41 = v46;
    v24 = v47;
    goto LABEL_125;
  }

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
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  result = sub_22279F470();
  __break(1u);
  return result;
}

void *sub_222780FD4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

void *sub_222780FE4(void *result)
{
  v2 = result[2];
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_222789FB0(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E40, &qword_2227A0B20);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

unint64_t sub_2227810EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E10, &qword_2227A06A8);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E18, &qword_2227A06B0);
    v8 = sub_22279F020();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_222782CD8(v10, v6, &qword_27D019E10, &qword_2227A06A8);
      result = sub_222794ED0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22279EF70();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_2227828C4(&v6[v9], (v8[7] + 32 * v14));
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_22278137C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DF8, &qword_2227A0690);
    v3 = sub_22279F020();
    v4 = a1 + 32;

    while (1)
    {
      sub_222782CD8(v4, v13, &qword_27D019E00, &qword_2227A0698);
      result = sub_222794F34(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_2227828C4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

unint64_t sub_2227814B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
    v3 = sub_22279F020();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_222794F78(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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

unint64_t sub_2227815B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
    v3 = sub_22279F020();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_222794F78(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_2227816A8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = MEMORY[0x277D84F90];
  v8 = (v3 + 24);
  swift_beginAccess();
  v9 = a1;
  MEMORY[0x223DBFFB0]();
  if (*((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v11 = *((*v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_22279EDA0();
  }

  sub_22279EDB0();
  swift_endAccess();
  *(v4 + 16) = a2;
  *(v4 + 32) = a3;
  return v4;
}

uint64_t dispatch thunk of CBORDecoder.decode<A>(_:from:)()
{
  return (*(*v0 + 120))();
}

{
  return (*(*v0 + 136))();
}

uint64_t sub_2227818D0(void *a1)
{
  if ([a1 isBoolean])
  {
    v3 = [a1 BOOLValue];
  }

  else
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v6 = MEMORY[0x277D839B0];
    swift_beginAccess();
    v8 = *(v1 + 16);

    v9 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](1819242306, 0xE400000000000000);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    v3 = swift_willThrow();
  }

  return v3 & 1;
}

void sub_222781A68(void *a1)
{
  if ([a1 isFloatNumber])
  {
    v3 = [a1 numeric];
    [v3 doubleValue];
  }

  else
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v6 = MEMORY[0x277D839F8];
    swift_beginAccess();
    v8 = *(v1 + 16);

    v9 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](0x656C62756F44, 0xE600000000000000);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    swift_willThrow();
  }
}

void sub_222781C30(void *a1)
{
  if ([a1 isFloatNumber])
  {
    v3 = [a1 numeric];
    [v3 floatValue];
  }

  else
  {
    v4 = sub_22279EEB0();
    swift_allocError();
    v6 = v5;
    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v6 = MEMORY[0x277D83A90];
    swift_beginAccess();
    v8 = *(v1 + 16);

    v9 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](0x74616F6C46, 0xE500000000000000);
    sub_22279EE90();
    (*(*(v4 - 8) + 104))(v6, *MEMORY[0x277D84160], v4);
    swift_willThrow();
  }
}

void *sub_222781DF8(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v3 = [a1 numeric];
    v4 = [v3 charValue];
  }

  else
  {
    v5 = sub_22279EEB0();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v7 = MEMORY[0x277D84900];
    swift_beginAccess();
    v9 = *(v1 + 16);

    v10 = [a1 description];
    v11 = sub_22279ECB0();
    v13 = v12;

    v15[0] = v11;
    v15[1] = v13;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v4 = v15;
    MEMORY[0x223DBFF30](947154505, 0xE400000000000000);
    sub_22279EE90();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
    swift_willThrow();
  }

  return v4;
}

void *sub_222781FB0(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v3 = [a1 numeric];
    v4 = [v3 shortValue];
  }

  else
  {
    v5 = sub_22279EEB0();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v7 = MEMORY[0x277D84958];
    swift_beginAccess();
    v9 = *(v1 + 16);

    v10 = [a1 description];
    v11 = sub_22279ECB0();
    v13 = v12;

    v15[0] = v11;
    v15[1] = v13;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v4 = v15;
    MEMORY[0x223DBFF30](0x3631746E49, 0xE500000000000000);
    sub_22279EE90();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
    swift_willThrow();
  }

  return v4;
}

void *sub_22278216C(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v3 = [a1 numeric];
    v4 = [v3 unsignedCharValue];
  }

  else
  {
    v5 = sub_22279EEB0();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v7 = MEMORY[0x277D84B78];
    swift_beginAccess();
    v9 = *(v1 + 16);

    v10 = [a1 description];
    v11 = sub_22279ECB0();
    v13 = v12;

    v15[0] = v11;
    v15[1] = v13;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v4 = v15;
    MEMORY[0x223DBFF30](0x38746E4955, 0xE500000000000000);
    sub_22279EE90();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
    swift_willThrow();
  }

  return v4;
}

void *sub_222782328(void *a1)
{
  if ([a1 isWholeNumber])
  {
    v3 = [a1 numeric];
    v4 = [v3 unsignedShortValue];
  }

  else
  {
    v5 = sub_22279EEB0();
    swift_allocError();
    v7 = v6;
    v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v7 = MEMORY[0x277D84C58];
    swift_beginAccess();
    v9 = *(v1 + 16);

    v10 = [a1 description];
    v11 = sub_22279ECB0();
    v13 = v12;

    v15[0] = v11;
    v15[1] = v13;
    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    v4 = v15;
    MEMORY[0x223DBFF30](0x3631746E4955, 0xE600000000000000);
    sub_22279EE90();
    (*(*(v5 - 8) + 104))(v7, *MEMORY[0x277D84160], v5);
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_2227824E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  if ([a1 isWholeNumber])
  {
    v11 = [a1 numeric];
    v12 = [v11 *a5];

    return v12;
  }

  else
  {
    v14 = sub_22279EEB0();
    swift_allocError();
    v16 = v15;
    v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v16 = a2;
    swift_beginAccess();
    v17 = *(v5 + 16);

    v18 = [a1 description];
    sub_22279ECB0();

    MEMORY[0x223DBFF30](0x20746F6E20736920, 0xEA00000000002061);
    MEMORY[0x223DBFF30](a3, a4);
    sub_22279EE90();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    return swift_willThrow();
  }
}

unint64_t sub_2227826B0()
{
  result = qword_27D019D68;
  if (!qword_27D019D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019D68);
  }

  return result;
}

uint64_t sub_222782704(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_222782C2C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22278276C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for _CBORDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *__swift_deallocate_boxed_opaque_existential_1(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80));
    JUMPOUT(0x223DC0EF0);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

_OWORD *sub_2227828C4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_222782970(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_222782A78(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_222782AD8()
{
  result = qword_27D019DC8;
  if (!qword_27D019DC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D019DC0, &qword_2227A0680);
    sub_222782B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019DC8);
  }

  return result;
}

unint64_t sub_222782B5C()
{
  result = qword_27D019DD0;
  if (!qword_27D019DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019DD0);
  }

  return result;
}

unint64_t sub_222782BB0()
{
  result = qword_27D019DE0;
  if (!qword_27D019DE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D019DD8, &qword_2227A0688);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019DE0);
  }

  return result;
}

uint64_t sub_222782C2C(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_222782CD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_222782D54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_222782DA0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_222782DFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_222782E44(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_222782E90(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_222782ED8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_222782F30()
{
  result = qword_27D019E30;
  if (!qword_27D019E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E30);
  }

  return result;
}

uint64_t sub_222782F84()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  if (!(v4 >> 62))
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 < result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v12 = sub_22279EEB0();
    swift_allocError();
    v14 = v13;
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v14 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84170], v12);
    swift_willThrow();
    return v3 & 1;
  }

  if (v4 < 0)
  {
    v11 = v0[3];
  }

  result = sub_22279EFA0();
  if (v2 >= result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v6 = v0[2];
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = v1;
    v8 = v0;
    v9 = MEMORY[0x223DC00C0](v2, v4);
LABEL_7:
    v10 = v9;
    LOBYTE(v3) = sub_2227818D0(v9);

    if (!v7)
    {
      v8[1] = v2 + 1;
    }

    return v3 & 1;
  }

  if (v2 < 0)
  {
    __break(1u);
  }

  else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = v1;
    v8 = v0;
    v9 = *(v4 + 8 * v2 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_222783134()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  if (!(v4 >> 62))
  {
    if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = sub_22279EEB0();
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v13 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84170], v11);
    swift_willThrow();
    return;
  }

  if (v4 < 0)
  {
    v10 = v0[3];
  }

  if (v2 >= sub_22279EFA0())
  {
    goto LABEL_12;
  }

LABEL_3:
  v5 = v0[2];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = v1;
      v7 = v0;
      v8 = *(v4 + 8 * v2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v6 = v1;
  v7 = v0;
  v8 = MEMORY[0x223DC00C0](v2, v4);
LABEL_7:
  v9 = v8;
  sub_222781A68(v8);

  if (!v6)
  {
    v7[1] = v2 + 1;
  }
}

void sub_2227832EC()
{
  v3 = *v0;
  v2 = v0[1];
  v4 = v0[3];
  if (!(v4 >> 62))
  {
    if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_12:
    v11 = sub_22279EEB0();
    swift_allocError();
    v13 = v12;
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v13 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v11 - 8) + 104))(v13, *MEMORY[0x277D84170], v11);
    swift_willThrow();
    return;
  }

  if (v4 < 0)
  {
    v10 = v0[3];
  }

  if (v2 >= sub_22279EFA0())
  {
    goto LABEL_12;
  }

LABEL_3:
  v5 = v0[2];
  if ((v4 & 0xC000000000000001) == 0)
  {
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2 < *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = v1;
      v7 = v0;
      v8 = *(v4 + 8 * v2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v6 = v1;
  v7 = v0;
  v8 = MEMORY[0x223DC00C0](v2, v4);
LABEL_7:
  v9 = v8;
  sub_222781C30(v8);

  if (!v6)
  {
    v7[1] = v2 + 1;
  }
}

uint64_t sub_2227834A4(uint64_t a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  v11 = *v4;
  v10 = v4[1];
  v12 = v4[3];
  if (!(v12 >> 62))
  {
    result = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 < result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v20 = sub_22279EEB0();
    swift_allocError();
    v18 = v21;
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v18 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v20 - 8) + 104))(v18, *MEMORY[0x277D84170], v20);
    swift_willThrow();
    return v18;
  }

  if (v12 < 0)
  {
    v19 = v4[3];
  }

  result = sub_22279EFA0();
  if (v10 >= result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v14 = v4[2];
  if ((v12 & 0xC000000000000001) != 0)
  {
    v15 = v5;
    v16 = MEMORY[0x223DC00C0](v10, v12);
LABEL_7:
    v17 = v16;
    v18 = sub_2227824E4(v16, a1, a2, a3, a4);

    if (!v15)
    {
      v4[1] = v10 + 1;
    }

    return v18;
  }

  if (v10 < 0)
  {
    __break(1u);
  }

  else if (v10 < *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = v5;
    v16 = *(v12 + 8 * v10 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222783684(uint64_t (*a1)(void))
{
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[3];
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = sub_22279EEB0();
    swift_allocError();
    v13 = v16;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v13 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v15 - 8) + 104))(v13, *MEMORY[0x277D84170], v15);
    swift_willThrow();
    return v13;
  }

  if (v6 < 0)
  {
    v14 = v1[3];
  }

  result = sub_22279EFA0();
  if (v4 >= result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = v1[2];
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = v2;
    v10 = v1;
    v11 = MEMORY[0x223DC00C0](v4, v6);
LABEL_7:
    v12 = v11;
    v13 = a1();

    if (!v9)
    {
      v10[1] = v4 + 1;
    }

    return v13;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = v2;
    v10 = v1;
    v11 = *(v6 + 8 * v4 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222783844(uint64_t (*a1)(void))
{
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[3];
  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v15 = sub_22279EEB0();
    swift_allocError();
    v13 = v16;
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
    *v13 = MEMORY[0x277D839B0];

    sub_22279EE90();
    (*(*(v15 - 8) + 104))(v13, *MEMORY[0x277D84170], v15);
    swift_willThrow();
    return v13;
  }

  if (v6 < 0)
  {
    v14 = v1[3];
  }

  result = sub_22279EFA0();
  if (v4 >= result)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = v1[2];
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = v2;
    v10 = v1;
    v11 = MEMORY[0x223DC00C0](v4, v6);
LABEL_7:
    v12 = v11;
    v13 = a1();

    if (!v9)
    {
      v10[1] = v4 + 1;
    }

    return v13;
  }

  if (v4 < 0)
  {
    __break(1u);
  }

  else if (v4 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v9 = v2;
    v10 = v1;
    v11 = *(v6 + 8 * v4 + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_222783A04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_222783AC0(void *a1)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  return v2(*a1, a1[1]);
}

unint64_t sub_222783AF8()
{
  result = qword_27D019E58;
  if (!qword_27D019E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D019E50, &unk_2227A0B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E58);
  }

  return result;
}

uint64_t sub_222783BA0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22279F4C0();
  sub_22279ECD0();
  sub_22279F4E0();
  if (v4 != 1)
  {
    MEMORY[0x223DC0720](v3);
  }

  return sub_22279F4F0();
}

uint64_t sub_222783C2C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22279ECD0();
  if (v4 == 1)
  {
    return sub_22279F4E0();
  }

  sub_22279F4E0();
  return MEMORY[0x223DC0720](v3);
}

uint64_t sub_222783C90()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  sub_22279F4C0();
  sub_22279ECD0();
  sub_22279F4E0();
  if (v4 != 1)
  {
    MEMORY[0x223DC0720](v3);
  }

  return sub_22279F4F0();
}

uint64_t sub_222783D18()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_222783D48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_22278B4D0(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_222783D78()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t sub_222783D84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22279F090();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_222783DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v6 || (v7 = sub_22279F290(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_222783E64(uint64_t a1)
{
  v2 = sub_222782F30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_222783EA0(uint64_t a1)
{
  v2 = sub_222782F30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Data.init(_:)(void *a1)
{
  v2 = [objc_opt_self() dataWithCBOR_];
  v3 = MEMORY[0x223DBFE40]();

  return v3;
}

uint64_t Data.init(oldCanonicalOrdering:)(void *a1)
{
  v2 = [objc_opt_self() dataWithCBOR:a1 encodingKeyOrder:1];
  v3 = MEMORY[0x223DBFE40]();

  return v3;
}

uint64_t CBORCodableWrapper.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F530();
  v4 = [objc_opt_self() dataWithCBOR_];
  v5 = sub_22279EC10();
  v7 = v6;

  __swift_mutable_project_boxed_opaque_existential_1(v9, v9[3]);
  sub_2227840F8();
  sub_22279F2D0();
  sub_22278414C(v5, v7);
  return __swift_destroy_boxed_opaque_existential_1Tm(v9);
}

unint64_t sub_2227840F8()
{
  result = qword_27D019E60;
  if (!qword_27D019E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E60);
  }

  return result;
}

uint64_t sub_22278414C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t CBORCodableWrapper.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    sub_222784278();
    sub_22279F2A0();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    *a2 = v7;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_222784278()
{
  result = qword_27D019E68;
  if (!qword_27D019E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D019E68);
  }

  return result;
}

uint64_t sub_222784314(void *a1, SEL *a2)
{
  v2 = *a1;
  v3 = [objc_opt_self() *a2];

  v4 = MEMORY[0x223DBFE40](v3);
  return v4;
}

id COSE_Sign1.init(algorithmIdentifier:keyIdentifier:initializationVector:partialInitializationVector:payload:signature:x509Chain:includeCBORTag:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, uint64_t a11, unint64_t a12, void *a13, char a14)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E70, &qword_2227A0B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227A0440;
  v21 = objc_opt_self();
  *(inited + 32) = [v21 cborWithInteger_];
  v22 = a3;
  *(inited + 40) = [v21 cborWithInteger_];
  sub_2227815B0(inited);
  swift_setDeallocating();
  sub_22278AD94(inited + 32);
  v23 = sub_2227815B0(MEMORY[0x277D84F90]);
  v80 = v23;
  v78 = a6;
  if (a3 >> 60 != 15)
  {
    v24 = v23;
    sub_22278AE78(a2, a3);
    v25 = [v21 cborWithInteger_];
    sub_22278AE78(a2, a3);
    v26 = sub_22279EC00();
    v27 = [v21 cborWithData_];

    sub_22278AE64(a2, a3);
    if (v27)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        if (v24 >= 0)
        {
          v24 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        v24 = sub_222787DEC(v24, result + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v27, v25, isUniquelyReferenced_nonNull_native);

      sub_22278AE64(a2, a3);
      v80 = v24;
    }

    else
    {
      v30 = sub_222787CA0(v25);
      sub_22278AE64(a2, a3);
    }

    a6 = v78;
  }

  v31 = a9;
  if (a5 >> 60 != 15)
  {
    sub_22278AE78(a4, a5);
    v32 = [v21 cborWithInteger_];
    sub_22278AE78(a4, a5);
    v33 = sub_22279EC00();
    v34 = [v21 cborWithData_];

    sub_22278AE64(a4, a5);
    if (v34)
    {
      v35 = v80;
      if ((v80 & 0xC000000000000001) != 0)
      {
        if (v80 >= 0)
        {
          v35 = v80 & 0xFFFFFFFFFFFFFF8;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
          goto LABEL_62;
        }

        v35 = sub_222787DEC(v35, result + 1);
      }

      v36 = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v34, v32, v36);

      sub_22278AE64(a4, a5);
      v80 = v35;
    }

    else
    {
      v37 = sub_222787CA0(v32);
      sub_22278AE64(a4, a5);
    }

    a6 = v78;
  }

  v74 = v22;
  if (a7 >> 60 != 15)
  {
    sub_22278AE78(a6, a7);
    v38 = [v21 cborWithInteger_];
    sub_22278AE78(a6, a7);
    v39 = sub_22279EC00();
    v40 = [v21 cborWithData_];

    sub_22278AE64(a6, a7);
    if (v40)
    {
      v41 = v80;
      if ((v80 & 0xC000000000000001) != 0)
      {
        if (v80 >= 0)
        {
          v41 = v80 & 0xFFFFFFFFFFFFFF8;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
          goto LABEL_63;
        }

        v41 = sub_222787DEC(v41, result + 1);
      }

      v42 = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v40, v38, v42);

      sub_22278AE64(v78, a7);
      v80 = v41;
    }

    else
    {
      v43 = sub_222787CA0(v38);
      sub_22278AE64(a6, a7);
    }

    v31 = a9;
  }

  v72 = a4;
  v73 = a5;
  v76 = a2;
  if (a13)
  {
    v44 = a13[2];
    v45 = MEMORY[0x277D84F90];
    if (v44)
    {
      v79 = MEMORY[0x277D84F90];
      sub_22279EF20();
      v46 = a13 + 5;
      do
      {
        v47 = *(v46 - 1);
        v48 = *v46;
        sub_22278AE78(v47, *v46);
        v49 = sub_22279EC00();
        v50 = [v21 cborWithData_];

        sub_22278414C(v47, v48);
        sub_22279EF00();
        v51 = *(v79 + 16);
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v46 += 2;
        --v44;
      }

      while (v44);
      v45 = v79;
    }

    if (v45 >> 62)
    {
      if (sub_22279EFA0() == 1)
      {
        goto LABEL_38;
      }
    }

    else if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
    {
LABEL_38:

      result = [v21 cborWithInteger_];
      if (a13[2])
      {
        v52 = result;
        v53 = a13[4];
        v54 = a13[5];
        sub_22278AE78(v53, v54);

        v55 = sub_22279EC00();
        v56 = [v21 cborWithData_];

        sub_22278414C(v53, v54);
        if (v56)
        {
          v57 = v80;
          if ((v80 & 0xC000000000000001) == 0)
          {
LABEL_45:
            v58 = swift_isUniquelyReferenced_nonNull_native();
            sub_222789510(v56, v52, v58);

            goto LABEL_57;
          }

          if (v80 >= 0)
          {
            v57 = v80 & 0xFFFFFFFFFFFFFF8;
          }

          result = sub_22279EFA0();
          if (!__OFADD__(result, 1))
          {
            sub_222787DEC(v57, result + 1);
            goto LABEL_45;
          }

LABEL_65:
          __break(1u);
          return result;
        }

        v59 = sub_222787CA0(v52);

LABEL_56:
        goto LABEL_57;
      }

      __break(1u);
      goto LABEL_61;
    }

    v60 = [v21 cborWithInteger_];
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    v61 = sub_22279ED70();

    v62 = [v21 cborWithArray_];

    if (!v62)
    {
      v59 = sub_222787CA0(v60);

      goto LABEL_56;
    }

    v63 = v80;
    if ((v80 & 0xC000000000000001) != 0)
    {
      if (v80 >= 0)
      {
        v63 = v80 & 0xFFFFFFFFFFFFFF8;
      }

      result = sub_22279EFA0();
      if (__OFADD__(result, 1))
      {
        goto LABEL_64;
      }

      sub_222787DEC(v63, result + 1);
    }

    v64 = swift_isUniquelyReferenced_nonNull_native();
    sub_222789510(v62, v60, v64);
  }

LABEL_57:
  sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_22278ADFC();
  v65 = sub_22279EC50();

  v66 = sub_22279EC50();

  v67 = 0;
  if (a10 >> 60 != 15)
  {
    v67 = sub_22279EC00();
    sub_22278AE64(a8, a10);
  }

  v68 = objc_allocWithZone(COSE_Sign1);
  v69 = sub_22279EC00();
  v70 = [v68 initWithProtectedHeaders:v65 unprotectedHeaders:v66 payload:v67 signature:v69 includeCBORTag:a14 & 1];

  sub_22278414C(a11, a12);
  sub_22278AE64(v78, a7);
  sub_22278AE64(v72, v73);
  result = sub_22278AE64(v76, v74);
  *v31 = v70;
  return result;
}

uint64_t COSE_Sign1.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v14, v14[3]);
    sub_222784278();
    sub_22279F2A0();
    v6 = [objc_allocWithZone(COSE_Sign1) initWithCBOR_];
    if (v6)
    {
      v7 = v6;

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      *a2 = v7;
    }

    else
    {
      v9 = sub_22279EEB0();
      swift_allocError();
      v11 = v10;
      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
      *v11 = &type metadata for COSE_Sign1;
      sub_22279EE90();
      (*(*(v9 - 8) + 104))(v11, *MEMORY[0x277D84160], v9);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v14);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_222784E84(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22279ED80();

  return v4;
}

uint64_t COSE_Sign1.X509Hash.algorithmIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t COSE_Sign1.X509Hash.value.getter()
{
  v1 = *(v0 + 16);
  sub_22278AE78(v1, *(v0 + 24));
  return v1;
}

unint64_t sub_222784F50()
{
  if (*v0)
  {
    result = 0x65756C6176;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_222784F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000002227A1FA0 == a2 || (sub_22279F290() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22279F290();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_222785088(uint64_t a1)
{
  v2 = sub_22278AF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2227850C4(uint64_t a1)
{
  v2 = sub_22278AF20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t COSE_Sign1.X509Hash.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E88, &qword_2227A0B58);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v15 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v16 = v1[3];
  v17 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22278AF20();
  sub_22279F540();
  LOBYTE(v19) = 0;
  v13 = v18;
  sub_22279F060();
  if (!v13)
  {
    v19 = v17;
    v20 = v16;
    v21 = 1;
    sub_22278AE78(v17, v16);
    sub_2227840F8();
    sub_22279F070();
    sub_22278414C(v19, v20);
  }

  return (*(v4 + 8))(v8, v3);
}

uint64_t COSE_Sign1.X509Hash.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E98, &qword_2227A0B60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v10 = v19 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22278AF20();
  sub_22279F520();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v19[0]) = 0;
  v12 = sub_22279F030();
  v14 = v13;
  v15 = v12;
  v20 = 1;
  sub_22278AF74();
  sub_22279F040();
  (*(v6 + 8))(v10, v5);
  v16 = v19[0];
  v17 = v19[1];
  *a2 = v15;
  a2[1] = v14;
  a2[2] = v16;
  a2[3] = v17;

  sub_22278AE78(v16, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_22278414C(v16, v17);
}

double COSE_Sign1.x509Hash.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [*v1 x509hashAlgorithmIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22279ECB0();
    v8 = v7;

    v9 = [v3 x509hashValue];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22279EC10();
      v13 = v12;

      *a1 = v6;
      a1[1] = v8;
      a1[2] = v11;
      a1[3] = v13;
      return result;
    }
  }

  result = 0.0;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  return result;
}

uint64_t _s11CBORLibrary10COSE_Sign1V28rawProtectedHeaderParameters10Foundation4DataVvg_0()
{
  v1 = [*v0 protectedHeaderParameters];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_22279EC10();

  return v3;
}

unint64_t _s11CBORLibrary10COSE_Sign1V30rawUnprotectedHeaderParametersSDySo4CBORCAFGvg_0()
{
  v1 = [*v0 unprotectedHeaderParameters];
  if (v1)
  {
    v2 = v1;
    sub_222782C2C(0, qword_280BC4448, off_2784B4108);
    sub_22278ADFC();
    v3 = sub_22279EC60();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];

    return sub_2227815B0(v5);
  }
}

uint64_t sub_2227856C8(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_22279EC10();

  return v3;
}

char *_s11CBORLibrary10COSE_Sign1V23criticalHeaderParameterSaySiGSgvg_0()
{
  v1 = [*v0 criticalHeaderParameters];
  if (!v1)
  {
    return v1;
  }

  sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
  v2 = sub_22279ED80();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v3 = sub_22279EFA0();
  if (!v3)
  {
LABEL_14:

    return MEMORY[0x277D84F90];
  }

LABEL_4:
  v11 = MEMORY[0x277D84F90];
  result = sub_22278AC70(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v1 = v11;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x223DC00C0](v5, v2);
      }

      else
      {
        v6 = *(v2 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 integerValue];

      v10 = v11[2];
      v9 = v11[3];
      if (v10 >= v9 >> 1)
      {
        sub_22278AC70((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      v11[2] = v10 + 1;
      v11[v10 + 4] = v8;
    }

    while (v3 != v5);

    return v1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2227858B8(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22279ECB0();

  return v4;
}

uint64_t COSE_Mac0.computeMAC_Structure(externalAAD:)(uint64_t a1, unint64_t a2)
{
  v3 = *v2;
  if (a2 >> 60 == 15)
  {
    v4 = 0;
  }

  else
  {
    v4 = sub_22279EC00();
  }

  v5 = [v3 generateMessageForMACWithApplicationProtectedAttributes_];

  v6 = sub_22279EC10();
  return v6;
}

uint64_t COSE_Mac0.init(algorithmIdentifier:keyIdentifier:initializationVector:partialInitializationVector:payload:mac:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10, uint64_t a11, unint64_t a12)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E70, &qword_2227A0B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227A0440;
  v19 = objc_opt_self();
  *(inited + 32) = [v19 cborWithInteger_];
  *(inited + 40) = [v19 cborWithInteger_];
  v20 = sub_2227815B0(inited);
  swift_setDeallocating();
  sub_22278AD94(inited + 32);
  v21 = sub_2227815B0(MEMORY[0x277D84F90]);
  v54 = v21;
  v52 = a4;
  if (a3 >> 60 != 15)
  {
    sub_22278AE78(a2, a3);
    v22 = [v19 cborWithInteger_];
    sub_22278AE78(a2, a3);
    v23 = sub_22279EC00();
    v24 = [v19 cborWithData_];

    sub_22278AE64(a2, a3);
    if (v24)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        if (v20 >= 0)
        {
          v20 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        result = sub_22279EFA0();
        if (__OFADD__(result, 1))
        {
          __break(1u);
          goto LABEL_34;
        }

        sub_222787DEC(v20, result + 1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v24, v22, isUniquelyReferenced_nonNull_native);

      sub_22278AE64(a2, a3);
    }

    else
    {
      v27 = sub_222787CA0(v22);
      sub_22278AE64(a2, a3);
    }

    a4 = v52;
  }

  v50 = a2;
  if (a5 >> 60 == 15)
  {
    goto LABEL_21;
  }

  v28 = a6;
  v29 = a7;
  sub_22278AE78(a4, a5);
  v30 = [v19 cborWithInteger_];
  sub_22278AE78(a4, a5);
  v31 = sub_22279EC00();
  v32 = [v19 cborWithData_];

  sub_22278AE64(a4, a5);
  if (!v32)
  {
    v34 = sub_222787CA0(v30);
    sub_22278AE64(a4, a5);

    goto LABEL_20;
  }

  if ((v21 & 0xC000000000000001) != 0)
  {
    if (v21 >= 0)
    {
      v21 &= 0xFFFFFFFFFFFFFF8uLL;
    }

    result = sub_22279EFA0();
    if (!__OFADD__(result, 1))
    {
      v21 = sub_222787DEC(v21, result + 1);
      goto LABEL_18;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

LABEL_18:
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_222789510(v32, v30, v33);

  sub_22278AE64(v52, a5);
  v54 = v21;
LABEL_20:
  a7 = v29;
  a6 = v28;
LABEL_21:
  if (a7 >> 60 != 15)
  {
    sub_22278AE78(a6, a7);
    v35 = [v19 cborWithInteger_];
    sub_22278AE78(a6, a7);
    v36 = sub_22279EC00();
    v37 = [v19 cborWithData_];

    sub_22278AE64(a6, a7);
    if (!v37)
    {
      v40 = sub_222787CA0(v35);
      sub_22278AE64(a6, a7);

      goto LABEL_30;
    }

    v38 = v54;
    if ((v54 & 0xC000000000000001) == 0)
    {
      goto LABEL_28;
    }

    if (v54 >= 0)
    {
      v38 = v54 & 0xFFFFFFFFFFFFFF8;
    }

    result = sub_22279EFA0();
    if (!__OFADD__(result, 1))
    {
      sub_222787DEC(v38, result + 1);
LABEL_28:
      v39 = swift_isUniquelyReferenced_nonNull_native();
      sub_222789510(v37, v35, v39);

      sub_22278AE64(a6, a7);
      goto LABEL_30;
    }

LABEL_35:
    __break(1u);
    return result;
  }

LABEL_30:
  v41 = a7;
  v49 = a3;
  sub_222782C2C(0, qword_280BC4448, off_2784B4108);
  sub_22278ADFC();
  v42 = sub_22279EC50();

  v43 = sub_22279EC50();

  v44 = 0;
  if (a10 >> 60 != 15)
  {
    v44 = sub_22279EC00();
    sub_22278AE64(a8, a10);
  }

  v45 = objc_allocWithZone(COSE_Mac0);
  v46 = sub_22279EC00();
  v47 = [v45 initWithProtectedHeaders:v42 unprotectedHeaders:v43 payload:v44 tag:v46];

  sub_22278414C(a11, a12);
  sub_22278AE64(a6, v41);
  sub_22278AE64(v52, a5);
  result = sub_22278AE64(v50, v49);
  *a9 = v47;
  return result;
}

uint64_t sub_222785F8C(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = v2;
  sub_22279F530();
  v5 = [objc_opt_self() cborWithCOSE_];

  v7[6] = v5;
  __swift_mutable_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_22278AECC();
  sub_22279F2D0();

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

char *COSEKey.operations.getter()
{
  v1 = [*v0 operations];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
  v3 = sub_22279ED80();

  if (v3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22279EFA0())
  {
    v5 = 0;
    v6 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DC00C0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(v3 + 8 * v5 + 32);
      }

      v8 = v7;
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v10 = [v7 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_22278A0F8(0, *(v6 + 2) + 1, 1, v6);
      }

      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v6 = sub_22278A0F8((v11 > 1), v12 + 1, 1, v6);
      }

      *(v6 + 2) = v12 + 1;
      *&v6[8 * v12 + 32] = v10;
      ++v5;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v6 = MEMORY[0x277D84F90];
LABEL_21:

  return v6;
}

uint64_t COSEKey.init(ec2CurveIdentifier:x:y:d:algorithm:keyOperations:keyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v14 = a3;
  v15 = a2;
  v16 = a9;
  if (a10)
  {
    v17 = *(a10 + 16);
    if (v17)
    {
      v38 = MEMORY[0x277D84F90];
      sub_22279EF20();
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v19 = 32;
      do
      {
        v20 = *(a10 + v19);
        sub_22279EDD0();
        sub_22279EF00();
        v21 = *(v38 + 16);
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v19 += 8;
        --v17;
      }

      while (v17);

      v22 = v38;
      v14 = a3;
      v16 = a9;
      v15 = a2;
    }

    else
    {

      v22 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v22 = 0;
  }

  v23 = v15;
  v24 = sub_22279EC00();
  v25 = sub_22279EC00();
  if (a7 >> 60 == 15)
  {
    v26 = 0;
    v27 = a12;
    if (v22)
    {
LABEL_10:
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v28 = sub_22279ED70();

      goto LABEL_13;
    }
  }

  else
  {
    v26 = sub_22279EC00();
    sub_22278AE64(a6, a7);
    v27 = a12;
    if (v22)
    {
      goto LABEL_10;
    }
  }

  v28 = 0;
LABEL_13:
  if (v27 >> 60 == 15)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_22279EC00();
    sub_22278AE64(a11, v27);
  }

  v30 = [objc_allocWithZone(COSEKey) initEC2WithAlgorithm:a8 curveIdentifier:a1 x:v24 y:v25 d:v26 keyOperations:v28 keyIdentifier:v29];

  sub_22278414C(a4, a5);
  result = sub_22278414C(v23, v14);
  *v16 = v30;
  return result;
}

uint64_t COSEKey.init(ec2CurveIdentifier:x:signBit:d:algorithm:keyOperations:keyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, unint64_t a11)
{
  v11 = a7;
  v14 = a4;
  v15 = a3;
  v17 = a1;
  v18 = a9;
  if (a8)
  {
    v20 = *(a8 + 16);
    if (v20)
    {
      v37 = MEMORY[0x277D84F90];
      sub_22279EF20();
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v21 = 32;
      do
      {
        v22 = *(a8 + v21);
        sub_22279EDD0();
        sub_22279EF00();
        v23 = *(v37 + 16);
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v21 += 8;
        --v20;
      }

      while (v20);

      v18 = a9;
      v24 = v37;
      v11 = a7;
      v15 = a3;
      v17 = a1;
      v14 = a4;
    }

    else
    {

      v24 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_22279EC00();
  if (a6 >> 60 == 15)
  {
    v36 = 0;
    v26 = a11;
    if (v24)
    {
LABEL_10:
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v27 = sub_22279ED70();

      goto LABEL_13;
    }
  }

  else
  {
    v36 = sub_22279EC00();
    sub_22278AE64(a5, a6);
    v26 = a11;
    if (v24)
    {
      goto LABEL_10;
    }
  }

  v27 = 0;
LABEL_13:
  if (v26 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = sub_22279EC00();
    sub_22278AE64(a10, v26);
  }

  v29 = [objc_allocWithZone(COSEKey) initEC2WithAlgorithm:v11 curveIdentifier:v17 x:v25 signBit:v14 & 1 d:v36 keyOperations:v27 keyIdentifier:v28];

  result = sub_22278414C(a2, v15);
  *v18 = v29;
  return result;
}

uint64_t COSEKey.init(okpCurveIdentifier:x:d:algorithm:keyOperations:keyIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, unint64_t a10)
{
  v10 = a6;
  v13 = a3;
  v15 = a9;
  if (a7)
  {
    v17 = *(a7 + 16);
    if (v17)
    {
      v34 = MEMORY[0x277D84F90];
      sub_22279EF20();
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v18 = 32;
      do
      {
        v19 = *(a7 + v18);
        sub_22279EDD0();
        sub_22279EF00();
        v20 = *(v34 + 16);
        sub_22279EF30();
        sub_22279EF40();
        sub_22279EF10();
        v18 += 8;
        --v17;
      }

      while (v17);

      v21 = v34;
      v13 = a3;
      v15 = a9;
      v10 = a6;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v21 = 0;
  }

  v22 = sub_22279EC00();
  if (a5 >> 60 == 15)
  {
    v23 = 0;
    v24 = a10;
    if (v21)
    {
LABEL_10:
      sub_222782C2C(0, &qword_27D019DE8, 0x277CCABB0);
      v25 = sub_22279ED70();

      goto LABEL_13;
    }
  }

  else
  {
    v23 = sub_22279EC00();
    sub_22278AE64(a4, a5);
    v24 = a10;
    if (v21)
    {
      goto LABEL_10;
    }
  }

  v25 = 0;
LABEL_13:
  if (v24 >> 60 == 15)
  {
    v26 = 0;
  }

  else
  {
    v26 = sub_22279EC00();
    sub_22278AE64(a8, v24);
  }

  v27 = [objc_allocWithZone(COSEKey) initOKPWithAlgorithm:v10 curveIdentifier:a1 x:v22 d:v23 keyOperations:v25 keyIdentifier:v26];

  result = sub_22278414C(a2, v13);
  *v15 = v27;
  return result;
}

void COSEKey.ec2.getter(void *a1@<X8>)
{
  v3 = *v1;
  if ([*v1 type] == 2 && (v4 = objc_msgSend(v3, sel_ecCurveIdentifier)) != 0)
  {
    v5 = v4;
    v6 = [v4 integerValue];
    v7 = [v3 ecCurveX];
    if (v7)
    {
      v8 = v7;
      v9 = sub_22279EC10();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xC000000000000000;
    }

    v16 = [v3 ecCurveY];
    if (v16)
    {
      v17 = v16;
      v12 = sub_22279EC10();
      v13 = v18;
    }

    else
    {
      v12 = 0;
      v13 = 0xC000000000000000;
    }

    v19 = [v3 ecCurveD];
    if (v19)
    {
      v20 = v19;
      v14 = sub_22279EC10();
      v15 = v21;
    }

    else
    {

      v14 = 0;
      v15 = 0xC000000000000000;
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v11 = 0xF000000000000000;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  a1[5] = v14;
  a1[6] = v15;
}

void COSEKey.okp.getter(void *a1@<X8>)
{
  v3 = *v1;
  if ([*v1 type] == 1 && (v4 = objc_msgSend(v3, sel_okpCurveIdentifier)) != 0)
  {
    v5 = v4;
    v6 = [v4 integerValue];
    v7 = [v3 okpCurveX];
    if (v7)
    {
      v8 = v7;
      v9 = sub_22279EC10();
      v11 = v10;
    }

    else
    {
      v9 = 0;
      v11 = 0xC000000000000000;
    }

    v14 = [v3 okpCurveD];
    if (v14)
    {
      v15 = v14;
      v12 = sub_22279EC10();
      v13 = v16;
    }

    else
    {

      v12 = 0;
      v13 = 0xC000000000000000;
    }
  }

  else
  {
    v6 = 0;
    v9 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0xF000000000000000;
  }

  *a1 = v6;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
}

uint64_t sub_222786C48(SEL *a1)
{
  v2 = [*v1 *a1];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_22279EC10();

  return v4;
}

uint64_t sub_222786CBC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, Class *a3@<X2>, void *a4@<X8>)
{
  v7 = objc_allocWithZone(*a3);
  v8 = sub_22279EC00();
  v9 = [v7 initWithData_];

  result = sub_22278414C(a1, a2);
  *a4 = v9;
  return result;
}

uint64_t sub_222786D5C@<X0>(uint64_t *a1@<X0>, Class *a2@<X1>, void *a3@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F500();
  if (!v3)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    sub_222784278();
    sub_22279F2A0();
    v8 = v17;
    v9 = [objc_allocWithZone(*a2) initWithCBOR_];
    if (v9)
    {
      v10 = v9;

      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      *a3 = v10;
    }

    else
    {
      v12 = sub_22279EEB0();
      swift_allocError();
      v14 = v13;
      v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D48, &qword_2227A0450) + 48);
      *v14 = sub_222782C2C(0, &qword_27D019EA8, off_2784B4118);
      sub_22279EE90();
      (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84160], v12);
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_1Tm(v16);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t COSEKey.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22279F530();
  v4 = [objc_opt_self() cborWithCOSEKey_];
  v6[6] = v4;
  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_22278AECC();
  sub_22279F2D0();

  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t CBOR.InitError.hashValue.getter()
{
  v1 = *v0;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v1);
  return sub_22279F4F0();
}

uint64_t sub_2227870B4()
{
  v1 = *v0;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v1);
  return sub_22279F4F0();
}

uint64_t sub_2227870FC()
{
  v1 = *v0;
  sub_22279F4C0();
  MEMORY[0x223DC0720](v1);
  return sub_22279F4F0();
}

id CBOR.init<A>(_:tag:fullDate:)(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5)
{
  v6 = v5;
  v12 = sub_22279EC40();
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *(a5 - 8);
  v18 = *(v48 + 64);
  MEMORY[0x28223BE20](v15, v19);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  if (a3)
  {
LABEL_7:
    if (a5 == MEMORY[0x277D83B88])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D83B88]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D84958])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D84958]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D849A8])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D849A8]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D84A28])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D84A28]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithInteger_];
    }

    else if (a5 == MEMORY[0x277D83E88])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D83E88]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D84C58])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D84C58]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D84CC0])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D84CC0]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D84D38])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D84D38]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithUnsignedInteger_];
    }

    else if (a5 == MEMORY[0x277D83A90])
    {
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D83A90]);
      swift_dynamicCast();
      v29 = LODWORD(v50);
      v30 = objc_opt_self();
      LODWORD(v31) = v29;
      v28 = [v30 cborWithFloat_];
    }

    else
    {
      if (a5 != MEMORY[0x277D839F8])
      {
        if (a5 == MEMORY[0x277D837D0])
        {
          v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v27 = v48;
          (*(v48 + 16))(v22, a1, MEMORY[0x277D837D0]);
          swift_dynamicCast();
          v37 = sub_22279ECA0();

          v32 = [objc_opt_self() cborWithUTF8String_];
        }

        else
        {
          if (a5 != MEMORY[0x277CC9318])
          {
            if (v12 != a5)
            {
              v24 = 0;
              goto LABEL_5;
            }

            v41 = v20;
            if (a4 == 2)
            {
              (*(v48 + 16))(v22, a1, a5);
              swift_dynamicCast();
              v42 = sub_22279EC20();
              v43 = objc_opt_self();
            }

            else
            {
              (*(v48 + 16))(v22, a1, a5);
              swift_dynamicCast();
              v42 = sub_22279EC20();
              v43 = objc_opt_self();
              if (a4)
              {
                v44 = [v43 cborWithFullDate_];
LABEL_43:
                v45 = v44;

                (*(v41 + 8))(v17, v12);
                v46 = objc_allocWithZone(swift_getObjCClassFromMetadata());
                v32 = v45;
                v34 = v49;
                v6 = [v46 initWithCbor:v32 tag:v49];

                v27 = v48;
                goto LABEL_33;
              }
            }

            v44 = [v43 cborWithDateTime_];
            goto LABEL_43;
          }

          v36 = objc_allocWithZone(swift_getObjCClassFromMetadata());
          v27 = v48;
          (*(v48 + 16))(v22, a1, MEMORY[0x277CC9318]);
          swift_dynamicCast();
          v38 = *&v50;
          v39 = v51;
          v40 = sub_22279EC00();
          v32 = [objc_opt_self() cborWithData_];

          sub_22278414C(v38, v39);
        }

        v33 = v36;
LABEL_32:
        v34 = v49;
        v6 = [v33 initWithCbor:v32 tag:v49];
LABEL_33:

        (*(v27 + 8))(a1, a5);
        return v6;
      }

      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = v48;
      (*(v48 + 16))(v22, a1, MEMORY[0x277D839F8]);
      swift_dynamicCast();
      v28 = [objc_opt_self() cborWithDouble_];
    }

    v32 = v28;
    v33 = v26;
    goto LABEL_32;
  }

  v23 = v20;
  v49 = [objc_opt_self() cborWithInteger_];
  if (a2 != 24 || a5 == MEMORY[0x277CC9318])
  {
    v20 = v23;
    goto LABEL_7;
  }

  v24 = 1;
LABEL_5:
  sub_22278AFC8();
  swift_allocError();
  *v25 = v24;
  swift_willThrow();

  (*(v48 + 8))(a1, a5);
  return v6;
}

double sub_222787BC4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_222794ED0(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2227898C4();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_22279EF70();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_2227828C4((*(v11 + 56) + 32 * v8), a2);
    sub_222788D54(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_222787CA0(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = *v1;
    v14 = sub_222794F78(a1);
    if (v15)
    {
      v3 = v14;
      v16 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v19 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_2227891AC(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_222789CEC();
      v8 = v19;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_22279EFB0();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_22279EFA0();
  v8 = sub_222787DEC(v4, v7);

  v9 = sub_222794F78(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_2227891AC(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_222787DEC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
    v2 = sub_22279F010();
    v20 = v2;
    sub_22279EF90();
    v3 = sub_22279EFC0();
    if (v3)
    {
      v4 = v3;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_22278887C(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_22279EDE0();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_22279EFC0();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_222788018(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
    v2 = sub_22279F010();
    v20 = v2;
    sub_22279EF90();
    if (sub_22279EFC0())
    {
      v4 = v3;
      sub_222782C2C(0, qword_280BC4448, off_2784B4108);
      do
      {
        swift_dynamicCast();
        v14 = *(v2 + 16);
        if (*(v2 + 24) <= v14)
        {
          sub_222788AE4(v14 + 1, 1);
        }

        v2 = v20;
        v5 = *(v20 + 40);
        result = sub_22279EDE0();
        v7 = v20 + 64;
        v8 = -1 << *(v20 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v20 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v15 = 0;
          v16 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v16 && (v15 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v17 = v10 == v16;
            if (v10 == v16)
            {
              v10 = 0;
            }

            v15 |= v17;
            v18 = *(v7 + 8 * v10);
          }

          while (v18 == -1);
          v11 = __clz(__rbit64(~v18)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v20 + 48) + 8 * v11) = v19;
        *(*(v20 + 56) + 8 * v11) = v4;
        ++*(v20 + 16);
        v12 = sub_22279EFC0();
        v4 = v13;
      }

      while (v12);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_222788224(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_22279EF70();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v13 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019E18, &qword_2227A06B0);
  v44 = a2;
  result = sub_22279F000();
  v15 = result;
  if (*(v12 + 16))
  {
    v47 = v11;
    v48 = v6;
    v40 = v3;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v22 = result + 64;
    v43 = v12;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v27 = v24 | (v16 << 6);
      v28 = *(v12 + 48);
      v46 = *(v7 + 72);
      v29 = v28 + v46 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v48);
        sub_2227828C4((*(v12 + 56) + 32 * v27), v49);
      }

      else
      {
        (*v41)(v47, v29, v48);
        sub_22278B474(*(v12 + 56) + 32 * v27, v49);
      }

      v30 = *(v15 + 40);
      result = sub_22279EC80();
      v31 = -1 << *(v15 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v7 = v42;
        v12 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v7 = v42;
      v12 = v43;
LABEL_9:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v45)((*(v15 + 48) + v46 * v23), v47, v48);
      result = sub_2227828C4(v49, (*(v15 + 56) + 32 * v23));
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v12 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v12 + 16) = 0;
  }

LABEL_36:
  *v3 = v15;
  return result;
}

uint64_t sub_2227885C4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019DF8, &qword_2227A0690);
  result = sub_22279F000();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_2227828C4((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_2227829D0(v24, &v38);
        sub_22278B474(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_22279EE30();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_2227828C4(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_22278887C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D70, &qword_2227A0650);
  result = sub_22279F000();
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_22279EDE0();
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
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

uint64_t sub_222788AE4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D019D58, &qword_2227A0640);
  result = sub_22279F000();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        swift_unknownObjectRetain();
      }

      v24 = *(v8 + 40);
      result = sub_22279EDE0();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
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

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_35;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_222788D54(int64_t a1, uint64_t a2)
{
  v4 = sub_22279EF70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4, v7);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_22279EE20();
    v16 = v14;
    v41 = (v15 + 1) & v14;
    v18 = *(v5 + 16);
    v17 = v5 + 16;
    v42 = *(v17 + 56);
    v39 = (v17 - 8);
    v40 = v18;
    do
    {
      v19 = v11;
      v20 = v42 * v13;
      v21 = v16;
      v22 = v17;
      v40(v10, *(a2 + 48) + v42 * v13, v4);
      v23 = *(a2 + 40);
      v24 = sub_22279EC80();
      result = (*v39)(v10, v4);
      v16 = v21;
      v25 = v24 & v21;
      if (a1 >= v41)
      {
        if (v25 >= v41 && a1 >= v25)
        {
LABEL_15:
          v28 = *(a2 + 48);
          result = v28 + v42 * a1;
          v29 = v28 + v20 + v42;
          v30 = v42 * a1 < v20 || result >= v29;
          v17 = v22;
          if (v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v16 = v21;
            v11 = v19;
          }

          else
          {
            v31 = v42 * a1 == v20;
            v11 = v19;
            if (!v31)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
            }
          }

          v32 = *(a2 + 56);
          v33 = (v32 + 32 * a1);
          v34 = (v32 + 32 * v13);
          if (a1 != v13 || v33 >= v34 + 2)
          {
            v35 = v34[1];
            *v33 = *v34;
            v33[1] = v35;
            a1 = v13;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v41 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v19;
LABEL_4:
      v13 = (v13 + 1) & v16;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_222789008(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22279EE20() + 1) & ~v5;
    do
    {
      sub_2227829D0(*(a2 + 48) + 40 * v6, v26);
      v10 = *(a2 + 40);
      v11 = sub_22279EE30();
      result = sub_22278291C(v26);
      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v3;
          v17 = (v15 + 40 * v6);
          if (v3 != v6 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v3);
          v22 = (v20 + 32 * v6);
          if (v3 != v6 || v21 >= v22 + 2)
          {
            v9 = v22[1];
            *v21 = *v22;
            v21[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2227891AC(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22279EE20() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = sub_22279EDE0();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

_OWORD *sub_222789338(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_22279EF70();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8, v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v16 = sub_222794ED0(a2);
  v17 = *(v14 + 16);
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v14 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_2227898C4();
      goto LABEL_7;
    }

    sub_222788224(v19, a3 & 1);
    v25 = *v4;
    v26 = sub_222794ED0(a2);
    if ((v20 & 1) == (v27 & 1))
    {
      v16 = v26;
      v22 = *v4;
      if (v20)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v13, a2, v8);
      return sub_222789804(v16, v13, a1, v22);
    }

LABEL_15:
    result = sub_22279F470();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v4;
  if ((v20 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v23 = (v22[7] + 32 * v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);

  return sub_2227828C4(a1, v23);
}