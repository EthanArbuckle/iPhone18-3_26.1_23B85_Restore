void sub_255DFDAEC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (!*a2)
  {
    v5 = a4(0, MEMORY[0x277D839B0]);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_255DFDB70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_255DFDBB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255DFDCD0@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DFDD28(uint64_t a1)
{
  v2 = sub_255E025B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFDD64(uint64_t a1)
{
  v2 = sub_255E025B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFDEAC@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DFDF04(uint64_t a1)
{
  v2 = sub_255E02564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFDF40(uint64_t a1)
{
  v2 = sub_255E02564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFDFC0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v18 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_255E3AE28();
  if (!v5)
  {
    v13 = v18;
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v22 + 8))(v11, v8);
    v14 = v20;
    v15 = v21;
    *v13 = v19;
    *(v13 + 16) = v14;
    *(v13 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DFE148@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v17 = *v3;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  sub_255D3E5A8(v17, v8, v9, v10);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v17, v18, v19, v20);
  }

  sub_255D38060(v17, v18, v19, v20);
  v12 = a1[3];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_255E3A038();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a3[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39B18();
}

uint64_t sub_255DFE328@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_255DDF1BC(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v8 = a1[3];
    v9 = __swift_project_boxed_opaque_existential_1(a1, v8);
    v10 = *(*(v8 - 8) + 64);
    MEMORY[0x28223BE20](v9);
    (*(v12 + 16))(v13 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v13[1] = sub_255E3A038();
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
    a3[4] = sub_255DC83E0();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E39A78();
  }

  return result;
}

uint64_t sub_255DFE4F0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void (*a3)(uint64_t *, void, void, void, unint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v10 = *(v4 + 8);
  v11 = *(v4 + 16);
  v12 = *(v4 + 24);
  v24 = *v4;
  v25 = v10;
  v26 = v11;
  v27 = v12;
  sub_255D3E5A8(v24, v10, v11, v12);
  v13 = StringResolvable.resolved(with:)(a2);
  if (v5)
  {
    return sub_255D38060(v24, v25, v26, v27);
  }

  v16 = v13;
  v17 = v14;
  sub_255D38060(v24, v25, v26, v27);
  v18 = a1[3];
  v19 = __swift_project_boxed_opaque_existential_1(a1, v18);
  v20 = *(*(v18 - 8) + 64);
  MEMORY[0x28223BE20](v19);
  (*(v22 + 16))(&v24 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_255E3A038();
  v24 = v16;
  v25 = v17;
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a4[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a4);
  v23 = sub_255D6EEE8();
  a3(&v24, MEMORY[0x277CE11C8], MEMORY[0x277D837D0], MEMORY[0x277CE11C0], v23);
}

uint64_t sub_255DFE6D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AccessibilityFocusedModifier();
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 28);
  sub_255E39488();
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255D395E4(&v9[v10], &qword_27F7E8110, &unk_255E538E0);
  }

  else
  {
    v16 = a2;
    v20[6] = v20[4];
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ACB8();
    v12 = v18;
    v13 = v19;
    *v9 = v17;
    *(v9 + 2) = v12;
    v9[24] = v13;
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    sub_255DC87A8(v9, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_255E02390(v9);
  }
}

uint64_t sub_255DFE8A0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = type metadata accessor for AccessibilityFocusedModifier();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  result = sub_255DBFA2C(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    v42 = a3;
    v40 = v9;
    v14 = a1[3];
    v15 = a1[4];
    v37 = result;
    v38 = v12;
    v60 = 0;
    LODWORD(v39) = v13;
    v35 = __swift_project_boxed_opaque_existential_1(a1, v14);
    v36 = *(v8 + 20);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    sub_255E39478();
    v57[0] = v14;
    v57[1] = v15;
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v52 = v14;
    v53 = v15;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v57);
    sub_255E39AB8();

    v16 = OpaqueTypeMetadata2;
    v17 = OpaqueTypeConformance2;
    v35 = __swift_project_boxed_opaque_existential_1(v57, OpaqueTypeMetadata2);
    v41 = v3;
    sub_255E39458();
    LOBYTE(v45) = v52;
    sub_255DC87A8(v3, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v40 = *(v40 + 80);
    v18 = (v40 + 33) & ~v40;
    v36 = v18;
    v19 = swift_allocObject();
    v20 = v37;
    v21 = v38;
    *(v19 + 16) = v37;
    *(v19 + 24) = v21;
    LODWORD(v34) = v39 & 1;
    *(v19 + 32) = v39 & 1;
    sub_255DC880C(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    v52 = v16;
    v53 = MEMORY[0x277D839B0];
    v22 = MEMORY[0x277D839C8];
    v54 = v17;
    v55 = MEMORY[0x277D839C8];
    v39 = MEMORY[0x277CE0E40];
    v55 = swift_getOpaqueTypeMetadata2();
    v48 = v16;
    v49 = MEMORY[0x277D839B0];
    v50 = v17;
    v51 = v22;
    v56 = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(&v52);

    sub_255E39CA8();

    v23 = v55;
    v33 = v56;
    v35 = __swift_project_boxed_opaque_existential_1(&v52, v55);
    v45 = v20;
    v46 = v21;
    LOBYTE(v16) = v34;
    v47 = v34;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
    MEMORY[0x259C4E3A0](&v44, v24);
    v43 = v44;
    sub_255DC87A8(v41, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v36;
    v26 = swift_allocObject();
    *(v26 + 16) = v20;
    *(v26 + 24) = v21;
    *(v26 + 32) = v16;
    sub_255DC880C(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25);
    v48 = v23;
    v27 = MEMORY[0x277D839B0];
    v28 = v33;
    v49 = MEMORY[0x277D839B0];
    v50 = v33;
    v29 = MEMORY[0x277D839C8];
    v51 = MEMORY[0x277D839C8];
    v30 = swift_getOpaqueTypeMetadata2();
    v31 = v42;
    v42[3] = v30;
    v48 = v23;
    v49 = v27;
    v50 = v28;
    v51 = v29;
    v31[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(v31);

    sub_255E39CA8();

    __swift_destroy_boxed_opaque_existential_1Tm(&v52);
    return __swift_destroy_boxed_opaque_existential_1Tm(v57);
  }

  return result;
}

uint64_t sub_255DFEDC4(uint64_t a1, uint64_t a2, char a3)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
  MEMORY[0x259C4E3A0](&v11);
  v6 = v11;
  v7 = *(type metadata accessor for AccessibilityFocusedModifier() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
  result = sub_255E39458();
  if (v6 != v10)
  {
    sub_255E39458();
    v9 = v12;
    v12 = a1;
    v13 = a2;
    v14 = a3 & 1;
    v11 = v9;
    return sub_255E3A058();
  }

  return result;
}

uint64_t sub_255DFEEB8(uint64_t a1, uint64_t a2, char a3)
{
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8118, &qword_255E57E20);
  MEMORY[0x259C4E3A0](&v11);
  v7 = v11;
  v8 = *(type metadata accessor for AccessibilityFocusedModifier() + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
  result = sub_255E39458();
  if (v7 != v10)
  {
    v12 = a1;
    v13 = a2;
    v14 = a3 & 1;
    MEMORY[0x259C4E3A0](&v11, v6);
    return sub_255E39468();
  }

  return result;
}

uint64_t sub_255DFEFDC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v17 = *v3;
  v18 = v8;
  v19 = v9;
  v20 = v10;
  sub_255D3E5A8(v17, v8, v9, v10);
  StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v17, v18, v19, v20);
  }

  sub_255D38060(v17, v18, v19, v20);
  if (sub_255E02250() == 5)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v12 = a1[3];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(&v17 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_255E3A038();
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a3[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39AC8();
}

uint64_t sub_255DFF204@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DFF25C(uint64_t a1)
{
  v2 = sub_255E02440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFF298(uint64_t a1)
{
  v2 = sub_255E02440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFF2D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8820, &qword_255E57E58);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E02440();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DFF454@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = sub_255E39568();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(v3 + 24);
  if (v16 > 0xFD)
  {
    goto LABEL_4;
  }

  v17 = *(v3 + 8);
  v18 = *(v3 + 16);
  *&v24 = *v3;
  *(&v24 + 1) = v17;
  v25 = v18;
  v26 = v16;
  sub_255D3E5A8(v24, v17, v18, v16);
  StringResolvable.resolved(with:)(a2);
  if (!v4)
  {
    sub_255D38060(v24, *(&v24 + 1), v25, v26);
    v22 = sub_255E3AB48();

    if (v22 == 2)
    {
      v23 = *(a1 + 3);
      __swift_project_boxed_opaque_existential_1(a1, v23);
      sub_255E39558();
    }

    else if (v22 == 1)
    {
      v23 = *(a1 + 3);
      __swift_project_boxed_opaque_existential_1(a1, v23);
      sub_255E39548();
    }

    else
    {
      if (v22)
      {
        goto LABEL_4;
      }

      v23 = *(a1 + 3);
      __swift_project_boxed_opaque_existential_1(a1, v23);
      sub_255E39538();
    }

    v24 = v23;
    a3[3] = swift_getOpaqueTypeMetadata2();
    v24 = v23;
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255E39AA8();
    return (*(v9 + 8))(v15, v8);
  }

  sub_255D38060(v24, *(&v24 + 1), v25, v26);
LABEL_4:
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_255DC3D28();
  *&v24 = v19;
  *(&v24 + 1) = v20;
  a3[3] = swift_getOpaqueTypeMetadata2();
  *&v24 = v19;
  *(&v24 + 1) = v20;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39AA8();
  v15 = v13;
  return (*(v9 + 8))(v15, v8);
}

uint64_t sub_255DFF7A8@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255DFF800(uint64_t a1)
{
  v2 = sub_255E023EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFF83C(uint64_t a1)
{
  v2 = sub_255E023EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFF878()
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255DFF964@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
  sub_255D6FC70();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39AD8();
}

uint64_t sub_255DFFA70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_255E01D50(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255DFFA9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x694B6E6F69746361;
  }

  else
  {
    v4 = 0x6E6F69746361;
  }

  if (v3)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xEA0000000000646ELL;
  }

  if (*a2)
  {
    v6 = 0x694B6E6F69746361;
  }

  else
  {
    v6 = 0x6E6F69746361;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000646ELL;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();
  }

  return v9 & 1;
}

uint64_t sub_255DFFB44()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFFBC8()
{
  *v0;
  sub_255E3A578();
}

uint64_t sub_255DFFC38()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DFFCB8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_255E3AB48();

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

void sub_255DFFD18(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F69746361;
  if (*v1)
  {
    v2 = 0x694B6E6F69746361;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xEA0000000000646ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DFFD58()
{
  if (*v0)
  {
    result = 0x694B6E6F69746361;
  }

  else
  {
    result = 0x6E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_255DFFD94@<X0>(char *a1@<X8>)
{
  v2 = sub_255E3AB48();

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

uint64_t sub_255DFFDF8(uint64_t a1)
{
  v2 = sub_255E02494();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DFFE34(uint64_t a1)
{
  v2 = sub_255E02494();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DFFE70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8830, &unk_255E57E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E02494();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  LOBYTE(v28) = 0;
  sub_255E024E8(&qword_27F7E7430, &qword_27F7E7428, &qword_255E480C0, sub_255D7B6DC);
  sub_255E3ABC8();
  v26 = v9;
  v12 = v32;
  v13 = *(v32 + 16);
  if (v13)
  {
    v23 = v6;
    v24 = v5;
    v25 = a2;
    v31 = MEMORY[0x277D84F90];
    sub_255DE5EF0(0, v13, 0);
    v14 = v31;
    v22 = v12;
    v15 = v12 + 32;
    do
    {
      sub_255D7B730(v15, v27);
      sub_255D34630(v27, &v28);
      v31 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_255DE5EF0((v16 > 1), v17 + 1, 1);
        v14 = v31;
      }

      *(v14 + 16) = v17 + 1;
      sub_255D34630(&v28, v14 + 40 * v17 + 32);
      v15 += 40;
      --v13;
    }

    while (v13);

    v5 = v24;
    a2 = v25;
    v6 = v23;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  LOBYTE(v27[0]) = 1;
  sub_255D3EA0C();
  v18 = v26;
  sub_255E3ABA8();
  (*(v6 + 8))(v18, v5);
  v19 = v28;
  v20 = v29;
  v21 = v30;
  *a2 = v14;
  *(a2 + 8) = v19;
  *(a2 + 24) = v20;
  *(a2 + 32) = v21;

  sub_255D94C04(v19, *(&v19 + 1), v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_255D64814(v19, *(&v19 + 1), v20, v21);
}

uint64_t sub_255E001D8@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E87D8, &qword_255E57DD8);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = sub_255E39448();
  v40 = *(v14 - 8);
  v41 = v14;
  v15 = *(v40 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  v48 = *(v4 + 32);
  v21 = v4[1];
  v46 = *v4;
  v47 = v21;
  if (v48 <= 0xFDu)
  {
    v43 = *(&v46 + 1);
    v44 = v47;
    LOBYTE(v45) = v48;
    sub_255D3E5A8(*(&v46 + 1), v47, *(&v47 + 1), v48);
    StringResolvable.resolved(with:)(a2);
    if (!v5)
    {
      v39 = 0;
      sub_255D38060(v43, v44, *(&v44 + 1), v45);
      v29 = sub_255E3AB48();

      if (v29)
      {
        if (v29 == 1)
        {
          sub_255E39418();
        }

        else
        {
          if (v29 != 2)
          {
            (*(v40 + 56))(v13, 1, 1, v41);
            sub_255D395E4(v13, &qword_27F7E87D8, &qword_255E57DD8);
            goto LABEL_5;
          }

          sub_255E39438();
        }
      }

      else
      {
        sub_255E39428();
      }

      v30 = v41;
      v31 = v40;
      (*(v40 + 56))(v13, 0, 1, v41);
      (*(v31 + 32))(v20, v13, v30);
      v32 = a1[3];
      v33 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v32);
      v34 = sub_255D48A94(v46);
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v34, a2, a3, v32, v33, &v43);

      v35 = v45;
      __swift_project_boxed_opaque_existential_1(&v43, v45);
      v49 = View.anyView.getter(v35);
      v36 = swift_allocObject();
      v37 = v47;
      *(v36 + 16) = v46;
      *(v36 + 32) = v37;
      *(v36 + 48) = v48;
      *(v36 + 56) = a2;
      *(v36 + 64) = a3;
      a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
      a4[4] = sub_255DC83E0();
      __swift_allocate_boxed_opaque_existential_1(a4);
      sub_255E02128(&v46, v42);

      sub_255E39A68();

      (*(v40 + 8))(v20, v41);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v43);
    }

    sub_255D38060(v43, v44, *(&v44 + 1), v45);
    v39 = 0;
  }

  else
  {
    v39 = v5;
  }

LABEL_5:
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = sub_255D48A94(v46);
  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v24, a2, a3, v22, v23, &v43);

  v25 = v45;
  __swift_project_boxed_opaque_existential_1(&v43, v45);
  v49 = View.anyView.getter(v25);
  v26 = swift_allocObject();
  v27 = v47;
  *(v26 + 16) = v46;
  *(v26 + 32) = v27;
  *(v26 + 48) = v48;
  *(v26 + 56) = a2;
  *(v26 + 64) = a3;
  sub_255E02128(&v46, v42);

  sub_255E39428();
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  a4[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(a4);
  sub_255E39A68();

  (*(v40 + 8))(v18, v41);

  return __swift_destroy_boxed_opaque_existential_1Tm(&v43);
}

uint64_t sub_255E0070C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v17 - v11;
  v13 = *a1;
  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  v15[5] = a2;
  v15[6] = a3;

  sub_255D52540(0, 0, v12, a5, v15);
}

uint64_t sub_255E00878(uint64_t a1)
{
  v2 = sub_255E0233C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E008B4(uint64_t a1)
{
  v2 = sub_255E0233C();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E0094C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_255E01F2C(a1, &qword_27F7E8800, &unk_255E57E38, sub_255E0233C);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255E009A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x737469617274 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E00A28(uint64_t a1)
{
  v2 = sub_255E022E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E00A64(uint64_t a1)
{
  v2 = sub_255E022E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E00ACC@<X0>(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t a3@<X3>, void (*a4)(void, void, void)@<X4>, uint64_t *a5@<X8>)
{
  v93 = a5;
  v94 = a4;
  v6 = v5;
  v98 = a2;
  v91 = a1;
  v8 = sub_255E39068();
  v9 = *(v8 - 8);
  v99 = v8;
  v100 = v9;
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v88 = v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v89 = v86 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = v86 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v96 = v86 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v95 = v86 - v20;
  result = MEMORY[0x28223BE20](v19);
  v92 = v86 - v22;
  v23 = *(a3 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (a3 + 56);
    v97 = MEMORY[0x277D84F90];
    v90 = (a3 + 56);
    do
    {
      v26 = &v25[32 * v24];
      v27 = v24;
      v28 = v6;
      while (1)
      {
        if (v27 >= v23)
        {
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
          return result;
        }

        if (__OFADD__(v27, 1))
        {
          goto LABEL_59;
        }

        v105 = v27 + 1;
        v29 = *(v26 - 3);
        v30 = *(v26 - 2);
        v31 = *(v26 - 1);
        v32 = *v26;
        v101 = v29;
        v102 = v30;
        v103 = v31;
        v104 = v32;
        sub_255D3E5A8(v29, v30, v31, v32);
        v33 = v28;
        v34 = StringResolvable.resolved(with:)(v98);
        if (!v28)
        {
          break;
        }

        v28 = 0;

        result = sub_255D38060(v29, v30, v31, v32);
        ++v27;
        v26 += 32;
        if (v105 == v23)
        {
          v6 = 0;
          goto LABEL_17;
        }
      }

      v36 = v35;
      v37 = v34;
      sub_255D38060(v29, v30, v31, v32);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_255DE5944(0, *(v97 + 2) + 1, 1, v97);
        v97 = result;
      }

      v24 = v105;
      v39 = *(v97 + 2);
      v38 = *(v97 + 3);
      if (v39 >= v38 >> 1)
      {
        result = sub_255DE5944((v38 > 1), v39 + 1, 1, v97);
        v41 = v36;
        v97 = result;
        v40 = v37;
      }

      else
      {
        v40 = v37;
        v41 = v36;
      }

      v6 = 0;
      v25 = v90;
      v42 = v97;
      *(v97 + 2) = v39 + 1;
      v43 = &v42[16 * v39];
      *(v43 + 4) = v40;
      *(v43 + 5) = v41;
    }

    while (v24 != v23);
  }

  else
  {
    v97 = MEMORY[0x277D84F90];
  }

LABEL_17:
  v90 = v6;
  v44 = 0;
  v45 = v97;
  v46 = *(v97 + 2);
  v47 = MEMORY[0x277D84F90];
  v48 = MEMORY[0x277D84F90];
LABEL_18:
  v49 = &v45[16 * v44 + 40];
  while (v46 != v44)
  {
    if (v44 >= *(v45 + 2))
    {
      __break(1u);
      goto LABEL_58;
    }

    ++v44;
    v50 = v49 + 16;
    v51 = *(v49 - 1);
    v52 = *v49;

    result = sub_255E0229C();
    v49 = v50;
    if (result != 16)
    {
      v53 = result;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_255DE5850(0, *(v48 + 16) + 1, 1, v48);
        v48 = result;
      }

      v55 = *(v48 + 16);
      v54 = *(v48 + 24);
      if (v55 >= v54 >> 1)
      {
        result = sub_255DE5850((v54 > 1), v55 + 1, 1, v48);
        v48 = result;
      }

      *(v48 + 16) = v55 + 1;
      *(v48 + v55 + 32) = v53;
      goto LABEL_18;
    }
  }

  v56 = *(v48 + 16);
  if (v56)
  {
    v101 = v47;
    sub_255DE6050(0, v56, 0);
    v57 = v101;
    v58 = 32;
    v59 = v99;
    v60 = v89;
    do
    {
      switch(*(v48 + v58))
      {
        case 1:
          sub_255E39008();
          break;
        case 2:
          sub_255E38FF8();
          break;
        case 3:
          sub_255E38F48();
          break;
        case 4:
          sub_255E38FD8();
          break;
        case 5:
          sub_255E38F98();
          break;
        case 6:
          sub_255E39038();
          break;
        case 7:
          sub_255E38F78();
          break;
        case 8:
          sub_255E39018();
          break;
        case 9:
          sub_255E38F88();
          break;
        case 0xA:
          sub_255E38F68();
          break;
        case 0xB:
          sub_255E38FA8();
          break;
        case 0xC:
          sub_255E39048();
          break;
        case 0xD:
          sub_255E38F58();
          break;
        case 0xE:
          sub_255E38FC8();
          break;
        case 0xF:
          sub_255E38FB8();
          break;
        default:
          sub_255E39028();
          break;
      }

      v101 = v57;
      v62 = *(v57 + 16);
      v61 = *(v57 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_255DE6050(v61 > 1, v62 + 1, 1);
        v60 = v89;
        v59 = v99;
        v57 = v101;
      }

      *(v57 + 16) = v62 + 1;
      (*(v100 + 32))(v57 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v62, v60, v59);
      ++v58;
      --v56;
    }

    while (v56);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
    v59 = v99;
  }

  v63 = v95;
  sub_255E39058();
  v64 = v100;
  v65 = (v100 + 16);
  v66 = *(v100 + 16);
  v66(v96, v63, v59);
  v67 = v57;
  v68 = *(v57 + 16);
  if (v68)
  {
    v69 = (*(v64 + 80) + 32) & ~*(v64 + 80);
    v70 = v64;
    v89 = v67;
    v71 = &v67[v69];
    v105 = *(v70 + 72);
    v72 = (v70 + 8);
    v97 = v65;
    v98 = v66;
    v73 = (v70 + 32);
    v86[1] = (v70 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v74 = v96;
    v76 = v87;
    v75 = v88;
    do
    {
      v98(v76, v71, v59);
      sub_255E38FE8();
      v59 = v99;
      v77 = *v72;
      (*v72)(v76, v99);
      v77(v74, v59);
      (*v73)(v74, v75, v59);
      v71 += v105;
      --v68;
    }

    while (v68);

    v64 = v100;
  }

  else
  {

    v77 = *(v64 + 8);
  }

  v77(v95, v59);
  v78 = v92;
  (*(v64 + 32))(v92, v96, v59);
  v79 = v91[3];
  v80 = __swift_project_boxed_opaque_existential_1(v91, v79);
  v81 = *(*(v79 - 8) + 64);
  MEMORY[0x28223BE20](v80);
  (*(v83 + 16))(v86 - ((v82 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = sub_255E3A038();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E80A8, &qword_255E53890);
  v85 = v93;
  v93[3] = v84;
  v85[4] = sub_255DC83E0();
  __swift_allocate_boxed_opaque_existential_1(v85);
  v94(v78, MEMORY[0x277CE11C8], MEMORY[0x277CE11C0]);

  return (v77)(v78, v59);
}

void *sub_255E0131C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_255E01F2C(a1, &qword_27F7E87E0, &qword_255E57E28, sub_255E022E8);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_255E01374(uint64_t a1)
{
  result = sub_255E0139C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0139C()
{
  result = qword_27F7E8778;
  if (!qword_27F7E8778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8778);
  }

  return result;
}

unint64_t sub_255E013F0(uint64_t a1)
{
  result = sub_255E01418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01418()
{
  result = qword_27F7E8780;
  if (!qword_27F7E8780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8780);
  }

  return result;
}

uint64_t sub_255E0146C(uint64_t a1)
{
  result = sub_255E01920(&qword_27F7E8788, type metadata accessor for AccessibilityFocusedModifier);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E014C4(uint64_t a1)
{
  result = sub_255E014EC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E014EC()
{
  result = qword_27F7E8790;
  if (!qword_27F7E8790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8790);
  }

  return result;
}

unint64_t sub_255E01540(uint64_t a1)
{
  result = sub_255E01568();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01568()
{
  result = qword_27F7E8798;
  if (!qword_27F7E8798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8798);
  }

  return result;
}

unint64_t sub_255E015BC(uint64_t a1)
{
  result = sub_255E015E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E015E4()
{
  result = qword_27F7E87A0;
  if (!qword_27F7E87A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87A0);
  }

  return result;
}

unint64_t sub_255E01638(uint64_t a1)
{
  result = sub_255E01660();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01660()
{
  result = qword_27F7E87A8;
  if (!qword_27F7E87A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87A8);
  }

  return result;
}

unint64_t sub_255E016B4(uint64_t a1)
{
  result = sub_255E016DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E016DC()
{
  result = qword_27F7E87B0;
  if (!qword_27F7E87B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87B0);
  }

  return result;
}

unint64_t sub_255E01730(uint64_t a1)
{
  result = sub_255E01758();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01758()
{
  result = qword_27F7E87B8;
  if (!qword_27F7E87B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87B8);
  }

  return result;
}

unint64_t sub_255E017AC(uint64_t a1)
{
  result = sub_255E017D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E017D4()
{
  result = qword_27F7E87C0;
  if (!qword_27F7E87C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87C0);
  }

  return result;
}

unint64_t sub_255E01828(uint64_t a1)
{
  result = sub_255E01850();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E01850()
{
  result = qword_27F7E87C8;
  if (!qword_27F7E87C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87C8);
  }

  return result;
}

unint64_t sub_255E018A4(uint64_t a1)
{
  result = sub_255E018CC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E018CC()
{
  result = qword_27F7E87D0;
  if (!qword_27F7E87D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87D0);
  }

  return result;
}

uint64_t sub_255E01920(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_255E01968(char a1)
{
  result = 0x6E6F747475427369;
  switch(a1)
  {
    case 1:
      result = 0x6567616D497369;
      break;
    case 2:
      result = 0x6B6E694C7369;
      break;
    case 3:
      result = 0x7463656C65537369;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0x6150736573756163;
      break;
    case 6:
      result = 0x7265646165487369;
      break;
    case 7:
      result = 0x616F6279654B7369;
      break;
    case 8:
      result = 0x6C61646F4D7369;
      break;
    case 9:
      result = 0x6863726165537369;
      break;
    case 10:
      result = 0x6369746174537369;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x656C67676F547369;
      break;
    case 13:
      result = 0x756F537379616C70;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255E01B54(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_255E01968(*a1);
  v5 = v4;
  if (v3 == sub_255E01968(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255E01BDC()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E01968(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E01C40()
{
  sub_255E01968(*v0);
  sub_255E3A578();
}

uint64_t sub_255E01C94()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E01968(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E01CF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E0229C();
  *a2 = result;
  return result;
}

unint64_t sub_255E01D24@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255E01968(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_255E01D50(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8810, &qword_255E57E48);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E023EC();
  sub_255E3AE28();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    sub_255E024E8(&qword_27F7E6C18, &qword_27F7E6C10, &qword_255E57E50, sub_255D447E8);
    sub_255E3ABC8();
    v9 = sub_255D48968(v11[1]);

    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v9;
}

void *sub_255E01F2C(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v13 = v12;
  sub_255E3AE28();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E87F0, &qword_255E57E30);
    sub_255E024E8(&qword_27F7E87F8, &qword_27F7E87F0, &qword_255E57E30, sub_255D3EA0C);
    sub_255E3ABC8();
    (*(v16 + 8))(v10, v7);
    v13 = v17;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v13;
}

uint64_t objectdestroyTm_6()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 48);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 24), *(v0 + 32), *(v0 + 40), v2);
  }

  v3 = *(v0 + 56);

  v4 = *(v0 + 64);

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_255E021FC()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E02250()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E0229C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255E022E8()
{
  result = qword_27F7E87E8;
  if (!qword_27F7E87E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E87E8);
  }

  return result;
}

unint64_t sub_255E0233C()
{
  result = qword_27F7E8808;
  if (!qword_27F7E8808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8808);
  }

  return result;
}

uint64_t sub_255E02390(uint64_t a1)
{
  v2 = type metadata accessor for AccessibilityFocusedModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E023EC()
{
  result = qword_27F7E8818;
  if (!qword_27F7E8818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8818);
  }

  return result;
}

unint64_t sub_255E02440()
{
  result = qword_27F7E8828;
  if (!qword_27F7E8828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8828);
  }

  return result;
}

unint64_t sub_255E02494()
{
  result = qword_27F7E8838;
  if (!qword_27F7E8838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8838);
  }

  return result;
}

uint64_t sub_255E024E8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255E02564()
{
  result = qword_27F7E8848;
  if (!qword_27F7E8848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8848);
  }

  return result;
}

unint64_t sub_255E025B8()
{
  result = qword_27F7E8858;
  if (!qword_27F7E8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityTraitString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AccessibilityTraitString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255E027D0()
{
  result = qword_27F7E8860;
  if (!qword_27F7E8860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8860);
  }

  return result;
}

unint64_t sub_255E02828()
{
  result = qword_27F7E8868;
  if (!qword_27F7E8868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8868);
  }

  return result;
}

unint64_t sub_255E02880()
{
  result = qword_27F7E8870;
  if (!qword_27F7E8870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8870);
  }

  return result;
}

unint64_t sub_255E028D8()
{
  result = qword_27F7E8878;
  if (!qword_27F7E8878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8878);
  }

  return result;
}

unint64_t sub_255E02930()
{
  result = qword_27F7E8880;
  if (!qword_27F7E8880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8880);
  }

  return result;
}

unint64_t sub_255E02988()
{
  result = qword_27F7E8888;
  if (!qword_27F7E8888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8888);
  }

  return result;
}

unint64_t sub_255E029E0()
{
  result = qword_27F7E8890;
  if (!qword_27F7E8890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8890);
  }

  return result;
}

unint64_t sub_255E02A38()
{
  result = qword_27F7E8898;
  if (!qword_27F7E8898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8898);
  }

  return result;
}

unint64_t sub_255E02A90()
{
  result = qword_27F7E88A0;
  if (!qword_27F7E88A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88A0);
  }

  return result;
}

unint64_t sub_255E02AE8()
{
  result = qword_27F7E88A8;
  if (!qword_27F7E88A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88A8);
  }

  return result;
}

unint64_t sub_255E02B40()
{
  result = qword_27F7E88B0;
  if (!qword_27F7E88B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88B0);
  }

  return result;
}

unint64_t sub_255E02B98()
{
  result = qword_27F7E88B8;
  if (!qword_27F7E88B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88B8);
  }

  return result;
}

unint64_t sub_255E02BF0()
{
  result = qword_27F7E88C0;
  if (!qword_27F7E88C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88C0);
  }

  return result;
}

unint64_t sub_255E02C48()
{
  result = qword_27F7E88C8;
  if (!qword_27F7E88C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88C8);
  }

  return result;
}

unint64_t sub_255E02CA0()
{
  result = qword_27F7E88D0;
  if (!qword_27F7E88D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88D0);
  }

  return result;
}

unint64_t sub_255E02CF8()
{
  result = qword_27F7E88D8;
  if (!qword_27F7E88D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88D8);
  }

  return result;
}

unint64_t sub_255E02D50()
{
  result = qword_27F7E88E0;
  if (!qword_27F7E88E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88E0);
  }

  return result;
}

unint64_t sub_255E02DA8()
{
  result = qword_27F7E88E8;
  if (!qword_27F7E88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88E8);
  }

  return result;
}

unint64_t sub_255E02E00()
{
  result = qword_27F7E88F0;
  if (!qword_27F7E88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88F0);
  }

  return result;
}

unint64_t sub_255E02E58()
{
  result = qword_27F7E88F8;
  if (!qword_27F7E88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E88F8);
  }

  return result;
}

unint64_t sub_255E02EB0()
{
  result = qword_27F7E8900;
  if (!qword_27F7E8900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8900);
  }

  return result;
}

unint64_t sub_255E02F08()
{
  result = qword_27F7E8908;
  if (!qword_27F7E8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8908);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_255E02FC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 144))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 96);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_255E0301C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 144) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2;
    }
  }

  return result;
}

uint64_t sub_255E030A4@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = v3;
  v60 = a3;
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(v3 + 8);
  v11 = *(v3 + 16);
  v12 = *(v3 + 24);
  v50 = *v3;
  v51 = v10;
  v52 = v11;
  LOBYTE(v53) = v12;
  sub_255D3E5A8(v50, v10, v11, v12);
  v13 = StringResolvable.resolved(with:)(a2);
  if (v4)
  {
    return sub_255D38060(v50, v51, v52, v53);
  }

  v16 = v13;
  v17 = v14;
  sub_255D38060(v50, v51, v52, v53);
  v58 = v16;
  v59 = v17;
  v18 = sub_255DBFA2C(a2, *(v5 + 64), *(v5 + 72), *(v5 + 80), *(v5 + 88));
  v48 = v19;
  v49 = v18;
  v46 = v8;
  v47 = v20;
  v21 = *(v5 + 56);
  if (v21 <= 0xFD)
  {
    v22 = *(v5 + 40);
    v23 = *(v5 + 48);
    v50 = *(v5 + 32);
    v51 = v22;
    v52 = v23;
    LOBYTE(v53) = v21;
    sub_255D3E5A8(v50, v22, v23, v21);
    StringResolvable.resolved(with:)(a2);
    v45 = v9;
    sub_255D38060(v50, v51, v52, v53);
  }

  else
  {
    v45 = v9;
  }

  v24 = sub_255E3AB48();

  v44 = &v37;
  v26 = 0x10200u >> (8 * v24);
  if (v24 >= 3)
  {
    v26 = 0;
  }

  v43 = v26;
  v27 = MEMORY[0x28223BE20](v25);
  v42 = v36;
  v36[2] = v5;
  MEMORY[0x28223BE20](v27);
  v41 = v35;
  v35[2] = v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6700, &unk_255E53840);
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E66F0, &unk_255E3E190);
  v30 = sub_255D6EEE8();
  v31 = sub_255D4D230(&qword_27F7E66F8, &qword_27F7E6700, &unk_255E53840);
  v38 = v31;
  v37 = sub_255D4D230(&qword_27F7E66E8, &qword_27F7E66F0, &unk_255E3E190);
  v50 = v7;
  v51 = MEMORY[0x277D837D0];
  v52 = v28;
  v53 = v29;
  v39 = v29;
  v40 = v28;
  v32 = v46;
  v54 = v46;
  v55 = v30;
  v56 = v31;
  v57 = v37;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v34 = v60;
  v60[3] = OpaqueTypeMetadata2;
  v50 = v7;
  v51 = MEMORY[0x277D837D0];
  v52 = v28;
  v53 = v29;
  v54 = v32;
  v55 = v30;
  v56 = v38;
  v57 = v37;
  v34[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v34);
  sub_255E39A48();
}

uint64_t sub_255E034BC(uint64_t a1)
{
  if (*(a1 + 96))
  {
    v1 = *(a1 + 96);
  }

  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6668, &qword_255E4D0A0);
  sub_255D38950(&qword_27F7E6670, &qword_27F7E6668, &qword_255E4D0A0);
  return sub_255E3A0E8();
}

uint64_t sub_255E035B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_255D4FB3C(a1 + 104, v7);
  v3 = v8;
  if (v8)
  {
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    v5 = (*(v4 + 24))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    result = sub_255D395E4(v7, &qword_27F7E6558, &qword_255E3DD80);
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_255E03668()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0375C()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E0383C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0392C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E04368();
  *a2 = result;
  return result;
}

void sub_255E0395C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x656C746974;
  v5 = 0xEF7974696C696269;
  v6 = 0x736956656C746974;
  v7 = 0x736E6F69746361;
  if (v2 != 3)
  {
    v7 = 0x6567617373656DLL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE700000000000000;
  }

  if (*v1)
  {
    v4 = 0x6E65736572507369;
    v3 = 0xEB00000000646574;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_255E03A0C()
{
  v1 = *v0;
  v2 = 0x656C746974;
  v3 = 0x736956656C746974;
  v4 = 0x736E6F69746361;
  if (v1 != 3)
  {
    v4 = 0x6567617373656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E65736572507369;
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

uint64_t sub_255E03AB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E04368();
  *a1 = result;
  return result;
}

uint64_t sub_255E03AE0(uint64_t a1)
{
  v2 = sub_255E04194();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E03B1C(uint64_t a1)
{
  v2 = sub_255E04194();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E03B58(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8918, &qword_255E58D78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v19 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E04194();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v28 = v5;
    v10 = v29;
    v56 = 0;
    sub_255D3EA0C();
    sub_255E3ABC8();
    v26 = *(&v30 + 1);
    v27 = v30;
    v40 = v30;
    v25 = v31;
    v41 = v31;
    v55 = BYTE8(v31);
    v42 = BYTE8(v31);
    v56 = 2;
    sub_255E3ABA8();
    v24 = v30;
    v43 = v30;
    v22 = v31;
    v44 = v31;
    v23 = BYTE8(v31);
    v45 = BYTE8(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    v56 = 1;
    sub_255D38950(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    sub_255E3ABC8();
    v20 = v30;
    v46 = v30;
    v21 = v31;
    v47 = v31;
    v48 = BYTE8(v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6C10, &qword_255E57E50);
    v56 = 3;
    sub_255D5F038();
    sub_255E3ABA8();
    v19[0] = v8;
    if (v30)
    {
      v11 = sub_255D48968(v30);
    }

    else
    {
      v11 = 0;
    }

    v19[1] = v11;
    v49 = v11;
    v56 = 4;
    sub_255D447E8();
    sub_255E3ABA8();
    if (*(&v30 + 1))
    {
      v12 = sub_255D44794();
      v13 = swift_allocObject();
      v14 = v37;
      *(v13 + 112) = v36;
      *(v13 + 128) = v14;
      *(v13 + 144) = v38;
      *(v13 + 160) = v39;
      v15 = v33;
      *(v13 + 48) = v32;
      *(v13 + 64) = v15;
      v16 = v35;
      *(v13 + 80) = v34;
      *(v13 + 96) = v16;
      v17 = v31;
      *(v13 + 16) = v30;
      *(v13 + 32) = v17;
      (*(v28 + 8))(v19[0], v4);
      v18 = &type metadata for ViewContent;
    }

    else
    {
      (*(v28 + 8))(v19[0], v4);
      sub_255D395E4(&v30, &qword_27F7E6C20, &qword_255E58D80);
      v18 = 0;
      v12 = 0;
      v13 = 0;
    }

    v50 = v13;
    v51 = 0;
    v52 = 0;
    v53 = v18;
    v54 = v12;
    sub_255E041E8(&v40, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255E04220(&v40);
  }
}

unint64_t sub_255E040BC(uint64_t a1)
{
  result = sub_255E040E4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E040E4()
{
  result = qword_27F7E8910;
  if (!qword_27F7E8910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8910);
  }

  return result;
}

uint64_t sub_255E04138()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_255E04194()
{
  result = qword_27F7E8920;
  if (!qword_27F7E8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8920);
  }

  return result;
}

unint64_t sub_255E04264()
{
  result = qword_27F7E8928;
  if (!qword_27F7E8928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8928);
  }

  return result;
}

unint64_t sub_255E042BC()
{
  result = qword_27F7E8930;
  if (!qword_27F7E8930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8930);
  }

  return result;
}

unint64_t sub_255E04314()
{
  result = qword_27F7E8938;
  if (!qword_27F7E8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8938);
  }

  return result;
}

uint64_t sub_255E04368()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E043D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_255DDEBF8(a2, *v3, *(v3 + 8), *(v3 + 16), *(v3 + 24), &v16);
  if (v4)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v7 = sub_255E386A8();
    __swift_project_value_buffer(v7, qword_27F8152D8);
    v8 = sub_255E38688();
    v9 = sub_255E3A868();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_255D2E000, v8, v9, "TagModifier Unable to resolve tag value", v10, 2u);
      MEMORY[0x259C4F9E0](v10, -1, -1);
    }

    return sub_255D3CE1C(a1, a3);
  }

  else
  {
    v12 = v16;
    v14 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    v20 = v12;
    v15 = sub_255D6F180();
    v16 = v14;
    v17 = &type metadata for DecodableState;
    v18 = v13;
    v19 = v15;
    a3[3] = swift_getOpaqueTypeMetadata2();
    v16 = v14;
    v17 = &type metadata for DecodableState;
    v18 = v13;
    v19 = v15;
    a3[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a3);
    sub_255D37560(&v20, 1, v14, &type metadata for DecodableState, v13);
  }
}

uint64_t sub_255E045C8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v10, v10[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    sub_255E04D8C();
    sub_255E3ACB8();
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    *a2 = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E04704@<X0>(unsigned __int8 a1@<W0>, uint64_t *a2@<X8>)
{
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = sub_255E38D88();
        v7 = MEMORY[0x277CDDDA0];
        a2[3] = v6;
        a2[4] = v7;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_255E38D78();
      }

      else
      {
        v12 = sub_255E39528();
        v13 = MEMORY[0x277CDE370];
        a2[3] = v12;
        a2[4] = v13;
        __swift_allocate_boxed_opaque_existential_1(a2);
        return sub_255E39518();
      }
    }

    else
    {
      v10 = sub_255E38E68();
      v11 = MEMORY[0x277CDDE48];
      a2[3] = v10;
      a2[4] = v11;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_255E38E58();
    }
  }

  else if (a1 > 4u)
  {
    if (a1 == 5)
    {
      v8 = sub_255E38AD8();
      v9 = MEMORY[0x277CDDA00];
      a2[3] = v8;
      a2[4] = v9;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_255E38AC8();
    }

    else
    {
      v16 = sub_255E38C18();
      v17 = MEMORY[0x277CDDB70];
      a2[3] = v16;
      a2[4] = v17;
      __swift_allocate_boxed_opaque_existential_1(a2);
      return sub_255E38C08();
    }
  }

  else if (a1 == 3)
  {
    v3 = sub_255E38F28();
    v4 = MEMORY[0x277CDDE88];
    a2[3] = v3;
    a2[4] = v4;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_255E38F18();
  }

  else
  {
    v14 = sub_255E39288();
    v15 = MEMORY[0x277CDE058];
    a2[3] = v14;
    a2[4] = v15;
    __swift_allocate_boxed_opaque_existential_1(a2);
    return sub_255E39278();
  }
}

uint64_t sub_255E04868@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(v3 + 24);
  if (v7 <= 0xFD)
  {
    v9 = *(v3 + 8);
    v10 = *(v3 + 16);
    v17 = *v3;
    v18 = v9;
    v19 = v10;
    LOBYTE(v20.f64[0]) = v7;
    sub_255D3E5A8(v17, v9, v10, v7);
    StringResolvable.resolved(with:)(a2);
    if (v4)
    {
    }

    sub_255D38060(v17, v18, v19, LOBYTE(v20.f64[0]));
  }

  v11 = sub_255E04CD8();
  if (v11 == 7)
  {
    memset(v15, 0, sizeof(v15));
    v16 = 0;
    *&v20.f64[0] = sub_255E38E68();
    *&v20.f64[1] = MEMORY[0x277CDDE48];
    __swift_allocate_boxed_opaque_existential_1(&v17);
    sub_255E38E58();
  }

  else
  {
    sub_255E04704(v11, v15);
    sub_255D34630(v15, &v17);
  }

  v14.val[0] = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, *&v14.val[0].f64[0]);
  v14.val[1] = v20;
  __swift_project_boxed_opaque_existential_1(&v17, *&v20.f64[0]);
  v12 = v15;
  v21 = v14;
  vst2q_f64(v12, v21);
  a3[3] = swift_getOpaqueTypeMetadata2();
  v22 = v14;
  vst2q_f64(v15, v22);
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E398F8();
  return __swift_destroy_boxed_opaque_existential_1Tm(&v17);
}

uint64_t sub_255E04A9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_project_boxed_opaque_existential_1(v11, v11[3]);
  sub_255D3EA0C();
  sub_255E3ACB8();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_255E04BE0(uint64_t a1)
{
  result = sub_255E04C08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E04C08()
{
  result = qword_27F7E8940;
  if (!qword_27F7E8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8940);
  }

  return result;
}

unint64_t sub_255E04C5C(uint64_t a1)
{
  result = sub_255E04C84();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E04C84()
{
  result = qword_27F7E8948;
  if (!qword_27F7E8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8948);
  }

  return result;
}

uint64_t sub_255E04CD8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E04D24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8120, &qword_255E538F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E04D8C()
{
  result = qword_27F7E6BA0;
  if (!qword_27F7E6BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6B80, &unk_255E56600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E6BA0);
  }

  return result;
}

uint64_t sub_255E04E10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8960, &qword_255E59638);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E0574C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D64774();
    sub_255E3ABC8();
    (*(v6 + 8))(v9, v5);
    v11 = v15;
    v12 = v16;
    *a2 = v14;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E04FA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255E05030(uint64_t a1)
{
  v2 = sub_255E0574C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E0506C(uint64_t a1)
{
  v2 = sub_255E0574C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E050A8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  sub_255D612A0(*v3, v11, v12, v13);
  sub_255D8F6FC(a2);
  LOBYTE(a2) = v7;
  sub_255D4CB98(v10, v11, v12, v13);
  if (a2)
  {
    return sub_255D3CE1C(a1, a3);
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8000, &qword_255E59630);
  a3[3] = sub_255E38AE8();
  sub_255D38950(&qword_27F7E8008, &qword_27F7E8000, &qword_255E59630);
  a3[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(a3);
  return sub_255E399A8();
}

uint64_t sub_255E05228(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x676E696C69617274;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
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
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
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
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E05324()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E053C4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E05450()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E054EC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E05AA4();
  *a2 = result;
  return result;
}

void sub_255E0551C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_255E05628@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255E057A0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_255E05654(uint64_t a1)
{
  result = sub_255E0567C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0567C()
{
  result = qword_27F7E8950;
  if (!qword_27F7E8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8950);
  }

  return result;
}

unint64_t sub_255E056D0(uint64_t a1)
{
  result = sub_255E056F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E056F8()
{
  result = qword_27F7E8958;
  if (!qword_27F7E8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8958);
  }

  return result;
}

unint64_t sub_255E0574C()
{
  result = qword_27F7E8968;
  if (!qword_27F7E8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8968);
  }

  return result;
}

unint64_t sub_255E057A0(uint64_t *a1)
{
  v3 = a1[4];
  v4 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE08();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_255E0587C();
    sub_255E3ACB8();
    v4 = v7;
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v4;
}

unint64_t sub_255E0587C()
{
  result = qword_27F7E8970;
  if (!qword_27F7E8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8970);
  }

  return result;
}

unint64_t sub_255E058F4()
{
  result = qword_27F7E8978;
  if (!qword_27F7E8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8978);
  }

  return result;
}

unint64_t sub_255E0594C()
{
  result = qword_27F7E8980;
  if (!qword_27F7E8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8980);
  }

  return result;
}

unint64_t sub_255E059A4()
{
  result = qword_27F7E8988;
  if (!qword_27F7E8988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8988);
  }

  return result;
}

unint64_t sub_255E059FC()
{
  result = qword_27F7E8990;
  if (!qword_27F7E8990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8990);
  }

  return result;
}

unint64_t sub_255E05A50()
{
  result = qword_27F7E8998;
  if (!qword_27F7E8998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8998);
  }

  return result;
}

uint64_t sub_255E05AA4()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id ContentRegistry.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_255E05B28()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8310, &qword_255E54EB0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_255E3AAE8();
  __swift_allocate_value_buffer(v4, qword_27F8152F0);
  v5 = __swift_project_value_buffer(v4, qword_27F8152F0);
  sub_255E3AAD8();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_255E05C60()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8CF8, &qword_255E599A0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255E59860;
  *(v0 + 32) = 1954047316;
  *(v0 + 40) = 0xE400000000000000;
  v1 = sub_255D67AFC();
  *(v0 + 48) = &type metadata for TextView;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x6B6361745356;
  *(v0 + 72) = 0xE600000000000000;
  v2 = sub_255D98914();
  *(v0 + 80) = &type metadata for VStackView;
  *(v0 + 88) = v2;
  *(v0 + 96) = 0x6B6361745348;
  *(v0 + 104) = 0xE600000000000000;
  v3 = sub_255D995F4();
  *(v0 + 112) = &type metadata for HStackView;
  *(v0 + 120) = v3;
  *(v0 + 128) = 0x6B636174535ALL;
  *(v0 + 136) = 0xE600000000000000;
  v4 = sub_255D999E8();
  *(v0 + 144) = &type metadata for ZStackView;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0x61745356797A614CLL;
  *(v0 + 168) = 0xEA00000000006B63;
  v5 = sub_255D9A57C();
  *(v0 + 176) = &type metadata for LazyVStackView;
  *(v0 + 184) = v5;
  *(v0 + 192) = 0x61745348797A614CLL;
  *(v0 + 200) = 0xEA00000000006B63;
  v6 = sub_255D9B45C();
  *(v0 + 208) = &type metadata for LazyHStackView;
  *(v0 + 216) = v6;
  *(v0 + 224) = 1953720652;
  *(v0 + 232) = 0xE400000000000000;
  v7 = sub_255D5D924();
  *(v0 + 240) = &type metadata for ListView;
  *(v0 + 248) = v7;
  *(v0 + 256) = 0x6E6F6974636553;
  *(v0 + 264) = 0xE700000000000000;
  v8 = sub_255D5E6D8();
  *(v0 + 272) = &type metadata for SectionView;
  *(v0 + 280) = v8;
  *(v0 + 288) = 0x72656469766944;
  *(v0 + 296) = 0xE700000000000000;
  v9 = sub_255D5EAAC();
  *(v0 + 304) = &type metadata for DividerView;
  *(v0 + 312) = v9;
  *(v0 + 320) = 0x6567616D49;
  *(v0 + 328) = 0xE500000000000000;
  v10 = sub_255E0A940();
  *(v0 + 336) = &type metadata for SymbolView;
  *(v0 + 344) = v10;
  *(v0 + 352) = 0x616D49636E797341;
  *(v0 + 360) = 0xEA00000000006567;
  v11 = sub_255E0A994();
  *(v0 + 368) = &type metadata for AsyncImageView;
  *(v0 + 376) = v11;
  strcpy((v0 + 384), "ProgressView");
  *(v0 + 397) = 0;
  *(v0 + 398) = -5120;
  v12 = sub_255D69764();
  *(v0 + 400) = &type metadata for ProgressView;
  *(v0 + 408) = v12;
  *(v0 + 416) = 0x726563617053;
  *(v0 + 424) = 0xE600000000000000;
  v13 = sub_255D69800();
  *(v0 + 432) = &type metadata for SpacerView;
  *(v0 + 440) = v13;
  *(v0 + 448) = 0x6E6F74747542;
  *(v0 + 456) = 0xE600000000000000;
  v14 = sub_255DA7BF8();
  *(v0 + 464) = &type metadata for ButtonView;
  *(v0 + 472) = v14;
  *(v0 + 480) = 1802398028;
  *(v0 + 488) = 0xE400000000000000;
  v15 = type metadata accessor for LinkView();
  v16 = sub_255E0AAA0(&qword_27F7E6E50, 255, type metadata accessor for LinkView);
  *(v0 + 496) = v15;
  *(v0 + 504) = v16;
  *(v0 + 512) = 0x726F6C6F43;
  *(v0 + 520) = 0xE500000000000000;
  v17 = sub_255D6A0FC();
  *(v0 + 528) = &type metadata for ColorView;
  *(v0 + 536) = v17;
  strcpy((v0 + 544), "RemoteContent");
  *(v0 + 558) = -4864;
  v18 = sub_255D94DD4();
  *(v0 + 560) = &type metadata for DecodableRemoteContentView;
  *(v0 + 568) = v18;
  *(v0 + 576) = 0x697461676976614ELL;
  *(v0 + 584) = 0xEF6B636174536E6FLL;
  v19 = sub_255D9C89C();
  *(v0 + 592) = &type metadata for NavigationStackView;
  *(v0 + 600) = v19;
  strcpy((v0 + 608), "NavigationView");
  *(v0 + 623) = -18;
  v20 = sub_255D9D13C();
  *(v0 + 624) = &type metadata for NavigatingView;
  *(v0 + 632) = v20;
  strcpy((v0 + 640), "NavigationLink");
  *(v0 + 655) = -18;
  v21 = sub_255D9E83C();
  *(v0 + 656) = &type metadata for NavigationLinkView;
  *(v0 + 664) = v21;
  *(v0 + 672) = 0x656C67676F54;
  *(v0 + 680) = 0xE600000000000000;
  v22 = sub_255D6BAF0();
  *(v0 + 688) = &type metadata for ToggleView;
  *(v0 + 696) = v22;
  *(v0 + 704) = 0x6C6562614CLL;
  *(v0 + 712) = 0xE500000000000000;
  v23 = sub_255D6C5A0();
  *(v0 + 720) = &type metadata for LabelView;
  *(v0 + 728) = v23;
  *(v0 + 736) = 0x69566C6C6F726353;
  *(v0 + 744) = 0xEA00000000007765;
  v24 = sub_255D6C63C();
  *(v0 + 752) = &type metadata for ScrollingView;
  *(v0 + 760) = v24;
  *(v0 + 768) = 0x70756F7247;
  *(v0 + 776) = 0xE500000000000000;
  v25 = sub_255D6C9CC();
  *(v0 + 784) = &type metadata for GroupView;
  *(v0 + 792) = v25;
  *(v0 + 800) = 26185;
  *(v0 + 808) = 0xE200000000000000;
  v26 = sub_255D72218();
  *(v0 + 816) = &type metadata for IfView;
  *(v0 + 824) = v26;
  *(v0 + 832) = 0x68636145726F46;
  *(v0 + 840) = 0xE700000000000000;
  v27 = sub_255D6E134();
  *(v0 + 848) = &type metadata for ForEachView;
  *(v0 + 856) = v27;
  *(v0 + 864) = 1836216134;
  *(v0 + 872) = 0xE400000000000000;
  v28 = sub_255D6E5FC();
  *(v0 + 880) = &type metadata for FormView;
  *(v0 + 888) = v28;
  *(v0 + 896) = 0x686353726F6C6F43;
  *(v0 + 904) = 0xEB00000000656D65;
  v29 = type metadata accessor for ColorSchemeReader(0);
  v30 = sub_255E0AAA0(&qword_27F7E8D10, 255, type metadata accessor for ColorSchemeReader);
  *(v0 + 912) = v29;
  *(v0 + 920) = v30;
  strcpy((v0 + 928), "GeometryReader");
  *(v0 + 943) = -18;
  v31 = sub_255E0A9E8();
  *(v0 + 944) = &type metadata for GeometryReaderView;
  *(v0 + 952) = v31;
  *(v0 + 960) = 0xD000000000000010;
  *(v0 + 968) = 0x8000000255E667E0;
  v32 = sub_255E0AA3C();
  *(v0 + 976) = &type metadata for ScrollViewReaderView;
  *(v0 + 984) = v32;
  *(v0 + 992) = 0x694474756F79614CLL;
  *(v0 + 1000) = 0xEF6E6F6974636572;
  v33 = type metadata accessor for LayoutDirectionReader(0);
  v34 = sub_255E0AAA0(&qword_27F7E8D28, 255, type metadata accessor for LayoutDirectionReader);
  *(v0 + 1008) = v33;
  *(v0 + 1016) = v34;
  *(v0 + 1024) = 0x6569567974706D45;
  *(v0 + 1032) = 0xE900000000000077;
  v35 = sub_255D6E898();
  *(v0 + 1040) = &type metadata for EmptyViewView;
  *(v0 + 1048) = v35;
  *(v0 + 1056) = 0x72656B636950;
  *(v0 + 1064) = 0xE600000000000000;
  v36 = sub_255DA2C44();
  *(v0 + 1072) = &type metadata for PickerView;
  *(v0 + 1080) = v36;
  *(v0 + 1088) = 0x7474754274696445;
  *(v0 + 1096) = 0xEA00000000006E6FLL;
  v37 = sub_255DA7FB4();
  *(v0 + 1104) = &type metadata for EditButtonView;
  *(v0 + 1112) = v37;
  *(v0 + 1120) = 0xD000000000000017;
  *(v0 + 1128) = 0x8000000255E66800;
  v38 = sub_255D91F60();
  *(v0 + 1136) = &type metadata for MaterialEffectContainerView;
  *(v0 + 1144) = v38;
  v39 = sub_255DC524C(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D30, &qword_255E599A8);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F7E89A0 = v39;
  return result;
}

uint64_t sub_255E06384()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D38, &qword_255E599B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E59870;
  *(inited + 32) = 0x656C63726943;
  *(inited + 40) = 0xE600000000000000;
  v1 = sub_255D3DAC4();
  *(inited + 48) = &type metadata for CircleView;
  *(inited + 56) = v1;
  *(inited + 64) = 0x657370696C6C45;
  *(inited + 72) = 0xE700000000000000;
  v2 = sub_255D3DC80();
  *(inited + 80) = &type metadata for EllipseView;
  *(inited + 88) = v2;
  *(inited + 96) = 0x656C7573706143;
  *(inited + 104) = 0xE700000000000000;
  v3 = sub_255D3DE3C();
  *(inited + 112) = &type metadata for CapsuleView;
  *(inited + 120) = v3;
  *(inited + 128) = 0x6C676E6174636552;
  *(inited + 136) = 0xE900000000000065;
  v4 = sub_255D3DFF8();
  *(inited + 144) = &type metadata for RectangleView;
  *(inited + 152) = v4;
  *(inited + 160) = 0xD000000000000010;
  *(inited + 168) = 0x8000000255E66840;
  v5 = sub_255D3E208();
  *(inited + 176) = &type metadata for RoundedRectangleView;
  *(inited + 184) = v5;
  v6 = sub_255DC5238(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D40, &qword_255E599B8);
  result = swift_arrayDestroy();
  off_27F7E89A8 = v6;
  return result;
}

uint64_t sub_255E064EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D50, &qword_255E59A10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E59870;
  *(inited + 32) = 0x726F6C6F43;
  *(inited + 40) = 0xE500000000000000;
  v1 = sub_255E0AC98();
  *(inited + 48) = &type metadata for ColorShapeStyle;
  *(inited + 56) = v1;
  *(inited + 64) = 0x6C6169726574614DLL;
  *(inited + 72) = 0xE800000000000000;
  v2 = sub_255E0ACEC();
  *(inited + 80) = &type metadata for MaterialShapeStyle;
  *(inited + 88) = v2;
  strcpy((inited + 96), "LinearGradient");
  *(inited + 111) = -18;
  v3 = sub_255E0AD40();
  *(inited + 112) = &type metadata for LinearGradientShapeStyle;
  *(inited + 120) = v3;
  *(inited + 128) = 0x4772616C75676E41;
  *(inited + 136) = 0xEF746E6569646172;
  v4 = sub_255E0AD94();
  *(inited + 144) = &type metadata for AngularGradientShapeStyle;
  *(inited + 152) = v4;
  strcpy((inited + 160), "RadialGradient");
  *(inited + 175) = -18;
  v5 = sub_255E0ADE8();
  *(inited + 176) = &type metadata for RadialGradientShapeStyle;
  *(inited + 184) = v5;
  v6 = sub_255DC529C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8D80, &qword_255E59A18);
  result = swift_arrayDestroy();
  off_27F7E89B0 = v6;
  return result;
}

void *sub_255E06664()
{
  result = sub_255DC52B0(MEMORY[0x277D84F90]);
  off_27F7E89B8 = result;
  return result;
}

uint64_t sub_255E0668C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A50, &qword_255E59980);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_255E59880;
  *(v0 + 32) = 0x676E6964646170;
  *(v0 + 40) = 0xE700000000000000;
  v1 = sub_255E09050();
  *(v0 + 48) = &type metadata for PaddingModifier;
  *(v0 + 56) = v1;
  *(v0 + 64) = 0x726564726F62;
  *(v0 + 72) = 0xE600000000000000;
  v2 = sub_255E090A4();
  *(v0 + 80) = &type metadata for BorderModifier;
  *(v0 + 88) = v2;
  strcpy((v0 + 96), "roundedBorder");
  *(v0 + 110) = -4864;
  v3 = sub_255E090F8();
  *(v0 + 112) = &type metadata for RoundedBorderModifier;
  *(v0 + 120) = v3;
  *(v0 + 128) = 0x756F72676B636162;
  *(v0 + 136) = 0xEF726F6C6F43646ELL;
  v4 = sub_255E0914C();
  *(v0 + 144) = &type metadata for BackgroundColorModifier;
  *(v0 + 152) = v4;
  *(v0 + 160) = 0x756F726765726F66;
  *(v0 + 168) = 0xEF726F6C6F43646ELL;
  v5 = sub_255E091A0();
  *(v0 + 176) = &type metadata for ForegroundColorModifier;
  *(v0 + 184) = v5;
  *(v0 + 192) = 0x756F726765726F66;
  *(v0 + 200) = 0xEF656C797453646ELL;
  v6 = sub_255E091F4();
  *(v0 + 208) = &type metadata for ForegroundStyleModifier;
  *(v0 + 216) = v6;
  *(v0 + 224) = 0x6F43746E65636361;
  *(v0 + 232) = 0xEB00000000726F6CLL;
  v7 = sub_255E09248();
  *(v0 + 240) = &type metadata for AccentColorModifier;
  *(v0 + 248) = v7;
  *(v0 + 256) = 1953393012;
  *(v0 + 264) = 0xE400000000000000;
  v8 = sub_255E0929C();
  *(v0 + 272) = &type metadata for TintColorModifier;
  *(v0 + 280) = v8;
  *(v0 + 288) = 0x656D617266;
  *(v0 + 296) = 0xE500000000000000;
  v9 = sub_255E092F0();
  *(v0 + 304) = &type metadata for FrameModifier;
  *(v0 + 312) = v9;
  *(v0 + 320) = 0x696D694C656E696CLL;
  *(v0 + 328) = 0xE900000000000074;
  v10 = sub_255E09344();
  *(v0 + 336) = &type metadata for LineLimitModifier;
  *(v0 + 344) = v10;
  *(v0 + 352) = 0xD000000000000016;
  *(v0 + 360) = 0x8000000255E66460;
  v11 = sub_255E09398();
  *(v0 + 368) = &type metadata for MultiLineTextAlignmentModifier;
  *(v0 + 376) = v11;
  strcpy((v0 + 384), "cornerRadius");
  *(v0 + 397) = 0;
  *(v0 + 398) = -5120;
  v12 = sub_255E093EC();
  *(v0 + 400) = &type metadata for CornerRadiusModifier;
  *(v0 + 408) = v12;
  *(v0 + 416) = 0x536C6F72746E6F63;
  *(v0 + 424) = 0xEB00000000657A69;
  v13 = type metadata accessor for ControlSizeModifier();
  v14 = sub_255E0AAA0(&qword_27F7E8AB8, 255, type metadata accessor for ControlSizeModifier);
  *(v0 + 432) = v13;
  *(v0 + 440) = v14;
  *(v0 + 448) = 0x74536E6F74747562;
  *(v0 + 456) = 0xEB00000000656C79;
  v15 = sub_255E09440();
  *(v0 + 464) = &type metadata for ButtonStyleModifier;
  *(v0 + 472) = v15;
  strcpy((v0 + 480), "layoutPriority");
  *(v0 + 495) = -18;
  v16 = sub_255E09494();
  *(v0 + 496) = &type metadata for LayoutPriorityModifier;
  *(v0 + 504) = v16;
  *(v0 + 512) = 1953394534;
  *(v0 + 520) = 0xE400000000000000;
  v17 = sub_255E094E8();
  *(v0 + 528) = &type metadata for FontModifier;
  *(v0 + 536) = v17;
  *(v0 + 544) = 0x7472656C61;
  *(v0 + 552) = 0xE500000000000000;
  v18 = sub_255E0953C();
  *(v0 + 560) = &type metadata for AlertModifier;
  *(v0 + 568) = v18;
  *(v0 + 576) = 0xD000000000000012;
  *(v0 + 584) = 0x8000000255E66480;
  v19 = sub_255E09590();
  *(v0 + 592) = &type metadata for ConfirmationDialogModifier;
  *(v0 + 600) = v19;
  *(v0 + 608) = 26217;
  *(v0 + 616) = 0xE200000000000000;
  v20 = sub_255E095E4();
  *(v0 + 624) = &type metadata for IfModifier;
  *(v0 + 632) = v20;
  *(v0 + 640) = 0x776F64616873;
  *(v0 + 648) = 0xE600000000000000;
  v21 = sub_255E09638();
  *(v0 + 656) = &type metadata for ShadowModifier;
  *(v0 + 664) = v21;
  *(v0 + 672) = 0x697461676976616ELL;
  *(v0 + 680) = 0xEF656C7469546E6FLL;
  v22 = sub_255E0968C();
  *(v0 + 688) = &type metadata for NavigationTitleModifier;
  *(v0 + 696) = v22;
  *(v0 + 704) = 0xD00000000000001DLL;
  *(v0 + 712) = 0x8000000255E664A0;
  v23 = sub_255E096E0();
  *(v0 + 720) = &type metadata for NavigationBarTitleDisplayModeModifier;
  *(v0 + 728) = v23;
  *(v0 + 736) = 0x656B6F727473;
  *(v0 + 744) = 0xE600000000000000;
  v24 = sub_255DA6700();
  *(v0 + 752) = &type metadata for StrokeModifier;
  *(v0 + 760) = v24;
  *(v0 + 768) = 0x7A69536465786966;
  *(v0 + 776) = 0xE900000000000065;
  v25 = sub_255E09734();
  *(v0 + 784) = &type metadata for FixedSizeModifier;
  *(v0 + 792) = v25;
  *(v0 + 800) = 0x7061685370696C63;
  *(v0 + 808) = 0xE900000000000065;
  v26 = sub_255E09788();
  *(v0 + 816) = &type metadata for ClipShapeModifier;
  *(v0 + 824) = v26;
  *(v0 + 832) = 0x7465656873;
  *(v0 + 840) = 0xE500000000000000;
  v27 = sub_255E097DC();
  *(v0 + 848) = &type metadata for SheetModifier;
  *(v0 + 856) = v27;
  *(v0 + 864) = 0x7261657070416E6FLL;
  *(v0 + 872) = 0xE800000000000000;
  v28 = sub_255E09830();
  *(v0 + 880) = &type metadata for OnAppearModifier;
  *(v0 + 888) = v28;
  strcpy((v0 + 896), "onTapGesture");
  *(v0 + 909) = 0;
  *(v0 + 910) = -5120;
  v29 = sub_255DC80E4();
  *(v0 + 912) = &type metadata for OnTapModifier;
  *(v0 + 920) = v29;
  *(v0 + 928) = 0x756F72676B636162;
  *(v0 + 936) = 0xEA0000000000646ELL;
  v30 = sub_255E09884();
  *(v0 + 944) = &type metadata for BackgroundModifier;
  *(v0 + 952) = v30;
  *(v0 + 960) = 0x79616C7265766FLL;
  *(v0 + 968) = 0xE700000000000000;
  v31 = sub_255E098D8();
  *(v0 + 976) = &type metadata for OverlayModifier;
  *(v0 + 984) = v31;
  *(v0 + 992) = 0x6F6974616D696E61;
  *(v0 + 1000) = 0xE90000000000006ELL;
  v32 = sub_255E0992C();
  *(v0 + 1008) = &type metadata for AnimationModifier;
  *(v0 + 1016) = v32;
  *(v0 + 1024) = 1684828002;
  *(v0 + 1032) = 0xE400000000000000;
  v33 = sub_255DC8140();
  *(v0 + 1040) = &type metadata for BoldModifier;
  *(v0 + 1048) = v33;
  *(v0 + 1056) = 0x63696C617469;
  *(v0 + 1064) = 0xE600000000000000;
  v34 = sub_255DC8194();
  *(v0 + 1072) = &type metadata for ItalicModifier;
  *(v0 + 1080) = v34;
  *(v0 + 1088) = 0x636170736F6E6F6DLL;
  *(v0 + 1096) = 0xEA00000000006465;
  v35 = sub_255DC81E8();
  *(v0 + 1104) = &type metadata for MonospacedModifier;
  *(v0 + 1112) = v35;
  *(v0 + 1120) = 0x636170736F6E6F6DLL;
  *(v0 + 1128) = 0xEF74696769446465;
  v36 = sub_255DC823C();
  *(v0 + 1136) = &type metadata for MonospacedDigitModifier;
  *(v0 + 1144) = v36;
  *(v0 + 1152) = 0x676E696E72656BLL;
  *(v0 + 1160) = 0xE700000000000000;
  v37 = sub_255DC8290();
  *(v0 + 1168) = &type metadata for KerningModifier;
  *(v0 + 1176) = v37;
  *(v0 + 1184) = 0x676E696B63617274;
  *(v0 + 1192) = 0xE800000000000000;
  v38 = sub_255DC82E4();
  *(v0 + 1200) = &type metadata for TrackingModifier;
  *(v0 + 1208) = v38;
  strcpy((v0 + 1216), "baselineOffset");
  *(v0 + 1231) = -18;
  v39 = sub_255DC8338();
  *(v0 + 1232) = &type metadata for BaselineOffsetModifier;
  *(v0 + 1240) = v39;
  *(v0 + 1248) = 0x6C7974536D726F66;
  *(v0 + 1256) = 0xE900000000000065;
  v40 = sub_255DC838C();
  *(v0 + 1264) = &type metadata for FormStyleModifier;
  *(v0 + 1272) = v40;
  *(v0 + 1280) = 0x666645656C616373;
  *(v0 + 1288) = 0xEB00000000746365;
  v41 = sub_255E09980();
  *(v0 + 1296) = &type metadata for ScaleEffectModifier;
  *(v0 + 1304) = v41;
  *(v0 + 1312) = 0x6152746365707361;
  *(v0 + 1320) = 0xEB000000006F6974;
  v42 = sub_255E099D4();
  *(v0 + 1328) = &type metadata for AspectRatioModifier;
  *(v0 + 1336) = v42;
  *(v0 + 1344) = 0xD000000000000012;
  *(v0 + 1352) = 0x8000000255E664C0;
  v43 = sub_255E09A28();
  *(v0 + 1360) = &type metadata for AccessibilityLabelModifier;
  *(v0 + 1368) = v43;
  *(v0 + 1376) = 0xD000000000000017;
  *(v0 + 1384) = 0x8000000255E664E0;
  v44 = sub_255E09A7C();
  *(v0 + 1392) = &type metadata for AccessibilityIdentifierModifier;
  *(v0 + 1400) = v44;
  *(v0 + 1408) = 0xD000000000000013;
  *(v0 + 1416) = 0x8000000255E66500;
  v45 = sub_255DC849C();
  *(v0 + 1424) = &type metadata for AccessibilityHiddenModifier;
  *(v0 + 1432) = v45;
  *(v0 + 1440) = 0xD000000000000013;
  *(v0 + 1448) = 0x8000000255E66520;
  v46 = sub_255E09AD0();
  *(v0 + 1456) = &type metadata for SymbolRenderingModeModifier;
  *(v0 + 1464) = v46;
  *(v0 + 1472) = 0x6163536567616D69;
  *(v0 + 1480) = 0xEA0000000000656CLL;
  v47 = sub_255E09B24();
  *(v0 + 1488) = &type metadata for ImageScaleModifier;
  *(v0 + 1496) = v47;
  *(v0 + 1504) = 0x7261626C6F6F74;
  *(v0 + 1512) = 0xE700000000000000;
  v48 = sub_255DC84F0();
  *(v0 + 1520) = &type metadata for ToolbarModifier;
  *(v0 + 1528) = v48;
  strcpy((v0 + 1536), "contentShape");
  *(v0 + 1549) = 0;
  *(v0 + 1550) = -5120;
  v49 = sub_255E09B78();
  *(v0 + 1552) = &type metadata for ContentShapeModifier;
  *(v0 + 1560) = v49;
  *(v0 + 1568) = 0x7453656C67676F74;
  *(v0 + 1576) = 0xEB00000000656C79;
  v50 = sub_255E09BCC();
  *(v0 + 1584) = &type metadata for ToggleStyleModifier;
  *(v0 + 1592) = v50;
  *(v0 + 1600) = 0x64656C6261736964;
  *(v0 + 1608) = 0xE800000000000000;
  v51 = sub_255E09C20();
  *(v0 + 1616) = &type metadata for DisabledModifier;
  *(v0 + 1624) = v51;
  *(v0 + 1632) = 0xD00000000000001DLL;
  *(v0 + 1640) = 0x8000000255E66540;
  v52 = sub_255DC858C();
  *(v0 + 1648) = &type metadata for NavigationBarBackButtonHiddenModifier;
  *(v0 + 1656) = v52;
  *(v0 + 1664) = 0x74657366666FLL;
  *(v0 + 1672) = 0xE600000000000000;
  v53 = sub_255E09C74();
  *(v0 + 1680) = &type metadata for OffsetModifier;
  *(v0 + 1688) = v53;
  strcpy((v0 + 1696), "listRowInsets");
  *(v0 + 1710) = -4864;
  v54 = sub_255E09CC8();
  *(v0 + 1712) = &type metadata for ListRowInsetsModifier;
  *(v0 + 1720) = v54;
  *(v0 + 1728) = 0xD000000000000010;
  *(v0 + 1736) = 0x8000000255E66560;
  v55 = sub_255E09D1C();
  *(v0 + 1744) = &type metadata for ListRowSeparatorModifier;
  *(v0 + 1752) = v55;
  *(v0 + 1760) = 0x6C7974537473696CLL;
  *(v0 + 1768) = 0xE900000000000065;
  v56 = sub_255E09D70();
  *(v0 + 1776) = &type metadata for ListStyleModifier;
  *(v0 + 1784) = v56;
  *(v0 + 1792) = 0xD000000000000011;
  *(v0 + 1800) = 0x8000000255E66580;
  v57 = sub_255E09DC4();
  *(v0 + 1808) = &type metadata for ListRowBackgroundModifier;
  *(v0 + 1816) = v57;
  *(v0 + 1824) = 0x7070617369446E6FLL;
  *(v0 + 1832) = 0xEB00000000726165;
  v58 = sub_255E09E18();
  *(v0 + 1840) = &type metadata for OnDisappearModifier;
  *(v0 + 1848) = v58;
  *(v0 + 1856) = 0xD00000000000001ALL;
  *(v0 + 1864) = 0x8000000255E665A0;
  v59 = sub_255DC8690();
  *(v0 + 1872) = &type metadata for InteractiveDismissDisabledModifier;
  *(v0 + 1880) = v59;
  *(v0 + 1888) = 0x64657070696C63;
  *(v0 + 1896) = 0xE700000000000000;
  v60 = sub_255E09E6C();
  *(v0 + 1904) = &type metadata for ClippedModifier;
  *(v0 + 1912) = v60;
  *(v0 + 1920) = 0xD000000000000011;
  *(v0 + 1928) = 0x8000000255E665C0;
  v61 = sub_255E09EC0();
  *(v0 + 1936) = &type metadata for ButtonBorderShapeModifier;
  *(v0 + 1944) = v61;
  *(v0 + 1952) = 25705;
  *(v0 + 1960) = 0xE200000000000000;
  v62 = sub_255E09F14();
  *(v0 + 1968) = &type metadata for IdentifierModifier;
  *(v0 + 1976) = v62;
  *(v0 + 1984) = 0x65676E6168436E6FLL;
  *(v0 + 1992) = 0xE800000000000000;
  v63 = sub_255E09F68();
  *(v0 + 2000) = &type metadata for OnChangeModifier;
  *(v0 + 2008) = v63;
  *(v0 + 2016) = 0xD000000000000015;
  *(v0 + 2024) = 0x8000000255E665E0;
  v64 = sub_255E09FBC();
  *(v0 + 2032) = &type metadata for NavigationDestinationModifier;
  *(v0 + 2040) = v64;
  strcpy((v0 + 2048), "alignmentGuide");
  *(v0 + 2063) = -18;
  v65 = sub_255E0A010();
  *(v0 + 2064) = &type metadata for AlignmentGuideModifier;
  *(v0 + 2072) = v65;
  *(v0 + 2080) = 1802723693;
  *(v0 + 2088) = 0xE400000000000000;
  v66 = sub_255E0A064();
  *(v0 + 2096) = &type metadata for MaskModifier;
  *(v0 + 2104) = v66;
  *(v0 + 2112) = 0xD000000000000012;
  *(v0 + 2120) = 0x8000000255E66600;
  v67 = sub_255E0A0B8();
  *(v0 + 2128) = &type metadata for ListSectionSpacingModifier;
  *(v0 + 2136) = v67;
  *(v0 + 2144) = 0xD000000000000012;
  *(v0 + 2152) = 0x8000000255E66620;
  v68 = sub_255E0A10C();
  *(v0 + 2160) = &type metadata for AccessibilityValueModifier;
  *(v0 + 2168) = v68;
  *(v0 + 2176) = 0xD000000000000011;
  *(v0 + 2184) = 0x8000000255E66640;
  v69 = sub_255E0A160();
  *(v0 + 2192) = &type metadata for AccessibilityHintModifier;
  *(v0 + 2200) = v69;
  *(v0 + 2208) = 0xD000000000000013;
  *(v0 + 2216) = 0x8000000255E66660;
  v70 = sub_255E0A1B4();
  *(v0 + 2224) = &type metadata for AccessibilityActionModifier;
  *(v0 + 2232) = v70;
  *(v0 + 2240) = 0xD000000000000014;
  *(v0 + 2248) = 0x8000000255E66680;
  v71 = sub_255E0A208();
  *(v0 + 2256) = &type metadata for AccessibilityElementModifier;
  *(v0 + 2264) = v71;
  *(v0 + 2272) = 0xD000000000000015;
  *(v0 + 2280) = 0x8000000255E666A0;
  v72 = sub_255DC8754();
  *(v0 + 2288) = &type metadata for AccessibilityChildrenModifier;
  *(v0 + 2296) = v72;
  *(v0 + 2304) = 0xD000000000000014;
  *(v0 + 2312) = 0x8000000255E666C0;
  v73 = sub_255E0A25C();
  *(v0 + 2320) = &type metadata for AccessibilityHeadingModifier;
  *(v0 + 2328) = v73;
  *(v0 + 2336) = 0xD000000000000014;
  *(v0 + 2344) = 0x8000000255E666E0;
  v74 = type metadata accessor for AccessibilityFocusedModifier();
  v75 = sub_255E0AAA0(&qword_27F7E8C20, 255, type metadata accessor for AccessibilityFocusedModifier);
  *(v0 + 2352) = v74;
  *(v0 + 2360) = v75;
  *(v0 + 2368) = 0xD000000000000016;
  *(v0 + 2376) = 0x8000000255E66700;
  v76 = sub_255E0A2B0();
  *(v0 + 2384) = &type metadata for AccessibilityAddTraitsModifier;
  *(v0 + 2392) = v76;
  *(v0 + 2400) = 0xD000000000000019;
  *(v0 + 2408) = 0x8000000255E66720;
  v77 = sub_255E0A304();
  *(v0 + 2416) = &type metadata for AccessibilityRemoveTraitsModifier;
  *(v0 + 2424) = v77;
  *(v0 + 2432) = 6775156;
  *(v0 + 2440) = 0xE300000000000000;
  v78 = sub_255E0A358();
  *(v0 + 2448) = &type metadata for TagModifier;
  *(v0 + 2456) = v78;
  *(v0 + 2464) = 0x745372656B636970;
  *(v0 + 2472) = 0xEB00000000656C79;
  v79 = sub_255E0A3AC();
  *(v0 + 2480) = &type metadata for PickerStyleModifier;
  *(v0 + 2488) = v79;
  *(v0 + 2496) = 0x65766F4D6E6FLL;
  *(v0 + 2504) = 0xE600000000000000;
  v80 = sub_255E0A400();
  *(v0 + 2512) = &type metadata for OnMoveModifier;
  *(v0 + 2520) = v80;
  *(v0 + 2528) = 0x6574656C65446E6FLL;
  *(v0 + 2536) = 0xE800000000000000;
  v81 = sub_255E0A454();
  *(v0 + 2544) = &type metadata for OnDeleteModifier;
  *(v0 + 2552) = v81;
  *(v0 + 2560) = 0xD000000000000017;
  *(v0 + 2568) = 0x8000000255E66740;
  v82 = sub_255E0A4A8();
  *(v0 + 2576) = &type metadata for ScrollContentBackgroundModifier;
  *(v0 + 2584) = v82;
  *(v0 + 2592) = 0xD000000000000010;
  *(v0 + 2600) = 0x8000000255E66760;
  v83 = sub_255E0A4FC();
  *(v0 + 2608) = &type metadata for AllowsHitTestingModifier;
  *(v0 + 2616) = v83;
  *(v0 + 2624) = 0x636F50636967616DLL;
  *(v0 + 2632) = 0xEB0000000074656BLL;
  v84 = sub_255E0A550();
  *(v0 + 2640) = &type metadata for MagicPocketModifier;
  *(v0 + 2648) = v84;
  *(v0 + 2656) = 0xD000000000000010;
  *(v0 + 2664) = 0x8000000255E66780;
  v85 = sub_255E0A5A4();
  *(v0 + 2672) = &type metadata for MagicPocketStyleModifier;
  *(v0 + 2680) = v85;
  *(v0 + 2688) = 0x6666457373616C67;
  *(v0 + 2696) = 0xEB00000000746365;
  v86 = sub_255DC8AFC();
  *(v0 + 2704) = &type metadata for GlassEffectModifier;
  *(v0 + 2712) = v86;
  v87 = sub_255DC5260(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8C78, &qword_255E59988);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F7E89C0 = v87;
  return result;
}

uint64_t sub_255E076E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8C80, &qword_255E59990);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E59890;
  *(inited + 32) = 0x7373696D736964;
  *(inited + 40) = 0xE700000000000000;
  v1 = type metadata accessor for DismissAction(0);
  v2 = sub_255E0AAA0(&qword_27F7E8C88, 255, type metadata accessor for DismissAction);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  *(inited + 64) = 7628147;
  *(inited + 72) = 0xE300000000000000;
  v3 = sub_255E0A5F8();
  *(inited + 80) = &type metadata for SetAction;
  *(inited + 88) = v3;
  *(inited + 96) = 0x7571655270747468;
  *(inited + 104) = 0xEB00000000747365;
  v4 = sub_255E0A64C();
  *(inited + 112) = &type metadata for HTTPRequestAction;
  *(inited + 120) = v4;
  *(inited + 128) = 0x4C52556E65706FLL;
  *(inited + 136) = 0xE700000000000000;
  v5 = type metadata accessor for OpenURLAction(0);
  v6 = sub_255E0AAA0(&qword_27F7E8CA0, 255, type metadata accessor for OpenURLAction);
  *(inited + 144) = v5;
  *(inited + 152) = v6;
  *(inited + 160) = 0x64616F6C6572;
  *(inited + 168) = 0xE600000000000000;
  v7 = sub_255E0A6A0();
  *(inited + 176) = &type metadata for ReloadAction;
  *(inited + 184) = v7;
  *(inited + 192) = 26217;
  *(inited + 200) = 0xE200000000000000;
  v8 = sub_255E0A6F4();
  *(inited + 208) = &type metadata for IfAction;
  *(inited + 216) = v8;
  strcpy((inited + 224), "withAnimation");
  *(inited + 238) = -4864;
  v9 = sub_255E0A748();
  *(inited + 240) = &type metadata for AnimationAction;
  *(inited + 248) = v9;
  *(inited + 256) = 0x6F546C6C6F726373;
  *(inited + 264) = 0xE800000000000000;
  v10 = type metadata accessor for ScrollAction();
  v11 = sub_255E0AAA0(&qword_27F7E8CC0, 255, type metadata accessor for ScrollAction);
  *(inited + 272) = v10;
  *(inited + 280) = v11;
  *(inited + 288) = 0x766F4D7961727261;
  *(inited + 296) = 0xE900000000000065;
  v12 = sub_255E0A79C();
  *(inited + 304) = &type metadata for MoveAction;
  *(inited + 312) = v12;
  *(inited + 320) = 0x6C65447961727261;
  *(inited + 328) = 0xEB00000000657465;
  v13 = sub_255E0A7F0();
  *(inited + 336) = &type metadata for DeleteAction;
  *(inited + 344) = v13;
  *(inited + 352) = 0x656C654474636964;
  *(inited + 360) = 0xEA00000000006574;
  v14 = sub_255E0A844();
  *(inited + 368) = &type metadata for DictDeleteAction;
  *(inited + 376) = v14;
  *(inited + 384) = 0x7070417961727261;
  *(inited + 392) = 0xEB00000000646E65;
  v15 = sub_255E0A898();
  *(inited + 400) = &type metadata for AppendAction;
  *(inited + 408) = v15;
  *(inited + 416) = 0x6D65527961727261;
  *(inited + 424) = 0xEF7473614C65766FLL;
  v16 = sub_255E0A8EC();
  *(inited + 432) = &type metadata for RemoveLastAction;
  *(inited + 440) = v16;
  v17 = sub_255DC5274(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8CF0, &qword_255E59998);
  result = swift_arrayDestroy();
  off_27F7E89C8 = v17;
  return result;
}

uint64_t sub_255E07A54()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A38, &qword_255E59970);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 32) = 0x6C62617A69736572;
  *(inited + 40) = 0xE900000000000065;
  v1 = type metadata accessor for ResizableImageModifier();
  v2 = sub_255E0AAA0(&qword_27F7E8A40, 255, type metadata accessor for ResizableImageModifier);
  *(inited + 48) = v1;
  *(inited + 56) = v2;
  v3 = sub_255DC5288(inited);
  swift_setDeallocating();
  result = sub_255E08FE8(inited + 32);
  off_27F7E89D0 = v3;
  return result;
}

id ContentRegistry.init()()
{
  v1 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_contentRegistry;
  v2 = MEMORY[0x277D84F90];
  *&v0[v1] = sub_255DC524C(MEMORY[0x277D84F90]);
  v3 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_shapeRegistry;
  *&v0[v3] = sub_255DC5238(v2);
  v4 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_modifierRegistry;
  *&v0[v4] = sub_255DC5260(v2);
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_imageModifierRegistry;
  *&v0[v5] = sub_255DC5288(v2);
  v6 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_actionRegistry;
  *&v0[v6] = sub_255DC5274(v2);
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ContentRegistry();
  return objc_msgSendSuper2(&v8, sel_init);
}

uint64_t sub_255E07D40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = *a5;
  swift_beginAccess();
  v13 = *(v6 + v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v6 + v12);
  *(v6 + v12) = 0x8000000000000000;
  a6(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);
  *(v6 + v12) = v16;
  return swift_endAccess();
}

uint64_t sub_255E07DF4(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_contentRegistry;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_255D3CA20(a1, a2);
    if (v8)
    {
      v17 = *(*(v6 + 56) + 16 * v7);

      *&v9 = v17;
      return v9;
    }
  }

  if (qword_27F7E5E90 != -1)
  {
    swift_once();
  }

  v10 = off_27F7E89A0;
  if (*(off_27F7E89A0 + 2))
  {
    v11 = sub_255D3CA20(a1, a2);
    if (v12)
    {
      return *(v10[7] + 16 * v11);
    }
  }

  type metadata accessor for ContentRegistryError();
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError);
  swift_allocError();
  v15 = v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
  *v15 = a1;
  v15[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E0800C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_shapeRegistry;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_255D3CA20(a1, a2);
    if (v8)
    {
      v17 = *(*(v6 + 56) + 16 * v7);

      *&v9 = v17;
      return v9;
    }
  }

  if (qword_27F7E5E98 != -1)
  {
    swift_once();
  }

  v10 = off_27F7E89A8;
  if (*(off_27F7E89A8 + 2))
  {
    v11 = sub_255D3CA20(a1, a2);
    if (v12)
    {
      return *(v10[7] + 16 * v11);
    }
  }

  type metadata accessor for ContentRegistryError();
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError);
  swift_allocError();
  v15 = v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
  *v15 = a1;
  v15[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E08224(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_modifierRegistry;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_255D3CA20(a1, a2);
    if (v8)
    {
      v17 = *(*(v6 + 56) + 16 * v7);

      *&v9 = v17;
      return v9;
    }
  }

  if (qword_27F7E5EB0 != -1)
  {
    swift_once();
  }

  v10 = off_27F7E89C0;
  if (*(off_27F7E89C0 + 2))
  {
    v11 = sub_255D3CA20(a1, a2);
    if (v12)
    {
      return *(v10[7] + 16 * v11);
    }
  }

  type metadata accessor for ContentRegistryError();
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError);
  swift_allocError();
  v15 = v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
  *v15 = a1;
  v15[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E0843C(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_imageModifierRegistry;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_255D3CA20(a1, a2);
    if (v8)
    {
      v17 = *(*(v6 + 56) + 16 * v7);

      *&v9 = v17;
      return v9;
    }
  }

  if (qword_27F7E5EC0 != -1)
  {
    swift_once();
  }

  v10 = off_27F7E89D0;
  if (*(off_27F7E89D0 + 2))
  {
    v11 = sub_255D3CA20(a1, a2);
    if (v12)
    {
      return *(v10[7] + 16 * v11);
    }
  }

  type metadata accessor for ContentRegistryError();
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError);
  swift_allocError();
  v15 = v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
  *v15 = a1;
  v15[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t sub_255E08654(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC6LiftUI15ContentRegistry_actionRegistry;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (*(v6 + 16))
  {

    v7 = sub_255D3CA20(a1, a2);
    if (v8)
    {
      v17 = *(*(v6 + 56) + 16 * v7);

      *&v9 = v17;
      return v9;
    }
  }

  if (qword_27F7E5EB8 != -1)
  {
    swift_once();
  }

  v10 = off_27F7E89C8;
  if (*(off_27F7E89C8 + 2))
  {
    v11 = sub_255D3CA20(a1, a2);
    if (v12)
    {
      return *(v10[7] + 16 * v11);
    }
  }

  type metadata accessor for ContentRegistryError();
  sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError);
  swift_allocError();
  v15 = v14;
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
  *v15 = a1;
  v15[1] = a2;

  sub_255E3A9A8();

  MEMORY[0x259C4E8F0](a1, a2);
  sub_255E3A9C8();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

id ContentRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContentRegistry();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_255E0891C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentRegistryError();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255E3A9F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_255E08F84(v2, v7);
  if (swift_getEnumCaseMultiPayload() > 6)
  {
    v16 = 1;
  }

  else
  {
    v13 = *(v7 + 1);

    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968);
    v15 = *(v9 + 32);
    v15(v12, &v7[*(v14 + 48)], v8);
    v15(a1, v12, v8);
    v16 = 0;
  }

  return (*(v9 + 56))(a1, v16, 1, v8);
}

uint64_t sub_255E08AC4()
{
  sub_255D3971C();
  sub_255E38D58();
  return v1;
}

uint64_t _s7SwiftUI4ViewP04LiftB0E15contentRegistryyQrAD07ContentF0CF_0()
{
  swift_getKeyPath();
  sub_255E398D8();
}

id sub_255E08B74()
{
  result = [objc_allocWithZone(type metadata accessor for ContentRegistry()) init];
  qword_27F7E89D8 = result;
  return result;
}

id sub_255E08BA4@<X0>(void *a1@<X8>)
{
  if (qword_27F7E5EC8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27F7E89D8;
  *a1 = qword_27F7E89D8;

  return v2;
}

uint64_t sub_255E08C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_255E0AAA0(&qword_27F7E8D48, a2, type metadata accessor for ContentRegistry);

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

unint64_t sub_255E08E00()
{
  result = qword_27F7E8A10;
  if (!qword_27F7E8A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8A08, &unk_255E598F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A10);
  }

  return result;
}

uint64_t type metadata accessor for ContentRegistryError()
{
  result = qword_27F7E8A18;
  if (!qword_27F7E8A18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_255E08EB0()
{
  sub_255E08F1C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_255E08F1C()
{
  if (!qword_27F7E8A28)
  {
    sub_255E3A9F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F7E8A28);
    }
  }
}

uint64_t sub_255E08F84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentRegistryError();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255E08FE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A48, &qword_255E59978);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255E09050()
{
  result = qword_27F7E8A58;
  if (!qword_27F7E8A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A58);
  }

  return result;
}

unint64_t sub_255E090A4()
{
  result = qword_27F7E8A60;
  if (!qword_27F7E8A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A60);
  }

  return result;
}

unint64_t sub_255E090F8()
{
  result = qword_27F7E8A68;
  if (!qword_27F7E8A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A68);
  }

  return result;
}

unint64_t sub_255E0914C()
{
  result = qword_27F7E8A70;
  if (!qword_27F7E8A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A70);
  }

  return result;
}

unint64_t sub_255E091A0()
{
  result = qword_27F7E8A78;
  if (!qword_27F7E8A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A78);
  }

  return result;
}

unint64_t sub_255E091F4()
{
  result = qword_27F7E8A80;
  if (!qword_27F7E8A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A80);
  }

  return result;
}

unint64_t sub_255E09248()
{
  result = qword_27F7E8A88;
  if (!qword_27F7E8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A88);
  }

  return result;
}

unint64_t sub_255E0929C()
{
  result = qword_27F7E8A90;
  if (!qword_27F7E8A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A90);
  }

  return result;
}

unint64_t sub_255E092F0()
{
  result = qword_27F7E8A98;
  if (!qword_27F7E8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8A98);
  }

  return result;
}

unint64_t sub_255E09344()
{
  result = qword_27F7E8AA0;
  if (!qword_27F7E8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AA0);
  }

  return result;
}

unint64_t sub_255E09398()
{
  result = qword_27F7E8AA8;
  if (!qword_27F7E8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AA8);
  }

  return result;
}

unint64_t sub_255E093EC()
{
  result = qword_27F7E8AB0;
  if (!qword_27F7E8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AB0);
  }

  return result;
}

unint64_t sub_255E09440()
{
  result = qword_27F7E8AC0;
  if (!qword_27F7E8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AC0);
  }

  return result;
}

unint64_t sub_255E09494()
{
  result = qword_27F7E8AC8;
  if (!qword_27F7E8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AC8);
  }

  return result;
}

unint64_t sub_255E094E8()
{
  result = qword_27F7E8AD0;
  if (!qword_27F7E8AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AD0);
  }

  return result;
}

unint64_t sub_255E0953C()
{
  result = qword_27F7E8AD8;
  if (!qword_27F7E8AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AD8);
  }

  return result;
}

unint64_t sub_255E09590()
{
  result = qword_27F7E8AE0;
  if (!qword_27F7E8AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AE0);
  }

  return result;
}

unint64_t sub_255E095E4()
{
  result = qword_27F7E8AE8;
  if (!qword_27F7E8AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AE8);
  }

  return result;
}

unint64_t sub_255E09638()
{
  result = qword_27F7E8AF0;
  if (!qword_27F7E8AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AF0);
  }

  return result;
}

unint64_t sub_255E0968C()
{
  result = qword_27F7E8AF8;
  if (!qword_27F7E8AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8AF8);
  }

  return result;
}

unint64_t sub_255E096E0()
{
  result = qword_27F7E8B00;
  if (!qword_27F7E8B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B00);
  }

  return result;
}

unint64_t sub_255E09734()
{
  result = qword_27F7E8B08;
  if (!qword_27F7E8B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B08);
  }

  return result;
}

unint64_t sub_255E09788()
{
  result = qword_27F7E8B10;
  if (!qword_27F7E8B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B10);
  }

  return result;
}

unint64_t sub_255E097DC()
{
  result = qword_27F7E8B18;
  if (!qword_27F7E8B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B18);
  }

  return result;
}

unint64_t sub_255E09830()
{
  result = qword_27F7E8B20;
  if (!qword_27F7E8B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B20);
  }

  return result;
}

unint64_t sub_255E09884()
{
  result = qword_27F7E8B28;
  if (!qword_27F7E8B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B28);
  }

  return result;
}

unint64_t sub_255E098D8()
{
  result = qword_27F7E8B30;
  if (!qword_27F7E8B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B30);
  }

  return result;
}

unint64_t sub_255E0992C()
{
  result = qword_27F7E8B38;
  if (!qword_27F7E8B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B38);
  }

  return result;
}

unint64_t sub_255E09980()
{
  result = qword_27F7E8B40;
  if (!qword_27F7E8B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B40);
  }

  return result;
}

unint64_t sub_255E099D4()
{
  result = qword_27F7E8B48;
  if (!qword_27F7E8B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B48);
  }

  return result;
}

unint64_t sub_255E09A28()
{
  result = qword_27F7E8B50;
  if (!qword_27F7E8B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B50);
  }

  return result;
}

unint64_t sub_255E09A7C()
{
  result = qword_27F7E8B58;
  if (!qword_27F7E8B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B58);
  }

  return result;
}

unint64_t sub_255E09AD0()
{
  result = qword_27F7E8B60;
  if (!qword_27F7E8B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B60);
  }

  return result;
}

unint64_t sub_255E09B24()
{
  result = qword_27F7E8B68;
  if (!qword_27F7E8B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B68);
  }

  return result;
}

unint64_t sub_255E09B78()
{
  result = qword_27F7E8B70;
  if (!qword_27F7E8B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B70);
  }

  return result;
}

unint64_t sub_255E09BCC()
{
  result = qword_27F7E8B78;
  if (!qword_27F7E8B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B78);
  }

  return result;
}

unint64_t sub_255E09C20()
{
  result = qword_27F7E8B80;
  if (!qword_27F7E8B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B80);
  }

  return result;
}

unint64_t sub_255E09C74()
{
  result = qword_27F7E8B88;
  if (!qword_27F7E8B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B88);
  }

  return result;
}

unint64_t sub_255E09CC8()
{
  result = qword_27F7E8B90;
  if (!qword_27F7E8B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B90);
  }

  return result;
}

unint64_t sub_255E09D1C()
{
  result = qword_27F7E8B98;
  if (!qword_27F7E8B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8B98);
  }

  return result;
}

unint64_t sub_255E09D70()
{
  result = qword_27F7E8BA0;
  if (!qword_27F7E8BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BA0);
  }

  return result;
}

unint64_t sub_255E09DC4()
{
  result = qword_27F7E8BA8;
  if (!qword_27F7E8BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BA8);
  }

  return result;
}

unint64_t sub_255E09E18()
{
  result = qword_27F7E8BB0;
  if (!qword_27F7E8BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BB0);
  }

  return result;
}

unint64_t sub_255E09E6C()
{
  result = qword_27F7E8BB8;
  if (!qword_27F7E8BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BB8);
  }

  return result;
}

unint64_t sub_255E09EC0()
{
  result = qword_27F7E8BC0;
  if (!qword_27F7E8BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BC0);
  }

  return result;
}

unint64_t sub_255E09F14()
{
  result = qword_27F7E8BC8;
  if (!qword_27F7E8BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BC8);
  }

  return result;
}

unint64_t sub_255E09F68()
{
  result = qword_27F7E8BD0;
  if (!qword_27F7E8BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BD0);
  }

  return result;
}

unint64_t sub_255E09FBC()
{
  result = qword_27F7E8BD8;
  if (!qword_27F7E8BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BD8);
  }

  return result;
}

unint64_t sub_255E0A010()
{
  result = qword_27F7E8BE0;
  if (!qword_27F7E8BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BE0);
  }

  return result;
}

unint64_t sub_255E0A064()
{
  result = qword_27F7E8BE8;
  if (!qword_27F7E8BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BE8);
  }

  return result;
}

unint64_t sub_255E0A0B8()
{
  result = qword_27F7E8BF0;
  if (!qword_27F7E8BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BF0);
  }

  return result;
}

unint64_t sub_255E0A10C()
{
  result = qword_27F7E8BF8;
  if (!qword_27F7E8BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8BF8);
  }

  return result;
}

unint64_t sub_255E0A160()
{
  result = qword_27F7E8C00;
  if (!qword_27F7E8C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C00);
  }

  return result;
}

unint64_t sub_255E0A1B4()
{
  result = qword_27F7E8C08;
  if (!qword_27F7E8C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C08);
  }

  return result;
}

unint64_t sub_255E0A208()
{
  result = qword_27F7E8C10;
  if (!qword_27F7E8C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C10);
  }

  return result;
}

unint64_t sub_255E0A25C()
{
  result = qword_27F7E8C18;
  if (!qword_27F7E8C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C18);
  }

  return result;
}

unint64_t sub_255E0A2B0()
{
  result = qword_27F7E8C28;
  if (!qword_27F7E8C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C28);
  }

  return result;
}

unint64_t sub_255E0A304()
{
  result = qword_27F7E8C30;
  if (!qword_27F7E8C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C30);
  }

  return result;
}

unint64_t sub_255E0A358()
{
  result = qword_27F7E8C38;
  if (!qword_27F7E8C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C38);
  }

  return result;
}

unint64_t sub_255E0A3AC()
{
  result = qword_27F7E8C40;
  if (!qword_27F7E8C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C40);
  }

  return result;
}

unint64_t sub_255E0A400()
{
  result = qword_27F7E8C48;
  if (!qword_27F7E8C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C48);
  }

  return result;
}

unint64_t sub_255E0A454()
{
  result = qword_27F7E8C50;
  if (!qword_27F7E8C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C50);
  }

  return result;
}

unint64_t sub_255E0A4A8()
{
  result = qword_27F7E8C58;
  if (!qword_27F7E8C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C58);
  }

  return result;
}

unint64_t sub_255E0A4FC()
{
  result = qword_27F7E8C60;
  if (!qword_27F7E8C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C60);
  }

  return result;
}

unint64_t sub_255E0A550()
{
  result = qword_27F7E8C68;
  if (!qword_27F7E8C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C68);
  }

  return result;
}

unint64_t sub_255E0A5A4()
{
  result = qword_27F7E8C70;
  if (!qword_27F7E8C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C70);
  }

  return result;
}

unint64_t sub_255E0A5F8()
{
  result = qword_27F7E8C90;
  if (!qword_27F7E8C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C90);
  }

  return result;
}

unint64_t sub_255E0A64C()
{
  result = qword_27F7E8C98;
  if (!qword_27F7E8C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8C98);
  }

  return result;
}

unint64_t sub_255E0A6A0()
{
  result = qword_27F7E8CA8;
  if (!qword_27F7E8CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CA8);
  }

  return result;
}

unint64_t sub_255E0A6F4()
{
  result = qword_27F7E8CB0;
  if (!qword_27F7E8CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CB0);
  }

  return result;
}

unint64_t sub_255E0A748()
{
  result = qword_27F7E8CB8;
  if (!qword_27F7E8CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CB8);
  }

  return result;
}

unint64_t sub_255E0A79C()
{
  result = qword_27F7E8CC8;
  if (!qword_27F7E8CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CC8);
  }

  return result;
}

unint64_t sub_255E0A7F0()
{
  result = qword_27F7E8CD0;
  if (!qword_27F7E8CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CD0);
  }

  return result;
}

unint64_t sub_255E0A844()
{
  result = qword_27F7E8CD8;
  if (!qword_27F7E8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CD8);
  }

  return result;
}

unint64_t sub_255E0A898()
{
  result = qword_27F7E8CE0;
  if (!qword_27F7E8CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CE0);
  }

  return result;
}

unint64_t sub_255E0A8EC()
{
  result = qword_27F7E8CE8;
  if (!qword_27F7E8CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8CE8);
  }

  return result;
}

unint64_t sub_255E0A940()
{
  result = qword_27F7E8D00;
  if (!qword_27F7E8D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D00);
  }

  return result;
}

unint64_t sub_255E0A994()
{
  result = qword_27F7E8D08;
  if (!qword_27F7E8D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D08);
  }

  return result;
}

unint64_t sub_255E0A9E8()
{
  result = qword_27F7E8D18;
  if (!qword_27F7E8D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D18);
  }

  return result;
}

unint64_t sub_255E0AA3C()
{
  result = qword_27F7E8D20;
  if (!qword_27F7E8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D20);
  }

  return result;
}

uint64_t sub_255E0AAA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255E0AAE8(uint64_t a1, uint64_t a2)
{
  if (qword_27F7E5EA0 != -1)
  {
    swift_once();
  }

  v4 = off_27F7E89B0;
  if (*(off_27F7E89B0 + 2) && (v5 = sub_255D3CA20(a1, a2), (v6 & 1) != 0))
  {
    v7 = (v4[7] + 16 * v5);
    result = *v7;
    v9 = v7[1];
  }

  else
  {
    type metadata accessor for ContentRegistryError();
    sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError);
    swift_allocError();
    v11 = v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
    *v11 = a1;
    v11[1] = a2;

    sub_255E3A9A8();

    MEMORY[0x259C4E8F0](a1, a2);
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_255E0AC98()
{
  result = qword_27F7E8D58;
  if (!qword_27F7E8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D58);
  }

  return result;
}

unint64_t sub_255E0ACEC()
{
  result = qword_27F7E8D60;
  if (!qword_27F7E8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D60);
  }

  return result;
}

unint64_t sub_255E0AD40()
{
  result = qword_27F7E8D68;
  if (!qword_27F7E8D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D68);
  }

  return result;
}

unint64_t sub_255E0AD94()
{
  result = qword_27F7E8D70;
  if (!qword_27F7E8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D70);
  }

  return result;
}

unint64_t sub_255E0ADE8()
{
  result = qword_27F7E8D78;
  if (!qword_27F7E8D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D78);
  }

  return result;
}

uint64_t sub_255E0AE3C(uint64_t a1, uint64_t a2)
{
  if (qword_27F7E5EA8 != -1)
  {
    swift_once();
  }

  v4 = off_27F7E89B8;
  if (*(off_27F7E89B8 + 2) && (v5 = sub_255D3CA20(a1, a2), (v6 & 1) != 0))
  {
    v7 = (v4[7] + 16 * v5);
    result = *v7;
    v9 = v7[1];
  }

  else
  {
    type metadata accessor for ContentRegistryError();
    sub_255E0AAA0(&qword_27F7E61A0, 255, type metadata accessor for ContentRegistryError);
    swift_allocError();
    v11 = v10;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8A30, &qword_255E59968) + 48);
    *v11 = a1;
    v11[1] = a2;

    sub_255E3A9A8();

    MEMORY[0x259C4E8F0](a1, a2);
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_255E0AFF0()
{
  sub_255D3480C(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_255E0B04C(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 8))(a1, ObjectType, v4);
    swift_unknownObjectRelease();
    return v6;
  }

  return result;
}

uint64_t sub_255E0B0BC()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + 24);
    ObjectType = swift_getObjectType();
    v4 = (*(v2 + 16))(ObjectType, v2);
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

uint64_t sub_255E0B118(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v6 + 24))(a1, a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_255E0B1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_255E0B244(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_255E0B264, 0, 0);
}

uint64_t sub_255E0B264()
{
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[4] = Strong;
  if (Strong)
  {
    v3 = *(v0[3] + 24);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 16);
    v15 = (v5 + *v5);
    v6 = v5[1];
    v7 = swift_task_alloc();
    v0[5] = v7;
    *v7 = v0;
    v7[1] = sub_255E0B468;
    v8 = v0[2];

    return v15(v8, ObjectType, v3);
  }

  else
  {
    v10 = v0[2];
    type metadata accessor for RemoteLoaderError(0);
    sub_255DEB0DC();
    swift_allocError();
    v12 = v11;
    v13 = sub_255E38408();
    (*(*(v13 - 8) + 16))(v12, v10, v13);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_255E0B468(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = sub_255E0B604;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v9 = sub_255E0B59C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_255E0B59C()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[1];
  v4 = v0[7];
  v3 = v0[8];

  return v2(v3, v4);
}

uint64_t sub_255E0B604()
{
  v1 = v0[4];
  swift_unknownObjectRelease();
  v2 = v0[6];
  v3 = v0[1];

  return v3();
}

uint64_t sub_255E0B68C(uint64_t a1)
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v3 + 8))(a1, ObjectType, v3);
    return swift_unknownObjectRelease();
  }

  else
  {
    type metadata accessor for RemoteLoaderError(0);
    sub_255DEB0DC();
    swift_allocError();
    v7 = v6;
    v8 = sub_255E38588();
    (*(*(v8 - 8) + 16))(v7, a1, v8);
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

uint64_t sub_255E0B798(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255DD8034;

  return sub_255E0B244(a1);
}

uint64_t sub_255E0B82C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_255E0B8DC(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x7265746E6563;
    v6 = 0x676E696C69617274;
    if (a1 != 2)
    {
      v6 = 7368564;
    }

    if (a1)
    {
      v5 = 0x676E696461656CLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x6C69617254706F74;
    v2 = 0x654C6D6F74746F62;
    if (a1 != 7)
    {
      v2 = 0x72546D6F74746F62;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D6F74746F62;
    if (a1 != 4)
    {
      v3 = 0x696461654C706F74;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_255E0BA18()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D77BD0();
  return sub_255E3ADD8();
}

uint64_t sub_255E0BA68()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D77BD0();
  return sub_255E3ADD8();
}

uint64_t sub_255E0BAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E0C470();
  *a2 = result;
  return result;
}

uint64_t sub_255E0BADC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255E0B8DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_255E0BBC4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0BCA4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E0BD70()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0BE4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E0C424();
  *a2 = result;
  return result;
}

void sub_255E0BE7C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x676E696461656CLL;
  v5 = 0xE800000000000000;
  v6 = 0x676E696C69617274;
  v7 = 0xD000000000000017;
  v8 = 0x8000000255E64E40;
  if (v2 != 3)
  {
    v7 = 0xD000000000000018;
    v8 = 0x8000000255E64E60;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = v8;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_255E0BFD4()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0C0B4()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E0C180()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0C25C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E0C3D8();
  *a2 = result;
  return result;
}

void sub_255E0C28C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xE600000000000000;
  v6 = 0x6D6F74746F62;
  v7 = 0x8000000255E64DF0;
  v8 = 0xD000000000000011;
  if (v2 != 3)
  {
    v8 = 0xD000000000000010;
    v7 = 0x8000000255E64E10;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_255E0C3D8()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E0C424()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E0C470()
{
  v0 = sub_255E3AB48();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t getEnumTagSinglePayload for AlignmentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlignmentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255E0C630()
{
  result = qword_27F7E8D88;
  if (!qword_27F7E8D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D88);
  }

  return result;
}

unint64_t sub_255E0C688()
{
  result = qword_27F7E8D90;
  if (!qword_27F7E8D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D90);
  }

  return result;
}

unint64_t sub_255E0C6E0()
{
  result = qword_27F7E8D98;
  if (!qword_27F7E8D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8D98);
  }

  return result;
}

unint64_t sub_255E0C734()
{
  result = qword_27F7E8DA0;
  if (!qword_27F7E8DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DA0);
  }

  return result;
}

unint64_t sub_255E0C788()
{
  result = qword_27F7E8DA8;
  if (!qword_27F7E8DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DA8);
  }

  return result;
}

unint64_t sub_255E0C7DC()
{
  result = qword_27F7E8DB0;
  if (!qword_27F7E8DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DB0);
  }

  return result;
}

uint64_t sub_255E0C838(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_255E0C880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255E0C948@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255E0C9A0(uint64_t a1)
{
  v2 = sub_255E0EE88();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E0C9DC(uint64_t a1)
{
  v2 = sub_255E0EE88();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_255E0CA80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_255E0EB50(a1, &qword_27F7E8E08, &qword_255E5A5C0, sub_255E0EE88);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255E0CAE4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255E0CB3C(uint64_t a1)
{
  v2 = sub_255E0EDE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E0CB78(uint64_t a1)
{
  v2 = sub_255E0EDE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E0CBD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v16 - v11;
  v13 = sub_255E3A778();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a2;
  v14[6] = a3;

  sub_255D52540(0, 0, v12, a5, v14);
}

uint64_t sub_255E0CD40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X6>, void (*a5)(uint64_t, void *, uint64_t, uint64_t)@<X7>, uint64_t *a6@<X8>)
{
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v9 = *v6;
  v10 = a1[3];
  v11 = a1[4];
  v21 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v12 = sub_255E38AE8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - v15;
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = a2;
  v17[4] = a3;

  v23(v22, v17, v10, v11);

  v18 = sub_255D48A94(v9);
  v25 = v11;
  v26 = MEMORY[0x277CE0790];
  WitnessTable = swift_getWitnessTable();
  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v18, a2, a3, v12, WitnessTable, v24);

  return (*(v13 + 8))(v16, v12);
}

void *sub_255E0CF08@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_255E0EB50(a1, &qword_27F7E8DE8, &qword_255E5A5B0, sub_255E0EDE0);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255E0CF60()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E0CFB4()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255E0D010@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_255E3AB48();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_255E0D068(uint64_t a1)
{
  v2 = sub_255E0EE34();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E0D0A4(uint64_t a1)
{
  v2 = sub_255E0EE34();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E0D0E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v17 - v8;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v10 = sub_255E386A8();
  __swift_project_value_buffer(v10, qword_27F8152D8);
  v11 = sub_255E38688();
  v12 = sub_255E3A868();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_255D2E000, v11, v12, "onTapGesture!", v13, 2u);
    MEMORY[0x259C4F9E0](v13, -1, -1);
  }

  v14 = sub_255E3A778();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = a3;

  sub_255D52540(0, 0, v9, &unk_255E5A588, v15);
}

uint64_t sub_255E0D2CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a3;
  v22 = a4;
  v6 = *v4;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v23 = v7;
  v24 = v8;
  v21 = MEMORY[0x277CE0CA8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v10 = *(OpaqueTypeMetadata2 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v13 = &v19 - v12;
  v14 = swift_allocObject();
  v14[2] = v6;
  v14[3] = a2;
  v19 = a2;
  v15 = v20;
  v14[4] = v20;

  sub_255E39958();

  v16 = sub_255D48A94(v6);
  v23 = v7;
  v24 = v8;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v16, v19, v15, OpaqueTypeMetadata2, OpaqueTypeConformance2, v22);

  return (*(v10 + 8))(v13, OpaqueTypeMetadata2);
}

void *sub_255E0D4A8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_255E0EB50(a1, &qword_27F7E8DF8, &qword_255E5A5B8, sub_255E0EE34);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_255E0D50C()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0D5E4()
{
  *v0;
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E0D6A8()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E0D77C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E0F33C();
  *a2 = result;
  return result;
}

void sub_255E0D7AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x736E6F69746361;
  v5 = 0xE700000000000000;
  v6 = 0x6C616974696E69;
  v7 = 0x65756C6156646C6FLL;
  if (v2 != 3)
  {
    v7 = 0x65756C615677656ELL;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = 26223;
    v3 = 0xE200000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_255E0D840()
{
  v1 = *v0;
  v2 = 0x736E6F69746361;
  v3 = 0x6C616974696E69;
  v4 = 0x65756C6156646C6FLL;
  if (v1 != 3)
  {
    v4 = 0x65756C615677656ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 26223;
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

uint64_t sub_255E0D8D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E0F33C();
  *a1 = result;
  return result;
}

uint64_t sub_255E0D8F8(uint64_t a1)
{
  v2 = sub_255E0EA78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E0D934(uint64_t a1)
{
  v2 = sub_255E0EA78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255E0D970@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8DD8, &unk_255E5A5A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v36 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E0EA78();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v49 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  LOBYTE(v59) = 0;
  sub_255D7B658();
  sub_255E3ABC8();
  v46 = v9;
  v47 = v5;
  v12 = v76;
  v13 = *(v76 + 16);
  v48 = a1;
  if (v13)
  {
    v45 = 0;
    v79 = MEMORY[0x277D84F90];
    sub_255DE5EF0(0, v13, 0);
    v14 = v79;
    v44 = v12;
    v15 = v12 + 32;
    do
    {
      sub_255D7B730(v15, &v50);
      sub_255D34630(&v50, &v59);
      v79 = v14;
      v17 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_255DE5EF0((v16 > 1), v17 + 1, 1);
        v14 = v79;
      }

      *(v14 + 16) = v17 + 1;
      sub_255D34630(&v59, v14 + 40 * v17 + 32);
      v15 += 40;
      --v13;
    }

    while (v13);

    v18 = v48;
    v3 = v45;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
    v18 = a1;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
  LOBYTE(v50) = 1;
  v19 = sub_255E0EACC(&qword_27F7E6BA0, &qword_27F7E6B80, &unk_255E56600);
  v20 = v46;
  v21 = v47;
  sub_255E3ABC8();
  if (v3)
  {
    (*(v49 + 8))(v20, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);

    return *v43;
  }

  else
  {
    v38 = v19;
    v40 = *(&v59 + 1);
    v41 = v59;
    v42 = v60;
    v83 = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    LOBYTE(v50) = 2;
    sub_255E0EACC(&qword_27F7E64D0, &qword_27F7E64C8, &qword_255E3D940);
    v45 = 0;
    sub_255E3ABA8();
    *v39 = v59;
    *&v39[16] = v60;
    v37 = v61;
    LOBYTE(v50) = 3;
    sub_255E3ABA8();
    v22 = v48;
    v23 = v49;
    *v43 = v59;
    *&v43[16] = v60;
    LODWORD(v44) = v61;
    LOBYTE(v79) = 4;
    sub_255E3ABA8();
    (*(v23 + 8))(v20, v21);
    v49 = v76;
    *&v50 = v14;
    v46 = *(&v77 + 1);
    v47 = v77;
    *(&v50 + 1) = v41;
    *&v51 = v40;
    *(&v51 + 1) = v42;
    v45 = 0;
    v24 = v83;
    LOBYTE(v52) = v83;
    *(&v52 + 1) = *v82;
    DWORD1(v52) = *&v82[3];
    *(&v52 + 1) = *v39;
    v53 = *&v39[8];
    LOBYTE(v54) = v37;
    v25 = v78;
    *(&v54 + 1) = *v81;
    DWORD1(v54) = *&v81[3];
    v26 = *v43;
    *(&v54 + 1) = *v43;
    v55 = *&v43[8];
    v27 = *&v43[16];
    LOBYTE(v56) = v44;
    *(&v56 + 1) = *v80;
    DWORD1(v56) = *&v80[3];
    *(&v56 + 1) = v76;
    v57 = v77;
    v58 = v78;
    v28 = v50;
    v29 = v51;
    v30 = *&v39[8];
    v31 = v84;
    *(v84 + 32) = v52;
    *(v31 + 48) = v30;
    *v31 = v28;
    *(v31 + 16) = v29;
    v32 = v54;
    v33 = v55;
    v34 = v56;
    v35 = v57;
    *(v31 + 128) = v25;
    *(v31 + 96) = v34;
    *(v31 + 112) = v35;
    *(v31 + 64) = v32;
    *(v31 + 80) = v33;
    sub_255DC86F0(&v50, &v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    *&v59 = v14;
    *(&v59 + 1) = v41;
    v60 = v40;
    v61 = v42;
    v62 = v24;
    *v63 = *v82;
    *&v63[3] = *&v82[3];
    v64 = *v39;
    v65 = *&v39[16];
    v66 = v37;
    *v67 = *v81;
    *&v67[3] = *&v81[3];
    v68 = v26;
    v69 = v27;
    v70 = v44;
    *&v71[3] = *&v80[3];
    *v71 = *v80;
    v72 = v49;
    v73 = v47;
    v74 = v46;
    v75 = v25;
    return sub_255E0EB20(&v59);
  }
}

uint64_t sub_255E0E000(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (a1[3])
  {
    v8 = *a2;
    v9 = v2;
    v10 = *(a1 + 1);
    v11 = 1;
    return RemoteStateStore.set(reference:value:)(&v9, &v8);
  }

  else
  {
    v9 = *a1;
    v5 = sub_255D7C9F8();
    v7 = v6;

    return sub_255DF2888(v3, v5, v7);
  }
}

uint64_t sub_255E0E230@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v10 = v4[7];
  v55 = v4[6];
  v56 = v10;
  v57 = *(v4 + 128);
  v11 = v4[3];
  v51 = v4[2];
  v52 = v11;
  v12 = v4[5];
  v53 = v4[4];
  v54 = v12;
  v13 = v4[1];
  v49 = *v4;
  v50 = v13;
  result = sub_255DDEBF8(a2, *(&v49 + 1), v13, *(&v13 + 1), v51, &v45);
  if (!v5)
  {
    v15 = v45;
    v42 = a3;
    v43 = a4;
    sub_255DDF1BC(a2, *(&v51 + 1), v52, *(&v52 + 1), v53 & 1);
    v44 = 0;
    v16 = a1[3];
    v17 = a1[4];
    v37 = __swift_project_boxed_opaque_existential_1(a1, v16);
    v35 = sub_255D8AE34();
    v45 = v16;
    v46 = &type metadata for DecodableState;
    v47 = v17;
    v48 = v35;
    v38 = MEMORY[0x277CE0E30];
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v41 = &v34;
    v19 = *(OpaqueTypeMetadata2 - 8);
    v39 = OpaqueTypeMetadata2;
    v40 = v19;
    v20 = *(v19 + 64);
    MEMORY[0x28223BE20](OpaqueTypeMetadata2);
    v22 = &v34 - v21;
    v36 = v15;
    v58 = v15;
    v23 = swift_allocObject();
    v24 = v56;
    *(v23 + 112) = v55;
    *(v23 + 128) = v24;
    *(v23 + 144) = v57;
    v25 = v52;
    *(v23 + 48) = v51;
    *(v23 + 64) = v25;
    v26 = v54;
    *(v23 + 80) = v53;
    *(v23 + 96) = v26;
    v27 = v50;
    *(v23 + 16) = v49;
    *(v23 + 32) = v27;
    v28 = v42;
    *(v23 + 152) = a2;
    *(v23 + 160) = v28;
    sub_255DC86F0(&v49, &v45);

    v34 = a2;
    v29 = v17;
    v30 = v35;
    sub_255E39C98();

    v31 = sub_255D48A94(v49);
    v45 = v16;
    v46 = &type metadata for DecodableState;
    v47 = v29;
    v48 = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v33 = v39;
    View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v31, v34, v28, v39, OpaqueTypeConformance2, v43);

    return (*(v40 + 8))(v22, v33);
  }

  return result;
}

uint64_t sub_255E0E530(uint64_t *a1, uint64_t *a2, __int128 *a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - v12;
  v14 = *a2;
  v15 = *(a3 + 96);
  if (v15 != 255)
  {
    v17 = *(a3 + 10);
    v16 = *(a3 + 11);
    v18 = *(a3 + 9);
    v19 = *a1;
    v20 = a3[5];
    v21 = a3[7];
    v50 = a3[6];
    v51 = v21;
    v22 = a5;
    v23 = v14;
    v52 = *(a3 + 128);
    v24 = a3[3];
    v46 = a3[2];
    v47 = v24;
    v48 = a3[4];
    v49 = v20;
    v25 = a3[1];
    v44 = *a3;
    v45 = v25;
    v40 = v18;
    v41 = v17;
    v42 = v16;
    v43 = v15 & 1;
    v39 = v19;
    sub_255D5C258(v18, v17, v16, v15 & 1);
    sub_255E0E000(&v40, &v39);
    sub_255D5C2F4(v18, v17, v16, v15);
    v14 = v23;
    a5 = v22;
  }

  v26 = *(a3 + 128);
  if (v26 != 255)
  {
    v28 = *(a3 + 14);
    v27 = *(a3 + 15);
    v29 = *(a3 + 13);
    v30 = a3[7];
    v50 = a3[6];
    v51 = v30;
    v52 = *(a3 + 128);
    v31 = a3[3];
    v46 = a3[2];
    v47 = v31;
    v32 = a3[5];
    v48 = a3[4];
    v49 = v32;
    v33 = a3[1];
    v44 = *a3;
    v45 = v33;
    v40 = v29;
    v41 = v28;
    v42 = v27;
    v43 = v26 & 1;
    v39 = v14;
    sub_255D5C258(v29, v28, v27, v26 & 1);
    sub_255E0E000(&v40, &v39);
    sub_255D5C2F4(v29, v28, v27, v26);
  }

  v34 = *a3;
  v35 = sub_255E3A778();
  (*(*(v35 - 8) + 56))(v13, 1, 1, v35);
  v36 = swift_allocObject();
  v36[2] = 0;
  v36[3] = 0;
  v36[4] = v34;
  v36[5] = a4;
  v36[6] = a5;

  sub_255D52540(0, 0, v13, &unk_255E5A598, v36);
}

unint64_t sub_255E0E804(uint64_t a1)
{
  result = sub_255E0E82C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0E82C()
{
  result = qword_27F7E8DB8;
  if (!qword_27F7E8DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DB8);
  }

  return result;
}

unint64_t sub_255E0E880(uint64_t a1)
{
  result = sub_255E0E8A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0E8A8()
{
  result = qword_27F7E8DC0;
  if (!qword_27F7E8DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DC0);
  }

  return result;
}

unint64_t sub_255E0E8FC(uint64_t a1)
{
  result = sub_255E0E924();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0E924()
{
  result = qword_27F7E8DC8;
  if (!qword_27F7E8DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DC8);
  }

  return result;
}

unint64_t sub_255E0E978(uint64_t a1)
{
  result = sub_255E0E9A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E0E9A0()
{
  result = qword_27F7E8DD0;
  if (!qword_27F7E8DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DD0);
  }

  return result;
}

unint64_t sub_255E0EA78()
{
  result = qword_27F7E8DE0;
  if (!qword_27F7E8DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DE0);
  }

  return result;
}

uint64_t sub_255E0EACC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void *sub_255E0EB50(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - v9;
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  v13 = v12;
  sub_255E3AE28();
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    sub_255D7B658();
    sub_255E3ABC8();
    v15 = v26;
    v16 = *(v26 + 16);
    if (v16)
    {
      v21 = v7;
      v25 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v16, 0);
      v13 = v25;
      v20 = v15;
      v17 = v15 + 32;
      do
      {
        sub_255D7B730(v17, v23);
        sub_255D34630(v23, v24);
        v25 = v13;
        v19 = v13[2];
        v18 = v13[3];
        if (v19 >= v18 >> 1)
        {
          sub_255DE5EF0((v18 > 1), v19 + 1, 1);
          v13 = v25;
        }

        v13[2] = v19 + 1;
        sub_255D34630(v24, &v13[5 * v19 + 4]);
        v17 += 40;
        --v16;
      }

      while (v16);
      (*(v22 + 8))(v10, v21);
    }

    else
    {

      (*(v22 + 8))(v10, v7);
      v13 = MEMORY[0x277D84F90];
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v13;
}

unint64_t sub_255E0EDE0()
{
  result = qword_27F7E8DF0;
  if (!qword_27F7E8DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8DF0);
  }

  return result;
}

unint64_t sub_255E0EE34()
{
  result = qword_27F7E8E00;
  if (!qword_27F7E8E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E00);
  }

  return result;
}

unint64_t sub_255E0EE88()
{
  result = qword_27F7E8E10;
  if (!qword_27F7E8E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E10);
  }

  return result;
}

unint64_t sub_255E0EF20()
{
  result = qword_27F7E8E18;
  if (!qword_27F7E8E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E18);
  }

  return result;
}

unint64_t sub_255E0EF78()
{
  result = qword_27F7E8E20;
  if (!qword_27F7E8E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E20);
  }

  return result;
}

unint64_t sub_255E0EFD0()
{
  result = qword_27F7E8E28;
  if (!qword_27F7E8E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E28);
  }

  return result;
}

unint64_t sub_255E0F028()
{
  result = qword_27F7E8E30;
  if (!qword_27F7E8E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E30);
  }

  return result;
}

unint64_t sub_255E0F080()
{
  result = qword_27F7E8E38;
  if (!qword_27F7E8E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E38);
  }

  return result;
}

unint64_t sub_255E0F0D8()
{
  result = qword_27F7E8E40;
  if (!qword_27F7E8E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E40);
  }

  return result;
}

unint64_t sub_255E0F130()
{
  result = qword_27F7E8E48;
  if (!qword_27F7E8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E48);
  }

  return result;
}

unint64_t sub_255E0F188()
{
  result = qword_27F7E8E50;
  if (!qword_27F7E8E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E50);
  }

  return result;
}

unint64_t sub_255E0F1E0()
{
  result = qword_27F7E8E58;
  if (!qword_27F7E8E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E58);
  }

  return result;
}

unint64_t sub_255E0F238()
{
  result = qword_27F7E8E60;
  if (!qword_27F7E8E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E60);
  }

  return result;
}

unint64_t sub_255E0F290()
{
  result = qword_27F7E8E68;
  if (!qword_27F7E8E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8E68);
  }

  return result;
}

unint64_t sub_255E0F2E8()
{
  result = qword_27F7E8E70[0];
  if (!qword_27F7E8E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F7E8E70);
  }

  return result;
}

uint64_t sub_255E0F33C()
{
  v0 = sub_255E3AB48();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

void sub_255E0F398(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  v7 = *v3;
  if (*v3 < 0)
  {
    v15 = v7 & 0x7FFFFFFFFFFFFFFFLL;
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    v18 = *(v15 + 32);
    v19 = *(v15 + 40);
    v20 = *(v15 + 48);
    v21 = swift_allocObject();
    v22 = v21;
    *(v21 + 16) = v16;
    *(v21 + 24) = v17;
    *(v21 + 32) = v18;
    *(v21 + 40) = v19;
    if ((~v20 & 0xF000000000000007) != 0)
    {
      v23 = v6;
      v24 = v20;
      sub_255D612A0(v16, v17, v18, v19);
      sub_255E0F398(&v25, &v23, a2);
      *(v22 + 48) = v25;
      *a3 = v22 | 0x8000000000000000;
    }

    else
    {
      *(v21 + 48) = v6;
      *a3 = v21 | 0x8000000000000000;
      sub_255D34858(v6);

      sub_255D612A0(v16, v17, v18, v19);
    }
  }

  else
  {
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = *(v7 + 40);
    v12 = *(v7 + 48);
    v13 = swift_allocObject();
    v14 = v13;
    *(v13 + 16) = v8;
    *(v13 + 24) = v9;
    *(v13 + 32) = v10;
    *(v13 + 40) = v11;
    if ((~v12 & 0xF000000000000007) != 0)
    {
      v23 = v6;
      v24 = v12;
      sub_255D3E5A8(v8, v9, v10, v11);
      sub_255E0F398(&v25, &v23, a2);
      *(v14 + 48) = v25;
      *a3 = v14;
    }

    else
    {
      *(v13 + 48) = v6;
      *a3 = v13;
      sub_255D3E5A8(v8, v9, v10, v11);

      sub_255D34858(v6);
    }
  }
}

uint64_t sub_255E0F590(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v11 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    v54 = a3;
    v12 = *(v11 + 32);
    v13 = *(v11 + 40);
    v14 = *(v11 + 48);
    v51 = *(v11 + 16);
    v52 = v12;
    v53 = v13;
    result = StringResolvable.resolved(with:)(a2);
    if (v5)
    {
      return result;
    }

    v17 = result;
    v18 = v16;
    if ((~v14 & 0xF000000000000007) == 0)
    {
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v20 = *(v54 + 16);
      v21 = *(v54 + 24);
      v19[4] = v20;
      v19[5] = a4;
      v19[6] = v21;
      v19[7] = v9;
      v19[8] = v8;
      v19[9] = v10;
      v19[10] = v17;
      v19[11] = v18;
      v22 = swift_allocObject();
      v22[2] = 0;
      v22[3] = 0;
      v22[4] = v20;
      v22[5] = a4;
      v22[6] = v21;
      v22[7] = v9;
      v22[8] = v8;
      v22[9] = v10;
      v22[10] = v17;
      v22[11] = v18;
      sub_255E3A8A8();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();

      return sub_255E3A068();
    }

    v50 = a4;
    v39 = swift_allocObject();
    v39[2] = 0;
    v39[3] = 0;
    v39[4] = v9;
    v39[5] = v8;
    v39[6] = v10;
    v39[7] = v17;
    v39[8] = v18;
    v40 = swift_allocObject();
    v40[2] = 0;
    v40[3] = 0;
    v40[4] = v9;
    v40[5] = v8;
    v40[6] = v10;
    v40[7] = v17;
    v40[8] = v18;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();

    sub_255D34858(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    v41 = *(&v51 + 1);
    if (*(&v51 + 1))
    {
      v42 = v51;
      v43 = v50;
      v44 = a2;
      v45 = v54;
LABEL_17:
      sub_255E0F590(&v51, v44, v45, v43);
      sub_255DC6C84(v42, v41);
      return sub_255D2F870(v14);
    }

LABEL_18:
    sub_255D5C33C();
    swift_allocError();
    *v48 = 1;
    *(v48 + 8) = 0;
    *(v48 + 16) = 0;
    *(v48 + 24) = 0;
    *(v48 + 32) = 5;
    swift_willThrow();
    return sub_255D2F870(v14);
  }

  v54 = v5;
  v24 = v11 & 0x7FFFFFFFFFFFFFFFLL;
  v25 = *(v24 + 32);
  v26 = *(v24 + 40);
  v14 = *(v24 + 48);
  v51 = *(v24 + 16);
  v52 = v25;
  v53 = v26;
  v27 = sub_255D8F9E4(a2);
  if ((v28 & 1) == 0)
  {
    v34 = v27;
    v49 = a4;
    if ((~v14 & 0xF000000000000007) == 0)
    {
      v35 = swift_allocObject();
      v35[2] = 0;
      v35[3] = 0;
      v36 = *(a3 + 16);
      v37 = *(a3 + 24);
      v35[4] = v36;
      v35[5] = v49;
      v35[6] = v37;
      v35[7] = v9;
      v35[8] = v8;
      v35[9] = v10;
      v35[10] = v34;
      v38 = swift_allocObject();
      v38[2] = 0;
      v38[3] = 0;
      v38[4] = v36;
      v38[5] = v49;
      v38[6] = v37;
      v38[7] = v9;
      v38[8] = v8;
      v38[9] = v10;
      v38[10] = v34;
      sub_255E3A8A8();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      return sub_255E3A068();
    }

    v46 = swift_allocObject();
    v46[2] = 0;
    v46[3] = 0;
    v46[4] = v9;
    v46[5] = v8;
    v46[6] = v10;
    v46[7] = v34;
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v9;
    v47[5] = v8;
    v47[6] = v10;
    v47[7] = v34;
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    sub_255D34858(v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8018, &qword_255E5D6F0);
    sub_255E3A068();
    sub_255E3A098();
    v41 = *(&v51 + 1);
    if (*(&v51 + 1))
    {
      v42 = v51;
      v43 = v49;
      v44 = a2;
      v45 = a3;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v29 = sub_255E386A8();
  __swift_project_value_buffer(v29, qword_27F8152D8);
  v30 = sub_255E38688();
  v31 = sub_255E3A848();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_255D2E000, v30, v31, "SubReference to find binding, unable to resolve index", v32, 2u);
    MEMORY[0x259C4F9E0](v32, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v33 = 2;
  *(v33 + 8) = 0;
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  *(v33 + 32) = 5;
  return swift_willThrow();
}

unint64_t sub_255E0FBF8(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *a1;
  v10 = *v4;
  if ((*v4 & 0x8000000000000000) == 0)
  {
    v11 = *(v10 + 48);
    v62 = *(v10 + 16);
    v64 = *(v10 + 32);
    v66 = *(v10 + 40);
    result = StringResolvable.resolved(with:)(a2);
    if (v5)
    {
      return result;
    }

    if (v9 >> 61 == 5)
    {
      v60 = result;
      v57 = v11;
      v58 = a3;
      v59 = a4;
      v61 = v13;
      v14 = *((v9 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v15 = sub_255E3AB08();
      v16 = v15;
      v17 = 0;
      v18 = 1 << *(v14 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v14 + 64);
      v21 = (v18 + 63) >> 6;
      v22 = v15 + 64;
      if (v20)
      {
        while (1)
        {
          v23 = __clz(__rbit64(v20));
          v20 &= v20 - 1;
LABEL_13:
          v26 = v23 | (v17 << 6);
          v27 = (*(v14 + 48) + 16 * v26);
          v28 = *(*(v14 + 56) + 8 * v26);
          v29 = *v27;
          v30 = v27[1];
          *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
          v31 = (v16[6] + 16 * v26);
          *v31 = v29;
          v31[1] = v30;
          *(v16[7] + 8 * v26) = v28;
          v32 = v16[2];
          v33 = __OFADD__(v32, 1);
          v34 = v32 + 1;
          if (v33)
          {
            break;
          }

          v16[2] = v34;

          if (!v20)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v24 = v17;
        while (1)
        {
          v17 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            break;
          }

          if (v17 >= v21)
          {
            if (v16[2])
            {
              v50 = sub_255D3CA20(v60, v61);
              v52 = v51;

              if (v52)
              {
                v53 = *(v16[7] + 8 * v50);

                if ((~v57 & 0xF000000000000007) == 0)
                {
                  v46 = *(v58 + 16);
                  v47 = v59;
                  goto LABEL_31;
                }

                v68 = v53;

                sub_255E0FBF8(&v68, a2, v58, v59);

                v56 = v57;
                return sub_255D2F870(v56);
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v55 = v9;
            *(v55 + 32) = 1;
            swift_willThrow();
          }

          v25 = *(v14 + 64 + 8 * v17);
          ++v24;
          if (v25)
          {
            v23 = __clz(__rbit64(v25));
            v20 = (v25 - 1) & v25;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_43;
    }

    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v49 = v9;
    v49[1] = v48;
    swift_willThrow();
  }

  v35 = v10 & 0x7FFFFFFFFFFFFFFFLL;
  v36 = *(v35 + 48);
  v63 = *(v35 + 16);
  v65 = *(v35 + 32);
  v67 = *(v35 + 40);
  v37 = sub_255D8F9E4(a2);
  if (v38)
  {
    if (qword_27F7E5E80 == -1)
    {
LABEL_18:
      v39 = sub_255E386A8();
      __swift_project_value_buffer(v39, qword_27F8152D8);
      v40 = sub_255E38688();
      v41 = sub_255E3A848();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 0;
        _os_log_impl(&dword_255D2E000, v40, v41, "SubReference to find value, unable to resolve index", v42, 2u);
        MEMORY[0x259C4F9E0](v42, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v43 = 2;
      *(v43 + 8) = 0;
      *(v43 + 16) = 0;
      *(v43 + 24) = 0;
      *(v43 + 32) = 5;
      return swift_willThrow();
    }

LABEL_43:
    swift_once();
    goto LABEL_18;
  }

  v44 = v37;
  result = sub_255DDFB40(v9);
  if (v5)
  {
    return result;
  }

  if (v44 < 0 || v44 >= *(result + 16))
  {

    sub_255D5C33C();
    swift_allocError();
    *v54 = v9;
    *(v54 + 32) = 1;
    swift_willThrow();
  }

  v45 = *(result + 8 * v44 + 32);

  if ((~v36 & 0xF000000000000007) != 0)
  {
    v68 = v45;

    sub_255E0FBF8(&v68, a2, a3, a4);

    v56 = v36;
    return sub_255D2F870(v56);
  }

  v46 = *(a3 + 16);
  v47 = a4;
LABEL_31:
  sub_255D7D8D8(v46, v47);
}

void sub_255E10150(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v26 = *(a1 + 24);
  v6 = *v2;
  if (*v2 < 0)
  {
    v18 = v6 & 0x7FFFFFFFFFFFFFFFLL;
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    v21 = *(v18 + 32);
    v22 = *(v18 + 40);
    v23 = *(v18 + 48);
    v24 = swift_allocObject();
    *(v24 + 16) = v19;
    *(v24 + 24) = v20;
    *(v24 + 32) = v21;
    *(v24 + 40) = v22;
    if ((~v23 & 0xF000000000000007) != 0)
    {
      v32 = v23;
      v28 = v4;
      v29 = v3;
      v30 = v5;
      v31 = v26;
      sub_255D612A0(v19, v20, v21, v22);
      sub_255E10150(&v33, &v28);
      *(v24 + 48) = v33;
      *a2 = v24 | 0x8000000000000000;
      return;
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v4;
    *(v25 + 24) = v3;
    *(v25 + 32) = v5;
    *(v25 + 40) = v26;
    *(v25 + 48) = 0xF000000000000007;
    *(v24 + 48) = v25 | 0x8000000000000000;
    *a2 = v24 | 0x8000000000000000;
    sub_255D612A0(v4, v3, v5, v26);
    v14 = v19;
    v15 = v20;
    v16 = v21;
    v17 = v22;
  }

  else
  {
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v9 = *(v6 + 32);
    v10 = *(v6 + 40);
    v11 = *(v6 + 48);
    v12 = swift_allocObject();
    *(v12 + 16) = v7;
    *(v12 + 24) = v8;
    *(v12 + 32) = v9;
    *(v12 + 40) = v10;
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v32 = v11;
      v28 = v4;
      v29 = v3;
      v30 = v5;
      v31 = v26;
      sub_255D3E5A8(v7, v8, v9, v10);
      sub_255E10150(&v33, &v28);
      *(v12 + 48) = v33;
      *a2 = v12;
      return;
    }

    v13 = swift_allocObject();
    *(v13 + 16) = v4;
    *(v13 + 24) = v3;
    *(v13 + 32) = v5;
    *(v13 + 40) = v26;
    *(v13 + 48) = 0xF000000000000007;
    *(v12 + 48) = v13 | 0x8000000000000000;
    *a2 = v12;
    sub_255D3E5A8(v7, v8, v9, v10);
    v14 = v4;
    v15 = v3;
    v16 = v5;
    v17 = v26;
  }

  sub_255D612A0(v14, v15, v16, v17);
}

uint64_t sub_255E103C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v3 || (sub_255E3AC68() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E69 && a2 == 0xE500000000000000 || (sub_255E3AC68() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1954047342 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_255E3AC68();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_255E1050C(unsigned __int8 a1)
{
  sub_255E3AD98();
  MEMORY[0x259C4F100](a1);
  return sub_255E3ADD8();
}

uint64_t sub_255E10554(char a1)
{
  if (!a1)
  {
    return 7955819;
  }

  if (a1 == 1)
  {
    return 0x7865646E69;
  }

  return 1954047342;
}

BOOL sub_255E10598(char *a1, char *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return sub_255E104D4(*a1, *a2);
}

uint64_t sub_255E105AC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_255E1050C(*v1);
}

uint64_t sub_255E105B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  return sub_255E104E4(a1, *v2);
}

uint64_t sub_255E105C4(uint64_t a1, uint64_t a2)
{
  sub_255E3AD98();
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  sub_255E104E4(v7, *v2);
  return sub_255E3ADD8();
}

uint64_t sub_255E1060C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_255E10554(*v1);
}

uint64_t sub_255E10618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = *(a3 + 16);
  v5 = *(a3 + 24);
  result = sub_255E103C0(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_255E10648@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  result = sub_255E11B38();
  *a2 = result;
  return result;
}

uint64_t sub_255E10674(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_255E106C8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t SubReference.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v24 = a3;
  *&v25 = a2;
  type metadata accessor for SubReference.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_255E3ABF8();
  v23 = *(v5 - 8);
  v6 = *(v23 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E3AE28();
  if (!v3)
  {
    v11 = v23;
    v10 = v24;
    type metadata accessor for SubReference();
    v29 = 2;
    swift_getWitnessTable();
    sub_255E3ABA8();
    v12 = v8;
    v13 = v26;
    v29 = 0;
    sub_255D3EA0C();
    sub_255E3ABA8();
    v14 = v11;
    v15 = v28;
    if (v28 < 0xFEu)
    {
      v18 = v27;
      v25 = v26;
      (*(v14 + 8))(v12, v5);
      v19 = swift_allocObject();
      *(v19 + 16) = v25;
      *(v19 + 32) = v18;
      *(v19 + 40) = v15;
      *(v19 + 48) = v13;
    }

    else
    {
      v29 = 1;
      sub_255D8B704();
      sub_255E3ABA8();
      v16 = v28;
      if (v28 >= 0xFEu)
      {
        sub_255D5C33C();
        swift_allocError();
        *v17 = 2;
        *(v17 + 8) = 0;
        *(v17 + 16) = 0;
        *(v17 + 24) = 0;
        *(v17 + 32) = 5;
        swift_willThrow();
        sub_255D2F870(v13);
        (*(v11 + 8))(v12, v5);
        return __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      v21 = v27;
      v25 = v26;
      (*(v14 + 8))(v12, v5);
      v22 = swift_allocObject();
      *(v22 + 16) = v25;
      *(v22 + 32) = v21;
      *(v22 + 40) = v16;
      *(v22 + 48) = v13;
      v19 = v22 | 0x8000000000000000;
    }

    *v10 = v19;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255E10AF8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_255E10BA8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v12[1] = a1;
  v12[2] = a2;
  v12[3] = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v12, v9);
  if (v12[0] >> 61 == 5)
  {
    v10 = *((v12[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    sub_255DDAB2C(a4, a5, v10, a6);
  }

  else
  {

    *a6 = 0xF000000000000007;
  }

  return result;
}

uint64_t sub_255E10C68(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *a1;
  v38 = a4;
  v39 = a5;
  v40 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v41);
  if (v41 >> 61 != 5)
  {
  }

  v14 = *((v41 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v41 = v14;
  if ((~v13 & 0xF000000000000007) != 0)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_255D82054(v13, a7, a8, isUniquelyReferenced_nonNull_native);
    v15 = v14;
  }

  else
  {
    sub_255D808F4(a7, a8, &v38);
    sub_255D5C324(v38);
    v15 = v41;
  }

  v38 = a4;
  v39 = a5;
  v40 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v18 = result;
  v19 = 0;
  v20 = 1 << *(v15 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v15 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = result + 64;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_15:
      v28 = v25 | (v19 << 6);
      v29 = (*(v15 + 48) + 16 * v28);
      v30 = *(*(v15 + 56) + 8 * v28);
      v31 = *v29;
      v32 = v29[1];
      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      v33 = (v18[6] + 16 * v28);
      *v33 = v31;
      v33[1] = v32;
      *(v18[7] + 8 * v28) = v30;
      v34 = v18[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        break;
      }

      v18[2] = v36;

      if (!v22)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v23)
      {
        v37 = swift_allocObject();

        *(v37 + 16) = v18;
        sub_255E3A058();
      }

      v27 = *(v15 + 64 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v22 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255E10F20@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v19, v12);
  if (v19 >> 61 != 5)
  {

LABEL_7:
    v18 = 1;
    return (*(*(a6 - 8) + 56))(a7, v18, 1, a6);
  }

  v13 = *((v19 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (!*(v13 + 16) || (v14 = sub_255D3CA20(a4, a5), (v15 & 1) == 0))
  {

    goto LABEL_7;
  }

  v16 = *(*(v13 + 56) + 8 * v14);

  v20 = v16;
  sub_255D7D8D8(a6, a8);

  v18 = 0;
  return (*(*(a6 - 8) + 56))(a7, v18, 1, a6);
}

uint64_t sub_255E11080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = sub_255E3A8A8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v49 - v19;
  v51 = a4;
  v52 = a5;
  v54 = a4;
  v55 = a5;
  v56 = a6;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v57);
  if (v57 >> 61 != 5)
  {
  }

  v49[1] = v21;
  v50 = a8;
  v22 = *((v57 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  v57 = v22;
  (*(v17 + 16))(v20, a1, v16);
  v23 = *(a9 - 8);
  if ((*(v23 + 48))(v20, 1, a9) == 1)
  {
    (*(v17 + 8))(v20, v16);
    sub_255D808F4(a7, v50, &v54);
    sub_255D5C324(v54);
    v24 = v57;
  }

  else
  {
    (*(a10 + 8))(&v54, a9);
    v25 = v54;
    (*(v23 + 8))(v20, a9);
    v26 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v26;
    sub_255D82054(v25, a7, v50, isUniquelyReferenced_nonNull_native);
    v24 = v54;
  }

  v54 = v51;
  v55 = v52;
  v56 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v29 = result;
  v30 = 0;
  v31 = 1 << *(v24 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v24 + 64);
  v34 = (v31 + 63) >> 6;
  v35 = result + 64;
  if (v33)
  {
    while (1)
    {
      v36 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
LABEL_14:
      v39 = v36 | (v30 << 6);
      v40 = (*(v24 + 48) + 16 * v39);
      v41 = *(*(v24 + 56) + 8 * v39);
      v42 = *v40;
      v43 = v40[1];
      *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
      v44 = (v29[6] + 16 * v39);
      *v44 = v42;
      v44[1] = v43;
      *(v29[7] + 8 * v39) = v41;
      v45 = v29[2];
      v46 = __OFADD__(v45, 1);
      v47 = v45 + 1;
      if (v46)
      {
        break;
      }

      v29[2] = v47;

      if (!v33)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v37 = v30;
    while (1)
    {
      v30 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v30 >= v34)
      {
        v48 = swift_allocObject();

        *(v48 + 16) = v29;
        v53 = v48 | 0xA000000000000000;
        sub_255E3A058();
      }

      v38 = *(v24 + 64 + 8 * v30);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v33 = (v38 - 1) & v38;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_255E1146C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, unint64_t a4@<X5>, unint64_t *a5@<X8>)
{
  v11[1] = a1;
  v11[2] = a2;
  v11[3] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](v11, v7);
  if (v11[0] >> 61 != 4)
  {

    v10 = 0xF000000000000007;
    goto LABEL_6;
  }

  v8 = *((v11[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if ((a4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(v8 + 16) > a4)
  {
    v10 = *(v8 + 8 * a4 + 32);

LABEL_6:
    *a5 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_255E11534(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v11 = *a1;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v16);
  if (v16 >> 61 != 4)
  {
  }

  v12 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if ((~v11 & 0xF000000000000007) == 0)
  {
  }

  swift_retain_n();
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((a7 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = sub_255DF5ECC(v12);
  v12 = result;
  if ((a7 & 0x8000000000000000) != 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(v12 + 16) <= a7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v14 = v12 + 8 * a7;
  v15 = *(v14 + 32);
  *(v14 + 32) = v11;

  v17 = a4;
  v18 = a5;
  v19 = a6;

  sub_255DCB4C0(v12, &v16);

  sub_255E3A058();
  sub_255D5C324(v11);
}

uint64_t sub_255E116BC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v17 = a1;
  v18 = a2;
  v19 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v16, v11);
  if (v16 >> 61 != 4)
  {

LABEL_7:
    v15 = 1;
    return (*(*(a5 - 8) + 56))(a7, v15, 1, a5);
  }

  v12 = *((v16 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  if (a4 < 0 || *(v12 + 16) <= a4)
  {

    goto LABEL_7;
  }

  v13 = *(v12 + 8 * a4 + 32);

  v17 = v13;
  sub_255D7D8D8(a5, a6);

  v15 = 0;
  return (*(*(a5 - 8) + 56))(a7, v15, 1, a5);
}

uint64_t sub_255E1180C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a7;
  v14 = sub_255E3A8A8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - v18;
  v20 = *(a8 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a6;
  v33 = a4;
  v37 = a4;
  v38 = a5;
  v39 = a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8020, &unk_255E53860);
  MEMORY[0x259C4E3A0](&v36);
  if (v36 >> 61 != 4)
  {
  }

  v31 = a5;
  v24 = *((v36 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

  (*(v15 + 16))(v19, a1, v14);
  if ((*(v20 + 48))(v19, 1, a8) == 1)
  {

    return (*(v15 + 8))(v19, v14);
  }

  (*(v20 + 32))(v23, v19, a8);
  (*(a9 + 8))(&v37, a8, a9);
  v26 = v37;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v27 = v34;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  result = sub_255DF5ECC(v24);
  v24 = result;
  v27 = v34;
  if ((v34 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if (*(v24 + 16) <= v27)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v28 = v24 + 8 * v27;
  v29 = *(v28 + 32);
  *(v28 + 32) = v26;

  v37 = v33;
  v38 = v31;
  v39 = v32;

  sub_255DCB4C0(v24, &v36);

  v35 = v36;
  sub_255E3A058();

  return (*(v20 + 8))(v23, a8);
}

uint64_t sub_255E11B40@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[6];
  return sub_255E116BC(v1[7], v1[8], v1[9], v1[10], v1[4], v1[5], a1);
}

uint64_t objectdestroy_14Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_255E11C04@<X0>(unint64_t *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_255E1146C(v1[4], v1[5], v1[6], v1[7], a1);
}

uint64_t sub_255E11C14@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[6];
  return sub_255E10F20(v1[7], v1[8], v1[9], v1[10], v1[11], v1[4], a1, v1[5]);
}

uint64_t objectdestroy_26Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[8];

  v4 = v0[9];

  v5 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255E11CE4@<X0>(void *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  return sub_255E10BA8(v1[4], v1[5], v1[6], v1[7], v1[8], a1);
}

uint64_t objectdestroyTm_7(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if ((~*(v1 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_255E11D58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_255E11DA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255E11E04(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v4 = 0x73696D7369446E6FLL;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6E65736572507369;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646574;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746E65746E6F63;
  if (*a2 != 1)
  {
    v8 = 0x73696D7369446E6FLL;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6E65736572507369;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255E11F14()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E11FC4()
{
  *v0;
  *v0;
  sub_255E3A578();
}

uint64_t sub_255E12060()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255E1210C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_255E12D44();
  *a2 = result;
  return result;
}

void sub_255E1213C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0xE700000000000000;
  v5 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v5 = 0x73696D7369446E6FLL;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E65736572507369;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255E121A8()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x73696D7369446E6FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65736572507369;
  }
}

uint64_t sub_255E12210@<X0>(_BYTE *a1@<X8>)
{
  result = sub_255E12D44();
  *a1 = result;
  return result;
}

uint64_t sub_255E12238(uint64_t a1)
{
  v2 = sub_255E12BA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255E12274(uint64_t a1)
{
  v2 = sub_255E12BA8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_255E122B0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8F80, &qword_255E5AE18);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255E12BA8();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
    LOBYTE(v20[0]) = 0;
    sub_255D45734();
    sub_255E3ABC8();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    LOBYTE(v20[0]) = 1;
    v24 = &type metadata for ViewContent;
    v25 = sub_255D44794();
    *&v22 = swift_allocObject();
    sub_255D447E8();
    sub_255E3ABC8();
    sub_255D34630(&v22, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    LOBYTE(v22) = 2;
    sub_255D7B658();
    sub_255E3ABA8();
    v11 = v30;
    if (v30)
    {
      v12 = *(v30 + 16);
      if (v12)
      {
        v18 = v6;
        v19 = a2;
        v21 = MEMORY[0x277D84F90];
        sub_255DE5EF0(0, v12, 0);
        v13 = v21;
        v17[1] = v11;
        v14 = v11 + 32;
        do
        {
          sub_255D7B730(v14, v20);
          sub_255D34630(v20, &v22);
          v21 = v13;
          v16 = *(v13 + 16);
          v15 = *(v13 + 24);
          if (v16 >= v15 >> 1)
          {
            sub_255DE5EF0((v15 > 1), v16 + 1, 1);
            v13 = v21;
          }

          *(v13 + 16) = v16 + 1;
          sub_255D34630(&v22, v13 + 40 * v16 + 32);
          v14 += 40;
          --v12;
        }

        while (v12);
        (*(v18 + 8))(v9, v5);

        a2 = v19;
      }

      else
      {

        (*(v6 + 8))(v9, v5);
        v13 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      (*(v6 + 8))(v9, v5);
      v13 = 0;
    }

    v29[5] = v13;
    sub_255DC8068(&v26, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_255E12BFC(&v26);
  }
}

uint64_t sub_255E126EC@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  result = sub_255DBFA2C(a2, *v4, *(v4 + 8), *(v4 + 16), *(v4 + 24));
  if (!v5)
  {
    v26 = 0;
    sub_255DC8068(v4, v25);
    v12 = swift_allocObject();
    v13 = v25[3];
    *(v12 + 48) = v25[2];
    *(v12 + 64) = v13;
    *(v12 + 80) = v25[4];
    v14 = v25[1];
    *(v12 + 16) = v25[0];
    *(v12 + 32) = v14;
    *(v12 + 96) = a2;
    *(v12 + 104) = a3;
    sub_255DC8068(v4, &v20);
    v15 = swift_allocObject();
    v16 = v23;
    v15[3] = v22;
    v15[4] = v16;
    v15[5] = v24;
    v17 = v21;
    v15[1] = v20;
    v15[2] = v17;
    *&v20 = v9;
    *(&v20 + 1) = MEMORY[0x277CE11C8];
    v18 = MEMORY[0x277CE11C8];
    v19 = MEMORY[0x277CE11C0];
    *&v21 = v10;
    *(&v21 + 1) = MEMORY[0x277CE11C0];
    a4[3] = swift_getOpaqueTypeMetadata2();
    *&v20 = v9;
    *(&v20 + 1) = v18;
    *&v21 = v10;
    *(&v21 + 1) = v19;
    a4[4] = swift_getOpaqueTypeConformance2();
    __swift_allocate_boxed_opaque_existential_1(a4);

    sub_255E39BD8();
  }

  return result;
}

uint64_t sub_255E1290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  v7 = *(*(v6 - 8) + 64);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = &v14 - v9;
  v11 = *(a1 + 72);
  if (v11)
  {
    v12 = sub_255E3A778();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    v13[5] = a2;
    v13[6] = a3;

    sub_255D52540(0, 0, v10, &unk_255E5A580, v13);
  }

  return result;
}

uint64_t sub_255E12A44@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[7];
  v4 = a1[8];
  __swift_project_boxed_opaque_existential_1(a1 + 4, v3);
  result = (*(v4 + 24))(v3, v4);
  *a2 = result;
  return result;
}

unint64_t sub_255E12AD0(uint64_t a1)
{
  result = sub_255E12AF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255E12AF8()
{
  result = qword_27F7E8F78;
  if (!qword_27F7E8F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8F78);
  }

  return result;
}

uint64_t sub_255E12B4C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[10];
  __swift_project_boxed_opaque_existential_1(v1 + 6, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  return result;
}

unint64_t sub_255E12BA8()
{
  result = qword_27F7E8F88;
  if (!qword_27F7E8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8F88);
  }

  return result;
}

unint64_t sub_255E12C40()
{
  result = qword_27F7E8F90;
  if (!qword_27F7E8F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8F90);
  }

  return result;
}

unint64_t sub_255E12C98()
{
  result = qword_27F7E8F98;
  if (!qword_27F7E8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8F98);
  }

  return result;
}

unint64_t sub_255E12CF0()
{
  result = qword_27F7E8FA0;
  if (!qword_27F7E8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7E8FA0);
  }

  return result;
}

uint64_t sub_255E12D44()
{
  v0 = sub_255E3AB48();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_255E12DA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_255E12DE8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}