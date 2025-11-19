uint64_t MergeableFont.Traits.init(rawValue:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for MergeableFont.Traits(0) + 20);
  result = sub_25574FB20();
  *a2 = a1;
  return result;
}

uint64_t sub_25570E358(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = type metadata accessor for MergeableFont.Traits(0);
  __swift_allocate_value_buffer(v5, a2);
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = v6 + *(v5 + 20);
  result = sub_25574FB20();
  *v6 = a3;
  return result;
}

uint64_t sub_25570E3DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for MergeableFont.Traits(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_255711904(v6, a3, type metadata accessor for MergeableFont.Traits);
}

uint64_t MergeableFont.Traits.init(rawValue:unknownProperties:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = *(type metadata accessor for MergeableFont.Traits(0) + 20);
  sub_25574FB20();
  *a3 = a1;
  v7 = sub_25574FB30();
  v8 = *(*(v7 - 8) + 40);

  return v8(&a3[v6], a2, v7);
}

uint64_t sub_25570E4D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = a3 + *(a2 + 20);
  result = sub_25574FB20();
  *a3 = v4;
  return result;
}

uint64_t sub_25570E508()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  return sub_255750FD0();
}

uint64_t sub_25570E578()
{
  sub_255750F80();
  MEMORY[0x259C3EC60](*v0);
  return sub_255750FD0();
}

uint64_t sub_25570E5B8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a2 + *(a1 + 20);
  result = sub_25574FB20();
  *a2 = 0;
  return result;
}

uint64_t sub_25570E5E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v3;
  v11 = *(v10 + 28);
  sub_25574FB20();
  *a3 = v9;
  sub_25570FE64(a3);
  sub_255711904(a1, v8, type metadata accessor for MergeableFont.Traits);
  v12 = *v8 | v9;
  sub_25574FB20();
  sub_25570FE64(v3);
  sub_25570FE64(a1);
  result = sub_25570FE64(v8);
  *a3 = v12;
  return result;
}

uint64_t sub_25570E6C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *v3;
  v7 = *(a2 + 20);
  sub_25574FB20();
  *a3 = v6;
  sub_25570FE64(a3);
  v8 = *a1 & v6;
  sub_25574FB20();
  result = sub_25570FE64(v3);
  *a3 = v8;
  return result;
}

uint64_t sub_25570E730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v3;
  v11 = *(v10 + 28);
  sub_25574FB20();
  *a3 = v9;
  sub_25570FE64(a3);
  sub_255711904(a1, v8, type metadata accessor for MergeableFont.Traits);
  v12 = *v8 ^ v9;
  sub_25574FB20();
  sub_25570FE64(v3);
  sub_25570FE64(a1);
  result = sub_25570FE64(v8);
  *a3 = v12;
  return result;
}

uint64_t sub_25570E80C(uint64_t a1, void *a2)
{
  v3 = sub_25570E840(a1, a2);
  sub_25570FE64(a2);
  return v3 & 1;
}

uint64_t sub_25570E840(uint64_t a1, void *a2)
{
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB30, "&e");
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for MergeableFont.Traits(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = (&v30 - v16);
  v31 = v2;
  sub_255711904(v2, v15, type metadata accessor for MergeableFont.Traits);
  v18 = *v15;
  v19 = *(v11 + 20);
  sub_25574FB20();
  *v17 = v18;
  sub_25570FE64(v17);
  v30 = a2;
  v20 = *a2;
  v21 = v20 & v18;
  sub_25574FB20();
  sub_25570FE64(v15);
  *v17 = v20 & v18;
  v32 = v4;
  v22 = *(v4 + 48);
  *v10 = v21 != v20;
  if (v21 == v20)
  {
    sub_25570DEB4(v17, &v10[v22]);
  }

  else
  {
    sub_25570FE64(v17);
    v23 = v30;
    sub_255711904(v30, &v10[v22], type metadata accessor for MergeableFont.Traits);
    sub_255711904(v23, v15, type metadata accessor for MergeableFont.Traits);
    v24 = v31;
    v25 = *v31;
    sub_25570FE64(v31);
    v26 = *v15 | v25;
    v27 = v24 + *(v11 + 20);
    sub_25574FB20();
    sub_25570FE64(v15);
    *v24 = v26;
  }

  sub_255675060(v10, v8, &qword_27F7BFB30, "&e");
  v28 = *v8;
  sub_25570DEB4(&v8[*(v32 + 48)], v33);
  return v28;
}

uint64_t sub_25570EAA0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for MergeableFont.Traits(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v19 - v11);
  sub_255711904(v2, v10, type metadata accessor for MergeableFont.Traits);
  v13 = *v10;
  v14 = *(v5 + 20);
  sub_25574FB20();
  *v12 = v13;
  sub_25570FE64(v12);
  v15 = *a1 & v13;
  sub_25574FB20();
  sub_25570FE64(v10);
  *v12 = v15;
  v16 = v10 + *(v5 + 20);
  sub_25574FB20();
  *v10 = 0;
  sub_25570FE64(v10);
  if (v15)
  {
    sub_25570F840(a1);
    sub_25570DEB4(v12, a2);
    v17 = 0;
  }

  else
  {
    sub_25570FE64(v12);
    v17 = 1;
  }

  return (*(v6 + 56))(a2, v17, 1, v5);
}

uint64_t sub_25570EC38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_25570EC70(a1, a2);

  return sub_25570FE64(a1);
}

uint64_t sub_25570EC70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MergeableFont.Traits(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v23 - v12);
  sub_255711904(v3, v11, type metadata accessor for MergeableFont.Traits);
  v14 = *v11;
  v15 = *(v6 + 20);
  sub_25574FB20();
  *v13 = v14;
  sub_25570FE64(v13);
  v16 = *a1 & v14;
  sub_25574FB20();
  sub_25570FE64(v11);
  *v13 = v16;
  sub_255711904(a1, v11, type metadata accessor for MergeableFont.Traits);
  v17 = *v3;
  sub_25570FE64(v3);
  v18 = *v11 | v17;
  v19 = v3 + *(v6 + 20);
  sub_25574FB20();
  sub_25570FE64(v11);
  *v3 = v18;
  v20 = v11 + *(v6 + 20);
  sub_25574FB20();
  *v11 = 0;
  sub_25570FE64(v11);
  if (v16)
  {
    sub_25570DEB4(v13, a2);
    v21 = 0;
  }

  else
  {
    sub_25570FE64(v13);
    v21 = 1;
  }

  return (*(v7 + 56))(a2, v21, 1, v6);
}

uint64_t sub_25570EE40(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25570FE64(v2);
  v6 = *a1 | v5;
  v7 = v2 + *(a2 + 20);
  sub_25574FB20();
  result = sub_25570FE64(a1);
  *v2 = v6;
  return result;
}

uint64_t sub_25570EE98(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25570FE64(v2);
  v6 = *a1 & v5;
  v7 = v2 + *(a2 + 20);
  result = sub_25574FB20();
  *v2 = v6;
  return result;
}

uint64_t sub_25570EEE8(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_25570FE64(v2);
  v6 = *a1 ^ v5;
  v7 = v2 + *(a2 + 20);
  sub_25574FB20();
  result = sub_25570FE64(a1);
  *v2 = v6;
  return result;
}

uint64_t sub_25570EF40@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_25570EF6C(a1, a2);

  return sub_25570FE64(v2);
}

uint64_t sub_25570EF6C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for MergeableFont.Traits(0);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9);
  v14 = (&v26 - v13);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v26 - v16);
  MEMORY[0x28223BE20](v15);
  v19 = (&v26 - v18);
  sub_255711904(v3, &v26 - v18, type metadata accessor for MergeableFont.Traits);
  sub_255711904(v3, v14, type metadata accessor for MergeableFont.Traits);
  v20 = *v14;
  v21 = *(v7 + 28);
  sub_25574FB20();
  *v17 = v20;
  sub_25570FE64(v17);
  sub_255711904(a1, v11, type metadata accessor for MergeableFont.Traits);
  v22 = *v11 ^ v20;
  sub_25574FB20();
  sub_25570FE64(v11);
  sub_25570FE64(v14);
  *v17 = v22;
  v23 = *v19;
  v24 = *(v7 + 28);
  sub_25574FB20();
  *a2 = v23;
  sub_25570FE64(a2);
  sub_25574FB20();
  sub_25570FE64(v17);
  result = sub_25570FE64(v19);
  *a2 = v23 & v22;
  return result;
}

BOOL sub_25570F120(void *a1, uint64_t a2)
{
  v4 = a2 - 8;
  v5 = *(*(a2 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v15 - v9);
  sub_255711904(v2, v8, type metadata accessor for MergeableFont.Traits);
  v11 = *v8;
  v12 = *(v4 + 28);
  sub_25574FB20();
  *v10 = v11;
  sub_25570FE64(v10);
  v13 = *a1 & v11;
  sub_25574FB20();
  sub_25570FE64(v8);
  *v10 = v13;
  sub_25570FE64(v10);
  return v13 == *v2;
}

BOOL sub_25570F224(uint64_t *a1)
{
  v3 = type metadata accessor for MergeableFont.Traits(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v10 = (&v16 - v9);
  sub_255711904(v1, v8, type metadata accessor for MergeableFont.Traits);
  v11 = *v8;
  v12 = *(v4 + 28);
  sub_25574FB20();
  *v10 = v11;
  sub_25570FE64(v10);
  v13 = *a1;
  sub_25574FB20();
  sub_25570FE64(v8);
  *v10 = v13 & v11;
  v14 = v8 + *(v4 + 28);
  sub_25574FB20();
  *v8 = 0;
  sub_25570FE64(v8);
  sub_25570FE64(v10);
  return (v13 & v11) == 0;
}

BOOL sub_25570F340(void *a1, uint64_t a2)
{
  v4 = a2 - 8;
  v5 = *(*(a2 - 8) + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v16 - v10);
  sub_255711904(v9, v8, type metadata accessor for MergeableFont.Traits);
  v12 = *v8;
  v13 = *(v4 + 28);
  sub_25574FB20();
  *v11 = v12;
  sub_25570FE64(v11);
  v14 = *v2 & v12;
  sub_25574FB20();
  sub_25570FE64(v8);
  *v11 = v14;
  sub_25570FE64(v11);
  return v14 == *a1;
}

BOOL sub_25570F43C(uint64_t a1)
{
  v2 = *(*(a1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](a1 - 8);
  v5 = (&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v5 + *(v3 + 28);
  sub_25574FB20();
  *v5 = 0;
  sub_25570FE64(v5);
  return *v1 == 0;
}

uint64_t sub_25570F4D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB30, "&e");
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v44 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v36 - v8;
  v10 = type metadata accessor for MergeableFont.Traits(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v36 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v36 - v20;
  v43 = v19;
  v36[2] = *(v19 + 20);
  sub_25574FB20();
  *a2 = 0;
  v22 = *(a1 + 16);
  if (v22)
  {
    v39 = v18;
    v40 = v15;
    v41 = v21;
    v42 = v4;
    v23 = *(v11 + 80);
    v36[1] = a1;
    v24 = a1 + ((v23 + 32) & ~v23);
    v37 = *(v11 + 72);
    v38 = 0;
    do
    {
      v45 = v22;
      v27 = v41;
      sub_255711904(v24, v41, type metadata accessor for MergeableFont.Traits);
      sub_255711904(a2, v15, type metadata accessor for MergeableFont.Traits);
      v28 = *v15;
      v29 = *(v43 + 20);
      v30 = v39;
      sub_25574FB20();
      *v30 = v28;
      sub_25570FE64(v30);
      v31 = v4;
      v32 = *v27;
      v33 = *v27 & v28;
      sub_25574FB20();
      sub_25570FE64(v15);
      *v30 = v33;
      v34 = *(v31 + 48);
      *v9 = v33 != v32;
      if (v33 == v32)
      {
        sub_25570FE64(v27);
        sub_25570DEB4(v30, &v9[v34]);
      }

      else
      {
        sub_25570FE64(v30);
        sub_255711904(v27, &v9[v34], type metadata accessor for MergeableFont.Traits);
        sub_255711904(v27, v15, type metadata accessor for MergeableFont.Traits);
        sub_25570FE64(a2);
        v25 = *v15 | v38;
        sub_25574FB20();
        sub_25570FE64(v15);
        sub_25570FE64(v27);
        v38 = v25;
        *a2 = v25;
      }

      v26 = v44;
      sub_255675060(v9, v44, &qword_27F7BFB30, "&e");
      v4 = v42;
      sub_25570FE64(v26 + *(v42 + 48));
      v24 += v37;
      v22 = v45 - 1;
    }

    while (v45 != 1);
  }
}

uint64_t sub_25570F840(uint64_t a1)
{
  v3 = type metadata accessor for MergeableFont.Traits(0);
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v6);
  v11 = (&v20 - v10);
  MEMORY[0x28223BE20](v9);
  v13 = (&v20 - v12);
  sub_255711904(v1, v11, type metadata accessor for MergeableFont.Traits);
  v14 = *v11;
  v15 = *(v4 + 28);
  sub_25574FB20();
  *v13 = v14;
  sub_25570FE64(v13);
  sub_255711904(a1, v8, type metadata accessor for MergeableFont.Traits);
  v16 = *v8 ^ v14;
  sub_25574FB20();
  sub_25570FE64(v8);
  sub_25570FE64(v11);
  *v13 = v16;
  v17 = *v1;
  sub_25570FE64(v1);
  v18 = v1 + *(v4 + 28);
  sub_25574FB20();
  result = sub_25570FE64(v13);
  *v1 = v17 & v16;
  return result;
}

uint64_t sub_25570F9A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = a3 + *(a2 + 20);
  sub_25574FB20();
  *a3 = v5;
  v7 = *(*(a2 - 8) + 56);

  return v7(a3, 0, 1, a2);
}

uint64_t MergeableFont.debugDescription.getter()
{
  type metadata accessor for MergeableFont.Traits(0);
  sub_255750C20();
  return 0;
}

uint64_t sub_25570FAA0()
{
  type metadata accessor for MergeableFont.Traits(0);
  sub_255750C20();
  return 0;
}

uint64_t MergeableFont.Traits.debugDescription.getter()
{
  v1 = type metadata accessor for MergeableFont.Traits(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = (v28 - v6);
  if (qword_27F7BD7E0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v1, qword_27F7BFAA8);
  sub_255711904(v8, v5, type metadata accessor for MergeableFont.Traits);
  v9 = *v5;
  v10 = *(v1 + 20);
  sub_25574FB20();
  *v7 = v9;
  sub_25570FE64(v7);
  v11 = *v0;
  v12 = *v0 & v9;
  sub_25574FB20();
  sub_25570FE64(v5);
  *v7 = v12;
  sub_25570FE64(v7);
  if (v12 == *v8)
  {
    v13 = sub_255698E88(0, 1, 1, MEMORY[0x277D84F90]);
    v15 = *(v13 + 2);
    v14 = *(v13 + 3);
    if (v15 >= v14 >> 1)
    {
      v13 = sub_255698E88((v14 > 1), v15 + 1, 1, v13);
    }

    *(v13 + 2) = v15 + 1;
    v16 = &v13[16 * v15];
    *(v16 + 4) = 1684828002;
    *(v16 + 5) = 0xE400000000000000;
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  if (qword_27F7BD7D8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v1, qword_27F7BFA90);
  sub_255711904(v17, v5, type metadata accessor for MergeableFont.Traits);
  v18 = *v5;
  v19 = *(v1 + 20);
  sub_25574FB20();
  *v7 = v18;
  sub_25570FE64(v7);
  v20 = v18 & v11;
  sub_25574FB20();
  sub_25570FE64(v5);
  *v7 = v20;
  sub_25570FE64(v7);
  if (v20 == *v17)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_255698E88(0, *(v13 + 2) + 1, 1, v13);
    }

    v22 = *(v13 + 2);
    v21 = *(v13 + 3);
    if (v22 >= v21 >> 1)
    {
      v13 = sub_255698E88((v21 > 1), v22 + 1, 1, v13);
    }

    *(v13 + 2) = v22 + 1;
    v23 = &v13[16 * v22];
    *(v23 + 4) = 0x63696C617469;
    *(v23 + 5) = 0xE600000000000000;
  }

  v28[0] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE728, &qword_255757898);
  sub_2556B3A2C();
  v24 = sub_2557500C0();
  v26 = v25;

  v28[0] = 91;
  v28[1] = 0xE100000000000000;
  MEMORY[0x259C3DED0](v24, v26);

  MEMORY[0x259C3DED0](93, 0xE100000000000000);

  return v28[0];
}

uint64_t sub_25570FE64(uint64_t a1)
{
  v2 = type metadata accessor for MergeableFont.Traits(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t MergeableFont.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25574FB30();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MergeableFont.Traits(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v1, a1, type metadata accessor for MergeableFont);
  sub_255711904(v1, v13, type metadata accessor for MergeableFont.Traits);
  *v13 = *v1;
  v14 = v1 + *(v10 + 28);
  sub_25574FB00();
  v15 = *(v5 + 40);
  v15(&v13[*(v10 + 28)], v8, v4);
  sub_25571196C(v13, a1);
  v16 = type metadata accessor for MergeableFont(0);
  v17 = v2 + *(v16 + 20);
  sub_25574FB00();
  return (v15)(a1 + *(v16 + 20), v8, v4);
}

uint64_t MergeableFont.Traits.copy(renamingReferences:)@<X0>(char *a1@<X8>)
{
  v3 = sub_25574FB30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v1, a1, type metadata accessor for MergeableFont.Traits);
  *a1 = *v1;
  v8 = type metadata accessor for MergeableFont.Traits(0);
  v9 = v1 + *(v8 + 20);
  sub_25574FB00();
  return (*(v4 + 40))(&a1[*(v8 + 20)], v7, v3);
}

uint64_t MergeableFont.visitReferences(_:)()
{
  v1 = v0;
  v2 = v0 + *(type metadata accessor for MergeableFont.Traits(0) + 20);
  sub_25574FAE0();
  v3 = v1 + *(type metadata accessor for MergeableFont(0) + 20);
  return sub_25574FAE0();
}

uint64_t MergeableFont.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    type metadata accessor for MergeableFont.Traits(0);
    sub_2557119D0(&qword_27F7BFAC0, type metadata accessor for MergeableFont.Traits);
    sub_25574FF80();
    v3 = v0 + *(type metadata accessor for MergeableFont(0) + 20);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableFont.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = (&v65 - v6);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v72 = *(v74 - 8);
  v7 = *(v72 + 64);
  v8 = MEMORY[0x28223BE20](v74);
  v71 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v65 - v10;
  v12 = sub_25574FB30();
  v76 = *(v12 - 8);
  v77 = v12;
  v13 = *(v76 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for MergeableFont.Traits(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = (&v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v65 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = (&v65 - v24);
  v26 = *(type metadata accessor for MergeableFont(0) + 20);
  v79 = a2;
  v75 = v26;
  sub_25574FB20();
  v27 = v78;
  v28 = sub_25574FEE0();
  if (v27)
  {

    v30 = v76;
    v29 = v77;
    v31 = v75;
    return (*(v30 + 8))(v79 + v31, v29);
  }

  else
  {
    v33 = v28;
    v78 = v23;
    v66 = v11;
    v67 = v25;
    v34 = v73;
    v68 = v15;
    v70 = a1;
    v35 = sub_25574FF00();
    if (v35)
    {
      MergeableFont.Traits.init(from:)(v35, v20);
      v37 = v34;
      v69 = 0;
    }

    else
    {
      sub_2557119D0(&qword_27F7BFAC0, type metadata accessor for MergeableFont.Traits);
      sub_2557119D0(&qword_27F7BFAC8, type metadata accessor for MergeableFont.Traits);
      v36 = v78;
      sub_255750320();
      v37 = v34;
      v69 = 0;
      v20 = v67;
      sub_25570DEB4(v36, v67);
    }

    sub_25570DEB4(v20, v79);
    v78 = v33;
    v38 = sub_25574FEF0();
    v39 = sub_255676334(v38);

    v81 = v39;
    sub_255676690(1);
    v40 = v81 + 56;
    v41 = 1 << *(v81 + 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v43 = v42 & *(v81 + 56);
    v44 = (v41 + 63) >> 6;
    v45 = (v72 + 56);
    v46 = v81;

    v47 = 0;
    v73 = MEMORY[0x277D84F90];
    while (1)
    {
      v48 = v47;
      if (!v43)
      {
        break;
      }

LABEL_14:
      v49 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v50 = *(*(v46 + 48) + ((v47 << 9) | (8 * v49)));
      if (sub_25574FF00())
      {
        v51 = v74;
        v52 = *(v74 + 48);
        *v37 = v50;
        v53 = v69;
        sub_25574F310();
        v69 = v53;
        if (v53)
        {
LABEL_30:

          v30 = v76;
          v62 = v77;
          v31 = v75;
LABEL_27:
          sub_25570FE64(v79);
          v29 = v62;
          return (*(v30 + 8))(v79 + v31, v29);
        }

        (*v45)(v37, 0, 1, v51);
        v54 = v66;
        sub_255675060(v37, v66, &qword_27F7BFFF0, &qword_255755250);
        sub_255675060(v54, v71, &qword_27F7BFFF0, &qword_255755250);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_25569874C(0, v73[2] + 1, 1, v73);
        }

        v55 = v72;
        v57 = v73[2];
        v56 = v73[3];
        v58 = v71;
        if (v57 >= v56 >> 1)
        {
          v73 = sub_25569874C(v56 > 1, v57 + 1, 1, v73);
          v58 = v71;
          v55 = v72;
        }

        v59 = v73;
        v73[2] = v57 + 1;
        sub_255675060(v58, v59 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v57, &qword_27F7BFFF0, &qword_255755250);
      }

      else
      {
        (*v45)(v37, 1, 1, v74);
        sub_2556DB128(v37);
      }
    }

    while (1)
    {
      v47 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v47 >= v44)
      {
        break;
      }

      v43 = *(v40 + 8 * v47);
      ++v48;
      if (v43)
      {
        goto LABEL_14;
      }
    }

    v60 = v73;
    if (v73[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v61 = sub_255750C90();
    }

    else
    {
      v61 = MEMORY[0x277D84F98];
    }

    v30 = v76;
    v62 = v77;
    v63 = v69;
    v31 = v75;
    v64 = v68;
    v80 = v61;
    sub_255711FE4(v60, 1, &v80);
    v69 = v63;
    if (v63)
    {

      goto LABEL_27;
    }

    sub_25574FB40();

    return (*(v30 + 40))(v79 + v31, v64, v62);
  }
}

uint64_t MergeableFont.Traits.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE3F8, &qword_25575C9F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v71 = (&v61 - v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v69 = *(v7 - 8);
  v70 = v7;
  v8 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v61 - v12;
  v72 = sub_25574FB30();
  v14 = *(v72 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v72);
  v17 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(type metadata accessor for MergeableFont.Traits(0) + 20);
  v19 = a2;
  sub_25574FB20();
  v20 = v73;
  v21 = sub_25574FEE0();
  if (v20)
  {

    v22 = a2;
    v23 = v72;
    return (*(v14 + 8))(v22 + v18, v23);
  }

  else
  {
    v25 = v21;
    v68 = a1;
    v61 = v13;
    v62 = v11;
    if (sub_25574FF00())
    {
      v26 = sub_2557505E0();
      v27 = v19;
      v63 = v17;
      v64 = v18;
      v65 = v14;
    }

    else
    {
      v63 = v17;
      v64 = v18;
      v65 = v14;
      v26 = sub_2557505D0();
      v27 = v19;
    }

    v66 = v27;
    *v27 = v26;
    v73 = v25;
    v28 = sub_25574FEF0();
    v29 = sub_255676334(v28);

    v75 = v29;
    sub_255676690(1);
    v30 = v75 + 56;
    v31 = 1 << *(v75 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v75 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = (v69 + 56);
    v36 = v75;

    v37 = 0;
    v67 = MEMORY[0x277D84F90];
    while (1)
    {
      v38 = v37;
      if (!v33)
      {
        break;
      }

LABEL_14:
      v39 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v40 = *(*(v36 + 48) + ((v37 << 9) | (8 * v39)));
      if (sub_25574FF00())
      {
        v43 = v70;
        v42 = v71;
        v44 = *(v70 + 48);
        *v71 = v40;
        v45 = v42;
        sub_25574F310();
        (*v35)(v45, 0, 1, v43);
        v46 = v45;
        v47 = v61;
        sub_255675060(v46, v61, &qword_27F7BFFF0, &qword_255755250);
        sub_255675060(v47, v62, &qword_27F7BFFF0, &qword_255755250);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_25569874C(0, v67[2] + 1, 1, v67);
        }

        v48 = v69;
        v50 = v67[2];
        v49 = v67[3];
        v51 = v62;
        if (v50 >= v49 >> 1)
        {
          v53 = sub_25569874C(v49 > 1, v50 + 1, 1, v67);
          v48 = v69;
          v67 = v53;
          v51 = v62;
        }

        v52 = v67;
        v67[2] = v50 + 1;
        sub_255675060(v51, v52 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v50, &qword_27F7BFFF0, &qword_255755250);
      }

      else
      {
        v41 = v71;
        (*v35)(v71, 1, 1, v70);
        sub_2556DB128(v41);
      }
    }

    while (1)
    {
      v37 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        __break(1u);

        v14 = v65;
        v22 = v66;
        v23 = v72;
        v18 = v64;
        return (*(v14 + 8))(v22 + v18, v23);
      }

      if (v37 >= v34)
      {
        break;
      }

      v33 = *(v30 + 8 * v37);
      ++v38;
      if (v33)
      {
        goto LABEL_14;
      }
    }

    v54 = v67;
    if (v67[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE400, &qword_255756A50);
      v55 = sub_255750C90();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v57 = v65;
    v56 = v66;
    v58 = v72;
    v59 = v63;
    v60 = v64;
    v74 = v55;
    sub_255711A18(v54, 1, &v74);
    sub_25574FB40();

    return (*(v57 + 40))(v56 + v60, v59, v58);
  }
}

uint64_t sub_2557110C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_25574FB30();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MergeableFont.Traits(0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v2, a2, type metadata accessor for MergeableFont);
  sub_255711904(v2, v15, type metadata accessor for MergeableFont.Traits);
  *v15 = *v2;
  v16 = v2 + *(v12 + 28);
  sub_25574FB00();
  v17 = *(v7 + 40);
  v17(&v15[*(v12 + 28)], v10, v6);
  sub_25571196C(v15, a2);
  v18 = v4 + *(a1 + 20);
  sub_25574FB00();
  return (v17)(a2 + *(a1 + 20), v10, v6);
}

uint64_t sub_255711288()
{
  sub_2557119D0(&qword_27F7BE938, type metadata accessor for MergeableFont);
  sub_2557119D0(&qword_27F7BFAD0, type metadata accessor for MergeableFont);

  return sub_25574FDD0();
}

uint64_t sub_255711354(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = v2 + *(type metadata accessor for MergeableFont.Traits(0) + 20);
  sub_25574FAE0();
  v6 = v4 + *(a2 + 20);
  return sub_25574FAE0();
}

uint64_t sub_2557113C4(uint64_t a1, uint64_t a2)
{
  result = sub_25574FF70();
  if (!v3)
  {
    type metadata accessor for MergeableFont.Traits(0);
    sub_2557119D0(&qword_27F7BFAC0, type metadata accessor for MergeableFont.Traits);
    sub_25574FF80();
    v6 = v2 + *(a2 + 20);
    sub_25574FB10();
  }

  return result;
}

uint64_t MergeableFont.Traits.encode(to:)()
{
  result = sub_25574FF70();
  if (!v1)
  {
    v4 = *v0;
    sub_25574FF80();
    v3 = v0 + *(type metadata accessor for MergeableFont.Traits(0) + 20);
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_255711554@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v5 = sub_25574FB30();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255711904(v2, a2, type metadata accessor for MergeableFont.Traits);
  *a2 = *v2;
  v10 = v2 + *(a1 + 20);
  sub_25574FB00();
  return (*(v6 + 40))(&a2[*(a1 + 20)], v9, v5);
}

uint64_t sub_25571166C()
{
  sub_2557119D0(&qword_27F7BFB28, type metadata accessor for MergeableFont.Traits);
  sub_2557119D0(&qword_27F7BFAE0, type metadata accessor for MergeableFont.Traits);

  return sub_25574FDD0();
}

uint64_t sub_255711750(uint64_t a1, uint64_t a2)
{
  result = sub_25574FF70();
  if (!v3)
  {
    v7 = *v2;
    sub_25574FF80();
    v6 = v2 + *(a2 + 20);
    sub_25574FB10();
  }

  return result;
}

uint64_t sub_255711880(uint64_t a1, uint64_t a2)
{
  v4 = sub_2557119D0(&qword_27F7BFAC8, type metadata accessor for MergeableFont.Traits);
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t sub_255711904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25571196C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MergeableFont.Traits(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2557119D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_255711A18(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_2557119D0(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD000000000000020;
    v34[1] = 0x8000000255753630;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

void sub_255711FE4(uint64_t a1, int a2, void *a3)
{
  v7 = sub_25574F320();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFFF0, &qword_255755250);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v17 = (&v59 - v16);
  v66 = *(a1 + 16);
  if (!v66)
  {
    goto LABEL_23;
  }

  LODWORD(v63) = a2;
  v61 = v3;
  v18 = *(v14 + 48);
  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v65 = *(v15 + 72);
  v67 = a1;
  v60 = v19;
  sub_2556AAA64(a1 + v19, &v59 - v16);
  v62 = v8;
  v20 = *(v8 + 32);
  v73 = *v17;
  v21 = v73;
  v64 = v18;
  v68 = v7;
  v69 = v11;
  v20(v11, v17 + v18, v7);
  v22 = *a3;
  v24 = sub_255742798(v21);
  v25 = v22[2];
  v26 = (v23 & 1) == 0;
  v27 = v25 + v26;
  if (__OFADD__(v25, v26))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = v23;
  if (v22[3] >= v27)
  {
    if (v63)
    {
      if ((v23 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_255742BBC();
      if ((v28 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  sub_255743F6C(v27, v63 & 1);
  v29 = *a3;
  v30 = sub_255742798(v21);
  if ((v28 & 1) == (v31 & 1))
  {
    v24 = v30;
    if ((v28 & 1) == 0)
    {
LABEL_13:
      v36 = *a3;
      *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      *(v36[6] + 8 * v24) = v21;
      v37 = v36[7];
      v63 = *(v62 + 72);
      v38 = (v37 + v63 * v24);
      v39 = v68;
      v20(v38, v69, v68);
      v40 = v36[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (!v41)
      {
        v36[2] = v42;
        v43 = v67;
        if (v66 != 1)
        {
          v44 = v67 + v65 + v60;
          v45 = 1;
          while (v45 < *(v43 + 16))
          {
            sub_2556AAA64(v44, v17);
            v73 = *v17;
            v46 = v73;
            v20(v69, v17 + v64, v39);
            v47 = *a3;
            v48 = sub_255742798(v46);
            v50 = v47[2];
            v51 = (v49 & 1) == 0;
            v41 = __OFADD__(v50, v51);
            v52 = v50 + v51;
            if (v41)
            {
              goto LABEL_24;
            }

            v53 = v49;
            if (v47[3] < v52)
            {
              sub_255743F6C(v52, 1);
              v54 = *a3;
              v48 = sub_255742798(v46);
              if ((v53 & 1) != (v55 & 1))
              {
                goto LABEL_27;
              }
            }

            if (v53)
            {
              goto LABEL_10;
            }

            v56 = *a3;
            *(*a3 + 8 * (v48 >> 6) + 64) |= 1 << v48;
            *(v56[6] + 8 * v48) = v46;
            v39 = v68;
            v20((v56[7] + v63 * v48), v69, v68);
            v57 = v56[2];
            v41 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v41)
            {
              goto LABEL_25;
            }

            ++v45;
            v56[2] = v58;
            v44 += v65;
            v43 = v67;
            if (v66 == v45)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_26;
        }

LABEL_23:

        return;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

LABEL_10:
    v32 = sub_25574F750();
    sub_2557119D0(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v33 = swift_allocError();
    *v34 = 0xD000000000000027;
    v34[1] = 0x8000000255753660;
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x277CFB5A8], v32);
    swift_willThrow();
    v72 = v33;
    v35 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {
      (*(v62 + 8))(v69, v68);

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  sub_255750F10();
  __break(1u);
LABEL_28:
  v70 = 0;
  v71 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

id RecordUploading.partialCloudKitRecord.getter(uint64_t a1, uint64_t a2)
{
  result = sub_255712AD4(a1, a2);
  if (!result)
  {
    v5 = sub_255712B50(a1, a2);
    if (v6)
    {
      v7 = static RecordUploading.partialCloudKitRecord(recordName:)(v5, v6, a1, a2);

      return v7;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id RecordUploading.currentChangeTags.getter(uint64_t a1, uint64_t a2)
{
  result = sub_255712AD4(a1, a2);
  if (result)
  {
    v3 = result;
    v4 = [result recordChangeTag];

    if (v4)
    {
      v5 = sub_2557501B0();

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2557128E0()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BFB38);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFB38);
  if (qword_27F7BD5C8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C04E0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RecordUploading.cloudKitRecordID.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_255712AD4(a1, a2);
  if (v4)
  {
    v5 = v4;
    v6 = [v4 recordID];

    return v6;
  }

  else
  {
    sub_255712B50(a1, a2);
    if (v8)
    {
      sub_255669A88(0, &qword_27F7BF0D0, 0x277CBC5D0);
      if (qword_27F7BD780 != -1)
      {
        swift_once();
      }

      v9 = [qword_27F7BED98 zoneID];
      return sub_255750740();
    }

    else
    {
      return 0;
    }
  }
}

id sub_255712AD4(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 24))();
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = v2;
  v6 = v3;
  sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
  return CKRecord.init(systemFields:)(v5, v6);
}

uint64_t sub_255712B50(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - v7;
  v9 = sub_25574F0D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v2;
  v14 = *(a2 + 8);
  sub_255750B20();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2556B224C(v8);
    if (qword_27F7BD7E8 != -1)
    {
      swift_once();
    }

    v15 = sub_25574F2C0();
    __swift_project_value_buffer(v15, qword_27F7BFB38);
    swift_unknownObjectRetain();
    v16 = sub_25574F2A0();
    v17 = sub_255750780();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315394;
      v20 = (*(a2 + 16))(a1, a2);
      v22 = sub_2556E474C(v20, v21, &v29);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v28 = v2;
      swift_unknownObjectRetain();
      v23 = sub_2557501D0();
      v25 = sub_2556E474C(v23, v24, &v29);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_255661000, v16, v17, "Can't create %s record name because the object doesn't have an id: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v19, -1, -1);
      MEMORY[0x259C3F520](v18, -1, -1);
    }

    return 0;
  }

  else
  {
    (*(v10 + 32))(v13, v8, v9);
    v27 = sub_25574F040();
    (*(v10 + 8))(v13, v9);
    return v27;
  }
}

uint64_t static RecordUploading.partialCloudKitRecord(recordName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_255669A88(0, &unk_27F7BF070, 0x277CBC5A0);
  (*(a4 + 16))(a3, a4);
  if (qword_27F7BD780 != -1)
  {
    swift_once();
  }

  v6 = qword_27F7BED98;
  sub_255669A88(0, &qword_27F7BF0D0, 0x277CBC5D0);
  v7 = [v6 zoneID];

  sub_255750740();
  return sub_255750910();
}

uint64_t static RecordUploading<>.markAllEntitiesForReuploading(context:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  result = static Identifiable<>.fetchAll(context:)();
  if (!v3)
  {
    v9 = result;
    if (qword_27F7BD7E8 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v10 = sub_25574F2C0();
      __swift_project_value_buffer(v10, qword_27F7BFB38);

      v11 = sub_25574F2A0();
      v12 = sub_2557507A0();
      v24 = a1;
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v25 = v14;
        *v13 = 134218242;
        *(v13 + 4) = sub_255750410();

        *(v13 + 12) = 2080;
        v15 = sub_255751020();
        v17 = sub_2556E474C(v15, v16, &v25);

        *(v13 + 14) = v17;
        _os_log_impl(&dword_255661000, v11, v12, "Marking all %ld %s objects for reuploading", v13, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x259C3F520](v14, -1, -1);
        MEMORY[0x259C3F520](v13, -1, -1);
      }

      else
      {
      }

      if (!sub_255750410())
      {
        break;
      }

      v18 = *(a3 + 48);
      a1 = (a3 + 64);
      for (i = 4; ; ++i)
      {
        v20 = sub_2557503F0();
        sub_2557503A0();
        v21 = (v20 & 1) != 0 ? *(v9 + 8 * i) : sub_255750B50();
        v22 = v21;
        v23 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          break;
        }

        if (v18(a2, a3))
        {
          [v24 deleteObject_];
        }

        else
        {
          (*(a3 + 32))(0, 0xF000000000000000, a2, a3);
          (*(a3 + 64))(0, a2, a3);
        }

        if (v23 == sub_255750410())
        {
        }
      }

      __break(1u);
LABEL_19:
      swift_once();
    }
  }

  return result;
}

id static JournalEntryAssetMO.objectsToSyncPredicate.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7C0010, "*}");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255755050;
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_255755060;
  v2 = MEMORY[0x277D837D0];
  *(v1 + 56) = MEMORY[0x277D837D0];
  v3 = sub_255666F5C();
  *(v1 + 64) = v3;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x80000002557523D0;
  *(v0 + 32) = sub_255750750();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_255755060;
  *(v4 + 56) = v2;
  *(v4 + 64) = v3;
  *(v4 + 32) = 0xD000000000000012;
  *(v4 + 40) = 0x80000002557523F0;
  *(v0 + 40) = sub_255750750();
  *(v0 + 48) = sub_255750750();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_255755060;
  *(v5 + 56) = v2;
  *(v5 + 64) = v3;
  strcpy((v5 + 32), "assetMetaData");
  *(v5 + 46) = -4864;
  *(v0 + 56) = sub_255750750();
  v6 = sub_255750370();

  v7 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v7;
}

uint64_t sub_2557135D4(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB50, type metadata accessor for JournalEntryMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25571362C(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB58, type metadata accessor for JournalMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255713684(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BEA60, type metadata accessor for AppStorageMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2557136DC(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB60, type metadata accessor for JournalEntryAssetMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_255713734(uint64_t a1)
{
  result = sub_25571378C(&qword_27F7BFB68, type metadata accessor for JournalEntryAssetFileAttachmentMO);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25571378C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2557138B4(uint64_t a1)
{
  v1 = JournalEntryMO.assetsArrayUnsorted.getter();
  v2 = v1;
  v3 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_27:
    v4 = sub_255750A30();
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  v20 = 0;
  while (2)
  {
    if (v5 != v4)
    {
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x259C3E830](v5, v2);
        }

        else
        {
          if ((v5 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_25:
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          if (v5 >= *(v3 + 16))
          {
            goto LABEL_26;
          }

          v6 = *(v2 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_25;
        }

        v9 = [v6 assetType];
        if (v9)
        {
          v10 = v9;
          v11 = sub_2557501B0();
          v13 = v12;
        }

        else
        {
          v11 = 0;
          v13 = 0xE000000000000000;
        }

        v14._countAndFlagsBits = v11;
        v14._object = v13;
        AssetType.init(rawValue:)(v14);
        v15 = v22 == 23 ? 22 : v22;
        if ((sub_2556C091C(v15, a1) & 1) == 0)
        {
          break;
        }

        ++v5;
        if (v8 == v4)
        {
          goto LABEL_23;
        }
      }

      v16 = v7;
      v17 = sub_255713A4C();

      v5 = v8;
      v18 = __OFADD__(v20, v17);
      v20 += v17;
      if (!v18)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_23:

  return v20;
}

uint64_t sub_255713A4C()
{
  v1 = [v0 fileAttachments];
  if (v1)
  {
    v2 = v1;
    v21[0] = 0;
    type metadata accessor for JournalEntryAssetFileAttachmentMO();
    sub_25571434C(&qword_27F7BFB70, type metadata accessor for JournalEntryAssetFileAttachmentMO);
    sub_255750570();
  }

  if (MEMORY[0x277D84F90] >> 62)
  {
LABEL_20:
    if (sub_255750A30())
    {
      sub_255725CFC(MEMORY[0x277D84F90]);

      goto LABEL_5;
    }
  }

LABEL_5:

  sub_25571425C(v3, sub_2557141FC, 0, type metadata accessor for JournalEntryAssetFileAttachmentMO, &qword_27F7BFB70, type metadata accessor for JournalEntryAssetFileAttachmentMO, v21);
  v4 = 0;
  v5 = v21[0];
  v6 = v21[1];
  v7 = v21[3];
  v8 = v21[4];
  v18 = v21[5];
  v9 = (v21[2] + 64) >> 6;
  do
  {
    if (v5 < 0)
    {
      v15 = sub_255750A60();
      if (!v15)
      {
        goto LABEL_18;
      }

      v19 = v15;
      type metadata accessor for JournalEntryAssetFileAttachmentMO();
      swift_dynamicCast();
      v14 = v20;
      v12 = v7;
      v13 = v8;
      if (!v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v10 = v7;
      v11 = v8;
      v12 = v7;
      if (!v8)
      {
        while (1)
        {
          v12 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v12 >= v9)
          {
            goto LABEL_18;
          }

          v11 = *(v6 + 8 * v12);
          ++v10;
          if (v11)
          {
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_20;
      }

LABEL_11:
      v13 = (v11 - 1) & v11;
      v14 = *(*(v5 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
      if (!v14)
      {
        goto LABEL_18;
      }
    }

    v20 = v14;
    v18(&v19, &v20);

    v7 = v12;
    v8 = v13;
    v16 = __OFADD__(v4, v19);
    v4 += v19;
  }

  while (!v16);
  __break(1u);
LABEL_18:

  sub_25568B1C8();

  return v4;
}

uint64_t sub_255713CDC()
{
  v1 = sub_25574ED80();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v43 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25574EE20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_25574EF10();
  v10 = *(v42 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v42);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v37 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v37 - v18;
  v20 = [v0 filePath];
  if (!v20)
  {
    return 0;
  }

  v39 = v1;
  v21 = v20;
  v40 = sub_2557501B0();
  v41 = v22;

  if (qword_27F7BD7F8 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for FileStoreConfiguration();
  v24 = *(__swift_project_value_buffer(v23, qword_27F7BFDF0) + *(v23 + 24));
  v38 = v2;
  if (v24)
  {
    v37[1] = *(v23 + 20);
    v25 = *(v6 + 104);
    v25(v9, *MEMORY[0x277CC91D8], v5);
    sub_255663E98();
    sub_25574EEF0();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_25574EE50();
    v25 = *(v6 + 104);
  }

  v44 = 0x656D686361747441;
  v45 = 0xEB0000000073746ELL;
  v25(v9, *MEMORY[0x277CC91C0], v5);
  sub_255663E98();
  sub_25574EF00();
  (*(v6 + 8))(v9, v5);
  v26 = *(v10 + 8);
  v27 = v14;
  v28 = v42;
  v26(v27, v42);
  sub_25574EEA0();

  v26(v17, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB78, &unk_25575DF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v30 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v31 = v30;
  sub_255667904(inited);
  swift_setDeallocating();
  sub_255663F00(inited + 32);
  v32 = v43;
  sub_25574EE40();

  v33 = sub_25574ED60();
  v35 = v34;
  (*(v38 + 8))(v32, v39);
  v26(v19, v28);
  if ((v35 & 1) == 0)
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2557141FC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_255713CDC();
  *a2 = result;
  return result;
}

uint64_t sub_25571425C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, unint64_t *a5@<X4>, void (*a6)(uint64_t)@<X5>, void *a7@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2557509F0();
    a4(0);
    sub_25571434C(a5, a6);
    sub_2557505C0();
    result = v20;
    v13 = v21;
    v15 = v22;
    v14 = v23;
    v16 = v24;
  }

  else
  {
    v14 = 0;
    v17 = -1;
    v18 = -1 << *(result + 32);
    v13 = result + 56;
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v17 = ~(-1 << v19);
    }

    v16 = v17 & *(result + 56);
  }

  *a7 = result;
  a7[1] = v13;
  a7[2] = v15;
  a7[3] = v14;
  a7[4] = v16;
  a7[5] = a2;
  a7[6] = a3;
  return result;
}

uint64_t sub_25571434C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2557143A8()
{
  sub_255714868();
  sub_255714680();

  return sub_25574FDD0();
}

uint64_t sub_255714418()
{
  sub_255714868();
  sub_255714814();
  return sub_25574FDF0();
}

uint64_t sub_255714484()
{
  sub_255714868();
  sub_255714814();
  return sub_25574FE00();
}

uint64_t sub_2557144E0(uint64_t a1)
{
  v2 = sub_255714868();
  v3 = sub_255714814();
  v4 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E330](a1, v2, v3, v4);
}

uint64_t sub_255714598(uint64_t a1, uint64_t a2)
{
  v4 = sub_255714814();
  v5 = MEMORY[0x277CFB810];

  return MEMORY[0x28214E590](a1, a2, v4, v5);
}

uint64_t MergeableTextAlignment.debugDescription.getter()
{
  v1 = *v0;
  v2 = 0x6C61727574616ELL;
  v3 = 0x7468676972;
  v4 = 0x7265746E6563;
  if (v1 != 3)
  {
    v4 = 0x656966697473756ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1952867692;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_255714680()
{
  result = qword_27F7BFB80;
  if (!qword_27F7BFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB80);
  }

  return result;
}

unint64_t sub_2557146D8()
{
  result = qword_27F7BFB88;
  if (!qword_27F7BFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB88);
  }

  return result;
}

unint64_t sub_255714730()
{
  result = qword_27F7BFB90;
  if (!qword_27F7BFB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB90);
  }

  return result;
}

uint64_t sub_255714784()
{
  v1 = *v0;
  v2 = 0x6C61727574616ELL;
  v3 = 0x7468676972;
  v4 = 0x7265746E6563;
  if (v1 != 3)
  {
    v4 = 0x656966697473756ALL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1952867692;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_255714814()
{
  result = qword_27F7BFB98;
  if (!qword_27F7BFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFB98);
  }

  return result;
}

unint64_t sub_255714868()
{
  result = qword_27F7BFBA0;
  if (!qword_27F7BFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFBA0);
  }

  return result;
}

uint64_t MergeableAppStorage.defaultMapSize.getter()
{
  v0 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F360();
}

uint64_t MergeableAppStorage.defaultMapSize.setter(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v1 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F370();
}

uint64_t SidebarPreferences.hiddenBricks.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SidebarPreferences.hiddenBricks.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t SidebarPreferences.brickOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SidebarPreferences.brickOrder.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 20);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SidebarPreferences.customJournalsOrder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SidebarPreferences.customJournalsOrder.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SidebarPreferences(0) + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

JournalShared::SidebarPreferences::Brick_optional __swiftcall SidebarPreferences.Brick.init(rawValue:)(Swift::Int rawValue)
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

void *sub_255714D50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

BOOL SidebarPreferences.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v76 = *(v74 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v69 = &v64 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v71 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v64 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v75 = *(v73 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x28223BE20](v73);
  v68 = &v64 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v70 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v64 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v67 = &v64 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v28 = &v64 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v64 - v29;
  v72 = type metadata accessor for SidebarPreferences.Partial(0);
  v31 = *(*(v72 - 8) + 64);
  MEMORY[0x28223BE20](v72);
  v33 = &v64 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v2;
  sub_255717310(v2, v33, type metadata accessor for SidebarPreferences.Partial);
  v77 = a1;
  v35 = SidebarPreferences.Partial.canMerge(delta:)(a1);
  sub_255718754(v33, type metadata accessor for SidebarPreferences.Partial);
  if (!v35)
  {
    return v35;
  }

  v65 = v35;
  v66 = v11;
  sub_255663294(v2, v30, &qword_27F7BFBC8, &qword_25575D770);
  v64 = v21;
  v36 = *(v21 + 48);
  v37 = v36(v30, 1, v20);
  sub_255674B20(v30, &qword_27F7BFBC8, &qword_25575D770);
  if (v37 == 1)
  {
    sub_25568DF1C(v77, v34, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    sub_255663294(v77, v28, &qword_27F7BFBC8, &qword_25575D770);
    if (v36(v28, 1, v20) != 1)
    {
      v40 = v64;
      v41 = v67;
      (*(v64 + 32))(v67, v28, v20);
      v38 = v34;
      v42 = v36(v34, 1, v20);
      v39 = v72;
      if (!v42)
      {
        sub_25574FCA0();
      }

      (*(v40 + 8))(v41, v20);
      goto LABEL_10;
    }

    sub_255674B20(v28, &qword_27F7BFBC8, &qword_25575D770);
  }

  v38 = v34;
  v39 = v72;
LABEL_10:
  v43 = *(v39 + 20);
  sub_255663294(v38 + v43, v19, &qword_27F7BFBD0, &qword_25575D778);
  v44 = *(v75 + 48);
  v45 = v73;
  v46 = v44(v19, 1, v73);
  sub_255674B20(v19, &qword_27F7BFBD0, &qword_25575D778);
  v47 = *(v39 + 20);
  v48 = v46 == 1;
  v49 = v76;
  if (v48)
  {
    sub_25568DF1C(v77 + v47, v38 + v43, &qword_27F7BFBD0, &qword_25575D778);
  }

  else
  {
    v50 = v70;
    sub_255663294(v77 + v47, v70, &qword_27F7BFBD0, &qword_25575D778);
    v51 = v44(v50, 1, v45);
    if (v51 == 1)
    {
      sub_255674B20(v50, &qword_27F7BFBD0, &qword_25575D778);
    }

    else
    {
      v52 = v75;
      v53 = v68;
      (*(v75 + 32))(v68, v50, v45);
      if (!v44((v38 + v43), 1, v45))
      {
        sub_25574F590();
      }

      (*(v52 + 8))(v53, v45);
    }
  }

  v54 = v74;
  v55 = *(v39 + 24);
  v56 = v66;
  sub_255663294(v38 + v55, v66, &qword_27F7BF4F0, &qword_25575B3D0);
  v57 = *(v49 + 48);
  v58 = v57(v56, 1, v54);
  sub_255674B20(v56, &qword_27F7BF4F0, &qword_25575B3D0);
  v59 = *(v39 + 24);
  if (v58 == 1)
  {
    sub_25568DF1C(v77 + v59, v38 + v55, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
    v60 = v71;
    sub_255663294(v77 + v59, v71, &qword_27F7BF4F0, &qword_25575B3D0);
    if (v57(v60, 1, v54) == 1)
    {
      sub_255674B20(v60, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      v61 = v76;
      v62 = v69;
      (*(v76 + 32))(v69, v60, v54);
      if (!v57(v38 + v55, 1, v54))
      {
        sub_25574F590();
      }

      (*(v61 + 8))(v62, v54);
    }
  }

  LOBYTE(v35) = v65;
  return v35;
}

BOOL SidebarPreferences.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v51 - v6;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v57 = *(v54 - 8);
  v7 = *(v57 + 64);
  MEMORY[0x28223BE20](v54);
  v56 = &v51 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v59 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v58 = *(v15 - 8);
  v16 = *(v58 + 64);
  MEMORY[0x28223BE20](v15);
  v53 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v51 - v28;
  sub_255663294(a1, v24, &qword_27F7BFBC8, &qword_25575D770);
  v30 = *(v26 + 48);
  if (v30(v24, 1, v25) == 1)
  {
    v22 = v24;
    v31 = v60;
LABEL_5:
    sub_255674B20(v22, &qword_27F7BFBC8, &qword_25575D770);
    v32 = v58;
    v33 = v59;
    goto LABEL_6;
  }

  (*(v26 + 32))(v29, v24, v25);
  v31 = v60;
  sub_255663294(v60, v22, &qword_27F7BFBC8, &qword_25575D770);
  if (v30(v22, 1, v25) == 1)
  {
    (*(v26 + 8))(v29, v25);
    goto LABEL_5;
  }

  v45 = sub_25574FCB0();
  v46 = *(v26 + 8);
  v46(v29, v25);
  v46(v22, v25);
  v32 = v58;
  v33 = v59;
  if ((v45 & 1) == 0)
  {
    return 0;
  }

LABEL_6:
  v34 = type metadata accessor for SidebarPreferences.Partial(0);
  sub_255663294(a1 + *(v34 + 20), v14, &qword_27F7BFBD0, &qword_25575D778);
  v35 = *(v32 + 48);
  if (v35(v14, 1, v15) == 1)
  {
    v33 = v14;
    v37 = v56;
    v36 = v57;
    v38 = v55;
  }

  else
  {
    v39 = v31;
    v40 = v53;
    (*(v32 + 32))(v53, v14, v15);
    sub_255663294(v39 + *(v34 + 20), v33, &qword_27F7BFBD0, &qword_25575D778);
    v41 = v35(v33, 1, v15);
    v38 = v55;
    if (v41 != 1)
    {
      v47 = sub_25574F5A0();
      v48 = *(v32 + 8);
      v48(v40, v15);
      v48(v33, v15);
      v37 = v56;
      v36 = v57;
      v31 = v60;
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v32 + 8))(v40, v15);
    v37 = v56;
    v36 = v57;
    v31 = v60;
  }

  sub_255674B20(v33, &qword_27F7BFBD0, &qword_25575D778);
LABEL_11:
  sub_255663294(a1 + *(v34 + 24), v38, &qword_27F7BF4F0, &qword_25575B3D0);
  v42 = *(v36 + 48);
  v43 = v54;
  if (v42(v38, 1, v54) == 1)
  {
LABEL_14:
    sub_255674B20(v38, &qword_27F7BF4F0, &qword_25575B3D0);
    return 1;
  }

  (*(v36 + 32))(v37, v38, v43);
  v38 = v52;
  sub_255663294(v31 + *(v34 + 24), v52, &qword_27F7BF4F0, &qword_25575B3D0);
  if (v42(v38, 1, v43) == 1)
  {
    (*(v36 + 8))(v37, v43);
    goto LABEL_14;
  }

  v49 = sub_25574F5A0();
  v50 = *(v36 + 8);
  v50(v37, v43);
  v50(v38, v43);
  return (v49 & 1) != 0;
}

uint64_t SidebarPreferences.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v22 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v22 - v12;
  sub_255663294(v1, &v22 - v12, &qword_27F7BFBC8, &qword_25575D770);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v15 = *(v14 - 8);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_255674B20(v13, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    sub_25574FC80();
    (*(v15 + 8))(v13, v14);
  }

  v16 = type metadata accessor for SidebarPreferences.Partial(0);
  sub_255663294(v1 + *(v16 + 20), v9, &qword_27F7BFBD0, &qword_25575D778);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v9, 1, v17) == 1)
  {
    sub_255674B20(v9, &qword_27F7BFBD0, &qword_25575D778);
  }

  else
  {
    sub_25574F570();
    (*(v18 + 8))(v9, v17);
  }

  sub_255663294(v1 + *(v16 + 24), v5, &qword_27F7BF4F0, &qword_25575B3D0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v5, 1, v19) == 1)
  {
    return sub_255674B20(v5, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  sub_25574F570();
  return (*(v20 + 8))(v5, v19);
}

uint64_t SidebarPreferences.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v47 = v37 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v48 = v37 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v13 = *(v12 - 8);
  v44 = *(v13 + 56);
  v45 = v12;
  v43 = v13 + 56;
  v44(a2, 1, 1);
  v14 = type metadata accessor for SidebarPreferences.Partial(0);
  v15 = *(v14 + 20);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v42 = v15;
  v18(a2 + v15, 1, 1, v16);
  v20 = *(v14 + 24);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 56);
  v24 = v22 + 56;
  v50 = a2;
  v23(a2 + v20, 1, 1, v21);
  v25 = v49;
  sub_25574FE90();
  if (v25)
  {

    v26 = v50;
    return sub_255718754(v26, type metadata accessor for SidebarPreferences.Partial);
  }

  v49 = 0;
  v37[2] = v19;
  v38 = v18;
  v39 = v16;
  v40 = v20;
  v37[1] = v24;
  v41 = v23;
  if (sub_25574FED0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
    v29 = v48;
    v28 = v49;
    sub_25574FC90();
    v26 = v50;
    v30 = v41;
    if (v28)
    {
LABEL_6:

      return sub_255718754(v26, type metadata accessor for SidebarPreferences.Partial);
    }

    v49 = 0;
    (v44)(v29, 0, 1, v45);
    sub_25568CFC8(v29, v26, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    v26 = v50;
    v30 = v41;
  }

  if (sub_25574FED0())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
    sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
    v31 = v47;
    v32 = v49;
    sub_25574F580();
    v49 = v32;
    if (v32)
    {
      goto LABEL_6;
    }

    v38(v31, 0, 1, v39);
    sub_25568CFC8(v31, v26 + v42, &qword_27F7BFBD0, &qword_25575D778);
    v30 = v41;
  }

  v33 = sub_25574FED0();
  v34 = v46;
  v35 = v40;
  if (v33)
  {
    sub_25574F0D0();
    sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v36 = v49;
    sub_25574F580();

    if (v36)
    {
      return sub_255718754(v26, type metadata accessor for SidebarPreferences.Partial);
    }

    v30(v34, 0, 1, v21);
    return sub_25568CFC8(v34, v26 + v35, &qword_27F7BF4F0, &qword_25575B3D0);
  }

  else
  {
  }
}

uint64_t SidebarPreferences.Partial.encode(to:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v40 = &v36 - v2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v41 = *(v39 - 8);
  v3 = *(v41 + 64);
  MEMORY[0x28223BE20](v39);
  v5 = &v36 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v36 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v36 - v21;
  v23 = v44;
  result = sub_25574FF10();
  if (!v23)
  {
    v37 = v5;
    v38 = v9;
    v44 = v13;
    v25 = v43;
    sub_255663294(v43, v17, &qword_27F7BFBC8, &qword_25575D770);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_255674B20(v17, &qword_27F7BFBC8, &qword_25575D770);
    }

    else
    {
      (*(v19 + 32))(v22, v17, v18);
      sub_255669798(&qword_27F7BFBF0, &qword_27F7BFBE0, &qword_25575D788);
      sub_25574FF60();
      (*(v19 + 8))(v22, v18);
    }

    v26 = type metadata accessor for SidebarPreferences.Partial(0);
    v27 = v38;
    sub_255663294(v25 + *(v26 + 20), v38, &qword_27F7BFBD0, &qword_25575D778);
    v28 = v42;
    v29 = (*(v42 + 48))(v27, 1, v10);
    v30 = v44;
    if (v29 == 1)
    {
      sub_255674B20(v27, &qword_27F7BFBD0, &qword_25575D778);
    }

    else
    {
      (*(v28 + 32))(v44, v27, v10);
      sub_255669798(&qword_27F7BFBE8, &qword_27F7BFBD8, &qword_25575D780);
      sub_25574FF60();
      (*(v28 + 8))(v30, v10);
    }

    v31 = v40;
    sub_255663294(v25 + *(v26 + 24), v40, &qword_27F7BF4F0, &qword_25575B3D0);
    v32 = v41;
    v33 = v39;
    v34 = (*(v41 + 48))(v31, 1, v39);
    v35 = v37;
    if (v34 == 1)
    {

      return sub_255674B20(v31, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      (*(v32 + 32))(v37, v31, v33);
      sub_255669798(&qword_27F7BF528, &qword_27F7BF510, &qword_25575B3F0);
      sub_25574FF60();
      (*(v32 + 8))(v35, v33);
    }
  }

  return result;
}

JournalShared::MapSize_optional __swiftcall MapSize.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_255717310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255717380(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SidebarPreferences(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_255717404@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  result = sub_25574F360();
  *a1 = v4;
  *(a1 + 8) = v5;
  return result;
}

uint64_t sub_255717474(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v1 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F370();
}

void (*MergeableAppStorage.defaultMapSize.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  v4 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  *(v3 + 32) = sub_25574F350();
  return sub_25568C2F0;
}

uint64_t MergeableAppStorage.$defaultMapSize.getter()
{
  v0 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F390();
}

uint64_t sub_2557175CC()
{
  v0 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  return sub_25574F390();
}

uint64_t sub_255717624(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v12(v9, v11, v4);
  v13 = a2 + *(type metadata accessor for MergeableAppStorage(0) + 20);
  sub_25574F3A0();
  return (*(v5 + 8))(v11, v4);
}

uint64_t MergeableAppStorage.$defaultMapSize.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  (*(v4 + 16))(&v9 - v6, a1, v3);
  v7 = v1 + *(type metadata accessor for MergeableAppStorage(0) + 20);
  sub_25574F3A0();
  return (*(v4 + 8))(a1, v3);
}

void (*MergeableAppStorage.$defaultMapSize.modify(void *a1))(int **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v5[4] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v5[4] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[5] = v9;
  *(v5 + 12) = *(type metadata accessor for MergeableAppStorage(0) + 20);
  sub_25574F390();
  return sub_25568C824;
}

BOOL MergeableAppStorage.Partial.merge(delta:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v51 = v4;
  v52 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v50 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v46 - v13;
  v15 = type metadata accessor for SidebarPreferences.Partial(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v49 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v46 - v24;
  v26 = type metadata accessor for MergeableAppStorage.Partial(0);
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v29 = &v46 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255717310(v2, v29, type metadata accessor for MergeableAppStorage.Partial);
  v53 = a1;
  v30 = MergeableAppStorage.Partial.canMerge(delta:)(a1);
  sub_255718754(v29, type metadata accessor for MergeableAppStorage.Partial);
  if (v30)
  {
    v46 = v8;
    v47 = v14;
    v48 = v30;
    sub_255663294(v2, v25, &qword_27F7BFC10, &qword_25575D7B8);
    v31 = *(v16 + 48);
    v32 = v2;
    v33 = v31(v25, 1, v15);
    sub_255674B20(v25, &qword_27F7BFC10, &qword_25575D7B8);
    if (v33 == 1)
    {
      sub_25568DF1C(v53, v32, &qword_27F7BFC10, &qword_25575D7B8);
    }

    else
    {
      sub_255663294(v53, v23, &qword_27F7BFC10, &qword_25575D7B8);
      if (v31(v23, 1, v15) == 1)
      {
        sub_255674B20(v23, &qword_27F7BFC10, &qword_25575D7B8);
      }

      else
      {
        v34 = v49;
        sub_25571A5E8(v23, v49, type metadata accessor for SidebarPreferences.Partial);
        if (!v31(v32, 1, v15))
        {
          SidebarPreferences.Partial.merge(delta:)(v34);
        }

        sub_255718754(v34, type metadata accessor for SidebarPreferences.Partial);
      }
    }

    v36 = v51;
    v35 = v52;
    v37 = *(v26 + 20);
    v38 = v47;
    sub_255663294(v32 + v37, v47, &qword_27F7BFC18, &unk_25575D7C0);
    v39 = *(v35 + 48);
    v40 = v39(v38, 1, v36);
    sub_255674B20(v38, &qword_27F7BFC18, &unk_25575D7C0);
    v41 = *(v26 + 20);
    if (v40 == 1)
    {
      sub_25568DF1C(v53 + v41, v32 + v37, &qword_27F7BFC18, &unk_25575D7C0);
    }

    else
    {
      v42 = v50;
      sub_255663294(v53 + v41, v50, &qword_27F7BFC18, &unk_25575D7C0);
      if (v39(v42, 1, v36) == 1)
      {
        sub_255674B20(v42, &qword_27F7BFC18, &unk_25575D7C0);
      }

      else
      {
        v43 = v52;
        v44 = v46;
        (*(v52 + 32))(v46, v42, v36);
        if (!v39(v32 + v37, 1, v36))
        {
          sub_25574F450();
        }

        (*(v43 + 8))(v44, v36);
      }
    }

    LOBYTE(v30) = v48;
  }

  return v30;
}

BOOL MergeableAppStorage.Partial.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v37 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v33 - v16;
  v18 = type metadata accessor for SidebarPreferences.Partial(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  sub_255663294(a1, v17, &qword_27F7BFC10, &qword_25575D7B8);
  v23 = *(v19 + 48);
  if (v23(v17, 1, v18) == 1)
  {
    v15 = v17;
    v24 = v8;
  }

  else
  {
    sub_25571A5E8(v17, v22, type metadata accessor for SidebarPreferences.Partial);
    sub_255663294(v36, v15, &qword_27F7BFC10, &qword_25575D7B8);
    v24 = v8;
    if (v23(v15, 1, v18) != 1)
    {
      v30 = SidebarPreferences.Partial.canMerge(delta:)(v22);
      sub_255718754(v22, type metadata accessor for SidebarPreferences.Partial);
      sub_255718754(v15, type metadata accessor for SidebarPreferences.Partial);
      v26 = v37;
      v25 = v38;
      if (!v30)
      {
        return 0;
      }

      goto LABEL_6;
    }

    sub_255718754(v22, type metadata accessor for SidebarPreferences.Partial);
  }

  sub_255674B20(v15, &qword_27F7BFC10, &qword_25575D7B8);
  v26 = v37;
  v25 = v38;
LABEL_6:
  v27 = type metadata accessor for MergeableAppStorage.Partial(0);
  sub_255663294(v35 + *(v27 + 20), v7, &qword_27F7BFC18, &unk_25575D7C0);
  v28 = *(v25 + 48);
  if (v28(v7, 1, v24) == 1)
  {
LABEL_9:
    sub_255674B20(v7, &qword_27F7BFC18, &unk_25575D7C0);
    return 1;
  }

  (*(v25 + 32))(v26, v7, v24);
  v7 = v34;
  sub_255663294(v36 + *(v27 + 20), v34, &qword_27F7BFC18, &unk_25575D7C0);
  if (v28(v7, 1, v24) == 1)
  {
    (*(v25 + 8))(v26, v24);
    goto LABEL_9;
  }

  v31 = sub_25574F480();
  v32 = *(v25 + 8);
  v32(v26, v24);
  v32(v7, v24);
  return (v31 & 1) != 0;
}

uint64_t sub_255718754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t MergeableAppStorage.Partial.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  sub_255663294(v1, &v15 - v8, &qword_27F7BFC10, &qword_25575D7B8);
  v10 = type metadata accessor for SidebarPreferences.Partial(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    sub_255674B20(v9, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    SidebarPreferences.Partial.visitReferences(_:)();
    sub_255718754(v9, type metadata accessor for SidebarPreferences.Partial);
  }

  v11 = type metadata accessor for MergeableAppStorage.Partial(0);
  sub_255663294(v1 + *(v11 + 20), v5, &qword_27F7BFC18, &unk_25575D7C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v5, 1, v12) == 1)
  {
    return sub_255674B20(v5, &qword_27F7BFC18, &unk_25575D7C0);
  }

  sub_25574F3B0();
  return (*(v13 + 8))(v5, v12);
}

uint64_t MergeableAppStorage.Partial.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v25 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v30 = &v25 - v9;
  v10 = type metadata accessor for SidebarPreferences.Partial(0);
  v11 = *(*(v10 - 8) + 56);
  v11(a2, 1, 1, v10);
  v12 = *(type metadata accessor for MergeableAppStorage.Partial(0) + 20);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v16 = v14 + 56;
  v32 = a2;
  v15(a2 + v12, 1, 1, v13);
  v17 = v33;
  sub_25574FE90();
  if (v17)
  {

    v18 = v32;
  }

  else
  {
    v33 = 0;
    v27 = v12;
    v28 = v10;
    v25 = v16;
    v26 = v15;
    v29 = a1;
    v20 = v30;
    v21 = v31;
    v22 = sub_25574FED0();
    if (v22)
    {
      v23 = v33;
      SidebarPreferences.Partial.init(from:)(v22, v20);
      v18 = v32;
      v33 = v23;
      if (v23)
      {

        return sub_255718754(v18, type metadata accessor for MergeableAppStorage.Partial);
      }

      v11(v20, 0, 1, v28);
      sub_25568CFC8(v20, v18, &qword_27F7BFC10, &qword_25575D7B8);
    }

    else
    {
      v18 = v32;
    }

    if (!sub_25574FED0())
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
    sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8);
    v24 = v33;
    sub_25574F420();

    if (!v24)
    {
      v26(v21, 0, 1, v13);
      return sub_25568CFC8(v21, v18 + v27, &qword_27F7BFC18, &unk_25575D7C0);
    }
  }

  return sub_255718754(v18, type metadata accessor for MergeableAppStorage.Partial);
}

uint64_t MergeableAppStorage.Partial.encode(to:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v25 - v11;
  v13 = type metadata accessor for SidebarPreferences.Partial(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_25574FF10();
  if (!v0)
  {
    v26 = v4;
    v27 = v8;
    v19 = v29;
    sub_255663294(v29, v12, &qword_27F7BFC10, &qword_25575D7B8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      sub_255674B20(v12, &qword_27F7BFC10, &qword_25575D7B8);
    }

    else
    {
      sub_25571A5E8(v12, v17, type metadata accessor for SidebarPreferences.Partial);
      sub_25566483C(&qword_27F7BFC28, type metadata accessor for SidebarPreferences.Partial);
      sub_25574FF60();
      sub_255718754(v17, type metadata accessor for SidebarPreferences.Partial);
    }

    v20 = type metadata accessor for MergeableAppStorage.Partial(0);
    v21 = v26;
    sub_255663294(v19 + *(v20 + 20), v26, &qword_27F7BFC18, &unk_25575D7C0);
    v22 = v28;
    v23 = (*(v28 + 48))(v21, 1, v5);
    v24 = v27;
    if (v23 == 1)
    {

      return sub_255674B20(v21, &qword_27F7BFC18, &unk_25575D7C0);
    }

    else
    {
      (*(v22 + 32))(v27, v21, v5);
      sub_255669798(&qword_27F7BFC20, &qword_27F7BEAA0, &unk_25575D720);
      sub_25574FF60();
      (*(v22 + 8))(v24, v5);
    }
  }

  return result;
}

uint64_t MapSize.description.getter()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t sub_255719254()
{
  v1 = 1684632167;
  if (*v0 != 1)
  {
    v1 = 0x6C6C616D73;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564646968;
  }
}

uint64_t MergeableAppStorage.merge(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v35 = *(v6 - 8);
  v7 = *(v35 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v34 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v30 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = v30 - v13;
  v15 = sub_25574F500();
  v32 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  sub_25574F4F0();
  v30[2] = a1;
  SidebarPreferences.merge(_:)();
  sub_25574F4E0();
  v20 = *(v16 + 8);
  v30[1] = v16 + 8;
  v31 = v20;
  v20(v19, v15);
  v21 = type metadata accessor for MergeableAppStorage(0);
  v22 = a1 + *(v21 + 20);
  sub_25574F390();
  v23 = *(v21 + 20);
  sub_25574F390();
  sub_25574F460();
  v24 = v35;
  v25 = *(v35 + 8);
  v25(v14, v6);
  (*(v24 + 16))(v34, v12, v6);
  sub_25574F3A0();
  v25(v12, v6);
  sub_25574F4E0();
  v27 = v31;
  v26 = v32;
  v31(v19, v32);
  v28 = v3 + *(v21 + 24);
  sub_25574F810();
  sub_25574F4E0();
  return v27(v19, v26);
}

uint64_t SidebarPreferences.merge(_:)()
{
  v1 = v0;
  v2 = sub_25574F500();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25574F4F0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC50();
  sub_25574F4E0();
  v7 = *(v3 + 8);
  v7(v6, v2);
  v8 = type metadata accessor for SidebarPreferences(0);
  v9 = v8[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F6A0();
  sub_25574F4E0();
  v7(v6, v2);
  v10 = v8[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F6A0();
  sub_25574F4E0();
  v7(v6, v2);
  v11 = v1 + v8[7];
  sub_25574F810();
  sub_25574F4E0();
  return (v7)(v6, v2);
}

uint64_t MergeableAppStorage.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC08, &qword_25575D7B0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v30 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v30 - v19;
  SidebarPreferences.actionUndoingDifference(from:)(&v30 - v19);
  v21 = type metadata accessor for MergeableAppStorage(0);
  v22 = v2 + *(v21 + 20);
  sub_25574F390();
  v23 = a1 + *(v21 + 20);
  sub_25574F390();
  sub_25574F3F0();
  v24 = *(v6 + 8);
  v24(v10, v5);
  v24(v12, v5);
  v25 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  if ((*(*(v25 - 8) + 48))(v20, 1, v25) == 1 && (v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC30, &qword_25575D7D0), (*(*(v26 - 8) + 48))(v16, 1, v26) == 1))
  {
    sub_255674B20(v20, &qword_27F7BFC00, &qword_25575D7A8);
    v27 = type metadata accessor for MergeableAppStorage.MutatingAction(0);
    (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
  }

  else
  {
    sub_255663294(v20, a2, &qword_27F7BFC00, &qword_25575D7A8);
    v28 = type metadata accessor for MergeableAppStorage.MutatingAction(0);
    sub_255663294(v16, a2 + *(v28 + 20), &qword_27F7BFC08, &qword_25575D7B0);
    sub_255674B20(v20, &qword_27F7BFC00, &qword_25575D7A8);
    (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
  }

  return sub_255674B20(v16, &qword_27F7BFC08, &qword_25575D7B0);
}

uint64_t SidebarPreferences.actionUndoingDifference(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4D8, &qword_25575B3B8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC0, &unk_25575D760);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB8, &qword_25575D758);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBE0();
  v14 = type metadata accessor for SidebarPreferences(0);
  v15 = *(v14 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F600();
  v16 = *(v14 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F600();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC38, &qword_25575D7D8);
  if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1 && (v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC40, &unk_25575D7E0), (*(*(v18 - 8) + 48))(v9, 1, v18) == 1) && (v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF540, &qword_25575B498), (*(*(v19 - 8) + 48))(v5, 1, v19) == 1))
  {
    sub_255674B20(v13, &qword_27F7BFBB8, &qword_25575D758);
    v20 = type metadata accessor for SidebarPreferences.MutatingAction(0);
    (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  else
  {
    sub_255663294(v13, a1, &qword_27F7BFBB8, &qword_25575D758);
    v21 = type metadata accessor for SidebarPreferences.MutatingAction(0);
    sub_255663294(v9, a1 + *(v21 + 20), &qword_27F7BFBC0, &unk_25575D760);
    sub_255663294(v5, a1 + *(v21 + 24), &qword_27F7BF4D8, &qword_25575B3B8);
    sub_255674B20(v13, &qword_27F7BFBB8, &qword_25575D758);
    (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
  }

  sub_255674B20(v5, &qword_27F7BF4D8, &qword_25575B3B8);
  return sub_255674B20(v9, &qword_27F7BFBC0, &unk_25575D760);
}

uint64_t MergeableAppStorage.apply(_:)(uint64_t a1)
{
  v38 = a1;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v36 = *(v37 - 8);
  v1 = *(v36 + 64);
  v2 = MEMORY[0x28223BE20](v37);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v34 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v34 - v7;
  v9 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC48, &qword_25575D7F0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v34 - v16;
  v18 = type metadata accessor for MergeableAppStorage.MutatingAction(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(v38, v17, &qword_27F7BFC48, &qword_25575D7F0);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    return sub_255674B20(v17, &qword_27F7BFC48, &qword_25575D7F0);
  }

  sub_25571A5E8(v17, v22, type metadata accessor for MergeableAppStorage.MutatingAction);
  sub_255663294(v22, v8, &qword_27F7BFC00, &qword_25575D7A8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_255674B20(v8, &qword_27F7BFC00, &qword_25575D7A8);
  }

  else
  {
    sub_25571A5E8(v8, v13, type metadata accessor for SidebarPreferences.MutatingAction);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
    sub_25574FC20();
    v24 = *(v9 + 20);
    v25 = type metadata accessor for SidebarPreferences(0);
    v26 = *(v25 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
    sub_25574F660();
    v27 = *(v9 + 24);
    v28 = *(v25 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_25574F660();
    sub_255718754(v13, type metadata accessor for SidebarPreferences.MutatingAction);
  }

  v29 = *(v18 + 20);
  v30 = *(type metadata accessor for MergeableAppStorage(0) + 20);
  v31 = v34;
  v32 = v37;
  sub_25574F390();
  sub_25574F430();
  v33 = v36;
  (*(v36 + 16))(v35, v31, v32);
  sub_25574F3A0();
  (*(v33 + 8))(v31, v32);
  return sub_255718754(v22, type metadata accessor for MergeableAppStorage.MutatingAction);
}

uint64_t SidebarPreferences.apply(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v5, &qword_27F7BFC00, &qword_25575D7A8);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_255674B20(v5, &qword_27F7BFC00, &qword_25575D7A8);
  }

  sub_25571A5E8(v5, v10, type metadata accessor for SidebarPreferences.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC20();
  v12 = *(v6 + 20);
  v13 = type metadata accessor for SidebarPreferences(0);
  v14 = *(v13 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F660();
  v15 = *(v6 + 24);
  v16 = *(v13 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F660();
  return sub_255718754(v10, type metadata accessor for SidebarPreferences.MutatingAction);
}

uint64_t sub_25571A5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t MergeableAppStorage.hasDelta(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FD00())
  {
    goto LABEL_6;
  }

  v12 = type metadata accessor for SidebarPreferences(0);
  v13 = v12[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F710())
  {
    goto LABEL_6;
  }

  v14 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F710())
  {
    goto LABEL_6;
  }

  v15 = v2 + v12[7];
  if (sub_25574F840())
  {
    goto LABEL_6;
  }

  v16 = type metadata accessor for MergeableAppStorage(0);
  v17 = v2 + *(v16 + 20);
  sub_25574F390();
  v18 = a1 + *(v16 + 20);
  sub_25574F390();
  LOBYTE(v18) = sub_25574F490();
  v19 = *(v5 + 8);
  v19(v9, v4);
  v19(v11, v4);
  if (v18)
  {
LABEL_6:
    v20 = 1;
  }

  else
  {
    v22 = v2 + *(v16 + 24);
    v20 = sub_25574F840();
  }

  return v20 & 1;
}

uint64_t SidebarPreferences.hasDelta(from:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FD00())
  {
    return 1;
  }

  v2 = type metadata accessor for SidebarPreferences(0);
  v3 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F710())
  {
    return 1;
  }

  v4 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F710())
  {
    return 1;
  }

  v6 = v1 + v2[7];
  return sub_25574F840() & 1;
}

uint64_t MergeableAppStorage.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v53 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v4 = *(v3 - 8);
  v60 = v3;
  v61 = v4;
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v59 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = &v53 - v8;
  v9 = sub_25574F860();
  v10 = *(v9 - 8);
  v63 = v9;
  v64 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v62 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v14 = *(v13 - 8);
  v56 = v13;
  v57 = v14;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v55 = &v53 - v16;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v17 = *(v54 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v54);
  v20 = &v53 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v25 = &v53 - v24;
  v26 = type metadata accessor for SidebarPreferences(0);
  v27 = (v26 - 8);
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255717310(v1, a1, type metadata accessor for MergeableAppStorage);
  sub_255717310(v1, v30, type metadata accessor for SidebarPreferences);
  v31 = v1;
  sub_25574FC00();
  (*(v22 + 40))(v30, v25, v21);
  v32 = v1 + v27[7];
  v33 = v54;
  sub_25574F630();
  (*(v17 + 40))(&v30[v27[7]], v20, v33);
  v34 = v31 + v27[8];
  v36 = v55;
  v35 = v56;
  sub_25574F630();
  (*(v57 + 5))(&v30[v27[8]], v36, v35);
  v37 = v31 + v27[9];
  v38 = v62;
  sub_25574F800();
  v39 = v27[9];
  v40 = *(v64 + 40);
  v64 += 40;
  v57 = v40;
  v40(&v30[v39], v38, v63);
  v41 = v53;
  sub_255717380(v30, v53);
  v42 = type metadata accessor for MergeableAppStorage(0);
  v43 = v31 + *(v42 + 20);
  v45 = v59;
  v44 = v60;
  sub_25574F390();
  v46 = v58;
  sub_25574F410();
  v47 = v61;
  v48 = *(v61 + 8);
  v48(v45, v44);
  (*(v47 + 16))(v45, v46, v44);
  v49 = v41 + *(v42 + 20);
  sub_25574F3A0();
  v48(v46, v44);
  v50 = v31 + *(v42 + 24);
  v51 = v62;
  sub_25574F800();
  return v57(v41 + *(v42 + 24), v51, v63);
}

uint64_t SidebarPreferences.copy(renamingReferences:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_25574F860();
  v33 = *(v4 - 8);
  v34 = v4;
  v5 = *(v33 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v8 = *(v7 - 8);
  v30 = v7;
  v31 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v29 = &v29 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - v19;
  sub_255717310(v1, a1, type metadata accessor for SidebarPreferences);
  sub_25574FC00();
  (*(v17 + 40))(a1, v20, v16);
  v21 = type metadata accessor for SidebarPreferences(0);
  v22 = v1 + v21[5];
  sub_25574F630();
  (*(v12 + 40))(a1 + v21[5], v15, v11);
  v23 = v2 + v21[6];
  v25 = v29;
  v24 = v30;
  sub_25574F630();
  (*(v31 + 40))(a1 + v21[6], v25, v24);
  v26 = v2 + v21[7];
  v27 = v32;
  sub_25574F800();
  return (*(v33 + 40))(a1 + v21[7], v27, v34);
}

uint64_t MergeableAppStorage.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25574F860();
  v25 = *(v2 - 8);
  v26 = v2;
  v3 = *(v25 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v28 = *(v5 - 8);
  v29 = v5;
  v6 = *(v28 + 64);
  MEMORY[0x28223BE20](v5);
  v30 = &v25 - v7;
  v8 = type metadata accessor for SidebarPreferences(0);
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
  sub_25574FD10();
  v13 = a1 + v9[7];
  sub_25574F720();
  v14 = v9[8];
  sub_25574F0D0();
  sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v15 = a1 + v9[9];
  sub_25574F850();
  v16 = type metadata accessor for MergeableAppStorage(0);
  v17 = *(v16 + 20);
  v31 = 2;
  v32 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
  sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8);
  sub_25574F340();
  v18 = *(v16 + 24);
  sub_25574F850();
  v19 = v33;
  SidebarPreferences.init(defaultState:)(v12);
  if (v19)
  {
    return sub_255718754(a1, type metadata accessor for MergeableAppStorage);
  }

  v20 = v28;
  v21 = v29;
  sub_255717380(v12, a1);
  v22 = v30;
  sub_25574F330();
  (*(v20 + 40))(a1 + v17, v22, v21);
  v23 = v27;
  sub_25574F780();
  return (*(v25 + 40))(a1 + v18, v23, v26);
}

uint64_t SidebarPreferences.init(defaultState:)@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_25574F860();
  v27 = *(v2 - 8);
  v28 = v2;
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v2);
  v32 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v30 = *(v5 - 8);
  v31 = v5;
  v6 = *(v30 + 64);
  MEMORY[0x28223BE20](v5);
  v35 = v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v33 = *(v8 - 8);
  v34 = v8;
  v9 = *(v33 + 64);
  MEMORY[0x28223BE20](v8);
  v40 = v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
  sub_25574FD10();
  v15 = type metadata accessor for SidebarPreferences(0);
  v36 = v15[5];
  sub_25574F720();
  v16 = v15[6];
  v17 = sub_25574F0D0();
  v18 = sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  v29 = v16;
  sub_25574F720();
  v19 = v15[7];
  sub_25574F850();
  v37 = v14;
  v20 = v41;
  sub_25574FB80();
  if (v20)
  {
    return sub_255718754(a1, type metadata accessor for SidebarPreferences);
  }

  v26[0] = v19;
  v26[1] = v18;
  v41 = v17;
  v21 = v36;
  (*(v38 + 40))(a1, v37, v39);
  v22 = v40;
  sub_25574F560();
  (*(v33 + 40))(a1 + v21, v22, v34);
  v23 = v35;
  sub_25574F560();
  (*(v30 + 40))(a1 + v29, v23, v31);
  v24 = v32;
  sub_25574F780();
  return (*(v27 + 40))(a1 + v26[0], v24, v28);
}

uint64_t MergeableAppStorage.isDefaultState.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MergeableAppStorage(0);
  v8 = v0 + *(v7 + 24);
  if (sub_25574F790() & 1) != 0 && (v9 = type metadata accessor for SidebarPreferences(0), v10 = v1 + v9[7], (sub_25574F790()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0), (sub_25574FB90()) && (v11 = v9[5], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), (sub_25574F5B0()) && (v12 = v9[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()))
  {
    v13 = v1 + *(v7 + 20);
    sub_25574F390();
    v14 = sub_25574F380();
    (*(v3 + 8))(v6, v2);
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t SidebarPreferences.isDefaultState.getter()
{
  v1 = type metadata accessor for SidebarPreferences(0);
  v2 = v0 + v1[7];
  if ((sub_25574F790() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if ((sub_25574FB90() & 1) == 0)
  {
    return 0;
  }

  v3 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if ((sub_25574F5B0() & 1) == 0)
  {
    return 0;
  }

  v4 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  return sub_25574F5B0() & 1;
}

uint64_t MergeableAppStorage.visitReferences(_:)()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  v7 = type metadata accessor for SidebarPreferences(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  v9 = v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v10 = v1 + v7[7];
  sub_25574F7A0();
  v11 = type metadata accessor for MergeableAppStorage(0);
  v12 = v1 + *(v11 + 20);
  sub_25574F390();
  sub_25574F3B0();
  (*(v3 + 8))(v6, v2);
  v13 = v1 + *(v11 + 24);
  return sub_25574F7A0();
}

uint64_t SidebarPreferences.visitReferences(_:)()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  v2 = type metadata accessor for SidebarPreferences(0);
  v3 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  v4 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v5 = v1 + v2[7];
  return sub_25574F7A0();
}

uint64_t MergeableAppStorage.newRefs(from:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v28 - v10;
  v28 = MEMORY[0x277D84FA0];
  v29 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v12 = sub_25574FCD0();
  sub_255692FAC(v12);
  v13 = type metadata accessor for SidebarPreferences(0);
  v14 = v13[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v15 = sub_25574F6E0();
  sub_255692FAC(v15);
  v16 = v13[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v17 = sub_25574F6E0();
  sub_255692FAC(v17);
  v18 = v2 + v13[7];
  v19 = sub_25574F830();
  sub_255692FAC(v19);
  sub_255692FAC(v28);
  v20 = type metadata accessor for MergeableAppStorage(0);
  v21 = v2 + *(v20 + 20);
  sub_25574F390();
  v22 = a1 + *(v20 + 20);
  sub_25574F390();
  v23 = sub_25574F470();
  v24 = *(v5 + 8);
  v24(v9, v4);
  v24(v11, v4);
  sub_255692FAC(v23);
  v25 = v2 + *(v20 + 24);
  v26 = sub_25574F830();
  sub_255692FAC(v26);
  return v29;
}

uint64_t SidebarPreferences.newRefs(from:)()
{
  v1 = v0;
  v11 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v2 = sub_25574FCD0();
  sub_255692FAC(v2);
  v3 = type metadata accessor for SidebarPreferences(0);
  v4 = v3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v5 = sub_25574F6E0();
  sub_255692FAC(v5);
  v6 = v3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v7 = sub_25574F6E0();
  sub_255692FAC(v7);
  v8 = v1 + v3[7];
  v9 = sub_25574F830();
  sub_255692FAC(v9);
  return v11;
}

Swift::Bool __swiftcall MergeableAppStorage.needToFinalizeTimestamps()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0())
  {
    goto LABEL_6;
  }

  v7 = type metadata accessor for SidebarPreferences(0);
  v8 = v7[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F610())
  {
    goto LABEL_6;
  }

  v9 = v7[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610() & 1) != 0 || (v10 = v1 + v7[7], (sub_25574F7D0()) || (v11 = type metadata accessor for MergeableAppStorage(0), v12 = v1 + *(v11 + 20), sub_25574F390(), LOBYTE(v12) = sub_25574F400(), (*(v3 + 8))(v6, v2), (v12))
  {
LABEL_6:
    v13 = 1;
  }

  else
  {
    v15 = v1 + *(v11 + 24);
    v13 = sub_25574F7D0();
  }

  return v13 & 1;
}

Swift::Bool __swiftcall SidebarPreferences.needToFinalizeTimestamps()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0())
  {
    return 1;
  }

  v2 = type metadata accessor for SidebarPreferences(0);
  v3 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F610())
  {
    return 1;
  }

  v4 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610())
  {
    return 1;
  }

  v6 = v1 + v2[7];
  return sub_25574F7D0() & 1;
}

uint64_t MergeableAppStorage.finalizeTimestamps(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  v10 = type metadata accessor for SidebarPreferences(0);
  v11 = v10[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  v12 = v10[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v13 = v10[7];
  MEMORY[0x259C3D480](a1);
  v14 = type metadata accessor for MergeableAppStorage(0);
  v15 = *(v14 + 20);
  sub_25574F390();
  sub_25574F3C0();
  (*(v3 + 16))(v7, v9, v2);
  sub_25574F3A0();
  (*(v3 + 8))(v9, v2);
  v16 = *(v14 + 24);
  return MEMORY[0x259C3D480](a1);
}

uint64_t SidebarPreferences.finalizeTimestamps(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  v2 = type metadata accessor for SidebarPreferences(0);
  v3 = v2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  v4 = v2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v5 = v2[7];
  return MEMORY[0x259C3D480](a1);
}

uint64_t MergeableAppStorage.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v2);
  v48 = v44 - v4;
  v5 = sub_25574F770();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v47 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v44 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v52 = v44 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = v44 - v18;
  v46 = type metadata accessor for MergeableAppStorage(0);
  v20 = *(v46 + 24);
  v53 = v1;
  sub_25574F7C0();
  v21 = *MEMORY[0x277CFB5F0];
  v22 = *MEMORY[0x277CFB5F0];
  v51 = *(v6 + 104);
  v51(v17, v22, v5);
  v23 = sub_25574F760();
  v24 = *(v6 + 8);
  v24(v17, v5);
  if (v23)
  {
    return (*(v6 + 32))(v54, v19, v5);
  }

  SidebarPreferences.minEncodingVersion.getter(v12);
  v44[1] = sub_25566483C(&qword_27F7BDED8, MEMORY[0x277CFB600]);
  v26 = sub_2557500E0();
  v27 = (v26 & 1) == 0;
  if (v26)
  {
    v28 = v19;
  }

  else
  {
    v28 = v12;
  }

  if (v27)
  {
    v29 = v19;
  }

  else
  {
    v29 = v12;
  }

  v24(v28, v5);
  v45 = v21;
  v30 = *(v6 + 32);
  v31 = v52;
  v30(v52, v29, v5);
  v32 = v31;
  v33 = v30;
  v30(v19, v32, v5);
  v51(v17, v45, v5);
  v34 = sub_25574F760();
  v24(v17, v5);
  if (v34)
  {
    v35 = v54;
LABEL_14:
    v43 = v19;
    return v33(v35, v43, v5);
  }

  v36 = v24;
  v37 = v53 + *(v46 + 20);
  v38 = v48;
  v39 = v50;
  sub_25574F390();
  v40 = v47;
  sub_25574F3D0();
  (*(v49 + 8))(v38, v39);
  v41 = sub_2557500E0();
  v42 = v54;
  if ((v41 & 1) == 0)
  {
    v36(v40, v5);
    v35 = v42;
    goto LABEL_14;
  }

  v36(v19, v5);
  v35 = v42;
  v43 = v40;
  return v33(v35, v43, v5);
}

uint64_t SidebarPreferences.minEncodingVersion.getter@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v2 = sub_25574F770();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v47 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v48 = v46 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v49 = v46 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v46 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v46 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v46 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = v46 - v20;
  v50 = type metadata accessor for SidebarPreferences(0);
  v22 = v50[7];
  v53 = v1;
  sub_25574F7C0();
  v23 = *(v3 + 104);
  v52 = *MEMORY[0x277CFB5F0];
  v51 = v23;
  v23(v19);
  v24 = sub_25574F760();
  v25 = *(v3 + 8);
  v25(v19, v2);
  if (v24)
  {
    return (*(v3 + 32))(v54, v21, v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBC0();
  v46[1] = sub_25566483C(&qword_27F7BDED8, MEMORY[0x277CFB600]);
  v27 = sub_2557500E0();
  v28 = (v27 & 1) == 0;
  if (v27)
  {
    v29 = v21;
  }

  else
  {
    v29 = v13;
  }

  if (v28)
  {
    v30 = v21;
  }

  else
  {
    v30 = v13;
  }

  v25(v29, v2);
  v31 = *(v3 + 32);
  v31(v16, v30, v2);
  v31(v21, v16, v2);
  v51(v19, v52, v2);
  v32 = sub_25574F760();
  v25(v19, v2);
  if (v32)
  {
    v33 = v54;
LABEL_22:
    v45 = v21;
    return (v31)(v33, v45, v2);
  }

  v34 = v50[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v35 = v48;
  sub_25574F5E0();
  v36 = sub_2557500E0();
  v37 = (v36 & 1) == 0;
  if (v36)
  {
    v38 = v21;
  }

  else
  {
    v38 = v35;
  }

  if (v37)
  {
    v39 = v21;
  }

  else
  {
    v39 = v35;
  }

  v25(v38, v2);
  v40 = v49;
  v31(v49, v39, v2);
  v31(v21, v40, v2);
  v51(v19, v52, v2);
  v41 = sub_25574F760();
  v25(v19, v2);
  v42 = v54;
  if (v41)
  {
LABEL_21:
    v33 = v42;
    goto LABEL_22;
  }

  v43 = v50[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v44 = v47;
  sub_25574F5E0();
  if ((sub_2557500E0() & 1) == 0)
  {
    v25(v44, v2);
    goto LABEL_21;
  }

  v25(v21, v2);
  v33 = v42;
  v45 = v44;
  return (v31)(v33, v45, v2);
}

uint64_t MergeableAppStorage.observableDifference(from:with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v30 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDD0, &qword_25575D7A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBF8, &qword_25575D798);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v30 - v18;
  SidebarPreferences.observableDifference(from:with:)(&v30 - v18);
  v20 = type metadata accessor for MergeableAppStorage(0);
  v21 = v2 + *(v20 + 20);
  sub_25574F390();
  v22 = a1 + *(v20 + 20);
  sub_25574F390();
  sub_25574F3E0();
  v23 = *(v5 + 8);
  v23(v9, v4);
  v23(v11, v4);
  v24 = type metadata accessor for SidebarPreferences.ObservableDifference(0);
  if ((*(*(v24 - 8) + 48))(v19, 1, v24) == 1 && (v25 = sub_25574FB50(), (*(*(v25 - 8) + 48))(v15, 1, v25) == 1))
  {
    sub_255674B20(v19, &qword_27F7BFBF8, &qword_25575D798);
    v26 = type metadata accessor for MergeableAppStorage.ObservableDifference(0);
    (*(*(v26 - 8) + 56))(v31, 1, 1, v26);
  }

  else
  {
    v27 = v31;
    sub_255663294(v19, v31, &qword_27F7BFBF8, &qword_25575D798);
    v28 = type metadata accessor for MergeableAppStorage.ObservableDifference(0);
    sub_255663294(v15, v27 + *(v28 + 20), &qword_27F7BDDD0, &qword_25575D7A0);
    sub_255674B20(v19, &qword_27F7BFBF8, &qword_25575D798);
    (*(*(v28 - 8) + 56))(v27, 0, 1, v28);
  }

  return sub_255674B20(v15, &qword_27F7BDDD0, &qword_25575D7A0);
}

uint64_t SidebarPreferences.observableDifference(from:with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4C8, &unk_25575B3A0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v23 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBB0, &unk_25575D748);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBA8, &qword_25575D740);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBD0();
  v14 = type metadata accessor for SidebarPreferences(0);
  v15 = *(v14 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5F0();
  v16 = *(v14 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5F0();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC50, &qword_25575D7F8);
  if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1 && (v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC58, &qword_25575D800), (*(*(v18 - 8) + 48))(v9, 1, v18) == 1) && (v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF560, &qword_25575B4B8), (*(*(v19 - 8) + 48))(v5, 1, v19) == 1))
  {
    sub_255674B20(v13, &qword_27F7BFBA8, &qword_25575D740);
    v20 = type metadata accessor for SidebarPreferences.ObservableDifference(0);
    (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  }

  else
  {
    sub_255663294(v13, a1, &qword_27F7BFBA8, &qword_25575D740);
    v21 = type metadata accessor for SidebarPreferences.ObservableDifference(0);
    sub_255663294(v9, a1 + *(v21 + 20), &qword_27F7BFBB0, &unk_25575D748);
    sub_255663294(v5, a1 + *(v21 + 24), &qword_27F7BF4C8, &unk_25575B3A0);
    sub_255674B20(v13, &qword_27F7BFBA8, &qword_25575D740);
    (*(*(v21 - 8) + 56))(a1, 0, 1, v21);
  }

  sub_255674B20(v5, &qword_27F7BF4C8, &unk_25575B3A0);
  return sub_255674B20(v9, &qword_27F7BFBB0, &unk_25575D748);
}

uint64_t MergeableAppStorage.encode(to:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v12 - v6;
  result = sub_25574FF10();
  if (!v1)
  {
    type metadata accessor for SidebarPreferences(0);
    sub_25566483C(&qword_27F7BFC60, type metadata accessor for SidebarPreferences);
    sub_25574FF60();
    v9 = type metadata accessor for MergeableAppStorage(0);
    v10 = v0 + *(v9 + 20);
    sub_25574F390();
    sub_255669798(&qword_27F7BFC20, &qword_27F7BEAA0, &unk_25575D720);
    sub_25574FF60();
    (*(v4 + 8))(v7, v3);
    v11 = v2 + *(v9 + 24);
    sub_25574F820();
  }

  return result;
}

uint64_t MergeableAppStorage.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25574F860();
  v75 = *(v4 - 8);
  v76 = v4;
  v5 = *(v75 + 64);
  MEMORY[0x28223BE20](v4);
  v74 = &v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v82 = (&v68 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v11 = *(v10 - 8);
  v79 = v10;
  v80 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v72 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v77 = *(v16 - 8);
  v78 = v16;
  v17 = *(v77 + 64);
  MEMORY[0x28223BE20](v16);
  v81 = &v68 - v18;
  v19 = type metadata accessor for SidebarPreferences(0);
  v20 = (v19 - 8);
  v21 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v68 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
  sub_25574FD10();
  v24 = a2 + v20[7];
  sub_25574F720();
  v25 = v20[8];
  sub_25574F0D0();
  sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v26 = a2 + v20[9];
  sub_25574F850();
  v27 = type metadata accessor for MergeableAppStorage(0);
  v28 = *(v27 + 20);
  v84 = 2;
  v85 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA80, &qword_255758AE8);
  sub_255669798(&qword_27F7BEA88, &qword_27F7BEA80, &qword_255758AE8);
  sub_25574F340();
  v29 = *(v27 + 24);
  sub_25574F850();
  v30 = v83;
  v31 = sub_25574FE90();
  if (v30)
  {

    return sub_255718754(a2, type metadata accessor for MergeableAppStorage);
  }

  else
  {
    v32 = v31;
    v71 = v29;
    v83 = a1;
    v33 = sub_25574FED0();
    if (v33)
    {
      SidebarPreferences.init(from:)(v33, v23);
      sub_255717380(v23, a2);
    }

    if (sub_25574FED0())
    {
      v34 = v81;
      sub_25574F420();
      (*(v77 + 40))(a2 + v28, v34, v78);
    }

    v35 = sub_25574FEC0();
    v81 = v32;
    v69 = a2;
    v37 = sub_2556771A4(v35);

    v84 = v37;
    sub_2556775F8(0xD000000000000012, 0x8000000255753720);

    sub_2556775F8(0x4D746C7561666564, 0xEE00657A69537061);

    v38 = v84 + 56;
    v39 = 1 << *(v84 + 32);
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v84 + 56);
    v42 = (v39 + 63) >> 6;
    v77 = v80 + 56;
    v78 = v84;

    v43 = 0;
    v70 = MEMORY[0x277D84F90];
    v44 = v79;
    while (1)
    {
      v45 = v43;
      if (!v41)
      {
        break;
      }

LABEL_16:
      v46 = __clz(__rbit64(v41));
      v41 &= v41 - 1;
      v47 = (*(v78 + 48) + ((v43 << 10) | (16 * v46)));
      v49 = *v47;
      v48 = v47[1];

      if (sub_25574FED0())
      {
        v51 = *(v44 + 48);
        v52 = v82;
        *v82 = v49;
        v52[1] = v48;

        sub_25574FDA0();

        v53 = v79;
        (*v77)(v52, 0, 1, v79);
        v54 = v52;
        v55 = v72;
        sub_25569AA68(v54, v72);
        sub_25569AA68(v55, v73);
        v44 = v53;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = sub_255698728(0, v70[2] + 1, 1, v70);
        }

        v56 = v80;
        v58 = v70[2];
        v57 = v70[3];
        v59 = v73;
        if (v58 >= v57 >> 1)
        {
          v61 = sub_255698728(v57 > 1, v58 + 1, 1, v70);
          v56 = v80;
          v70 = v61;
          v59 = v73;
        }

        v60 = v70;
        v70[2] = v58 + 1;
        sub_25569AA68(v59, v60 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v58);
      }

      else
      {

        v50 = v82;
        (*v77)(v82, 1, 1, v44);
        sub_255674B20(v50, &qword_27F7BDEE0, &unk_2557552C0);
      }
    }

    while (1)
    {
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);

        swift_bridgeObjectRelease_n();
        a2 = v69;
        return sub_255718754(a2, type metadata accessor for MergeableAppStorage);
      }

      if (v43 >= v42)
      {
        break;
      }

      v41 = *(v38 + 8 * v43);
      ++v45;
      if (v41)
      {
        goto LABEL_16;
      }
    }

    v62 = v70;
    if (v70[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
      v63 = sub_255750C90();
    }

    else
    {
      v63 = MEMORY[0x277D84F98];
    }

    v65 = v75;
    v64 = v76;
    v66 = v74;
    v67 = v69;
    v86 = v63;
    sub_255722D8C(v62, 1, &v86);
    sub_25574F870();

    return (*(v65 + 40))(v67 + v71, v66, v64);
  }
}

uint64_t SidebarPreferences.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a1;
  v4 = sub_25574F860();
  v85 = *(v4 - 8);
  v86 = v4;
  v5 = *(v85 + 64);
  MEMORY[0x28223BE20](v4);
  v84 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE0, &unk_2557552C0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v92 = (&v77 - v9);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v87 = *(v91 - 8);
  v10 = *(v87 + 64);
  v11 = MEMORY[0x28223BE20](v91);
  v83 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v82 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v94 = *(v14 - 8);
  v95 = v14;
  v15 = *(v94 + 64);
  MEMORY[0x28223BE20](v14);
  v93 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v101 = *(v17 - 1);
  v102 = v17;
  v18 = *(v101 + 64);
  MEMORY[0x28223BE20](v17);
  v96 = &v77 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v89 = *(v20 - 8);
  v90 = v20;
  v21 = *(v89 + 64);
  MEMORY[0x28223BE20](v20);
  v98 = &v77 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA68, &qword_25575D790);
  v24 = sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
  sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
  sub_25574FD10();
  v25 = type metadata accessor for SidebarPreferences(0);
  v88 = v25[5];
  v100 = v23;
  sub_25574F720();
  v26 = v25[6];
  v27 = sub_25574F0D0();
  v28 = sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
  sub_25574F720();
  v29 = v25[7];
  v103 = a2;
  sub_25574F850();
  v30 = sub_25574FE90();
  if (v2)
  {
LABEL_11:

    return sub_255718754(v103, type metadata accessor for SidebarPreferences);
  }

  v81 = v24;
  v79 = v28;
  v80 = v27;
  v78 = v26;
  v32 = v101;
  v31 = v102;
  v77 = v29;
  v97 = 0;
  v99 = v30;
  if (sub_25574FED0())
  {
    v34 = v97;
    v33 = v98;
    sub_25574FC10();
    if (v34)
    {
      goto LABEL_10;
    }

    v97 = 0;
    (*(v89 + 40))(v103, v33, v90);
  }

  if (!sub_25574FED0())
  {
    goto LABEL_8;
  }

  v35 = v96;
  v36 = v97;
  sub_25574F640();
  if (v36)
  {
LABEL_10:

    goto LABEL_11;
  }

  v97 = 0;
  (*(v32 + 40))(v103 + v88, v35, v31);
LABEL_8:
  v37 = sub_25574FED0();
  v39 = v94;
  v38 = v95;
  v40 = v93;
  if (v37)
  {
    v41 = v97;
    sub_25574F640();
    if (v41)
    {
      goto LABEL_10;
    }

    v97 = 0;
    (*(v39 + 40))(v103 + v78, v40, v38);
  }

  v43 = v97;
  v44 = sub_25574FEC0();
  if (v43)
  {
    goto LABEL_10;
  }

  v97 = 0;
  v45 = sub_2556771A4(v44);

  v106 = v45;
  sub_2556775F8(0x72426E6564646968, 0xEC000000736B6369);

  sub_2556775F8(0x64724F6B63697262, 0xEA00000000007265);

  sub_2556775F8(0xD000000000000013, 0x8000000255753700);

  v46 = v106;
  v47 = v106 + 56;
  v48 = 1 << *(v106 + 32);
  v49 = -1;
  if (v48 < 64)
  {
    v49 = ~(-1 << v48);
  }

  v50 = v49 & *(v106 + 56);
  v51 = (v48 + 63) >> 6;
  v52 = (v87 + 56);

  v53 = 0;
  v102 = MEMORY[0x277D84F90];
  while (1)
  {
    v54 = v53;
    if (!v50)
    {
      break;
    }

LABEL_22:
    v55 = __clz(__rbit64(v50));
    v50 &= v50 - 1;
    v56 = (*(v46 + 48) + ((v53 << 10) | (16 * v55)));
    v58 = *v56;
    v57 = v56[1];

    if (sub_25574FED0())
    {
      v60 = v91;
      v101 = *(v91 + 48);
      v61 = v92;
      *v92 = v58;
      v61[1] = v57;
      v62 = v61;

      v63 = v97;
      sub_25574FDA0();
      v97 = v63;
      if (v63)
      {
LABEL_37:

        swift_bridgeObjectRelease_n();
        return sub_255718754(v103, type metadata accessor for SidebarPreferences);
      }

      (*v52)(v62, 0, 1, v60);
      v64 = v82;
      sub_25569AA68(v62, v82);
      sub_25569AA68(v64, v83);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_255698728(0, v102[2] + 1, 1, v102);
      }

      v65 = v87;
      v67 = v102[2];
      v66 = v102[3];
      v68 = v83;
      if (v67 >= v66 >> 1)
      {
        v102 = sub_255698728(v66 > 1, v67 + 1, 1, v102);
        v68 = v83;
      }

      v69 = v102;
      v102[2] = v67 + 1;
      sub_25569AA68(v68, v69 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v67);
    }

    else
    {

      v59 = v92;
      (*v52)(v92, 1, 1, v91);
      sub_255674B20(v59, &qword_27F7BDEE0, &unk_2557552C0);
    }
  }

  while (1)
  {
    v53 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    if (v53 >= v51)
    {
      break;
    }

    v50 = *(v47 + 8 * v53);
    ++v54;
    if (v50)
    {
      goto LABEL_22;
    }
  }

  v70 = v102;
  if (v102[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEF0, &qword_2557552D0);
    v71 = sub_255750C90();
  }

  else
  {
    v71 = MEMORY[0x277D84F98];
  }

  v73 = v85;
  v72 = v86;
  v74 = v84;
  v75 = v77;
  v105 = v71;
  v76 = v97;
  sub_25572278C(v70, 1, &v105);
  if (v76)
  {

    goto LABEL_11;
  }

  sub_25574F870();

  return (*(v73 + 40))(v103 + v75, v74, v72);
}

uint64_t MergeableAppStorage.delta(_:from:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v39 = *(v4 - 8);
  v5 = *(v39 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v38 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  SidebarPreferences.delta(_:from:)(&v37 - v22);
  v24 = type metadata accessor for MergeableAppStorage(0);
  v25 = v2 + *(v24 + 20);
  sub_25574F390();
  v26 = a1 + *(v24 + 20);
  sub_25574F390();
  v27 = v39;
  sub_25574F440();
  v28 = *(v27 + 8);
  v28(v8, v4);
  v28(v10, v4);
  v29 = type metadata accessor for SidebarPreferences.Partial(0);
  v30 = *(v29 - 8);
  if ((*(v30 + 48))(v23, 1, v29) == 1 && (*(v27 + 48))(v16, 1, v4) == 1)
  {
    sub_255674B20(v23, &qword_27F7BFC10, &qword_25575D7B8);
    v31 = type metadata accessor for MergeableAppStorage.Partial(0);
    (*(*(v31 - 8) + 56))(v40, 1, 1, v31);
  }

  else
  {
    sub_255663294(v23, v21, &qword_27F7BFC10, &qword_25575D7B8);
    v32 = v38;
    sub_255663294(v16, v38, &qword_27F7BFC18, &unk_25575D7C0);
    v33 = v40;
    (*(v30 + 56))(v40, 1, 1, v29);
    v34 = type metadata accessor for MergeableAppStorage.Partial(0);
    v35 = *(v34 + 20);
    (*(v27 + 56))(v33 + v35, 1, 1, v4);
    sub_25568CFC8(v21, v33, &qword_27F7BFC10, &qword_25575D7B8);
    sub_25568CFC8(v32, v33 + v35, &qword_27F7BFC18, &unk_25575D7C0);
    sub_255674B20(v23, &qword_27F7BFC10, &qword_25575D7B8);
    (*(*(v34 - 8) + 56))(v33, 0, 1, v34);
  }

  return sub_255674B20(v16, &qword_27F7BFC18, &unk_25575D7C0);
}

uint64_t SidebarPreferences.delta(_:from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC30();
  v21 = type metadata accessor for SidebarPreferences(0);
  v22 = *(v21 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F680();
  v23 = *(v21 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F680();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v25 = *(v24 - 8);
  if ((*(v25 + 48))(v20, 1, v24) == 1 && (v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780), (*(*(v26 - 8) + 48))(v13, 1, v26) == 1) && (v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0), (*(*(v27 - 8) + 48))(v7, 1, v27) == 1))
  {
    sub_255674B20(v20, &qword_27F7BFBC8, &qword_25575D770);
    v28 = type metadata accessor for SidebarPreferences.Partial(0);
    (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
  }

  else
  {
    sub_255663294(v20, v18, &qword_27F7BFBC8, &qword_25575D770);
    sub_255663294(v13, v37, &qword_27F7BFBD0, &qword_25575D778);
    v29 = v36;
    sub_255663294(v7, v36, &qword_27F7BF4F0, &qword_25575B3D0);
    (*(v25 + 56))(a1, 1, 1, v24);
    v30 = type metadata accessor for SidebarPreferences.Partial(0);
    v31 = *(v30 + 20);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
    (*(*(v32 - 8) + 56))(a1 + v31, 1, 1, v32);
    v33 = *(v30 + 24);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
    (*(*(v34 - 8) + 56))(a1 + v33, 1, 1, v34);
    sub_25568CFC8(v18, a1, &qword_27F7BFBC8, &qword_25575D770);
    sub_25568CFC8(v37, a1 + v31, &qword_27F7BFBD0, &qword_25575D778);
    sub_25568CFC8(v29, a1 + v33, &qword_27F7BF4F0, &qword_25575B3D0);
    sub_255674B20(v20, &qword_27F7BFBC8, &qword_25575D770);
    (*(*(v30 - 8) + 56))(a1, 0, 1, v30);
  }

  sub_255674B20(v7, &qword_27F7BF4F0, &qword_25575B3D0);
  return sub_255674B20(v13, &qword_27F7BFBD0, &qword_25575D778);
}

BOOL MergeableAppStorage.canMerge(delta:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v29 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v31 = *(v7 - 8);
  v8 = *(v31 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v29 = &v29 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for SidebarPreferences.Partial(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1;
  sub_255663294(a1, v15, &qword_27F7BFC10, &qword_25575D7B8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_255674B20(v15, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    sub_25571A5E8(v15, v20, type metadata accessor for SidebarPreferences.Partial);
    v21 = SidebarPreferences.canMerge(delta:)(v20);
    sub_255718754(v20, type metadata accessor for SidebarPreferences.Partial);
    if (!v21)
    {
      return 0;
    }
  }

  v22 = type metadata accessor for MergeableAppStorage.Partial(0);
  sub_255663294(v32 + *(v22 + 20), v6, &qword_27F7BFC18, &unk_25575D7C0);
  v23 = v31;
  if ((*(v31 + 48))(v6, 1, v7) == 1)
  {
    sub_255674B20(v6, &qword_27F7BFC18, &unk_25575D7C0);
    return 1;
  }

  v24 = v29;
  (*(v23 + 32))(v29, v6, v7);
  v25 = v1 + *(type metadata accessor for MergeableAppStorage(0) + 20);
  v26 = v30;
  sub_25574F390();
  LOBYTE(v25) = sub_25574F480();
  v27 = *(v23 + 8);
  v27(v26, v7);
  v27(v24, v7);
  return (v25 & 1) != 0;
}

BOOL SidebarPreferences.canMerge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v36 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x28223BE20](v12);
  v38 = &v36 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v36 - v22;
  v24 = a1;
  sub_255663294(a1, v18, &qword_27F7BFBC8, &qword_25575D770);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_255674B20(v18, &qword_27F7BFBC8, &qword_25575D770);
  }

  else
  {
    (*(v20 + 32))(v23, v18, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
    v25 = sub_25574FCE0();
    (*(v20 + 8))(v23, v19);
    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

  v26 = type metadata accessor for SidebarPreferences.Partial(0);
  sub_255663294(a1 + *(v26 + 20), v11, &qword_27F7BFBD0, &qword_25575D778);
  v27 = v42;
  if ((*(v42 + 48))(v11, 1, v12) == 1)
  {
    sub_255674B20(v11, &qword_27F7BFBD0, &qword_25575D778);
  }

  else
  {
    v28 = v38;
    (*(v27 + 32))(v38, v11, v12);
    v29 = *(type metadata accessor for SidebarPreferences(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
    LOBYTE(v29) = sub_25574F6F0();
    (*(v27 + 8))(v28, v12);
    if ((v29 & 1) == 0)
    {
      return 0;
    }
  }

  v30 = v39;
  sub_255663294(v24 + *(v26 + 24), v39, &qword_27F7BF4F0, &qword_25575B3D0);
  v32 = v40;
  v31 = v41;
  if ((*(v40 + 48))(v30, 1, v41) == 1)
  {
    sub_255674B20(v30, &qword_27F7BF4F0, &qword_25575B3D0);
    return 1;
  }

  v33 = v37;
  (*(v32 + 32))(v37, v30, v31);
  v34 = *(type metadata accessor for SidebarPreferences(0) + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  LOBYTE(v34) = sub_25574F6F0();
  (*(v32 + 8))(v33, v31);
  return (v34 & 1) != 0;
}

uint64_t MergeableAppStorage.merge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC18, &unk_25575D7C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v57 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v60 = *(v8 - 8);
  v9 = *(v60 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v53 = &v50 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v58 = &v50 - v15;
  MEMORY[0x28223BE20](v14);
  v56 = &v50 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC10, &qword_25575D7B8);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17 - 8);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = type metadata accessor for SidebarPreferences.Partial(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = MEMORY[0x28223BE20](v24);
  v51 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v50 - v29;
  v59 = a1;
  sub_255663294(a1, v23, &qword_27F7BFC10, &qword_25575D7B8);
  v31 = *(v25 + 48);
  if (v31(v23, 1, v24) == 1)
  {
    sub_255674B20(v23, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    sub_25571A5E8(v23, v30, type metadata accessor for SidebarPreferences.Partial);
    v32 = SidebarPreferences.canMerge(delta:)(v30);
    sub_255718754(v30, type metadata accessor for SidebarPreferences.Partial);
    if (!v32)
    {
      return 0;
    }
  }

  v33 = type metadata accessor for MergeableAppStorage.Partial(0);
  v34 = v59;
  v55 = *(v33 + 20);
  sub_255663294(v59 + v55, v7, &qword_27F7BFC18, &unk_25575D7C0);
  v35 = v60;
  v54 = *(v60 + 48);
  if (v54(v7, 1, v8) != 1)
  {
    v36 = *(v35 + 32);
    v50 = v31;
    v37 = v56;
    v36(v56, v7, v8);
    v38 = v61 + *(type metadata accessor for MergeableAppStorage(0) + 20);
    v39 = v58;
    sub_25574F390();
    LOBYTE(v38) = sub_25574F480();
    v40 = *(v35 + 8);
    v41 = v39;
    v34 = v59;
    v40(v41, v8);
    v42 = v37;
    v31 = v50;
    v40(v42, v8);
    v35 = v60;
    if (v38)
    {
      goto LABEL_7;
    }

    return 0;
  }

  sub_255674B20(v7, &qword_27F7BFC18, &unk_25575D7C0);
LABEL_7:
  sub_255663294(v34, v21, &qword_27F7BFC10, &qword_25575D7B8);
  if (v31(v21, 1, v24) == 1)
  {
    sub_255674B20(v21, &qword_27F7BFC10, &qword_25575D7B8);
  }

  else
  {
    v44 = v51;
    sub_25571A5E8(v21, v51, type metadata accessor for SidebarPreferences.Partial);
    SidebarPreferences.merge(delta:)(v44);
    sub_255718754(v44, type metadata accessor for SidebarPreferences.Partial);
  }

  v45 = v57;
  sub_255663294(v34 + v55, v57, &qword_27F7BFC18, &unk_25575D7C0);
  if (v54(v45, 1, v8) == 1)
  {
    sub_255674B20(v45, &qword_27F7BFC18, &unk_25575D7C0);
  }

  else
  {
    v46 = v53;
    (*(v35 + 32))(v53, v45, v8);
    v47 = *(type metadata accessor for MergeableAppStorage(0) + 20);
    v48 = v58;
    sub_25574F390();
    sub_25574F450();
    (*(v35 + 16))(v52, v48, v8);
    sub_25574F3A0();
    v49 = *(v35 + 8);
    v49(v48, v8);
    v49(v46, v8);
  }

  return 1;
}

BOOL SidebarPreferences.merge(delta:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF4F0, &qword_25575B3D0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v41 = &v37[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BF510, &qword_25575B3F0);
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  MEMORY[0x28223BE20](v5);
  v39 = &v37[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD0, &qword_25575D778);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBD8, &qword_25575D780);
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v37[-v14];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBC8, &qword_25575D770);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFBE0, &qword_25575D788);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v37[-v23];
  v25 = SidebarPreferences.canMerge(delta:)(a1);
  if (v25)
  {
    v38 = v25;
    sub_255663294(a1, v19, &qword_27F7BFBC8, &qword_25575D770);
    if ((*(v21 + 48))(v19, 1, v20) == 1)
    {
      sub_255674B20(v19, &qword_27F7BFBC8, &qword_25575D770);
    }

    else
    {
      (*(v21 + 32))(v24, v19, v20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
      sub_25574FC40();
      (*(v21 + 8))(v24, v20);
    }

    v26 = v43;
    v27 = type metadata accessor for SidebarPreferences.Partial(0);
    sub_255663294(a1 + *(v27 + 20), v11, &qword_27F7BFBD0, &qword_25575D778);
    v28 = v40;
    v29 = (*(v40 + 48))(v11, 1, v12);
    v30 = v42;
    if (v29 == 1)
    {
      sub_255674B20(v11, &qword_27F7BFBD0, &qword_25575D778);
    }

    else
    {
      (*(v28 + 32))(v15, v11, v12);
      v31 = *(type metadata accessor for SidebarPreferences(0) + 20);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
      sub_25574F690();
      (*(v28 + 8))(v15, v12);
    }

    v32 = a1 + *(v27 + 24);
    v33 = v41;
    sub_255663294(v32, v41, &qword_27F7BF4F0, &qword_25575B3D0);
    if ((*(v30 + 48))(v33, 1, v26) == 1)
    {
      sub_255674B20(v33, &qword_27F7BF4F0, &qword_25575B3D0);
    }

    else
    {
      v34 = v39;
      (*(v30 + 32))(v39, v33, v26);
      v35 = *(type metadata accessor for SidebarPreferences(0) + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
      sub_25574F690();
      (*(v30 + 8))(v34, v26);
    }

    LOBYTE(v25) = v38;
  }

  return v25;
}

uint64_t sub_255720BB0(uint64_t a1)
{
  v2 = sub_25566483C(&qword_27F7BE608, type metadata accessor for MergeableAppStorage);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_255720C40(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v17 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  v10 = type metadata accessor for SidebarPreferences(0);
  v11 = v10[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  v12 = v10[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v13 = v4 + v10[7];
  sub_25574F7A0();
  v14 = v4 + *(a2 + 20);
  sub_25574F390();
  sub_25574F3B0();
  (*(v6 + 8))(v9, v5);
  v15 = v4 + *(a2 + 24);
  return sub_25574F7A0();
}

uint64_t sub_255720DDC(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0())
  {
    goto LABEL_6;
  }

  v9 = type metadata accessor for SidebarPreferences(0);
  v10 = v9[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F610() & 1) != 0 || (v11 = v9[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F610()) || (v12 = v3 + v9[7], (sub_25574F7D0()) || (v13 = v3 + *(a1 + 20), sub_25574F390(), LOBYTE(v13) = sub_25574F400(), (*(v5 + 8))(v8, v4), (v13))
  {
LABEL_6:
    v14 = 1;
  }

  else
  {
    v16 = v3 + *(a1 + 24);
    v14 = sub_25574F7D0();
  }

  return v14 & 1;
}

uint64_t sub_255720F74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v19 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  v12 = type metadata accessor for SidebarPreferences(0);
  v13 = v12[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  v14 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v15 = v12[7];
  MEMORY[0x259C3D480](a1);
  v16 = *(a2 + 20);
  sub_25574F390();
  sub_25574F3C0();
  (*(v5 + 16))(v9, v11, v4);
  sub_25574F3A0();
  (*(v5 + 8))(v11, v4);
  v17 = *(a2 + 24);
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_2557212E8(uint64_t a1)
{
  v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = v1 + *(a1 + 24);
  if (sub_25574F790() & 1) != 0 && (v10 = type metadata accessor for SidebarPreferences(0), v11 = v3 + v10[7], (sub_25574F790()) && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0), (sub_25574FB90()) && (v12 = v10[5], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730), (sub_25574F5B0()) && (v13 = v10[6], __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390), (sub_25574F5B0()))
  {
    v14 = v3 + *(a1 + 20);
    sub_25574F390();
    v15 = sub_25574F380();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_25572149C(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = sub_25574F500();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  return (*(v5 + 8))(v8, v4);
}

uint64_t SidebarPreferences.encode(to:)()
{
  result = sub_25574FF10();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
    sub_255669798(&qword_27F7BFC68, &qword_27F7BEAA8, &qword_255758AF0);
    sub_25574FF60();
    v3 = type metadata accessor for SidebarPreferences(0);
    v4 = v3[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
    sub_255669798(&qword_27F7BFC70, &qword_27F7BEAC0, &unk_25575D730);
    sub_25574FF60();
    v5 = v3[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
    sub_255669798(&qword_27F7BF570, &qword_27F7BEA90, &unk_25575B390);
    sub_25574FF60();
    v6 = v0 + v3[7];
    sub_25574F820();
  }

  return result;
}

uint64_t static SidebarPreferences.== infix(_:_:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_255669798(&qword_27F7BFC78, &qword_27F7BEAA8, &qword_255758AF0);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v0 = type metadata accessor for SidebarPreferences(0);
  v1 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_255669798(&qword_27F7BFC80, &qword_27F7BEAC0, &unk_25575D730);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v2 = v0[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v3 = v0[7];

  return sub_25574F7E0();
}

uint64_t sub_255721930(uint64_t a1)
{
  v2 = sub_25566483C(&qword_27F7BFCC0, type metadata accessor for SidebarPreferences);

  return MEMORY[0x28214E298](a1, v2);
}

uint64_t sub_25572199C(uint64_t a1, int *a2)
{
  v4 = v2;
  v13 = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v5 = sub_25574FCD0();
  sub_255692FAC(v5);
  v6 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v7 = sub_25574F6E0();
  sub_255692FAC(v7);
  v8 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v9 = sub_25574F6E0();
  sub_255692FAC(v9);
  v10 = v4 + a2[7];
  v11 = sub_25574F830();
  sub_255692FAC(v11);
  return v13;
}

uint64_t sub_255721A88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFC00, &qword_25575D7A8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SidebarPreferences.MutatingAction(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255663294(a1, v7, &qword_27F7BFC00, &qword_25575D7A8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_255674B20(v7, &qword_27F7BFC00, &qword_25575D7A8);
  }

  sub_25571A5E8(v7, v12, type metadata accessor for SidebarPreferences.MutatingAction);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FC20();
  v14 = *(v8 + 20);
  v15 = *(a2 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F660();
  v16 = *(v8 + 24);
  v17 = *(a2 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F660();
  return sub_255718754(v12, type metadata accessor for SidebarPreferences.MutatingAction);
}

uint64_t sub_255721CA8(uint64_t a1, int *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FD00())
  {
    return 1;
  }

  v5 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F710())
  {
    return 1;
  }

  v6 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F710())
  {
    return 1;
  }

  v8 = v4 + a2[7];
  return sub_25574F840() & 1;
}

uint64_t sub_255721D7C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v36 = a1;
  v4 = sub_25574F860();
  v38 = *(v4 - 8);
  v39 = v4;
  v5 = *(v38 + 64);
  MEMORY[0x28223BE20](v4);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v33 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  sub_255717310(v2, a2, type metadata accessor for SidebarPreferences);
  v21 = v2;
  sub_25574FC00();
  (*(v17 + 40))(a2, v20, v16);
  v22 = v36;
  v23 = v2 + *(v36 + 20);
  sub_25574F630();
  (*(v12 + 40))(a2 + *(v22 + 20), v15, v11);
  v24 = v22;
  v25 = v21 + *(v22 + 24);
  v26 = v33;
  v27 = v34;
  sub_25574F630();
  (*(v35 + 40))(a2 + *(v24 + 24), v26, v27);
  v28 = v24;
  v29 = v21 + *(v24 + 28);
  v30 = v37;
  sub_25574F800();
  return (*(v38 + 40))(a2 + *(v28 + 28), v30, v39);
}

uint64_t sub_2557220DC(uint64_t a1, int *a2)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBA0();
  v5 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5C0();
  v6 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5C0();
  v7 = v4 + a2[7];
  return sub_25574F7A0();
}

uint64_t sub_25572218C(int *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if (sub_25574FBF0())
  {
    return 1;
  }

  v4 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if (sub_25574F610())
  {
    return 1;
  }

  v5 = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  if (sub_25574F610())
  {
    return 1;
  }

  v7 = v3 + a1[7];
  return sub_25574F7D0() & 1;
}

uint64_t sub_255722234(uint64_t a1, int *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_25574FBB0();
  v4 = a2[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_25574F5D0();
  v5 = a2[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_25574F5D0();
  v6 = a2[7];
  return MEMORY[0x259C3D480](a1);
}

uint64_t sub_255722300(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = sub_25574F500();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a4(a1);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2557224E8(uint64_t a1, uint64_t a2, int *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_255669798(&qword_27F7BFC78, &qword_27F7BEAA8, &qword_255758AF0);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v4 = a3[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_255669798(&qword_27F7BFC80, &qword_27F7BEAC0, &unk_25575D730);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v5 = a3[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390);
  if ((sub_255750100() & 1) == 0)
  {
    return 0;
  }

  v6 = a3[7];

  return sub_25574F7E0();
}

uint64_t sub_2557226E0(int *a1)
{
  v3 = v1 + a1[7];
  if ((sub_25574F790() & 1) == 0)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  if ((sub_25574FB90() & 1) == 0)
  {
    return 0;
  }

  v4 = a1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  if ((sub_25574F5B0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  return sub_25574F5B0() & 1;
}

void sub_25572278C(uint64_t a1, char a2, void *a3)
{
  v65 = sub_25574FDB0();
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v62 + 80);
  v61 = a1;
  v16 = (v63 + 32);
  v58 = a1 + ((v15 + 32) & ~v15);
  sub_255663294(v58, v13, &qword_27F7BDEE8, &unk_25575B4D0);
  v18 = v13[1];
  v68 = *v13;
  v17 = v68;
  v69 = v18;
  v19 = *v16;
  v59 = v14;
  v57 = v19;
  v19(v64, v13 + v14, v65);
  v20 = *a3;
  v22 = sub_2556632FC(v17, v18);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_2556632FC(v17, v18);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v34 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v35 = (v34[6] + 16 * v22);
      *v35 = v17;
      v35[1] = v18;
      v57((v34[7] + *(v63 + 72) * v22), v64, v65);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_255663294(v58 + *(v62 + 72) * v39, v13, &qword_27F7BDEE8, &unk_25575B4D0);
          v41 = v13[1];
          v68 = *v13;
          v40 = v68;
          v69 = v41;
          v42 = *v16;
          (*v16)(v64, v13 + v59, v65);
          v43 = *a3;
          v44 = sub_2556632FC(v40, v41);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_255743928(v48, 1);
            v50 = *a3;
            v44 = sub_2556632FC(v40, v41);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v52 = *a3;
          *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = (v52[6] + 16 * v44);
          *v53 = v40;
          v53[1] = v41;
          v42((v52[7] + *(v63 + 72) * v44), v64, v65);
          v54 = v52[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = sub_25574F750();
    sub_25566483C(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v31 = swift_allocError();
    *v32 = 0xD00000000000002CLL;
    v32[1] = 0x8000000255753740;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277CFB5A8], v30);
    swift_willThrow();
    v70 = v31;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v64, v65);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

void sub_255722D8C(uint64_t a1, char a2, void *a3)
{
  v65 = sub_25574FDB0();
  v63 = *(v65 - 8);
  v7 = *(v63 + 64);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDEE8, &unk_25575B4D0);
  v62 = *(v9 - 8);
  v10 = *(v62 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = (&v56 - v12);
  v60 = *(a1 + 16);
  if (!v60)
  {
    goto LABEL_24;
  }

  v56 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v14 = *(v11 + 48);
  v15 = *(v62 + 80);
  v61 = a1;
  v16 = (v63 + 32);
  v58 = a1 + ((v15 + 32) & ~v15);
  sub_255663294(v58, v13, &qword_27F7BDEE8, &unk_25575B4D0);
  v18 = v13[1];
  v68 = *v13;
  v17 = v68;
  v69 = v18;
  v19 = *v16;
  v59 = v14;
  v57 = v19;
  v19(v64, v13 + v14, v65);
  v20 = *a3;
  v22 = sub_2556632FC(v17, v18);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_2557427DC();
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_255743928(v25, a2 & 1);
  v27 = *a3;
  v28 = sub_2556632FC(v17, v18);
  if ((v26 & 1) == (v29 & 1))
  {
    v22 = v28;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v34 = *a3;
      *(*a3 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v35 = (v34[6] + 16 * v22);
      *v35 = v17;
      v35[1] = v18;
      v57((v34[7] + *(v63 + 72) * v22), v64, v65);
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v34[2] = v38;
      if (v60 != 1)
      {
        v39 = 1;
        while (v39 < *(v61 + 16))
        {
          sub_255663294(v58 + *(v62 + 72) * v39, v13, &qword_27F7BDEE8, &unk_25575B4D0);
          v41 = v13[1];
          v68 = *v13;
          v40 = v68;
          v69 = v41;
          v42 = *v16;
          (*v16)(v64, v13 + v59, v65);
          v43 = *a3;
          v44 = sub_2556632FC(v40, v41);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_255743928(v48, 1);
            v50 = *a3;
            v44 = sub_2556632FC(v40, v41);
            if ((v49 & 1) != (v51 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v52 = *a3;
          *(*a3 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = (v52[6] + 16 * v44);
          *v53 = v40;
          v53[1] = v41;
          v42((v52[7] + *(v63 + 72) * v44), v64, v65);
          v54 = v52[2];
          v37 = __OFADD__(v54, 1);
          v55 = v54 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v55;
          if (v60 == v39)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = sub_25574F750();
    sub_25566483C(&qword_27F7BE110, MEMORY[0x277CFB5B0]);
    v31 = swift_allocError();
    *v32 = 0xD00000000000002DLL;
    v32[1] = 0x8000000255753770;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277CFB5A8], v30);
    swift_willThrow();
    v70 = v31;
    v33 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE118, &qword_255755C80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      (*(v63 + 8))(v64, v65);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_255750F10();
  __break(1u);
LABEL_29:
  v66 = 0;
  v67 = 0xE000000000000000;
  sub_255750B00();
  MEMORY[0x259C3DED0](0xD00000000000001BLL, 0x8000000255752750);
  sub_255750C20();
  MEMORY[0x259C3DED0](39, 0xE100000000000000);
  sub_255750C40();
  __break(1u);
}

uint64_t _s13JournalShared19MergeableAppStorageV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA0, &unk_25575D720);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAA8, &qword_255758AF0);
  sub_255669798(&qword_27F7BFC78, &qword_27F7BEAA8, &qword_255758AF0);
  if ((sub_255750100() & 1) == 0)
  {
    goto LABEL_7;
  }

  v24 = v5;
  v12 = type metadata accessor for SidebarPreferences(0);
  v13 = v12[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEAC0, &unk_25575D730);
  sub_255669798(&qword_27F7BFC80, &qword_27F7BEAC0, &unk_25575D730);
  if ((sub_255750100() & 1) == 0)
  {
    goto LABEL_7;
  }

  v14 = v12[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEA90, &unk_25575B390);
  sub_255669798(&qword_27F7BF650, &qword_27F7BEA90, &unk_25575B390);
  if ((sub_255750100() & 1) == 0)
  {
    goto LABEL_7;
  }

  v15 = v12[7];
  if ((sub_25574F7E0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v16 = type metadata accessor for MergeableAppStorage(0);
  v17 = a1 + *(v16 + 20);
  sub_25574F390();
  v18 = a2 + *(v16 + 20);
  sub_25574F390();
  sub_255669798(&qword_27F7BFDD0, &qword_27F7BEAA0, &unk_25575D720);
  LOBYTE(v18) = sub_255750100();
  v19 = *(v24 + 8);
  v19(v9, v4);
  v19(v11, v4);
  if (v18)
  {
    v20 = *(v16 + 24);
    v21 = sub_25574F7E0();
  }

  else
  {
LABEL_7:
    v21 = 0;
  }

  return v21 & 1;
}

unint64_t sub_2557236A8()
{
  result = qword_27F7BFC88;
  if (!qword_27F7BFC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFC88);
  }

  return result;
}

unint64_t sub_255723748()
{
  result = qword_27F7BFC90;
  if (!qword_27F7BFC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFC90);
  }

  return result;
}

void sub_2557239BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7BEA68, &qword_25575D790);
    v7 = sub_255669798(&qword_27F7BEA70, &qword_27F7BEA68, &qword_25575D790);
    v8 = sub_255669798(&qword_27F7BEA78, &qword_27F7BEA68, &qword_25575D790);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_255723AA0()
{
  if (!qword_27F7BF5C0)
  {
    sub_25574F0D0();
    sub_25566483C(&qword_27F7BE0B0, MEMORY[0x277CC95F0]);
    v0 = sub_25574F730();
    if (!v1)
    {
      atomic_store(v0, &qword_27F7BF5C0);
    }
  }
}

void sub_255723B74()
{
  sub_255672600(319, &qword_27F7BFD08, &qword_27F7BFC50, &qword_25575D7F8);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFD10, &qword_27F7BFC58, &qword_25575D800);
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF5E8, &qword_27F7BF560, &qword_25575B4B8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255723C80()
{
  sub_255672600(319, &qword_27F7BFD28, &qword_27F7BFC38, &qword_25575D7D8);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFD30, &qword_27F7BFC40, &unk_25575D7E0);
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF608, &qword_27F7BF540, &qword_25575B498);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255723D8C()
{
  sub_255672600(319, &qword_27F7BFD48, &qword_27F7BFBE0, &qword_25575D788);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFD50, &qword_27F7BFBD8, &qword_25575D780);
    if (v1 <= 0x3F)
    {
      sub_255672600(319, &qword_27F7BF630, &qword_27F7BF510, &qword_25575B3F0);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_255723EC0()
{
  sub_255723F7C(319, &qword_27F7BFD80, type metadata accessor for SidebarPreferences.ObservableDifference);
  if (v0 <= 0x3F)
  {
    sub_255723F7C(319, &qword_27F7BDF80, MEMORY[0x277CFB6A0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_255723F7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_255750950();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_255723FF8()
{
  sub_255723F7C(319, &qword_27F7BFD98, type metadata accessor for SidebarPreferences.MutatingAction);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFDA0, &qword_27F7BFC30, &qword_25575D7D0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_56Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v14 = *(v13 + 48);

    return v14(a1, a2, v12);
  }

  else
  {
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + *(a3 + 20);

    return v17(v18, a2, v16);
  }
}

uint64_t __swift_store_extra_inhabitant_index_57Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v16 = *(v15 + 56);

    return v16(a1, a2, a2, v14);
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    v19 = *(*(v18 - 8) + 56);
    v20 = a1 + *(a4 + 20);

    return v19(v20, a2, a2, v18);
  }
}

void sub_2557242FC()
{
  sub_255723F7C(319, &qword_27F7BFDB8, type metadata accessor for SidebarPreferences.Partial);
  if (v0 <= 0x3F)
  {
    sub_255672600(319, &qword_27F7BFDC0, &qword_27F7BEAA0, &unk_25575D720);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

Swift::Void __swiftcall FileStoreConfiguration.deleteLocalFiles()()
{
  v115[2] = *MEMORY[0x277D85DE8];
  v1 = type metadata accessor for FileStoreConfiguration();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v100 = &v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25574EE20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25574EF10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v104 = &v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v112 = &v93 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v111 = &v93 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v110 = &v93 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v93 - v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE08, &unk_25575DF50);
  v22 = *(v10 + 72);
  v23 = v10;
  v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v108 = v22;
  v25 = swift_allocObject();
  v98 = v25 + v24;
  FileStoreConfiguration.applicationSupportDirectoryURL.getter(v25 + v24);
  v26 = *(v1 + 24);
  v97 = v0;
  v95 = v26;
  LODWORD(v26) = *(v0 + v26);
  v94 = v1;
  v96 = v9;
  v106 = v23;
  v93 = v25;
  if (v26)
  {
    v27 = *(v1 + 20);
    v28 = *(v5 + 104);
    v28(v8, *MEMORY[0x277CC91D8], v4);
    sub_255663E98();
    v29 = v97;
    sub_25574EEF0();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_25574EE50();
    v28 = *(v5 + 104);
    v29 = v97;
  }

  v30 = v21;
  v31 = v4;
  v32 = v5;
  v115[0] = 0x656D686361747441;
  v115[1] = 0xEB0000000073746ELL;
  v33 = *MEMORY[0x277CC91C0];
  v109 = v28;
  v28(v8, v33, v31);
  sub_255663E98();
  v34 = v108;
  v35 = v98;
  sub_25574EF00();
  v36 = *(v32 + 8);
  v36(v8, v31);
  v113 = *(v106 + 8);
  v114 = v106 + 8;
  v113(v30, v96);
  FileStoreConfiguration.cachesDirectoryURL.getter(v35 + 2 * v34);
  if (*(v29 + v95))
  {
    v37 = *(v94 + 20);
    v109(v8, *MEMORY[0x277CC91D8], v31);
    v38 = v110;
    sub_25574EEF0();
    v36(v8, v31);
  }

  else
  {
    v38 = v110;
    sub_25574EE70();
  }

  v39 = v100;
  v40 = v111;
  v41 = v112;
  v42 = v106;
  v43 = v98;
  v44 = v96;
  (*(v106 + 32))(v98 + 3 * v108, v38, v96);
  v107 = objc_opt_self();
  v45 = *(v42 + 16);
  v46 = 4;
  *&v47 = 136315138;
  v105 = v47;
  *&v47 = 136315394;
  v99 = v47;
  v106 = v42 + 16;
  v110 = v45;
  (v45)(v40, v43, v44);
  while (1)
  {
    if (qword_27F7BD7F0 != -1)
    {
      swift_once();
    }

    v49 = sub_25574F2C0();
    v50 = __swift_project_value_buffer(v49, qword_27F7BFDD8);
    (v45)(v41, v40, v44);
    v109 = v50;
    v51 = sub_25574F2A0();
    v52 = sub_2557507A0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v115[0] = v54;
      *v53 = v105;
      sub_255725B90();
      v55 = sub_255750E60();
      v57 = v56;
      v113(v112, v44);
      v58 = sub_2556E474C(v55, v57, v115);
      v41 = v112;

      *(v53 + 4) = v58;
      _os_log_impl(&dword_255661000, v51, v52, "Deleting directory at: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x259C3F520](v54, -1, -1);
      MEMORY[0x259C3F520](v53, -1, -1);
    }

    else
    {

      v113(v41, v44);
    }

    v59 = [v107 defaultManager];
    v40 = v111;
    v60 = sub_25574EE80();
    v115[0] = 0;
    v61 = [v59 removeItemAtURL:v60 error:v115];

    if (v61)
    {
      v48 = v115[0];
      v113(v40, v44);
    }

    else
    {
      v62 = v115[0];
      v63 = v44;
      v64 = sub_25574ED90();

      swift_willThrow();
      v65 = v104;
      (v110)(v104, v40, v63);
      v66 = v64;
      v67 = sub_25574F2A0();
      v68 = sub_255750780();

      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        v102 = v67;
        v70 = v65;
        v103 = swift_slowAlloc();
        v115[0] = v103;
        *v69 = v99;
        sub_255725B90();
        v71 = sub_255750E60();
        v73 = v72;
        v74 = v113;
        v113(v70, v63);
        v75 = sub_2556E474C(v71, v73, v115);
        v39 = v100;

        *(v69 + 4) = v75;
        *(v69 + 12) = 2112;
        v76 = v64;
        v77 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 14) = v77;
        v79 = v101;
        v78 = v102;
        *v101 = v77;
        _os_log_impl(&dword_255661000, v78, v68, "Error deleting directory at: %s. Error: %@", v69, 0x16u);
        sub_255674B20(v79, &qword_27F7BEC80, &qword_255757E90);
        MEMORY[0x259C3F520](v79, -1, -1);
        v80 = v103;
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x259C3F520](v80, -1, -1);
        MEMORY[0x259C3F520](v69, -1, -1);

        v40 = v111;
        v74(v111, v63);
      }

      else
      {

        v81 = v113;
        v113(v65, v63);
        v40 = v111;
        v81(v111, v63);
      }

      v44 = v63;
      v41 = v112;
    }

    v43 += v108;
    --v46;
    v45 = v110;
    if (!v46)
    {
      break;
    }

    (v110)(v40, v43, v44);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v82 = v97;
  sub_2556645E8(v97, v39);
  v83 = sub_25574F2A0();
  v84 = sub_2557507A0();
  if (os_log_type_enabled(v83, v84))
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v115[0] = v86;
    *v85 = v105;
    v87 = *(v94 + 20);
    sub_255725B90();
    v88 = sub_255750E60();
    v90 = v89;
    sub_255725BE8(v39, type metadata accessor for FileStoreConfiguration);
    v91 = sub_2556E474C(v88, v90, v115);
    v82 = v97;

    *(v85 + 4) = v91;
    _os_log_impl(&dword_255661000, v83, v84, "Recreating directories at: %s", v85, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x259C3F520](v86, -1, -1);
    MEMORY[0x259C3F520](v85, -1, -1);
  }

  else
  {

    sub_255725BE8(v39, type metadata accessor for FileStoreConfiguration);
  }

  LOBYTE(v115[0]) = *(v82 + v95);
  sub_255665410(v115);
  v92 = *MEMORY[0x277D85DE8];
}

uint64_t FileStoreConfiguration.getAttachmentURL(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21[2] = a1;
  v21[3] = a2;
  v21[1] = a3;
  v4 = sub_25574EE20();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25574EF10();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v21 - v15;
  v17 = type metadata accessor for FileStoreConfiguration();
  if (*(v3 + *(v17 + 24)))
  {
    v21[0] = *(v17 + 20);
    v18 = *(v5 + 104);
    v18(v8, *MEMORY[0x277CC91D8], v4);
    sub_255663E98();
    sub_25574EEF0();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    sub_25574EE50();
    v18 = *(v5 + 104);
  }

  v21[4] = 0x656D686361747441;
  v21[5] = 0xEB0000000073746ELL;
  v18(v8, *MEMORY[0x277CC91C0], v4);
  sub_255663E98();
  sub_25574EF00();
  (*(v5 + 8))(v8, v4);
  v19 = *(v10 + 8);
  v19(v14, v9);
  sub_25574EEA0();
  return (v19)(v16, v9);
}

uint64_t URL.fileSize.getter()
{
  v0 = sub_25574ED80();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFB78, &unk_25575DF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255755060;
  v6 = *MEMORY[0x277CBE838];
  *(inited + 32) = *MEMORY[0x277CBE838];
  v7 = v6;
  sub_255668820(inited, &qword_27F7BFE30, &qword_25575E028);
  swift_setDeallocating();
  sub_255725BE8(inited + 32, type metadata accessor for URLResourceKey);
  sub_25574EE40();

  v8 = sub_25574ED60();
  (*(v1 + 8))(v4, v0);
  return v8;
}

uint64_t FileStoreConfiguration.homeDirectoryURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FileStoreConfiguration() + 20);
  v4 = sub_25574EF10();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void static FileStoreConfiguration.Location.default.getter(char *a1@<X8>)
{
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A == 1)
  {
    if (qword_27F7BD7C8 != -1)
    {
      swift_once();
    }

    v2 = qword_27F7BF9F8;
    v3 = sub_255750180();
    v4 = [v2 BOOLForKey_];

    if (v4)
    {
      v5 = 0;
    }

    else
    {
      v6 = sub_255750180();
      v7 = [v2 BOOLForKey_];

      if (v7)
      {
        v5 = 1;
      }

      else
      {
        v5 = 2;
      }
    }
  }

  else
  {
    v5 = 2;
  }

  *a1 = v5;
}

BOOL static FileStoreConfiguration.groupContainerExists(for:)(char *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE270, &unk_25575A3F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9[-v4];
  v10 = *a1;
  sub_2556651A8(&v10, &v9[-v4]);
  v6 = sub_25574EF10();
  v7 = (*(*(v6 - 8) + 48))(v5, 1, v6) != 1;
  sub_255674B20(v5, &qword_27F7BE270, &unk_25575A3F0);
  return v7;
}

uint64_t FileStoreConfiguration.temporaryDirectoryURL.getter()
{
  v1 = sub_25574EE20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FileStoreConfiguration();
  if (*(v0 + *(v6 + 24)))
  {
    v7 = *(v6 + 20);
    (*(v2 + 104))(v5, *MEMORY[0x277CC91D8], v1);
    sub_255663E98();
    sub_25574EEF0();
    return (*(v2 + 8))(v5, v1);
  }

  else
  {

    return sub_25574EE70();
  }
}

uint64_t FileStoreConfiguration.Location.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

uint64_t FileStoreConfiguration.getAttachmentURL(from:isDirectory:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a1;
  v25 = a2;
  v22[2] = a4;
  v5 = sub_25574EE20();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25574EF10();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v22 - v16;
  v18 = type metadata accessor for FileStoreConfiguration();
  if (*(v4 + *(v18 + 24)))
  {
    v22[1] = *(v18 + 20);
    v19 = *(v6 + 104);
    v19(v9, *MEMORY[0x277CC91D8], v5);
    sub_255663E98();
    sub_25574EEF0();
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    sub_25574EE50();
    v19 = *(v6 + 104);
  }

  v26 = 0x656D686361747441;
  v27 = 0xEB0000000073746ELL;
  v19(v9, *MEMORY[0x277CC91C0], v5);
  sub_255663E98();
  sub_25574EF00();
  (*(v6 + 8))(v9, v5);
  v20 = *(v11 + 8);
  v20(v15, v10);
  sub_25574EE90();
  return (v20)(v17, v10);
}

unint64_t sub_255725B90()
{
  result = qword_27F7BFE10;
  if (!qword_27F7BFE10)
  {
    sub_25574EF10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE10);
  }

  return result;
}

uint64_t sub_255725BE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_255725C4C()
{
  result = qword_27F7BFE18;
  if (!qword_27F7BFE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE18);
  }

  return result;
}

void sub_255725CFC(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_255750A30())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE40, &qword_25575E038);
      v3 = sub_255750AE0();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_255750A30();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v39 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v37 = v1;
    while (1)
    {
      v8 = MEMORY[0x259C3E830](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_255750930();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        type metadata accessor for JournalEntryAssetFileAttachmentMO();
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_255750940();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v37;
            v5 = v39;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v37;
        v5 = v39;
        if (v7 == v39)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v38 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v38)
    {
      v24 = *(v3 + 40);
      v25 = *(v1 + 32 + 8 * v23);
      v26 = sub_255750930();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        type metadata accessor for JournalEntryAssetFileAttachmentMO();
        while (1)
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_255750940();

          if (v34)
          {
            break;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v29) = v31 | v30;
        *(*(v3 + 48) + 8 * v28) = v25;
        v35 = *(v3 + 16);
        v9 = __OFADD__(v35, 1);
        v36 = v35 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v36;
      }

      if (++v23 == v39)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_255726000(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = sub_255750A30();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v7 = sub_255750AE0();
      v8 = v5 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = sub_255750A30();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = MEMORY[0x277D84FA0];
  v8 = v5 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = v7 + 56;
  v48 = v9;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    v44 = v5;
    while (1)
    {
      v15 = MEMORY[0x259C3E830](v14, v5);
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = *(v7 + 40);
      v19 = sub_255750930();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      v23 = *(v13 + 8 * (v21 >> 6));
      v24 = 1 << v21;
      if (((1 << v21) & v23) != 0)
      {
        v25 = ~v20;
        sub_255669A88(0, a4, a5);
        while (1)
        {
          v26 = *(*(v7 + 48) + 8 * v21);
          v27 = sub_255750940();

          if (v27)
          {
            break;
          }

          v21 = (v21 + 1) & v25;
          v22 = v21 >> 6;
          v23 = *(v13 + 8 * (v21 >> 6));
          v24 = 1 << v21;
          if (((1 << v21) & v23) == 0)
          {
            v9 = v48;
            v5 = v44;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v48;
        v5 = v44;
        if (v14 == v48)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v13 + 8 * v22) = v24 | v23;
        *(*(v7 + 48) + 8 * v21) = v17;
        v28 = *(v7 + 16);
        v16 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        *(v7 + 16) = v29;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v30 = 0;
    v45 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v30 != v45)
    {
      v31 = *(v7 + 40);
      v32 = *(v5 + 32 + 8 * v30);
      v33 = sub_255750930();
      v34 = -1 << *(v7 + 32);
      v35 = v33 & ~v34;
      v36 = v35 >> 6;
      v37 = *(v13 + 8 * (v35 >> 6));
      v38 = 1 << v35;
      if (((1 << v35) & v37) != 0)
      {
        v39 = ~v34;
        sub_255669A88(0, a4, a5);
        while (1)
        {
          v40 = *(*(v7 + 48) + 8 * v35);
          v41 = sub_255750940();

          if (v41)
          {
            break;
          }

          v35 = (v35 + 1) & v39;
          v36 = v35 >> 6;
          v37 = *(v13 + 8 * (v35 >> 6));
          v38 = 1 << v35;
          if (((1 << v35) & v37) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v13 + 8 * v36) = v38 | v37;
        *(*(v7 + 48) + 8 * v35) = v32;
        v42 = *(v7 + 16);
        v16 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        *(v7 + 16) = v43;
      }

      if (++v30 == v48)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

BOOL static Runtime.Environment.useCloudKitStagingEnvironment.getter()
{
  if (qword_27F7BD810 != -1)
  {
    swift_once();
  }

  if (byte_27F7BFE4A != 1)
  {
    return 0;
  }

  if (qword_27F7BD7C8 != -1)
  {
    swift_once();
  }

  v0 = qword_27F7BF9F8;
  v1 = sub_255750180();
  LOBYTE(v0) = [v0 BOOLForKey_];

  if (v0)
  {
    return 1;
  }

  static Runtime.Environment.current.getter(&v3);
  return v3 != 0;
}

uint64_t sub_2557263EC()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_255750080();
  if (*(v2 + 16))
  {
    sub_2556632FC(0xD00000000000001BLL, 0x8000000255753860);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  byte_27F7BFE49 = v4 & 1;
  return result;
}

id static Runtime.hasAppProtectionLock.getter()
{
  v0 = objc_opt_self();
  v1 = sub_255750180();
  v2 = [v0 applicationWithBundleIdentifier_];

  v3 = [v2 isLocked];
  return v3;
}

uint64_t Runtime.Environment.hashValue.getter()
{
  v1 = *v0;
  sub_255750F80();
  MEMORY[0x259C3EC60](v1);
  return sub_255750FD0();
}

unint64_t sub_2557265F4()
{
  result = qword_27F7BFE50;
  if (!qword_27F7BFE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE50);
  }

  return result;
}

uint64_t AudioAssetMetadata.recordingDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AudioAssetMetadata(0) + 24);

  return sub_2556700F4(v3, a1);
}

uint64_t AudioAssetMetadata.init(duration:intensities:recordingDate:transcriptSegments:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  v9 = type metadata accessor for AudioAssetMetadata(0);
  result = sub_2556719B8(a4, a6 + *(v9 + 24));
  *(a6 + *(v9 + 28)) = a5;
  return result;
}

uint64_t sub_255726700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255727784(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255726728(uint64_t a1)
{
  v2 = sub_25567D4A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255726764(uint64_t a1)
{
  v2 = sub_25567D4A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AudioAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE58, &qword_25575E0D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25567D4A8();
  sub_255750FF0();
  v11 = *v3;
  v12 = *(v3 + 8);
  LOBYTE(v17) = 0;
  sub_255750DD0();
  if (!v2)
  {
    v17 = v3[2];
    HIBYTE(v16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE68, &qword_25575E0E0);
    sub_25567D698(&qword_27F7BFE70, sub_255726A74);
    sub_255750DF0();
    v13 = type metadata accessor for AudioAssetMetadata(0);
    v14 = *(v13 + 24);
    LOBYTE(v17) = 2;
    sub_25574F020();
    sub_2556718E0(&qword_27F7BDC18, MEMORY[0x277CC9578]);
    sub_255750DF0();
    v17 = *(v3 + *(v13 + 28));
    HIBYTE(v16) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFE80, &qword_25575E0E8);
    sub_25567D8D8(&qword_27F7BFE88, &qword_27F7BFE90);
    sub_255750DF0();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_255726A74()
{
  result = qword_27F7BFE78;
  if (!qword_27F7BFE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFE78);
  }

  return result;
}

uint64_t TranscriptViewModelSegment.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25574F0D0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t TranscriptViewModelSegment.text.getter()
{
  v1 = (v0 + *(type metadata accessor for TranscriptViewModelSegment(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

int *TranscriptViewModelSegment.init(text:timestamp:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  sub_25574F0C0();
  result = type metadata accessor for TranscriptViewModelSegment(0);
  v11 = (a3 + result[5]);
  *v11 = a1;
  v11[1] = a2;
  *(a3 + result[6]) = a4;
  *(a3 + result[7]) = a5;
  return result;
}

uint64_t TranscriptViewModelSegment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v35 - v5;
  v6 = sub_25574F0D0();
  v39 = *(v6 - 8);
  v40 = v6;
  v7 = *(v39 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFEC0, &qword_25575E100);
  v42 = *(v10 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = type metadata accessor for TranscriptViewModelSegment(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25572712C();
  v19 = v43;
  sub_255750FE0();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v35 = v9;
  v36 = v14;
  v43 = a1;
  v37 = v17;
  v47 = 0;
  sub_2556718E0(&qword_27F7BE658, MEMORY[0x277CC95F0]);
  v21 = v40;
  v20 = v41;
  sub_255750D40();
  v23 = v39;
  v24 = *(v39 + 48);
  if (v24(v20, 1, v21) == 1)
  {
    v25 = v35;
    sub_25574F0C0();
    v26 = v25;
    if (v24(v20, 1, v21) != 1)
    {
      sub_255674B20(v20, &unk_27F7BED20, &unk_2557551D0);
    }
  }

  else
  {
    v26 = v35;
    (*(v23 + 32))(v35, v20, v21);
  }

  v27 = v37;
  (*(v39 + 32))(v37, v26, v21);
  v46 = 1;
  v28 = sub_255750D50();
  v29 = v36;
  v30 = (v27 + *(v36 + 20));
  *v30 = v28;
  v30[1] = v31;
  v45 = 2;
  sub_255750D60();
  *(v27 + *(v29 + 24)) = v32;
  v44 = 3;
  sub_255750D60();
  v34 = v33;
  (*(v42 + 8))(v13, v10);
  *(v27 + *(v29 + 28)) = v34;
  sub_25567D974(v27, v38, type metadata accessor for TranscriptViewModelSegment);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return sub_25567DA24(v27, type metadata accessor for TranscriptViewModelSegment);
}

unint64_t sub_25572712C()
{
  result = qword_27F7BFEC8;
  if (!qword_27F7BFEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFEC8);
  }

  return result;
}

uint64_t sub_255727184()
{
  v1 = 25705;
  v2 = 0x6D617473656D6974;
  if (*v0 != 2)
  {
    v2 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v1 = 1954047348;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2557271F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2557278FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255727218(uint64_t a1)
{
  v2 = sub_25572712C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255727254(uint64_t a1)
{
  v2 = sub_25572712C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TranscriptViewModelSegment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BFED0, &qword_25575E108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25572712C();
  sub_255750FF0();
  v18[15] = 0;
  sub_25574F0D0();
  sub_2556718E0(&qword_27F7BE648, MEMORY[0x277CC95F0]);
  sub_255750E30();
  if (!v2)
  {
    v11 = type metadata accessor for TranscriptViewModelSegment(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v18[14] = 1;
    sub_255750E00();
    v15 = *(v3 + v11[6]);
    v18[13] = 2;
    sub_255750E10();
    v16 = *(v3 + v11[7]);
    v18[12] = 3;
    sub_255750E10();
  }

  return (*(v6 + 8))(v9, v5);
}

BOOL _s13JournalShared26TranscriptViewModelSegmentV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (sub_25574F070() & 1) != 0 && ((v4 = type metadata accessor for TranscriptViewModelSegment(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_255750EB0()) && *(a1 + v4[6]) == *(a2 + v4[6])))
  {
    return *(a1 + v4[7]) == *(a2 + v4[7]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255727578(uint64_t a1)
{
  *(a1 + 8) = sub_2556718E0(&qword_27F7BFED8, type metadata accessor for AudioAssetMetadata);
  result = sub_2556718E0(&qword_27F7BFEE0, type metadata accessor for AudioAssetMetadata);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255727628()
{
  result = qword_27F7BFF18;
  if (!qword_27F7BFF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF18);
  }

  return result;
}

unint64_t sub_255727680()
{
  result = qword_27F7BFF20;
  if (!qword_27F7BFF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF20);
  }

  return result;
}

unint64_t sub_2557276D8()
{
  result = qword_27F7BFF28;
  if (!qword_27F7BFF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF28);
  }

  return result;
}

unint64_t sub_255727730()
{
  result = qword_27F7BFF30;
  if (!qword_27F7BFF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7BFF30);
  }

  return result;
}

uint64_t sub_255727784(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000;
  if (v4 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7469736E65746E69 && a2 == 0xEB00000000736569 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6964726F636572 && a2 == 0xED00006574614467 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000255753880 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_2557278FC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_255750EB0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_255750EB0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_255750EB0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_255750EB0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t JournalMO.SortCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0;
  }

  else
  {
    return 4294967286;
  }
}

Swift::Void __swiftcall JournalMO.setTombstoneAttributes()()
{
  [v0 setUserDeleted_];
  [v0 setMergeableAttributes_];

  [v0 setCreatedDate_];
}

uint64_t sub_255727AD4@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 createdDate];
  if (v3)
  {
    v4 = v3;
    sub_25574EFF0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_25574F020();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_255727B78(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BEB40, &unk_255754E40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_255663294(a1, &v12 - v6, &qword_27F7BEB40, &unk_255754E40);
  v8 = *a2;
  v9 = sub_25574F020();
  v10 = *(v9 - 8);
  v11 = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    v11 = sub_25574EFC0();
    (*(v10 + 8))(v7, v9);
  }

  [v8 setCreatedDate_];
}

id static JournalMO.createTombstone(id:context:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JournalMO();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v4 = sub_25574F050();
  [v3 setId_];

  [v3 setUserDeleted_];
  [v3 setMergeableAttributes_];
  [v3 setCreatedDate_];
  return v3;
}

id static JournalMO.reserve(id:context:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for JournalMO();
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v4 = sub_25574F050();
  [v3 setId_];

  return v3;
}

void sub_255727DC8(NSObject *a1)
{
  v3 = sub_25574F0D0();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755060;
  v9 = sub_25574F050();
  *(v8 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v8 + 64) = sub_2556E8720();
  *(v8 + 32) = v9;
  v10 = v7;
  v11 = sub_255750750();
  [v7 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  v12 = sub_2557508C0();
  if (v1)
  {
  }

  else
  {
    v13 = v12;
    v14 = (v12 >> 62);
    if (v12 >> 62)
    {
      v15 = sub_255750A30();
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v33;
    v17 = v3;
    v18 = v6;
    if (v15 <= 1)
    {
      goto LABEL_15;
    }

    v6 = v14;
    if (qword_27F7BD5B8 != -1)
    {
      goto LABEL_27;
    }

    while (1)
    {
      v19 = sub_25574F2C0();
      __swift_project_value_buffer(v19, qword_27F7C04B0);
      (*(v16 + 16))(v18, a1, v17);

      a1 = sub_25574F2A0();
      v20 = sub_255750780();
      if (os_log_type_enabled(a1, v20))
      {
        v32 = v10;
        v21 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v34 = v31;
        *v21 = 134218498;
        v16 = v20;
        v22 = v6 ? sub_255750A30() : *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v21 + 4) = v22;

        *(v21 + 12) = 2080;
        *(v21 + 14) = sub_2556E474C(0x4D6C616E72756F4ALL, 0xE90000000000004FLL, &v34);
        *(v21 + 22) = 2080;
        sub_25572D870(&qword_27F7BF200, MEMORY[0x277CC95F0]);
        v24 = sub_255750E60();
        v25 = v17;
        v17 = v26;
        (*(v33 + 8))(v18, v25);
        v27 = sub_2556E474C(v24, v17, &v34);

        *(v21 + 24) = v27;
        _os_log_impl(&dword_255661000, a1, v16, "Found %ld %s objects with id %s", v21, 0x20u);
        v28 = v31;
        swift_arrayDestroy();
        MEMORY[0x259C3F520](v28, -1, -1);
        MEMORY[0x259C3F520](v21, -1, -1);

        v10 = v32;
      }

      else
      {

        v23 = *(v16 + 8);
        v16 += 8;
        v23(v18, v17);
      }

      v14 = v6;
LABEL_15:
      if (v14)
      {
        if (!sub_255750A30())
        {
LABEL_23:

          return;
        }
      }

      else if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v29 = *(v13 + 32);
        swift_unknownObjectRetain();
        goto LABEL_20;
      }

      __break(1u);
LABEL_27:
      swift_once();
    }

    MEMORY[0x259C3E830](0, v13);
LABEL_20:

    type metadata accessor for JournalMO();
    if (!swift_dynamicCastClass())
    {
      swift_unknownObjectRelease();
    }
  }
}

void sub_2557282C4(uint64_t a1)
{
  v2 = sub_25574F0D0();
  v36 = *(v2 - 8);
  v3 = *(v36 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for JournalMO();
  v7 = [swift_getObjCClassFromMetadata() fetchRequest];
  sub_255669A88(0, &qword_27F7BDD58, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED30, qword_255757F10);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_255755060;
  v9 = sub_25574F050();
  *(v8 + 56) = sub_255669A88(0, &unk_27F7BF1F0, 0x277CCAD78);
  *(v8 + 64) = sub_2556E8720();
  *(v8 + 32) = v9;
  v10 = sub_255750750();
  [v7 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDD90, &unk_2557591E0);
  v11 = v37;
  v12 = sub_2557508C0();
  if (v11)
  {

    return;
  }

  v13 = v12;
  v34 = 0;
  v35 = v7;
  v33 = v5;
  v37 = v6;
  v14 = v12 >> 62;
  if (v12 >> 62)
  {
    v15 = sub_255750A30();
  }

  else
  {
    v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = v2;
  v17 = v36;
  if (v15 <= 1)
  {
    goto LABEL_11;
  }

  if (qword_27F7BD5B8 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v18 = sub_25574F2C0();
    __swift_project_value_buffer(v18, qword_27F7C04B0);
    v19 = v33;
    (*(v17 + 16))(v33, a1, v16);

    v20 = sub_25574F2A0();
    a1 = sub_255750780();
    if (os_log_type_enabled(v20, a1))
    {
      v17 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v38 = v32;
      *v17 = 134218498;
      if (v14)
      {
        v21 = sub_255750A30();
      }

      else
      {
        v21 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25 = v33;
      *(v17 + 4) = v21;

      *(v17 + 12) = 2080;
      *(v17 + 14) = sub_2556E474C(0x4D6C616E72756F4ALL, 0xE90000000000004FLL, &v38);
      *(v17 + 22) = 2080;
      sub_25572D870(&qword_27F7BF200, MEMORY[0x277CC95F0]);
      v26 = sub_255750E60();
      v28 = v27;
      (*(v36 + 8))(v25, v2);
      v29 = sub_2556E474C(v26, v28, &v38);

      *(v17 + 24) = v29;
      _os_log_impl(&dword_255661000, v20, a1, "Found %ld %s objects with id %s", v17, 0x20u);
      v30 = v32;
      swift_arrayDestroy();
      MEMORY[0x259C3F520](v30, -1, -1);
      MEMORY[0x259C3F520](v17, -1, -1);

      v23 = v13 & 0xFFFFFFFFFFFFFF8;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    else
    {

      v22 = *(v17 + 8);
      v17 += 8;
      v22(v19, v16);
LABEL_11:
      v23 = v13 & 0xFFFFFFFFFFFFFF8;
      if (!v14)
      {
LABEL_12:
        v16 = v37;
        if (!*(v23 + 16))
        {
          goto LABEL_21;
        }

        goto LABEL_13;
      }
    }

    v31 = sub_255750A30();
    v16 = v37;
    if (!v31)
    {
LABEL_21:

      return;
    }

LABEL_13:
    if ((v13 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v24 = *(v13 + 32);
      swift_unknownObjectRetain();
      goto LABEL_16;
    }

    __break(1u);
LABEL_26:
    swift_once();
  }

  MEMORY[0x259C3E830](0, v13);
LABEL_16:

  if (!swift_dynamicCastClass())
  {
    swift_unknownObjectRelease();
  }
}

uint64_t JournalMO.title.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v12 - v4;
  v6 = [v1 mergeableAttributes];
  if (v6)
  {
    v7 = v6;
    sub_25572D808(v6 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v5, type metadata accessor for MergeableJournalAttributes);

    v8 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  }

  else
  {
    v8 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  type metadata accessor for MergeableJournalAttributes(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8);
  v10 = 0;
  if (!v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
    sub_25574F360();
    v10 = v12;
  }

  sub_255674B20(v5, &qword_27F7BE7D8, &qword_255757E98);
  return v10;
}

uint64_t JournalMO.color.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BE7D8, &qword_255757E98);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v14 - v5;
  v7 = [v1 mergeableAttributes];
  if (v7)
  {
    v8 = v7;
    sub_25572D808(v7 + OBJC_IVAR___WrappedMergeableJournalAttributes_value, v6, type metadata accessor for MergeableJournalAttributes);

    v9 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  }

  else
  {
    v9 = type metadata accessor for MergeableJournalAttributes(0);
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  }

  type metadata accessor for MergeableJournalAttributes(0);
  v10 = 1;
  if (!(*(*(v9 - 8) + 48))(v6, 1, v9))
  {
    v11 = *(v9 + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
    sub_25574F360();
    v10 = 0;
  }

  sub_255674B20(v6, &qword_27F7BE7D8, &qword_255757E98);
  v12 = type metadata accessor for MergeableColor(0);
  return (*(*(v12 - 8) + 56))(a1, v10, 1, v12);
}

uint64_t sub_255728B88()
{
  v0 = sub_25574F2C0();
  __swift_allocate_value_buffer(v0, qword_27F7BFF50);
  v1 = __swift_project_value_buffer(v0, qword_27F7BFF50);
  if (qword_27F7BD5E8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_27F7C0540);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_255728C50()
{
  v0 = sub_25574F0D0();
  __swift_allocate_value_buffer(v0, qword_27F7BFF68);
  __swift_project_value_buffer(v0, qword_27F7BFF68);
  return sub_25574F090();
}

uint64_t static JournalMO.defaultJournalID.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F7BD820 != -1)
  {
    swift_once();
  }

  v2 = sub_25574F0D0();
  v3 = __swift_project_value_buffer(v2, qword_27F7BFF68);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t JournalMO.SortCategory.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (result == 65526)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_255728D90()
{
  v1 = *v0;
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

uint64_t sub_255728E18()
{
  v1 = *v0;
  sub_255750F80();
  sub_255750FB0();
  return sub_255750FD0();
}

_WORD *sub_255728E64@<X0>(_WORD *result@<X0>, char *a2@<X8>)
{
  if (*result)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*result == 65526)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_255728E88(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = -10;
  }

  *a1 = v2;
}

id static JournalMO.create(context:id:)(uint64_t a1)
{
  type metadata accessor for JournalMO();
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext_];
  v3 = sub_25574F050();
  [v2 setId_];

  return v2;
}

id static JournalMO.create(context:title:color:icon:id:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v50 = a1;
  v51 = a6;
  v40 = a5;
  v46 = a2;
  v47 = a3;
  v7 = sub_25574F860();
  v48 = *(v7 - 8);
  v49 = v7;
  v8 = *(v48 + 64);
  MEMORY[0x28223BE20](v7);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for MergeableJournalAttributes.Icon(0);
  v10 = *(*(v43 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v43);
  v42 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (&v38 - v14);
  MEMORY[0x28223BE20](v13);
  v17 = &v38 - v16;
  v44 = &v38 - v16;
  v39 = type metadata accessor for MergeableColor(0);
  v18 = *(*(v39 - 1) + 64);
  v19 = MEMORY[0x28223BE20](v39);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v38 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - v25;
  v41 = &v38 - v25;
  v27 = type metadata accessor for MergeableJournalAttributes(0);
  v28 = (v27 - 8);
  v29 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v31 = &v38 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25572D808(a4, v26, type metadata accessor for MergeableColor);
  sub_25572D808(v40, v17, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25574F850();
  v52 = 0;
  v53 = 0xE000000000000000;
  sub_25574F340();
  v40 = v28[7];
  static MergeableColor.random.getter(v24);
  sub_25572D808(v24, v21, type metadata accessor for MergeableColor);
  sub_25572D870(&unk_27F7BFFA0, type metadata accessor for MergeableColor);
  sub_25574F340();
  v39 = type metadata accessor for MergeableColor;
  sub_25572D8B8(v24, type metadata accessor for MergeableColor);
  v38 = v28[8];
  *v15 = 0x672E657261757173;
  v15[1] = 0xEF3378332E646972;
  swift_storeEnumTagMultiPayload();
  v32 = v42;
  sub_25572D808(v15, v42, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D870(&qword_27F7BDE18, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25574F340();
  sub_25572D8B8(v15, type metadata accessor for MergeableJournalAttributes.Icon);
  v43 = v28[9];
  sub_25574F850();
  v52 = v46;
  v53 = v47;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFF90, &qword_2557551F0);
  sub_25574F370();
  v33 = v41;
  sub_25572D808(v41, v24, type metadata accessor for MergeableColor);
  sub_25572D808(v24, v21, type metadata accessor for MergeableColor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7BDDC8, &qword_2557551F8);
  sub_25574F370();
  v34 = v39;
  sub_25572D8B8(v24, v39);
  v35 = v44;
  sub_25572D808(v44, v15, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D808(v15, v32, type metadata accessor for MergeableJournalAttributes.Icon);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BFFB0, &unk_255755200);
  sub_25574F370();
  sub_25572D8B8(v15, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D8B8(v35, type metadata accessor for MergeableJournalAttributes.Icon);
  sub_25572D8B8(v33, v34);
  (*(v48 + 40))(&v31[v43], v45, v49);
  v36 = _s13JournalShared0A2MOC6create7context2id19mergeableAttributesACSo22NSManagedObjectContextC_10Foundation4UUIDVAA09MergeableaH0VtFZ_0(v50, v51, v31);
  sub_25572D8B8(v31, type metadata accessor for MergeableJournalAttributes);
  return v36;
}

void static JournalMO.delete(_:moveEntriesToJournalID:context:)(void *a1, uint64_t a2)
{
  v93 = a1;
  v3 = sub_25574F020();
  v91 = *(v3 - 1);
  v92 = v3;
  v4 = *(v91 + 64);
  MEMORY[0x28223BE20](v3);
  v90 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F7BED20, &unk_2557551D0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  v14 = sub_25574F0D0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v89 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v77 - v19;
  v22 = v21;
  sub_255663294(a2, v13, &unk_27F7BED20, &unk_2557551D0);
  if ((*(v15 + 48))(v13, 1, v22) == 1)
  {
    sub_255674B20(v13, &unk_27F7BED20, &unk_2557551D0);
LABEL_3:
    v23 = v93;
LABEL_4:
    v24 = [v23 entries];
    if (v24)
    {
      v25 = v24;
      v95 = 0;
      type metadata accessor for JournalEntryMO();
      sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO);
      sub_255750570();

      if (v95)
      {
        JournalMO.removeEntries(_:)(v95);
      }
    }

    [v23 setUserDeleted_];
    [v23 setMergeableAttributes_];
    [v23 setCreatedDate_];
    v26 = v90;
    sub_25574F010();
    v27 = sub_25574EFC0();
    (*(v91 + 8))(v26, v92);
    [v23 setUpdatedDate_];

    [v23 setIsUploadedToCloud_];
    return;
  }

  (*(v15 + 32))(v20, v13, v22);
  sub_2557282C4(v20);
  if (!v28)
  {
    (*(v15 + 8))(v20, v22);
    goto LABEL_3;
  }

  v87 = v28;
  v37 = v20;
  v23 = v93;
  v38 = [v93 entries];
  if (!v38)
  {
    (*(v15 + 8))(v37, v22);

    goto LABEL_4;
  }

  v39 = v38;
  v96[0] = 0;
  v40 = type metadata accessor for JournalEntryMO();
  sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO);
  sub_255750570();

  v41 = v96[0];
  if (!v96[0])
  {

    (*(v15 + 8))(v37, v22);
    goto LABEL_4;
  }

  v80 = v37;
  v85 = v22;
  if ((v96[0] & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    sub_2557505C0();
    v43 = v96[0];
    v83 = v96[1];
    v44 = v96[2];
    v45 = v96[3];
    v46 = v96[4];
  }

  else
  {
    v53 = -1 << *(v96[0] + 32);
    v54 = *(v96[0] + 56);
    v83 = v96[0] + 56;
    v44 = ~v53;
    v55 = -v53;
    if (v55 < 64)
    {
      v56 = ~(-1 << v55);
    }

    else
    {
      v56 = -1;
    }

    v46 = v56 & v54;

    v45 = 0;
    v43 = v41;
  }

  v79 = v44;
  v57 = (v44 + 64) >> 6;
  v84 = (v15 + 8);
  *&v42 = 138412290;
  v81 = v42;
  v58 = v83;
  v86 = v43;
  v82 = v40;
  while (v43 < 0)
  {
    v63 = sub_255750A60();
    if (!v63 || (v94 = v63, swift_dynamicCast(), v10 = v95, v61 = v45, v62 = v46, !v95))
    {
LABEL_45:

      sub_25568B1C8();
      (*v84)(v80, v85);

      goto LABEL_4;
    }

LABEL_39:
    v64 = v87;
    v65 = [v87 id];
    v88 = v62;
    if (v65)
    {
      v66 = v89;
      v67 = v65;
      sub_25574F080();

      v44 = v10;
      sub_2556BDE00();
      [v10 addJournalsObject_];
      (*v84)(v66, v85);
    }

    else
    {
      if (qword_27F7BD718 != -1)
      {
        swift_once();
      }

      v68 = sub_25574F2C0();
      __swift_project_value_buffer(v68, qword_27F7BE800);
      v69 = v64;
      v44 = sub_25574F2A0();
      v70 = sub_255750780();

      if (os_log_type_enabled(v44, v70))
      {
        v71 = v64;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v78 = v41;
        v74 = v73;
        *v72 = v81;
        *(v72 + 4) = v69;
        *v73 = v71;
        v75 = v69;
        _os_log_impl(&dword_255661000, v44, v70, "Could not add entry to journal %@ as it's missing an id", v72, 0xCu);
        sub_255674B20(v74, &qword_27F7BEC80, &qword_255757E90);
        v76 = v74;
        v41 = v78;
        MEMORY[0x259C3F520](v76, -1, -1);
        MEMORY[0x259C3F520](v72, -1, -1);
      }

      v10 = v44;
      v58 = v83;
    }

    v45 = v61;
    v46 = v88;
    v43 = v86;
  }

  v59 = v45;
  v60 = v46;
  v61 = v45;
  if (v46)
  {
LABEL_35:
    v62 = (v60 - 1) & v60;
    v10 = *(*(v43 + 48) + ((v61 << 9) | (8 * __clz(__rbit64(v60)))));
    if (!v10)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  while (1)
  {
    v61 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v61 >= v57)
    {
      goto LABEL_45;
    }

    v60 = *(v58 + 8 * v61);
    ++v59;
    if (v60)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
  swift_once();
  v29 = sub_25574F2C0();
  __swift_project_value_buffer(v29, qword_27F7BFF50);
  sub_255663294(v44, v46, &unk_27F7BED20, &unk_2557551D0);
  v30 = v61;
  v31 = sub_25574F2A0();
  v32 = sub_255750780();

  if (os_log_type_enabled(v31, v32))
  {
    v90 = v45;
    LODWORD(v93) = v32;
    v33 = v57;
    v34 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v96[0] = v92;
    *v34 = 136315394;
    sub_255663294(v46, v10, &unk_27F7BED20, &unk_2557551D0);
    if (v41(v10, 1, v33) == 1)
    {
      sub_255674B20(v10, &unk_27F7BED20, &unk_2557551D0);
      v35 = 0xE300000000000000;
      v36 = 4271950;
    }

    else
    {
      v36 = sub_25574F040();
      v35 = v47;
      (v90)(v10, v33);
    }

    sub_255674B20(v46, &unk_27F7BED20, &unk_2557551D0);
    v48 = sub_2556E474C(v36, v35, v96);

    *(v34 + 4) = v48;
    *(v34 + 12) = 2112;
    v49 = v61;
    v50 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 14) = v50;
    v51 = v91;
    *v91 = v50;
    _os_log_impl(&dword_255661000, v31, v93, "Couldn't fetch journal for ID %s, %@", v34, 0x16u);
    sub_255674B20(v51, &qword_27F7BEC80, &qword_255757E90);
    MEMORY[0x259C3F520](v51, -1, -1);
    v52 = v92;
    __swift_destroy_boxed_opaque_existential_1(v92);
    MEMORY[0x259C3F520](v52, -1, -1);
    MEMORY[0x259C3F520](v34, -1, -1);
  }

  else
  {

    sub_255674B20(v46, &unk_27F7BED20, &unk_2557551D0);
  }
}

id JournalMO.journalEntries.getter()
{
  result = [v0 entries];
  if (result)
  {
    v2 = result;
    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO);
    sub_255750570();

    return 0;
  }

  return result;
}

void sub_255729FC0(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_2557509F0();
    type metadata accessor for JournalEntryMO();
    sub_25572D870(&unk_27F7BFFC0, type metadata accessor for JournalEntryMO);
    sub_2557505C0();
    v5 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
    v9 = v24;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v7 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v8 = 0;
  }

  v19 = v5;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v13 = v8;
  v14 = v9;
  v15 = v8;
  if (v9)
  {
LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v17)
    {
      do
      {
        v25 = v17;
        a1(&v25);

        if (v4)
        {
          break;
        }

        v8 = v15;
        v9 = v16;
        v5 = v19;
        if ((v19 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        if (!sub_255750A60())
        {
          break;
        }

        type metadata accessor for JournalEntryMO();
        swift_dynamicCast();
        v17 = v25;
        v15 = v8;
        v16 = v9;
      }

      while (v25);
    }

LABEL_19:
    sub_25568B1C8();
  }

  else
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((v7 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v14 = *(v6 + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

void sub_25572A1F0(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_255750A30())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x259C3E830](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}