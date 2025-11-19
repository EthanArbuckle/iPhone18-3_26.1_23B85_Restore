uint64_t sub_247B93780()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 32) & ~v5;
  v7 = *(v2 - 8);
  v8 = *(v7 + 80);
  v9 = (v6 + *(v4 + 64) + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v5 | v8;
  (*(v4 + 8))(v0 + v6, AssociatedTypeWitness);
  (*(v7 + 8))(v0 + v9, v2);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_247B93898()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_247B93918()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = v4 + *(v2 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 80);
  v9 = (v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, AssociatedTypeWitness);

  return MEMORY[0x2821FE8E8](v0, v9 + v10, v11 | 7);
}

uint64_t sub_247B93A98()
{
  v1 = sub_247BF6DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247B93B4C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_247B93B64()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

_DWORD *sub_247B93BAC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_247B93BC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247B93C00()
{
  v1 = sub_247BF5F30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247B93CC4()
{
  v1 = sub_247BF5F30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 4);

  v7 = *(v0 + 5);

  v8 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247B93D98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247B93DD0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

__n128 sub_247B93E24(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

__n128 sub_247B93E54(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_247B93E84(uint64_t *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  v1 = *a1;
  type metadata accessor for CUIteratorTaskManager.State();
  return sub_247BF6070();
}

uint64_t sub_247B93ED0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[8];

  v3 = v0[9];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_247B93F18()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 56);

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_247B93F58()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247B93F98()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];
  swift_unknownObjectRelease();
  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[12];

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_247B93FF0()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[7];

  v3 = v0[11];

  v4 = v0[12];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_247B94040()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 56);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_247B94090()
{
  v1 = *(v0 + 48);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_247B940C8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247B94120()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247B94158()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5E028, &unk_247BFBFF8);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t get_enum_tag_for_layout_string_Iegh_Sg_0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_247B941A4()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247B941E0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_247B94220()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247B942BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_247B94340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_247B943C8()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247B94400()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247B94438()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247B94470()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_247B944EC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_247B94524()
{
  v1 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_247B9455C()
{
  v1 = *(v0 + 4);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 2);
  swift_unknownObjectRelease();
  v7 = *(v0 + 7);

  (*(v2 + 8))(&v0[v4], v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247B94620()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 40);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_247B946DC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_247B9471C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_247B94734(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247B94744(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CUClock.Instant.advanced(by:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  result = sub_247BF7540();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t CUClock.Instant.duration(to:)(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v1;
  v5 = v1[1];
  return sub_247BF7550();
}

uint64_t static CUClock.Instant.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_247BF7520();
}

uint64_t static CUClock.Instant.- infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_247BF7550();
}

uint64_t CUClock.Instant.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_247BF7570();
}

uint64_t CUClock.Instant.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_247BF7460();
  sub_247BF7570();
  return sub_247BF74A0();
}

uint64_t sub_247B94828@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  result = sub_247BF7540();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_247B94858@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *v2;
  v7 = v2[1];
  result = sub_247BF7550();
  *a2 = result;
  a2[1] = v9;
  return result;
}

uint64_t sub_247B9488C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_247BF7520();
}

BOOL sub_247B948A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (sub_247BF7520() & 1) == 0;
}

BOOL sub_247B948C8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return (sub_247BF7520() & 1) == 0;
}

uint64_t sub_247B948F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  return sub_247BF7520();
}

uint64_t sub_247B94904()
{
  v1 = *v0;
  v2 = v0[1];
  sub_247BF7460();
  sub_247BF7570();
  return sub_247BF74A0();
}

uint64_t sub_247B94950()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_247BF7570();
}

uint64_t sub_247B94958()
{
  v1 = *v0;
  v2 = v0[1];
  sub_247BF7460();
  sub_247BF7570();
  return sub_247BF74A0();
}

uint64_t sub_247B949B4@<X0>(char *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v49 = a2;
  v3 = sub_247BF6DB0();
  v4 = *(v3 - 8);
  v47 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v48 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_247BF6DA0();
  v46 = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v10;
  v43 = v10;
  MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  v44 = &v38 - v13;
  sub_247B96EC0(&qword_27EE5DBE0, MEMORY[0x277D85960]);
  v39 = a1;
  v45 = v3;
  sub_247BF73E0();
  (*(v7 + 16))(v11, v14, v6);
  v40 = *(v4 + 16);
  v40(v48, a1, v3);
  v15 = v7;
  v16 = *(v7 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = *(v4 + 80);
  v19 = (v12 + v18 + v17) & ~v18;
  v20 = swift_allocObject();
  v21 = *(v15 + 32);
  v41 = v15 + 32;
  v42 = v21;
  v21(v20 + v17, v11, v46);
  v22 = *(v4 + 32);
  v23 = v20 + v19;
  v24 = v48;
  v25 = v45;
  v22(v23, v48, v45);
  v26 = v49;
  v49[2] = sub_247B969A0;
  v26[3] = v20;
  v27 = v24;
  v28 = v39;
  v40(v24, v39, v25);
  v29 = (v18 + 16) & ~v18;
  v40 = (v29 + v47);
  v47 = v18 | 7;
  v30 = swift_allocObject();
  v22(v30 + v29, v27, v25);
  v31 = v49;
  *v49 = sub_247B96A74;
  v31[1] = v30;
  v22(v27, v28, v25);
  v32 = v46;
  v33 = v42;
  v42(v11, v44, v46);
  v34 = (v40 + v16) & ~v16;
  v35 = swift_allocObject();
  v22(v35 + v29, v48, v45);
  result = v33(v35 + v34, v11, v32);
  v37 = v49;
  v49[4] = &unk_247BF9F78;
  v37[5] = v35;
  return result;
}

uint64_t CUClock.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)()@<X8>)
{
  v53 = a3;
  v5 = *(a2 - 8);
  v50 = *(v5 + 64);
  (MEMORY[0x28223BE20])();
  v52 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = AssociatedTypeWitness;
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v11 = (MEMORY[0x28223BE20])();
  v48 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v47 = &v40 - v12;
  v42 = a1;
  sub_247BF73E0();
  v14 = v9;
  (*(v9 + 16))(&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13, AssociatedTypeWitness);
  v43 = *(v5 + 16);
  v43(v52, a1, a2);
  v15 = *(v9 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = *(v5 + 80);
  v18 = (v10 + v17 + v16) & ~v17;
  v19 = swift_allocObject();
  v20 = v51;
  *(v19 + 16) = a2;
  *(v19 + 24) = v20;
  v21 = *(v14 + 32);
  v44 = v14 + 32;
  v45 = v21;
  v21(v19 + v16, v48, v49);
  v22 = *(v5 + 32);
  v23 = v52;
  v22(v19 + v18, v52, a2);
  v24 = v53;
  v53[2] = sub_247B953FC;
  v24[3] = v19;
  v25 = v42;
  v43(v23, v42, a2);
  v26 = (v17 + 32) & ~v17;
  v27 = v26 + v50;
  v50 = v17 | 7;
  v28 = swift_allocObject();
  v29 = v51;
  *(v28 + 16) = a2;
  *(v28 + 24) = v29;
  v41 = v22;
  v22(v28 + v26, v23, a2);
  v30 = v53;
  *v53 = sub_247B954EC;
  v30[1] = v28;
  v22(v23, v25, a2);
  v31 = v48;
  v32 = v49;
  v33 = v45;
  v45(v48, v47, v49);
  v34 = (v27 + v15) & ~v15;
  v35 = swift_allocObject();
  v37 = v51;
  v36 = v52;
  *(v35 + 16) = a2;
  *(v35 + 24) = v37;
  v41(v35 + v26, v36, a2);
  result = v33(v35 + v34, v31, v32);
  v39 = v53;
  v53[4] = &unk_247BF9D98;
  v39[5] = v35;
  return result;
}

double sub_247B95138@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_247BF6DA0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF6DB0();
  sub_247B96EC0(&qword_27EE5DBE0, MEMORY[0x277D85960]);
  sub_247BF73E0();
  sub_247B96EC0(&qword_27EE5DBE8, MEMORY[0x277D85938]);
  sub_247BF6D90();
  (*(v3 + 8))(v6, v2);
  result = *&v8;
  *a1 = v8;
  return result;
}

double sub_247B952B4@<D0>(_OWORD *a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (*(v3 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v6 = &v8 - v5;
  sub_247BF73E0();
  swift_getAssociatedConformanceWitness();
  sub_247BF6D90();
  (*(v3 + 8))(v6, AssociatedTypeWitness);
  result = *&v8;
  *a1 = v8;
  return result;
}

double sub_247B953FC@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v1 + ((((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 64) + *(*(v3 - 8) + 80)) & ~*(*(v3 - 8) + 80));

  return sub_247B952B4(a1);
}

uint64_t sub_247B954EC()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  sub_247BF73D0();
  return v4;
}

uint64_t sub_247B95554(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 88) = a6;
  *(v7 + 96) = a7;
  *(v7 + 33) = a5;
  *(v7 + 72) = a3;
  *(v7 + 80) = a4;
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = sub_247BF6DA0();
  *(v7 + 104) = v8;
  v9 = *(v8 - 8);
  *(v7 + 112) = v9;
  v10 = *(v9 + 64) + 15;
  *(v7 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_247B95620, 0, 0);
}

uint64_t sub_247B95620()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 33);
  v6 = *(v0 + 72);
  v5 = *(v0 + 80);
  *(v0 + 40) = *(v0 + 56);
  sub_247B96EC0(&qword_27EE5DBE8, MEMORY[0x277D85938]);
  sub_247BF6D80();
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 32) = v4 & 1;
  v7 = sub_247BF6DB0();
  v8 = sub_247B96EC0(&qword_27EE5DBE0, MEMORY[0x277D85960]);
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  *(v0 + 128) = v10;
  *v10 = v0;
  v10[1] = sub_247B9579C;
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);

  return MEMORY[0x2822008C8](v11, v0 + 16, v7, v8);
}

uint64_t sub_247B9579C()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  v6[17] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247B95944, 0, 0);
  }

  else
  {
    v7 = v6[15];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_247B95944()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[17];

  return v2();
}

uint64_t sub_247B959A8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 33) = a4;
  *(v8 + 56) = a2;
  *(v8 + 64) = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 104) = AssociatedTypeWitness;
  v11 = *(AssociatedTypeWitness - 8);
  *(v8 + 112) = v11;
  v12 = *(v11 + 64) + 15;
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = *a1;

  return MEMORY[0x2822009F8](sub_247B95A98, 0, 0);
}

uint64_t sub_247B95A98()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 33);
  v8 = *(v0 + 56);
  v7 = *(v0 + 64);
  *(v0 + 40) = *(v0 + 128);
  swift_getAssociatedConformanceWitness();
  sub_247BF6D80();
  *(v0 + 16) = v8;
  *(v0 + 24) = v7;
  *(v0 + 32) = v6 & 1;
  v9 = *(MEMORY[0x277D85A58] + 4);
  v10 = swift_task_alloc();
  *(v0 + 144) = v10;
  *v10 = v0;
  v10[1] = sub_247B95BB4;
  v11 = *(v0 + 120);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 72);

  return MEMORY[0x2822008C8](v11, v0 + 16, v12, v13);
}

uint64_t sub_247B95BB4()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  v5 = *(*v1 + 104);
  v6 = *v1;
  v6[19] = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247B95D5C, 0, 0);
  }

  else
  {
    v7 = v6[15];

    v8 = v6[1];

    return v8();
  }
}

uint64_t sub_247B95D5C()
{
  v1 = v0[15];

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_247B95DC0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(v4 + 16);
  v11 = *(v4 + 24);
  v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
  v13 = v12 + *(*(v10 - 8) + 64);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = (v13 + *(v14 + 80)) & ~*(v14 + 80);
  v16 = swift_task_alloc();
  *(v5 + 16) = v16;
  *v16 = v5;
  v16[1] = sub_247B95F40;

  return sub_247B959A8(a1, a2, a3, a4 & 1, v4 + v12, v4 + v15, v10, v11);
}

uint64_t sub_247B95F40()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t CUClock.minimumResolution.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t CUClock.now.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t CUClock.sleep(until:tolerance:)(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = *(v4 + 32);
  v10 = *(v4 + 40);
  *(v5 + 16) = *a1;
  v14 = (v9 + *v9);
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v5 + 32) = v12;
  *v12 = v5;
  v12[1] = sub_247B961A4;

  return (v14)(v5 + 16, a2, a3, a4 & 1);
}

uint64_t sub_247B961A4()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247B962D8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_247B962F0()
{
  v0 = sub_247BF6DB0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_247BF7400();
  return sub_247B949B4(v3, &qword_27EE5E308);
}

uint64_t *sub_247B9636C()
{
  if (qword_27EE5E300 != -1)
  {
    swift_once();
  }

  return &qword_27EE5E308;
}

uint64_t static CUClock.suspending.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27EE5E300 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = qword_27EE5E330;
  *a1 = qword_27EE5E308;
  *(a1 + 8) = unk_27EE5E310;
  *(a1 + 24) = unk_27EE5E320;
  *(a1 + 40) = v1;
}

unint64_t sub_247B96470()
{
  result = qword_27EE5DBC0;
  if (!qword_27EE5DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DBC0);
  }

  return result;
}

unint64_t sub_247B964C8()
{
  result = qword_27EE5DBC8;
  if (!qword_27EE5DBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DBC8);
  }

  return result;
}

unint64_t sub_247B96528()
{
  result = qword_27EE5DBD0;
  if (!qword_27EE5DBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DBD0);
  }

  return result;
}

unint64_t sub_247B96584()
{
  result = qword_27EE5DBD8;
  if (!qword_27EE5DBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DBD8);
  }

  return result;
}

uint64_t sub_247B965D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_247B96600@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  result = v3();
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_247B96630(_OWORD *a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(a2 + 16);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  *(v3 + 16) = *a1;
  v12 = (v7 + *v7);
  v9 = v7[1];
  v10 = swift_task_alloc();
  *(v3 + 32) = v10;
  *v10 = v3;
  v10[1] = sub_247B9674C;

  return v12(v3 + 16, v4, v5, v6);
}

uint64_t sub_247B9674C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_247B96F08, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_247B96894(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_247B968DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CUClock.Instant(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CUClock.Instant(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

double sub_247B969A0@<D0>(_OWORD *a1@<X8>)
{
  v3 = *(sub_247BF6DA0() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_247BF6DB0() - 8);
  v7 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_247B95138(a1);
}

uint64_t sub_247B96A74()
{
  v0 = *(sub_247BF6DB0() - 8);
  v1 = (*(v0 + 80) + 16) & ~*(v0 + 80);
  sub_247B96EC0(&qword_27EE5DBE0, MEMORY[0x277D85960]);
  sub_247BF73D0();
  return v3;
}

uint64_t sub_247B96B28(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v12 = *a1;
  v13 = a1[1];
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_247B95F40;

  return sub_247B95554(v12, v13, a2, a3, a4 & 1, a5, a6);
}

uint64_t objectdestroy_17Tm(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = a2(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 80);
  v12 = (v7 + v8 + v11) & ~v11;
  v13 = *(v10 + 64);
  v14 = v6 | v11;
  (*(v5 + 8))(v2 + v7, v4);
  (*(v10 + 8))(v2 + v12, v9);

  return MEMORY[0x2821FE8E8](v2, v12 + v13, v14 | 7);
}

uint64_t sub_247B96D58(uint64_t *a1, uint64_t a2, uint64_t a3, char a4)
{
  v10 = *(sub_247BF6DB0() - 8);
  v11 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_247BF6DA0() - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_247B96F0C;

  return sub_247B96B28(a1, a2, a3, a4 & 1, v4 + v11, v4 + v14);
}

uint64_t sub_247B96EC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t CommonError.hashValue.getter()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t _s14CoreUtilsSwift05PrintB13JustificationO9hashValueSivg_0()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t sub_247B97024()
{
  v1 = *v0;
  sub_247BF7460();
  MEMORY[0x24C1B4F40](v1);
  return sub_247BF74A0();
}

uint64_t CUError.message.getter()
{
  v1 = [v0 userInfo];
  v2 = sub_247BF62F0();

  if (*(v2 + 16) && (v3 = sub_247B9B134(0x4D726F7272457563, 0xEA00000000006773), (v4 & 1) != 0))
  {
    sub_247B9B1AC(*(v2 + 56) + 32 * v3, v7);

    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

id CUError.init(_:_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v33 = MEMORY[0x277D837D0];
    *&v32 = a2;
    *(&v32 + 1) = a3;
    sub_247B9471C(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v31, 0x4D726F7272457563, 0xEA00000000006773, isUniquelyReferenced_nonNull_native);
  }

  v11 = 0x278EDB000;
  if (a4)
  {
    v29 = ObjectType;
    v30 = a1;
    v12 = a4;
    v13 = sub_247BF5E00();
    v14 = *MEMORY[0x277CCA7E8];
    v28 = sub_247BF6480();
    v16 = v15;
    v17 = [v13 domain];
    if (!v17)
    {
      sub_247BF6480();
      v17 = sub_247BF6470();
    }

    v18 = [v13 code];
    v19 = [v13 userInfo];
    sub_247BF62F0();

    v20 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v21 = sub_247BF62E0();

    v22 = [v20 initWithDomain:v17 code:v18 userInfo:v21];

    v33 = sub_247B9B208();
    *&v32 = v22;
    sub_247B9471C(&v32, v31);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v31, v28, v16, v23);

    v11 = 0x278EDB000uLL;
    a1 = v30;
    ObjectType = v29;
  }

  v24 = *MEMORY[0x277CCA590];
  v25 = sub_247BF62E0();

  v34.receiver = v4;
  v34.super_class = ObjectType;
  v26 = objc_msgSendSuper2(&v34, *(v11 + 3896), v24, a1, v25);

  return v26;
}

id CUError.init(domain:code:message:underlying:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  ObjectType = swift_getObjectType();
  if (a5)
  {
    v34 = MEMORY[0x277D837D0];
    *&v33 = a4;
    *(&v33 + 1) = a5;
    sub_247B9471C(&v33, v32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v32, 0x4D726F7272457563, 0xEA00000000006773, isUniquelyReferenced_nonNull_native);
  }

  v13 = 0x278EDB000;
  if (a6)
  {
    v31 = a3;
    v14 = a6;
    v15 = sub_247BF5E00();
    v16 = *MEMORY[0x277CCA7E8];
    v29 = sub_247BF6480();
    v30 = v17;
    v18 = [v15 domain];
    if (!v18)
    {
      sub_247BF6480();
      v18 = sub_247BF6470();
    }

    v19 = [v15 code];
    v20 = [v15 userInfo];
    sub_247BF62F0();

    v21 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v22 = sub_247BF62E0();

    v23 = [v21 initWithDomain:v18 code:v19 userInfo:v22];

    v34 = sub_247B9B208();
    *&v33 = v23;
    sub_247B9471C(&v33, v32);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v32, v29, v30, v24);

    v13 = 0x278EDB000uLL;
    a3 = v31;
  }

  v25 = sub_247BF6470();

  v26 = sub_247BF62E0();

  v35.receiver = v6;
  v35.super_class = ObjectType;
  v27 = objc_msgSendSuper2(&v35, *(v13 + 3896), v25, a3, v26);

  return v27;
}

id CUError.__allocating_init(domain:code:message:underlying:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  v14 = objc_allocWithZone(v7);
  v15 = MEMORY[0x277D84F98];
  if (a5)
  {
    v39 = MEMORY[0x277D837D0];
    *&v38 = a4;
    *(&v38 + 1) = a5;
    sub_247B9471C(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v37, 0x4D726F7272457563, 0xEA00000000006773, isUniquelyReferenced_nonNull_native);
  }

  if (a6)
  {
    v35 = v8;
    v36 = a3;
    v17 = a6;
    v18 = sub_247BF5E00();
    v19 = *MEMORY[0x277CCA7E8];
    v33 = sub_247BF6480();
    v34 = v20;
    v21 = [v18 domain];
    if (!v21)
    {
      sub_247BF6480();
      v21 = sub_247BF6470();
    }

    v22 = [v18 code];
    v23 = [v18 userInfo];
    sub_247BF62F0();

    v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v25 = sub_247BF62E0();

    v26 = [v24 initWithDomain:v21 code:v22 userInfo:v25];

    v39 = sub_247B9B208();
    *&v38 = v26;
    sub_247B9471C(&v38, v37);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v37, v33, v34, v27);

    a3 = v36;
    v8 = v35;
  }

  if (a7)
  {
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = v15;
    sub_247B9BC38(a7, sub_247B9B924, 0, v28, &v38);
  }

  v29 = sub_247BF6470();

  v30 = sub_247BF62E0();

  v40.receiver = v14;
  v40.super_class = v8;
  v31 = objc_msgSendSuper2(&v40, sel_initWithDomain_code_userInfo_, v29, a3, v30);

  return v31;
}

id CUError.init(domain:code:message:underlying:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v15 = MEMORY[0x277D84F98];
  if (a5)
  {
    v39 = MEMORY[0x277D837D0];
    *&v38 = a4;
    *(&v38 + 1) = a5;
    sub_247B9471C(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v37, 0x4D726F7272457563, 0xEA00000000006773, isUniquelyReferenced_nonNull_native);
  }

  if (a6)
  {
    v35 = v8;
    v36 = a3;
    v17 = a6;
    v18 = sub_247BF5E00();
    v19 = *MEMORY[0x277CCA7E8];
    v33 = sub_247BF6480();
    v34 = v20;
    v21 = [v18 domain];
    if (!v21)
    {
      sub_247BF6480();
      v21 = sub_247BF6470();
    }

    v22 = [v18 code];
    v23 = [v18 userInfo];
    sub_247BF62F0();

    v24 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v25 = sub_247BF62E0();

    v26 = [v24 initWithDomain:v21 code:v22 userInfo:v25];

    v39 = sub_247B9B208();
    *&v38 = v26;
    sub_247B9471C(&v38, v37);
    v27 = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v37, v33, v34, v27);

    a3 = v36;
    v8 = v35;
  }

  if (a7)
  {
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = v15;
    sub_247B9BC38(a7, sub_247B9B924, 0, v28, &v38);
  }

  v29 = sub_247BF6470();

  v30 = sub_247BF62E0();

  v40.receiver = v8;
  v40.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v40, sel_initWithDomain_code_userInfo_, v29, a3, v30);

  return v31;
}

id CUError.init(userError:_:underlying:)(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    v33 = MEMORY[0x277D837D0];
    *&v32 = a2;
    *(&v32 + 1) = a3;
    sub_247B9471C(&v32, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v31, 0x4D726F7272457563, 0xEA00000000006773, isUniquelyReferenced_nonNull_native);
  }

  v11 = 0x278EDB000;
  if (a4)
  {
    v29 = a1;
    v30 = ObjectType;
    v12 = a4;
    v13 = sub_247BF5E00();
    v14 = *MEMORY[0x277CCA7E8];
    v27 = sub_247BF6480();
    v28 = v15;
    v16 = [v13 domain];
    if (!v16)
    {
      sub_247BF6480();
      v16 = sub_247BF6470();
    }

    v17 = [v13 code];
    v18 = [v13 userInfo];
    sub_247BF62F0();

    v19 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v20 = sub_247BF62E0();

    v21 = [v19 initWithDomain:v16 code:v17 userInfo:v20];

    v33 = sub_247B9B208();
    *&v32 = v21;
    sub_247B9471C(&v32, v31);
    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v31, v27, v28, v22);

    v11 = 0x278EDB000uLL;
    a1 = v29;
    ObjectType = v30;
  }

  v23 = sub_247BF6470();
  v24 = sub_247BF62E0();

  v34.receiver = v4;
  v34.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v34, *(v11 + 3896), v23, a1, v24);

  return v25;
}

id CUError.init(userError:_:underlying:userInfo:)(int a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  v13 = MEMORY[0x277D84F98];
  if (a3)
  {
    v39 = MEMORY[0x277D837D0];
    *&v38 = a2;
    *(&v38 + 1) = a3;
    sub_247B9471C(&v38, v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v37, 0x4D726F7272457563, 0xEA00000000006773, isUniquelyReferenced_nonNull_native);
  }

  v15 = 0x278EDB000;
  if (a4)
  {
    v34 = a5;
    v35 = a1;
    v36 = v6;
    v16 = a4;
    v17 = sub_247BF5E00();
    v18 = *MEMORY[0x277CCA7E8];
    v32 = sub_247BF6480();
    v33 = v19;
    v20 = [v17 domain];
    if (!v20)
    {
      sub_247BF6480();
      v20 = sub_247BF6470();
    }

    v21 = [v17 code];
    v22 = [v17 userInfo];
    sub_247BF62F0();

    v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v24 = sub_247BF62E0();

    v15 = 0x278EDB000uLL;
    v25 = [v23 initWithDomain:v20 code:v21 userInfo:v24];

    v39 = sub_247B9B208();
    *&v38 = v25;
    sub_247B9471C(&v38, v37);
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_247B9B5C4(v37, v32, v33, v26);

    v6 = v36;
    a1 = v35;
    a5 = v34;
  }

  if (a5)
  {
    v27 = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = v13;
    sub_247B9BC38(a5, sub_247B9B924, 0, v27, &v38);
  }

  v28 = sub_247BF6470();
  v29 = sub_247BF62E0();

  v40.receiver = v6;
  v40.super_class = ObjectType;
  v30 = objc_msgSendSuper2(&v40, *(v15 + 3896), v28, a1, v29);

  return v30;
}

id CUError.__allocating_init(_:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  return CUError.init(_:)(a1);
}

{
  v3 = objc_allocWithZone(v1);
  if (a1)
  {
    v12 = v3;
    v4 = a1;
    v5 = sub_247BF5E00();
    v6 = [v5 domain];
    if (!v6)
    {
      sub_247BF6480();
      v6 = sub_247BF6470();
    }

    v7 = [v5 code];
    v8 = [v5 userInfo];
    sub_247BF62F0();

    v9 = sub_247BF62E0();

    v13.receiver = v12;
    v13.super_class = v1;
    v10 = objc_msgSendSuper2(&v13, sel_initWithDomain_code_userInfo_, v6, v7, v9);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

id CUError.init(_:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_247BF5E00();
  v5 = [v4 domain];
  if (!v5)
  {
    sub_247BF6480();
    v5 = sub_247BF6470();
  }

  v6 = [v4 code];
  v7 = [v4 userInfo];
  sub_247BF62F0();

  v8 = sub_247BF62E0();

  v12.receiver = v2;
  v12.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v12, sel_initWithDomain_code_userInfo_, v5, v6, v8);

  return v9;
}

{
  ObjectType = swift_getObjectType();
  if (a1)
  {
    v12 = ObjectType;
    v4 = a1;
    v5 = sub_247BF5E00();
    v6 = [v5 domain];
    if (!v6)
    {
      sub_247BF6480();
      v6 = sub_247BF6470();
    }

    v7 = [v5 code];
    v8 = [v5 userInfo];
    sub_247BF62F0();

    v9 = sub_247BF62E0();

    v13.receiver = v1;
    v13.super_class = v12;
    v10 = objc_msgSendSuper2(&v13, sel_initWithDomain_code_userInfo_, v6, v7, v9);
  }

  else
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

void CUError.encode(to:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DBF8, &qword_247BF9F88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247B9C4E8();
  sub_247BF7500();
  v11 = [v1 domain];
  sub_247BF6480();

  LOBYTE(v50[0]) = 0;
  sub_247BF6F80();
  if (v2)
  {
    (*(v6 + 8))(v9, v5);

    return;
  }

  v46 = v6;

  [v3 code];
  LOBYTE(v50[0]) = 1;
  sub_247BF6F90();
  v12 = [v3 userInfo];
  v13 = sub_247BF62F0();

  if (*(v13 + 16))
  {
    v14 = sub_247B9B134(0x4D726F7272457563, 0xEA00000000006773);
    if (v15)
    {
      sub_247B9B1AC(*(v13 + 56) + 32 * v14, v50);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_8;
      }

      LOBYTE(v50[0]) = 2;
      sub_247BF6F80();
    }
  }

LABEL_8:
  v16 = [v3 userInfo];
  v17 = sub_247BF62F0();

  v18 = *MEMORY[0x277CCA7E8];
  v19 = sub_247BF6480();
  if (!*(v17 + 16))
  {

    goto LABEL_27;
  }

  v21 = sub_247B9B134(v19, v20);
  v23 = v22;

  if ((v23 & 1) == 0)
  {
LABEL_27:

    goto LABEL_28;
  }

  sub_247B9B1AC(*(v17 + 56) + 32 * v21, v50);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC08, &qword_247BF9F90);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    (*(v46 + 8))(v9, v5);
    return;
  }

  v44 = v5;
  v45 = *&v49[0];
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v25 = sub_247BF74E0();
  if (*(v25 + 16))
  {
    v26 = *(v25 + 16);
    v27 = 0;
    v28 = MEMORY[0x277D84F90];
    v29 = v25 + 32;
    v30 = ObjectType;
    v31 = v25;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
        __break(1u);
        return;
      }

      sub_247B9C53C(v29, v50);
      sub_247B9C53C(v50, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC10, &qword_247BF9F98);
      if (swift_dynamicCast())
      {
        if (v48 > 2u)
        {

LABEL_21:
          sub_247B93B4C(v50, v49);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v28;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_247B9B970(0, *(v28 + 16) + 1, 1);
            v28 = v51;
          }

          v35 = *(v28 + 16);
          v34 = *(v28 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_247B9B970((v34 > 1), v35 + 1, 1);
            v28 = v51;
          }

          *(v28 + 16) = v35 + 1;
          sub_247B93B4C(v49, v28 + 40 * v35 + 32);
          v30 = ObjectType;
          goto LABEL_14;
        }

        v32 = sub_247BF7180();

        v30 = ObjectType;
        if (v32)
        {
          goto LABEL_21;
        }
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v50);
LABEL_14:
      ++v27;
      v29 += 40;
      v25 = v31;
      if (v26 == v27)
      {
        goto LABEL_30;
      }
    }
  }

  v28 = MEMORY[0x277D84F90];
  v30 = ObjectType;
LABEL_30:

  v36 = *(v28 + 16);

  if (v36 >= 3)
  {
    (*(v46 + 8))(v9, v44);
  }

  else
  {
    v37 = objc_allocWithZone(v30);
    v38 = v45;
    v39 = v45;
    v40 = CUError.init(_:)(v38);
    *&v50[0] = v40;
    LOBYTE(v49[0]) = 3;
    sub_247B9CA3C(&qword_27EE5DFF0, v41, type metadata accessor for CUError);
    v42 = v44;
    sub_247BF6FA0();
    (*(v46 + 8))(v9, v42);
  }
}

uint64_t CUError.errorDescription.getter()
{
  v0 = sub_247BF5E00();
  v1 = CUPrintNSError();

  if (!v1)
  {
    return 0;
  }

  v2 = sub_247BF6480();

  return v2;
}

uint64_t sub_247B991C8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E69616D6F64;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6567617373656DLL;
    }

    else
    {
      v4 = 0x69796C7265646E75;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xEF726F727245676ELL;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 1701080931;
    }

    else
    {
      v4 = 0x6E69616D6F64;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  v6 = 0xE600000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x6567617373656DLL;
  if (a2 != 2)
  {
    v8 = 0x69796C7265646E75;
    v7 = 0xEF726F727245676ELL;
  }

  if (a2)
  {
    v2 = 1701080931;
    v6 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_247BF7180();
  }

  return v11 & 1;
}

uint64_t sub_247B99310()
{
  v1 = *v0;
  sub_247BF7460();
  sub_247BF6500();

  return sub_247BF74A0();
}

uint64_t sub_247B993D4()
{
  *v0;
  *v0;
  *v0;
  sub_247BF6500();
}

uint64_t sub_247B99484()
{
  v1 = *v0;
  sub_247BF7460();
  sub_247BF6500();

  return sub_247BF74A0();
}

uint64_t sub_247B99544@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_247B9C5C4();
  *a2 = result;
  return result;
}

void sub_247B99574(uint64_t *a1@<X8>)
{
  v2 = 0xE600000000000000;
  v3 = 0x6E69616D6F64;
  v4 = 0xE700000000000000;
  v5 = 0x6567617373656DLL;
  if (*v1 != 2)
  {
    v5 = 0x69796C7265646E75;
    v4 = 0xEF726F727245676ELL;
  }

  if (*v1)
  {
    v3 = 1701080931;
    v2 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_247B995F4()
{
  v1 = 0x6E69616D6F64;
  v2 = 0x6567617373656DLL;
  if (*v0 != 2)
  {
    v2 = 0x69796C7265646E75;
  }

  if (*v0)
  {
    v1 = 1701080931;
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

uint64_t sub_247B99670@<X0>(_BYTE *a1@<X8>)
{
  result = sub_247B9C5C4();
  *a1 = result;
  return result;
}

uint64_t sub_247B996B0(uint64_t a1)
{
  v2 = sub_247B9C4E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_247B996EC(uint64_t a1)
{
  v2 = sub_247B9C4E8();

  return MEMORY[0x2821FE720](a1, v2);
}

id CUError.__allocating_init(domain:code:userInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = sub_247BF6470();

  if (a4)
  {
    v9 = sub_247BF62E0();
  }

  else
  {
    v9 = 0;
  }

  v10 = [objc_allocWithZone(v5) initWithDomain:v8 code:a3 userInfo:v9];

  return v10;
}

id CUError.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_247B9987C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9BF74(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_247B998CC()
{
  v1 = *v0;
  v2 = sub_247BF5E00();
  v3 = CUPrintNSError();

  if (!v3)
  {
    return 0;
  }

  v4 = sub_247BF6480();

  return v4;
}

uint64_t sub_247B99944()
{
  v1 = [*v0 helpAnchor];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_247BF6480();

  return v3;
}

id Error.cuErrorCode.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_247BF7130();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_247BF5E00();

  v11 = [v10 code];
  return v11;
}

unint64_t Error.deviceClass.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_247BF7130();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_247BF5E00();

  v11 = [v10 userInfo];
  v12 = sub_247BF62F0();

  if (*(v12 + 16) && (v13 = sub_247B9B134(0x6563697665447563, 0xED00007373616C43), (v14 & 1) != 0))
  {
    sub_247B9B1AC(*(v12 + 56) + 32 * v13, v46);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC20, &qword_247BF9FA8);
    if (swift_dynamicCast())
    {
      if (*(&v44 + 1))
      {
        sub_247B93B4C(&v43, v46);
        v15 = v47;
        v16 = v48;
        v17 = __swift_project_boxed_opaque_existential_1(v46, v47);
        v18 = *(v15 - 8);
        v19 = *(v18 + 64);
        MEMORY[0x28223BE20](v17);
        v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v20);
        if ((sub_247BF6B80() & 1) != 0 && sub_247BF6B70() >= 33)
        {
          LODWORD(v43) = 0x80000000;
          if (sub_247BF6B80())
          {
            v21 = sub_247BF6B70();
            if (v21 < 32)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v25 = sub_247BF6B80();
            v21 = sub_247BF6B70();
            if ((v25 & 1) == 0)
            {
              if (v21 >= 32)
              {
                goto LABEL_26;
              }

              goto LABEL_25;
            }

            if (v21 <= 32)
            {
              v29 = *(*(v16 + 24) + 16);
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v42 = &v41;
              v31 = (*(*(AssociatedTypeWitness - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
              MEMORY[0x28223BE20](AssociatedTypeWitness);
              swift_getAssociatedConformanceWitness();
              v32 = sub_247BF7370();
              v41 = &v41;
              MEMORY[0x28223BE20](v32);
              sub_247BF7160();
              v33 = *(*(v16 + 32) + 8);
              v34 = sub_247BF6420();
              v28 = *(v18 + 8);
              v28(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
              if ((v34 & 1) == 0)
              {
LABEL_25:
                sub_247BF6B60();
                goto LABEL_26;
              }

LABEL_21:
              v28(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
LABEL_31:
              __swift_destroy_boxed_opaque_existential_1Tm(v46);
              goto LABEL_15;
            }
          }

          v42 = &v41;
          MEMORY[0x28223BE20](v21);
          sub_247B9C610();
          sub_247BF6B30();
          v26 = *(*(v16 + 32) + 8);
          v27 = sub_247BF6420();
          v28 = *(v18 + 8);
          v28(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
          if (v27)
          {
            goto LABEL_21;
          }
        }

LABEL_26:
        if (sub_247BF6B70() <= 32 && (sub_247BF6B70() != 32 || (sub_247BF6B80() & 1) != 0))
        {
          goto LABEL_37;
        }

        LODWORD(v43) = 0x7FFFFFFF;
        v35 = sub_247BF6B80();
        v36 = sub_247BF6B70();
        if (v35)
        {
          if (v36 > 32)
          {
            goto LABEL_29;
          }
        }

        else if (v36 > 31)
        {
LABEL_29:
          MEMORY[0x28223BE20](v36);
          sub_247B9C610();
          sub_247BF6B30();
          v37 = *(*(v16 + 32) + 8);
          v38 = sub_247BF6420();
          v39 = *(v18 + 8);
          v39(&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v15);
          if (v38)
          {
            v39(v20, v15);
            goto LABEL_31;
          }

LABEL_37:
          v40 = sub_247BF6B60();
          (*(v18 + 8))(v20, v15);
          __swift_destroy_boxed_opaque_existential_1Tm(v46);
          v23 = 0;
          v22 = v40;
          goto LABEL_16;
        }

        sub_247BF6B60();
        goto LABEL_37;
      }
    }

    else
    {
      v45 = 0;
      v43 = 0u;
      v44 = 0u;
    }
  }

  else
  {

    v43 = 0u;
    v44 = 0u;
    v45 = 0;
  }

  sub_247B9CAD0(&v43, &qword_27EE5DC18, &qword_247BF9FA0);
LABEL_15:
  v22 = 0;
  v23 = 1;
LABEL_16:
  LOBYTE(v46[0]) = v23;
  return v22 | (v23 << 32);
}

uint64_t sub_247B9A2B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v10, v11, a1);
  v12 = sub_247BF7130();
  if (v12)
  {
    v13 = v12;
    (*(v7 + 8))(v10, a1);
  }

  else
  {
    v13 = swift_allocError();
    (*(v7 + 32))(v14, v10, a1);
  }

  v15 = sub_247BF5E00();

  v16 = [v15 userInfo];
  v17 = sub_247BF62F0();

  if (*(v17 + 16) && (v18 = sub_247B9B134(a3, a4), (v19 & 1) != 0))
  {
    sub_247B9B1AC(*(v17 + 56) + 32 * v18, v22);

    if (swift_dynamicCast())
    {
      return v21;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t Error.userErrorCode.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_247BF7130();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_247BF5E00();

  v11 = [v10 domain];
  v12 = sub_247BF6480();
  v14 = v13;

  if (v12 == 0x6F72724572657355 && v14 == 0xEF6E69616D6F4472)
  {
  }

  else
  {
    v16 = sub_247BF7180();

    if ((v16 & 1) == 0)
    {

      v17 = 0;
      v18 = 1;
      return v17 | (v18 << 32);
    }
  }

  v19 = [v10 code];

  v18 = v19 != v19;
  v17 = v19;
  if (v19 != v19)
  {
    v17 = 0;
  }

  return v17 | (v18 << 32);
}

uint64_t sub_247B9A6E0()
{
  sub_247B9B208();
  sub_247B9CA3C(&qword_27EE5DC60, 255, sub_247B9B208);
  v1 = v0;
  v2 = sub_247BF7130();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = sub_247BF5E00();

  v6 = [v5 domain];
  v7 = sub_247BF6480();
  v9 = v8;

  v16 = v7;
  v17 = v9;
  MEMORY[0x24C1B4020](58, 0xE100000000000000);
  [v5 code];
  v10 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v10);

  v18 = v7;
  v19 = v9;
  v11 = [v5 userInfo];
  v12 = sub_247BF62F0();

  if (!*(v12 + 16) || (v13 = sub_247B9B134(0x4D726F7272457563, 0xEA00000000006773), (v14 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_247B9B1AC(*(v12 + 56) + 32 * v13, &v16);

  if (!swift_dynamicCast())
  {
LABEL_9:

    return v7;
  }

  v16 = 2564140;
  v17 = 0xE300000000000000;
  MEMORY[0x24C1B4020]();

  MEMORY[0x24C1B4020](39, 0xE100000000000000);
  MEMORY[0x24C1B4020](v16, v17);

  return v18;
}

id Error.flatDescription.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v6, a1);
  v7 = sub_247BF7130();
  if (v7)
  {
    v8 = v7;
    (*(v2 + 8))(v5, a1);
  }

  else
  {
    v8 = swift_allocError();
    (*(v2 + 32))(v9, v5, a1);
  }

  v10 = sub_247BF5E00();

  v11 = [v10 domain];
  v12 = sub_247BF6480();
  v14 = v13;

  v23 = v12;
  v24 = v14;
  MEMORY[0x24C1B4020](58, 0xE100000000000000);
  v25 = [v10 code];
  v15 = sub_247BF6FD0();
  MEMORY[0x24C1B4020](v15);

  v16 = v23;
  v25 = v23;
  v26 = v24;
  v17 = [v10 userInfo];
  v18 = sub_247BF62F0();

  if (!*(v18 + 16) || (v19 = sub_247B9B134(0x4D726F7272457563, 0xEA00000000006773), (v20 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_247B9B1AC(*(v18 + 56) + 32 * v19, &v23);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:

    return v16;
  }

  v23 = 2564140;
  v24 = 0xE300000000000000;
  MEMORY[0x24C1B4020](v22[0], v22[1]);

  MEMORY[0x24C1B4020](39, 0xE100000000000000);
  MEMORY[0x24C1B4020](v23, v24);

  return v25;
}

id Error.nestedDescription.getter(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = Error.flatDescription.getter(v5);
  v29 = v8;
  (*(v3 + 16))(v7, v1, a1);
  v9 = sub_247BF7130();
  if (v9)
  {
    v10 = v9;
    (*(v3 + 8))(v7, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v3 + 32))(v11, v7, a1);
  }

  v12 = sub_247BF5E00();

  v13 = *MEMORY[0x277CCA7E8];
  v14 = 3;
  while (1)
  {
    v15 = [v12 userInfo];
    v16 = sub_247BF62F0();

    v17 = sub_247BF6480();
    if (!*(v16 + 16))
    {
      break;
    }

    v19 = sub_247B9B134(v17, v18);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }

    sub_247B9B1AC(*(v16 + 56) + 32 * v19, &v26);

    sub_247B9B208();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_12;
    }

    v22 = v25[1];
    v26 = 540945696;
    v27 = 0xE400000000000000;
    v23 = sub_247B9A6E0();
    MEMORY[0x24C1B4020](v23);

    MEMORY[0x24C1B4020](v26, v27);

    v12 = v22;
    if (!--v14)
    {

      return v28;
    }
  }

LABEL_11:

LABEL_12:

  return v28;
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(cu:)(uint64_t a1, uint64_t a2)
{
  v2 = Error.nestedDescription.getter(a2);
  MEMORY[0x24C1B4020](v2);
}

{
  v4 = sub_247BF6AC0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v13 - v7;
  (*(v5 + 16))(&v13 - v7, a1, v4);
  v9 = *(a2 - 8);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    v16[3] = MEMORY[0x277D837D0];
    v16[4] = MEMORY[0x277D83838];
    v16[0] = 0x73736563637573;
    v16[1] = 0xE700000000000000;
  }

  else
  {
    v10 = Error.nestedDescription.getter(a2);
    v14 = MEMORY[0x277D837D0];
    v15 = MEMORY[0x277D83838];
    *&v13 = v10;
    *(&v13 + 1) = v11;
    (*(v9 + 8))(v8, a2);
    sub_247B93B4C(&v13, v16);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC30, &qword_247BFC500);
  sub_247BF6DC0();
  return __swift_destroy_boxed_opaque_existential_1Tm(v16);
}

unint64_t sub_247B9B134(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_247BF7460();
  sub_247BF6500();
  v6 = sub_247BF74A0();

  return sub_247B9B254(a1, a2, v6);
}

uint64_t sub_247B9B1AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_247B9B208()
{
  result = qword_27EE5DBF0;
  if (!qword_27EE5DBF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE5DBF0);
  }

  return result;
}

unint64_t sub_247B9B254(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_247BF7180())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_247B9B30C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC78, &qword_247BFBAD0);
  v36 = a2;
  result = sub_247BF6ED0();
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
        sub_247B9471C(v25, v37);
      }

      else
      {
        sub_247B9B1AC(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_247BF7460();
      sub_247BF6500();
      result = sub_247BF74A0();
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
      result = sub_247B9471C(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_247B9B5C4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_247B9B134(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_247B9B780();
      v11 = v19;
      goto LABEL_8;
    }

    sub_247B9B30C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_247B9B134(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_247BF73C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);

    return sub_247B9471C(a1, v23);
  }

  else
  {
    sub_247B9B714(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_247B9B714(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_247B9471C(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_247B9B780()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC78, &qword_247BFBAD0);
  v2 = *v0;
  v3 = sub_247BF6EC0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_247B9B1AC(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_247B9471C(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_247B9B924@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_247B9B1AC((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void *sub_247B9B970(void *a1, int64_t a2, char a3)
{
  result = sub_247B9B990(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_247B9B990(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC68, &unk_247BFCD40);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC10, &qword_247BF9F98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_247B9BAD8@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_247B9B1AC(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_247B9471C(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_247B9CAD0(v22, &qword_27EE5DC80, &qword_247BFA288);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_247B9BC38(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  sub_247B9BAD8(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  sub_247B9471C(v49, v47);
  v14 = *a5;
  result = sub_247B9B134(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    sub_247B9B30C(v20, a4 & 1);
    v22 = *a5;
    result = sub_247B9B134(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_247BF73C0();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_247B9B780();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    sub_247B9B1AC(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_1Tm((v26 + v25));
    sub_247B9471C(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = sub_247B9471C(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    sub_247B9BAD8(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        sub_247B9471C(v49, v47);
        v35 = *a5;
        result = sub_247B9B134(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          sub_247B9B30C(v39, 1);
          v40 = *a5;
          result = sub_247B9B134(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          sub_247B9B1AC(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_1Tm(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_1Tm((v34 + v33));
          sub_247B9471C(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = sub_247B9471C(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        sub_247B9BAD8(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    sub_247B9472C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_247B9BF74(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC70, &qword_247BFA280);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = a1[4];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247B9C4E8();
  sub_247BF74D0();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v9;
  }

  LOBYTE(v39[0]) = 0;
  v33 = sub_247BF6F60();
  v35 = v10;
  LOBYTE(v39[0]) = 1;
  v32 = sub_247BF6F70();
  LOBYTE(v39[0]) = 2;
  v29 = sub_247BF6F40();
  v30 = v4;
  v31 = v11;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  result = sub_247BF74B0();
  v14 = result;
  v36 = *(result + 16);
  if (!v36)
  {
    v16 = MEMORY[0x277D84F90];
LABEL_21:

    v22 = *(v16 + 16);

    v23 = v22 >= 3;
    v24 = v30;
    if (v23)
    {
      v26 = 0;
    }

    else
    {
      type metadata accessor for CUError();
      LOBYTE(v38[0]) = 3;
      sub_247B9CA3C(&qword_27EE5DE30, v25, type metadata accessor for CUError);
      sub_247BF6F50();
      v26 = *&v39[0];
    }

    v27 = objc_allocWithZone(type metadata accessor for CUError());
    v9 = CUError.init(domain:code:message:underlying:)(v33, v35, v32, v29, v31, v26);
    (*(v24 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return v9;
  }

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  v17 = result + 32;
  v34 = result;
  while (v15 < *(v14 + 16))
  {
    sub_247B9C53C(v17, v39);
    sub_247B9C53C(v39, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC10, &qword_247BF9F98);
    if (swift_dynamicCast())
    {
      if (v37 > 2u)
      {

LABEL_15:
        sub_247B93B4C(v39, v38);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_247B9B970(0, *(v16 + 16) + 1, 1);
          v16 = v40;
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_247B9B970((v20 > 1), v21 + 1, 1);
          v16 = v40;
        }

        *(v16 + 16) = v21 + 1;
        result = sub_247B93B4C(v38, v16 + 40 * v21 + 32);
        v14 = v34;
        goto LABEL_8;
      }

      v18 = sub_247BF7180();

      v14 = v34;
      if (v18)
      {
        goto LABEL_15;
      }
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v39);
LABEL_8:
    ++v15;
    v17 += 40;
    if (v36 == v15)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
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

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_247B9C4E8()
{
  result = qword_27EE5DC00;
  if (!qword_27EE5DC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DC00);
  }

  return result;
}

uint64_t sub_247B9C53C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_247B9C5C4()
{
  v0 = sub_247BF6F20();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_247B9C610()
{
  result = qword_27EE5DC28;
  if (!qword_27EE5DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DC28);
  }

  return result;
}

unint64_t sub_247B9C668()
{
  result = qword_27EE5DC38;
  if (!qword_27EE5DC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DC38);
  }

  return result;
}

unint64_t sub_247B9C6C0()
{
  result = qword_27EE5DC40;
  if (!qword_27EE5DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DC40);
  }

  return result;
}

unint64_t sub_247B9C718()
{
  result = qword_27EE5DC48;
  if (!qword_27EE5DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DC48);
  }

  return result;
}

unint64_t sub_247B9C770()
{
  result = qword_27EE5DC50;
  if (!qword_27EE5DC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE5DC50);
  }

  return result;
}

uint64_t dispatch thunk of CUError.__allocating_init(_:)()
{
  return (*(v0 + 120))();
}

{
  return (*(v0 + 128))();
}

uint64_t _s14CoreUtilsSwift11CommonErrorOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14CoreUtilsSwift11CommonErrorOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_247B9CA3C(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_247B9CAD0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_247B9CB40()
{
  result = sub_247BA0C64(MEMORY[0x277D84F90]);
  qword_27EE5EBC8 = result;
  return result;
}

CoreUtilsSwift::CUEnvironmentValues __swiftcall CUEnvironmentValues.init()()
{
  v1 = v0;
  result._values._rawValue = sub_247BA0C64(MEMORY[0x277D84F90]);
  v1->_values._rawValue = result._values._rawValue;
  return result;
}

uint64_t static CUEnvironmentValues.default.getter@<X0>(void *a1@<X8>)
{
  if (qword_27EE5EBC0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27EE5EBC8;
}

id sub_247B9CC08(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_247BA04BC(&type metadata for DispatchQueueCUEnvironmentKey);
    if (v3)
    {
      sub_247B9D544(v7, v2, *(a1 + 36), 0, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      sub_247BA0E68();
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  if (qword_27EE5EC20 != -1)
  {
    swift_once();
  }

  v5 = qword_27EE5EC28;

  return v5;
}

uint64_t (*sub_247B9CCFC(uint64_t a1))()
{
  if (!*(a1 + 16))
  {
    return sub_247B9E47C;
  }

  v2 = sub_247BA04BC(&type metadata for DateCUEnvironmentKey);
  v3 = sub_247B9E47C;
  if (v4)
  {
    sub_247B9D544(v7, v2, *(a1 + 36), 0, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA0, &qword_247BFA2B8);
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return sub_247B9E47C;
    }
  }

  return v3;
}

uint64_t sub_247B9CDF8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_247BA04BC(&type metadata for DeviceColorCUEnvironmentKey);
    if (v3)
    {
      sub_247B9D544(v7, v2, *(a1 + 36), 0, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  if (qword_27EE5EC08 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE5EC10;

  return v4;
}

uint64_t sub_247B9CEE0(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_247BA04BC(&type metadata for GreenTeaCUEnvironmentKey), (v3 & 1) != 0) && (sub_247B9D544(v7, v2, *(a1 + 36), 0, a1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), swift_dynamicCast()))
  {
    v4 = v6;
  }

  else
  {
    v4 = CUIsGreenTeaDevice();
  }

  return v4 & 1;
}

uint64_t sub_247B9CF80(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_247BA04BC(a2);
  if ((v4 & 1) != 0 && (sub_247B9D544(v7, v3, *(a1 + 36), 0, a1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA8, &qword_247BFA2C0), swift_dynamicCast()))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247B9D038(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = sub_247BA04BC(&type metadata for ProductTypeCUEnvironmentKey);
    if (v3)
    {
      sub_247B9D544(v7, v2, *(a1 + 36), 0, a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  if (qword_27EE5EC30 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE5EC38;

  return v4;
}

uint64_t sub_247B9D120(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = sub_247BA04BC(a2);
    if ((v5 & 1) != 0 && (sub_247B9D544(v8, v4, *(a1 + 36), 0, a1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), swift_dynamicCast()))
    {
      LOBYTE(v2) = v7;
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  return v2 & 1;
}

uint64_t sub_247B9D1C0(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v3 = sub_247BA04BC(a2);
  if ((v4 & 1) != 0 && (sub_247B9D544(v7, v3, *(a1 + 36), 0, a1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC98, &qword_247BFA2B0), swift_dynamicCast()))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247B9D280(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 1;
  }

  v2 = sub_247BA04BC(&type metadata for XPCRegisterStreamEventsCUEnvironmentKey);
  if ((v3 & 1) != 0 && (sub_247B9D544(v7, v2, *(a1 + 36), 0, a1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), swift_dynamicCast()))
  {
    v4 = v6;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t CUEnvironmentValues.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_247BF6AC0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v22[-v13];
  v15 = *v4;
  if (*(v15 + 16))
  {
    v16 = sub_247BA04BC(a1);
    if (v17)
    {
      sub_247B9D544(v22, v16, *(v15 + 36), 0, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      v18 = swift_dynamicCast();
      v19 = *(*(AssociatedTypeWitness - 8) + 56);
      if (v18)
      {
        v20 = *(AssociatedTypeWitness - 8);
        v19(v14, 0, 1, AssociatedTypeWitness);
        return (*(v20 + 32))(a4, v14, AssociatedTypeWitness);
      }

      v19(v14, 1, 1, AssociatedTypeWitness);
      (*(v11 + 8))(v14, v10);
    }
  }

  return (*(a3 + 16))(a2, a3);
}

uint64_t sub_247B9D544(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    sub_247B9B1AC(*(a5 + 56) + 32 * a2, result);
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t CUEnvironmentValues.subscript.setter(uint64_t a1, uint64_t a2)
{
  sub_247BA0D60(a1, a2);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);

  return v4(a1, AssociatedTypeWitness);
}

_OWORD *sub_247B9D64C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 24))
  {
    sub_247B9471C(a1, v17);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v2;
    result = sub_247BA0954(v17, a2, isUniquelyReferenced_nonNull_native);
    *v2 = v15;
  }

  else
  {
    sub_247BA0E00(a1);
    v8 = *v2;
    v9 = sub_247BA04BC(a2);
    if (v10)
    {
      v11 = v9;
      v12 = *v3;
      v13 = swift_isUniquelyReferenced_nonNull_native();
      v14 = *v3;
      v16 = *v3;
      if (!v13)
      {
        sub_247BA0AE8();
        v14 = v16;
      }

      sub_247B9471C((*(v14 + 56) + 32 * v11), v17);
      sub_247BA07E4(v11, v14);
      *v3 = v14;
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    return sub_247BA0E00(v17);
  }

  return result;
}

void (*CUEnvironmentValues.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v9 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  v17 = *v4;
  CUEnvironmentValues.subscript.getter(a2, a3, a4, v15);
  return sub_247B9D884;
}

void sub_247B9D884(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[6];
  v4 = (*a1)[7];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  v10 = **a1;
  v9 = (*a1)[1];
  if (a2)
  {
    (*(v6 + 16))((*a1)[6], v4, v5);
    sub_247BA0D60(v3, v10);
    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {
    sub_247BA0D60((*a1)[7], v10);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t CUEnvironmentValues.remove<A>(key:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_247BA04BC(a1);
  if (v5)
  {
    v6 = v4;
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v12 = *v2;
    *v2 = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_247BA0AE8();
      v9 = v12;
    }

    sub_247B9471C((*(v9 + 56) + 32 * v6), v13);
    sub_247BA07E4(v6, v9);
    v10 = *v2;

    *v2 = v9;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
  }

  return sub_247BA0E00(v13);
}

uint64_t CUEnvironmental<>.unownedExecutor.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))(&v5);
  v2 = sub_247B9CC08(v5);

  v3 = sub_247BF6A90();

  return v3;
}

id CUEnvironmentValues.dispatchQueue.getter()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = sub_247BA04BC(&type metadata for DispatchQueueCUEnvironmentKey);
    if (v3)
    {
      sub_247B9D544(v7, v2, *(v1 + 36), 0, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      sub_247BA0E68();
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  if (qword_27EE5EC20 != -1)
  {
    swift_once();
  }

  v5 = qword_27EE5EC28;

  return v5;
}

uint64_t sub_247B9DBD0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D120(*a1, &type metadata for AWDLEnabledCUEnvironmentKey);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9DC08(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for AWDLEnabledCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.awdlEnabled.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for AWDLEnabledCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.awdlEnabled.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D120(*v1, &type metadata for AWDLEnabledCUEnvironmentKey) & 1;
  return sub_247B9DCE8;
}

uint64_t sub_247B9DD00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D120(*a1, &type metadata for BluetoothAllowScreenOffCUEnvironmentKey);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9DD38(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for BluetoothAllowScreenOffCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.bluetoothAllowScreenOff.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for BluetoothAllowScreenOffCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.bluetoothAllowScreenOff.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D120(*v1, &type metadata for BluetoothAllowScreenOffCUEnvironmentKey) & 1;
  return sub_247B9DE18;
}

uint64_t sub_247B9DE30@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9D1C0(*a1, &type metadata for BluetoothMockIDCUEnvironmentKey);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_OWORD *(*CUEnvironmentValues.bluetoothMockID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_247B9D1C0(*v1, &type metadata for BluetoothMockIDCUEnvironmentKey);
  a1[1] = v3;
  return sub_247B9DEE0;
}

uint64_t sub_247B9DEEC()
{
  v0 = sub_247B9636C();
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  qword_27EE5EBD8 = *v0;
  qword_27EE5EBE0 = v1;
  qword_27EE5EBE8 = v2;
  qword_27EE5EBF0 = v3;
  qword_27EE5EBF8 = v4;
  qword_27EE5EC00 = v5;
}

uint64_t sub_247B9DF6C@<X0>(void *a1@<X8>)
{
  if (qword_27EE5EBD0 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v1 = qword_27EE5EBE0;
  v2 = qword_27EE5EBE8;
  v3 = qword_27EE5EBF0;
  v4 = qword_27EE5EBF8;
  v5 = qword_27EE5EC00;
  *a1 = qword_27EE5EBD8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  a1[5] = v5;
}

uint64_t CUEnvironmentValues.clock.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16))
  {
    v4 = sub_247BA04BC(&type metadata for ClockCUEnvironmentKey);
    if (v5)
    {
      sub_247B9D544(v15, v4, *(v3 + 36), 0, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      result = swift_dynamicCast();
      if (result)
      {
        *a1 = v12;
        *(a1 + 16) = v13;
        *(a1 + 32) = v14;
        return result;
      }

      sub_247BA0EB4(0);
    }
  }

  if (qword_27EE5EBD0 != -1)
  {
    swift_once();
  }

  v7 = qword_27EE5EBE0;
  v8 = qword_27EE5EBE8;
  v9 = qword_27EE5EBF0;
  v10 = qword_27EE5EBF8;
  v11 = qword_27EE5EC00;
  *a1 = qword_27EE5EBD8;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v10;
  *(a1 + 40) = v11;
}

double sub_247B9E174@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v7 = *a1;
  CUEnvironmentValues.clock.getter(v5);
  v3 = v5[1];
  *a2 = v5[0];
  a2[1] = v3;
  result = v6[0];
  a2[2] = *v6;
  return result;
}

_OWORD *sub_247B9E1C0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[5];
  v6[3] = &type metadata for CUClock;
  v4 = swift_allocObject();
  v6[0] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = *(a1 + 1);
  *(v4 + 40) = *(a1 + 3);
  *(v4 + 56) = v3;

  return sub_247B9D64C(v6, &type metadata for ClockCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.clock.setter(_OWORD *a1)
{
  v5[3] = &type metadata for CUClock;
  v2 = swift_allocObject();
  v5[0] = v2;
  v3 = a1[1];
  v2[1] = *a1;
  v2[2] = v3;
  v2[3] = a1[2];
  return sub_247B9D64C(v5, &type metadata for ClockCUEnvironmentKey);
}

void (*CUEnvironmentValues.clock.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  *a1 = v3;
  *(v3 + 48) = v1;
  v5 = *v1;
  CUEnvironmentValues.clock.getter(v3);
  return sub_247B9E360;
}

void sub_247B9E360(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v8 = (*a1)[4];
  v7 = (*a1)[5];
  v9 = (*a1)[6];
  v15[3] = &type metadata for CUClock;
  if (a2)
  {
    v10 = swift_allocObject();
    v15[0] = v10;
    v10[2] = v4;
    v10[3] = v3;
    v10[4] = v6;
    v10[5] = v5;
    v10[6] = v8;
    v10[7] = v7;

    sub_247B9D64C(v15, &type metadata for ClockCUEnvironmentKey);
    v11 = v2[1];
    v12 = v2[3];
    v13 = v2[5];
  }

  else
  {
    v14 = swift_allocObject();
    v15[0] = v14;
    v14[2] = v4;
    v14[3] = v3;
    v14[4] = v6;
    v14[5] = v5;
    v14[6] = v8;
    v14[7] = v7;
    sub_247B9D64C(v15, &type metadata for ClockCUEnvironmentKey);
  }

  free(v2);
}

uint64_t (*CUEnvironmentValues.date.getter())()
{
  v1 = *v0;
  v2 = sub_247B9E47C;
  if (*(v1 + 16))
  {
    v3 = sub_247BA04BC(&type metadata for DateCUEnvironmentKey);
    v2 = sub_247B9E47C;
    if (v4)
    {
      sub_247B9D544(v7, v3, *(v1 + 36), 0, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA0, &qword_247BFA2B8);
      if (swift_dynamicCast())
      {
        return v6;
      }

      else
      {
        return sub_247B9E47C;
      }
    }
  }

  return v2;
}

uint64_t (*sub_247B9E584@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>))()
{
  result = sub_247B9CCFC(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_OWORD *sub_247B9E5B0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA0, &qword_247BFA2B8);
  v4[0] = v2;
  v4[1] = v1;

  return sub_247B9D64C(v4, &type metadata for DateCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.date.modify(uint64_t (**a1)()))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_247B9CCFC(*v1);
  a1[1] = v3;
  return sub_247B9E680;
}

_OWORD *sub_247B9E680(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA0, &qword_247BFA2B8);
    v6 = v3;
    v7 = v2;

    sub_247B9D64C(&v6, &type metadata for DateCUEnvironmentKey);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA0, &qword_247BFA2B8);
    v6 = v3;
    v7 = v2;
    return sub_247B9D64C(&v6, &type metadata for DateCUEnvironmentKey);
  }
}

uint64_t CUEnvironmentValues.deviceColor.getter()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = sub_247BA04BC(&type metadata for DeviceColorCUEnvironmentKey);
    if (v3)
    {
      sub_247B9D544(v7, v2, *(v1 + 36), 0, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  if (qword_27EE5EC08 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE5EC10;

  return v4;
}

uint64_t sub_247B9E874@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9CDF8(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_OWORD *CUEnvironmentValues.deviceColor.setter(uint64_t a1, uint64_t a2)
{
  v3[3] = MEMORY[0x277D837D0];
  v3[0] = a1;
  v3[1] = a2;
  return sub_247B9D64C(v3, &type metadata for DeviceColorCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.deviceColor.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_247B9CDF8(*v1);
  a1[1] = v3;
  return sub_247B9E934;
}

uint64_t sub_247B9E940()
{
  sub_247BA0E68();
  result = static OS_dispatch_queue_serial.mainSerialQueue.getter();
  qword_27EE5EC28 = result;
  return result;
}

id sub_247B9E974@<X0>(void *a1@<X8>)
{
  if (qword_27EE5EC20 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = qword_27EE5EC28;
  *a1 = qword_27EE5EC28;

  return v2;
}

id sub_247B9E9E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_247B9CC08(*a1);
  *a2 = result;
  return result;
}

_OWORD *sub_247B9EA10(void **a1)
{
  v1 = *a1;
  v4[3] = sub_247BA0E68();
  v4[0] = v1;
  v2 = v1;
  return sub_247B9D64C(v4, &type metadata for DispatchQueueCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.dispatchQueue.setter(uint64_t a1)
{
  v3[3] = sub_247BA0E68();
  v3[0] = a1;
  return sub_247B9D64C(v3, &type metadata for DispatchQueueCUEnvironmentKey);
}

void (*CUEnvironmentValues.dispatchQueue.modify(id *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_247B9CC08(*v1);
  return sub_247B9EAF4;
}

void sub_247B9EAF4(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v6 = sub_247BA0E68();
    v5[0] = v2;
    v4 = v2;
    sub_247B9D64C(v5, &type metadata for DispatchQueueCUEnvironmentKey);
  }

  else
  {
    v6 = sub_247BA0E68();
    v5[0] = v2;
    sub_247B9D64C(v5, &type metadata for DispatchQueueCUEnvironmentKey);
  }
}

uint64_t sub_247B9EB88@<X0>(_BYTE *a1@<X8>)
{
  result = CUIsGreenTeaDevice();
  *a1 = result;
  return result;
}

uint64_t CUEnvironmentValues.greenTea.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_247BA04BC(&type metadata for GreenTeaCUEnvironmentKey), (v3 & 1) != 0) && (sub_247B9D544(v7, v2, *(v1 + 36), 0, v1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), swift_dynamicCast()))
  {
    v4 = v6;
  }

  else
  {
    v4 = CUIsGreenTeaDevice();
  }

  return v4 & 1;
}

uint64_t sub_247B9EC50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9CEE0(*a1);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9EC80(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for GreenTeaCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.greenTea.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for GreenTeaCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.greenTea.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9CEE0(*v1) & 1;
  return sub_247B9ED58;
}

uint64_t sub_247B9ED70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D120(*a1, &type metadata for NANAllowScreenOffCUEnvironmentKey);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9EDA8(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for NANAllowScreenOffCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.nanAllowScreenOff.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for NANAllowScreenOffCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.nanAllowScreenOff.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D120(*v1, &type metadata for NANAllowScreenOffCUEnvironmentKey) & 1;
  return sub_247B9EE88;
}

uint64_t sub_247B9EEA8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9D1C0(*a1, &type metadata for NANMockIDCUEnvironmentKey);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_OWORD *(*CUEnvironmentValues.nanMockID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_247B9D1C0(*v1, &type metadata for NANMockIDCUEnvironmentKey);
  a1[1] = v3;
  return sub_247B9EF58;
}

uint64_t sub_247B9EF70@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9D1C0(*a1, &type metadata for NANServiceTypeCUEnvironmentKey);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_OWORD *(*CUEnvironmentValues.nanServiceType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_247B9D1C0(*v1, &type metadata for NANServiceTypeCUEnvironmentKey);
  a1[1] = v3;
  return sub_247B9F020;
}

uint64_t sub_247B9F038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D120(*a1, &type metadata for P2PRequiredCUEnvironmentKey);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9F070(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for P2PRequiredCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.p2pRequired.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for P2PRequiredCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.p2pRequired.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D120(*v1, &type metadata for P2PRequiredCUEnvironmentKey) & 1;
  return sub_247B9F150;
}

uint64_t sub_247B9F168@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D120(*a1, &type metadata for PairingAdminACLCUEnvironmentKey);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9F1A0(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for PairingAdminACLCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.pairingAdminACL.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for PairingAdminACLCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.pairingAdminACL.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D120(*v1, &type metadata for PairingAdminACLCUEnvironmentKey) & 1;
  return sub_247B9F280;
}

uint64_t sub_247B9F298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9CF80(*a1, &type metadata for PairingPeerIdentityCUEnvironmentKey);
  *a2 = result;
  return result;
}

void (*CUEnvironmentValues.pairingPeerIdentity.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_247B9CF80(*v1, &type metadata for PairingPeerIdentityCUEnvironmentKey);
  return sub_247B9F338;
}

uint64_t sub_247B9F350(uint64_t a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_247BA04BC(a1), (v4 & 1) != 0) && (sub_247B9D544(v7, v3, *(v2 + 36), 0, v2), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA8, &qword_247BFA2C0), swift_dynamicCast()))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247B9F3F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9CF80(*a1, &type metadata for PairingSelfIdentityCUEnvironmentKey);
  *a2 = result;
  return result;
}

_OWORD *sub_247B9F438(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA8, &qword_247BFA2C0);
  v9[0] = v6;
  v7 = v6;
  return sub_247B9D64C(v9, a5);
}

_OWORD *sub_247B9F4A8(uint64_t a1, uint64_t a2)
{
  v5[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA8, &qword_247BFA2C0);
  v5[0] = a1;
  return sub_247B9D64C(v5, a2);
}

void (*CUEnvironmentValues.pairingSelfIdentity.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_247B9CF80(*v1, &type metadata for PairingSelfIdentityCUEnvironmentKey);
  return sub_247B9F558;
}

void sub_247B9F564(uint64_t a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA8, &qword_247BFA2C0);
    v7[0] = v5;
    v6 = v5;
    sub_247B9D64C(v7, a3);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCA8, &qword_247BFA2C0);
    v7[0] = v5;
    sub_247B9D64C(v7, a3);
  }
}

uint64_t sub_247B9F620@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D120(*a1, &type metadata for PairSetupDisabledCUEnvironmentKey);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9F658(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for PairSetupDisabledCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.pairSetupDisabled.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for PairSetupDisabledCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.pairSetupDisabled.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D120(*v1, &type metadata for PairSetupDisabledCUEnvironmentKey) & 1;
  return sub_247B9F738;
}

void sub_247B9F76C(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, void *a4)
{
  v7 = MobileGestalt_get_current_device();
  if (v7)
  {
    v8 = v7;
    v9 = a2();

    if (v9)
    {
      v10 = sub_247BF6480();
      v12 = v11;

      *a3 = v10;
      *a4 = v12;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_247B9F824@<X0>(void *a1@<X2>, void *a2@<X3>, void *a3@<X4>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v7 = a3;
    v8 = a4;
    v9 = a2;
    swift_once();
    a2 = v9;
    a4 = v8;
    a3 = v7;
  }

  v5 = *a3;
  *a4 = *a2;
  a4[1] = v5;
}

uint64_t CUEnvironmentValues.productType.getter()
{
  v1 = *v0;
  if (*(v1 + 16))
  {
    v2 = sub_247BA04BC(&type metadata for ProductTypeCUEnvironmentKey);
    if (v3)
    {
      sub_247B9D544(v7, v2, *(v1 + 36), 0, v1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      if (swift_dynamicCast())
      {
        return v6;
      }
    }
  }

  if (qword_27EE5EC30 != -1)
  {
    swift_once();
  }

  v4 = qword_27EE5EC38;

  return v4;
}

uint64_t sub_247B9F980@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9D038(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_OWORD *sub_247B9F9B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  v9[3] = MEMORY[0x277D837D0];
  v9[0] = v7;
  v9[1] = v6;

  return sub_247B9D64C(v9, a5);
}

_OWORD *CUEnvironmentValues.productType.setter(uint64_t a1, uint64_t a2)
{
  v3[3] = MEMORY[0x277D837D0];
  v3[0] = a1;
  v3[1] = a2;
  return sub_247B9D64C(v3, &type metadata for ProductTypeCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.productType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_247B9D038(*v1);
  a1[1] = v3;
  return sub_247B9FA90;
}

_OWORD *sub_247B9FA9C(uint64_t *a1, char a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v10 = MEMORY[0x277D837D0];
    v8 = v4;
    v9 = v5;

    sub_247B9D64C(&v8, a3);
  }

  else
  {
    v10 = MEMORY[0x277D837D0];
    v8 = v4;
    v9 = v5;
    return sub_247B9D64C(&v8, a3);
  }
}

uint64_t sub_247B9FB44(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = sub_247BA04BC(a1);
    if ((v5 & 1) != 0 && (sub_247B9D544(v8, v4, *(v2 + 36), 0, v2), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), swift_dynamicCast()))
    {
      LOBYTE(v3) = v7;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  return v3 & 1;
}

uint64_t sub_247B9FBDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D120(*a1, &type metadata for SecurityDisabledCUEnvironmentKey);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247B9FC14(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for SecurityDisabledCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.securityDisabled.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for SecurityDisabledCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.securityDisabled.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D120(*v1, &type metadata for SecurityDisabledCUEnvironmentKey) & 1;
  return sub_247B9FCF4;
}

uint64_t sub_247B9FD0C(uint64_t a1)
{
  v2 = *v1;
  if (*(v2 + 16) && (v3 = sub_247BA04BC(a1), (v4 & 1) != 0) && (sub_247B9D544(v7, v3, *(v2 + 36), 0, v2), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC98, &qword_247BFA2B0), swift_dynamicCast()))
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_247B9FDB8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_247B9D1C0(*a1, &type metadata for UserNotificationSessionMockIDCUEnvironmentKey);
  *a2 = result;
  a2[1] = v4;
  return result;
}

_OWORD *sub_247B9FDF8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  v6 = a1[1];
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC98, &qword_247BFA2B0);
  v9[0] = v7;
  v9[1] = v6;

  return sub_247B9D64C(v9, a5);
}

_OWORD *sub_247B9FE7C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9[0] = a1;
  v9[1] = a2;
  return sub_247B9D64C(v9, a5);
}

_OWORD *(*CUEnvironmentValues.userNotificationSessionMockID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_247B9D1C0(*v1, &type metadata for UserNotificationSessionMockIDCUEnvironmentKey);
  a1[1] = v3;
  return sub_247B9FF28;
}

_OWORD *sub_247B9FF34(uint64_t *a1, char a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC98, &qword_247BFA2B0);
    v8 = v5;
    v9 = v4;

    sub_247B9D64C(&v8, a3);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC98, &qword_247BFA2B0);
    v8 = v5;
    v9 = v4;
    return sub_247B9D64C(&v8, a3);
  }
}

void CUEnvironmentValues.xpcEndpoint.getter(void *a1@<X8>)
{
  v3 = *v1;
  if (*(v3 + 16))
  {
    v4 = sub_247BA04BC(&type metadata for XPCEndpointCUEnvironmentKey);
    if (v5)
    {
      sub_247B9D544(v7, v4, *(v3 + 36), 0, v3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB0, &qword_247BFA2C8);
      if (swift_dynamicCast())
      {
        *a1 = v6;
        return;
      }

      sub_247BA0F04(1);
    }
  }

  *a1 = 0;
}

void sub_247BA00B8(void *a1@<X0>, void *a2@<X8>)
{
  v3[1] = *a1;
  CUEnvironmentValues.xpcEndpoint.getter(v3);
  *a2 = v3[0];
}

_OWORD *sub_247BA00FC(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB0, &qword_247BFA2C8);
  v3[0] = v1;
  swift_unknownObjectRetain();
  return sub_247B9D64C(v3, &type metadata for XPCEndpointCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.xpcEndpoint.setter(uint64_t *a1)
{
  v1 = *a1;
  v3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB0, &qword_247BFA2C8);
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for XPCEndpointCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.xpcEndpoint.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *v1;
  CUEnvironmentValues.xpcEndpoint.getter(a1);
  return sub_247BA020C;
}

_OWORD *sub_247BA020C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB0, &qword_247BFA2C8);
    v5[0] = v2;
    swift_unknownObjectRetain();
    sub_247B9D64C(v5, &type metadata for XPCEndpointCUEnvironmentKey);

    return swift_unknownObjectRelease();
  }

  else
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB0, &qword_247BFA2C8);
    v5[0] = v2;
    return sub_247B9D64C(v5, &type metadata for XPCEndpointCUEnvironmentKey);
  }
}

uint64_t CUEnvironmentValues.xpcRegisterStreamEvents.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = sub_247BA04BC(&type metadata for XPCRegisterStreamEventsCUEnvironmentKey), (v3 & 1) != 0) && (sub_247B9D544(v7, v2, *(v1 + 36), 0, v1), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC88, &unk_247BFA2A0), swift_dynamicCast()))
  {
    v4 = v6;
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

uint64_t sub_247BA0360@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_247B9D280(*a1);
  *a2 = result & 1;
  return result;
}

_OWORD *sub_247BA0390(char *a1)
{
  v1 = *a1;
  v4 = MEMORY[0x277D839B0];
  v3[0] = v1;
  return sub_247B9D64C(v3, &type metadata for XPCRegisterStreamEventsCUEnvironmentKey);
}

_OWORD *CUEnvironmentValues.xpcRegisterStreamEvents.setter(char a1)
{
  v3 = MEMORY[0x277D839B0];
  v2[0] = a1;
  return sub_247B9D64C(v2, &type metadata for XPCRegisterStreamEventsCUEnvironmentKey);
}

_OWORD *(*CUEnvironmentValues.xpcRegisterStreamEvents.modify(uint64_t a1))(uint64_t *a1, uint64_t a2)
{
  *a1 = v1;
  *(a1 + 8) = sub_247B9D280(*v1) & 1;
  return sub_247BA0468;
}

_OWORD *sub_247BA0474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4 = *a1;
  v7 = MEMORY[0x277D839B0];
  v6[0] = v3;
  return sub_247B9D64C(v6, a3);
}

unint64_t sub_247BA04BC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_247BF7450();

  return sub_247BA0500(a1, v4);
}

unint64_t sub_247BA0500(uint64_t a1, uint64_t a2)
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

uint64_t sub_247BA056C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB8, &qword_247BFA7D0);
  result = sub_247BF6ED0();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
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
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_247B9471C(v22, v33);
      }

      else
      {
        sub_247B9B1AC(v22, v33);
      }

      v23 = *(v8 + 40);
      result = sub_247BF7450();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_247B9471C(v33, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_247BA07E4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_247BF6BE0() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = *(a2 + 48);
      v12 = (v11 + 8 * v6);
      v13 = *v12;
      result = sub_247BF7450();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 >= v8 && v3 >= v14)
        {
LABEL_15:
          v17 = (v11 + 8 * v3);
          if (v3 != v6 || v17 >= v12 + 1)
          {
            *v17 = *v12;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 32 * v3);
          v20 = (v18 + 32 * v6);
          if (v3 != v6 || v19 >= v20 + 2)
          {
            v9 = v20[1];
            *v19 = *v20;
            v19[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v14 >= v8 || v3 >= v14)
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

  return result;
}

_OWORD *sub_247BA0954(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_247BA04BC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_247BA0AE8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_247BA056C(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_247BA04BC(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = sub_247BF73C0();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (v20[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);

    return sub_247B9471C(a1, v21);
  }

  else
  {

    return sub_247BA0A80(v9, a2, a1, v20);
  }
}

_OWORD *sub_247BA0A80(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_247B9471C(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void *sub_247BA0AE8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB8, &qword_247BFA7D0);
  v2 = *v0;
  v3 = sub_247BF6EC0();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_247B9B1AC(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = sub_247B9471C(v19, (*(v4 + 56) + 32 * v17));
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

unint64_t sub_247BA0C64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DCB8, &qword_247BFA7D0);
    v3 = sub_247BF6EE0();
    for (i = a1 + 32; ; i += 40)
    {
      sub_247BA1190(i, &v11);
      v5 = v11;
      result = sub_247BA04BC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_247B9471C(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

_OWORD *sub_247BA0D60(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_0, a1, AssociatedTypeWitness);
  return sub_247B9D64C(v7, a2);
}

uint64_t sub_247BA0E00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DC90, &unk_247BFA880);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_247BA0E68()
{
  result = qword_27EE5DD10;
  if (!qword_27EE5DD10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE5DD10);
  }

  return result;
}

uint64_t sub_247BA0EB4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_247BA0F04(uint64_t result)
{
  if (result != 1)
  {
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_247BA0F34(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_247BA0F7C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_247BA1190(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DCC0, &qword_247BFA7D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *CUAsyncSemaphore.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DCD0, &qword_247BFA870);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[3] = v2;
  v0[4] = 0;
  v0[5] = sub_247BC172C(v1);
  return v0;
}

void *CUAsyncSemaphore.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EE5DCD0, &qword_247BFA870);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[3] = v2;
  v0[4] = 0;
  v0[5] = sub_247BC172C(v1);
  return v0;
}

Swift::Void __swiftcall CUAsyncSemaphore.signal()()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_247BC1894();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_247BA1378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v11 - v6;
  v8 = *(a1 + 32);
  v9 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = *(a1 + 16);
    *(a1 + 32) = v9;
    if (*(v10 + 16))
    {
      (*(v3 + 16))(v7, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);
      sub_247BC1BE8(0, 1);
      sub_247BF6760();
      return (*(v3 + 8))(v7, v2);
    }
  }

  return result;
}

uint64_t sub_247BA14C0()
{
  v1 = v0[2];
  v2 = *(v1 + 24);

  os_unfair_lock_lock(v2 + 4);

  v3 = *(v1 + 32);
  v4 = __OFSUB__(v3, 1);
  v5 = v3 - 1;
  if (v4)
  {
    __break(1u);
    return MEMORY[0x2822007B8]();
  }

  *(v1 + 32) = v5;
  if (v5 < 0)
  {
    v9 = *(MEMORY[0x277D859E0] + 4);
    v10 = swift_task_alloc();
    v0[3] = v10;
    *v10 = v0;
    v10[1] = sub_247BA1610;
    v11 = v0[2];

    return MEMORY[0x2822007B8]();
  }

  v6 = *(v1 + 24);

  os_unfair_lock_unlock(v6 + 4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_247BA1610()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_247BA170C, 0, 0);
}

uint64_t sub_247BA1720(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DF48, &qword_247BFBB28);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v15 - v7;
  (*(v5 + 16))(&v15 - v7, a1, v4);
  v9 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_247BBDF88(0, v9[2] + 1, 1, v9);
    *(a2 + 16) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_247BBDF88(v11 > 1, v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 16) = v9;
  v13 = *(a2 + 24);

  os_unfair_lock_unlock(v13 + 4);
}

uint64_t CUAsyncSemaphore.subscript.getter()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_247BC1894();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_247BA1940(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2 + a3;
  v4 = *(a2 + a3 - 16);
  v5 = *(v3 - 8);
  v6 = *a1;
  return CUAsyncSemaphore.subscript.getter();
}

uint64_t sub_247BA1974(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  sub_247BC5B0C(a1, v9, &qword_27EE5DC90, &unk_247BFA880);
  v7 = *a2;
  return sub_247BC2378(v9);
}

uint64_t CUAsyncSemaphore.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_247BC2378(a1);
  v5 = *(*(a3 - 8) + 8);

  return v5(a2, a3);
}

uint64_t sub_247BA1A4C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_247B9471C(a1, v8);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v2;
    sub_247BBF3C8(v8, a2, isUniquelyReferenced_nonNull_native);
    result = sub_247BC5A5C(a2);
    *v2 = v7;
  }

  else
  {
    sub_247B9CAD0(a1, &qword_27EE5DC90, &unk_247BFA880);
    sub_247BBEBE8(a2, v8);
    sub_247BC5A5C(a2);
    return sub_247B9CAD0(v8, &qword_27EE5DC90, &unk_247BFA880);
  }

  return result;
}

void (*CUAsyncSemaphore.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v8 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x68uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[9] = a4;
  v9[10] = v4;
  v9[8] = a3;
  v11 = *(a3 - 8);
  v12 = v11;
  v9[11] = v11;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v10[12] = v13;
  (*(v12 + 16))();
  CUAsyncSemaphore.subscript.getter();
  return sub_247BA1C24;
}

void sub_247BA1C24(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v4 = v2[11];
    v3 = v2[12];
    v6 = v2[9];
    v5 = v2[10];
    v7 = v2[8];
    sub_247BC5B0C(*a1, (v2 + 4), &qword_27EE5DC90, &unk_247BFA880);
    sub_247BC2378((v2 + 4));
    (*(v4 + 8))(v3, v7);
    sub_247B9CAD0(v2, &qword_27EE5DC90, &unk_247BFA880);
  }

  else
  {
    v8 = v2[11];
    v3 = v2[12];
    v9 = v2[9];
    v10 = v2[10];
    v11 = v2[8];
    sub_247BC2378(*a1);
    (*(v8 + 8))(v3, v11);
  }

  free(v3);

  free(v2);
}

void *CUAsyncSemaphore.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return v0;
}

uint64_t CUAsyncSemaphore.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t CUDarwinNotification.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = -1;
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = sub_247BF64B0();
  swift_beginAccess();
  notify_register_check((v5 + 32), (v4 + 48));
  swift_endAccess();

  return v4;
}

uint64_t CUDarwinNotification.init(name:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v2 + 48) = -1;
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  v3 = sub_247BF64B0();
  swift_beginAccess();
  notify_register_check((v3 + 32), (v2 + 48));
  swift_endAccess();

  return v2;
}

uint64_t CUDarwinNotification.__allocating_init(name:dispatchQueue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  swift_allocObject();
  v10 = sub_247BC2414(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t CUDarwinNotification.init(name:dispatchQueue:handler:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_247BC2414(a1, a2, a3, a4, a5);

  return v6;
}

uint64_t sub_247BA1F78(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t CUDarwinNotification.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 48) = -1;
  }

  v2 = *(v0 + 24);
  sub_247B94734(*(v0 + 16));
  v3 = *(v0 + 40);

  return v0;
}

Swift::Void __swiftcall CUDarwinNotification.cancel()()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 48) = -1;
  }
}

uint64_t CUDarwinNotification.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1 != -1)
  {
    notify_cancel(v1);
    *(v0 + 48) = -1;
  }

  v2 = *(v0 + 24);
  sub_247B94734(*(v0 + 16));
  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall CUDarwinNotification.post()()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_247BF64B0();
  notify_post((v3 + 32));
}

uint64_t static CUDarwinNotification.post(name:)()
{
  v0 = sub_247BF64B0();
  notify_post((v0 + 32));
}

uint64_t CUDarwinNotification.state.getter()
{
  state64[4] = *MEMORY[0x277D85DE8];
  state64[0] = 0;
  swift_beginAccess();
  notify_get_state(*(v0 + 48), state64);
  result = state64[0];
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247BA21CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  state64[4] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  state64[0] = 0;
  swift_beginAccess();
  result = notify_get_state(*(v3 + 48), state64);
  *a2 = state64[0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_247BA2250(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  notify_set_state(*(v3 + 48), v2);
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  v6 = sub_247BF64B0();
  notify_post((v6 + 32));
}

uint64_t CUDarwinNotification.state.setter(uint64_t a1)
{
  swift_beginAccess();
  notify_set_state(*(v1 + 48), a1);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = sub_247BF64B0();
  notify_post((v5 + 32));
}

void (*CUDarwinNotification.state.modify(uint64_t *a1))(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 32) = 0;
  v5 = (v3 + 32);
  swift_beginAccess();
  notify_get_state(*(v1 + 48), v5);
  *(v4 + 24) = *v5;
  v6 = *MEMORY[0x277D85DE8];
  return sub_247BA23F0;
}

void sub_247BA23F0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  notify_set_state(*(v2 + 48), *(*a1 + 24));
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  v5 = sub_247BF64B0();
  notify_post((v5 + 32));

  free(v1);
}

uint64_t CUFeatures.isEnabled.getter()
{
  v2[3] = &type metadata for CUFeatures;
  v2[4] = sub_247BC2580();
  v0 = sub_247BF6060();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  return v0 & 1;
}

uint64_t CUFeatures.hashValue.getter()
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](0);
  return sub_247BF74A0();
}

uint64_t sub_247BA2544()
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](0);
  return sub_247BF74A0();
}

uint64_t sub_247BA25B0()
{
  sub_247BF7460();
  MEMORY[0x24C1B4F40](0);
  return sub_247BF74A0();
}

uint64_t sub_247BA2618()
{
  sub_247BF5F30();
  type metadata accessor for CUIteratorTask();
  sub_247BC2A28(&unk_27EE5DCF0, MEMORY[0x277CC95F0]);

  return sub_247BF62B0();
}

uint64_t CUIteratorTaskManager.__allocating_init(logger:)(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  CUIteratorTaskManager.init(logger:)(a1);
  return v5;
}

uint64_t CUIteratorTaskManager.init(logger:)(uint64_t a1)
{
  v3 = qword_27EE5EC50;
  v4 = v1 + qword_27EE5EC50;
  v5 = *(*v1 + 80);
  v10 = sub_247BA2618();
  *(v1 + v3) = 0;
  *(v4 + 8) = 0;
  v6 = type metadata accessor for CUIteratorTaskManager.State();
  (*(*(v6 - 8) + 32))(v4 + 8, &v10, v6);
  v7 = qword_27EE5EC58;
  v8 = sub_247BF60B0();
  (*(*(v8 - 8) + 32))(v1 + v7, a1, v8);
  return v1;
}

char *CUIteratorTaskManager.deinit()
{
  v1 = *v0;
  CUIteratorTaskManager.cancelAll()();
  v2 = qword_27EE5EC58;
  v3 = sub_247BF60B0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(v1 + 80);
  type metadata accessor for CUIteratorTaskManager.State();
  v5 = *(sub_247BF6080() + 16);
  sub_247BF6AB0();
  return v0;
}

Swift::Void __swiftcall CUIteratorTaskManager.cancelAll()()
{
  v1 = *v0;
  v2 = v0 + qword_27EE5EC50;
  os_unfair_lock_lock((v0 + qword_27EE5EC50));
  v3 = *(v1 + 80);
  sub_247BF5F30();
  type metadata accessor for CUIteratorTask();
  sub_247BC2A28(&unk_27EE5DCF0, MEMORY[0x277CC95F0]);
  sub_247BF6330();
  v4 = *(v2 + 1);

  sub_247BF6320();
  os_unfair_lock_unlock(v2);
  swift_getWitnessTable();
  sub_247BF6650();
}

uint64_t _s14CoreUtilsSwift21CUIteratorTaskManagerC05startE011environment5label4name9operationScsyxs5Error_pGAA19CUEnvironmentValuesV_S2SyAA0dE0CyxGYaKYAcntF@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v9 = v8;
  v16 = *a1;
  v17 = *(*v8 + 80);
  v18 = type metadata accessor for CUIteratorTask();
  v27 = v16;
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v21 = swift_allocObject();

  _s14CoreUtilsSwift14CUIteratorTaskC7manager11environment5label4name9operationACyxGAA0dE7ManagerCyxG_AA19CUEnvironmentValuesVS2SyAIYaKYAcntcfc(v9, &v27, a2, a3, a4, a5, a6, a7);
  v22 = (v9 + qword_27EE5EC50);
  os_unfair_lock_lock((v9 + qword_27EE5EC50));
  sub_247BA2C3C(&v22[2], v21);
  os_unfair_lock_unlock(v22);

  v23 = *(*v21 + 136);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v24 = sub_247BF68C0();
  (*(*(v24 - 8) + 16))(a8, &v21[v23], v24);
}

uint64_t _s14CoreUtilsSwift14CUIteratorTaskC7manager11environment5label4name9operationACyxGAA0dE7ManagerCyxG_AA19CUEnvironmentValuesVS2SyAIYaKYAcntcfC(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, char *, uint64_t), unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(v8 + 48);
  v18 = *(v8 + 52);
  v19 = swift_allocObject();
  _s14CoreUtilsSwift14CUIteratorTaskC7manager11environment5label4name9operationACyxGAA0dE7ManagerCyxG_AA19CUEnvironmentValuesVS2SyAIYaKYAcntcfc(a1, a2, a3, a4, a5, a6, a7, a8);
  return v19;
}

uint64_t sub_247BA2C3C(uint64_t a1, char *a2)
{
  v3 = *a2;
  v4 = sub_247BF5F30();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  (*(v7 + 16))(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), &a2[*(v3 + 96)], v4);
  v9[1] = a2;
  sub_247BC2A28(&unk_27EE5DCF0, MEMORY[0x277CC95F0]);
  sub_247BF6330();

  return sub_247BF6350();
}

uint64_t Dictionary.cuRemoveAll(keepingCapacity:)()
{
  v1 = *v0;

  sub_247BF6320();
  return v1;
}

uint64_t sub_247BA2DFC(uint64_t a1)
{
  v1 = *(*a1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v2 = sub_247BF6870();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v8 - v5);
  type metadata accessor for CUError();
  *v6 = CUError.__allocating_init(_:_:_:)(-6723, 0xD000000000000015, 0x8000000247C014A0, 0);
  (*(v3 + 104))(v6, *MEMORY[0x277D85868], v2);
  sub_247BA2F5C(v6);
  return (*(v3 + 8))(v6, v2);
}

void sub_247BA2F5C(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = sub_247BF60B0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  v16 = *(v4 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v17 = sub_247BF6870();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = (&v62 - v20);
  (*(v18 + 16))(&v62 - v20, a1, v17);
  v22 = (*(v18 + 88))(v21, v17);
  if (v22 == *MEMORY[0x277D85868])
  {
    (*(v18 + 96))(v21, v17);
    v23 = *v21;
    if (*v21)
    {
      v24 = *(*v2 + 120);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        (*(v6 + 16))(v15, Strong + qword_27EE5EC58, v5);
        v26 = v23;

        v27 = v23;

        v28 = sub_247BF6090();
        v29 = sub_247BF6A00();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v65 = v64;
          *v30 = 136446978;
          *(v30 + 4) = sub_247BBE628(*(v2 + *(*v2 + 112)), *(v2 + *(*v2 + 112) + 8), &v65);
          *(v30 + 12) = 2082;
          *(v30 + 14) = sub_247BBE628(*(v2 + *(*v2 + 128)), *(v2 + *(*v2 + 128) + 8), &v65);
          *(v30 + 22) = 2080;
          v31 = *(*v2 + 96);
          sub_247BF5F30();
          sub_247BC2A28(&qword_27EE5DD18, MEMORY[0x277CC95F0]);
          v32 = sub_247BF6FD0();
          v34 = v33;

          v35 = sub_247BBE628(v32, v34, &v65);

          *(v30 + 24) = v35;
          *(v30 + 32) = 2112;
          v36 = v23;
          v37 = _swift_stdlib_bridgeErrorToNSError();
          *(v30 + 34) = v37;
          v38 = v63;
          *v63 = v37;
          _os_log_impl(&dword_247B92000, v28, v29, "[%{public}s] %{public}s failed: id=%s, error=%@", v30, 0x2Au);
          sub_247B9CAD0(v38, &qword_27EE5DF38, &qword_247BFBB18);
          MEMORY[0x24C1B5910](v38, -1, -1);
          v39 = v64;
          swift_arrayDestroy();
          MEMORY[0x24C1B5910](v39, -1, -1);
          MEMORY[0x24C1B5910](v30, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v15, v5);
      }

      else
      {
      }
    }

    else
    {
      v51 = *(*v2 + 120);
      v52 = swift_weakLoadStrong();
      if (v52)
      {
        (*(v6 + 16))(v13, v52 + qword_27EE5EC58, v5);

        v53 = sub_247BF6090();
        v54 = sub_247BF6A00();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          v65 = v56;
          *v55 = 136446722;
          *(v55 + 4) = sub_247BBE628(*(v2 + *(*v2 + 112)), *(v2 + *(*v2 + 112) + 8), &v65);
          *(v55 + 12) = 2082;
          *(v55 + 14) = sub_247BBE628(*(v2 + *(*v2 + 128)), *(v2 + *(*v2 + 128) + 8), &v65);
          *(v55 + 22) = 2080;
          v57 = *(*v2 + 96);
          sub_247BF5F30();
          sub_247BC2A28(&qword_27EE5DD18, MEMORY[0x277CC95F0]);
          v58 = sub_247BF6FD0();
          v60 = v59;

          v61 = sub_247BBE628(v58, v60, &v65);

          *(v55 + 24) = v61;
          _os_log_impl(&dword_247B92000, v53, v54, "[%{public}s] %{public}s finished: id=%s", v55, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x24C1B5910](v56, -1, -1);
          MEMORY[0x24C1B5910](v55, -1, -1);
        }

        else
        {
        }

        (*(v6 + 8))(v13, v5);
      }
    }
  }

  else
  {
    if (v22 != *MEMORY[0x277D85870])
    {
      (*(v18 + 8))(v21, v17);
    }

    v40 = *(*v2 + 120);
    v41 = swift_weakLoadStrong();
    if (v41)
    {
      (*(v6 + 16))(v10, v41 + qword_27EE5EC58, v5);

      v42 = sub_247BF6090();
      v43 = sub_247BF6A00();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v65 = v45;
        *v44 = 136446722;
        *(v44 + 4) = sub_247BBE628(*(v2 + *(*v2 + 112)), *(v2 + *(*v2 + 112) + 8), &v65);
        *(v44 + 12) = 2082;
        *(v44 + 14) = sub_247BBE628(*(v2 + *(*v2 + 128)), *(v2 + *(*v2 + 128) + 8), &v65);
        *(v44 + 22) = 2080;
        v46 = *(*v2 + 96);
        sub_247BF5F30();
        sub_247BC2A28(&qword_27EE5DD18, MEMORY[0x277CC95F0]);
        v47 = sub_247BF6FD0();
        v49 = v48;

        v50 = sub_247BBE628(v47, v49, &v65);

        *(v44 + 24) = v50;
        _os_log_impl(&dword_247B92000, v42, v43, "[%{public}s] %{public}s cancel: id=%s", v44, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x24C1B5910](v45, -1, -1);
        MEMORY[0x24C1B5910](v44, -1, -1);
      }

      else
      {
      }

      (*(v6 + 8))(v10, v5);
    }
  }

  if (*(v2 + *(*v2 + 144)))
  {

    sub_247BF67F0();
  }
}

uint64_t sub_247BA3904(uint64_t a1, uint64_t (*a2)(uint64_t, void))
{
  sub_247BF5F30();
  type metadata accessor for CUIteratorTask();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, *(a1 + *(TupleTypeMetadata2 + 48)));
}

void sub_247BA3994(uint64_t a1)
{
  v3 = *v1;
  v4 = (v1 + qword_27EE5EC50);
  os_unfair_lock_lock((v1 + qword_27EE5EC50));
  v5 = *(v3 + 80);
  sub_247BA3A08(&v4[2], a1);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_247BA3A08(uint64_t a1, uint64_t a2)
{
  v3 = sub_247BF5F30();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v3);
  v8[1] = 0;
  type metadata accessor for CUIteratorTask();
  sub_247BC2A28(&unk_27EE5DCF0, MEMORY[0x277CC95F0]);
  sub_247BF6330();
  return sub_247BF6350();
}

uint64_t CUIteratorTask.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v5 = sub_247BF68B0();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t CUIteratorTask.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = sub_247BF5F30();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *_s14CoreUtilsSwift14CUIteratorTaskC7manager11environment5label4name9operationACyxGAA0dE7ManagerCyxG_AA19CUEnvironmentValuesVS2SyAIYaKYAcntcfc(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t, char *, uint64_t), unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v100 = a8;
  v91 = a7;
  v88 = a6;
  v87 = a5;
  v86 = a4;
  v93 = a3;
  v104 = a1;
  v11 = *v8;
  v97 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD00, &qword_247BFA890);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v92 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v101 = &v86 - v16;
  v17 = sub_247BF5F30();
  v102 = *(v17 - 8);
  v103 = v17;
  v18 = v102[8];
  v19 = MEMORY[0x28223BE20](v17);
  v99 = &v86 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v94 = &v86 - v22;
  v98 = v23;
  MEMORY[0x28223BE20](v21);
  v105 = &v86 - v24;
  v25 = *(v11 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v95 = sub_247BF6890();
  v90 = *(v95 - 8);
  v26 = *(v90 + 64);
  MEMORY[0x28223BE20](v95);
  v28 = &v86 - v27;
  v96 = sub_247BF68B0();
  v29 = *(v96 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v96);
  v32 = &v86 - v31;
  v33 = sub_247BF68C0();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  v37 = &v86 - v36;
  v38 = *a2;
  v89 = *(v97 + 120);
  swift_weakInit();
  *&v9[*(*v9 + 144)] = 0;
  sub_247BA476C(v28);

  v97 = v25;
  sub_247BF6860();
  (*(v90 + 8))(v28, v95);
  v39 = v103;
  v40 = v37;
  v41 = v86;
  (*(v34 + 32))(&v9[*(*v9 + 136)], v40, v33);
  v42 = v87;
  (*(v29 + 32))(&v9[*(*v9 + 88)], v32, v96);
  *&v9[*(*v9 + 104)] = v38;
  v90 = v38;
  v43 = v88;

  v44 = v105;
  sub_247BF5F20();
  v45 = v102 + 2;
  v46 = v102[2];
  v46(&v9[*(*v9 + 96)], v44, v39);
  v47 = &v9[*(*v9 + 112)];
  *v47 = v93;
  *(v47 + 1) = v41;
  swift_weakAssign();
  v48 = &v9[*(*v9 + 128)];
  *v48 = v42;
  v48[1] = v43;
  v95 = v45;
  v89 = v46;
  v46(v94, v44, v39);

  v49 = sub_247BF6090();
  v50 = sub_247BF6A00();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v110[0] = v52;
    *v51 = 136446722;
    v53 = sub_247BBE628(v93, v41, v110);

    *(v51 + 4) = v53;
    *(v51 + 12) = 2082;
    v54 = sub_247BBE628(v42, v43, v110);

    *(v51 + 14) = v54;
    *(v51 + 22) = 2080;
    sub_247BC2A28(&qword_27EE5DD18, MEMORY[0x277CC95F0]);
    v55 = v94;
    v56 = v103;
    v57 = sub_247BF6FD0();
    v59 = v58;
    v60 = v102;
    v94 = v102[1];
    (v94)(v55, v56);
    v61 = sub_247BBE628(v57, v59, v110);

    *(v51 + 24) = v61;
    _os_log_impl(&dword_247B92000, v49, v50, "[%{public}s] %{public}s start: id=%s", v51, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x24C1B5910](v52, -1, -1);
    MEMORY[0x24C1B5910](v51, -1, -1);

    v62 = v60;
  }

  else
  {

    v62 = v102;
    v56 = v103;
    v63 = v94;
    v94 = v102[1];
    (v94)(v63, v103);
  }

  v64 = *(*v9 + 88);
  v65 = swift_allocObject();
  swift_weakInit();
  v66 = v99;
  v67 = v89;
  v89(v99, v105, v56);
  v68 = *(v62 + 80);
  v69 = swift_allocObject();
  *(v69 + 16) = v97;
  *(v69 + 24) = v65;
  v93 = v62[4];
  v70 = v56;
  v93(v69 + ((v68 + 32) & ~v68), v66, v56);
  sub_247BF6880();
  v110[0] = v90;
  v96 = CUEnvironmentValues.dispatchQueue.getter();

  v71 = sub_247BF67E0();
  v72 = *(v71 - 8);
  (*(v72 + 56))(v101, 1, 1, v71);
  v73 = swift_allocObject();
  swift_weakInit();

  v74 = v99;
  v67(v99, v105, v70);
  v75 = swift_allocObject();
  v76 = v91;
  v75[2] = v97;
  v75[3] = v76;
  v75[4] = v100;
  v75[5] = v9;
  v75[6] = v73;
  v93(v75 + ((v68 + 56) & ~v68), v74, v70);
  v77 = v92;
  sub_247BC5B0C(v101, v92, &qword_27EE5DD00, &qword_247BFA890);
  LODWORD(v73) = (*(v72 + 48))(v77, 1, v71);

  if (v73 == 1)
  {
    sub_247B9CAD0(v77, &qword_27EE5DD00, &qword_247BFA890);
  }

  else
  {
    sub_247BF67D0();
    (*(v72 + 8))(v77, v71);
  }

  v78 = sub_247BC2908();
  v79 = swift_allocObject();
  *(v79 + 16) = &unk_247BFA8A0;
  *(v79 + 24) = v75;
  v106 = 6;
  v107 = 0;
  v80 = v96;
  v108 = v96;
  v109 = v78;

  v81 = v80;
  v82 = swift_task_create();
  sub_247B9CAD0(v101, &qword_27EE5DD00, &qword_247BFA890);

  (v94)(v105, v103);
  v83 = *(*v9 + 144);
  v84 = *&v9[v83];
  *&v9[v83] = v82;

  return v9;
}

uint64_t sub_247BA476C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D858A0];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v3 = sub_247BF6890();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_247BA4810(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v6[15] = *a4;
  return MEMORY[0x2822009F8](sub_247BA4860, 0, 0);
}

uint64_t sub_247BA4860()
{
  sub_247BF6820();
  v6 = (v0[10] + *v0[10]);
  v1 = *(v0[10] + 4);
  v2 = swift_task_alloc();
  v0[16] = v2;
  *v2 = v0;
  v2[1] = sub_247BA4A50;
  v4 = v0[11];
  v3 = v0[12];

  return v6(v3);
}

uint64_t sub_247BA4A50()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_247BA4C60;
  }

  else
  {
    v3 = sub_247BA4B64;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_247BA4B64()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_247BA3994(*(v0 + 112));
  }

  v2 = *(v0 + 120);
  v3 = *(**(v0 + 96) + 88);
  *(v0 + 72) = 0;
  v4 = *(v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF68B0();
  sub_247BF68A0();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_247BA4C60()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_247BA3994(*(v0 + 112));
  }

  v3 = *(v0 + 120);
  v4 = *(**(v0 + 96) + 88);
  *(v0 + 64) = v1;
  v5 = v1;
  v6 = *(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  sub_247BF68B0();
  sub_247BF68A0();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t CUIteratorTask.deinit()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EE5DC08, &qword_247BF9F90);
  v3 = sub_247BF68B0();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(*v0 + 96);
  v5 = sub_247BF5F30();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + *(*v0 + 104));

  v7 = *(v0 + *(*v0 + 112) + 8);

  v8 = *(*v0 + 120);
  swift_weakDestroy();
  v9 = *(v0 + *(*v0 + 128) + 8);

  v10 = *(*v0 + 136);
  v11 = sub_247BF68C0();
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(v0 + *(*v0 + 144));

  return v0;
}

uint64_t sub_247BA4F88(void (*a1)(void))
{
  a1();
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

uint64_t CUJSONStringConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v3 = sub_247BF5CF0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = sub_247BF5D40();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_247BF5D30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD20, &qword_247BFA8B8);
  v9 = *(v4 + 72);
  v10 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_247BFA830;
  sub_247BF5CD0();
  sub_247BF5CE0();
  v26[0] = v11;
  sub_247BC2A28(&qword_27EE5DD28, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD30, &qword_247BFA8C0);
  sub_247BC34F4(&qword_27EE5DD38, &qword_27EE5DD30, &qword_247BFA8C0);
  sub_247BF6BD0();
  sub_247BF5D00();
  v12 = *(a2 + 16);
  v13 = sub_247BF5D10();
  v15 = v14;
  sub_247BC2A70(v13, v14);
  v16 = sub_247BC1428(v13, v15);
  if (v17)
  {
    v18 = v16;
    sub_247BC2AC4(v13, v15);
  }

  else
  {
    v24 = v13;
    v25 = v15;
    sub_247BC2A70(v13, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD40, &qword_247BFA8C8);
    if (swift_dynamicCast())
    {
      sub_247B93B4C(v22, v26);
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v19 = sub_247BF6F00();
      sub_247BC2AC4(v13, v15);
      if (v19)
      {
        __swift_project_boxed_opaque_existential_1(v26, v27);
        sub_247BF6EF0();

        sub_247BC2AC4(v13, v15);
        v20 = *&v22[0];
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        return v20;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v26);
    }

    else
    {
      sub_247BC2AC4(v13, v15);
      v23 = 0;
      memset(v22, 0, sizeof(v22));
      sub_247B9CAD0(v22, &qword_27EE5DD48, &qword_247BFA8D0);
    }

    v18 = sub_247BBF8CC(v13, v15);
  }

  sub_247BC2AC4(v13, v15);
  return v18;
}

uint64_t CUJSONValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74C0();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD50, &qword_247BFA8D8);
    sub_247BC2BBC(&qword_27EE5DD58, sub_247BC2B18);
    sub_247BF71D0();
    v6 = v8[6];
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    *a2 = v6;
    *(a2 + 8) = 0;
    *(a2 + 16) = 2;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t CUJSONValue.encode(to:)(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_247BF74F0();
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 == 1)
      {
        __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
        sub_247BF7220();
        return __swift_destroy_boxed_opaque_existential_1Tm(v7);
      }

      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD50, &qword_247BFA8D8);
      sub_247BC2BBC(&qword_27EE5DD78, sub_247BC2C40);
    }

    else
    {
      __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE5DD68, &qword_247BFA8E0);
      sub_247BC2C94(&qword_27EE5DD88, sub_247BC2C40);
    }

    sub_247BF7240();
    return __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  if (v4 > 4)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (v4 == 5)
    {
      sub_247BF7210();
    }

    else
    {
      sub_247BF7270();
    }
  }

  else
  {
    __swift_mutable_project_boxed_opaque_existential_1(v7, v8);
    if (v4 == 3)
    {
      sub_247BF7230();
    }

    else
    {
      sub_247BF7250();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v7);
}

uint64_t sub_247BA5A28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 48);
  for (i = (a1 + 48); ; i += 24)
  {
    v8 = *(i - 2);
    v9 = *(i - 1);
    v10 = *i;
    v11 = *(v3 - 2);
    v12 = *(v3 - 1);
    v13 = *v3;
    if (v10 <= 2)
    {
      if (*i)
      {
        if (v10 == 1)
        {
          if (v13 != 1)
          {
            goto LABEL_42;
          }

          sub_247BC2D30(*(i - 2), *(i - 1), 1);
          sub_247BC2D30(v11, v12, 1);
          if ((v11 ^ v8))
          {
            return 0;
          }
        }

        else
        {
          if (v13 != 2)
          {
LABEL_39:
            v23 = *(i - 2);
            goto LABEL_41;
          }

          sub_247BC2D0C(*(v3 - 2), *(v3 - 1), 2);
          sub_247BC2D0C(v8, v9, 2);
          sub_247BC2D0C(v11, v12, 2);
          sub_247BC2D0C(v8, v9, 2);
          v21 = sub_247BA5E2C(v8, v11);
          sub_247BC2D30(v8, v9, 2);
          sub_247BC2D30(v11, v12, 2);
          sub_247BC2D30(v11, v12, 2);
          sub_247BC2D30(v8, v9, 2);
          if ((v21 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else
      {
        if (*v3)
        {
          goto LABEL_39;
        }

        sub_247BC2D0C(*(v3 - 2), *(v3 - 1), 0);
        sub_247BC2D0C(v8, v9, 0);
        sub_247BC2D0C(v11, v12, 0);
        sub_247BC2D0C(v8, v9, 0);
        v20 = sub_247BA5A28(v8, v11);
        sub_247BC2D30(v8, v9, 0);
        sub_247BC2D30(v11, v12, 0);
        sub_247BC2D30(v11, v12, 0);
        sub_247BC2D30(v8, v9, 0);
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }

      goto LABEL_7;
    }

    if (*i <= 4u)
    {
      if (v10 == 3)
      {
        if (v13 != 3)
        {
          goto LABEL_42;
        }

        v14 = *(v3 - 2);
        sub_247BC2D30(*(i - 2), *(i - 1), 3);
        sub_247BC2D30(v11, v12, 3);
        if (*&v8 != *&v11)
        {
          return 0;
        }
      }

      else
      {
        if (v13 != 4)
        {
          goto LABEL_42;
        }

        sub_247BC2D30(*(i - 2), *(i - 1), 4);
        sub_247BC2D30(v11, v12, 4);
        if (v8 != v11)
        {
          return 0;
        }
      }

      goto LABEL_7;
    }

    if (v10 != 5)
    {
      if (v13 != 6 || v12 | v11)
      {
        goto LABEL_42;
      }

      sub_247BC2D30(*(i - 2), *(i - 1), 6);
      v5 = 0;
      v6 = 0;
      v7 = 6;
      goto LABEL_6;
    }

    if (v13 != 5)
    {
      break;
    }

    if (v8 == v11 && v9 == v12)
    {
      sub_247BC2D0C(*(i - 2), *(i - 1), 5);
      sub_247BC2D0C(v8, v9, 5);
      sub_247BC2D30(v8, v9, 5);
      v5 = v8;
      v6 = v9;
      v7 = 5;
LABEL_6:
      sub_247BC2D30(v5, v6, v7);
      goto LABEL_7;
    }

    v15 = *(i - 2);
    v16 = *(i - 1);
    v17 = *(v3 - 2);
    v18 = *(v3 - 1);
    v19 = sub_247BF7180();
    sub_247BC2D0C(v11, v12, 5);
    sub_247BC2D0C(v8, v9, 5);
    sub_247BC2D30(v8, v9, 5);
    sub_247BC2D30(v11, v12, 5);
    if ((v19 & 1) == 0)
    {
      return 0;
    }

LABEL_7:
    v3 += 3;
    if (!--v2)
    {
      return 1;
    }
  }

  v24 = *(i - 1);
LABEL_41:
  sub_247BC2D0C(*(i - 2), *(i - 1), *i);

LABEL_42:
  sub_247BC2D0C(v11, v12, v13);
  sub_247BC2D30(v8, v9, v10);
  sub_247BC2D30(v11, v12, v13);
  sub_247BC2D30(v8, v9, v10);
  return 0;
}

uint64_t sub_247BA5E2C(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v396 = a1;
  v397 = a2;
  v7 = 0;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (*&v11 == 0.0)
      {
        v14 = v7;
        do
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
LABEL_343:
            v253 = a2;
            v255 = v11;
            sub_247BC2D0C(v4, v11, v6);
            v256 = *&v3;
            v257 = v253;
            v258 = 3;
LABEL_349:
            sub_247BC2D30(v256, v257, v258);
            sub_247BC2D30(v4, v255, v6);
            goto LABEL_408;
          }

          if (v7 >= v12)
          {
            return 1;
          }

          v15 = *(v8 + 8 * v7);
          ++v14;
        }

        while (!v15);
        v13 = __clz(__rbit64(v15));
        v398 = (v15 - 1) & v15;
      }

      else
      {
        v13 = __clz(__rbit64(v11));
        v398 = (v11 - 1) & v11;
      }

      v16 = v13 | (v7 << 6);
      v17 = *(a1 + 48) + 16 * v16;
      v18 = *v17;
      v4 = *(v17 + 8);
      v19 = *(a1 + 56) + 24 * v16;
      v20 = *v19;
      v6 = *(v19 + 8);
      *&v3 = *(v19 + 16);

      sub_247BC2D0C(v20, v6, SLOBYTE(v3));
      v21 = v4 == 0;
      if (*&v4 == 0.0)
      {
        return v21;
      }

      v401 = v20;
      v22 = sub_247B9B134(v18, v4);
      v24 = v23;

      if ((v24 & 1) == 0)
      {
        v243 = v401;
        goto LABEL_340;
      }

      v25 = *(v397 + 56) + 24 * v22;
      v2 = *v25;
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      if (v27 <= 2)
      {
        break;
      }

      v5 = v401;
      if (v27 > 4)
      {
        if (v27 == 5)
        {
          if (LODWORD(v3) != 5)
          {
            v247 = v26;

            v245 = v2;
            v26 = v247;
            v246 = 5;
            goto LABEL_338;
          }

          if (v2 == v401 && v26 == v6)
          {

            sub_247BC2D30(v401, v6, 5);
            v37 = v401;
            v38 = v6;
            v39 = 5;
            goto LABEL_55;
          }

          v3 = *&v26;
          *&v4 = COERCE_DOUBLE(sub_247BF7180());

          sub_247BC2D30(v2, *&v3, 5);
          v30 = v401;
          v31 = v6;
          v32 = 5;
LABEL_39:
          sub_247BC2D30(v30, v31, v32);
          a1 = v396;
          v11 = v398;
          if ((v4 & 1) == 0)
          {
            return v21;
          }
        }

        else
        {
          sub_247BC2D30(v2, v26, 6);
          if (LODWORD(v3) != 6 || (v6 | v401) != 0)
          {
            goto LABEL_339;
          }

          v37 = 0;
          v38 = 0;
          v39 = 6;
LABEL_55:
          sub_247BC2D30(v37, v38, v39);
          a1 = v396;
          v11 = v398;
        }
      }

      else
      {
        if (v27 == 3)
        {
          if (LODWORD(v3) == 3)
          {
            sub_247BC2D30(v2, v26, 3);
            sub_247BC2D30(v401, v6, 3);
            v28 = *&v2 == *&v401;
            goto LABEL_43;
          }

          v245 = v2;
          v246 = 3;
          goto LABEL_338;
        }

        sub_247BC2D30(v2, v26, 4);
        if (LODWORD(v3) != 4)
        {
          goto LABEL_339;
        }

        sub_247BC2D30(v401, v6, 4);
        v28 = v2 == v401;
LABEL_43:
        a1 = v396;
        v11 = v398;
        if (!v28)
        {
          return v21;
        }
      }
    }

    v5 = v401;
    if (!v27)
    {
      break;
    }

    if (v27 != 1)
    {
      if (LODWORD(v3) == 2)
      {
        v3 = *&v26;
        sub_247BC2D0C(v2, v26, 2);
        sub_247BC2D0C(v2, *&v3, 2);
        sub_247BC2D0C(v401, v6, 2);
        *&v4 = COERCE_DOUBLE(sub_247BA5E2C(v2, v401));
        sub_247BC2D30(v401, v6, 2);
        sub_247BC2D30(v2, *&v3, 2);
        sub_247BC2D30(v2, *&v3, 2);
        v30 = v401;
        v31 = v6;
        v32 = 2;
        goto LABEL_39;
      }

      v244 = v26;

      v26 = v244;
      v246 = 2;
LABEL_338:
      sub_247BC2D30(v245, v26, v246);
LABEL_339:
      v243 = v5;
LABEL_340:
      v249 = v6;
      v250 = LOBYTE(v3);
      goto LABEL_410;
    }

    sub_247BC2D30(v2, v26, 1);
    if (LODWORD(v3) != 1)
    {
      goto LABEL_339;
    }

    sub_247BC2D30(v401, v6, 1);
    a1 = v396;
    v11 = v398;
    if ((v2 ^ v401))
    {
      return v21;
    }
  }

  if (LODWORD(v3))
  {
    v248 = v26;

    v26 = v248;
    v246 = 0;
    goto LABEL_338;
  }

  v33 = *(v2 + 16);
  if (v33 != *(v401 + 16))
  {
    v251 = v26;

    sub_247BC2D30(v252, v251, 0);
    v243 = v401;
    v249 = v6;
    goto LABEL_409;
  }

  if (!v33)
  {
    v40 = v26;

LABEL_53:
    v35 = v40;
    goto LABEL_54;
  }

  if (v2 == v401)
  {
    v2 = v26;

    v34 = v401;
    v35 = v2;
LABEL_54:
    sub_247BC2D30(v34, v35, 0);
    v37 = v5;
    v38 = v6;
    v39 = 0;
    goto LABEL_55;
  }

  v394 = v2 + 32;
  v391 = *(v2 + 16);
  v41 = v26;
  sub_247BC2D0C(v2, v26, 0);
  v384 = v41;
  v42 = v41;
  v43 = v391;
  sub_247BC2D0C(v2, v42, 0);
  sub_247BC2D0C(v401, v6, 0);
  v46 = 0;
  v390 = v2;
  v393 = v6;
  while (1)
  {
    if (v46 >= *(v2 + 16))
    {
      __break(1u);
LABEL_369:
      __break(1u);
LABEL_370:
      v298 = v44;
      v309 = v45;
      sub_247BC2D0C(v43, v45, v4);
      sub_247BC2D0C(*&v3, v298, 0);
      v310 = *&v3;
      v311 = v298;
      v312 = 0;
LABEL_375:
      sub_247BC2D30(v310, v311, v312);
      v313 = v43;
      v314 = v309;
      v315 = v4;
      goto LABEL_402;
    }

    if (v46 >= *(v5 + 16))
    {
      goto LABEL_369;
    }

    v53 = v394 + 24 * v46;
    v3 = *v53;
    a2 = *(v53 + 8);
    v54 = *(v53 + 16);
    v55 = v401 + 32 + 24 * v46;
    v4 = *v55;
    v11 = *(v55 + 8);
    LODWORD(v6) = *(v55 + 16);
    v395 = v46;
    if (v54 <= 2)
    {
      break;
    }

    if (v54 <= 4)
    {
      if (v54 == 3)
      {
        if (v6 != 3)
        {
          goto LABEL_343;
        }

        v56 = v3;
        v57 = *&v3;
        v3 = *(v55 + 8);
        sub_247BC2D30(v57, a2, 3);
        sub_247BC2D30(v4, *&v3, 3);
        if (v56 != *&v4)
        {
          goto LABEL_408;
        }
      }

      else
      {
        if (v6 != 4)
        {
          v260 = a2;
          v255 = *(v55 + 8);
          sub_247BC2D0C(v4, v11, v6);
          v256 = *&v3;
          v257 = v260;
          v258 = 4;
          goto LABEL_349;
        }

        v68 = *&v3;
        v69 = v3;
        v3 = *v55;
        v4 = *(v55 + 8);
        sub_247BC2D30(v68, a2, 4);
        sub_247BC2D30(*&v3, v4, 4);
        v28 = *&v69 == *&v3;
        v2 = v390;
        if (!v28)
        {
          goto LABEL_408;
        }
      }

      goto LABEL_58;
    }

    if (v54 != 5)
    {
      if (v6 != 6 || (v11 | v4) != 0)
      {
        v254 = a2;
        v255 = *(v55 + 8);
        sub_247BC2D0C(v4, v11, v6);
        v256 = *&v3;
        v257 = v254;
        v258 = 6;
        goto LABEL_349;
      }

      sub_247BC2D30(*&v3, a2, 6);
      v71 = 0;
      v72 = 0;
      v73 = 6;
      goto LABEL_98;
    }

    if (v6 != 5)
    {
      v259 = a2;
      v255 = *(v55 + 8);
      sub_247BC2D0C(v4, v11, v6);
      sub_247BC2D0C(*&v3, v259, 5);
      v256 = *&v3;
      v257 = v259;
      v258 = 5;
      goto LABEL_349;
    }

    v59 = a2;
    if (*&v3 != v4 || a2 != v11)
    {
      v47 = *&v3;
      v3 = *v55;
      v4 = *(v55 + 8);
      v48 = sub_247BF7180();
      sub_247BC2D0C(*&v3, v4, 5);
      sub_247BC2D0C(v47, v59, 5);
      v49 = v47;
      v2 = v390;
      sub_247BC2D30(v49, v59, 5);
      v50 = *&v3;
      v51 = v4;
      v52 = 5;
LABEL_57:
      sub_247BC2D30(v50, v51, v52);
      v43 = v391;
      if ((v48 & 1) == 0)
      {
        goto LABEL_408;
      }

      goto LABEL_58;
    }

    sub_247BC2D0C(*&v3, a2, 5);
    sub_247BC2D0C(*&v3, v59, 5);
    sub_247BC2D30(*&v3, v59, 5);
    v61 = *&v3;
    v62 = v59;
    v63 = 5;
LABEL_85:
    sub_247BC2D30(v61, v62, v63);
    v43 = v391;
LABEL_58:
    v46 = v395 + 1;
    v6 = v393;
    if (v395 + 1 == v43)
    {
      sub_247BC2D30(v5, v393, 0);
      v40 = v384;
      sub_247BC2D30(v2, v384, 0);
      v34 = v2;
      goto LABEL_53;
    }
  }

  if (v54)
  {
    if (v54 == 1)
    {
      if (v6 != 1)
      {
        v262 = a2;
        v255 = *(v55 + 8);
        sub_247BC2D0C(v4, v11, v6);
        v256 = *&v3;
        v257 = v262;
        v258 = 1;
        goto LABEL_349;
      }

      v58 = *(v55 + 8);
      sub_247BC2D30(*&v3, a2, 1);
      sub_247BC2D30(v4, v58, 1);
      if ((v4 ^ LODWORD(v3)))
      {
        goto LABEL_408;
      }

      goto LABEL_58;
    }

    v65 = a2;
    if (v6 != 2)
    {
      v255 = *(v55 + 8);
      sub_247BC2D0C(v4, v11, v6);
      sub_247BC2D0C(*&v3, v65, 2);
      v256 = *&v3;
      v257 = v65;
      v258 = 2;
      goto LABEL_349;
    }

    v66 = *(v55 + 8);
    sub_247BC2D0C(v4, v11, 2);
    sub_247BC2D0C(*&v3, v65, 2);
    sub_247BC2D0C(v4, v66, 2);
    sub_247BC2D0C(*&v3, v65, 2);
    v48 = sub_247BA5E2C(*&v3, v4);
    sub_247BC2D30(*&v3, v65, 2);
    sub_247BC2D30(v4, v66, 2);
    v67 = v66;
    v2 = v390;
    sub_247BC2D30(v4, v67, 2);
    v50 = *&v3;
    v51 = v65;
    v52 = 2;
    goto LABEL_57;
  }

  if (*(v55 + 16))
  {
    v261 = a2;
    v255 = *(v55 + 8);
    sub_247BC2D0C(v4, v11, v6);
    sub_247BC2D0C(*&v3, v261, 0);
    v256 = *&v3;
    v257 = v261;
    v258 = 0;
    goto LABEL_349;
  }

  v64 = *(*&v3 + 16);
  if (v64 != *(v4 + 16))
  {
    v263 = a2;
    v264 = v11;
    sub_247BC2D0C(v4, v11, 0);
    sub_247BC2D0C(*&v3, v263, 0);
    sub_247BC2D30(*&v3, v263, 0);
    sub_247BC2D30(v4, v264, 0);
    goto LABEL_408;
  }

  v385 = *(*&v3 + 16);
  if (!v64)
  {
    v74 = v4;
    v75 = a2;
    v76 = *&v3;
    v3 = *&v4;
    v4 = v11;
    sub_247BC2D0C(v74, v11, 0);
    sub_247BC2D0C(v76, v75, 0);
    v77 = v76;
    v78 = v75;
    v2 = v390;
    v43 = v391;
    sub_247BC2D30(v77, v78, 0);
    v71 = *&v3;
    v72 = v4;
    v73 = 0;
LABEL_98:
    sub_247BC2D30(v71, v72, v73);
    goto LABEL_58;
  }

  v383 = a2;
  if (*&v3 == v4)
  {
    v4 = v11;
    sub_247BC2D0C(*&v3, v11, 0);
    sub_247BC2D0C(*&v3, v383, 0);
    sub_247BC2D30(*&v3, v383, 0);
    v61 = *&v3;
    v62 = v4;
    v63 = 0;
    goto LABEL_85;
  }

  v388 = *&v3 + 32;
  v387 = v4 + 32;
  v79 = v4;
  v389 = v4;
  v80 = v11;
  sub_247BC2D0C(v79, v11, 0);
  v81 = *&v383;
  sub_247BC2D0C(*&v3, v383, 0);
  v374 = v80;
  sub_247BC2D0C(v389, v80, 0);
  sub_247BC2D0C(*&v3, v383, 0);
  v84 = 0;
  v5 = v385;
  v382 = v3;
  while (1)
  {
    if (v84 >= *(*&v3 + 16))
    {
      __break(1u);
LABEL_382:
      __break(1u);
LABEL_383:
      v399 = v84;
      v319 = v83;
      v196 = v81;
      v197 = v82;
      goto LABEL_386;
    }

    if (v84 >= *(v389 + 16))
    {
      goto LABEL_382;
    }

    v88 = v388 + 24 * v84;
    v89 = *v88;
    v90 = *(v88 + 8);
    v91 = *(v88 + 16);
    v92 = v387 + 24 * v84;
    v80 = *v92;
    v81 = *(v92 + 8);
    LODWORD(v6) = *(v92 + 16);
    v392 = v84;
    if (v91 <= 2)
    {
      break;
    }

    if (v91 <= 4)
    {
      if (v91 == 3)
      {
        if (v6 != 3)
        {
          v272 = v89;
          v273 = v90;
          sub_247BC2D0C(v80, *&v81, v6);
          v269 = v272;
          v270 = v273;
          v271 = 3;
          goto LABEL_357;
        }

        v93 = *&v89;
        sub_247BC2D30(v89, v90, 3);
        sub_247BC2D30(v80, *&v81, 3);
        if (v93 != *&v80)
        {
          goto LABEL_407;
        }
      }

      else
      {
        if (v6 != 4)
        {
          v278 = v89;
          v279 = v90;
          sub_247BC2D0C(v80, *&v81, v6);
          v269 = v278;
          v270 = v279;
          v271 = 4;
          goto LABEL_357;
        }

        *&v6 = v3;
        v104 = *(v92 + 8);
        v81 = *v92;
        v80 = v89;
        sub_247BC2D30(v89, v90, 4);
        v105 = v104;
        v3 = *&v6;
        sub_247BC2D30(*&v81, v105, 4);
        if (v80 != *&v81)
        {
          goto LABEL_407;
        }
      }

      goto LABEL_102;
    }

    if (v91 == 5)
    {
      if (v6 != 5)
      {
        v265 = v89;
        v266 = v90;
        sub_247BC2D0C(v80, *&v81, v6);
        sub_247BC2D0C(v265, v266, 5);
        v269 = v265;
        v270 = v266;
        v271 = 5;
        goto LABEL_357;
      }

      if (v89 != v80 || v90 != *&v81)
      {
        v95 = *(v92 + 8);
        v81 = *v92;
        v80 = v89;
        v96 = v90;
        LOBYTE(v6) = sub_247BF7180();
        sub_247BC2D0C(*&v81, v95, 5);
        sub_247BC2D0C(v80, v96, 5);
        v97 = v96;
        v5 = v385;
        sub_247BC2D30(v80, v97, 5);
        v98 = v95;
        v3 = v382;
        sub_247BC2D30(*&v81, v98, 5);
        if ((v6 & 1) == 0)
        {
          goto LABEL_407;
        }

        goto LABEL_102;
      }

      v81 = *&v89;
      v80 = v90;
      sub_247BC2D0C(v89, v90, 5);
      sub_247BC2D0C(*&v81, v80, 5);
      sub_247BC2D30(*&v81, v80, 5);
      v85 = *&v81;
      v86 = v80;
      v87 = 5;
    }

    else
    {
      if (v6 != 6 || (*&v81 | v80) != 0)
      {
        v267 = v89;
        v268 = v90;
        sub_247BC2D0C(v80, *&v81, v6);
        v269 = v267;
        v270 = v268;
        v271 = 6;
LABEL_357:
        sub_247BC2D30(v269, v270, v271);
        sub_247BC2D30(v80, *&v81, v6);
        goto LABEL_407;
      }

      sub_247BC2D30(v89, v90, 6);
      v85 = 0;
      v86 = 0;
      v87 = 6;
    }

    sub_247BC2D30(v85, v86, v87);
LABEL_102:
    v84 = v392 + 1;
    if (v392 + 1 == v5)
    {
      sub_247BC2D30(*&v3, v383, 0);
      v241 = *&v3;
      v3 = *&v389;
      v4 = v374;
      sub_247BC2D30(v389, v374, 0);
      sub_247BC2D30(v389, v374, 0);
      v242 = v241;
      v2 = v390;
      sub_247BC2D30(v242, v383, 0);
      v5 = v401;
      v43 = v391;
      goto LABEL_58;
    }
  }

  v386 = v89;
  if (v91)
  {
    if (v91 == 1)
    {
      if (v6 != 1)
      {
        v274 = v89;
        v275 = v90;
        sub_247BC2D0C(v80, *&v81, v6);
        v269 = v274;
        v270 = v275;
        v271 = 1;
        goto LABEL_357;
      }

      LODWORD(v6) = v89;
      sub_247BC2D30(v89, v90, 1);
      sub_247BC2D30(v80, *&v81, 1);
      if ((v80 ^ v6))
      {
        goto LABEL_407;
      }
    }

    else
    {
      v101 = v90;
      if (v6 != 2)
      {
        sub_247BC2D0C(v80, *&v81, v6);
        sub_247BC2D0C(v386, v101, 2);
        v269 = v386;
        v270 = v101;
        v271 = 2;
        goto LABEL_357;
      }

      sub_247BC2D0C(v80, *&v81, 2);
      v102 = *&v81;
      v81 = *&v80;
      v80 = v386;
      sub_247BC2D0C(v386, v101, 2);
      sub_247BC2D0C(*&v81, v102, 2);
      sub_247BC2D0C(v386, v101, 2);
      LOBYTE(v6) = sub_247BA5E2C(v386, *&v81);
      sub_247BC2D30(v386, v101, 2);
      sub_247BC2D30(*&v81, v102, 2);
      v103 = v102;
      v3 = v382;
      sub_247BC2D30(*&v81, v103, 2);
      sub_247BC2D30(v386, v101, 2);
      v5 = v385;
      if ((v6 & 1) == 0)
      {
        goto LABEL_407;
      }
    }

    goto LABEL_102;
  }

  if (*(v92 + 16))
  {
    v276 = v89;
    v277 = v90;
    sub_247BC2D0C(v80, *&v81, v6);
    sub_247BC2D0C(v276, v277, 0);
    v269 = v276;
    v270 = v277;
    v271 = 0;
    goto LABEL_357;
  }

  v6 = *(v89 + 16);
  if (v6 != *(v80 + 16))
  {
    v280 = v89;
    v281 = v90;
    sub_247BC2D0C(v80, *&v81, 0);
    sub_247BC2D0C(v280, v281, 0);
    sub_247BC2D30(v280, v281, 0);
    sub_247BC2D30(v80, *&v81, 0);
    goto LABEL_407;
  }

  if (*&v6 == 0.0)
  {
    v107 = *(v92 + 8);
    v81 = *v92;
    v80 = v89;
    v108 = v90;
    sub_247BC2D0C(*v92, v107, 0);
    sub_247BC2D0C(v80, v108, 0);
    v109 = v108;
    v5 = v385;
    sub_247BC2D30(v80, v109, 0);
    v99 = *&v81;
    v100 = v107;
    goto LABEL_142;
  }

  v373 = v90;
  if (v89 == v80)
  {
    v80 = v89;
    sub_247BC2D0C(v89, *&v81, 0);
    sub_247BC2D0C(v80, v373, 0);
    sub_247BC2D30(v80, v373, 0);
    v99 = v80;
    v100 = *&v81;
LABEL_142:
    sub_247BC2D30(v99, v100, 0);
    v3 = v382;
    goto LABEL_102;
  }

  v379 = v80 + 32;
  v380 = v89 + 32;
  sub_247BC2D0C(v80, *&v81, 0);
  v5 = v373;
  sub_247BC2D0C(v386, v373, 0);
  v381 = v80;
  v367 = *&v81;
  sub_247BC2D0C(v80, *&v81, 0);
  sub_247BC2D0C(v386, v373, 0);
  v80 = v386;
  v3 = 0.0;
  v377 = v6;
  while (1)
  {
    if (*&v3 >= *(v80 + 16))
    {
      __break(1u);
LABEL_390:
      __break(1u);
LABEL_391:
      v400 = v112;
      v326 = v111;
      v327 = v110;
LABEL_394:
      sub_247BC2D0C(*&v81, v347, v6);

      v209 = v347;
      *&v210 = v81;
      v2 = v390;
      v81 = *&v353;
      v110 = v327;
      v111 = v326;
      LOBYTE(v112) = v400;
LABEL_395:
      v359 = v111;
      v328 = v209;
      v329 = v112;
      v330 = v210;
      v331 = v110;
      sub_247BC2D0C(v111, v110, v112);
      sub_247BC2D30(v330, v328, v6);
      sub_247BC2D30(v359, v331, v329);
      sub_247BC2D30(v330, v328, v6);
LABEL_398:
      v320 = v346;
      sub_247BC2D30(v80, v346, 0);
      v321 = v348;
      sub_247BC2D30(v348, *&v81, 0);
      v323 = 0;
      LOBYTE(v6) = 0;
      goto LABEL_399;
    }

    if (*&v3 >= *(v381 + 16))
    {
      goto LABEL_390;
    }

    v113 = v380 + 24 * *&v3;
    v114 = *v113;
    v81 = *(v113 + 8);
    v115 = *(v113 + 16);
    v116 = v379 + 24 * *&v3;
    v117 = *v116;
    v5 = *(v116 + 8);
    v118 = *(v116 + 16);
    if (v115 <= 2)
    {
      break;
    }

    if (v115 > 4)
    {
      if (v115 != 5)
      {
        if (v118 != 6 || (v5 | v117) != 0)
        {
          v288 = v114;
          v289 = *v116;
          sub_247BC2D0C(*v116, *(v116 + 8), *(v116 + 16));
          v290 = v288;
          v291 = *&v81;
          v292 = 6;
          goto LABEL_365;
        }

        sub_247BC2D30(v114, *&v81, 6);
        sub_247BC2D30(0, 0, 6);
        goto LABEL_145;
      }

      if (v118 != 5)
      {
        v285 = v114;
        v289 = *v116;
        sub_247BC2D0C(*v116, *(v116 + 8), *(v116 + 16));
        sub_247BC2D0C(v285, *&v81, 5);
        v290 = v285;
        v291 = *&v81;
        v292 = 5;
        goto LABEL_365;
      }

      v125 = v3;
      v126 = v114;
      if (v114 == v117 && *&v81 == v5)
      {
        sub_247BC2D0C(v114, *&v81, 5);
        sub_247BC2D0C(v126, *&v81, 5);
        sub_247BC2D30(v126, *&v81, 5);
        sub_247BC2D30(v126, *&v81, 5);
        v3 = v125;
      }

      else
      {
        v128 = *(v116 + 8);
        v5 = *&v81;
        v81 = *v116;
        LODWORD(v378) = sub_247BF7180();
        sub_247BC2D0C(*&v81, v128, 5);
        sub_247BC2D0C(v126, v5, 5);
        sub_247BC2D30(v126, v5, 5);
        sub_247BC2D30(*&v81, v128, 5);
        v3 = v125;
        if ((v378 & 1) == 0)
        {
          goto LABEL_406;
        }
      }
    }

    else
    {
      if (v115 == 3)
      {
        if (v118 == 3)
        {
          v119 = *&v114;
          v120 = *v116;
          v121 = *&v81;
          v81 = *v116;
          sub_247BC2D30(v114, v121, 3);
          sub_247BC2D30(*&v81, v5, 3);
          if (v119 != v120)
          {
            goto LABEL_406;
          }

          goto LABEL_145;
        }

        v293 = v114;
        v289 = *v116;
        sub_247BC2D0C(*v116, *(v116 + 8), *(v116 + 16));
        v290 = v293;
        v291 = *&v81;
        v292 = 3;
        goto LABEL_365;
      }

      if (v118 != 4)
      {
        v282 = v114;
        v289 = *v116;
        sub_247BC2D0C(*v116, *(v116 + 8), *(v116 + 16));
        v290 = v282;
        v291 = *&v81;
        v292 = 4;
        goto LABEL_365;
      }

      v134 = v3;
      v135 = v114;
      v136 = *&v81;
      v81 = *v116;
      sub_247BC2D30(v114, v136, 4);
      sub_247BC2D30(*&v81, v5, 4);
      v28 = v135 == *&v81;
      v3 = v134;
      if (!v28)
      {
        goto LABEL_406;
      }
    }

LABEL_145:
    ++*&v3;
    LOBYTE(v6) = v377;
    v80 = v386;
    if (*&v3 == v377)
    {
      sub_247BC2D30(v386, v373, 0);
      v81 = *&v381;
      sub_247BC2D30(v381, v367, 0);
      sub_247BC2D30(v381, v367, 0);
      sub_247BC2D30(v386, v373, 0);
      v3 = v382;
      v5 = v385;
      goto LABEL_102;
    }
  }

  v376 = v3;
  v378 = v114;
  if (v115)
  {
    if (v115 != 1)
    {
      if (v118 == 2)
      {
        v132 = *(v116 + 8);
        v5 = *&v81;
        v81 = *v116;
        sub_247BC2D0C(v117, v132, 2);
        sub_247BC2D0C(v378, v5, 2);
        sub_247BC2D0C(*&v81, v132, 2);
        sub_247BC2D0C(v378, v5, 2);
        v133 = sub_247BA5E2C(v378, *&v81);
        sub_247BC2D30(v378, v5, 2);
        sub_247BC2D30(*&v81, v132, 2);
        sub_247BC2D30(*&v81, v132, 2);
        sub_247BC2D30(v378, v5, 2);
        if ((v133 & 1) == 0)
        {
          goto LABEL_406;
        }

        goto LABEL_145;
      }

      v283 = *v116;
      sub_247BC2D0C(v117, v5, v118);
      sub_247BC2D0C(v378, *&v81, 2);
      sub_247BC2D30(v378, *&v81, 2);
      v284 = v283;
LABEL_366:
      v294 = v5;
      v295 = v118;
      goto LABEL_405;
    }

    if (v118 == 1)
    {
      v122 = v114;
      v123 = *v116;
      sub_247BC2D30(v114, *&v81, 1);
      sub_247BC2D30(v123, v5, 1);
      v124 = v123 ^ v122;
      v3 = v376;
      if (v124)
      {
        goto LABEL_406;
      }

      goto LABEL_145;
    }

    v287 = v114;
    v289 = *v116;
    sub_247BC2D0C(v117, v5, v118);
    v290 = v287;
    v291 = *&v81;
    v292 = 1;
LABEL_365:
    sub_247BC2D30(v290, v291, v292);
    v284 = v289;
    goto LABEL_366;
  }

  if (*(v116 + 16))
  {
    v286 = v114;
    v289 = *v116;
    sub_247BC2D0C(v117, v5, v118);
    sub_247BC2D0C(v286, *&v81, 0);
    v290 = v286;
    v291 = *&v81;
    v292 = 0;
    goto LABEL_365;
  }

  v129 = *(v114 + 16);
  if (v129 != *(v117 + 16))
  {
    v296 = v114;
    v297 = *v116;
    sub_247BC2D0C(v117, v5, 0);
    sub_247BC2D0C(v296, *&v81, 0);
    sub_247BC2D30(v296, *&v81, 0);
    v284 = v297;
    v294 = v5;
    goto LABEL_404;
  }

  if (!v129)
  {
    v138 = v114;
    v139 = *&v81;
    v81 = *v116;
    sub_247BC2D0C(v117, v5, 0);
    sub_247BC2D0C(v138, v139, 0);
    sub_247BC2D30(v138, v139, 0);
    v131 = *&v81;
    goto LABEL_185;
  }

  if (v114 == v117)
  {
    v130 = v114;
    sub_247BC2D0C(v114, v5, 0);
    sub_247BC2D0C(v130, *&v81, 0);
    sub_247BC2D30(v130, *&v81, 0);
    v131 = v130;
LABEL_185:
    v140 = v5;
LABEL_186:
    sub_247BC2D30(v131, v140, 0);
    v3 = v376;
    goto LABEL_145;
  }

  v370 = v117 + 32;
  v371 = v114 + 32;
  v364 = *&v81;
  v141 = *v116;
  sub_247BC2D0C(v117, v5, 0);
  sub_247BC2D0C(v378, v364, 0);
  v372 = v141;
  sub_247BC2D0C(v141, v5, 0);
  result = sub_247BC2D0C(v378, v364, 0);
  v143 = v378;
  v144 = 0;
  v366 = v129;
  v369 = v5;
  while (1)
  {
    if (v144 >= *(v143 + 16))
    {
      __break(1u);
LABEL_414:
      __break(1u);
LABEL_415:
      __break(1u);
LABEL_416:
      __break(1u);
LABEL_417:
      __break(1u);
LABEL_418:
      __break(1u);
LABEL_419:
      __break(1u);
LABEL_420:
      __break(1u);
      return result;
    }

    if (v144 >= *(v372 + 16))
    {
      goto LABEL_414;
    }

    v145 = v371 + 24 * v144;
    v3 = *v145;
    v44 = *(v145 + 8);
    v146 = *(v145 + 16);
    v147 = v370 + 24 * v144;
    v43 = *v147;
    v45 = *(v147 + 8);
    LODWORD(v4) = *(v147 + 16);
    v375 = v144;
    if (v146 <= 2)
    {
      break;
    }

    if (v146 > 4)
    {
      if (v146 == 5)
      {
        if (v4 != 5)
        {
          v305 = v44;
          v309 = *(v147 + 8);
          sub_247BC2D0C(v43, v45, v4);
          sub_247BC2D0C(*&v3, v305, 5);
          v310 = *&v3;
          v311 = v305;
          v312 = 5;
          goto LABEL_375;
        }

        if (*&v3 != v43 || v44 != v45)
        {
          v155 = v44;
          v156 = *&v3;
          v157 = *v147;
          v158 = *(v147 + 8);
          v159 = sub_247BF7180();
          sub_247BC2D0C(v157, v158, 5);
          sub_247BC2D0C(v156, v155, 5);
          v160 = v156;
          v5 = v369;
          v161 = v155;
          v129 = v366;
          sub_247BC2D30(v160, v161, 5);
          result = sub_247BC2D30(v157, v158, 5);
          if ((v159 & 1) == 0)
          {
            goto LABEL_403;
          }

          goto LABEL_232;
        }

        v175 = v44;
        sub_247BC2D0C(*&v3, v44, 5);
        sub_247BC2D0C(*&v3, v175, 5);
        sub_247BC2D30(*&v3, v175, 5);
        v172 = *&v3;
        v173 = v175;
        v174 = 5;
      }

      else
      {
        if (v4 != 6 || (v45 | v43) != 0)
        {
          v308 = v44;
          v309 = *(v147 + 8);
          sub_247BC2D0C(v43, v45, v4);
          v310 = *&v3;
          v311 = v308;
          v312 = 6;
          goto LABEL_375;
        }

        sub_247BC2D30(*&v3, v44, 6);
        v172 = 0;
        v173 = 0;
        v174 = 6;
      }

      result = sub_247BC2D30(v172, v173, v174);
    }

    else
    {
      *&v148 = v3;
      v149 = *v147;
      v150 = *(v147 + 8);
      if (v146 == 3)
      {
        if (v4 == 3)
        {
          v151 = *&v148;
          sub_247BC2D30(v148, v44, 3);
          result = sub_247BC2D30(v149, v150, 3);
          v5 = v369;
          if (v151 != *&v149)
          {
            goto LABEL_403;
          }

          goto LABEL_232;
        }

        v299 = v44;
        sub_247BC2D0C(v149, v45, v4);
        v300 = v148;
        v301 = v299;
        v302 = 3;
        goto LABEL_377;
      }

      if (v4 != 4)
      {
        v316 = v44;
        sub_247BC2D0C(v149, v45, v4);
        v300 = v148;
        v301 = v316;
        v302 = 4;
LABEL_377:
        sub_247BC2D30(v300, v301, v302);
        v304 = v149;
        goto LABEL_378;
      }

      sub_247BC2D30(v148, v44, 4);
      result = sub_247BC2D30(v149, v150, 4);
      v28 = v148 == v149;
      v5 = v369;
      if (!v28)
      {
        goto LABEL_403;
      }
    }

LABEL_232:
    v144 = v375 + 1;
    v143 = v378;
    if (v375 + 1 == v129)
    {
      sub_247BC2D30(v378, v364, 0);
      v81 = *&v372;
      sub_247BC2D30(v372, v5, 0);
      sub_247BC2D30(v372, v5, 0);
      v131 = v378;
      v140 = v364;
      goto LABEL_186;
    }
  }

  if (v146)
  {
    if (v146 != 1)
    {
      v167 = v44;
      v168 = *&v3;
      if (v4 == 2)
      {
        v169 = *(v147 + 8);
        sub_247BC2D0C(v43, v45, 2);
        sub_247BC2D0C(v168, v167, 2);
        sub_247BC2D0C(v43, v169, 2);
        sub_247BC2D0C(v168, v167, 2);
        v170 = sub_247BA5E2C(v168, v43);
        sub_247BC2D30(v168, v167, 2);
        sub_247BC2D30(v43, v169, 2);
        sub_247BC2D30(v43, v169, 2);
        result = sub_247BC2D30(v168, v167, 2);
        v5 = v369;
        v129 = v366;
        if ((v170 & 1) == 0)
        {
          goto LABEL_403;
        }

        goto LABEL_232;
      }

      v306 = *(v147 + 8);
      sub_247BC2D0C(v43, v45, v4);
      sub_247BC2D0C(*&v3, v167, 2);
      sub_247BC2D30(*&v3, v167, 2);
      v304 = v43;
      v307 = v306;
LABEL_379:
      sub_247BC2D30(v304, v307, v4);
      v5 = v369;
      goto LABEL_403;
    }

    v152 = *v147;
    v150 = *(v147 + 8);
    if (v4 == 1)
    {
      sub_247BC2D30(*&v3, v44, 1);
      result = sub_247BC2D30(v152, v150, 1);
      v153 = v152 ^ LOBYTE(v3);
      v5 = v369;
      v129 = v366;
      if (v153)
      {
        goto LABEL_403;
      }

      goto LABEL_232;
    }

    v303 = v44;
    sub_247BC2D0C(v152, v45, v4);
    sub_247BC2D30(*&v3, v303, 1);
    v304 = v152;
LABEL_378:
    v307 = v150;
    goto LABEL_379;
  }

  if (*(v147 + 16))
  {
    goto LABEL_370;
  }

  v162 = *(*&v3 + 16);
  if (v162 != *(v43 + 16))
  {
    v317 = v44;
    v318 = *(v147 + 8);
    sub_247BC2D0C(v43, v45, 0);
    sub_247BC2D0C(*&v3, v317, 0);
    sub_247BC2D30(*&v3, v317, 0);
    v313 = v43;
    v314 = v318;
    goto LABEL_401;
  }

  v360 = v44;
  if (v162)
  {
    v163 = *&v3 == v43;
  }

  else
  {
    v163 = 1;
  }

  if (v163)
  {
    v164 = *(v147 + 8);
    sub_247BC2D0C(v43, v45, 0);
    sub_247BC2D0C(*&v3, v360, 0);
    sub_247BC2D30(*&v3, v360, 0);
    v165 = v43;
    v166 = v164;
LABEL_220:
    result = sub_247BC2D30(v165, v166, 0);
    v129 = v366;
    goto LABEL_232;
  }

  v362 = v43 + 32;
  v363 = *&v3 + 32;
  v365 = *v147;
  v176 = *(v147 + 8);
  sub_247BC2D0C(*v147, v45, 0);
  sub_247BC2D0C(*&v3, v360, 0);
  v336 = v176;
  sub_247BC2D0C(v365, v176, 0);
  result = sub_247BC2D0C(*&v3, v360, 0);
  v177 = 0;
  v337 = v3;
  v361 = v162;
  while (1)
  {
    if (v177 >= *(*&v3 + 16))
    {
      goto LABEL_415;
    }

    if (v177 >= *(v365 + 16))
    {
      goto LABEL_416;
    }

    v182 = v363 + 24 * v177;
    v80 = *v182;
    v82 = *(v182 + 8);
    LODWORD(v6) = *(v182 + 16);
    v183 = v362 + 24 * v177;
    v83 = *v183;
    v81 = *(v183 + 8);
    LODWORD(v84) = *(v183 + 16);
    v368 = v177;
    if (v6 <= 2)
    {
      break;
    }

    if (v6 <= 4)
    {
      if (v6 == 3)
      {
        if (v84 != 3)
        {
          goto LABEL_387;
        }

        v184 = *&v80;
        v185 = *v183;
        v186 = v80;
        v187 = *v183;
        sub_247BC2D30(v186, v82, 3);
        result = sub_247BC2D30(v187, *&v81, 3);
        if (v184 != v185)
        {
          goto LABEL_400;
        }
      }

      else
      {
        if (v84 != 4)
        {
          goto LABEL_387;
        }

        v199 = *v183;
        sub_247BC2D30(v80, v82, 4);
        result = sub_247BC2D30(v199, *&v81, 4);
        if (v80 != v199)
        {
          goto LABEL_400;
        }
      }

      goto LABEL_236;
    }

    if (v6 == 5)
    {
      if (v84 != 5)
      {
        v399 = *(v183 + 16);
        v319 = *v183;
        v196 = *(v183 + 8);
        v197 = v82;
        goto LABEL_386;
      }

      if (v80 != v83 || v82 != *&v81)
      {
        v190 = *(v183 + 8);
        v346 = v82;
        v191 = *v183;
        v348 = *v183;
        v354 = sub_247BF7180();
        sub_247BC2D0C(v191, v190, 5);
        sub_247BC2D0C(v80, v346, 5);
        sub_247BC2D30(v80, v346, 5);
        result = sub_247BC2D30(v348, v190, 5);
        goto LABEL_264;
      }

      v178 = v82;
      sub_247BC2D0C(v80, v82, 5);
      sub_247BC2D0C(v80, v178, 5);
      sub_247BC2D30(v80, v178, 5);
      v179 = v80;
      v180 = v178;
      v181 = 5;
    }

    else
    {
      if (v84 != 6 || (*&v81 | v83) != 0)
      {
        goto LABEL_387;
      }

      sub_247BC2D30(v80, v82, 6);
      v179 = 0;
      v180 = 0;
      v181 = 6;
    }

LABEL_235:
    result = sub_247BC2D30(v179, v180, v181);
LABEL_236:
    v177 = v368 + 1;
    if (v368 + 1 == v361)
    {
      sub_247BC2D30(*&v3, v360, 0);
      sub_247BC2D30(v365, v336, 0);
      sub_247BC2D30(v365, v336, 0);
      v165 = *&v3;
      v5 = v369;
      v166 = v360;
      goto LABEL_220;
    }
  }

  if (!v6)
  {
    if (*(v183 + 16))
    {
      goto LABEL_383;
    }

    v192 = *(v80 + 16);
    v346 = v82;
    if (v192 != *(v83 + 16))
    {
      v324 = v82;
      v325 = *v183;
      sub_247BC2D0C(v83, *&v81, 0);
      sub_247BC2D0C(v80, v324, 0);
      v348 = v325;
      sub_247BC2D0C(v325, *&v81, 0);
      sub_247BC2D0C(v80, v324, 0);
      goto LABEL_398;
    }

    v353 = *(v183 + 8);
    v345 = v80;
    if (v192)
    {
      v193 = v80;
      if (v80 != v83)
      {
        v343 = v83 + 32;
        v344 = v80 + 32;
        v194 = *v183;
        v342 = *(v80 + 16);
        sub_247BC2D0C(v83, *&v81, 0);
        sub_247BC2D0C(v80, v346, 0);
        v348 = v194;
        sub_247BC2D0C(v194, *&v81, 0);
        result = sub_247BC2D0C(v80, v346, 0);
        v195 = 0;
        while (1)
        {
          if (v195 >= *(v80 + 16))
          {
            goto LABEL_417;
          }

          if (v195 >= *(v348 + 16))
          {
            goto LABEL_418;
          }

          v208 = v344 + 24 * v195;
          v210 = *v208;
          v209 = *(v208 + 8);
          LODWORD(v6) = *(v208 + 16);
          v211 = v343 + 24 * v195;
          v111 = *v211;
          v110 = *(v211 + 8);
          v112 = *(v211 + 16);
          v352 = v195;
          if (v6 <= 2)
          {
            v349 = v210;
            if (v6)
            {
              if (v6 == 1)
              {
                if (v112 != 1)
                {
                  goto LABEL_395;
                }

                v215 = *v211;
                v216 = *(v211 + 8);
                sub_247BC2D30(v210, v209, 1);
                result = sub_247BC2D30(v215, v216, 1);
                v81 = *&v353;
                if ((v215 ^ v349))
                {
                  goto LABEL_398;
                }

                goto LABEL_280;
              }

              v347 = v209;
              v81 = *&v210;
              if (v112 != 2)
              {
                goto LABEL_391;
              }

              v358 = *v211;
              v237 = *(v211 + 8);
              sub_247BC2D0C(v111, v110, 2);
              sub_247BC2D0C(*&v81, v347, 2);
              sub_247BC2D0C(v358, v237, 2);
              sub_247BC2D0C(*&v81, v347, 2);
              v338 = sub_247BA5E2C(*&v81, v358);
              sub_247BC2D30(*&v81, v347, 2);
              sub_247BC2D30(v358, v237, 2);
              sub_247BC2D30(v358, v237, 2);
              result = sub_247BC2D30(v349, v347, 2);
              v81 = *&v353;
              goto LABEL_313;
            }

            v347 = v209;
            if (*(v211 + 16))
            {
              v400 = *(v211 + 16);
              v326 = *v211;
              v327 = *(v211 + 8);
              v81 = *&v210;
              goto LABEL_394;
            }

            v219 = *(v210 + 16);
            v341 = *(v211 + 8);
            if (v219 != *(v111 + 16))
            {
              v332 = v209;
              v333 = *v211;
              v334 = v210;
              v335 = *(v211 + 8);
              sub_247BC2D0C(v111, v110, 0);
              sub_247BC2D0C(v334, v332, 0);
              v357 = v333;
              sub_247BC2D0C(v333, v335, 0);
              v228 = v334;
              sub_247BC2D0C(v334, v332, 0);
LABEL_397:
              sub_247BC2D30(v228, v347, 0);
              sub_247BC2D30(v357, v341, 0);
              sub_247BC2D30(v357, v341, 0);
              sub_247BC2D30(v228, v347, 0);
              v2 = v390;
              v5 = v369;
              v3 = v337;
              v81 = *&v353;
              v80 = v345;
              goto LABEL_398;
            }

            v339 = *(v210 + 16);
            if (v219)
            {
              v220 = v210;
              v221 = v210;
              if (v210 != v111)
              {
                v222 = v210;
                v223 = *v211;
                v224 = *(v211 + 8);
                sub_247BC2D0C(v111, v110, 0);
                sub_247BC2D0C(v222, v347, 0);
                sub_247BC2D0C(v223, v224, 0);
                result = sub_247BC2D0C(v222, v347, 0);
                v225 = 0;
                v357 = v223;
                v226 = (v223 + 48);
                v227 = (v222 + 48);
                v228 = v222;
                while (v225 < *(v228 + 16))
                {
                  result = *(v227 - 2);
                  v229 = *(v227 - 1);
                  v230 = *v227;
                  v405 = result;
                  v406 = v229;
                  v407 = v230;
                  if (v225 >= *(v357 + 16))
                  {
                    goto LABEL_420;
                  }

                  v231 = v227;
                  v232 = v225;
                  v234 = *(v226 - 1);
                  v402 = *(v226 - 2);
                  v233 = v402;
                  v403 = v234;
                  v404 = *v226;
                  v235 = v404;
                  sub_247BC2D0C(result, v229, v230);
                  sub_247BC2D0C(v233, v234, v235);
                  v236 = _s14CoreUtilsSwift11CUJSONValueO2eeoiySbAC_ACtFZ_0(&v405, &v402);
                  sub_247BC2D30(v402, v403, v404);
                  result = sub_247BC2D30(v405, v406, v407);
                  if ((v236 & 1) == 0)
                  {
                    goto LABEL_397;
                  }

                  v225 = v232 + 1;
                  v226 += 24;
                  v227 = v231 + 24;
                  if (v339 == v232 + 1)
                  {
                    v2 = v390;
                    v5 = v369;
                    v3 = v337;
                    v81 = *&v353;
                    v80 = v345;
                    goto LABEL_326;
                  }
                }

                goto LABEL_419;
              }
            }

            else
            {
              v220 = *v211;
              v221 = v210;
            }

            v357 = v220;
            sub_247BC2D0C(v220, v110, 0);
            sub_247BC2D0C(v221, v347, 0);
            sub_247BC2D0C(v357, v341, 0);
            sub_247BC2D0C(v349, v347, 0);
LABEL_326:
            sub_247BC2D30(v349, v347, 0);
            sub_247BC2D30(v357, v341, 0);
            sub_247BC2D30(v357, v341, 0);
            v205 = v349;
            v206 = v347;
            v207 = 0;
          }

          else
          {
            if (v6 <= 4)
            {
              if (v6 == 3)
              {
                if (v112 != 3)
                {
                  goto LABEL_395;
                }

                v212 = *&v210;
                v213 = *v211;
                v355 = *v211;
                v214 = *(v211 + 8);
                sub_247BC2D30(v210, v209, 3);
                result = sub_247BC2D30(v355, v214, 3);
                if (v212 != v213)
                {
                  goto LABEL_398;
                }
              }

              else
              {
                if (v112 != 4)
                {
                  goto LABEL_395;
                }

                v238 = *v211;
                v351 = v210;
                v239 = *(v211 + 8);
                sub_247BC2D30(v210, v209, 4);
                result = sub_247BC2D30(v238, v239, 4);
                v81 = *&v353;
                if (v351 != v238)
                {
                  goto LABEL_398;
                }
              }

              goto LABEL_280;
            }

            if (v6 == 5)
            {
              v347 = v209;
              if (v112 != 5)
              {
                v400 = *(v211 + 16);
                v326 = *v211;
                v327 = *(v211 + 8);
                v81 = *&v210;
                goto LABEL_394;
              }

              v217 = v210 == v111 && v209 == v110;
              v350 = v210;
              if (!v217)
              {
                v218 = *v211;
                v356 = *v211;
                v340 = *(v211 + 8);
                v338 = sub_247BF7180();
                sub_247BC2D0C(v218, v340, 5);
                sub_247BC2D0C(v350, v347, 5);
                sub_247BC2D30(v350, v347, 5);
                result = sub_247BC2D30(v356, v340, 5);
LABEL_313:
                if ((v338 & 1) == 0)
                {
                  goto LABEL_398;
                }

                goto LABEL_280;
              }

              v204 = v210;
              sub_247BC2D0C(v210, v209, 5);
              sub_247BC2D0C(v204, v347, 5);
              sub_247BC2D30(v204, v347, 5);
              v205 = v350;
              v206 = v347;
              v207 = 5;
            }

            else
            {
              if (v112 != 6 || (v110 | v111) != 0)
              {
                goto LABEL_395;
              }

              sub_247BC2D30(v210, v209, 6);
              v205 = 0;
              v206 = 0;
              v207 = 6;
            }
          }

          result = sub_247BC2D30(v205, v206, v207);
LABEL_280:
          v195 = v352 + 1;
          if (v352 + 1 == v342)
          {
            v202 = v346;
            v203 = v348;
            goto LABEL_277;
          }
        }
      }
    }

    else
    {
      v193 = *v183;
    }

    sub_247BC2D0C(v193, *&v81, 0);
    v201 = v80;
    v202 = v346;
    sub_247BC2D0C(v201, v346, 0);
    sub_247BC2D0C(v193, *&v81, 0);
    sub_247BC2D0C(v345, v346, 0);
    v203 = v193;
LABEL_277:
    sub_247BC2D30(v345, v202, 0);
    sub_247BC2D30(v203, v353, 0);
    sub_247BC2D30(v203, v353, 0);
    v179 = v345;
    v180 = v202;
    v181 = 0;
    goto LABEL_235;
  }

  if (v6 == 1)
  {
    if (v84 != 1)
    {
      goto LABEL_387;
    }

    v188 = *v183;
    sub_247BC2D30(v80, v82, 1);
    result = sub_247BC2D30(v188, *&v81, 1);
    if ((v188 ^ v80))
    {
      goto LABEL_400;
    }

    goto LABEL_236;
  }

  v196 = *(v183 + 8);
  v197 = v82;
  if (v84 == 2)
  {
    v353 = *(v183 + 8);
    v198 = *v183;
    sub_247BC2D0C(v83, v353, 2);
    sub_247BC2D0C(v80, v197, 2);
    sub_247BC2D0C(v198, v353, 2);
    sub_247BC2D0C(v80, v197, 2);
    v354 = sub_247BA5E2C(v80, v198);
    sub_247BC2D30(v80, v197, 2);
    sub_247BC2D30(v198, v353, 2);
    sub_247BC2D30(v198, v353, 2);
    result = sub_247BC2D30(v80, v197, 2);
    v3 = v337;
LABEL_264:
    if ((v354 & 1) == 0)
    {
      goto LABEL_400;
    }

    goto LABEL_236;
  }

  v399 = *(v183 + 16);
  v319 = *v183;
LABEL_386:
  sub_247BC2D0C(v80, v197, v6);

  v82 = v197;
  v81 = v196;
  v3 = v337;
  v83 = v319;
  LOBYTE(v84) = v399;
LABEL_387:
  v320 = v82;
  v321 = v83;
  v322 = v84;
  sub_247BC2D0C(v83, *&v81, v84);
  sub_247BC2D30(v80, v320, v6);
  v323 = v322;
LABEL_399:
  sub_247BC2D30(v321, *&v81, v323);
  sub_247BC2D30(v80, v320, v6);
LABEL_400:
  sub_247BC2D30(*&v3, v360, 0);
  sub_247BC2D30(v365, v336, 0);
  sub_247BC2D30(v365, v336, 0);
  v313 = *&v3;
  v314 = v360;
LABEL_401:
  v315 = 0;
LABEL_402:
  sub_247BC2D30(v313, v314, v315);
LABEL_403:
  sub_247BC2D30(v378, v364, 0);
  sub_247BC2D30(v372, v5, 0);
  sub_247BC2D30(v372, v5, 0);
  v284 = v378;
  v294 = v364;
LABEL_404:
  v295 = 0;
LABEL_405:
  sub_247BC2D30(v284, v294, v295);
LABEL_406:
  sub_247BC2D30(v386, v373, 0);
  sub_247BC2D30(v381, v367, 0);
  sub_247BC2D30(v381, v367, 0);
  sub_247BC2D30(v386, v373, 0);
  v3 = v382;
LABEL_407:
  sub_247BC2D30(*&v3, v383, 0);
  sub_247BC2D30(v389, v374, 0);
  sub_247BC2D30(v389, v374, 0);
  sub_247BC2D30(*&v3, v383, 0);
  v5 = v401;
LABEL_408:
  sub_247BC2D30(v2, v384, 0);
  sub_247BC2D30(v5, v393, 0);
  sub_247BC2D30(v5, v393, 0);
  v243 = v2;
  v249 = v384;
LABEL_409:
  v250 = 0;
LABEL_410:
  sub_247BC2D30(v243, v249, v250);
  return 0;
}