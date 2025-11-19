uint64_t getEnumTagSinglePayload for PySpecialFunction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xAD)
  {
    goto LABEL_17;
  }

  if (a2 + 83 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 83) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 83;
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

      return (*a1 | (v4 << 8)) - 83;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 83;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x54;
  v8 = v6 - 84;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PySpecialFunction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 83 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 83) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xAD)
  {
    v4 = 0;
  }

  if (a2 > 0xAC)
  {
    v5 = ((a2 - 173) >> 8) + 1;
    *result = a2 + 83;
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
    *result = a2 + 83;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25A92D814@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = sub_25A998B58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = sub_25A998B88();
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v54[0] + 1) = MEMORY[0x277D84F70] + 8;
  *&v53 = swift_allocObject();
  v44 = a1;
  sub_25A87500C(a1, v53 + 16);
  sub_25A998B48();
  v49 = v24;
  sub_25A998B68();
  (*(v4 + 104))(v18, *MEMORY[0x277D84C18], v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v25 = *(v8 + 56);
  sub_25A8952F0(v20, v11, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v18, &v11[v25], &qword_27FA05338, &qword_25A9FD9D8);
  v26 = *(v4 + 48);
  if (v26(v11, 1, v3) == 1)
  {
    sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
    if (v26(&v11[v25], 1, v3) == 1)
    {
      sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
      v27 = v49;
      goto LABEL_8;
    }

LABEL_6:
    sub_25A878194(v11, &qword_27FA05330, &qword_25A9FD9D0);
    v27 = v49;
    goto LABEL_11;
  }

  sub_25A8952F0(v11, v48, &qword_27FA05338, &qword_25A9FD9D8);
  if (v26(&v11[v25], 1, v3) == 1)
  {
    sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v4 + 8))(v48, v3);
    goto LABEL_6;
  }

  v28 = v43;
  (*(v4 + 32))(v43, &v11[v25], v3);
  v29 = v48;
  v30 = sub_25A997DF8();
  v31 = *(v4 + 8);
  v31(v28, v3);
  sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
  v31(v29, v3);
  sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
  v27 = v49;
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v32 = sub_25A998B78();
  v33 = v32[2];
  v34 = v32[3];
  v35 = v32[4];
  v36 = v32[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v37 == result)
  {
    v39 = sub_25A998668();
    swift_unknownObjectRelease();
    if ((v39 & 1) == 0)
    {
      sub_25A998808();
      swift_unknownObjectRelease();

      v53 = v50;
      v54[0] = v51;
      v54[1] = v52;
      sub_25A92D814(v54);
      sub_25A878194(&v53, &qword_27FA047F0, &qword_25A9FD9E0);
      return (*(v45 + 8))(v27, v46);
    }

    swift_unknownObjectRelease();

LABEL_11:
    v40 = v47;
    v47[3] = MEMORY[0x277D84F70] + 8;
    v41 = swift_allocObject();
    *v40 = v41;
    sub_25A87500C(v44, v41 + 16);
    return (*(v45 + 8))(v27, v46);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A92DE50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v3 = sub_25A998B58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v42 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v42 - v19;
  v21 = sub_25A998B88();
  v45 = *(v21 - 8);
  v46 = v21;
  v22 = *(v45 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
  *(&v54[0] + 1) = v43;
  *&v53 = swift_allocObject();
  v44 = a1;
  sub_25A8952F0(a1, v53 + 16, &qword_27FA04458, &unk_25A9F7FB0);
  sub_25A998B48();
  v49 = v24;
  sub_25A998B68();
  (*(v4 + 104))(v18, *MEMORY[0x277D84C18], v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v25 = *(v8 + 56);
  sub_25A8952F0(v20, v11, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v18, &v11[v25], &qword_27FA05338, &qword_25A9FD9D8);
  v26 = *(v4 + 48);
  if (v26(v11, 1, v3) == 1)
  {
    sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
    if (v26(&v11[v25], 1, v3) == 1)
    {
      sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
      v27 = v49;
      goto LABEL_8;
    }

LABEL_6:
    sub_25A878194(v11, &qword_27FA05330, &qword_25A9FD9D0);
    v27 = v49;
    goto LABEL_11;
  }

  sub_25A8952F0(v11, v48, &qword_27FA05338, &qword_25A9FD9D8);
  if (v26(&v11[v25], 1, v3) == 1)
  {
    sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v4 + 8))(v48, v3);
    goto LABEL_6;
  }

  v28 = v42;
  (*(v4 + 32))(v42, &v11[v25], v3);
  v29 = v48;
  v30 = sub_25A997DF8();
  v31 = *(v4 + 8);
  v31(v28, v3);
  sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
  v31(v29, v3);
  sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
  v27 = v49;
  if ((v30 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v32 = sub_25A998B78();
  v33 = v32[2];
  v34 = v32[3];
  v35 = v32[4];
  v36 = v32[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v37 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v37 == result)
  {
    v39 = sub_25A998668();
    swift_unknownObjectRelease();
    if ((v39 & 1) == 0)
    {
      sub_25A998808();
      swift_unknownObjectRelease();

      v53 = v50;
      v54[0] = v51;
      v54[1] = v52;
      sub_25A92D814(v54, v47);
      sub_25A878194(&v53, &qword_27FA047F0, &qword_25A9FD9E0);
      return (*(v45 + 8))(v27, v46);
    }

    swift_unknownObjectRelease();

LABEL_11:
    v40 = v47;
    v47[3] = v43;
    v41 = swift_allocObject();
    *v40 = v41;
    sub_25A8952F0(v44, v41 + 16, &qword_27FA04458, &unk_25A9F7FB0);
    return (*(v45 + 8))(v27, v46);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A92E494@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = sub_25A998B58();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v44 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v8 = v7 - 8;
  v9 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v42[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v50 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v42[-v17];
  MEMORY[0x28223BE20](v16);
  v20 = &v42[-v19];
  v21 = sub_25A998B88();
  v47 = *(v21 - 8);
  v48 = v21;
  v22 = *(v47 + 64);
  MEMORY[0x28223BE20](v21);
  v24 = &v42[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FA05460, &qword_25A9FDD48);
  v46 = a1;
  *(&v55[0] + 1) = v45;
  *&v54 = a1;

  sub_25A998B48();
  sub_25A998B68();
  (*(v4 + 104))(v18, *MEMORY[0x277D84C18], v3);
  (*(v4 + 56))(v18, 0, 1, v3);
  v25 = *(v8 + 56);
  sub_25A8952F0(v20, v11, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v18, &v11[v25], &qword_27FA05338, &qword_25A9FD9D8);
  v26 = *(v4 + 48);
  if (v26(v11, 1, v3) != 1)
  {
    sub_25A8952F0(v11, v50, &qword_27FA05338, &qword_25A9FD9D8);
    if (v26(&v11[v25], 1, v3) != 1)
    {
      v27 = &v11[v25];
      v28 = v44;
      (*(v4 + 32))(v44, v27, v3);
      v29 = v50;
      v43 = sub_25A997DF8();
      v30 = *(v4 + 8);
      v30(v28, v3);
      sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
      sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
      v30(v29, v3);
      sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
      if ((v43 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v4 + 8))(v50, v3);
LABEL_6:
    sub_25A878194(v11, &qword_27FA05330, &qword_25A9FD9D0);
    goto LABEL_11;
  }

  sub_25A878194(v18, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v20, &qword_27FA05338, &qword_25A9FD9D8);
  if (v26(&v11[v25], 1, v3) != 1)
  {
    goto LABEL_6;
  }

  sub_25A878194(v11, &qword_27FA05338, &qword_25A9FD9D8);
LABEL_8:
  v31 = sub_25A998B78();
  v32 = v31[2];
  v33 = v31[3];
  v34 = v31[4];
  v35 = v31[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v36 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v36 != result)
  {
    __break(1u);
    return result;
  }

  v38 = sub_25A998668();
  swift_unknownObjectRelease();
  if ((v38 & 1) == 0)
  {
    sub_25A998808();
    swift_unknownObjectRelease();

    v54 = v51;
    v55[0] = v52;
    v55[1] = v53;
    sub_25A92D814(v55, v49);
    sub_25A878194(&v54, &qword_27FA047F0, &qword_25A9FD9E0);
    return (*(v47 + 8))(v24, v48);
  }

  swift_unknownObjectRelease();

LABEL_11:
  v39 = v49;
  v40 = v46;
  v49[3] = v45;
  *v39 = v40;
  v41 = *(v47 + 8);

  return v41(v24, v48);
}

uint64_t static MorpheusUtils.unwrap<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v58 = a3;
  v5 = sub_25A998B58();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v50 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v50 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = sub_25A998B88();
  v56 = *(v24 - 8);
  v57 = v24;
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v24);
  v27 = &v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v64[0] + 1) = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v63);
  v29 = *(a2 - 8);
  v30 = *(v29 + 16);
  v54 = a1;
  v55 = a2;
  v52 = v29 + 16;
  v53 = v30;
  v30(boxed_opaque_existential_0, a1, a2);
  sub_25A998B48();
  v59 = v27;
  sub_25A998B68();
  (*(v6 + 104))(v21, *MEMORY[0x277D84C18], v5);
  (*(v6 + 56))(v21, 0, 1, v5);
  v31 = *(v10 + 56);
  sub_25A8952F0(v23, v13, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v21, &v13[v31], &qword_27FA05338, &qword_25A9FD9D8);
  v32 = *(v6 + 48);
  if (v32(v13, 1, v5) == 1)
  {
    sub_25A878194(v21, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v23, &qword_27FA05338, &qword_25A9FD9D8);
    v33 = v32(&v13[v31], 1, v5);
    v34 = v59;
    if (v33 == 1)
    {
      sub_25A878194(v13, &qword_27FA05338, &qword_25A9FD9D8);
      goto LABEL_8;
    }

LABEL_6:
    sub_25A878194(v13, &qword_27FA05330, &qword_25A9FD9D0);
    goto LABEL_11;
  }

  sub_25A8952F0(v13, v18, &qword_27FA05338, &qword_25A9FD9D8);
  if (v32(&v13[v31], 1, v5) == 1)
  {
    sub_25A878194(v21, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v23, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v6 + 8))(v18, v5);
    v34 = v59;
    goto LABEL_6;
  }

  v35 = &v13[v31];
  v36 = v51;
  (*(v6 + 32))(v51, v35, v5);
  v37 = sub_25A997DF8();
  v38 = *(v6 + 8);
  v38(v36, v5);
  sub_25A878194(v21, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v23, &qword_27FA05338, &qword_25A9FD9D8);
  v38(v18, v5);
  sub_25A878194(v13, &qword_27FA05338, &qword_25A9FD9D8);
  v34 = v59;
  if ((v37 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v39 = sub_25A998B78();
  v40 = v39[2];
  v41 = v39[3];
  v42 = v39[4];
  v43 = v39[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v44 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v44 == result)
  {
    v46 = sub_25A998668();
    swift_unknownObjectRelease();
    if ((v46 & 1) == 0)
    {
      sub_25A998808();
      swift_unknownObjectRelease();

      v63 = v60;
      v64[0] = v61;
      v64[1] = v62;
      sub_25A92D814(v64, v58);
      sub_25A878194(&v63, &qword_27FA047F0, &qword_25A9FD9E0);
      return (*(v56 + 8))(v34, v57);
    }

    swift_unknownObjectRelease();

LABEL_11:
    v47 = v58;
    v48 = v55;
    v58[3] = v55;
    v49 = __swift_allocate_boxed_opaque_existential_0(v47);
    v53(v49, v54, v48);
    return (*(v56 + 8))(v34, v57);
  }

  __break(1u);
  return result;
}

uint64_t static MorpheusUtils.isNil(_:)(uint64_t a1)
{
  v49 = a1;
  v1 = sub_25A998B58();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v46 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05330, &qword_25A9FD9D0);
  v6 = v5 - 8;
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05338, &qword_25A9FD9D8);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v46 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v46 - v18;
  v20 = sub_25A998B88();
  v47 = *(v20 - 8);
  v48 = v20;
  v21 = *(v47 + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A87500C(v49, &v53);
  sub_25A998B48();
  v49 = v23;
  sub_25A998B68();
  (*(v2 + 104))(v17, *MEMORY[0x277D84C18], v1);
  (*(v2 + 56))(v17, 0, 1, v1);
  v24 = *(v6 + 56);
  sub_25A8952F0(v19, v9, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A8952F0(v17, &v9[v24], &qword_27FA05338, &qword_25A9FD9D8);
  v25 = *(v2 + 48);
  if (v25(v9, 1, v1) == 1)
  {
    sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v19, &qword_27FA05338, &qword_25A9FD9D8);
    if (v25(&v9[v24], 1, v1) == 1)
    {
      sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
      v26 = v49;
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  sub_25A8952F0(v9, v14, &qword_27FA05338, &qword_25A9FD9D8);
  if (v25(&v9[v24], 1, v1) == 1)
  {
    sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
    sub_25A878194(v19, &qword_27FA05338, &qword_25A9FD9D8);
    (*(v2 + 8))(v14, v1);
LABEL_6:
    sub_25A878194(v9, &qword_27FA05330, &qword_25A9FD9D0);
    v26 = v49;
LABEL_7:
    (*(v47 + 8))(v26, v48);
    v27 = 0;
    return v27 & 1;
  }

  v28 = v46;
  (*(v2 + 32))(v46, &v9[v24], v1);
  v29 = sub_25A997DF8();
  v30 = *(v2 + 8);
  v30(v28, v1);
  sub_25A878194(v17, &qword_27FA05338, &qword_25A9FD9D8);
  sub_25A878194(v19, &qword_27FA05338, &qword_25A9FD9D8);
  v30(v14, v1);
  sub_25A878194(v9, &qword_27FA05338, &qword_25A9FD9D8);
  v26 = v49;
  if ((v29 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  v31 = sub_25A998B78();
  v32 = v31[2];
  v33 = v31[3];
  v34 = v31[4];
  v35 = v31[5];
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v36 = sub_25A998658();
  swift_getObjectType();
  result = sub_25A998658();
  if (v36 == result)
  {
    v38 = sub_25A998668();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v38)
    {
      (*(v47 + 8))(v26, v48);
      v27 = 1;
      return v27 & 1;
    }

    v39 = sub_25A998B78();
    v40 = v39[2];
    v41 = v39[3];
    v42 = v39[4];
    v43 = v39[5];
    swift_getObjectType();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v44 = sub_25A998658();
    swift_getObjectType();
    result = sub_25A998658();
    if (v44 == result)
    {
      v45 = sub_25A998668();
      swift_unknownObjectRelease();
      if ((v45 & 1) == 0)
      {
        sub_25A998808();
        swift_unknownObjectRelease();

        v53 = v50;
        v54[0] = v51;
        v54[1] = v52;
        v27 = static MorpheusUtils.isNil(_:)(v54);
        sub_25A878194(&v53, &qword_27FA047F0, &qword_25A9FD9E0);
        (*(v47 + 8))(v26, v48);
        return v27 & 1;
      }

      swift_unknownObjectRelease();

      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A92F774(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_25A998748();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_25A87500C(i, v6);
    sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_25A998718();
    v4 = *(v7 + 16);
    sub_25A998758();
    sub_25A998768();
    sub_25A998728();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_25A92F880(uint64_t a1)
{
  v2 = *(a1 + 16);
  v16 = MEMORY[0x277D84F90];
  sub_25A9378E0(0, v2, 0);
  v3 = v16;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v15);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v9 = v12;
      v10 = v13;
      v11 = v14;
      v16 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A9378E0((v5 > 1), v6 + 1, 1);
        v3 = v16;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 40 * v6;
      *(v7 + 64) = v11;
      *(v7 + 32) = v9;
      *(v7 + 48) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    sub_25A878194(&v12, &qword_27FA04610, &qword_25A9FDA50);
    return 0;
  }

  return v3;
}

uint64_t sub_25A92F9CC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A937900(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05178, &qword_25A9FBFA0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937900((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA04CB8, &unk_25A9FDC50);
    return 0;
  }

  return v3;
}

uint64_t sub_25A92FB38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A9378A0(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A9378A0((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA047F8, L"D\a\t");
    return 0;
  }

  return v3;
}

uint64_t sub_25A92FCA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_25A937570(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v9);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937570((v5 > 1), v6 + 1, 1);
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

uint64_t sub_25A92FDB0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A937940(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04810, &qword_25A9F8E98);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937940((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA04808, &qword_25A9FDC40);
    return 0;
  }

  return v3;
}

uint64_t sub_25A92FF1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_25A937A00(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_25A87500C(i, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04E88, &qword_25A9FBA48);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_25A87817C(v8, v11);
      sub_25A87817C(v11, v8);
      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937A00((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      sub_25A87817C(v8, v3 + 40 * v6 + 32);
      if (!--v2)
      {
        return v3;
      }
    }

    v9 = 0;
    memset(v8, 0, sizeof(v8));
    sub_25A878194(v8, &qword_27FA04E80, &qword_25A9FDCC0);
    return 0;
  }

  return v3;
}

uint64_t sub_25A930088(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      sub_25A872F24(v4, &v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04800, &qword_25A9F8E90);
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v6 + 32));
      v4 += 40;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A93019C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      sub_25A87500C(v4, v8);
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(v8, (v2 + 32 * v6 + 32));
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A93026C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v13 = MEMORY[0x277D84F90];
    sub_25A937860(0, v1, 0);
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      sub_25A87500C(v4, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      swift_dynamicCast();
      v13 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937860((v5 > 1), v6 + 1, 1);
        v2 = v13;
      }

      *(v2 + 16) = v6 + 1;
      v7 = v2 + 32 * v6;
      v8 = v12;
      *(v7 + 32) = v11;
      *(v7 + 48) = v8;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930380(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    sub_25A937570(0, v2, 0);
    result = v9;
    v4 = (a1 + 32);
    v5 = *(v9 + 16);
    do
    {
      v7 = *v4++;
      v6 = v7;
      v10 = result;
      v8 = *(result + 24);
      if (v5 >= v8 >> 1)
      {
        sub_25A937570((v8 > 1), v5 + 1, 1);
        result = v10;
      }

      *(result + 16) = v5 + 1;
      *(result + 8 * v5++ + 32) = v6;
      --v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_25A930440(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A93053C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930638(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v8 = *v4;
      swift_dynamicCast();
      v10 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_25A937550((v5 > 1), v6 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v6 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v6 + 32));
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930770(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930870(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930970(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_25A937550(0, v1, 0);
    v2 = v10;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      swift_dynamicCast();
      v10 = v2;
      v7 = *(v2 + 16);
      v6 = *(v2 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_25A937550((v6 > 1), v7 + 1, 1);
        v2 = v10;
      }

      *(v2 + 16) = v7 + 1;
      sub_25A872D74(&v9, (v2 + 32 * v7 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_25A930B64(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A930BC0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25A930C1C(uint64_t a1, uint64_t a2)
{
  sub_25A87500C(a2, &v35);
  if (swift_dynamicCast())
  {
    v46[0] = v41;
    v46[1] = v42;
    v47 = v43;
    v44 = v39;
    v45 = v40;
    v5 = *(&v40 + 1);
    v6 = v41;
    __swift_project_boxed_opaque_existential_1(&v44, *(&v40 + 1));
    (*(v6 + 8))(v46 + 8, a1, v5, v6);
    return sub_25A878128(&v44);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  sub_25A878194(&v39, &qword_27FA04548, &unk_25A9F86F0);
  sub_25A87500C(a2, &v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v41 = 0;
    v39 = 0u;
    v40 = 0u;
    sub_25A878194(&v39, &qword_27FA04728, &unk_25A9FD740);
LABEL_15:
    sub_25A874F54();
    swift_allocError();
    *v31 = 60;
    return swift_willThrow();
  }

  sub_25A87817C(&v39, &v44);
  sub_25A87500C(a1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    AssociatedConformanceWitness = 0;
    v35 = 0u;
    v36 = 0u;
    sub_25A878194(&v35, &qword_27FA04850, &unk_25A9FDC60);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    goto LABEL_15;
  }

  sub_25A87817C(&v35, &v39);
  v8 = *(&v45 + 1);
  v9 = *&v46[0];
  __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
  v10 = *((*(v9 + 8))(v8, v9) + 16);

  __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  if (v10 != sub_25A998288())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v39);
    goto LABEL_14;
  }

  v48 = v2;
  v12 = *(&v40 + 1);
  v11 = v41;
  v13 = __swift_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v11 + 8);
  *(&v36 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v35);
  sub_25A998068();
  v32 = 32;
  for (i = 0; ; i = v28 + 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v35, *(&v36 + 1));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v19 = sub_25A9983F8();
    v20 = *(v19 - 8);
    v21 = *(v20 + 64);
    MEMORY[0x28223BE20](v19);
    v23 = &v32 - v22;
    sub_25A998448();
    v24 = *(AssociatedTypeWitness - 8);
    if ((*(v24 + 48))(v23, 1, AssociatedTypeWitness) == 1)
    {
      (*(v20 + 8))(v23, v19);
      __swift_destroy_boxed_opaque_existential_0Tm(&v35);
      __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    }

    v38[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v38);
    (*(v24 + 32))(boxed_opaque_existential_0, v23, AssociatedTypeWitness);
    v26 = *(&v45 + 1);
    v27 = *&v46[0];
    __swift_project_boxed_opaque_existential_1(&v44, *(&v45 + 1));
    result = (*(v27 + 8))(v26, v27);
    v28 = i;
    if (i >= *(result + 16))
    {
      break;
    }

    v29 = v32;
    sub_25A87500C(result + v32, v34);

    v30 = v48;
    sub_25A930C1C(v38, v34);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    if (v30)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v35);
      __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v44);
    }

    v48 = 0;
    v32 = v29 + 32;
  }

  __break(1u);
  return result;
}

uint64_t static MorpheusUtils.isEqual(x:y:)(void *a1, void *a2)
{
  v4 = static MorpheusUtils.isNil(_:)(a1);
  v5 = static MorpheusUtils.isNil(_:)(a2);
  v6 = v4 & v5;
  if (v4 & 1) != 0 || (v5)
  {
    return v6 & 1;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  if (DynamicType != swift_getDynamicType())
  {
    v6 = 0;
    return v6 & 1;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  return sub_25A9390C4(a1, a2);
}

BOOL static MorpheusUtils.isIdentical(_:_:)(void *a1, void *a2)
{
  if (static MorpheusUtils.isNil(_:)(a1) & 1) != 0 && (static MorpheusUtils.isNil(_:)(a2))
  {
    return 1;
  }

  if (static MorpheusUtils.isNil(_:)(a1) & 1) != 0 || (static MorpheusUtils.isNil(_:)(a2))
  {
    return 0;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = sub_25A9989D8();
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v6 = sub_25A9989D8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v5 == v6;
}

uint64_t static MorpheusUtils.toMLTensor(mlxArray:)(uint64_t a1)
{
  sub_25A872F24(a1, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05340, &qword_25A9FD9E8);
  type metadata accessor for MLXArray();
  if (!swift_dynamicCast())
  {
    sub_25A874F54();
    swift_allocError();
    *v5 = 111;
    return swift_willThrow();
  }

  sub_25A9616CC();
  sub_25A9723D0(1, &v10);
  v2 = v10;
  v1 = v11;
  sub_25A8F192C(v10, v11);
  sub_25A8F1980(&v10);
  swift_beginAccess();
  v3 = mlx_array_dtype(*(v8 + 16));
  v4 = sub_25A956420(v3);
  if (v4 > 4)
  {
    if (v4 < 8 || v4 == 9 || v4 == 10)
    {
      goto LABEL_9;
    }

LABEL_11:

    sub_25A874F54();
    swift_allocError();
    *v7 = 112;
    swift_willThrow();
    sub_25A8F1C54(v2, v1);
  }

  if (v4 >= 4)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_25A997BF8();
}

uint64_t static MorpheusUtils.getShape(_:)(uint64_t a1)
{
  sub_25A87500C(a1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    sub_25A878194(v31, &qword_27FA04728, &unk_25A9FD740);
    return MEMORY[0x277D84F90];
  }

  sub_25A87817C(v31, v34);
  v2 = v35;
  v3 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  v4 = (*(v3 + 8))(v2, v3);
  v5 = *(v4 + 16);
  if (v5)
  {
    v33[0] = MEMORY[0x277D84F90];
    sub_25A937650(0, v5, 0);
    v6 = 0;
    v7 = v33[0];
    v8 = v4 + 32;
    while (v6 < *(v4 + 16))
    {
      sub_25A87500C(v8, v31);
      v9 = static MorpheusUtils.getShape(_:)(v31);
      if (v1)
      {
        __swift_destroy_boxed_opaque_existential_0Tm(v31);

        return __swift_destroy_boxed_opaque_existential_0Tm(v34);
      }

      v10 = v9;
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      v33[0] = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_25A937650((v11 > 1), v12 + 1, 1);
        v7 = v33[0];
      }

      ++v6;
      *(v7 + 16) = v12 + 1;
      *(v7 + 8 * v12 + 32) = v10;
      v8 += 32;
      if (v5 == v6)
      {

        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
LABEL_13:
    v14 = *(v7 + 16);
    v15 = (v7 + 32);
    if (v14 < 2)
    {
LABEL_14:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_25A9F8D90;
      *(v16 + 32) = v5;
      if (v14)
      {
        v17 = *v15;
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
      }

      *&v31[0] = v16;
      sub_25A932C40(v17);
      v30 = *&v31[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      return v30;
    }

    v18 = 1;
    while (v18 < v14)
    {
      v19 = v15[v18];
      v20 = *v15;
      v21 = *(v19 + 16);
      if (v21 != *(*v15 + 16))
      {
LABEL_29:

        if (qword_27FA043C0 != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }

      if (v21)
      {
        v22 = v19 == v20;
      }

      else
      {
        v22 = 1;
      }

      if (!v22)
      {
        v23 = (v19 + 32);
        v24 = (v20 + 32);
        while (v21)
        {
          if (*v23 != *v24)
          {
            goto LABEL_29;
          }

          ++v23;
          ++v24;
          if (!--v21)
          {
            goto LABEL_17;
          }
        }

        goto LABEL_37;
      }

LABEL_17:
      if (++v18 == v14)
      {
        goto LABEL_14;
      }
    }
  }

  __break(1u);
LABEL_39:
  swift_once();
LABEL_30:
  v25 = sub_25A997BD8();
  __swift_project_value_buffer(v25, qword_27FA0FCE8);
  v26 = sub_25A997BB8();
  v27 = sub_25A9983A8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_25A232000, v26, v27, "Inhomogeneous shape", v28, 2u);
    MEMORY[0x25F852800](v28, -1, -1);
  }

  sub_25A874F54();
  swift_allocError();
  *v29 = 35;
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0Tm(v34);
}

uint64_t static MorpheusUtils.flattenNumericArray(_:)(uint64_t a1)
{
  v2 = v1;
  v56 = MEMORY[0x277D84F90];
  sub_25A87500C(a1, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (!swift_dynamicCast())
  {
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_25A878194(v50, &qword_27FA04728, &unk_25A9FD740);
    sub_25A87500C(a1, v53);
    sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v8 = *&v50[0];
      MEMORY[0x25F850420]();
      if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_57;
      }

      goto LABEL_6;
    }

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v9 = sub_25A997BD8();
    __swift_project_value_buffer(v9, qword_27FA0FCE8);
    v10 = sub_25A997BB8();
    v11 = sub_25A9983A8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25A232000, v10, v11, "Array contains non NSNumber", v12, 2u);
      MEMORY[0x25F852800](v12, -1, -1);
    }

    sub_25A874F54();
    swift_allocError();
    *v13 = 12;
    return swift_willThrow();
  }

  sub_25A87817C(v50, v53);
  v4 = v54;
  v5 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v6 = (*(v5 + 1))(v4, v5);
  v7 = sub_25A92F774(v6);

  if (v7)
  {
    sub_25A932F38(v7);
LABEL_49:
    __swift_destroy_boxed_opaque_existential_0Tm(v53);
    return v56;
  }

  v15 = v54;
  v8 = v55;
  __swift_project_boxed_opaque_existential_1(v53, v54);
  v16 = (*(v8 + 1))(v15, v8);
  v17 = v16;
  v47 = *(v16 + 16);
  if (!v47)
  {
LABEL_48:

    goto LABEL_49;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v46 = v16 + 32;
  v44 = v16;
  while (v18 < *(v17 + 16))
  {
    sub_25A87500C(v46 + 32 * v18, v50);
    v20 = v2;
    v21 = static MorpheusUtils.flattenNumericArray(_:)(v50);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(v50);

      return __swift_destroy_boxed_opaque_existential_0Tm(v53);
    }

    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    v23 = v22 >> 62;
    if (v22 >> 62)
    {
      v24 = sub_25A998848();
    }

    else
    {
      v24 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v19 >> 62;
    if (v19 >> 62)
    {
      v43 = sub_25A998848();
      v27 = v43 + v24;
      if (__OFADD__(v43, v24))
      {
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }
    }

    else
    {
      v26 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = v26 + v24;
      if (__OFADD__(v26, v24))
      {
        goto LABEL_47;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v25)
      {
        goto LABEL_29;
      }

      v28 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v27 <= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v8 = v24;
        v49 = v19;
        goto LABEL_31;
      }
    }

    else
    {
      if (v25)
      {
LABEL_29:
        sub_25A998848();
        goto LABEL_30;
      }

      v28 = v19 & 0xFFFFFFFFFFFFFF8;
    }

    v29 = *(v28 + 16);
LABEL_30:
    v8 = v24;
    v49 = sub_25A9986A8();
    v28 = v49 & 0xFFFFFFFFFFFFFF8;
LABEL_31:
    v30 = *(v28 + 16);
    v31 = *(v28 + 24);
    if (v23)
    {
      v33 = v28;
      v34 = sub_25A998848();
      v28 = v33;
      v32 = v34;
      if (!v34)
      {
LABEL_14:

        v19 = v49;
        if (v8 > 0)
        {
          goto LABEL_53;
        }

        goto LABEL_15;
      }
    }

    else
    {
      v32 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v32)
      {
        goto LABEL_14;
      }
    }

    if (((v31 >> 1) - v30) < v8)
    {
      goto LABEL_54;
    }

    v48 = v8;
    v35 = v28 + 8 * v30 + 32;
    v45 = v28;
    if (v23)
    {
      if (v32 < 1)
      {
        goto LABEL_56;
      }

      sub_25A939EB8(&qword_27FA05350, &qword_27FA05348, &qword_25A9FDA08);
      v36 = 0;
      v8 = v52;
      do
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05348, &qword_25A9FDA08);
        v37 = sub_25A93903C(v52, v36, v22);
        v39 = *v38;
        (v37)(v52, 0);
        *(v35 + 8 * v36++) = v39;
      }

      while (v32 != v36);
    }

    else
    {
      sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
      swift_arrayInitWithCopy();
    }

    v2 = v20;
    v17 = v44;
    v19 = v49;
    if (v48 > 0)
    {
      v40 = *(v45 + 16);
      v41 = __OFADD__(v40, v48);
      v42 = v40 + v48;
      if (v41)
      {
        goto LABEL_55;
      }

      *(v45 + 16) = v42;
    }

LABEL_15:
    ++v18;
    v56 = v19;
    if (v18 == v47)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  sub_25A998128();
LABEL_6:
  sub_25A998178();

  return v56;
}

uint64_t static MorpheusUtils.getType(of:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 9;
LABEL_9:
    *a2 = v5;
    return result;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = 0;
    return result;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result & 1) != 0 || (sub_25A87500C(a1, v19), result = swift_dynamicCast(), (result) || (sub_25A87500C(a1, v19), result = swift_dynamicCast(), result))
  {
    v5 = 10;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 1;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 2;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 3;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 4;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 5;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = 6;
    return result;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if (result)
  {
    v5 = 7;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  result = swift_dynamicCast();
  if ((result & 1) != 0 || (sub_25A87500C(a1, v19), result = swift_dynamicCast(), result))
  {
    v5 = 8;
    goto LABEL_9;
  }

  sub_25A87500C(a1, v19);
  if (swift_dynamicCast())
  {

    if (qword_27FA043C0 != -1)
    {
      swift_once();
    }

    v6 = sub_25A997BD8();
    __swift_project_value_buffer(v6, qword_27FA0FCE8);
    v7 = sub_25A997BB8();
    v8 = sub_25A9983A8();
    if (!os_log_type_enabled(v7, v8))
    {
      goto LABEL_39;
    }

    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "String isn't a numeric type";
    goto LABEL_38;
  }

  sub_25A87500C(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if (swift_dynamicCast())
  {
    sub_25A87817C(v16, v19);
    v11 = v20;
    v12 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v13 = (*(v12 + 8))(v11, v12);
    sub_25A933508(v13, a2);

    return __swift_destroy_boxed_opaque_existential_0Tm(v19);
  }

  v17 = 0;
  memset(v16, 0, sizeof(v16));
  sub_25A878194(v16, &qword_27FA04728, &unk_25A9FD740);
  if (qword_27FA043C0 != -1)
  {
    swift_once();
  }

  v14 = sub_25A997BD8();
  __swift_project_value_buffer(v14, qword_27FA0FCE8);
  v7 = sub_25A997BB8();
  v8 = sub_25A9983A8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    v10 = "Invalid numeric type";
LABEL_38:
    _os_log_impl(&dword_25A232000, v7, v8, v10, v9, 2u);
    MEMORY[0x25F852800](v9, -1, -1);
  }

LABEL_39:

  sub_25A874F54();
  swift_allocError();
  *v15 = 36;
  return swift_willThrow();
}

void sub_25A93254C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = 1;
    v5 = 32;
    do
    {
      v6 = *(a2 + v5);
      v7 = v4 * v6;
      if ((v4 * v6) >> 64 != (v4 * v6) >> 63)
      {
        __break(1u);
        return;
      }

      v5 += 8;
      v4 *= v6;
      --v3;
    }

    while (v3);
    if (a1[2] != v7)
    {
      goto LABEL_9;
    }

    sub_25A934F80(a1, a2, a3);
  }

  else if (a1[2] == 1)
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v10 = swift_allocObject();
    *a3 = v10;
    sub_25A87500C((a1 + 4), v10 + 16);
  }

  else
  {
LABEL_9:
    sub_25A874F54();
    swift_allocError();
    *v11 = 92;
    swift_willThrow();
  }
}

uint64_t sub_25A932654(uint64_t a1, uint64_t a2, void *a3)
{
  sub_25A87500C(a2, &v39);
  if (swift_dynamicCast())
  {
    v50[0] = v45;
    v50[1] = v46;
    v51 = v47;
    v48 = v43;
    v49 = v44;
    v7 = a3[3];
    v8 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v7);
    (*(v8 + 8))(v50 + 8, a1, v7, v8);
    return sub_25A878128(&v48);
  }

  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  sub_25A878194(&v43, &qword_27FA04548, &unk_25A9F86F0);
  sub_25A87500C(a2, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04748, &unk_25A9FD9F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *&v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_25A878194(&v43, &qword_27FA04728, &unk_25A9FD740);
LABEL_15:
    sub_25A874F54();
    swift_allocError();
    *v33 = 60;
    return swift_willThrow();
  }

  sub_25A87817C(&v43, &v48);
  sub_25A87500C(a1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04868, &qword_25A9F8EE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    AssociatedConformanceWitness = 0;
    v39 = 0u;
    v40 = 0u;
    sub_25A878194(&v39, &qword_27FA04850, &unk_25A9FDC60);
LABEL_14:
    __swift_destroy_boxed_opaque_existential_0Tm(&v48);
    goto LABEL_15;
  }

  sub_25A87817C(&v39, &v43);
  v10 = *(&v49 + 1);
  v11 = *&v50[0];
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  v12 = *((*(v11 + 8))(v10, v11) + 16);

  __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  if (v12 != sub_25A998288())
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v43);
    goto LABEL_14;
  }

  v35 = a3;
  v52 = v3;
  v14 = *(&v44 + 1);
  v13 = v45;
  v15 = __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(&v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v13 + 8);
  *(&v40 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(&v39);
  sub_25A998068();
  v36 = 32;
  for (i = 0; ; i = v30 + 1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(&v39, *(&v40 + 1));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v21 = sub_25A9983F8();
    v22 = *(v21 - 8);
    v23 = *(v22 + 64);
    MEMORY[0x28223BE20](v21);
    v25 = &v34 - v24;
    sub_25A998448();
    v26 = *(AssociatedTypeWitness - 8);
    if ((*(v26 + 48))(v25, 1, AssociatedTypeWitness) == 1)
    {
      (*(v22 + 8))(v25, v21);
      __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      __swift_destroy_boxed_opaque_existential_0Tm(&v43);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v48);
    }

    v42[3] = AssociatedTypeWitness;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42);
    (*(v26 + 32))(boxed_opaque_existential_0, v25, AssociatedTypeWitness);
    v28 = *(&v49 + 1);
    v29 = *&v50[0];
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    result = (*(v29 + 8))(v28, v29);
    v30 = i;
    if (i >= *(result + 16))
    {
      break;
    }

    v31 = v36;
    sub_25A87500C(result + v36, v38);

    v32 = v52;
    sub_25A932654(v42, v38, v35);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    __swift_destroy_boxed_opaque_existential_0Tm(v38);
    if (v32)
    {
      __swift_destroy_boxed_opaque_existential_0Tm(&v39);
      __swift_destroy_boxed_opaque_existential_0Tm(&v43);
      return __swift_destroy_boxed_opaque_existential_0Tm(&v48);
    }

    v52 = 0;
    v36 = v31 + 32;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A932C40(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25A967040(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v8 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25A932D2C(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_25A967258(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_25A932E24(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_25A967040(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + 8 * v16 + 32), (a2 + 8 * a3), 8 * v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_25A932F38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_25A998848();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_25A998848();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_25A938DFC(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_25A938E9C(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25A933028(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_25A966F38(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 4 * v8 + 32), (v6 + 32), 4 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25A933114(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_25A967378(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_25A933208(uint64_t result)
{
  v2 = *(result + 16);
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
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

  result = sub_25A967488(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t NumericType.hashValue.getter()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](v1);
  return sub_25A998B38();
}

uint64_t sub_25A9333BC()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](v1);
  return sub_25A998B38();
}

uint64_t sub_25A933430()
{
  v1 = *v0;
  sub_25A998B18();
  MEMORY[0x25F850E50](v1);
  return sub_25A998B38();
}

unint64_t sub_25A9334D4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (*(a2 + 16) < result)
    {
      v2 = *(a2 + 16);
    }

    return a2;
  }

  return result;
}

void *sub_25A933508@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v4 = result[2];
  if (v4)
  {
    v5 = 0;
    v6 = result + 4;
    v7 = 11;
    while (1)
    {
      v8 = v7;
      result = static MorpheusUtils.getType(of:)(&v13, &v6[4 * v5]);
      if (v2)
      {
        break;
      }

      v7 = v13;
      if (v8 != 11)
      {
        if (v8 == v13)
        {
          v7 = v8;
        }

        else
        {
          if (!qword_286C0B578)
          {
            goto LABEL_22;
          }

          v9 = 0;
          while (1)
          {
            v10 = *(&unk_286C0B568 + v9 + 32);
            if (v10 == v8)
            {
              break;
            }

            if (qword_286C0B578 == ++v9)
            {
              v9 = 0;
              goto LABEL_14;
            }
          }

          if (!qword_286C0B578)
          {
            goto LABEL_22;
          }

LABEL_14:
          v11 = 0;
          while (*(&unk_286C0B568 + v11 + 32) != v13)
          {
            if (qword_286C0B578 == ++v11)
            {
              goto LABEL_22;
            }
          }

          if (v10 == v8)
          {
            if (v9 > 0xA)
            {
              __break(1u);
LABEL_28:
              __break(1u);
              return result;
            }

            v12 = qword_286C0B7A8[v9 + 4];
            if (v11 >= *(v12 + 16))
            {
              goto LABEL_28;
            }

            v7 = *(v12 + v11 + 32);
          }

          else
          {
LABEL_22:
            v7 = 10;
          }
        }
      }

      if (++v5 == v4)
      {
        if (v7 != 11)
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    LOBYTE(v7) = 10;
LABEL_25:
    *a2 = v7;
  }

  return result;
}

uint64_t static MorpheusUtils.unwrapMorpheusResult(result:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_25A87500C(a1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  if (swift_dynamicCast())
  {
    v4 = v46[0];
    swift_beginAccess();
    v5 = *(v4 + 16);

    v7 = sub_25A936C50(v6);

    v8 = &qword_27FA04738;
    v9 = "^N\a";
LABEL_6:
    *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
    *&v43 = v7;
LABEL_7:
    static MorpheusUtils.unwrapMorpheusResult(result:)(a2, &v43);

    return __swift_destroy_boxed_opaque_existential_0Tm(&v43);
  }

  sub_25A87500C(a1, &v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04468, &qword_25A9F7FC0);
  if (swift_dynamicCast() || (sub_25A87500C(a1, &v43), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04788, &unk_25A9FDA20), swift_dynamicCast()))
  {
    v10 = v46[0];
    swift_beginAccess();
    v11 = *(v10 + 16);

    v7 = sub_25A93019C(v12);

    v8 = &qword_27FA04460;
    v9 = &qword_25A9FDA30;
    goto LABEL_6;
  }

  sub_25A87500C(a1, &v43);
  type metadata accessor for SharedMutableSet();
  if (swift_dynamicCast())
  {
    v14 = v46[0];
    swift_beginAccess();
    v15 = *(v14 + 16);
    *(&v44 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05360, &qword_25A9FDA40);
    *&v43 = v15;

    goto LABEL_7;
  }

  sub_25A87500C(a1, &v43);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04738, "^N\a");
  if (swift_dynamicCast())
  {
    v17 = v46[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05358, &qword_25A9FDA38);
    result = sub_25A998868();
    v18 = result;
    v19 = 0;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v17 + 64);
    v23 = (v20 + 63) >> 6;
    v41 = result + 64;
    if (v22)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_20:
        v27 = v24 | (v19 << 6);
        sub_25A874FB0(*(v17 + 48) + 40 * v27, &v43);
        sub_25A87500C(*(v17 + 56) + 32 * v27, v46);
        static MorpheusUtils.unwrapMorpheusResult(result:)(v42, v46);
        __swift_destroy_boxed_opaque_existential_0Tm(v46);
        *(v41 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
        v28 = v18[6] + 40 * v27;
        v29 = v43;
        v30 = v44;
        *(v28 + 32) = v45;
        *v28 = v29;
        *(v28 + 16) = v30;
        result = sub_25A872D74(v42, (v18[7] + 32 * v27));
        v31 = v18[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          break;
        }

        v18[2] = v33;
        if (!v22)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      v25 = v19;
      while (1)
      {
        v19 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        if (v19 >= v23)
        {

          a2[3] = v16;
          *a2 = v18;
          return result;
        }

        v26 = *(v17 + 64 + 8 * v19);
        ++v25;
        if (v26)
        {
          v24 = __clz(__rbit64(v26));
          v22 = (v26 - 1) & v26;
          goto LABEL_20;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_25A87500C(a1, &v43);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    if (swift_dynamicCast())
    {
      v35 = v46[0];
      v36 = *(v46[0] + 16);
      if (v36)
      {
        *&v42[0] = MEMORY[0x277D84F90];
        sub_25A937550(0, v36, 0);
        v37 = *&v42[0];
        v38 = v35 + 32;
        do
        {
          sub_25A87500C(v38, v46);
          static MorpheusUtils.unwrapMorpheusResult(result:)(&v43, v46);
          __swift_destroy_boxed_opaque_existential_0Tm(v46);
          *&v42[0] = v37;
          v40 = *(v37 + 16);
          v39 = *(v37 + 24);
          if (v40 >= v39 >> 1)
          {
            sub_25A937550((v39 > 1), v40 + 1, 1);
            v37 = *&v42[0];
          }

          *(v37 + 16) = v40 + 1;
          sub_25A872D74(&v43, (v37 + 32 * v40 + 32));
          v38 += 32;
          --v36;
        }

        while (v36);
      }

      else
      {

        v37 = MEMORY[0x277D84F90];
      }

      a2[3] = v34;
      *a2 = v37;
    }

    else
    {
      return sub_25A87500C(a1, a2);
    }
  }

  return result;
}

uint64_t static MorpheusUtils.toMLXArray(mlTensor:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_25A933B7C, 0, 0);
}

uint64_t sub_25A933B7C()
{
  v1 = v0[3];
  sub_25A997BE8();
  if (swift_dynamicCastMetatype())
  {
    v2 = *(MEMORY[0x277CBFDA0] + 4);
    v3 = swift_task_alloc();
    v0[4] = v3;
    *v3 = v0;
    v3[1] = sub_25A93402C;
    v4 = v0[3];
    v5 = MEMORY[0x277D839B0];
LABEL_19:

    return MEMORY[0x2821118F8](v5);
  }

  if (swift_dynamicCastMetatype())
  {
    v6 = *(MEMORY[0x277CBFDA0] + 4);
    v7 = swift_task_alloc();
    v0[6] = v7;
    *v7 = v0;
    v7[1] = sub_25A9341E0;
    v8 = v0[3];
    v5 = MEMORY[0x277D84DC8];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v9 = *(MEMORY[0x277CBFDA0] + 4);
    v10 = swift_task_alloc();
    v0[8] = v10;
    *v10 = v0;
    v10[1] = sub_25A934394;
    v11 = v0[3];
    v5 = MEMORY[0x277D83A90];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v12 = *(MEMORY[0x277CBFDA0] + 4);
    v13 = swift_task_alloc();
    v0[10] = v13;
    *v13 = v0;
    v13[1] = sub_25A934548;
    v14 = v0[3];
    v5 = MEMORY[0x277D84B78];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v15 = *(MEMORY[0x277CBFDA0] + 4);
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_25A9346FC;
    v17 = v0[3];
    v5 = MEMORY[0x277D84C58];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v18 = *(MEMORY[0x277CBFDA0] + 4);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_25A9348B0;
    v20 = v0[3];
    v5 = MEMORY[0x277D84CC0];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v21 = *(MEMORY[0x277CBFDA0] + 4);
    v22 = swift_task_alloc();
    v0[16] = v22;
    *v22 = v0;
    v22[1] = sub_25A934A64;
    v23 = v0[3];
    v5 = MEMORY[0x277D84900];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v24 = *(MEMORY[0x277CBFDA0] + 4);
    v25 = swift_task_alloc();
    v0[18] = v25;
    *v25 = v0;
    v25[1] = sub_25A934C18;
    v26 = v0[3];
    v5 = MEMORY[0x277D84958];
    goto LABEL_19;
  }

  if (swift_dynamicCastMetatype())
  {
    v27 = *(MEMORY[0x277CBFDA0] + 4);
    v28 = swift_task_alloc();
    v0[20] = v28;
    *v28 = v0;
    v28[1] = sub_25A934DCC;
    v29 = v0[3];
    v5 = MEMORY[0x277D849A8];
    goto LABEL_19;
  }

  sub_25A874F54();
  swift_allocError();
  *v30 = 112;
  swift_willThrow();
  v31 = v0[1];

  return v31();
}

uint64_t sub_25A93402C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_25A93412C, 0, 0);
}

uint64_t sub_25A93412C()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A939154(v1, v3);
  v5 = v0[5];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A9341E0(uint64_t a1)
{
  v2 = *(*v1 + 48);
  v4 = *v1;
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_25A9342E0, 0, 0);
}

uint64_t sub_25A9342E0()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A939274(v1, v3);
  v5 = v0[7];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A934394(uint64_t a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_25A934494, 0, 0);
}

uint64_t sub_25A934494()
{
  v1 = v0[9];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A939394(v1, v3);
  v5 = v0[9];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A934548(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v4 = *v1;
  *(*v1 + 88) = a1;

  return MEMORY[0x2822009F8](sub_25A934648, 0, 0);
}

uint64_t sub_25A934648()
{
  v1 = v0[11];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A939934(v1, v3);
  v5 = v0[11];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A9346FC(uint64_t a1)
{
  v2 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = a1;

  return MEMORY[0x2822009F8](sub_25A9347FC, 0, 0);
}

uint64_t sub_25A9347FC()
{
  v1 = v0[13];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A939A54(v1, v3);
  v5 = v0[13];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A9348B0(uint64_t a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_25A9349B0, 0, 0);
}

uint64_t sub_25A9349B0()
{
  v1 = v0[15];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A939B74(v1, v3);
  v5 = v0[15];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A934A64(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_25A934B64, 0, 0);
}

uint64_t sub_25A934B64()
{
  v1 = v0[17];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A9394B4(v1, v3);
  v5 = v0[17];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A934C18(uint64_t a1)
{
  v2 = *(*v1 + 144);
  v4 = *v1;
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_25A934D18, 0, 0);
}

uint64_t sub_25A934D18()
{
  v1 = v0[19];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A9395D4(v1, v3);
  v5 = v0[19];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

uint64_t sub_25A934DCC(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_25A934ECC, 0, 0);
}

uint64_t sub_25A934ECC()
{
  v1 = v0[21];
  v2 = v0[3];
  v3 = sub_25A997C08();
  v4 = sub_25A9396F4(v1, v3);
  v5 = v0[21];
  v6 = v0[2];

  v6[3] = type metadata accessor for MLXArray();
  v6[4] = &off_286C10260;
  *v6 = v4;
  v7 = v0[1];

  return v7();
}

void sub_25A934F80(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5 == 1)
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    *a3 = a1;

    return;
  }

  if (!v5)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  v6 = *(a2 + 32);
  if (!v6)
  {
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
    *a3 = MEMORY[0x277D84F90];
    return;
  }

  sub_25A93718C(a2, a2 + 32, 1, (2 * v5) | 1);
  v8 = a1[2];
  v9 = v8 / v6;
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = v7;

  v11 = sub_25A93A090(0, v8, v9, a1, v9);

  v12 = *(v11 + 16);
  if (v12)
  {
    v20 = MEMORY[0x277D84F90];
    sub_25A937550(0, v12, 0);
    v13 = 32;
    v14 = v20;
    do
    {
      v15 = *(v11 + v13);

      sub_25A934F80(v19, v16, v10);

      v20 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_25A937550((v17 > 1), v18 + 1, 1);
        v14 = v20;
      }

      *(v14 + 16) = v18 + 1;
      sub_25A872D74(v19, (v14 + 32 * v18 + 32));
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  *a3 = v14;
}

unint64_t sub_25A935270(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t), void (*a8)(unint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v8;
  v91 = a6;
  v68 = result;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v61 = result;

    v10 = MEMORY[0x25F8509C0](v61, a2);
LABEL_5:
    v11 = v10[5];
    v12 = v10[6];
    ObjectType = swift_getObjectType();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v15 = v10[4];
    v16 = *(v12 + 48);
    swift_unknownObjectRetain();
    v16(Strong, v15, ObjectType, v12);
    swift_unknownObjectRelease();
    v17 = v10[7];
    v18 = v10[8];
    v19 = swift_getObjectType();
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = v10[4];
    v22 = *(v18 + 48);
    swift_unknownObjectRetain();
    v22(v20, v21, v19, v18);
    swift_unknownObjectRelease();
    v23 = *(v10[9] + 16);
    if (v23)
    {
      v71 = v9;
      v24 = ( + 40);
      do
      {
        v25 = *(v24 - 1);
        v26 = *v24;
        v27 = swift_getObjectType();
        v28 = swift_unknownObjectWeakLoadStrong();
        v29 = v10[4];
        v30 = *(v26 + 48);
        swift_unknownObjectRetain();
        v30(v28, v29, v27, v26);
        swift_unknownObjectRelease();
        v24 += 2;
        --v23;
      }

      while (v23);

      v9 = v71;
    }

    v31 = v10[5];
    v32 = v10[6];
    v33 = swift_getObjectType();
    v34 = *(v32 + 64);
    swift_unknownObjectRetain();
    v34(v87, v33, v32);
    if (v9)
    {

      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    sub_25A896580(v90);
    sub_25A872CE0(v87);
    v35 = v10[7];
    v36 = v10[8];
    v37 = swift_getObjectType();
    v38 = *(v36 + 64);
    swift_unknownObjectRetain();
    v38(&v78, v37, v36);
    swift_unknownObjectRelease();
    sub_25A9119F0(&v84);
    sub_25A872CE0(&v78);
    if (v85)
    {
      sub_25A87817C(&v84, v87);
      v39 = v88;
      v40 = v89;
      __swift_project_boxed_opaque_existential_1(v87, v88);
      (*(v40 + 16))(v39, v40);
      sub_25A9988A8();
      if (v83)
      {
        v41 = a4;
        v42 = __OFADD__(v68, 1);
        v63 = v42;
        while (1)
        {
          sub_25A872D74(&v82, v81);
          v43 = swift_getObjectType();
          v44 = (*(v41 + 8))(v43, v41);
          v85 = type metadata accessor for LexicalContext();
          v86 = &protocol witness table for LexicalContext;
          *&v84 = v44;
          sub_25A932654(v81, v90, &v84);
          __swift_destroy_boxed_opaque_existential_0Tm(&v84);
          v45 = v10[9];
          v46 = *(v45 + 16);

          if (v46)
          {
            break;
          }

LABEL_26:

          if (a2 >> 62)
          {
            result = sub_25A998848();
          }

          else
          {
            result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v57 = v91;
          v41 = a4;
          if (__OFSUB__(result, 1))
          {
            goto LABEL_48;
          }

          if (result - 1 == v68)
          {
            a7(a5, v91);
          }

          else
          {
            if (v63)
            {
              goto LABEL_49;
            }

            a8(v68 + 1, a2, a3, a4, a5, v57);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(v81);
LABEL_35:
          sub_25A9988A8();
          if (!v83)
          {
            goto LABEL_39;
          }
        }

        v47 = 0;
        v48 = (v45 + 40);
        while (v47 < *(v45 + 16))
        {
          v72 = v47;
          v49 = *(v48 - 1);
          v50 = *v48;
          v51 = swift_getObjectType();
          v52 = *(v50 + 64);
          swift_unknownObjectRetain();
          v52(v77, v51, v50);
          sub_25A872C84(v77, v73);
          if (v74)
          {
            sub_25A872CE0(v73);
            sub_25A872C84(v77, v73);
            if (v74 != 1)
            {
              sub_25A872CE0(v77);
              sub_25A872CE0(v73);
              v78 = 0u;
              v79 = 0u;
              v80 = 0;
LABEL_41:

              sub_25A878194(&v78, &qword_27FA047E8, &unk_25A9FBF80);
              sub_25A874F54();
              swift_allocError();
              *v60 = 108;
              swift_willThrow();

              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_0Tm(v81);
              __swift_destroy_boxed_opaque_existential_0Tm(v90);
              goto LABEL_42;
            }
          }

          v75 = v73[0];
          v76 = v73[1];
          *(&v79 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
          v80 = &protocol witness table for A?;
          v53 = swift_allocObject();
          *&v78 = v53;
          v54 = v76;
          *(v53 + 16) = v75;
          *(v53 + 32) = v54;
          sub_25A872CE0(v77);
          if (!*(&v79 + 1))
          {
            goto LABEL_41;
          }

          sub_25A87817C(&v78, &v84);
          v55 = v85;
          v56 = v86;
          __swift_project_boxed_opaque_existential_1(&v84, v85);
          LOBYTE(v55) = (v56[1])(v55, v56);
          swift_unknownObjectRelease();
          if ((v55 & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_0Tm(v81);

            __swift_destroy_boxed_opaque_existential_0Tm(&v84);
            v41 = a4;
            goto LABEL_35;
          }

          v47 = v72 + 1;
          result = __swift_destroy_boxed_opaque_existential_0Tm(&v84);
          v48 += 2;
          if (v46 == v72 + 1)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_47;
      }

LABEL_39:
      __swift_destroy_boxed_opaque_existential_0Tm(v90);

LABEL_42:
      v59 = v87;
    }

    else
    {
      sub_25A878194(&v84, &qword_27FA04CB8, &unk_25A9FDC50);
      sub_25A874F54();
      swift_allocError();
      *v58 = 108;
      swift_willThrow();

      v59 = v90;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v59);
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
  {
    v10 = *(a2 + 8 * result + 32);

    goto LABEL_5;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

uint64_t static MorpheusUtils.swiftfy(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_25A997AB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25A8952F0(a1, v70, &qword_27FA04458, &unk_25A9F7FB0);
  if (!v71)
  {
    goto LABEL_44;
  }

  sub_25A8952F0(v70, v69, &qword_27FA04458, &unk_25A9F7FB0);
  sub_25A8E6ABC(0, &qword_27FA05368, 0x277CBEAC0);
  v9 = MEMORY[0x277D84F70];
  if (!swift_dynamicCast())
  {
    sub_25A8E6ABC(0, &qword_27FA05370, 0x277CBEA60);
    if (swift_dynamicCast())
    {
      v52 = a2;
      v30 = *&v59[0];
      v31 = [*&v59[0] count];
      *&v58[0] = MEMORY[0x277D84F90];
      sub_25A937550(0, v31 & ~(v31 >> 63), 0);
      v32 = *&v58[0];
      sub_25A9983D8();
      if (v31 < 0)
      {
        goto LABEL_48;
      }

      v53 = v5;
      v51 = v30;
      if (v31)
      {
        sub_25A939DD8();
        do
        {
          sub_25A998448();
          if (!*(&v61 + 1))
          {
            goto LABEL_49;
          }

          sub_25A87500C(&v60, &v55);
          static MorpheusUtils.swiftfy(_:)(&v64, &v55);
          sub_25A878194(&v55, &qword_27FA04458, &unk_25A9F7FB0);
          __swift_destroy_boxed_opaque_existential_0Tm(&v60);
          *&v58[0] = v32;
          v34 = *(v32 + 16);
          v33 = *(v32 + 24);
          if (v34 >= v33 >> 1)
          {
            sub_25A937550((v33 > 1), v34 + 1, 1);
            v32 = *&v58[0];
          }

          *(v32 + 16) = v34 + 1;
          sub_25A872D74(&v64, (v32 + 32 * v34 + 32));
          --v31;
        }

        while (v31);
      }

      sub_25A939DD8();
      sub_25A998448();
      while (*(&v61 + 1))
      {
        sub_25A872D74(&v60, &v64);
        sub_25A87500C(&v64, &v55);
        static MorpheusUtils.swiftfy(_:)(&v60, &v55);
        sub_25A878194(&v55, &qword_27FA04458, &unk_25A9F7FB0);
        __swift_destroy_boxed_opaque_existential_0Tm(&v64);
        *&v58[0] = v32;
        v37 = *(v32 + 16);
        v36 = *(v32 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_25A937550((v36 > 1), v37 + 1, 1);
          v32 = *&v58[0];
        }

        *(v32 + 16) = v37 + 1;
        sub_25A872D74(&v60, (v32 + 32 * v37 + 32));
        sub_25A998448();
      }

      (*(v53 + 8))(v8, v4);
      sub_25A878194(&v60, &qword_27FA04458, &unk_25A9F7FB0);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
      v39 = v51;
      v40 = v52;
      v52[3] = v38;

      *v40 = v32;
      goto LABEL_38;
    }

    sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v35 = v64;
      NSNumber.swiftValue.getter(a2);

LABEL_38:
      __swift_destroy_boxed_opaque_existential_0Tm(v69);
      return sub_25A878194(v70, &qword_27FA04458, &unk_25A9F7FB0);
    }

    sub_25A8E6ABC(0, &qword_27FA04A70, 0x277CCACA8);
    if (swift_dynamicCast())
    {
      v44 = v64;
      v45 = sub_25A997E28();
      v47 = v46;
      a2[3] = MEMORY[0x277D837D0];

      *a2 = v45;
      a2[1] = v47;
      goto LABEL_38;
    }

    sub_25A8E6ABC(0, &qword_27FA05378, 0x277CBEB68);
    if (swift_dynamicCast())
    {

      a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
      v48 = swift_allocObject();
      *a2 = v48;
      *(v48 + 16) = 0u;
      *(v48 + 32) = 0u;
      goto LABEL_38;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v69);
LABEL_44:
    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    v49 = swift_allocObject();
    *a2 = v49;
    sub_25A8952F0(a1, v49 + 16, &qword_27FA04458, &unk_25A9F7FB0);
    return sub_25A878194(v70, &qword_27FA04458, &unk_25A9F7FB0);
  }

  v52 = a2;
  v51 = v68;
  v10 = sub_25A998368();
  sub_25A998378();
  v64 = v60;
  v65 = v61;
  v66 = v62;
  v67 = v63;
  if (!*(&v61 + 1))
  {
    v11 = MEMORY[0x277D84F98];
LABEL_37:

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048F0, "2K\a");
    v42 = v51;
    v43 = v52;
    v52[3] = v41;

    *v43 = v11;
    goto LABEL_38;
  }

  v11 = MEMORY[0x277D84F98];
  v53 = v10;
  while (1)
  {
    sub_25A872D74(&v66, v59);
    sub_25A872D74(&v64, v58);
    if (swift_dynamicCast())
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    sub_25A878194(&v55, &qword_27FA04610, &qword_25A9FDA50);
LABEL_6:
    sub_25A998378();
    v64 = v60;
    v65 = v61;
    v66 = v62;
    v67 = v63;
    if (!*(&v61 + 1))
    {
      goto LABEL_37;
    }
  }

  v12 = v9;
  v60 = v55;
  v61 = v56;
  *&v62 = v57;
  v13 = sub_25A998548();
  v15 = v14;
  sub_25A87500C(v59, v58);
  static MorpheusUtils.swiftfy(_:)(&v55, v58);
  sub_25A878194(v58, &qword_27FA04458, &unk_25A9F7FB0);
  sub_25A872D74(&v55, v58);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = v11;
  v18 = sub_25A8F3600(v13, v15);
  v19 = v11[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (!__OFADD__(v19, v20))
  {
    v22 = v17;
    if (v11[3] < v21)
    {
      sub_25A967C88(v21, isUniquelyReferenced_nonNull_native);
      v23 = sub_25A8F3600(v13, v15);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_50;
      }

      v18 = v23;
      if ((v22 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_15:

      v11 = v54;
      v25 = (v54[7] + 32 * v18);
      __swift_destroy_boxed_opaque_existential_0Tm(v25);
      sub_25A872D74(v58, v25);
      sub_25A8795A0(&v60);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
LABEL_19:
      v9 = v12;
      goto LABEL_6;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v17)
      {
        goto LABEL_15;
      }
    }

    else
    {
      sub_25A968F5C();
      if (v22)
      {
        goto LABEL_15;
      }
    }

LABEL_17:
    v11 = v54;
    v54[(v18 >> 6) + 8] |= 1 << v18;
    v26 = (v11[6] + 16 * v18);
    *v26 = v13;
    v26[1] = v15;
    sub_25A872D74(v58, (v11[7] + 32 * v18));
    sub_25A8795A0(&v60);
    __swift_destroy_boxed_opaque_existential_0Tm(v59);
    v27 = v11[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_47;
    }

    v11[2] = v29;
    goto LABEL_19;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_25A998AA8();
  __break(1u);
  return result;
}

void *sub_25A936284()
{
  type metadata accessor for LexicalContext();
  v0[3] = 0;
  v0[4] = 0;
  v1 = swift_allocObject();
  v1[2] = 0x6E776F6E6B6E55;
  v1[3] = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v4 + 16) = v3;
  v1[4] = v4;
  v1[5] = sub_25A98E67C(v2);
  v0[2] = v1;
  v1[2] = 0x656E696C6E49;
  v1[3] = 0xE600000000000000;

  return v0;
}

double sub_25A936380@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v8 = *(v3 + 16);

  LexicalContext.attribute(for:)(a1, a2, &v19);

  if (v20)
  {
    sub_25A872D74(&v19, a3);
  }

  else
  {
    sub_25A878194(&v19, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    if (*(v4 + 24))
    {
      v10 = *(v4 + 32);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 48);
      swift_unknownObjectRetain();
      v12(a1, a2, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      if (qword_27FA043C0 != -1)
      {
        swift_once();
      }

      v13 = sub_25A997BD8();
      __swift_project_value_buffer(v13, qword_27FA0FCE8);

      v14 = sub_25A997BB8();
      v15 = sub_25A9983A8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v18 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_25A98CC90(a1, a2, &v18);
        _os_log_impl(&dword_25A232000, v14, v15, "TempBlock> Can't locate name %s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v17);
        MEMORY[0x25F852800](v17, -1, -1);
        MEMORY[0x25F852800](v16, -1, -1);
      }

      result = 0.0;
      *a3 = 0u;
      a3[1] = 0u;
    }
  }

  return result;
}

uint64_t sub_25A93659C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(v2 + 16);

  v7._countAndFlagsBits = a1;
  v7._object = a2;
  v8 = LexicalContext.has(attribute:)(v7);

  if (v8)
  {
    v9 = 1;
  }

  else
  {
    swift_beginAccess();
    if (*(v3 + 24))
    {
      v10 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      v12 = *(v10 + 56);
      swift_unknownObjectRetain();
      v9 = v12(a1, a2, ObjectType, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_25A936684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v12[3] = MEMORY[0x277D837D0];
  v12[0] = a1;
  v12[1] = a2;
  sub_25A87500C(v12, v11);

  if (swift_dynamicCast())
  {
    v6 = *(v5 + 32);

    sub_25A998578();
    sub_25A87500C(a3, v10);
    sub_25A874FB0(v11, &v9);
    sub_25A8952F0(v10, v8, &qword_27FA04458, &unk_25A9F7FB0);
    swift_beginAccess();
    sub_25A8F2E14(v8, &v9);
    swift_endAccess();

    sub_25A878194(v10, &qword_27FA04458, &unk_25A9F7FB0);
    sub_25A8795A0(v11);
  }

  else
  {
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_25A9367E8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_25A936830()
{
  swift_beginAccess();
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_25A936874(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return swift_unknownObjectRelease();
}

uint64_t sub_25A936924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a4;
  v32 = a2;
  v6 = sub_25A9983F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v29 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v12);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v29 - v20;
  sub_25A87500C(a1, v33);
  v22 = swift_dynamicCast();
  v23 = *(v15 + 56);
  if ((v22 & 1) == 0)
  {
    v23(v14, 1, 1, a3);
    (*(v7 + 8))(v14, v6);
LABEL_6:
    v26 = 0;
    return v26 & 1;
  }

  v30 = v6;
  v23(v14, 0, 1, a3);
  v24 = v14;
  v25 = *(v15 + 32);
  v25(v21, v24, a3);
  sub_25A87500C(v32, v33);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23(v11, 1, 1, a3);
    (*(v15 + 8))(v21, a3);
    (*(v7 + 8))(v11, v30);
    goto LABEL_6;
  }

  v23(v11, 0, 1, a3);
  v25(v19, v11, a3);
  v26 = sub_25A997DF8();
  v27 = *(v15 + 8);
  v27(v19, a3);
  v27(v21, a3);
  return v26 & 1;
}

uint64_t sub_25A936C50(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05358, &qword_25A9FDA38);
    v2 = sub_25A998888();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    sub_25A874FB0(*(a1 + 48) + 40 * v13, &v36);
    sub_25A87500C(*(a1 + 56) + 32 * v13, v38 + 8);
    v34[0] = v38[0];
    v34[1] = v38[1];
    v35 = v39;
    v33[2] = v36;
    v33[3] = v37;
    v22 = v36;
    v24 = v37;
    v26 = *&v38[0];
    sub_25A872D74((v34 + 8), v28);
    v29 = v22;
    v30 = v24;
    v31 = v26;
    sub_25A872D74(v28, v32);
    v23 = v29;
    v25 = v30;
    v27 = v31;
    sub_25A872D74(v32, v33);
    v14 = *(v2 + 40);
    result = sub_25A998558();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v25;
    *(v11 + 32) = v27;
    result = sub_25A872D74(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_25A936F00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04CC8, &unk_25A9FDC30);
    v1 = sub_25A998888();
  }

  else
  {
    v1 = MEMORY[0x277D84F98];
  }

  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v5)
    {

      return v1;
    }

    v4 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v4)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        sub_25A8952F0(*(a1 + 56) + 32 * v14, &v30, &qword_27FA04458, &unk_25A9F7FB0);
        v28 = v17;
        v29 = v16;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
        swift_dynamicCast();
        sub_25A872D74(&v24, v26);
        sub_25A872D74(v26, v27);
        sub_25A872D74(v27, &v25);
        result = sub_25A8F3600(v17, v16);
        if (v18)
        {
          v8 = (v1[6] + 16 * result);
          v9 = v8[1];
          *v8 = v17;
          v8[1] = v16;
          v10 = result;

          v11 = (v1[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_25A872D74(&v25, v11);
          v7 = v12;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v1[2] >= v1[3])
          {
            goto LABEL_20;
          }

          *(v1 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v19 = (v1[6] + 16 * result);
          *v19 = v17;
          v19[1] = v16;
          result = sub_25A872D74(&v25, (v1[7] + 32 * result));
          v20 = v1[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v1[2] = v22;
          v7 = v12;
          if (!v4)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_25A93718C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_25A937260(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x277D84F90];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 4 * a3), 4 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 29;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 2);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_25A937334(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B0, &qword_25A9FDC20);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 29;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 2);
  return v4;
}

void *sub_25A9373B8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 25;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 3);
  return v4;
}

void *sub_25A93743C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053D0, &qword_25A9FDC88);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void *sub_25A9374CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v6 = v5 - 32;
  if (v5 < 32)
  {
    v6 = v5 - 1;
  }

  v4[2] = a1;
  v4[3] = 2 * (v6 >> 5);
  return v4;
}

char *sub_25A937550(char *a1, int64_t a2, char a3)
{
  result = sub_25A937A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937570(char *a1, int64_t a2, char a3)
{
  result = sub_25A938CFC(a1, a2, a3, *v3, &qword_27FA04920, &qword_25A9FDA00);
  *v3 = result;
  return result;
}

char *sub_25A9375A0(char *a1, int64_t a2, char a3)
{
  result = sub_25A937B54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A9375C0(char *a1, int64_t a2, char a3)
{
  result = sub_25A937C64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A9375E0(char *a1, int64_t a2, char a3)
{
  result = sub_25A937FD8(a1, a2, a3, *v3, &qword_27FA053B0, &qword_25A9FDC20);
  *v3 = result;
  return result;
}

char *sub_25A937610(char *a1, int64_t a2, char a3)
{
  result = sub_25A937D6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937630(void *a1, int64_t a2, char a3)
{
  result = sub_25A937E8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937650(void *a1, int64_t a2, char a3)
{
  result = sub_25A938A78(a1, a2, a3, *v3, &qword_27FA05458, &qword_25A9FDD38, &qword_27FA04830, &qword_25A9FDD40);
  *v3 = result;
  return result;
}

char *sub_25A937690(char *a1, int64_t a2, char a3)
{
  result = sub_25A938CFC(a1, a2, a3, *v3, &qword_27FA05448, &unk_25A9FDD10);
  *v3 = result;
  return result;
}

char *sub_25A9376C0(char *a1, int64_t a2, char a3)
{
  result = sub_25A937FD8(a1, a2, a3, *v3, &qword_27FA05440, &qword_25A9FDD08);
  *v3 = result;
  return result;
}

char *sub_25A9376F0(char *a1, int64_t a2, char a3)
{
  result = sub_25A9380D8(a1, a2, a3, *v3, &qword_27FA05438, &qword_25A9FDD00);
  *v3 = result;
  return result;
}

char *sub_25A937720(char *a1, int64_t a2, char a3)
{
  result = sub_25A9381D0(a1, a2, a3, *v3, &qword_27FA053E0, &qword_25A9FDC98);
  *v3 = result;
  return result;
}

char *sub_25A937750(char *a1, int64_t a2, char a3)
{
  result = sub_25A938CFC(a1, a2, a3, *v3, &qword_27FA053D8, &qword_25A9FDC90);
  *v3 = result;
  return result;
}

char *sub_25A937780(char *a1, int64_t a2, char a3)
{
  result = sub_25A9380D8(a1, a2, a3, *v3, &qword_27FA05430, &qword_25A9FDCF8);
  *v3 = result;
  return result;
}

char *sub_25A9377B0(char *a1, int64_t a2, char a3)
{
  result = sub_25A9381D0(a1, a2, a3, *v3, &qword_27FA05428, &qword_25A9FDCF0);
  *v3 = result;
  return result;
}

char *sub_25A9377E0(char *a1, int64_t a2, char a3)
{
  result = sub_25A9382C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937800(char *a1, int64_t a2, char a3)
{
  result = sub_25A9383C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937820(char *a1, int64_t a2, char a3)
{
  result = sub_25A9384C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937840(void *a1, int64_t a2, char a3)
{
  result = sub_25A9385C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937860(void *a1, int64_t a2, char a3)
{
  result = sub_25A93870C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25A937880(char *a1, int64_t a2, char a3)
{
  result = sub_25A938844(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A9378A0(void *a1, int64_t a2, char a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA04710, &unk_25A9FDC70, &qword_27FA04800, &qword_25A9F8E90);
  *v3 = result;
  return result;
}

char *sub_25A9378E0(char *a1, int64_t a2, char a3)
{
  result = sub_25A938954(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25A937900(void *a1, int64_t a2, char a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA05450, &qword_25A9FDD30, &qword_27FA05178, &qword_25A9FBFA0);
  *v3 = result;
  return result;
}

void *sub_25A937940(void *a1, int64_t a2, char a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA053C0, &qword_25A9FDC48, &qword_27FA04810, &qword_25A9F8E98);
  *v3 = result;
  return result;
}

void *sub_25A937980(void *a1, int64_t a2, char a3)
{
  result = sub_25A938A78(a1, a2, a3, *v3, &qword_27FA053A0, &qword_25A9FDC10, &qword_27FA04460, &qword_25A9FDA30);
  *v3 = result;
  return result;
}

void *sub_25A9379C0(void *a1, int64_t a2, char a3)
{
  result = sub_25A938A78(a1, a2, a3, *v3, &qword_27FA053F8, &unk_25A9FDCB0, &qword_27FA05360, &qword_25A9FDA40);
  *v3 = result;
  return result;
}

void *sub_25A937A00(void *a1, int64_t a2, char a3)
{
  result = sub_25A938BB0(a1, a2, a3, *v3, &qword_27FA05400, &qword_25A9FDCC8, &qword_27FA04E88, &qword_25A9FBA48);
  *v3 = result;
  return result;
}

char *sub_25A937A40(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A937B54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04720, "PN\a");
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A937C64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053A8, &qword_25A9FDC18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_25A937D6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053B8, &qword_25A9FDC28);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25A937E8C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053C8, &qword_25A9FDC80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04610, &qword_25A9FDA50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A937FD8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_25A9380D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_25A9381D0(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_25A9382C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05420, &qword_25A9FDCE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_25A9383C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05418, &qword_25A9FDCE0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_25A9384C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05410, &qword_25A9FDCD8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void *sub_25A9385C0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053E8, &qword_25A9FDCA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053F0, &qword_25A9FDCA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25A93870C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04790, &qword_25A9F8E58);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04458, &unk_25A9F7FB0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A938844(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05408, &qword_25A9FDCD0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25A938954(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA053D0, &qword_25A9FDC88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25A938A78(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_25A938BB0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_25A938CFC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

uint64_t sub_25A938DFC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_25A998848();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_25A9986A8();
  *v1 = result;
  return result;
}

uint64_t sub_25A938E9C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_25A998848();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_25A998848();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_25A939EB8(&qword_27FA05350, &qword_27FA05348, &qword_25A9FDA08);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05348, &qword_25A9FDA08);
            v9 = sub_25A93903C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_25A8E6ABC(0, &qword_27FA044A8, 0x277CCABB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_25A93903C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x25F8509C0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_25A9390BC;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A9390C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EquatableWrapper();
  v5 = swift_conformsToProtocol2();
  if (v5 && v4)
  {
    return (*(v5 + 8))(a1, a2, v4, v5) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25A939154(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 0);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A939274(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 9);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A939394(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 10);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A9394B4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 5);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A9395D4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 6);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A9396F4(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 7);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A939814(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 8);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A939934(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 1);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A939A54(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 2);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_25A939B74(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 16);
  if (!a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04920, &qword_25A9FDA00);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_25A9F8D90;
    *(v9 + 32) = v3;
LABEL_10:

    v10 = Array<A>.asInt32.getter(v9);
    v11 = *(v9 + 16);

    if (!(v11 >> 31))
    {
      v12 = mlx_array_new_data(v2 + 32, (v10 + 32), v11, 3);

      type metadata accessor for MLXArray();
      result = swift_allocObject();
      *(result + 16) = v12;
      return result;
    }

    goto LABEL_13;
  }

  v4 = *(a2 + 16);
  if (!v4)
  {
    v8 = 1;
LABEL_9:
    v9 = a2;
    if (v8 != v3)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  v5 = (a2 + 32);
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
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_25A939C94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v11 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v13 = v8 + v6;
      }

      else
      {
        v13 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_25A967258(isUniquelyReferenced_nonNull_native, v13, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v14 = *(v7 + 2);
  v15 = __OFADD__(v14, v6);
  v16 = v14 + v6;
  if (!v15)
  {
    *(v7 + 2) = v16;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_25A939D98()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_25A939DD8()
{
  result = qword_27FA05380;
  if (!qword_27FA05380)
  {
    sub_25A997AB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05380);
  }

  return result;
}

unint64_t sub_25A939E34()
{
  result = qword_27FA05388;
  if (!qword_27FA05388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05388);
  }

  return result;
}

uint64_t sub_25A939EB8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for NumericType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NumericType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25A93A090(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2;
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v39 = MEMORY[0x277D84F90];
  result = sub_25A937980(0, v9, 0);
  v38 = v7;
  if (v9)
  {
    v14 = a4[2];
    v15 = a5;
    while (1)
    {
      v16 = v8 <= v7;
      if (a3 > 0)
      {
        v16 = v8 >= v7;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v17 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v17 = v8 + a3;
      }

      v18 = v8 + v15;
      if (__OFADD__(v8, v15))
      {
        goto LABEL_65;
      }

      if (v14 < v18)
      {
        v18 = v14;
      }

      v19 = v18 - v8;
      if (v18 < v8)
      {
        goto LABEL_66;
      }

      if (v8 < 0)
      {
        goto LABEL_67;
      }

      if (v14 == v19)
      {

        v20 = a4;
      }

      else
      {
        v20 = MEMORY[0x277D84F90];
        if (v18 != v8)
        {
          if (v19 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v20 = swift_allocObject();
            v23 = _swift_stdlib_malloc_size(v20);
            v24 = v23 - 32;
            if (v23 < 32)
            {
              v24 = v23 - 1;
            }

            v20[2] = v19;
            v20[3] = 2 * (v24 >> 5);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v22 = *(v39 + 16);
      v21 = *(v39 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_25A937980((v21 > 1), v22 + 1, 1);
        v15 = a5;
      }

      *(v39 + 16) = v22 + 1;
      *(v39 + 8 * v22 + 32) = v20;
      v8 = v17;
      --v9;
      v7 = v38;
      if (!v9)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
  }

  else
  {
    v17 = v8;
    v15 = a5;
LABEL_36:
    v25 = v17 <= v7;
    if (a3 > 0)
    {
      v25 = v17 >= v7;
    }

    if (v25)
    {
      return v39;
    }

    v26 = MEMORY[0x277D84F90];
    while (1)
    {
      v27 = __OFADD__(v17, a3) ? ((v17 + a3) >> 63) ^ 0x8000000000000000 : v17 + a3;
      v28 = v17 + v15;
      if (__OFADD__(v17, v15))
      {
        break;
      }

      v29 = a4[2];
      if (v29 < v28)
      {
        v28 = a4[2];
      }

      v30 = v28 - v17;
      if (v28 < v17)
      {
        goto LABEL_69;
      }

      if (v17 < 0)
      {
        goto LABEL_70;
      }

      if (v29 == v30)
      {

        v31 = a4;
      }

      else
      {
        v31 = v26;
        if (v28 != v17)
        {
          if (v30 < 1)
          {
            v31 = v26;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
            v31 = swift_allocObject();
            v35 = _swift_stdlib_malloc_size(v31);
            v36 = v35 - 32;
            if (v35 < 32)
            {
              v36 = v35 - 1;
            }

            v31[2] = v30;
            v31[3] = 2 * (v36 >> 5);
          }

          result = swift_arrayInitWithCopy();
          v15 = a5;
        }
      }

      v33 = *(v39 + 16);
      v32 = *(v39 + 24);
      if (v33 >= v32 >> 1)
      {
        result = sub_25A937980((v32 > 1), v33 + 1, 1);
        v15 = a5;
      }

      *(v39 + 16) = v33 + 1;
      *(v39 + 8 * v33 + 32) = v31;
      v34 = v27 <= v38;
      if (a3 > 0)
      {
        v34 = v27 >= v38;
      }

      v17 = v27;
      if (v34)
      {
        return v39;
      }
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

unint64_t sub_25A93A428(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_25A997F48();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_25A998058();
}

uint64_t sub_25A93A4F0()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_25A93A53C(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 0x6C6576656CLL;
  }

  else
  {
    v2 = 0x73656D616ELL;
  }

  if (*a2)
  {
    v3 = 0x6C6576656CLL;
  }

  else
  {
    v3 = 0x73656D616ELL;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25A9989E8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25A93A5BC()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A93A62C()
{
  *v0;
  sub_25A997D58();
}

uint64_t sub_25A93A680()
{
  v1 = *v0;
  sub_25A998B18();
  sub_25A997D58();

  return sub_25A998B38();
}

uint64_t sub_25A93A6EC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_25A9988C8();

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

void sub_25A93A74C(uint64_t *a1@<X8>)
{
  v2 = 0x73656D616ELL;
  if (*v1)
  {
    v2 = 0x6C6576656CLL;
  }

  *a1 = v2;
  a1[1] = 0xE500000000000000;
}

uint64_t sub_25A93A77C()
{
  if (*v0)
  {
    return 0x6C6576656CLL;
  }

  else
  {
    return 0x73656D616ELL;
  }
}

uint64_t sub_25A93A7A8@<X0>(char *a1@<X8>)
{
  v2 = sub_25A9988C8();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_25A93A80C(uint64_t a1)
{
  v2 = sub_25A93B448();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25A93A848(uint64_t a1)
{
  v2 = sub_25A93B448();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25A93A8D0(uint64_t *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA054F8, &unk_25A9FDDB0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14[-1] - v8;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25A93B448();
  sub_25A998BF8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    type metadata accessor for Import();
    swift_deallocPartialClassInstance();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA044C8, &unk_25A9F8210);
    v15 = 0;
    sub_25A875120();
    sub_25A998938();
    *(v1 + 40) = v14[0];
    LOBYTE(v14[0]) = 1;
    *(v1 + 48) = sub_25A998928();
    *(v1 + 56) = 0;
    v12 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    MEMORY[0x40] = sub_25A8F4D24();
    sub_25A872F24(a1, v14);
    v3 = sub_25A8963D8(v14);
    (*(v6 + 8))(v9, v5);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v3;
}

void sub_25A93AB7C(uint64_t a1@<X8>)
{
  v3 = v2;
  v4 = *(v1 + 40);
  v60 = *(v4 + 16);
  if (!v60)
  {
LABEL_35:
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    return;
  }

  v5 = v1;
  v58 = a1;
  v61 = v4 + 32;
  v68 = *(v1 + 64);

  v7 = 0;
  v62 = v1;
  v59 = v4;
  while (v7 < *(v4 + 16))
  {
    v64 = v7;
    v14 = (v61 + 40 * v7);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[3];
    v63 = v14[2];
    v74 = 46;
    v75 = 0xE100000000000000;
    MEMORY[0x28223BE20](v6);
    v57[2] = &v74;

    swift_bridgeObjectRetain_n();
    v66 = v16;
    v67 = v15;
    v19 = sub_25A96F490(0x7FFFFFFFFFFFFFFFLL, 1, sub_25A93B3C4, v57, v16, v15, v18);
    v65 = v3;
    v20 = *(v19 + 16);
    v69 = v17;
    if (v20)
    {
      v74 = MEMORY[0x277D84F90];
      sub_25A9375A0(0, v20, 0);
      v21 = v74;
      v22 = (v19 + 56);
      do
      {
        v24 = *(v22 - 3);
        v23 = *(v22 - 2);
        v25 = *(v22 - 1);
        v26 = *v22;

        v27 = MEMORY[0x25F850210](v24, v23, v25, v26);
        v29 = v28;

        v74 = v21;
        v31 = *(v21 + 16);
        v30 = *(v21 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_25A9375A0((v30 > 1), v31 + 1, 1);
          v21 = v74;
        }

        *(v21 + 16) = v31 + 1;
        v32 = v21 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
        v22 += 4;
        --v20;
      }

      while (v20);

      v5 = v62;
      v17 = v69;
      v33 = *(v21 + 16);
      if (v33)
      {
LABEL_13:
        v72[0] = MEMORY[0x277D84F90];

        sub_25A9375A0(0, v33, 0);
        v34 = 0;
        v35 = v72[0];
        v78 = *(v21 + 16);
        v70 = v21 + 32;
        v71 = v33;
        v36 = 5;
        while (v78 != v34)
        {
          if (v34 >= *(v21 + 16))
          {
            goto LABEL_38;
          }

          v37 = *(v21 + 8 * v36);
          v74 = v21;
          v75 = v70;
          v76 = 0;
          v77 = v36 - 2;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA054E8, &qword_25A9FDDA8);
          sub_25A93B3E4();
          v38 = sub_25A997D68();
          v40 = v39;

          v72[0] = v35;
          v42 = *(v35 + 16);
          v41 = *(v35 + 24);
          if (v42 >= v41 >> 1)
          {
            sub_25A9375A0((v41 > 1), v42 + 1, 1);
            v35 = v72[0];
          }

          ++v34;
          *(v35 + 16) = v42 + 1;
          v43 = v35 + 16 * v42;
          *(v43 + 32) = v38;
          *(v43 + 40) = v40;
          v36 += 2;
          if (v71 == v34)
          {
            swift_bridgeObjectRelease_n();
            v5 = v62;
            v17 = v69;
            goto LABEL_22;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
        break;
      }
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
      v33 = *(MEMORY[0x277D84F90] + 16);
      if (v33)
      {
        goto LABEL_13;
      }
    }

    v35 = MEMORY[0x277D84F90];
LABEL_22:
    v45 = v66;
    v44 = v67;
    v46 = v65;
    sub_25A98F0EC(v66, v67, &v74);
    v3 = v46;
    if (v46)
    {

      return;
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    if (v17)
    {

      sub_25A98F570(v45, v44, &v74);

      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
        goto LABEL_32;
      }

      v8 = *(v5 + 32);
      ObjectType = swift_getObjectType();
      v10 = v77;
      v11 = __swift_project_boxed_opaque_existential_1(&v74, v77);
      v73 = v10;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v72);
      (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v11, v10);
      (*(v8 + 64))(v63, v17, v72, ObjectType, v8);
    }

    else
    {

      v47 = *(v5 + 48);
      if (*(v5 + 56))
      {
        v47 = 0;
      }

      if (v47 >= *(v35 + 16))
      {

        sub_25A874F54();
        swift_allocError();
        *v56 = 115;
        swift_willThrow();
        return;
      }

      if (v47 < 0)
      {
        goto LABEL_40;
      }

      v48 = v35 + 16 * v47;
      v50 = *(v48 + 32);
      v49 = *(v48 + 40);

      sub_25A98F570(v50, v49, &v74);
      swift_beginAccess();
      if (!swift_unknownObjectWeakLoadStrong())
      {
LABEL_32:

        goto LABEL_5;
      }

      v51 = *(v5 + 32);
      v52 = swift_getObjectType();
      v53 = v77;
      v54 = __swift_project_boxed_opaque_existential_1(&v74, v77);
      v73 = v53;
      v55 = __swift_allocate_boxed_opaque_existential_0(v72);
      (*(*(v53 - 8) + 16))(v55, v54, v53);
      (*(v51 + 64))(v50, v49, v72, v52, v51);
    }

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
LABEL_5:
    v4 = v59;
    v13 = v64;
    v6 = __swift_destroy_boxed_opaque_existential_0Tm(&v74);
    v7 = v13 + 1;
    if (v7 == v60)
    {

      a1 = v58;
      goto LABEL_35;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_25A93B280()
{
  v1 = *(v0 + 40);

  v3 = MEMORY[0x25F850440](v2, &type metadata for Alias);
  v5 = v4;

  MEMORY[0x25F850290](v3, v5);

  return 0x2074726F706D69;
}

uint64_t sub_25A93B308()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);
}

uint64_t sub_25A93B338()
{
  sub_25A872F88(v0 + 24);
  v1 = *(v0 + 40);

  v2 = *(v0 + 64);

  return swift_deallocClassInstance();
}

unint64_t sub_25A93B3E4()
{
  result = qword_27FA054F0;
  if (!qword_27FA054F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FA054E8, &qword_25A9FDDA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA054F0);
  }

  return result;
}

unint64_t sub_25A93B448()
{
  result = qword_27FA05500;
  if (!qword_27FA05500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05500);
  }

  return result;
}

unint64_t sub_25A93B4B0()
{
  result = qword_27FA05508;
  if (!qword_27FA05508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05508);
  }

  return result;
}

unint64_t sub_25A93B508()
{
  result = qword_27FA05510;
  if (!qword_27FA05510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05510);
  }

  return result;
}

unint64_t sub_25A93B560()
{
  result = qword_27FA05518;
  if (!qword_27FA05518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FA05518);
  }

  return result;
}

Swift::Int sub_25A93B5B8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return Array.len()();
}

Swift::Int sub_25A93B5CC(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return Dictionary.len()();
}

uint64_t sub_25A93B65C()
{
  v1 = *v0;
  v2 = v0[1];
  return _sSS8MorpheusE3lenSiyF_0();
}

uint64_t sub_25A93B664()
{
  swift_beginAccess();
  if (mlx_array_size(*(v0 + 16)) == 1)
  {
    v1 = *(sub_25A9616CC() + 16);

    if (!v1)
    {
      return 1;
    }
  }

  result = sub_25A9616CC();
  if (*(result + 16))
  {
    v3 = *(result + 32);

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_25A93B71C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x277D84F90];
  sub_25A937550(0, v1, 0);
  v2 = v26;
  v4 = -1 << *(a1 + 32);
  v23 = a1 + 64;
  result = sub_25A998508();
  v6 = result;
  v7 = 0;
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v23 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    v12 = *(a1 + 48) + 40 * v6;
    v25 = MEMORY[0x277D84030];
    *&v24 = swift_allocObject();
    sub_25A874FB0(v12, v24 + 16);
    v26 = v2;
    v14 = *(v2 + 16);
    v13 = *(v2 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_25A937550((v13 > 1), v14 + 1, 1);
      v2 = v26;
    }

    *(v2 + 16) = v14 + 1;
    result = sub_25A872D74(&v24, (v2 + 32 * v14 + 32));
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v23 + 8 * v10);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v22;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v9 = v22;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_25A92C648(v6, v11, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_25A92C648(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_25A93B96C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = sub_25A998288();
  if (!v26)
  {
    return sub_25A998148();
  }

  v48 = v26;
  v52 = sub_25A998788();
  v39 = sub_25A998798();
  sub_25A998738();
  result = sub_25A998268();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = sub_25A998328();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      sub_25A998778();
      result = sub_25A998298();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_25A93BD8C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_25A9983F8();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_25A998078();
  v70 = sub_25A998788();
  v65 = sub_25A998798();
  sub_25A998738();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_25A998068();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_25A998448();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_25A998778();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_25A998448();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_25A998778();
      sub_25A998448();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t Array.iterator()(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v9 = a2;
  v7[2] = a2;
  v7[3] = sub_25A93CE58;
  v7[4] = &v8;
  v2 = sub_25A9981A8();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_25A93B96C(sub_25A93C57C, v7, v2, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_25A93C57C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  a2[3] = v5;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return v6(a1);
}

uint64_t sub_25A93C5E0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(a1 + 16);
  return _sSa8MorpheusE3lenSiyF_0();
}

uint64_t Dictionary.iterator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v9[5] = sub_25A93CD4C;
  v9[6] = &v10;
  v4 = sub_25A997C78();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_25A93B96C(sub_25A93CD84, v9, v4, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v6);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
  result = swift_allocObject();
  *(result + 16) = v7;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_25A93C708(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return _sSD8MorpheusE3lenSiyF_0();
}

uint64_t sub_25A93C770(uint64_t (*a1)(void))
{
  v1 = a1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = 0;
  return result;
}

uint64_t SharedMutableDict.iterator()()
{
  v0 = SharedMutableDict.anyDict.getter();
  v1 = sub_25A93B71C(v0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = 0;
  return result;
}

uint64_t String.iterator()(uint64_t a1, unint64_t a2)
{
  v2 = String.anyArray.getter(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
  result = swift_allocObject();
  *(result + 16) = v2;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_25A93C8B8()
{
  v1 = String.anyArray.getter(*v0, *(v0 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = 0;
  return result;
}

uint64_t EnumeratedSequence.count.getter(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  swift_getWitnessTable();
  sub_25A9981C8();
  v7 = _sSa8MorpheusE3lenSiyF_0();

  return v7;
}

uint64_t EnumeratedSequence.iterator()(uint64_t a1)
{
  v6[1] = *(a1 + 16);
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25A93BD8C(sub_25A93CDD8, v6, a1, (MEMORY[0x277D84F70] + 8), MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05520, &qword_25A9FDF90);
  result = swift_allocObject();
  *(result + 16) = v4;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_25A93CB04@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v22 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5 = *(TupleTypeMetadata2 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04770, &qword_25A9F9BC0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_25A9F8D80;
  v13 = *(v5 + 16);
  v13(v11, a1, TupleTypeMetadata2);
  v14 = *v11;
  v15 = *(TupleTypeMetadata2 + 48);
  *(v12 + 56) = MEMORY[0x277D83B88];
  *(v12 + 32) = v14;
  v13(v9, a1, TupleTypeMetadata2);
  v16 = *(TupleTypeMetadata2 + 48);
  *(v12 + 88) = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v12 + 64));
  v18 = *(AssociatedTypeWitness - 8);
  (*(v18 + 32))(boxed_opaque_existential_0, &v9[v16], AssociatedTypeWitness);
  (*(v18 + 8))(&v11[v15], AssociatedTypeWitness);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04460, &qword_25A9FDA30);
  v20 = v22;
  v22[3] = result;
  *v20 = v12;
  return result;
}

uint64_t sub_25A93CD84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = v2[2];
  v7 = v2[5];
  v6 = v2[6];
  a2[3] = v5;
  __swift_allocate_boxed_opaque_existential_0(a2);
  return v7(a1);
}

uint64_t sub_25A93CDD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25A93CB04(a1, a2);
}

uint64_t sub_25A93CE20()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

void Int.divide(_:)(uint64_t a1, uint64_t a2)
{
  v5[10] = *MEMORY[0x277D85DE8];
  if (a2 == a2)
  {
    mlx_array_new_int();
  }

  __break(1u);
  swift_once();
  sub_25A998C58();
  v4 = v5[0];
  v5[0] = mlx_array_new();
  swift_beginAccess();
  mlx_divide(v5, v3, *(v2 + 16), *(v4 + 16));
}

void sub_25A93D044(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A93D04CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t Int64.divide(_:)(uint64_t a1, uint64_t a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v10[0] = a2;
  v4 = mlx_array_new_data(v10, (MEMORY[0x277D84F90] + 32), 0, 8);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_divide(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A93D278(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A93D280);
  }

  _Unwind_Resume(a1);
}

void sub_25A93D494(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A93D49CLL);
  }

  _Unwind_Resume(a1);
}

uint64_t UInt32.divide(_:)(uint64_t a1, int a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  LODWORD(v10[0]) = a2;
  v4 = mlx_array_new_data(v10, (MEMORY[0x277D84F90] + 32), 0, 3);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_divide(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A93D6C8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A93D6D0);
  }

  _Unwind_Resume(a1);
}

uint64_t Float.divide(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_divide(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A93D8E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A93D8E8);
  }

  _Unwind_Resume(a1);
}

uint64_t Double.divide(_:)(uint64_t a1, __n128 a2)
{
  v10[10] = *MEMORY[0x277D85DE8];
  a2.n128_f32[0] = a2.n128_f64[0];
  v4 = mlx_array_new_float(a1, a2);
  type metadata accessor for MLXArray();
  *(swift_initStackObject() + 16) = v4;
  v5 = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v7 = v5;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v8 = v10[0];
    v10[0] = mlx_array_new();
    swift_beginAccess();
    mlx_divide(v10, v4, v7[2], *(v8 + 16));
  }

  swift_setDeallocating();
  result = mlx_array_free(v4);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A93DAFC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A93DB04);
  }

  _Unwind_Resume(a1);
}

void *sub_25A93DB3C(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *v1;
  result = sub_25A8F0FA0(a1, 13);
  if (!v2)
  {
    v5 = result;
    if (qword_27FA043D8 != -1)
    {
      swift_once();
    }

    sub_25A998C58();
    v9[0] = mlx_array_new();
    swift_beginAccess();
    v6 = v1[2];
    swift_beginAccess();
    mlx_divide(v9, v6, v5[2], *(v8 + 16));
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_25A93DCA4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x25A93DCACLL);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_25A93DD04()
{
  v0 = sub_25A997BD8();
  __swift_allocate_value_buffer(v0, qword_27FA0FCE8);
  __swift_project_value_buffer(v0, qword_27FA0FCE8);
  return sub_25A997BC8();
}

void *sub_25A93DD80()
{
  v0[2] = 6513249;
  v0[3] = 0xE300000000000000;
  type metadata accessor for LexicalContext();
  v1 = swift_allocObject();
  v1[2] = 0x6E776F6E6B6E55;
  v1[3] = 0xE700000000000000;
  v2 = MEMORY[0x277D84F90];
  v3 = sub_25A98E540(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA04620, &unk_25A9FDA10);
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x277D84F98];
  swift_beginAccess();
  *(v4 + 16) = v3;
  v1[4] = v4;
  v1[5] = sub_25A98E67C(v2);
  v0[4] = v1;
  return v0;
}

uint64_t sub_25A93DE6C()
{
  v1 = v0;
  v2 = *(v0 + 32);
  v3 = MEMORY[0x277D837D0];
  *(&v19 + 1) = MEMORY[0x277D837D0];
  *&v18 = 4407873;
  *(&v18 + 1) = 0xE300000000000000;
  v4 = qword_27FA042D0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_27FA046A0;
  v17 = type metadata accessor for PyBuiltInClass();
  v16[0] = v5;

  LexicalContext.store(key:obj:)(&v18, v16);

  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  __swift_destroy_boxed_opaque_existential_0Tm(&v18);
  v6 = *(v1 + 32);
  v17 = v3;
  strcpy(v16, "abstractmethod");
  HIBYTE(v16[1]) = -18;

  v7 = MEMORY[0x277D84F90];
  v8 = sub_25A92BDB4(MEMORY[0x277D84F90]);
  v9 = type metadata accessor for PyBuiltInFunctionOrMethod();
  v10 = swift_allocObject();
  *(v10 + 32) = v7;
  *(v10 + 40) = v7;
  *(v10 + 48) = v7;

  *(v10 + 56) = v7;

  *(v10 + 64) = v7;

  *(v10 + 72) = 0;
  *(v10 + 80) = 0;

  *(v10 + 88) = 0;
  *(v10 + 96) = 0;

  *(v10 + 104) = sub_25A92BDB4(v7);
  strcpy((v10 + 16), "abstractmethod");
  *(v10 + 31) = -18;
  v11 = *(v10 + 80);
  v20 = *(v10 + 64);
  v21 = v11;
  v22 = *(v10 + 96);
  v12 = *(v10 + 48);
  v18 = *(v10 + 32);
  v19 = v12;
  *(v10 + 32) = &unk_286C0D258;
  *(v10 + 40) = v7;
  *(v10 + 48) = v7;
  *(v10 + 56) = v7;
  *(v10 + 64) = v7;
  *(v10 + 72) = 0u;
  *(v10 + 88) = 0u;
  sub_25A892B80(&v18);
  swift_beginAccess();
  v13 = *(v10 + 104);
  *(v10 + 104) = v8;

  *(v10 + 112) = sub_25A93E344;
  *(v10 + 120) = 0;
  v15[3] = v9;
  v15[0] = v10;
  LexicalContext.store(key:obj:)(v16, v15);

  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  return __swift_destroy_boxed_opaque_existential_0Tm(v16);
}

uint64_t sub_25A93E0B0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_25A8F3600(1668183398, 0xE400000000000000), (v5 & 1) != 0) && (sub_25A87500C(*(a1 + 56) + 32 * v4, v29), type metadata accessor for Function(), (swift_dynamicCast() & 1) != 0))
  {
    swift_beginAccess();
    v6 = *(v28 + 24);
    v30 = *(v28 + 16);
    v8 = *(v28 + 48);
    v7 = *(v28 + 64);
    v25 = *(v28 + 96);
    v9 = *(v28 + 80);
    v23 = v7;
    v24 = v9;
    v21 = *(v28 + 32);
    v22 = v8;
    swift_beginAccess();
    v10 = *(v28 + 104);
    v11 = type metadata accessor for PyFunction();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F90];
    v12[4] = MEMORY[0x277D84F90];
    v12[5] = v13;

    sub_25A93E3F4(&v21, v26);
    v12[6] = v13;

    v12[7] = v13;

    v12[8] = v13;

    v12[9] = 0;
    v12[10] = 0;

    v12[11] = 0;
    v12[12] = 0;

    v12[13] = sub_25A92BDB4(v13);
    v12[2] = v30;
    v12[3] = v6;
    v14 = *(v12 + 5);
    v26[2] = *(v12 + 4);
    v26[3] = v14;
    v27 = v12[12];
    v15 = *(v12 + 3);
    v26[0] = *(v12 + 2);
    v26[1] = v15;
    v16 = v22;
    *(v12 + 2) = v21;
    *(v12 + 3) = v16;
    v17 = v24;
    *(v12 + 4) = v23;
    *(v12 + 5) = v17;
    v12[12] = v25;
    sub_25A892B80(v26);
    swift_beginAccess();
    v18 = v12[13];
    v12[13] = v10;

    v12[14] = sub_25A93E394;
    v12[15] = 0;
    a2[3] = v11;

    *a2 = v12;
  }

  else
  {
    sub_25A874F54();
    swift_allocError();
    *v20 = -113;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_25A93E344@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_25A936F00(a1);
  sub_25A93E0B0(v3, a2);
}

uint64_t sub_25A93E394(uint64_t a1)
{
  sub_25A936F00(a1);
  sub_25A874F54();
  swift_allocError();
  *v1 = -112;
  swift_willThrow();
}

void *sub_25A93E684(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v175 = a8;
  v174 = a7;
  v173 = a6;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA048B8, &unk_25A9FBD80);
  v20 = *(v19 - 8);
  v21 = v20[8];
  MEMORY[0x28223BE20](v19);
  v23 = &v163 - v22;
  v182 = a2 & 1;
  v181 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_25A9988D8();
  if (v14)
  {
    return v20;
  }

  v170 = a5;
  v171 = v23;
  v172 = v19;
  sub_25A872F24(v179, v177);
  __swift_project_boxed_opaque_existential_1(v179, v180);
  if ((sub_25A998998() & 1) == 0)
  {
    v25 = (v20 + 1);
    v20 = MEMORY[0x277D84F90];
    v169 = a14;
    v168 = a13;
    v167 = a12;
    v166 = a11;
    v165 = a10;
    v164 = a9;
    v26 = v172;
    v27 = v171;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(v177, v178);
      if (sub_25A998998())
      {
        goto LABEL_4;
      }

      __swift_mutable_project_boxed_opaque_existential_1(v177, v178);
      sub_25A896DA0();
      sub_25A998978();
      LOBYTE(v176) = 0;
      v29 = sub_25A9988F8();
      v30 = v28;
      v31 = v29 == 0x656D6E6769737341 && v28 == 0xEA0000000000746ELL;
      if (v31 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Assignment();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05140, 255, type metadata accessor for Assignment);
        sub_25A998988();
        v32 = v176;
        v33 = v181;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v181 = v33;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_25A966E00(0, v33[2] + 1, 1, v33);
          v181 = v33;
        }

        v36 = v33[2];
        v35 = v33[3];
        v37 = v36 + 1;
        if (v36 >= v35 >> 1)
        {
          v181 = sub_25A966E00((v35 > 1), v36 + 1, 1, v33);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Assignment;
        v39 = &unk_27FA05148;
      }

      else if (v29 == 0x7069726373627553 && v30 == 0xE900000000000074 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Subscript();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05130, 255, type metadata accessor for Subscript);
        sub_25A998988();
        v32 = v176;
        v42 = v181;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v42;
        if ((v43 & 1) == 0)
        {
          v42 = sub_25A966E00(0, v42[2] + 1, 1, v42);
          v181 = v42;
        }

        v36 = v42[2];
        v44 = v42[3];
        v37 = v36 + 1;
        if (v36 >= v44 >> 1)
        {
          v181 = sub_25A966E00((v44 > 1), v36 + 1, 1, v42);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Subscript;
        v39 = &unk_27FA05138;
      }

      else if (v29 == 0x6563696F6843 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Choice();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05120, 255, type metadata accessor for Choice);
        sub_25A998988();
        v32 = v176;
        v45 = v181;
        v46 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v45;
        if ((v46 & 1) == 0)
        {
          v45 = sub_25A966E00(0, v45[2] + 1, 1, v45);
          v181 = v45;
        }

        v36 = v45[2];
        v47 = v45[3];
        v37 = v36 + 1;
        if (v36 >= v47 >> 1)
        {
          v181 = sub_25A966E00((v47 > 1), v36 + 1, 1, v45);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Choice;
        v39 = &unk_27FA05128;
      }

      else if (v29 == 0x746E6174736E6F43 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Constant();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05110, 255, type metadata accessor for Constant);
        sub_25A998988();
        v32 = v176;
        v48 = v181;
        v49 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v48;
        if ((v49 & 1) == 0)
        {
          v48 = sub_25A966E00(0, v48[2] + 1, 1, v48);
          v181 = v48;
        }

        v36 = v48[2];
        v50 = v48[3];
        v37 = v36 + 1;
        if (v36 >= v50 >> 1)
        {
          v181 = sub_25A966E00((v50 > 1), v36 + 1, 1, v48);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Constant;
        v39 = &unk_27FA05118;
      }

      else if (v29 == 1751343429 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Each();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05100, 255, type metadata accessor for Each);
        sub_25A998988();
        v32 = v176;
        v51 = v181;
        v52 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v51;
        if ((v52 & 1) == 0)
        {
          v51 = sub_25A966E00(0, v51[2] + 1, 1, v51);
          v181 = v51;
        }

        v36 = v51[2];
        v53 = v51[3];
        v37 = v36 + 1;
        if (v36 >= v53 >> 1)
        {
          v181 = sub_25A966E00((v53 > 1), v36 + 1, 1, v51);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Each;
        v39 = &unk_27FA05108;
      }

      else if (v29 == 0x426C61636978654CLL && v30 == 0xEC0000006B636F6CLL || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for LexicalBlock();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA04A18, 255, type metadata accessor for LexicalBlock);
        sub_25A998988();
        v32 = v176;
        v54 = v181;
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v54;
        if ((v55 & 1) == 0)
        {
          v54 = sub_25A966E00(0, v54[2] + 1, 1, v54);
          v181 = v54;
        }

        v36 = v54[2];
        v56 = v54[3];
        v37 = v36 + 1;
        if (v36 >= v56 >> 1)
        {
          v181 = sub_25A966E00((v56 > 1), v36 + 1, 1, v54);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for LexicalBlock;
        v39 = &unk_27FA050F8;
      }

      else if (v29 == 0x6E7275746552 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Return();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050E8, 255, type metadata accessor for Return);
        sub_25A998988();
        v32 = v176;
        v57 = v181;
        v58 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v57;
        if ((v58 & 1) == 0)
        {
          v57 = sub_25A966E00(0, v57[2] + 1, 1, v57);
          v181 = v57;
        }

        v36 = v57[2];
        v59 = v57[3];
        v37 = v36 + 1;
        if (v36 >= v59 >> 1)
        {
          v181 = sub_25A966E00((v59 > 1), v36 + 1, 1, v57);
        }

        (*v25)(v27, v26);
        v38 = type metadata accessor for Return;
        v39 = &unk_27FA050F0;
      }

      else if (v29 == 0x73697261706D6F43 && v30 == 0xEA00000000006E6FLL || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Comparison();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050D8, 255, type metadata accessor for Comparison);
        sub_25A998988();
        v32 = v176;
        v60 = v181;
        v61 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v60;
        if ((v61 & 1) == 0)
        {
          v60 = sub_25A966E00(0, v60[2] + 1, 1, v60);
          v181 = v60;
        }

        v36 = v60[2];
        v62 = v60[3];
        v37 = v36 + 1;
        if (v36 >= v62 >> 1)
        {
          v181 = sub_25A966E00((v62 > 1), v36 + 1, 1, v60);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Comparison;
        v39 = &unk_27FA050E0;
      }

      else if (v29 == 0x704F6E6942 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for BinOp();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050C8, 255, type metadata accessor for BinOp);
        sub_25A998988();
        v32 = v176;
        v63 = v181;
        v64 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v63;
        if ((v64 & 1) == 0)
        {
          v63 = sub_25A966E00(0, v63[2] + 1, 1, v63);
          v181 = v63;
        }

        v36 = v63[2];
        v65 = v63[3];
        v37 = v36 + 1;
        if (v36 >= v65 >> 1)
        {
          v181 = sub_25A966E00((v65 > 1), v36 + 1, 1, v63);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for BinOp;
        v39 = &unk_27FA050D0;
      }

      else if (v29 == 1819042115 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Call();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050B8, 255, type metadata accessor for Call);
        sub_25A998988();
        v32 = v176;
        v66 = v181;
        v67 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v66;
        if ((v67 & 1) == 0)
        {
          v66 = sub_25A966E00(0, v66[2] + 1, 1, v66);
          v181 = v66;
        }

        v36 = v66[2];
        v68 = v66[3];
        v37 = v36 + 1;
        if (v36 >= v68 >> 1)
        {
          v181 = sub_25A966E00((v68 > 1), v36 + 1, 1, v66);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Call;
        v39 = &unk_27FA050C0;
      }

      else if (v29 == 1701667150 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Name();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA050A8, 255, type metadata accessor for Name);
        sub_25A998988();
        v32 = v176;
        v69 = v181;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v69;
        if ((v70 & 1) == 0)
        {
          v69 = sub_25A966E00(0, v69[2] + 1, 1, v69);
          v181 = v69;
        }

        v36 = v69[2];
        v71 = v69[3];
        v37 = v36 + 1;
        if (v36 >= v71 >> 1)
        {
          v181 = sub_25A966E00((v71 > 1), v36 + 1, 1, v69);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Name;
        v39 = &unk_27FA050B0;
      }

      else if (v29 == 0x7475626972747441 && v30 == 0xE900000000000065 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Attribute();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05098, 255, type metadata accessor for Attribute);
        sub_25A998988();
        v32 = v176;
        v72 = v181;
        v73 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v72;
        if ((v73 & 1) == 0)
        {
          v72 = sub_25A966E00(0, v72[2] + 1, 1, v72);
          v181 = v72;
        }

        v36 = v72[2];
        v74 = v72[3];
        v37 = v36 + 1;
        if (v36 >= v74 >> 1)
        {
          v181 = sub_25A966E00((v74 > 1), v36 + 1, 1, v72);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Attribute;
        v39 = &unk_27FA050A0;
      }

      else if (v29 == 0x64726F7779654BLL && v30 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for Keyword();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05088, 255, type metadata accessor for Keyword);
        sub_25A998988();
        v32 = v176;
        v75 = v181;
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v75;
        if ((v76 & 1) == 0)
        {
          v75 = sub_25A966E00(0, v75[2] + 1, 1, v75);
          v181 = v75;
        }

        v36 = v75[2];
        v77 = v75[3];
        v37 = v36 + 1;
        if (v36 >= v77 >> 1)
        {
          v181 = sub_25A966E00((v77 > 1), v36 + 1, 1, v75);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for Keyword;
        v39 = &unk_27FA05090;
      }

      else if (v29 == 0x7375656870726F4DLL && v30 == 0xED00007961727241 || (sub_25A9989E8() & 1) != 0)
      {

        type metadata accessor for MorpheusArray();
        __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
        sub_25A94BF58(&qword_27FA05078, 255, type metadata accessor for MorpheusArray);
        sub_25A998988();
        v32 = v176;
        v78 = v181;
        v79 = swift_isUniquelyReferenced_nonNull_native();
        v181 = v78;
        if ((v79 & 1) == 0)
        {
          v78 = sub_25A966E00(0, v78[2] + 1, 1, v78);
          v181 = v78;
        }

        v36 = v78[2];
        v80 = v78[3];
        v37 = v36 + 1;
        if (v36 >= v80 >> 1)
        {
          v181 = sub_25A966E00((v80 > 1), v36 + 1, 1, v78);
        }

        v27 = v171;
        v26 = v172;
        (*v25)(v171, v172);
        v38 = type metadata accessor for MorpheusArray;
        v39 = &unk_27FA05080;
      }

      else
      {
        if (v29 == 0x7375656870726F4DLL && v30 == 0xED0000656C707554 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusTuple();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05068, v81, type metadata accessor for MorpheusTuple);
          sub_25A998988();
          v163 = v176;
          v82 = v181;
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v82;
          if ((v83 & 1) == 0)
          {
            v82 = sub_25A966E00(0, v82[2] + 1, 1, v82);
            v181 = v82;
          }

          v85 = v82[2];
          v84 = v82[3];
          if (v85 >= v84 >> 1)
          {
            v181 = sub_25A966E00((v84 > 1), v85 + 1, 1, v82);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v40 = sub_25A94BF58(&qword_27FA05070, v86, type metadata accessor for MorpheusTuple);
          v20 = v181;
          v181[2] = v85 + 1;
          v41 = &v20[2 * v85];
          v41[4] = v163;
          goto LABEL_19;
        }

        if (v29 == 0x7375656870726F4DLL && v30 == 0xEC00000074636944 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusDict();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05058, 255, type metadata accessor for MorpheusDict);
          sub_25A998988();
          v32 = v176;
          v87 = v181;
          v88 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v87;
          if ((v88 & 1) == 0)
          {
            v87 = sub_25A966E00(0, v87[2] + 1, 1, v87);
            v181 = v87;
          }

          v36 = v87[2];
          v89 = v87[3];
          v37 = v36 + 1;
          if (v36 >= v89 >> 1)
          {
            v181 = sub_25A966E00((v89 > 1), v36 + 1, 1, v87);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for MorpheusDict;
          v39 = &unk_27FA05060;
        }

        else if (v29 == 0x7375656870726F4DLL && v30 == 0xED00006563696C53 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for MorpheusSlice();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05048, 255, type metadata accessor for MorpheusSlice);
          sub_25A998988();
          v32 = v176;
          v90 = v181;
          v91 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v90;
          if ((v91 & 1) == 0)
          {
            v90 = sub_25A966E00(0, v90[2] + 1, 1, v90);
            v181 = v90;
          }

          v36 = v90[2];
          v92 = v90[3];
          v37 = v36 + 1;
          if (v36 >= v92 >> 1)
          {
            v181 = sub_25A966E00((v92 > 1), v36 + 1, 1, v90);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for MorpheusSlice;
          v39 = &unk_27FA05050;
        }

        else if (v29 == 0x6E6F6974636E7546 && v30 == 0xEB00000000666544 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for FunctionDef();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05038, 255, type metadata accessor for FunctionDef);
          sub_25A998988();
          v32 = v176;
          v93 = v181;
          v94 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v93;
          if ((v94 & 1) == 0)
          {
            v93 = sub_25A966E00(0, v93[2] + 1, 1, v93);
            v181 = v93;
          }

          v36 = v93[2];
          v95 = v93[3];
          v37 = v36 + 1;
          if (v36 >= v95 >> 1)
          {
            v181 = sub_25A966E00((v95 > 1), v36 + 1, 1, v93);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for FunctionDef;
          v39 = &unk_27FA05040;
        }

        else if (v29 == 0x6665447373616C43 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for ClassDef();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05028, 255, type metadata accessor for ClassDef);
          sub_25A998988();
          v32 = v176;
          v96 = v181;
          v97 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v96;
          if ((v97 & 1) == 0)
          {
            v96 = sub_25A966E00(0, v96[2] + 1, 1, v96);
            v181 = v96;
          }

          v36 = v96[2];
          v98 = v96[3];
          v37 = v36 + 1;
          if (v36 >= v98 >> 1)
          {
            v181 = sub_25A966E00((v98 > 1), v36 + 1, 1, v96);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for ClassDef;
          v39 = &unk_27FA05030;
        }

        else if (v29 == 0x7972616E55 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
        {

          type metadata accessor for Unary();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05018, 255, type metadata accessor for Unary);
          sub_25A998988();
          v32 = v176;
          v99 = v181;
          v100 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v99;
          if ((v100 & 1) == 0)
          {
            v99 = sub_25A966E00(0, v99[2] + 1, 1, v99);
            v181 = v99;
          }

          v36 = v99[2];
          v101 = v99[3];
          v37 = v36 + 1;
          if (v36 >= v101 >> 1)
          {
            v181 = sub_25A966E00((v101 > 1), v36 + 1, 1, v99);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for Unary;
          v39 = &unk_27FA05020;
        }

        else
        {
          if ((v29 != 0x6573696152 || v30 != 0xE500000000000000) && (sub_25A9989E8() & 1) == 0)
          {
            if (v29 == 0x745364656E696F4ALL && v30 == 0xE900000000000072 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for JoinedStr();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FF8, 255, type metadata accessor for JoinedStr);
              sub_25A998988();
              v105 = v176;
              v106 = v181;
              v107 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v106;
              if ((v107 & 1) == 0)
              {
                v106 = sub_25A966E00(0, v106[2] + 1, 1, v106);
                v181 = v106;
              }

              v109 = v106[2];
              v108 = v106[3];
              v110 = v109 + 1;
              if (v109 >= v108 >> 1)
              {
                v181 = sub_25A966E00((v108 > 1), v109 + 1, 1, v106);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for JoinedStr;
              v112 = &unk_27FA05000;
              goto LABEL_190;
            }

            if (v29 == 0x657474616D726F46 && v30 == 0xEE0065756C615664 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for FormattedValue();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FE8, 255, type metadata accessor for FormattedValue);
              sub_25A998988();
              v105 = v176;
              v116 = v181;
              v117 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v116;
              if ((v117 & 1) == 0)
              {
                v116 = sub_25A966E00(0, v116[2] + 1, 1, v116);
                v181 = v116;
              }

              v109 = v116[2];
              v118 = v116[3];
              v110 = v109 + 1;
              if (v109 >= v118 >> 1)
              {
                v181 = sub_25A966E00((v118 > 1), v109 + 1, 1, v116);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for FormattedValue;
              v112 = &unk_27FA04FF0;
              goto LABEL_190;
            }

            if (v29 == 0x704F6C6F6F42 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for BoolOp();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FD8, 255, type metadata accessor for BoolOp);
              sub_25A998988();
              v105 = v176;
              v119 = v181;
              v120 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v119;
              if ((v120 & 1) == 0)
              {
                v119 = sub_25A966E00(0, v119[2] + 1, 1, v119);
                v181 = v119;
              }

              v109 = v119[2];
              v121 = v119[3];
              v110 = v109 + 1;
              if (v109 >= v121 >> 1)
              {
                v181 = sub_25A966E00((v121 > 1), v109 + 1, 1, v119);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for BoolOp;
              v112 = &unk_27FA04FE0;
              goto LABEL_190;
            }

            if (v29 == 0x65756E69746E6F43 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Continue();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FC8, 255, type metadata accessor for Continue);
              sub_25A998988();
              v105 = v176;
              v122 = v181;
              v123 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v122;
              if ((v123 & 1) == 0)
              {
                v122 = sub_25A966E00(0, v122[2] + 1, 1, v122);
                v181 = v122;
              }

              v109 = v122[2];
              v124 = v122[3];
              v110 = v109 + 1;
              if (v109 >= v124 >> 1)
              {
                v181 = sub_25A966E00((v124 > 1), v109 + 1, 1, v122);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for Continue;
              v112 = &unk_27FA04FD0;
              goto LABEL_190;
            }

            if (v29 == 0x6B61657242 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Break();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FB8, 255, type metadata accessor for Break);
              sub_25A998988();
              v105 = v176;
              v125 = v181;
              v126 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v125;
              if ((v126 & 1) == 0)
              {
                v125 = sub_25A966E00(0, v125[2] + 1, 1, v125);
                v181 = v125;
              }

              v109 = v125[2];
              v127 = v125[3];
              v110 = v109 + 1;
              if (v109 >= v127 >> 1)
              {
                v181 = sub_25A966E00((v127 > 1), v109 + 1, 1, v125);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for Break;
              v112 = &unk_27FA04FC0;
              goto LABEL_190;
            }

            if (v29 == 0x65686572706D6F43 && v30 == 0xED00006E6F69736ELL || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for Comprehension();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04FA8, 255, type metadata accessor for Comprehension);
              sub_25A998988();
              v105 = v176;
              v128 = v181;
              v129 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v128;
              if ((v129 & 1) == 0)
              {
                v128 = sub_25A966E00(0, v128[2] + 1, 1, v128);
                v181 = v128;
              }

              v109 = v128[2];
              v130 = v128[3];
              v110 = v109 + 1;
              if (v109 >= v130 >> 1)
              {
                v181 = sub_25A966E00((v130 > 1), v109 + 1, 1, v128);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for Comprehension;
              v112 = &unk_27FA04FB0;
              goto LABEL_190;
            }

            if (v29 == 0x706D6F437473694CLL && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for ListComp();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04F98, 255, type metadata accessor for ListComp);
              sub_25A998988();
              v105 = v176;
              v131 = v181;
              v132 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v131;
              if ((v132 & 1) == 0)
              {
                v131 = sub_25A966E00(0, v131[2] + 1, 1, v131);
                v181 = v131;
              }

              v109 = v131[2];
              v133 = v131[3];
              v110 = v109 + 1;
              if (v109 >= v133 >> 1)
              {
                v181 = sub_25A966E00((v133 > 1), v109 + 1, 1, v131);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for ListComp;
              v112 = &unk_27FA04FA0;
              goto LABEL_190;
            }

            if (v29 == 0x706D6F43746553 && v30 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
            {

              type metadata accessor for SetComp();
              __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
              sub_25A94BF58(&qword_27FA04F88, 255, type metadata accessor for SetComp);
              sub_25A998988();
              v105 = v176;
              v134 = v181;
              v135 = swift_isUniquelyReferenced_nonNull_native();
              v181 = v134;
              if ((v135 & 1) == 0)
              {
                v134 = sub_25A966E00(0, v134[2] + 1, 1, v134);
                v181 = v134;
              }

              v109 = v134[2];
              v136 = v134[3];
              v110 = v109 + 1;
              if (v109 >= v136 >> 1)
              {
                v181 = sub_25A966E00((v136 > 1), v109 + 1, 1, v134);
              }

              v27 = v171;
              v26 = v172;
              (*v25)(v171, v172);
              v111 = type metadata accessor for SetComp;
              v112 = &unk_27FA04F90;
LABEL_190:
              v113 = sub_25A94BF58(v112, 255, v111);
              v114 = v181;
              v181[2] = v110;
              v115 = &v114[2 * v109];
              v115[4] = v105;
            }

            else
            {
              if (v29 == 0x706D6F4374636944 && v30 == 0xE800000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for DictComp();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F78, 255, type metadata accessor for DictComp);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v138 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v138 >> 1)
                {
                  v181 = sub_25A966E00((v138 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for DictComp;
                v142 = &unk_27FA04F80;
              }

              else if (v29 == 0x64657272617453 && v30 == 0xE700000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Starred();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F68, 255, type metadata accessor for Starred);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v143 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v143 >> 1)
                {
                  v181 = sub_25A966E00((v143 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Starred;
                v142 = &unk_27FA04F70;
              }

              else if (v29 == 0x656C696857 && v30 == 0xE500000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for While();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F58, 255, type metadata accessor for While);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v144 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v144 >> 1)
                {
                  v181 = sub_25A966E00((v144 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for While;
                v142 = &unk_27FA04F60;
              }

              else if (v29 == 0x6769737341677541 && v30 == 0xE90000000000006ELL || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for AugAssign();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F48, 255, type metadata accessor for AugAssign);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v145 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v145 >> 1)
                {
                  v181 = sub_25A966E00((v145 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for AugAssign;
                v142 = &unk_27FA04F50;
              }

              else if (v29 == 0x74726F706D49 && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Import();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F38, 255, type metadata accessor for Import);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v146 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v146 >> 1)
                {
                  v181 = sub_25A966E00((v146 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Import;
                v142 = &unk_27FA04F40;
              }

              else if (v29 == 0x724674726F706D49 && v30 == 0xEA00000000006D6FLL || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for ImportFrom();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F28, 255, type metadata accessor for ImportFrom);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v147 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v147 >> 1)
                {
                  v181 = sub_25A966E00((v147 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for ImportFrom;
                v142 = &unk_27FA04F30;
              }

              else if (v29 == 0x656C75646F4DLL && v30 == 0xE600000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for ModuleOp();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04BE8, 255, type metadata accessor for ModuleOp);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v148 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v148 >> 1)
                {
                  v181 = sub_25A966E00((v148 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for ModuleOp;
                v142 = &unk_27FA04F20;
              }

              else if (v29 == 1936941392 && v30 == 0xE400000000000000 || (sub_25A9989E8() & 1) != 0)
              {

                type metadata accessor for Pass();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F10, 255, type metadata accessor for Pass);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v149 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v149 >> 1)
                {
                  v181 = sub_25A966E00((v149 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Pass;
                v142 = &unk_27FA04F18;
              }

              else
              {
                if ((v29 != 0x696F706B61657242 || v30 != 0xEA0000000000746ELL) && (sub_25A9989E8() & 1) == 0)
                {

                  if (qword_27FA043C0 != -1)
                  {
                    swift_once();
                  }

                  v152 = sub_25A997BD8();
                  __swift_project_value_buffer(v152, qword_27FA0FCE8);
                  v153 = swift_allocObject();
                  *(v153 + 16) = v29;
                  *(v153 + 24) = v30;

                  v154 = sub_25A997BB8();
                  v155 = sub_25A9983A8();
                  v156 = swift_allocObject();
                  *(v156 + 16) = 32;
                  v157 = swift_allocObject();
                  *(v157 + 16) = 8;
                  v20 = swift_allocObject();
                  v20[2] = v164;
                  v20[3] = v153;
                  v158 = swift_allocObject();
                  *(v158 + 16) = v166;
                  *(v158 + 24) = v20;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FA05538, &qword_25A9FE130);
                  inited = swift_initStackObject();
                  *(inited + 16) = xmmword_25A9F8DB0;
                  *(inited + 32) = v167;
                  *(inited + 40) = v156;
                  *(inited + 48) = v168;
                  *(inited + 56) = v157;
                  *(inited + 64) = v169;
                  *(inited + 72) = v158;

                  if (os_log_type_enabled(v154, v155))
                  {
                    v20 = swift_slowAlloc();
                    v160 = swift_slowAlloc();
                    v176 = v160;
                    *v20 = 136315138;
                    v161 = sub_25A98CC90(v29, v30, &v176);

                    *(v20 + 4) = v161;
                    _os_log_impl(&dword_25A232000, v154, v155, "Operation %s not supported yet", v20, 0xCu);
                    __swift_destroy_boxed_opaque_existential_0Tm(v160);
                    MEMORY[0x25F852800](v160, -1, -1);
                    MEMORY[0x25F852800](v20, -1, -1);
                  }

                  else
                  {
                  }

                  sub_25A874F54();
                  swift_allocError();
                  *v162 = 43;
                  swift_willThrow();
                  (*v25)(v171, v172);
                  __swift_destroy_boxed_opaque_existential_0Tm(v177);
                  __swift_destroy_boxed_opaque_existential_0Tm(v179);
                  return v20;
                }

                type metadata accessor for Breakpoint();
                __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
                sub_25A94BF58(&qword_27FA04F00, 255, type metadata accessor for Breakpoint);
                sub_25A998988();
                v137 = v176;
                sub_25A94BE58();
                v139 = v181[2];
                v150 = v181[3];
                v140 = v139 + 1;
                if (v139 >= v150 >> 1)
                {
                  v181 = sub_25A966E00((v150 > 1), v139 + 1, 1, v181);
                }

                v27 = v171;
                v26 = v172;
                (*v25)(v171, v172);
                v141 = type metadata accessor for Breakpoint;
                v142 = &unk_27FA04F08;
              }

              v113 = sub_25A94BF58(v142, 255, v141);
              v151 = v181;
              v181[2] = v140;
              v115 = &v151[2 * v139];
              v115[4] = v137;
            }

            v115[5] = v113;
            v20 = v181;
            goto LABEL_20;
          }

          type metadata accessor for Raise();
          __swift_mutable_project_boxed_opaque_existential_1(v179, v180);
          sub_25A94BF58(&qword_27FA05008, 255, type metadata accessor for Raise);
          sub_25A998988();
          v32 = v176;
          v102 = v181;
          v103 = swift_isUniquelyReferenced_nonNull_native();
          v181 = v102;
          if ((v103 & 1) == 0)
          {
            v102 = sub_25A966E00(0, v102[2] + 1, 1, v102);
            v181 = v102;
          }

          v36 = v102[2];
          v104 = v102[3];
          v37 = v36 + 1;
          if (v36 >= v104 >> 1)
          {
            v181 = sub_25A966E00((v104 > 1), v36 + 1, 1, v102);
          }

          v27 = v171;
          v26 = v172;
          (*v25)(v171, v172);
          v38 = type metadata accessor for Raise;
          v39 = &unk_27FA05010;
        }
      }

      v40 = sub_25A94BF58(v39, 255, v38);
      v20 = v181;
      v181[2] = v37;
      v41 = &v20[2 * v36];
      v41[4] = v32;
LABEL_19:
      v41[5] = v40;
      v181 = v20;
LABEL_20:
      __swift_project_boxed_opaque_existential_1(v179, v180);
      if (sub_25A998998())
      {
        goto LABEL_4;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v177);
  __swift_destroy_boxed_opaque_existential_0Tm(v179);
  return v20;
}