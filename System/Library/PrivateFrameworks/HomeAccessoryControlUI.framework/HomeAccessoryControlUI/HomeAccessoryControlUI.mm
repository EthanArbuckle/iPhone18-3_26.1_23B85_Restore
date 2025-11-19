uint64_t sub_25230B440()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_252691790();

    return sub_252690C30();
  }

  else
  {
    sub_252690D40();
    swift_getWitnessTable();
    sub_252691590();
    sub_252690C30();
    sub_252693130();
    swift_getWitnessTable();
    sub_252690D40();
    swift_getWitnessTable();
    sub_252691590();
    return sub_252690C30();
  }
}

uint64_t sub_25230B5A4()
{
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_252691790();
    sub_252690C30();
  }

  else
  {
    sub_252690D40();
    swift_getWitnessTable();
    sub_252691590();
    sub_252690C30();
    sub_252693130();
    swift_getWitnessTable();
    sub_252690D40();
    swift_getWitnessTable();
    sub_252691590();
    sub_252690C30();
    swift_getWitnessTable();
    swift_getWitnessTable();
  }

  swift_getWitnessTable();
  return swift_getWitnessTable();
}

BOOL sub_25230B814(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_25230B86C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _s14descr286482769V18RGBColorWheelSpaceVwet(uint64_t a1, int a2)
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

uint64_t _s14descr286482769V18RGBColorWheelSpaceVwst(uint64_t result, int a2, int a3)
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

uint64_t sub_25230B938(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlSolver.Context();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25230B9A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControlSolver.Context();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25230BA20()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230C0C4()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230C778()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v48 = *(*(v1 - 1) + 80);
  v2 = (v48 + 40) & ~v48;
  v46 = *(*(v1 - 1) + 64);
  v3 = *(type metadata accessor for AccessoryControlSolver.Context() - 8);
  v50 = *(v3 + 80);
  v47 = *(v3 + 64);

  v49 = v0;
  v4 = v0 + v2;
  v5 = sub_25268DA10();
  v6 = *(v5 - 8);
  v45 = *(v6 + 8);
  v45(v0 + v2, v5);
  v7 = v1[5];
  v8 = sub_25268E530();
  v9 = *(*(v8 - 8) + 8);
  v9(v4 + v7, v8);
  v9(v4 + v1[6], v8);

  v10 = v1[9];
  v11 = sub_25268ED50();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v10, 1, v11))
  {
    (*(v12 + 8))(v4 + v10, v11);
  }

  v13 = v1[12];
  v14 = sub_25268E2F0();
  v44 = *(*(v14 - 8) + 8);
  v44(v4 + v13, v14);

  v15 = v1[19];
  v16 = sub_25268FEB0();
  (*(*(v16 - 8) + 8))(v4 + v15, v16);
  v17 = v1[20];
  v18 = sub_25268F1A0();
  (*(*(v18 - 8) + 8))(v4 + v17, v18);
  v19 = v1[21];
  v20 = sub_25268EAF0();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v4 + v19, 1, v20))
  {
    (*(v21 + 8))(v4 + v19, v20);
  }

  v22 = v1[22];
  if (!(*(v6 + 48))(v4 + v22, 1, v5))
  {
    v45(v4 + v22, v5);
  }

  v23 = v2 + v46 + v50;
  v24 = v1[23];
  v25 = sub_25268E710();
  v26 = *(v25 - 8);
  if (!(*(v26 + 48))(v4 + v24, 1, v25))
  {
    (*(v26 + 8))(v4 + v24, v25);
  }

  v27 = v23 & ~v50;
  v28 = v4 + v1[24];
  v29 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v29 - 1) + 48))(v28, 1, v29))
  {
    (*(v26 + 8))(v28, v25);
    v30 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v31 = sub_25268E310();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v28 + v30, 1, v31))
    {
      (*(v32 + 8))(v28 + v30, v31);
    }

    v33 = v29[6];
    v34 = sub_25268F130();
    v35 = *(v34 - 8);
    if (!(*(v35 + 48))(v28 + v33, 1, v34))
    {
      (*(v35 + 8))(v28 + v33, v34);
    }

    v36 = v29[8];
    v37 = sub_25268F8E0();
    (*(*(v37 - 8) + 8))(v28 + v36, v37);
    v38 = v29[11];
    v39 = sub_25268EDA0();
    v40 = *(v39 - 8);
    if (!(*(v40 + 48))(v28 + v38, 1, v39))
    {
      (*(v40 + 8))(v28 + v38, v39);
    }

    v44(v28 + v29[13], v14);
  }

  v41 = v49 + v27;
  v42 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v42 - 8) + 48))(v49 + v27, 1, v42))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    v45(v41 + *(v42 + 20), v5);
  }

  return MEMORY[0x2821FE8E8](v49, v27 + v47, v48 | v50 | 7);
}

uint64_t sub_25230CF08()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230D59C()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230DC30()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230E2C4()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230E96C()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230F004()
{
  v1 = type metadata accessor for HAPControlSolver.Source();
  v42 = *(*(v1 - 1) + 80);
  v40 = *(*(v1 - 1) + 64);
  v41 = (v42 + 16) & ~v42;
  v43 = v0;
  v2 = v0 + v41;
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = v1[5];
  v7 = sub_25268E530();
  v8 = *(*(v7 - 8) + 8);
  v8(v2 + v6, v7);
  v8(v2 + v1[6], v7);

  v9 = v1[9];
  v10 = sub_25268ED50();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v2 + v9, v10);
  }

  v12 = v1[12];
  v13 = sub_25268E2F0();
  v39 = *(*(v13 - 8) + 8);
  v39(v2 + v12, v13);

  v14 = v1[19];
  v15 = sub_25268FEB0();
  (*(*(v15 - 8) + 8))(v2 + v14, v15);
  v16 = v1[20];
  v17 = sub_25268F1A0();
  (*(*(v17 - 8) + 8))(v2 + v16, v17);
  v18 = v1[21];
  v19 = sub_25268EAF0();
  v20 = *(v19 - 8);
  if (!(*(v20 + 48))(v2 + v18, 1, v19))
  {
    (*(v20 + 8))(v2 + v18, v19);
  }

  v21 = v1[22];
  if (!(*(v4 + 48))(v2 + v21, 1, v3))
  {
    v5(v2 + v21, v3);
  }

  v22 = v1[23];
  v23 = sub_25268E710();
  v24 = *(v23 - 8);
  if (!(*(v24 + 48))(v2 + v22, 1, v23))
  {
    (*(v24 + 8))(v2 + v22, v23);
  }

  v25 = v2 + v1[24];
  v26 = type metadata accessor for MatterControlSolver.Source(0);
  if (!(*(*(v26 - 1) + 48))(v25, 1, v26))
  {
    (*(v24 + 8))(v25, v23);
    v27 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
    v28 = sub_25268E310();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v25 + v27, 1, v28))
    {
      (*(v29 + 8))(v25 + v27, v28);
    }

    v30 = v26[6];
    v31 = sub_25268F130();
    v32 = *(v31 - 8);
    if (!(*(v32 + 48))(v25 + v30, 1, v31))
    {
      (*(v32 + 8))(v25 + v30, v31);
    }

    v33 = v26[8];
    v34 = sub_25268F8E0();
    (*(*(v34 - 8) + 8))(v25 + v33, v34);
    v35 = v26[11];
    v36 = sub_25268EDA0();
    v37 = *(v36 - 8);
    if (!(*(v37 + 48))(v25 + v35, 1, v36))
    {
      (*(v37 + 8))(v25 + v35, v36);
    }

    v39(v25 + v26[13], v13);
  }

  return MEMORY[0x2821FE8E8](v43, v41 + v40, v42 | 7);
}

uint64_t sub_25230F6A4()
{
  v1 = (type metadata accessor for MatterControlSolver.SourcePath(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25268E710();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_25268E310();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25230F800()
{
  v1 = type metadata accessor for MatterControlSolver.Source(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_25268E710();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
  v8 = sub_25268E310();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[6];
  v11 = sub_25268F130();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = sub_25268F8E0();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[11];
  v16 = sub_25268EDA0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = v1[13];
  v19 = sub_25268E2F0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25230FAF8()
{
  v1 = sub_25268E710();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB448) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = sub_25268EDA0();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_25230FC94()
{
  v1 = sub_25268FC20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 17) & ~v3;
  v5 = *(v2 + 64) + v4;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 1, v3 | 7);
}

uint64_t sub_25230FD20()
{
  v1 = sub_25268FC20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25230FDA8()
{
  v1 = type metadata accessor for MatterControlSolver.Source(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_25268E710();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
  v8 = sub_25268E310();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[6];
  v11 = sub_25268F130();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = sub_25268F8E0();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[11];
  v16 = sub_25268EDA0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = v1[13];
  v19 = sub_25268E2F0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2523100A0()
{
  v1 = type metadata accessor for MatterControlSolver.Source(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_25268E710();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = *(type metadata accessor for MatterControlSolver.SourcePath(0) + 20);
  v8 = sub_25268E310();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[6];
  v11 = sub_25268F130();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v5 + v10, 1, v11))
  {
    (*(v12 + 8))(v5 + v10, v11);
  }

  v13 = v1[8];
  v14 = sub_25268F8E0();
  (*(*(v14 - 8) + 8))(v5 + v13, v14);
  v15 = v1[11];
  v16 = sub_25268EDA0();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v5 + v15, 1, v16))
  {
    (*(v17 + 8))(v5 + v15, v16);
  }

  v18 = v1[13];
  v19 = sub_25268E2F0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252310398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_252310450(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl.ValueDestination(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_2523105C0()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for ControlBinding();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(*(v2 - 8) + 64);
  swift_unknownObjectRelease();

  v6 = v0 + v4 + *(v2 + 36);
  v7 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    v8 = *(v7 + 20);
    v9 = sub_25268DA10();
    (*(*(v9 - 8) + 8))(v6 + v8, v9);
  }

  (*(*(v1 - 8) + 8))(v0 + v4 + *(v2 + 40), v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252310754()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for ControlBinding();
  v3 = *(*(v2 - 8) + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(*(v2 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v6 = v0 + v4;

  v7 = v0 + v4 + *(v2 + 36);
  v8 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    v9 = *(v8 + 20);
    v10 = sub_25268DA10();
    (*(*(v10 - 8) + 8))(v7 + v9, v10);
  }

  (*(*(v1 - 8) + 8))(v6 + *(v2 + 40), v1);
  if (*(v0 + v5))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252310900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessoryControl.State(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_252310A1C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AccessoryControl.State(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 8) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_252310B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252310B94(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_252310C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25268DA10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252310CC0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_25268DA10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252310D64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AccessoryControl.ValueDestination(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_252310E10(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessoryControl.ValueDestination(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252310EFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252310F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_252311008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_2523110CC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB8B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_252311188(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB8B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252311238()
{
  v1 = (type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v9 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  v10 = v1[7];
  v11 = sub_25268DA10();
  (*(*(v11 - 8) + 8))(v9 + v10, v11);
  v12 = v0 + v7;
  v13 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  if (!(*(*(v13 - 8) + 48))(v0 + v7, 1, v13))
  {

    v14 = *(v13 + 24);
    v15 = sub_25268F140();
    v16 = *(v15 - 8);
    if (!(*(v16 + 48))(v12 + v14, 1, v15))
    {
      (*(v16 + 8))(v12 + v14, v15);
    }
  }

  if (*(v0 + v8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + 16, v2 | v6 | 7);
}

uint64_t sub_2523114A0()
{
  v1 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {

    v7 = *(v6 + 24);
    v8 = sub_25268F140();
    v9 = *(v8 - 8);
    if (!(*(v9 + 48))(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }
  }

  if (*(v0 + v4))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + 16, v2 | 7);
}

uint64_t sub_252311660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for AccessoryControlGroup.Layout(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_252311770(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for AccessoryControlGroup.Layout(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25231187C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.ElementIdentifier();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = type metadata accessor for AccessoryControlModule.Layout(0);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_2523119B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl.ElementIdentifier();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = type metadata accessor for AccessoryControlModule.Layout(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_252311AEC()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252311B24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252311B5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_252311C28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268F0E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_252311CE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268F0E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 2;
  }

  return result;
}

uint64_t sub_252311D98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_252311DE0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 16) = v2;
  return result;
}

uint64_t sub_252311E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Device();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252311EF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Device();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252311FA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252312014(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD58);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252312084(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DBD50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252312104@<X0>(void *a1@<X8>)
{
  result = sub_252690F70();
  *a1 = v3;
  return result;
}

uint64_t sub_252312228@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252690F10();
  *a1 = result & 1;
  return result;
}

uint64_t sub_252312344()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

double sub_252312384@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = *(v3 + 32);
  *a2 = result;
  return result;
}

uint64_t sub_2523123CC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 32) = v2;
  return result;
}

uint64_t sub_252312418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 40);
  return result;
}

uint64_t sub_252312460(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_252312514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2523125F4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_25231262C()
{

  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252312674()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2523126BC()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC390);
  sub_252400FC8(&qword_27F4DC398, &qword_27F4DC390);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252312768()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC458);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC460);
  sub_25242DB20();
  sub_25242DF68();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252312834(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2523128F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DC848);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252312A3C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DCA10);
  sub_252690C30();
  sub_252431F50();
  return swift_getWitnessTable();
}

void sub_252312ABC(uint64_t *a1@<X8>)
{
  v2 = 0x746573657250;
  if (*v1)
  {
    v2 = 0x796772656E45;
  }

  *a1 = v2;
  a1[1] = 0xE600000000000000;
}

uint64_t sub_252312AF4()
{
  sub_252692C80();
}

uint64_t sub_252312B58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268ED70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_252312C24(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268ED70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_252312CDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCA28);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 7;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_252312DB8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DCA28);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 32);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36) + 8) = (a2 + 7);
  }

  return result;
}

uint64_t sub_252312ED4(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252312F20(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252312FDC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB458);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25231308C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 7;
    v14 = v13 <= 0;
    if (v13 < 0)
    {
      v13 = -1;
    }

    if (v14)
    {
      return 0;
    }

    else
    {
      return v13;
    }
  }
}

uint64_t sub_252313168(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB300);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 + 7);
  }

  return result;
}

uint64_t sub_25231327C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = type metadata accessor for ControlTextModifier.Config(0);
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[6];
      goto LABEL_3;
    }

    v15 = type metadata accessor for AccessoryControl.StatusProvider();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[11];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2523133FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = type metadata accessor for ControlTextModifier.Config(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = type metadata accessor for AccessoryControl.StatusProvider();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[11];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25231357C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = sub_25268EEA0();
    v14 = *(v13 - 8);
    if (*(v14 + 84) == a2)
    {
      v8 = v13;
      v9 = *(v14 + 48);
      v10 = a1 + a3[7];
      goto LABEL_3;
    }

    v15 = type metadata accessor for AccessoryControl.StatusProvider();
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[14];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_2523136FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = sub_25268EEA0();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[7];
    goto LABEL_3;
  }

  v15 = type metadata accessor for AccessoryControl.StatusProvider();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_25231387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268F0E0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return v10 - 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_252313934(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268F0E0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

uint64_t sub_2523139EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_252313AA8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252313B58(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessoryControl.StatusProvider();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_252313C88(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for AccessoryControl.StatusProvider();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_252313DC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252313E34(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_252313EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252313F64(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252314028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for ControlAction(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_252314118(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for ControlAction(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25231421C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2523142C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessoryControl.AlarmAndTimerConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252314388()
{
  v1 = (type metadata accessor for AlarmAndTimerControlView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[7];
  v6 = sub_25268DA10();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252314478(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 56);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25268DA10();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252314524(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 56) = (a2 - 1);
  }

  else
  {
    v7 = sub_25268DA10();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25231460C()
{
  v1 = type metadata accessor for AlarmAndTimerControlContentView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  if (*(v0 + v3 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + v3);
  }

  else
  {
  }

  v6 = *(v1 + 24);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = v5 + *(v1 + 28);
  sub_252457A80(*v8, *(v8 + 8), *(v8 + 16), *(v8 + 24), *(v8 + 32), *(v8 + 40), *(v8 + 48), *(v8 + 56), *(v8 + 64), *(v8 + 65));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2523147A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268E5F0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 40);
    if (v10 > 1)
    {
      return (v10 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_252314860(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268E5F0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 40) = -a2;
  }

  return result;
}

uint64_t sub_25231494C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25268DA10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25268DF70();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_252314A70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
  }

  else
  {
    v8 = sub_25268DA10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25268DF70();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_252314B9C@<X0>(uint64_t a1@<X8>)
{
  result = MEMORY[0x2530A29F0]();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_252314C14()
{
  v1 = type metadata accessor for AlarmsControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_252457A80(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48), *(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 65));
  if (*(v0 + v3 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 72);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v1 + 32);
  v9 = sub_25268DF70();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252314DA4()
{
  v1 = sub_25268E5F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252314E2C()
{
  v1 = sub_25268E5F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252314F64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268E6B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252315020(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268E6B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2523150DC()
{
  v1 = *(type metadata accessor for DeleteButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25268E6B0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2523151A8()
{
  v1 = *(type metadata accessor for DeleteButton(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_25268E6B0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252315288()
{
  v1 = *(type metadata accessor for CountDownTimer(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = sub_25268E6B0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252315390()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD660);
  sub_252463464();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_2523153F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD690);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DD688);
  sub_25268E6B0();
  sub_252400FC8(&qword_27F4DD6B0, &qword_27F4DD688);
  sub_252463978(&qword_27F4DD6B8, MEMORY[0x277D15948]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25231552C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 120);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25268DA10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25268DF70();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_252315650(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 120) = (a2 - 1);
  }

  else
  {
    v8 = sub_25268DA10();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25268DF70();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_252315790()
{
  v1 = type metadata accessor for TimersControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  sub_252457A80(*(v0 + v3), *(v0 + v3 + 8), *(v0 + v3 + 16), *(v0 + v3 + 24), *(v0 + v3 + 32), *(v0 + v3 + 40), *(v0 + v3 + 48), *(v0 + v3 + 56), *(v0 + v3 + 64), *(v0 + v3 + 65));
  if (*(v0 + v3 + 112))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v5 + 72);
  }

  else
  {
  }

  v6 = *(v1 + 28);
  v7 = sub_25268DA10();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);
  v8 = *(v1 + 32);
  v9 = sub_25268DF70();
  (*(*(v9 - 8) + 8))(v5 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252315970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = _s17FavoriteColorCellV5ValueOMa(0);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_252315A98(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = _s17FavoriteColorCellV5ValueOMa(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_252315BAC()
{
  v1 = _s17FavoriteColorCellVMa(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_252690850();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = *(v1 + 20);
  _s17FavoriteColorCellV5ValueOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v8 = sub_25268ED20();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_9;
    }

    v8 = sub_25268F860();
  }

  (*(*(v8 - 8) + 8))(v0 + v3 + v6, v8);
LABEL_9:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252315D38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD810);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252315DF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252315EBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDA48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252315F4C()
{
  v1 = sub_252690A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = *(v2 + 64);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252316040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25231610C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2523161D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25231626C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_2523163A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDC58);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2523164E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDB40);
  sub_252400FC8(&qword_27F4DDB50, &qword_27F4DDB40);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252316580()
{
  v1 = sub_252690A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = _s6SliderVMa(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;

  v11 = *(v6 + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDBC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_252690BA0();
    (*(*(v12 - 8) + 8))(v10 + v11, v12);
  }

  else
  {
  }

  v13 = *(v6 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD210);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_252690850();
    (*(*(v14 - 8) + 8))(v10 + v13, v14);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_2523167C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25231689C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28) + 8) = a2;
  }

  return result;
}

uint64_t sub_252316988()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDDD8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB2A0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDDD0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DDDC8);
  sub_252400FC8(&qword_27F4DDE28, &qword_27F4DDDC8);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_25247CB38();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252316AF4()
{

  sub_25235E264(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_252316BE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252316C20()
{
  v1 = sub_252690A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252316CEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252316D2C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252316D74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268ED20();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252316E30(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268ED20();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252316EE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252316F60(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_252316FEC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_2523170A4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = _s21ColorSwatchPickerViewV9CellValueOMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25231718C()
{
  v1 = sub_25268ED20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = (_s21ColorSwatchPickerViewV9ColorCellVMa(0) - 8);
  v7 = *(*v6 + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*v6 + 64);
  v10 = *(v2 + 8);
  v10(v0 + v4, v1);
  v11 = v0 + v8;

  sub_25235E264(*(v11 + 16), *(v11 + 24));
  v12 = v6[8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE200);
  if (!(*(*(v13 - 8) + 48))(v0 + v8 + v12, 1, v13))
  {
    v10(v11 + v12, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_252317334(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_25268ED20();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_252317430(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_25268ED20();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_252317588(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_25231765C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DD740);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t sub_25231780C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_25231784C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25231791C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2523179EC()
{
  v1 = sub_252690CE0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for ColorControl(0);
  v7 = *(*(v6 - 8) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v16 = *(*(v6 - 8) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v9 = v0 + v8;
  sub_25235E264(*(v0 + v8), *(v0 + v8 + 8));
  sub_25235E264(*(v9 + 16), *(v9 + 24));
  sub_252457A80(*(v9 + 32), *(v9 + 40), *(v9 + 48), *(v9 + 56), *(v9 + 64), *(v9 + 72), *(v9 + 80), *(v9 + 88), *(v9 + 96), *(v9 + 97));
  v10 = v0 + v8 + *(v6 + 28);

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DE658) + 32);
  v12 = type metadata accessor for AccessoryControl.ColorState(0);
  if (!(*(*(v12 - 8) + 48))(v10 + v11, 1, v12))
  {
    v13 = sub_25268ED20();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v10 + v11, 1, v13))
    {
      (*(v14 + 8))(v10 + v11, v13);
    }
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v16, v3 | v7 | 7);
}

uint64_t sub_252317C90()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252317CCC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252317D14(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268ED20();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_252317D80(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25268ED20();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_252317E78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_252317F50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = a2;
  }

  return result;
}

uint64_t sub_252318018()
{
  v1 = *(_s18ColorControlCircleVMa() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_25268ED20();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252318158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTextModifier.Config(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2523181C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlTextModifier.Config(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25231827C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25231829C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t sub_2523182D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252318348(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEBF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2523183B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ValueThrottleModifier.Config(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_252318470(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ValueThrottleModifier.Config(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25231852C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_25268ED70();
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[6];
  }

  else
  {
    v10 = sub_25268EEA0();
    if (*(*(v10 - 8) + 84) != a2)
    {
      v13 = *(a1 + a3[8]);
      if (v13 >= 2)
      {
        return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
      }

      else
      {
        return 0;
      }
    }

    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[7];
  }

  v11 = *(v8 + 48);

  return v11(a1 + v9, a2, v7);
}

uint64_t sub_252318644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_25268ED70();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
  }

  else
  {
    result = sub_25268EEA0();
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[8]) = a2 + 1;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[7];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

__n128 sub_2523187E0(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_252318908()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252318944()
{

  if (*(v0 + 48))
  {
  }

  sub_25235E264(*(v0 + 128), *(v0 + 136));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2523189D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DEF58);
  type metadata accessor for SelectionPickerView(255);
  sub_252400FC8(&qword_27F4DEF60, &qword_27F4DEF58);
  sub_2524ABE74(&qword_27F4DEF68, type metadata accessor for SelectionPickerView);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252318AB8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252318B00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252318BBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252318CB8()
{
  v1 = *(type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v9 = sub_25268DA10();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = sub_25268DA10();
    (*(*(v10 - 8) + 8))(v0 + v7, v10);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_252318E84()
{
  v1 = (type metadata accessor for SelectionPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  swift_unknownObjectRelease();

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 80, v2 | 7);
}

uint64_t sub_252318FF8@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2530A29B0]();
  *a1 = result;
  return result;
}

uint64_t sub_252319050()
{
  v1 = (type metadata accessor for SelectionPickerView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_252319198()
{
  v1 = *(type metadata accessor for SelectionPickerView.ToggleableItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = sub_25268DA10();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 17, v2 | 7);
}

uint64_t sub_2523192C4()
{
  v1 = *(type metadata accessor for SelectionPickerView.ToggleableItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v5 = sub_25268DA10();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_2523193E0()
{
  v1 = *(type metadata accessor for SelectionPickerView.ToggleableItem(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for SelectionPickerView(0);
  v6 = *(*(v5 - 8) + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(*(v5 - 8) + 64);
  swift_unknownObjectRelease();

  v9 = v0 + v3;
  type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v10 = sub_25268DA10();
    (*(*(v10 - 8) + 8))(v9, v10);
  }

  v11 = *(v5 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2526909E0();
    (*(*(v12 - 8) + 8))(v0 + v7 + v11, v12);
  }

  else
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((v8 + v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_252319618(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionPickerView.ToggleableItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_252319684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectionPickerView.ToggleableItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2523196F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2523197B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252319948()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252319980()
{
  v1 = sub_2526919A0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252319A08()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252319A50()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF328);
  sub_2524B6D18();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252319AC0()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_252319B28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF3F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252319B98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF3F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252319C00()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF3F8);
  sub_252693130();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBFB0);
  sub_252690C30();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DBDF8);
  sub_252690C30();
  swift_getWitnessTable();
  sub_2524B928C(&qword_27F4DBFA8, &qword_27F4DBFB0);
  swift_getWitnessTable();
  sub_2524B928C(&qword_27F4DBDF0, &qword_27F4DBDF8);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DC110);
  sub_252690C30();
  swift_getTupleTypeMetadata2();
  sub_252692A00();
  swift_getWitnessTable();
  sub_252692630();
  sub_252690C30();
  sub_252690C30();
  sub_252690C30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_252692590();
  swift_getWitnessTable();
  sub_2524B90A0();
  swift_getOpaqueTypeMetadata2();
  swift_getOpaqueTypeConformance2();
  sub_252692650();
  sub_252690C30();
  sub_252690C30();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_252319FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25231A0A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25231A17C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF440);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DF448);
  sub_2524BA530();
  type metadata accessor for StatusDetailsView(255);
  sub_2524BA594();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25231A248(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6] + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_25231A38C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6] + 16) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_25231A4E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25231A554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF4F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25231A5BC()
{
  v1 = type metadata accessor for StatusDetailsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(type metadata accessor for StatusDetailsView.ListItem(0) - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v3 + v4 + v6;
  v9 = v0 + v3;
  v10 = v0 + v3 + *(v1 + 20);

  v11 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF420) + 32);
  v12 = type metadata accessor for AccessoryControl.StatusButtonState(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {

    v13 = v11 + *(v12 + 24);
    v14 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
    if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 2)
      {
      }

      else if (EnumCaseMultiPayload <= 1)
      {
        type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v20 = sub_25268DA10();
          (*(*(v20 - 8) + 8))(v13, v20);
        }
      }
    }
  }

  v15 = v8 & ~v6;

  v16 = *(v1 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2526909E0();
    (*(*(v17 - 8) + 8))(v9 + v16, v17);
  }

  else
  {
  }

  type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v18 = sub_25268DA10();
    (*(*(v18 - 8) + 8))(v0 + v15, v18);
  }

  return MEMORY[0x2821FE8E8](v0, v15 + v7, v2 | v6 | 7);
}

uint64_t sub_25231A938@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2526910C0();
  *a1 = result;
  return result;
}

uint64_t sub_25231A990(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusDetailsView.ListItem(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25231A9FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StatusDetailsView.ListItem(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_25231AA6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25231AB2C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25231AC70()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_25231AD14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24) + 16);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_25231ADE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24) + 16) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25231AECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268DA10();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_25231AF88(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_25268DA10();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25231B040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25231B13C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF678);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for AutoClimateControlView.LabelPickerView.Config(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25231B250(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF818);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25231B2B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DF820);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25231B398@<X0>(uint64_t *a1@<X8>)
{
  result = sub_252690ED0();
  *a1 = result;
  return result;
}

uint64_t sub_25231B3F0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = sub_25268E350();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = sub_2526904A0();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[15];

  return v18(v19, a2, v17);
}

uint64_t sub_25231B5C8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_25268E350();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = sub_2526904A0();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

uint64_t sub_25231B7A0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFB18);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_10:

    return v9(v10, a2, v8);
  }

  v11 = sub_252690490();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_9:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_10;
  }

  v14 = sub_25268F260();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[6];
    goto LABEL_9;
  }

  v15 = sub_25268F9F0();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v8 = v15;
    v12 = *(v15 - 8);
    v13 = a3[7];
    goto LABEL_9;
  }

  v17 = sub_2526904A0();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[8];

  return v18(v19, a2, v17);
}

uint64_t sub_25231B97C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFB18);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_252690490();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = sub_25268F260();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[6];
    goto LABEL_9;
  }

  v17 = sub_25268F9F0();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[7];
    goto LABEL_9;
  }

  v19 = sub_2526904A0();
  v20 = *(*(v19 - 8) + 56);
  v21 = a1 + a4[8];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_25231BB64(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_252690080();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_25231BC10(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_252690080();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_25231BD00(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_2526904A0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_25231BE30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_2526904A0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25231BF60()
{
  v1 = type metadata accessor for ThermostatAutomationSettingsView.PresetOptionView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*(v1 - 1) + 64);
  v4 = sub_252690490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;

  v9 = v1[5];
  if (!(*(v5 + 48))(v0 + v3 + v9, 1, v4))
  {
    (*(v5 + 8))(v8 + v9, v4);
  }

  v10 = v1[7];
  v11 = sub_2526904A0();
  (*(*(v11 - 8) + 8))(v8 + v10, v11);
  if (*(v8 + v1[8] + 8))
  {
  }

  v12 = v2 | v6;
  v13 = (v3 + v15 + v6) & ~v6;
  (*(v5 + 8))(v0 + v13, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + v7, v12 | 7);
}

uint64_t sub_25231C148(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25231C1B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFDC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25231C220()
{
  v1 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v5 + v1[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v8 - 8) + 8))(v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  if (*(v5 + v1[8] + 8))
  {
  }

  v9 = v1[13];
  v10 = sub_25268E350();
  (*(*(v10 - 8) + 8))(v5 + v9, v10);
  v11 = v1[15];
  v12 = sub_2526904A0();
  (*(*(v12 - 8) + 8))(v5 + v11, v12);
  if (*(v5 + v1[16]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_25231C4C4()
{
  v1 = type metadata accessor for ThermostatAutomationSettingsView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v18 = *(*(v1 - 1) + 64);
  v4 = sub_25268DD80();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2526909E0();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v8 + v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  if (*(v8 + v1[8] + 8))
  {
  }

  v12 = v1[13];
  v13 = sub_25268E350();
  (*(*(v13 - 8) + 8))(v8 + v12, v13);
  v14 = v1[15];
  v15 = sub_2526904A0();
  (*(*(v15 - 8) + 8))(v8 + v14, v15);
  if (*(v8 + v1[16]))
  {
  }

  v16 = (v3 + v18 + v6) & ~v6;
  (*(v5 + 8))(v0 + v16, v4);

  return MEMORY[0x2821FE8E8](v0, v16 + v7, v2 | v6 | 7);
}

uint64_t sub_25231C81C()
{
  type metadata accessor for StackedLabelViewModifier();
  swift_getWitnessTable();
  sub_2526915A0();
  swift_getTupleTypeMetadata2();
  sub_252692A00();
  swift_getWitnessTable();
  sub_252692630();
  swift_getTupleTypeMetadata3();
  sub_252692A00();
  swift_getWitnessTable();
  sub_2526925C0();
  sub_252691480();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_25231CA04(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_18:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[7];
LABEL_17:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_18;
  }

  v16 = sub_25268E350();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_17;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[9];
    goto LABEL_17;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v14 = *(v18 - 8);
    v15 = a3[10];
    goto LABEL_17;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v14 = *(v19 - 8);
    v15 = a3[11];
    goto LABEL_17;
  }

  v20 = sub_2526904A0();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[16];

  return v21(v22, a2, v20);
}

uint64_t sub_25231CCD4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEFB8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_16:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB250);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[7];
LABEL_15:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_16;
  }

  v16 = sub_25268E350();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_15;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[9];
    goto LABEL_15;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[10];
    goto LABEL_15;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[11];
    goto LABEL_15;
  }

  v20 = sub_2526904A0();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[16];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_25231CFA8()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v4 = sub_252690490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2526909E0();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v1[7];
  if (!(*(v5 + 48))(v8 + v10, 1, v4))
  {
    (*(v5 + 8))(v8 + v10, v4);
  }

  v11 = v1[8];
  v12 = sub_25268E350();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = v8 + v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v15 = v8 + v1[10];
  v16 = sub_25268F260();
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v17 = v8 + v1[11];
  v18 = sub_25268F9F0();
  (*(*(v18 - 8) + 8))(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v8 + v1[14] + 8))
  {
  }

  v19 = v1[16];
  v20 = sub_2526904A0();
  (*(*(v20 - 8) + 8))(v8 + v19, v20);
  if (*(v8 + v1[17]))
  {
  }

  v21 = (v3 + v23 + v6) & ~v6;
  (*(v5 + 8))(v0 + v21, v4);

  return MEMORY[0x2821FE8E8](v0, v21 + v7, v2 | v6 | 7);
}

uint64_t sub_25231D3D8()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v31 = *(*(v1 - 1) + 80);
  v2 = (v31 + 32) & ~v31;
  v29 = *(*(v1 - 1) + 64);
  v32 = sub_2526900B0();
  v3 = *(v32 - 8);
  v4 = *(v3 + 80);
  v26 = *(v3 + 64);
  v28 = sub_25268E200();
  v5 = *(v28 - 8);
  v6 = *(v5 + 80);
  v27 = *(v5 + 64);
  swift_unknownObjectRelease();
  v30 = v2;
  v7 = v0 + v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = sub_2526909E0();
    (*(*(v8 - 8) + 8))(v0 + v2, v8);
  }

  else
  {
  }

  v9 = v1[7];
  v10 = sub_252690490();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v7 + v9, 1, v10))
  {
    (*(v11 + 8))(v7 + v9, v10);
  }

  v12 = v1[8];
  v13 = sub_25268E350();
  (*(*(v13 - 8) + 8))(v7 + v12, v13);
  v14 = v7 + v1[9];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v16 = v7 + v1[10];
  v17 = sub_25268F260();
  (*(*(v17 - 8) + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v18 = v7 + v1[11];
  v19 = sub_25268F9F0();
  (*(*(v19 - 8) + 8))(v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v7 + v1[14] + 8))
  {
  }

  v20 = v1[16];
  v21 = sub_2526904A0();
  (*(*(v21 - 8) + 8))(v7 + v20, v21);
  if (*(v7 + v1[17]))
  {
  }

  v22 = v31 | v4 | v6;
  v23 = (v30 + v29 + v4) & ~v4;
  v24 = (v23 + v26 + v6) & ~v6;
  (*(v3 + 8))(v0 + v23, v32);
  (*(v5 + 8))(v0 + v24, v28);

  return MEMORY[0x2821FE8E8](v0, v24 + v27, v22 | 7);
}

uint64_t sub_25231D8E0()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_2526909E0();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
  }

  v7 = v1[7];
  v8 = sub_252690490();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v5 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = v1[8];
  v11 = sub_25268E350();
  (*(*(v11 - 8) + 8))(v5 + v10, v11);
  v12 = v5 + v1[9];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v13 - 8) + 8))(v12, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v14 = v5 + v1[10];
  v15 = sub_25268F260();
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v16 = v5 + v1[11];
  v17 = sub_25268F9F0();
  (*(*(v17 - 8) + 8))(v16, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v5 + v1[14] + 8))
  {
  }

  v18 = v1[16];
  v19 = sub_2526904A0();
  (*(*(v19 - 8) + 8))(v5 + v18, v19);
  if (*(v5 + v1[17]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, ((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_25231DD38()
{
  v1 = type metadata accessor for ThermostatPresetsDetailView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v23 = *(*(v1 - 1) + 64);
  v4 = sub_252690490();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  swift_unknownObjectRelease();
  v8 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DEF70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_2526909E0();
    (*(*(v9 - 8) + 8))(v0 + v3, v9);
  }

  else
  {
  }

  v10 = v1[7];
  if (!(*(v5 + 48))(v8 + v10, 1, v4))
  {
    (*(v5 + 8))(v8 + v10, v4);
  }

  v11 = v1[8];
  v12 = sub_25268E350();
  (*(*(v12 - 8) + 8))(v8 + v11, v12);
  v13 = v8 + v1[9];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v14 - 8) + 8))(v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v15 = v8 + v1[10];
  v16 = sub_25268F260();
  (*(*(v16 - 8) + 8))(v15, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFEF8);

  v17 = v8 + v1[11];
  v18 = sub_25268F9F0();
  (*(*(v18 - 8) + 8))(v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFF00);

  if (*(v8 + v1[14] + 8))
  {
  }

  v19 = v1[16];
  v20 = sub_2526904A0();
  (*(*(v20 - 8) + 8))(v8 + v19, v20);
  if (*(v8 + v1[17]))
  {
  }

  v21 = (v23 + v3 + v6 + 1) & ~v6;
  (*(v5 + 8))(v0 + v21, v4);

  return MEMORY[0x2821FE8E8](v0, v21 + v7, v2 | v6 | 7);
}

uint64_t sub_25231E1C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_25268E350();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_25231E2F8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_25268E350();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_25231E42C()
{
  v1 = sub_252691960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25231E4F8()
{
  v1 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3 + v1[7];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v6 - 8) + 8))(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v7 = v1[11];
  v8 = sub_25268E350();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  if (*(v0 + v3 + v1[12] + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25231E6C0()
{
  v1 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v15 = *(*v1 + 64);
  v4 = sub_25268DE60();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);

  v8 = v0 + v3 + v1[7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v9 - 8) + 8))(v8, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v10 = v1[11];
  v11 = sub_25268E350();
  (*(*(v11 - 8) + 8))(v0 + v3 + v10, v11);
  if (*(v0 + v3 + v1[12] + 8))
  {
  }

  v12 = (v3 + v15 + v6) & ~v6;
  v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v5 + 8))(v0 + v12, v4);

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | v6 | 7);
}

uint64_t sub_25231E918()
{
  v1 = sub_25268DE60();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v7 = *(*v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(*v6 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  v10 = v0 + v8 + v6[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v12 = v6[11];
  v13 = sub_25268E350();
  (*(*(v13 - 8) + 8))(v0 + v8 + v12, v13);
  if (*(v0 + v8 + v6[12] + 8))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_25231EB6C()
{
  v1 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  swift_unknownObjectRelease();
  v9 = v0 + v3;

  v10 = v0 + v3 + v1[7];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v11 - 8) + 8))(v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v12 = v1[11];
  v13 = sub_25268E350();
  (*(*(v13 - 8) + 8))(v9 + v12, v13);
  if (*(v9 + v1[12] + 8))
  {
  }

  v14 = sub_25268DDC0();
  v15 = *(v14 - 8);
  if (!(*(v15 + 48))(v0 + v7, 1, v14))
  {
    (*(v15 + 8))(v0 + v7, v14);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_25231EE38()
{
  v1 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25268DDC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v11 = *(v10 + 80);
  v20 = v8;
  v12 = (v8 + v9 + v11) & ~v11;
  v21 = *(v10 + 64);
  v13 = v0 + v3;

  v14 = v0 + v3 + v1[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v16 = v1[11];
  v17 = sub_25268E350();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);
  if (*(v13 + v1[12] + 8))
  {
  }

  v18 = *(v6 + 8);
  v18(v0 + v20, v5);
  if (!(*(v6 + 48))(v0 + v12, 1, v5))
  {
    v18(v0 + v12, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v21, v2 | v7 | v11 | 7);
}

uint64_t sub_25231F14C()
{
  v1 = (type metadata accessor for ThermostatPresetsDetailView.HomePresenceView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_25268DDC0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v3 + v4 + v7) & ~v7;
  v9 = *(v6 + 64);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0518) - 8);
  v11 = *(v10 + 80);
  v20 = v8;
  v12 = (v8 + v9 + v11) & ~v11;
  v21 = *(v10 + 64);
  swift_unknownObjectRelease();
  v13 = v0 + v3;

  v14 = v0 + v3 + v1[7];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA98);
  (*(*(v15 - 8) + 8))(v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFAA0);

  v16 = v1[11];
  v17 = sub_25268E350();
  (*(*(v17 - 8) + 8))(v13 + v16, v17);
  if (*(v13 + v1[12] + 8))
  {
  }

  v18 = *(v6 + 8);
  v18(v0 + v20, v5);
  if (!(*(v6 + 48))(v0 + v12, 1, v5))
  {
    v18(v0 + v12, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v12 + v21, v2 | v7 | v11 | 7);
}

uint64_t sub_25231F488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268E350();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_25231F584(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25268E350();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFA18);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_25231F6BC()
{
  v1 = sub_25268DD00();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + v5, v3 | 7);
}

uint64_t sub_25231F7B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFB18);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_25231F8D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E06E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DFB18);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_25231FA04()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_25231FAA4()
{
  v1 = sub_252691780();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_25231FB2C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E08B0);
  sub_252400FC8(&qword_27F4E08C0, &qword_27F4E08B0);
  sub_252509270();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_25231FE88()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25231FF70()
{
  v1 = type metadata accessor for RingControlView.KnobsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8) + 32);
  _s9KnobStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = sub_25268DA10();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v5, 2, v9))
    {
      (*(v10 + 8))(v5, v9);
    }

    _s4KnobVMa(0);

    v12 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v11(v12, 2, v9))
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    v7 = sub_25268DA10();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5, 2, v7))
    {
      (*(v8 + 8))(v5, v7);
    }

    _s4KnobVMa(0);
  }

LABEL_11:

  sub_25235E264(*(v0 + v3 + *(v1 + 32)), *(v0 + v3 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 32, v2 | 7);
}

uint64_t sub_252320274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_252320348(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  return result;
}

uint64_t sub_25232040C()
{
  v1 = type metadata accessor for RingControlView.KnobsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = *(_s4KnobV2IDOMa(0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = v0 + v3;

  v10 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8) + 32);
  _s9KnobStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = sub_25268DA10();
    v15 = *(v14 - 8);
    v20 = *(v15 + 48);
    if (!v20(v10, 2, v14))
    {
      (*(v15 + 8))(v10, v14);
    }

    _s4KnobVMa(0);

    v16 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v20(v16, 2, v14))
    {
      (*(v15 + 8))(v16, v14);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    v12 = sub_25268DA10();
    v13 = *(v12 - 8);
    if (!(*(v13 + 48))(v10, 2, v12))
    {
      (*(v13 + 8))(v10, v12);
    }

    _s4KnobVMa(0);
  }

LABEL_11:

  sub_25235E264(*(v9 + *(v1 + 32)), *(v9 + *(v1 + 32) + 8));

  v17 = sub_25268DA10();
  v18 = *(v17 - 8);
  if (!(*(v18 + 48))(v0 + v7, 2, v17))
  {
    (*(v18 + 8))(v0 + v7, v17);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + v8, v2 | v6 | 7);
}

uint64_t sub_2523207D8()
{
  v1 = type metadata accessor for RingControlView.KnobsView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8) + 32);
  _s9KnobStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = v4;
    v9 = sub_25268DA10();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v5, 2, v9))
    {
      (*(v10 + 8))(v5, v9);
    }

    _s4KnobVMa(0);

    v12 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v11(v12, 2, v9))
    {
      (*(v10 + 8))(v12, v9);
    }

    v4 = v14;
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_12;
    }

    v7 = sub_25268DA10();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5, 2, v7))
    {
      (*(v8 + 8))(v5, v7);
    }

    _s4KnobVMa(0);
  }

LABEL_12:

  sub_25235E264(*(v0 + v3 + *(v1 + 32)), *(v0 + v3 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252320AD0()
{
  v1 = _s13TapTargetViewVMa();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8) + 32);
  _s9KnobStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = sub_25268DA10();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v5, 2, v9))
    {
      (*(v10 + 8))(v5, v9);
    }

    _s4KnobVMa(0);

    v12 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v11(v12, 2, v9))
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    v7 = sub_25268DA10();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5, 2, v7))
    {
      (*(v8 + 8))(v5, v7);
    }

    _s4KnobVMa(0);
  }

LABEL_11:
  if (*(v0 + v3 + *(v1 + 24)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252320DAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252320E2C()
{
  v1 = *(_s16ProgressDotsViewVMa(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  _s9KnobStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v8 = sub_25268DA10();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v0 + v3, 2, v8))
    {
      (*(v9 + 8))(v0 + v3, v8);
    }

    _s4KnobVMa(0);

    v11 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v10(v11, 2, v8))
    {
      (*(v9 + 8))(v11, v8);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    v6 = sub_25268DA10();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 2, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }

    _s4KnobVMa(0);
  }

LABEL_11:

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25232112C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s4KnobV2IDOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2523211E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s4KnobV2IDOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2523212A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DA10();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25232130C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_25268DA10();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_252321394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 44));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 48);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_2523214D0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 44)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 48);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_25232160C()
{
  v1 = type metadata accessor for ThermostatControlView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = _s9KnobStateOMa(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = v3 + v4 + v7;
  v46 = *(v6 + 64);
  swift_unknownObjectRelease();
  v9 = v0 + v3;

  v10 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20) + 32);
  v11 = type metadata accessor for AccessoryControl.ThermostatState(0);
  if ((*(*(v11 - 8) + 48))(v10, 1, v11))
  {
    goto LABEL_5;
  }

  v42 = v7;
  v44 = v2;
  v12 = v10 + *(v11 + 32);
  v13 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v20 - 8) + 48))(v12, 1, v20))
      {
        goto LABEL_3;
      }

      v39 = *(v20 + 48);
      v21 = sub_25268D990();
      (*(*(v21 - 8) + 8))(v12 + v39, v21);
    }

    else
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v20 - 8) + 48))(v12, 3, v20))
      {
        goto LABEL_3;
      }

      v41 = *(v20 + 48);
      v33 = sub_25268D990();
      v37 = *(v33 - 8);
      v38 = v33;
      if (!(*(v37 + 48))(v12 + v41, 1))
      {
        (*(v37 + 8))(v12 + v41, v38);
      }
    }

    v34 = *(v20 + 64);
    v35 = sub_25268DB10();
    (*(*(v35 - 8) + 8))(v12 + v34, v35);
  }

LABEL_3:
  v7 = v42;
  v2 = v44;
  if (*(v10 + *(v11 + 36) + 8) >= 8uLL)
  {
  }

LABEL_5:
  v14 = v8 & ~v7;

  sub_25235E264(*(v9 + v1[8]), *(v9 + v1[8] + 8));
  v15 = v9 + v1[9];
  sub_252457A80(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), *(v15 + 32), *(v15 + 40), *(v15 + 48), *(v15 + 56), *(v15 + 64), *(v15 + 65));

  v16 = v9 + v1[12];
  if ((*(v6 + 48))(v16, 1, v5))
  {
    goto LABEL_19;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v43 = v7;
    v45 = v2;
    v22 = sub_25268DA10();
    v23 = *(v22 - 8);
    v40 = *(v23 + 48);
    if (!v40(v16, 2, v22))
    {
      (*(v23 + 8))(v16, v22);
    }

    _s4KnobVMa(0);

    v24 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v40(v24, 2, v22))
    {
      (*(v23 + 8))(v24, v22);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_19;
    }

    v43 = v7;
    v45 = v2;
    v18 = sub_25268DA10();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v16, 2, v18))
    {
      (*(v19 + 8))(v16, v18);
    }

    _s4KnobVMa(0);
  }

  v7 = v43;
  v2 = v45;
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28);

  v25 = swift_getEnumCaseMultiPayload();
  if (v25 == 2)
  {
    v28 = v2;
    v29 = sub_25268DA10();
    v30 = *(v29 - 8);
    v31 = *(v30 + 48);
    if (!v31(v0 + v14, 2, v29))
    {
      (*(v30 + 8))(v0 + v14, v29);
    }

    _s4KnobVMa(0);

    v32 = v0 + v14 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v31(v32, 2, v29))
    {
      (*(v30 + 8))(v32, v29);
    }

    v2 = v28;
  }

  else
  {
    if (v25 > 1)
    {
      goto LABEL_30;
    }

    v26 = sub_25268DA10();
    v27 = *(v26 - 8);
    if (!(*(v27 + 48))(v0 + v14, 2, v26))
    {
      (*(v27 + 8))(v0 + v14, v26);
    }

    _s4KnobVMa(0);
  }

LABEL_30:

  return MEMORY[0x2821FE8E8](v0, v14 + v46, v2 | v7 | 7);
}

uint64_t sub_252321E60()
{
  v1 = type metadata accessor for ThermostatControlView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;

  v6 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C20) + 32);
  v7 = type metadata accessor for AccessoryControl.ThermostatState(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    goto LABEL_5;
  }

  v8 = v6 + *(v7 + 32);
  v9 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
      if ((*(*(v16 - 8) + 48))(v8, 1, v16))
      {
        goto LABEL_3;
      }

      v32 = v4;
      v17 = *(v16 + 48);
      v18 = sub_25268D990();
      (*(*(v18 - 8) + 8))(v8 + v17, v18);
    }

    else
    {
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
      if ((*(*(v16 - 8) + 48))(v8, 3, v16))
      {
        goto LABEL_3;
      }

      v32 = v4;
      v22 = *(v16 + 48);
      v23 = sub_25268D990();
      v29 = *(v23 - 8);
      v31 = v22;
      v24 = v8 + v22;
      v25 = v23;
      if (!(*(v29 + 48))(v24, 1, v23))
      {
        (*(v29 + 8))(v8 + v31, v25);
      }
    }

    v26 = *(v16 + 64);
    v27 = sub_25268DB10();
    (*(*(v27 - 8) + 8))(v8 + v26, v27);
    v4 = v32;
  }

LABEL_3:
  if (*(v6 + *(v7 + 36) + 8) >= 8uLL)
  {
  }

LABEL_5:

  sub_25235E264(*(v5 + v1[8]), *(v5 + v1[8] + 8));
  v10 = v5 + v1[9];
  sub_252457A80(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32), *(v10 + 40), *(v10 + 48), *(v10 + 56), *(v10 + 64), *(v10 + 65));

  v11 = v5 + v1[12];
  v12 = _s9KnobStateOMa(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    goto LABEL_19;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v19 = sub_25268DA10();
    v20 = *(v19 - 8);
    v30 = *(v20 + 48);
    if (!v30(v11, 2, v19))
    {
      (*(v20 + 8))(v11, v19);
    }

    _s4KnobVMa(0);

    v21 = v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v30(v21, 2, v19))
    {
      (*(v20 + 8))(v21, v19);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_19;
    }

    v14 = sub_25268DA10();
    v15 = *(v14 - 8);
    if (!(*(v15 + 48))(v11, 2, v14))
    {
      (*(v15 + 8))(v11, v14);
    }

    _s4KnobVMa(0);
  }

LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0C28);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25232249C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E0CB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_252322520(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_252322548(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_25268D7D0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_2523225F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_25268D7D0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252322698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 8);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = _s22StatusTextViewModifierV6ConfigVMa(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_252322744(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 8) = a2 + 1;
  }

  else
  {
    v7 = _s22StatusTextViewModifierV6ConfigVMa(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2523227E4()
{
  v1 = _s22StatusTextViewModifierVMa(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20) + v4;

  v7 = _s22StatusTextViewModifierV6ConfigVMa(0);
  v8 = *(v7 + 28);
  v9 = sub_25268D7D0();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_252322904()
{
  v1 = (_s22StatusTextViewModifierVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v1[7] + v3;

  v6 = _s22StatusTextViewModifierV6ConfigVMa(0);
  v7 = *(v6 + 28);
  v8 = sub_25268D7D0();
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252322A80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_252691010();
  *a1 = result & 1;
  return result;
}

uint64_t sub_252322AE4()
{
  v1 = type metadata accessor for RingControlView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09B8) + 32);
  _s9KnobStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v14 = v4;
    v9 = sub_25268DA10();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v5, 2, v9))
    {
      (*(v10 + 8))(v5, v9);
    }

    _s4KnobVMa(0);

    v12 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v11(v12, 2, v9))
    {
      (*(v10 + 8))(v12, v9);
    }

    v4 = v14;
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_12;
    }

    v7 = sub_25268DA10();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v5, 2, v7))
    {
      (*(v8 + 8))(v5, v7);
    }

    _s4KnobVMa(0);
  }

LABEL_12:

  if (*(v0 + v3 + *(v1 + 28)))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252322E00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s9KnobStateOMa(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252322EC0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = _s9KnobStateOMa(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252322F80()
{
  v1 = type metadata accessor for RingControlView.ColorTrackView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  _s9KnobStateOMa(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v9 = sub_25268DA10();
    v10 = *(v9 - 8);
    v11 = *(v10 + 48);
    if (!v11(v0 + v3, 2, v9))
    {
      (*(v10 + 8))(v0 + v3, v9);
    }

    _s4KnobVMa(0);

    v12 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E09C0) + 48);
    if (!v11(v12, 2, v9))
    {
      (*(v10 + 8))(v12, v9);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      goto LABEL_11;
    }

    v7 = sub_25268DA10();
    v8 = *(v7 - 8);
    if (!(*(v8 + 48))(v0 + v3, 2, v7))
    {
      (*(v8 + 8))(v0 + v3, v7);
    }

    _s4KnobVMa(0);
  }

LABEL_11:

  sub_25235E264(*(v5 + *(v1 + 32)), *(v5 + *(v1 + 32) + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252323238()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0F50);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E0F00);
  sub_252400FC8(&qword_27F4E0F60, &qword_27F4E0F50);
  sub_2525265D8();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_252323300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2523233AC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252323454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1160);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523234C4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_25232352C(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(*(type metadata accessor for DecorationControlView.Appearance(0) - 8) + 84) == a2)
  {
    v6 = type metadata accessor for DecorationControlView.Appearance.Button(0);
    v7 = *(*(v6 - 8) + 48);

    return v7(a1, a2, v6);
  }

  else
  {
    v9 = type metadata accessor for AccessoryControl(0);
    if (*(*(v9 - 8) + 84) == a2)
    {
      v10 = v9;
      v11 = *(v9 - 8);
      v12 = a3[5];
    }

    else
    {
      v13 = sub_252690CA0();
      if (*(*(v13 - 8) + 84) != a2)
      {
        v15 = *(a1 + a3[7] + 8);
        if (v15 > 1)
        {
          return (v15 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      v10 = v13;
      v11 = *(v13 - 8);
      v12 = a3[6];
    }

    v14 = *(v11 + 48);

    return v14(a1 + v12, a2, v10);
  }
}

uint64_t sub_2523236C4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  if (*(*(type metadata accessor for DecorationControlView.Appearance(0) - 8) + 84) == a3)
  {
    v8 = type metadata accessor for DecorationControlView.Appearance.Button(0);
    v9 = *(*(v8 - 8) + 56);

    return v9(a1, a2, a2, v8);
  }

  else
  {
    v11 = type metadata accessor for AccessoryControl(0);
    if (*(*(v11 - 8) + 84) == a3)
    {
      v12 = v11;
      v13 = *(v11 - 8);
      v14 = a4[5];
    }

    else
    {
      result = sub_252690CA0();
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[7] + 8) = -a2;
        return result;
      }

      v12 = result;
      v13 = *(result - 8);
      v14 = a4[6];
    }

    v15 = *(v13 + 56);

    return v15(a1 + v14, a2, a2, v12);
  }
}

uint64_t sub_252323888(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = type metadata accessor for AccessoryControl(0);
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = sub_252690CA0();
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8] + 8);
          if (v17 > 1)
          {
            return (v17 ^ 0xFF) + 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_252323A30(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for DecorationControlView.Appearance.Button(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = type metadata accessor for AccessoryControl(0);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = sub_252690CA0();
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DDB00);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 8) = -a2;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_252323BF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252323C58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E13E8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4E13F0);
  sub_252691130();
  sub_252400FC8(&qword_27F4E13F8, &qword_27F4E13F0);
  swift_getOpaqueTypeConformance2();
  sub_252691C30();
  return swift_getWitnessTable();
}

uint64_t sub_252323D80()
{
  if (*(v0 + 32))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252323DD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252323E08()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_252323E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_252323F48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_25232404C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[5];
LABEL_5:
    v11 = *(v8 + 48);

    return v11(a1 + v9, a2, v7);
  }

  v10 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_5;
  }

  v13 = *(a1 + a3[9] + 16);
  if (v13 >= 0xFFFFFFFF)
  {
    LODWORD(v13) = -1;
  }

  v14 = v13 - 1;
  if (v14 < 0)
  {
    v14 = -1;
  }

  return (v14 + 1);
}

uint64_t sub_252324170(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
  }

  else
  {
    result = type metadata accessor for AccessoryControl.IncrementalConfig(0);
    if (*(*(result - 8) + 84) != a3)
    {
      *(a1 + a4[9] + 16) = a2;
      return result;
    }

    v9 = result;
    v10 = *(result - 8);
    v11 = a4[8];
  }

  v13 = *(v10 + 56);

  return v13(a1 + v11, a2, a2, v9);
}

uint64_t sub_252324288()
{
  v1 = type metadata accessor for SliderControlView();
  v31 = *(*(v1 - 1) + 80);
  v29 = *(*(v1 - 1) + 64);
  v27 = sub_252690A20();
  v2 = *(v27 - 8);
  v3 = *(v2 + 80);
  v32 = *(v2 + 64);
  v28 = v0;
  v30 = (v31 + 16) & ~v31;
  v4 = v0 + v30;
  v5 = v0 + v30 + v1[5];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810) + 32);
  v7 = type metadata accessor for AccessoryControl.IncrementalState(0);
  if (!(*(*(v7 - 8) + 48))(v5 + v6, 1, v7))
  {
    v8 = sub_25268ED70();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = v4 + v1[8];

  v10 = type metadata accessor for IconDescriptor();
  v11 = *(v10 + 20);
  v12 = sub_25268F910();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);
  v14 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v13(v14 + *(v10 + 20), v12);
  v15 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

  v16 = *(v15 + 28);
  v17 = sub_25268EEA0();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  v18 = v9 + *(v15 + 56);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v21 = v27;
      v20 = v28;
    }

    else
    {
      v21 = v27;
      v20 = v28;
      if (EnumCaseMultiPayload == 3)
      {
LABEL_7:
      }
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v23 = sub_25268D990();
    v24 = *(v23 - 8);
    v21 = v27;
    v20 = v28;
    if (!(*(v24 + 48))(v18 + v22, 1, v23))
    {
      (*(v24 + 8))(v18 + v22, v23);
    }
  }

  else
  {
    v21 = v27;
    v20 = v28;
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_7;
    }
  }

  v25 = (v30 + v29 + v3) & ~v3;

  sub_25235E264(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  (*(v2 + 8))(v20 + v25, v21);

  return MEMORY[0x2821FE8E8](v20, v25 + v32, v31 | v3 | 7);
}

uint64_t sub_252324700()
{
  v1 = type metadata accessor for SliderControlView();
  v32 = *(*(v1 - 1) + 80);
  v30 = *(*(v1 - 1) + 64);
  v27 = sub_252690A20();
  v2 = *(v27 - 8);
  v3 = *(v2 + 80);
  v28 = v0;
  v29 = *(v2 + 64);
  v31 = (v32 + 16) & ~v32;
  v4 = v0 + v31;
  v5 = v0 + v31 + v1[5];

  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810) + 32);
  v7 = type metadata accessor for AccessoryControl.IncrementalState(0);
  if (!(*(*(v7 - 8) + 48))(v5 + v6, 1, v7))
  {
    v8 = sub_25268ED70();
    (*(*(v8 - 8) + 8))(v5 + v6, v8);
  }

  v9 = v4 + v1[8];

  v10 = type metadata accessor for IconDescriptor();
  v11 = *(v10 + 20);
  v12 = sub_25268F910();
  v13 = *(*(v12 - 8) + 8);
  v13(v9 + v11, v12);
  v14 = v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v13(v14 + *(v10 + 20), v12);
  v15 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

  v16 = *(v15 + 28);
  v17 = sub_25268EEA0();
  (*(*(v17 - 8) + 8))(v9 + v16, v17);

  v18 = v9 + *(v15 + 56);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v21 = v27;
      v20 = v28;
    }

    else
    {
      v21 = v27;
      v20 = v28;
      if (EnumCaseMultiPayload == 3)
      {
LABEL_7:
      }
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v23 = sub_25268D990();
    v24 = *(v23 - 8);
    v21 = v27;
    v20 = v28;
    if (!(*(v24 + 48))(v18 + v22, 1, v23))
    {
      (*(v24 + 8))(v18 + v22, v23);
    }
  }

  else
  {
    v21 = v27;
    v20 = v28;
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_7;
    }
  }

  v25 = (v31 + v30 + v3) & ~v3;

  sub_25235E264(*(v4 + v1[13]), *(v4 + v1[13] + 8));
  (*(v2 + 8))(v20 + v25, v21);

  return MEMORY[0x2821FE8E8](v20, ((((v29 + v25 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v32 | v3 | 7);
}

uint64_t sub_252324B90()
{
  v1 = sub_252690A20();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = type metadata accessor for SliderControlView();
  v7 = *(*(v6 - 1) + 80);
  v30 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v31 = v0;
  v29 = (v5 + v7 + 8) & ~v7;
  v8 = v0 + v29;
  v9 = v0 + v29 + v6[5];

  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1810) + 32);
  v11 = type metadata accessor for AccessoryControl.IncrementalState(0);
  if (!(*(*(v11 - 8) + 48))(v9 + v10, 1, v11))
  {
    v12 = sub_25268ED70();
    (*(*(v12 - 8) + 8))(v9 + v10, v12);
  }

  v13 = v8 + v6[8];

  v14 = type metadata accessor for IconDescriptor();
  v15 = *(v14 + 20);
  v16 = sub_25268F910();
  v17 = *(*(v16 - 8) + 8);
  v17(v13 + v15, v16);
  v18 = v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v17(v18 + *(v14 + 20), v16);
  v19 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

  v20 = *(v19 + 28);
  v21 = sub_25268EEA0();
  (*(*(v21 - 8) + 8))(v13 + v20, v21);

  v22 = v13 + *(v19 + 56);
  type metadata accessor for AccessoryControl.StatusProvider();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v24 = v29;
    }

    else
    {
      v24 = v29;
      if (EnumCaseMultiPayload == 3)
      {
LABEL_7:
      }
    }
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v26 = sub_25268D990();
    v27 = *(v26 - 8);
    v24 = v29;
    if (!(*(v27 + 48))(v22 + v25, 1, v26))
    {
      (*(v27 + 8))(v22 + v25, v26);
    }
  }

  else
  {
    v24 = v29;
    if (EnumCaseMultiPayload == 5 || EnumCaseMultiPayload == 7)
    {
      goto LABEL_7;
    }
  }

  sub_25235E264(*(v8 + v6[13]), *(v8 + v6[13] + 8));

  return MEMORY[0x2821FE8E8](v31, v24 + v30, v3 | v7 | 7);
}

__n128 sub_25232501C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_25232505C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_252325108(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2523251AC()
{
  v1 = type metadata accessor for StatusButtonControlView();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  if (*(v0 + v3 + 56) != 1)
  {
  }

  v5 = v0 + v3 + *(v1 + 24);

  v6 = type metadata accessor for IconDescriptor();
  v7 = *(v6 + 20);
  v8 = sub_25268F910();
  v9 = *(*(v8 - 8) + 8);
  v9(v5 + v7, v8);
  v10 = v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v9(v10 + *(v6 + 20), v8);
  v11 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

  v12 = v5 + v11[6];
  type metadata accessor for ControlTextModifier.Config(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
    v15 = sub_25268D990();
    (*(*(v15 - 8) + 8))(v12 + v14, v15);
  }

  v16 = v5 + v11[7];
  v17 = *(v16 + 32);
  if (v17 != 255)
  {
    sub_252376DBC(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), v17);
  }

  v18 = v5 + v11[8];
  v19 = *(v18 + 32);
  if (v19 != 255)
  {
    sub_252376DBC(*v18, *(v18 + 8), *(v18 + 16), *(v18 + 24), v19);
  }

  v20 = v5 + v11[11];
  type metadata accessor for AccessoryControl.StatusProvider();
  v21 = swift_getEnumCaseMultiPayload();
  if (v21 <= 3)
  {
    if (v21 == 1 || v21 == 3)
    {
      goto LABEL_18;
    }
  }

  else if (v21 == 4)
  {
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v23 = sub_25268D990();
    v24 = *(v23 - 8);
    if (!(*(v24 + 48))(v20 + v22, 1, v23))
    {
      (*(v24 + 8))(v20 + v22, v23);
    }
  }

  else if (v21 == 5 || v21 == 7)
  {
LABEL_18:
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_252325510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2523255BC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252325664()
{
  v1 = type metadata accessor for SwitchControlView(0);
  v2 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v26 = v0;
  v3 = (v2 + 24) & ~v2;
  sub_25235E264(*(v0 + v3), *(v0 + v3 + 8));

  v4 = v0 + v3 + *(v1 + 36);

  v5 = type metadata accessor for IconDescriptor();
  v6 = *(v5 + 20);
  v7 = sub_25268F910();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v8(v9 + *(v5 + 20), v7);
  v10 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

  v11 = v4 + v10[6];
  type metadata accessor for ControlTextModifier.Config(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
    v14 = sub_25268D990();
    (*(*(v14 - 8) + 8))(v11 + v13, v14);
  }

  v15 = v4 + v10[7];
  v16 = *(v15 + 32);
  if (v16 != 255)
  {
    sub_252376DBC(*v15, *(v15 + 8), *(v15 + 16), *(v15 + 24), v16);
  }

  v17 = v4 + v10[8];
  v18 = *(v17 + 32);
  if (v18 != 255)
  {
    sub_252376DBC(*v17, *(v17 + 8), *(v17 + 16), *(v17 + 24), v18);
  }

  v19 = v4 + v10[11];
  type metadata accessor for AccessoryControl.StatusProvider();
  v20 = swift_getEnumCaseMultiPayload();
  if (v20 <= 3)
  {
    if (v20 == 1 || v20 == 3)
    {
      goto LABEL_16;
    }
  }

  else if (v20 == 4)
  {
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v22 = sub_25268D990();
    v23 = *(v22 - 8);
    if (!(*(v23 + 48))(v19 + v21, 1, v22))
    {
      (*(v23 + 8))(v19 + v21, v22);
    }
  }

  else if (v20 == 5 || v20 == 7)
  {
LABEL_16:
  }

  return MEMORY[0x2821FE8E8](v26, v3 + v25, v2 | 7);
}

uint64_t sub_2523259E4()
{
  v1 = type metadata accessor for SwitchControlView(0);
  v2 = *(*(v1 - 8) + 80);
  v25 = *(*(v1 - 8) + 64);
  v24 = (v2 + 16) & ~v2;
  sub_25235E264(*(v0 + v24), *(v0 + v24 + 8));

  v3 = v0 + v24 + *(v1 + 36);

  v4 = type metadata accessor for IconDescriptor();
  v5 = *(v4 + 20);
  v6 = sub_25268F910();
  v7 = *(*(v6 - 8) + 8);
  v7(v3 + v5, v6);
  v8 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v7(v8 + *(v4 + 20), v6);
  v9 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

  v10 = v3 + v9[6];
  type metadata accessor for ControlTextModifier.Config(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
    v13 = sub_25268D990();
    (*(*(v13 - 8) + 8))(v10 + v12, v13);
  }

  v14 = v3 + v9[7];
  v15 = *(v14 + 32);
  if (v15 != 255)
  {
    sub_252376DBC(*v14, *(v14 + 8), *(v14 + 16), *(v14 + 24), v15);
  }

  v16 = v3 + v9[8];
  v17 = *(v16 + 32);
  if (v17 != 255)
  {
    sub_252376DBC(*v16, *(v16 + 8), *(v16 + 16), *(v16 + 24), v17);
  }

  v18 = v3 + v9[11];
  type metadata accessor for AccessoryControl.StatusProvider();
  v19 = swift_getEnumCaseMultiPayload();
  if (v19 <= 3)
  {
    if (v19 == 1 || v19 == 3)
    {
      goto LABEL_16;
    }
  }

  else if (v19 == 4)
  {
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
    v21 = sub_25268D990();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v18 + v20, 1, v21))
    {
      (*(v22 + 8))(v18 + v20, v21);
    }
  }

  else if (v19 == 5 || v19 == 7)
  {
LABEL_16:
  }

  return MEMORY[0x2821FE8E8](v0, ((v25 + v24 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_252325D6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_252325DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_252325E70(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 24);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252325F3C()
{
  v1 = type metadata accessor for KnobView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v11 = *(*(v1 - 8) + 64);
  v4 = v0 + v3 + *(v1 + 24);

  v5 = type metadata accessor for IconDescriptor();
  v6 = *(v5 + 20);
  v7 = sub_25268F910();
  v8 = *(*(v7 - 8) + 8);
  v8(v4 + v6, v7);
  v9 = v4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

  v8(v9 + *(v5 + 20), v7);

  return MEMORY[0x2821FE8E8](v12, v3 + v11, v2 | 7);
}

uint64_t sub_2523260FC(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2523261A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_252326278()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2523262FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_2523263BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_252326478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4E1DB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25232651C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = type metadata accessor for AccessoryControlModule.Layout(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_252326594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = type metadata accessor for AccessoryControlModule.Layout(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_252326618()
{
  v1 = v0;
  v2 = type metadata accessor for ModuleLayoutView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  v7 = v0 + *(v2 + 20) + v5;
  type metadata accessor for AccessoryControlModule.Layout(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      type metadata accessor for AccessoryControl.ElementIdentifier();
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 3)
      {
        if (v10 == 4 || v10 == 5)
        {
        }
      }

      else if (v10)
      {
        if (v10 == 1)
        {
        }
      }

      else
      {
        v11 = sub_25268DA10();
        (*(*(v11 - 8) + 8))(v7, v11);
      }

      v1221 = v6;
      v1219 = type metadata accessor for AccessoryControl(0);
      v12 = v7 + *(v1219 + 20);
      type metadata accessor for AccessoryControl.State(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          v13 = type metadata accessor for IconDescriptor();
          v14 = *(v13 + 20);
          v15 = sub_25268F910();
          v16 = *(*(v15 - 8) + 8);
          v16(v12 + v14, v15);
          v17 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v16(v17 + *(v13 + 20), v15);
          v18 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v19 = v12 + v18[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v20 = swift_getEnumCaseMultiPayload();
          if (v20 == 1)
          {
          }

          else if (!v20)
          {
            v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v22 = sub_25268D990();
            (*(*(v22 - 8) + 8))(v19 + v21, v22);
          }

          v343 = v12 + v18[7];
          v344 = *(v343 + 32);
          if (v344 != 255)
          {
            sub_252376DBC(*v343, *(v343 + 8), *(v343 + 16), *(v343 + 24), v344);
          }

          v345 = v12 + v18[8];
          v346 = *(v345 + 32);
          if (v346 != 255)
          {
            sub_252376DBC(*v345, *(v345 + 8), *(v345 + 16), *(v345 + 24), v346);
          }

          v347 = v12 + v18[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v348 = swift_getEnumCaseMultiPayload();
          if (v348 <= 3)
          {
            if (v348 != 1 && v348 != 3)
            {
              goto LABEL_199;
            }
          }

          else
          {
            if (v348 == 4)
            {
              v697 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
              v698 = sub_25268D990();
              v699 = *(v698 - 8);
              if (!(*(v699 + 48))(v347 + v697, 1, v698))
              {
                (*(v699 + 8))(v347 + v697, v698);
              }

              goto LABEL_199;
            }

            if (v348 != 5 && v348 != 7)
            {
LABEL_199:

              v349 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

              v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
              v351 = v349 + *(v350 + 36);
              v352 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
              if (!(*(*(v352 - 8) + 48))(v351, 1, v352))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v351);
                v353 = *(v352 + 20);
                v354 = sub_25268DA10();
                (*(*(v354 - 8) + 8))(v351 + v353, v354);
              }

              v313 = v349 + *(v350 + 40);
              goto LABEL_202;
            }
          }

          goto LABEL_199;
        case 1u:

          v193 = type metadata accessor for IconDescriptor();
          v194 = *(v193 + 20);
          v195 = sub_25268F910();
          v196 = *(*(v195 - 8) + 8);
          v196(v12 + v194, v195);
          v197 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v196(v197 + *(v193 + 20), v195);
          v198 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v199 = v12 + v198[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v200 = swift_getEnumCaseMultiPayload();
          if (v200 == 1)
          {
          }

          else if (!v200)
          {
            v201 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v202 = sub_25268D990();
            (*(*(v202 - 8) + 8))(v199 + v201, v202);
          }

          v355 = v12 + v198[7];
          v356 = *(v355 + 32);
          if (v356 != 255)
          {
            sub_252376DBC(*v355, *(v355 + 8), *(v355 + 16), *(v355 + 24), v356);
          }

          v357 = v12 + v198[8];
          v358 = *(v357 + 32);
          if (v358 != 255)
          {
            sub_252376DBC(*v357, *(v357 + 8), *(v357 + 16), *(v357 + 24), v358);
          }

          v359 = v12 + v198[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v360 = swift_getEnumCaseMultiPayload();
          if (v360 <= 3)
          {
            if (v360 == 1 || v360 == 3)
            {
              goto LABEL_216;
            }
          }

          else if (v360 == 4)
          {
            v700 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v701 = sub_25268D990();
            v702 = *(v701 - 8);
            if (!(*(v702 + 48))(v359 + v700, 1, v701))
            {
              (*(v702 + 8))(v359 + v700, v701);
            }
          }

          else if (v360 == 5 || v360 == 7)
          {
LABEL_216:
          }

          v361 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

          v362 = v361 + *(type metadata accessor for ControlAction(0) + 20);
          v363 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v363 - 8) + 48))(v362, 1, v363))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v362);
            v364 = *(v363 + 20);
            v365 = sub_25268DA10();
            (*(*(v365 - 8) + 8))(v362 + v364, v365);
          }

          goto LABEL_219;
        case 2u:

          v155 = type metadata accessor for IconDescriptor();
          v156 = *(v155 + 20);
          v157 = sub_25268F910();
          v158 = *(*(v157 - 8) + 8);
          v158(v12 + v156, v157);
          v159 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v158(v159 + *(v155 + 20), v157);
          v160 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

          v161 = *(v160 + 28);
          v162 = sub_25268EEA0();
          (*(*(v162 - 8) + 8))(v12 + v161, v162);

          v163 = v12 + *(v160 + 56);
          type metadata accessor for AccessoryControl.StatusProvider();
          v164 = swift_getEnumCaseMultiPayload();
          v1205 = v1;
          v1211 = v4;
          v1186 = (v4 + 16) & ~v4;
          if (v164 <= 3)
          {
            if (v164 == 1 || v164 == 3)
            {
              goto LABEL_156;
            }
          }

          else if (v164 == 4)
          {
            v685 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v686 = sub_25268D990();
            v687 = *(v686 - 8);
            if (!(*(v687 + 48))(v163 + v685, 1, v686))
            {
              (*(v687 + 8))(v163 + v685, v686);
            }
          }

          else if (v164 == 5 || v164 == 7)
          {
LABEL_156:
          }

          v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
          v296 = v12 + *(v295 + 48);

          v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
          v298 = v296 + *(v297 + 36);
          v299 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          v300 = *(*(v299 - 8) + 48);
          if (!v300(v298, 1, v299))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v298);
            v301 = v300;
            v302 = *(v299 + 20);
            v303 = sub_25268DA10();
            v304 = v298 + v302;
            v300 = v301;
            (*(*(v303 - 8) + 8))(v304, v303);
          }

          v305 = *(v297 + 40);
          v306 = type metadata accessor for AccessoryControl.IncrementalState(0);
          if (!(*(*(v306 - 8) + 48))(v296 + v305, 1, v306))
          {
            v307 = sub_25268ED70();
            (*(*(v307 - 8) + 8))(v296 + v305, v307);
          }

          v308 = v12 + *(v295 + 64);
          v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
          v1 = v1205;
          v4 = v1211;
          v5 = v1186;
          if (!(*(*(v309 - 8) + 48))(v308, 1, v309))
          {

            v310 = v308 + *(v309 + 36);
            if (!v300(v310, 1, v299))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v310);
              v311 = *(v299 + 20);
              v312 = sub_25268DA10();
              (*(*(v312 - 8) + 8))(v310 + v311, v312);
            }

            v313 = v308 + *(v309 + 40);
LABEL_202:
            if (*(v313 + 32) != 1)
            {
LABEL_219:
            }
          }

          goto LABEL_220;
        case 3u:

          v175 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
          v176 = v12 + *(v175 + 24);
          v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v177 - 8) + 48))(v176, 1, v177))
          {

            v178 = type metadata accessor for IconDescriptor();
            v179 = *(v178 + 20);
            v1207 = v1;
            v1213 = v4;
            v180 = sub_25268F910();
            v181 = *(*(v180 - 8) + 8);
            v181(v176 + v179, v180);
            v182 = v176 + *(v177 + 28);

            v183 = v180;
            v4 = v1213;
            v181(v182 + *(v178 + 20), v183);
            v1 = v1207;
          }

          v184 = v12 + *(v175 + 40);
          type metadata accessor for AccessoryControl.StatusProvider();
          v185 = swift_getEnumCaseMultiPayload();
          if (v185 <= 3)
          {
            if (v185 == 1 || v185 == 3)
            {
              goto LABEL_178;
            }
          }

          else if (v185 == 4)
          {
            v691 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v692 = sub_25268D990();
            v693 = *(v692 - 8);
            if (!(*(v693 + 48))(v184 + v691, 1, v692))
            {
              (*(v693 + 8))(v184 + v691, v692);
            }
          }

          else if (v185 == 5 || v185 == 7)
          {
LABEL_178:
          }

          v333 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

          v334 = v333 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
          v335 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v335 - 8) + 48))(v334, 1, v335))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v334);
            v336 = *(v335 + 20);
            v337 = sub_25268DA10();
            (*(*(v337 - 8) + 8))(v334 + v336, v337);
          }

LABEL_220:
          v366 = v1219;

          v367 = type metadata accessor for AccessoryControlModule.Layout.Thermostat(0);
          v368 = v7 + *(v367 + 20);
          v369 = *(*(v1219 - 8) + 48);
          if (v369(v368, 1, v1219))
          {
            goto LABEL_546;
          }

          v370 = swift_getEnumCaseMultiPayload();
          v1209 = v1;
          v1215 = v4;
          v1180 = v369;
          if (v370 > 3)
          {
            if (v370 == 4 || v370 == 5)
            {
            }
          }

          else if (v370)
          {
            if (v370 == 1)
            {
            }
          }

          else
          {
            v371 = sub_25268DA10();
            (*(*(v371 - 8) + 8))(v368, v371);
          }

          break;
        case 4u:

          v75 = v12 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
          v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v76 - 8) + 48))(v75, 1, v76))
          {

            v77 = type metadata accessor for IconDescriptor();
            v78 = *(v77 + 20);
            v79 = sub_25268F910();
            v80 = *(*(v79 - 8) + 8);
            v80(v75 + v78, v79);
            v81 = v75 + *(v76 + 28);

            v80(v81 + *(v77 + 20), v79);
            v5 = (v4 + 16) & ~v4;
          }

          v82 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

          v83 = v82 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
          v84 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v83);
            v85 = v5;
            v86 = *(v84 + 20);
            v87 = sub_25268DA10();
            v88 = v83 + v86;
            v5 = v85;
            (*(*(v87 - 8) + 8))(v88, v87);
          }

          goto LABEL_219;
        case 5u:

          v231 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

          v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
          v233 = v231 + *(v232 + 36);
          v234 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v234 - 8) + 48))(v233, 1, v234))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v233);
            v235 = *(v234 + 20);
            v236 = sub_25268DA10();
            v237 = v233 + v235;
            v5 = (v4 + 16) & ~v4;
            (*(*(v236 - 8) + 8))(v237, v236);
          }

          v238 = *(v232 + 40);
          v239 = type metadata accessor for AccessoryControl.ColorState(0);
          if (!(*(*(v239 - 8) + 48))(v231 + v238, 1, v239))
          {
            v240 = sub_25268ED20();
            v241 = *(v240 - 8);
            if (!(*(v241 + 48))(v231 + v238, 1, v240))
            {
              (*(v241 + 8))(v231 + v238, v240);
            }
          }

          goto LABEL_220;
        case 6u:

          v247 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

          v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
          v249 = v247 + *(v248 + 36);
          v250 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v250 - 8) + 48))(v249, 1, v250))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v249);
            v251 = *(v250 + 20);
            v252 = sub_25268DA10();
            v253 = v249 + v251;
            v5 = (v4 + 16) & ~v4;
            (*(*(v252 - 8) + 8))(v253, v252);
          }

          v96 = v247 + *(v248 + 40);
          v254 = type metadata accessor for AccessoryControl.ThermostatState(0);
          if ((*(*(v254 - 8) + 48))(v96, 1, v254))
          {
            goto LABEL_220;
          }

          v98 = v5;
          v99 = v4;
          v255 = v96 + *(v254 + 32);
          v256 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
          if ((*(*(v256 - 8) + 48))(v255, 1, v256))
          {
            goto LABEL_132;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v729 - 8) + 48))(v255, 1, v729))
            {
              goto LABEL_132;
            }

            v730 = *(v729 + 48);
            v731 = sub_25268D990();
            (*(*(v731 - 8) + 8))(v255 + v730, v731);
          }

          else
          {
            v729 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v729 - 8) + 48))(v255, 3, v729))
            {
              goto LABEL_132;
            }

            v795 = *(v729 + 48);
            v796 = sub_25268D990();
            v1184 = *(v796 - 8);
            if (!(*(v1184 + 48))(v255 + v795, 1, v796))
            {
              (*(v1184 + 8))(v255 + v795, v796);
            }
          }

          v797 = *(v729 + 64);
          v798 = sub_25268DB10();
          (*(*(v798 - 8) + 8))(v255 + v797, v798);
LABEL_132:
          v102 = *(v254 + 36);
          goto LABEL_133;
        case 7u:

          v186 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

          v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
          v188 = v186 + *(v187 + 36);
          v189 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v189 - 8) + 48))(v188, 1, v189))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v188);
            v190 = *(v189 + 20);
            v191 = sub_25268DA10();
            v192 = v188 + v190;
            v5 = (v4 + 16) & ~v4;
            (*(*(v191 - 8) + 8))(v192, v191);
          }

          if (*(v186 + *(v187 + 40) + 8))
          {
            goto LABEL_104;
          }

          goto LABEL_220;
        case 8u:

          v117 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
          v119 = v117 + *(v118 + 36);
          v120 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v120 - 8) + 48))(v119, 1, v120))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v119);
            v121 = *(v120 + 20);
            v122 = sub_25268DA10();
            v123 = v119 + v121;
            v5 = (v4 + 16) & ~v4;
            (*(*(v122 - 8) + 8))(v123, v122);
          }

          v124 = v117 + *(v118 + 40);
          v125 = type metadata accessor for AccessoryControl.StatusButtonState(0);
          if ((*(*(v125 - 8) + 48))(v124, 1, v125))
          {
            goto LABEL_220;
          }

          v12 = v124 + *(v125 + 24);
          v126 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          if ((*(*(v126 - 8) + 48))(v12, 1, v126))
          {
            goto LABEL_220;
          }

          v127 = swift_getEnumCaseMultiPayload();
          if (v127 == 2)
          {
LABEL_104:

            goto LABEL_219;
          }

          if (v127 <= 1)
          {
            type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
LABEL_68:
              v128 = sub_25268DA10();
              (*(*(v128 - 8) + 8))(v12, v128);
            }
          }

          goto LABEL_220;
        case 9u:

          v268 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

          v269 = v268 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
          v270 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v270 - 8) + 48))(v269, 1, v270))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v269);
            v271 = *(v270 + 20);
            v272 = sub_25268DA10();
            v273 = v269 + v271;
            v5 = (v4 + 16) & ~v4;
            (*(*(v272 - 8) + 8))(v273, v272);
          }

          goto LABEL_219;
        case 0xAu:
          goto LABEL_219;
        case 0xBu:
          goto LABEL_68;
        case 0xCu:

          if (*(v12 + 48) != 1)
          {
          }

          v89 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

          v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
          v91 = v89 + *(v90 + 36);
          v92 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v92 - 8) + 48))(v91, 1, v92))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v91);
            v93 = *(v92 + 20);
            v94 = sub_25268DA10();
            v95 = v91 + v93;
            v5 = (v4 + 16) & ~v4;
            (*(*(v94 - 8) + 8))(v95, v94);
          }

          v96 = v89 + *(v90 + 40);
          v97 = type metadata accessor for AccessoryControl.AutoClimateState(0);
          if ((*(*(v97 - 8) + 48))(v96, 1, v97))
          {
            goto LABEL_220;
          }

          v98 = v5;
          v99 = v4;
          v100 = v96 + *(v97 + 20);
          v101 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
          if ((*(*(v101 - 8) + 48))(v100, 1, v101))
          {
            goto LABEL_55;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v723 - 8) + 48))(v100, 1, v723))
            {
              goto LABEL_55;
            }

            v724 = *(v723 + 48);
            v725 = sub_25268D990();
            (*(*(v725 - 8) + 8))(v100 + v724, v725);
          }

          else
          {
            v723 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v723 - 8) + 48))(v100, 3, v723))
            {
              goto LABEL_55;
            }

            v787 = *(v723 + 48);
            v788 = sub_25268D990();
            v1182 = *(v788 - 8);
            if (!(*(v1182 + 48))(v100 + v787, 1, v788))
            {
              (*(v1182 + 8))(v100 + v787, v788);
            }
          }

          v789 = *(v723 + 64);
          v790 = sub_25268DB10();
          (*(*(v790 - 8) + 8))(v100 + v789, v790);
LABEL_55:
          v102 = *(v97 + 24);
LABEL_133:
          v4 = v99;
          v5 = v98;
          if (*(v96 + v102 + 8) < 8uLL)
          {
            goto LABEL_220;
          }

          goto LABEL_219;
        case 0xDu:

          v242 = type metadata accessor for IconDescriptor();
          v243 = *(v242 + 20);
          v244 = sub_25268F910();
          v245 = *(*(v244 - 8) + 8);
          v245(v12 + v243, v244);
          v246 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v245(v246 + *(v242 + 20), v244);
          v5 = (v4 + 16) & ~v4;
          type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

          goto LABEL_219;
        case 0xEu:

          v35 = type metadata accessor for IconDescriptor();
          v36 = *(v35 + 20);
          v37 = sub_25268F910();
          v38 = *(*(v37 - 8) + 8);
          v38(v12 + v36, v37);
          v39 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v38(v39 + *(v35 + 20), v37);
          type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

          v40 = v12 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
          v42 = v40 + *(v41 + 36);
          v43 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v43 - 8) + 48))(v42, 1, v43))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v42);
            v44 = *(v43 + 20);
            v45 = sub_25268DA10();
            (*(*(v45 - 8) + 8))(v42 + v44, v45);
          }

          v46 = v40 + *(v41 + 40);
          v47 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
          v5 = (v4 + 16) & ~v4;
          if (!(*(*(v47 - 8) + 48))(v46, 1, v47))
          {
            v48 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
            if (!(*(*(v48 - 8) + 48))(v46, 1, v48))
            {
              v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
              if (!(*(*(v49 - 8) + 48))(v46, 3, v49))
              {
                v50 = *(v49 + 48);
                v51 = sub_25268D990();
                v52 = *(v51 - 8);
                if (!(*(v52 + 48))(v46 + v50, 1, v51))
                {
                  (*(v52 + 8))(v46 + v50, v51);
                }

                v53 = *(v49 + 64);
                v54 = sub_25268DB10();
                (*(*(v54 - 8) + 8))(v46 + v53, v54);
              }
            }
          }

          goto LABEL_220;
        default:
          goto LABEL_220;
      }

      v372 = v368 + *(v1219 + 20);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v1188 = v5;

          v373 = type metadata accessor for IconDescriptor();
          v374 = *(v373 + 20);
          v375 = sub_25268F910();
          v376 = *(*(v375 - 8) + 8);
          v376(v372 + v374, v375);
          v377 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v376(v377 + *(v373 + 20), v375);
          v378 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v379 = v372 + v378[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v380 = swift_getEnumCaseMultiPayload();
          if (v380 == 1)
          {
          }

          else if (!v380)
          {
            v381 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v382 = sub_25268D990();
            (*(*(v382 - 8) + 8))(v379 + v381, v382);
          }

          v735 = v372 + v378[7];
          v736 = *(v735 + 32);
          if (v736 != 255)
          {
            sub_252376DBC(*v735, *(v735 + 8), *(v735 + 16), *(v735 + 24), v736);
          }

          v737 = v372 + v378[8];
          v738 = *(v737 + 32);
          v5 = v1188;
          if (v738 != 255)
          {
            sub_252376DBC(*v737, *(v737 + 8), *(v737 + 16), *(v737 + 24), v738);
          }

          v739 = v372 + v378[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v740 = swift_getEnumCaseMultiPayload();
          if (v740 <= 3)
          {
            if (v740 != 1 && v740 != 3)
            {
              goto LABEL_463;
            }
          }

          else
          {
            if (v740 == 4)
            {
              v1091 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
              v1092 = sub_25268D990();
              v1093 = *(v1092 - 8);
              v1172 = v1091;
              v1094 = v739 + v1091;
              v1095 = v1092;
              if (!(*(v1093 + 48))(v1094, 1, v1092))
              {
                (*(v1093 + 8))(v739 + v1172, v1095);
              }

              goto LABEL_463;
            }

            if (v740 != 5 && v740 != 7)
            {
LABEL_463:

              v741 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

              v742 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
              v743 = v741 + *(v742 + 36);
              v744 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
              if (!(*(*(v744 - 8) + 48))(v743, 1, v744))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v743);
                v745 = *(v744 + 20);
                v746 = sub_25268DA10();
                v747 = v743 + v745;
                v5 = v1188;
                (*(*(v746 - 8) + 8))(v747, v746);
              }

              v748 = v741 + *(v742 + 40);
              goto LABEL_543;
            }
          }

          goto LABEL_463;
        case 1u:
          v1192 = v5;

          v468 = type metadata accessor for IconDescriptor();
          v469 = *(v468 + 20);
          v470 = sub_25268F910();
          v471 = *(*(v470 - 8) + 8);
          v471(v372 + v469, v470);
          v472 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v471(v472 + *(v468 + 20), v470);
          v473 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v474 = v372 + v473[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v475 = swift_getEnumCaseMultiPayload();
          if (v475 == 1)
          {
          }

          else if (!v475)
          {
            v476 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v477 = sub_25268D990();
            (*(*(v477 - 8) + 8))(v474 + v476, v477);
          }

          v749 = v372 + v473[7];
          v750 = *(v749 + 32);
          if (v750 != 255)
          {
            sub_252376DBC(*v749, *(v749 + 8), *(v749 + 16), *(v749 + 24), v750);
          }

          v751 = v372 + v473[8];
          v752 = *(v751 + 32);
          v5 = v1192;
          if (v752 != 255)
          {
            sub_252376DBC(*v751, *(v751 + 8), *(v751 + 16), *(v751 + 24), v752);
          }

          v753 = v372 + v473[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v754 = swift_getEnumCaseMultiPayload();
          if (v754 <= 3)
          {
            if (v754 == 1 || v754 == 3)
            {
              goto LABEL_478;
            }
          }

          else if (v754 == 4)
          {
            v1096 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v1097 = sub_25268D990();
            v1098 = *(v1097 - 8);
            v1173 = v1096;
            v1099 = v753 + v1096;
            v1100 = v1097;
            if (!(*(v1098 + 48))(v1099, 1, v1097))
            {
              (*(v1098 + 8))(v753 + v1173, v1100);
            }
          }

          else if (v754 == 5 || v754 == 7)
          {
LABEL_478:
          }

          v755 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

          v756 = v755 + *(type metadata accessor for ControlAction(0) + 20);
          v757 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v757 - 8) + 48))(v756, 1, v757))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v756);
            v758 = *(v757 + 20);
            v759 = sub_25268DA10();
            v760 = v756 + v758;
            v5 = v1192;
            (*(*(v759 - 8) + 8))(v760, v759);
          }

          goto LABEL_544;
        case 2u:
          v1191 = v5;

          v442 = type metadata accessor for IconDescriptor();
          v443 = *(v442 + 20);
          v444 = sub_25268F910();
          v445 = *(*(v444 - 8) + 8);
          v445(v372 + v443, v444);
          v446 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v445(v446 + *(v442 + 20), v444);
          v447 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

          v448 = *(v447 + 28);
          v449 = sub_25268EEA0();
          (*(*(v449 - 8) + 8))(v372 + v448, v449);

          v450 = v372 + *(v447 + 56);
          type metadata accessor for AccessoryControl.StatusProvider();
          v451 = swift_getEnumCaseMultiPayload();
          if (v451 <= 3)
          {
            if (v451 == 1)
            {

              v5 = v1191;
            }

            else
            {
              v5 = v1191;
              if (v451 == 3)
              {
LABEL_265:
              }
            }
          }

          else if (v451 == 4)
          {
            v803 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v804 = sub_25268D990();
            v805 = *(v804 - 8);
            v5 = v1191;
            if (!(*(v805 + 48))(v450 + v803, 1, v804))
            {
              (*(v805 + 8))(v450 + v803, v804);
            }
          }

          else
          {
            v5 = v1191;
            if (v451 == 5 || v451 == 7)
            {
              goto LABEL_265;
            }
          }

          v1170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
          v809 = v372 + *(v1170 + 48);

          v810 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
          v811 = v809 + *(v810 + 36);
          v812 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          v1164 = *(*(v812 - 8) + 48);
          if (!v1164(v811, 1, v812))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v811);
            v813 = *(v812 + 20);
            v814 = sub_25268DA10();
            v815 = v811 + v813;
            v5 = v1191;
            (*(*(v814 - 8) + 8))(v815, v814);
          }

          v816 = *(v810 + 40);
          v817 = type metadata accessor for AccessoryControl.IncrementalState(0);
          if (!(*(*(v817 - 8) + 48))(v809 + v816, 1, v817))
          {
            v818 = sub_25268ED70();
            (*(*(v818 - 8) + 8))(v809 + v816, v818);
          }

          v819 = v372 + *(v1170 + 64);
          v820 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
          if (!(*(*(v820 - 8) + 48))(v819, 1, v820))
          {

            v821 = v819 + *(v820 + 36);
            if (!v1164(v821, 1, v812))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v821);
              v822 = *(v812 + 20);
              v823 = sub_25268DA10();
              v824 = v821 + v822;
              v5 = v1191;
              (*(*(v823 - 8) + 8))(v824, v823);
            }

            v748 = v819 + *(v820 + 40);
LABEL_543:
            if (*(v748 + 32) != 1)
            {
LABEL_544:
            }
          }

          goto LABEL_545;
        case 3u:

          v452 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
          v453 = v372 + *(v452 + 24);
          v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v454 - 8) + 48))(v453, 1, v454))
          {

            v455 = type metadata accessor for IconDescriptor();
            v1161 = *(v455 + 20);
            v1167 = v455;
            v1154 = sub_25268F910();
            v456 = *(*(v1154 - 8) + 8);
            v456(v453 + v1161, v1154);
            v457 = v453 + *(v454 + 28);

            v456(v457 + *(v1167 + 20), v1154);
          }

          v458 = v372 + *(v452 + 40);
          type metadata accessor for AccessoryControl.StatusProvider();
          v459 = swift_getEnumCaseMultiPayload();
          if (v459 <= 3)
          {
            if (v459 == 1 || v459 == 3)
            {
              goto LABEL_430;
            }
          }

          else if (v459 == 4)
          {
            v874 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v875 = sub_25268D990();
            v876 = *(v875 - 8);
            if (!(*(v876 + 48))(v458 + v874, 1, v875))
            {
              (*(v876 + 8))(v458 + v874, v875);
            }
          }

          else if (v459 == 5 || v459 == 7)
          {
LABEL_430:
          }

          v709 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

          v710 = v709 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
          v711 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v711 - 8) + 48))(v710, 1, v711))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v710);
            v712 = v5;
            v713 = *(v711 + 20);
            v714 = sub_25268DA10();
            v715 = v710 + v713;
            v5 = v712;
            (*(*(v714 - 8) + 8))(v715, v714);
          }

LABEL_545:

          v1 = v1209;
          v4 = v1215;
          v366 = v1219;
          v369 = v1180;
LABEL_546:
          v825 = v7 + *(v367 + 24);
          v6 = v1221;
          if (v369(v825, 1, v366))
          {
            goto LABEL_718;
          }

          v826 = swift_getEnumCaseMultiPayload();
          if (v826 > 3)
          {
            if (v826 == 4 || v826 == 5)
            {
            }
          }

          else if (v826)
          {
            if (v826 == 1)
            {
            }
          }

          else
          {
            v827 = sub_25268DA10();
            (*(*(v827 - 8) + 8))(v825, v827);
          }

          break;
        case 4u:

          v403 = v372 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
          v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v404 - 8) + 48))(v403, 1, v404))
          {

            v405 = type metadata accessor for IconDescriptor();
            v1160 = *(v405 + 20);
            v1166 = v405;
            v406 = sub_25268F910();
            v1190 = v5;
            v407 = *(*(v406 - 8) + 8);
            v407(v403 + v1160, v406);
            v408 = v403 + *(v404 + 28);

            v407(v408 + *(v1166 + 20), v406);
            v5 = v1190;
          }

          v409 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

          v410 = v409 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
          v411 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v411 - 8) + 48))(v410, 1, v411))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v410);
            v412 = v5;
            v413 = *(v411 + 20);
            v414 = sub_25268DA10();
            v415 = v410 + v413;
            v5 = v412;
            (*(*(v414 - 8) + 8))(v415, v414);
          }

          goto LABEL_544;
        case 5u:

          v478 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

          v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
          v480 = v478 + *(v479 + 36);
          v481 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v481 - 8) + 48))(v480, 1, v481))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v480);
            v482 = v5;
            v483 = *(v481 + 20);
            v484 = sub_25268DA10();
            v485 = v480 + v483;
            v5 = v482;
            (*(*(v484 - 8) + 8))(v485, v484);
          }

          v486 = *(v479 + 40);
          v487 = type metadata accessor for AccessoryControl.ColorState(0);
          if (!(*(*(v487 - 8) + 48))(v478 + v486, 1, v487))
          {
            v488 = sub_25268ED20();
            v489 = *(v488 - 8);
            if (!(*(v489 + 48))(v478 + v486, 1, v488))
            {
              (*(v489 + 8))(v478 + v486, v488);
            }
          }

          goto LABEL_545;
        case 6u:

          v496 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

          v497 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
          v498 = v496 + *(v497 + 36);
          v499 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v499 - 8) + 48))(v498, 1, v499))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v498);
            v500 = v5;
            v501 = *(v499 + 20);
            v502 = sub_25268DA10();
            v503 = v498 + v501;
            v5 = v500;
            (*(*(v502 - 8) + 8))(v503, v502);
          }

          v424 = v496 + *(v497 + 40);
          v504 = type metadata accessor for AccessoryControl.ThermostatState(0);
          if ((*(*(v504 - 8) + 48))(v424, 1, v504))
          {
            goto LABEL_545;
          }

          v505 = v424 + *(v504 + 32);
          v506 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
          if ((*(*(v506 - 8) + 48))(v505, 1, v506))
          {
            goto LABEL_290;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v1125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v1125 - 8) + 48))(v505, 1, v1125))
            {
              goto LABEL_290;
            }

            v1126 = *(v1125 + 48);
            v1127 = sub_25268D990();
            (*(*(v1127 - 8) + 8))(v505 + v1126, v1127);
          }

          else
          {
            v1142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v1142 - 8) + 48))(v505, 3, v1142))
            {
              goto LABEL_290;
            }

            v1178 = v1142;
            v1143 = *(v1142 + 48);
            v1144 = sub_25268D990();
            v1158 = *(v1144 - 8);
            if (!(*(v1158 + 48))(v505 + v1143, 1, v1144))
            {
              (*(v1158 + 8))(v505 + v1143, v1144);
            }

            v1125 = v1178;
          }

          v1145 = *(v1125 + 64);
          v1146 = sub_25268DB10();
          (*(*(v1146 - 8) + 8))(v505 + v1145, v1146);
LABEL_290:
          v428 = *(v504 + 36);
          goto LABEL_291;
        case 7u:

          v460 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

          v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
          v462 = v460 + *(v461 + 36);
          v463 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v463 - 8) + 48))(v462, 1, v463))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v462);
            v464 = v5;
            v465 = *(v463 + 20);
            v466 = sub_25268DA10();
            v467 = v462 + v465;
            v5 = v464;
            (*(*(v466 - 8) + 8))(v467, v466);
          }

          if (*(v460 + *(v461 + 40) + 8))
          {
            goto LABEL_276;
          }

          goto LABEL_545;
        case 8u:

          v429 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

          v430 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
          v431 = v429 + *(v430 + 36);
          v432 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v432 - 8) + 48))(v431, 1, v432))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v431);
            v433 = v5;
            v434 = *(v432 + 20);
            v435 = sub_25268DA10();
            v436 = v431 + v434;
            v5 = v433;
            (*(*(v435 - 8) + 8))(v436, v435);
          }

          v437 = v429 + *(v430 + 40);
          v438 = type metadata accessor for AccessoryControl.StatusButtonState(0);
          if ((*(*(v438 - 8) + 48))(v437, 1, v438))
          {
            goto LABEL_545;
          }

          v372 = v437 + *(v438 + 24);
          v439 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          if ((*(*(v439 - 8) + 48))(v372, 1, v439))
          {
            goto LABEL_545;
          }

          v440 = swift_getEnumCaseMultiPayload();
          if (v440 == 2)
          {
LABEL_276:

            goto LABEL_544;
          }

          if (v440 <= 1)
          {
            type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
LABEL_260:
              v441 = sub_25268DA10();
              (*(*(v441 - 8) + 8))(v372, v441);
            }
          }

          goto LABEL_545;
        case 9u:

          v507 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

          v508 = v507 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
          v509 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v509 - 8) + 48))(v508, 1, v509))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v508);
            v510 = v5;
            v511 = *(v509 + 20);
            v512 = sub_25268DA10();
            v513 = v508 + v511;
            v5 = v510;
            (*(*(v512 - 8) + 8))(v513, v512);
          }

          goto LABEL_544;
        case 0xAu:
          goto LABEL_544;
        case 0xBu:
          goto LABEL_260;
        case 0xCu:

          if (*(v372 + 48) != 1)
          {
          }

          v416 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

          v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
          v418 = v416 + *(v417 + 36);
          v419 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v419 - 8) + 48))(v418, 1, v419))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v418);
            v420 = v5;
            v421 = *(v419 + 20);
            v422 = sub_25268DA10();
            v423 = v418 + v421;
            v5 = v420;
            (*(*(v422 - 8) + 8))(v423, v422);
          }

          v424 = v416 + *(v417 + 40);
          v425 = type metadata accessor for AccessoryControl.AutoClimateState(0);
          if ((*(*(v425 - 8) + 48))(v424, 1, v425))
          {
            goto LABEL_545;
          }

          v426 = v424 + *(v425 + 20);
          v427 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
          if ((*(*(v427 - 8) + 48))(v426, 1, v427))
          {
            goto LABEL_252;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v1115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v1115 - 8) + 48))(v426, 1, v1115))
            {
              goto LABEL_252;
            }

            v1116 = *(v1115 + 48);
            v1117 = sub_25268D990();
            (*(*(v1117 - 8) + 8))(v426 + v1116, v1117);
          }

          else
          {
            v1132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v1132 - 8) + 48))(v426, 3, v1132))
            {
              goto LABEL_252;
            }

            v1176 = v1132;
            v1133 = *(v1132 + 48);
            v1134 = sub_25268D990();
            v1156 = *(v1134 - 8);
            if (!(*(v1156 + 48))(v426 + v1133, 1, v1134))
            {
              (*(v1156 + 8))(v426 + v1133, v1134);
            }

            v1115 = v1176;
          }

          v1135 = *(v1115 + 64);
          v1136 = sub_25268DB10();
          (*(*(v1136 - 8) + 8))(v426 + v1135, v1136);
LABEL_252:
          v428 = *(v425 + 24);
LABEL_291:
          if (*(v424 + v428 + 8) < 8uLL)
          {
            goto LABEL_545;
          }

          goto LABEL_544;
        case 0xDu:

          v490 = type metadata accessor for IconDescriptor();
          v1193 = v5;
          v491 = *(v490 + 20);
          v492 = sub_25268F910();
          v493 = *(*(v492 - 8) + 8);
          v493(v372 + v491, v492);
          v494 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v495 = v494 + *(v490 + 20);
          v5 = v1193;
          v493(v495, v492);
          type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

          goto LABEL_544;
        case 0xEu:
          v1189 = v5;

          v383 = type metadata accessor for IconDescriptor();
          v384 = *(v383 + 20);
          v385 = sub_25268F910();
          v386 = *(*(v385 - 8) + 8);
          v386(v372 + v384, v385);
          v387 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v386(v387 + *(v383 + 20), v385);
          type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

          v388 = v372 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

          v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
          v390 = v388 + *(v389 + 36);
          v391 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v391 - 8) + 48))(v390, 1, v391))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v390);
            v392 = *(v391 + 20);
            v393 = sub_25268DA10();
            (*(*(v393 - 8) + 8))(v390 + v392, v393);
          }

          v394 = v388 + *(v389 + 40);
          v395 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
          v5 = v1189;
          if (!(*(*(v395 - 8) + 48))(v394, 1, v395))
          {
            v396 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
            if (!(*(*(v396 - 8) + 48))(v394, 1, v396))
            {
              v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
              if (!(*(*(v397 - 8) + 48))(v394, 3, v397))
              {
                v398 = *(v397 + 48);
                v399 = sub_25268D990();
                v400 = *(v399 - 8);
                if (!(*(v400 + 48))(v394 + v398, 1, v399))
                {
                  (*(v400 + 8))(v394 + v398, v399);
                }

                v401 = *(v397 + 64);
                v402 = sub_25268DB10();
                (*(*(v402 - 8) + 8))(v394 + v401, v402);
              }
            }
          }

          goto LABEL_545;
        default:
          goto LABEL_545;
      }

      v828 = v825 + *(v366 + 20);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v829 = v5;

          v830 = type metadata accessor for IconDescriptor();
          v831 = *(v830 + 20);
          v832 = sub_25268F910();
          v833 = *(*(v832 - 8) + 8);
          v833(v828 + v831, v832);
          v834 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v833(v834 + *(v830 + 20), v832);
          v835 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v836 = v828 + v835[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v837 = swift_getEnumCaseMultiPayload();
          if (v837 == 1)
          {
          }

          else if (!v837)
          {
            v838 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v839 = sub_25268D990();
            (*(*(v839 - 8) + 8))(v836 + v838, v839);
          }

          v862 = v828 + v835[7];
          v863 = *(v862 + 32);
          if (v863 != 255)
          {
            sub_252376DBC(*v862, *(v862 + 8), *(v862 + 16), *(v862 + 24), v863);
          }

          v864 = v828 + v835[8];
          v865 = *(v864 + 32);
          if (v865 != 255)
          {
            sub_252376DBC(*v864, *(v864 + 8), *(v864 + 16), *(v864 + 24), v865);
          }

          v866 = v828 + v835[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v867 = swift_getEnumCaseMultiPayload();
          if (v867 <= 3)
          {
LABEL_709:
            if (v867 == 1 || v867 == 3)
            {
              goto LABEL_711;
            }
          }

          else if (v867 == 4)
          {
LABEL_707:
            v1061 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v1062 = sub_25268D990();
            v1063 = *(v1062 - 8);
            if (!(*(v1063 + 48))(v866 + v1061, 1, v1062))
            {
              (*(v1063 + 8))(v866 + v1061, v1062);
            }
          }

          else
          {
LABEL_577:
            if (v867 == 5 || v867 == 7)
            {
LABEL_711:
            }
          }

          v1064 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

          v1065 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
          v1066 = v1064 + *(v1065 + 36);
          v1067 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v1067 - 8) + 48))(v1066, 1, v1067))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v1066);
            v1068 = *(v1067 + 20);
            v1069 = sub_25268DA10();
            (*(*(v1069 - 8) + 8))(v1066 + v1068, v1069);
          }

          v6 = v1221;
          if (*(v1064 + *(v1065 + 40) + 32) == 1)
          {
            goto LABEL_716;
          }

          goto LABEL_715;
        case 1u:
          v851 = v5;

          v852 = type metadata accessor for IconDescriptor();
          v853 = *(v852 + 20);
          v854 = sub_25268F910();
          v855 = *(*(v854 - 8) + 8);
          v855(v828 + v853, v854);
          v856 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v855(v856 + *(v852 + 20), v854);
          v857 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v858 = v828 + v857[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v859 = swift_getEnumCaseMultiPayload();
          if (v859 == 1)
          {
          }

          else if (!v859)
          {
            v860 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v861 = sub_25268D990();
            (*(*(v861 - 8) + 8))(v858 + v860, v861);
          }

          v868 = v828 + v857[7];
          v869 = *(v868 + 32);
          if (v869 != 255)
          {
            sub_252376DBC(*v868, *(v868 + 8), *(v868 + 16), *(v868 + 24), v869);
          }

          v870 = v828 + v857[8];
          v871 = *(v870 + 32);
          if (v871 != 255)
          {
            sub_252376DBC(*v870, *(v870 + 8), *(v870 + 16), *(v870 + 24), v871);
          }

          v872 = v828 + v857[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v873 = swift_getEnumCaseMultiPayload();
          if (v873 <= 3)
          {
LABEL_730:
            if (v873 == 1 || v873 == 3)
            {
              goto LABEL_732;
            }
          }

          else if (v873 == 4)
          {
LABEL_728:
            v1074 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v1075 = sub_25268D990();
            v1076 = *(v1075 - 8);
            if (!(*(v1076 + 48))(v872 + v1074, 1, v1075))
            {
              (*(v1076 + 8))(v872 + v1074, v1075);
            }
          }

          else
          {
LABEL_587:
            if (v873 == 5 || v873 == 7)
            {
LABEL_732:
            }
          }

          v1077 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

          v1078 = v1077 + *(type metadata accessor for ControlAction(0) + 20);
          v1079 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v1079 - 8) + 48))(v1078, 1, v1079))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v1078);
            v1080 = *(v1079 + 20);
            v1081 = sub_25268DA10();
            (*(*(v1081 - 8) + 8))(v1078 + v1080, v1081);
          }

          v5 = v851;
          v6 = v1221;
          goto LABEL_717;
        case 2u:
LABEL_632:
          v1200 = v5;

          v937 = type metadata accessor for IconDescriptor();
          v938 = *(v937 + 20);
          v939 = sub_25268F910();
          v940 = *(*(v939 - 8) + 8);
          v940(v828 + v938, v939);
          v941 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v940(v941 + *(v937 + 20), v939);
          v942 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

          v943 = *(v942 + 28);
          v944 = sub_25268EEA0();
          (*(*(v944 - 8) + 8))(v828 + v943, v944);

          v945 = v828 + *(v942 + 56);
          type metadata accessor for AccessoryControl.StatusProvider();
          v946 = swift_getEnumCaseMultiPayload();
          v1217 = v4;
          if (v946 <= 3)
          {
            if (v946 == 1 || v946 == 3)
            {
              goto LABEL_679;
            }
          }

          else if (v946 == 4)
          {
            v1051 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v1052 = sub_25268D990();
            v1053 = *(v1052 - 8);
            if (!(*(v1053 + 48))(v945 + v1051, 1, v1052))
            {
              (*(v1053 + 8))(v945 + v1051, v1052);
            }
          }

          else if (v946 == 5 || v946 == 7)
          {
LABEL_679:
          }

          v1027 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
          v1028 = v828 + *(v1027 + 48);

          v1029 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
          v1030 = v1028 + *(v1029 + 36);
          v1031 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          v1032 = *(*(v1031 - 8) + 48);
          if (!v1032(v1030, 1, v1031))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v1030);
            v1033 = v1032;
            v1034 = v1;
            v1035 = *(v1031 + 20);
            v1036 = sub_25268DA10();
            v1037 = v1030 + v1035;
            v1 = v1034;
            v1032 = v1033;
            (*(*(v1036 - 8) + 8))(v1037, v1036);
          }

          v1038 = *(v1029 + 40);
          v1039 = type metadata accessor for AccessoryControl.IncrementalState(0);
          if (!(*(*(v1039 - 8) + 48))(v1028 + v1038, 1, v1039))
          {
            v1040 = sub_25268ED70();
            (*(*(v1040 - 8) + 8))(v1028 + v1038, v1040);
          }

          v1041 = v828 + *(v1027 + 64);
          v1042 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
          v6 = v1221;
          if ((*(*(v1042 - 8) + 48))(v1041, 1, v1042))
          {
            v4 = v1217;
            v5 = v1200;
          }

          else
          {

            v1046 = v1041 + *(v1042 + 36);
            v4 = v1217;
            if (!v1032(v1046, 1, v1031))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v1046);
              v1047 = *(v1031 + 20);
              v1048 = sub_25268DA10();
              (*(*(v1048 - 8) + 8))(v1046 + v1047, v1048);
            }

            v5 = v1200;
            if (*(v1041 + *(v1042 + 40) + 32) != 1)
            {
LABEL_695:
            }
          }

          goto LABEL_717;
        case 3u:
LABEL_661:
          v1202 = v5;

          v991 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
          v992 = v828 + *(v991 + 24);
          v993 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v993 - 8) + 48))(v992, 1, v993))
          {

            v994 = type metadata accessor for IconDescriptor();
            v995 = *(v994 + 20);
            v1218 = v4;
            v996 = sub_25268F910();
            v997 = *(*(v996 - 8) + 8);
            v997(v992 + v995, v996);
            v998 = v992 + *(v993 + 28);

            v999 = *(v994 + 20);
            v6 = v1221;
            v997(v998 + v999, v996);
            v4 = v1218;
          }

          v1000 = v828 + *(v991 + 40);
          type metadata accessor for AccessoryControl.StatusProvider();
          v1001 = swift_getEnumCaseMultiPayload();
          if (v1001 <= 3)
          {
            if (v1001 == 1 || v1001 == 3)
            {
              goto LABEL_688;
            }
          }

          else if (v1001 == 4)
          {
            v1054 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v1055 = sub_25268D990();
            v1056 = *(v1055 - 8);
            if (!(*(v1056 + 48))(v1000 + v1054, 1, v1055))
            {
              (*(v1056 + 8))(v1000 + v1054, v1055);
            }
          }

          else if (v1001 == 5 || v1001 == 7)
          {
LABEL_688:
          }

          v1043 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

          v1044 = v1043 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
          v1045 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v1045 - 8) + 48))(v1044, 1, v1045))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v1044);
            v1049 = *(v1045 + 20);
            v1050 = sub_25268DA10();
            (*(*(v1050 - 8) + 8))(v1044 + v1049, v1050);
          }

          v5 = v1202;
          goto LABEL_717;
        case 4u:
LABEL_642:
          v1201 = v5;

          v957 = v828 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
          v958 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v958 - 8) + 48))(v957, 1, v958))
          {

            v959 = type metadata accessor for IconDescriptor();
            v960 = *(v959 + 20);
            v961 = sub_25268F910();
            v962 = *(*(v961 - 8) + 8);
            v962(v957 + v960, v961);
            v963 = v957 + *(v958 + 28);

            v964 = v961;
            v6 = v1221;
            v962(v963 + *(v959 + 20), v964);
          }

          v965 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

          v966 = v965 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
          v967 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v967 - 8) + 48))(v966, 1, v967))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v966);
            v968 = *(v967 + 20);
            v969 = sub_25268DA10();
            (*(*(v969 - 8) + 8))(v966 + v968, v969);
          }

          v5 = v1201;
          goto LABEL_717;
        case 5u:
LABEL_637:
          v840 = v5;

          v947 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

          v948 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
          v949 = v947 + *(v948 + 36);
          v950 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v950 - 8) + 48))(v949, 1, v950))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v949);
            v951 = *(v950 + 20);
            v952 = sub_25268DA10();
            (*(*(v952 - 8) + 8))(v949 + v951, v952);
          }

          v953 = *(v948 + 40);
          v954 = type metadata accessor for AccessoryControl.ColorState(0);
          if ((*(*(v954 - 8) + 48))(v947 + v953, 1, v954))
          {
            goto LABEL_673;
          }

          v955 = sub_25268ED20();
          v956 = *(v955 - 8);
          if ((*(v956 + 48))(v947 + v953, 1, v955))
          {
            goto LABEL_673;
          }

          (*(v956 + 8))(v947 + v953, v955);
          v5 = v840;
          goto LABEL_717;
        case 6u:
LABEL_647:
          v829 = v5;

          v970 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

          v971 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
          v972 = v970 + *(v971 + 36);
          v973 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v973 - 8) + 48))(v972, 1, v973))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v972);
            v974 = *(v973 + 20);
            v975 = sub_25268DA10();
            (*(*(v975 - 8) + 8))(v972 + v974, v975);
          }

          v912 = v970 + *(v971 + 40);
          v976 = type metadata accessor for AccessoryControl.ThermostatState(0);
          if ((*(*(v976 - 8) + 48))(v912, 1, v976))
          {
            goto LABEL_716;
          }

          v977 = v912 + *(v976 + 32);
          v978 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
          if ((*(*(v978 - 8) + 48))(v977, 1, v978))
          {
            goto LABEL_651;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v1085 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v1085 - 8) + 48))(v977, 1, v1085))
            {
              goto LABEL_651;
            }

            v1086 = *(v1085 + 48);
            v1087 = sub_25268D990();
            (*(*(v1087 - 8) + 8))(v977 + v1086, v1087);
          }

          else
          {
            v1085 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v1085 - 8) + 48))(v977, 3, v1085))
            {
              goto LABEL_651;
            }

            v1121 = *(v1085 + 48);
            v1122 = sub_25268D990();
            v1204 = *(v1122 - 8);
            if (!(*(v1204 + 48))(v977 + v1121, 1, v1122))
            {
              (*(v1204 + 8))(v977 + v1121, v1122);
            }

            v6 = v1221;
          }

          v1123 = *(v1085 + 64);
          v1124 = sub_25268DB10();
          (*(*(v1124 - 8) + 8))(v977 + v1123, v1124);
LABEL_651:
          v916 = *(v976 + 36);
          goto LABEL_652;
        case 7u:
LABEL_654:
          v979 = v5;

          v980 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

          v981 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
          v982 = v980 + *(v981 + 36);
          v983 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v983 - 8) + 48))(v982, 1, v983))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v982);
            v984 = *(v983 + 20);
            v985 = sub_25268DA10();
            (*(*(v985 - 8) + 8))(v982 + v984, v985);
          }

          v5 = v979;
          if (*(v980 + *(v981 + 40) + 8))
          {
          }

          goto LABEL_717;
        case 8u:
          v840 = v5;

          v841 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

          v842 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
          v843 = v841 + *(v842 + 36);
          v844 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v844 - 8) + 48))(v843, 1, v844))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v843);
            v845 = *(v844 + 20);
            v846 = sub_25268DA10();
            (*(*(v846 - 8) + 8))(v843 + v845, v846);
          }

          v847 = v841 + *(v842 + 40);
          v848 = type metadata accessor for AccessoryControl.StatusButtonState(0);
          if ((*(*(v848 - 8) + 48))(v847, 1, v848) || (, , v828 = v847 + *(v848 + 24), v849 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0), (*(*(v849 - 8) + 48))(v828, 1, v849)))
          {
LABEL_673:
            v5 = v840;
            goto LABEL_717;
          }

          v850 = swift_getEnumCaseMultiPayload();
          if (v850 != 2)
          {
            if (v850 == 1)
            {
              type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
              v5 = v840;
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                goto LABEL_717;
              }
            }

            else
            {
              v5 = v840;
              if (v850)
              {
                goto LABEL_717;
              }

LABEL_773:
              type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
              if (swift_getEnumCaseMultiPayload() != 2)
              {
                goto LABEL_717;
              }
            }

LABEL_802:
            v1152 = sub_25268DA10();
            (*(*(v1152 - 8) + 8))(v828, v1152);
            goto LABEL_717;
          }

LABEL_790:

LABEL_660:

          v5 = v840;
          goto LABEL_717;
        case 9u:
LABEL_658:
          v840 = v5;

          v986 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

          v987 = v986 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
          v988 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v988 - 8) + 48))(v987, 1, v988))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v987);
            v989 = *(v988 + 20);
            v990 = sub_25268DA10();
            (*(*(v990 - 8) + 8))(v987 + v989, v990);
          }

          goto LABEL_660;
        case 0xAu:
          goto LABEL_695;
        case 0xBu:
          goto LABEL_802;
        case 0xCu:
LABEL_617:
          v829 = v5;

          if (*(v828 + 48) != 1)
          {
          }

          v906 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

          v907 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
          v908 = v906 + *(v907 + 36);
          v909 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v909 - 8) + 48))(v908, 1, v909))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v908);
            v910 = *(v909 + 20);
            v911 = sub_25268DA10();
            (*(*(v911 - 8) + 8))(v908 + v910, v911);
          }

          v912 = v906 + *(v907 + 40);
          v913 = type metadata accessor for AccessoryControl.AutoClimateState(0);
          if ((*(*(v913 - 8) + 48))(v912, 1, v913))
          {
            goto LABEL_716;
          }

          v914 = v912 + *(v913 + 20);
          v915 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
          if ((*(*(v915 - 8) + 48))(v914, 1, v915))
          {
            goto LABEL_623;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v1082 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v1082 - 8) + 48))(v914, 1, v1082))
            {
              goto LABEL_623;
            }

            v1083 = *(v1082 + 48);
            v1084 = sub_25268D990();
            (*(*(v1084 - 8) + 8))(v914 + v1083, v1084);
          }

          else
          {
            v1082 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v1082 - 8) + 48))(v914, 3, v1082))
            {
              goto LABEL_623;
            }

            v1111 = *(v1082 + 48);
            v1112 = sub_25268D990();
            v1203 = *(v1112 - 8);
            if (!(*(v1203 + 48))(v914 + v1111, 1, v1112))
            {
              (*(v1203 + 8))(v914 + v1111, v1112);
            }

            v6 = v1221;
          }

          v1113 = *(v1082 + 64);
          v1114 = sub_25268DB10();
          (*(*(v1114 - 8) + 8))(v914 + v1113, v1114);
LABEL_623:
          v916 = *(v913 + 24);
LABEL_652:
          if (*(v912 + v916 + 8) >= 8uLL)
          {
LABEL_715:
          }

LABEL_716:
          v5 = v829;
          goto LABEL_717;
        case 0xDu:
LABEL_668:

          v1002 = v5;
          v1003 = type metadata accessor for IconDescriptor();
          v1004 = *(v1003 + 20);
          v1005 = sub_25268F910();
          v1006 = *(*(v1005 - 8) + 8);
          v1006(v828 + v1004, v1005);
          v1007 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v1006(v1007 + *(v1003 + 20), v1005);
          v6 = v1221;
          type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

          v5 = v1002;

          goto LABEL_717;
        case 0xEu:
LABEL_624:
          v829 = v5;

          v917 = type metadata accessor for IconDescriptor();
          v918 = *(v917 + 20);
          v919 = sub_25268F910();
          v920 = *(*(v919 - 8) + 8);
          v920(v828 + v918, v919);
          v921 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v920(v921 + *(v917 + 20), v919);
          type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

          v922 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

          v923 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
          v924 = v922 + *(v923 + 36);
          v925 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v925 - 8) + 48))(v924, 1, v925))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v924);
            v926 = *(v925 + 20);
            v927 = sub_25268DA10();
            (*(*(v927 - 8) + 8))(v924 + v926, v927);
          }

          v928 = v922 + *(v923 + 40);
          v929 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
          v6 = v1221;
          if (!(*(*(v929 - 8) + 48))(v928, 1, v929))
          {
            v930 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
            if (!(*(*(v930 - 8) + 48))(v928, 1, v930))
            {
              v931 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
              if (!(*(*(v931 - 8) + 48))(v928, 3, v931))
              {
                v932 = *(v931 + 48);
                v933 = sub_25268D990();
                v934 = *(v933 - 8);
                if (!(*(v934 + 48))(v928 + v932, 1, v933))
                {
                  (*(v934 + 8))(v928 + v932, v933);
                }

                v935 = *(v931 + 64);
                v936 = sub_25268DB10();
                (*(*(v936 - 8) + 8))(v928 + v935, v936);
              }
            }
          }

          goto LABEL_716;
        default:
          goto LABEL_717;
      }

    case 1:
LABEL_717:

      break;
    case 0:
      type metadata accessor for AccessoryControl.ElementIdentifier();
      v9 = swift_getEnumCaseMultiPayload();
      if (v9 > 3)
      {
        if (v9 == 4 || v9 == 5)
        {
        }
      }

      else if (v9)
      {
        if (v9 == 1)
        {
        }
      }

      else
      {
        v23 = sub_25268DA10();
        (*(*(v23 - 8) + 8))(v7, v23);
      }

      v1221 = v6;
      v1220 = type metadata accessor for AccessoryControl(0);
      v24 = v7 + *(v1220 + 20);
      type metadata accessor for AccessoryControl.State(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:

          v25 = type metadata accessor for IconDescriptor();
          v26 = *(v25 + 20);
          v27 = sub_25268F910();
          v28 = *(*(v27 - 8) + 8);
          v28(v24 + v26, v27);
          v29 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v28(v29 + *(v25 + 20), v27);
          v30 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v31 = v24 + v30[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v32 = swift_getEnumCaseMultiPayload();
          if (v32 == 1)
          {
          }

          else if (!v32)
          {
            v33 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v34 = sub_25268D990();
            (*(*(v34 - 8) + 8))(v31 + v33, v34);
          }

          v514 = v24 + v30[7];
          v515 = *(v514 + 32);
          if (v515 != 255)
          {
            sub_252376DBC(*v514, *(v514 + 8), *(v514 + 16), *(v514 + 24), v515);
          }

          v516 = v24 + v30[8];
          v517 = *(v516 + 32);
          if (v517 != 255)
          {
            sub_252376DBC(*v516, *(v516 + 8), *(v516 + 16), *(v516 + 24), v517);
          }

          v518 = v24 + v30[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v519 = swift_getEnumCaseMultiPayload();
          if (v519 <= 3)
          {
            if (v519 != 1 && v519 != 3)
            {
              goto LABEL_309;
            }
          }

          else
          {
            if (v519 == 4)
            {
              v703 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
              v704 = sub_25268D990();
              v705 = *(v704 - 8);
              if (!(*(v705 + 48))(v518 + v703, 1, v704))
              {
                (*(v705 + 8))(v518 + v703, v704);
              }

              goto LABEL_309;
            }

            if (v519 != 5 && v519 != 7)
            {
LABEL_309:

              v520 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

              v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
              v522 = v520 + *(v521 + 36);
              v523 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
              if (!(*(*(v523 - 8) + 48))(v522, 1, v523))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v522);
                v524 = *(v523 + 20);
                v525 = sub_25268DA10();
                (*(*(v525 - 8) + 8))(v522 + v524, v525);
              }

              v332 = v520 + *(v521 + 40);
              goto LABEL_312;
            }
          }

          goto LABEL_309;
        case 1u:

          v221 = type metadata accessor for IconDescriptor();
          v222 = *(v221 + 20);
          v223 = sub_25268F910();
          v224 = *(*(v223 - 8) + 8);
          v224(v24 + v222, v223);
          v225 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v224(v225 + *(v221 + 20), v223);
          v226 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v227 = v24 + v226[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v228 = swift_getEnumCaseMultiPayload();
          if (v228 == 1)
          {
          }

          else if (!v228)
          {
            v229 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v230 = sub_25268D990();
            (*(*(v230 - 8) + 8))(v227 + v229, v230);
          }

          v526 = v24 + v226[7];
          v527 = *(v526 + 32);
          if (v527 != 255)
          {
            sub_252376DBC(*v526, *(v526 + 8), *(v526 + 16), *(v526 + 24), v527);
          }

          v528 = v24 + v226[8];
          v529 = *(v528 + 32);
          if (v529 != 255)
          {
            sub_252376DBC(*v528, *(v528 + 8), *(v528 + 16), *(v528 + 24), v529);
          }

          v530 = v24 + v226[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v531 = swift_getEnumCaseMultiPayload();
          if (v531 <= 3)
          {
            if (v531 == 1 || v531 == 3)
            {
              goto LABEL_326;
            }
          }

          else if (v531 == 4)
          {
            v706 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v707 = sub_25268D990();
            v708 = *(v707 - 8);
            if (!(*(v708 + 48))(v530 + v706, 1, v707))
            {
              (*(v708 + 8))(v530 + v706, v707);
            }
          }

          else if (v531 == 5 || v531 == 7)
          {
LABEL_326:
          }

          v532 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

          v533 = v532 + *(type metadata accessor for ControlAction(0) + 20);
          v534 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v534 - 8) + 48))(v533, 1, v534))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v533);
            v535 = *(v534 + 20);
            v536 = sub_25268DA10();
            (*(*(v536 - 8) + 8))(v533 + v535, v536);
          }

          goto LABEL_329;
        case 2u:

          v165 = type metadata accessor for IconDescriptor();
          v166 = *(v165 + 20);
          v167 = sub_25268F910();
          v168 = *(*(v167 - 8) + 8);
          v168(v24 + v166, v167);
          v169 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v168(v169 + *(v165 + 20), v167);
          v170 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

          v171 = *(v170 + 28);
          v172 = sub_25268EEA0();
          (*(*(v172 - 8) + 8))(v24 + v171, v172);

          v173 = v24 + *(v170 + 56);
          type metadata accessor for AccessoryControl.StatusProvider();
          v174 = swift_getEnumCaseMultiPayload();
          v1206 = v1;
          v1212 = v4;
          v1187 = (v4 + 16) & ~v4;
          if (v174 <= 3)
          {
            if (v174 == 1 || v174 == 3)
            {
              goto LABEL_167;
            }
          }

          else if (v174 == 4)
          {
            v688 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v689 = sub_25268D990();
            v690 = *(v689 - 8);
            if (!(*(v690 + 48))(v173 + v688, 1, v689))
            {
              (*(v690 + 8))(v173 + v688, v689);
            }
          }

          else if (v174 == 5 || v174 == 7)
          {
LABEL_167:
          }

          v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
          v315 = v24 + *(v314 + 48);

          v316 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
          v317 = v315 + *(v316 + 36);
          v318 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          v319 = *(*(v318 - 8) + 48);
          if (!v319(v317, 1, v318))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v317);
            v320 = v319;
            v321 = *(v318 + 20);
            v322 = sub_25268DA10();
            v323 = v317 + v321;
            v319 = v320;
            (*(*(v322 - 8) + 8))(v323, v322);
          }

          v324 = *(v316 + 40);
          v325 = type metadata accessor for AccessoryControl.IncrementalState(0);
          if (!(*(*(v325 - 8) + 48))(v315 + v324, 1, v325))
          {
            v326 = sub_25268ED70();
            (*(*(v326 - 8) + 8))(v315 + v324, v326);
          }

          v327 = v24 + *(v314 + 64);
          v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
          v1 = v1206;
          v4 = v1212;
          v5 = v1187;
          if (!(*(*(v328 - 8) + 48))(v327, 1, v328))
          {

            v329 = v327 + *(v328 + 36);
            if (!v319(v329, 1, v318))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v329);
              v330 = *(v318 + 20);
              v331 = sub_25268DA10();
              (*(*(v331 - 8) + 8))(v329 + v330, v331);
            }

            v332 = v327 + *(v328 + 40);
LABEL_312:
            if (*(v332 + 32) != 1)
            {
LABEL_329:
            }
          }

          goto LABEL_330;
        case 3u:

          v203 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
          v204 = v24 + *(v203 + 24);
          v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v205 - 8) + 48))(v204, 1, v205))
          {

            v206 = type metadata accessor for IconDescriptor();
            v207 = *(v206 + 20);
            v1208 = v1;
            v1214 = v4;
            v208 = sub_25268F910();
            v209 = *(*(v208 - 8) + 8);
            v209(v204 + v207, v208);
            v210 = v204 + *(v205 + 28);

            v211 = v208;
            v4 = v1214;
            v209(v210 + *(v206 + 20), v211);
            v1 = v1208;
          }

          v212 = v24 + *(v203 + 40);
          type metadata accessor for AccessoryControl.StatusProvider();
          v213 = swift_getEnumCaseMultiPayload();
          if (v213 <= 3)
          {
            if (v213 == 1 || v213 == 3)
            {
              goto LABEL_183;
            }
          }

          else if (v213 == 4)
          {
            v694 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v695 = sub_25268D990();
            v696 = *(v695 - 8);
            if (!(*(v696 + 48))(v212 + v694, 1, v695))
            {
              (*(v696 + 8))(v212 + v694, v695);
            }
          }

          else if (v213 == 5 || v213 == 7)
          {
LABEL_183:
          }

          v338 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

          v339 = v338 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
          v340 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v340 - 8) + 48))(v339, 1, v340))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v339);
            v341 = *(v340 + 20);
            v342 = sub_25268DA10();
            (*(*(v342 - 8) + 8))(v339 + v341, v342);
          }

LABEL_330:
          v537 = v1220;

          v538 = type metadata accessor for AccessoryControlModule.Layout.RVC(0);
          v539 = v7 + *(v538 + 20);
          v540 = *(*(v1220 - 8) + 48);
          if (v540(v539, 1, v1220))
          {
            goto LABEL_604;
          }

          v541 = swift_getEnumCaseMultiPayload();
          v1210 = v1;
          v1216 = v4;
          v1181 = v540;
          if (v541 > 3)
          {
            if (v541 == 4 || v541 == 5)
            {
            }
          }

          else if (v541)
          {
            if (v541 == 1)
            {
            }
          }

          else
          {
            v542 = sub_25268DA10();
            (*(*(v542 - 8) + 8))(v539, v542);
          }

          break;
        case 4u:

          v103 = v24 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
          v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v104 - 8) + 48))(v103, 1, v104))
          {

            v105 = type metadata accessor for IconDescriptor();
            v106 = *(v105 + 20);
            v107 = sub_25268F910();
            v108 = *(*(v107 - 8) + 8);
            v108(v103 + v106, v107);
            v109 = v103 + *(v104 + 28);

            v108(v109 + *(v105 + 20), v107);
            v5 = (v4 + 16) & ~v4;
          }

          v110 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

          v111 = v110 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
          v112 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v112 - 8) + 48))(v111, 1, v112))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v111);
            v113 = v5;
            v114 = *(v112 + 20);
            v115 = sub_25268DA10();
            v116 = v111 + v114;
            v5 = v113;
            (*(*(v115 - 8) + 8))(v116, v115);
          }

          goto LABEL_329;
        case 5u:

          v257 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

          v258 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
          v259 = v257 + *(v258 + 36);
          v260 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v260 - 8) + 48))(v259, 1, v260))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v259);
            v261 = *(v260 + 20);
            v262 = sub_25268DA10();
            v263 = v259 + v261;
            v5 = (v4 + 16) & ~v4;
            (*(*(v262 - 8) + 8))(v263, v262);
          }

          v264 = *(v258 + 40);
          v265 = type metadata accessor for AccessoryControl.ColorState(0);
          if (!(*(*(v265 - 8) + 48))(v257 + v264, 1, v265))
          {
            v266 = sub_25268ED20();
            v267 = *(v266 - 8);
            if (!(*(v267 + 48))(v257 + v264, 1, v266))
            {
              (*(v267 + 8))(v257 + v264, v266);
            }
          }

          goto LABEL_330;
        case 6u:

          v279 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

          v280 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
          v281 = v279 + *(v280 + 36);
          v282 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v282 - 8) + 48))(v281, 1, v282))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v281);
            v283 = *(v282 + 20);
            v284 = sub_25268DA10();
            v285 = v281 + v283;
            v5 = (v4 + 16) & ~v4;
            (*(*(v284 - 8) + 8))(v285, v284);
          }

          v136 = v279 + *(v280 + 40);
          v286 = type metadata accessor for AccessoryControl.ThermostatState(0);
          if ((*(*(v286 - 8) + 48))(v136, 1, v286))
          {
            goto LABEL_330;
          }

          v138 = v5;
          v139 = v4;
          v287 = v136 + *(v286 + 32);
          v288 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
          if ((*(*(v288 - 8) + 48))(v287, 1, v288))
          {
            goto LABEL_148;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v732 - 8) + 48))(v287, 1, v732))
            {
              goto LABEL_148;
            }

            v733 = *(v732 + 48);
            v734 = sub_25268D990();
            (*(*(v734 - 8) + 8))(v287 + v733, v734);
          }

          else
          {
            v732 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v732 - 8) + 48))(v287, 3, v732))
            {
              goto LABEL_148;
            }

            v799 = *(v732 + 48);
            v800 = sub_25268D990();
            v1185 = *(v800 - 8);
            if (!(*(v1185 + 48))(v287 + v799, 1, v800))
            {
              (*(v1185 + 8))(v287 + v799, v800);
            }
          }

          v801 = *(v732 + 64);
          v802 = sub_25268DB10();
          (*(*(v802 - 8) + 8))(v287 + v801, v802);
LABEL_148:
          v142 = *(v286 + 36);
          goto LABEL_149;
        case 7u:

          v214 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

          v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
          v216 = v214 + *(v215 + 36);
          v217 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v217 - 8) + 48))(v216, 1, v217))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v216);
            v218 = *(v217 + 20);
            v219 = sub_25268DA10();
            v220 = v216 + v218;
            v5 = (v4 + 16) & ~v4;
            (*(*(v219 - 8) + 8))(v220, v219);
          }

          if (*(v214 + *(v215 + 40) + 8))
          {
            goto LABEL_118;
          }

          goto LABEL_330;
        case 8u:

          v143 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

          v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
          v145 = v143 + *(v144 + 36);
          v146 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v146 - 8) + 48))(v145, 1, v146))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v145);
            v147 = *(v146 + 20);
            v148 = sub_25268DA10();
            v149 = v145 + v147;
            v5 = (v4 + 16) & ~v4;
            (*(*(v148 - 8) + 8))(v149, v148);
          }

          v150 = v143 + *(v144 + 40);
          v151 = type metadata accessor for AccessoryControl.StatusButtonState(0);
          if ((*(*(v151 - 8) + 48))(v150, 1, v151))
          {
            goto LABEL_330;
          }

          v24 = v150 + *(v151 + 24);
          v152 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          if ((*(*(v152 - 8) + 48))(v24, 1, v152))
          {
            goto LABEL_330;
          }

          v153 = swift_getEnumCaseMultiPayload();
          if (v153 == 2)
          {
LABEL_118:

            goto LABEL_329;
          }

          if (v153 <= 1)
          {
            type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
LABEL_83:
              v154 = sub_25268DA10();
              (*(*(v154 - 8) + 8))(v24, v154);
            }
          }

          goto LABEL_330;
        case 9u:

          v289 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

          v290 = v289 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
          v291 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v291 - 8) + 48))(v290, 1, v291))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v290);
            v292 = *(v291 + 20);
            v293 = sub_25268DA10();
            v294 = v290 + v292;
            v5 = (v4 + 16) & ~v4;
            (*(*(v293 - 8) + 8))(v294, v293);
          }

          goto LABEL_329;
        case 0xAu:
          goto LABEL_329;
        case 0xBu:
          goto LABEL_83;
        case 0xCu:

          if (*(v24 + 48) != 1)
          {
          }

          v129 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

          v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
          v131 = v129 + *(v130 + 36);
          v132 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v132 - 8) + 48))(v131, 1, v132))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v131);
            v133 = *(v132 + 20);
            v134 = sub_25268DA10();
            v135 = v131 + v133;
            v5 = (v4 + 16) & ~v4;
            (*(*(v134 - 8) + 8))(v135, v134);
          }

          v136 = v129 + *(v130 + 40);
          v137 = type metadata accessor for AccessoryControl.AutoClimateState(0);
          if ((*(*(v137 - 8) + 48))(v136, 1, v137))
          {
            goto LABEL_330;
          }

          v138 = v5;
          v139 = v4;
          v140 = v136 + *(v137 + 20);
          v141 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
          if ((*(*(v141 - 8) + 48))(v140, 1, v141))
          {
            goto LABEL_75;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v726 - 8) + 48))(v140, 1, v726))
            {
              goto LABEL_75;
            }

            v727 = *(v726 + 48);
            v728 = sub_25268D990();
            (*(*(v728 - 8) + 8))(v140 + v727, v728);
          }

          else
          {
            v726 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v726 - 8) + 48))(v140, 3, v726))
            {
              goto LABEL_75;
            }

            v791 = *(v726 + 48);
            v792 = sub_25268D990();
            v1183 = *(v792 - 8);
            if (!(*(v1183 + 48))(v140 + v791, 1, v792))
            {
              (*(v1183 + 8))(v140 + v791, v792);
            }
          }

          v793 = *(v726 + 64);
          v794 = sub_25268DB10();
          (*(*(v794 - 8) + 8))(v140 + v793, v794);
LABEL_75:
          v142 = *(v137 + 24);
LABEL_149:
          v4 = v139;
          v5 = v138;
          if (*(v136 + v142 + 8) < 8uLL)
          {
            goto LABEL_330;
          }

          goto LABEL_329;
        case 0xDu:

          v274 = type metadata accessor for IconDescriptor();
          v275 = *(v274 + 20);
          v276 = sub_25268F910();
          v277 = *(*(v276 - 8) + 8);
          v277(v24 + v275, v276);
          v278 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v277(v278 + *(v274 + 20), v276);
          v5 = (v4 + 16) & ~v4;
          type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

          goto LABEL_329;
        case 0xEu:

          v55 = type metadata accessor for IconDescriptor();
          v56 = *(v55 + 20);
          v57 = sub_25268F910();
          v58 = *(*(v57 - 8) + 8);
          v58(v24 + v56, v57);
          v59 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v58(v59 + *(v55 + 20), v57);
          type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

          v60 = v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
          v62 = v60 + *(v61 + 36);
          v63 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v63 - 8) + 48))(v62, 1, v63))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v62);
            v64 = *(v63 + 20);
            v65 = sub_25268DA10();
            (*(*(v65 - 8) + 8))(v62 + v64, v65);
          }

          v66 = v60 + *(v61 + 40);
          v67 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
          v5 = (v4 + 16) & ~v4;
          if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
          {
            v68 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
            if (!(*(*(v68 - 8) + 48))(v66, 1, v68))
            {
              v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
              if (!(*(*(v69 - 8) + 48))(v66, 3, v69))
              {
                v70 = *(v69 + 48);
                v71 = sub_25268D990();
                v72 = *(v71 - 8);
                if (!(*(v72 + 48))(v66 + v70, 1, v71))
                {
                  (*(v72 + 8))(v66 + v70, v71);
                }

                v73 = *(v69 + 64);
                v74 = sub_25268DB10();
                (*(*(v74 - 8) + 8))(v66 + v73, v74);
              }
            }
          }

          goto LABEL_330;
        default:
          goto LABEL_330;
      }

      v543 = v539 + *(v1220 + 20);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v1194 = v5;

          v544 = type metadata accessor for IconDescriptor();
          v545 = *(v544 + 20);
          v546 = sub_25268F910();
          v547 = *(*(v546 - 8) + 8);
          v547(v543 + v545, v546);
          v548 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v547(v548 + *(v544 + 20), v546);
          v549 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v550 = v543 + v549[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v551 = swift_getEnumCaseMultiPayload();
          if (v551 == 1)
          {
          }

          else if (!v551)
          {
            v552 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v553 = sub_25268D990();
            (*(*(v553 - 8) + 8))(v550 + v552, v553);
          }

          v761 = v543 + v549[7];
          v762 = *(v761 + 32);
          if (v762 != 255)
          {
            sub_252376DBC(*v761, *(v761 + 8), *(v761 + 16), *(v761 + 24), v762);
          }

          v763 = v543 + v549[8];
          v764 = *(v763 + 32);
          v5 = v1194;
          if (v764 != 255)
          {
            sub_252376DBC(*v763, *(v763 + 8), *(v763 + 16), *(v763 + 24), v764);
          }

          v765 = v543 + v549[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v766 = swift_getEnumCaseMultiPayload();
          if (v766 <= 3)
          {
            if (v766 != 1 && v766 != 3)
            {
              goto LABEL_495;
            }
          }

          else
          {
            if (v766 == 4)
            {
              v1101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
              v1102 = sub_25268D990();
              v1103 = *(v1102 - 8);
              v1174 = v1101;
              v1104 = v765 + v1101;
              v1105 = v1102;
              if (!(*(v1103 + 48))(v1104, 1, v1102))
              {
                (*(v1103 + 8))(v765 + v1174, v1105);
              }

              goto LABEL_495;
            }

            if (v766 != 5 && v766 != 7)
            {
LABEL_495:

              v767 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8) + 48);

              v768 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
              v769 = v767 + *(v768 + 36);
              v770 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
              if (!(*(*(v770 - 8) + 48))(v769, 1, v770))
              {
                __swift_destroy_boxed_opaque_existential_1Tm(v769);
                v771 = *(v770 + 20);
                v772 = sub_25268DA10();
                v773 = v769 + v771;
                v5 = v1194;
                (*(*(v772 - 8) + 8))(v773, v772);
              }

              v774 = v767 + *(v768 + 40);
              goto LABEL_601;
            }
          }

          goto LABEL_495;
        case 1u:
          v1198 = v5;

          v639 = type metadata accessor for IconDescriptor();
          v640 = *(v639 + 20);
          v641 = sub_25268F910();
          v642 = *(*(v641 - 8) + 8);
          v642(v543 + v640, v641);
          v643 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v642(v643 + *(v639 + 20), v641);
          v644 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

          v645 = v543 + v644[6];
          type metadata accessor for ControlTextModifier.Config(0);
          v646 = swift_getEnumCaseMultiPayload();
          if (v646 == 1)
          {
          }

          else if (!v646)
          {
            v647 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
            v648 = sub_25268D990();
            (*(*(v648 - 8) + 8))(v645 + v647, v648);
          }

          v775 = v543 + v644[7];
          v776 = *(v775 + 32);
          if (v776 != 255)
          {
            sub_252376DBC(*v775, *(v775 + 8), *(v775 + 16), *(v775 + 24), v776);
          }

          v777 = v543 + v644[8];
          v778 = *(v777 + 32);
          v5 = v1198;
          if (v778 != 255)
          {
            sub_252376DBC(*v777, *(v777 + 8), *(v777 + 16), *(v777 + 24), v778);
          }

          v779 = v543 + v644[11];
          type metadata accessor for AccessoryControl.StatusProvider();
          v780 = swift_getEnumCaseMultiPayload();
          if (v780 <= 3)
          {
            if (v780 == 1 || v780 == 3)
            {
              goto LABEL_510;
            }
          }

          else if (v780 == 4)
          {
            v1106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v1107 = sub_25268D990();
            v1108 = *(v1107 - 8);
            v1175 = v1106;
            v1109 = v779 + v1106;
            v1110 = v1107;
            if (!(*(v1108 + 48))(v1109, 1, v1107))
            {
              (*(v1108 + 8))(v779 + v1175, v1110);
            }
          }

          else if (v780 == 5 || v780 == 7)
          {
LABEL_510:
          }

          v781 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB420) + 48);

          v782 = v781 + *(type metadata accessor for ControlAction(0) + 20);
          v783 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v783 - 8) + 48))(v782, 1, v783))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v782);
            v784 = *(v783 + 20);
            v785 = sub_25268DA10();
            v786 = v782 + v784;
            v5 = v1198;
            (*(*(v785 - 8) + 8))(v786, v785);
          }

          goto LABEL_602;
        case 2u:
          v1197 = v5;

          v613 = type metadata accessor for IconDescriptor();
          v614 = *(v613 + 20);
          v615 = sub_25268F910();
          v616 = *(*(v615 - 8) + 8);
          v616(v543 + v614, v615);
          v617 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v616(v617 + *(v613 + 20), v615);
          v618 = type metadata accessor for AccessoryControl.IncrementalConfig(0);

          v619 = *(v618 + 28);
          v620 = sub_25268EEA0();
          (*(*(v620 - 8) + 8))(v543 + v619, v620);

          v621 = v543 + *(v618 + 56);
          type metadata accessor for AccessoryControl.StatusProvider();
          v622 = swift_getEnumCaseMultiPayload();
          if (v622 <= 3)
          {
            if (v622 == 1)
            {

              v5 = v1197;
            }

            else
            {
              v5 = v1197;
              if (v622 == 3)
              {
LABEL_375:
              }
            }
          }

          else if (v622 == 4)
          {
            v806 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v807 = sub_25268D990();
            v808 = *(v807 - 8);
            v5 = v1197;
            if (!(*(v808 + 48))(v621 + v806, 1, v807))
            {
              (*(v808 + 8))(v621 + v806, v807);
            }
          }

          else
          {
            v5 = v1197;
            if (v622 == 5 || v622 == 7)
            {
              goto LABEL_375;
            }
          }

          v1171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0);
          v877 = v543 + *(v1171 + 48);

          v878 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78);
          v879 = v877 + *(v878 + 36);
          v880 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          v1165 = *(*(v880 - 8) + 48);
          if (!v1165(v879, 1, v880))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v879);
            v881 = *(v880 + 20);
            v882 = sub_25268DA10();
            v883 = v879 + v881;
            v5 = v1197;
            (*(*(v882 - 8) + 8))(v883, v882);
          }

          v884 = *(v878 + 40);
          v885 = type metadata accessor for AccessoryControl.IncrementalState(0);
          if (!(*(*(v885 - 8) + 48))(v877 + v884, 1, v885))
          {
            v886 = sub_25268ED70();
            (*(*(v886 - 8) + 8))(v877 + v884, v886);
          }

          v887 = v543 + *(v1171 + 64);
          v888 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80);
          if (!(*(*(v888 - 8) + 48))(v887, 1, v888))
          {

            v889 = v887 + *(v888 + 36);
            if (!v1165(v889, 1, v880))
            {
              __swift_destroy_boxed_opaque_existential_1Tm(v889);
              v890 = *(v880 + 20);
              v891 = sub_25268DA10();
              v892 = v889 + v890;
              v5 = v1197;
              (*(*(v891 - 8) + 8))(v892, v891);
            }

            v774 = v887 + *(v888 + 40);
LABEL_601:
            if (*(v774 + 32) != 1)
            {
LABEL_602:
            }
          }

          goto LABEL_603;
        case 3u:

          v623 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
          v624 = v543 + *(v623 + 24);
          v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v625 - 8) + 48))(v624, 1, v625))
          {

            v626 = type metadata accessor for IconDescriptor();
            v1163 = *(v626 + 20);
            v1169 = v626;
            v1155 = sub_25268F910();
            v627 = *(*(v1155 - 8) + 8);
            v627(v624 + v1163, v1155);
            v628 = v624 + *(v625 + 28);

            v627(v628 + *(v1169 + 20), v1155);
          }

          v629 = v543 + *(v623 + 40);
          type metadata accessor for AccessoryControl.StatusProvider();
          v630 = swift_getEnumCaseMultiPayload();
          if (v630 <= 3)
          {
            if (v630 == 1 || v630 == 3)
            {
              goto LABEL_435;
            }
          }

          else if (v630 == 4)
          {
            v1088 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB380) + 64);
            v1089 = sub_25268D990();
            v1090 = *(v1089 - 8);
            if (!(*(v1090 + 48))(v629 + v1088, 1, v1089))
            {
              (*(v1090 + 8))(v629 + v1088, v1089);
            }
          }

          else if (v630 == 5 || v630 == 7)
          {
LABEL_435:
          }

          v716 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0) + 48);

          v717 = v716 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68) + 36);
          v718 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v718 - 8) + 48))(v717, 1, v718))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v717);
            v719 = v5;
            v720 = *(v718 + 20);
            v721 = sub_25268DA10();
            v722 = v717 + v720;
            v5 = v719;
            (*(*(v721 - 8) + 8))(v722, v721);
          }

LABEL_603:

          v1 = v1210;
          v4 = v1216;
          v537 = v1220;
          v540 = v1181;
LABEL_604:
          v893 = v7 + *(v538 + 24);
          v6 = v1221;
          if (!v540(v893, 1, v537))
          {
            v894 = swift_getEnumCaseMultiPayload();
            if (v894 > 3)
            {
              if (v894 == 4 || v894 == 5)
              {
              }
            }

            else if (v894)
            {
              if (v894 == 1)
              {
              }
            }

            else
            {
              v895 = sub_25268DA10();
              (*(*(v895 - 8) + 8))(v893, v895);
            }

            v828 = v893 + *(v537 + 20);
            switch(swift_getEnumCaseMultiPayload())
            {
              case 0u:
                v829 = v5;

                v896 = type metadata accessor for IconDescriptor();
                v897 = *(v896 + 20);
                v898 = sub_25268F910();
                v899 = *(*(v898 - 8) + 8);
                v899(v828 + v897, v898);
                v900 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

                v899(v900 + *(v896 + 20), v898);
                v901 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

                v902 = v828 + v901[6];
                type metadata accessor for ControlTextModifier.Config(0);
                v903 = swift_getEnumCaseMultiPayload();
                if (v903 == 1)
                {
                }

                else if (!v903)
                {
                  v904 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
                  v905 = sub_25268D990();
                  (*(*(v905 - 8) + 8))(v902 + v904, v905);
                }

                v1057 = v828 + v901[7];
                v1058 = *(v1057 + 32);
                if (v1058 != 255)
                {
                  sub_252376DBC(*v1057, *(v1057 + 8), *(v1057 + 16), *(v1057 + 24), v1058);
                }

                v1059 = v828 + v901[8];
                v1060 = *(v1059 + 32);
                if (v1060 != 255)
                {
                  sub_252376DBC(*v1059, *(v1059 + 8), *(v1059 + 16), *(v1059 + 24), v1060);
                }

                v866 = v828 + v901[11];
                type metadata accessor for AccessoryControl.StatusProvider();
                v867 = swift_getEnumCaseMultiPayload();
                if (v867 <= 3)
                {
                  goto LABEL_709;
                }

                if (v867 == 4)
                {
                  goto LABEL_707;
                }

                goto LABEL_577;
              case 1u:
                v851 = v5;

                v1017 = type metadata accessor for IconDescriptor();
                v1018 = *(v1017 + 20);
                v1019 = sub_25268F910();
                v1020 = *(*(v1019 - 8) + 8);
                v1020(v828 + v1018, v1019);
                v1021 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

                v1020(v1021 + *(v1017 + 20), v1019);
                v1022 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);

                v1023 = v828 + v1022[6];
                type metadata accessor for ControlTextModifier.Config(0);
                v1024 = swift_getEnumCaseMultiPayload();
                if (v1024 == 1)
                {
                }

                else if (!v1024)
                {
                  v1025 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E0) + 48);
                  v1026 = sub_25268D990();
                  (*(*(v1026 - 8) + 8))(v1023 + v1025, v1026);
                }

                v1070 = v828 + v1022[7];
                v1071 = *(v1070 + 32);
                if (v1071 != 255)
                {
                  sub_252376DBC(*v1070, *(v1070 + 8), *(v1070 + 16), *(v1070 + 24), v1071);
                }

                v1072 = v828 + v1022[8];
                v1073 = *(v1072 + 32);
                if (v1073 != 255)
                {
                  sub_252376DBC(*v1072, *(v1072 + 8), *(v1072 + 16), *(v1072 + 24), v1073);
                }

                v872 = v828 + v1022[11];
                type metadata accessor for AccessoryControl.StatusProvider();
                v873 = swift_getEnumCaseMultiPayload();
                if (v873 <= 3)
                {
                  goto LABEL_730;
                }

                if (v873 == 4)
                {
                  goto LABEL_728;
                }

                goto LABEL_587;
              case 2u:
                goto LABEL_632;
              case 3u:
                goto LABEL_661;
              case 4u:
                goto LABEL_642;
              case 5u:
                goto LABEL_637;
              case 6u:
                goto LABEL_647;
              case 7u:
                goto LABEL_654;
              case 8u:
                v840 = v5;

                v1008 = v828 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

                v1009 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
                v1010 = v1008 + *(v1009 + 36);
                v1011 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
                if (!(*(*(v1011 - 8) + 48))(v1010, 1, v1011))
                {
                  __swift_destroy_boxed_opaque_existential_1Tm(v1010);
                  v1012 = *(v1011 + 20);
                  v1013 = sub_25268DA10();
                  (*(*(v1013 - 8) + 8))(v1010 + v1012, v1013);
                }

                v1014 = v1008 + *(v1009 + 40);
                v1015 = type metadata accessor for AccessoryControl.StatusButtonState(0);
                if ((*(*(v1015 - 8) + 48))(v1014, 1, v1015))
                {
                  goto LABEL_673;
                }

                v828 = v1014 + *(v1015 + 24);
                v1016 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
                if ((*(*(v1016 - 8) + 48))(v828, 1, v1016))
                {
                  goto LABEL_673;
                }

                v1128 = swift_getEnumCaseMultiPayload();
                if (v1128 == 2)
                {
                  goto LABEL_790;
                }

                v5 = v840;
                if (v1128 <= 1)
                {
                  goto LABEL_773;
                }

                goto LABEL_717;
              case 9u:
                goto LABEL_658;
              case 0xAu:
                goto LABEL_695;
              case 0xBu:
                goto LABEL_802;
              case 0xCu:
                goto LABEL_617;
              case 0xDu:
                goto LABEL_668;
              case 0xEu:
                goto LABEL_624;
              default:
                goto LABEL_717;
            }
          }

          break;
        case 4u:

          v574 = v543 + *(type metadata accessor for AccessoryControl.MultiSectionPickerViewConfig(0) + 24);
          v575 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88);
          if (!(*(*(v575 - 8) + 48))(v574, 1, v575))
          {

            v576 = type metadata accessor for IconDescriptor();
            v1162 = *(v576 + 20);
            v1168 = v576;
            v577 = sub_25268F910();
            v1196 = v5;
            v578 = *(*(v577 - 8) + 8);
            v578(v574 + v1162, v577);
            v579 = v574 + *(v575 + 28);

            v578(v579 + *(v1168 + 20), v577);
            v5 = v1196;
          }

          v580 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3F8) + 48);

          v581 = v580 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3E0) + 36);
          v582 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v582 - 8) + 48))(v581, 1, v582))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v581);
            v583 = v5;
            v584 = *(v582 + 20);
            v585 = sub_25268DA10();
            v586 = v581 + v584;
            v5 = v583;
            (*(*(v585 - 8) + 8))(v586, v585);
          }

          goto LABEL_602;
        case 5u:

          v649 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0) + 48);

          v650 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298);
          v651 = v649 + *(v650 + 36);
          v652 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v652 - 8) + 48))(v651, 1, v652))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v651);
            v653 = v5;
            v654 = *(v652 + 20);
            v655 = sub_25268DA10();
            v656 = v651 + v654;
            v5 = v653;
            (*(*(v655 - 8) + 8))(v656, v655);
          }

          v657 = *(v650 + 40);
          v658 = type metadata accessor for AccessoryControl.ColorState(0);
          if (!(*(*(v658 - 8) + 48))(v649 + v657, 1, v658))
          {
            v659 = sub_25268ED20();
            v660 = *(v659 - 8);
            if (!(*(v660 + 48))(v649 + v657, 1, v659))
            {
              (*(v660 + 8))(v649 + v657, v659);
            }
          }

          goto LABEL_603;
        case 6u:

          v667 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270) + 48);

          v668 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278);
          v669 = v667 + *(v668 + 36);
          v670 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v670 - 8) + 48))(v669, 1, v670))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v669);
            v671 = v5;
            v672 = *(v670 + 20);
            v673 = sub_25268DA10();
            v674 = v669 + v672;
            v5 = v671;
            (*(*(v673 - 8) + 8))(v674, v673);
          }

          v595 = v667 + *(v668 + 40);
          v675 = type metadata accessor for AccessoryControl.ThermostatState(0);
          if ((*(*(v675 - 8) + 48))(v595, 1, v675))
          {
            goto LABEL_603;
          }

          v676 = v595 + *(v675 + 32);
          v677 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
          if ((*(*(v677 - 8) + 48))(v676, 1, v677))
          {
            goto LABEL_400;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v1129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v1129 - 8) + 48))(v676, 1, v1129))
            {
              goto LABEL_400;
            }

            v1130 = *(v1129 + 48);
            v1131 = sub_25268D990();
            (*(*(v1131 - 8) + 8))(v676 + v1130, v1131);
          }

          else
          {
            v1147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v1147 - 8) + 48))(v676, 3, v1147))
            {
              goto LABEL_400;
            }

            v1179 = v1147;
            v1148 = *(v1147 + 48);
            v1149 = sub_25268D990();
            v1159 = *(v1149 - 8);
            if (!(*(v1159 + 48))(v676 + v1148, 1, v1149))
            {
              (*(v1159 + 8))(v676 + v1148, v1149);
            }

            v1129 = v1179;
          }

          v1150 = *(v1129 + 64);
          v1151 = sub_25268DB10();
          (*(*(v1151 - 8) + 8))(v676 + v1150, v1151);
LABEL_400:
          v599 = *(v675 + 36);
          goto LABEL_401;
        case 7u:

          v631 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0) + 48);

          v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498);
          v633 = v631 + *(v632 + 36);
          v634 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v634 - 8) + 48))(v633, 1, v634))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v633);
            v635 = v5;
            v636 = *(v634 + 20);
            v637 = sub_25268DA10();
            v638 = v633 + v636;
            v5 = v635;
            (*(*(v637 - 8) + 8))(v638, v637);
          }

          if (*(v631 + *(v632 + 40) + 8))
          {
            goto LABEL_386;
          }

          goto LABEL_603;
        case 8u:

          v600 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470) + 48);

          v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450);
          v602 = v600 + *(v601 + 36);
          v603 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v603 - 8) + 48))(v602, 1, v603))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v602);
            v604 = v5;
            v605 = *(v603 + 20);
            v606 = sub_25268DA10();
            v607 = v602 + v605;
            v5 = v604;
            (*(*(v606 - 8) + 8))(v607, v606);
          }

          v608 = v600 + *(v601 + 40);
          v609 = type metadata accessor for AccessoryControl.StatusButtonState(0);
          if ((*(*(v609 - 8) + 48))(v608, 1, v609))
          {
            goto LABEL_603;
          }

          v543 = v608 + *(v609 + 24);
          v610 = type metadata accessor for AccessoryControl.PickerButtonState.SelectionState(0);
          if ((*(*(v610 - 8) + 48))(v543, 1, v610))
          {
            goto LABEL_603;
          }

          v611 = swift_getEnumCaseMultiPayload();
          if (v611 == 2)
          {
LABEL_386:

            goto LABEL_602;
          }

          if (v611 <= 1)
          {
            type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
LABEL_370:
              v612 = sub_25268DA10();
              (*(*(v612 - 8) + 8))(v543, v612);
            }
          }

          goto LABEL_603;
        case 9u:

          v678 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4D8) + 48);

          v679 = v678 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4C8) + 36);
          v680 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v680 - 8) + 48))(v679, 1, v680))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v679);
            v681 = v5;
            v682 = *(v680 + 20);
            v683 = sub_25268DA10();
            v684 = v679 + v682;
            v5 = v681;
            (*(*(v683 - 8) + 8))(v684, v683);
          }

          goto LABEL_602;
        case 0xAu:
          goto LABEL_602;
        case 0xBu:
          goto LABEL_370;
        case 0xCu:

          if (*(v543 + 48) != 1)
          {
          }

          v587 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0) + 48);

          v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8);
          v589 = v587 + *(v588 + 36);
          v590 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v590 - 8) + 48))(v589, 1, v590))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v589);
            v591 = v5;
            v592 = *(v590 + 20);
            v593 = sub_25268DA10();
            v594 = v589 + v592;
            v5 = v591;
            (*(*(v593 - 8) + 8))(v594, v593);
          }

          v595 = v587 + *(v588 + 40);
          v596 = type metadata accessor for AccessoryControl.AutoClimateState(0);
          if ((*(*(v596 - 8) + 48))(v595, 1, v596))
          {
            goto LABEL_603;
          }

          v597 = v595 + *(v596 + 20);
          v598 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
          if ((*(*(v598 - 8) + 48))(v597, 1, v598))
          {
            goto LABEL_362;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v1118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328);
            if ((*(*(v1118 - 8) + 48))(v597, 1, v1118))
            {
              goto LABEL_362;
            }

            v1119 = *(v1118 + 48);
            v1120 = sub_25268D990();
            (*(*(v1120 - 8) + 8))(v597 + v1119, v1120);
          }

          else
          {
            v1137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
            if ((*(*(v1137 - 8) + 48))(v597, 3, v1137))
            {
              goto LABEL_362;
            }

            v1177 = v1137;
            v1138 = *(v1137 + 48);
            v1139 = sub_25268D990();
            v1157 = *(v1139 - 8);
            if (!(*(v1157 + 48))(v597 + v1138, 1, v1139))
            {
              (*(v1157 + 8))(v597 + v1138, v1139);
            }

            v1118 = v1177;
          }

          v1140 = *(v1118 + 64);
          v1141 = sub_25268DB10();
          (*(*(v1141 - 8) + 8))(v597 + v1140, v1141);
LABEL_362:
          v599 = *(v596 + 24);
LABEL_401:
          if (*(v595 + v599 + 8) < 8uLL)
          {
            goto LABEL_603;
          }

          goto LABEL_602;
        case 0xDu:

          v661 = type metadata accessor for IconDescriptor();
          v1199 = v5;
          v662 = *(v661 + 20);
          v663 = sub_25268F910();
          v664 = *(*(v663 - 8) + 8);
          v664(v543 + v662, v663);
          v665 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v666 = v665 + *(v661 + 20);
          v5 = v1199;
          v664(v666, v663);
          type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig(0);

          goto LABEL_602;
        case 0xEu:
          v1195 = v5;

          v554 = type metadata accessor for IconDescriptor();
          v555 = *(v554 + 20);
          v556 = sub_25268F910();
          v557 = *(*(v556 - 8) + 8);
          v557(v543 + v555, v556);
          v558 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88) + 28);

          v557(v558 + *(v554 + 20), v556);
          type metadata accessor for AccessoryControl.AutoClimatePickerViewConfig(0);

          v559 = v543 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB348) + 48);

          v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB350);
          v561 = v559 + *(v560 + 36);
          v562 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
          if (!(*(*(v562 - 8) + 48))(v561, 1, v562))
          {
            __swift_destroy_boxed_opaque_existential_1Tm(v561);
            v563 = *(v562 + 20);
            v564 = sub_25268DA10();
            (*(*(v564 - 8) + 8))(v561 + v563, v564);
          }

          v565 = v559 + *(v560 + 40);
          v566 = type metadata accessor for AccessoryControl.AutoClimatePickerState(0);
          v5 = v1195;
          if (!(*(*(v566 - 8) + 48))(v565, 1, v566))
          {
            v567 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
            if (!(*(*(v567 - 8) + 48))(v565, 1, v567))
            {
              v568 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB308);
              if (!(*(*(v568 - 8) + 48))(v565, 3, v568))
              {
                v569 = *(v568 + 48);
                v570 = sub_25268D990();
                v571 = *(v570 - 8);
                if (!(*(v571 + 48))(v565 + v569, 1, v570))
                {
                  (*(v571 + 8))(v565 + v569, v570);
                }

                v572 = *(v568 + 64);
                v573 = sub_25268DB10();
                (*(*(v573 - 8) + 8))(v565 + v572, v573);
              }
            }
          }

          goto LABEL_603;
        default:
          goto LABEL_603;
      }

      break;
  }

LABEL_718:

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}