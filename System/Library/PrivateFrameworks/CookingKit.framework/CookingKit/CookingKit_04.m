unint64_t sub_21A193E40()
{
  result = qword_27CCFF270;
  if (!qword_27CCFF270)
  {
    sub_21A176D98(&qword_27CCFF278);
    sub_21A1772F8(&qword_27CCFF280, &qword_27CCFF250);
    sub_21A1772F8(&qword_27CCFF288, &qword_27CCFF290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF270);
  }

  return result;
}

uint64_t sub_21A193F24()
{
  v0 = sub_21A2F6144();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A2F6314();
  sub_21A2F5824();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  v15.origin.x = v6;
  v15.origin.y = v8;
  v15.size.width = v10;
  v15.size.height = v12;
  CGRectGetMaxY(v15);
  sub_21A2F5C84();
  sub_21A1935CC();
  return sub_21A2F57B4();
}

uint64_t sub_21A1940DC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = v2;
  *(v5 + 32) = v3;
  *(v5 + 33) = v4;
  v6 = sub_21A176C98(&qword_27CCFF2C0);
  v7 = sub_21A176C98(&qword_27CCFF2C8);
  v8 = sub_21A1772F8(&qword_27CCFF2D0, &qword_27CCFF2C0);
  sub_21A2F5C84();
  sub_21A1935CC();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x21CED5600](sub_21A194410, v5, v6, v7, v8, OpaqueTypeConformance2);
}

uint64_t sub_21A19422C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeTheme();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 initializeBufferWithCopyOfBuffer for ScrollBasedOpacityModifier(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ScrollBasedOpacityModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 18))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for ScrollBasedOpacityModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_21A19433C()
{
  result = qword_27CCFF2B0;
  if (!qword_27CCFF2B0)
  {
    sub_21A176D98(&qword_27CCFF2B8);
    sub_21A193CFC();
    sub_21A1772F8(&qword_27CCFF280, &qword_27CCFF250);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF2B0);
  }

  return result;
}

unint64_t sub_21A194444()
{
  result = qword_27CCFF2D8;
  if (!qword_27CCFF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF2D8);
  }

  return result;
}

uint64_t sub_21A1944B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Recipe();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PersistedRecipe.heroImageFileURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PersistedRecipe(0) + 20);
  v4 = sub_21A2F4794();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t PersistedRecipe.loadHeroImage()()
{
  type metadata accessor for PersistedRecipe(0);
  sub_21A2F4764();

  return sub_21A2F6FE4();
}

uint64_t sub_21A19461C()
{
  result = type metadata accessor for Recipe();
  if (v1 <= 0x3F)
  {
    result = sub_21A2F4794();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ImportedRecipePersistenceManagerType.persist(recipe:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A146070;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ImportedRecipePersistenceManagerType.persist(heroImage:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21A146070;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ImportedRecipePersistenceManagerType.loadRecipe(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_21A145E2C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_21A194AC8(__int128 *a1)
{
  v3 = sub_21A2F4694();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F4794();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  if (qword_27CCFE8A0 != -1)
  {
    swift_once();
  }

  sub_21A2F50F4();
  v14[0] = 0x6B6F6F632D776F6ELL;
  v14[1] = 0xEB00000000676E69;
  (*(v4 + 104))(v7, *MEMORY[0x277CC91D8], v3);
  sub_21A1834FC();
  sub_21A2F4784();
  (*(v4 + 8))(v7, v3);
  (*(v9 + 8))(v12, v8);
  sub_21A14274C(a1, v1 + OBJC_IVAR____TtC10CookingKit32ImportedRecipePersistenceManager_imageLoader);
  return v1;
}

uint64_t sub_21A194D1C(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_21A2F4694();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = type metadata accessor for Recipe();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v4 = sub_21A2F4794();
  v2[19] = v4;
  v2[20] = *(v4 - 8);
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21A194EC4, 0, 0);
}

uint64_t sub_21A194EC4()
{
  v70 = v0;
  v69[1] = *MEMORY[0x277D85DE8];
  v1 = v0[11];
  v2 = v0[12];
  v4 = *v1;
  v3 = v1[1];
  v0[2] = v4;
  v0[3] = v3;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  v0[6] = 45;
  v0[7] = 0xE100000000000000;
  v60 = sub_21A1834FC();
  v59 = MEMORY[0x277D837D0];
  sub_21A2F7F04();
  sub_21A2F4704();

  v5 = *(v2 + 16);
  v6 = sub_21A2F46F4();
  v0[10] = 0;
  v7 = [v5 createDirectoryAtURL:v6 withIntermediateDirectories:1 attributes:0 error:{v0 + 10, v59, v60, v60, v60}];

  v8 = v0[10];
  if (v7)
  {
    (*(v0[20] + 32))(v0[24], v0[23], v0[19]);
    v9 = qword_27CCFE7C0;
    v10 = v8;
    if (v9 != -1)
    {
      swift_once();
    }

    v11 = v0[24];
    v12 = v0[22];
    v13 = v0[19];
    v14 = v0[20];
    v15 = v0[18];
    v16 = v0[11];
    v17 = sub_21A2F53E4();
    sub_21A177CBC(v17, qword_27CD23C80);
    sub_21A1944B0(v16, v15);
    (*(v14 + 16))(v12, v11, v13);
    v18 = sub_21A2F53C4();
    v19 = sub_21A2F7DF4();
    log = v18;
    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[22];
    v23 = v0[19];
    v22 = v0[20];
    v24 = v0[18];
    if (v20)
    {
      v25 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v69[0] = v65;
      *v25 = 136446466;
      v64 = v19;
      v27 = *v24;
      v26 = v24[1];
      sub_21A2F5434();
      sub_21A199738(v24, type metadata accessor for Recipe);
      v28 = sub_21A25B5DC(v27, v26, v69);

      *(v25 + 4) = v28;
      *(v25 + 12) = 2080;
      sub_21A14F944(&qword_27CCFF330, MEMORY[0x277CC9260]);
      v29 = sub_21A2F8354();
      v31 = v30;
      v32 = *(v22 + 8);
      v32(v21, v23);
      v33 = sub_21A25B5DC(v29, v31, v69);

      *(v25 + 14) = v33;
      _os_log_impl(&dword_21A137000, log, v64, "Will persist recipe id=%{public}s baseURL=%s", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED7BA0](v65, -1, -1);
      MEMORY[0x21CED7BA0](v25, -1, -1);
    }

    else
    {

      v32 = *(v22 + 8);
      v32(v21, v23);
      sub_21A199738(v24, type metadata accessor for Recipe);
    }

    sub_21A2F44D4();
    swift_allocObject();
    sub_21A2F44C4();
    sub_21A14F944(&qword_27CCFF358, type metadata accessor for Recipe);
    v66 = v32;
    loga = sub_21A2F44B4();
    v39 = v0[14];
    v38 = v0[15];
    v41 = v40;
    v42 = v0[13];
    v0[8] = 0x6A2E657069636572;
    v0[9] = 0xEB000000006E6F73;
    (*(v39 + 104))(v38, *MEMORY[0x277CC91D8], v42);
    sub_21A2F4784();
    (*(v39 + 8))(v38, v42);
    sub_21A2F4824();
    sub_21A1944B0(v0[11], v0[17]);
    v45 = sub_21A2F53C4();
    v46 = sub_21A2F7DF4();
    v47 = os_log_type_enabled(v45, v46);
    v48 = v0[24];
    v49 = v0[21];
    v50 = v0[19];
    v51 = v0[17];
    if (v47)
    {
      v63 = v0[21];
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v69[0] = v53;
      *v52 = 136446210;
      v61 = v50;
      v62 = v48;
      v55 = *v51;
      v54 = v51[1];
      sub_21A2F5434();
      sub_21A199738(v51, type metadata accessor for Recipe);
      v56 = sub_21A25B5DC(v55, v54, v69);

      *(v52 + 4) = v56;
      _os_log_impl(&dword_21A137000, v45, v46, "Did persist recipe id=%{public}s", v52, 0xCu);
      sub_21A142808(v53);
      MEMORY[0x21CED7BA0](v53, -1, -1);
      MEMORY[0x21CED7BA0](v52, -1, -1);
      sub_21A180748(loga, v41);

      v66(v63, v61);
      v57 = v62;
      v58 = v61;
    }

    else
    {
      sub_21A180748(loga, v41);

      sub_21A199738(v51, type metadata accessor for Recipe);
      v66(v49, v50);
      v57 = v48;
      v58 = v50;
    }

    v66(v57, v58);

    v43 = v0[1];
  }

  else
  {
    v34 = v0[23];
    v35 = v0[19];
    v36 = v0[20];
    v37 = v8;
    sub_21A2F4654();

    swift_willThrow();
    (*(v36 + 8))(v34, v35);

    v43 = v0[1];
  }

  return v43();
}

uint64_t sub_21A195738(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[13] = a2;
  v4[14] = v3;
  v4[12] = a1;
  v6 = sub_21A2F4694();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v7 = sub_21A2F4794();
  v4[18] = v7;
  v4[19] = *(v7 - 8);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a3;
  v10 = a3[1];
  v4[22] = v8;
  v4[23] = v9;
  v4[24] = v10;

  return MEMORY[0x2822009F8](sub_21A1958B0, 0, 0);
}

uint64_t sub_21A1958B0()
{
  v65 = v0;
  v64[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 192);
  v2 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 184);
  *(v0 + 24) = v1;
  *(v0 + 32) = 47;
  *(v0 + 40) = 0xE100000000000000;
  *(v0 + 48) = 45;
  *(v0 + 56) = 0xE100000000000000;
  v58 = sub_21A1834FC();
  v57 = MEMORY[0x277D837D0];
  sub_21A2F7F04();
  sub_21A2F4704();

  v3 = *(v2 + 16);
  v4 = sub_21A2F46F4();
  *(v0 + 80) = 0;
  v5 = [v3 createDirectoryAtURL:v4 withIntermediateDirectories:1 attributes:0 error:{v0 + 80, v57, v58, v58, v58}];

  v6 = *(v0 + 80);
  if (v5)
  {
    v63 = v3;
    (*(*(v0 + 152) + 32))(*(v0 + 176), *(v0 + 168), *(v0 + 144));
    v7 = qword_27CCFE7C0;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 176);
    v10 = *(v0 + 152);
    v11 = *(v0 + 160);
    v12 = *(v0 + 144);
    v13 = sub_21A2F53E4();
    sub_21A177CBC(v13, qword_27CD23C80);
    (*(v10 + 16))(v11, v9, v12);
    sub_21A2F5434();
    v14 = sub_21A2F53C4();
    v15 = sub_21A2F7DF4();

    if (os_log_type_enabled(v14, v15))
    {
      v61 = v15;
      v16 = *(v0 + 184);
      v17 = *(v0 + 192);
      log = v14;
      v18 = *(v0 + 160);
      v59 = *(v0 + 152);
      v19 = *(v0 + 144);
      v20 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v64[0] = v62;
      *v20 = 136446466;
      *(v20 + 4) = sub_21A25B5DC(v16, v17, v64);
      *(v20 + 12) = 2080;
      sub_21A14F944(&qword_27CCFF330, MEMORY[0x277CC9260]);
      v21 = v18;
      v22 = sub_21A2F8354();
      v24 = v23;
      v25 = *(v59 + 8);
      v25(v21, v19);
      v26 = sub_21A25B5DC(v22, v24, v64);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_21A137000, log, v61, "Will persist hero image for recipe id=%{public}s baseURL=%s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x21CED7BA0](v62, -1, -1);
      v27 = v20;
      v28 = v25;
      MEMORY[0x21CED7BA0](v27, -1, -1);
    }

    else
    {
      v32 = *(v0 + 152);
      v31 = *(v0 + 160);
      v33 = *(v0 + 144);

      v28 = *(v32 + 8);
      v28(v31, v33);
    }

    v35 = *(v0 + 128);
    v34 = *(v0 + 136);
    v36 = *(v0 + 120);
    strcpy((v0 + 64), "hero-image.png");
    *(v0 + 79) = -18;
    (*(v35 + 104))(v34, *MEMORY[0x277CC91D8], v36);
    sub_21A2F4784();
    (*(v35 + 8))(v34, v36);
    v37 = sub_21A2F46F4();
    *(v0 + 88) = 0;
    LODWORD(v34) = [v63 removeItemAtURL:v37 error:v0 + 88];

    v38 = *(v0 + 88);
    if (v34)
    {
      v39 = v38;
    }

    else
    {
      v40 = v38;
      v41 = sub_21A2F4654();

      swift_willThrow();
    }

    v42 = UIImagePNGRepresentation(*(v0 + 104));
    if (v42)
    {
      v43 = v42;
      v44 = sub_21A2F4814();
      v46 = v45;

      sub_21A2F4824();
      sub_21A180748(v44, v46);
    }

    sub_21A2F5434();
    v48 = sub_21A2F53C4();
    v49 = sub_21A2F7DF4();

    if (os_log_type_enabled(v48, v49))
    {
      v51 = *(v0 + 184);
      v50 = *(v0 + 192);
      v52 = *(v0 + 176);
      v53 = *(v0 + 144);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v64[0] = v55;
      *v54 = 136446210;
      *(v54 + 4) = sub_21A25B5DC(v51, v50, v64);
      _os_log_impl(&dword_21A137000, v48, v49, "Did persist hero image for recipe id=%{public}s", v54, 0xCu);
      sub_21A142808(v55);
      MEMORY[0x21CED7BA0](v55, -1, -1);
      MEMORY[0x21CED7BA0](v54, -1, -1);
    }

    else
    {
      v52 = *(v0 + 176);
      v53 = *(v0 + 144);
    }

    v28(v52, v53);

    v47 = *(v0 + 8);
  }

  else
  {
    v29 = *(v0 + 152);
    v30 = v6;
    sub_21A2F4654();

    swift_willThrow();
    (*(v29 + 8))(*(v0 + 168), *(v0 + 144));

    v47 = *(v0 + 8);
  }

  return v47();
}

uint64_t sub_21A195FE8(uint64_t a1, uint64_t *a2)
{
  v3[13] = a1;
  v3[14] = v2;
  v5 = sub_21A2F4694();
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  type metadata accessor for Recipe();
  v3[18] = swift_task_alloc();
  v6 = sub_21A2F4794();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v3[22] = v7;
  v3[23] = v8;
  v3[24] = v9;

  return MEMORY[0x2822009F8](sub_21A19617C, 0, 0);
}

uint64_t sub_21A19617C()
{
  v1 = v0[24];
  v2 = v0[14];
  v0[2] = v0[23];
  v0[3] = v1;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  v0[6] = 45;
  v0[7] = 0xE100000000000000;
  v3 = sub_21A1834FC();
  v0[25] = v3;
  v20 = v3;
  v21 = v3;
  v18 = MEMORY[0x277D837D0];
  v19 = v3;
  sub_21A2F7F04();
  sub_21A2F4704();

  v4 = *(v2 + 16);
  v5 = sub_21A2F46F4();
  v0[12] = 0;
  LODWORD(v4) = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:{v0 + 12, v18, v19, v20, v21}];

  v6 = v0[12];
  if (v4)
  {
    v8 = v0[23];
    v7 = v0[24];
    (*(v0[20] + 32))(v0[22], v0[21], v0[19]);
    v0[8] = v8;
    v0[9] = v7;
    v9 = v6;
    v10 = swift_task_alloc();
    v0[26] = v10;
    *v10 = v0;
    v10[1] = sub_21A196420;
    v11 = v0[18];

    return sub_21A1967D0(v11, v0 + 8);
  }

  else
  {
    v14 = v0[20];
    v13 = v0[21];
    v15 = v0[19];
    v16 = v6;
    sub_21A2F4654();

    swift_willThrow();
    (*(v14 + 8))(v13, v15);

    v17 = v0[1];

    return v17();
  }
}

uint64_t sub_21A196420()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_21A1966FC;
  }

  else
  {
    v2 = sub_21A196560;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21A196560()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v10 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v6 = *(v0 + 120);
  v5 = *(v0 + 128);
  v7 = *(v0 + 104);
  strcpy((v0 + 80), "hero-image.png");
  *(v0 + 95) = -18;
  (*(v5 + 104))(v3, *MEMORY[0x277CC91D8], v6);
  type metadata accessor for PersistedRecipe(0);
  sub_21A2F4784();
  (*(v5 + 8))(v3, v6);
  (*(v2 + 8))(v1, v10);
  sub_21A1996D4(v4, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_21A1966FC()
{
  (*(v0[20] + 8))(v0[22], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_21A1967D0(uint64_t a1, uint64_t *a2)
{
  v3[11] = a1;
  v3[12] = v2;
  v5 = sub_21A2F4694();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_21A2F4794();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  v3[20] = v7;
  v3[21] = v8;
  v3[22] = v9;

  return MEMORY[0x2822009F8](sub_21A196944, 0, 0);
}

uint64_t sub_21A196944()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[12];
  sub_21A2F4464();
  swift_allocObject();
  sub_21A2F4454();
  v0[2] = v2;
  v0[3] = v1;
  v0[4] = 47;
  v0[5] = 0xE100000000000000;
  v0[6] = 45;
  v0[7] = 0xE100000000000000;
  v24 = sub_21A1834FC();
  v23 = MEMORY[0x277D837D0];
  sub_21A2F7F04();
  sub_21A2F4704();

  v4 = *(v3 + 16);
  v5 = sub_21A2F46F4();
  v0[10] = 0;
  LODWORD(v4) = [v4 createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:{v0 + 10, v23, v24, v24, v24}];

  v6 = v0[10];
  if (v4)
  {
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    (*(v0[17] + 32))(v0[20], v0[19], v0[16]);
    v0[8] = 0x6A2E657069636572;
    v0[9] = 0xEB000000006E6F73;
    (*(v7 + 104))(v8, *MEMORY[0x277CC91D8], v9);
    v10 = v6;
    sub_21A2F4784();
    (*(v7 + 8))(v8, v9);
    v13 = sub_21A2F47B4();
    v15 = v14;
    type metadata accessor for Recipe();
    sub_21A14F944(&qword_27CCFF350, type metadata accessor for Recipe);
    sub_21A2F4434();
    v17 = v0[20];
    v18 = v0[17];
    v19 = v0[18];
    v20 = v0[16];

    sub_21A180748(v13, v15);
    v21 = *(v18 + 8);
    v21(v19, v20);
    v21(v17, v20);
  }

  else
  {
    v11 = v0[17];
    v12 = v6;
    sub_21A2F4654();

    swift_willThrow();

    (*(v11 + 8))(v0[19], v0[16]);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_21A196D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v28 = a2;
  v34[2] = *MEMORY[0x277D85DE8];
  v29 = sub_21A2F4694();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A2F4794();
  v9 = *(v8 - 8);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v26 - v15;
  v17 = *(a1 + 8);
  v34[0] = *a1;
  v34[1] = v17;
  v32 = 47;
  v33 = 0xE100000000000000;
  v30 = 45;
  v31 = 0xE100000000000000;
  sub_21A1834FC();
  sub_21A2F7F04();
  sub_21A2F4704();

  v18 = *(v3 + 16);
  v19 = sub_21A2F46F4();
  v34[0] = 0;
  LOBYTE(v18) = [v18 createDirectoryAtURL:v19 withIntermediateDirectories:1 attributes:0 error:v34];

  v20 = v34[0];
  if (v18)
  {
    (*(v9 + 32))(v16, v13, v8);
    strcpy(v34, "hero-image.png");
    HIBYTE(v34[1]) = -18;
    v21 = v27;
    v22 = v29;
    (*(v27 + 104))(v7, *MEMORY[0x277CC91D8], v29);
    v23 = v20;
    sub_21A2F4784();
    (*(v21 + 8))(v7, v22);
    return (*(v9 + 8))(v16, v8);
  }

  else
  {
    v25 = v34[0];
    sub_21A2F4654();

    swift_willThrow();
    return (*(v9 + 8))(v13, v8);
  }
}

uint64_t sub_21A1970F8(uint64_t a1)
{
  v2 = v1;
  v26[2] = *MEMORY[0x277D85DE8];
  v4 = sub_21A2F4794();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = v25 - v11;
  v13 = *(a1 + 8);
  v26[0] = *a1;
  v26[1] = v13;
  v25[3] = 47;
  v25[4] = 0xE100000000000000;
  v25[1] = 45;
  v25[2] = 0xE100000000000000;
  sub_21A1834FC();
  sub_21A2F7F04();
  sub_21A2F4704();

  v14 = *(v2 + 16);
  v15 = sub_21A2F46F4();
  v26[0] = 0;
  v16 = [v14 createDirectoryAtURL:v15 withIntermediateDirectories:1 attributes:0 error:v26];

  v17 = v26[0];
  if (v16)
  {
    (*(v5 + 32))(v12, v9, v4);
    v18 = v17;
    v19 = sub_21A2F46F4();
    v26[0] = 0;
    v20 = [v14 removeItemAtURL:v19 error:v26];

    v17 = v26[0];
    if (v20)
    {
      v21 = *(v5 + 8);
      v22 = v26[0];
      return v21(v12, v4);
    }

    v9 = v12;
  }

  v24 = v17;
  sub_21A2F4654();

  swift_willThrow();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_21A197380(uint64_t a1, char *a2)
{
  v4 = v2;
  v241 = a2;
  v264[2] = *MEMORY[0x277D85DE8];
  v6 = sub_21A176C98(&qword_27CCFF048);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v240 = &v219 - v8;
  v239 = sub_21A2F4614();
  v235 = *(v239 - 8);
  MEMORY[0x28223BE20](v239, v9);
  v242 = &v219 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_21A2F49B4();
  v233 = *(v244 - 8);
  v12 = MEMORY[0x28223BE20](v244, v11);
  v225 = &v219 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v232 = &v219 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v231 = &v219 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v224 = &v219 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v245 = &v219 - v24;
  v25 = sub_21A2F4794();
  v26 = *(v25 - 8);
  v28 = MEMORY[0x28223BE20](v25, v27);
  v230 = &v219 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v229 = &v219 - v32;
  v34 = MEMORY[0x28223BE20](v31, v33);
  v228 = &v219 - v35;
  v37 = MEMORY[0x28223BE20](v34, v36);
  v253 = &v219 - v38;
  v40 = MEMORY[0x28223BE20](v37, v39);
  v257 = &v219 - v41;
  v43 = MEMORY[0x28223BE20](v40, v42);
  v246 = &v219 - v44;
  v46 = MEMORY[0x28223BE20](v43, v45);
  v243 = &v219 - v47;
  v49 = MEMORY[0x28223BE20](v46, v48);
  v255 = &v219 - v50;
  MEMORY[0x28223BE20](v49, v51);
  v53 = *(a1 + 16);
  v54 = MEMORY[0x277D84F90];
  v252 = v26;
  v247 = v3;
  if (!v53)
  {
LABEL_9:
    v70 = sub_21A199288(v54);

    v71 = *(v4 + 2);
    v72 = sub_21A2F46F4();
    v238 = sub_21A176C98(&qword_27CCFF310);
    v73 = swift_allocObject();
    v237 = xmmword_21A2FC020;
    *(v73 + 16) = xmmword_21A2FC020;
    v74 = *MEMORY[0x277CBE7C0];
    *(v73 + 32) = *MEMORY[0x277CBE7C0];
    type metadata accessor for URLResourceKey(0);
    v236 = v74;
    v75 = sub_21A2F7B04();

    v264[0] = 0;
    v221 = v71;
    v76 = [v71 contentsOfDirectoryAtURL:v72 includingPropertiesForKeys:v75 options:4 error:v264];

    v77 = v264[0];
    if (!v76)
    {
      v93 = v264[0];

      sub_21A2F4654();

      return swift_willThrow();
    }

    v255 = v70;
    v78 = sub_21A2F7B24();
    v79 = v77;

    v80 = *(v78 + 16);
    v258 = v25;
    if (v80)
    {
      v81 = 0;
      v82 = v252;
      v254 = v252 + 16;
      v250 = (v252 + 8);
      v256 = v252 + 32;
      v83 = MEMORY[0x277D84F90];
      v84 = v243;
      v251 = v80;
      do
      {
        if (v81 >= *(v78 + 16))
        {
          __break(1u);
LABEL_67:
          __break(1u);
        }

        v85 = (*(v82 + 80) + 32) & ~*(v82 + 80);
        v86 = *(v82 + 72);
        (*(v82 + 16))(v84, v78 + v85 + v86 * v81, v25);
        if (sub_21A2F46D4())
        {
          v87 = v25;
          v88 = *v256;
          (*v256)(v246, v84, v87);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v264[0] = v83;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_21A25D6A0(0, v83[2] + 1, 1);
            v83 = v264[0];
          }

          v91 = v83[2];
          v90 = v83[3];
          if (v91 >= v90 >> 1)
          {
            sub_21A25D6A0(v90 > 1, v91 + 1, 1);
            v83 = v264[0];
          }

          v83[2] = v91 + 1;
          v92 = v258;
          v88(v83 + v85 + v91 * v86, v246, v258);
          v25 = v92;
          v80 = v251;
          v82 = v252;
          v84 = v243;
        }

        else
        {
          (*v250)(v84, v25);
        }

        ++v81;
      }

      while (v80 != v81);
    }

    else
    {
      v83 = MEMORY[0x277D84F90];
      v82 = v252;
    }

    v248 = v83[2];
    if (!v248)
    {

      v217 = MEMORY[0x277D84F90];
LABEL_62:
      if (v217[2])
      {
        sub_21A199424();
        swift_allocError();
        *v218 = v217;
        return swift_willThrow();
      }
    }

    v96 = 0;
    v243 = v83 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v256 = v82 + 16;
    v97 = v255;
    v254 = (v255 + 56);
    v98 = (v82 + 8);
    ++v235;
    v234 = (v233 + 6);
    v227 = (v233 + 4);
    v226 = (v233 + 2);
    ++v233;
    v223 = MEMORY[0x277D84F90];
    *&v95 = 136446466;
    v220 = v95;
    *&v95 = 136446978;
    v219 = v95;
    v246 = v83;
    while (1)
    {
      if (v96 >= v83[2])
      {
        goto LABEL_67;
      }

      v100 = *(v82 + 72);
      v101 = *(v82 + 16);
      v102 = v257;
      v101(v257, &v243[v100 * v96], v25);
      v249 = sub_21A2F46E4();
      v251 = v103;
      v104 = *(v97 + 2);
      v250 = v96;
      if (v104 && (sub_21A14F944(&qword_27CCFF318, MEMORY[0x277CC9260]), v105 = sub_21A2F77F4(), v106 = -1 << v97[32], v107 = v105 & ~v106, ((*(v254 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) != 0))
      {
        v108 = ~v106;
        while (1)
        {
          v109 = *(v97 + 6) + v107 * v100;
          v110 = v253;
          v111 = v258;
          v101(v253, v109, v258);
          sub_21A14F944(&qword_27CCFF320, MEMORY[0x277CC9260]);
          v112 = sub_21A2F7874();
          v113 = *v98;
          (*v98)(v110, v111);
          if (v112)
          {
            break;
          }

          v107 = (v107 + 1) & v108;
          v97 = v255;
          v102 = v257;
          if (((*(v254 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v107) & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        v25 = v258;
        v113(v257, v258);
      }

      else
      {
LABEL_35:
        inited = swift_initStackObject();
        *(inited + 16) = v237;
        v115 = v236;
        *(inited + 32) = v236;
        v116 = v115;
        sub_21A199478(inited);
        swift_setDeallocating();
        sub_21A199738(inited + 32, type metadata accessor for URLResourceKey);
        v117 = v242;
        v118 = v247;
        sub_21A2F46B4();
        v247 = v118;
        if (v118)
        {
          (*v98)(v102, v258);
        }

        v119 = v240;
        sub_21A2F4604();
        (*v235)(v117, v239);
        v120 = v244;
        v121 = (*v234)(v119, 1, v244);
        v25 = v258;
        if (v121 == 1)
        {
          sub_21A19966C(v119);
          v122 = v251;
          if (qword_27CCFE7C0 != -1)
          {
            swift_once();
          }

          v123 = sub_21A2F53E4();
          sub_21A177CBC(v123, qword_27CD23C80);
          v124 = v230;
          v101(v230, v102, v25);
          sub_21A2F5434();
          v125 = sub_21A2F53C4();
          v126 = sub_21A2F7DD4();

          v127 = os_log_type_enabled(v125, v126);
          v128 = v102;
          v82 = v252;
          if (v127)
          {
            v129 = v124;
            v130 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v264[0] = v222;
            *v130 = v220;
            v131 = sub_21A25B5DC(v249, v122, v264);

            *(v130 + 4) = v131;
            *(v130 + 12) = 2080;
            sub_21A14F944(&qword_27CCFF330, MEMORY[0x277CC9260]);
            v132 = sub_21A2F8354();
            v134 = v133;
            v135 = *v98;
            (*v98)(v129, v258);
            v136 = sub_21A25B5DC(v132, v134, v264);

            *(v130 + 14) = v136;
            _os_log_impl(&dword_21A137000, v125, v126, "Unable to look up creation date for recipe=%{public}s baseURL=%s", v130, 0x16u);
            v137 = v222;
            swift_arrayDestroy();
            v25 = v258;
            MEMORY[0x21CED7BA0](v137, -1, -1);
            MEMORY[0x21CED7BA0](v130, -1, -1);

            v135(v257, v25);
          }

          else
          {

            v168 = *v98;
            (*v98)(v124, v25);
            v168(v128, v25);
          }

          goto LABEL_27;
        }

        (*v227)(v245, v119, v120);
        sub_21A14F944(&qword_27CCFF338, MEMORY[0x277CC9578]);
        v138 = sub_21A2F7844();
        v139 = v232;
        if ((v138 & 1) == 0)
        {
          if (qword_27CCFE7C0 != -1)
          {
            swift_once();
          }

          v169 = sub_21A2F53E4();
          sub_21A177CBC(v169, qword_27CD23C80);
          v170 = *v226;
          v171 = v224;
          (*v226)(v224, v245, v120);
          v170(v231, v241, v120);
          v172 = v228;
          v101(v228, v257, v25);
          v173 = v251;
          sub_21A2F5434();
          v174 = sub_21A2F53C4();
          v175 = sub_21A2F7DF4();

          if (os_log_type_enabled(v174, v175))
          {
            v176 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v264[0] = v222;
            *v176 = v219;
            v177 = sub_21A25B5DC(v249, v173, v264);
            v249 = v174;
            v178 = v177;

            *(v176 + 4) = v178;
            *(v176 + 12) = 2082;
            sub_21A14F944(&qword_27CCFF340, MEMORY[0x277CC9578]);
            v179 = sub_21A2F8354();
            v181 = v180;
            LODWORD(v251) = v175;
            v182 = *v233;
            (*v233)(v171, v120);
            v183 = sub_21A25B5DC(v179, v181, v264);

            *(v176 + 14) = v183;
            *(v176 + 22) = 2082;
            v184 = v231;
            v185 = sub_21A2F8354();
            v187 = v186;
            (v182)(v184, v120);
            v188 = v182;
            v189 = sub_21A25B5DC(v185, v187, v264);

            *(v176 + 24) = v189;
            *(v176 + 32) = 2080;
            sub_21A14F944(&qword_27CCFF330, MEMORY[0x277CC9260]);
            v190 = v228;
            v191 = v258;
            v192 = sub_21A2F8354();
            v194 = v193;
            v195 = *v98;
            (*v98)(v190, v191);
            v196 = sub_21A25B5DC(v192, v194, v264);

            *(v176 + 34) = v196;
            v197 = v249;
            _os_log_impl(&dword_21A137000, v249, v251, "Deleting expired recipe: id=%{public}s creationDate=%{public}s expiration=%{public}s baseURL=%s", v176, 0x2Au);
            v198 = v222;
            swift_arrayDestroy();
            MEMORY[0x21CED7BA0](v198, -1, -1);
            MEMORY[0x21CED7BA0](v176, -1, -1);
          }

          else
          {
            v201 = v25;

            v195 = *v98;
            (*v98)(v172, v201);
            v202 = v120;
            v188 = *v233;
            (*v233)(v231, v202);
            (v188)(v171, v202);
          }

          v99 = v250;
          v203 = v257;
          v204 = sub_21A2F46F4();
          v264[0] = 0;
          v205 = [v221 removeItemAtURL:v204 error:v264];

          v206 = v264[0];
          v82 = v252;
          if (v205)
          {
            (v188)(v245, v244);
            v207 = v258;
            v195(v203, v258);
            v25 = v207;
            v97 = v255;
          }

          else
          {
            v208 = v206;
            v209 = sub_21A2F4654();

            swift_willThrow();
            v210 = v223;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v210 = sub_21A1B757C(0, v210[2] + 1, 1, v210);
            }

            v211 = v257;
            v223 = v210;
            v213 = v210[2];
            v212 = v210[3];
            if (v213 >= v212 >> 1)
            {
              v223 = sub_21A1B757C((v212 > 1), v213 + 1, 1, v223);
              v211 = v257;
            }

            v188();
            v214 = v211;
            v215 = v258;
            v195(v214, v258);
            v25 = v215;
            v247 = 0;
            v216 = v223;
            v223[2] = v213 + 1;
            v216[v213 + 4] = v209;
            v82 = v252;
            v97 = v255;
          }

          goto LABEL_28;
        }

        if (qword_27CCFE7C0 != -1)
        {
          swift_once();
        }

        v140 = sub_21A2F53E4();
        sub_21A177CBC(v140, qword_27CD23C80);
        v141 = *v226;
        (*v226)(v139, v245, v120);
        v142 = v225;
        v141(v225, v241, v120);
        v143 = v229;
        v101(v229, v257, v25);
        v144 = v251;
        sub_21A2F5434();
        v145 = sub_21A2F53C4();
        v146 = sub_21A2F7DF4();

        if (os_log_type_enabled(v145, v146))
        {
          v147 = swift_slowAlloc();
          v222 = swift_slowAlloc();
          v264[0] = v222;
          *v147 = v219;
          v148 = sub_21A25B5DC(v249, v144, v264);
          v249 = v145;
          v149 = v148;

          *(v147 + 4) = v149;
          *(v147 + 12) = 2082;
          sub_21A14F944(&qword_27CCFF340, MEMORY[0x277CC9578]);
          v150 = sub_21A2F8354();
          v152 = v151;
          LODWORD(v251) = v146;
          v153 = v142;
          v154 = *v233;
          (*v233)(v139);
          v155 = sub_21A25B5DC(v150, v152, v264);

          *(v147 + 14) = v155;
          *(v147 + 22) = 2082;
          v156 = sub_21A2F8354();
          v158 = v157;
          (v154)(v153, v120);
          v159 = sub_21A25B5DC(v156, v158, v264);

          *(v147 + 24) = v159;
          *(v147 + 32) = 2080;
          sub_21A14F944(&qword_27CCFF330, MEMORY[0x277CC9260]);
          v160 = v229;
          v161 = sub_21A2F8354();
          v163 = v162;
          v164 = *v98;
          (*v98)(v160, v258);
          v165 = sub_21A25B5DC(v161, v163, v264);

          *(v147 + 34) = v165;
          v166 = v249;
          _os_log_impl(&dword_21A137000, v249, v251, "Skipping deletion since it hasn't expired: id=%{public}s creationDate=%{public}s expiration=%{public}s baseURL=%s", v147, 0x2Au);
          v167 = v222;
          swift_arrayDestroy();
          MEMORY[0x21CED7BA0](v167, -1, -1);
          MEMORY[0x21CED7BA0](v147, -1, -1);

          (v154)(v245, v120);
          v164(v257, v258);
          v25 = v258;
        }

        else
        {

          v199 = *v98;
          (*v98)(v143, v25);
          v200 = *v233;
          (*v233)(v142, v120);
          (v200)(v139, v120);
          (v200)(v245, v120);
          v199(v257, v25);
        }
      }

      v82 = v252;
LABEL_27:
      v97 = v255;
      v99 = v250;
LABEL_28:
      v96 = (v99 + 1);
      v83 = v246;
      if (v96 == v248)
      {

        v217 = v223;
        goto LABEL_62;
      }
    }
  }

  v249 = (&v219 - v52);
  v263 = MEMORY[0x277D84F90];

  sub_21A25D6A0(0, v53, 0);
  v54 = v263;
  v254 = OBJC_IVAR____TtC10CookingKit32ImportedRecipePersistenceManager_rootPersistenceDirectoryURL;
  v55 = (v26 + 32);
  v251 = *(v4 + 2);
  v250 = sub_21A1834FC();
  v56 = (a1 + 40);
  v248 = v4;
  while (1)
  {
    v256 = v54;
    v57 = *v56;
    v264[0] = *(v56 - 1);
    v264[1] = v57;
    v261 = 47;
    v262 = 0xE100000000000000;
    v259 = 45;
    v260 = 0xE100000000000000;
    sub_21A2F5434();
    sub_21A2F7F04();
    v58 = v255;
    sub_21A2F4704();

    v59 = sub_21A2F46F4();
    v264[0] = 0;
    v60 = [v251 createDirectoryAtURL:v59 withIntermediateDirectories:1 attributes:0 error:v264];

    v61 = v264[0];
    if ((v60 & 1) == 0)
    {
      break;
    }

    v62 = v58;
    v63 = *v55;
    v64 = v249;
    (*v55)(v249, v62, v25);
    v65 = v61;

    v54 = v256;
    v263 = v256;
    v66 = v25;
    v68 = *(v256 + 16);
    v67 = *(v256 + 24);
    if (v68 >= v67 >> 1)
    {
      sub_21A25D6A0(v67 > 1, v68 + 1, 1);
      v54 = v263;
    }

    *(v54 + 16) = v68 + 1;
    v63((v54 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v68), v64, v66);
    v56 += 2;
    --v53;
    v25 = v66;
    v4 = v248;
    if (!v53)
    {

      goto LABEL_9;
    }
  }

  v69 = v264[0];
  sub_21A2F4654();

  swift_willThrow();
  (*(v252 + 8))(v58, v25);
}

uint64_t sub_21A198D94()
{
  v1 = OBJC_IVAR____TtC10CookingKit32ImportedRecipePersistenceManager_rootPersistenceDirectoryURL;
  v2 = sub_21A2F4794();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_21A142808(v0 + OBJC_IVAR____TtC10CookingKit32ImportedRecipePersistenceManager_imageLoader);

  return swift_deallocClassInstance();
}

uint64_t sub_21A198E70()
{
  result = sub_21A2F4794();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_21A198F18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A146070;

  return sub_21A194D1C(a1);
}

uint64_t sub_21A198FB0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_21A146070;

  return sub_21A195738(a1, a2, a3);
}

uint64_t sub_21A199064(uint64_t a1, uint64_t *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A146070;

  return sub_21A195FE8(a1, a2);
}

uint64_t sub_21A19917C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_21A145E2C;

  return sub_21A194D1C(a1);
}

uint64_t sub_21A199214(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x21CED6780](v2, MEMORY[0x277D83B88], MEMORY[0x277D83B98]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_21A2B9A84(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_21A199288(uint64_t a1)
{
  v2 = sub_21A2F4794();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  v12 = sub_21A14F944(&qword_27CCFF318, MEMORY[0x277CC9260]);
  result = MEMORY[0x21CED6780](v11, v2, v12);
  v20 = result;
  if (v11)
  {
    v16 = *(v3 + 16);
    v14 = v3 + 16;
    v15 = v16;
    v17 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v18 = *(v14 + 56);
    do
    {
      v15(v7, v17, v2);
      sub_21A2B9B64(v10, v7);
      (*(v14 - 8))(v10, v2);
      v17 += v18;
      --v11;
    }

    while (v11);
    return v20;
  }

  return result;
}

unint64_t sub_21A199424()
{
  result = qword_27CCFF328;
  if (!qword_27CCFF328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF328);
  }

  return result;
}

uint64_t sub_21A199478(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CCFF348);
    v3 = sub_21A2F7FC4();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_21A2F78E4();
      sub_21A2F8434();
      v27 = v7;
      sub_21A2F79A4();
      v8 = sub_21A2F8474();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_21A2F78E4();
        v18 = v17;
        if (v16 == sub_21A2F78E4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_21A2F8394();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21A19966C(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF048);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1996D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Recipe();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A199738(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21A19980C(uint64_t a1)
{
  v2 = sub_21A2F8524();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    sub_21A176C98(&qword_27CCFF360);
    v11 = sub_21A2F7FC4();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_21A14F944(&qword_27CCFF368, MEMORY[0x277CC9FC8]);
      v18 = sub_21A2F77F4();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_21A14F944(&qword_27CCFF370, MEMORY[0x277CC9FC8]);
          v25 = sub_21A2F7874();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_21A199B2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_21A176C98(&qword_27CCFF378);
    v3 = sub_21A2F7FC4();
    v4 = 0;
    v5 = v3 + 56;
    v27 = a1 + 32;
    while (1)
    {
      v10 = (v27 + 24 * v4);
      v11 = *v10;
      v12 = v10[1];
      v13 = v10[2];
      sub_21A2F8434();
      MEMORY[0x21CED6EE0](v11);
      MEMORY[0x21CED6EE0](v12);
      MEMORY[0x21CED6EE0](v13);
      result = sub_21A2F8474();
      v15 = ~(-1 << *(v3 + 32));
      v16 = result & v15;
      v17 = (result & v15) >> 6;
      v18 = *(v5 + 8 * v17);
      v19 = 1 << (result & v15);
      v20 = *(v3 + 48);
      if ((v19 & v18) != 0)
      {
        while (1)
        {
          v21 = (v20 + 24 * v16);
          v22 = *v21;
          v23 = v21[1];
          v24 = v21[2];
          v25 = v22 == v11 && v23 == v12;
          if (v25 && v24 == v13)
          {
            break;
          }

          v16 = (v16 + 1) & v15;
          v17 = v16 >> 6;
          v18 = *(v5 + 8 * (v16 >> 6));
          v19 = 1 << v16;
          if ((v18 & (1 << v16)) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v17) = v18 | v19;
        v6 = (v20 + 24 * v16);
        *v6 = v11;
        v6[1] = v12;
        v6[2] = v13;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t Dependencies.savedRecipes.getter()
{
  sub_21A148048();
  sub_21A14809C();

  return sub_21A2F7624();
}

uint64_t sub_21A199D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20]();
  v10 = v24 - v9;
  sub_21A183960(a3, v24 - v9, &qword_27CCFEB08);
  v11 = sub_21A2F7C64();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_21A1427A8(v10, &qword_27CCFEB08);
  }

  else
  {
    sub_21A2F7C54();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_21A2F7BD4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_21A2F7964() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      sub_21A1427A8(a3, &qword_27CCFEB08);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A1427A8(a3, &qword_27CCFEB08);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_21A19A008(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_21A183960(a3, v26 - v11, &qword_27CCFEB08);
  v13 = sub_21A2F7C64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21A1427A8(v12, &qword_27CCFEB08);
  }

  else
  {
    sub_21A2F7C54();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21A2F7BD4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21A2F7964() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_21A1427A8(a3, &qword_27CCFEB08);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A1427A8(a3, &qword_27CCFEB08);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21A19A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_21A183960(a3, v26 - v11, &qword_27CCFEB08);
  v13 = sub_21A2F7C64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21A1427A8(v12, &qword_27CCFEB08);
  }

  else
  {
    sub_21A2F7C54();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21A2F7BD4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21A2F7964() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      sub_21A1427A8(a3, &qword_27CCFEB08);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A1427A8(a3, &qword_27CCFEB08);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_21A19A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  sub_21A183960(a3, v26 - v11, &qword_27CCFEB08);
  v13 = sub_21A2F7C64();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_21A1427A8(v12, &qword_27CCFEB08);
  }

  else
  {
    sub_21A2F7C54();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_21A2F7BD4();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_21A2F7964() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      sub_21A176C98(&qword_27CCFF380);
      v22 = (v19 | v17);
      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v23 = swift_task_create();

      sub_21A1427A8(a3, &qword_27CCFEB08);

      return v23;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_21A1427A8(a3, &qword_27CCFEB08);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  sub_21A176C98(&qword_27CCFF380);
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

Swift::Bool __swiftcall SavedRecipes.contains(id:)(CookingKit::Recipe::ID id)
{
  v2 = *(id.id._countAndFlagsBits + 8);
  v3 = *v1;
  v6[0] = *id.id._countAndFlagsBits;
  v6[1] = v2;
  v5[2] = v6;
  return sub_21A1A2D18(sub_21A1A3150, v5, v3) & 1;
}

uint64_t SavedRecipes.recipeIDs.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SavedRecipes.contains(recipe:)(void *a1)
{
  v2 = *v1;
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v5[2] = v6;
  return sub_21A1A2D18(sub_21A1A3A34, v5, v2) & 1;
}

uint64_t sub_21A19AA2C(uint64_t a1, uint64_t a2)
{
  v71 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v71, v4);
  v74 = &v67 - v5;
  v78 = sub_21A2F5294();
  v6 = *(v78 - 8);
  MEMORY[0x28223BE20](v78, v7);
  v72 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = type metadata accessor for Duration();
  MEMORY[0x28223BE20](v77, v9);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v73 = &v67 - v14;
  v76 = sub_21A176C98(&qword_27CCFF390);
  MEMORY[0x28223BE20](v76, v15);
  v86 = &v67 - v16;
  v82 = type metadata accessor for CountdownTimer();
  v17 = *(v82 - 8);
  MEMORY[0x28223BE20](v82, v18);
  v85 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = sub_21A176C98(&qword_27CCFF3A8);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v79 = (&v67 - v22);
  v81 = sub_21A176C98(&qword_27CCFF3B0);
  MEMORY[0x28223BE20](v81, v23);
  v25 = &v67 - v24;
  v80 = type metadata accessor for InTextCountdownTimer();
  MEMORY[0x28223BE20](v80, v26);
  v28 = (&v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29, v30);
  v87 = (&v67 - v32);
  v33 = *(a1 + 16);
  if (v33 != *(a2 + 16))
  {
    return 0;
  }

  if (!v33 || a1 == a2)
  {
    return 1;
  }

  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = a1 + v34;
  v36 = a2 + v34;
  v37 = v6;
  v38 = (v17 + 48);
  v67 = (v37 + 32);
  v68 = v11;
  v69 = (v37 + 8);
  v70 = (v17 + 48);
  v75 = *(v31 + 72);
  while (1)
  {
    sub_21A1A396C(v35, v87, type metadata accessor for InTextCountdownTimer);
    sub_21A1A396C(v36, v28, type metadata accessor for InTextCountdownTimer);
    if (*v87 != *v28 || v87[1] != v28[1])
    {
      sub_21A1A39D4(v28, type metadata accessor for InTextCountdownTimer);
      sub_21A1A39D4(v87, type metadata accessor for InTextCountdownTimer);
      return 0;
    }

    v83 = v36;
    v84 = v35;
    v41 = *(v80 + 20);
    v42 = *(v81 + 48);
    sub_21A183960(v87 + v41, v25, &qword_27CCFF3A8);
    sub_21A183960(v28 + v41, &v25[v42], &qword_27CCFF3A8);
    v43 = v28;
    v44 = v25;
    v45 = *v38;
    v46 = v82;
    if ((*v38)(v44, 1, v82) != 1)
    {
      break;
    }

    sub_21A1A39D4(v43, type metadata accessor for InTextCountdownTimer);
    sub_21A1A39D4(v87, type metadata accessor for InTextCountdownTimer);
    v39 = v45(v44 + v42, 1, v46);
    v25 = v44;
    v28 = v43;
    if (v39 != 1)
    {
      goto LABEL_32;
    }

LABEL_6:
    sub_21A1427A8(v25, &qword_27CCFF3A8);
    v36 = v83 + v75;
    v35 = v84 + v75;
    if (!--v33)
    {
      return 1;
    }
  }

  v47 = v79;
  sub_21A183960(v44, v79, &qword_27CCFF3A8);
  if (v45(v44 + v42, 1, v46) == 1)
  {
    sub_21A1A39D4(v43, type metadata accessor for InTextCountdownTimer);
    sub_21A1A39D4(v87, type metadata accessor for InTextCountdownTimer);
    sub_21A1A39D4(v47, type metadata accessor for CountdownTimer);
    v25 = v44;
LABEL_32:
    v66 = &qword_27CCFF3B0;
    goto LABEL_40;
  }

  v48 = v85;
  sub_21A1A3904(v44 + v42, v85, type metadata accessor for CountdownTimer);
  v49 = v47[1];
  v50 = v48[1];
  v25 = v44;
  v28 = v43;
  if (v49)
  {
    if (!v50 || (*v47 != *v85 || v49 != v50) && (sub_21A2F8394() & 1) == 0)
    {
LABEL_30:
      sub_21A1A39D4(v85, type metadata accessor for CountdownTimer);
      sub_21A1A39D4(v43, type metadata accessor for InTextCountdownTimer);
      sub_21A1A39D4(v87, type metadata accessor for InTextCountdownTimer);
      v65 = v47;
      goto LABEL_39;
    }
  }

  else if (v50)
  {
    goto LABEL_30;
  }

  v51 = *(v46 + 20);
  v52 = *(v76 + 48);
  v53 = v86;
  sub_21A1A396C(v47 + v51, v86, type metadata accessor for Duration);
  sub_21A1A396C(v85 + v51, v53 + v52, type metadata accessor for Duration);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v58 = v73;
    sub_21A1A396C(v86, v73, type metadata accessor for Duration);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v60 = v78;
    if (EnumCaseMultiPayload == 1)
    {
      (*v69)(v58, v78);
LABEL_35:
      sub_21A1427A8(v86, &qword_27CCFF390);
      goto LABEL_38;
    }

    v61 = v72;
    (*v67)(v72, v86 + v52, v78);
    v62 = MEMORY[0x21CED3CF0](v58, v61);
    v63 = *v69;
    (*v69)(v61, v60);
    v63(v58, v60);
    sub_21A1A39D4(v86, type metadata accessor for Duration);
    if ((v62 & 1) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v54 = v68;
  sub_21A1A396C(v86, v68, type metadata accessor for Duration);
  v55 = swift_getEnumCaseMultiPayload();
  v56 = v74;
  if (v55 != 1)
  {
    sub_21A1427A8(v54, &qword_27CCFF388);
    goto LABEL_35;
  }

  sub_21A1A361C(v86 + v52, v74);
  sub_21A148524(&qword_27CCFF398, MEMORY[0x277D6CBB8]);
  if (sub_21A2F7874())
  {
    v57 = sub_21A2F7874();
    sub_21A1427A8(v56, &qword_27CCFF388);
    sub_21A1427A8(v54, &qword_27CCFF388);
    if ((v57 & 1) == 0)
    {
      goto LABEL_37;
    }

    sub_21A1A39D4(v86, type metadata accessor for Duration);
LABEL_28:
    sub_21A1A39D4(v85, type metadata accessor for CountdownTimer);
    sub_21A1A39D4(v28, type metadata accessor for InTextCountdownTimer);
    sub_21A1A39D4(v87, type metadata accessor for InTextCountdownTimer);
    sub_21A1A39D4(v79, type metadata accessor for CountdownTimer);
    v38 = v70;
    goto LABEL_6;
  }

  sub_21A1427A8(v56, &qword_27CCFF388);
  sub_21A1427A8(v54, &qword_27CCFF388);
LABEL_37:
  sub_21A1A39D4(v86, type metadata accessor for Duration);
LABEL_38:
  sub_21A1A39D4(v85, type metadata accessor for CountdownTimer);
  sub_21A1A39D4(v28, type metadata accessor for InTextCountdownTimer);
  sub_21A1A39D4(v87, type metadata accessor for InTextCountdownTimer);
  v65 = v79;
LABEL_39:
  sub_21A1A39D4(v65, type metadata accessor for CountdownTimer);
  v66 = &qword_27CCFF3A8;
LABEL_40:
  sub_21A1427A8(v25, v66);
  return 0;
}

uint64_t sub_21A19B4E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    v68 = *(a1 + 32);
    v69 = v3;
    *v70 = *(a1 + 64);
    *&v70[9] = *(a1 + 73);
    v4 = *(a2 + 48);
    v71 = *(a2 + 32);
    v72 = v4;
    *v73 = *(a2 + 64);
    *&v73[9] = *(a2 + 73);
    if (v68 == v71)
    {
      v5 = (a1 + 96);
      v6 = (a2 + 96);
      do
      {
        if (*(&v68 + 1) != *(&v71 + 1))
        {
          return 0;
        }

        v7 = *(&v69 + 1);
        v8 = *&v70[8];
        v9 = *v70;
        v10 = *&v70[16];
        v11 = *v73;
        v12 = v73[24];
        if (v70[24] == 255)
        {
          v13 = v69;
          if (v73[24] != 255)
          {
            v60 = *&v73[16];
            v53 = *&v73[8];
            v56 = *v73;
            v62 = *(&v72 + 1);
            v42 = v72;
            v43 = v70[24];
            v44 = v73[24];
            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            goto LABEL_47;
          }

          sub_21A1A373C(&v68, v67);
          sub_21A1A373C(&v71, v67);
          sub_21A1A3798(v13, v7, v9, v8, v10, 255);
        }

        else
        {
          v62 = *(&v72 + 1);
          if (v73[24] == 255)
          {
            v60 = *&v73[16];
            v53 = *&v73[8];
            v56 = *v73;
            v42 = v72;
            v13 = v69;
            v43 = v70[24];
            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            sub_21A1A3820(v13, v7, v9, v8, v10, v43);
            sub_21A1A37B8(v8, v10, v43);
            v44 = -1;
LABEL_47:
            sub_21A1A3798(v13, v7, v9, v8, v10, v43);
            v36 = v42;
            v37 = v62;
            v39 = v53;
            v38 = v56;
            v40 = v60;
            v41 = v44;
            goto LABEL_51;
          }

          v66 = v69;
          v57 = v70[24];
          v61 = v72;
          if (*&v69 != *&v72)
          {
            goto LABEL_42;
          }

          if (v70[0])
          {
            if ((v73[0] & 1) == 0)
            {
              goto LABEL_42;
            }
          }

          else if ((v73[0] & 1) != 0 || *(&v69 + 1) != *(&v72 + 1))
          {
LABEL_42:
            v34 = v73[24];
            v58 = *&v73[16];
            v35 = *&v73[8];
            v54 = *v73;
            v63 = *v70;
            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            sub_21A1A3820(v66, *(&v66 + 1), v63, v8, v10, v57);
            v20 = v35;
LABEL_43:
            sub_21A1A3798(v61, v62, v54, v20, v58, v34);
            v16 = v63;
            v17 = *(&v66 + 1);
            v18 = v66;
LABEL_44:
            sub_21A1A37B8(v8, v10, v57);
            v36 = v18;
            v37 = v17;
            v38 = v16;
            v39 = v8;
            v40 = v10;
            v41 = v57;
LABEL_51:
            sub_21A1A3798(v36, v37, v38, v39, v40, v41);
            sub_21A1A37CC(&v71);
            sub_21A1A37CC(&v68);
            return 0;
          }

          if (v70[24] <= 1u)
          {
            if (v70[24])
            {
              v58 = *&v73[16];
              v52 = *&v73[8];
              v54 = *v73;
              v63 = *v70;
              if (v73[24] != 1)
              {
                goto LABEL_49;
              }

              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              sub_21A1A3820(v66, *(&v66 + 1), v63, v8, v10, 1);
              v15 = v8;
              sub_21A1A3820(v61, v62, v11, v52, v58, 1);
              sub_21A1A37B8(v8, v10, 1);
              sub_21A1A37B8(v52, v58, 1);
              sub_21A1A3798(v61, v62, v11, v52, v58, 1);
              sub_21A1A37B8(v8, v10, 1);
              v9 = v63;
              sub_21A1A3798(v61, v62, v11, v52, v58, 1);
              v19 = v52 == v8;
              goto LABEL_37;
            }

            if (v73[24])
            {
              v58 = *&v73[16];
              v52 = *&v73[8];
              v54 = *v73;
              v63 = *v70;
              v45 = v73[24];
              sub_21A1A3840(*&v70[8], *&v70[16], 0);
              sub_21A2F5434();
              v12 = v45;
LABEL_49:
              v46 = v12;
              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              v9 = v63;
              v47 = v57;
              sub_21A1A3820(v66, *(&v66 + 1), v63, v8, v10, v57);
              sub_21A1A3820(v61, v62, v54, v52, v58, v46);
              sub_21A1A37B8(v8, v10, v57);
              sub_21A1A37B8(v52, v58, v46);
              sub_21A1A37B8(v8, v10, v57);
              v7 = *(&v66 + 1);
              v48 = v66;
              sub_21A1A3798(v61, v62, v54, v52, v58, v46);
              goto LABEL_50;
            }

            if (*&v70[16])
            {
              if (!*&v73[16])
              {
                v48 = v69;
                v49 = v72;
                v50 = *v73;
                v51 = *&v73[8];
                sub_21A1A373C(&v68, v67);
                sub_21A1A373C(&v71, v67);
                sub_21A1A3820(v49, *(&v49 + 1), v50, v51, 0, 0);
                sub_21A1A3840(v8, v10, 0);
                sub_21A1A373C(&v68, v67);
                sub_21A1A373C(&v71, v67);
                sub_21A1A3820(v48, v7, v9, v8, v10, 0);
                sub_21A1A3820(v49, *(&v49 + 1), v50, v51, 0, 0);
                sub_21A1A37B8(v8, v10, 0);
                sub_21A1A37B8(v51, 0, 0);
                sub_21A1A3798(v49, *(&v49 + 1), v50, v51, 0, 0);
                v47 = 0;
LABEL_50:
                sub_21A1A37B8(v8, v10, v47);
                v36 = v48;
                v37 = v7;
                v38 = v9;
                v39 = v8;
                v40 = v10;
                v41 = v47;
                goto LABEL_51;
              }

              v14 = v69;
              v15 = *&v70[8];
              if (*&v70[8] != *&v73[8])
              {
                v27 = *&v73[8];
                v59 = *&v73[16];
                v65 = sub_21A2F8394();
                sub_21A1A373C(&v68, v67);
                sub_21A1A373C(&v71, v67);
                sub_21A1A3840(v15, v10, 0);
                sub_21A1A373C(&v68, v67);
                sub_21A1A373C(&v71, v67);
                sub_21A1A3820(v14, *(&v14 + 1), v9, v15, v10, 0);
                sub_21A1A3820(v61, v62, v11, v27, v59, 0);
                sub_21A1A37B8(v15, v10, 0);
                sub_21A1A37B8(v27, v59, 0);
                v19 = v65;
                sub_21A1A3798(v61, v62, v11, v27, v59, 0);
LABEL_37:
                sub_21A1A37B8(v15, v10, v57);
                sub_21A1A3798(v66, *(&v66 + 1), v9, v15, v10, v57);
                sub_21A1A37CC(&v71);
                sub_21A1A37CC(&v68);
                if (!v19)
                {
                  return 0;
                }

                goto LABEL_38;
              }

              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              sub_21A1A3840(v15, v10, 0);
              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              v16 = v9;
              sub_21A1A3820(v14, *(&v14 + 1), v9, v15, v10, 0);
              sub_21A1A3820(v61, v62, v11, v15, v10, 0);
              sub_21A1A37B8(v15, v10, 0);
              sub_21A1A37B8(v15, v10, 0);
              v8 = v15;
              v17 = *(&v66 + 1);
              v18 = v66;
              sub_21A1A3798(v61, v62, v11, v8, v10, 0);
            }

            else
            {
              v55 = *&v70[8];
              v21 = v69;
              v22 = v72;
              v64 = *v70;
              v23 = *v73;
              v24 = *&v73[8];
              v25 = *&v73[16];
              sub_21A1A3820(v72, *(&v72 + 1), *v73, *&v73[8], *&v73[16], 0);
              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              sub_21A1A3820(v22, *(&v22 + 1), v23, v24, v25, 0);
              sub_21A1A3840(v55, 0, 0);
              sub_21A1A373C(&v68, v67);
              sub_21A1A373C(&v71, v67);
              v26 = v21;
              v8 = v55;
              sub_21A1A3820(v26, *(&v66 + 1), v64, v55, 0, 0);
              sub_21A1A3840(v55, 0, 0);
              sub_21A1A3820(v22, *(&v22 + 1), v23, v24, v25, 0);
              sub_21A1A37B8(v55, 0, 0);
              sub_21A1A37B8(v24, v25, 0);
              if (v25)
              {
                sub_21A1A3798(v22, *(&v22 + 1), v23, v24, v25, 0);
                sub_21A1A3798(v22, *(&v22 + 1), v23, v24, v25, 0);
                sub_21A1A37B8(v55, 0, 0);
                sub_21A1A3798(v22, *(&v22 + 1), v23, v24, v25, 0);
                v10 = 0;
                v47 = 0;
                v9 = v64;
                v7 = *(&v66 + 1);
                v48 = v66;
                goto LABEL_50;
              }

              sub_21A1A3798(v22, *(&v22 + 1), v23, v24, 0, 0);
              sub_21A1A37B8(v55, 0, 0);
              sub_21A1A3798(v22, *(&v22 + 1), v23, v24, 0, 0);
              v16 = v64;
              v17 = *(&v66 + 1);
              v18 = v66;
            }

            goto LABEL_35;
          }

          v58 = *&v73[16];
          v52 = *&v73[8];
          v54 = *v73;
          v63 = *v70;
          if (v70[24] == 2)
          {
            if (v73[24] != 2)
            {
              goto LABEL_49;
            }

            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            sub_21A1A373C(&v68, v67);
            sub_21A1A373C(&v71, v67);
            sub_21A1A3820(v66, *(&v66 + 1), v63, v8, v10, 2);
            sub_21A1A3820(v61, v62, v11, v52, v58, 2);
            sub_21A1A37B8(v8, v10, 2);
            sub_21A1A37B8(v52, v58, 2);
            sub_21A1A3798(v61, v62, v11, v52, v58, 2);
            sub_21A1A37B8(v8, v10, 2);
            v17 = *(&v66 + 1);
            v18 = v66;
            v16 = v63;
            sub_21A1A3798(v61, v62, v11, v52, v58, 2);
            if (v52 != v8)
            {
              goto LABEL_44;
            }

LABEL_35:
            sub_21A1A37B8(v8, v10, v57);
            sub_21A1A3798(v18, v17, v16, v8, v10, v57);
            sub_21A1A37CC(&v71);
            sub_21A1A37CC(&v68);
            goto LABEL_38;
          }

          if (v73[24] != 3)
          {
            goto LABEL_49;
          }

          sub_21A1A373C(&v68, v67);
          sub_21A1A373C(&v71, v67);
          sub_21A1A373C(&v68, v67);
          sub_21A1A373C(&v71, v67);
          sub_21A1A3820(v66, *(&v66 + 1), v63, v8, v10, 3);
          v20 = v52;
          sub_21A1A3820(v61, v62, v11, v52, v58, 3);
          sub_21A1A37B8(v8, v10, 3);
          sub_21A1A37B8(v52, v58, 3);
          sub_21A1A3798(v61, v62, v11, v52, v58, 3);
          if (v52 != v8)
          {
            v34 = 3;
            goto LABEL_43;
          }

          sub_21A1A37B8(v8, v10, 3);
          sub_21A1A3798(v61, v62, v54, v52, v58, 3);
          sub_21A1A37B8(v8, v10, 3);
          sub_21A1A3798(v66, *(&v66 + 1), v63, v8, v10, 3);
          sub_21A1A37CC(&v71);
          sub_21A1A37CC(&v68);
        }

LABEL_38:
        if (!--v2)
        {
          return 1;
        }

        v28 = v5[1];
        v68 = *v5;
        v69 = v28;
        v29 = v5[2];
        v30 = *(v5 + 41);
        v5 += 4;
        *v70 = v29;
        *&v70[9] = v30;
        v31 = v6[1];
        v71 = *v6;
        v72 = v31;
        *v73 = v6[2];
        v32 = *(v6 + 41);
        v6 += 4;
        *&v73[9] = v32;
      }

      while (v68 == v71);
    }
  }

  return 0;
}

uint64_t sub_21A19C1F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(v3 - 2);
      v9 = *(v3 - 1);
      v10 = *v3;
      if (!v5)
      {
        break;
      }

      if (!v8)
      {
        return 0;
      }

      if (*(i - 3) == *(v3 - 3) && v5 == v8)
      {
        goto LABEL_14;
      }

      v12 = sub_21A2F8394();
      result = 0;
      if ((v12 & 1) == 0)
      {
        return result;
      }

LABEL_15:
      if (v6 != v9 || v7 != v10)
      {
        return result;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v8)
    {
      return 0;
    }

LABEL_14:
    result = 0;
    goto LABEL_15;
  }

  return 1;
}

uint64_t sub_21A19C2DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalImageAsset(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebImageAsset(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ExternalImageAsset(0);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v55 = (&v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = sub_21A176C98(&qword_27CCFF3B8);
  MEMORY[0x28223BE20](v58, v14);
  v16 = &v50 - v15;
  v59 = type metadata accessor for ImageAsset(0);
  v18 = MEMORY[0x28223BE20](v59, v17);
  v20 = MEMORY[0x28223BE20](v18, v19);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = (&v50 - v23);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v50 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v34 = &v50 - v31;
  v35 = *(a1 + 16);
  if (v35 != *(a2 + 16))
  {
    return 0;
  }

  if (!v35 || a1 == a2)
  {
    return 1;
  }

  v52 = v33;
  v53 = v32;
  v50 = v7;
  v51 = &v50 - v31;
  v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v37 = a1 + v36;
  v38 = a2 + v36;
  v57 = *(v30 + 72);
  v54 = v24;
  while (1)
  {
    sub_21A1A396C(v37, v34, type metadata accessor for ImageAsset);
    sub_21A1A396C(v38, v28, type metadata accessor for ImageAsset);
    v39 = *(v58 + 48);
    sub_21A1A396C(v34, v16, type metadata accessor for ImageAsset);
    sub_21A1A396C(v28, &v16[v39], type metadata accessor for ImageAsset);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_21A1A396C(v16, v24, type metadata accessor for ImageAsset);
    if (swift_getEnumCaseMultiPayload())
    {
      v49 = type metadata accessor for ExternalImageAsset;
      goto LABEL_22;
    }

    v43 = v55;
    sub_21A1A3904(&v16[v39], v55, type metadata accessor for ExternalImageAsset);
    v44 = _s10CookingKit18ExternalImageAssetV2eeoiySbAC_ACtFZ_0(v24, v43);
    sub_21A1A39D4(v43, type metadata accessor for ExternalImageAsset);
    sub_21A1A39D4(v24, type metadata accessor for ExternalImageAsset);
    sub_21A1A39D4(v16, type metadata accessor for ImageAsset);
    if (!v44)
    {
      goto LABEL_24;
    }

LABEL_6:
    sub_21A1A39D4(v28, type metadata accessor for ImageAsset);
    sub_21A1A39D4(v34, type metadata accessor for ImageAsset);
    v38 += v57;
    v37 += v57;
    if (!--v35)
    {
      return 1;
    }
  }

  if (EnumCaseMultiPayload != 1)
  {
    v45 = v53;
    sub_21A1A396C(v16, v53, type metadata accessor for ImageAsset);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_21A1A39D4(v45, type metadata accessor for LocalImageAsset);
      v34 = v51;
      goto LABEL_23;
    }

    v46 = v50;
    sub_21A1A3904(&v16[v39], v50, type metadata accessor for LocalImageAsset);
    v47 = sub_21A248AE0(v45, v46);
    sub_21A1A39D4(v46, type metadata accessor for LocalImageAsset);
    sub_21A1A39D4(v45, type metadata accessor for LocalImageAsset);
    v34 = v51;
    if (!v47)
    {
LABEL_17:
      sub_21A1A39D4(v16, type metadata accessor for ImageAsset);
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  v24 = v52;
  sub_21A1A396C(v16, v52, type metadata accessor for ImageAsset);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v41 = v56;
    sub_21A1A3904(&v16[v39], v56, type metadata accessor for WebImageAsset);
    v42 = sub_21A248AC8(v24, v41);
    sub_21A1A39D4(v41, type metadata accessor for WebImageAsset);
    sub_21A1A39D4(v24, type metadata accessor for WebImageAsset);
    if (!v42)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_21A1A39D4(v16, type metadata accessor for ImageAsset);
    v24 = v54;
    goto LABEL_6;
  }

  v49 = type metadata accessor for WebImageAsset;
LABEL_22:
  sub_21A1A39D4(v24, v49);
LABEL_23:
  sub_21A1427A8(v16, &qword_27CCFF3B8);
LABEL_24:
  sub_21A1A39D4(v28, type metadata accessor for ImageAsset);
  sub_21A1A39D4(v34, type metadata accessor for ImageAsset);
  return 0;
}

uint64_t sub_21A19C938(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    v4 = (a2 + 56);
    do
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;
      if (v5)
      {
        if (!v8)
        {
          return 0;
        }

        v11 = *(v3 - 3) == *(v4 - 3) && v5 == v8;
        if (!v11 && (sub_21A2F8394() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v8)
      {
        return 0;
      }

      v12 = v6 == v9 && v7 == v10;
      if (!v12 && (sub_21A2F8394() & 1) == 0)
      {
        return 0;
      }

      v3 += 4;
      v4 += 4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_21A19CA20(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v88 = v2;
  v89 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v12 = v5[1];
    v80 = *v5;
    v81 = v12;
    v13 = v5[3];
    v82 = v5[2];
    v83[0] = v13;
    *(v83 + 9) = *(v5 + 57);
    v14 = v6[3];
    v86 = v6[2];
    v87[0] = v14;
    *(v87 + 9) = *(v6 + 57);
    v15 = v6[1];
    v84 = *v6;
    v85 = v15;
    if (v80 != v84 && (sub_21A2F8394() & 1) == 0)
    {
      break;
    }

    v76 = v81;
    v77 = v82;
    v78 = v83[0];
    *&v75[7] = v85;
    v79 = *&v83[1];
    *&v75[23] = v86;
    *&v75[39] = v87[0];
    *&v75[55] = *&v87[1];
    v16 = BYTE8(v87[1]);
    if (BYTE8(v83[1]) == 254)
    {
      if (BYTE8(v87[1]) != 254)
      {
        v25 = -2;
        sub_21A1A3854(&v80, &v66);
        sub_21A1A3854(&v84, &v66);
        sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
        sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
        v26 = v16;
        goto LABEL_32;
      }

      v66 = v81;
      v67 = v82;
      v68 = v83[0];
      v69 = *&v83[1];
      v70 = -2;
      sub_21A183960(&v81, v63, &qword_27CCFF3C0);
      sub_21A183960(&v85, v63, &qword_27CCFF3C0);
      sub_21A1427A8(&v66, &qword_27CCFF3C0);
      if (!i)
      {
        return 1;
      }
    }

    else
    {
      v63[0] = v81;
      v63[1] = v82;
      v63[2] = v83[0];
      v17 = *&v83[1];
      v64 = *&v83[1];
      v65 = BYTE8(v83[1]);
      v18 = v82;
      v19 = v83[0];
      if (BYTE8(v87[1]) == 254)
      {
        v24 = *&v83[1];
        v25 = BYTE8(v83[1]);
        sub_21A1A3854(&v80, &v66);
        sub_21A1A3854(&v84, &v66);
        sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
        sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
        sub_21A183960(v63, &v66, &qword_27CCFF3C0);
        sub_21A1A3798(v18, *(&v18 + 1), v19, *(&v19 + 1), v24, v25);
        v26 = -2;
LABEL_32:
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v25;
        v71 = *v75;
        v72 = *&v75[16];
        *v73 = *&v75[32];
        *&v73[15] = *&v75[47];
        v74 = v26;
        v27 = &unk_27CCFF3C8;
        goto LABEL_43;
      }

      v58 = v85;
      v59 = v86;
      v60 = v87[0];
      v20 = *&v87[1];
      v61 = *&v87[1];
      v62 = BYTE8(v87[1]);
      v51 = *(&v82 + 1);
      if (v63[0] != v85)
      {
        v21 = BYTE8(v83[1]);
        v22 = *&v83[1];
        v23 = v82;
        sub_21A1A3854(&v80, &v66);
        sub_21A1A3854(&v84, &v66);
        sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
        sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
        sub_21A183960(v63, &v66, &qword_27CCFF3C0);
        goto LABEL_42;
      }

      if (BYTE8(v83[1]) == 255)
      {
        if (BYTE8(v87[1]) != 255)
        {
          v48 = v59;
          v49 = v60;
          v50 = BYTE8(v87[1]);
          v47 = *&v87[1];
          v29 = BYTE8(v83[1]);
          sub_21A1A3854(&v80, &v66);
          sub_21A1A3854(&v84, &v66);
          sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
          sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
          sub_21A183960(v63, &v66, &qword_27CCFF3C0);
          v28 = v17;
          sub_21A1A3820(v18, *(&v18 + 1), v19, *(&v19 + 1), v17, 255);
          sub_21A183960(&v58, &v66, &qword_27CCFF3C0);
LABEL_37:
          v23 = v18;
          v22 = v28;
          v21 = v29;
          sub_21A1A3798(v18, *(&v18 + 1), v19, *(&v19 + 1), v28, v29);
          v41 = *(&v48 + 1);
          v40 = v48;
          v43 = *(&v49 + 1);
          v42 = v49;
          v44 = v47;
          v45 = v50;
LABEL_41:
          sub_21A1A3798(v40, v41, v42, v43, v44, v45);
LABEL_42:
          sub_21A1427A8(&v58, &qword_27CCFF3C0);
          sub_21A1A3798(v23, v51, v19, *(&v19 + 1), v22, v21);
          v66 = v76;
          v67 = v77;
          v68 = v78;
          v69 = v79;
          v70 = v21;
          v27 = &qword_27CCFF3C0;
LABEL_43:
          sub_21A1427A8(&v66, v27);
          sub_21A1A38B0(&v84);
          sub_21A1A38B0(&v80);
          return 0;
        }

        sub_21A1A3854(&v80, &v66);
        sub_21A1A3854(&v84, &v66);
        sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
        sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
        sub_21A183960(v63, &v66, &qword_27CCFF3C0);
        sub_21A1A3820(v18, *(&v18 + 1), v19, *(&v19 + 1), v17, 255);
        sub_21A1A3798(v18, *(&v18 + 1), v19, *(&v19 + 1), v17, 255);
        sub_21A1A3798(v18, *(&v18 + 1), v19, *(&v19 + 1), v17, 255);
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = -1;
        sub_21A1427A8(&v66, &qword_27CCFF3C0);
        sub_21A1A38B0(&v84);
        sub_21A1A38B0(&v80);
      }

      else
      {
        v21 = BYTE8(v83[1]);
        v47 = *&v87[1];
        v48 = v59;
        v50 = BYTE8(v87[1]);
        v49 = v60;
        if (BYTE8(v87[1]) == 255)
        {
          v28 = *&v83[1];
          sub_21A1A3854(&v80, &v66);
          sub_21A1A3854(&v84, &v66);
          sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
          sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
          sub_21A183960(v63, &v66, &qword_27CCFF3C0);
          v29 = v21;
          sub_21A1A3820(v18, *(&v18 + 1), v19, *(&v19 + 1), v17, v21);
          sub_21A183960(&v58, &v66, &qword_27CCFF3C0);
          sub_21A1A3820(v18, *(&v18 + 1), v19, *(&v19 + 1), v17, v21);
          sub_21A1A37B8(*(&v19 + 1), v17, v21);
          goto LABEL_37;
        }

        if (*&v82 != *&v59)
        {
          v30 = v82;
          v31 = *&v83[1];
          sub_21A1A3854(&v80, &v66);
          sub_21A1A3854(&v84, &v66);
          v32 = v19;
          sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
          sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
          sub_21A183960(v63, &v66, &qword_27CCFF3C0);
          v33 = v18;
          v35 = *(&v19 + 1);
          v34 = v51;
          v36 = v19;
          v37 = v17;
          v38 = v21;
          v39 = v21;
          goto LABEL_39;
        }

        if (v83[0])
        {
          v9 = v82;
          v10 = BYTE8(v83[1]);
          if ((v60 & 1) == 0)
          {
            goto LABEL_35;
          }
        }

        else
        {
          v10 = BYTE8(v83[1]);
          if (v60)
          {
            v30 = v82;
            v31 = *&v83[1];
            v38 = BYTE8(v83[1]);
            sub_21A1A3854(&v80, &v66);
            sub_21A1A3854(&v84, &v66);
            v32 = v19;
            sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
            sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
            sub_21A183960(v63, &v66, &qword_27CCFF3C0);
            v33 = v18;
            v35 = *(&v19 + 1);
            v34 = v51;
            v36 = v19;
            v37 = v17;
            v39 = v21;
LABEL_39:
            sub_21A1A3820(v33, v34, v36, v35, v37, v39);
            goto LABEL_40;
          }

          v9 = v82;
          if (*(&v82 + 1) != *(&v59 + 1))
          {
LABEL_35:
            v31 = *&v83[1];
            v38 = v10;
            sub_21A1A3854(&v80, &v66);
            sub_21A1A3854(&v84, &v66);
            v32 = v19;
            sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
            sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
            sub_21A183960(v63, &v66, &qword_27CCFF3C0);
            v30 = v9;
            sub_21A1A3820(v9, v51, v19, *(&v19 + 1), v17, v38);
LABEL_40:
            sub_21A183960(&v58, &v66, &qword_27CCFF3C0);
            sub_21A1A3820(v30, v51, v32, *(&v19 + 1), v31, v38);
            sub_21A1A3798(v48, *(&v48 + 1), v49, *(&v49 + 1), v20, v50);
            sub_21A1A37B8(*(&v19 + 1), v31, v38);
            v23 = v30;
            v40 = v30;
            v41 = v51;
            v42 = v32;
            v43 = *(&v19 + 1);
            v22 = v31;
            v44 = v31;
            v45 = v38;
            goto LABEL_41;
          }
        }

        v55 = *(&v83[0] + 1);
        v56 = *&v83[1];
        v57 = v10;
        v52 = *(&v60 + 1);
        v53 = *&v87[1];
        v54 = BYTE8(v87[1]);
        v11 = v10;
        sub_21A1A3854(&v80, &v66);
        sub_21A1A3854(&v84, &v66);
        sub_21A183960(&v81, &v66, &qword_27CCFF3C0);
        sub_21A183960(&v85, &v66, &qword_27CCFF3C0);
        sub_21A183960(v63, &v66, &qword_27CCFF3C0);
        sub_21A1A3820(v9, *(&v18 + 1), v19, *(&v19 + 1), v17, v11);
        sub_21A183960(&v58, &v66, &qword_27CCFF3C0);
        sub_21A1A3820(v9, *(&v18 + 1), v19, *(&v19 + 1), v17, v11);
        sub_21A1A3840(*(&v19 + 1), v17, v11);
        sub_21A1A3820(v48, *(&v48 + 1), v49, *(&v49 + 1), v20, v50);
        v46 = _s10CookingKit15MeasurementUnitO2eeoiySbAC_ACtFZ_0(&v55, &v52);
        sub_21A1A37B8(v52, v53, v54);
        sub_21A1A37B8(v55, v56, v57);
        sub_21A1A3798(v48, *(&v48 + 1), v49, *(&v49 + 1), v20, v50);
        sub_21A1A37B8(*(&v19 + 1), v17, v11);
        sub_21A1A3798(v9, *(&v18 + 1), v19, *(&v19 + 1), v17, v11);
        sub_21A1427A8(&v58, &qword_27CCFF3C0);
        sub_21A1A3798(v9, *(&v18 + 1), v19, *(&v19 + 1), v17, v11);
        v66 = v76;
        v67 = v77;
        v68 = v78;
        v69 = v79;
        v70 = v11;
        sub_21A1427A8(&v66, &qword_27CCFF3C0);
        sub_21A1A38B0(&v84);
        sub_21A1A38B0(&v80);
        if (!v46)
        {
          return 0;
        }
      }

      if (!i)
      {
        return 1;
      }
    }

    v6 += 5;
    v5 += 5;
  }

  return 0;
}

uint64_t sub_21A19D640(uint64_t result, uint64_t a2)
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

  v3 = 0;
  v27 = a2 + 32;
  v28 = result + 32;
  v26 = *(result + 16);
  while (v3 != v2)
  {
    v4 = (v28 + 48 * v3);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    v8 = v4[5];
    v31 = v4[4];
    v32 = v4[3];
    v9 = (v27 + 48 * v3);
    v11 = v9[2];
    v10 = v9[3];
    v12 = v9[5];
    v30 = v9[4];
    v13 = v5 == *v9 && v6 == v9[1];
    if (!v13 && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }

    v14 = v7 == v11 && v32 == v10;
    if (!v14 && (sub_21A2F8394() & 1) == 0)
    {
      return 0;
    }

    if (v31)
    {
      if (!v30)
      {
        return 0;
      }

      sub_21A2F5434();
      swift_bridgeObjectRetain_n();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      v15 = sub_21A19B4E0(v31, v30);

      if ((v15 & 1) == 0)
      {
LABEL_52:

LABEL_50:

        return 0;
      }

      if (!v8)
      {
LABEL_27:
        if (v12)
        {
          goto LABEL_56;
        }

        swift_bridgeObjectRelease_n();
        goto LABEL_29;
      }
    }

    else
    {
      if (v30)
      {
        return 0;
      }

      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    if (!v12)
    {
      goto LABEL_52;
    }

    v16 = *(v8 + 16);
    if (v16 != *(v12 + 16))
    {
LABEL_56:

LABEL_49:

      goto LABEL_50;
    }

    if (v16 && v8 != v12)
    {
      sub_21A2F5434();
      v17 = 0;
      v29 = v12;
      while (1)
      {
        v18 = *(v8 + v17 + 40);
        v19 = *(v8 + v17 + 48);
        v20 = *(v8 + v17 + 56);
        v21 = v12 + v17;
        v22 = *(v12 + v17 + 40);
        v23 = *(v12 + v17 + 48);
        v24 = *(v12 + v17 + 56);
        if (v18)
        {
          if (!v22 || (*(v8 + v17 + 32) == *(v21 + 32) ? (v25 = v18 == v22) : (v25 = 0), !v25 && (sub_21A2F8394() & 1) == 0))
          {
LABEL_48:

            swift_bridgeObjectRelease_n();
            goto LABEL_49;
          }
        }

        else
        {
          if (v22)
          {

            swift_bridgeObjectRelease_n();

            goto LABEL_49;
          }
        }

        if (v19 != v23 || v20 != v24)
        {
          goto LABEL_48;
        }

        v17 += 32;
        --v16;
        v12 = v29;
        if (!v16)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_30;
        }
      }
    }

LABEL_29:

LABEL_30:
    ++v3;

    result = 1;
    v2 = v26;
    if (v3 == v26)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A19DADC(uint64_t a1, uint64_t a2)
{
  v81 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v81, v4);
  v83 = &v73 - v5;
  v87 = sub_21A2F5294();
  v6 = *(v87 - 8);
  MEMORY[0x28223BE20](v87, v7);
  v82 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_21A176C98(&qword_27CCFF390);
  MEMORY[0x28223BE20](v86, v9);
  v89 = &v73 - v10;
  v93 = type metadata accessor for Duration();
  v11 = *(v93 - 8);
  v13 = MEMORY[0x28223BE20](v93, v12);
  v84 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v85 = &v73 - v17;
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v73 - v19;
  v21 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v92 = &v73 - v23;
  v24 = sub_21A176C98(&qword_27CCFF3D8);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v73 - v26;
  v88 = type metadata accessor for StepSection();
  v29 = MEMORY[0x28223BE20](v88, v28);
  v31 = (&v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v29, v32);
  v35 = (&v73 - v34);
  v36 = *(a1 + 16);
  if (v36 != *(a2 + 16))
  {
    return 0;
  }

  if (!v36 || a1 == a2)
  {
    return 1;
  }

  v37 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v38 = a1 + v37;
  v78 = v20;
  v79 = &v73 - v34;
  v39 = a2 + v37;
  v80 = (v11 + 48);
  v73 = (v6 + 32);
  v74 = (v6 + 8);
  v40 = *(v33 + 72);
  v76 = v27;
  v77 = v40;
  v41 = v88;
  v75 = v24;
  while (1)
  {
    v90 = v38;
    sub_21A1A396C(v38, v35, type metadata accessor for StepSection);
    sub_21A1A396C(v39, v31, type metadata accessor for StepSection);
    v43 = v35[1];
    v44 = v31[1];
    if (v43)
    {
      if (!v44 || (*v35 != *v31 || v43 != v44) && (sub_21A2F8394() & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v44)
    {
      goto LABEL_42;
    }

    v91 = v39;
    v45 = v41[5];
    v46 = *(v24 + 48);
    sub_21A183960(v35 + v45, v27, &qword_27CCFF3D0);
    sub_21A183960(v31 + v45, &v27[v46], &qword_27CCFF3D0);
    v47 = *v80;
    if ((*v80)(v27, 1, v93) != 1)
    {
      break;
    }

    v48 = v47(&v27[v46], 1, v93);
    v35 = v79;
    if (v48 != 1)
    {
      goto LABEL_34;
    }

LABEL_27:
    sub_21A1427A8(v27, &qword_27CCFF3D0);
    v66 = sub_21A19E928(*(v35 + v41[6]), *(v31 + v41[6]));
    v67 = v91;
    if ((v66 & 1) == 0)
    {
      goto LABEL_42;
    }

    v68 = v41[7];
    v69 = *(v35 + v68);
    v70 = *(v31 + v68);
    if (v69)
    {
      if (!v70)
      {
        goto LABEL_42;
      }

      sub_21A2F5434();
      v71 = sub_21A19D640(v69, v70);

      sub_21A1A39D4(v31, type metadata accessor for StepSection);
      sub_21A1A39D4(v35, type metadata accessor for StepSection);
      if ((v71 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v70)
      {
        goto LABEL_42;
      }

      sub_21A1A39D4(v31, type metadata accessor for StepSection);
      sub_21A1A39D4(v35, type metadata accessor for StepSection);
    }

    v39 = v67 + v77;
    v38 = v90 + v77;
    result = 1;
    if (!--v36)
    {
      return result;
    }
  }

  v50 = v92;
  v49 = v93;
  sub_21A183960(v27, v92, &qword_27CCFF3D0);
  if (v47(&v27[v46], 1, v49) == 1)
  {
    sub_21A1A39D4(v50, type metadata accessor for Duration);
    v35 = v79;
LABEL_34:
    v72 = &qword_27CCFF3D8;
    goto LABEL_41;
  }

  v51 = v78;
  sub_21A1A3904(&v27[v46], v78, type metadata accessor for Duration);
  v52 = *(v86 + 48);
  v53 = v89;
  sub_21A1A396C(v50, v89, type metadata accessor for Duration);
  sub_21A1A396C(v51, v53 + v52, type metadata accessor for Duration);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v60 = v85;
    sub_21A1A396C(v53, v85, type metadata accessor for Duration);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v62 = v87;
    v35 = v79;
    if (EnumCaseMultiPayload == 1)
    {
      (*v74)(v60, v87);
LABEL_37:
      v27 = v76;
      sub_21A1427A8(v89, &qword_27CCFF390);
      v59 = v92;
      goto LABEL_40;
    }

    v63 = v82;
    (*v73)(v82, v53 + v52, v87);
    v64 = MEMORY[0x21CED3CF0](v60, v63);
    v65 = *v74;
    (*v74)(v63, v62);
    v65(v60, v62);
    sub_21A1A39D4(v53, type metadata accessor for Duration);
    v59 = v92;
    v27 = v76;
    if ((v64 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_26;
  }

  v54 = v84;
  sub_21A1A396C(v53, v84, type metadata accessor for Duration);
  v55 = swift_getEnumCaseMultiPayload();
  v35 = v79;
  if (v55 != 1)
  {
    sub_21A1427A8(v54, &qword_27CCFF388);
    goto LABEL_37;
  }

  v56 = v53 + v52;
  v57 = v83;
  sub_21A1A361C(v56, v83);
  sub_21A148524(&qword_27CCFF398, MEMORY[0x277D6CBB8]);
  if (sub_21A2F7874())
  {
    v58 = sub_21A2F7874();
    sub_21A1427A8(v57, &qword_27CCFF388);
    sub_21A1427A8(v54, &qword_27CCFF388);
    v59 = v92;
    if ((v58 & 1) == 0)
    {
      goto LABEL_39;
    }

    sub_21A1A39D4(v89, type metadata accessor for Duration);
    v27 = v76;
LABEL_26:
    sub_21A1A39D4(v78, type metadata accessor for Duration);
    sub_21A1A39D4(v59, type metadata accessor for Duration);
    v24 = v75;
    v41 = v88;
    goto LABEL_27;
  }

  sub_21A1427A8(v57, &qword_27CCFF388);
  sub_21A1427A8(v54, &qword_27CCFF388);
  v59 = v92;
LABEL_39:
  sub_21A1A39D4(v89, type metadata accessor for Duration);
  v27 = v76;
LABEL_40:
  sub_21A1A39D4(v78, type metadata accessor for Duration);
  sub_21A1A39D4(v59, type metadata accessor for Duration);
  v72 = &qword_27CCFF3D0;
LABEL_41:
  sub_21A1427A8(v27, v72);
LABEL_42:
  sub_21A1A39D4(v31, type metadata accessor for StepSection);
  sub_21A1A39D4(v35, type metadata accessor for StepSection);
  return 0;
}

uint64_t sub_21A19E4F0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || result == a2)
    {
      return 1;
    }

    v3 = 0;
    v27 = a2 + 32;
    v28 = result + 32;
    v26 = *(result + 16);
    while (1)
    {
      if (v3 == v2)
      {
        goto LABEL_44;
      }

      v4 = (v28 + 40 * v3);
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[3];
      v29 = v4[2];
      v8 = v4[4];
      v9 = (v27 + 40 * v3);
      v11 = v9[2];
      v10 = v9[3];
      v12 = v9[4];
      v13 = v5 == *v9 && v6 == v9[1];
      if (!v13 && (sub_21A2F8394() & 1) == 0)
      {
        return 0;
      }

      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      if ((sub_21A19AA2C(v29, v11) & 1) == 0)
      {
        break;
      }

      result = sub_21A19B4E0(v7, v10);
      if ((result & 1) == 0)
      {
        break;
      }

      v14 = *(v8 + 16);
      if (v14 != *(v12 + 16))
      {
        break;
      }

      if (v14)
      {
        v15 = v8 == v12;
      }

      else
      {
        v15 = 1;
      }

      if (!v15)
      {
        v16 = 0;
        while (v14)
        {
          v17 = *(v8 + v16 + 40);
          v18 = *(v8 + v16 + 48);
          v19 = *(v8 + v16 + 56);
          v20 = v12;
          v21 = v12 + v16;
          v22 = *(v12 + v16 + 40);
          v23 = *(v12 + v16 + 48);
          v24 = *(v21 + 56);
          if (v17)
          {
            if (!v22)
            {
              goto LABEL_37;
            }

            result = *(v8 + v16 + 32);
            if (result != *(v21 + 32) || v17 != v22)
            {
              result = sub_21A2F8394();
              if ((result & 1) == 0)
              {
                goto LABEL_37;
              }
            }
          }

          else
          {
            if (v22)
            {

              goto LABEL_38;
            }
          }

          if (v18 != v23)
          {
            goto LABEL_37;
          }

          v12 = v20;
          if (v19 != v24)
          {
            goto LABEL_37;
          }

          v16 += 32;
          if (!--v14)
          {
            goto LABEL_19;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
        return result;
      }

LABEL_19:
      ++v3;

      result = 1;
      v2 = v26;
      if (v3 == v26)
      {
        return result;
      }
    }

LABEL_37:

LABEL_38:
  }

  return 0;
}

uint64_t sub_21A19E838(uint64_t a1, uint64_t a2)
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

  v3 = (a2 + 80);
  for (i = a1 + 40; ; i += 56)
  {
    result = 0;
    if (*(i - 8) != *(v3 - 6) || *i != *(v3 - 5) || *(i + 8) != *(v3 - 4))
    {
      break;
    }

    v6 = *(i + 16);
    result = *(i + 40);
    v7 = *(v3 - 3);
    v8 = *v3;
    if (*(i + 40))
    {
      if (result == 1)
      {
        if (v8 != 1)
        {
          return 0;
        }
      }

      else if (v8 != 2)
      {
        return 0;
      }

      result = 0;
      if (v6 != v7 || *(i + 24) != *(v3 - 2) || *(i + 32) != *(v3 - 1))
      {
        return result;
      }
    }

    else if (*v3 || v7 != v6)
    {
      return result;
    }

    v3 += 56;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_21A19E928(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountdownTimer();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v237 = (&v197 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_21A176C98(&qword_27CCFF3A8);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v197 - v10;
  v245 = sub_21A176C98(&qword_27CCFF3B0);
  MEMORY[0x28223BE20](v245, v12);
  v14 = &v197 - v13;
  v244 = type metadata accessor for InTextCountdownTimer();
  v249 = *(v244 - 8);
  v16 = MEMORY[0x28223BE20](v244, v15);
  v238 = (&v197 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16, v18);
  v252 = (&v197 - v19);
  v235 = sub_21A176C98(&qword_27CCFF388);
  v21 = MEMORY[0x28223BE20](v235, v20);
  v230 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v234 = &v197 - v24;
  v243 = sub_21A2F5294();
  v25 = *(v243 - 8);
  v27 = MEMORY[0x28223BE20](v243, v26);
  v227 = &v197 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v231 = &v197 - v30;
  v242 = sub_21A176C98(&qword_27CCFF390);
  v32 = MEMORY[0x28223BE20](v242, v31);
  v236 = &v197 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v239 = &v197 - v35;
  v250 = type metadata accessor for Duration();
  v36 = *(v250 - 8);
  v38 = MEMORY[0x28223BE20](v250, v37);
  v229 = &v197 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v228 = &v197 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v233 = &v197 - v45;
  v47 = MEMORY[0x28223BE20](v44, v46);
  v232 = &v197 - v48;
  MEMORY[0x28223BE20](v47, v49);
  v246 = &v197 - v50;
  v51 = sub_21A176C98(&qword_27CCFF3D0);
  MEMORY[0x28223BE20](v51 - 8, v52);
  v247 = &v197 - v53;
  v248 = sub_21A176C98(&qword_27CCFF3D8);
  MEMORY[0x28223BE20](v248, v54);
  v251 = &v197 - v55;
  v56 = type metadata accessor for Step();
  v58 = MEMORY[0x28223BE20](v56, v57);
  v60 = &v197 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v58, v61);
  v65 = &v197 - v64;
  v66 = *(a1 + 16);
  if (v66 != *(a2 + 16))
  {
    return 0;
  }

  if (!v66 || a1 == a2)
  {
    return 1;
  }

  v218 = v14;
  v217 = v4;
  v219 = v62;
  v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v68 = a1 + v67;
  v69 = 0;
  v212 = a2 + v67;
  v70 = (v36 + 48);
  v207 = (v25 + 32);
  v208 = (v25 + 8);
  v209 = (v5 + 48);
  v71 = *(v63 + 72);
  v224 = v60;
  v226 = &v197 - v64;
  v221 = v70;
  v220 = v11;
  v216 = v66;
  v206 = v68;
  v205 = v71;
  while (1)
  {
    v72 = v71 * v69;
    result = sub_21A1A396C(v68 + v71 * v69, v65, type metadata accessor for Step);
    if (v69 == v216)
    {
      goto LABEL_162;
    }

    v213 = v69;
    sub_21A1A396C(v212 + v72, v60, type metadata accessor for Step);
    v74 = *(v248 + 48);
    v75 = v251;
    sub_21A183960(v65, v251, &qword_27CCFF3D0);
    sub_21A183960(v60, v75 + v74, &qword_27CCFF3D0);
    v76 = *v70;
    v77 = v250;
    if ((*v70)(v75, 1, v250) != 1)
    {
      v79 = v247;
      sub_21A183960(v75, v247, &qword_27CCFF3D0);
      v80 = v76(v75 + v74, 1, v77);
      v81 = v75;
      v82 = v243;
      if (v80 == 1)
      {
        sub_21A1A39D4(v79, type metadata accessor for Duration);
        v75 = v81;
        v60 = v224;
LABEL_136:
        v194 = &qword_27CCFF3D8;
LABEL_148:
        sub_21A1427A8(v75, v194);
        goto LABEL_158;
      }

      v83 = v246;
      sub_21A1A3904(v81 + v74, v246, type metadata accessor for Duration);
      v84 = *(v242 + 48);
      v85 = v79;
      v86 = v239;
      sub_21A1A396C(v85, v239, type metadata accessor for Duration);
      sub_21A1A396C(v83, v86 + v84, type metadata accessor for Duration);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v87 = v233;
        sub_21A1A396C(v86, v233, type metadata accessor for Duration);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v89 = v86;
        v90 = v234;
        if (EnumCaseMultiPayload == 1)
        {
          sub_21A1A361C(v89 + v84, v234);
          sub_21A148524(&qword_27CCFF398, MEMORY[0x277D6CBB8]);
          v91 = sub_21A2F7874();
          v60 = v224;
          if (v91)
          {
            v92 = sub_21A2F7874();
            sub_21A1427A8(v90, &qword_27CCFF388);
            sub_21A1427A8(v87, &qword_27CCFF388);
            v75 = v251;
            if ((v92 & 1) == 0)
            {
              goto LABEL_146;
            }

            sub_21A1A39D4(v239, type metadata accessor for Duration);
            v93 = v247;
LABEL_17:
            sub_21A1A39D4(v246, type metadata accessor for Duration);
            sub_21A1A39D4(v93, type metadata accessor for Duration);
            v70 = v221;
            goto LABEL_18;
          }

          sub_21A1427A8(v90, &qword_27CCFF388);
          sub_21A1427A8(v87, &qword_27CCFF388);
          v75 = v251;
LABEL_146:
          sub_21A1A39D4(v239, type metadata accessor for Duration);
          v93 = v247;
          goto LABEL_147;
        }

        sub_21A1427A8(v87, &qword_27CCFF388);
        v86 = v89;
      }

      else
      {
        v94 = v232;
        sub_21A1A396C(v86, v232, type metadata accessor for Duration);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v95 = v231;
          (*v207)(v231, v86 + v84, v82);
          LODWORD(v253) = MEMORY[0x21CED3CF0](v94, v95);
          v96 = *v208;
          (*v208)(v95, v82);
          v96(v94, v82);
          sub_21A1A39D4(v86, type metadata accessor for Duration);
          v93 = v247;
          v75 = v251;
          v60 = v224;
          if ((v253 & 1) == 0)
          {
            goto LABEL_147;
          }

          goto LABEL_17;
        }

        (*v208)(v94, v82);
      }

      v60 = v224;
      sub_21A1427A8(v86, &qword_27CCFF390);
      v93 = v247;
      v75 = v251;
LABEL_147:
      sub_21A1A39D4(v246, type metadata accessor for Duration);
      sub_21A1A39D4(v93, type metadata accessor for Duration);
      v194 = &qword_27CCFF3D0;
      goto LABEL_148;
    }

    v78 = v76(v75 + v74, 1, v77);
    v60 = v224;
    if (v78 != 1)
    {
      goto LABEL_136;
    }

LABEL_18:
    result = sub_21A1427A8(v75, &qword_27CCFF3D0);
    v97 = *(v219 + 20);
    v98 = *&v65[v97];
    v99 = *&v60[v97];
    v223 = v98;
    v100 = *(v98 + 16);
    v225 = v99;
    v101 = *(v99 + 16);
    v222 = v100;
    if (v100 != v101)
    {
      goto LABEL_158;
    }

    v102 = v223;
    v103 = !v222 || v223 == v225;
    v104 = v226;
    if (!v103)
    {
      break;
    }

LABEL_24:
    v105 = *(v219 + 24);
    v106 = *(v104 + v105);
    v107 = *&v60[v105];
    v108 = *(v106 + 16);
    if (v108 != *(v107 + 16))
    {
      goto LABEL_158;
    }

    v109 = v213;
    if (v108 && v106 != v107)
    {
      v110 = 0;
      v111 = v106 + 32;
      v112 = v107 + 32;
      v200 = *&v60[v105];
      v199 = v108;
      v201 = v106;
      v198 = v106 + 32;
      v197 = v107 + 32;
      while (v110 < *(v106 + 16))
      {
        if (v110 >= *(v107 + 16))
        {
          goto LABEL_166;
        }

        v113 = (v111 + 40 * v110);
        v114 = *v113;
        v115 = v113[1];
        v116 = v113[3];
        v253 = v113[2];
        v117 = v113[4];
        v202 = v110;
        v118 = (v112 + 40 * v110);
        v119 = *v118;
        v120 = v118[1];
        v121 = v118[3];
        v241 = v118[2];
        v122 = v118[4];
        v123 = v114 == v119 && v115 == v120;
        if (!v123 && (sub_21A2F8394() & 1) == 0)
        {
          goto LABEL_158;
        }

        v124 = *(v253 + 16);
        if (v124 != *(v241 + 16))
        {
          goto LABEL_158;
        }

        v214 = v116;
        v225 = v117;
        v211 = v120;
        v210 = v121;
        v204 = v122;
        v203 = v115;
        if (v124)
        {
          v125 = *(v249 + 80);
          sub_21A2F5434();
          v126 = v253;
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
          v127 = v241;
          sub_21A2F5434();
          sub_21A2F5434();
          result = sub_21A2F5434();
          v103 = v126 == v127;
          v128 = v252;
          v129 = v238;
          if (!v103)
          {
            v130 = 0;
            v131 = (v125 + 32) & ~v125;
            v223 = v253 + v131;
            v222 = v241 + v131;
            v215 = v124;
            while (1)
            {
              if (v130 >= *(v253 + 16))
              {
                goto LABEL_163;
              }

              v132 = *(v249 + 72) * v130;
              result = sub_21A1A396C(v223 + v132, v128, type metadata accessor for InTextCountdownTimer);
              if (v130 >= *(v241 + 16))
              {
                goto LABEL_164;
              }

              sub_21A1A396C(v222 + v132, v129, type metadata accessor for InTextCountdownTimer);
              if (*v128 != *v129 || v128[1] != v129[1])
              {
                break;
              }

              v240 = v130;
              v133 = *(v244 + 20);
              v134 = *(v245 + 48);
              v135 = v218;
              sub_21A183960(v128 + v133, v218, &qword_27CCFF3A8);
              sub_21A183960(v129 + v133, v135 + v134, &qword_27CCFF3A8);
              v136 = *v209;
              v137 = v217;
              if ((*v209)(v135, 1, v217) == 1)
              {
                sub_21A1A39D4(v129, type metadata accessor for InTextCountdownTimer);
                sub_21A1A39D4(v128, type metadata accessor for InTextCountdownTimer);
                if (v136(v135 + v134, 1, v137) != 1)
                {
                  goto LABEL_138;
                }
              }

              else
              {
                v138 = v220;
                sub_21A183960(v135, v220, &qword_27CCFF3A8);
                if (v136(v135 + v134, 1, v137) == 1)
                {
                  sub_21A1A39D4(v238, type metadata accessor for InTextCountdownTimer);
                  sub_21A1A39D4(v252, type metadata accessor for InTextCountdownTimer);
                  sub_21A1A39D4(v138, type metadata accessor for CountdownTimer);
LABEL_138:
                  v195 = &qword_27CCFF3B0;
                  v196 = v135;
                  goto LABEL_155;
                }

                v139 = v135 + v134;
                v140 = v237;
                sub_21A1A3904(v139, v237, type metadata accessor for CountdownTimer);
                v141 = v138[1];
                v142 = v140[1];
                v129 = v238;
                if (v141)
                {
                  if (!v142 || (*v220 != *v140 || v141 != v142) && (sub_21A2F8394() & 1) == 0)
                  {
                    goto LABEL_154;
                  }
                }

                else if (v142)
                {
                  goto LABEL_154;
                }

                v143 = *(v217 + 20);
                v144 = *(v242 + 48);
                v145 = v236;
                sub_21A1A396C(v220 + v143, v236, type metadata accessor for Duration);
                sub_21A1A396C(v140 + v143, v145 + v144, type metadata accessor for Duration);
                if (swift_getEnumCaseMultiPayload() == 1)
                {
                  v146 = v229;
                  sub_21A1A396C(v145, v229, type metadata accessor for Duration);
                  v147 = swift_getEnumCaseMultiPayload();
                  v148 = v230;
                  if (v147 != 1)
                  {
                    sub_21A1427A8(v146, &qword_27CCFF388);
                    goto LABEL_151;
                  }

                  sub_21A1A361C(v145 + v144, v230);
                  sub_21A148524(&qword_27CCFF398, MEMORY[0x277D6CBB8]);
                  if ((sub_21A2F7874() & 1) == 0)
                  {
                    sub_21A1427A8(v148, &qword_27CCFF388);
                    sub_21A1427A8(v146, &qword_27CCFF388);
LABEL_153:
                    sub_21A1A39D4(v145, type metadata accessor for Duration);
                    goto LABEL_154;
                  }

                  v149 = sub_21A2F7874();
                  sub_21A1427A8(v148, &qword_27CCFF388);
                  sub_21A1427A8(v146, &qword_27CCFF388);
                  if ((v149 & 1) == 0)
                  {
                    goto LABEL_153;
                  }
                }

                else
                {
                  v150 = v228;
                  sub_21A1A396C(v145, v228, type metadata accessor for Duration);
                  if (swift_getEnumCaseMultiPayload() == 1)
                  {
                    (*v208)(v150, v243);
LABEL_151:
                    sub_21A1427A8(v145, &qword_27CCFF390);
LABEL_154:
                    sub_21A1A39D4(v140, type metadata accessor for CountdownTimer);
                    sub_21A1A39D4(v129, type metadata accessor for InTextCountdownTimer);
                    sub_21A1A39D4(v252, type metadata accessor for InTextCountdownTimer);
                    sub_21A1A39D4(v220, type metadata accessor for CountdownTimer);
                    v195 = &qword_27CCFF3A8;
                    v196 = v218;
LABEL_155:
                    sub_21A1427A8(v196, v195);
LABEL_156:

LABEL_157:

                    v60 = v224;
                    goto LABEL_158;
                  }

                  v151 = v227;
                  v152 = v243;
                  (*v207)(v227, v145 + v144, v243);
                  v153 = MEMORY[0x21CED3CF0](v150, v151);
                  v154 = *v208;
                  (*v208)(v151, v152);
                  v154(v150, v152);
                  if ((v153 & 1) == 0)
                  {
                    goto LABEL_153;
                  }
                }

                sub_21A1A39D4(v145, type metadata accessor for Duration);
                sub_21A1A39D4(v140, type metadata accessor for CountdownTimer);
                sub_21A1A39D4(v129, type metadata accessor for InTextCountdownTimer);
                sub_21A1A39D4(v252, type metadata accessor for InTextCountdownTimer);
                sub_21A1A39D4(v220, type metadata accessor for CountdownTimer);
                v135 = v218;
              }

              v130 = v240 + 1;
              result = sub_21A1427A8(v135, &qword_27CCFF3A8);
              v128 = v252;
              if (v215 == v130)
              {
                goto LABEL_63;
              }
            }

            sub_21A1A39D4(v129, type metadata accessor for InTextCountdownTimer);
            sub_21A1A39D4(v128, type metadata accessor for InTextCountdownTimer);
            goto LABEL_156;
          }
        }

        else
        {
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
          sub_21A2F5434();
        }

LABEL_63:
        v155 = sub_21A19B4E0(v214, v210);
        v60 = v224;
        if ((v155 & 1) == 0)
        {
          goto LABEL_139;
        }

        v156 = v225;
        v157 = *(v225 + 16);
        v158 = v204;
        if (v157 != *(v204 + 16))
        {
          goto LABEL_139;
        }

        if (v157 && v225 != v204)
        {
          v159 = 0;
          do
          {
            v160 = *(v156 + v159 + 40);
            v161 = *(v156 + v159 + 48);
            v162 = *(v156 + v159 + 56);
            v163 = *(v158 + v159 + 40);
            v164 = *(v158 + v159 + 48);
            v165 = *(v158 + v159 + 56);
            if (v160)
            {
              if (!v163)
              {
                goto LABEL_156;
              }

              v166 = *(v156 + v159 + 32) == *(v158 + v159 + 32) && v160 == v163;
              if (!v166 && (sub_21A2F8394() & 1) == 0)
              {
                goto LABEL_156;
              }
            }

            else
            {
              if (v163)
              {

                goto LABEL_157;
              }
            }

            if (v161 != v164)
            {
              goto LABEL_156;
            }

            v60 = v224;
            if (v162 != v165)
            {
              goto LABEL_139;
            }

            v159 += 32;
            --v157;
            v156 = v225;
          }

          while (v157);
        }

        v110 = v202 + 1;

        v109 = v213;
        v70 = v221;
        v106 = v201;
        v107 = v200;
        v111 = v198;
        v112 = v197;
        if (v110 == v199)
        {
          goto LABEL_82;
        }
      }

      goto LABEL_165;
    }

LABEL_82:
    v69 = v109 + 1;
    sub_21A1A39D4(v60, type metadata accessor for Step);
    v65 = v226;
    sub_21A1A39D4(v226, type metadata accessor for Step);
    result = 1;
    v68 = v206;
    v71 = v205;
    if (v69 == v216)
    {
      return result;
    }
  }

  v167 = 0;
  v211 = v223 + 32;
  v210 = v225 + 32;
  while (1)
  {
    if (v167 >= *(v102 + 16))
    {
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      return result;
    }

    if (v167 >= *(v225 + 16))
    {
      goto LABEL_161;
    }

    v168 = (v211 + 48 * v167);
    v169 = *v168;
    v170 = v168[1];
    v171 = v168[2];
    v253 = v168[3];
    v172 = v168[4];
    v173 = v168[5];
    v174 = (v210 + 48 * v167);
    v175 = *v174;
    v176 = v174[1];
    v177 = v174[2];
    v178 = v174[3];
    v180 = v174[4];
    v179 = v174[5];
    v240 = v170;
    v241 = v179;
    v181 = v169 == v175 && v170 == v176;
    if (!v181 && (sub_21A2F8394() & 1) == 0)
    {
      goto LABEL_158;
    }

    v182 = v171 == v177 && v253 == v178;
    if (!v182 && (sub_21A2F8394() & 1) == 0)
    {
      goto LABEL_158;
    }

    if (v172)
    {
      if (!v180)
      {
        goto LABEL_158;
      }

      v183 = v241;
      sub_21A2F5434();
      swift_bridgeObjectRetain_n();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      sub_21A2F5434();
      v184 = sub_21A19B4E0(v172, v180);

      if ((v184 & 1) == 0)
      {
        goto LABEL_139;
      }

      if (!v173)
      {
        break;
      }

      goto LABEL_103;
    }

    if (v180)
    {
      goto LABEL_158;
    }

    v183 = v241;
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    sub_21A2F5434();
    if (!v173)
    {
      break;
    }

LABEL_103:
    if (!v183)
    {
      goto LABEL_139;
    }

    v185 = *(v173 + 16);
    if (v185 != *(v183 + 16))
    {
      goto LABEL_139;
    }

    if (!v185 || v173 == v183)
    {

      goto LABEL_85;
    }

    sub_21A2F5434();
    v186 = 0;
    v215 = v172;
    v214 = v180;
    do
    {
      v187 = *(v173 + v186 + 40);
      v188 = *(v173 + v186 + 48);
      v189 = *(v173 + v186 + 56);
      v190 = *(v241 + v186 + 40);
      v191 = *(v241 + v186 + 48);
      v192 = *(v241 + v186 + 56);
      if (v187)
      {
        if (!v190 || (*(v173 + v186 + 32) == *(v241 + v186 + 32) ? (v193 = v187 == v190) : (v193 = 0), !v193 && (sub_21A2F8394() & 1) == 0))
        {
LABEL_127:

          swift_bridgeObjectRelease_n();
LABEL_128:

          goto LABEL_157;
        }
      }

      else
      {
        if (v190)
        {

          swift_bridgeObjectRelease_n();

          goto LABEL_128;
        }
      }

      if (v188 != v191 || v189 != v192)
      {
        goto LABEL_127;
      }

      v186 += 32;
      --v185;
      v70 = v221;
    }

    while (v185);

    swift_bridgeObjectRelease_n();
    v60 = v224;
LABEL_85:
    v104 = v226;
LABEL_86:
    ++v167;

    v102 = v223;
    if (v167 == v222)
    {
      goto LABEL_24;
    }
  }

  v104 = v226;
  if (!v183)
  {

    swift_bridgeObjectRelease_n();

    goto LABEL_86;
  }

LABEL_139:

LABEL_158:
  sub_21A1A39D4(v60, type metadata accessor for Step);
  sub_21A1A39D4(v226, type metadata accessor for Step);
  return 0;
}

uint64_t sub_21A1A0708(uint64_t a1, uint64_t a2)
{
  v56 = sub_21A2F4404();
  v4 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v5);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v52 = &v43 - v10;
  v51 = sub_21A176C98(&qword_27CCFF3E8);
  MEMORY[0x28223BE20](v51, v11);
  v49 = &v43 - v12;
  v50 = type metadata accessor for IngredientsViewModel.Ingredient(0);
  v14 = MEMORY[0x28223BE20](v50, v13);
  v16 = (&v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v20 = (&v43 - v19);
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = *(a1 + 16);
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v43 = (v4 + 32);
  v44 = v7;
  v45 = (v4 + 8);
  v47 = *(v18 + 72);
  v48 = (v4 + 48);
  v26 = &qword_27CCFF3E0;
  v27 = v52;
  v28 = v22;
  v29 = v49;
  while (1)
  {
    result = sub_21A1A396C(v24, v20, type metadata accessor for IngredientsViewModel.Ingredient);
    if (!v28)
    {
      break;
    }

    sub_21A1A396C(v25, v16, type metadata accessor for IngredientsViewModel.Ingredient);
    v31 = *v20 == *v16 && v20[1] == v16[1];
    if (!v31 && (sub_21A2F8394() & 1) == 0)
    {
      goto LABEL_31;
    }

    v32 = v20[3];
    v33 = v16[3];
    if (v32)
    {
      if (!v33 || (v20[2] != v16[2] || v32 != v33) && (sub_21A2F8394() & 1) == 0)
      {
        goto LABEL_31;
      }
    }

    else if (v33)
    {
      goto LABEL_31;
    }

    if ((v20[4] != v16[4] || v20[5] != v16[5]) && (sub_21A2F8394() & 1) == 0)
    {
      goto LABEL_31;
    }

    v53 = v28;
    v54 = v25;
    v55 = v24;
    v34 = *(v50 + 28);
    v35 = *(v51 + 48);
    sub_21A183960(v20 + v34, v29, v26);
    sub_21A183960(v16 + v34, v29 + v35, v26);
    v36 = v26;
    v37 = *v48;
    if ((*v48)(v29, 1, v56) == 1)
    {
      if (v37(v29 + v35, 1, v56) != 1)
      {
        goto LABEL_30;
      }

      sub_21A1427A8(v29, v26);
      sub_21A1A39D4(v16, type metadata accessor for IngredientsViewModel.Ingredient);
      sub_21A1A39D4(v20, type metadata accessor for IngredientsViewModel.Ingredient);
    }

    else
    {
      sub_21A183960(v29, v27, v26);
      if (v37(v29 + v35, 1, v56) == 1)
      {
        (*v45)(v27, v56);
LABEL_30:
        sub_21A1427A8(v29, &qword_27CCFF3E8);
LABEL_31:
        sub_21A1A39D4(v16, type metadata accessor for IngredientsViewModel.Ingredient);
        sub_21A1A39D4(v20, type metadata accessor for IngredientsViewModel.Ingredient);
        return 0;
      }

      v38 = v44;
      v39 = v56;
      (*v43)(v44, v29 + v35, v56);
      sub_21A148524(&qword_27CCFF3F0, MEMORY[0x277CB9F28]);
      v46 = sub_21A2F7874();
      v40 = *v45;
      v41 = v38;
      v42 = v52;
      (*v45)(v41, v39);
      v27 = v42;
      v40(v42, v39);
      sub_21A1427A8(v29, v36);
      sub_21A1A39D4(v16, type metadata accessor for IngredientsViewModel.Ingredient);
      sub_21A1A39D4(v20, type metadata accessor for IngredientsViewModel.Ingredient);
      v26 = v36;
      if ((v46 & 1) == 0)
      {
        return 0;
      }
    }

    v25 = v54 + v47;
    v24 = v55 + v47;
    v28 = v53 - 1;
    if (v53 == 1)
    {
      return 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1A0CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A2F4404();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFF3E0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v59 = &v50 - v11;
  v58 = sub_21A176C98(&qword_27CCFF3E8);
  MEMORY[0x28223BE20](v58, v12);
  v14 = &v50 - v13;
  v57 = type metadata accessor for InstructionsViewModel.Instruction(0);
  v16 = MEMORY[0x28223BE20](v57, v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v19);
  v22 = &v50 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
    return 0;
  }

  if (!v23 || a1 == a2)
  {
    return 1;
  }

  v51 = v8;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = a1 + v25;
  v27 = a2 + v25;
  v55 = a1 + v25;
  v56 = (v5 + 48);
  v50 = (v5 + 32);
  v28 = *(v20 + 72);
  v54 = v27;
  v52 = (v5 + 8);
  v53 = v28;
  while (1)
  {
    result = sub_21A1A396C(v26 + v28 * v24, v22, type metadata accessor for InstructionsViewModel.Instruction);
    if (v24 == v23)
    {
      break;
    }

    sub_21A1A396C(v27 + v28 * v24, v18, type metadata accessor for InstructionsViewModel.Instruction);
    result = *v22;
    if (*v22 != *v18 || *(v22 + 1) != *(v18 + 1))
    {
      result = sub_21A2F8394();
      if ((result & 1) == 0)
      {
        goto LABEL_55;
      }
    }

    v31 = *(v22 + 2);
    v32 = *(v18 + 2);
    v33 = *(v31 + 16);
    if (v33 != *(v32 + 16))
    {
      goto LABEL_55;
    }

    if (v33)
    {
      v34 = v31 == v32;
    }

    else
    {
      v34 = 1;
    }

    if (!v34)
    {
      v38 = (v32 + 80);
      v39 = v31 + 40;
      while (v33)
      {
        if (*(v39 - 8) != *(v38 - 6) || *v39 != *(v38 - 5) || *(v39 + 8) != *(v38 - 4))
        {
          goto LABEL_55;
        }

        v40 = *(v39 + 16);
        result = *(v39 + 40);
        v41 = *(v38 - 3);
        v42 = *v38;
        if (*(v39 + 40))
        {
          if (result == 1)
          {
            if (v42 != 1)
            {
              goto LABEL_55;
            }
          }

          else if (v42 != 2)
          {
            goto LABEL_55;
          }

          if (v40 != v41 || *(v39 + 24) != *(v38 - 2) || *(v39 + 32) != *(v38 - 1))
          {
            goto LABEL_55;
          }
        }

        else if (*v38 || v41 != v40)
        {
          goto LABEL_55;
        }

        v38 += 56;
        v39 += 56;
        if (!--v33)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    v35 = *(v22 + 3);
    v36 = *(v18 + 3);
    v37 = v18[48];
    if (v22[48])
    {
      if (v22[48] == 1)
      {
        if (v37 != 1)
        {
          goto LABEL_55;
        }
      }

      else if (v37 != 2)
      {
        goto LABEL_55;
      }

      if (v35 != v36 || *(v22 + 4) != *(v18 + 4) || *(v22 + 5) != *(v18 + 5))
      {
        goto LABEL_55;
      }
    }

    else if (v18[48] || v36 != v35)
    {
      goto LABEL_55;
    }

    v43 = *(v57 + 28);
    v44 = *(v58 + 48);
    sub_21A183960(&v22[v43], v14, &qword_27CCFF3E0);
    sub_21A183960(&v18[v43], &v14[v44], &qword_27CCFF3E0);
    v45 = *v56;
    if ((*v56)(v14, 1, v4) == 1)
    {
      if (v45(&v14[v44], 1, v4) != 1)
      {
        goto LABEL_54;
      }

      sub_21A1427A8(v14, &qword_27CCFF3E0);
      sub_21A1A39D4(v18, type metadata accessor for InstructionsViewModel.Instruction);
      sub_21A1A39D4(v22, type metadata accessor for InstructionsViewModel.Instruction);
    }

    else
    {
      v46 = v59;
      sub_21A183960(v14, v59, &qword_27CCFF3E0);
      if (v45(&v14[v44], 1, v4) == 1)
      {
        (*v52)(v46, v4);
LABEL_54:
        sub_21A1427A8(v14, &qword_27CCFF3E8);
LABEL_55:
        sub_21A1A39D4(v18, type metadata accessor for InstructionsViewModel.Instruction);
        sub_21A1A39D4(v22, type metadata accessor for InstructionsViewModel.Instruction);
        return 0;
      }

      v47 = v51;
      (*v50)(v51, &v14[v44], v4);
      sub_21A148524(&qword_27CCFF3F0, MEMORY[0x277CB9F28]);
      v48 = sub_21A2F7874();
      v49 = *v52;
      (*v52)(v47, v4);
      v49(v59, v4);
      sub_21A1427A8(v14, &qword_27CCFF3E0);
      sub_21A1A39D4(v18, type metadata accessor for InstructionsViewModel.Instruction);
      sub_21A1A39D4(v22, type metadata accessor for InstructionsViewModel.Instruction);
      if ((v48 & 1) == 0)
      {
        return 0;
      }
    }

    ++v24;
    result = 1;
    v27 = v54;
    v26 = v55;
    v28 = v53;
    if (v24 == v23)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_21A1A1344(uint64_t result, uint64_t a2)
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

uint64_t sub_21A1A13A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v51 = v2;
  v52 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v9 = v5[1];
    v36 = v5[2];
    v37 = v8;
    v10 = v5[1];
    v34 = *v5;
    v35 = v10;
    v11 = v6[3];
    v12 = v6[1];
    v41 = v6[2];
    v42 = v11;
    v13 = v6[1];
    v39 = *v6;
    v40 = v13;
    v14 = v5[3];
    v44[2] = v36;
    v44[3] = v14;
    v44[0] = v34;
    v44[1] = v9;
    v46 = v39;
    v49 = v6[3];
    v48 = v41;
    v38 = *(v5 + 64);
    v43 = *(v6 + 64);
    v45 = *(v5 + 64);
    v50 = *(v6 + 64);
    v47 = v12;
    v15 = v38;
    v16 = v38 >> 6;
    if (!v16)
    {
      if (v43 >= 0x40u)
      {
        goto LABEL_34;
      }

      if (v34 == v39)
      {
        goto LABEL_14;
      }

LABEL_20:
      v24 = sub_21A2F8394();
      sub_21A1A368C(&v39, v33);
      sub_21A1A368C(&v34, v33);
      sub_21A1427A8(v44, &qword_27CCFF3A0);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_29;
    }

    v17 = v35;
    if (v16 == 1)
    {
      if ((v43 & 0xC0) != 0x40)
      {
        goto LABEL_34;
      }

      v18 = v40;
      if (v34 != v39 && (sub_21A2F8394() & 1) == 0)
      {
        goto LABEL_34;
      }

      if (v17 == v18)
      {
LABEL_14:
        sub_21A1A368C(&v39, v33);
        sub_21A1A368C(&v34, v33);
        sub_21A1427A8(v44, &qword_27CCFF3A0);
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    v32 = i;
    v19 = v43;
    if ((v43 & 0xC0) != 0x80 || (v30 = *(&v36 + 1), v31 = v36, v20 = v40, v21 = v41, v28 = v37, v29 = *(&v41 + 1), v27 = *(&v37 + 1), v22 = v42, v34 != v39) && (sub_21A2F8394() & 1) == 0)
    {
LABEL_34:
      sub_21A1A368C(&v39, v33);
      sub_21A1A368C(&v34, v33);
      sub_21A1427A8(v44, &qword_27CCFF3A0);
      return 0;
    }

    if (v17 == v20)
    {
      v23 = 0;
    }

    else
    {
      v23 = 0;
      if ((sub_21A2F8394() & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (v31 == v21 && v30 == v29 && v28 == v22)
    {
      v23 = v27 == *(&v22 + 1);
    }

LABEL_27:
    sub_21A1A368C(&v39, v33);
    sub_21A1A368C(&v34, v33);
    sub_21A1A368C(&v39, v33);
    sub_21A1A368C(&v34, v33);
    sub_21A1427A8(v44, &qword_27CCFF3A0);
    sub_21A1A36E8(&v39);
    sub_21A1A36E8(&v34);
    if (!v23)
    {
      return 0;
    }

    v25 = v19 ^ v15;
    i = v32;
    if ((v25 & 0x3F) != 0)
    {
      return 0;
    }

LABEL_29:
    if (!i)
    {
      break;
    }

    v6 = (v6 + 72);
    v5 = (v5 + 72);
  }

  return 1;
}

uint64_t sub_21A1A172C(uint64_t a1, uint64_t a2)
{
  v59 = sub_21A176C98(&qword_27CCFF388);
  MEMORY[0x28223BE20](v59, v4);
  v6 = &v51 - v5;
  v7 = sub_21A2F5294();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v60 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Duration();
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v16);
  v61 = &v51 - v17;
  v63 = sub_21A176C98(&qword_27CCFF390);
  MEMORY[0x28223BE20](v63, v18);
  v20 = &v51 - v19;
  v62 = type metadata accessor for CountdownTimer();
  v22 = MEMORY[0x28223BE20](v62, v21);
  v24 = (&v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22, v25);
  v64 = &v51 - v27;
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
    return 0;
  }

  if (!v28 || a1 == a2)
  {
    return 1;
  }

  v29 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v30 = a1 + v29;
  v31 = a2 + v29;
  v51 = (v8 + 32);
  v52 = v20;
  v53 = v6;
  v54 = (v8 + 8);
  v57 = *(v26 + 72);
  v58 = v7;
  v32 = v64;
  v55 = v15;
  while (1)
  {
    sub_21A1A396C(v30, v32, type metadata accessor for CountdownTimer);
    sub_21A1A396C(v31, v24, type metadata accessor for CountdownTimer);
    v33 = v32[1];
    v34 = v24[1];
    if (v33)
    {
      if (!v34 || (*v32 != *v24 || v33 != v34) && (sub_21A2F8394() & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    else if (v34)
    {
      goto LABEL_29;
    }

    v35 = *(v62 + 20);
    v36 = v32;
    v37 = *(v63 + 48);
    sub_21A1A396C(v36 + v35, v20, type metadata accessor for Duration);
    sub_21A1A396C(v24 + v35, &v20[v37], type metadata accessor for Duration);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v42 = v61;
    sub_21A1A396C(v20, v61, type metadata accessor for Duration);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      (*v54)(v42, v58);
      goto LABEL_25;
    }

    v43 = &v20[v37];
    v44 = v60;
    v45 = v24;
    v46 = v11;
    v47 = v58;
    (*v51)(v60, v43, v58);
    v56 = MEMORY[0x21CED3CF0](v42, v44);
    v48 = *v54;
    (*v54)(v44, v47);
    v49 = v47;
    v11 = v46;
    v24 = v45;
    v20 = v52;
    v48(v42, v49);
    sub_21A1A39D4(v20, type metadata accessor for Duration);
    v32 = v64;
    if ((v56 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_6:
    sub_21A1A39D4(v24, type metadata accessor for CountdownTimer);
    sub_21A1A39D4(v32, type metadata accessor for CountdownTimer);
    v31 += v57;
    v30 += v57;
    if (!--v28)
    {
      return 1;
    }
  }

  v38 = v55;
  sub_21A1A396C(v20, v55, type metadata accessor for Duration);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_21A1427A8(v38, &qword_27CCFF388);
LABEL_25:
    sub_21A1427A8(v20, &qword_27CCFF390);
    goto LABEL_28;
  }

  v39 = &v20[v37];
  v40 = v53;
  sub_21A1A361C(v39, v53);
  sub_21A148524(&qword_27CCFF398, MEMORY[0x277D6CBB8]);
  if (sub_21A2F7874())
  {
    v41 = sub_21A2F7874();
    sub_21A1427A8(v40, &qword_27CCFF388);
    sub_21A1427A8(v38, &qword_27CCFF388);
    if ((v41 & 1) == 0)
    {
      goto LABEL_27;
    }

    sub_21A1A39D4(v20, type metadata accessor for Duration);
    v32 = v64;
    goto LABEL_6;
  }

  sub_21A1427A8(v40, &qword_27CCFF388);
  sub_21A1427A8(v38, &qword_27CCFF388);
LABEL_27:
  sub_21A1A39D4(v20, type metadata accessor for Duration);
LABEL_28:
  v32 = v64;
LABEL_29:
  sub_21A1A39D4(v24, type metadata accessor for CountdownTimer);
  sub_21A1A39D4(v32, type metadata accessor for CountdownTimer);
  return 0;
}

uint64_t sub_21A1A1DE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(v3 - 3) == *(i - 3) && *(v3 - 2) == *(i - 2);
      if (!v9 && (sub_21A2F8394() & 1) == 0)
      {
        break;
      }

      v10 = v5 == v7 && v6 == v8;
      if (!v10 && (sub_21A2F8394() & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_21A1A1EF4()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 152);
    v5 = *(v2 + 160);

    return MEMORY[0x2822009F8](sub_21A1A2008, v4, v5);
  }

  return result;
}

uint64_t sub_21A1A2008()
{
  v1 = v0[12];
  v2 = (v0 + 2);
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v4 = *(v1 + 16);
      if (v4)
      {
        v18 = Strong;
        v0[13] = MEMORY[0x277D84F90];
        sub_21A25D6E4(0, v4, 0);
        v5 = v0[13];
        v6 = (v1 + 40);
        do
        {
          v7 = *(v6 - 1);
          v8 = *v6;
          v0[13] = v5;
          v9 = *(v5 + 16);
          v10 = *(v5 + 24);
          sub_21A2F5434();
          if (v9 >= v10 >> 1)
          {
            sub_21A25D6E4((v10 > 1), v9 + 1, 1);
            v5 = v0[13];
          }

          *(v5 + 16) = v9 + 1;
          v11 = v5 + 16 * v9;
          *(v11 + 32) = v7;
          *(v11 + 40) = v8;
          v6 += 2;
          --v4;
        }

        while (v4);

        v12 = v18;
        v2 = (v0 + 2);
      }

      else
      {
        v12 = Strong;

        v5 = MEMORY[0x277D84F90];
      }

      *(v12 + 56) = v5;

      v0[14] = v12;
      type metadata accessor for SavedRecipesSource();
      sub_21A148524(&qword_2811B6D18, type metadata accessor for SavedRecipesSource);
      sub_21A2F75C4();

      v15 = sub_21A2F7C24();
      v0[21] = v15;
      sub_21A143D8C(v2, v0[5]);
      v16 = swift_task_alloc();
      v0[22] = v16;
      *v16 = v0;
      v16[1] = sub_21A1A1EF4;
      v17 = MEMORY[0x277D85700];

      return MEMORY[0x282200310](v0 + 12, v15, v17);
    }
  }

  sub_21A142808((v0 + 2));
  v13 = v0[1];

  return v13();
}

uint64_t sub_21A1A22A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21A2F7C34();
  v5[4] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21A1A233C, v7, v6);
}

uint64_t sub_21A1A233C()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[7] = *v2;
  v0[8] = *(v2 + 8);
  v0[9] = *(v2 + 16);
  v0[10] = *(v2 + 24);
  v3 = *(v2 + 32);
  v4 = v1[5];
  v5 = v1[6];
  sub_21A142764(v1 + 2, v4);
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  if (v3)
  {
    v7 = sub_21A1A2910;
  }

  else
  {
    v7 = sub_21A1A24A8;
  }

  v6[1] = v7;

  return v9(v4, v5);
}

uint64_t sub_21A1A24A8(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_21A1A25D0, v4, v3);
}

uint64_t sub_21A1A25D0()
{
  v1 = v0[12];
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    if (*(v2 - 1) != v0[7] || *v2 != v0[8])
    {
      v2 += 2;
      if ((sub_21A2F8394() & 1) == 0)
      {
        continue;
      }
    }

    v5 = v0[1];

    return v5();
  }

  v7 = v0[3];

  v8 = v7[5];
  v9 = v7[6];
  sub_21A142764(v7 + 2, v8);
  v15 = (*(v9 + 8) + **(v9 + 8));
  v10 = swift_task_alloc();
  v0[13] = v10;
  *v10 = v0;
  v10[1] = sub_21A1A2790;
  v11 = v0[9];
  v12 = v0[10];
  v14 = v0[7];
  v13 = v0[8];

  return v15(v14, v13, v11, v12, v8, v9);
}

uint64_t sub_21A1A2790()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21A1A28B0, v3, v2);
}

uint64_t sub_21A1A28B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21A1A2910(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 112) = a1;

  v3 = *(v2 + 48);
  v4 = *(v2 + 40);

  return MEMORY[0x2822009F8](sub_21A1A2A38, v4, v3);
}

uint64_t sub_21A1A2A38()
{
  v1 = v0[14];
  v2 = (v1 + 40);
  v3 = *(v1 + 16) + 1;
  while (--v3)
  {
    if (*(v2 - 1) != v0[7] || *v2 != v0[8])
    {
      v2 += 2;
      if ((sub_21A2F8394() & 1) == 0)
      {
        continue;
      }
    }

    v5 = v0[3];

    v6 = v5[5];
    v7 = v5[6];
    sub_21A142764(v5 + 2, v6);
    v15 = (*(v7 + 16) + **(v7 + 16));
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_21A1A2BF8;
    v9 = v0[9];
    v10 = v0[10];
    v12 = v0[7];
    v11 = v0[8];

    return v15(v12, v11, v9, v10, v6, v7);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_21A1A2BF8()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21A1A3A50, v3, v2);
}

uint64_t sub_21A1A2D18(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = v6;
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;
      sub_21A2F5434();
      v10 = a1(v12);

      LOBYTE(v4) = (v3 != 0) | v10;
      if ((v3 != 0) | v10 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 2;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_21A1A2DC4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;
      sub_21A2F5434();
      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

Swift::Void __swiftcall SavedRecipesSource.update()()
{
  v1 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v10 - v3;
  v5 = sub_21A2F7C64();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_21A142AEC(v0 + 16, v11);
  sub_21A2F7C34();

  v7 = sub_21A2F7C24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  sub_21A17A410(v11, (v8 + 4));
  v8[9] = v6;

  sub_21A199D08(0, 0, v4, &unk_21A2FC210, v8);
}

uint64_t SavedRecipesSource.deinit()
{
  sub_21A142808(v0 + 16);

  v1 = OBJC_IVAR____TtC10CookingKit18SavedRecipesSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SavedRecipesSource.__deallocating_deinit()
{
  sub_21A142808(v0 + 16);

  v1 = OBJC_IVAR____TtC10CookingKit18SavedRecipesSource___scope;
  v2 = sub_21A2F7614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A1A30F8(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A2F8394() & 1;
  }
}

uint64_t sub_21A1A316C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_21A2F8394() & 1;
  }
}

__n128 sub_21A1A31F0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_21A1A3204(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A1A324C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_21A1A32C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_21A145E2C;

  return sub_21A152F6C(a1, v4);
}

uint64_t sub_21A1A3378(uint64_t *a1, __int128 *a2)
{
  v4 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v17[-v6 - 8];
  v8 = a2[1];
  v18 = *a2;
  v19 = v8;
  v20 = *(a2 + 32);
  v9 = *a1;
  v10 = sub_21A2F7C64();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_21A2F7C34();
  sub_21A1A3524(&v18, v17);

  v11 = sub_21A2F7C24();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  v14 = v19;
  *(v12 + 32) = v18;
  *(v12 + 48) = v14;
  *(v12 + 64) = v20;
  *(v12 + 72) = v9;
  sub_21A199D08(0, 0, v7, &unk_21A2FC4B0, v12);
}

uint64_t sub_21A1A34DC()
{
  swift_unknownObjectRelease();
  sub_21A142808(v0 + 32);

  return swift_deallocObject();
}

uint64_t sub_21A1A355C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[9];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_21A145E2C;

  return sub_21A1A22A4(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_21A1A361C(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF388);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1A3798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21A1A37B8(a4, a5, a6);
  }

  return result;
}

uint64_t sub_21A1A37B8(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_21A1A3820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6 != -1)
  {
    return sub_21A1A3840(a4, a5, a6);
  }

  return result;
}

uint64_t sub_21A1A3840(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return sub_21A2F5434();
  }

  return result;
}

uint64_t sub_21A1A3904(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1A396C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1A39D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21A1A3A9C()
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A1A3C44(319, &qword_27CCFF410, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_21A1A3C44(319, &qword_27CCFF418, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21A1A3BEC();
        if (v3 <= 0x3F)
        {
          sub_21A1A3C44(319, &qword_27CCFF428, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21A1A3BEC()
{
  if (!qword_27CCFF420)
  {
    sub_21A2F5654();
    v0 = sub_21A2F5664();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFF420);
    }
  }
}

void sub_21A1A3C44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_21A1A3CDC()
{
  type metadata accessor for RecipeCardViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_21A1A3C44(319, &qword_27CCFF410, MEMORY[0x277D839F8], MEMORY[0x277CE10B8]);
    if (v1 <= 0x3F)
    {
      sub_21A1A3C44(319, &qword_27CCFF418, MEMORY[0x277D85048], MEMORY[0x277CE10B8]);
      if (v2 <= 0x3F)
      {
        sub_21A1A3C44(319, &qword_27CCFF428, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
        if (v3 <= 0x3F)
        {
          sub_21A1A3BEC();
          if (v4 <= 0x3F)
          {
            sub_21A1A3E34();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_21A1A3E34()
{
  if (!qword_27CCFF440)
  {
    sub_21A176D98(&qword_27CCFF448);
    v0 = sub_21A2F5664();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFF440);
    }
  }
}

uint64_t sub_21A1A3EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30[1] = a1;
  v35 = a2;
  v3 = type metadata accessor for RecipeCardTopBarModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8, v6);
  v7 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_21A176C98(&qword_27CCFF4E0);
  MEMORY[0x28223BE20](v31, v8);
  v36 = v30 - v9;
  v10 = sub_21A176C98(&qword_27CCFF4E8);
  v11 = *(v10 - 8);
  v33 = v10;
  v34 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v32 = v30 - v13;
  v30[0] = v2;
  sub_21A1A64D4(v2, v7, type metadata accessor for RecipeCardTopBarModifier);
  v14 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v15 = swift_allocObject();
  sub_21A1A653C(v7, v15 + v14, type metadata accessor for RecipeCardTopBarModifier);
  sub_21A1A64D4(v2, v7, type metadata accessor for RecipeCardTopBarModifier);
  v16 = swift_allocObject();
  sub_21A1A653C(v7, v16 + v14, type metadata accessor for RecipeCardTopBarModifier);
  sub_21A176C98(&qword_27CCFF4F0);
  sub_21A1772F8(&qword_27CCFF4F8, &qword_27CCFF4F0);
  sub_21A1A638C();
  sub_21A2F6D24();

  v17 = v30[0];
  sub_21A1A64D4(v30[0], v7, type metadata accessor for RecipeCardTopBarModifier);
  v18 = swift_allocObject();
  sub_21A1A653C(v7, v18 + v14, type metadata accessor for RecipeCardTopBarModifier);
  v19 = swift_allocObject();
  *(v19 + 16) = sub_21A1A6888;
  *(v19 + 24) = v18;
  v20 = v31;
  v21 = v36;
  v22 = &v36[*(v31 + 36)];
  *v22 = sub_21A1A693C;
  *(v22 + 1) = v19;
  sub_21A176C98(&qword_27CCFF500);
  sub_21A2F5C04();
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_21A2FC020;
  sub_21A2F5BF4();
  v24 = sub_21A1A6968();
  v25 = v32;
  MEMORY[0x21CED5840](2, v23, v20, v24);

  sub_21A1427A8(v21, &qword_27CCFF4E0);
  v37 = v17;
  sub_21A176C98(&qword_27CCFF510);
  v38 = v20;
  v39 = v24;
  swift_getOpaqueTypeConformance2();
  v26 = sub_21A176D98(&qword_27CCFF518);
  v27 = sub_21A1772F8(&qword_27CCFF520, &qword_27CCFF518);
  v38 = v26;
  v39 = v27;
  swift_getOpaqueTypeConformance2();
  v28 = v33;
  sub_21A2F6E44();
  return (*(v34 + 8))(v25, v28);
}

uint64_t sub_21A1A43FC@<X0>(double *a1@<X8>)
{
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  v2 = v6 + -50.0;
  sub_21A2F7024();
  result = sub_21A2F5974();
  v5 = 0.0;
  if (v4 > v6 + -50.0 && v6 - v2 > 0.0)
  {
    v5 = 1.0;
    if (v4 <= v6)
    {
      v5 = round((v4 - v2) / (v6 - v2) * 100.0) / 100.0;
    }
  }

  *a1 = v5;
  return result;
}

unint64_t sub_21A1A4548(unint64_t result)
{
  if (*(result + 16))
  {
    result = sub_21A25A4C4(1869768040, 0xE400000000000000);
    if (v1)
    {
      sub_21A176C98(&qword_27CCFF4D8);
      return sub_21A2F7034();
    }
  }

  return result;
}

uint64_t sub_21A1A45DC(uint64_t a1)
{
  v2 = sub_21A2F6204();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v4 = sub_21A176C98(&qword_27CCFF518);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-v7];
  sub_21A2F61F4();
  v12 = a1;
  sub_21A176C98(&qword_27CCFF528);
  sub_21A1A6AB4();
  sub_21A2F56B4();
  v9 = sub_21A1772F8(&qword_27CCFF520, &qword_27CCFF518);
  MEMORY[0x21CED4CD0](v8, v4, v9);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A1A4794@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_21A2F5B94();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RecipeCardTopBarModifier(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8, v10);
  v11 = sub_21A176C98(&qword_27CCFF538);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v28 - v13;
  v15 = sub_21A176C98(&qword_27CCFF560);
  v16 = *(v15 - 8);
  v28 = v15;
  v29 = v16;
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v28 - v18;
  sub_21A1A64D4(a1, &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardTopBarModifier);
  v20 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v21 = swift_allocObject();
  sub_21A1A653C(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for RecipeCardTopBarModifier);
  v32 = a1;
  sub_21A176C98(&qword_27CCFF568);
  sub_21A1A6D64();
  sub_21A2F7094();
  v23 = *(a1 + 48);
  v33 = *(a1 + 40);
  v22 = v33;
  v34 = v23;
  sub_21A176C98(&qword_27CCFF4C8);
  sub_21A2F7024();
  *&v14[*(v11 + 36)] = v37;
  sub_21A2F5B84();
  v24 = sub_21A1A6BFC();
  v25 = sub_21A1A6CB4(&qword_27CCFEF28, MEMORY[0x277CDDB18]);
  sub_21A2F6AC4();
  (*(v30 + 8))(v6, v3);
  sub_21A1427A8(v14, &qword_27CCFF538);
  v33 = v22;
  v34 = v23;
  sub_21A2F7024();
  v33 = v11;
  v34 = v3;
  v35 = v24;
  v36 = v25;
  swift_getOpaqueTypeConformance2();
  v26 = v28;
  sub_21A2F6C84();
  return (*(v29 + 8))(v19, v26);
}

uint64_t sub_21A1A4BB8(uint64_t a1)
{
  v2 = sub_21A2F5ED4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1 + *(type metadata accessor for RecipeCardTopBarModifier(0) + 40);
  v8 = *v7;
  v9 = *(v7 + 8);

  if ((v9 & 1) == 0)
  {
    sub_21A2F7DE4();
    v10 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    j__swift_release_0();
    (*(v3 + 8))(v6, v2);
    v8 = v12[1];
  }

  sub_21A28A270(v8);
}

uint64_t sub_21A1A4D28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = type metadata accessor for RecipeTheme();
  v5 = MEMORY[0x28223BE20](v26, v4);
  v7 = (v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5, v8);
  v10 = v25 - v9;
  v29 = sub_21A2F5654();
  v11 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v12);
  v30 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25[1] = a1;
  v14 = *a1;
  swift_getKeyPath();
  v31 = v14;
  sub_21A1A6CB4(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v15 = *(v14 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo + 8);
  v28 = *(v14 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  v31 = v14;
  sub_21A2F5434();
  sub_21A2F5094();

  sub_21A1A64D4(v14 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, v10, type metadata accessor for RecipeTheme);
  sub_21A1A653C(v10, v7, type metadata accessor for RecipeTheme);
  LODWORD(a1) = swift_getEnumCaseMultiPayload();

  if (a1 == 1)
  {
    v16 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v7 + *(v16 + 48), &qword_27CCFEDC0);
    type metadata accessor for RecipeCardTopBarModifier(0);
    v17 = v30;
    sub_21A1AC5F4(v30);
    v18 = v29;
  }

  else
  {

    v19 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A183894(v7 + *(v19 + 64));
    v18 = v29;
    v17 = v30;
    (*(v11 + 104))(v30, *MEMORY[0x277CDF3C0], v29);
  }

  v20 = swift_getKeyPath();
  v21 = (a2 + *(sub_21A176C98(&qword_27CCFF568) + 36));
  v22 = sub_21A176C98(&qword_27CCFF2A0);
  result = (*(v11 + 32))(v21 + *(v22 + 28), v17, v18);
  *v21 = v20;
  v24 = v28;
  *a2 = KeyPath;
  *(a2 + 8) = 0;
  *(a2 + 16) = v24;
  *(a2 + 24) = v15;
  return result;
}

uint64_t sub_21A1A50CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a1;
  v43 = a2;
  v45 = sub_21A176C98(&qword_27CCFF450);
  MEMORY[0x28223BE20](v45, v3);
  v46 = &v38 - v4;
  v5 = type metadata accessor for RecipeCardNavLinksModifier(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v5, v9);
  v10 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_21A176C98(&qword_27CCFF458);
  MEMORY[0x28223BE20](v44, v11);
  v41 = &v38 - v12;
  v13 = sub_21A2F5ED4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = v2 + *(v6 + 52);
  v19 = *v18;
  if (*(v18 + 8) == 1)
  {
    if ((v19 & 1) == 0)
    {
LABEL_3:
      v20 = sub_21A176C98(&qword_27CCFF460);
      (*(*(v20 - 8) + 16))(v46, v42, v20);
      swift_storeEnumTagMultiPayload();
      sub_21A1A6198();
      sub_21A1772F8(&qword_27CCFF480, &qword_27CCFF460);
      return sub_21A2F6114();
    }
  }

  else
  {

    sub_21A2F7DE4();
    v22 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(v19, 0);
    (*(v14 + 8))(v17, v13);
    if (v47 != 1)
    {
      goto LABEL_3;
    }
  }

  v39 = v2;
  sub_21A1A64D4(v2, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardNavLinksModifier);
  v23 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v24 = swift_allocObject();
  sub_21A1A653C(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v24 + v23, type metadata accessor for RecipeCardNavLinksModifier);
  sub_21A1A64D4(v2, &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardNavLinksModifier);
  v25 = swift_allocObject();
  sub_21A1A653C(&v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v25 + v23, type metadata accessor for RecipeCardNavLinksModifier);
  v26 = sub_21A176C98(&qword_27CCFF460);
  v38 = v8;
  v40 = v26;
  sub_21A1772F8(&qword_27CCFF480, &qword_27CCFF460);
  sub_21A1A638C();
  v27 = v41;
  sub_21A2F6D24();

  v28 = v39;
  sub_21A1A64D4(v39, v10, type metadata accessor for RecipeCardNavLinksModifier);
  v29 = swift_allocObject();
  sub_21A1A653C(v10, v29 + v23, type metadata accessor for RecipeCardNavLinksModifier);
  v30 = swift_allocObject();
  *(v30 + 16) = sub_21A1A6438;
  *(v30 + 24) = v29;
  v31 = (v27 + *(sub_21A176C98(&qword_27CCFF478) + 36));
  *v31 = sub_21A1A6F28;
  v31[1] = v30;
  v32 = sub_21A2F6004();
  v33 = v27 + *(v44 + 36);
  sub_21A1A5914(v28, v33);
  v34 = sub_21A2F5754();
  v35 = MEMORY[0x21CED5110]((2 * v34));
  v36 = sub_21A2F5B24();
  v37 = v33 + *(sub_21A176C98(&qword_27CCFF4A8) + 36);
  *v37 = v36;
  *(v37 + 8) = 0;
  *(v37 + 16) = 1;
  *(v37 + 17) = v35;
  *(v37 + 24) = v32;
  sub_21A159ED8(v27, v46);
  swift_storeEnumTagMultiPayload();
  sub_21A1A6198();
  sub_21A2F6114();
  return sub_21A1427A8(v27, &qword_27CCFF458);
}

uint64_t sub_21A1A56DC@<X0>(double *a1@<X8>)
{
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  sub_21A2F7024();
  v2 = v7 - (v7 + -50.0);
  sub_21A2F7024();
  sub_21A2F7024();
  result = sub_21A2F5974();
  v5 = 0.0;
  if (v2 > -v4)
  {
    v6 = v2 - (v7 - v7);
    if (v6 > 0.0)
    {
      v5 = 1.0;
      if (v7 - v7 <= -v4)
      {
        v5 = round((v2 + v4) / v6 * 100.0) / 100.0;
      }
    }
  }

  *a1 = v5;
  return result;
}

unint64_t sub_21A1A5880(unint64_t result)
{
  if (*(result + 16))
  {
    result = sub_21A25A4C4(1869768040, 0xE400000000000000);
    if (v1)
    {
      sub_21A176C98(&qword_27CCFF4D8);
      return sub_21A2F7034();
    }
  }

  return result;
}

uint64_t sub_21A1A5914@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v48 = type metadata accessor for RecipeTheme();
  v4 = MEMORY[0x28223BE20](v48, v3);
  v6 = (v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v7);
  v46 = v44 - v8;
  v9 = sub_21A2F5654();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v51 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RecipeCardNavLinksModifier(0);
  v13 = *(v12 - 8);
  v44[1] = v12;
  v45 = v13;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = sub_21A176C98(&qword_27CCFF4B0);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16, v18);
  v20 = v44 - v19;
  v47 = sub_21A176C98(&qword_27CCFF4B8);
  MEMORY[0x28223BE20](v47, v21);
  v23 = v44 - v22;
  v24 = *a1;
  v25 = *(a1 + 40);
  v26 = *(type metadata accessor for RecipeCardNavHeadersView() + 24);
  *&v20[v26] = swift_getKeyPath();
  sub_21A176C98(&qword_27CCFEEA0);
  swift_storeEnumTagMultiPayload();
  *v20 = v24;
  v20[8] = v25;
  v52 = a1;
  sub_21A1A64D4(a1, v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardNavLinksModifier);
  v27 = (*(v45 + 80) + 16) & ~*(v45 + 80);
  v28 = swift_allocObject();
  sub_21A1A653C(v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for RecipeCardNavLinksModifier);
  v29 = &v20[*(v17 + 44)];
  *v29 = sub_21A1A5EAC;
  *(v29 + 1) = 0;
  *(v29 + 2) = sub_21A1A6464;
  *(v29 + 3) = v28;
  swift_getKeyPath();
  v55 = v24;
  sub_21A1A6CB4(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);

  sub_21A2F5094();

  v30 = v46;
  sub_21A1A64D4(v24 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, v46, type metadata accessor for RecipeTheme);
  sub_21A1A653C(v30, v6, type metadata accessor for RecipeTheme);
  LODWORD(v28) = swift_getEnumCaseMultiPayload();

  if (v28 == 1)
  {
    v31 = sub_21A176C98(&qword_27CCFEB90);
    sub_21A1427A8(v6 + *(v31 + 48), &qword_27CCFEDC0);
    v33 = v51;
    v32 = v52;
    sub_21A1AC5F4(v51);
    v35 = v49;
    v34 = v50;
  }

  else
  {

    v36 = sub_21A176C98(&qword_27CCFEEA8);
    sub_21A183894(v6 + *(v36 + 64));
    v35 = v49;
    v34 = v50;
    v33 = v51;
    (*(v49 + 104))(v51, *MEMORY[0x277CDF3C0], v50);
    v32 = v52;
  }

  KeyPath = swift_getKeyPath();
  v38 = &v23[*(v47 + 36)];
  v39 = sub_21A176C98(&qword_27CCFF2A0);
  (*(v35 + 32))(v38 + *(v39 + 28), v33, v34);
  *v38 = KeyPath;
  sub_21A149B18(v20, v23, &qword_27CCFF4B0);
  v40 = *(v32 + 56);
  v55 = *(v32 + 48);
  v56 = v40;
  sub_21A176C98(&qword_27CCFF4C8);
  sub_21A2F7024();
  v41 = v54;
  v42 = v53;
  sub_21A149B18(v23, v53, &qword_27CCFF4B8);
  result = sub_21A176C98(&qword_27CCFF4D0);
  *(v42 + *(result + 36)) = v41;
  return result;
}

uint64_t sub_21A1A5EAC@<X0>(void *a1@<X8>)
{
  result = sub_21A2F5814();
  *a1 = v3;
  return result;
}

uint64_t sub_21A1A5F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1A6CB4(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  return sub_21A1A64D4(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__recipeTheme, a2, type metadata accessor for RecipeTheme);
}

uint64_t sub_21A1A6000(uint64_t a1)
{
  v2 = type metadata accessor for RecipeTheme();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21A1A64D4(a1, v5, type metadata accessor for RecipeTheme);
  return sub_21A28CDD0(v5);
}

uint64_t sub_21A1A60A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1A6CB4(&qword_27CCFF4C0, type metadata accessor for RecipeCardViewModel);
  sub_21A2F5094();

  v4 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC10CookingKit19RecipeCardViewModel__condensedHeaderInfo);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1A6158(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21A2F5434();
  return sub_21A28D40C(v1, v2);
}

unint64_t sub_21A1A6198()
{
  result = qword_27CCFF468;
  if (!qword_27CCFF468)
  {
    sub_21A176D98(&qword_27CCFF458);
    sub_21A1A6250();
    sub_21A1772F8(&qword_27CCFF4A0, &qword_27CCFF4A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF468);
  }

  return result;
}

unint64_t sub_21A1A6250()
{
  result = qword_27CCFF470;
  if (!qword_27CCFF470)
  {
    sub_21A176D98(&qword_27CCFF478);
    sub_21A176D98(&qword_27CCFF460);
    sub_21A1772F8(&qword_27CCFF480, &qword_27CCFF460);
    sub_21A1A638C();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFF490, &qword_27CCFF498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF470);
  }

  return result;
}

unint64_t sub_21A1A638C()
{
  result = qword_27CCFF488;
  if (!qword_27CCFF488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF488);
  }

  return result;
}

uint64_t sub_21A1A6464()
{
  type metadata accessor for RecipeCardNavLinksModifier(0);

  return sub_21A1A5ED8();
}

uint64_t sub_21A1A64D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1A653C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21A1A65D4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_21A1A666C()
{
  v1 = type metadata accessor for RecipeCardTopBarModifier(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  sub_21A1478E8(*(v2 + 72), *(v2 + 80));
  v3 = *(v1 + 36);
  sub_21A176C98(&qword_27CCFECD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_21A2F5654();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  j__swift_release_0();

  return swift_deallocObject();
}

uint64_t sub_21A1A67F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = v4 + ((*(v7 + 80) + 16) & ~*(v7 + 80));

  return a4(a1, a2, v8);
}

uint64_t sub_21A1A68B4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

unint64_t sub_21A1A6968()
{
  result = qword_27CCFF508;
  if (!qword_27CCFF508)
  {
    sub_21A176D98(&qword_27CCFF4E0);
    sub_21A176D98(&qword_27CCFF4F0);
    sub_21A1772F8(&qword_27CCFF4F8, &qword_27CCFF4F0);
    sub_21A1A638C();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFF490, &qword_27CCFF498);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF508);
  }

  return result;
}

unint64_t sub_21A1A6AB4()
{
  result = qword_27CCFF530;
  if (!qword_27CCFF530)
  {
    sub_21A176D98(&qword_27CCFF528);
    sub_21A176D98(&qword_27CCFF538);
    sub_21A2F5B94();
    sub_21A1A6BFC();
    sub_21A1A6CB4(&qword_27CCFEF28, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_21A1A6CB4(&qword_27CCFF558, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF530);
  }

  return result;
}

unint64_t sub_21A1A6BFC()
{
  result = qword_27CCFF540;
  if (!qword_27CCFF540)
  {
    sub_21A176D98(&qword_27CCFF538);
    sub_21A1772F8(&qword_27CCFF548, &qword_27CCFF550);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF540);
  }

  return result;
}

uint64_t sub_21A1A6CB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1A6CFC()
{
  v1 = *(type metadata accessor for RecipeCardTopBarModifier(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_21A1A4BB8(v2);
}

unint64_t sub_21A1A6D64()
{
  result = qword_27CCFF570;
  if (!qword_27CCFF570)
  {
    sub_21A176D98(&qword_27CCFF568);
    sub_21A1A6E1C();
    sub_21A1772F8(&qword_27CCFF298, &qword_27CCFF2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF570);
  }

  return result;
}

unint64_t sub_21A1A6E1C()
{
  result = qword_27CCFF578;
  if (!qword_27CCFF578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF578);
  }

  return result;
}

unint64_t sub_21A1A6E70()
{
  result = qword_27CCFF580;
  if (!qword_27CCFF580)
  {
    sub_21A176D98(&qword_27CCFF588);
    sub_21A1A6198();
    sub_21A1772F8(&qword_27CCFF480, &qword_27CCFF460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF580);
  }

  return result;
}

uint64_t sub_21A1A6F38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_21A1A6F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t Dependencies.recipe.getter()
{
  sub_21A1A702C();
  sub_21A1A7080();

  return sub_21A2F7624();
}

unint64_t sub_21A1A702C()
{
  result = qword_27CCFF590;
  if (!qword_27CCFF590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF590);
  }

  return result;
}

unint64_t sub_21A1A7080()
{
  result = qword_27CCFF598;
  if (!qword_27CCFF598)
  {
    sub_21A176D98(&qword_27CCFF058);
    sub_21A149218(&qword_2811B3FF8, type metadata accessor for Recipe);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF598);
  }

  return result;
}

uint64_t sub_21A1A7134()
{
  sub_21A1A702C();
  sub_21A1A7080();
  return sub_21A2F7624();
}

uint64_t sub_21A1A7188(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF058);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v11 - v8;
  sub_21A1A7324(a1, &v11 - v8);
  sub_21A1A7324(v9, v6);
  sub_21A1A702C();
  sub_21A1A7080();
  sub_21A2F7634();
  return sub_21A1A7394(v9);
}

uint64_t Dependencies.recipe.setter(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v2 - 8, v3);
  sub_21A1A7324(a1, &v6 - v4);
  sub_21A1A702C();
  sub_21A1A7080();
  sub_21A2F7634();
  return sub_21A1A7394(a1);
}

uint64_t sub_21A1A7324(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF058);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1A7394(uint64_t a1)
{
  v2 = sub_21A176C98(&qword_27CCFF058);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void (*Dependencies.recipe.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_21A176C98(&qword_27CCFF058) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v5[4] = sub_21A1A702C();
  v5[5] = sub_21A1A7080();
  sub_21A2F7624();
  return sub_21A1A7524;
}

void sub_21A1A7524(uint64_t **a1, char a2)
{
  v3 = *a1;
  sub_21A1A7324((*a1)[3], (*a1)[2]);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[1];
  if (a2)
  {
    sub_21A1A7324(v3[2], v3[1]);
    sub_21A2F7634();
    sub_21A1A7394(v4);
  }

  else
  {
    sub_21A2F7634();
  }

  sub_21A1A7394(v5);
  free(v5);
  free(v4);
  free(v6);

  free(v3);
}

uint64_t sub_21A1A75FC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Recipe();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_21A1A7668@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for InternalRecipeSource();
  sub_21A2F7694();
  if (v4)
  {
    result = sub_21A149218(&qword_27CCFF5A8, type metadata accessor for InternalRecipeSource);
  }

  else
  {
    v2 = 0;
    result = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v4;
  a1[3] = v2;
  a1[4] = result;
  return result;
}

uint64_t sub_21A1A7708()
{
  v1 = v0;
  v2 = sub_21A176C98(&qword_27CCFF060);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v21 - v5;
  v7 = sub_21A176C98(&qword_27CCFF058);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v21 - v9;
  v11 = sub_21A176C98(&qword_27CCFF0E8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v21 - v14;
  (*(v12 + 16))(&v21 - v14, v1 + OBJC_IVAR____TtC10CookingKit20InternalRecipeSource__recipeID, v11);
  sub_21A2F7594();
  (*(v12 + 8))(v15, v11);
  v16 = v22;
  if (v22)
  {
    v17 = v21;
    (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC10CookingKit20InternalRecipeSource__importedRecipes, v2);
    sub_21A2F7594();
    (*(v3 + 8))(v6, v2);
    sub_21A187E08(v17, v16, v21, v10);

    return sub_21A1A7BAC(v10, v1 + OBJC_IVAR____TtC10CookingKit20InternalRecipeSource_state);
  }

  else
  {
    v19 = OBJC_IVAR____TtC10CookingKit20InternalRecipeSource_state;
    sub_21A1A7394(v1 + OBJC_IVAR____TtC10CookingKit20InternalRecipeSource_state);
    v20 = type metadata accessor for Recipe();
    return (*(*(v20 - 8) + 56))(v1 + v19, 1, 1, v20);
  }
}

uint64_t sub_21A1A79CC()
{
  v1 = OBJC_IVAR____TtC10CookingKit20InternalRecipeSource__recipeID;
  v2 = sub_21A176C98(&qword_27CCFF0E8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC10CookingKit20InternalRecipeSource__importedRecipes;
  v4 = sub_21A176C98(&qword_27CCFF060);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_21A1A7394(v0 + OBJC_IVAR____TtC10CookingKit20InternalRecipeSource_state);
  v5 = OBJC_IVAR____TtC10CookingKit20InternalRecipeSource___scope;
  v6 = sub_21A2F7614();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t sub_21A1A7BAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21A176C98(&qword_27CCFF058);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1A7C1C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8, v7);
  v8 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = *a2;
  v14 = sub_21A2F7C64();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_21A1A824C(a1, v8);
  sub_21A2F7C34();
  v15 = sub_21A2F7C24();
  v16 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v17 = (v6 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  *(v18 + 16) = v15;
  *(v18 + 24) = v19;
  sub_21A1A82B0(v8, v18 + v16);
  *(v18 + v17) = v13;
  sub_21A2F5434();
  sub_21A199D08(0, 0, v12, &unk_21A2FCA58, v18);
}

uint64_t sub_21A1A7E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  sub_21A2F7C34();
  v5[4] = sub_21A2F7C24();
  v7 = sub_21A2F7BD4();
  v5[5] = v7;
  v5[6] = v6;

  return MEMORY[0x2822009F8](sub_21A1A7E9C, v7, v6);
}

uint64_t sub_21A1A7E9C()
{
  v1 = v0[2];
  v2 = type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
  sub_21A142764((v1 + *(v2 + 20)), *(v1 + *(v2 + 20) + 24));
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_21A1A7F50;
  v4 = v0[3];

  return sub_21A2B0940(v4);
}

uint64_t sub_21A1A7F50()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x2822009F8](sub_21A1A28B0, v3, v2);
}

uint64_t sub_21A1A8070(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1, a2 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_21A176C98(&qword_27CCFEB08);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v19 - v9;
  v11 = *a1;
  v12 = sub_21A2F7C64();
  (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
  sub_21A1A824C(v2, v6);
  sub_21A2F7C34();
  v13 = sub_21A2F7C24();
  v14 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v13;
  *(v16 + 24) = v17;
  sub_21A1A82B0(v6, v16 + v14);
  *(v16 + v15) = v11;
  sub_21A2F5434();
  sub_21A199D08(0, 0, v10, &unk_21A2FCA60, v16);
}

uint64_t sub_21A1A824C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1A82B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SelectedIngredientsPersistenceCommandHandler();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1A8314(uint64_t a1)
{
  v4 = *(type metadata accessor for SelectedIngredientsPersistenceCommandHandler() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A146070;

  return sub_21A1A7E04(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_21A1A8434(uint64_t a1)
{
  v4 = *(type metadata accessor for SelectedIngredientsPersistenceCommandHandler() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_21A145E2C;

  return sub_21A1A7E04(a1, v6, v7, v1 + v5, v8);
}

void sub_21A1A859C()
{
  sub_21A1A8668();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      sub_21A13C2F4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21A1A8668()
{
  if (!qword_27CCFF418)
  {
    v0 = sub_21A2F7054();
    if (!v1)
    {
      atomic_store(v0, &qword_27CCFF418);
    }
  }
}

uint64_t sub_21A1A86D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v36 = a2;
  v5 = sub_21A176C98(&qword_27CCFF5C0);
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v31 - v7;
  v9 = sub_21A176C98(&qword_27CCFF5C8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v31 - v11;
  v13 = sub_21A176C98(&qword_27CCFF5D0);
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v31 - v15;
  if (*(v2 + 16) == 1)
  {
    v17 = sub_21A2F7324();
  }

  else
  {
    v17 = sub_21A2F7334();
  }

  v19 = v17;
  v20 = v18;
  v21 = &v12[*(v9 + 36)];
  sub_21A1A8A60(v3, v21);
  v22 = (v21 + *(sub_21A176C98(&qword_27CCFF5D8) + 36));
  *v22 = v19;
  v22[1] = v20;
  v23 = sub_21A176C98(&qword_27CCFF5E0);
  (*(*(v23 - 8) + 16))(v12, a1, v23);
  sub_21A2F72F4();
  v24 = MEMORY[0x277CE1340];
  v25 = MEMORY[0x277CE1350];
  v26 = sub_21A2F5F74();
  MEMORY[0x28223BE20](v26, v27);
  sub_21A176C98(&qword_27CCFF5E8);
  sub_21A1A9718();
  v37 = v25;
  v38 = v24;
  swift_getOpaqueTypeConformance2();
  sub_21A1A97FC();
  v28 = v35;
  sub_21A2F6E94();
  (*(v34 + 8))(v8, v28);
  sub_21A1427A8(v12, &qword_27CCFF5C8);
  v29 = v36;
  (*(v32 + 32))(v36, v16, v33);
  result = sub_21A176C98(&qword_27CCFF620);
  *(v29 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_21A1A8A60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_21A176C98(&qword_27CCFF5C0);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v48 = v47 - v5;
  v52 = sub_21A176C98(&qword_27CCFF628);
  MEMORY[0x28223BE20](v52, v6);
  v8 = v47 - v7;
  v51 = sub_21A176C98(&qword_27CCFF630);
  MEMORY[0x28223BE20](v51, v9);
  v11 = v47 - v10;
  v12 = type metadata accessor for RecipeCardHeroTiledImageView(0);
  v14 = MEMORY[0x28223BE20](v12, v13);
  v16 = (v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = (v47 - v18);
  v20 = sub_21A176C98(&qword_27CCFF638);
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = v47 - v26;
  v28 = *(a1 + 16);
  v29 = type metadata accessor for RecipeCardHeroTiledImageModifier(0);
  v30 = (a1 + v29[8]);
  if (v28 == 1)
  {
    v31 = 0.0;
    if (*(a1 + v29[10]) == 1)
    {
      v31 = *(a1 + v29[9] + 8);
    }

    v32 = *v30 + v31 + *(a1 + v29[11]);
    sub_21A183960(a1 + v29[7], v19 + v12[5], &qword_27CCFEDC0);
    *v19 = v32;
    v33 = *(a1 + 24);
    *(v19 + v12[6]) = v33;
    *(v19 + v12[7]) = 1;
    v34 = -*&v33;
    sub_21A1A9944(v19, v24, type metadata accessor for RecipeCardHeroTiledImageView);
    v35 = &v24[*(v20 + 36)];
    *v35 = v34;
    *(v35 + 1) = 0;
    sub_21A149B18(v24, v27, &qword_27CCFF638);
    sub_21A183960(v27, v11, &qword_27CCFF638);
    swift_storeEnumTagMultiPayload();
    sub_21A1A99AC();
    sub_21A1A9A90();
    sub_21A2F6114();
    return sub_21A1427A8(v27, &qword_27CCFF638);
  }

  else
  {
    v37 = v30[1] + -80.0 + *(a1 + v29[11]);
    sub_21A183960(a1 + v29[7], v16 + v12[5], &qword_27CCFEDC0);
    v38 = *(a1 + 24);
    v39 = *(a1 + 32);
    *v16 = v37;
    v40 = (v16 + v12[6]);
    *v40 = v38;
    v40[1] = v39;
    *(v16 + v12[7]) = 0;
    sub_21A2F72F4();
    v41 = MEMORY[0x277CE1350];
    v42 = v48;
    v43 = sub_21A2F5F74();
    v47[1] = v47;
    MEMORY[0x28223BE20](v43, v44);
    sub_21A176C98(&qword_27CCFF658);
    sub_21A1A9A38();
    v54 = v41;
    v55 = MEMORY[0x277CE1340];
    swift_getOpaqueTypeConformance2();
    sub_21A1A9BD4();
    v45 = v50;
    sub_21A2F6E94();
    (*(v49 + 8))(v42, v45);
    sub_21A1A9C94(v16);
    v46 = &v8[*(v52 + 36)];
    *v46 = 0;
    *(v46 + 1) = v39;
    sub_21A183960(v8, v11, &qword_27CCFF628);
    swift_storeEnumTagMultiPayload();
    sub_21A1A99AC();
    sub_21A1A9A90();
    sub_21A2F6114();
    return sub_21A1427A8(v8, &qword_27CCFF628);
  }
}

uint64_t sub_21A1A9010@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21A2F7334();
  v8 = v7;
  sub_21A1A914C(a2, &v15);
  *&v20 = v6;
  *(&v20 + 1) = v8;
  v23 = v17;
  v24 = v18;
  v25[0] = v19[0];
  *(v25 + 9) = *(v19 + 9);
  v21 = v15;
  v22 = v16;
  sub_21A1A9CF0(a1, a3, type metadata accessor for RecipeCardHeroTiledImageView);
  v9 = (a3 + *(sub_21A176C98(&qword_27CCFF658) + 36));
  v10 = v25[0];
  v9[4] = v24;
  v9[5] = v10;
  *(v9 + 89) = *(v25 + 9);
  v11 = v21;
  *v9 = v20;
  v9[1] = v11;
  v12 = v23;
  v9[2] = v22;
  v9[3] = v12;
  v26[0] = v6;
  v26[1] = v8;
  v27 = v15;
  v28 = v16;
  *&v31[9] = *(v19 + 9);
  v30 = v18;
  *v31 = v19[0];
  v29 = v17;
  sub_21A183960(&v20, &v14, &qword_27CCFF670);
  return sub_21A1427A8(v26, &qword_27CCFF670);
}

double sub_21A1A914C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = -*(a1 + *(type metadata accessor for RecipeCardHeroTiledImageModifier(0) + 36));
  v5 = a1[1];
  *&v22 = *a1;
  *(&v22 + 1) = v5;
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  if (v14 <= v4)
  {
    LOBYTE(v11[0]) = 1;
    v14 = COERCE_DOUBLE(sub_21A2F6F04());
    v21 = 1;
  }

  else
  {
    v6 = sub_21A2F6004();
    LOBYTE(v22) = 0;
    sub_21A1A92F8(a1, v11);
    *&v10[55] = v12;
    *&v10[39] = v11[2];
    *&v10[23] = v11[1];
    *&v10[7] = v11[0];
    v18 = *&v10[16];
    v19 = *&v10[32];
    *v20 = *&v10[48];
    v13 = 0;
    v14 = *&v6;
    v15 = 0;
    v16 = v22;
    *&v20[15] = *(&v12 + 1);
    v17 = *v10;
    v21 = 0;
  }

  sub_21A176C98(&qword_27CCFF678);
  sub_21A1772F8(&qword_27CCFF680, &qword_27CCFF678);
  sub_21A2F6114();
  v7 = v25;
  a2[2] = v24;
  a2[3] = v7;
  a2[4] = v26[0];
  *(a2 + 73) = *(v26 + 9);
  result = *&v22;
  v9 = v23;
  *a2 = v22;
  a2[1] = v9;
  return result;
}

double sub_21A1A92F8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21A2F6F04();
  v5 = sub_21A2F6F14();
  v7 = *a1;
  v8 = a1[1];
  sub_21A176C98(&qword_27CCFF4D8);
  sub_21A2F7024();
  sub_21A2F7344();
  sub_21A2F57C4();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  result = *&v11;
  *(a2 + 48) = v11;
  return result;
}

uint64_t sub_21A1A93E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RecipeCardHeroTiledImageModifier(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8, v9);
  sub_21A1A9CF0(a2, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardHeroTiledImageModifier);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = swift_allocObject();
  sub_21A1A9944(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for RecipeCardHeroTiledImageModifier);
  sub_21A183960(a1, a3, &qword_27CCFF5C8);
  result = sub_21A176C98(&qword_27CCFF5E8);
  v13 = (a3 + *(result + 36));
  *v13 = sub_21A1A9554;
  v13[1] = 0;
  v13[2] = sub_21A1A98B4;
  v13[3] = v11;
  return result;
}

void sub_21A1A9554(CGFloat *a1@<X8>)
{
  v2 = sub_21A2F6144();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[0] = 0xD000000000000012;
  v15[1] = 0x800000021A318680;
  sub_21A2F6324();
  sub_21A2F5824();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  (*(v3 + 8))(v6, v2);
  v16.origin.x = v8;
  v16.origin.y = v10;
  v16.size.width = v12;
  v16.size.height = v14;
  *a1 = CGRectGetMinY(v16);
}

uint64_t sub_21A1A96A4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    sub_21A176C98(&qword_27CCFF4D8);
    return sub_21A2F7034();
  }

  return result;
}

unint64_t sub_21A1A9718()
{
  result = qword_27CCFF5F0;
  if (!qword_27CCFF5F0)
  {
    sub_21A176D98(&qword_27CCFF5C8);
    sub_21A1772F8(&qword_27CCFF5F8, &qword_27CCFF5E0);
    sub_21A1772F8(&qword_27CCFF600, &qword_27CCFF5D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF5F0);
  }

  return result;
}

unint64_t sub_21A1A97FC()
{
  result = qword_27CCFF608;
  if (!qword_27CCFF608)
  {
    sub_21A176D98(&qword_27CCFF5E8);
    sub_21A1A9718();
    sub_21A1772F8(&qword_27CCFF610, &qword_27CCFF618);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF608);
  }

  return result;
}

uint64_t sub_21A1A98B4(uint64_t a1)
{
  v3 = *(type metadata accessor for RecipeCardHeroTiledImageModifier(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_21A1A96A4(a1, v4);
}

uint64_t sub_21A1A9944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_21A1A99AC()
{
  result = qword_27CCFF640;
  if (!qword_27CCFF640)
  {
    sub_21A176D98(&qword_27CCFF638);
    sub_21A1A9A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF640);
  }

  return result;
}

unint64_t sub_21A1A9A38()
{
  result = qword_27CCFF648;
  if (!qword_27CCFF648)
  {
    type metadata accessor for RecipeCardHeroTiledImageView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF648);
  }

  return result;
}

unint64_t sub_21A1A9A90()
{
  result = qword_27CCFF650;
  if (!qword_27CCFF650)
  {
    sub_21A176D98(&qword_27CCFF628);
    type metadata accessor for RecipeCardHeroTiledImageView(255);
    sub_21A176D98(&qword_27CCFF5C0);
    sub_21A176D98(&qword_27CCFF658);
    sub_21A1A9A38();
    swift_getOpaqueTypeConformance2();
    sub_21A1A9BD4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF650);
  }

  return result;
}

unint64_t sub_21A1A9BD4()
{
  result = qword_27CCFF660;
  if (!qword_27CCFF660)
  {
    sub_21A176D98(&qword_27CCFF658);
    sub_21A1A9A38();
    sub_21A1772F8(&qword_27CCFF668, &qword_27CCFF670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF660);
  }

  return result;
}

uint64_t sub_21A1A9C94(uint64_t a1)
{
  v2 = type metadata accessor for RecipeCardHeroTiledImageView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1A9CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21A1A9D80()
{
  sub_21A13C2F4();
  if (v0 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_21A1A9E1C()
{
  result = qword_27CCFF698;
  if (!qword_27CCFF698)
  {
    sub_21A176D98(&qword_27CCFF620);
    sub_21A176D98(&qword_27CCFF5C8);
    sub_21A176D98(&qword_27CCFF5C0);
    sub_21A176D98(&qword_27CCFF5E8);
    sub_21A1A9718();
    swift_getOpaqueTypeConformance2();
    sub_21A1A97FC();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF698);
  }

  return result;
}

uint64_t sub_21A1A9F88@<X0>(double *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = sub_21A176C98(&qword_27CCFF6B0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v31 - v6;
  v33 = sub_21A176C98(&qword_27CCFF6B8);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v31 - v9;
  v31 = sub_21A176C98(&qword_27CCFF6C0);
  MEMORY[0x28223BE20](v31, v11);
  v13 = &v31 - v12;
  v14 = sub_21A176C98(&qword_27CCFF6C8);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v31 - v17;
  v32 = sub_21A176C98(&qword_27CCFF6D0);
  MEMORY[0x28223BE20](v32, v19);
  v21 = &v31 - v20;
  v22 = type metadata accessor for RecipeCardHeroTiledImageView(0);
  v23 = (a1 + *(v22 + 24));
  if (*(a1 + *(v22 + 28)) == 1)
  {
    if (*v23 <= 0.0)
    {
      (*(v15 + 56))(v21, 1, 1, v14);
    }

    else
    {
      *v18 = sub_21A2F5F34();
      *(v18 + 1) = 0;
      v18[16] = 0;
      sub_21A176C98(&qword_27CCFF718);
      sub_21A1AA758(a1);
      sub_21A2F7364();
      sub_21A2F57C4();
      v24 = &v18[*(v14 + 36)];
      v25 = v36;
      *v24 = v35;
      *(v24 + 1) = v25;
      *(v24 + 2) = v37;
      sub_21A149B18(v18, v21, &qword_27CCFF6C8);
      (*(v15 + 56))(v21, 0, 1, v14);
    }

    v28 = &qword_27CCFF6D0;
    sub_21A183960(v21, v13, &qword_27CCFF6D0);
    swift_storeEnumTagMultiPayload();
    sub_21A1AAE28(&qword_27CCFF6D8, &qword_27CCFF6D0, &unk_21A2FCC60, sub_21A1AAD70);
    sub_21A1AAE28(&qword_27CCFF6F8, &qword_27CCFF6B8, &unk_21A2FCC48, sub_21A1AAEA4);
    sub_21A2F6114();
    v29 = v21;
  }

  else
  {
    if (v23[1] <= 0.0)
    {
      (*(v4 + 56))(v10, 1, 1, v3);
    }

    else
    {
      *v7 = sub_21A2F6004();
      *(v7 + 1) = 0;
      v7[16] = 0;
      sub_21A176C98(&qword_27CCFF720);
      sub_21A1AA4E4(a1);
      sub_21A2F7334();
      sub_21A2F57C4();
      v26 = &v7[*(v3 + 36)];
      v27 = v36;
      *v26 = v35;
      *(v26 + 1) = v27;
      *(v26 + 2) = v37;
      sub_21A149B18(v7, v10, &qword_27CCFF6B0);
      (*(v4 + 56))(v10, 0, 1, v3);
    }

    v28 = &qword_27CCFF6B8;
    sub_21A183960(v10, v13, &qword_27CCFF6B8);
    swift_storeEnumTagMultiPayload();
    sub_21A1AAE28(&qword_27CCFF6D8, &qword_27CCFF6D0, &unk_21A2FCC60, sub_21A1AAD70);
    sub_21A1AAE28(&qword_27CCFF6F8, &qword_27CCFF6B8, &unk_21A2FCC48, sub_21A1AAEA4);
    sub_21A2F6114();
    v29 = v10;
  }

  return sub_21A1427A8(v29, v28);
}

uint64_t sub_21A1AA4E4(double *a1)
{
  v2 = type metadata accessor for RecipeCardHeroTiledImageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2 - 8, v5);
  v7 = ceil(*a1 / *(a1 + *(result + 32) + 8));
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v9 = sub_21A188C10(v7, 0);
      if (sub_21A1AAF5C(v13, (v9 + 4), v8, 0, v8) == v8)
      {
LABEL_9:
        v13[0] = v9;
        swift_getKeyPath();
        sub_21A1A9CF0(a1, &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardHeroTiledImageView);
        v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
        v11 = swift_allocObject();
        sub_21A1A9944(&v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for RecipeCardHeroTiledImageView);
        sub_21A176C98(&qword_27CCFF728);
        sub_21A176C98(&qword_27CCFF730);
        sub_21A1772F8(&qword_27CCFF738, &qword_27CCFF728);
        sub_21A1AB004();
        return sub_21A2F7204();
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_21A1AA758(double *a1)
{
  v2 = type metadata accessor for RecipeCardHeroTiledImageView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2 - 8, v5);
  v7 = ceil(*a1 / *(a1 + *(result + 32)));
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v7;
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v8)
    {
      v9 = sub_21A188C10(v7, 0);
      if (sub_21A1AAF5C(v13, (v9 + 4), v8, 0, v8) == v8)
      {
LABEL_9:
        v13[0] = v9;
        swift_getKeyPath();
        sub_21A1A9CF0(a1, &v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeCardHeroTiledImageView);
        v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
        v11 = swift_allocObject();
        sub_21A1A9944(&v13[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for RecipeCardHeroTiledImageView);
        sub_21A176C98(&qword_27CCFF788);
        sub_21A176C98(&qword_27CCFF730);
        sub_21A1AB440();
        sub_21A1AB004();
        return sub_21A2F7204();
      }

      __break(1u);
    }

    v9 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_13:
  __break(1u);
  return result;
}

double sub_21A1AA99C@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  if (*a1)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = 3.14159265;
  }

  v10 = sub_21A2F6F14();
  v11 = sub_21A2F7344();
  v13 = v12;
  v14 = a3 + *(sub_21A176C98(&qword_27CCFF750) + 36);
  sub_21A1AAAE4(a2, v14, v9, a4, a5, 0.0);
  v15 = (v14 + *(sub_21A176C98(&qword_27CCFF770) + 36));
  *v15 = v11;
  v15[1] = v13;
  *a3 = v10;
  *(a3 + 8) = 256;
  type metadata accessor for RecipeCardHeroTiledImageView(0);
  sub_21A2F7344();
  sub_21A2F57C4();
  v16 = (a3 + *(sub_21A176C98(&qword_27CCFF730) + 36));
  *v16 = v18;
  v16[1] = v19;
  result = *&v20;
  v16[2] = v20;
  return result;
}

double sub_21A1AAAE4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v12 = sub_21A176C98(&qword_27CCFEDC0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v28 - v14;
  v16 = sub_21A176C98(&qword_27CCFEFE0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = &v28 - v18;
  v20 = type metadata accessor for RecipeCardHeroTiledImageView(0);
  sub_21A183960(a1 + *(v20 + 20), v15, &qword_27CCFEDC0);
  sub_21A183960(v15, v19, &qword_27CCFEDC0);
  v21 = &v19[*(v16 + 52)];
  sub_21A2F72B4();
  *&v21[*(sub_21A176C98(&qword_27CCFEFE8) + 56)] = 256;
  sub_21A1427A8(v15, &qword_27CCFEDC0);
  sub_21A1772F8(&qword_27CCFF778, &qword_27CCFEFE0);
  sub_21A2F6C84();
  sub_21A1427A8(v19, &qword_27CCFEFE0);
  sub_21A2F7454();
  v23 = v22;
  v25 = v24;
  v26 = a2 + *(sub_21A176C98(&qword_27CCFF780) + 36);
  *v26 = a3;
  *(v26 + 8) = a4;
  *(v26 + 16) = a5;
  *(v26 + 24) = a6;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  result = 0.0;
  *(v26 + 48) = xmmword_21A2FCAC0;
  return result;
}

uint64_t sub_21A1AAD08@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_21A2F7344();
  a1[1] = v3;
  v4 = sub_21A176C98(&qword_27CCFF6A0);
  sub_21A1A9F88(v1, a1 + *(v4 + 44));
  result = sub_21A176C98(&qword_27CCFF6A8);
  *(a1 + *(result + 36)) = 0;
  return result;
}

unint64_t sub_21A1AAD70()
{
  result = qword_27CCFF6E0;
  if (!qword_27CCFF6E0)
  {
    sub_21A176D98(&qword_27CCFF6C8);
    sub_21A1772F8(&qword_27CCFF6E8, &qword_27CCFF6F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF6E0);
  }

  return result;
}

uint64_t sub_21A1AAE28(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_21A176D98(a2);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21A1AAEA4()
{
  result = qword_27CCFF700;
  if (!qword_27CCFF700)
  {
    sub_21A176D98(&qword_27CCFF6B0);
    sub_21A1772F8(&qword_27CCFF708, &qword_27CCFF710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF700);
  }

  return result;
}

uint64_t *sub_21A1AAF5C(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
LABEL_15:
    a3 = 0;
LABEL_16:
    v8 = a4;
LABEL_19:
    *result = a4;
    result[1] = a5;
    result[2] = v8;
    return a3;
  }

  if (!a3)
  {
    goto LABEL_16;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    if (a5 <= a4)
    {
      v6 = a4;
    }

    else
    {
      v6 = a5;
    }

    v7 = a4 - v6;
    while (1)
    {
      if (!(a4 - a5 + v5))
      {
        v8 = a5;
        a3 = a5 - a4;
        goto LABEL_19;
      }

      if (a5 < a4)
      {
        break;
      }

      if (!(v7 + v5))
      {
        goto LABEL_21;
      }

      *(a2 + 8 * v5) = a4 + v5;
      if (a3 - 1 == v5)
      {
        v8 = a4 + v5 + 1;
        goto LABEL_19;
      }

      if (__OFADD__(++v5, 1))
      {
        __break(1u);
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_21A1AB004()
{
  result = qword_27CCFF740;
  if (!qword_27CCFF740)
  {
    sub_21A176D98(&qword_27CCFF730);
    sub_21A1AB090();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF740);
  }

  return result;
}

unint64_t sub_21A1AB090()
{
  result = qword_27CCFF748;
  if (!qword_27CCFF748)
  {
    sub_21A176D98(&qword_27CCFF750);
    sub_21A1772F8(&qword_27CCFF758, &qword_27CCFF760);
    sub_21A1772F8(&qword_27CCFF768, &qword_27CCFF770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF748);
  }

  return result;
}

uint64_t sub_21A1AB174()
{
  v1 = type metadata accessor for RecipeCardHeroTiledImageView(0);
  v2 = v0 + *(v1 + 20) + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = type metadata accessor for ImageAsset(0);
  if (!(*(*(v3 - 8) + 48))(v2, 1, v3))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      v11 = sub_21A2F4794();
      (*(*(v11 - 8) + 8))(v2, v11);
      v10 = type metadata accessor for LocalImageAsset(0);
    }

    else
    {
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_10;
        }

        v5 = type metadata accessor for ExternalImageAsset(0);
        v6 = v5[5];
        v7 = sub_21A2F4794();
        (*(*(v7 - 8) + 8))(v2 + v6, v7);

        v8 = v5 + 10;
        goto LABEL_9;
      }

      v9 = sub_21A2F4794();
      (*(*(v9 - 8) + 8))(v2, v9);
      v10 = type metadata accessor for WebImageAsset(0);
    }

    v12 = v10;

    v8 = (v12 + 24);
LABEL_9:
  }

LABEL_10:

  return swift_deallocObject();
}

unint64_t sub_21A1AB440()
{
  result = qword_27CCFF790;
  if (!qword_27CCFF790)
  {
    sub_21A176D98(&qword_27CCFF788);
    sub_21A1772F8(&qword_27CCFF738, &qword_27CCFF728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF790);
  }

  return result;
}

unint64_t sub_21A1AB4F0()
{
  result = qword_27CCFF798;
  if (!qword_27CCFF798)
  {
    sub_21A176D98(&qword_27CCFF6A8);
    sub_21A1772F8(&qword_27CCFF7A0, &qword_27CCFF7A8);
    sub_21A1772F8(&qword_27CCFF7B0, &qword_27CCFF7B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF798);
  }

  return result;
}

uint64_t type metadata accessor for CircularButtonStyle()
{
  result = qword_27CCFF7C8;
  if (!qword_27CCFF7C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21A1AB650()
{
  sub_21A1AB70C(319, &qword_27CCFF420, MEMORY[0x277CDF3E0]);
  if (v0 <= 0x3F)
  {
    sub_21A1AB70C(319, &qword_27CCFEE40, type metadata accessor for RecipeTheme);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21A1AB70C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_21A2F5664();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_21A1AB77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v119 = a2;
  v3 = sub_21A2F5654();
  v115 = *(v3 - 8);
  v116 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v114 = v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_21A2F72D4();
  MEMORY[0x28223BE20](v96, v6);
  v95[4] = v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for RecipeTheme();
  v9 = MEMORY[0x28223BE20](v102, v8);
  v113 = (v95 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x28223BE20](v9, v11);
  v112 = v95 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v105 = (v95 - v16);
  v18 = MEMORY[0x28223BE20](v15, v17);
  v103 = v95 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v23 = (v95 - v22);
  MEMORY[0x28223BE20](v21, v24);
  v98 = v95 - v25;
  v26 = sub_21A176C98(&qword_27CCFF7D8);
  MEMORY[0x28223BE20](v26, v27);
  v29 = v95 - v28;
  v101 = sub_21A176C98(&qword_27CCFF7E0);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v30);
  v97 = v95 - v31;
  v99 = sub_21A176C98(&qword_27CCFF7E8);
  MEMORY[0x28223BE20](v99, v32);
  v117 = v95 - v33;
  v104 = sub_21A176C98(&qword_27CCFF7F0);
  MEMORY[0x28223BE20](v104, v34);
  v118 = v95 - v35;
  v106 = sub_21A176C98(&qword_27CCFF7F8);
  MEMORY[0x28223BE20](v106, v36);
  v110 = v95 - v37;
  v109 = sub_21A176C98(&qword_27CCFF800);
  MEMORY[0x28223BE20](v109, v38);
  v108 = v95 - v39;
  v40 = sub_21A176C98(&qword_27CCFF808);
  v42 = MEMORY[0x28223BE20](v40, v41);
  v107 = v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v111 = v95 - v45;
  v46 = sub_21A176C98(&qword_27CCFF810);
  MEMORY[0x28223BE20](v46, v47);
  v49 = v95 - v48;
  v50 = sub_21A2F63A4();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52);
  v54 = v95 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_21A2F72E4())
  {
    sub_21A2F63B4();
    (*(v51 + 16))(v49, v54, v50);
    swift_storeEnumTagMultiPayload();
    sub_21A1ACD88();
    sub_21A1ACDE0();
    sub_21A2F6114();
    return (*(v51 + 8))(v54, v50);
  }

  else
  {
    v95[1] = v46;
    v95[0] = v49;
    v95[2] = v50;
    v95[3] = a1;
    sub_21A2F63B4();
    v56 = &v29[*(sub_21A176C98(&qword_27CCFF818) + 36)];
    v57 = *(sub_21A176C98(&qword_27CCFE918) + 28);
    v58 = *MEMORY[0x277CE1050];
    v59 = sub_21A2F6FC4();
    (*(*(v59 - 8) + 104))(v56 + v57, v58, v59);
    *v56 = swift_getKeyPath();
    sub_21A2F7344();
    sub_21A2F57C4();
    v60 = &v29[*(v26 + 36)];
    v61 = v122;
    *v60 = v121;
    *(v60 + 1) = v61;
    *(v60 + 2) = v123;
    sub_21A2F6714();
    sub_21A1ACC44();
    v62 = v97;
    sub_21A2F6A74();
    sub_21A1427A8(v29, &qword_27CCFF7D8);
    type metadata accessor for CircularButtonStyle();
    v63 = v98;
    sub_21A1AC424(v98);
    sub_21A19422C(v63, v23);
    LODWORD(v58) = swift_getEnumCaseMultiPayload();

    if (v58 == 1)
    {
      v64 = sub_21A176C98(&qword_27CCFEB90);
      sub_21A1427A8(v23 + *(v64 + 48), &qword_27CCFEDC0);
      v65 = sub_21A2F6F54();
    }

    else
    {

      v66 = sub_21A176C98(&qword_27CCFEEA8);
      sub_21A183894(v23 + *(v66 + 64));
      v65 = sub_21A2F6F24();
    }

    v67 = v65;
    v68 = v114;
    v69 = v105;
    v70 = v117;
    (*(v100 + 32))(v117, v62, v101);
    *(v70 + *(v99 + 36)) = v67;
    v71 = v103;
    sub_21A1AC424(v103);
    sub_21A19422C(v71, v69);
    LODWORD(v67) = swift_getEnumCaseMultiPayload();

    if (v67 == 1)
    {
      v72 = sub_21A176C98(&qword_27CCFEB90);
      sub_21A1427A8(v69 + *(v72 + 48), &qword_27CCFEDC0);
      v120 = 1;
      sub_21A176C98(&qword_27CCFF838);
      sub_21A1772F8(&qword_27CCFF840, &qword_27CCFF838);
    }

    else
    {

      v73 = sub_21A176C98(&qword_27CCFEEA8);
      sub_21A183894(v69 + *(v73 + 64));
      sub_21A2F72C4();
    }

    v74 = sub_21A2F57D4();
    v75 = v116;
    v76 = v113;
    v77 = v118;
    sub_21A149B18(v117, v118, &qword_27CCFF7E8);
    v78 = v77 + *(v104 + 36);
    *v78 = v74;
    *(v78 + 8) = 256;
    v79 = v112;
    sub_21A1AC424(v112);
    sub_21A19422C(v79, v76);
    LODWORD(v74) = swift_getEnumCaseMultiPayload();

    v80 = v95[0];
    if (v74 == 1)
    {
      v81 = sub_21A176C98(&qword_27CCFEB90);
      sub_21A1427A8(v76 + *(v81 + 48), &qword_27CCFEDC0);
      sub_21A1AC61C(&qword_27CCFECD8, MEMORY[0x277CDF3E0], v68);
      v82 = v115;
    }

    else
    {

      v83 = sub_21A176C98(&qword_27CCFEEA8);
      sub_21A183894(v76 + *(v83 + 64));
      v82 = v115;
      (*(v115 + 104))(v68, *MEMORY[0x277CDF3D0], v75);
    }

    KeyPath = swift_getKeyPath();
    v85 = v110;
    v86 = &v110[*(v106 + 36)];
    v87 = sub_21A176C98(&qword_27CCFF2A0);
    (*(v82 + 32))(v86 + *(v87 + 28), v68, v75);
    *v86 = KeyPath;
    sub_21A149B18(v118, v85, &qword_27CCFF7F0);
    if (sub_21A2F63C4())
    {
      v88 = 0.5;
    }

    else
    {
      v88 = 1.0;
    }

    v89 = v85;
    v90 = v108;
    sub_21A149B18(v89, v108, &qword_27CCFF7F8);
    *(v90 + *(v109 + 36)) = v88;
    v91 = v90;
    v92 = v107;
    sub_21A149B18(v91, v107, &qword_27CCFF800);
    *(v92 + *(v40 + 36)) = 257;
    v93 = v92;
    v94 = v111;
    sub_21A149B18(v93, v111, &qword_27CCFF808);
    sub_21A15A9A4(v94, v80);
    swift_storeEnumTagMultiPayload();
    sub_21A1ACD88();
    sub_21A1ACDE0();
    sub_21A2F6114();
    return sub_21A15AA14(v94);
  }
}

uint64_t sub_21A1AC424@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21A2F5ED4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A176C98(&qword_27CCFEEA0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  sub_21A183960(v2, &v15 - v11, &qword_27CCFEEA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_21A19422C(v12, a1);
  }

  sub_21A2F7DE4();
  v14 = sub_21A2F65B4();
  sub_21A2F53B4();

  sub_21A2F5EC4();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_21A1AC61C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = sub_21A2F5ED4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_21A176C98(a1);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v20 - v15;
  sub_21A183960(v6, &v20 - v15, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a2(0);
    return (*(*(v17 - 8) + 32))(a3, v16, v17);
  }

  else
  {
    sub_21A2F7DE4();
    v19 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();

    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t sub_21A1AC81C(uint64_t a1, char a2)
{
  v4 = sub_21A2F5ED4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a2 & 1) == 0)
  {

    sub_21A2F7DE4();
    v9 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();
    sub_21A1478E8(a1, 0);
    (*(v5 + 8))(v8, v4);
    LOBYTE(a1) = v11[15];
  }

  return a1 & 1;
}

uint64_t sub_21A1AC960@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_21A2F5ED4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_21A183960(v2, v12, &qword_27CCFF890);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a1 = v12[0];
    *(a1 + 16) = v10;
    *(a1 + 32) = v13;
  }

  else
  {
    sub_21A2F7DE4();
    v11 = sub_21A2F65B4();
    sub_21A2F53B4();

    sub_21A2F5EC4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_21A1ACB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t (*a6)(char *))
{
  a5(0);
  MEMORY[0x28223BE20]();
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, a1);
  return a6(v9);
}

unint64_t sub_21A1ACC44()
{
  result = qword_27CCFF820;
  if (!qword_27CCFF820)
  {
    sub_21A176D98(&qword_27CCFF7D8);
    sub_21A1ACCD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF820);
  }

  return result;
}

unint64_t sub_21A1ACCD0()
{
  result = qword_27CCFF828;
  if (!qword_27CCFF828)
  {
    sub_21A176D98(&qword_27CCFF818);
    sub_21A1ACD88();
    sub_21A1772F8(&qword_27CCFE910, &qword_27CCFE918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF828);
  }

  return result;
}

unint64_t sub_21A1ACD88()
{
  result = qword_27CCFF830;
  if (!qword_27CCFF830)
  {
    sub_21A2F63A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF830);
  }

  return result;
}

unint64_t sub_21A1ACDE0()
{
  result = qword_27CCFF848;
  if (!qword_27CCFF848)
  {
    sub_21A176D98(&qword_27CCFF808);
    sub_21A1ACE6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF848);
  }

  return result;
}

unint64_t sub_21A1ACE6C()
{
  result = qword_27CCFF850;
  if (!qword_27CCFF850)
  {
    sub_21A176D98(&qword_27CCFF800);
    sub_21A1ACEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF850);
  }

  return result;
}

unint64_t sub_21A1ACEF8()
{
  result = qword_27CCFF858;
  if (!qword_27CCFF858)
  {
    sub_21A176D98(&qword_27CCFF7F8);
    sub_21A1ACFB0();
    sub_21A1772F8(&qword_27CCFF298, &qword_27CCFF2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF858);
  }

  return result;
}

unint64_t sub_21A1ACFB0()
{
  result = qword_27CCFF860;
  if (!qword_27CCFF860)
  {
    sub_21A176D98(&qword_27CCFF7F0);
    sub_21A1AD068();
    sub_21A1772F8(&qword_27CCFF870, &qword_27CCFF878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF860);
  }

  return result;
}

unint64_t sub_21A1AD068()
{
  result = qword_27CCFF868;
  if (!qword_27CCFF868)
  {
    sub_21A176D98(&qword_27CCFF7E8);
    sub_21A176D98(&qword_27CCFF7D8);
    sub_21A1ACC44();
    swift_getOpaqueTypeConformance2();
    sub_21A1772F8(&qword_27CCFE938, &qword_27CCFE940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF868);
  }

  return result;
}

unint64_t sub_21A1AD15C()
{
  result = qword_27CCFF880;
  if (!qword_27CCFF880)
  {
    sub_21A176D98(&qword_27CCFF888);
    sub_21A1ACD88();
    sub_21A1ACDE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF880);
  }

  return result;
}

uint64_t sub_21A1AD1E8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
  sub_21A2F5094();

  v3 = *(v1 + 64);
  *a1 = *(v1 + 56);
  a1[1] = v3;
  return sub_21A2F5434();
}

uint64_t sub_21A1AD294@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
  sub_21A2F5094();

  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
  return sub_21A2F5434();
}

uint64_t sub_21A1AD340(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  sub_21A2F5434();
  LOBYTE(v4) = sub_21A18F608(v4, v5, v3, v2);

  if (v4)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath, v7);
    sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
    sub_21A2F5084();
  }

  else
  {
    *(v1 + 56) = v3;
    *(v1 + 64) = v2;
  }
}

uint64_t sub_21A1AD4A4@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
  sub_21A2F5094();

  *a1 = *(v1 + 72);
  return result;
}

uint64_t sub_21A1AD54C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
  sub_21A2F5094();

  *a2 = *(v3 + 72);
  return result;
}

unsigned __int8 *sub_21A1AD5F4(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *(v1 + 72);
  if (v3 != 2)
  {
    if (v2 == 2 || ((v3 ^ v2) & 1) != 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + 72) = v2;
    return result;
  }

  if (v2 == 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath, v5);
  sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
  sub_21A2F5084();
}

uint64_t sub_21A1AD720()
{
  swift_getKeyPath();
  v13[0] = v0;
  sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
  sub_21A2F5094();

  v1 = *(v0 + 64);
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 56);
  swift_getKeyPath();
  v13[0] = v0;
  sub_21A2F5434();
  sub_21A2F5094();

  v3 = *(v0 + 72);
  if (v3 == 2)
  {

LABEL_4:
    if (qword_27CCFE790 != -1)
    {
      swift_once();
    }

    v4 = sub_21A2F53E4();
    sub_21A177CBC(v4, qword_27CD23BF0);
    v5 = sub_21A2F53C4();
    v6 = sub_21A2F7DD4();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_21A137000, v5, v6, "AdPlacement not specified as truth on RecipeAdView", v7, 2u);
      MEMORY[0x21CED7BA0](v7, -1, -1);
    }

    return 0;
  }

  sub_21A179E54(v0 + 16, v13);
  v9 = v14;
  if (!v14)
  {

    sub_21A1427A8(v13, &qword_27CCFEAF8);
    return 0;
  }

  v10 = v15;
  sub_21A142764(v13, v14);
  v12 = v3 & 1;
  v11 = (*(v10 + 8))(v2, v1, &v12, v9, v10);

  sub_21A142808(v13);
  return v11;
}

uint64_t sub_21A1AD978()
{
  sub_21A1427A8(v0 + 16, &qword_27CCFEAF8);

  v1 = OBJC_IVAR____TtC10CookingKit17RecipeAdViewModel___observationRegistrar;
  v2 = sub_21A2F50D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_21A1ADA84()
{
  v0 = swift_allocObject();
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 2;
  sub_21A2F50C4();
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return v0;
}

uint64_t sub_21A1ADAE0()
{
  sub_21A1ADB1C();
  sub_21A2F7644();
  return v1;
}

unint64_t sub_21A1ADB1C()
{
  result = qword_27CCFF8A0;
  if (!qword_27CCFF8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CCFF8A0);
  }

  return result;
}

uint64_t sub_21A1ADBA8@<X0>(uint64_t *a1@<X8>)
{
  sub_21A1AE208(&qword_27CCFF8D0, type metadata accessor for RecipeAdViewModel);
  result = sub_21A2F7664();
  *a1 = result;
  return result;
}

uint64_t sub_21A1ADC20@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_21A176C98(&qword_27CCFF8C0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v9 - v4;
  v6 = type metadata accessor for RecipeAdViewModelSource(0);
  sub_21A2F7694();
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    result = sub_21A1427A8(v5, &qword_27CCFF8C0);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0;
  }

  else
  {
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_21A1AE208(&qword_27CCFF8C8, type metadata accessor for RecipeAdViewModelSource);
    v8 = sub_21A156050(a1);
    return sub_21A1AE250(v5, v8);
  }

  return result;
}

unsigned __int8 *sub_21A1ADD68()
{
  v1 = type metadata accessor for RecipeAdViewModelSource(0);
  v3 = MEMORY[0x28223BE20](v1, v2);
  v31[0] = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v32 = v31 - v7;
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = v31 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = v31 - v13;
  v15 = *v0;
  swift_getKeyPath();
  v35 = v15;
  sub_21A1AE208(&qword_27CCFF898, type metadata accessor for RecipeAdViewModel);
  sub_21A2F5094();

  v16 = *(v15 + 56);
  v17 = *(v15 + 64);
  v33 = v0;
  sub_21A1AE2B4(v0, v14);
  v31[1] = v1;
  sub_21A2F5434();
  sub_21A176C98(&qword_27CCFF0E8);
  sub_21A2F7594();
  sub_21A1AE318(v14);
  if (!v17)
  {
    if (!v36)
    {

      v18 = v33;
      goto LABEL_15;
    }

    goto LABEL_7;
  }

  if (!v36)
  {
LABEL_7:

    v18 = v33;
LABEL_8:
    sub_21A1AE2B4(v18, v11);
    sub_21A2F7594();
    sub_21A1AE318(v11);
    v19 = v35;
    v20 = v36;
    v21 = *(v15 + 56);
    v22 = *(v15 + 64);
    sub_21A2F5434();
    LOBYTE(v21) = sub_21A18F608(v21, v22, v19, v20);

    if (v21)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath, v24);
      v31[-4] = v15;
      v31[-3] = v19;
      v31[-2] = v20;
      v34 = v15;
      sub_21A2F5084();
    }

    else
    {
      *(v15 + 56) = v19;
      *(v15 + 64) = v20;
    }

    goto LABEL_15;
  }

  if (v16 == v35 && v17 == v36)
  {

    v18 = v33;
    goto LABEL_15;
  }

  v25 = sub_21A2F8394();

  v18 = v33;
  if ((v25 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_15:
  swift_getKeyPath();
  v35 = v15;
  sub_21A2F5094();

  v26 = *(v15 + 72);
  v27 = v32;
  sub_21A1AE2B4(v18, v32);
  sub_21A176C98(&qword_27CCFF8A8);
  sub_21A2F7594();
  result = sub_21A1AE318(v27);
  if (v26 == 2)
  {
    if (v35 == 2)
    {
      return result;
    }

LABEL_20:
    v29 = v18;
    v30 = v31[0];
    sub_21A1AE2B4(v29, v31[0]);
    sub_21A2F7594();
    sub_21A1AE318(v30);
    LOBYTE(v34) = v35;
    return sub_21A1AD5F4(&v34);
  }

  if (v35 == 2 || ((v35 ^ v26) & 1) != 0)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21A1AE208(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_21A1AE250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeAdViewModelSource(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1AE2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RecipeAdViewModelSource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21A1AE318(uint64_t a1)
{
  v2 = type metadata accessor for RecipeAdViewModelSource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21A1AE39C()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 56) = v0[3];
  *(v1 + 64) = v2;
  sub_21A2F5434();
}

uint64_t sub_21A1AE3F4(void *a1)
{
  v2 = v1;
  v4 = sub_21A2F6134();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_21A2F6EE4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = a1;
  result = [a1 state];
  if (result <= 2)
  {
    switch(result)
    {
      case 0:
        return result;
      case 1:
        v45 = *(v2 + 72);
        LOBYTE(v46) = *(v2 + 88);
        LOBYTE(v43) = 1;
        sub_21A176C98(&qword_27CCFF938);
        sub_21A2F7194();
        sub_21A176C98(&qword_27CCFF948);
        sub_21A2F65A4();
        sub_21A2F6304();
        sub_21A2F6ED4();
        v30 = v29;
        v32 = v31;
        (*(v5 + 8))(v8, v4);
        (*(v10 + 8))(v13, v9);
        v33 = v2[1];
        v45 = *v2;
        v46 = v33;
        *&v43 = v30;
        *(&v43 + 1) = v32;
        LOBYTE(v44) = 0;
        sub_21A176C98(&qword_27CCFF940);
        result = sub_21A2F7034();
LABEL_12:
        v34 = *(v2 + 12);
        if (v34)
        {
          return v34(result, v30, v32);
        }

        return result;
      case 2:
        v15 = v2[1];
        v45 = *v2;
        v46 = v15;
        v16 = v2[1];
        v43 = *v2;
        v44 = v16;
        v17 = sub_21A176C98(&qword_27CCFF940);
        sub_21A2F7024();
        v18 = v40;
        if (v42)
        {
          v43 = *(v2 + 72);
          LOBYTE(v44) = *(v2 + 88);
          LOBYTE(v40) = 0;
          v19 = v41;
          v20 = v18;
          sub_21A176C98(&qword_27CCFF938);
          sub_21A2F7194();
          v21 = v2[1];
          v43 = *v2;
          v44 = v21;
          v40 = v20;
          v41 = v19;
          v42 = 1;
LABEL_16:
          sub_21A2F7034();
          return [v39 setState_];
        }

        v38[1] = v17;
        sub_21A176C98(&qword_27CCFF948);
        sub_21A2F65A4();
        sub_21A2F6304();
        sub_21A2F6ED4();
        v30 = v35;
        v32 = v36;
        (*(v5 + 8))(v8, v4);
        (*(v10 + 8))(v13, v9);
        result = sub_21A2F7E64();
        if (v37 >= *(v2 + 8))
        {
          v43 = *(v2 + 72);
          LOBYTE(v44) = *(v2 + 88);
          LOBYTE(v40) = 0;
          sub_21A176C98(&qword_27CCFF938);
          sub_21A2F7194();
          v43 = v45;
          v44 = v46;
          v40 = 0;
          v41 = 0;
          v42 = 1;
          goto LABEL_16;
        }

        goto LABEL_12;
    }

LABEL_10:
    v45 = *(v2 + 72);
    LOBYTE(v46) = *(v2 + 88);
    LOBYTE(v43) = 0;
    sub_21A176C98(&qword_27CCFF938);
    sub_21A2F7194();
    v28 = v2[1];
    v45 = *v2;
    v46 = v28;
    v43 = 0uLL;
    LOBYTE(v44) = 1;
    sub_21A176C98(&qword_27CCFF940);
    return sub_21A2F7034();
  }

  if ((result - 3) >= 3)
  {
    goto LABEL_10;
  }

  v45 = *(v2 + 72);
  LOBYTE(v46) = *(v2 + 88);
  LOBYTE(v43) = 0;
  sub_21A176C98(&qword_27CCFF938);
  sub_21A2F7194();
  v22 = v2[1];
  v45 = *v2;
  v46 = v22;
  v43 = 0uLL;
  LOBYTE(v44) = 1;
  sub_21A176C98(&qword_27CCFF940);
  sub_21A2F7034();
  sub_21A176C98(&qword_27CCFF948);
  sub_21A2F65A4();
  sub_21A2F6304();
  sub_21A2F6ED4();
  v24 = v23;
  v26 = v25;
  (*(v5 + 8))(v8, v4);
  result = (*(v10 + 8))(v13, v9);
  v27 = *(v2 + 14);
  if (v27)
  {
    return v27([v39 state] == 3, v24, v26);
  }

  return result;
}