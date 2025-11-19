uint64_t sub_214F9D9E0()
{
  v1 = sub_2150A5C10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 24);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v6 = *(v0 + 16);
    if (v5 < *(v6 + 16))
    {
      v7 = v6 + 16 * v5;
      v9 = *(v7 + 32);
      v8 = *(v7 + 40);
      v10 = v9 & 0xFFFFFFFFFFFFLL;
      if ((v8 & 0x2000000000000000) != 0)
      {
        v11 = HIBYTE(v8) & 0xF;
      }

      else
      {
        v11 = v10;
      }

      LOBYTE(v11) = v11 == 0;
      *(v0 + 24) = v5 + 1;
      return v11 & 1;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v12 = sub_2150A5C20();
  swift_allocError();
  v14 = v13;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v14 = MEMORY[0x277D84F70] + 8;
  (*(v2 + 16))(&v14[v15], v4, v1);
  (*(*(v12 - 8) + 104))(v14, *MEMORY[0x277D84170], v12);
  swift_willThrow();
  result = (*(v2 + 8))(v4, v1);
  v11 = v5 + 1;
  if (!__OFADD__(v5, 1))
  {
    *(v0 + 24) = v11;
    return v11 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9DC04()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[3];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v0[2];
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 16 * v7;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *v0;
      v13 = v0[1];

      v3 = sub_214F9F18C(v12, v13, v10, v11);

      v14 = v7 + 1;
      if (!v2)
      {
        v0[3] = v14;
        return v3;
      }

LABEL_6:
      v0[3] = v14;
      return v3;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v15 = sub_2150A5C20();
  swift_allocError();
  v17 = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v17 = MEMORY[0x277D837D0];
  (*(v4 + 16))(&v17[v18], v6, v3);
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
  swift_willThrow();
  result = (*(v4 + 8))(v6, v3);
  v14 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9DE6C()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[3];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v0[2];
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 16 * v7;
      v10 = *(v9 + 32);
      v11 = *(v9 + 40);
      v12 = *v0;
      v13 = v0[1];

      LOBYTE(v3) = sub_214F9F624(v12, v13, v10, v11);

      v14 = v7 + 1;
      if (!v2)
      {
        v0[3] = v14;
        return v3 & 1;
      }

LABEL_6:
      v0[3] = v14;
      return v3 & 1;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v15 = sub_2150A5C20();
  swift_allocError();
  v17 = v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v17 = MEMORY[0x277D839B0];
  (*(v4 + 16))(&v17[v18], v6, v3);
  (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84170], v15);
  swift_willThrow();
  result = (*(v4 + 8))(v6, v3);
  v14 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E0CC()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[3];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v0[2];
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 16 * v7;
      v11 = *(v9 + 32);
      v10 = *(v9 + 40);
      v12 = *v0;
      v13 = v0[1];

      sub_214F9FAB0(v12, v13, v11, v10);

      v15 = v7 + 1;
      if (!v2)
      {
        v0[3] = v15;
        return result;
      }

      goto LABEL_6;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v16 = sub_2150A5C20();
  swift_allocError();
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v18 = MEMORY[0x277D839F8];
  (*(v4 + 16))(&v18[v19], v6, v3);
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
  swift_willThrow();
  result = (*(v4 + 8))(v6, v3);
  v15 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
LABEL_6:
    v0[3] = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E334()
{
  v2 = v1;
  v3 = sub_2150A5C10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v0[3];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v0[2];
    if (v7 < *(v8 + 16))
    {
      v9 = v8 + 16 * v7;
      v11 = *(v9 + 32);
      v10 = *(v9 + 40);
      v12 = *v0;
      v13 = v0[1];

      sub_214F9FEF8(v12, v13, v11, v10);

      v15 = v7 + 1;
      if (!v2)
      {
        v0[3] = v15;
        return result;
      }

      goto LABEL_6;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v16 = sub_2150A5C20();
  swift_allocError();
  v18 = v17;
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v18 = MEMORY[0x277D83A90];
  (*(v4 + 16))(&v18[v19], v6, v3);
  (*(*(v16 - 8) + 104))(v18, *MEMORY[0x277D84170], v16);
  swift_willThrow();
  result = (*(v4 + 8))(v6, v3);
  v15 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
LABEL_6:
    v0[3] = v15;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E59C(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[3];
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v2[2];
    if (v11 < *(v12 + 16))
    {
      v13 = v12 + 16 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *v2;
      v17 = v2[1];

      v7 = a1(v16, v17, v14, v15);

      v18 = v11 + 1;
      if (!v6)
      {
        v2[3] = v18;
        return v7;
      }

LABEL_6:
      v2[3] = v18;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v19 = sub_2150A5C20();
  swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v21 = a2;
  (*(v8 + 16))(&v21[v22], v10, v7);
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
  swift_willThrow();
  result = (*(v8 + 8))(v10, v7);
  v18 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9E800(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[3];
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v2[2];
    if (v11 < *(v12 + 16))
    {
      v13 = v12 + 16 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *v2;
      v17 = v2[1];

      v7 = a1(v16, v17, v14, v15);

      v18 = v11 + 1;
      if (!v6)
      {
        v2[3] = v18;
        return v7;
      }

LABEL_6:
      v2[3] = v18;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v19 = sub_2150A5C20();
  swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v21 = a2;
  (*(v8 + 16))(&v21[v22], v10, v7);
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
  swift_willThrow();
  result = (*(v8 + 8))(v10, v7);
  v18 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9EA64(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[3];
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v2[2];
    if (v11 < *(v12 + 16))
    {
      v13 = v12 + 16 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *v2;
      v17 = v2[1];

      v7 = a1(v16, v17, v14, v15);

      v18 = v11 + 1;
      if (!v6)
      {
        v2[3] = v18;
        return v7;
      }

LABEL_6:
      v2[3] = v18;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v19 = sub_2150A5C20();
  swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v21 = a2;
  (*(v8 + 16))(&v21[v22], v10, v7);
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
  swift_willThrow();
  result = (*(v8 + 8))(v10, v7);
  v18 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9ECC8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a2)
{
  v6 = v3;
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[3];
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v2[2];
    if (v11 < *(v12 + 16))
    {
      v13 = v12 + 16 * v11;
      v14 = *(v13 + 32);
      v15 = *(v13 + 40);
      v16 = *v2;
      v17 = v2[1];

      v7 = a1(v16, v17, v14, v15);

      v18 = v11 + 1;
      if (!v6)
      {
        v2[3] = v18;
        return v7;
      }

LABEL_6:
      v2[3] = v18;
      return v7;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v19 = sub_2150A5C20();
  swift_allocError();
  v21 = v20;
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v21 = a2;
  (*(v8 + 16))(&v21[v22], v10, v7);
  (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84170], v19);
  swift_willThrow();
  result = (*(v8 + 8))(v10, v7);
  v18 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9EF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_2150A5C10();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[3];
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v3[2];
    if (v11 < *(v12 + 16))
    {
      v13 = v12 + 16 * v11;
      v15 = *(v13 + 32);
      v14 = *(v13 + 40);
      v16 = *v3;
      v17 = v3[1];

      sub_214FA3680(a1, v16, v17, v15, v14, a2, a3);

      v19 = v11 + 1;
LABEL_5:
      v3[3] = v19;
      return result;
    }
  }

  swift_beginAccess();

  sub_2150A5BF0();
  v20 = sub_2150A5C20();
  swift_allocError();
  v22 = v21;
  v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
  *v22 = a1;
  (*(v8 + 16))(v22 + v23, v10, v7);
  (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84170], v20);
  swift_willThrow();
  result = (*(v8 + 8))(v10, v7);
  v19 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_214F9F18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D837D0];
  if (a4)
  {
    v35[1] = a2;
    v35[2] = v4;
    v14 = sub_2150A57E0();
    v42 = v35;
    v15 = *(v14 - 8);
    MEMORY[0x28223BE20](v14);
    v17 = (v35 - v16);
    *v17 = a3;
    v17[1] = a4;
    v18 = *(v13 - 8);
    if ((*(v18 + 48))(v35 - v16, 1, v13) == 1)
    {
      v19 = v13;
      v20 = *(v15 + 8);

      v20(v17, v14);

      sub_2150A5BF0();
      v21 = MEMORY[0x277D84160];
LABEL_8:
      v30 = sub_2150A5C20();
      swift_allocError();
      v32 = v31;
      v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
      *v32 = v19;
      (*(v10 + 16))(v32 + v33, v12, v9);
      (*(*(v30 - 8) + 104))(v32, *v21, v30);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      return v9;
    }

    v37 = v13;
    v38 = &protocol witness table for String;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(v18 + 32))(boxed_opaque_existential_1, v17, v13);
    sub_214D7A458(&v36, v39);
    v27 = v40;
    v28 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v37 = v27;
    v29 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(*(v27 - 8) + 16))(v29, v28, v27);

    v9 = sub_214F6CADC(&v36);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v19 = v13;
      swift_beginAccess();

      sub_2150A5BF0();
      v21 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v40 = v13;
    v41 = &protocol witness table for String;
    v22 = __swift_allocate_boxed_opaque_existential_1(v39);
    *v22 = 0;
    v22[1] = 0xE000000000000000;
    v23 = v40;
    v24 = __swift_project_boxed_opaque_existential_1(v39, v40);
    v37 = v23;
    v25 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(*(v23 - 8) + 16))(v25, v24, v23);
    v9 = sub_214F6CADC(&v36);
    __swift_destroy_boxed_opaque_existential_0(&v36);
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  return v9;
}

uint64_t sub_214F9F624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2150A5C10();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D839B0];
  if (a4)
  {
    v30[1] = a2;
    v30[2] = v4;
    v13 = sub_2150A57E0();
    v37 = v30;
    v14 = *(v13 - 8);
    MEMORY[0x28223BE20](v13);
    v16 = v30 - v15;

    *v16 = _sSb11NotesSharedE12fromArgumentSbSgSS_tcfC_0();
    v17 = *(v12 - 8);
    if ((*(v17 + 48))(v16, 1, v12) == 1)
    {
      v18 = v12;
      (*(v14 + 8))(v16, v13);

      sub_2150A5BF0();
      v19 = MEMORY[0x277D84160];
LABEL_8:
      v25 = sub_2150A5C20();
      swift_allocError();
      v27 = v26;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
      *v27 = v18;
      (*(v9 + 16))(v27 + v28, v11, v8);
      (*(*(v25 - 8) + 104))(v27, *v19, v25);
      swift_willThrow();
      (*(v9 + 8))(v11, v8);
      return v8 & 1;
    }

    v32 = v12;
    v33 = &protocol witness table for Bool;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
    (*(v17 + 32))(boxed_opaque_existential_1, v16, v12);
    sub_214D7A458(&v31, v34);
    v8 = v35;
    v23 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v32 = v8;
    v24 = __swift_allocate_boxed_opaque_existential_1(&v31);
    (*(*(v8 - 8) + 16))(v24, v23, v8);
    LOBYTE(v8) = sub_214F6CD40(&v31);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v18 = v12;
      swift_beginAccess();

      sub_2150A5BF0();
      v19 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v35 = v12;
    v36 = &protocol witness table for Bool;
    *__swift_allocate_boxed_opaque_existential_1(v34) = 0;
    v8 = v35;
    v20 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v32 = v8;
    v21 = __swift_allocate_boxed_opaque_existential_1(&v31);
    (*(*(v8 - 8) + 16))(v21, v20, v8);
    LOBYTE(v8) = sub_214F6CD40(&v31);
    __swift_destroy_boxed_opaque_existential_0(&v31);
    __swift_destroy_boxed_opaque_existential_0(v34);
  }

  return v8 & 1;
}

double sub_214F9FAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D839F8];
  if (a4)
  {
    v33 = a2;
    v34 = v9;
    v14 = sub_2150A57E0();
    v35 = &v33;
    v15 = *(v14 - 8);
    MEMORY[0x28223BE20](v14);
    v16 = v13;
    v18 = &v33 - v17;
    v42[0] = 0;
    v19 = sub_21500F978(a3, a4, v42);
    v20 = v42[0];
    if (!v19)
    {
      v20 = 0;
    }

    *v18 = v20;
    v18[8] = !v19;
    v21 = *(v16 - 8);
    if ((*(v21 + 48))(v18, 1, v16) == 1)
    {
      (*(v15 + 8))(v18, v14);

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84160];
      v13 = v16;
      v9 = v34;
LABEL_11:
      v28 = sub_2150A5C20();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
      *v30 = v13;
      (*(v10 + 16))(v30 + v31, v12, v9);
      (*(*(v28 - 8) + 104))(v30, *v22, v28);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      return v4;
    }

    v37 = v16;
    v38 = &protocol witness table for Double;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(v21 + 32))(boxed_opaque_existential_1, v18, v16);
    sub_214D7A458(&v36, v39);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      swift_beginAccess();

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84170];
      goto LABEL_11;
    }

    v40 = v13;
    v41 = &protocol witness table for Double;
    *__swift_allocate_boxed_opaque_existential_1(v39) = 0;
  }

  v24 = v40;
  v25 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v37 = v24;
  v26 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  sub_214F6CF84(&v36);
  v4 = v27;
  __swift_destroy_boxed_opaque_existential_0(&v36);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v4;
}

float sub_214F9FEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83A90];
  if (a4)
  {
    v33 = a2;
    v34 = v9;
    v14 = sub_2150A57E0();
    v35 = &v33;
    v15 = *(v14 - 8);
    MEMORY[0x28223BE20](v14);
    v16 = v13;
    v18 = &v33 - v17;
    v42[0] = 0;
    v19 = sub_21500F9BC(a3, a4, v42);
    v20 = v42[0];
    if (!v19)
    {
      v20 = 0;
    }

    *v18 = v20;
    v18[4] = !v19;
    v21 = *(v16 - 8);
    if ((*(v21 + 48))(v18, 1, v16) == 1)
    {
      (*(v15 + 8))(v18, v14);

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84160];
      v13 = v16;
      v9 = v34;
LABEL_11:
      v28 = sub_2150A5C20();
      swift_allocError();
      v30 = v29;
      v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
      *v30 = v13;
      (*(v10 + 16))(v30 + v31, v12, v9);
      (*(*(v28 - 8) + 104))(v30, *v22, v28);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      return v4;
    }

    v37 = v16;
    v38 = &protocol witness table for Float;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v36);
    (*(v21 + 32))(boxed_opaque_existential_1, v18, v16);
    sub_214D7A458(&v36, v39);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      swift_beginAccess();

      sub_2150A5BF0();
      v22 = MEMORY[0x277D84170];
      goto LABEL_11;
    }

    v40 = v13;
    v41 = &protocol witness table for Float;
    *__swift_allocate_boxed_opaque_existential_1(v39) = 0;
  }

  v24 = v40;
  v25 = __swift_project_boxed_opaque_existential_1(v39, v40);
  v37 = v24;
  v26 = __swift_allocate_boxed_opaque_existential_1(&v36);
  (*(*(v24 - 8) + 16))(v26, v25, v24);
  sub_214F6D1C4(&v36);
  v4 = v27;
  __swift_destroy_boxed_opaque_existential_0(&v36);
  __swift_destroy_boxed_opaque_existential_0(v39);
  return v4;
}

uint64_t sub_214FA0340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D83B88];
  if (a4)
  {
    v34[1] = a2;
    v34[2] = v4;
    v14 = sub_2150A57E0();
    v41 = v34;
    v15 = *(v14 - 8);
    MEMORY[0x28223BE20](v14);
    v17 = v34 - v16;

    *v17 = sub_215011CDC(a3, a4);
    v17[8] = v18 & 1;
    v19 = *(v13 - 8);
    if ((*(v19 + 48))(v17, 1, v13) == 1)
    {
      v20 = v13;
      (*(v15 + 8))(v17, v14);

      sub_2150A5BF0();
      v21 = MEMORY[0x277D84160];
LABEL_8:
      v29 = sub_2150A5C20();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
      *v31 = v20;
      (*(v10 + 16))(v31 + v32, v12, v9);
      (*(*(v29 - 8) + 104))(v31, *v21, v29);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      return v9;
    }

    v36 = v13;
    v37 = &protocol witness table for Int;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v19 + 32))(boxed_opaque_existential_1, v17, v13);
    sub_214D7A458(&v35, v38);
    v26 = v39;
    v27 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v36 = v26;
    v28 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    v9 = sub_214F6D404(&v35);
    __swift_destroy_boxed_opaque_existential_0(&v35);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v20 = v13;
      swift_beginAccess();

      sub_2150A5BF0();
      v21 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v39 = v13;
    v40 = &protocol witness table for Int;
    *__swift_allocate_boxed_opaque_existential_1(v38) = 0;
    v22 = v39;
    v23 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v36 = v22;
    v24 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    v9 = sub_214F6D404(&v35);
    __swift_destroy_boxed_opaque_existential_0(&v35);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  return v9;
}

uint64_t sub_214FA07D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84900];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6D420(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6D420(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA0D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84958];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6D43C(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6D43C(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA1258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D849A8];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6D458(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6D458(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA179C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D84A28];
  if (a4)
  {
    v34[1] = a2;
    v34[2] = v4;
    v14 = sub_2150A57E0();
    v41 = v34;
    v15 = *(v14 - 8);
    MEMORY[0x28223BE20](v14);
    v17 = v34 - v16;

    *v17 = sub_215011CDC(a3, a4);
    v17[8] = v18 & 1;
    v19 = *(v13 - 8);
    if ((*(v19 + 48))(v17, 1, v13) == 1)
    {
      v20 = v13;
      (*(v15 + 8))(v17, v14);

      sub_2150A5BF0();
      v21 = MEMORY[0x277D84160];
LABEL_8:
      v29 = sub_2150A5C20();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
      *v31 = v20;
      (*(v10 + 16))(v31 + v32, v12, v9);
      (*(*(v29 - 8) + 104))(v31, *v21, v29);
      swift_willThrow();
      (*(v10 + 8))(v12, v9);
      return v9;
    }

    v36 = v13;
    v37 = &protocol witness table for Int64;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(v19 + 32))(boxed_opaque_existential_1, v17, v13);
    sub_214D7A458(&v35, v38);
    v26 = v39;
    v27 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v36 = v26;
    v28 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(*(v26 - 8) + 16))(v28, v27, v26);
    v9 = sub_214F6D474(&v35);
    __swift_destroy_boxed_opaque_existential_0(&v35);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  else
  {
    swift_beginAccess();
    if ((*(a1 + 32) & 1) == 0)
    {
      v20 = v13;
      swift_beginAccess();

      sub_2150A5BF0();
      v21 = MEMORY[0x277D84170];
      goto LABEL_8;
    }

    v39 = v13;
    v40 = &protocol witness table for Int64;
    *__swift_allocate_boxed_opaque_existential_1(v38) = 0;
    v22 = v39;
    v23 = __swift_project_boxed_opaque_existential_1(v38, v39);
    v36 = v22;
    v24 = __swift_allocate_boxed_opaque_existential_1(&v35);
    (*(*(v22 - 8) + 16))(v24, v23, v22);
    v9 = sub_214F6D474(&v35);
    __swift_destroy_boxed_opaque_existential_0(&v35);
    __swift_destroy_boxed_opaque_existential_0(v38);
  }

  return v9;
}

uint64_t sub_214FA1C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D83E88];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6D490(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6D490(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA2170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84B78];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6D4AC(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6D4AC(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA26B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84C58];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6D70C(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6D70C(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA2BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84CC0];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6D96C(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6D96C(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA313C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_2150A5C10();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v48 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84D38];
  v13 = swift_conformsToProtocol2();
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
      v37 = a2;
      v38 = v9;
      v41 = v10;
      v39 = v4;
      v15 = *(v13 + 24);
      v16 = sub_2150A57E0();
      v40 = &v37;
      v17 = *(v16 - 8);
      MEMORY[0x28223BE20](v16);
      v19 = &v37 - v18;

      v15(a3, a4, v12, v14);
      v20 = *(v12 - 8);
      if ((*(v20 + 48))(v19, 1, v12) == 1)
      {
        (*(v17 + 8))(v19, v16);

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84160];
        v9 = v38;
LABEL_9:
        v27 = sub_2150A5C20();
        swift_allocError();
        v33 = v32;
        v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
        *v33 = v12;
        v35 = v41;
        (*(v41 + 16))(v33 + v34, v21, v9);
        (*(*(v27 - 8) + 104))(v33, *v22, v27);
        swift_willThrow();
        (*(v35 + 8))(v21, v9);
        return v27;
      }

      v43 = v12;
      v44 = v14;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(v20 + 32))(boxed_opaque_existential_1, v19, v12);
      sub_214D7A458(&v42, v45);
      v29 = v46;
      v30 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v29;
      v31 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v29 - 8) + 16))(v31, v30, v29);
      v27 = sub_214F6DBCC(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    else
    {
      swift_beginAccess();
      if ((*(a1 + 32) & 1) == 0)
      {
        v41 = v10;
        swift_beginAccess();

        v21 = v48;
        sub_2150A5BF0();
        v22 = MEMORY[0x277D84170];
        goto LABEL_9;
      }

      v23 = *(v14 + 16);
      v46 = v12;
      v47 = v14;
      __swift_allocate_boxed_opaque_existential_1(v45);
      v23(v12, v14);
      v24 = v46;
      v25 = __swift_project_boxed_opaque_existential_1(v45, v46);
      v43 = v24;
      v26 = __swift_allocate_boxed_opaque_existential_1(&v42);
      (*(*(v24 - 8) + 16))(v26, v25, v24);
      v27 = sub_214F6DBCC(&v42);
      __swift_destroy_boxed_opaque_existential_0(&v42);
      __swift_destroy_boxed_opaque_existential_0(v45);
    }

    return v27;
  }

  result = sub_2150A5E10();
  __break(1u);
  return result;
}

uint64_t sub_214FA3680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a3;
  v48 = a7;
  v13 = sub_2150A5C10();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_conformsToProtocol2();
  if (v16 && a1)
  {
    v17 = v16;
    if (a5)
    {
      v42 = a6;
      v43 = v14;
      v44 = v13;
      v45 = v7;
      v18 = *(v16 + 24);
      v19 = sub_2150A57E0();
      v46 = &v41;
      v20 = *(v19 - 8);
      MEMORY[0x28223BE20](v19);
      v22 = &v41 - v21;

      v18(a4, a5, a1, v17);
      v23 = *(a1 - 8);
      if ((*(v23 + 48))(v22, 1, a1) != 1)
      {
        v50 = a1;
        v51 = v17;
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v49);
        (*(v23 + 32))(boxed_opaque_existential_1, v22, a1);
        sub_214D7A458(&v49, &v52);
        v33 = v54;
        v34 = __swift_project_boxed_opaque_existential_1(&v52, v54);
        v50 = v33;
        v35 = __swift_allocate_boxed_opaque_existential_1(&v49);
        (*(*(v33 - 8) + 16))(v35, v34, v33);
        castOrFatalError<A>(_:as:)(&v49, v42, v42, v48);
        __swift_destroy_boxed_opaque_existential_0(&v49);
        return __swift_destroy_boxed_opaque_existential_0(&v52);
      }

      (*(v20 + 8))(v22, v19);

      v24 = v56;
      sub_2150A5BF0();
      v25 = MEMORY[0x277D84160];
      v14 = v43;
      v13 = v44;
    }

    else
    {
      swift_beginAccess();
      if (*(a2 + 32))
      {
        v26 = a6;
        v27 = *(v17 + 16);
        v54 = a1;
        v55 = v17;
        __swift_allocate_boxed_opaque_existential_1(&v52);
        v27(a1, v17);
        v28 = v54;
        v29 = __swift_project_boxed_opaque_existential_1(&v52, v54);
        v50 = v28;
        v30 = __swift_allocate_boxed_opaque_existential_1(&v49);
        (*(*(v28 - 8) + 16))(v30, v29, v28);
        castOrFatalError<A>(_:as:)(&v49, v26, v26, v48);
        __swift_destroy_boxed_opaque_existential_0(&v49);
        return __swift_destroy_boxed_opaque_existential_0(&v52);
      }

      swift_beginAccess();

      v24 = v56;
      sub_2150A5BF0();
      v25 = MEMORY[0x277D84170];
    }

    v36 = sub_2150A5C20();
    swift_allocError();
    v38 = v37;
    v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EB8) + 48);
    *v38 = a1;
    (*(v14 + 16))(v38 + v39, v24, v13);
    (*(*(v36 - 8) + 104))(v38, *v25, v36);
    swift_willThrow();
    return (*(v14 + 8))(v24, v13);
  }

  else
  {
    v52 = 0;
    v53 = 0xE000000000000000;
    sub_2150A5B20();

    v52 = 0x2065707954;
    v53 = 0xE500000000000000;
    v40 = sub_2150A6670();
    MEMORY[0x2160617E0](v40);

    MEMORY[0x2160617E0](0xD000000000000026, 0x80000002150E52E0);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214FA3FAC()
{
  result = sub_2150A6180();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA3FFC()
{
  result = sub_2150A6190();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA40A4()
{
  result = sub_2150A61C0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA40F4()
{
  result = sub_2150A61A0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA4234()
{
  result = sub_2150A61D0();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_214FA4284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

void (*sub_214FA45CC(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_214FA48F0(v7);
  v7[9] = sub_214FA46D8(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_214FA4678;
}

void sub_214FA4678(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_214FA46D8(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x38uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_214F30094(a2, a3);
  *(v11 + 48) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_214FED04C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_214FE9184(v18, a4 & 1);
    v13 = sub_214F30094(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_2150A63E0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = (*(*v5 + 56) + 16 * v13);
    v24 = *v23;
    v25 = v23[1];
  }

  else
  {
    v24 = 0;
    v25 = 0;
  }

  *v11 = v24;
  v11[1] = v25;
  return sub_214FA4838;
}

void sub_214FA4838(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[1];
  v4 = *(*a1 + 48);
  if (v3)
  {
    v5 = v1[5];
    v6 = *v1[4];
    if (v4)
    {
      v7 = (v6[7] + 16 * v5);
      *v7 = v2;
      v7[1] = v3;
    }

    else
    {
      sub_214FECA7C(v5, v1[2], v1[3], v2, v3, v6);
    }
  }

  else if ((*a1)[6])
  {
    v8 = v1[5];
    v9 = *v1[4];
    sub_214F8467C(*(v9 + 48) + 16 * v8);
    sub_214F41144(v8, v9);
  }

  free(v1);
}

uint64_t (*sub_214FA48F0(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_214FA4918;
}

uint64_t sub_214FA4924(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_214D7A458(&v12, v10 + 40 * a1 + 32);
}

unint64_t sub_214FA49BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC0);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_214FB18DC(v6);
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

void *sub_214FA4AB4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F60);
  v3 = sub_2150A5EA0();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_214FB1920(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_214FB1920(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_214FA4BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA42F10);
    v3 = sub_2150A5EA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_214F43C14(v4, &v13, &qword_27CA41D60);
      v5 = v13;
      v6 = v14;
      result = sub_214F30094(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_214D72488(&v15, (v3[7] + 32 * result));
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

unint64_t sub_214FA4CEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DC8);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_214F30094(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_214FA4E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F28);
    v7 = sub_2150A5EA0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v9, v5, &qword_27CA42F20);
      result = sub_214FB1A60(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2150A5DF0();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      result = sub_214D72488(&v5[v8], (v7[7] + 32 * v13));
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_214FA4FEC()
{
  result = qword_27CA42E08;
  if (!qword_27CA42E08)
  {
    type metadata accessor for ArgumentDecoder.Decoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42E08);
  }

  return result;
}

unint64_t sub_214FA5058(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F38);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_214F30094(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_214FA515C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58);
    v7 = sub_2150A5EA0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v9, v5, &qword_27CA42F50);
      result = sub_214FB1870(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for NoteEditActivityEvent.Parents(0);
      result = sub_214FA61D0(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_214FA532C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F40);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F48);
    v7 = sub_2150A5EA0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v9, v5, &qword_27CA42F40);
      result = sub_214FB1870(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for NoteEditActivityEvent.Parents(0);
      result = sub_214FA61D0(v5, v14 + *(*(v15 - 8) + 72) * v13);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_214FA54FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F00);
    v3 = sub_2150A5EA0();
    v4 = a1 + 32;

    while (1)
    {
      sub_214F43C14(v4, &v11, &qword_27CA42F08);
      v5 = v11;
      result = sub_214FB6D98(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_214D72488(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_214FA5624(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED8);
    v3 = sub_2150A5EA0();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_214FB6D98(v6);
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

unint64_t sub_214FA571C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EF8);
    v7 = sub_2150A5EA0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v9, v5, &qword_27CA42EF0);
      result = sub_214FB1B98(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2150A3750();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_214FA5904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EE8);
    v7 = sub_2150A5EA0();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v9, v5, &qword_27CA42EE0);
      result = sub_214FB1B98(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2150A3750();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 40 * v13;
      v17 = *v8;
      v18 = *(v8 + 1);
      *(v16 + 32) = v8[32];
      *v16 = v17;
      *(v16 + 16) = v18;
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_214FA5B00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42EC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42ED0);
    v7 = sub_2150A5EA0();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_214F43C14(v9, v5, &qword_27CA42EC8);
      result = sub_214FB198C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_2150A3A00();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_214FA5CE8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = MEMORY[0x277D84F90];
  if (a4)
  {
    v5 = HIBYTE(a4) & 0xF;
    if ((a4 & 0x2000000000000000) == 0)
    {
      v5 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (v5)
    {
      v23 = objc_opt_self();
      v6 = [v23 ic_attachmentCharacterString];
      sub_2150A4AD0();

      v7 = sub_214D6E6C4();
      v8 = MEMORY[0x277D837D0];
      v21 = v7;
      v22 = v7;
      v19 = MEMORY[0x277D837D0];
      v20 = v7;
      sub_2150A5890();

      v9 = sub_2150A5870();

      v10 = *(v9 + 16);
      if (v10)
      {
        sub_214F86A20(0, v10, 0);
        v11 = v9 + 40;
        do
        {

          v12 = [v23 ic_attachmentCharacterString];
          sub_2150A4AD0();

          v21 = v7;
          v22 = v7;
          v19 = v8;
          v20 = v7;
          v13 = sub_2150A5890();
          v15 = v14;

          v17 = *(v4 + 16);
          v16 = *(v4 + 24);
          if (v17 >= v16 >> 1)
          {
            sub_214F86A20((v16 > 1), v17 + 1, 1);
          }

          *(v4 + 16) = v17 + 1;
          v18 = v4 + 16 * v17;
          *(v18 + 32) = v13;
          *(v18 + 40) = v15;
          v11 += 16;
          --v10;
        }

        while (v10);
      }
    }
  }
}

unint64_t sub_214FA5F68()
{
  result = qword_27CA42E10;
  if (!qword_27CA42E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42E10);
  }

  return result;
}

unint64_t sub_214FA5FBC()
{
  result = qword_27CA42E18[0];
  if (!qword_27CA42E18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CA42E18);
  }

  return result;
}

uint64_t sub_214FA60A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_214FA6150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 >= 2)
  {
    if (a5)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_214FA61D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_214FA6240()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA62A0()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA63B0()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA64BC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA6518()
{
  v0 = sub_2150A3F30();
  __swift_allocate_value_buffer(v0, qword_27CA42F70);
  v1 = __swift_project_value_buffer(v0, qword_27CA42F70);
  if (qword_280C23230 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280C23238);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RealtimeCollaborationSelectionDocument.Selection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214FA90B0();
  sub_2150A6590();
  if (!v2)
  {
    v19 = 0;
    sub_214FA9104();
    sub_2150A5FC0();
    if (v18)
    {
      v19 = 2;
      if (v18 == 1)
      {
        sub_214FA9158();
        sub_2150A5FC0();
        (*(v6 + 8))(v8, v5);
        v10 = v18;
        v11 = swift_allocObject();
        *(v11 + 16) = v10;
        *a2 = v11 | 0x4000000000000000;
      }

      else
      {
        sub_214FA9158();
        sub_2150A5FC0();
        v14 = v18;
        v19 = 3;
        sub_214FA91AC();
        sub_2150A5FC0();
        (*(v6 + 8))(v8, v5);
        v15 = v18;
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v15;
        *a2 = v16 | 0x8000000000000000;
      }
    }

    else
    {
      v19 = 3;
      sub_214FA9200();
      sub_2150A5FC0();
      (*(v6 + 8))(v8, v5);
      v12 = v18;
      v13 = swift_allocObject();
      *(v13 + 16) = v12;
      *a2 = v13;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void RealtimeCollaborationSelectionDocument.Selection.encode(to:)(void *a1)
{
  v3 = sub_2150A5C40();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FB8);
  v7 = *(v6 - 8);
  v39 = v6;
  v40 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - v8;
  v10 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = sub_214FA90B0();
  v12 = v9;
  sub_2150A65B0();
  v13 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v18 = v10 & 0x3FFFFFFFFFFFFFFFLL;
      v20 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *(v18 + 24);
      LOBYTE(v42) = 2;
      v41 = 0;
      sub_214FA9254();
      v21 = v38;
      v22 = v39;
      sub_2150A60A0();
      if (!v21)
      {
        LOBYTE(v42) = 1;
        sub_2150A6070();
        v42 = v20;
        v41 = 2;
        sub_214FA92A8();
        sub_2150A60A0();
        v42 = v19;
        v41 = 3;
        sub_214FA92FC();
        sub_2150A60A0();
      }

      (*(v40 + 8))(v12, v22);
    }

    else
    {
      v26 = v39;
      v27 = sub_2150A6020();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      *(inited + 56) = &_s9SelectionO10CodingKeysON;
      *(inited + 64) = v11;
      *(inited + 32) = 0;
      v42 = v27;
      sub_215068884(inited);
      sub_2150A5BF0();
      v29 = sub_2150A5C50();
      swift_allocError();
      v31 = v30;
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC8) + 48);
      *(v31 + 3) = &type metadata for RealtimeCollaborationSelectionDocument.Selection;
      *v31 = v10;
      v34 = v36;
      v33 = v37;
      (*(v36 + 16))(&v31[v32], v5, v37);
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D841A8], v29);
      swift_willThrow();
      (*(v34 + 8))(v5, v33);
      (*(v40 + 8))(v12, v26);
    }
  }

  else
  {
    if (v13)
    {
      v23 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v42) = 1;
      v41 = 0;
      sub_214FA9254();
      v15 = v23;
      v24 = v38;
      v25 = v39;
      sub_2150A60A0();
      if (!v24)
      {
        LOBYTE(v42) = 1;
        sub_2150A6070();
        v42 = v15;
        v41 = 2;
        sub_214FA92A8();
        sub_2150A60A0();
      }

      (*(v40 + 8))(v12, v25);
    }

    else
    {
      v14 = *(v10 + 16);
      LOBYTE(v42) = 0;
      v41 = 0;
      sub_214FA9254();
      v15 = v14;
      v16 = v38;
      v17 = v39;
      sub_2150A60A0();
      if (!v16)
      {
        LOBYTE(v42) = 1;
        sub_2150A6070();
        v42 = v15;
        v41 = 3;
        sub_214FA9350();
        sub_2150A60A0();
      }

      (*(v40 + 8))(v12, v17);
    }
  }
}

uint64_t RealtimeCollaborationSelectionDocument.TableSelection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v32 = a2;
  v3 = sub_2150A3A00();
  v33 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FF0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_214FA93A4();
  v14 = v34;
  sub_2150A6590();
  if (!v14)
  {
    v34 = v8;
    v15 = v33;
    v37 = 0;
    sub_214FA93F8();
    sub_2150A5FC0();
    if (v36 > 1u)
    {
      if (v36 == 2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020);
        v37 = 1;
        sub_214FA958C(&qword_27CA43028, &qword_27CA43008);
        sub_2150A5FC0();
        v21 = v36;
        v37 = 2;
        sub_2150A5FC0();
        (*(v10 + 8))(v12, v9);
        v22 = v36;
        v23 = swift_allocObject();
        *(v23 + 16) = v21;
        *(v23 + 24) = v22;
        v18 = v23 | 0x4000000000000000;
      }

      else
      {
        LOBYTE(v36) = 3;
        v31 = sub_214FA94F4(&qword_27CA43008);
        sub_2150A5FC0();
        LOBYTE(v36) = 4;
        sub_2150A5FC0();
        v37 = 5;
        sub_214FA944C();
        sub_2150A5FC0();
        (*(v10 + 8))(v12, v9);
        v24 = v36;
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43018);
        v31 = swift_allocBox();
        v27 = v26;
        v28 = *(v25 + 48);
        v29 = *(v25 + 64);
        v30 = *(v15 + 32);
        v30(v26, v34, v3);
        v30(v27 + v28, v6, v3);
        *(v27 + v29) = v24;
        v18 = v31 | 0x6000000000000000;
      }
    }

    else if (v36)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020);
      v37 = 2;
      sub_214FA958C(&qword_27CA43028, &qword_27CA43008);
      sub_2150A5FC0();
      (*(v10 + 8))(v12, v9);
      v19 = v36;
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      v18 = v20 | 0x2000000000000000;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020);
      v37 = 1;
      sub_214FA958C(&qword_27CA43028, &qword_27CA43008);
      sub_2150A5FC0();
      (*(v10 + 8))(v12, v9);
      v17 = v36;
      v18 = swift_allocObject();
      *(v18 + 16) = v17;
    }

    *v32 = v18;
  }

  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t RealtimeCollaborationSelectionDocument.TableSelection.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_2150A5C40();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2150A3A00();
  v59 = *(v7 - 8);
  v60 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v61 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v62 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43030);
  v12 = *(v11 - 8);
  v64 = v11;
  v65 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v56 - v13;
  v15 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_214FA93A4();
  v17 = v14;
  sub_2150A65B0();
  v18 = v15 >> 61;
  if ((v15 >> 61) <= 1)
  {
    if (v18)
    {
      v49 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      LOBYTE(v67) = 1;
      v66 = 0;
      sub_214FA94A0();
      v50 = v63;
      v33 = v64;
      v34 = v14;
      sub_2150A60A0();
      if (!v50)
      {
        v67 = v49;
        v35 = 2;
        goto LABEL_14;
      }
    }

    else
    {
      v31 = *(v15 + 16);
      LOBYTE(v67) = 0;
      v66 = 0;
      sub_214FA94A0();
      v32 = v63;
      v33 = v64;
      v34 = v14;
      sub_2150A60A0();
      if (!v32)
      {
        v67 = v31;
        v35 = 1;
LABEL_14:
        v66 = v35;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020);
        sub_214FA958C(&qword_27CA43048, &qword_280C241B8);
        sub_2150A60A0();
      }
    }

    return (*(v65 + 8))(v34, v33);
  }

  if (v18 == 2)
  {
    v36 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v37 = *((v15 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v67) = 2;
    v66 = 0;
    sub_214FA94A0();
    v38 = v63;
    v27 = v64;
    v28 = v14;
    sub_2150A60A0();
    if (!v38)
    {
      v67 = v36;
      v66 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43020);
      sub_214FA958C(&qword_27CA43048, &qword_280C241B8);
      sub_2150A60A0();
      v67 = v37;
      v66 = 2;
      sub_2150A60A0();
    }
  }

  else
  {
    if (v18 != 3)
    {
      v39 = v64;
      v40 = sub_2150A6020();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2150C25D0;
      *(inited + 56) = &_s14TableSelectionO10CodingKeysON;
      *(inited + 64) = v16;
      *(inited + 32) = 0;
      v67 = v40;
      sub_215068884(inited);
      sub_2150A5BF0();
      v42 = sub_2150A5C50();
      swift_allocError();
      v44 = v43;
      v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42FC8) + 48);
      *(v44 + 3) = &type metadata for RealtimeCollaborationSelectionDocument.TableSelection;
      *v44 = v15;
      v47 = v57;
      v46 = v58;
      (*(v57 + 16))(&v44[v45], v6, v58);
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D841A8], v42);
      swift_willThrow();
      (*(v47 + 8))(v6, v46);
      return (*(v65 + 8))(v14, v39);
    }

    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43018);
    v20 = swift_projectBox();
    v21 = *(v19 + 48);
    v22 = *(v20 + *(v19 + 64));
    v23 = v59;
    v24 = v60;
    v25 = *(v59 + 16);
    v25(v62, v20, v60);
    v26 = v61;
    v25(v61, v20 + v21, v24);
    LOBYTE(v67) = 3;
    v66 = 0;
    sub_214FA94A0();

    v27 = v64;
    v28 = v17;
    v29 = v63;
    sub_2150A60A0();
    if (!v29)
    {
      v51 = v23;
      LOBYTE(v67) = 3;
      sub_214FA94F4(&qword_280C241B8);
      v52 = v62;
      sub_2150A60A0();
      LOBYTE(v67) = 4;
      v53 = v24;
      v54 = v61;
      sub_2150A60A0();
      v67 = v22;
      v66 = 5;
      sub_214FA9538();
      sub_2150A60A0();
      v55 = *(v51 + 8);
      v55(v54, v53);
      v55(v52, v53);
      (*(v65 + 8))(v28, v27);
    }

    v30 = *(v23 + 8);
    v30(v26, v24);
    v30(v62, v24);
  }

  return (*(v65 + 8))(v28, v27);
}

uint64_t sub_214FA7E7C()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA7ED8()
{
  sub_2150A4BB0();
}

uint64_t sub_214FA7F18()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA7F70@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FA9C58();
  *a1 = result;
  return result;
}

uint64_t sub_214FA7FD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FA9C58();
  *a1 = result;
  return result;
}

uint64_t sub_214FA7FFC(uint64_t a1)
{
  v2 = sub_214FA90B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FA8038(uint64_t a1)
{
  v2 = sub_214FA90B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214FA8074(char *a1, char *a2)
{
  if (qword_2150C5BE0[*a1] == qword_2150C5BE0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_2150A6270();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_214FA80DC()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA8138()
{
  sub_2150A4BB0();
}

uint64_t sub_214FA8178()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA81D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FA9D4C();
  *a1 = result;
  return result;
}

uint64_t sub_214FA82E0()
{
  sub_2150A4BB0();
}

uint64_t sub_214FA8328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FA9BC0();
  *a1 = result;
  return result;
}

uint64_t sub_214FA838C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FA9BC0();
  *a1 = result;
  return result;
}

uint64_t sub_214FA83C0(uint64_t a1)
{
  v2 = sub_214FA93A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214FA83FC(uint64_t a1)
{
  v2 = sub_214FA93A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214FA8444()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA84A0()
{
  sub_2150A4BB0();
}

uint64_t sub_214FA84E0()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FA8538@<X0>(_BYTE *a1@<X8>)
{
  result = sub_214FA9C0C();
  *a1 = result;
  return result;
}

uint64_t sub_214FA8668()
{
  if (qword_27CA41640 != -1)
  {
    swift_once();
  }

  sub_214FA9538();
  return sub_2150A3510();
}

uint64_t sub_214FA885C(uint64_t a1, void (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t sub_214FA88B0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_27CA41648 != -1)
  {
    swift_once();
  }

  sub_214FA944C();
  sub_2150A34E0();
  result = sub_214F7EDE4(a1, a2);
  *a3 = v7;
  return result;
}

uint64_t _s11NotesShared38RealtimeCollaborationSelectionDocumentC05TableE0O2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v47 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v47 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v47 - v16;
  v18 = *a1;
  v19 = *a2;
  v20 = *a1 >> 61;
  if (v20 <= 1)
  {
    if (!v20)
    {
      if (!(v19 >> 61))
      {
        v35 = *(v18 + 16);
        v36 = *(v19 + 16);

        LOBYTE(v35) = sub_214FAC18C(v35, v36);

        return v35 & 1;
      }

      goto LABEL_23;
    }

    if (v19 >> 61 != 1)
    {
LABEL_23:
      v31 = 0;
      return v31 & 1;
    }

    v38 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v41 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

LABEL_18:
    v43 = sub_214FAC18C(v38, v41);

    return v43 & 1;
  }

  if (v20 == 2)
  {
    if (v19 >> 61 != 2)
    {
      goto LABEL_23;
    }

    v39 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v38 = *((v18 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v40 = v19 & 0x1FFFFFFFFFFFFFFFLL;
    v42 = *(v40 + 16);
    v41 = *(v40 + 24);

    if ((sub_214FAC18C(v39, v42) & 1) == 0)
    {

LABEL_22:

      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v20 != 3)
  {
    if (v19 == 0x8000000000000000)
    {

      v31 = 1;
      return v31 & 1;
    }

    goto LABEL_23;
  }

  v54 = v15;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43018);
  v22 = swift_projectBox();
  if (v19 >> 61 != 3)
  {
    goto LABEL_23;
  }

  v23 = *(v21 + 64);
  v48 = *(v22 + v23);
  v50 = *(v21 + 48);
  v53 = v22;
  v24 = swift_projectBox();
  v25 = *(v24 + v23);
  v49 = v24;
  v51 = v25;
  v52 = v5;
  v26 = *(v5 + 16);
  v27 = v54;
  v26(v17, v53, v54);
  v26(v14, v24, v27);
  v28 = v50;
  v26(v11, v53 + v50, v27);
  v26(v8, v49 + v28, v27);
  v29 = v51;

  if ((sub_2150A39B0() & 1) == 0)
  {

    v30 = v52;
LABEL_21:
    v44 = *(v30 + 8);
    v45 = v8;
    v46 = v54;
    v44(v45, v54);
    v44(v11, v46);
    v44(v14, v46);
    v44(v17, v46);

    goto LABEL_22;
  }

  v30 = v52;
  if ((sub_2150A39B0() & 1) == 0)
  {

    goto LABEL_21;
  }

  v55 = v29;
  v56 = v48;
  v31 = _s11NotesShared38RealtimeCollaborationSelectionDocumentC0E0O2eeoiySbAE_AEtFZ_0(&v56, &v55);
  v32 = *(v30 + 8);
  v33 = v8;
  v34 = v54;
  v32(v33, v54);
  v32(v11, v34);
  v32(v14, v34);
  v32(v17, v34);

  return v31 & 1;
}

uint64_t _s11NotesShared38RealtimeCollaborationSelectionDocumentC0E0O2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      if (v3 == 0xC000000000000000)
      {

        v7 = 1;
        return v7 & 1;
      }

LABEL_15:
      v7 = 0;
      return v7 & 1;
    }

    if (v3 >> 62 != 2)
    {
      goto LABEL_15;
    }

    v8 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);

    if (![v8 isEqual_])
    {

      goto LABEL_15;
    }

    v17 = v12;
    v18 = v9;
    v13 = _s11NotesShared38RealtimeCollaborationSelectionDocumentC05TableE0O2eeoiySbAE_AEtFZ_0(&v18, &v17);
LABEL_11:
    v7 = v13;

    return v7 & 1;
  }

  if (v4)
  {
    if (v3 >> 62 != 1)
    {
      goto LABEL_15;
    }

    v14 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

    v13 = [v14 isEqual_];
    goto LABEL_11;
  }

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  v5 = *(v2 + 16);
  v6 = *(v3 + 16);

  v7 = [v5 isEqual_];

  return v7 & 1;
}

unint64_t sub_214FA90B0()
{
  result = qword_27CA42F90;
  if (!qword_27CA42F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42F90);
  }

  return result;
}

unint64_t sub_214FA9104()
{
  result = qword_27CA42F98;
  if (!qword_27CA42F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42F98);
  }

  return result;
}

unint64_t sub_214FA9158()
{
  result = qword_27CA42FA0;
  if (!qword_27CA42FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FA0);
  }

  return result;
}

unint64_t sub_214FA91AC()
{
  result = qword_27CA42FA8;
  if (!qword_27CA42FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FA8);
  }

  return result;
}

unint64_t sub_214FA9200()
{
  result = qword_27CA42FB0;
  if (!qword_27CA42FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FB0);
  }

  return result;
}

unint64_t sub_214FA9254()
{
  result = qword_27CA42FD0;
  if (!qword_27CA42FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FD0);
  }

  return result;
}

unint64_t sub_214FA92A8()
{
  result = qword_27CA42FD8;
  if (!qword_27CA42FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FD8);
  }

  return result;
}

unint64_t sub_214FA92FC()
{
  result = qword_27CA42FE0;
  if (!qword_27CA42FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FE0);
  }

  return result;
}

unint64_t sub_214FA9350()
{
  result = qword_27CA42FE8;
  if (!qword_27CA42FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FE8);
  }

  return result;
}

unint64_t sub_214FA93A4()
{
  result = qword_27CA42FF8;
  if (!qword_27CA42FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA42FF8);
  }

  return result;
}

unint64_t sub_214FA93F8()
{
  result = qword_27CA43000;
  if (!qword_27CA43000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43000);
  }

  return result;
}

unint64_t sub_214FA944C()
{
  result = qword_27CA43010;
  if (!qword_27CA43010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43010);
  }

  return result;
}

unint64_t sub_214FA94A0()
{
  result = qword_27CA43038;
  if (!qword_27CA43038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43038);
  }

  return result;
}

uint64_t sub_214FA94F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_2150A3A00();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_214FA9538()
{
  result = qword_27CA43040;
  if (!qword_27CA43040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43040);
  }

  return result;
}

uint64_t sub_214FA958C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA43020);
    sub_214FA94F4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11NotesShared38RealtimeCollaborationSelectionDocumentC0E0O(void *a1)
{
  v1 = *a1 >> 62;
  if (v1 == 3)
  {
    return (*a1 >> 3) + 3;
  }

  else
  {
    return v1;
  }
}

void *sub_214FA9630(void *result, uint64_t a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 3)) | 0xC000000000000000;
  }

  return result;
}

unint64_t get_enum_tag_for_layout_string_11NotesShared38RealtimeCollaborationSelectionDocumentC05TableE0O(uint64_t *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_214FA9688(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_214FA96E4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_214FA9744(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t _s14TableSelectionO10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14TableSelectionO10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_214FA9904()
{
  result = qword_27CA43050;
  if (!qword_27CA43050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43050);
  }

  return result;
}

unint64_t sub_214FA995C()
{
  result = qword_27CA43058;
  if (!qword_27CA43058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43058);
  }

  return result;
}

unint64_t sub_214FA99B4()
{
  result = qword_27CA43060;
  if (!qword_27CA43060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43060);
  }

  return result;
}

unint64_t sub_214FA9A0C()
{
  result = qword_27CA43068;
  if (!qword_27CA43068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43068);
  }

  return result;
}

unint64_t sub_214FA9A64()
{
  result = qword_27CA43070;
  if (!qword_27CA43070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43070);
  }

  return result;
}

unint64_t sub_214FA9ABC()
{
  result = qword_27CA43078;
  if (!qword_27CA43078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43078);
  }

  return result;
}

unint64_t sub_214FA9B14()
{
  result = qword_27CA43080;
  if (!qword_27CA43080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43080);
  }

  return result;
}

unint64_t sub_214FA9B6C()
{
  result = qword_27CA43088;
  if (!qword_27CA43088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43088);
  }

  return result;
}

uint64_t sub_214FA9BC0()
{
  v0 = sub_2150A5EE0();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214FA9C0C()
{
  v0 = sub_2150A5EE0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214FA9C58()
{
  v0 = sub_2150A5EE0();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_214FA9CA4()
{
  result = qword_27CA43090;
  if (!qword_27CA43090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43090);
  }

  return result;
}

unint64_t sub_214FA9CF8()
{
  result = qword_27CA43098;
  if (!qword_27CA43098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CA43098);
  }

  return result;
}

uint64_t sub_214FA9D4C()
{
  v0 = sub_2150A5EE0();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_214FA9D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t castOrFatalError<A>(_:as:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  v9[0] = swift_allocObject();
  sub_214FA9E9C(a1, v9[0] + 16);
  castOrFatalError<A>(_:as:)(v9, a2, a3, a4);
  return __swift_destroy_boxed_opaque_existential_0(v9);
}

{
  v23 = a2;
  v7 = sub_2150A6540();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2150A57E0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v22 - v13;
  sub_214F50074(a1, v25);
  v15 = swift_dynamicCast();
  v16 = *(*(a3 - 8) + 56);
  if (v15)
  {
    v17 = *(a3 - 8);
    v16(v14, 0, 1, a3);
    return (*(v17 + 32))(a4, v14, a3);
  }

  else
  {
    v16(v14, 1, 1, a3);
    (*(v12 + 8))(v14, v11);
    v25[0] = 0;
    v25[1] = 0xE000000000000000;
    sub_2150A5B20();

    strcpy(v24, "Cannot cast ");
    HIBYTE(v24[6]) = 0;
    v24[7] = -5120;
    sub_214F50074(a1, v25);
    sub_2150A64F0();
    v19 = sub_2150A6100();
    MEMORY[0x2160617E0](v19);

    v20 = *(v8 + 8);
    v20(v10, v7);
    MEMORY[0x2160617E0](544432416, 0xE400000000000000);
    v25[3] = swift_getMetatypeMetadata();
    v25[0] = v23;
    sub_2150A64F0();
    v21 = sub_2150A6100();
    MEMORY[0x2160617E0](v21);

    v20(v10, v7);
    result = sub_2150A5E10();
    __break(1u);
  }

  return result;
}

uint64_t sub_214FA9E9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42178);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_214FAA25C()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v1 = sub_2150A4A90();
  [v0 setName_];

  qword_280C23838 = v0;
}

id sub_214FAA2D4()
{
  if (qword_280C23830 != -1)
  {
    swift_once();
  }

  v1 = qword_280C23838;

  return v1;
}

id static NSFileCoordinator.fileCoordinationOperationQueue.getter()
{
  if (qword_280C23830 != -1)
  {
    swift_once();
  }

  v1 = qword_280C23838;

  return v1;
}

void NSFileCoordinator.coordinateWriting<A>(at:options:accessor:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v25 = a5;
  v29 = a1;
  aBlock[6] = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8);
  v8 = sub_2150A6560();
  v28 = sub_2150A57E0();
  v9 = *(v28 - 8);
  v10 = MEMORY[0x28223BE20](v28);
  v27 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v24 - v12;
  v14 = *(v8 - 8);
  (*(v14 + 56))(&v24 - v12, 1, 1, v8);
  v15 = sub_2150A36B0();
  v16 = swift_allocObject();
  v16[2] = a4;
  v16[3] = v13;
  v16[4] = a2;
  v16[5] = a3;
  v17 = swift_allocObject();
  v17[2] = sub_214FAA8C8;
  v17[3] = v16;
  aBlock[4] = sub_214FAA8FC;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_214FAA924;
  aBlock[3] = &block_descriptor_7;
  v18 = _Block_copy(aBlock);

  aBlock[0] = 0;
  [v30 coordinateWritingItemAtURL:v15 options:v29 error:aBlock byAccessor:v18];
  _Block_release(v18);

  v19 = aBlock[0];
  LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
    __break(1u);
  }

  if (v19)
  {
    swift_willThrow();
    v20 = v28;
  }

  else
  {
    v21 = v27;
    v22 = v28;
    (*(v9 + 16))(v27, v13);
    if ((*(v14 + 48))(v21, 1, v8) == 1)
    {
      __break(1u);
      return;
    }

    v23 = v26;
    sub_214FAAA08(v8, aBlock, v25);
    if (!v23)
    {
      (*(v9 + 8))(v13, v22);

      return;
    }

    v20 = v22;
  }

  (*(v9 + 8))(v13, v20);
}

uint64_t sub_214FAA738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CA41DD8);
  v9 = sub_2150A6560();
  v10 = sub_2150A57E0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  v17 = a5;
  v18 = a3;
  v19 = a4;
  v20 = a1;
  sub_214FBC65C(sub_214FAB930, &v15 - v12);
  (*(*(v9 - 8) + 56))(v13, 0, 1, v9);
  return (*(v11 + 40))(v16, v13, v10);
}

uint64_t sub_214FAA924(uint64_t a1)
{
  v2 = sub_2150A3750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  sub_2150A36F0();
  v6(v5);
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_214FAAA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t NSFileCoordinator.withCoordinatedAccess<A>(_:queue:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_214FAAB04, 0, 0);
}

uint64_t sub_214FAAB04()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 32);
  }

  else
  {
    v2 = [objc_opt_self() ic_fileCoordinationOperationQueue];
  }

  *(v0 + 72) = v2;
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = *(v0 + 56);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v5;
  v6 = v1;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_214FAAC44;
  v8 = *(v0 + 56);
  v9 = *(v0 + 16);

  return sub_214D59BB8(v9, 0, 0, sub_214FAAF68, v4, v8);
}

uint64_t sub_214FAAC44()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_214FAADC4;
  }

  else
  {

    v2 = sub_214FAAD60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_214FAAD60()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_214FAADC4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_214FAAE30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_214FAB8D4();
  v14 = sub_2150A4EB0();
  v15 = swift_allocObject();
  v15[2] = a7;
  v15[3] = a5;
  v15[4] = a6;
  v15[5] = a3;
  v15[6] = a1;
  v17[4] = sub_214FAB920;
  v17[5] = v15;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_214FAB124;
  v17[3] = &block_descriptor_21_1;
  v16 = _Block_copy(v17);

  [a2 coordinateAccessWithIntents:v14 queue:a4 byAccessor:v16];
  _Block_release(v16);
}

uint64_t sub_214FAAF78(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(a6 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v17 = v21 - v16;
  if (v13)
  {
    swift_willThrow();
    v21[0] = a1;
    v18 = a1;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    return sub_214FBC5C8(v21, a5, a6, v19);
  }

  else
  {
    v14(v15);
    (*(v9 + 16))(v12, v17, a6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
    sub_214D5BC54(v12, a5, a6);
    return (*(v9 + 8))(v17, a6);
  }
}

void sub_214FAB124(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t NSFileCoordinator.withCoordinatedReading<A>(at:options:queue:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_214FAB1BC, 0, 0);
}

uint64_t sub_214FAB1BC()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_2150C26E0;
  v6 = objc_opt_self();
  v7 = sub_2150A36B0();
  v8 = [v6 readingIntentWithURL:v7 options:v4];

  *(v5 + 32) = v8;
  v9 = swift_allocObject();
  v0[11] = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v1;

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_214FAB340;
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];

  return NSFileCoordinator.withCoordinatedAccess<A>(_:queue:accessor:)(v13, v5, v12, sub_214FAB4F4, v9, v11);
}

uint64_t sub_214FAB340()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FAB488, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_214FAB488()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NSFileCoordinator.withCoordinatedWriting<A>(at:options:queue:accessor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x2822009F8](sub_214FAB540, 0, 0);
}

uint64_t sub_214FAB540()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[6];
  v4 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  v5 = swift_allocObject();
  v0[10] = v5;
  *(v5 + 16) = xmmword_2150C26E0;
  v6 = objc_opt_self();
  v7 = sub_2150A36B0();
  v8 = [v6 writingIntentWithURL:v7 options:v4];

  *(v5 + 32) = v8;
  v9 = swift_allocObject();
  v0[11] = v9;
  v9[2] = v2;
  v9[3] = v3;
  v9[4] = v1;

  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_214FAB6C4;
  v11 = v0[8];
  v12 = v0[5];
  v13 = v0[2];

  return NSFileCoordinator.withCoordinatedAccess<A>(_:queue:accessor:)(v13, v5, v12, sub_214FAB974, v9, v11);
}

uint64_t sub_214FAB6C4()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_214FAB990, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_214FAB80C(unint64_t a1, void (*a2)(void))
{
  if (!(a1 >> 62))
  {
    if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v5 = a1;
  v6 = sub_2150A59D0();
  a1 = v5;
  if (!v6)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((a1 & 0xC000000000000001) != 0)
  {
LABEL_9:
    v3 = MEMORY[0x216062780](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    a2();

    return;
  }

  __break(1u);
}

unint64_t sub_214FAB8D4()
{
  result = qword_27CA430A0;
  if (!qword_27CA430A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CA430A0);
  }

  return result;
}

uint64_t sub_214FAB930(void *a1)
{
  result = (*(v1 + 24))(*(v1 + 40));
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

void sub_214FAB994(uint64_t a1)
{
  v1 = a1;
  v33 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_2150A59D0();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v40 = MEMORY[0x277D84F90];
    sub_214F86ECC(0, v2 & ~(v2 >> 63), 0);
    v35 = v40;
    if (v33)
    {
      v3 = sub_2150A5970();
    }

    else
    {
      v3 = sub_2150A5940();
      v4 = *(v1 + 36);
    }

    v37 = v3;
    v38 = v4;
    v39 = v33 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v31 = v1 + 56;
      v30 = v1 + 64;
      v32 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v37;
        v9 = v39;
        v34 = v38;
        v10 = v1;
        sub_214FB409C(v37, v38, v39, v1, &qword_27CA42488);
        v12 = v11;
        v13 = [v11 range];
        v15 = v14;

        v16 = v35;
        v40 = v35;
        v18 = *(v35 + 16);
        v17 = *(v35 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_214F86ECC((v17 > 1), v18 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v18 + 1;
        v19 = v16 + 16 * v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = v15;
        v35 = v16;
        if (v33)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_2150A5990())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43130);
          v6 = sub_2150A5310();
          sub_2150A5A40();
          v6(v36, 0);
          if (v5 == v32)
          {
LABEL_32:
            sub_214D5A7C8(v37, v38, v39);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v20 = 1 << *(v10 + 32);
          if (v8 >= v20)
          {
            goto LABEL_36;
          }

          v21 = v8 >> 6;
          v22 = *(v31 + 8 * (v8 >> 6));
          if (((v22 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v34)
          {
            goto LABEL_38;
          }

          v23 = v22 & (-2 << (v8 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v32;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v30 + 8 * v21);
            v2 = v32;
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                sub_214D5A7C8(v8, v34, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_31;
              }
            }

            sub_214D5A7C8(v8, v34, 0);
          }

LABEL_31:
          v29 = *(v10 + 36);
          v37 = v20;
          v38 = v29;
          v39 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

void sub_214FABCF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v26 = MEMORY[0x277D84F90];
    sub_214F86A20(0, v1, 0);
    v3 = a1 + 64;
    v4 = sub_2150A5940();
    v5 = 0;
    v23 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v24 = v5;
      v25 = *(a1 + 36);
      v8 = *(*(a1 + 56) + 8 * v4);
      v9 = [v8 string];
      v10 = sub_2150A4AD0();
      v12 = v11;

      v14 = *(v26 + 16);
      v13 = *(v26 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_214F86A20((v13 > 1), v14 + 1, 1);
      }

      *(v26 + 16) = v14 + 1;
      v15 = v26 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v16 = *(a1 + 64 + 8 * v7);
      if ((v16 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v25 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v17 = v16 & (-2 << (v4 & 0x3F));
      if (v17)
      {
        v6 = __clz(__rbit64(v17)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v18 = v7 << 6;
        v19 = v7 + 1;
        v20 = (a1 + 72 + 8 * v7);
        while (v19 < (v6 + 63) >> 6)
        {
          v22 = *v20++;
          v21 = v22;
          v18 += 64;
          ++v19;
          if (v22)
          {
            sub_214D5A7C8(v4, v25, 0);
            v6 = __clz(__rbit64(v21)) + v18;
            goto LABEL_4;
          }
        }

        sub_214D5A7C8(v4, v25, 0);
      }

LABEL_4:
      v5 = v24 + 1;
      v4 = v6;
      if (v24 + 1 == v23)
      {
        return;
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
  }
}

size_t static NoteEditActivityEvent.events(for:afterTimestamp:recentTimestamp:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = [a1 mergeableString];
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    *v8 = a1;
    swift_storeEnumTagMultiPayload();
    v12 = a1;
    v13 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v11, v8, a2, a3);

    sub_214FB64A8(v8, type metadata accessor for NoteEditActivityEvent.Parents);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_214FAC090(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (a2 >> 62)
  {
    v9 = a1;
    v10 = a2;
    v11 = sub_2150A59D0();
    a2 = v10;
    v3 = v11;
    a1 = v9;
  }

  else
  {
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3 < v2)
  {
    v2 = v3;
  }

  if (v2)
  {
    v4 = a1;
    v5 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F58);
    v6 = sub_2150A5EA0();
    a2 = v5;
    v7 = v6;
    a1 = v4;
  }

  else
  {
    v7 = MEMORY[0x277D84F98];
  }

  v12 = v7;
  sub_214FB3350(a1, a2, 1, &v12);
  return v12;
}

uint64_t sub_214FAC18C(uint64_t a1, uint64_t a2)
{
  v4 = sub_2150A3A00();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0]);
      v26 = sub_2150A49A0();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_214FB63F8(&qword_280C241A8, MEMORY[0x277CC95F0]);
        v31 = sub_2150A4A80();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_214FAC53C(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x2821FCF40](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_214FB3954(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_214D55670(0, &qword_27CA42488);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_2150A5770();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_2150A5780();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t NoteEditActivityEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t NoteEditActivityEvent.timestamp.setter(uint64_t a1)
{
  v3 = sub_2150A3960();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t NoteEditActivityEvent.timeInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v70 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v69 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v65 = &v65 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  v86 = &v65 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v82 = &v65 - v10;
  MEMORY[0x28223BE20](v9);
  v81 = &v65 - v11;
  v83 = sub_2150A3960();
  v12 = *(v83 - 8);
  v13 = MEMORY[0x28223BE20](v83);
  v67 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v66 = &v65 - v16;
  MEMORY[0x28223BE20](v15);
  v71 = &v65 - v17;
  v18 = *(type metadata accessor for NoteEditActivityEvent(0) + 36);
  v68 = v1;
  v19 = *(v1 + v18);
  v90 = MEMORY[0x277D84F90];
  v20 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & *(v19 + 64);
  v24 = (v21 + 63) >> 6;
  v80 = (v12 + 56);
  v25 = (v12 + 48);
  v72 = v12;
  v73 = (v12 + 32);
  v76 = v19;
  result = swift_bridgeObjectRetain_n();
  v27 = 0;
  v85 = (v12 + 48);
  v75 = v20;
  v74 = v24;
  if (v23)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_5:
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_48;
    }

    if (v28 >= v24)
    {

      v57 = v90;
      v58 = v65;
      sub_214FAD11C(v90, v65);
      v59 = *v25;
      v60 = v83;
      if ((*v25)(v58, 1, v83) == 1)
      {
        (*(v72 + 16))(v66, v68, v60);
        v61 = v59(v58, 1, v60) == 1;
        v62 = v58;
        v63 = v69;
        v64 = v67;
        if (!v61)
        {
          sub_214F302D4(v62, &qword_27CA41DD0);
        }
      }

      else
      {
        (*v73)(v66, v58, v60);
        v63 = v69;
        v64 = v67;
      }

      sub_214FAD3CC(v57, v63);

      if (v59(v63, 1, v60) == 1)
      {
        (*(v72 + 16))(v64, v68, v60);
        if (v59(v63, 1, v60) != 1)
        {
          sub_214F302D4(v63, &qword_27CA41DD0);
        }
      }

      else
      {
        (*v73)(v64, v63, v60);
      }

      return sub_2150A3070();
    }

    v23 = *(v20 + 8 * v28);
    ++v27;
  }

  while (!v23);
  v27 = v28;
LABEL_9:
  while (2)
  {
    v29 = *(*(v76 + 56) + ((v27 << 9) | (8 * __clz(__rbit64(v23)))));
    v30 = v86;
    v78 = v29;
    if ((v29 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_2150A5980();
      sub_214D55670(0, &qword_27CA42488);
      sub_214FB6390();
      result = sub_2150A5320();
      v32 = v91;
      v31 = v92;
      v33 = v93;
      v34 = v94;
      v35 = v95;
    }

    else
    {
      v36 = -1 << *(v29 + 32);
      v31 = v29 + 56;
      v33 = ~v36;
      v37 = -v36;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      else
      {
        v38 = -1;
      }

      v35 = v38 & *(v29 + 56);
      v32 = v29;
      result = swift_bridgeObjectRetain_n();
      v34 = 0;
    }

    v23 &= v23 - 1;
    v77 = v33;
    v39 = (v33 + 64) >> 6;
    v79 = MEMORY[0x277D84F90];
    v84 = v32;
    while (1)
    {
      v40 = v34;
      if ((v32 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v44 = sub_2150A5A10();
        if (!v44)
        {
          goto LABEL_36;
        }

        v88 = v44;
        sub_214D55670(0, &qword_27CA42488);
        swift_dynamicCast();
        v43 = v89;
        v34 = v40;
        v87 = v35;
        if (!v89)
        {
          goto LABEL_36;
        }

LABEL_25:
        v45 = v43;
        v46 = [v45 timestamp];
        if (v46)
        {
          v47 = v46;
          sub_2150A3930();

          v48 = 0;
        }

        else
        {
          v48 = 1;
        }

        v49 = v83;
        (*v80)(v30, v48, 1, v83);
        v50 = v82;
        sub_214FB6CE4(v30, v82, &qword_27CA41DD0);
        v51 = v50;
        v52 = v81;
        sub_214FB6CE4(v51, v81, &qword_27CA41DD0);

        if ((*v85)(v52, 1, v49) != 1)
        {
          break;
        }

        result = sub_214F302D4(v52, &qword_27CA41DD0);
        v40 = v34;
        v30 = v86;
        v35 = v87;
        v32 = v84;
        if ((v84 & 0x8000000000000000) == 0)
        {
          goto LABEL_17;
        }
      }

      v53 = *v73;
      (*v73)(v71, v52, v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v79 = sub_2150601EC(0, v79[2] + 1, 1, v79);
      }

      v30 = v86;
      v32 = v84;
      v55 = v79[2];
      v54 = v79[3];
      if (v55 >= v54 >> 1)
      {
        v79 = sub_2150601EC(v54 > 1, v55 + 1, 1, v79);
      }

      v56 = v79;
      v79[2] = v55 + 1;
      result = (v53)(v56 + ((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v55, v71, v83);
      v35 = v87;
    }

LABEL_17:
    v41 = v40;
    v42 = v35;
    v34 = v40;
    if (v35)
    {
LABEL_21:
      v87 = (v42 - 1) & v42;
      v43 = *(*(v32 + 48) + ((v34 << 9) | (8 * __clz(__rbit64(v42)))));
      if (v43)
      {
        goto LABEL_25;
      }

LABEL_36:
      sub_214F420F4();

      result = sub_2150689CC(v79);
      v25 = v85;
      v20 = v75;
      v24 = v74;
      if (v23)
      {
        continue;
      }

      goto LABEL_5;
    }

    break;
  }

  while (1)
  {
    v34 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      break;
    }

    if (v34 >= v39)
    {
      goto LABEL_36;
    }

    v42 = *(v31 + 8 * v34);
    ++v41;
    if (v42)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

uint64_t sub_214FAD11C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_214FB63F8(&qword_27CA44B10, MEMORY[0x277CC9578]);
        v20 = sub_2150A4A30();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_214FAD3CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2150A3960();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_214FB63F8(&qword_27CA44B10, MEMORY[0x277CC9578]);
        v20 = sub_2150A4A30();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t NoteEditActivityEvent.object.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 20);
  v5 = *(v3 + 8);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
}

uint64_t NoteEditActivityEvent.object.setter(char *a1)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 2);
  v5 = v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 20);

  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t NoteEditActivityEvent.participant.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 24));
  v4 = v3[1];
  v6 = v3[2];
  v5 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v6;
  a1[3] = v5;
}

__n128 NoteEditActivityEvent.participant.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u64[1];
  v4 = (v1 + *(type metadata accessor for NoteEditActivityEvent(0) + 24));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u64[1] = v3;
  return result;
}

uint64_t NoteEditActivityEvent.associatedAttachmentIds.getter()
{
  v1 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v36 - v6;
  v8 = *(v0 + *(type metadata accessor for NoteEditActivityEvent(0) + 32));
  v9 = v5;
  v10 = v8;
  v12 = v8 + 64;
  v11 = *(v8 + 64);
  v13 = 1 << *(v10 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v11;
  v16 = (v13 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v18 = 0;
  v38 = MEMORY[0x277D84F90];
  v39 = v10;
  v40 = v2;
  v41 = v1;
  for (i = v7; v15; *(v33 + 5) = v34)
  {
LABEL_11:
    while (1)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_214FB6440(*(v10 + 48) + *(v2 + 72) * (v20 | (v18 << 6)), v7, type metadata accessor for NoteEditActivityEvent.Parents);
      sub_214FB6440(v7, v9, type metadata accessor for NoteEditActivityEvent.Parents);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_214FB64A8(v9, type metadata accessor for NoteEditActivityEvent.Parents);
LABEL_6:
      result = sub_214FB64A8(v7, type metadata accessor for NoteEditActivityEvent.Parents);
      if (!v15)
      {
        goto LABEL_7;
      }
    }

    v43 = *v9;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0);
    v22 = *(v21 + 48);
    v23 = *(v21 + 64);
    v24 = sub_2150A3A00();
    v25 = *(*(v24 - 8) + 8);
    v25(v9 + v23, v24);
    v25(v9 + v22, v24);
    v26 = v43;
    v27 = [v26 identifier];
    if (!v27)
    {

      v2 = v40;
      v7 = i;
      v10 = v39;
      goto LABEL_6;
    }

    v28 = v27;
    v43 = sub_2150A4AD0();
    v37 = v29;

    sub_214FB64A8(i, type metadata accessor for NoteEditActivityEvent.Parents);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F4D0(0, *(v38 + 2) + 1, 1, v38);
      v38 = result;
    }

    v2 = v40;
    v10 = v39;
    v31 = *(v38 + 2);
    v30 = *(v38 + 3);
    if (v31 >= v30 >> 1)
    {
      result = sub_21505F4D0((v30 > 1), v31 + 1, 1, v38);
      v38 = result;
    }

    v32 = v38;
    *(v38 + 2) = v31 + 1;
    v33 = &v32[16 * v31];
    v7 = i;
    v34 = v37;
    *(v33 + 4) = v43;
  }

LABEL_7:
  while (1)
  {
    v19 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v19 >= v16)
    {

      v35 = sub_214F8448C(v38);

      return v35;
    }

    v15 = *(v12 + 8 * v19);
    ++v18;
    if (v15)
    {
      v18 = v19;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_214FADC14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v28 - v9;
  v11 = sub_2150A3960();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  sub_214F43C14(a1, v10, &qword_27CA41DD0);
  v18 = v12[6];
  if (v18(v10, 1, v11) == 1)
  {
    sub_214F302D4(v31, &qword_27CA41DD0);
    sub_214F302D4(v10, &qword_27CA41DD0);
  }

  else
  {
    v29 = a1;
    v30 = a3;
    v19 = v12[4];
    v19(v17, v10, v11);
    v20 = v31;
    sub_214F43C14(v31, v8, &qword_27CA41DD0);
    if (v18(v8, 1, v11) == 1)
    {
      sub_2150A3860();
      if (v18(v8, 1, v11) != 1)
      {
        sub_214F302D4(v8, &qword_27CA41DD0);
      }
    }

    else
    {
      v19(v15, v8, v11);
    }

    v21 = sub_2150A3900();
    sub_214F302D4(v20, &qword_27CA41DD0);
    v22 = v12[1];
    v22(v15, v11);
    v22(v17, v11);
    a1 = v29;
    a3 = v30;
    if (v21)
    {
      result = sub_214F302D4(v29, &qword_27CA41DD0);
      v24 = 1;
      goto LABEL_13;
    }
  }

  v25 = v18(a1, 1, v11) == 1;
  v26 = a1;
  v27 = v25;
  result = sub_214F302D4(v26, &qword_27CA41DD0);
  v24 = 2 * v27;
LABEL_13:
  *a3 = v24;
  return result;
}

NotesShared::NoteEditActivityEvent::Kinds_optional __swiftcall NoteEditActivityEvent.Kinds.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2150A5EE0();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NoteEditActivityEvent.Kinds.rawValue.getter()
{
  v1 = 0x746E65636572;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_214FAE010(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x746E65636572;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x746C7561666564;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746E65636572;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2150A6270();
  }

  return v11 & 1;
}

uint64_t sub_214FAE104()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

uint64_t sub_214FAE1A0()
{
  sub_2150A4BB0();
}

uint64_t sub_214FAE228()
{
  sub_2150A64B0();
  sub_2150A4BB0();

  return sub_2150A64E0();
}

void sub_214FAE2CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x746E65636572;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t NoteEditActivityEvent.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NoteEditActivityEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NoteEditActivityEvent.kind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for NoteEditActivityEvent(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

void NoteEditActivityEvent.Parents.hash(into:)()
{
  v1 = v0;
  v2 = sub_2150A3A00();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_214FB6440(v1, v11, type metadata accessor for NoteEditActivityEvent.Parents);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v13 = *v11;
  if (EnumCaseMultiPayload == 1)
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0);
    v15 = *(v14 + 64);
    v16 = *(v3 + 32);
    v16(v8, v11 + *(v14 + 48), v2);
    v16(v6, v11 + v15, v2);
    MEMORY[0x216063080](1);
    sub_2150A5790();
    sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0]);
    sub_2150A49B0();
    sub_2150A49B0();

    v17 = *(v3 + 8);
    v17(v6, v2);
    v17(v8, v2);
  }

  else
  {
    MEMORY[0x216063080](0);
    sub_2150A5790();
  }
}

uint64_t NoteEditActivityEvent.Parents.hashValue.getter()
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214FAE694()
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)();
  return sub_2150A64E0();
}

uint64_t sub_214FAE6D8()
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)();
  return sub_2150A64E0();
}

uint64_t NoteEditActivityEvent.strings.getter()
{
  type metadata accessor for NoteEditActivityEvent(0);
}

uint64_t NoteEditActivityEvent.strings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NoteEditActivityEvent(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NoteEditActivityEvent.edits.getter()
{
  type metadata accessor for NoteEditActivityEvent(0);
}

uint64_t NoteEditActivityEvent.edits.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NoteEditActivityEvent(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

char *NoteEditActivityEvent.substrings.getter()
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8);
  MEMORY[0x28223BE20](v56);
  v2 = &v50 - v1;
  v51 = type metadata accessor for NoteEditActivityEvent(0);
  v52 = v0;
  v3 = *(v0 + *(v51 + 36));
  v50 = MEMORY[0x277D84F90];
  v58 = MEMORY[0x277D84F90];
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v57 = v3;

  v10 = 0;
  v53 = 0;
  v54 = v8;
  v55 = v2;
  while (v7)
  {
LABEL_11:
    v12 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v13 = v12 | (v10 << 6);
    v14 = v57;
    v15 = *(v57 + 48);
    v16 = type metadata accessor for NoteEditActivityEvent.Parents(0);
    sub_214FB6440(v15 + *(*(v16 - 8) + 72) * v13, v2, type metadata accessor for NoteEditActivityEvent.Parents);
    v17 = *(*(v14 + 56) + 8 * v13);
    *&v2[*(v56 + 48)] = v17;
    v18 = v17 & 0xC000000000000001;
    if ((v17 & 0xC000000000000001) != 0)
    {
      v19 = sub_2150A5970();
      v21 = v20;
      v22 = sub_2150A5A30();
      v24 = v23;
      v25 = MEMORY[0x216062560](v19, v21, v22, v23);

      sub_214D5A7C8(v22, v24, 1);
      if (v25)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v26 = 0;
      v27 = (v17 + 56);
      v19 = 1 << *(v17 + 32);
      v28 = (v19 + 63) >> 6;
      while (1)
      {
        v30 = *v27++;
        v29 = v30;
        if (v30)
        {
          break;
        }

        v26 -= 64;
        if (!--v28)
        {
          v21 = *(v17 + 36);

          goto LABEL_4;
        }
      }

      v31 = __clz(__rbit64(v29));
      v21 = *(v17 + 36);

      if (v31 - v19 == v26)
      {
LABEL_4:
        sub_214D5A7C8(v19, v21, v18 != 0);
        v2 = v55;
        goto LABEL_5;
      }

      v19 = v31 - v26;
    }

    sub_214FB409C(v19, v21, v18 != 0, v17, &qword_27CA42488);
    v33 = v32;
    sub_214D5A7C8(v19, v21, v18 != 0);
    v34 = v53;
    sub_214FAB994(v17);
    v36 = v35;
    v53 = v34;
    result = [v33 range];
    v37 = result;
    v39 = v38;
    v40 = *(v36 + 16);
    if (v40)
    {
      v41 = (v36 + 40);
      v2 = v55;
      while (1)
      {
        v42 = &v37[v39];
        if (__OFADD__(v37, v39))
        {
          break;
        }

        v43 = *(v41 - 1);
        if (__OFADD__(v43, *v41))
        {
          goto LABEL_41;
        }

        if (v42 <= v43 + *v41)
        {
          v42 = (v43 + *v41);
        }

        if (v37 >= v43)
        {
          v37 = *(v41 - 1);
        }

        v39 = v42 - v37;
        if (__OFSUB__(v42, v37))
        {
          goto LABEL_42;
        }

        v41 += 2;
        if (!--v40)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v2 = v55;
LABEL_32:

    v44 = *(v52 + *(v51 + 32));
    if (*(v44 + 16) && (v45 = sub_214FB1870(v2), (v46 & 1) != 0))
    {
      v47 = *(*(v44 + 56) + 8 * v45);
      v48 = [v47 attributedSubstringFromRange_];

      result = sub_214F302D4(v2, &qword_27CA430B8);
      v8 = v54;
      if (v48)
      {
        MEMORY[0x216061A60](result);
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2150A4F10();
        }

        result = sub_2150A4F70();
        v50 = v58;
      }
    }

    else
    {

LABEL_5:
      result = sub_214F302D4(v2, &qword_27CA430B8);
      v8 = v54;
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return sub_214FAC090(v49, v50);
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_11;
    }
  }

LABEL_43:
  __break(1u);
  return result;
}

uint64_t sub_214FAECF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v49 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v50 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43110);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  result = MEMORY[0x28223BE20](v9);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v51 = &v45 - v11;
  v46 = a1;
  v47 = v12;
  v13 = 0;
  v16 = *(a1 + 64);
  v15 = a1 + 64;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v52 = (v19 - 1) & v19;
    v21 = __clz(__rbit64(v19)) | (v13 << 6);
    v22 = v47;
LABEL_16:
    v28 = v46;
    v29 = v48;
    sub_214FB6440(*(v46 + 48) + *(v49 + 72) * v21, v48, type metadata accessor for NoteEditActivityEvent.Parents);
    v30 = *(*(v28 + 56) + 8 * v21);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8);
    v32 = *(v31 + 48);
    sub_214FB6BB4(v29, v22, type metadata accessor for NoteEditActivityEvent.Parents);
    *(v22 + v32) = v30;
    (*(*(v31 - 8) + 56))(v22, 0, 1, v31);

    v25 = v51;
LABEL_17:
    sub_214FB6CE4(v22, v25, &qword_27CA43110);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8);
    v34 = (*(*(v33 - 8) + 48))(v25, 1, v33);
    v35 = v34 == 1;
    if (v34 == 1)
    {
      return v35;
    }

    v36 = *(v33 + 48);
    v37 = v50;
    sub_214FB6BB4(v25, v50, type metadata accessor for NoteEditActivityEvent.Parents);
    v38 = *(v25 + v36);
    sub_214FB1870(v37);
    v40 = v39;
    sub_214FB64A8(v37, type metadata accessor for NoteEditActivityEvent.Parents);
    if ((v40 & 1) == 0)
    {

      return 0;
    }

    sub_214FAC53C(v41, v38);
    v43 = v42;

    v19 = v52;
    if ((v43 & 1) == 0)
    {
      return v35;
    }
  }

  if (v20 <= v13 + 1)
  {
    v23 = v13 + 1;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23 - 1;
  v22 = v47;
  v25 = v51;
  while (1)
  {
    v26 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v26 >= v20)
    {
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8);
      (*(*(v44 - 8) + 56))(v22, 1, 1, v44);
      v52 = 0;
      v13 = v24;
      goto LABEL_17;
    }

    v27 = *(v15 + 8 * v26);
    ++v13;
    if (v27)
    {
      v52 = (v27 - 1) & v27;
      v21 = __clz(__rbit64(v27)) | (v26 << 6);
      v13 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t NoteEditActivityEvent.hash(into:)(uint64_t a1)
{
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  v3 = type metadata accessor for NoteEditActivityEvent(0);
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  v4 = *(v1 + *(v3 + 36));

  return sub_214FB3A54(a1, v4);
}

uint64_t NoteEditActivityEvent.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v30 = a1;
  v2 = sub_2150A6520();
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42DB0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for NoteEditActivityEvent(0);
  MEMORY[0x28223BE20](v7);
  sub_214FB6440(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NoteEditActivityEvent);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41F48);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2150C5C70;
  *(v9 + 32) = 0x6D617473656D6974;
  *(v9 + 40) = 0xE900000000000070;
  v10 = sub_2150A3960();
  *(v9 + 72) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v9 + 48));
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1, v1, v10);
  *(v9 + 80) = 0x7463656A626FLL;
  *(v9 + 88) = 0xE600000000000000;
  v12 = v1 + v7[5];
  v13 = *(v12 + 8);
  v14 = *(v12 + 16);
  *(v9 + 96) = *v12;
  *(v9 + 104) = v13;
  *(v9 + 112) = v14;
  *(v9 + 120) = &type metadata for ActivityEventObject;
  *(v9 + 128) = 0x7069636974726170;
  *(v9 + 136) = 0xEB00000000746E61;
  v15 = (v1 + v7[6]);
  v16 = *v15;
  v17 = v15[1];
  v19 = v15[2];
  v18 = v15[3];
  *(v9 + 168) = &type metadata for ActivityEventParticipant;
  v20 = swift_allocObject();
  *(v9 + 144) = v20;
  v20[2] = v16;
  v20[3] = v17;
  v20[4] = v19;
  v20[5] = v18;
  *(v9 + 176) = 1684957547;
  *(v9 + 184) = 0xE400000000000000;
  *(v9 + 192) = *(v1 + v7[7]);
  *(v9 + 216) = &type metadata for NoteEditActivityEvent.Kinds;
  *(v9 + 224) = 0x7374786574;
  *(v9 + 232) = 0xE500000000000000;

  v21 = NoteEditActivityEvent.substrings.getter();
  sub_214FABCF8(v21);
  v23 = v22;

  v31 = v23;

  sub_214FB240C(&v31);

  v24 = v31;
  *(v9 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DE0);
  *(v9 + 240) = v24;
  v25 = sub_2150A6500();
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  (*(v28 + 104))(v27, *MEMORY[0x277D84C38], v29);
  return sub_2150A6550();
}

uint64_t NoteEditActivityEvent.hashValue.getter()
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  v1 = type metadata accessor for NoteEditActivityEvent(0);
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_214FB3A54(v3, *(v0 + *(v1 + 36)));
  return sub_2150A64E0();
}

uint64_t sub_214FAF780(uint64_t a1, uint64_t a2)
{
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  v5 = *(v2 + *(a2 + 36));

  return sub_214FB3A54(a1, v5);
}

uint64_t sub_214FAF890(uint64_t a1, uint64_t a2)
{
  sub_2150A64B0();
  sub_2150A3960();
  sub_214FB63F8(&qword_27CA424C0, MEMORY[0x277CC9578]);
  sub_2150A49B0();
  sub_2150A4BB0();

  sub_2150A4BB0();
  sub_2150A4BB0();
  sub_214FB3A54(v5, *(v2 + *(a2 + 36)));
  return sub_2150A64E0();
}

uint64_t sub_214FAF9B8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a8;
  v39 = a5;
  v36 = a7;
  v40 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v37 = *(v10 - 8);
  v11 = *(v37 + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v35 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - v13;
  v34 = &v34 - v13;
  v15 = sub_2150A3A00();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = [a4 table];
  (*(v16 + 16))(v18, a1, v15);
  sub_214F43C14(v36, v14, &qword_27CA41DD0);
  sub_214F43C14(v38, &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_27CA41DD0);
  v19 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v20 = (v17 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = *(v37 + 80);
  v23 = (v22 + v21 + 8) & ~v22;
  v24 = (v11 + v22 + v23) & ~v22;
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  (*(v16 + 32))(v25 + v19, v18, v15);
  v27 = v39;
  v26 = v40;
  *(v25 + v20) = v39;
  *(v25 + v21) = v26;
  sub_214FB6CE4(v34, v25 + v23, &qword_27CA41DD0);
  sub_214FB6CE4(v35, v25 + v24, &qword_27CA41DD0);
  v28 = swift_allocObject();
  *(v28 + 16) = sub_214FB6A60;
  *(v28 + 24) = v25;
  aBlock[4] = sub_214FB6BAC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_21506A584;
  aBlock[3] = &block_descriptor_8;
  v29 = _Block_copy(aBlock);
  v30 = a4;
  v31 = v27;

  v32 = v41;
  [v41 enumerateRowsWithBlock_];

  _Block_release(v29);
  LOBYTE(v32) = swift_isEscapingClosureAtFileLocation();

  if (v32)
  {
    __break(1u);
  }

  return result;
}

void sub_214FAFD6C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  MEMORY[0x28223BE20](v15);
  v17 = v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a4 table];
  v32 = a5;
  v19 = sub_2150A39A0();
  v20 = sub_2150A39A0();
  v21 = [v18 mergeableStringForColumnID:v19 rowID:v20];

  if (v21)
  {
    v31 = a9;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B0);
    v23 = *(v22 + 48);
    v30[1] = a7;
    v24 = *(v22 + 64);
    *v17 = a6;
    v25 = sub_2150A3A00();
    v26 = *(v25 - 8);
    v30[0] = a8;
    v27 = *(v26 + 16);
    v27(&v17[v23], v32, v25);
    v27(&v17[v24], a1, v25);
    swift_storeEnumTagMultiPayload();
    v28 = a6;
    v29 = _s11NotesShared21NoteEditActivityEventV6events3for2in14afterTimestamp06recentK0SayACGSo29ICTTMergeableAttributedStringC_AC7ParentsO10Foundation4DateVSgAQtFZ_0(v21, v17, v30[0], v31);
    sub_215068764(v29);

    sub_214FB64A8(v17, type metadata accessor for NoteEditActivityEvent.Parents);
  }
}

id sub_214FAFF58@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12)
{
  v116 = a8;
  v137 = a7;
  v126 = a6;
  v127 = a9;
  v124 = a5;
  v128 = a4;
  v129 = a3;
  v130 = sub_2150A3960();
  v134 = *(v130 - 8);
  v14 = MEMORY[0x28223BE20](v130);
  v122 = &v115 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v121 = &v115 - v17;
  MEMORY[0x28223BE20](v16);
  v125 = &v115 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v119 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v118 = &v115 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v117 = &v115 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v120 = &v115 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v123 = &v115 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v115 - v31;
  MEMORY[0x28223BE20](v30);
  v136 = &v115 - v33;
  v34 = sub_2150A3A00();
  v35 = *(v34 - 8);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v115 - v39;
  v41 = *a1;
  v42 = [*a1 replicaID];
  sub_2150A39C0();

  LOBYTE(a2) = sub_215051668(v40, a2);
  v43 = *(v35 + 8);
  v133 = v34;
  v131 = v43;
  *&v132 = v35 + 8;
  v43(v40, v34);
  v135 = v41;
  if ((a2 & 1) != 0 || (v44 = [v41 replicaID], sub_2150A39C0(), v44, v45 = sub_2150A39A0(), v131(v40, v133), v46 = objc_msgSend(v129, sel_trustsTimestampsFromReplicaID_, v45), v45, v46))
  {
    v47 = [v41 timestamp];
    if (v47)
    {
      v48 = v47;
      sub_2150A3930();

      v49 = 0;
    }

    else
    {
      v49 = 1;
    }

    v50 = v134;
    v51 = v128;
    v52 = v130;
    (*(v134 + 56))(v32, v49, 1, v130);
    v53 = v32;
    v54 = v52;
    sub_214FB6CE4(v53, v136, &qword_27CA41DD0);
  }

  else
  {
    v50 = v134;
    v54 = v130;
    (*(v134 + 56))(v136, 1, 1, v130);
    v51 = v128;
  }

  v55 = [v135 replicaID];
  sub_2150A39C0();

  if (*(v51 + 16) && (v56 = sub_214FB198C(v38), (v57 & 1) != 0))
  {
    v58 = (*(v51 + 56) + 16 * v56);
    v59 = *v58;
    v129 = v58[1];

    v131(v38, v133);
  }

  else
  {
    v60 = v38;
    v61 = v133;
    v62 = v131;
    v131(v60, v133);
    v63 = [v135 replicaID];
    sub_2150A39C0();

    v64 = sub_2150A39A0();
    v62(v40, v61);
    v65 = [v129 userIDForReplicaID_];

    if (!v65)
    {
      sub_214F302D4(v136, &qword_27CA41DD0);
LABEL_29:
      v88 = type metadata accessor for NoteEditActivityEvent(0);
      return (*(*(v88 - 8) + 56))(v127, 1, 1, v88);
    }

    v59 = sub_2150A4AD0();
    v129 = v66;
  }

  v67 = v136;
  v68 = v123;
  sub_214F43C14(v124, v123, &qword_27CA41DD0);
  v69 = v50;
  v70 = *(v50 + 48);
  if (v70(v68, 1, v54) == 1)
  {
    sub_214F302D4(v68, &qword_27CA41DD0);
  }

  else
  {
    v71 = v68;
    v72 = *(v69 + 32);
    v72(v125, v71, v54);
    v73 = v120;
    sub_214F43C14(v67, v120, &qword_27CA41DD0);
    if (v70(v73, 1, v54) == 1)
    {
      v74 = v121;
      sub_2150A37F0();
      if (v70(v73, 1, v54) != 1)
      {
        sub_214F302D4(v73, &qword_27CA41DD0);
      }
    }

    else
    {
      v74 = v121;
      v72(v121, v73, v54);
    }

    v75 = v125;
    v76 = sub_2150A3900();
    v77 = v74;
    v78 = *(v134 + 8);
    v78(v77, v54);
    v78(v75, v54);
    v67 = v136;
    if ((v76 & 1) == 0)
    {
LABEL_28:
      sub_214F302D4(v67, &qword_27CA41DD0);

      goto LABEL_29;
    }
  }

  result = [v126 attributedString];
  if (!result)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v80 = result;
  v81 = [v135 range];
  v83 = [v80 attributedSubstringFromRange_];

  v84 = [v83 string];
  if (!v84)
  {
    sub_2150A4AD0();
    v84 = sub_2150A4A90();
  }

  v85 = [v84 ic_containsNonWhitespaceCharacters];

  if (!v85)
  {
    goto LABEL_28;
  }

  v128 = a12;
  v86 = v117;
  sub_214F43C14(v67, v117, &qword_27CA41DD0);
  v87 = v70(v86, 1, v54);
  v115 = v59;
  if (v87 == 1)
  {
    sub_2150A37F0();
    if (v70(v86, 1, v54) != 1)
    {
      sub_214F302D4(v86, &qword_27CA41DD0);
    }
  }

  else
  {
    (*(v134 + 32))(v122, v86, v54);
  }

  v89 = v129;

  v125 = a10;

  _s10Foundation4UUIDV11NotesSharedE15defaultArgumentACvgZ_0();
  sub_2150A3990();
  v131(v40, v133);

  v90 = v118;
  sub_214F43C14(v67, v118, &qword_27CA41DD0);
  v91 = v119;
  sub_214F43C14(a11, v119, &qword_27CA41DD0);
  sub_214FADC14(v90, v91, &v138);
  LODWORD(v133) = v138;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43150);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50);
  v93 = (*(*(v92 - 8) + 80) + 32) & ~*(*(v92 - 8) + 80);
  v94 = swift_allocObject();
  v132 = xmmword_2150C25D0;
  *(v94 + 16) = xmmword_2150C25D0;
  v95 = v94 + v93;
  v96 = v128;
  sub_214FB6440(v128, v94 + v93, type metadata accessor for NoteEditActivityEvent.Parents);
  result = [v126 attributedString];
  if (!result)
  {
    goto LABEL_35;
  }

  v97 = result;

  *(v95 + *(v92 + 48)) = v97;
  v131 = sub_214FA515C(v94);
  swift_setDeallocating();
  sub_214F302D4(v95, &qword_27CA42F50);
  swift_deallocClassInstance();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43158);
  v98 = v89;
  v99 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F40) - 8);
  v100 = (*(*v99 + 80) + 32) & ~*(*v99 + 80);
  v101 = swift_allocObject();
  *(v101 + 16) = v132;
  v102 = v101 + v100;
  v103 = v99[14];
  sub_214FB6440(v96, v101 + v100, type metadata accessor for NoteEditActivityEvent.Parents);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41A20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2150C26E0;
  v105 = v135;
  *(inited + 32) = v135;
  v106 = v105;
  sub_214F80B60(inited);
  v108 = v107;
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v102 + v103) = v108;
  v109 = sub_214FA532C(v101);
  swift_setDeallocating();
  sub_214F302D4(v102, &qword_27CA42F40);
  swift_deallocClassInstance();
  sub_214F302D4(v136, &qword_27CA41DD0);
  v110 = v127;
  (*(v134 + 32))(v127, v122, v130);
  v111 = type metadata accessor for NoteEditActivityEvent(0);
  v112 = v110 + v111[5];
  *v112 = v137 & 1;
  v113 = v125;
  *(v112 + 8) = v116;
  *(v112 + 16) = v113;
  v114 = (v110 + v111[6]);
  *v114 = v115;
  v114[1] = v98;
  v114[2] = 0;
  v114[3] = 0;
  *(v110 + v111[7]) = v133;
  *(v110 + v111[8]) = v131;
  *(v110 + v111[9]) = v109;
  return (*(*(v111 - 1) + 56))(v110, 0, 1, v111);
}

size_t ICNote.hasRecentExternalEdits.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v57 - v2;
  v4 = sub_2150A3960();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v61 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57 - v9;
  MEMORY[0x28223BE20](v8);
  v76 = &v57 - v11;
  v67 = type metadata accessor for NoteEditActivityEvent(0);
  v74 = *(v67 - 8);
  v12 = MEMORY[0x28223BE20](v67);
  v70 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v73 = &v57 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v69 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v57 - v18;
  v75 = v0;
  result = ICCloudSyncingObject.editActivityEvents.getter();
  v68 = *(result + 16);
  if (!v68)
  {
    v22 = MEMORY[0x277D84F90];
LABEL_17:

    v76 = *(v22 + 16);
    if (!v76)
    {
      v38 = MEMORY[0x277D84F90];
LABEL_37:

      v56 = *(v38 + 16);

      return v56 != 0;
    }

    v37 = 0;
    v38 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v37 >= *(v22 + 16))
      {
        goto LABEL_39;
      }

      v39 = v73;
      v40 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v41 = *(v74 + 72);
      sub_214FB6440(v22 + v40 + v41 * v37, v73, type metadata accessor for NoteEditActivityEvent);
      v42 = (v39 + *(v67 + 24));
      v44 = *v42;
      v43 = v42[1];

      v45 = [v75 cloudAccount];
      if (!v45)
      {
        break;
      }

      v46 = v45;
      v47 = [v45 userRecordName];

      v48 = sub_2150A4AD0();
      v50 = v49;

      if (v44 == v48 && v43 == v50)
      {
      }

      else
      {
        v52 = sub_2150A6270();

        if ((v52 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      result = sub_214FB64A8(v73, type metadata accessor for NoteEditActivityEvent);
LABEL_21:
      if (v76 == ++v37)
      {
        goto LABEL_37;
      }
    }

LABEL_31:
    sub_214FB6BB4(v73, v70, type metadata accessor for NoteEditActivityEvent);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v38;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_214F86E88(0, *(v38 + 16) + 1, 1);
      v38 = v77;
    }

    v55 = *(v38 + 16);
    v54 = *(v38 + 24);
    if (v55 >= v54 >> 1)
    {
      sub_214F86E88(v54 > 1, v55 + 1, 1);
      v38 = v77;
    }

    *(v38 + 16) = v55 + 1;
    result = sub_214FB6BB4(v70, v38 + v40 + v55 * v41, type metadata accessor for NoteEditActivityEvent);
    goto LABEL_21;
  }

  v66 = v10;
  v21 = 0;
  v60 = (v5 + 32);
  v63 = (v5 + 56);
  v64 = (v5 + 16);
  v58 = (v5 + 48);
  v22 = MEMORY[0x277D84F90];
  v62 = (v5 + 8);
  v59 = v3;
  v65 = result;
  while (v21 < *(result + 16))
  {
    v23 = (*(v74 + 80) + 32) & ~*(v74 + 80);
    v71 = *(v74 + 72);
    v72 = v22;
    sub_214FB6440(result + v23 + v71 * v21, v19, type metadata accessor for NoteEditActivityEvent);
    v24 = v19;
    (*v64)(v76, v19, v4);
    v25 = [v75 lastActivityRecentUpdatesViewedDate];
    if (v25)
    {
      v26 = v61;
      v27 = v25;
      sub_2150A3930();

      v28 = *v60;
      (*v60)(v3, v26, v4);
      (*v63)(v3, 0, 1, v4);
      v29 = v66;
      v28(v66, v3, v4);
    }

    else
    {
      (*v63)(v3, 1, 1, v4);
      v29 = v66;
      sub_2150A37F0();
      if ((*v58)(v3, 1, v4) != 1)
      {
        sub_214F302D4(v3, &qword_27CA41DD0);
      }
    }

    v30 = v3;
    v31 = v76;
    v32 = sub_2150A3900();
    v33 = *v62;
    (*v62)(v29, v4);
    v33(v31, v4);
    if (v32)
    {
      v19 = v24;
      sub_214FB6BB4(v24, v69, type metadata accessor for NoteEditActivityEvent);
      v22 = v72;
      v34 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v22;
      if ((v34 & 1) == 0)
      {
        sub_214F86E88(0, *(v22 + 16) + 1, 1);
        v22 = v77;
      }

      v36 = *(v22 + 16);
      v35 = *(v22 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_214F86E88(v35 > 1, v36 + 1, 1);
        v22 = v77;
      }

      *(v22 + 16) = v36 + 1;
      sub_214FB6BB4(v69, v22 + v23 + v36 * v71, type metadata accessor for NoteEditActivityEvent);
      v3 = v59;
    }

    else
    {
      v19 = v24;
      sub_214FB64A8(v24, type metadata accessor for NoteEditActivityEvent);
      v3 = v30;
      v22 = v72;
    }

    ++v21;
    result = v65;
    if (v68 == v21)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

id sub_214FB141C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43128);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v6 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  if (*(v1 + 56) != 1)
  {
    v27 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    v28 = a1;
    v12 = *v1;
    v13 = v1[1];
    v15 = v1[2];
    v14 = v1[3];
    v16 = v1[4];
    if (v16)
    {
      v17 = v1[3];
LABEL_14:
      v21 = (v16 - 1) & v16;
      sub_214FB6440(*(v12 + 48) + *(v7 + 72) * (__clz(__rbit64(v16)) | (v17 << 6)), v5, type metadata accessor for NoteEditActivityEvent.Parents);
      (*(v7 + 56))(v5, 0, 1, v6);
      v20 = v17;
LABEL_15:
      *v1 = v12;
      v1[1] = v13;
      v1[2] = v15;
      v1[3] = v20;
      v1[4] = v21;
      if ((*(v7 + 48))(v5, 1, v6) == 1)
      {
        sub_214F302D4(v5, &qword_27CA43128);
        v7 = v28;
LABEL_21:
        *(v1 + 56) = 1;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50);
        return (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
      }

      v15 = v27;
      sub_214FB6BB4(v5, v27, type metadata accessor for NoteEditActivityEvent.Parents);
      v5 = v1[5];
      v7 = v28;
      if (!(v5 >> 62))
      {
        result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_19;
      }
    }

    else
    {
      v18 = (v15 + 64) >> 6;
      if (v18 <= v14 + 1)
      {
        v19 = v14 + 1;
      }

      else
      {
        v19 = (v15 + 64) >> 6;
      }

      v20 = v19 - 1;
      while (1)
      {
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v17 >= v18)
        {
          (*(v7 + 56))(v5, 1, 1, v6);
          v21 = 0;
          goto LABEL_15;
        }

        v16 = *(v13 + 8 * v17);
        ++v14;
        if (v16)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    result = sub_2150A59D0();
LABEL_19:
    v22 = v1[6];
    if (v22 == result)
    {
      sub_214FB64A8(v15, type metadata accessor for NoteEditActivityEvent.Parents);
      goto LABEL_21;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x216062780](v1[6], v5);
    }

    else
    {
      if ((v22 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      if (v22 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_35:
        __break(1u);
        return result;
      }

      result = *(v5 + 8 * v22 + 32);
    }

    v24 = result;
    if (!__OFADD__(v22, 1))
    {
      v1[6] = v22 + 1;
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50);
      v26 = *(v25 + 48);
      sub_214FB6BB4(v15, v7, type metadata accessor for NoteEditActivityEvent.Parents);
      *(v7 + v26) = v24;
      return (*(*(v25 - 8) + 56))(v7, 0, 1, v25);
    }

    goto LABEL_34;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1, 1, 1, v9);
}

unint64_t sub_214FB1870(uint64_t a1)
{
  sub_2150A64B0();
  NoteEditActivityEvent.Parents.hash(into:)();
  v2 = sub_2150A64E0();

  return sub_214FB1C6C(a1, v2);
}

unint64_t sub_214FB18DC(uint64_t a1)
{
  v2 = sub_2150A5770();

  return sub_214FB1DC8(a1, v2);
}

unint64_t sub_214FB1920(uint64_t a1)
{
  sub_2150A64B0();
  MEMORY[0x216063080](a1);
  v2 = sub_2150A64E0();

  return sub_214FB1E9C(a1, v2);
}

unint64_t sub_214FB198C(uint64_t a1)
{
  sub_2150A3A00();
  v2 = MEMORY[0x277CC95F0];
  sub_214FB63F8(&qword_280C241B0, MEMORY[0x277CC95F0]);
  v3 = sub_2150A49A0();
  return sub_214FB226C(a1, v3, MEMORY[0x277CC95F0], &qword_280C241A8, v2, MEMORY[0x277CC9610]);
}

unint64_t sub_214FB1A60(uint64_t a1)
{
  sub_2150A5DF0();
  v2 = sub_2150A49A0();

  return sub_214FB1F08(a1, v2);
}

unint64_t sub_214FB1AC4(uint64_t a1)
{
  v2 = sub_2150A5A50();

  return sub_214FB20A0(a1, v2);
}

unint64_t sub_214FB1B08(uint64_t a1)
{
  sub_2150A4AD0();
  sub_2150A64B0();
  sub_2150A4BB0();
  v2 = sub_2150A64E0();

  return sub_214FB2168(a1, v2);
}

unint64_t sub_214FB1B98(uint64_t a1)
{
  sub_2150A3750();
  v2 = MEMORY[0x277CC9260];
  sub_214FB63F8(&qword_280C241C8, MEMORY[0x277CC9260]);
  v3 = sub_2150A49A0();
  return sub_214FB226C(a1, v3, MEMORY[0x277CC9260], &qword_280C241C0, v2, MEMORY[0x277CC9278]);
}

unint64_t sub_214FB1C6C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for NoteEditActivityEvent.Parents(0) - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_214FB6440(*(v2 + 48) + v12 * v10, v8, type metadata accessor for NoteEditActivityEvent.Parents);
      v13 = _s11NotesShared21NoteEditActivityEventV7ParentsO2eeoiySbAE_AEtFZ_0(v8, a1);
      sub_214FB64A8(v8, type metadata accessor for NoteEditActivityEvent.Parents);
      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_214FB1DC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_214D55670(0, &qword_280C24528);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2150A5780();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_214FB1E9C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_214FB1F08(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_2150A5DF0();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_2150A4A80();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_214FB20A0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_214FB69B0(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x216062620](v9, a1);
      sub_214FB6A0C(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_214FB2168(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_2150A4AD0();
      v8 = v7;
      if (v6 == sub_2150A4AD0() && v8 == v9)
      {
        break;
      }

      v11 = sub_2150A6270();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_214FB226C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_214FB63F8(v23, v24);
      v19 = sub_2150A4A80();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

uint64_t sub_214FB240C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_214F422E0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_214FB2478(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_214FB2478(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2150A60E0();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2150A4F50();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_214FB2640(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_214FB2570(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_214FB2570(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_2150A6270(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_214FB2640(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_214F41D00(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_214FB2C1C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2150A6270();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2150A6270();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_21505F5DC(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_21505F5DC((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_214FB2C1C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_214F41D00(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_214F41C74(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_2150A6270(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_214FB2C1C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_2150A6270() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_2150A6270() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void sub_214FB2E44(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v52 = a4;
  v7 = sub_2150A3A00();
  v47 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43168);
  MEMORY[0x28223BE20](v12 - 8);
  v46 = &v40 - v13;
  v14 = *(a1 + 16);

  v48 = a2;

  v44 = v14;
  if (!v14)
  {
LABEL_19:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v15 = 0;
  v45 = v47 + 16;
  v51 = (v47 + 32);
  v16 = (v48 + 40);
  v42 = a1;
  v43 = v7;
  v41 = v11;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      sub_2150A63E0();
      __break(1u);
      goto LABEL_27;
    }

    v17 = *(v47 + 72);
    (*(v47 + 16))(v11, a1 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + v17 * v15, v7);
    v18 = *(v48 + 16);
    if (v15 == v18)
    {
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      (*(v47 + 8))(v11, v7);
      return;
    }

    if (v15 >= v18)
    {
      goto LABEL_23;
    }

    v49 = *(v16 - 1);
    v50 = v17;
    v19 = *v16;
    v20 = *v51;
    v21 = v46;
    (*v51)(v46, v11, v7);
    v22 = v53;
    v20(v53, v21, v7);
    v23 = *v52;

    v25 = sub_214FB198C(v22);
    v26 = v23[2];
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_24;
    }

    v29 = v24;
    if (v23[3] < v28)
    {
      break;
    }

    if (a3)
    {
      if (v24)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_214FED6E8();
      if (v29)
      {
        goto LABEL_17;
      }
    }

LABEL_13:
    v32 = v53;
    v33 = *v52;
    *(*v52 + 8 * (v25 >> 6) + 64) |= 1 << v25;
    v7 = v43;
    v20((v33[6] + v25 * v50), v32, v43);
    v34 = (v33[7] + 16 * v25);
    *v34 = v49;
    v34[1] = v19;
    v35 = v33[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_25;
    }

    ++v15;
    v33[2] = v37;
    v16 += 2;
    a3 = 1;
    v11 = v41;
    a1 = v42;
    if (v44 == v15)
    {
      goto LABEL_19;
    }
  }

  sub_214FE9CD8(v28, a3 & 1);
  v30 = sub_214FB198C(v53);
  if ((v29 & 1) != (v31 & 1))
  {
    goto LABEL_26;
  }

  v25 = v30;
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_17:
  v38 = swift_allocError();
  swift_willThrow();
  v56 = v38;
  v39 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v47 + 8))(v53, v43);

    return;
  }

LABEL_27:
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_2150A5B20();
  MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
  sub_2150A5DB0();
  MEMORY[0x2160617E0](39, 0xE100000000000000);
  sub_2150A5E10();
  __break(1u);
}

void sub_214FB3350(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v53 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v8 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43118);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v52 - v12;
  v14 = -1 << *(a1 + 32);
  v15 = ~v14;
  v16 = *(a1 + 64);
  v17 = -v14;
  *&v58 = a1;
  *(&v58 + 1) = a1 + 64;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v59 = v15;
  *v60 = v18 & v16;
  *&v60[8] = a2;
  *&v60[16] = 0;
  v60[24] = 0;

  v54 = a2;

  sub_214FB141C(v13);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50);
  if ((*(*(v19 - 8) + 48))(v13, 1, v19) == 1)
  {
LABEL_5:
    v55 = v58;
    v56 = v59;
    v57[0] = *v60;
    *(v57 + 9) = *&v60[9];
    sub_214F302D4(&v55, &qword_27CA43120);

    return;
  }

  v52 = v8;
  v20 = *(v19 + 48);
  sub_214FB6BB4(v13, v10, type metadata accessor for NoteEditActivityEvent.Parents);
  v21 = *&v13[v20];
  v22 = *a4;
  v24 = sub_214FB1870(v10);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (a3)
    {
      if (v23)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_214FEDB08();
      if (v28)
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v33 = *a4;
    *(*a4 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v34 = *(v52 + 72);
    sub_214FB6BB4(v10, v33[6] + v34 * v24, type metadata accessor for NoteEditActivityEvent.Parents);
    *(v33[7] + 8 * v24) = v21;
    v36 = v33[2];
    v35 = v33 + 2;
    v37 = v36 + 1;
    if (!__OFADD__(v36, 1))
    {
      do
      {
        *v35 = v37;
        sub_214FB141C(v13);
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA42F50);
        if ((*(*(v38 - 8) + 48))(v13, 1, v38) == 1)
        {
          goto LABEL_5;
        }

        v39 = *(v38 + 48);
        sub_214FB6BB4(v13, v10, type metadata accessor for NoteEditActivityEvent.Parents);
        v21 = *&v13[v39];
        v40 = *a4;
        v41 = sub_214FB1870(v10);
        v43 = v40[2];
        v44 = (v42 & 1) == 0;
        v45 = __OFADD__(v43, v44);
        v46 = v43 + v44;
        if (v45)
        {
          goto LABEL_25;
        }

        v47 = v42;
        if (v40[3] < v46)
        {
          sub_214FEA394(v46, 1);
          v41 = sub_214FB1870(v10);
          if ((v47 & 1) != (v48 & 1))
          {
            goto LABEL_26;
          }
        }

        if (v47)
        {
          goto LABEL_13;
        }

        v49 = *a4;
        *(*a4 + 8 * (v41 >> 6) + 64) |= 1 << v41;
        v50 = v41;
        sub_214FB6BB4(v10, v49[6] + v34 * v41, type metadata accessor for NoteEditActivityEvent.Parents);
        *(v49[7] + 8 * v50) = v21;
        v51 = v49[2];
        v35 = v49 + 2;
        v37 = v51 + 1;
      }

      while (!__OFADD__(v51, 1));
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_214FEA394(v27, a3 & 1);
  v29 = sub_214FB1870(v10);
  if ((v28 & 1) != (v30 & 1))
  {
LABEL_26:
    sub_2150A63E0();
    __break(1u);
    goto LABEL_27;
  }

  v24 = v29;
  if ((v28 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_13:
  v31 = swift_allocError();
  swift_willThrow();

  v61 = v31;
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA41DD8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_214FB64A8(v10, type metadata accessor for NoteEditActivityEvent.Parents);
    v55 = v58;
    v56 = v59;
    v57[0] = *v60;
    *(v57 + 9) = *&v60[9];
    sub_214F302D4(&v55, &qword_27CA43120);

    return;
  }

LABEL_27:
  *&v55 = 0;
  *(&v55 + 1) = 0xE000000000000000;
  sub_2150A5B20();
  MEMORY[0x2160617E0](0xD00000000000001BLL, 0x80000002150E4190);
  sub_2150A5DB0();
  MEMORY[0x2160617E0](39, 0xE100000000000000);
  sub_2150A5E10();
  __break(1u);
}

void sub_214FB3954(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_2150A59D0())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_2150A5A20();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_214FB3A54(uint64_t a1, uint64_t a2)
{
  v42 = a1;
  v3 = type metadata accessor for NoteEditActivityEvent.Parents(0);
  v39 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA43110);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v40 = a2;
  v41 = &v38 - v9;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a2 + 64);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  v43 = v8;
  v45 = 0;
  if (v13)
  {
    while (1)
    {
      v17 = v16;
LABEL_12:
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v21 = v20 | (v17 << 6);
      v22 = v40;
      v23 = v44;
      sub_214FB6440(*(v40 + 48) + *(v39 + 72) * v21, v44, type metadata accessor for NoteEditActivityEvent.Parents);
      v24 = *(*(v22 + 56) + 8 * v21);
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8);
      v26 = *(v25 + 48);
      v27 = v23;
      v28 = v43;
      sub_214FB6BB4(v27, v43, type metadata accessor for NoteEditActivityEvent.Parents);
      *(v28 + v26) = v24;
      (*(*(v25 - 8) + 56))(v28, 0, 1, v25);

      v19 = v17;
      v29 = v28;
LABEL_13:
      v30 = v41;
      sub_214FB6CE4(v29, v41, &qword_27CA43110);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8);
      if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
      {
        break;
      }

      v32 = *(v31 + 48);
      v33 = v44;
      sub_214FB6BB4(v30, v44, type metadata accessor for NoteEditActivityEvent.Parents);
      v34 = *(v30 + v32);
      v35 = *(v42 + 48);
      v46[2] = *(v42 + 32);
      v46[3] = v35;
      v47 = *(v42 + 64);
      v36 = *(v42 + 16);
      v46[0] = *v42;
      v46[1] = v36;
      NoteEditActivityEvent.Parents.hash(into:)();
      sub_214FB64A8(v33, type metadata accessor for NoteEditActivityEvent.Parents);
      sub_214FB3E70(v46, v34);

      result = sub_2150A64E0();
      v16 = v19;
      v45 ^= result;
      if (!v13)
      {
        goto LABEL_5;
      }
    }

    return MEMORY[0x216063080](v45);
  }

  else
  {
LABEL_5:
    if (v14 <= v16 + 1)
    {
      v18 = v16 + 1;
    }

    else
    {
      v18 = v14;
    }

    v19 = v18 - 1;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v14)
      {
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA430B8);
        v29 = v43;
        (*(*(v37 - 8) + 56))(v43, 1, 1, v37);
        v13 = 0;
        goto LABEL_13;
      }

      v13 = *(v10 + 8 * v17);
      ++v16;
      if (v13)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_214FB3E70(uint64_t a1, uint64_t a2)
{
  sub_2150A64E0();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_2150A5980();
    sub_214D55670(0, &qword_27CA42488);
    sub_214FB6390();
    sub_2150A5320();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_2150A5A10())
    {
LABEL_20:
      sub_214F420F4();
      MEMORY[0x216063080](v10);
      return;
    }

    sub_214D55670(0, &qword_27CA42488);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_2150A5770();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_214FB409C(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5)
{
  v8 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v9 = a4;
      }

      else
      {
        v9 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x2160625B0](a1, a2, v9);
      sub_214D55670(0, a5);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_214D55670(0, a5);
    if (sub_2150A59B0() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_2150A59C0();
    swift_dynamicCast();
    v5 = v17;
    v10 = sub_2150A5770();
    v11 = -1 << *(a4 + 32);
    v8 = v10 & ~v11;
    if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(a4 + 48) + 8 * v8);
        v14 = sub_2150A5780();

        if (v14)
        {
          goto LABEL_19;
        }

        v8 = (v8 + 1) & v12;
      }

      while (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
    }

    __break(1u);
  }

  if ((v8 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v8)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v8 >> 6) + 56) >> v8) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v15 = *(*(a4 + 48) + 8 * v8);

  v16 = v15;
}