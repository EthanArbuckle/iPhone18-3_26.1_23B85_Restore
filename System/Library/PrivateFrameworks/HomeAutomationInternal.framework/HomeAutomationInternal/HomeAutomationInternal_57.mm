uint64_t sub_252D614AC()
{
  v1 = *(v0 + 2448);
  v2 = *(v0 + 2416);
  v3 = *(v0 + 2376);
  v4 = *(v0 + 2120);

  v21 = *(v0 + 2464);
  v5 = *(v0 + 2272);

  v6 = *(v0 + 2248);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);
  v12 = *(v0 + 2200);
  v13 = *(v0 + 2192);
  v14 = *(v0 + 2184);
  v15 = *(v0 + 2176);
  v18 = *(v0 + 2168);
  v19 = *(v0 + 2160);
  v20 = *(v0 + 2152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252D6161C()
{
  v1 = v0[266];
  v2 = v0[264];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[297];
  v9 = v0[263];
  (*(v4 + 112))(v7, v0 + 236, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 236);

  v10 = v0[284];
  v11 = v0[282];
  v12 = v0[281];
  v13 = v0[280];
  v14 = v0[279];
  v15 = v0[278];
  v16 = v0[277];
  v17 = v0[276];
  v18 = v0[275];
  v19 = v0[274];
  v22 = v0[273];
  v23 = v0[272];
  v24 = v0[271];
  v25 = v0[270];
  v26 = v0[269];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252D617F8()
{
  v1 = *(v0 + 2376);

  v18 = *(v0 + 2440);
  v2 = *(v0 + 2272);

  v3 = *(v0 + 2248);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2208);
  v9 = *(v0 + 2200);
  v10 = *(v0 + 2192);
  v11 = *(v0 + 2184);
  v12 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 2160);
  v17 = *(v0 + 2152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D61938(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2480);
  v6 = *v2;
  v4[311] = a1;
  v4[312] = v1;

  v7 = v3[283];
  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D61C00, 0, 0);
  }

  else
  {
    v8 = v4[265];
    swift_bridgeObjectRelease_n();
    v9 = swift_task_alloc();
    v4[313] = v9;
    *v9 = v6;
    v9[1] = sub_252D61AE8;
    v10 = v4[266];

    return sub_252E174F4(v8);
  }
}

uint64_t sub_252D61AE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2504);
  v7 = *v2;
  *(v3 + 2512) = a1;
  *(v3 + 2520) = v1;

  if (v1)
  {
    v5 = sub_252D6200C;
  }

  else
  {
    v5 = sub_252D61EB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D61C00()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2496);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D61D48()
{
  v2 = *v1;
  v3 = *(*v1 + 2528);
  v4 = *v1;
  *(*v1 + 2536) = v0;

  (*(v2[268] + 8))(v2[277], v2[267]);
  if (v0)
  {
    v5 = sub_252D62800;
  }

  else
  {
    v5 = sub_252D62624;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D61EB0()
{
  v1 = v0 + 260;
  v2 = v0[314];
  v3 = v0[311];
  v0[260] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[276];
  v9 = v0[266];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[318] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[319] = v12;
  *v12 = v0;
  v12[1] = sub_252D62160;
  v13 = v0[276];

  return sub_252BDB88C((v0 + 231), &unk_252E5DF90, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D6200C()
{
  v1 = *(v0 + 2472);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2520);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D62160()
{
  v2 = *v1;
  v3 = *(*v1 + 2552);
  v7 = *v1;
  *(*v1 + 2560) = v0;

  if (v0)
  {
    (*(v2[268] + 8))(v2[276], v2[267]);
    v4 = sub_252D624B4;
  }

  else
  {
    v5 = v2[318];
    (*(v2[268] + 8))(v2[276], v2[267]);

    v4 = sub_252D622B8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D622B8()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2512);
  v9 = *(v0 + 2488);
  v10 = *(v0 + 2472);
  v11 = *(v0 + 2120);
  v12 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 1848, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1848));

  v13 = *(v0 + 2272);
  v14 = *(v0 + 2256);
  v15 = *(v0 + 2248);
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2232);
  v18 = *(v0 + 2224);
  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2200);
  v22 = *(v0 + 2192);
  v25 = *(v0 + 2184);
  v26 = *(v0 + 2176);
  v27 = *(v0 + 2168);
  v28 = *(v0 + 2160);
  v29 = *(v0 + 2152);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_252D624B4()
{
  v1 = *(v0 + 2544);
  v2 = *(v0 + 2512);
  v3 = *(v0 + 2472);
  v4 = *(v0 + 2120);

  v21 = *(v0 + 2560);
  v5 = *(v0 + 2272);

  v6 = *(v0 + 2248);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);
  v12 = *(v0 + 2200);
  v13 = *(v0 + 2192);
  v14 = *(v0 + 2184);
  v15 = *(v0 + 2176);
  v18 = *(v0 + 2168);
  v19 = *(v0 + 2160);
  v20 = *(v0 + 2152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252D62624()
{
  v1 = v0[266];
  v2 = v0[264];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[309];
  v9 = v0[263];
  (*(v4 + 112))(v7, v0 + 226, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 226);

  v10 = v0[284];
  v11 = v0[282];
  v12 = v0[281];
  v13 = v0[280];
  v14 = v0[279];
  v15 = v0[278];
  v16 = v0[277];
  v17 = v0[276];
  v18 = v0[275];
  v19 = v0[274];
  v22 = v0[273];
  v23 = v0[272];
  v24 = v0[271];
  v25 = v0[270];
  v26 = v0[269];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252D62800()
{
  v1 = *(v0 + 2472);

  v18 = *(v0 + 2536);
  v2 = *(v0 + 2272);

  v3 = *(v0 + 2248);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2208);
  v9 = *(v0 + 2200);
  v10 = *(v0 + 2192);
  v11 = *(v0 + 2184);
  v12 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 2160);
  v17 = *(v0 + 2152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D62940(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2576);
  v6 = *v2;
  v4[323] = a1;
  v4[324] = v1;

  v7 = v3[283];
  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D62C08, 0, 0);
  }

  else
  {
    v8 = v4[265];
    swift_bridgeObjectRelease_n();
    v9 = swift_task_alloc();
    v4[325] = v9;
    *v9 = v6;
    v9[1] = sub_252D62AF0;
    v10 = v4[266];

    return sub_252E174F4(v8);
  }
}

uint64_t sub_252D62AF0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2600);
  v7 = *v2;
  *(v3 + 2608) = a1;
  *(v3 + 2616) = v1;

  if (v1)
  {
    v5 = sub_252D63014;
  }

  else
  {
    v5 = sub_252D62EB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D62C08()
{
  v1 = *(v0 + 2568);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2592);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D62D50()
{
  v2 = *v1;
  v3 = *(*v1 + 2624);
  v4 = *v1;
  *(*v1 + 2632) = v0;

  (*(v2[268] + 8))(v2[275], v2[267]);
  if (v0)
  {
    v5 = sub_252D63808;
  }

  else
  {
    v5 = sub_252D6362C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D62EB8()
{
  v1 = v0 + 259;
  v2 = v0[326];
  v3 = v0[323];
  v0[259] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[274];
  v9 = v0[266];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[330] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[331] = v12;
  *v12 = v0;
  v12[1] = sub_252D63168;
  v13 = v0[274];

  return sub_252BDB88C((v0 + 221), &unk_252E5DF78, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D63014()
{
  v1 = *(v0 + 2568);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2616);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D63168()
{
  v2 = *v1;
  v3 = *(*v1 + 2648);
  v7 = *v1;
  *(*v1 + 2656) = v0;

  if (v0)
  {
    (*(v2[268] + 8))(v2[274], v2[267]);
    v4 = sub_252D634BC;
  }

  else
  {
    v5 = v2[330];
    (*(v2[268] + 8))(v2[274], v2[267]);

    v4 = sub_252D632C0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D632C0()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2608);
  v9 = *(v0 + 2584);
  v10 = *(v0 + 2568);
  v11 = *(v0 + 2120);
  v12 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 1768, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1768));

  v13 = *(v0 + 2272);
  v14 = *(v0 + 2256);
  v15 = *(v0 + 2248);
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2232);
  v18 = *(v0 + 2224);
  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2200);
  v22 = *(v0 + 2192);
  v25 = *(v0 + 2184);
  v26 = *(v0 + 2176);
  v27 = *(v0 + 2168);
  v28 = *(v0 + 2160);
  v29 = *(v0 + 2152);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_252D634BC()
{
  v1 = *(v0 + 2640);
  v2 = *(v0 + 2608);
  v3 = *(v0 + 2568);
  v4 = *(v0 + 2120);

  v21 = *(v0 + 2656);
  v5 = *(v0 + 2272);

  v6 = *(v0 + 2248);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);
  v12 = *(v0 + 2200);
  v13 = *(v0 + 2192);
  v14 = *(v0 + 2184);
  v15 = *(v0 + 2176);
  v18 = *(v0 + 2168);
  v19 = *(v0 + 2160);
  v20 = *(v0 + 2152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252D6362C()
{
  v1 = v0[266];
  v2 = v0[264];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[321];
  v9 = v0[263];
  (*(v4 + 112))(v7, v0 + 216, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 216);

  v10 = v0[284];
  v11 = v0[282];
  v12 = v0[281];
  v13 = v0[280];
  v14 = v0[279];
  v15 = v0[278];
  v16 = v0[277];
  v17 = v0[276];
  v18 = v0[275];
  v19 = v0[274];
  v22 = v0[273];
  v23 = v0[272];
  v24 = v0[271];
  v25 = v0[270];
  v26 = v0[269];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252D63808()
{
  v1 = *(v0 + 2568);

  v18 = *(v0 + 2632);
  v2 = *(v0 + 2272);

  v3 = *(v0 + 2248);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2208);
  v9 = *(v0 + 2200);
  v10 = *(v0 + 2192);
  v11 = *(v0 + 2184);
  v12 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 2160);
  v17 = *(v0 + 2152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D63948(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2672);
  v6 = *v2;
  v4[335] = a1;
  v4[336] = v1;

  v7 = v3[333];
  if (v1)
  {
    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D63C10, 0, 0);
  }

  else
  {
    v8 = v4[265];
    swift_bridgeObjectRelease_n();
    v9 = swift_task_alloc();
    v4[337] = v9;
    *v9 = v6;
    v9[1] = sub_252D63AF8;
    v10 = v4[266];

    return sub_252E174F4(v8);
  }
}

uint64_t sub_252D63AF8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2696);
  v7 = *v2;
  *(v3 + 2704) = a1;
  *(v3 + 2712) = v1;

  if (v1)
  {
    v5 = sub_252D63EC0;
  }

  else
  {
    v5 = sub_252D63D64;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D63C10()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2128);
  v3 = *(v0 + 2120);

  v20 = *(v0 + 2688);
  v4 = *(v0 + 2272);

  v5 = *(v0 + 2248);
  v6 = *(v0 + 2240);
  v7 = *(v0 + 2232);
  v8 = *(v0 + 2224);
  v9 = *(v0 + 2216);
  v10 = *(v0 + 2208);
  v11 = *(v0 + 2200);
  v12 = *(v0 + 2192);
  v13 = *(v0 + 2184);
  v14 = *(v0 + 2176);
  v17 = *(v0 + 2168);
  v18 = *(v0 + 2160);
  v19 = *(v0 + 2152);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252D63D64()
{
  v1 = v0 + 258;
  v2 = v0[338];
  v3 = v0[335];
  v0[258] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[273];
  v9 = v0[266];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[340] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[341] = v12;
  *v12 = v0;
  v12[1] = sub_252D64020;
  v13 = v0[273];

  return sub_252BDB88C((v0 + 211), &unk_252E5DF60, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D63EC0()
{
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2128);
  v3 = *(v0 + 2120);

  v20 = *(v0 + 2712);
  v4 = *(v0 + 2272);

  v5 = *(v0 + 2248);
  v6 = *(v0 + 2240);
  v7 = *(v0 + 2232);
  v8 = *(v0 + 2224);
  v9 = *(v0 + 2216);
  v10 = *(v0 + 2208);
  v11 = *(v0 + 2200);
  v12 = *(v0 + 2192);
  v13 = *(v0 + 2184);
  v14 = *(v0 + 2176);
  v17 = *(v0 + 2168);
  v18 = *(v0 + 2160);
  v19 = *(v0 + 2152);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_252D64020()
{
  v2 = *v1;
  v3 = *(*v1 + 2728);
  v7 = *v1;
  *(*v1 + 2736) = v0;

  if (v0)
  {
    (*(v2[268] + 8))(v2[273], v2[267]);
    v4 = sub_252D64380;
  }

  else
  {
    v5 = v2[340];
    (*(v2[268] + 8))(v2[273], v2[267]);

    v4 = sub_252D64178;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D64178()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2704);
  v9 = *(v0 + 2680);
  v10 = *(v0 + 2664);
  v11 = *(v0 + 2128);
  v12 = *(v0 + 2120);
  v13 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 1688, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1688));

  v14 = *(v0 + 2272);
  v15 = *(v0 + 2256);
  v16 = *(v0 + 2248);
  v17 = *(v0 + 2240);
  v18 = *(v0 + 2232);
  v19 = *(v0 + 2224);
  v20 = *(v0 + 2216);
  v21 = *(v0 + 2208);
  v22 = *(v0 + 2200);
  v23 = *(v0 + 2192);
  v26 = *(v0 + 2184);
  v27 = *(v0 + 2176);
  v28 = *(v0 + 2168);
  v29 = *(v0 + 2160);
  v30 = *(v0 + 2152);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252D64380()
{
  v1 = *(v0 + 2720);
  v2 = *(v0 + 2704);
  v3 = *(v0 + 2664);
  v4 = *(v0 + 2128);
  v5 = *(v0 + 2120);

  v22 = *(v0 + 2736);
  v6 = *(v0 + 2272);

  v7 = *(v0 + 2248);
  v8 = *(v0 + 2240);
  v9 = *(v0 + 2232);
  v10 = *(v0 + 2224);
  v11 = *(v0 + 2216);
  v12 = *(v0 + 2208);
  v13 = *(v0 + 2200);
  v14 = *(v0 + 2192);
  v15 = *(v0 + 2184);
  v16 = *(v0 + 2176);
  v19 = *(v0 + 2168);
  v20 = *(v0 + 2160);
  v21 = *(v0 + 2152);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_252D644FC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2760);
  v6 = *v2;
  v4[346] = a1;
  v4[347] = v1;

  v7 = v3[343];
  v8 = v3[284];
  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D647F4, 0, 0);
  }

  else
  {
    v9 = v4[265];

    swift_bridgeObjectRelease_n();
    v10 = swift_task_alloc();
    v4[348] = v10;
    *v10 = v6;
    v10[1] = sub_252D646DC;
    v11 = v4[266];

    return sub_252E174F4(v9);
  }
}

uint64_t sub_252D646DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2784);
  v7 = *v2;
  *(v3 + 2792) = a1;
  *(v3 + 2800) = v1;

  if (v1)
  {
    v5 = sub_252D64C00;
  }

  else
  {
    v5 = sub_252D64AA4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D647F4()
{
  v1 = *(v0 + 2752);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2776);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D6493C()
{
  v2 = *v1;
  v3 = *(*v1 + 2808);
  v4 = *v1;
  *(*v1 + 2816) = v0;

  (*(v2[268] + 8))(v2[272], v2[267]);
  if (v0)
  {
    v5 = sub_252D653F4;
  }

  else
  {
    v5 = sub_252D65218;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D64AA4()
{
  v1 = v0 + 257;
  v2 = v0[349];
  v3 = v0[346];
  v0[257] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[271];
  v9 = v0[266];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[353] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[354] = v12;
  *v12 = v0;
  v12[1] = sub_252D64D54;
  v13 = v0[271];

  return sub_252BDB88C((v0 + 206), &unk_252E5DF58, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D64C00()
{
  v1 = *(v0 + 2752);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2800);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D64D54()
{
  v2 = *v1;
  v3 = *(*v1 + 2832);
  v7 = *v1;
  *(*v1 + 2840) = v0;

  if (v0)
  {
    (*(v2[268] + 8))(v2[271], v2[267]);
    v4 = sub_252D650A8;
  }

  else
  {
    v5 = v2[353];
    (*(v2[268] + 8))(v2[271], v2[267]);

    v4 = sub_252D64EAC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D64EAC()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2792);
  v9 = *(v0 + 2768);
  v10 = *(v0 + 2752);
  v11 = *(v0 + 2120);
  v12 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 1648, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1648));

  v13 = *(v0 + 2272);
  v14 = *(v0 + 2256);
  v15 = *(v0 + 2248);
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2232);
  v18 = *(v0 + 2224);
  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2200);
  v22 = *(v0 + 2192);
  v25 = *(v0 + 2184);
  v26 = *(v0 + 2176);
  v27 = *(v0 + 2168);
  v28 = *(v0 + 2160);
  v29 = *(v0 + 2152);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_252D650A8()
{
  v1 = *(v0 + 2824);
  v2 = *(v0 + 2792);
  v3 = *(v0 + 2752);
  v4 = *(v0 + 2120);

  v21 = *(v0 + 2840);
  v5 = *(v0 + 2272);

  v6 = *(v0 + 2248);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);
  v12 = *(v0 + 2200);
  v13 = *(v0 + 2192);
  v14 = *(v0 + 2184);
  v15 = *(v0 + 2176);
  v18 = *(v0 + 2168);
  v19 = *(v0 + 2160);
  v20 = *(v0 + 2152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252D65218()
{
  v1 = v0[266];
  v2 = v0[264];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[344];
  v9 = v0[263];
  (*(v4 + 112))(v7, v0 + 201, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 201);

  v10 = v0[284];
  v11 = v0[282];
  v12 = v0[281];
  v13 = v0[280];
  v14 = v0[279];
  v15 = v0[278];
  v16 = v0[277];
  v17 = v0[276];
  v18 = v0[275];
  v19 = v0[274];
  v22 = v0[273];
  v23 = v0[272];
  v24 = v0[271];
  v25 = v0[270];
  v26 = v0[269];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252D653F4()
{
  v1 = *(v0 + 2752);

  v18 = *(v0 + 2816);
  v2 = *(v0 + 2272);

  v3 = *(v0 + 2248);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2208);
  v9 = *(v0 + 2200);
  v10 = *(v0 + 2192);
  v11 = *(v0 + 2184);
  v12 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 2160);
  v17 = *(v0 + 2152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D65534(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 2856);
  v6 = *v2;
  v4[358] = a1;
  v4[359] = v1;

  v7 = v3[284];
  v8 = v3[283];
  if (v1)
  {

    swift_bridgeObjectRelease_n();

    return MEMORY[0x2822009F8](sub_252D6582C, 0, 0);
  }

  else
  {
    v9 = v4[265];

    swift_bridgeObjectRelease_n();
    v10 = swift_task_alloc();
    v4[360] = v10;
    *v10 = v6;
    v10[1] = sub_252D65714;
    v11 = v4[266];

    return sub_252E174F4(v9);
  }
}

uint64_t sub_252D65714(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 2880);
  v7 = *v2;
  *(v3 + 2888) = a1;
  *(v3 + 2896) = v1;

  if (v1)
  {
    v5 = sub_252D65C38;
  }

  else
  {
    v5 = sub_252D65ADC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D6582C()
{
  v1 = *(v0 + 2848);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2872);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D65974()
{
  v2 = *v1;
  v3 = *(*v1 + 2904);
  v4 = *v1;
  *(*v1 + 2912) = v0;

  (*(v2[268] + 8))(v2[270], v2[267]);
  if (v0)
  {
    v5 = sub_252D6642C;
  }

  else
  {
    v5 = sub_252D66250;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D65ADC()
{
  v1 = v0 + 256;
  v2 = v0[361];
  v3 = v0[358];
  v0[256] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[269];
  v9 = v0[266];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[365] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[366] = v12;
  *v12 = v0;
  v12[1] = sub_252D65D8C;
  v13 = v0[269];

  return sub_252BDB88C((v0 + 196), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D65C38()
{
  v1 = *(v0 + 2848);
  v2 = *(v0 + 2120);

  v19 = *(v0 + 2896);
  v3 = *(v0 + 2272);

  v4 = *(v0 + 2248);
  v5 = *(v0 + 2240);
  v6 = *(v0 + 2232);
  v7 = *(v0 + 2224);
  v8 = *(v0 + 2216);
  v9 = *(v0 + 2208);
  v10 = *(v0 + 2200);
  v11 = *(v0 + 2192);
  v12 = *(v0 + 2184);
  v13 = *(v0 + 2176);
  v16 = *(v0 + 2168);
  v17 = *(v0 + 2160);
  v18 = *(v0 + 2152);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_252D65D8C()
{
  v2 = *v1;
  v3 = *(*v1 + 2928);
  v7 = *v1;
  *(*v1 + 2936) = v0;

  if (v0)
  {
    (*(v2[268] + 8))(v2[269], v2[267]);
    v4 = sub_252D660E0;
  }

  else
  {
    v5 = v2[365];
    (*(v2[268] + 8))(v2[269], v2[267]);

    v4 = sub_252D65EE4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_252D65EE4()
{
  v1 = *(v0 + 2128);
  v2 = *(v0 + 2112);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 2888);
  v9 = *(v0 + 2864);
  v10 = *(v0 + 2848);
  v11 = *(v0 + 2120);
  v12 = *(v0 + 2104);
  (*(v4 + 112))(v7, v0 + 1568, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1568));

  v13 = *(v0 + 2272);
  v14 = *(v0 + 2256);
  v15 = *(v0 + 2248);
  v16 = *(v0 + 2240);
  v17 = *(v0 + 2232);
  v18 = *(v0 + 2224);
  v19 = *(v0 + 2216);
  v20 = *(v0 + 2208);
  v21 = *(v0 + 2200);
  v22 = *(v0 + 2192);
  v25 = *(v0 + 2184);
  v26 = *(v0 + 2176);
  v27 = *(v0 + 2168);
  v28 = *(v0 + 2160);
  v29 = *(v0 + 2152);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_252D660E0()
{
  v1 = *(v0 + 2920);
  v2 = *(v0 + 2888);
  v3 = *(v0 + 2848);
  v4 = *(v0 + 2120);

  v21 = *(v0 + 2936);
  v5 = *(v0 + 2272);

  v6 = *(v0 + 2248);
  v7 = *(v0 + 2240);
  v8 = *(v0 + 2232);
  v9 = *(v0 + 2224);
  v10 = *(v0 + 2216);
  v11 = *(v0 + 2208);
  v12 = *(v0 + 2200);
  v13 = *(v0 + 2192);
  v14 = *(v0 + 2184);
  v15 = *(v0 + 2176);
  v18 = *(v0 + 2168);
  v19 = *(v0 + 2160);
  v20 = *(v0 + 2152);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252D66250()
{
  v1 = v0[266];
  v2 = v0[264];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[356];
  v9 = v0[263];
  (*(v4 + 112))(v7, v0 + 191, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 191);

  v10 = v0[284];
  v11 = v0[282];
  v12 = v0[281];
  v13 = v0[280];
  v14 = v0[279];
  v15 = v0[278];
  v16 = v0[277];
  v17 = v0[276];
  v18 = v0[275];
  v19 = v0[274];
  v22 = v0[273];
  v23 = v0[272];
  v24 = v0[271];
  v25 = v0[270];
  v26 = v0[269];

  v20 = v0[1];

  return v20();
}

uint64_t sub_252D6642C()
{
  v1 = *(v0 + 2848);

  v18 = *(v0 + 2912);
  v2 = *(v0 + 2272);

  v3 = *(v0 + 2248);
  v4 = *(v0 + 2240);
  v5 = *(v0 + 2232);
  v6 = *(v0 + 2224);
  v7 = *(v0 + 2216);
  v8 = *(v0 + 2208);
  v9 = *(v0 + 2200);
  v10 = *(v0 + 2192);
  v11 = *(v0 + 2184);
  v12 = *(v0 + 2176);
  v15 = *(v0 + 2168);
  v16 = *(v0 + 2160);
  v17 = *(v0 + 2152);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_252D6656C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D66590, 0, 0);
}

uint64_t sub_252D66590()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252D671B4;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C10E14(0, v3, v5, v6);
}

uint64_t sub_252D66674(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D66694, 0, 0);
}

uint64_t sub_252D66694()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_25299F248;
  v4 = v0[3];

  return sub_252C11240(0, v2, v4);
}

uint64_t sub_252D66768(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D66788, 0, 0);
}

uint64_t sub_252D66788()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2529CC350;
  v4 = v0[3];

  return sub_252C113F8(0, v2, v4);
}

uint64_t sub_252D6685C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D6687C, 0, 0);
}

uint64_t sub_252D6687C()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_2529CC350;
  v4 = v0[3];

  return sub_252C115B4(0, v2, v4);
}

uint64_t sub_252D66950(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D66974, 0, 0);
}

uint64_t sub_252D66974()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252BCD050;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C11770(0, v3, v5, v6);
}

uint64_t sub_252D66A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_252D66A7C, 0, 0);
}

uint64_t sub_252D66A7C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_252D671B4;
  v5 = v0[3];
  v6 = v0[4];

  return sub_252C11770(0, v3, v5, v6);
}

uint64_t sub_252D66B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D5E040(a1, a2, a3);
}

void *sub_252D66C3C@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetSensorMeasurementResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D66CA0(void *a1)
{
  v2 = [a1 userTask];
  if (v2)
  {
    v3 = v2;
    v4 = [a1 userTask];
    if (v4)
    {
      v5 = v4;
      if ([v4 taskType] == 4)
      {

LABEL_8:
        if (qword_27F53F708 != -1)
        {
          swift_once();
        }

        v6 = sub_252DB4F4C([v3 attribute], qword_27F545A30);
        goto LABEL_12;
      }

      v7 = [v5 taskType];

      if (v7 == 5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_252C515AC();
    }

    v6 = 0;
LABEL_12:

    return v6 & 1;
  }

  v6 = 0;
  return v6 & 1;
}

uint64_t sub_252D66DAC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D66A58(v2, v3, v4);
}

uint64_t sub_252D66E54()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D66950(v2, v3, v4);
}

uint64_t sub_252D66EFC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D6685C(v2, v3);
}

uint64_t sub_252D66F94()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D66768(v2, v3);
}

uint64_t sub_252D6702C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D66674(v2, v3);
}

uint64_t objectdestroyTm_5()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_252D6710C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D6656C(v2, v3, v4);
}

uint64_t type metadata accessor for ZoneEntity()
{
  result = qword_27F545A58;
  if (!qword_27F545A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D67254(uint64_t a1)
{
  v3 = sub_252E36454();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 48);
  v9 = *(v1 + 52);
  v10 = swift_allocObject();
  v11 = qword_27F545A48;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v11) = sub_252E36734();
  v15 = qword_27F545A50;
  v16 = *(v12 + 48);
  v17 = *(v12 + 52);
  swift_allocObject();
  *(v10 + v15) = sub_252E36734();
  (*(v4 + 16))(v7, a1, v3);
  v18 = sub_252E364B4();
  (*(v4 + 8))(a1, v3);
  return v18;
}

uint64_t sub_252D673D4()
{
  v1 = *(v0 + qword_27F545A48);

  v2 = *(v0 + qword_27F545A50);
}

uint64_t sub_252D67414()
{
  v0 = sub_252E364A4();
  v1 = *(v0 + qword_27F545A48);

  v2 = *(v0 + qword_27F545A50);

  return swift_deallocClassInstance();
}

uint64_t sub_252D67490()
{
  v0 = *aComAppleHome_4;

  return v0;
}

uint64_t sub_252D674E4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_252D67544(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_252D67598(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_252D67798(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ZoneEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_252D677E0(void *a1)
{
  v3 = [a1 matterNodeID];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 unsignedLongLongValue];

    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v5;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
  }

  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544CB8);
  sub_252E379F4();

  v7 = [a1 name];
  v8 = sub_252E36F34();
  v10 = v9;

  MEMORY[0x2530AD570](v8, v10);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
  sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

LABEL_8:

  return sub_252D4CE7C(a1);
}

void *sub_252D679B8(uint64_t *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  return sub_252D67A04(a1);
}

void *sub_252D67A04(uint64_t *a1)
{
  v3 = sub_252E32E84();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v13 = a1[3];
  v12 = a1[4];
  v54 = a1;
  v14 = __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v16 = v54;
  }

  else
  {
    v15 = v8;
    LOBYTE(v55[0]) = 0;
    sub_252950ADC(&qword_27F540498);
    sub_252E37C64();
    v20 = v3;
    LOBYTE(v56) = 1;
    sub_252950A60();
    sub_252E37C64();
    v21 = v54;
    v22 = v6;
    v23 = v55[0];
    LOBYTE(v55[0]) = 2;
    v50 = sub_252E37C04();
    v51 = v23;
    v52 = v24;
    LOBYTE(v55[0]) = 3;
    v25 = sub_252E37BA4();
    v45 = v15;
    v48 = v11;
    v49 = v20;
    v26 = v25;
    v28 = v27;
    type metadata accessor for HomeStore();
    v29 = static HomeStore.shared.getter();
    v30 = sub_2529D9D50();

    MEMORY[0x28223BE20](v31);
    v32 = v50;
    *(&v44 - 6) = v22;
    *(&v44 - 5) = v32;
    v33 = v51;
    *(&v44 - 4) = v52;
    *(&v44 - 3) = v26;
    v46 = v26;
    v47 = v28;
    *(&v44 - 2) = v28;
    *(&v44 - 1) = v33;
    v34 = sub_2529A3DE8(sub_252CDD62C, (&v44 - 8), v30);

    if (v34)
    {
      type metadata accessor for MatterAccessory();
      v35 = swift_dynamicCastClass();
      if (v35)
      {
        v36 = v35;

        v37 = *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);

        *(v58 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v37;
        sub_252929E74(v21, v55);
        v14 = sub_252D4D438(v55);
        (*(v15 + 8))(v48, v7);

        v43 = *(v53 + 8);

        v43(v22, v49);
        __swift_destroy_boxed_opaque_existential_1(v21);

        return v14;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v38 = sub_252E36AD4();
    v39 = __swift_project_value_buffer(v38, qword_27F544CB8);
    sub_252CC4050(0xD000000000000026, 0x8000000252E97840, 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);
    strcpy(v55, "identifier: ");
    BYTE5(v55[1]) = 0;
    HIWORD(v55[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8);
    v44 = v22;
    v40 = sub_252E37D94();
    MEMORY[0x2530AD570](v40);

    sub_252CC4050(v55[0], v55[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v55[0] = 0x203A656D616ELL;
    v55[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v50, v52);

    sub_252CC4050(v55[0], v55[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    v55[0] = 0;
    v55[1] = 0xE000000000000000;
    sub_252E379F4();

    v55[0] = 0xD000000000000015;
    v55[1] = 0x8000000252E6AA20;
    v56 = v46;
    v57 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v41 = sub_252E36F94();
    MEMORY[0x2530AD570](v41);

    sub_252CC4050(v55[0], v55[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    strcpy(v55, "entityType: ");
    BYTE5(v55[1]) = 0;
    HIWORD(v55[1]) = -5120;
    v56 = v51;
    v42 = sub_252E36F94();
    MEMORY[0x2530AD570](v42);

    v14 = v39;
    sub_252CC4050(v55[0], v55[1], 0xD000000000000075, 0x8000000252E6B7C0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v45 + 8))(v48, v7);
    (*(v53 + 8))(v44, v49);
    v16 = v21;
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  type metadata accessor for MatterAccessory();
  v17 = *(*v58 + 48);
  v18 = *(*v58 + 52);
  swift_deallocPartialClassInstance();
  return v14;
}

void *sub_252D68274()
{
  v1 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v2 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v8 = *&v1[v2];
    }

    v9 = sub_252E378C4();

    if (!v9)
    {
      return sub_252CC479C(MEMORY[0x277D84F90]);
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v4)
    {
      return sub_252CC479C(MEMORY[0x277D84F90]);
    }
  }

  v5 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v6 = sub_252AC0884(v0);

  if (v6)
  {
    return v6;
  }

  return sub_252CC479C(MEMORY[0x277D84F90]);
}

uint64_t sub_252D68360(uint64_t (*a1)(uint64_t))
{
  v3 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v4 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v5 = *&v3[v4];
  if (v5 >> 62)
  {
    if (v5 < 0)
    {
      v11 = *&v3[v4];
    }

    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v9 = a1(v1);

    if (v9)
    {
      return v9;
    }
  }

  return v7;
}

uint64_t sub_252D6841C()
{
  v1 = sub_252E32E84();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v26 = sub_252E32E24();
  v27 = v7;
  (*(v2 + 8))(v5, v1);
  v8 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v9 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v25 = v8;
  v10 = *&v8[v9];
  if (v10 >> 62)
  {
LABEL_33:
    v11 = sub_252E378C4();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v11)
  {
LABEL_17:

    if (qword_27F53F560 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544EC8);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E6B840);
    v19 = v26;
    v18 = v27;
    MEMORY[0x2530AD570](v26, v27);
    sub_252CC4050(v28, v29, 0xD00000000000007CLL, 0x8000000252E6B890, 0xD000000000000012, 0x8000000252E6B910, 375);

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v17, qword_27F544CB8);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E6B930);
    MEMORY[0x2530AD570](v19, v18);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
    sub_252CC4050(v28, v29, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 96);
    goto LABEL_31;
  }

  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x2530ADF00](v12, v10);
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_33;
      }

      v14 = *(v10 + 8 * v12 + 32);

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_16;
      }
    }

    v16 = *(v14 + qword_27F5427D0);

    sub_252E36744();

    if (v29)
    {
      if (v28 == v26 && v29 == v27)
      {

        goto LABEL_23;
      }

      v13 = sub_252E37DB4();

      if (v13)
      {
        break;
      }
    }

    ++v12;
    if (v15 == v11)
    {
      goto LABEL_17;
    }
  }

LABEL_23:

  v20 = sub_252BF8258(v14);
  if (!v20)
  {
LABEL_28:
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v24 = sub_252E36AD4();
    __swift_project_value_buffer(v24, qword_27F544CB8);
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E6B760);
    MEMORY[0x2530AD570](v26, v27);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E6B7A0);
    sub_252CC4050(v28, v29, 0xD000000000000075, 0x8000000252E6B7C0, 1701869940, 0xE400000000000000, 102);

LABEL_31:

    return 46;
  }

  if (!*(v20 + 2))
  {

    goto LABEL_28;
  }

  v21 = v20;

  if (*(v21 + 2))
  {
    v23 = *(v21 + 4);

    return v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_252D68998()
{
  if ((sub_252D6841C() & 0xFFFFFFFFFFFFFFFELL) != 0x2E)
  {
    return MEMORY[0x277D84FA0];
  }

  return sub_2529FC004(&unk_2864A0E50);
}

uint64_t sub_252D689E4()
{
  v1 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v2 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v3 = *&v1[v2];
  if (v3 >> 62)
  {
    if (v3 < 0)
    {
      v13 = *&v1[v2];
    }

    v4 = sub_252E378C4();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v16 = MEMORY[0x277D84F90];
    v6 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v7 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v8 = *&v6[v7];
    if (v8 >> 62)
    {
      if (v8 < 0)
      {
        v14 = *&v6[v7];
      }

      v15 = sub_252E378C4();

      if (!v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v9)
      {
        goto LABEL_14;
      }
    }

    v10 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v11 = sub_252AC0884(v0);

    if (v11)
    {
      v12 = v11;
LABEL_15:
      sub_25297B69C(v12);
      return v16;
    }

LABEL_14:
    v12 = sub_252CC479C(MEMORY[0x277D84F90]);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_252D68B10(void *a1)
{
  if (sub_252D6841C() == 46)
  {

    return sub_25292AB64(a1);
  }

  else
  {

    return sub_252D50560(a1);
  }
}

uint64_t sub_252D68B70(void *a1)
{
  v2 = v1;
  v4 = sub_252E36AD4();
  v125 = *(v4 - 8);
  v5 = *(v125 + 64);
  MEMORY[0x28223BE20](v4);
  v126 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_252D6841C() != 46)
  {
    v18 = 0;
    return v18 & 1;
  }

  v7 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name];
  v8 = *&v1[OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8];
  v9 = [a1 outerDeviceName];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_252E36F34();
  v13 = v12;

  if (v7 == v11 && v8 == v13)
  {
  }

  else
  {
    v15 = sub_252E37DB4();

    if ((v15 & 1) == 0)
    {
LABEL_8:
      v16 = sub_252D6841C();
      v17 = v16 == [a1 outerDeviceType];
      goto LABEL_12;
    }
  }

  v17 = 1;
LABEL_12:
  v19 = [a1 targetArea];
  v123 = v4;
  v119 = a1;
  v118 = v17;
  if (!v19)
  {
    goto LABEL_37;
  }

  v20 = v19;
  v121 = sub_252E36F34();
  v22 = v21;

  v23 = [a1 targetMap];
  if (!v23)
  {

LABEL_37:
    v43 = [a1 targetArea];
    if (v43)
    {
      v44 = v43;
      v122 = sub_252E36F34();
      v124 = v45;

      v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v46 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
      swift_beginAccess();
      v47 = *(v26 + v46);
      if (v47 >> 62)
      {
        if (v47 < 0)
        {
          v100 = *(v26 + v46);
        }

        v48 = sub_252E378C4();
      }

      else
      {
        v48 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v49 = MEMORY[0x277D84F90];
      if (v48)
      {
        v50 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v26 = sub_252AC0F68(v2);

        if (v26)
        {
          v49 = v26;
        }
      }

      if (v49 >> 62)
      {
        v51 = sub_252E378C4();
        if (v51)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v51 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v51)
        {
LABEL_45:
          v52 = 0;
          v2 = (v49 & 0xFFFFFFFFFFFFFF8);
          do
          {
            if ((v49 & 0xC000000000000001) != 0)
            {
              v53 = MEMORY[0x2530ADF00](v52, v49);
            }

            else
            {
              if (v52 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_91;
              }

              v53 = *(v49 + 8 * v52 + 32);
            }

            v26 = v53;
            v54 = v52 + 1;
            if (__OFADD__(v52, 1))
            {
              goto LABEL_90;
            }

            v55 = [v53 name];
            if (v55)
            {
              v56 = v55;
              v57 = sub_252E36F34();
              v59 = v58;

              if (v57 == v122 && v59 == v124)
              {
                goto LABEL_83;
              }

              v61 = sub_252E37DB4();

              if (v61)
              {
                goto LABEL_84;
              }
            }

            else
            {
            }

            ++v52;
          }

          while (v54 != v51);
        }
      }

LABEL_137:

      v81 = 0;
      goto LABEL_138;
    }

    v62 = [a1 targetMap];
    if (!v62)
    {
      goto LABEL_121;
    }

    v63 = v62;
    v122 = sub_252E36F34();
    v124 = v64;

    v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v65 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v66 = *(v26 + v65);
    if (v66 >> 62)
    {
      if (v66 < 0)
      {
        v101 = *(v26 + v65);
      }

      v67 = sub_252E378C4();
    }

    else
    {
      v67 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v68 = MEMORY[0x277D84F90];
    if (v67)
    {
      v69 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v26 = sub_252AC11C8(v2);

      if (v26)
      {
        v68 = v26;
      }
    }

    if (v68 >> 62)
    {
      v70 = sub_252E378C4();
      if (!v70)
      {
        goto LABEL_137;
      }
    }

    else
    {
      v70 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v70)
      {
        goto LABEL_137;
      }
    }

    v71 = 0;
    v2 = (v68 & 0xFFFFFFFFFFFFFF8);
    while (1)
    {
      if ((v68 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x2530ADF00](v71, v68);
      }

      else
      {
        if (v71 >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_93;
        }

        v72 = *(v68 + 8 * v71 + 32);
      }

      v26 = v72;
      v73 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        goto LABEL_92;
      }

      v74 = [v72 name];
      if (v74)
      {
        v75 = v74;
        v76 = sub_252E36F34();
        v78 = v77;

        if (v76 == v122 && v78 == v124)
        {
LABEL_83:

          goto LABEL_85;
        }

        v80 = sub_252E37DB4();

        if (v80)
        {
LABEL_84:

LABEL_85:
          v81 = 1;
LABEL_138:
          v4 = v123;
          goto LABEL_139;
        }
      }

      else
      {
      }

      ++v71;
      if (v73 == v70)
      {
        goto LABEL_137;
      }
    }
  }

  v124 = v22;
  v24 = v23;
  v120 = sub_252E36F34();
  v122 = v25;

  v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v27 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v28 = *(v26 + v27);
  if (v28 >> 62)
  {
    goto LABEL_94;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v30 = MEMORY[0x277D84F90];
    if (i)
    {
      v31 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v32 = sub_252AC0F68(v2);

      if (v32)
      {
        v30 = v32;
      }
    }

    v117 = v2;
    if (v30 >> 62)
    {
      break;
    }

    v33 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v33)
    {
      goto LABEL_96;
    }

LABEL_21:
    v26 = 0;
    while (1)
    {
      if ((v30 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x2530ADF00](v26, v30);
      }

      else
      {
        if (v26 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_89;
        }

        v34 = *(v30 + 8 * v26 + 32);
      }

      v35 = v34;
      v36 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      v37 = [v34 name];
      if (v37)
      {
        v2 = v37;
        v38 = sub_252E36F34();
        v40 = v39;

        if (v38 == v121 && v40 == v124)
        {

          goto LABEL_87;
        }

        v42 = sub_252E37DB4();

        if (v42)
        {

LABEL_87:
          LODWORD(v124) = 0;
          goto LABEL_97;
        }
      }

      else
      {
      }

      ++v26;
      if (v36 == v33)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    ;
  }

  v33 = sub_252E378C4();
  if (v33)
  {
    goto LABEL_21;
  }

LABEL_96:

  LODWORD(v124) = 1;
LABEL_97:
  v82 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v83 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v84 = *(v82 + v83);
  v85 = v117;
  if (v84 >> 62)
  {
LABEL_124:
    v86 = sub_252E378C4();
  }

  else
  {
    v86 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = MEMORY[0x277D84F90];
  if (v86)
  {
    v88 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v89 = sub_252AC11C8(v85);

    if (v89)
    {
      v87 = v89;
    }
  }

  if (!(v87 >> 62))
  {
    v90 = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v90)
    {
      goto LABEL_104;
    }

LABEL_126:

    v4 = v123;
LABEL_127:
    v81 = 0;
    goto LABEL_139;
  }

  v90 = sub_252E378C4();
  if (!v90)
  {
    goto LABEL_126;
  }

LABEL_104:
  v82 = 0;
  while (2)
  {
    if ((v87 & 0xC000000000000001) != 0)
    {
      v91 = MEMORY[0x2530ADF00](v82, v87);
    }

    else
    {
      if (v82 >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_123;
      }

      v91 = *(v87 + 8 * v82 + 32);
    }

    v85 = v91;
    v92 = (v82 + 1);
    if (__OFADD__(v82, 1))
    {
      __break(1u);
LABEL_123:
      __break(1u);
      goto LABEL_124;
    }

    v93 = [v91 name];
    if (!v93)
    {

LABEL_106:
      ++v82;
      if (v92 == v90)
      {
        goto LABEL_126;
      }

      continue;
    }

    break;
  }

  v94 = v93;
  v95 = sub_252E36F34();
  v97 = v96;

  if (v95 != v120 || v97 != v122)
  {
    v99 = sub_252E37DB4();

    if (v99)
    {

      goto LABEL_120;
    }

    goto LABEL_106;
  }

LABEL_120:
  v4 = v123;
  if (v124)
  {
    goto LABEL_127;
  }

LABEL_121:
  v81 = 1;
LABEL_139:
  if (qword_27F53F4B0 != -1)
  {
    swift_once();
  }

  v102 = __swift_project_value_buffer(v4, qword_27F544CB8);
  v103 = v125;
  (*(v125 + 16))(v126, v102, v4);
  v127 = 0;
  v128 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E98B00);
  v104 = v118;
  v18 = v118 & v81;
  if ((v118 & v81) != 0)
  {
    v105 = 1702195828;
  }

  else
  {
    v105 = 0x65736C6166;
  }

  if ((v118 & v81) != 0)
  {
    v106 = 0xE400000000000000;
  }

  else
  {
    v106 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v105, v106);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E98B20);
  if (v104)
  {
    v107 = 1702195828;
  }

  else
  {
    v107 = 0x65736C6166;
  }

  if (v104)
  {
    v108 = 0xE400000000000000;
  }

  else
  {
    v108 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v107, v108);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E98B40);
  if (v81)
  {
    v109 = 1702195828;
  }

  else
  {
    v109 = 0x65736C6166;
  }

  if (v81)
  {
    v110 = 0xE400000000000000;
  }

  else
  {
    v110 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v109, v110);

  MEMORY[0x2530AD570](0x3A7265746C69660ALL, 0xE900000000000020);
  v111 = [v119 description];
  v112 = sub_252E36F34();
  v114 = v113;

  MEMORY[0x2530AD570](v112, v114);

  v115 = v126;
  sub_252CC3D90(v127, v128, 0xD000000000000075, 0x8000000252E6B7C0);

  (*(v103 + 8))(v115, v123);
  return v18 & 1;
}

uint64_t sub_252D696D4(uint64_t a1)
{
  v2 = v1;
  v17 = sub_252E32E24();
  v18 = v4;
  v16 = &v17;
  v5 = sub_2529ED970(sub_25296A69C, v15, a1);

  if (v5)
  {
    goto LABEL_6;
  }

  v6 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
  if (v6)
  {
    v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    v8 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
  }

  else
  {
    v8 = 0xE400000000000000;
    v7 = 1701736302;
  }

  v17 = v7;
  v18 = v8;
  MEMORY[0x28223BE20](v6);
  v14 = &v17;

  v9 = sub_2529ED970(sub_25296A724, v13, a1);

  if (v9)
  {
LABEL_6:
    v10 = 1;
  }

  else
  {
    v17 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);
    v17 = sub_252E37D94();
    v18 = v11;
    MEMORY[0x28223BE20](v17);
    v14 = &v17;
    v10 = sub_2529ED970(sub_25296A724, v13, a1);
  }

  return v10 & 1;
}

uint64_t sub_252D69894()
{
  v1 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0();
  sub_252929E74((v1 + 192), v5);

  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 32))(v0, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_252D69924()
{
  v1 = v0;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89[0] = 0;
  v89[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v89, "matterNodeID: ");
  HIBYTE(v89[1]) = -18;
  v85 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);
  v7 = sub_252E37D94();
  MEMORY[0x2530AD570](v7);

  v8 = v89[1];
  v82 = v89[0];
  strcpy(v89, "accessoryID: ");
  HIWORD(v89[1]) = -4864;
  v9 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v10 = sub_252E32E24();
  v12 = v11;
  (*(v3 + 8))(v6, v2);
  MEMORY[0x2530AD570](v10, v12);

  v14 = v89[0];
  v13 = v89[1];
  strcpy(v89, "deviceType: ");
  BYTE5(v89[1]) = 0;
  HIWORD(v89[1]) = -5120;
  v15 = sub_252D6841C();
  v16 = HomeDeviceType.description.getter(v15);
  MEMORY[0x2530AD570](v16);

  v17 = v89[1];
  v80 = v89[0];
  v18 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
  v19 = &unk_27F542000;
  v20 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
  swift_beginAccess();
  v21 = *&v18[v20];
  if (v21 >> 62)
  {
LABEL_32:
    v22 = sub_252E378C4();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v81 = v17;
  if (v22)
  {
    v23 = 0xE000000000000000;
    if (sub_252D6841C() == 46)
    {
      v85 = 0;
      v86 = 0xE000000000000000;
      sub_252E379F4();

      v83 = 0xD000000000000012;
      v84 = 0x8000000252E98A60;
      v24 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v25 = *(v19 + 3432);
      swift_beginAccess();
      v26 = *&v24[v25];
      v77 = v8;
      if (v26 >> 62)
      {
        v27 = sub_252E378C4();
      }

      else
      {
        v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = MEMORY[0x277D84F90];
      if (v27)
      {
        v28 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v29 = sub_252AC0F68(v1);

        if (v29)
        {
          v19 = v29;
        }
      }

      v78 = v1;
      v75 = v14;
      v76 = v13;
      v1 = v19 & 0xFFFFFFFFFFFFFF8;
      if (v19 >> 62)
      {
        v18 = sub_252E378C4();
        v17 = &off_279711000;
        if (v18)
        {
LABEL_12:
          v14 = 0;
          v13 = v19 & 0xC000000000000001;
          v30 = MEMORY[0x277D84F90];
          do
          {
            v31 = v14;
            while (1)
            {
              if (v13)
              {
                v32 = MEMORY[0x2530ADF00](v31, v19);
              }

              else
              {
                if (v31 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_31;
                }

                v32 = *(v19 + 8 * v31 + 32);
              }

              v8 = v32;
              v14 = (v31 + 1);
              if (__OFADD__(v31, 1))
              {
                __break(1u);
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }

              v33 = [v32 name];
              if (v33)
              {
                break;
              }

              ++v31;
              if (v14 == v18)
              {
                goto LABEL_36;
              }
            }

            v34 = v33;
            v35 = sub_252E36F34();
            v79 = v36;

            v8 = v35;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v30 = sub_2529F7A80(0, *(v30 + 2) + 1, 1, v30);
            }

            v38 = *(v30 + 2);
            v37 = *(v30 + 3);
            if (v38 >= v37 >> 1)
            {
              v30 = sub_2529F7A80((v37 > 1), v38 + 1, 1, v30);
            }

            *(v30 + 2) = v38 + 1;
            v39 = &v30[16 * v38];
            v40 = v79;
            *(v39 + 4) = v8;
            *(v39 + 5) = v40;
          }

          while (v14 != v18);
LABEL_36:

          v43 = MEMORY[0x2530AD730](v30, MEMORY[0x277D837D0]);
          v45 = v44;

          MEMORY[0x2530AD570](v43, v45);

          v46 = v83;
          v47 = v84;
          v83 = 0;
          v84 = 0xE000000000000000;
          sub_252E379F4();

          v87 = 0xD000000000000011;
          v88 = 0x8000000252E98A80;
          v48 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
          v49 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
          swift_beginAccess();
          v50 = *&v48[v49];
          v73 = v47;
          v74 = v46;
          if (v50 >> 62)
          {
LABEL_61:
            v51 = sub_252E378C4();
          }

          else
          {
            v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v52 = MEMORY[0x277D84F90];
          if (v51)
          {
            v53 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
            v54 = sub_252AC11C8(v78);

            if (v54)
            {
              v52 = v54;
            }
          }

          if (v52 >> 62)
          {
            v48 = sub_252E378C4();
            if (v48)
            {
LABEL_43:
              v55 = 0;
              v56 = MEMORY[0x277D84F90];
              do
              {
                v57 = v55;
                while (1)
                {
                  if ((v52 & 0xC000000000000001) != 0)
                  {
                    v58 = MEMORY[0x2530ADF00](v57, v52);
                  }

                  else
                  {
                    if (v57 >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_60;
                    }

                    v58 = *(v52 + 8 * v57 + 32);
                  }

                  v59 = v58;
                  v55 = (v57 + 1);
                  if (__OFADD__(v57, 1))
                  {
                    __break(1u);
LABEL_60:
                    __break(1u);
                    goto LABEL_61;
                  }

                  v60 = [v58 name];
                  if (v60)
                  {
                    break;
                  }

                  ++v57;
                  if (v55 == v48)
                  {
                    goto LABEL_64;
                  }
                }

                v61 = v60;
                v79 = sub_252E36F34();
                v63 = v62;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v56 = sub_2529F7A80(0, *(v56 + 2) + 1, 1, v56);
                }

                v65 = *(v56 + 2);
                v64 = *(v56 + 3);
                if (v65 >= v64 >> 1)
                {
                  v56 = sub_2529F7A80((v64 > 1), v65 + 1, 1, v56);
                }

                *(v56 + 2) = v65 + 1;
                v66 = &v56[16 * v65];
                *(v66 + 4) = v79;
                *(v66 + 5) = v63;
              }

              while (v55 != v48);
              goto LABEL_64;
            }
          }

          else
          {
            v48 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v48)
            {
              goto LABEL_43;
            }
          }

          v56 = MEMORY[0x277D84F90];
LABEL_64:

          v67 = MEMORY[0x2530AD730](v56, MEMORY[0x277D837D0]);
          v69 = v68;

          MEMORY[0x2530AD570](v67, v69);

          MEMORY[0x2530AD570](32, 0xE100000000000000);
          v23 = v88;
          v79 = v87;
          v8 = v77;
          v1 = v78;
          v14 = v75;
          v13 = v76;
          v42 = v73;
          v41 = v74;
          goto LABEL_65;
        }
      }

      else
      {
        v18 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v17 = &off_279711000;
        if (v18)
        {
          goto LABEL_12;
        }
      }

      v30 = MEMORY[0x277D84F90];
      goto LABEL_36;
    }

    v79 = 0;
    v41 = 0;
    v42 = 0xE000000000000000;
  }

  else
  {
    v79 = 0;
    v41 = 0;
    v23 = 0xE000000000000000;
    v42 = 0xE000000000000000;
  }

LABEL_65:
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_252E379F4();
  v71 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v70 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v87 = v71;
  v88 = v70;
  MEMORY[0x2530AD570](2128672, 0xE300000000000000);
  MEMORY[0x2530AD570](v82, v8);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v14, v13);

  MEMORY[0x2530AD570](8236, 0xE200000000000000);
  MEMORY[0x2530AD570](v80, v81);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  MEMORY[0x2530AD570](v41, v42);

  MEMORY[0x2530AD570](v79, v23);

  MEMORY[0x2530AD570](125, 0xE100000000000000);
  return v87;
}

uint64_t sub_252D6A178()
{
  v1 = v0;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
  sub_252E32E64();

  v8 = sub_252E32E24();
  v10 = v9;
  (*(v3 + 8))(v6, v2);
  v104[0] = 0;
  v104[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v104, "matterNodeID: ");
  HIBYTE(v104[1]) = -18;
  v100 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID);
  v11 = sub_252E37D94();
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](0x656369766564202CLL, 0xEE00203A65707954);
  v12 = sub_252D6841C();
  v13 = HomeDeviceType.description.getter(v12);
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0x737365636361202CLL, 0xEF203A444979726FLL);
  MEMORY[0x2530AD570](v8, v10);

  v14 = sub_252AD24A4();
  v16 = v15;

  v17 = sub_2529F7A80(0, 1, 1, MEMORY[0x277D84F90]);
  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  v20 = (v19 + 1);
  if (v19 >= v18 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    *(v17 + 2) = v20;
    v21 = &v17[16 * v19];
    *(v21 + 4) = v14;
    *(v21 + 5) = v16;
    v22 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v20 = &qword_27F542000;
    v23 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v24 = *&v22[v23];
    if (v24 >> 62)
    {
      break;
    }

    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v25)
    {
      goto LABEL_75;
    }

LABEL_4:
    if (sub_252D6841C() != 46)
    {
      goto LABEL_75;
    }

    v26 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
    v27 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
    swift_beginAccess();
    v28 = *&v26[v27];
    if (v28 >> 62)
    {
      if (v28 < 0)
      {
        v45 = *&v26[v27];
      }

      v16 = sub_252E378C4();
    }

    else
    {
      v16 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = MEMORY[0x277D84F90];
    if (v16)
    {
      v16 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v30 = sub_252AC0F68(v1);

      if (v30)
      {
        v29 = v30;
      }
    }

    if (v29 >> 62)
    {
      v31 = sub_252E378C4();
      v94 = v17;
      v95 = v1;
      if (!v31)
      {
LABEL_38:
        v19 = MEMORY[0x277D84F90];
LABEL_39:

        v46 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
        v47 = OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_deviceEntityStore;
        swift_beginAccess();
        v48 = *(v46 + v47);
        if (v48 >> 62)
        {
          goto LABEL_63;
        }

        for (i = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
        {
          v50 = v95;

          v51 = MEMORY[0x277D84F90];
          if (i)
          {
            v52 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
            v53 = sub_252AC11C8(v50);

            if (v53)
            {
              v51 = v53;
            }
          }

          if (v51 >> 62)
          {
            v54 = sub_252E378C4();
            if (!v54)
            {
LABEL_65:
              v55 = MEMORY[0x277D84F90];
LABEL_66:

              if (*(v19 + 2))
              {
                v102 = 0;
                v103 = 0xE000000000000000;
                sub_252E379F4();

                v102 = 0xD000000000000010;
                v103 = 0x8000000252E98AA0;
                v101 = v19;
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
                sub_2529508A0();
                v70 = sub_252E36EA4();
                v72 = v71;

                MEMORY[0x2530AD570](v70, v72);

                v73 = sub_252AD24A4();
                v75 = v74;

                v17 = v94;
                v1 = v95;
                v77 = *(v94 + 2);
                v76 = *(v94 + 3);
                if (v77 >= v76 >> 1)
                {
                  v17 = sub_2529F7A80((v76 > 1), v77 + 1, 1, v94);
                }

                *(v17 + 2) = v77 + 1;
                v78 = &v17[16 * v77];
                *(v78 + 4) = v73;
                *(v78 + 5) = v75;
                if (*(v55 + 2))
                {
LABEL_70:
                  v102 = 0;
                  v103 = 0xE000000000000000;
                  sub_252E379F4();

                  v102 = 0x6574726F70707573;
                  v103 = 0xEF203A7370614D64;
                  v101 = v55;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
                  sub_2529508A0();
                  v79 = sub_252E36EA4();
                  v81 = v80;

                  MEMORY[0x2530AD570](v79, v81);

                  v82 = sub_252AD24A4();
                  v84 = v83;

                  v86 = *(v17 + 2);
                  v85 = *(v17 + 3);
                  if (v86 >= v85 >> 1)
                  {
                    v17 = sub_2529F7A80((v85 > 1), v86 + 1, 1, v17);
                  }

                  *(v17 + 2) = v86 + 1;
                  v87 = &v17[16 * v86];
                  *(v87 + 4) = v82;
                  *(v87 + 5) = v84;
                  goto LABEL_75;
                }
              }

              else
              {

                v17 = v94;
                v1 = v95;
                if (*(v55 + 2))
                {
                  goto LABEL_70;
                }
              }

              goto LABEL_75;
            }
          }

          else
          {
            v54 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v54)
            {
              goto LABEL_65;
            }
          }

          v46 = 0;
          v96 = v51 & 0xFFFFFFFFFFFFFF8;
          v97 = v51 & 0xC000000000000001;
          v55 = MEMORY[0x277D84F90];
          while (1)
          {
            if (v97)
            {
              v56 = MEMORY[0x2530ADF00](v46, v51);
            }

            else
            {
              if (v46 >= *(v96 + 16))
              {
                goto LABEL_62;
              }

              v56 = *(v51 + 8 * v46 + 32);
            }

            v57 = v56;
            v58 = (v46 + 1);
            if (__OFADD__(v46, 1))
            {
              break;
            }

            v102 = 0;
            v103 = 0xE000000000000000;
            sub_252E379F4();
            v59 = [v57 name];
            if (v59)
            {
              v60 = v59;
              v61 = sub_252E36F34();
              v63 = v62;
            }

            else
            {
              v63 = 0xE600000000000000;
              v61 = 0x29656E6F6E28;
            }

            MEMORY[0x2530AD570](v61, v63);

            MEMORY[0x2530AD570](0x444970616D207B20, 0xEA0000000000203ALL);
            [v57 mapID];
            sub_252E37374();
            MEMORY[0x2530AD570](32032, 0xE200000000000000);
            v64 = sub_252AD24A4();
            v66 = v65;

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v55 = sub_2529F7A80(0, *(v55 + 2) + 1, 1, v55);
            }

            v68 = *(v55 + 2);
            v67 = *(v55 + 3);
            if (v68 >= v67 >> 1)
            {
              v55 = sub_2529F7A80((v67 > 1), v68 + 1, 1, v55);
            }

            *(v55 + 2) = v68 + 1;
            v69 = &v55[16 * v68];
            *(v69 + 4) = v64;
            *(v69 + 5) = v66;
            ++v46;
            if (v58 == v54)
            {
              goto LABEL_66;
            }
          }

          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          ;
        }
      }
    }

    else
    {
      v31 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v94 = v17;
      v95 = v1;
      if (!v31)
      {
        goto LABEL_38;
      }
    }

    v17 = 0;
    v96 = v29 & 0xFFFFFFFFFFFFFF8;
    v97 = v29 & 0xC000000000000001;
    v19 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D846A8];
    while (1)
    {
      if (v97)
      {
        v32 = MEMORY[0x2530ADF00](v17, v29);
      }

      else
      {
        v18 = *(v96 + 16);
        if (v17 >= v18)
        {
          goto LABEL_28;
        }

        v32 = *(v29 + 8 * v17 + 32);
      }

      v33 = v32;
      v1 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v98 = 0;
      v99 = 0xE000000000000000;
      sub_252E379F4();
      v34 = [v33 name];
      if (v34)
      {
        v35 = v34;
        v36 = sub_252E36F34();
        v38 = v37;
      }

      else
      {
        v38 = 0xE600000000000000;
        v36 = 0x29656E6F6E28;
      }

      MEMORY[0x2530AD570](v36, v38);

      MEMORY[0x2530AD570](0x4961657261207B20, 0xEB00000000203A44);
      [v33 areaID];
      sub_252E37374();
      MEMORY[0x2530AD570](0x3A444970616D202CLL, 0xE900000000000020);
      [v33 mapID];
      sub_252E37374();
      MEMORY[0x2530AD570](32032, 0xE200000000000000);
      v16 = sub_252AD24A4();
      v40 = v39;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_2529F7A80(0, *(v19 + 2) + 1, 1, v19);
      }

      v20 = *(v19 + 2);
      v41 = *(v19 + 3);
      if (v20 >= v41 >> 1)
      {
        v19 = sub_2529F7A80((v41 > 1), v20 + 1, 1, v19);
      }

      *(v19 + 2) = v20 + 1;
      v42 = &v19[16 * v20];
      *(v42 + 4) = v16;
      *(v42 + 5) = v40;
      ++v17;
      if (v1 == v31)
      {
        goto LABEL_39;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v17 = sub_2529F7A80((v18 > 1), v20, 1, v17);
  }

  if (v24 < 0)
  {
    v43 = *&v22[v23];
  }

  v44 = sub_252E378C4();

  if (v44)
  {
    goto LABEL_4;
  }

LABEL_75:
  v88 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
  v102 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v103 = v88;

  MEMORY[0x2530AD570](686880, 0xE300000000000000);
  v101 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529508A0();
  v89 = sub_252E36EA4();
  v91 = v90;

  MEMORY[0x2530AD570](v89, v91);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  v92 = sub_252AD24A4();

  return v92;
}

uint64_t MatterAccessory.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

  return v0;
}

uint64_t MatterAccessory.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MatterAccessory()
{
  result = qword_27F545AB0;
  if (!qword_27F545AB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252D6B004()
{
  v1 = [objc_allocWithZone(type metadata accessor for ShowHomeIntentResponse()) init];
  v2 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  *&v1[v2] = 5;
  [v1 setUserActivity_];
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_252D6B0B8()
{
  type metadata accessor for ShowHomeIntentDefaultHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252D6B0E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  v5 = sub_252E34014();
  v4[17] = v5;
  v6 = *(v5 - 8);
  v4[18] = v6;
  v7 = *(v6 + 64) + 15;
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D6B1B8, 0, 0);
}

uint64_t sub_252D6B1B8()
{
  v1 = v0[14];
  v2 = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  v0[21] = v2;
  *(v2 + 16) = v3;
  v4 = (v2 + 16);
  v5 = [v1 userTask];
  if (v5)
  {
    if (v0[15])
    {
      v32 = v5;
      v6 = sub_252C2B064(v5);
      v7 = v6;
      v8 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v6 >> 62)
      {
LABEL_30:
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = 0;
      v33 = MEMORY[0x277D84F90];
      while (v9 != v10)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v10, v7);
        }

        else
        {
          if (v10 >= *(v8 + 16))
          {
            goto LABEL_29;
          }

          v11 = *(v7 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        v14 = sub_252DA124C(0);

        ++v10;
        if (v14)
        {
          MEMORY[0x2530AD700](v15);
          if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_252E372A4();
          }

          sub_252E372D4();
          v33 = v3;
          v10 = v13;
        }
      }

      v4 = (v2 + 16);
      v17 = v33;
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    *v4 = v17;
  }

  v18 = v0[15];
  v19 = v0[16];
  v20 = swift_allocObject();
  v0[22] = v20;
  *(v20 + 16) = v19;
  *(v20 + 24) = v2;
  swift_retain_n();

  if (v18)
  {
    v21 = *(v19 + 48);
    v22 = v18;
    v23 = *__swift_project_boxed_opaque_existential_1((v19 + 24), v21);
    v24 = swift_task_alloc();
    v0[23] = v24;
    *v24 = v0;
    v24[1] = sub_252D6B5E0;

    return sub_252C0D18C(0, v23, v4);
  }

  else
  {

    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v26 = v0[20];
    v27 = v0[16];
    v28 = sub_252E36AD4();
    __swift_project_value_buffer(v28, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v29 = *(v27 + 96);
    __swift_project_boxed_opaque_existential_1((v27 + 72), v29);
    sub_252AD7CC4();
    v30 = swift_task_alloc();
    v0[29] = v30;
    *v30 = v0;
    v30[1] = sub_252A9A110;
    v31 = v0[20];

    return sub_252BDB88C((v0 + 2), &unk_252E5E2F0, v20, v31, 0, 0, 0, v29);
  }
}

uint64_t sub_252D6B5E0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 184);
  v7 = *v2;
  *(v3 + 192) = a1;
  *(v3 + 200) = v1;

  if (v1)
  {
    v5 = sub_252B842B0;
  }

  else
  {
    v5 = sub_252D6B6F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D6B6F4()
{
  v1 = v0[21];
  v2 = v0[15];

  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_252A99F6C;
  v4 = v0[16];

  return sub_252E174F4(v2);
}

uint64_t sub_252D6B794(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_252D6B7B4, 0, 0);
}

uint64_t sub_252D6B7B4()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_252A9A974;

  return sub_252C0D18C(0, v2, v1 + 16);
}

uint64_t sub_252D6B8A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D6B0E8(a1, a2, a3);
}

void *sub_252D6B954@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for GetRotationDirectionResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_252D6B9B8(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
LABEL_7:
    sub_252C515AC();
    return 0;
  }

  v3 = v2;
  if ([v2 taskType] == 4)
  {

    goto LABEL_5;
  }

  v4 = [v3 taskType];

  if (v4 == 5)
  {
LABEL_5:
    v5 = [a1 userTask];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 attribute];

      return v7 == 12;
    }

    goto LABEL_7;
  }

  return 0;
}

uint64_t sub_252D6BA78()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_25294B958;

  return sub_252D6B794(v2, v3);
}

uint64_t sub_252D6BB10()
{
  type metadata accessor for ControlHomeIntentResponse.Builder();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  v3 = *(v0 + 24);
  *(v1 + 16) = *(v0 + 16);
  *(v1 + 24) = v2;
  v64 = v2;
  if (v3 >> 62)
  {
    goto LABEL_43;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:

  if (v4)
  {
    v5 = 0;
    v53 = v3 & 0xFFFFFFFFFFFFFF8;
    v54 = v3 & 0xC000000000000001;
    v51 = v3;
    v52 = v3 + 32;
    v6 = &off_279711000;
    v50 = v4;
    do
    {
      if (v54)
      {
        v56 = MEMORY[0x2530ADF00](v5, v3);
        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v5 >= *(v53 + 16))
        {
          goto LABEL_42;
        }

        v56 = *(v52 + 8 * v5);

        v7 = __OFADD__(v5, 1);
        v8 = v5 + 1;
        if (v7)
        {
          goto LABEL_41;
        }
      }

      v55 = v8;
      type metadata accessor for HomeEntityResponse.Builder();
      v9 = swift_allocObject();
      type metadata accessor for HomeEntity.Builder();
      swift_allocObject();
      v10.n128_f64[0] = HomeEntity.Builder.init()();
      v12 = (*(*v11 + 448))(v10);

      *(v9 + 16) = v12;
      v13 = MEMORY[0x277D84F90];
      *(v9 + 24) = MEMORY[0x277D84F90];
      if (*(v56 + 16))
      {
        v14 = *(v56 + 16);

        v15 = sub_252D6C61C();

        v16 = *(v9 + 16);
        *(v9 + 16) = v15;
        v13 = MEMORY[0x277D84F90];
      }

      swift_beginAccess();
      v17 = *(v56 + 24);
      v63 = v13;
      if (v17 >> 62)
      {
        v18 = sub_252E378C4();
      }

      else
      {
        v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        v3 = 0;
        v59 = v17 & 0xFFFFFFFFFFFFFF8;
        v60 = v17 & 0xC000000000000001;
        v58 = v17;
        v57 = v18;
        while (1)
        {
          if (v60)
          {
            v19 = MEMORY[0x2530ADF00](v3, v17);
            v20 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
              goto LABEL_39;
            }
          }

          else
          {
            if (v3 >= *(v59 + 16))
            {
              goto LABEL_40;
            }

            v19 = *(v17 + 8 * v3 + 32);

            v20 = v3 + 1;
            if (__OFADD__(v3, 1))
            {
LABEL_39:
              __break(1u);
LABEL_40:
              __break(1u);
LABEL_41:
              __break(1u);
LABEL_42:
              __break(1u);
LABEL_43:
              v4 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          v21 = type metadata accessor for HomeUserTask();
          v22 = objc_allocWithZone(v21);
          v23 = sub_252E36F04();
          v24 = [v22 v6[226]];

          v25 = v24;
          [v25 setTaskType_];
          [v25 setAttribute_];
          [v25 setValue_];

          v26 = *(v19 + 16);
          v62 = *(v19 + 24);
          if (v26)
          {
            v27 = v6;
            v28 = v26[2];
            v61 = v26[3];
            swift_beginAccess();
            if (v26[4])
            {

              v29 = sub_252D6CDCC();
            }

            else
            {

              v29 = 0;
            }

            v30 = objc_allocWithZone(v21);
            v31 = sub_252E36F04();
            v32 = [v30 v27 + 886];

            v33 = v32;
            [v33 setTaskType_];
            [v33 setAttribute_];
            [v33 setValue_];

            v6 = v27;
            v25 = v33;
          }

          v34 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
          v35 = v25;
          v36 = sub_252E36F04();
          v37 = [v34 v6[226]];

          v38 = v37;
          [v38 setTaskOutcome_];
          [v38 setUserTask_];

          MEMORY[0x2530AD700](v39);
          if (*(v63 + 16) >= *(v63 + 24) >> 1)
          {
            v40 = *(v63 + 16);
            sub_252E372A4();
          }

          sub_252E372D4();
          ++v3;
          v17 = v58;
          if (v20 == v57)
          {
            v13 = v63;
            break;
          }
        }
      }

      v41 = sub_25297D0C0(v13);

      (*(*v41 + 192))(v42);

      MEMORY[0x2530AD700](v43);
      if (*(v64 + 16) >= *(v64 + 24) >> 1)
      {
        v44 = *(v64 + 16);
        sub_252E372A4();
      }

      sub_252E372D4();
      v3 = v51;
      v5 = v55;
    }

    while (v55 != v50);
    v45 = v64;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  v46 = sub_25297D0C0(v45);

  v48 = (*(*v46 + 176))(v47);

  return v48;
}

uint64_t sub_252D6C15C()
{
  type metadata accessor for HomeEntityResponse.Builder();
  v1 = swift_allocObject();
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  v2.n128_f64[0] = HomeEntity.Builder.init()();
  v4 = (*(*v3 + 448))(v2);

  v5 = MEMORY[0x277D84F90];
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  if (*(v0 + 16))
  {
    v6 = *(v0 + 16);

    v7 = sub_252D6C61C();

    *(v1 + 16) = v7;
  }

  swift_beginAccess();
  v8 = *(v0 + 24);
  v46 = v5;
  if (v8 >> 62)
  {
    goto LABEL_27;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:

  if (v9)
  {
    v10 = 0;
    v42 = v8 & 0xFFFFFFFFFFFFFF8;
    v43 = v8 & 0xC000000000000001;
    v11 = &off_279711000;
    v40 = v8;
    v41 = v9;
    while (1)
    {
      if (v43)
      {
        v12 = MEMORY[0x2530ADF00](v10, v8);
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v10 >= *(v42 + 16))
        {
          goto LABEL_26;
        }

        v12 = *(v8 + 8 * v10 + 32);

        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_25:
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          v9 = sub_252E378C4();
          goto LABEL_5;
        }
      }

      v14 = v8;
      v15 = type metadata accessor for HomeUserTask();
      v16 = objc_allocWithZone(v15);
      v17 = sub_252E36F04();
      v18 = v11;
      v19 = [v16 v11[226]];

      v20 = v19;
      [v20 setTaskType_];
      [v20 setAttribute_];
      [v20 setValue_];

      v21 = *(v12 + 16);
      v45 = *(v12 + 24);
      if (v21)
      {
        v22 = v21[2];
        v44 = v21[3];
        swift_beginAccess();
        if (v21[4])
        {

          v23 = sub_252D6CDCC();
        }

        else
        {

          v23 = 0;
        }

        v24 = objc_allocWithZone(v15);
        v25 = sub_252E36F04();
        v26 = [v24 v18 + 886];

        v27 = v26;
        [v27 setTaskType_];
        [v27 setAttribute_];
        [v27 setValue_];

        v20 = v27;
        v8 = v40;
      }

      else
      {
        v8 = v14;
      }

      v28 = objc_allocWithZone(type metadata accessor for HomeUserTaskResponse());
      v29 = v20;
      v30 = sub_252E36F04();
      v31 = [v28 v18 + 886];

      v32 = v31;
      [v32 setTaskOutcome_];
      [v32 setUserTask_];

      MEMORY[0x2530AD700](v33);
      v11 = v18;
      if (*(v46 + 16) >= *(v46 + 24) >> 1)
      {
        v34 = *(v46 + 16);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v10;
      if (v13 == v41)
      {
        v35 = v46;
        goto LABEL_24;
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_24:

  v36 = sub_25297D0C0(v35);

  v38 = (*(*v36 + 192))(v37);

  return v38;
}

uint64_t sub_252D6C61C()
{
  v1 = v0;
  type metadata accessor for HomeEntity.Builder();
  swift_allocObject();
  HomeEntity.Builder.init()();
  v2 = v0[2];
  v3 = v0[3];
  v5 = *(*v4 + 376);

  v6 = v5(v2, v3);

  v7 = (*(*v6 + 384))(v0[4]);

  v8 = v1[5];
  v9 = v1[6];
  v10 = *(*v7 + 392);

  v11 = v10(v8, v9);

  v12 = v1[7];
  v13 = *(*v11 + 400);

  v15 = v13(v14);

  v16 = (*(*v15 + 408))(v1[8]);

  v17 = v1[9];
  v18 = v1[10];
  v19 = *(*v16 + 416);

  v20 = v19(v17, v18);

  v21 = v1[11];
  v22 = v1[12];
  v23 = *(*v20 + 424);

  v24 = v23(v21, v22);

  v25 = v1[13];
  v26 = v1[14];
  v27 = *(*v24 + 432);

  v28 = v27(v25, v26);

  v29 = v1[15];
  v30 = *(*v28 + 440);

  v32 = v30(v31);

  v34 = (*(*v32 + 448))(v33);

  return v34;
}

void *sub_252D6CA80(void *a1)
{
  v2 = v1;
  v1[4] = 0;
  v4 = v1 + 4;
  v1[2] = [a1 taskType];
  v1[3] = [a1 attribute];
  v5 = [a1 value];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for MutableAttributeValue();
    v7 = swift_allocObject();
    sub_252D6CC80(v6);

    swift_beginAccess();
    v8 = *v4;
    *v4 = v7;
  }

  else
  {
  }

  return v2;
}

id sub_252D6CB58()
{
  v2 = v0[2];
  v1 = v0[3];
  swift_beginAccess();
  if (v0[4])
  {
    v3 = v0[4];

    v4 = sub_252D6CDCC();
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v6 = sub_252E36F04();
  v7 = [v5 initWithIdentifier:0 displayString:v6];

  v8 = v7;
  [v8 setTaskType_];
  [v8 setAttribute_];
  [v8 setValue_];

  return v8;
}

uint64_t sub_252D6CC80(void *a1)
{
  *(v1 + 72) = 0;
  *(v1 + 88) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 16) = [a1 type];
  *(v1 + 24) = [a1 BOOLValue];
  [a1 doubleValue];
  *(v1 + 32) = v3;
  *(v1 + 40) = [a1 integerValue];
  v4 = [a1 stringValue];
  if (v4)
  {
    v5 = v4;
    v6 = sub_252E36F34();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = *(v1 + 56);
  *(v1 + 48) = v6;
  *(v1 + 56) = v8;

  *(v1 + 64) = [a1 limitValue];
  v10 = [a1 rangeValue];
  v11 = *(v1 + 72);
  *(v1 + 72) = v10;

  *(v1 + 80) = [a1 unit];
  v12 = [a1 cleaningJob];

  v13 = *(v1 + 88);
  *(v1 + 88) = v12;

  return v1;
}

id sub_252D6CDCC()
{
  v1 = 0;
  v2 = *(v0 + 16);
  if (v2 <= 3)
  {
    switch(v2)
    {
      case 1:
        v14 = *(v0 + 24);
        v15 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v16 = sub_252E36F04();
        v17 = [v15 initWithIdentifier:0 displayString:v16];

        v1 = v17;
        [v1 setBoolValue_];
        [v1 setType_];
        break;
      case 2:
        v25 = *(v0 + 32);
        v26 = *(v0 + 80);
        v27 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
        v28 = sub_252E36F04();
        v29 = [v27 initWithIdentifier:0 displayString:v28];

        v1 = v29;
        [v1 setDoubleValue_];
        [v1 setUnit_];
        [v1 setType_];
        break;
      case 3:
        if (*(v0 + 56))
        {
          v7 = *(v0 + 48);
          v8 = *(v0 + 56);
        }

        else
        {
          v7 = 0;
          v8 = 0xE000000000000000;
        }

        type metadata accessor for HomeAttributeValue();
        v38 = *(v0 + 80);

        return HomeAttributeValue.__allocating_init(stringValue:unit:)(v7, v8, v38);
      default:
        return v1;
    }

LABEL_21:

    return v1;
  }

  if (v2 <= 5)
  {
    if (v2 == 4)
    {
      v18 = *(v0 + 40);
      v19 = *(v0 + 80);
      v20 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v21 = sub_252E36F04();
      v22 = [v20 initWithIdentifier:0 displayString:v21];

      v1 = v22;
      [v1 setIntegerValue_];
      [v1 setUnit_];
      [v1 setType_];
    }

    else
    {
      v3 = *(v0 + 64);
      v4 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
      v5 = sub_252E36F04();
      v6 = [v4 initWithIdentifier:0 displayString:v5];

      v1 = v6;
      [v1 setType_];
      [v1 setLimitValue_];
    }

    goto LABEL_21;
  }

  if (v2 == 6)
  {
    v23 = *(v0 + 72);
    if (v23)
    {
      v24 = *(v0 + 72);
    }

    else
    {
      v30 = objc_allocWithZone(type metadata accessor for HomeAttributeRange());
      v31 = sub_252E36F04();
      v32 = [v30 initWithIdentifier:0 displayString:v31];

      v24 = v32;
      [v24 setLowerValue_];
      [v24 setUpperValue_];
    }

    v33 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v34 = v23;
    v35 = sub_252E36F04();
    v36 = [v33 initWithIdentifier:0 displayString:v35];

    v1 = v36;
    [v1 setType_];
    v11 = v24;
    [v1 setRangeValue_];

    goto LABEL_20;
  }

  if (v2 == 8)
  {
    v9 = *(v0 + 88);
    v10 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v11 = v9;
    v12 = sub_252E36F04();
    v13 = [v10 initWithIdentifier:0 displayString:v12];

    v1 = v13;
    [v1 setType_];
    [v1 setCleaningJob_];
LABEL_20:

    goto LABEL_21;
  }

  return v1;
}

uint64_t sub_252D6D224()
{
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

void sub_252D6D290(void *a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  v3 = [a1 homeEntityName];
  if (v3)
  {
    v4 = v3;
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = *(v1 + 24);
  *(v1 + 16) = v5;
  *(v1 + 24) = v7;

  *(v1 + 32) = [a1 type];
  v9 = [a1 entityIdentifier];
  if (v9)
  {
    v10 = v9;
    v11 = sub_252E36F34();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = *(v1 + 48);
  *(v1 + 40) = v11;
  *(v1 + 48) = v13;

  v15 = [a1 deviceTypes];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E37264();

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = (v17 + 32);
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = *v19++;
        v22 = sub_252E25FC4(v21);
        if ((v23 & 1) == 0)
        {
          v24 = v22;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v20 = sub_2529F7B8C(0, *(v20 + 2) + 1, 1, v20);
          }

          v26 = *(v20 + 2);
          v25 = *(v20 + 3);
          if (v26 >= v25 >> 1)
          {
            v20 = sub_2529F7B8C((v25 > 1), v26 + 1, 1, v20);
          }

          *(v20 + 2) = v26 + 1;
          *&v20[8 * v26 + 32] = v24;
        }

        --v18;
      }

      while (v18);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v20 = &unk_2864A1988;
  }

  *(v1 + 56) = v20;
  *(v1 + 64) = [a1 sceneType];
  v27 = [a1 room];
  if (v27)
  {
    v28 = v27;
    v29 = sub_252E36F34();
    v31 = v30;
  }

  else
  {
    v29 = 0;
    v31 = 0;
  }

  v32 = *(v1 + 80);
  *(v1 + 72) = v29;
  *(v1 + 80) = v31;

  v33 = [a1 home];
  if (v33)
  {
    v34 = v33;
    v35 = sub_252E36F34();
    v37 = v36;
  }

  else
  {
    v35 = 0;
    v37 = 0;
  }

  v38 = *(v1 + 96);
  *(v1 + 88) = v35;
  *(v1 + 96) = v37;

  v39 = [a1 group];
  if (v39)
  {
    v40 = v39;
    v41 = sub_252E36F34();
    v43 = v42;
  }

  else
  {
    v41 = 0;
    v43 = 0;
  }

  v44 = *(v1 + 112);
  *(v1 + 104) = v41;
  *(v1 + 112) = v43;

  v45 = [a1 zones];
  if (!v45)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_42:
    *(v1 + 120) = v51;
    return;
  }

  v46 = v45;
  v47 = sub_252E37264();

  v48 = *(v47 + 16);
  if (!v48)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_41:

    goto LABEL_42;
  }

  v49 = 0;
  v50 = (v47 + 40);
  v51 = MEMORY[0x277D84F90];
  while (v49 < *(v47 + 16))
  {
    v53 = *(v50 - 1);
    v52 = *v50;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v51 = sub_2529F7A80(0, *(v51 + 2) + 1, 1, v51);
    }

    v55 = *(v51 + 2);
    v54 = *(v51 + 3);
    if (v55 >= v54 >> 1)
    {
      v51 = sub_2529F7A80((v54 > 1), v55 + 1, 1, v51);
    }

    ++v49;
    *(v51 + 2) = v55 + 1;
    v56 = &v51[16 * v55];
    *(v56 + 4) = v53;
    *(v56 + 5) = v52;
    v50 += 2;
    if (v48 == v49)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
}

unint64_t sub_252D6D668(void *a1)
{
  v2 = v1;
  *(v1 + 16) = 0;
  v4 = [a1 entity];
  if (v4)
  {
    v5 = v4;
    type metadata accessor for MutableHomeEntity();
    swift_allocObject();
    sub_252D6D290(v5);
    v7 = v6;

    v8 = *(v2 + 16);
    *(v2 + 16) = v7;
  }

  v9 = [a1 taskResponses];
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v11 = v9;
    type metadata accessor for HomeUserTaskResponse();
    v12 = sub_252E37264();

    v33 = v10;
    if (v12 >> 62)
    {
      goto LABEL_25;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v29 = v2;
      v30 = v12;
      v2 = 0;
      v31 = v12 & 0xFFFFFFFFFFFFFF8;
      v32 = v12 & 0xC000000000000001;
      while (1)
      {
        if (v32)
        {
          v14 = MEMORY[0x2530ADF00](v2, v12);
        }

        else
        {
          if (v2 >= *(v31 + 16))
          {
            goto LABEL_24;
          }

          v14 = *(v12 + 8 * v2 + 32);
        }

        v15 = v14;
        v16 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        type metadata accessor for MutableHomeUserTaskResponse();
        v17 = swift_allocObject();
        *(v17 + 16) = 0;
        v18 = [v15 userTask];
        if (v18)
        {
          v19 = v18;
          v20 = i;
          type metadata accessor for MutableHomeUserTask();
          v21 = swift_allocObject();
          v21[4] = 0;
          v22 = v21 + 4;
          v21[2] = [v19 taskType];
          v21[3] = [v19 attribute];
          v23 = [v19 value];
          if (v23)
          {
            v24 = v23;
            type metadata accessor for MutableAttributeValue();
            v25 = swift_allocObject();
            sub_252D6CC80(v24);

            swift_beginAccess();
            v26 = *v22;
            *v22 = v25;
          }

          else
          {
          }

          v27 = *(v17 + 16);
          *(v17 + 16) = v21;

          i = v20;
          v12 = v30;
        }

        v10 = [v15 taskOutcome];

        *(v17 + 24) = v10;
        MEMORY[0x2530AD700]();
        if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v10 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v2;
        if (v16 == i)
        {
          v10 = v33;
          v2 = v29;
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      ;
    }

LABEL_21:
  }

  *(v2 + 24) = v10;
  return v2;
}

uint64_t sub_252D6D96C(char *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *(v2 + 16) = *&a1[v4];
  v5 = [a1 entityResponses];
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v7 = v5;
    type metadata accessor for HomeEntityResponse();
    v8 = sub_252E37264();

    v16 = v6;
    if (v8 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {
      v10 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x2530ADF00](v10, v8);
        }

        else
        {
          if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v11 = *(v8 + 8 * v10 + 32);
        }

        v12 = v11;
        v13 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        type metadata accessor for MutableHomeEntityResponse();
        swift_allocObject();
        sub_252D6D668(v12);

        MEMORY[0x2530AD700]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v14 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v10;
        if (v13 == i)
        {
          v6 = v16;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

    v6 = MEMORY[0x277D84F90];
LABEL_18:
  }

  *(v2 + 24) = v6;
  return v2;
}

uint64_t AutomationTypeSemantic.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_252E37B74();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_252D6DBCC()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D6DC40()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252D6DC94@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_252E37B74();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_252D6DDC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_252D6DFB8();
  v5 = sub_252D6E00C();
  v6 = sub_252D6E060();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_252D6DE3C()
{
  result = qword_27F545AC0;
  if (!qword_27F545AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545AC0);
  }

  return result;
}

unint64_t sub_252D6DE94()
{
  result = qword_27F545AC8;
  if (!qword_27F545AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545AC8);
  }

  return result;
}

unint64_t sub_252D6DEEC()
{
  result = qword_27F545AD0;
  if (!qword_27F545AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545AD8, &qword_252E5E5C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545AD0);
  }

  return result;
}

unint64_t sub_252D6DF54()
{
  result = qword_27F545AE0;
  if (!qword_27F545AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545AE0);
  }

  return result;
}

unint64_t sub_252D6DFB8()
{
  result = qword_27F545AE8;
  if (!qword_27F545AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545AE8);
  }

  return result;
}

unint64_t sub_252D6E00C()
{
  result = qword_27F545AF0;
  if (!qword_27F545AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545AF0);
  }

  return result;
}

unint64_t sub_252D6E060()
{
  result = qword_27F545AF8;
  if (!qword_27F545AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F545AF8);
  }

  return result;
}

uint64_t sub_252D6E0B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[79] = v3;
  v4[78] = a3;
  v4[77] = a2;
  v4[76] = a1;
  v5 = sub_252E34014();
  v4[80] = v5;
  v6 = *(v5 - 8);
  v4[81] = v6;
  v7 = *(v6 + 64) + 15;
  v4[82] = swift_task_alloc();
  v4[83] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D6E190, 0, 0);
}

uint64_t sub_252D6E190()
{
  v1 = [*(v0 + 616) userTask];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 taskType];

    v4 = v3 == 2;
    v5 = *(v0 + 624);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v6 = *(v0 + 616);
    sub_252C515AC();
    v4 = 0;
    v5 = *(v0 + 624);
    if (!v5)
    {
LABEL_19:
      v17 = 0;
      v7 = 0;
      goto LABEL_20;
    }
  }

  v7 = [v5 entityResponses];
  if (!v7)
  {
    v17 = 0;
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  type metadata accessor for HomeEntityResponse();
  v8 = sub_252E37264();

  if (v8 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

  result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_18:

    goto LABEL_19;
  }

LABEL_8:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x2530ADF00](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  v11 = v10;
  v12 = *(v0 + 632);

  sub_252DA49A4();
  v14 = v13;

  memcpy((v0 + 16), (v12 + 112), 0x1F8uLL);
  if (sub_252956B94((v0 + 16)) == 1 || (v15 = *(v0 + 216), !*(v15 + 16)))
  {
    v16 = 4;
  }

  else
  {
    v16 = *(v15 + 32);
  }

  sub_252C3AC5C(v16);
  v19 = v18;

  v20 = v19;
  v7 = sub_252DA5378(0x13, 0, 1);

  v21 = v20;
  v17 = sub_252DA5378(0x11, 0, 1);

LABEL_21:
  *(v0 + 688) = v21;
  *(v0 + 680) = v7;
  *(v0 + 672) = v17;
  if (v4)
  {
    if (!v7)
    {
      if (!v17)
      {
        goto LABEL_29;
      }

LABEL_26:
      v22 = 17;
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (v17)
  {
    goto LABEL_26;
  }

  if (v7)
  {
LABEL_28:
    v22 = 19;
    goto LABEL_30;
  }

LABEL_29:
  v22 = 6;
LABEL_30:
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v23 = sub_252E36AD4();
  __swift_project_value_buffer(v23, qword_27F544D18);
  v24 = HomeAttributeType.description.getter(v22);
  MEMORY[0x2530AD570](v24);

  sub_252CC3D90(0x20747365736F6C43, 0xEB00000000747461, 0xD00000000000009CLL, 0x8000000252E98DF0);

  if (v22 == 17)
  {
    v7 = v17;
  }

  else if (v22 != 19)
  {
    v25 = 0;
    v7 = 0;
    goto LABEL_41;
  }

  if (v7 && (v26 = v7, (v27 = sub_252D0842C()) != 0) && (v28 = *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue), , , v28))
  {
    v25 = sub_25296E640();
  }

  else
  {
    v25 = 0;
  }

LABEL_41:
  *(v0 + 704) = v7;
  *(v0 + 696) = v25;
  v29 = *(v0 + 632);
  v30 = swift_allocObject();
  *(v0 + 712) = v30;
  *(v30 + 16) = v29;
  *(v30 + 24) = v4;
  *(v30 + 32) = v25;

  if (v5)
  {
    v31 = v29[6];
    v32 = *(v0 + 624);
    v33 = *__swift_project_boxed_opaque_existential_1(v29 + 3, v31);

    if (v4)
    {
      v34 = 256;
    }

    else
    {
      v34 = 0;
    }

    v35 = sub_252C04898(v34, v25);
    *(v0 + 720) = v35;
    v36 = *(MEMORY[0x277D55BE8] + 4);
    v43 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

    v37 = swift_task_alloc();
    *(v0 + 728) = v37;
    *v37 = v0;
    v37[1] = sub_252D6E740;

    return v43(0xD000000000000024, 0x8000000252E955C0, v35);
  }

  else
  {
    v38 = *(v0 + 664);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v39 = v29[12];
    __swift_project_boxed_opaque_existential_1(v29 + 9, v39);
    sub_252AD7CC4();
    v40 = swift_task_alloc();
    *(v0 + 776) = v40;
    *v40 = v0;
    v40[1] = sub_252D6EB0C;
    v41 = *(v0 + 664);

    return sub_252BDB88C(v0 + 520, &unk_252E5E720, v30, v41, 0, 0, 0, v39);
  }
}

uint64_t sub_252D6E740(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 728);
  v5 = *(*v2 + 720);
  v8 = *v2;
  *(v3 + 736) = a1;
  *(v3 + 744) = v1;

  if (v1)
  {
    v6 = sub_252D6EA34;
  }

  else
  {
    v6 = sub_252D6E878;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252D6E878()
{
  v1 = v0[87];
  v2 = v0[78];

  v3 = swift_task_alloc();
  v0[94] = v3;
  *v3 = v0;
  v3[1] = sub_252D6E91C;
  v4 = v0[79];

  return sub_252E174F4(v2);
}

uint64_t sub_252D6E91C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 752);
  v7 = *v2;
  *(v3 + 760) = a1;
  *(v3 + 768) = v1;

  if (v1)
  {
    v5 = sub_252D6EDD8;
  }

  else
  {
    v5 = sub_252D6EC7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D6EA34()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 696);
  v3 = *(v0 + 624);

  v4 = *(v0 + 744);
  v5 = *(v0 + 704);
  v6 = *(v0 + 696);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9 = *(v0 + 664);
  v10 = *(v0 + 656);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_252D6EB0C()
{
  v2 = *(*v1 + 776);
  v3 = *(*v1 + 664);
  v4 = *(*v1 + 648);
  v5 = *(*v1 + 640);
  v8 = *v1;
  *(*v1 + 784) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_252D6F3F4;
  }

  else
  {
    v6 = sub_252D6F29C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_252D6EC7C()
{
  v1 = v0 + 75;
  v2 = v0[95];
  v3 = v0[92];
  v0[75] = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = v0[82];
  v9 = v0[79];
  v10 = *(v9 + 96);
  __swift_project_boxed_opaque_existential_1((v9 + 72), v10);
  v11 = swift_task_alloc();
  v0[99] = v11;
  *(v11 + 16) = v1;
  sub_252AD7CC4();
  v12 = swift_task_alloc();
  v0[100] = v12;
  *v12 = v0;
  v12[1] = sub_252D6EEAC;
  v13 = v0[82];

  return sub_252BDB88C((v0 + 70), &unk_252E3F140, v11, v13, 0, 0, 0, v10);
}

uint64_t sub_252D6EDD8()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 624);

  v3 = *(v0 + 768);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 680);
  v7 = *(v0 + 672);
  v8 = *(v0 + 664);
  v9 = *(v0 + 656);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_252D6EEAC()
{
  v2 = *v1;
  v3 = *(*v1 + 800);
  v4 = *(*v1 + 656);
  v5 = *(*v1 + 648);
  v6 = *(*v1 + 640);
  v10 = *v1;
  *(*v1 + 808) = v0;

  (*(v5 + 8))(v4, v6);
  if (v0)
  {
    v7 = sub_252D6F1AC;
  }

  else
  {
    v8 = *(v2 + 792);

    v7 = sub_252D6F02C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_252D6F02C()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 760);
  v9 = *(v0 + 736);
  v10 = *(v0 + 712);
  v11 = *(v0 + 624);
  v12 = *(v0 + 608);
  (*(v4 + 112))(v7, v0 + 560, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 560));

  v13 = *(v0 + 704);
  v14 = *(v0 + 696);
  v15 = *(v0 + 680);
  v16 = *(v0 + 672);
  v17 = *(v0 + 664);
  v18 = *(v0 + 656);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_252D6F1AC()
{
  v1 = *(v0 + 792);
  v2 = *(v0 + 760);
  v3 = *(v0 + 712);
  v4 = *(v0 + 624);

  v5 = *(v0 + 808);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v8 = *(v0 + 680);
  v9 = *(v0 + 672);
  v10 = *(v0 + 664);
  v11 = *(v0 + 656);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_252D6F29C()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 616);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 712);
  v9 = *(v0 + 608);
  (*(v4 + 112))(v7, v0 + 520, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 520));

  v10 = *(v0 + 704);
  v11 = *(v0 + 696);
  v12 = *(v0 + 680);
  v13 = *(v0 + 672);
  v14 = *(v0 + 664);
  v15 = *(v0 + 656);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_252D6F3F4()
{
  v1 = *(v0 + 712);

  v2 = *(v0 + 784);
  v3 = *(v0 + 704);
  v4 = *(v0 + 696);
  v5 = *(v0 + 680);
  v6 = *(v0 + 672);
  v7 = *(v0 + 664);
  v8 = *(v0 + 656);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_252D6F4B4(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + 64) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_252D6F4D8, 0, 0);
}

uint64_t sub_252D6F4D8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 24);
  v3 = *__swift_project_boxed_opaque_existential_1((*(v0 + 16) + 24), *(*(v0 + 16) + 48));

  if (v1)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_252C04898(v4, v2);
  *(v0 + 32) = v5;
  v6 = *(MEMORY[0x277D55BE8] + 4);
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);

  v7 = swift_task_alloc();
  *(v0 + 40) = v7;
  *v7 = v0;
  v7[1] = sub_2529A5084;

  return v9(0xD000000000000024, 0x8000000252E955C0, v5);
}

uint64_t sub_252D6F614(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25293B808;

  return sub_252D6E0B8(a1, a2, a3);
}

void *sub_252D6F6C8@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for AlreadyHeatingCoolingResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D6F72C(void *a1)
{
  if (sub_252C4B5D4())
  {
    v2 = [a1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 attribute];

      if (v4 == 6 && (sub_252CCFCB8() & 1) != 0)
      {
        v5 = *(sub_252B680FC() + 48);

        return v5;
      }
    }

    else
    {
      sub_252C515AC();
    }
  }

  return 0;
}

uint64_t sub_252D6F7BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_252D6F4B4(v2, v3, v4);
}

uint64_t sub_252D6F868(uint64_t a1)
{
  v2 = sub_252E36E04();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252D7E80C(&unk_27F541310, MEMORY[0x277CC55B0]);
  v7 = sub_252E371B4();
  v35 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v7 & ~(v7 >> 63), 0);
  v8 = v35;
  (*(v3 + 16))(v6, a1, v2);
  result = sub_252E371A4();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v34;
    if (v7)
    {
      v11 = v33;
      *&v32 = *(v33 + 16);
      v31 = xmmword_252E3C290;
      v12 = v34;
      while (v32 != v12)
      {
        if ((v10 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v12 >= *(v11 + 16))
        {
          goto LABEL_22;
        }

        v13 = *(v11 + 32 + v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v14 = swift_allocObject();
        *(v14 + 16) = v31;
        *(v14 + 56) = MEMORY[0x277D84B78];
        *(v14 + 64) = MEMORY[0x277D84BC0];
        *(v14 + 32) = v13;
        result = sub_252E36F64();
        v35 = v8;
        v17 = *(v8 + 16);
        v16 = *(v8 + 24);
        if (v17 >= v16 >> 1)
        {
          v30 = result;
          v19 = v15;
          sub_2529AA3A0((v16 > 1), v17 + 1, 1);
          v15 = v19;
          result = v30;
          v8 = v35;
        }

        *(v8 + 16) = v17 + 1;
        v18 = v8 + 16 * v17;
        *(v18 + 32) = result;
        *(v18 + 40) = v15;
        ++v12;
        if (!--v7)
        {
          v34 = v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v12 = v34;
LABEL_12:
      v20 = v33;
      v21 = *(v33 + 16);
      if (v12 == v21)
      {
LABEL_13:

        return v8;
      }

      v32 = xmmword_252E3C290;
      while (v12 < v21)
      {
        v22 = *(v20 + 32 + v12);
        v34 = v12 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v23 = swift_allocObject();
        *(v23 + 16) = v32;
        *(v23 + 56) = MEMORY[0x277D84B78];
        *(v23 + 64) = MEMORY[0x277D84BC0];
        *(v23 + 32) = v22;
        result = sub_252E36F64();
        v35 = v8;
        v26 = *(v8 + 16);
        v25 = *(v8 + 24);
        if (v26 >= v25 >> 1)
        {
          v28 = result;
          v29 = v24;
          sub_2529AA3A0((v25 > 1), v26 + 1, 1);
          v24 = v29;
          result = v28;
          v8 = v35;
        }

        *(v8 + 16) = v26 + 1;
        v27 = v8 + 16 * v26;
        *(v27 + 32) = result;
        *(v27 + 40) = v24;
        v21 = *(v20 + 16);
        v12 = v34;
        if (v34 == v21)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252D6FC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock - v11;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v14, v10, v6);
  v17 = (v16 + v15);
  *v17 = a2;
  v17[1] = a3;
  v19 = *(a1 + 32);
  v18 = *(a1 + 40);
  aBlock = 0xD000000000000029;
  v36 = 0x8000000252E80C60;

  MEMORY[0x2530AD570](v19, v18);

  v21 = aBlock;
  v20 = v36;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Removing record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v28 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v29 = sub_252E35A14();
    v30 = qword_27F545F50;
    qword_27F545F50 = v29;
    v28 = v29;

    v27 = 0;
  }

  v31 = v27;
  v32 = sub_252E36F04();

  v39 = sub_252D7E768;
  v40 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2529E0210;
  v38 = &block_descriptor_108;
  v33 = _Block_copy(&aBlock);

  [v28 removeValueForKey:v32 completionHandler:v33];
  _Block_release(v33);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_252D70068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_252E36AB4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &aBlock - v11;
  if (qword_27F53F5F0 != -1)
  {
    swift_once();
  }

  v13 = qword_27F544F78;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v7 + 16))(v10, v12, v6);
  v14 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v7 + 32))(v16 + v14, v10, v6);
  v17 = (v16 + v15);
  *v17 = a2;
  v17[1] = a3;
  v19 = *(a1 + 16);
  v18 = *(a1 + 24);
  aBlock = 0xD000000000000026;
  v36 = 0x8000000252E80E10;

  MEMORY[0x2530AD570](v19, v18);
  v21 = aBlock;
  v20 = v36;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_27F544D30);

  v23 = sub_252E36AC4();
  v24 = sub_252E374C4();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_252BE2CE0(v21, v20, &aBlock);
    _os_log_impl(&dword_252917000, v23, v24, "Removing record from: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x2530AED00](v26, -1, -1);
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  v27 = qword_27F545F50;
  if (qword_27F545F50)
  {
    v28 = qword_27F545F50;
  }

  else
  {
    sub_252E35A24();
    v29 = sub_252E35A14();
    v30 = qword_27F545F50;
    qword_27F545F50 = v29;
    v28 = v29;

    v27 = 0;
  }

  v31 = v27;
  v32 = sub_252E36F04();

  v39 = sub_252D7E874;
  v40 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v36 = 1107296256;
  v37 = sub_2529E0210;
  v38 = &block_descriptor_117;
  v33 = _Block_copy(&aBlock);

  [v28 removeValueForKey:v32 completionHandler:v33];
  _Block_release(v33);

  return (*(v7 + 8))(v12, v6);
}

uint64_t HomeGraphCacheInvalidationSignal.signalName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_252D704EC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 40);
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_252D7054C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_252D70598(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_252D7063C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 56);
  *(v4 + 48) = v3;
  *(v4 + 56) = v2;
}

uint64_t sub_252D7069C()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_252D706E8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
}

uint64_t sub_252D70864(uint64_t (*a1)(void), uint64_t (*a2)(void))
{
  v3 = a1(0);
  v5 = v4;

  v6 = a2(0);
  if (v5)
  {
    if (v7)
    {
      if (v3 == v6 && v5 == v7)
      {
        v8 = 1;
      }

      else
      {
        v8 = sub_252E37DB4();
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_252D70910(char a1)
{
  v2 = v1;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544E20);
  MEMORY[0x2530AD570](v1[2], v1[3]);
  sub_252CC3D90(0x206873756C46, 0xE600000000000000, 0xD000000000000094, 0x8000000252E98E90);

  result = sub_252D7C060(a1 & 1);
  v6 = v1[5];
  if (v6)
  {
    v7 = v2[4];
    v8 = v2[7];
    if (!v8 || (v7 != v2[6] || v6 != v8) && (v9 = v2[4], v10 = v2[5], result = sub_252E37DB4(), (result & 1) == 0))
    {
      type metadata accessor for CacheInvalidationSignalRecord();
      v11 = swift_allocObject();
      *(v11 + 16) = 3288625;
      *(v11 + 24) = 0xE300000000000000;
      strcpy((v11 + 32), "systemVersion");
      *(v11 + 46) = -4864;
      *(v11 + 48) = v7;
      *(v11 + 56) = v6;
      swift_bridgeObjectRetain_n();
      sub_252DBD2E8(v11, 0x65566D6574737973, 0xED00006E6F697372);
    }
  }

  return result;
}

void *_s22HomeAutomationInternal0A28GraphCacheInvalidationSignalCfd_0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  return v0;
}

uint64_t sub_252D70B50(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v7 = *v4;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E20);
  MEMORY[0x2530AD570](*(v7 + 16), *(v7 + 24));
  sub_252CC3D90(0x206D726177657250, 0xE800000000000000, 0xD000000000000094, 0x8000000252E98E90);

  a3(1);
  return a4(1);
}

uint64_t sub_252D70CBC()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    v2 = sub_252AFEED8();
    v3 = *(v0 + 24);
    *(v0 + 24) = v2;

    v4 = *(v0 + 16);
    *(v0 + 16) = v2;

    v1 = *(v0 + 16);
    if (!v1)
    {
      v5 = sub_252CC4DFC(MEMORY[0x277D84F90]);
      v6 = *(v0 + 16);
      *(v0 + 16) = v5;

      v1 = *(v0 + 16);
    }
  }

  return v1;
}

uint64_t sub_252D70D50()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    goto LABEL_4;
  }

  v2 = sub_252AFEED8();
  v3 = *(v0 + 24);
  *(v0 + 24) = v2;

  v4 = *(v0 + 16);
  *(v0 + 16) = v2;

  v1 = *(v0 + 16);
  if (v1 || (v5 = sub_252CC4DFC(MEMORY[0x277D84F90]), v6 = *(v0 + 16), *(v0 + 16) = v5, result = , (v1 = *(v0 + 16)) != 0))
  {
LABEL_4:
    v8 = v1 + 64;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 64);
    v12 = (v9 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v13 = 0;
    v23 = v1;
    if (v11)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v14 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v14);
      ++v13;
      if (v11)
      {
        v13 = v14;
        do
        {
LABEL_11:
          v15 = __clz(__rbit64(v11)) | (v13 << 6);
          v16 = (*(v1 + 48) + 16 * v15);
          v18 = *v16;
          v17 = v16[1];
          v19 = *(*(v1 + 56) + 8 * v15);
          v20 = qword_27F53F528;

          if (v20 != -1)
          {
            swift_once();
          }

          v11 &= v11 - 1;
          v21 = sub_252E36AD4();
          __swift_project_value_buffer(v21, qword_27F544E20);
          sub_252E379F4();

          MEMORY[0x2530AD570](v18, v17);
          MEMORY[0x2530AD570](0x61646174656D202CLL, 0xEB00000000206174);
          v22 = sub_252AFC4C8();
          MEMORY[0x2530AD570](v22);

          sub_252CC3D90(0xD000000000000013, 0x8000000252E99800, 0xD000000000000094, 0x8000000252E98E90);

          v1 = v23;
        }

        while (v11);
      }
    }
  }

  return result;
}

uint64_t sub_252D70FF4(uint64_t a1, uint64_t a2, char a3)
{
  v7 = *(v3 + 16);
  if (v7)
  {
    v8 = *(v3 + 16);
    if (*(v7 + 16))
    {
      goto LABEL_3;
    }

LABEL_9:

    goto LABEL_10;
  }

  v12 = sub_252AFEED8();
  v13 = *(v3 + 24);
  *(v3 + 24) = v12;

  v14 = *(v3 + 16);
  *(v3 + 16) = v12;

  v8 = *(v3 + 16);
  if (!v8)
  {
    v15 = sub_252CC4DFC(MEMORY[0x277D84F90]);
    v16 = *(v3 + 16);
    *(v3 + 16) = v15;

    v8 = *(v3 + 16);
    if (!v8)
    {
      return 0;
    }
  }

  if (!*(v8 + 16))
  {
    goto LABEL_9;
  }

LABEL_3:

  v9 = sub_252A44A10(a1, a2);
  if ((v10 & 1) == 0)
  {
LABEL_10:

    return 0;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (a3)
  {
    sub_252AFC800();
  }

  return v11;
}

uint64_t sub_252D71108(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 16))
  {
    v5 = *(v2 + 16);
  }

  else
  {
    v6 = sub_252AFEED8();
    v7 = *(v2 + 24);
    *(v2 + 24) = v6;

    v8 = *(v2 + 16);
    *(v2 + 16) = v6;

    v5 = *(v2 + 16);
    if (!v5)
    {
      v9 = sub_252CC4DFC(MEMORY[0x277D84F90]);
      v10 = *(v2 + 16);
      *(v2 + 16) = v9;

      v5 = *(v2 + 16);
      if (!v5)
      {
        v13 = 0;
        return v13 & 1;
      }
    }
  }

  v11 = *(v5 + 16);

  if (v11)
  {
    sub_252A44A10(a1, a2);
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

uint64_t sub_252D711F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_252E32E04();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v32[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E32DF4();
  v11 = type metadata accessor for IntentSelectionCacheRecordMetadata();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
  *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
  v16 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
  *(v14 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = 1;
  (*(v7 + 32))(v14 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, v10, v6);
  *(v14 + v15) = 0;
  *(v14 + v16) = 1;
  swift_beginAccess();
  v17 = *(v3 + 32);

  if (!v17)
  {
    v18 = sub_252CC4DFC(MEMORY[0x277D84F90]);
    v19 = *(v3 + 32);
    *(v3 + 32) = v18;
  }

  v21 = sub_252D705EC();
  if (*v20)
  {
    v22 = v20;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = *v22;
    *v22 = 0x8000000000000000;
    sub_2529FB94C(v14, a1, a2, isUniquelyReferenced_nonNull_native);

    *v22 = v31;
  }

  (v21)(v32, 0);
  v24 = sub_252D70CBC();
  if (v24)
  {
    v25 = v24;

    v26 = swift_isUniquelyReferenced_nonNull_native();
    v32[0] = v25;
    sub_2529FB94C(v14, a1, a2, v26);

    v27 = *(v3 + 16);
    *(v3 + 16) = v32[0];
  }

  v28 = sub_252D70C6C();
  if (*v29)
  {
    sub_252E16D98(a1, a2);
  }

  (v28)(v32, 0);
}

uint64_t sub_252D714A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (v2[2])
  {
    v6 = v2[2];
  }

  else
  {
    v7 = sub_252AFEED8();
    v8 = v3[3];
    v3[3] = v7;

    v9 = v3[2];
    v3[2] = v7;

    if (!v3[2])
    {
      v10 = sub_252CC4DFC(MEMORY[0x277D84F90]);
      v11 = v3[2];
      v3[2] = v10;

      result = v3[2];
      if (!result)
      {
        return result;
      }
    }
  }

  v23 = v6;

  v13 = sub_252E16D98(a1, a2);
  if (v13)
  {
    v14 = v3[2];
    v3[2] = v23;

    *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 1;
    *(v13 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
    swift_beginAccess();
    if (!v3[5])
    {
      v15 = sub_252CC4DFC(MEMORY[0x277D84F90]);
      v16 = v3[5];
      v3[5] = v15;
    }

    v17 = sub_252D70C6C();
    if (*v18)
    {

      sub_252E12564(v19, a1, a2);
    }

    (v17)(v22, 0);
    v20 = sub_252D705EC();
    if (*v21)
    {
      sub_252E16D98(a1, a2);
    }

    (v20)(v22, 0);
  }

  else
  {
  }
}

uint64_t sub_252D716B4()
{
  swift_beginAccess();
  if (v0[5])
  {
    v1 = v0[2];
    if (!v1)
    {
LABEL_28:
      v42 = MEMORY[0x277D84F90];
      v43 = sub_252CC4DFC(MEMORY[0x277D84F90]);
      swift_beginAccess();
      v44 = v0[4];
      v0[4] = v43;

      v45 = sub_252CC4DFC(v42);
      v46 = v0[2];
      v0[2] = v45;

      type metadata accessor for IntentSelectionCacheKeysRecord();
      v47 = swift_allocObject();
      v47[2] = 3288625;
      v47[3] = 0xE300000000000000;
      v47[4] = 0xD000000000000020;
      v47[5] = 0x8000000252E7AE10;
      v47[6] = v45;

      sub_252DBC8C8(v47, 0xD000000000000020, 0x8000000252E7AE10);

      v48 = v0[5];
      if (!v48)
      {
        return 0;
      }

      v49 = *(v48 + 16);
      if (!v49)
      {
        return MEMORY[0x277D84F90];
      }

      v50 = sub_252DFA3E0(*(v48 + 16), 0);
      v51 = sub_252E11360(&v59, v50 + 4, v49, v48);

      sub_25291AE30();
      if (v51 != v49)
      {
        goto LABEL_37;
      }

      return v50;
    }
  }

  else
  {
    v2 = sub_252CC4DFC(MEMORY[0x277D84F90]);
    v3 = v0[5];
    v0[5] = v2;

    v1 = v0[2];
    if (!v1)
    {
      goto LABEL_28;
    }
  }

  v4 = v1 + 64;
  v5 = 1 << *(v1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v55 = v1;
  v56 = v1 + 64;
  v53 = v0;
  v54 = v8;
  while (v7)
  {
LABEL_15:
    v11 = __clz(__rbit64(v7)) | (v9 << 6);
    v12 = (*(v1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(v1 + 56) + 8 * v11);
    *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 1;
    *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;

    v16 = sub_252D70C6C();
    v18 = v1;
    v19 = v16;
    if (!*v17)
    {

      (v19)(&v59, 0);
      v1 = v18;
      goto LABEL_9;
    }

    v58 = v16;
    v20 = v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = *v20;
    v22 = v60;
    v57 = v20;
    *v20 = 0x8000000000000000;
    v23 = sub_252A44A10(v14, v13);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_35;
    }

    v29 = v24;
    v30 = v13;
    if (v22[3] < v28)
    {
      sub_252E0240C(v28, isUniquelyReferenced_nonNull_native);
      v31 = v14;
      v23 = sub_252A44A10(v14, v30);
      if ((v29 & 1) != (v32 & 1))
      {
        goto LABEL_38;
      }

LABEL_21:
      v8 = v54;
      v1 = v55;
      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }

    v31 = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_21;
    }

    v37 = v23;
    sub_252E047F0();
    v23 = v37;
    v8 = v54;
    v1 = v55;
    if ((v29 & 1) == 0)
    {
LABEL_24:
      v34 = v60;
      v60[(v23 >> 6) + 8] |= 1 << v23;
      v38 = (v34[6] + 16 * v23);
      *v38 = v31;
      v38[1] = v30;
      *(v34[7] + 8 * v23) = v15;
      v39 = v34[2];
      v27 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v27)
      {
        goto LABEL_36;
      }

      v34[2] = v40;
      goto LABEL_26;
    }

LABEL_22:
    v33 = v23;

    v34 = v60;
    v35 = v60[7];
    v36 = *(v35 + 8 * v33);
    *(v35 + 8 * v33) = v15;

LABEL_26:
    v41 = *v57;
    *v57 = v34;

    (v58)(&v59, 0);
    v0 = v53;
LABEL_9:
    v7 &= v7 - 1;

    v4 = v56;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      goto LABEL_28;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_15;
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
  result = sub_252E37E24();
  __break(1u);
  return result;
}

uint64_t sub_252D71B2C()
{
  v1 = *(v0 + 16);
  if (!v1)
  {
    goto LABEL_16;
  }

  v2 = *(v1 + 16);
  if (v2 < 0x65)
  {
    goto LABEL_15;
  }

  v3 = sub_252DFA478(*(v1 + 16), 0);
  v4 = sub_252E08154(&v16, v3 + 4, v2, v1);
  swift_bridgeObjectRetain_n();
  sub_25291AE30();
  if (v4 == v2)
  {
    v16 = v3;
    sub_252D77C44(&v16);
    v3 = (v2 - 100);

    v5 = v16[2];
    if (v5 >= v2 - 100)
    {
      v6 = v5 - v3;
    }

    else
    {
      v6 = 0;
    }

    if (v6 != v5)
    {
      if (v5 >= v3)
      {
        v7 = v2 - 100;
      }

      else
      {
        v7 = v16[2];
      }

      v8 = (v16 + 24 * v5 - 24 * v7 + 48);
      while (v6 < v5)
      {
        ++v6;
        v9 = *(v8 - 1);
        v3 = *v8;
        v10 = *(v8 - 2);

        sub_252D714A0(v10, v9);

        v8 += 3;
        if (!--v7)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_14:
    swift_unknownObjectRelease();
    v1 = *(v0 + 16);
    if (!v1)
    {
LABEL_16:
      swift_beginAccess();
      v12 = *(v0 + 40);
      if (!v12)
      {
        return 0;
      }

      v13 = *(v12 + 16);
      if (!v13)
      {
        return MEMORY[0x277D84F90];
      }

      v14 = sub_252DFA3E0(*(v12 + 16), 0);
      v3 = sub_252E11360(&v16, v14 + 4, v13, v12);

      sub_25291AE30();
      if (v3 == v13)
      {
        return v14;
      }

      goto LABEL_23;
    }

LABEL_15:
    type metadata accessor for IntentSelectionCacheKeysRecord();
    v11 = swift_allocObject();
    v11[2] = 3288625;
    v11[3] = 0xE300000000000000;
    v11[4] = 0xD000000000000020;
    v11[5] = 0x8000000252E7AE10;
    v11[6] = v1;
    swift_bridgeObjectRetain_n();
    sub_252DBC8C8(v11, 0xD000000000000020, 0x8000000252E7AE10);

    goto LABEL_16;
  }

LABEL_24:
  __break(1u);

  __break(1u);
  return result;
}

void *CacheKeys.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return v0;
}

uint64_t CacheKeys.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

void *sub_252D71EF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v6 = sub_252E36AD4();
  __swift_project_value_buffer(v6, qword_27F544E20);
  sub_252E379F4();

  v31 = 0xD00000000000001CLL;
  v32 = 0x8000000252E997A0;
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC3D90(0xD00000000000001CLL, 0x8000000252E997A0, 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v7 = *(v2 + 16);
  if (v7 || (v8 = sub_252CC4E10(MEMORY[0x277D84F90]), v9 = *(v3 + 16), *(v3 + 16) = v8, , (v7 = *(v3 + 16)) != 0))
  {
    if (*(v7 + 16))
    {

      v10 = sub_252A44A10(a1, a2);
      if (v11)
      {
        v12 = *(*(v7 + 56) + 8 * v10);

        sub_252E379F4();

        v31 = 0xD000000000000019;
        v32 = 0x8000000252E997E0;

        v13 = sub_252AFB9BC();
        v15 = v14;

        MEMORY[0x2530AD570](v13, v15);

        sub_252CC3D90(0xD000000000000019, 0x8000000252E997E0, 0xD000000000000094, 0x8000000252E98E90);

        v16 = v12[69];

        sub_252AFC800();

        goto LABEL_13;
      }
    }
  }

  v12 = sub_252AFFAFC(a1, a2);
  if (!v12)
  {
    return v12;
  }

  sub_252E379F4();

  v31 = 0xD00000000000001ALL;
  v32 = 0x8000000252E997C0;

  v17 = sub_252AFB9BC();
  v19 = v18;

  MEMORY[0x2530AD570](v17, v19);

  sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E997C0, 0xD000000000000094, 0x8000000252E98E90);

  v20 = v12[69];

  sub_252AFC800();

  v22 = sub_252D71E50();
  if (*v21)
  {
    v23 = v21;
    v24 = v12[4];
    v25 = v12[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v23;
    *v23 = 0x8000000000000000;
    sub_2529FADDC(v12, v24, v25, isUniquelyReferenced_nonNull_native);

    *v23 = v30;
  }

  (v22)(&v31, 0);
LABEL_13:
  v27 = sub_252D71EA0();
  if (*v28)
  {
    sub_2529AD0B0(a1, a2);
  }

  (v27)(&v31, 0);
  return v12;
}

uint64_t sub_252D722C0(void *__src, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, __src, 0x1F8uLL);
  memcpy(v22, __src, sizeof(v22));
  type metadata accessor for IntentSelectionCacheEntry();
  swift_allocObject();

  sub_2529353AC(__dst, v21);
  v8 = sub_252AFBB30(a2, a3, v22);
  swift_beginAccess();
  if (!*(v4 + 16))
  {
    v9 = sub_252CC4E10(MEMORY[0x277D84F90]);
    v10 = *(v4 + 16);
    *(v4 + 16) = v9;
  }

  v12 = sub_252D71E50();
  if (*v11)
  {
    v13 = v11;
    v14 = v8[4];
    v15 = v8[5];

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v13;
    *v13 = 0x8000000000000000;
    sub_2529FADDC(v8, v14, v15, isUniquelyReferenced_nonNull_native);

    *v13 = v20;
  }

  (v12)(v22, 0);
  swift_beginAccess();
  if (*(v4 + 24))
  {
    v17 = sub_252D71EA0();
    if (*v18)
    {
      sub_2529AD0B0(a2, a3);
    }

    (v17)(v22, 0);
  }
}

uint64_t sub_252D724A0(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E36AD4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v10 = *(v2 + 16);
  if (v10 && *(v10 + 16))
  {
    v11 = *(v2 + 16);

    v12 = sub_252A44A10(a1, a2);
    if (v13)
    {
      v14 = *(*(v10 + 56) + 8 * v12);

      v15 = v14[69];
      *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 1;
      *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
      v17 = sub_252D71E50();
      if (*v16)
      {
        v18 = v16;
        v19 = v14[4];
        v20 = v14[5];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *v18;
        *v18 = 0x8000000000000000;
        sub_2529FADDC(v14, v19, v20, isUniquelyReferenced_nonNull_native);

        *v18 = v37;
      }

      (v17)(&v34, 0);
      if (qword_27F53F528 != -1)
      {
        swift_once();
      }

      v25 = __swift_project_value_buffer(v5, qword_27F544E20);
      (*(v6 + 16))(v9, v25, v5);
      v34 = 0;
      v35 = 0xE000000000000000;
      sub_252E379F4();

      v34 = 0xD000000000000018;
      v35 = 0x8000000252E99780;
      v26 = *(v2 + 16);
      if (v26 && *(v26 + 16))
      {
        v27 = v14[4];
        v28 = v14[5];

        v29 = sub_252A44A10(v27, v28);
        v31 = v30;

        if (v31)
        {
          v32 = *(*(v26 + 56) + 8 * v29);

LABEL_20:
          v37 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B28, &unk_252E5E950);
          v33 = sub_252E36F94();
          MEMORY[0x2530AD570](v33);

          sub_252CC3D90(v34, v35, 0xD000000000000094, 0x8000000252E98E90);

          return (*(v6 + 8))(v9, v5);
        }
      }

      v32 = 0;
      goto LABEL_20;
    }
  }

  swift_beginAccess();
  if (!*(v2 + 24))
  {
    *(v2 + 24) = MEMORY[0x277D84FA0];
  }

  v22 = sub_252D71EA0();
  if (*v23)
  {

    sub_252DA6CD0(&v36, a1, a2);
  }

  return (v22)(&v34, 0);
}

uint64_t sub_252D7289C()
{
  v47 = sub_252E32E04();
  v1 = *(v47 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  v5 = *(v0 + 16);
  if (v5)
  {
    v48 = v1;

    v51 = sub_252CC4E10(MEMORY[0x277D84F90]);
    v6 = 1 << *(v5 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v5 + 64);
    v9 = (v6 + 63) >> 6;

    v10 = 0;
    if (v8)
    {
      while (1)
      {
        v11 = v10;
LABEL_10:
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(v5 + 48) + 16 * v13);
        v15 = *v14;
        v16 = v14[1];
        v17 = *(*(v5 + 56) + 8 * v13);

        sub_252D72CF0(v15, v16, v17, &v51);

        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v11 >= v9)
      {
        break;
      }

      v8 = *(v5 + 64 + 8 * v11);
      ++v10;
      if (v8)
      {
        v10 = v11;
        goto LABEL_10;
      }
    }

    v18 = v51;
    v19 = *(v0 + 16);
    *(v0 + 16) = v51;

    swift_beginAccess();
    v20 = *(v0 + 24);
    if (!v20)
    {
    }

    v21 = *(v20 + 56);
    v43 = v20 + 56;
    v22 = 1 << *(v20 + 32);
    v23 = -1;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    v24 = v23 & v21;
    v41 = v18;
    v42 = (v22 + 63) >> 6;
    v44 = (v48 + 32);
    v45 = v20;
    result = swift_bridgeObjectRetain_n();
    v25 = 0;
    for (i = v46; v24; result = )
    {
      v27 = v25;
LABEL_21:
      v28 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
      v29 = (*(v45 + 48) + ((v27 << 10) | (16 * v28)));
      v31 = v29[1];
      v48 = *v29;
      v30 = v48;
      _s7BuilderCMa_1();
      swift_allocObject();
      sub_252E1E238();

      sub_252E1E4F8(v49);

      memcpy(v50, v49, sizeof(v50));
      type metadata accessor for IntentSelectionCacheEntry();
      v32 = swift_allocObject();
      v32[2] = 3288625;
      v32[3] = 0xE300000000000000;
      v32[4] = v30;
      v32[5] = v31;
      memcpy(v32 + 6, v50, 0x1F8uLL);
      swift_bridgeObjectRetain_n();
      sub_2529353AC(v50, v49);
      sub_252E32DF4();
      v33 = type metadata accessor for IntentSelectionCacheRecordMetadata();
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      v36 = swift_allocObject();
      v37 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated;
      *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) = 0;
      v38 = OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush;
      *(v36 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 1;
      v39 = v47;
      v36[2] = v48;
      v36[3] = v31;
      v36[4] = 1;
      (*v44)(v36 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_lastAccessDate, i, v39);
      *(v36 + v37) = 0;
      *(v36 + v38) = 1;
      v32[69] = v36;

      sub_252D6FC08(v40, sub_252D7E760, v32);
      sub_252935408(v50);
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v42)
      {
      }

      v24 = *(v43 + 8 * v27);
      ++v25;
      if (v24)
      {
        v25 = v27;
        goto LABEL_21;
      }
    }

LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t sub_252D72CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E20);
  sub_252E379F4();

  strcpy(v17, "Entry for key ");
  HIBYTE(v17[1]) = -18;
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC3D90(v17[0], v17[1], 0xD000000000000094, 0x8000000252E98E90);

  v10 = *(a3 + 552);
  if (*(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_isInvalidated) == 1)
  {
    sub_252E379F4();

    strcpy(v17, "Deleting ");
    WORD1(v17[1]) = 0;
    HIDWORD(v17[1]) = -385875968;
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0x203A7972746E4520, 0xE800000000000000);
    v11 = sub_252AFB9BC();
    MEMORY[0x2530AD570](v11);

    sub_252CC3D90(v17[0], v17[1], 0xD000000000000094, 0x8000000252E98E90);

    sub_252D6FC08(v12, sub_252D7E870, a3);
  }

  else
  {
    if (*(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) != 1)
    {
      return result;
    }

    *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal34IntentSelectionCacheRecordMetadata_shouldFlush) = 0;

    v13 = *a4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17[0] = *a4;
    *a4 = 0x8000000000000000;
    sub_2529FADDC(a3, a1, a2, isUniquelyReferenced_nonNull_native);

    *a4 = v17[0];
    sub_252E379F4();

    strcpy(v17, "Writing ");
    BYTE1(v17[1]) = 0;
    WORD1(v17[1]) = 0;
    HIDWORD(v17[1]) = -402653184;
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](0x203A7972746E4520, 0xE800000000000000);
    v15 = sub_252AFB9BC();
    MEMORY[0x2530AD570](v15);

    sub_252CC3D90(v17[0], v17[1], 0xD000000000000094, 0x8000000252E98E90);

    sub_252DBDD08(v16, a3);
  }
}

uint64_t CacheEntries.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t CacheEntries.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

dispatch_semaphore_t sub_252D730A8()
{
  result = dispatch_semaphore_create(1);
  qword_27F575B68 = result;
  return result;
}

BOOL sub_252D730CC()
{
  swift_beginAccess();
  memcpy(__dst, (v0 + 88), sizeof(__dst));
  v1 = __dst[63];
  sub_252938414(__dst, v4, &qword_27F545B08, &qword_252E5E730);
  [v1 lock];
  sub_252938414(__dst, v4, &qword_27F5404C8, &unk_252E3FD60);
  [v1 unlock];
  sub_25293847C(__dst, &qword_27F545B08, &qword_252E5E730);
  memcpy(v4, __dst, 0x1F8uLL);
  v2 = sub_252956B94(v4);
  if (v2 != 1)
  {
    sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  }

  return v2 != 1;
}

void *sub_252D731D4()
{
  v1 = v0;
  v2 = sub_252E37564();
  v28 = *(v2 - 8);
  v29 = v2;
  v3 = *(v28 + 64);
  MEMORY[0x28223BE20](v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E37534();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_252E36D04();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[8] = 0;
  v0[9] = 0;
  v0[10] = v9;
  sub_25293DEE0(v31);
  memcpy(v32, v31, sizeof(v32));
  v10 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) &selRef__refreshBeforeDate_completionHandler_];
  memcpy(v0 + 11, v32, 0x1F8uLL);
  v0[74] = v10;
  v26 = sub_25293F638(0, &qword_2814B0218, 0x277D85C78);
  sub_252E36CF4();
  v30 = MEMORY[0x277D84F90];
  sub_252D7E80C(&qword_2814B0220, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_2529E6488(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  v0[77] = sub_252E37594();
  v11 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v0[78] = 0;
  v0[79] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B48, &unk_252E5E980);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_252E3C3C0;
  v13 = type metadata accessor for HomeGraphCacheInvalidationSignal();
  v14 = swift_allocObject();
  *(v14 + 16) = 0x70617247656D6F48;
  *(v14 + 24) = 0xEF6C616E67695368;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v12 + 56) = v13;
  *(v12 + 64) = &off_2864BF420;
  *(v12 + 32) = v14;
  v15 = type metadata accessor for SystemVersionCacheInvalidationSignal();
  v16 = swift_allocObject();
  *(v16 + 16) = 0xD000000000000013;
  *(v16 + 24) = 0x8000000252E99B00;
  *(v16 + 32) = 0u;
  *(v16 + 48) = 0u;
  *(v12 + 96) = v15;
  *(v12 + 104) = &off_2864BF468;
  *(v12 + 72) = v16;
  swift_beginAccess();
  v17 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[2] = v12;
  v1[3] = v17;
  swift_endAccess();
  type metadata accessor for CacheKeys();
  v18 = swift_allocObject();
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  swift_beginAccess();
  v19 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[4] = v18;
  v1[5] = v19;
  swift_endAccess();
  type metadata accessor for CacheEntries();
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  swift_beginAccess();
  v21 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[6] = v20;
  v1[7] = v21;
  swift_endAccess();
  swift_beginAccess();
  v22 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *(v1 + 640) = 0;
  v1[81] = v22;
  swift_endAccess();
  v23 = sub_252CC4CE8(MEMORY[0x277D84F90]);
  swift_beginAccess();
  v24 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v1[75] = v23;
  v1[76] = v24;
  swift_endAccess();
  return v1;
}

uint64_t IntentSelectionCache.deinit()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  sub_252CC3D90(0x74696E696564, 0xE600000000000000, 0xD000000000000094, 0x8000000252E98E90);
  sub_252D75B30();
  v3 = *(v0 + 16);

  v4 = *(v1 + 32);

  v5 = *(v1 + 48);

  v6 = *(v1 + 72);

  memcpy(v10, (v1 + 88), sizeof(v10));
  sub_25293847C(v10, &qword_27F545B08, &qword_252E5E730);
  v7 = *(v1 + 600);

  v8 = *(v1 + 624);

  return v1;
}

uint64_t IntentSelectionCache.__deallocating_deinit()
{
  IntentSelectionCache.deinit();

  return swift_deallocClassInstance();
}

void sub_252D73864(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E36CA4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544E20);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E98F30, 0xD000000000000094, 0x8000000252E98E90);
  v10 = swift_allocObject();
  swift_weakInit();
  (*(v7 + 16))(v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  (*(v7 + 32))(v12 + v11, v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_252D7C504;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_23;
  _Block_copy(aBlock);
  v23[1] = MEMORY[0x277D84F90];
  sub_252D7E80C(qword_2814B0298, MEMORY[0x277D85198]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  sub_252E37824();
  v13 = sub_252E36DA4();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_252E36D74();

  swift_beginAccess();
  v17 = v2[79];
  [v17 lock];
  v18 = v2[78];
  v2[78] = v16;

  [v17 unlock];
  swift_endAccess();
  v19 = v2[78];
  v20 = v2[79];

  v21 = v20;
  [v21 lock];
  [v21 unlock];

  if (v19)
  {
    v22 = v2[77];
    sub_252E37584();
  }
}

uint64_t sub_252D73C68(uint64_t a1, uint64_t a2)
{
  v3 = sub_252E36AB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v8 = sub_252E36AD4();
  __swift_project_value_buffer(v8, qword_27F544E20);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E998F0, 0xD000000000000094, 0x8000000252E98E90);
  if (qword_27F53F620 != -1)
  {
    swift_once();
  }

  v9 = qword_27F544FA8;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    v24 = v4;
    sub_252D75858();
    if ((sub_252D75DD0() & 1) == 0)
    {
      sub_252CC3D90(0xD000000000000012, 0x8000000252E99920, 0xD000000000000094, 0x8000000252E98E90);
      sub_252D75FC4();
    }

    v12 = sub_252D769A4(a2);
    if (!v13)
    {
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E99940, 0xD000000000000094, 0x8000000252E98E90);

LABEL_17:
      v4 = v24;
      goto LABEL_18;
    }

    v14 = v12;
    v15 = v13;
    v23 = v3;
    v31[0] = 0x203A79656BLL;
    v31[1] = 0xE500000000000000;
    MEMORY[0x2530AD570]();
    sub_252CC3D90(v31[0], v31[1], 0xD000000000000094, 0x8000000252E98E90);

    swift_beginAccess();
    v16 = *(v11 + 32);
    v17 = *(v11 + 40);

    v18 = v17;
    [v18 lock];
    [v18 unlock];

    LOBYTE(v18) = sub_252D71108(v14, v15);

    if (v18)
    {
      sub_252D762E4(v14, v15, v30);
      memcpy(v31, v30, sizeof(v31));
      if (sub_252956B94(v31) != 1)
      {

        v29[0] = 0;
        v29[1] = 0xE000000000000000;
        sub_252E379F4();

        v26 = 0xD00000000000001FLL;
        v27 = 0x8000000252E999A0;
        memcpy(v25, v31, sizeof(v25));
        memcpy(v28, v30, sizeof(v28));
        sub_2529353AC(v28, v29);
        v19 = HomeAutomationIntent.description.getter();
        v21 = v20;
        memcpy(v29, v25, sizeof(v29));
        sub_252935408(v29);
        MEMORY[0x2530AD570](v19, v21);

        sub_252CC3D90(v26, v27, 0xD000000000000094, 0x8000000252E98E90);

        sub_25293847C(v30, &qword_27F5404C8, &unk_252E3FD60);
        goto LABEL_16;
      }

      v29[0] = 0;
      v29[1] = 0xE000000000000000;
      sub_252E379F4();

      v29[0] = 0xD00000000000001FLL;
      v29[1] = 0x8000000252E99160;
      MEMORY[0x2530AD570](v14, v15);

      sub_252CC4050(v29[0], v29[1], 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001ALL, 0x8000000252E99980, 583);
    }

    else
    {
      v31[0] = 0;
      v31[1] = 0xE000000000000000;
      sub_252E379F4();

      v31[0] = 0xD000000000000015;
      v31[1] = 0x8000000252E99960;
      MEMORY[0x2530AD570](v14, v15);

      sub_252CC3D90(v31[0], v31[1], 0xD000000000000094, 0x8000000252E98E90);
    }

LABEL_16:
    v3 = v23;
    goto LABEL_17;
  }

LABEL_18:
  sub_252E375C4();
  sub_252E36A74();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_252D7426C(uint64_t a1, uint64_t a2)
{
  v5 = sub_252E36DF4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36E04();
  v30 = *(v10 - 8);
  v31 = v10;
  v11 = *(v30 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  swift_beginAccess();
  v15 = v2[8];
  v14 = v2[9];
  v16 = v2[10];

  v17 = v16;
  [v17 lock];
  [v17 unlock];

  if (v14)
  {
    v18 = v15;
  }

  else
  {
    v18 = 0;
  }

  if (!v14)
  {
    v14 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](v18, v14);

  MEMORY[0x2530AD570](43, 0xE100000000000000);
  MEMORY[0x2530AD570](a1, a2);
  v19 = v32;
  v20 = v33;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v21 = sub_252E36AD4();
  v29[1] = __swift_project_value_buffer(v21, qword_27F544E20);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0x636143646578696DLL;
  v33 = 0xEF203A79654B6568;
  MEMORY[0x2530AD570](v19, v20);
  sub_252CC3D90(v32, v33, 0xD000000000000094, 0x8000000252E98E90);

  v22 = sub_252ABF638(v19, v20);
  v24 = v23;
  sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588]);
  sub_252E36DE4();
  sub_2529E61B0(v22, v24);
  sub_252D7BB0C(v22, v24);
  sub_25296464C(v22, v24);
  sub_252E36DD4();
  (*(v6 + 8))(v9, v5);
  v32 = sub_252D6F868(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
  v25 = sub_252E36EA4();
  v27 = v26;

  v32 = 0;
  v33 = 0xE000000000000000;
  sub_252E379F4();

  v32 = 0xD000000000000011;
  v33 = 0x8000000252E998D0;

  MEMORY[0x2530AD570](v25, v27);

  sub_252CC3D90(v32, v33, 0xD000000000000094, 0x8000000252E98E90);

  sub_25296464C(v22, v24);
  (*(v30 + 8))(v13, v31);
  return v25;
}

void sub_252D746D8(int a1@<W0>, void *a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  v81 = sub_252E36C84();
  v79 = *(v81 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v81);
  v7 = (&v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v80 = sub_252E36D54();
  v78 = *(v80 - 8);
  v8 = *(v78 + 64);
  v9 = MEMORY[0x28223BE20](v80);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v71 - v12;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v73 = sub_252E36AD4();
  __swift_project_value_buffer(v73, qword_27F544E20);
  v88[0] = 0;
  v88[1] = 0xE000000000000000;
  sub_252E379F4();

  v72 = 0xD00000000000002ELL;
  v88[0] = 0xD00000000000002ELL;
  v88[1] = 0x8000000252E98F60;
  v76 = a1;
  if (a1)
  {
    v13 = 1702195828;
  }

  else
  {
    v13 = 0x65736C6166;
  }

  if (a1)
  {
    v14 = 0xE400000000000000;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v13, v14);

  MEMORY[0x2530AD570](41, 0xE100000000000000);
  sub_252CC3D90(v88[0], v88[1], 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v15 = *(v2 + 640);
  v16 = *(v2 + 648);
  [v16 lock];
  [v16 unlock];

  if (v15 != 1)
  {
    v74 = "CoolingResponseHandler.swift";
    swift_beginAccess();
    v20 = *(v3 + 648);
    [v20 lock];
    *(v3 + 640) = 1;
    [v20 unlock];
    swift_endAccess();
    swift_beginAccess();
    v21 = *(v3 + 624);
    v75 = v3;
    v22 = *(v3 + 632);

    v23 = v22;
    [v23 lock];
    [v23 &off_279711178];

    if (v21)
    {
      sub_252E36D14();
      *v7 = 200;
      v24 = v79;
      v25 = v81;
      (*(v79 + 104))(v7, *MEMORY[0x277D85178], v81);
      v26 = v77;
      sub_252E36D24();
      (*(v24 + 8))(v7, v25);
      v27 = *(v78 + 8);
      v28 = v80;
      v27(v11, v80);
      v29 = sub_252E36D64();

      v27(v26, v28);
      v30 = v29 & 1;
    }

    else
    {
      v30 = 2;
    }

    v88[0] = 0;
    v88[1] = 0xE000000000000000;
    sub_252E379F4();
    v81 = 0xD00000000000001FLL;
    MEMORY[0x2530AD570]();
    v31 = v75;
    v32 = *(v75 + 624);
    v33 = *(v75 + 632);

    v34 = v33;
    [v34 lock];
    [v34 unlock];

    v87[0] = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B10, &qword_252E5E738);
    v35 = sub_252E36F94();
    MEMORY[0x2530AD570](v35);

    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E98FB0);
    swift_beginAccess();
    v37 = *(v31 + 64);
    v36 = *(v31 + 72);
    v38 = *(v31 + 80);

    v39 = v38;
    [v39 lock];
    [v39 unlock];

    v87[0] = v37;
    v87[1] = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v40 = sub_252E36F94();
    MEMORY[0x2530AD570](v40);

    v41 = v74;
    sub_252CC3D90(v88[0], v88[1], 0xD000000000000094, v74 | 0x8000000000000000);

    swift_beginAccess();
    v42 = *(v31 + 648);
    [v42 lock];
    *(v31 + 640) = 0;
    [v42 unlock];
    swift_endAccess();
    swift_beginAccess();
    v43 = *(v31 + 632);
    [v43 lock];
    v44 = *(v31 + 624);
    *(v31 + 624) = 0;

    [v43 unlock];
    swift_endAccess();
    if (v30 == 2 || (v30 & 1) != 0)
    {
      v45 = " for generated key ";
      v17 = 0xD000000000000010;
    }

    else
    {
      if ((v76 & 1) == 0)
      {
        v60 = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0();
        if (v60)
        {
          v61 = v60;
          swift_beginAccess();
          memcpy(v88, v61 + 11, sizeof(v88));
          v62 = v88[63];
          sub_252938414(v88, v87, &qword_27F545B08, &qword_252E5E730);
          [v62 lock];
          sub_252938414(v88, v87, &qword_27F5404C8, &unk_252E3FD60);
          [v62 unlock];

          sub_25293847C(v88, &qword_27F545B08, &qword_252E5E730);
          memcpy(v89, v88, sizeof(v89));
          if (sub_252956B94(v89) != 1)
          {
            v87[0] = 0;
            v87[1] = 0xE000000000000000;
            sub_252E379F4();

            v83[0] = 0xD000000000000015;
            v83[1] = 0x8000000252E98FF0;
            memcpy(v87, v89, 0x1F8uLL);
            v66 = HomeAutomationIntent.description.getter();
            MEMORY[0x2530AD570](v66);

            sub_252CC3D90(v83[0], v83[1], 0xD000000000000094, v41 | 0x8000000000000000);

            memcpy(v82, v88, 0x1F8uLL);
            goto LABEL_23;
          }
        }

        v17 = 0x2D65686361435349;
        v18 = 0xEE0064657373696DLL;
        goto LABEL_18;
      }

      sub_252CC3D90(0xD00000000000004DLL, 0x8000000252E99010, 0xD000000000000094, v41 | 0x8000000000000000);
      v47 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v48 = sub_252AC5368(0xD000000000000014, 0x8000000252E5E720);

      if (v48 != 2 && (v48 & 1) == 0)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v73, qword_27F544DA8);
        sub_252CC4050(0xD000000000000053, 0x8000000252E82DF0, 0xD000000000000094, v41 | 0x8000000000000000, 0xD000000000000010, 0x8000000252E99180, 658);
      }

      v49 = _s22HomeAutomationInternal22MatterAccessoryManagerC6sharedACvgZ_0();
      v50 = *&v49[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash];
      v51 = *&v49[OBJC_IVAR____TtC22HomeAutomationInternal22MatterAccessoryManager_stableMatterAccessoriesHash + 8];

      if (v51)
      {
        v88[0] = 0;
        v88[1] = 0xE000000000000000;
        sub_252E379F4();

        v88[0] = 0xD00000000000001DLL;
        v88[1] = 0x8000000252E99100;
        MEMORY[0x2530AD570](v50, v51);
        sub_252CC3D90(v88[0], v88[1], 0xD000000000000094, v41 | 0x8000000000000000);

        v52 = sub_252D7426C(v50, v51);
        v54 = v53;

        swift_beginAccess();
        v55 = *(v31 + 80);

        [v55 lock];
        v56 = *(v31 + 72);
        *(v31 + 64) = v52;
        *(v31 + 72) = v54;

        [v55 unlock];
        swift_endAccess();
        v88[0] = 0x203A79656BLL;
        v88[1] = 0xE500000000000000;
        MEMORY[0x2530AD570](v52, v54);
        sub_252CC3D90(v88[0], v88[1], 0xD000000000000094, v41 | 0x8000000000000000);

        swift_beginAccess();
        v57 = *(v31 + 32);
        v58 = *(v31 + 40);

        v59 = v58;
        [v59 lock];
        [v59 unlock];

        LOBYTE(v59) = sub_252D71108(v52, v54);

        if (v59)
        {
          sub_252D762E4(v52, v54, v87);
          memcpy(v88, v87, 0x1F8uLL);
          if (sub_252956B94(v88) == 1)
          {
            v89[0] = 0;
            v89[1] = 0xE000000000000000;
            sub_252E379F4();

            v89[0] = v81;
            v89[1] = 0x8000000252E99160;
            MEMORY[0x2530AD570](v52, v54);

            sub_252CC4050(v89[0], v89[1], 0xD000000000000094, v74 | 0x8000000000000000, 0xD000000000000010, 0x8000000252E99180, 677);
          }

          else
          {

            v89[0] = 0;
            v89[1] = 0xE000000000000000;
            sub_252E379F4();

            v84 = v72;
            v85 = 0x8000000252E991A0;
            memcpy(v83, v88, sizeof(v83));
            memcpy(v86, v87, 0x1F8uLL);
            sub_2529353AC(v86, v89);
            v67 = HomeAutomationIntent.description.getter();
            v69 = v68;
            memcpy(v89, v83, sizeof(v89));
            sub_252935408(v89);
            MEMORY[0x2530AD570](v67, v69);

            sub_252CC3D90(v84, v85, 0xD000000000000094, v74 | 0x8000000000000000);
          }

          v46 = v87;
          goto LABEL_22;
        }

        v88[0] = 0;
        v88[1] = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E99120);
        MEMORY[0x2530AD570](v52, v54);

        sub_252CC3D90(v88[0], v88[1], 0xD000000000000094, v41 | 0x8000000000000000);

        goto LABEL_20;
      }

      sub_252CC3D90(0xD000000000000046, 0x8000000252E99060, 0xD000000000000094, v41 | 0x8000000000000000);
      v63 = _s22HomeAutomationInternal20IntentSelectionCacheC6sharedACSgvgZ_0();
      if (v63)
      {
        v64 = v63;
        swift_beginAccess();
        memcpy(v88, v64 + 11, sizeof(v88));
        v65 = v88[63];
        sub_252938414(v88, v87, &qword_27F545B08, &qword_252E5E730);
        [v65 lock];
        sub_252938414(v88, v87, &qword_27F5404C8, &unk_252E3FD60);
        [v65 unlock];

        sub_25293847C(v88, &qword_27F545B08, &qword_252E5E730);
        memcpy(v89, v88, sizeof(v89));
        if (sub_252956B94(v89) != 1)
        {
          v87[0] = 0;
          v87[1] = 0xE000000000000000;
          sub_252E379F4();

          v83[0] = 0xD000000000000020;
          v83[1] = 0x8000000252E990D0;
          memcpy(v87, v89, 0x1F8uLL);
          v70 = HomeAutomationIntent.description.getter();
          MEMORY[0x2530AD570](v70);

          sub_252CC3D90(v83[0], v83[1], 0xD000000000000094, v41 | 0x8000000000000000);

          goto LABEL_21;
        }
      }

      v45 = "ting to fallback cache";
      v17 = 0xD000000000000019;
    }

    v18 = v45 | 0x8000000000000000;
LABEL_18:
    v19 = v41 | 0x8000000000000000;
    goto LABEL_19;
  }

  v17 = 0xD000000000000030;
  v18 = 0x8000000252E991D0;
  v19 = 0x8000000252E98E90;
LABEL_19:
  sub_252CC3D90(v17, v18, 0xD000000000000094, v19);
LABEL_20:
  sub_25293DEE0(v88);
LABEL_21:
  v46 = v88;
LABEL_22:
  memcpy(v82, v46, 0x1F8uLL);
LABEL_23:
  sub_252D755C8();
}

void sub_252D755C8()
{
  swift_beginAccess();
  memcpy(__dst, (v0 + 88), sizeof(__dst));
  v1 = __dst[63];
  sub_252938414(__dst, v13, &qword_27F545B08, &qword_252E5E730);
  [v1 lock];
  sub_252938414(__dst, v13, &qword_27F5404C8, &unk_252E3FD60);
  [v1 unlock];
  sub_25293847C(__dst, &qword_27F545B08, &qword_252E5E730);
  memcpy(v13, __dst, 0x1F8uLL);
  v2 = sub_252956B94(v13);
  if (v2 != 1)
  {
    sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D57570]) init];
  if (v3)
  {
    v4 = v3;
    v5 = [objc_allocWithZone(MEMORY[0x277D57580]) init];
    if (v5)
    {
      v6 = v5;
      sub_252C78830(v2 != 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_252E3C130;
      *(v7 + 32) = v6;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v8 = v6;
      v9 = sub_252E37254();

      [v4 setHomeAutomationRequests_];

      v10 = sub_252DB7C84();
      swift_beginAccess();
      v11 = v4;
      MEMORY[0x2530AD700]();
      if (*((v10[4] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10[4] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v12 = *((v10[4] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      swift_endAccess();

      sub_252DB7C84();
      sub_252DB649C(0, 0, 1);
    }

    else
    {
    }
  }
}

uint64_t sub_252D75858()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  sub_252CC3D90(0xD000000000000010, 0x8000000252E99760, 0xD000000000000094, 0x8000000252E98E90);
  swift_beginAccess();
  v3 = v0[78];
  v4 = v1[79];

  v5 = v4;
  [v5 lock];
  [v5 unlock];

  if (v3)
  {
    sub_252E36D84();
  }

  swift_beginAccess();
  v6 = v1[10];
  [v6 lock];
  v7 = v1[9];
  v1[8] = 0;
  v1[9] = 0;

  [v6 unlock];
  swift_endAccess();
  sub_25293DEE0(__src);
  swift_beginAccess();
  v8 = v1[74];
  [v8 lock];
  memcpy(__dst, v1 + 11, sizeof(__dst));
  memcpy(v1 + 11, __src, 0x1F8uLL);
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  [v8 unlock];
  swift_endAccess();
  swift_beginAccess();
  v10 = v1[2];
  v9 = v1[3];

  v11 = v9;
  [v11 lock];
  [v11 unlock];

  v12 = *(v10 + 16);
  if (v12)
  {
    v13 = v10 + 32;
    do
    {
      sub_252929E74(v13, v20);
      v14 = v21;
      v15 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v15 + 56))(v14, v15);
      __swift_destroy_boxed_opaque_existential_1(v20);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  swift_beginAccess();
  v17 = v1[4];
  v16 = v1[5];

  v18 = v16;
  [v18 lock];
  [v18 unlock];

  sub_252D70D50();
}

uint64_t sub_252D75B30()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  sub_252CC3D90(0xD000000000000019, 0x8000000252E999C0, 0xD000000000000094, 0x8000000252E98E90);
  swift_beginAccess();
  v4 = v0[2];
  v3 = v0[3];

  v5 = v3;
  [v5 lock];
  [v5 unlock];

  v6 = *(v4 + 16);
  if (v6)
  {
    v7 = v4 + 32;
    do
    {
      sub_252929E74(v7, v25);
      v8 = v26;
      v9 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      (*(v9 + 64))(0, v8, v9);
      __swift_destroy_boxed_opaque_existential_1(v25);
      v7 += 40;
      --v6;
    }

    while (v6);
  }

  swift_beginAccess();
  v10 = v1[4];
  v11 = v1[5];

  v12 = v11;
  [v12 lock];
  [v12 unlock];

  v13 = sub_252D71B2C();

  if (v13)
  {
    swift_beginAccess();
    v14 = v1[6];
    v15 = v1[7];

    v16 = v15;
    [v16 lock];
    [v16 unlock];

    v17 = *(v13 + 16);
    if (v17)
    {
      v18 = (v13 + 40);
      do
      {
        v19 = *(v18 - 1);
        v20 = *v18;

        sub_252D724A0(v19, v20);

        v18 += 2;
        --v17;
      }

      while (v17);
    }
  }

  swift_beginAccess();
  v22 = v1[6];
  v21 = v1[7];

  v23 = v21;
  [v23 lock];
  [v23 unlock];

  sub_252D7289C();
}

uint64_t sub_252D75DD0()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  v3 = v2;
  [v3 lock];
  [v3 unlock];

  v4 = *(v1 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = v1 + 32;
    while (1)
    {
      if (v5 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_10;
      }

      sub_252929E74(v6, v16);
      v7 = v17;
      v8 = v18;
      __swift_project_boxed_opaque_existential_1(v16, v17);
      if (((*(v8 + 32))(v7, v8) & 1) == 0)
      {
        break;
      }

      ++v5;
      __swift_destroy_boxed_opaque_existential_1(v16);
      v6 += 40;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    if (qword_27F53F528 == -1)
    {
      goto LABEL_8;
    }

LABEL_10:
    swift_once();
LABEL_8:
    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544E20);
    v11 = v17;
    v12 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v14 = (*(v12 + 8))(v11, v12);
    v15 = v13;
    MEMORY[0x2530AD570](0x20544F4E20736920, 0xED000064696C6176);
    sub_252CC3D90(v14, v15, 0xD000000000000094, 0x8000000252E98E90);

    __swift_destroy_boxed_opaque_existential_1(v16);
    return 0;
  }

  else
  {
LABEL_6:

    return 1;
  }
}

uint64_t sub_252D75FC4()
{
  v1 = v0;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544E20);
  sub_252CC3D90(0x7365722065666153, 0xEE006C6C61207465, 0xD000000000000094, 0x8000000252E98E90);
  swift_beginAccess();
  v3 = *(v0 + 80);
  [*(v1 + 80) lock];
  v4 = *(v1 + 72);
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;

  [v3 unlock];
  swift_endAccess();
  sub_25293DEE0(__src);
  swift_beginAccess();
  v5 = *(v1 + 592);
  [v5 lock];
  memcpy(__dst, (v1 + 88), sizeof(__dst));
  memcpy((v1 + 88), __src, 0x1F8uLL);
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  [v5 unlock];
  swift_endAccess();
  result = sub_252D75DD0();
  if ((result & 1) == 0)
  {
    swift_beginAccess();
    v8 = *(v1 + 16);
    v7 = *(v1 + 24);

    v9 = v7;
    [v9 lock];
    [v9 unlock];

    v10 = *(v8 + 16);
    if (v10)
    {
      v11 = v8 + 32;
      do
      {
        sub_252929E74(v11, v25);
        v12 = v26;
        v13 = v27;
        __swift_project_boxed_opaque_existential_1(v25, v26);
        (*(v13 + 64))(0, v12, v13);
        __swift_destroy_boxed_opaque_existential_1(v25);
        v11 += 40;
        --v10;
      }

      while (v10);
    }

    swift_beginAccess();
    v14 = *(v1 + 32);
    v15 = *(v1 + 40);

    v16 = v15;
    [v16 lock];
    [v16 unlock];

    v17 = sub_252D716B4();

    if (v17)
    {
      swift_beginAccess();
      v19 = *(v1 + 48);
      v18 = *(v1 + 56);

      v20 = v18;
      [v20 lock];
      [v20 unlock];

      v21 = *(v17 + 16);
      if (v21)
      {
        v22 = (v17 + 40);
        do
        {
          v23 = *(v22 - 1);
          v24 = *v22;

          sub_252D724A0(v23, v24);

          v22 += 2;
          --v21;
        }

        while (v21);
      }
    }
  }

  return result;
}

void *sub_252D762E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E20);
  sub_252E379F4();

  v24[0] = 0xD00000000000001FLL;
  v24[1] = 0x8000000252E99840;
  MEMORY[0x2530AD570](a1, a2);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E99840, 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v9 = v3[4];
  v8 = v4[5];

  v10 = v8;
  [v10 lock];
  [v10 unlock];

  v11 = sub_252D70FF4(a1, a2, 1);

  if (v11)
  {
    swift_beginAccess();
    v13 = v4[6];
    v12 = v4[7];

    v14 = v12;
    [v14 lock];
    [v14 unlock];

    v15 = sub_252D71EF0(a1, a2);

    if (v15)
    {
      memcpy(__dst, v15 + 6, sizeof(__dst));
      memmove(__src, v15 + 6, 0x1F8uLL);
      GEOLocationCoordinate2DMake(__src);
      swift_beginAccess();
      v16 = v4[74];
      sub_2529353AC(__dst, v24);
      [v16 lock];
      memcpy(v23, v4 + 11, sizeof(v23));
      memcpy(v4 + 11, __src, 0x1F8uLL);
      sub_25293847C(v23, &qword_27F5404C8, &unk_252E3FD60);
      [v16 unlock];
      swift_endAccess();
      memcpy(v24, v4 + 11, sizeof(v24));
      v17 = v24[63];
      sub_252938414(v24, v20, &qword_27F545B08, &qword_252E5E730);
      [v17 lock];
      memcpy(a3, v24, 0x1F8uLL);
      sub_252938414(v24, v20, &qword_27F5404C8, &unk_252E3FD60);
      [v17 unlock];

      return sub_25293847C(v24, &qword_27F545B08, &qword_252E5E730);
    }

    sub_252E379F4();

    v24[0] = 0xD000000000000027;
    v24[1] = 0x8000000252E99880;
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000027, 0x8000000252E99880, 0xD000000000000094, 0x8000000252E98E90, 0xD00000000000001DLL, 0x8000000252E998B0, 829);
  }

  else
  {
    sub_252E379F4();

    v24[0] = 0xD000000000000014;
    v24[1] = 0x8000000252E99860;
    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0xD000000000000014, 0x8000000252E99860, 0xD000000000000094, 0x8000000252E98E90);
  }

  sub_25293DEE0(v24);
  return memcpy(a3, v24, 0x1F8uLL);
}

uint64_t sub_252D76744(void *__src, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544E20);
  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v18, "Insert key: ");
  BYTE5(v18[1]) = 0;
  HIWORD(v18[1]) = -5120;
  MEMORY[0x2530AD570](a2, a3);
  MEMORY[0x2530AD570](0x746E65746E69202CLL, 0xEA0000000000203ALL);
  memcpy(__srca, __dst, sizeof(__srca));
  sub_2529353AC(__dst, v21);
  v8 = HomeAutomationIntent.description.getter();
  v10 = v9;
  memcpy(v21, __srca, sizeof(v21));
  sub_252935408(v21);
  MEMORY[0x2530AD570](v8, v10);

  sub_252CC3D90(v18[0], v18[1], 0xD000000000000094, 0x8000000252E98E90);

  swift_beginAccess();
  v11 = v3[4];
  v12 = v4[5];

  v13 = v12;
  [v13 lock];
  [v13 unlock];

  sub_252D711F0(a2, a3);

  swift_beginAccess();
  v14 = v4[6];
  v15 = v4[7];

  v16 = v15;
  [v16 lock];
  [v16 unlock];

  memcpy(__srca, __dst, sizeof(__srca));
  sub_252D722C0(__srca, a2, a3);
}

uint64_t sub_252D769A4(uint64_t a1)
{
  v75 = sub_252E36DF4();
  v74 = *(v75 - 8);
  v2 = *(v74 + 64);
  MEMORY[0x28223BE20](v75);
  v73 = &v71[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_252E36E04();
  v76 = *(v77 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v77);
  v80 = &v71[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_252E358D4();
  v82 = *(v6 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v71[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_252E341A4();
  v78 = *(v10 - 8);
  v79 = v10;
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v71[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_252E34164();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v71[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = sub_252E36AB4();
  v87 = *(v19 - 8);
  v20 = *(v87 + 64);
  MEMORY[0x28223BE20](v19);
  v88 = &v71[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_27F53F528 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  v23 = __swift_project_value_buffer(v22, qword_27F544E20);
  v84 = "CoolingResponseHandler.swift";
  v85 = v23;
  sub_252CC3D90(0xD000000000000010, 0x8000000252E994E0, 0xD000000000000094, 0x8000000252E98E90);
  if (qword_27F53F620 != -1)
  {
    swift_once();
  }

  v24 = qword_27F544FA8;
  sub_252E36A94();
  sub_252E375D4();
  v86 = v24;
  sub_252E36A84();
  v25 = sub_252D7CFFC(a1);
  v72 = v26;
  if ((v26 & 1) == 0)
  {
    v81 = v19;
    v27 = v83;
    swift_beginAccess();
    v28 = v27[75];
    v29 = v27[76];

    v30 = v29;
    [v30 lock];
    [v30 unlock];

    if (*(v28 + 16))
    {
      v31 = sub_252A44B34(v25);
      if (v32)
      {
        v33 = (*(v28 + 56) + 16 * v31);
        v34 = *v33;
        v35 = v33[1];

        v36 = v83;
        swift_beginAccess();
        v37 = v36[10];
        swift_bridgeObjectRetain_n();
        [v37 lock];
        v38 = v36[9];
        v36[8] = v34;
        v36[9] = v35;

        [v37 unlock];
        swift_endAccess();
        v90 = 0;
        v91 = 0xE000000000000000;
        sub_252E379F4();

        v90 = 0xD00000000000002CLL;
        v91 = 0x8000000252E995B0;
        MEMORY[0x2530AD570](v34, v35);

        sub_252CC3D90(v90, v91, 0xD000000000000094, v84 | 0x8000000000000000);

        v19 = v81;
        goto LABEL_20;
      }
    }

    v19 = v81;
  }

  (*(v15 + 16))(v18, a1, v14);
  v39 = (*(v15 + 88))(v18, v14);
  if (v39 == *MEMORY[0x277D5C128])
  {
    (*(v15 + 96))(v18, v14);
    v40 = v82;
    (*(v82 + 32))(v9, v18, v6);
    v34 = sub_252D7E2C8();
    v42 = v41;
    (*(v40 + 8))(v9, v6);
  }

  else
  {
    if (v39 != *MEMORY[0x277D5C160])
    {
      sub_252CC3D90(0xD000000000000038, 0x8000000252E99500, 0xD000000000000094, v84 | 0x8000000000000000);
      (*(v15 + 8))(v18, v14);
      v34 = 0;
      goto LABEL_20;
    }

    (*(v15 + 96))(v18, v14);
    v44 = v78;
    v43 = v79;
    (*(v78 + 32))(v13, v18, v79);
    v34 = sub_252D7DD34();
    v42 = v45;
    (*(v44 + 8))(v13, v43);
  }

  v46 = v84;
  if (v42)
  {
    v92 = v34;
    v93 = v42;

    v47 = sub_252D7E5B4(v34, v42);
    v49 = v48;

    if (v49)
    {
      MEMORY[0x2530AD570](v47, v49);

      v34 = v92;
      v42 = v93;
    }

    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();

    v90 = 0xD000000000000014;
    v91 = 0x8000000252E99570;
    MEMORY[0x2530AD570](v34, v42);
    sub_252CC3D90(v90, v91, 0xD000000000000094, v46 | 0x8000000000000000);

    v50 = sub_252E329C4();
    v51 = *(v50 + 48);
    v52 = *(v50 + 52);
    swift_allocObject();
    sub_252E329B4();
    v90 = v34;
    v91 = v42;
    v55 = sub_252E329A4();
    v79 = v25;
    v81 = v19;
    v57 = v56;

    sub_252D7E80C(&qword_27F5412F8, MEMORY[0x277CC5588]);
    v58 = v73;
    v59 = v75;
    sub_252E36DE4();
    sub_2529E61B0(v55, v57);
    sub_252D7BB0C(v55, v57);
    v82 = v57;
    sub_25296464C(v55, v57);
    v60 = v80;
    sub_252E36DD4();
    (*(v74 + 8))(v58, v59);
    v90 = sub_252D6F868(v60);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910);
    v34 = sub_252E36EA4();
    v62 = v61;

    v63 = v83;
    swift_beginAccess();
    v64 = v63[10];

    [v64 lock];
    v65 = v63[9];
    v63[8] = v34;
    v63[9] = v62;

    [v64 unlock];
    swift_endAccess();
    v90 = 0;
    v91 = 0xE000000000000000;
    sub_252E379F4();

    v90 = 0xD000000000000017;
    v91 = 0x8000000252E99590;
    MEMORY[0x2530AD570](v34, v62);

    sub_252CC3D90(v90, v91, 0xD000000000000094, v46 | 0x8000000000000000);

    if ((v72 & 1) == 0)
    {
      swift_beginAccess();
      v66 = v63[75];
      v67 = v63;
      v68 = v63[76];
      [v68 &selRef_setHomeEntityName_];

      [v68 unlock];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v89 = v66;
      sub_2529FBAF8(v34, v62, v79, isUniquelyReferenced_nonNull_native);
      v70 = v89;
      [v68 &selRef_setHomeEntityName_];
      v67[75] = v70;

      [v68 unlock];
      swift_endAccess();
    }

    sub_25296464C(v55, v82);
    (*(v76 + 8))(v80, v77);
    v19 = v81;
  }

  else
  {
    sub_252CC3D90(0xD000000000000027, 0x8000000252E99540, 0xD000000000000094, v84 | 0x8000000000000000);
  }

LABEL_20:
  sub_252E375C4();
  v53 = v88;
  sub_252E36A74();
  (*(v87 + 8))(v53, v19);
  return v34;
}

uint64_t sub_252D775C8()
{
  v25 = sub_252E34C14();
  v26 = v0;
  MEMORY[0x2530AD570](91, 0xE100000000000000);
  v29 = v25;
  v30 = v26;
  v25 = sub_252E34C24();

  sub_252D78084(&v25, sub_252934804, sub_252D78234);

  v1 = v25;
  v2 = *(v25 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = v25 + 32;
    v16 = v25 + 32;
    do
    {
      v17 = v3;
      v6 = v5 + 40 * v4;
      v7 = v4;
      while (1)
      {
        if (v7 >= *(v1 + 16))
        {
          __break(1u);

          __break(1u);
          return result;
        }

        v4 = v7 + 1;
        sub_252929E74(v6, &v25);
        sub_252929E74(&v25, v20);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540238, &qword_252E610B0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B18, &qword_252E5E940);
        if (swift_dynamicCast())
        {
          break;
        }

        v19 = 0;
        memset(v18, 0, sizeof(v18));
        sub_25293847C(v18, &qword_27F545B20, &qword_252E5E948);
        if (qword_27F53F528 != -1)
        {
          swift_once();
        }

        v8 = sub_252E36AD4();
        __swift_project_value_buffer(v8, qword_27F544E20);
        v21 = 0;
        v22 = 0xE000000000000000;
        sub_252E379F4();

        v21 = 0xD000000000000012;
        v22 = 0x8000000252E99820;
        __swift_project_boxed_opaque_existential_1(&v25, v27);
        v20[0] = swift_getDynamicType();
        v20[1] = v28;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B30, &qword_252E5E968);
        v9 = sub_252E36F94();
        MEMORY[0x2530AD570](v9);

        MEMORY[0x2530AD570](544175136, 0xE400000000000000);
        v20[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B38, &qword_252E5E970);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545B40, &qword_252E5E978);
        v10 = sub_252E36F94();
        MEMORY[0x2530AD570](v10);

        sub_252CC3D90(v21, v22, 0xD000000000000094, 0x8000000252E98E90);

        __swift_destroy_boxed_opaque_existential_1(&v25);
        v6 += 40;
        ++v7;
        if (v2 == v4)
        {
          goto LABEL_15;
        }
      }

      sub_252927BEC(v18, &v21);
      if (v17)
      {
        MEMORY[0x2530AD570](44, 0xE100000000000000);
      }

      v11 = v23;
      v12 = v24;
      __swift_project_boxed_opaque_existential_1(&v21, v23);
      v13 = (*(v12 + 8))(v11, v12);
      if (v14)
      {
        MEMORY[0x2530AD570](v13);
      }

      __swift_destroy_boxed_opaque_existential_1(&v25);
      __swift_destroy_boxed_opaque_existential_1(&v21);
      v3 = 1;
      v5 = v16;
    }

    while (v2 - 1 != v7);
  }

LABEL_15:

  MEMORY[0x2530AD570](93, 0xE100000000000000);
  return v29;
}