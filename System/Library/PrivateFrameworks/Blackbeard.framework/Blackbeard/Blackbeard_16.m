uint64_t sub_1E5FFB9B4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 432);
  v3 = *(v0 + 384);
  v4 = *(v0 + 714);
  sub_1E5E0476C(*(v0 + 544), *(v0 + 552));
  sub_1E5FFF4B8(v3, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v1, v4);
  sub_1E5FFF4B8(v2, type metadata accessor for RouteDestination);
  v5 = *(v0 + 464);
  v6 = *(v0 + 440);
  v7 = *(v0 + 448);
  v9 = *(v0 + 424);
  v8 = *(v0 + 432);
  v11 = *(v0 + 392);
  v10 = *(v0 + 400);
  v13 = *(v0 + 376);
  v12 = *(v0 + 384);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E5FFBAE0()
{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 552);
  v4 = *(v0 + 544);
  v5 = *(v0 + 536);
  v6 = *(v0 + 432);
  v7 = *(v0 + 384);
  v8 = *(v0 + 714);

  sub_1E5E0476C(v4, v3);
  sub_1E5FFF4B8(v7, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v5, v8);
  sub_1E5FFF4B8(v6, type metadata accessor for RouteDestination);
  v9 = *(v0 + 600);
  v10 = *(v0 + 464);
  v12 = *(v0 + 440);
  v11 = *(v0 + 448);
  v14 = *(v0 + 424);
  v13 = *(v0 + 432);
  v16 = *(v0 + 392);
  v15 = *(v0 + 400);
  v18 = *(v0 + 376);
  v17 = *(v0 + 384);

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1E5FFBC30()
{
  v1 = *(v0 + 640);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  v4 = *(v0 + 376);
  v5 = *(v0 + 352);

  sub_1E5E24114((v0 + 200), v4);
  *(v0 + 216) = v3;
  *(v0 + 224) = v2;
  v6 = swift_task_alloc();
  *(v0 + 648) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FFBCFC;
  v7 = *(v0 + 352);

  return sub_1E5FF075C((v0 + 216), v7);
}

uint64_t sub_1E5FFBCFC()
{
  v1 = *(*v0 + 648);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E5FFBDF8, 0, 0);
}

uint64_t sub_1E5FFBDF8()
{
  v1 = *(v0 + 717);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 360);
  v7 = *(v0 + 716);
  sub_1E5FFEEF0(*(v0 + 376), v4, type metadata accessor for NavigationControllerRoutingContext);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 656) = v10;
  sub_1E5FFF518(v4, v10 + v8, type metadata accessor for NavigationControllerRoutingContext);
  *(v10 + v9) = v3;
  v11 = v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = v2;
  *(v11 + 8) = v7;
  *(v11 + 9) = v1;
  *(v11 + 10) = 0;
  sub_1E5FA9D20(v2, v7);
  v12 = swift_task_alloc();
  *(v0 + 664) = v12;
  *(v12 + 16) = &unk_1E65EC250;
  *(v12 + 24) = v10;
  v13 = *(MEMORY[0x1E69E8920] + 4);
  v14 = swift_task_alloc();
  *(v0 + 672) = v14;
  *v14 = v0;
  v14[1] = sub_1E5FFBFC8;
  v15 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFEB84, v12, v15);
}

uint64_t sub_1E5FFBFC8()
{
  v2 = *v1;
  v3 = *(*v1 + 672);
  v8 = *v1;
  *(*v1 + 680) = v0;

  if (v0)
  {
    v4 = sub_1E5FFC1FC;
  }

  else
  {
    v5 = *(v2 + 664);
    v6 = *(v2 + 656);

    v4 = sub_1E5FFC0F0;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FFC0F0()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 376);
  v3 = *(v0 + 716);
  sub_1E5E0476C(*(v0 + 624), *(v0 + 632));
  sub_1E5FFF4B8(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v1, v3);
  v4 = *(v0 + 464);
  v5 = *(v0 + 440);
  v6 = *(v0 + 448);
  v8 = *(v0 + 424);
  v7 = *(v0 + 432);
  v10 = *(v0 + 392);
  v9 = *(v0 + 400);
  v12 = *(v0 + 376);
  v11 = *(v0 + 384);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E5FFC1FC()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 656);
  v3 = *(v0 + 632);
  v4 = *(v0 + 624);
  v5 = *(v0 + 616);
  v6 = *(v0 + 376);
  v7 = *(v0 + 716);

  sub_1E5E0476C(v4, v3);
  sub_1E5FFF4B8(v6, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v5, v7);
  v8 = *(v0 + 680);
  v9 = *(v0 + 464);
  v11 = *(v0 + 440);
  v10 = *(v0 + 448);
  v13 = *(v0 + 424);
  v12 = *(v0 + 432);
  v15 = *(v0 + 392);
  v14 = *(v0 + 400);
  v17 = *(v0 + 376);
  v16 = *(v0 + 384);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1E5FFC32C()
{
  v1 = *(v0 + 688);
  v2 = *(v0 + 352);

  sub_1E5FF0694(v2, v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E5FFC3A4, 0, 0);
}

uint64_t sub_1E5FFC3A4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 718);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 712) = v2;
    v4 = swift_task_alloc();
    *(v0 + 696) = v4;
    *v4 = v0;
    v4[1] = sub_1E5FFC554;
    v5 = *(v0 + 424);

    return RoutingContext.resolveDetours(_:priority:)(v5, (v0 + 712), v1, v3);
  }

  else
  {
    sub_1E5FFF4B8(*(v0 + 424), type metadata accessor for RouteDestination);
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    v7 = *(v0 + 464);
    v8 = *(v0 + 440);
    v9 = *(v0 + 448);
    v11 = *(v0 + 424);
    v10 = *(v0 + 432);
    v13 = *(v0 + 392);
    v12 = *(v0 + 400);
    v15 = *(v0 + 376);
    v14 = *(v0 + 384);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1E5FFC554()
{
  v2 = *(*v1 + 696);
  v5 = *v1;
  *(*v1 + 704) = v0;

  if (v0)
  {
    v3 = sub_1E5FFC758;
  }

  else
  {
    v3 = sub_1E5FFC668;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FFC668()
{
  sub_1E5FFF4B8(v0[53], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[56];
  v5 = v0[53];
  v4 = v0[54];
  v7 = v0[49];
  v6 = v0[50];
  v9 = v0[47];
  v8 = v0[48];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E5FFC758()
{
  sub_1E5FFF4B8(v0[53], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[88];
  v2 = v0[58];
  v4 = v0[55];
  v3 = v0[56];
  v6 = v0[53];
  v5 = v0[54];
  v8 = v0[49];
  v7 = v0[50];
  v10 = v0[47];
  v9 = v0[48];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E5FFC850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(type metadata accessor for ResolvedURLRoute.Action(0) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();
  v6 = *(*(type metadata accessor for URLRoute() - 8) + 64) + 15;
  v4[18] = swift_task_alloc();
  v7 = type metadata accessor for ResolvedURLRoute(0);
  v4[19] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v9 = sub_1E65D74E8();
  v4[24] = v9;
  v10 = *(v9 - 8);
  v4[25] = v10;
  v11 = *(v10 + 64) + 15;
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FFCA28, 0, 0);
}

uint64_t sub_1E5FFCA28()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[13];
  v5 = sub_1E65E3B68();
  v0[32] = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v6 = *(v3 + 16);
  v0[33] = v6;
  v0[34] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FFCB8C;
  v8 = v0[31];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];

  return sub_1E5FF1C44(v8, v10, v11, v9);
}

uint64_t sub_1E5FFCB8C()
{
  v2 = *(*v1 + 280);
  v5 = *v1;
  *(*v1 + 288) = v0;

  if (v0)
  {
    v3 = sub_1E5FFCE4C;
  }

  else
  {
    v3 = sub_1E5FFCCA0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FFCCA0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = *(v5 + 8);
  *(v0 + 296) = v6;
  *(v0 + 304) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  sub_1E5F9AF1C(v2, v1);
  v7 = *(v5 + 48);
  if (v7(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 272);
    v9 = *(v0 + 240);
    v10 = *(v0 + 192);
    (*(v0 + 264))(*(v0 + 224), *(v0 + 104), v10);
    if (v7(v9, 1, v10) != 1)
    {
      sub_1E5DFE50C(*(v0 + 240), &qword_1ED072340, &qword_1E65EA410);
    }
  }

  else
  {
    (*(*(v0 + 200) + 32))(*(v0 + 224), *(v0 + 240), *(v0 + 192));
  }

  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  *v11 = v0;
  v11[1] = sub_1E5FFD018;
  v12 = *(v0 + 224);
  v13 = *(v0 + 184);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);

  return sub_1E5FF34E0(v13, v12, v16, v14, v15);
}

uint64_t sub_1E5FFCE4C()
{
  v1 = *(v0 + 288);
  sub_1E5FFE72C(v1, *(v0 + 232), "Failed to process redirect URL %s: %{public}s");

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  (*(v6 + 56))(v3, 1, 1, v5);
  v7 = *(v6 + 8);
  *(v0 + 296) = v7;
  *(v0 + 304) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  sub_1E5F9AF1C(v3, v2);
  v8 = *(v6 + 48);
  if (v8(v2, 1, v5) == 1)
  {
    v9 = *(v0 + 272);
    v10 = *(v0 + 240);
    v11 = *(v0 + 192);
    (*(v0 + 264))(*(v0 + 224), *(v0 + 104), v11);
    if (v8(v10, 1, v11) != 1)
    {
      sub_1E5DFE50C(*(v0 + 240), &qword_1ED072340, &qword_1E65EA410);
    }
  }

  else
  {
    (*(*(v0 + 200) + 32))(*(v0 + 224), *(v0 + 240), *(v0 + 192));
  }

  v12 = swift_task_alloc();
  *(v0 + 312) = v12;
  *v12 = v0;
  v12[1] = sub_1E5FFD018;
  v13 = *(v0 + 224);
  v14 = *(v0 + 184);
  v15 = *(v0 + 120);
  v16 = *(v0 + 128);
  v17 = *(v0 + 112);

  return sub_1E5FF34E0(v14, v13, v17, v15, v16);
}

uint64_t sub_1E5FFD018()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v7 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v4 = sub_1E5FFD13C;
  }

  else
  {
    v5 = *(v2 + 304);
    (*(v2 + 296))(*(v2 + 224), *(v2 + 192));
    v4 = sub_1E5FFD384;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FFD13C()
{
  v1 = *(v0 + 320);
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 416) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 208);
    v24 = *(v0 + 192);
    v25 = *(v0 + 144);

    v22(v23, v4, v24);
    sub_1E6077428(v23, v25);
    v26 = swift_task_alloc();
    *(v0 + 328) = v26;
    *v26 = v0;
    v26[1] = sub_1E5FFD7EC;
    v27 = *(v0 + 184);
    v28 = *(v0 + 144);
    v29 = *(v0 + 120);
    v30 = *(v0 + 128);
    v31 = *(v0 + 112);

    return sub_1E5FF5308(v27, v28, v31, v29, v30);
  }

  else
  {
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 192);

    swift_willThrow();
    v7(v4, v8);
    v34 = *(v0 + 320);
    sub_1E5DFE50C(*(v0 + 248), &qword_1ED072340, &qword_1E65EA410);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v12 = *(v0 + 224);
    v11 = *(v0 + 232);
    v14 = *(v0 + 208);
    v13 = *(v0 + 216);
    v16 = *(v0 + 176);
    v15 = *(v0 + 184);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    v32 = *(v0 + 144);
    v33 = *(v0 + 136);

    v19 = *(v0 + 8);

    return v19();
  }
}

uint64_t sub_1E5FFD384()
{
  v41 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 256);
  v3 = *(v0 + 184);
  v4 = *(v0 + 176);
  (*(v0 + 264))(*(v0 + 216), *(v0 + 104), *(v0 + 192));
  sub_1E5FFEEF0(v3, v4, type metadata accessor for ResolvedURLRoute);
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 296);
  v9 = *(v0 + 304);
  v10 = *(v0 + 216);
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);
  if (v7)
  {
    v35 = *(v0 + 168);
    v36 = *(v0 + 152);
    v37 = v6;
    v13 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v40 = v38;
    *v13 = 141558786;
    *(v13 + 4) = 1752392040;
    *(v13 + 12) = 2080;
    sub_1E5FFE9E4();
    v14 = sub_1E65E6BC8();
    v16 = v15;
    v8(v10, v11);
    v17 = sub_1E5DFD4B0(v14, v16, &v40);

    *(v13 + 14) = v17;
    *(v13 + 22) = 2160;
    *(v13 + 24) = 1752392040;
    *(v13 + 32) = 2080;
    sub_1E5FFEEF0(v12, v35, type metadata accessor for ResolvedURLRoute);
    v18 = sub_1E65E5CE8();
    v20 = v19;
    sub_1E5FFF4B8(v12, type metadata accessor for ResolvedURLRoute);
    v21 = sub_1E5DFD4B0(v18, v20, &v40);

    *(v13 + 34) = v21;
    _os_log_impl(&dword_1E5DE9000, v5, v37, "Resolved URL %{mask.hash}s to %{mask.hash}s", v13, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v38, -1, -1);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  else
  {

    sub_1E5FFF4B8(v12, type metadata accessor for ResolvedURLRoute);
    v8(v10, v11);
  }

  v22 = *(v0 + 152);
  sub_1E5FFEEF0(*(v0 + 184), *(v0 + 160), type metadata accessor for ResolvedURLRoute);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *(v0 + 160);
    v24 = *(v0 + 128);
    v25 = *v23;
    *(v0 + 344) = v23[1];
    *(v0 + 80) = &type metadata for AppURLResolver;
    *(v0 + 88) = &off_1F5FAB510;
    *(v0 + 56) = v24;

    v39 = (v25 + *v25);
    v26 = v25[1];
    v27 = swift_task_alloc();
    *(v0 + 352) = v27;
    *v27 = v0;
    v27[1] = sub_1E5FFDAF4;

    return v39(v0 + 56);
  }

  else
  {
    v29 = *(v0 + 160);
    v30 = *(v0 + 136);
    v31 = (v29 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
    *(v0 + 368) = *v31;
    *(v0 + 376) = v31[1];
    sub_1E5FFF518(v29, v30, type metadata accessor for ResolvedURLRoute.Action);
    v32 = swift_task_alloc();
    *(v0 + 384) = v32;
    *v32 = v0;
    v32[1] = sub_1E5FFDD48;
    v33 = *(v0 + 128);
    v34 = *(v0 + 136);

    return sub_1E5FFA73C(v34, v33);
  }
}

uint64_t sub_1E5FFD7EC()
{
  v2 = *(*v1 + 328);
  v5 = *v1;
  *(*v1 + 336) = v0;

  if (v0)
  {
    v3 = sub_1E5FFD9A4;
  }

  else
  {
    v3 = sub_1E5FFD900;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FFD900()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  sub_1E5FFF4B8(*(v0 + 144), type metadata accessor for URLRoute);
  v2(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1E5FFD384, 0, 0);
}

uint64_t sub_1E5FFD9A4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 224);
  v4 = *(v0 + 192);
  sub_1E5FFF4B8(*(v0 + 144), type metadata accessor for URLRoute);
  v2(v3, v4);

  v19 = *(v0 + 336);
  sub_1E5DFE50C(*(v0 + 248), &qword_1ED072340, &qword_1E65EA410);
  v6 = *(v0 + 240);
  v5 = *(v0 + 248);
  v8 = *(v0 + 224);
  v7 = *(v0 + 232);
  v10 = *(v0 + 208);
  v9 = *(v0 + 216);
  v12 = *(v0 + 176);
  v11 = *(v0 + 184);
  v13 = *(v0 + 160);
  v14 = *(v0 + 168);
  v17 = *(v0 + 144);
  v18 = *(v0 + 136);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1E5FFDAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v6 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v4 = sub_1E5FFE31C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 56));
    v4 = sub_1E5FFDC10;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FFDC10()
{
  v1 = v0[43];

  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[22];
  v9 = v0[21];
  v12 = v0[20];
  v13 = v0[18];
  v14 = v0[17];
  sub_1E5FFF4B8(v0[23], type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v2, &qword_1ED072340, &qword_1E65EA410);

  v10 = v0[1];

  return v10();
}

uint64_t sub_1E5FFDD48()
{
  v2 = *(*v1 + 384);
  v5 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_1E5FFE464;
  }

  else
  {
    v3 = sub_1E5FFDE5C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FFDE5C()
{
  v1 = v0[46];
  if (v1)
  {
    v2 = v0[47];
    v3 = v0[16];
    v0[5] = &type metadata for AppURLResolver;
    v0[6] = &off_1F5FAB510;
    v0[2] = v3;

    v18 = (v1 + *v1);
    v4 = v1[1];
    v5 = swift_task_alloc();
    v0[50] = v5;
    *v5 = v0;
    v5[1] = sub_1E5FFE0A8;

    return v18(v0 + 2);
  }

  else
  {
    sub_1E5FFF4B8(v0[17], type metadata accessor for ResolvedURLRoute.Action);
    v8 = v0[30];
    v7 = v0[31];
    v10 = v0[28];
    v9 = v0[29];
    v12 = v0[26];
    v11 = v0[27];
    v13 = v0[22];
    v14 = v0[21];
    v16 = v0[20];
    v17 = v0[18];
    v19 = v0[17];
    sub_1E5FFF4B8(v0[23], type metadata accessor for ResolvedURLRoute);
    sub_1E5DFE50C(v7, &qword_1ED072340, &qword_1E65EA410);

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1E5FFE0A8()
{
  v2 = *v1;
  v3 = *(*v1 + 400);
  v6 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v4 = sub_1E5FFE5C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v4 = sub_1E5FFE1C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FFE1C4()
{
  v1 = v0[47];
  v2 = v0[17];
  sub_1E5E29474(v0[46]);
  sub_1E5FFF4B8(v2, type metadata accessor for ResolvedURLRoute.Action);
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v8 = v0[26];
  v7 = v0[27];
  v9 = v0[22];
  v10 = v0[21];
  v13 = v0[20];
  v14 = v0[18];
  v15 = v0[17];
  sub_1E5FFF4B8(v0[23], type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v3, &qword_1ED072340, &qword_1E65EA410);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E5FFE31C()
{
  v1 = v0[43];
  v2 = v0[31];
  v3 = v0[23];

  sub_1E5FFF4B8(v3, type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v2, &qword_1ED072340, &qword_1E65EA410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v5 = v0[30];
  v4 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  v9 = v0[26];
  v8 = v0[27];
  v11 = v0[22];
  v10 = v0[23];
  v12 = v0[20];
  v13 = v0[21];
  v16 = v0[18];
  v17 = v0[17];
  v18 = v0[45];

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E5FFE464()
{
  v1 = v0[47];
  v2 = v0[31];
  v3 = v0[23];
  v4 = v0[17];
  sub_1E5E29474(v0[46]);
  sub_1E5FFF4B8(v4, type metadata accessor for ResolvedURLRoute.Action);
  sub_1E5FFF4B8(v3, type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v2, &qword_1ED072340, &qword_1E65EA410);
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[49];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E5FFE5C4()
{
  v1 = v0[47];
  v2 = v0[31];
  v3 = v0[23];
  v4 = v0[17];
  sub_1E5E29474(v0[46]);
  sub_1E5FFF4B8(v4, type metadata accessor for ResolvedURLRoute.Action);
  sub_1E5FFF4B8(v3, type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v2, &qword_1ED072340, &qword_1E65EA410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[30];
  v5 = v0[31];
  v8 = v0[28];
  v7 = v0[29];
  v10 = v0[26];
  v9 = v0[27];
  v12 = v0[22];
  v11 = v0[23];
  v13 = v0[20];
  v14 = v0[21];
  v17 = v0[18];
  v18 = v0[17];
  v19 = v0[51];

  v15 = v0[1];

  return v15();
}

void sub_1E5FFE72C(void *a1, uint64_t a2, const char *a3)
{
  v6 = sub_1E65D74E8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  (*(v7 + 16))(v10, a2, v6);
  v12 = a1;
  v13 = sub_1E65E3B48();
  v14 = sub_1E65E6328();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v27 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136315394;
    sub_1E5FFE9E4();
    v18 = sub_1E65E6BC8();
    v20 = v19;
    (*(v7 + 8))(v10, v6);
    v21 = sub_1E5DFD4B0(v18, v20, &v29);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2082;
    v28 = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v23 = sub_1E65E5CE8();
    v25 = sub_1E5DFD4B0(v23, v24, &v29);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1E5DE9000, v13, v14, v27, v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v17, -1, -1);
    MEMORY[0x1E694F1C0](v16, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v10, v6);
  }
}

unint64_t sub_1E5FFE9E4()
{
  result = qword_1EE2D71E0;
  if (!qword_1EE2D71E0)
  {
    sub_1E65D74E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D71E0);
  }

  return result;
}

uint64_t sub_1E5FFEA3C(uint64_t a1)
{
  v4 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 9);
  v11 = *(v8 + 10);
  v12 = *(v8 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E5FF1120(a1, v1 + v5, v7, v9, v12, v10, v11);
}

uint64_t sub_1E5FFEB8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 9);
  v13 = *(v10 + 10);
  v14 = *(v10 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E5FF1648(a1, v1 + v6, v1 + v9, v11, v14, v12, v13);
}

uint64_t sub_1E5FFED24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NavigationControllerRoutingContext() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination() - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v10 = (v9 + *(v8 + 64));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E5FF0F1C(a1, v1 + v6, v9, v11, v12);
}

unint64_t sub_1E5FFEE9C()
{
  result = qword_1ED072A10;
  if (!qword_1ED072A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A10);
  }

  return result;
}

uint64_t sub_1E5FFEEF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5FFEF58(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteSource(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E616614C(a1, v6, v1 + v5, v7);
}

uint64_t sub_1E5FFF070(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6165A1C(a1, v5, v4);
}

uint64_t sub_1E5FFF118(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteSource(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61652B0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E5FFF204(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }

  return sub_1E5E0476C(result, a2);
}

uint64_t sub_1E5FFF234(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for RouteSource(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6163B34(a1, v1 + v5, v1 + v8);
}

uint64_t sub_1E5FFF3A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return sub_1E5E05374(a1, a2);
  }

  return a1;
}

uint64_t sub_1E5FFF3B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return sub_1E5E0476C(a1, a2);
  }

  return a1;
}

uint64_t sub_1E5FFF3C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FF4E98(a1, v1);
}

unint64_t sub_1E5FFF464()
{
  result = qword_1EE2D7000;
  if (!qword_1EE2D7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7000);
  }

  return result;
}

uint64_t sub_1E5FFF4B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5FFF518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5FFF598()
{
  v1 = [v0 template];
  v2 = [v1 uniqueName];

  if (!v2)
  {
    sub_1E65DB998();
    goto LABEL_10;
  }

  v3 = sub_1E65E5C78();
  v5 = v4;

  v6 = sub_1E65DB998();
  if (!v5)
  {
LABEL_10:

    return [v0 unearned];
  }

  if (v3 != v6 || v5 != v7)
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      return 1;
    }

    return [v0 unearned];
  }

  return 1;
}

id sub_1E5FFF690(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [v3 template];
  v8 = [v7 uniqueName];

  if (!v8)
  {
    sub_1E65DB998();
    goto LABEL_10;
  }

  v9 = sub_1E65E5C78();
  v11 = v10;

  v12 = sub_1E65DB998();
  if (!v11)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v9 == v12 && v11 == v13)
  {

    goto LABEL_17;
  }

  v15 = sub_1E65E6C18();

  if ((v15 & 1) == 0)
  {
LABEL_11:
    if ([v3 unearned])
    {
      result = [a2 unachievedDescriptionForAchievement_];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = [a2 achievedDescriptionForAchievement_];
      if (!result)
      {
        return result;
      }
    }

    v17 = result;
    v18 = sub_1E65E5C78();

    return v18;
  }

LABEL_17:
  v19 = *(a1 + 32);
  if (v19 == 255)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v21 = sub_1E65E3B68();
    __swift_project_value_buffer(v21, qword_1EE2EA2A0);
    v22 = sub_1E65E3B48();
    v23 = sub_1E65E6338();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v29[0] = v25;
      *v24 = 136315138;
      v26 = sub_1E65DB998();
      v28 = sub_1E5DFD4B0(v26, v27, v29);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1E5DE9000, v22, v23, "No award progress provided for %s, returning empty description string", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E694F1C0](v25, -1, -1);
      MEMORY[0x1E694F1C0](v24, -1, -1);
    }

    return 0;
  }

  else
  {
    v20 = *(a1 + 16);
    v29[0] = *a1;
    v29[1] = v20;
    v30 = v19;
    return sub_1E5FFF944(v29, a3);
  }
}

uint64_t sub_1E5FFF944(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E65E5C08();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1E65D7848();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E5C28();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 16);
  if (*(a1 + 8))
  {
    if ([v2 unearned])
    {
      sub_1E65E5BA8();
    }

    else
    {
      sub_1E65E5BF8();
      sub_1E65E5BE8();
      v19 = v14;
      sub_1E65E5BC8();
      sub_1E65E5BE8();
      sub_1E65E5C18();
    }

    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    (*(v8 + 16))(v11, a2, v7);
  }

  else
  {
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v19 = v14;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    v17 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    (*(v8 + 16))(v11, a2, v7);
  }

  return sub_1E65E5D48();
}

uint64_t sub_1E5FFFD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v45 = sub_1E65E42E8();
  v46 = *(v45 - 8);
  v3 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E43E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A40, &qword_1E65EC3C8);
  v8 = *(v41 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v38 - v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A48, &qword_1E65EC3D0);
  v12 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v38 - v13;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A50, &qword_1E65EC3D8);
  v43 = *(v44 - 8);
  v15 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v38 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A58, &qword_1E65EC3E0);
  v18 = v17 - 8;
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v40 = &v38 - v20;
  (*(v6 + 16))(&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v21 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v22 = swift_allocObject();
  (*(v6 + 32))(v22 + v21, &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v48 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A60, &qword_1E65EC3E8);
  sub_1E6000688();
  sub_1E65E4AA8();
  sub_1E65E4BA8();
  sub_1E65E3E38();
  (*(v8 + 32))(v14, v11, v41);
  v23 = &v14[*(v38 + 36)];
  v24 = v55;
  *(v23 + 4) = v54;
  *(v23 + 5) = v24;
  *(v23 + 6) = v56;
  v25 = v51;
  *v23 = v50;
  *(v23 + 1) = v25;
  v26 = v53;
  *(v23 + 2) = v52;
  *(v23 + 3) = v26;
  v27 = v42;
  sub_1E65E42D8();
  sub_1E6000898();
  sub_1E6000950(&qword_1EE2D4C10, MEMORY[0x1E697CB70]);
  v28 = v39;
  v29 = v45;
  sub_1E65E47E8();
  (*(v46 + 8))(v27, v29);
  sub_1E5E536BC(v14);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0784313725 alpha:1.0];
  v30 = sub_1E65E4968();
  KeyPath = swift_getKeyPath();
  v49 = v30;
  v32 = sub_1E65E3D08();
  v33 = v40;
  (*(v43 + 32))(v40, v28, v44);
  v34 = (v33 + *(v18 + 44));
  *v34 = KeyPath;
  v34[1] = v32;
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v35 = sub_1E65E4968();
  v36 = v47;
  sub_1E5E5372C(v33, v47);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A88, &qword_1E65EC438);
  *(v36 + *(result + 36)) = v35;
  return result;
}

uint64_t sub_1E6000374@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v10 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v12 = &v9[*(v6 + 36)];
  *v12 = KeyPath;
  v12[1] = v10;
  v13 = *MEMORY[0x1E697E728];
  v14 = sub_1E65E3DD8();
  (*(*(v14 - 8) + 104))(v5, v13, v14);
  sub_1E6000950(&qword_1EE2D4EF0, MEMORY[0x1E697E730]);
  result = sub_1E65E5B98();
  if (result)
  {
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E65E4848();
    sub_1E5DFE50C(v5, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v9, &qword_1ED072A70, &unk_1E65EC3F0);
    v16 = sub_1E65E4488();
    sub_1E65E3BF8();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A60, &qword_1E65EC3E8);
    v25 = a1 + *(result + 36);
    *v25 = v16;
    *(v25 + 8) = v18;
    *(v25 + 16) = v20;
    *(v25 + 24) = v22;
    *(v25 + 32) = v24;
    *(v25 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E6000624()
{
  v1 = *(sub_1E65E43E8() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  return sub_1E65E43D8();
}

unint64_t sub_1E6000688()
{
  result = qword_1ED072A68;
  if (!qword_1ED072A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A60, &qword_1E65EC3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A70, &unk_1E65EC3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A68);
  }

  return result;
}

unint64_t sub_1E60007B0()
{
  result = qword_1EE2D4ED0;
  if (!qword_1EE2D4ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A70, &unk_1E65EC3F0);
    sub_1E6000950(&qword_1EE2D4BB8, MEMORY[0x1E697CC80]);
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4ED0);
  }

  return result;
}

unint64_t sub_1E6000898()
{
  result = qword_1ED072A78;
  if (!qword_1ED072A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A48, &qword_1E65EC3D0);
    sub_1E5FED46C(&qword_1ED072A80, &qword_1ED072A40, &qword_1E65EC3C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A78);
  }

  return result;
}

uint64_t sub_1E6000950(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1E6000998()
{
  result = qword_1ED072A90;
  if (!qword_1ED072A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A88, &qword_1E65EC438);
    sub_1E6000A50();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A90);
  }

  return result;
}

unint64_t sub_1E6000A50()
{
  result = qword_1ED072A98;
  if (!qword_1ED072A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A58, &qword_1E65EC3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A48, &qword_1E65EC3D0);
    sub_1E65E42E8();
    sub_1E6000898();
    sub_1E6000950(&qword_1EE2D4C10, MEMORY[0x1E697CB70]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A98);
  }

  return result;
}

uint64_t sub_1E6000B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 56) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6000BC4, 0, 0);
}

uint64_t sub_1E6000BC4()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6000C70, v3, v2);
}

uint64_t sub_1E6000C70()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);

  sub_1E608521C(v4, v3, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E6000CF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 56) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6000D24, 0, 0);
}

uint64_t sub_1E6000D24()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer() + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6000DD0, v3, v2);
}

uint64_t sub_1E6000DD0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 56);

  sub_1E6060BC8(v4, v3, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E6000E50(uint64_t a1, uint64_t a2, char a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6491DA8(a1, a2, a3);
}

uint64_t sub_1E6000F00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6000F30, 0, 0);
}

uint64_t sub_1E6000F30()
{
  if (*(v0 + 64))
  {
    v1 = sub_1E65DE4C8();
    sub_1E6001C44();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E699CAA0], v1);
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 32);
    v6 = *(v0 + 16);
    v7 = v6 + *(type metadata accessor for AppComposer() + 20);
    v8 = v7 + *(type metadata accessor for AppEnvironment() + 36);
    v9 = AssetService.cancelAssetBundleOnCurrentDevice.getter();
    *(v0 + 40) = v10;
    v14 = (v9 + *v9);
    v11 = v9[1];
    v12 = swift_task_alloc();
    *(v0 + 48) = v12;
    *v12 = v0;
    v12[1] = sub_1E6001108;
    v13 = *(v0 + 24);

    return v14(v13, v5);
  }
}

uint64_t sub_1E6001108()
{
  v2 = *(*v1 + 48);
  v5 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = sub_1E600121C;
  }

  else
  {
    v3 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E600121C()
{
  v1 = v0[5];

  v2 = v0[7];
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E60012AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = v44 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v56 = *(v54 - 8);
  v13 = *(v56 + 64);
  v14 = MEMORY[0x1EEE9AC00](v54);
  v51 = v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = v44 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v45 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v50 = *(v23 - 8);
  v24 = *(v50 + 64);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v46 = v44 - v28;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v59 = a3;
  sub_1E65DE488();
  v49 = v69;
  v48 = v70;
  LODWORD(v47) = v71;
  sub_1E65DE488();
  v30 = v66;
  v29 = v67;
  v31 = v68;
  v62 = type metadata accessor for AppState();
  v63 = v30;
  v44[1] = v62[22];
  v64 = v29;
  v65 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E6001C2C(v30, v29, v31);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD0, &qword_1E65EC490);
  sub_1E65DE928();
  sub_1E5DFD1CC(v22, v45, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4C78();
  sub_1E65E4C88();
  sub_1E5DFE50C(v22, &unk_1ED077CC0, &unk_1E65F2610);
  (*(v50 + 8))(v27, v23);
  v66 = v49;
  v67 = v48;
  v68 = v47;
  v44[0] = a1;
  sub_1E65E4D88();
  sub_1E65DE488();
  v50 = v69;
  v49 = v70;
  LODWORD(v48) = v71;
  sub_1E65DE488();
  v32 = v66;
  v33 = v67;
  v47 = v62[29];
  LOBYTE(v23) = v68;
  v63 = v66;
  v64 = v67;
  v65 = v68;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v34 = v51;
  sub_1E65E4D78();
  sub_1E6001C2C(v32, v33, v23);
  v35 = v53;
  sub_1E65DE938();
  sub_1E5DFD1CC(v35, v55, &unk_1ED077CD0, &unk_1E65F42F0);
  v36 = v54;
  sub_1E65E4C78();
  sub_1E5DF23E0();
  sub_1E65E4C88();
  sub_1E5DFE50C(v35, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v56 + 8))(v34, v36);
  v66 = v50;
  v67 = v49;
  v68 = v48;
  v37 = v44[0];
  sub_1E65E4D88();
  sub_1E65DE488();
  v38 = v69;
  v39 = v70;
  LOBYTE(v33) = v71;
  v40 = v57;
  sub_1E65DE958();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  v42 = v37 + v62[48] + 64;
  return sub_1E64076CC(v40, v38, v39, v33);
}

uint64_t sub_1E6001970(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v23 - v8;
  v25 = *a1;
  v24 = *(a1 + 2);
  HIDWORD(v23) = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  sub_1E65DE488();
  v10 = v26;
  v11 = v27;
  v12 = sub_1E65E60A8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = *a4;
  v14 = a4[3];
  v15 = a4[5];
  v16 = a4[7];
  v17 = a4[9];
  v18 = swift_allocObject();
  v19 = *a4;
  *(v18 + 72) = *(a4 + 1);
  v20 = *(a4 + 3);
  *(v18 + 88) = *(a4 + 2);
  *(v18 + 104) = v20;
  *(v18 + 120) = *(a4 + 4);
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  v21 = v25;
  *(v18 + 36) = v24;
  *(v18 + 32) = v21;
  *(v18 + 38) = BYTE4(v23);
  *(v18 + 40) = v10;
  *(v18 + 48) = v11;
  *(v18 + 56) = v19;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v9, &unk_1E65EC478, v18);
}

uint64_t sub_1E6001B40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32) | (*(v1 + 36) << 32) | (*(v1 + 38) << 48);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E618B668(a1, v4, v5, v6, v7, v8, v1 + 56);
}

uint64_t sub_1E6001C2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1E6001C44()
{
  result = qword_1ED072AE8;
  if (!qword_1ED072AE8)
  {
    sub_1E65DE4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072AE8);
  }

  return result;
}

uint64_t sub_1E6001C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v15 - v8;
  v10 = *(type metadata accessor for AppState() + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v9);
  sub_1E5DFE50C(v5, &qword_1ED071F78, &unk_1E65EA3F0);
  v11 = sub_1E65D7848();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  if (v13(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1E65D77C8();
  result = (v13)(v9, 1, v11);
  if (result != 1)
  {
    return sub_1E5DFE50C(v9, &qword_1ED071F80, &unk_1E65F4310);
  }

  return result;
}

uint64_t sub_1E6001E7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v48 - v5;
  v62 = type metadata accessor for LocalizationService();
  Description = v62[-1].Description;
  v7 = Description[8];
  MEMORY[0x1EEE9AC00](v62);
  v63 = v8;
  v61 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ContentAvailabilityService();
  v10 = v9[-1].Description;
  v11 = v10[8];
  MEMORY[0x1EEE9AC00](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF0, &qword_1E65EC4B8);
  v59 = *(v12 - 8);
  v60 = v12;
  v13 = *(v59 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v56 = v15;
  v57 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v48 - v16;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v17 = sub_1E65E3B68();
  __swift_project_value_buffer(v17, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v18 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v54 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v19 = type metadata accessor for AppEnvironment();
  v20 = *(v19 + 56);
  v21 = *(v19 + 72);
  v53 = v21;
  v48 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  (v10[2])(&v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v20, v9);
  v22 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = Description[2];
  v52 = (Description + 2);
  v23 = v18 + v21;
  v24 = v61;
  v25 = v62;
  v51(v61, v23, v62);
  v26 = *(v10 + 80);
  v55 = v2;
  v27 = (v26 + 16) & ~v26;
  v28 = *(Description + 80);
  v29 = v25;
  v30 = (v11 + v28 + v27) & ~v28;
  v31 = swift_allocObject();
  (v10[4])(v31 + v27, v22, v9);
  v50 = Description[4];
  v32 = v31 + v30;
  v33 = v29;
  v50(v32, v24, v29);

  v34 = v58;
  sub_1E65E4E08();
  v35 = v65;
  v36 = v60;
  v65[3] = v60;
  v35[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v35);
  v38 = v59;
  v39 = *(v59 + 16);
  v39(boxed_opaque_existential_1, v34, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA670;
  v40 = sub_1E65E60A8();
  (*(*(v40 - 8) + 56))(v64, 1, 1, v40);
  v51(v24, v54 + v53, v33);
  v41 = v57;
  v39(v57, v34, v36);
  v42 = (v28 + 40) & ~v28;
  v43 = (v42 + v63 + *(v38 + 80)) & ~*(v38 + 80);
  v44 = swift_allocObject();
  *(v44 + 2) = 0;
  *(v44 + 3) = 0;
  *(v44 + 4) = v55;
  v50(&v44[v42], v61, v62);
  (*(v38 + 32))(&v44[v43], v41, v36);

  v45 = sub_1E6059EAC(0, 0, v64, &unk_1E65EC4F8, v44);
  v46 = KeyPath;
  *(KeyPath + 32) = v45;
  result = (*(v38 + 8))(v34, v36);
  v65[5] = v46;
  return result;
}

uint64_t sub_1E6002440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v5 = sub_1E65D7848();
  v3[7] = v5;
  v6 = *(v5 - 8);
  v3[8] = v6;
  v7 = *(v6 + 64) + 15;
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6002548, 0, 0);
}

uint64_t sub_1E6002548()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[11] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Fetching storefront language code...", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = v0[4];

  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1E60026DC;

  return sub_1E6003010(&unk_1E65EC530, v6, 1);
}

uint64_t sub_1E60026DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 104);
  v9 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v6 = sub_1E6002BF4;
  }

  else
  {
    v7 = v4[12];

    v6 = sub_1E60027FC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E60027FC()
{
  v44 = v0;
  v1 = v0[15];
  v2 = v0[11];

  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[14];
    v5 = v0[15];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v43 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_1E5DFD4B0(v6, v5, &v43);
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Storefront language code: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[6];
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_1E6003648(v10, v9, v13);

  v16 = *(v12 + 48);
  if (v16(v13, 1, v11) == 1)
  {
    v17 = v0[6];
    v18 = v0[7];
    v19 = v0[10];
    sub_1E65D77A8();
    if (v16(v17, 1, v18) != 1)
    {
      sub_1E5DFE50C(v0[6], &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
  }

  v20 = v0[11];
  v42 = *(v0[8] + 16);
  v42(v0[9], v0[10], v0[7]);
  v21 = sub_1E65E3B48();
  v22 = sub_1E65E6338();
  v23 = os_log_type_enabled(v21, v22);
  v25 = v0[8];
  v24 = v0[9];
  v26 = v0[7];
  if (v23)
  {
    v27 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v43 = v41;
    *v27 = 136446210;
    sub_1E6005188();
    v28 = sub_1E65E6BC8();
    v30 = v29;
    v31 = v26;
    v32 = *(v25 + 8);
    v32(v24, v31);
    v33 = sub_1E5DFD4B0(v28, v30, &v43);

    *(v27 + 4) = v33;
    _os_log_impl(&dword_1E5DE9000, v21, v22, "Updating locale to %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1E694F1C0](v41, -1, -1);
    MEMORY[0x1E694F1C0](v27, -1, -1);
  }

  else
  {

    v34 = v26;
    v32 = *(v25 + 8);
    v32(v24, v34);
  }

  v35 = v0[10];
  v36 = v0[7];
  v37 = v0[5];
  v42(v0[3], v35, v36);
  v38 = LocalizationService.updateLocale.getter();
  v38(v35);

  v32(v35, v36);

  v39 = v0[1];

  return v39();
}

uint64_t sub_1E6002BF4()
{
  v22 = v0;
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];

  v4 = v1;
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6328();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[16];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, &v21);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v5, v6, "Unable to fetch storefront language code: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v14 = v0[16];
  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[6];
  swift_willThrow();

  v18 = v0[1];
  v19 = v0[16];

  return v18();
}

uint64_t sub_1E6002D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6002DBC, 0, 0);
}

uint64_t sub_1E6002DBC()
{
  v1 = v0[3];
  v2 = ContentAvailabilityService.queryStorefrontLanguageCode.getter();
  v0[4] = v3;
  v7 = (v2 + *v2);
  v4 = v2[1];
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6002EB0;

  return v7();
}

uint64_t sub_1E6002EB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 40);
  v8 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v9 = sub_1E5FAD050;
  }

  else
  {
    v10 = v6[4];

    v6[7] = a2;
    v6[8] = a1;
    v9 = sub_1E6002FEC;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1E6002FEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 64);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1E6003010(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 128) = a3;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6003034, 0, 0);
}

uint64_t sub_1E6003034()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1E65E5C78();
  }

  sub_1E65E5D18();

  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v5 = sub_1E65E5C48();
    v6 = [v4 initWithSuiteName_];

    if (v6)
    {
      v7 = *(v0 + 128);
      v8 = sub_1E65E5C48();

      v9 = [v6 objectForKey_];

      if (v9)
      {
        sub_1E65E6708();
        swift_unknownObjectRelease();
      }

      else
      {
        v20 = 0u;
        v21 = 0u;
      }

      *(v0 + 16) = v20;
      *(v0 + 32) = v21;
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 64);
      v14 = *(v0 + 72);
      v15 = *(v0 + 8);

      return v15(v13, v14);
    }

    v19 = (*(v0 + 80) + **(v0 + 80));
    v17 = *(*(v0 + 80) + 4);
    v11 = swift_task_alloc();
    *(v0 + 112) = v11;
    *v11 = v0;
    v12 = sub_1E60034E8;
  }

  else
  {
    v19 = (*(v0 + 80) + **(v0 + 80));
    v10 = *(*(v0 + 80) + 4);
    v11 = swift_task_alloc();
    *(v0 + 96) = v11;
    *v11 = v0;
    v12 = sub_1E60033D4;
  }

  v11[1] = v12;
  v18 = *(v0 + 88);

  return v19(v0 + 48);
}

uint64_t sub_1E60033D4()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_1E6003630;
  }

  else
  {
    v3 = sub_1E6005280;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E60034E8()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E6003618;
  }

  else
  {
    v3 = sub_1E60035FC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6003648@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v103 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B10, &qword_1E65EC518);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v102 = &v89 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B18, &qword_1E65EC520);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v89 - v11;
  v12 = sub_1E65D7828();
  v99 = *(v12 - 8);
  v100 = v12;
  v13 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v97 = &v89 - v17;
  v18 = sub_1E65D77E8();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v96 = &v89 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65D7848();
  v22 = *(v21 - 8);
  v104 = v21;
  v105 = v22;
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v93 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v90 = &v89 - v26;
  v27 = sub_1E65D7728();
  v94 = *(v27 - 8);
  v95 = v27;
  v28 = *(v94 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v92 = &v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v91 = &v89 - v31;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v32 = sub_1E65E3B68();
  __swift_project_value_buffer(v32, qword_1EE2EA2A0);
  v33 = v3;
  v34 = sub_1E65E3B48();
  v35 = sub_1E65E6338();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v89 = a1;
    v38 = v37;
    v106 = v37;
    *v36 = 136446210;
    v39 = [v33 localizations];
    v40 = a2;
    v41 = MEMORY[0x1E69E6158];
    v42 = sub_1E65E5F18();

    v43 = MEMORY[0x1E694D940](v42, v41);
    v45 = v44;

    v46 = v43;
    a2 = v40;
    v47 = sub_1E5DFD4B0(v46, v45, &v106);

    *(v36 + 4) = v47;
    _os_log_impl(&dword_1E5DE9000, v34, v35, "Available Localization: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    v48 = v38;
    a1 = v89;
    MEMORY[0x1E694F1C0](v48, -1, -1);
    MEMORY[0x1E694F1C0](v36, -1, -1);
  }

  v49 = [v33 localizations];
  if (!v49)
  {
    sub_1E65E5F18();
    v49 = sub_1E65E5EF8();
  }

  v50 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1E65EA670;
  *(v51 + 32) = a1;
  *(v51 + 40) = a2;

  v52 = sub_1E65E5EF8();

  v53 = [v50 preferredLocalizationsFromArray:v49 forPreferences:v52];

  v54 = sub_1E65E5F18();

  v55 = sub_1E65E3B48();
  v56 = sub_1E65E6338();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v106 = v58;
    *v57 = 136446210;
    v59 = MEMORY[0x1E694D940](v54, MEMORY[0x1E69E6158]);
    v61 = a1;
    v62 = sub_1E5DFD4B0(v59, v60, &v106);

    *(v57 + 4) = v62;
    a1 = v61;
    _os_log_impl(&dword_1E5DE9000, v55, v56, "Preferred Localization: %{public}s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v58);
    MEMORY[0x1E694F1C0](v58, -1, -1);
    MEMORY[0x1E694F1C0](v57, -1, -1);
  }

  if (v54[2])
  {
    v63 = v54[4];
    v64 = v54[5];

    v65 = v90;
    sub_1E65D77C8();
    v66 = v91;
    sub_1E65D7718();
    v67 = v97;
    sub_1E65D7778();
    v68 = sub_1E65D7768();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    sub_1E65D77C8();
    v69 = v98;
    sub_1E65D7838();
    v70 = *(v105 + 8);
    v71 = v65;
    v72 = v104;
    v70(v71, v104);
    sub_1E65D7818();
    (*(v99 + 8))(v69, v100);
    v73 = v93;
    sub_1E65D77C8();
    sub_1E65D77B8();
    v70(v73, v72);
    sub_1E65D77D8();
    sub_1E65D7708();
    v75 = v94;
    v74 = v95;
    (*(v94 + 16))(v92, v66, v95);
    v76 = v103;
    sub_1E65D7738();
    (*(v75 + 8))(v66, v74);
    return (*(v105 + 56))(v76, 0, 1, v72);
  }

  else
  {

    v78 = sub_1E65E3B48();
    v79 = sub_1E65E6338();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v106 = v81;
      *v80 = 136446466;
      *(v80 + 4) = sub_1E5DFD4B0(a1, a2, &v106);
      *(v80 + 12) = 2080;
      v82 = MEMORY[0x1E694D940](v54, MEMORY[0x1E69E6158]);
      v84 = v83;

      v85 = sub_1E5DFD4B0(v82, v84, &v106);

      *(v80 + 14) = v85;
      _os_log_impl(&dword_1E5DE9000, v78, v79, "Unable to find matching local identifier, using autoupdating current: %{public}s -> %s", v80, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v81, -1, -1);
      MEMORY[0x1E694F1C0](v80, -1, -1);
    }

    else
    {
    }

    v86 = v104;
    v87 = *(v105 + 56);
    v88 = v103;

    return v87(v88, 1, 1, v86);
  }
}

uint64_t sub_1E6004028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF8, &qword_1E65EC500);
  v6[7] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310) - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v10 = sub_1E65D7848();
  v6[10] = v10;
  v11 = *(v10 - 8);
  v6[11] = v11;
  v12 = *(v11 + 64) + 15;
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v6[17] = v16;
  v17 = *(v16 - 8);
  v6[18] = v17;
  v18 = *(v17 + 64) + 15;
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E600423C, 0, 0);
}

uint64_t sub_1E600423C()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v3 = v1 + *(type metadata accessor for AppEnvironment() + 56) + v2;
  v4 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[20] = v5;
  v10 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[21] = v7;
  *v7 = v0;
  v7[1] = sub_1E600435C;
  v8 = v0[19];

  return v10(v8);
}

uint64_t sub_1E600435C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6004474, 0, 0);
}

uint64_t sub_1E6004474()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  sub_1E65E60F8();
  v4 = *(MEMORY[0x1E69E8678] + 4);
  v5 = swift_task_alloc();
  v0[22] = v5;
  *v5 = v0;
  v5[1] = sub_1E6004528;
  v6 = v0[16];
  v7 = v0[14];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v7);
}

uint64_t sub_1E6004528()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1E6004624, 0, 0);
}

uint64_t sub_1E6004624()
{
  v49 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);

    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v48 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1E5DFD4B0(v2, v1, &v48);
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Storefront Language Code Changed: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E694F1C0](v7, -1, -1);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];
    v11 = sub_1E6004CBC(v2);
    v13 = v12;

    v14 = [objc_opt_self() mainBundle];
    sub_1E6003648(v11, v13, v10);

    v15 = *(v9 + 48);
    if (v15(v10, 1, v8) == 1)
    {
      v17 = v0[9];
      v16 = v0[10];
      v18 = v0[13];
      sub_1E65D77A8();
      if (v15(v17, 1, v16) != 1)
      {
        sub_1E5DFE50C(v0[9], &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
    }

    v28 = *(v0[11] + 16);
    v28(v0[12], v0[13], v0[10]);
    v29 = sub_1E65E3B48();
    v30 = sub_1E65E6338();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[11];
    v32 = v0[12];
    v34 = v0[10];
    if (v31)
    {
      v47 = v28;
      v35 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v48 = v46;
      *v35 = 136446210;
      sub_1E6005188();
      v36 = sub_1E65E6BC8();
      v38 = v37;
      v45 = v30;
      v39 = *(v33 + 8);
      v39(v32, v34);
      v40 = sub_1E5DFD4B0(v36, v38, &v48);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_1E5DE9000, v29, v45, "Updating locale to %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1E694F1C0](v46, -1, -1);
      v41 = v35;
      v28 = v47;
      MEMORY[0x1E694F1C0](v41, -1, -1);
    }

    else
    {

      v39 = *(v33 + 8);
      v39(v32, v34);
    }

    v0[23] = v39;
    v42 = v0[7];
    v28(v0[8], v0[13], v0[10]);
    swift_storeEnumTagMultiPayload();
    sub_1E65E6058();
    v0[24] = sub_1E65E6048();
    v44 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6004B14, v44, v43);
  }

  else
  {
    v20 = v0[18];
    v19 = v0[19];
    v21 = v0[17];
    v23 = v0[12];
    v22 = v0[13];
    v25 = v0[8];
    v24 = v0[9];
    (*(v0[15] + 8))(v0[16], v0[14]);
    (*(v20 + 8))(v19, v21);

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_1E6004B14()
{
  v1 = v0[24];
  v2 = v0[8];
  v3 = v0[6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF0, &qword_1E65EC4B8);
  sub_1E65E4E38();
  sub_1E5DFE50C(v2, &qword_1ED072AF8, &qword_1E65EC500);

  return MEMORY[0x1EEE6DFA0](sub_1E6004BBC, 0, 0);
}

uint64_t sub_1E6004BBC()
{
  v1 = v0[23];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[5];
  v5 = v0[11] + 8;
  v6 = LocalizationService.updateLocale.getter();
  v6(v2);

  v1(v2, v3);
  v7 = *(MEMORY[0x1E69E8678] + 4);
  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = sub_1E6004528;
  v9 = v0[16];
  v10 = v0[14];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v10);
}

uint64_t sub_1E6004CBC(uint64_t a1)
{
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 bundleIdentifier];

  if (v3)
  {
    sub_1E65E5C78();
  }

  sub_1E65E5D18();

  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    goto LABEL_11;
  }

  v5 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v6 = sub_1E65E5C48();
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = sub_1E65E5C48();

    v9 = [v7 objectForKey_];

    if (v9)
    {
      sub_1E65E6708();
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  if (swift_dynamicCast())
  {
    return v11;
  }

LABEL_11:

  return a1;
}

uint64_t sub_1E6004EE0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for LocalizationService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6002440(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E600501C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for LocalizationService()[-1].Description;
  v6 = (*(Description + 80) + 40) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF0, &qword_1E65EC4B8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E6004028(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_1E6005188()
{
  result = qword_1EE2D7180;
  if (!qword_1EE2D7180)
  {
    sub_1E65D7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7180);
  }

  return result;
}

uint64_t sub_1E60051E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6002D9C(a1, v4);
}

uint64_t type metadata accessor for PreviewButtonViewMetrics()
{
  result = qword_1ED072B30;
  if (!qword_1ED072B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E60052F8()
{
  sub_1E5DF0194();
  if (v0 <= 0x3F)
  {
    sub_1E65D8F28();
    if (v1 <= 0x3F)
    {
      sub_1E65D9F88();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t static ToastService.live()@<X0>(void *a1@<X8>)
{
  type metadata accessor for LiveToastService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v2 + 112) = sub_1E65E17A8();
  *a1 = &unk_1E65EC570;
  a1[1] = v2;
  a1[2] = &unk_1E65EC580;
  a1[3] = v2;
  a1[4] = &unk_1E65EC590;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t sub_1E600544C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6005468, a2, 0);
}

uint64_t sub_1E6005468()
{
  *(v0 + 32) = *(*(v0 + 24) + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  sub_1E5FED46C(&qword_1EE2D64B0, &qword_1ED072B40, &qword_1E65EC560);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6005538, v2, v1);
}

uint64_t sub_1E6005538()
{
  v1 = v0[4];
  v2 = v0[2];
  sub_1E65E1798();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E600559C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E600544C(a1, v1);
}

uint64_t sub_1E6005634()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + 112);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B50, &qword_1E65EC5E8);
  v4[4] = sub_1E5FED46C(&unk_1EE2D47D0, &qword_1ED072B50, &qword_1E65EC5E8);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  sub_1E5FED46C(&qword_1EE2D64B0, &qword_1ED072B40, &qword_1E65EC560);
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5E275D8, v6, v5);
}

uint64_t sub_1E6005780(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  v4 = type metadata accessor for ToastAction();
  *(v2 + 24) = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  *(v2 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E600581C, a2, 0);
}

uint64_t sub_1E600581C()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 48);
  *(v0 + 40) = *(*(v0 + 16) + 112);
  *v1 = v3;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  sub_1E5FED46C(&qword_1EE2D64B0, &qword_1ED072B40, &qword_1E65EC560);
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6005900, v5, v4);
}

uint64_t sub_1E6005900()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_1E65E1798();
  sub_1E6005A0C(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6005974(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6005780(a1, v1);
}

uint64_t sub_1E6005A0C(uint64_t a1)
{
  v2 = type metadata accessor for ToastAction();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6005A68(uint64_t a1)
{
  v2 = sub_1E65DA2D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = v26 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v26 - v11;
  v13 = *(a1 + 16);
  v14 = sub_1E5DFA4D4(&qword_1ED072C58, MEMORY[0x1E69CCC28]);
  result = MEMORY[0x1E694DC60](v13, v2, v14);
  v16 = 0;
  v27 = a1;
  v28 = result;
  v19 = *(a1 + 64);
  v18 = a1 + 64;
  v17 = v19;
  v20 = 1 << *(v18 - 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v17;
  v23 = (v20 + 63) >> 6;
  v26[2] = v3 + 32;
  v26[3] = v3 + 16;
  v26[1] = v3 + 8;
  if ((v21 & v17) != 0)
  {
    do
    {
      v24 = v16;
LABEL_9:
      v25 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      (*(v3 + 16))(v12, *(v27 + 56) + *(v3 + 72) * (v25 | (v24 << 6)), v2);
      (*(v3 + 32))(v7, v12, v2);
      sub_1E60F11BC(v10, v7);
      result = (*(v3 + 8))(v10, v2);
    }

    while (v22);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v24 >= v23)
    {

      return v28;
    }

    v22 = *(v18 + 8 * v24);
    ++v16;
    if (v22)
    {
      v16 = v24;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6005CC8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 178) = a4;
  *(v5 + 177) = a3;
  *(v5 + 16) = a1;
  v6 = *(type metadata accessor for RouteDestination() - 8);
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 + 64);
  *(v5 + 56) = swift_task_alloc();
  v7 = type metadata accessor for NavigationControllerRoutingContext();
  *(v5 + 64) = v7;
  v8 = *(v7 - 8);
  *(v5 + 72) = v8;
  *(v5 + 80) = *(v8 + 64);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = sub_1E65E6058();
  *(v5 + 104) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v5 + 112) = v10;
  *(v5 + 120) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E6005E34, v10, v9);
}

uint64_t sub_1E6005E34()
{
  v1 = v0[12];
  v0[16] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v0[17] = v3;
  v0[18] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E6005EC0, v3, v2);
}

uint64_t sub_1E6005EC0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v16 = *(v0 + 48);
  v17 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 178);
  v7 = *(v0 + 16);
  v18 = *(v0 + 24);
  v8 = (v5 + *(*(v0 + 64) + 24));
  v20 = *v8;
  v21 = v8[1];
  v9 = *(v0 + 177);
  ObjectType = swift_getObjectType();
  *(v0 + 176) = v6;
  sub_1E600E0EC(v5, v1, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E600E0EC(v7, v3, type metadata accessor for RouteDestination);
  v10 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v11 = (v17 + *(v4 + 80) + v10) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v0 + 152) = v12;
  sub_1E600E154(v1, v12 + v10, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E600E154(v3, v12 + v11, type metadata accessor for RouteDestination);
  *(v12 + v11 + v16) = 1;
  v13 = v12 + ((v11 + v16) & 0xFFFFFFFFFFFFFFF8);
  *(v13 + 8) = v18;
  *(v13 + 16) = v9;
  sub_1E5FA9D20(v18, v9);
  v14 = swift_task_alloc();
  *(v0 + 160) = v14;
  *v14 = v0;
  v14[1] = sub_1E60060C0;

  return sub_1E61261B8((v0 + 176), &unk_1E65EA820, v12, ObjectType, v21);
}

uint64_t sub_1E60060C0()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 144);
  if (v0)
  {
    v7 = sub_1E60062D8;
  }

  else
  {
    v7 = sub_1E60061F8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1E60061F8()
{
  v1 = v0[16];

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1E600625C, v2, v3);
}

uint64_t sub_1E600625C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60062D8()
{
  v1 = v0[16];

  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1E600633C, v2, v3);
}

uint64_t sub_1E600633C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[7];

  v4 = v0[1];
  v5 = v0[21];

  return v4();
}

uint64_t AppCoordinator.routeURL(_:referrerURL:sourceApplication:annotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = _s8ResourceOMa();
  v6[8] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[9] = swift_task_alloc();
  v9 = type metadata accessor for URLContext(0);
  v6[10] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[11] = swift_task_alloc();
  v11 = *(*(type metadata accessor for URLRoute() - 8) + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v13 = sub_1E65D74E8();
  v6[15] = v13;
  v14 = *(v13 - 8);
  v6[16] = v14;
  v15 = *(v14 + 64) + 15;
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v16 = type metadata accessor for RouteSource(0);
  v6[20] = v16;
  v17 = *(*(v16 - 8) + 64) + 15;
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60065C8, 0, 0);
}

uint64_t sub_1E60065C8()
{
  v83 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v76 = v0[9];
  v79 = v0[8];
  v74 = v0[5];
  v71 = v0[10];
  v72 = v0[4];
  v7 = v0[3];
  v8 = *(v0[16] + 16);
  v8(v2, v0[2], v3);
  sub_1E5DFD1CC(v7, v4, &qword_1ED072340, &qword_1E65EA410);
  v8(v1, v2, v3);
  sub_1E6077428(v1, v6);
  v8(v5, v2, v3);
  v9 = *(v71 + 20);
  sub_1E6009E5C(v4, v5 + v9);
  v10 = v5;
  v11 = (v5 + *(v71 + 24));
  *v11 = v72;
  v11[1] = v74;
  sub_1E600E0EC(v6, v76, _s8ResourceOMa);

  sub_1E600DD44(v6, type metadata accessor for URLRoute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v23 = v0[24];
      v25 = v0[19];
      v24 = v0[20];
      v26 = v0[15];
      v27 = v0[16];
      v28 = v0[9];
      sub_1E600DD44(v0[11], type metadata accessor for URLContext);
      v29 = v8;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
      (*(v27 + 32))(v23, v25, v26);
      swift_storeEnumTagMultiPayload();
      v31 = v28 + v30;
      v8 = v29;
      v19 = *(v27 + 8);
      v19(v31, v26);
      goto LABEL_17;
    }

    v18 = v0[9];
    v19 = *(v0[16] + 8);
    v19(v0[19], v0[15]);
    sub_1E600DD44(v18, _s8ResourceOMa);
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v77 = v8;
        v13 = v0[15];
        v14 = v0[16];
        v15 = v0[13];
        v16 = v0[9];
        v17 = v0[5];
        v80 = *(v14 + 8);
        v80(v0[19], v13);
        sub_1E600DD44(v16, _s8ResourceOMa);
        sub_1E5DFD1CC(v10 + v9, v15, &qword_1ED072340, &qword_1E65EA410);
        LODWORD(v14) = (*(v14 + 48))(v15, 1, v13);
        sub_1E5DFE50C(v15, &qword_1ED072340, &qword_1E65EA410);
        if (v14 != 1 || v17)
        {
          sub_1E600E154(v0[11], v0[23], type metadata accessor for URLContext);
        }

        else
        {
          sub_1E600DD44(v0[11], type metadata accessor for URLContext);
        }

        v8 = v77;
        v37 = v0[23];
        v38 = v0[24];
        v39 = v0[20];
        swift_storeEnumTagMultiPayload();
        sub_1E600E154(v37, v38, type metadata accessor for RouteSource);
        v19 = v80;
      }

      else
      {
        v32 = v0[24];
        v33 = v0[20];
        v34 = v0[11];
        v35 = v0[9];
        v19 = *(v0[16] + 8);
        v19(v0[19], v0[15]);
        sub_1E600DD44(v34, type metadata accessor for URLContext);
        swift_storeEnumTagMultiPayload();
        sub_1E600DD44(v35, _s8ResourceOMa);
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v20 = v0[24];
      v21 = v0[20];
      v22 = v0[11];
      v19 = *(v0[16] + 8);
      v19(v0[19], v0[15]);
      sub_1E600DD44(v22, type metadata accessor for URLContext);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    }

    v19 = *(v0[16] + 8);
    v19(v0[19], v0[15]);
  }

  v36 = v0[20];
  sub_1E600E154(v0[11], v0[24], type metadata accessor for URLContext);
  swift_storeEnumTagMultiPayload();
LABEL_17:
  sub_1E600E154(v0[24], v0[25], type metadata accessor for RouteSource);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v40 = v0[25];
  v41 = v0[22];
  v42 = v0[17];
  v43 = v0[15];
  v44 = v0[2];
  v45 = sub_1E65E3B68();
  __swift_project_value_buffer(v45, qword_1EE2EA2A0);
  v8(v42, v44, v43);
  sub_1E600E0EC(v40, v41, type metadata accessor for RouteSource);
  v46 = sub_1E65E3B48();
  v47 = sub_1E65E6338();
  v48 = os_log_type_enabled(v46, v47);
  v49 = v0[22];
  if (v48)
  {
    v75 = v0[21];
    v78 = v0[20];
    v50 = v0[17];
    v73 = v0[16];
    v81 = v19;
    v51 = v0[15];
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v82 = v53;
    *v52 = 136315394;
    sub_1E5DFA4D4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0]);
    v54 = sub_1E65E6BC8();
    v56 = v55;
    v81(v50, v51);
    v57 = sub_1E5DFD4B0(v54, v56, &v82);

    *(v52 + 4) = v57;
    *(v52 + 12) = 2080;
    sub_1E600E0EC(v49, v75, type metadata accessor for RouteSource);
    v58 = sub_1E65E5CE8();
    v60 = v59;
    sub_1E600DD44(v49, type metadata accessor for RouteSource);
    v61 = sub_1E5DFD4B0(v58, v60, &v82);

    *(v52 + 14) = v61;
    _os_log_impl(&dword_1E5DE9000, v46, v47, "Incoming URL: %s source %s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v53, -1, -1);
    MEMORY[0x1E694F1C0](v52, -1, -1);
  }

  else
  {
    v63 = v0[16];
    v62 = v0[17];
    v64 = v0[15];

    sub_1E600DD44(v49, type metadata accessor for RouteSource);
    v19(v62, v64);
  }

  v65 = *__swift_project_boxed_opaque_existential_1((v0[7] + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver), *(v0[7] + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver + 24));
  v66 = swift_task_alloc();
  v0[26] = v66;
  *v66 = v0;
  v66[1] = sub_1E6006DD0;
  v67 = v0[25];
  v68 = v0[6];
  v69 = v0[2];

  return sub_1E5FFC850(v69, v67, v68, v65);
}

uint64_t sub_1E6006DD0()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_1E600700C;
  }

  else
  {
    v3 = sub_1E6006EE4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6006EE4()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v11 = v0[13];
  v12 = v0[12];
  v13 = v0[11];
  v14 = v0[9];
  sub_1E600DD44(v0[25], type metadata accessor for RouteSource);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E600700C()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  v6 = v0[18];
  v5 = v0[19];
  v7 = v0[17];
  v8 = v0[14];
  v12 = v0[13];
  v13 = v0[12];
  v14 = v0[11];
  v15 = v0[9];
  sub_1E600DD44(v0[25], type metadata accessor for RouteSource);

  v9 = v0[1];
  v10 = v0[27];

  return v9();
}

uint64_t AppCoordinator.routeUserActivity(_:annotation:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = _s8ResourceOMa();
  v3[20] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v6 = type metadata accessor for URLContext(0);
  v3[22] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v8 = *(*(type metadata accessor for URLRoute() - 8) + 64) + 15;
  v3[24] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410) - 8) + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v10 = type metadata accessor for RouteSource(0);
  v3[27] = v10;
  v11 = *(*(v10 - 8) + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v12 = sub_1E65D74E8();
  v3[33] = v12;
  v13 = *(v12 - 8);
  v3[34] = v13;
  v14 = *(v13 + 64) + 15;
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600) - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v17 = sub_1E65D9388();
  v3[42] = v17;
  v18 = *(v17 - 8);
  v3[43] = v18;
  v19 = *(v18 + 64) + 15;
  v3[44] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v21 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8) + 64) + 15;
  v3[46] = swift_task_alloc();
  v22 = type metadata accessor for RouteDestination();
  v3[47] = v22;
  v23 = *(*(v22 - 8) + 64) + 15;
  v3[48] = swift_task_alloc();
  v24 = sub_1E65E2A38();
  v3[49] = v24;
  v25 = *(v24 - 8);
  v3[50] = v25;
  v26 = *(v25 + 64) + 15;
  v3[51] = swift_task_alloc();
  v27 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70) - 8) + 64) + 15;
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v28 = type metadata accessor for AppAction();
  v3[54] = v28;
  v29 = *(*(v28 - 8) + 64) + 15;
  v3[55] = swift_task_alloc();
  v30 = sub_1E65DAA88();
  v3[56] = v30;
  v31 = *(v30 - 8);
  v3[57] = v31;
  v32 = *(v31 + 64) + 15;
  v3[58] = swift_task_alloc();
  v33 = sub_1E65DA878();
  v3[59] = v33;
  v34 = *(v33 - 8);
  v3[60] = v34;
  v35 = *(v34 + 64) + 15;
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v36 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B68, &qword_1E65EC608) - 8) + 64) + 15;
  v3[63] = swift_task_alloc();
  v37 = sub_1E65D9C28();
  v3[64] = v37;
  v38 = *(v37 - 8);
  v3[65] = v38;
  v39 = *(v38 + 64) + 15;
  v3[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60076EC, 0, 0);
}

uint64_t sub_1E60076EC()
{
  v233 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v232[0] = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_1E65E5C78();
    v13 = v12;

    v14 = sub_1E5DFD4B0(v11, v13, v232);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Incoming UserActivity: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v15 = [*(v0 + 136) activityType];
  v16 = sub_1E65E5C78();
  v18 = v17;

  if (v16 == 0xD000000000000031 && 0x80000001E6611400 == v18)
  {

    goto LABEL_9;
  }

  v19 = sub_1E65E6C18();

  if ((v19 & 1) == 0)
  {
    v41 = [*(v0 + 136) activityType];
    v42 = sub_1E65E5C78();
    v44 = v43;

    v45 = *MEMORY[0x1E696AA68];
    if (v42 == sub_1E65E5C78() && v44 == v46)
    {
    }

    else
    {
      v47 = sub_1E65E6C18();

      if ((v47 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v48 = [*(v0 + 136) webpageURL];
    if (v48)
    {
      v50 = *(v0 + 304);
      v49 = *(v0 + 312);
      v51 = *(v0 + 296);
      v53 = *(v0 + 264);
      v52 = *(v0 + 272);
      v54 = *(v0 + 136);
      v55 = v48;
      sub_1E65D7478();

      v201 = *(v52 + 32);
      v201(v49, v50, v53);
      v222 = *(v52 + 16);
      v222(v51, v49, v53);
      v56 = [v54 referrerURL];
      if (v56)
      {
        v57 = *(v0 + 208);
        v58 = v56;
        sub_1E65D7478();

        v59 = 0;
      }

      else
      {
        v59 = 1;
      }

      v71 = *(v0 + 136);
      (*(*(v0 + 272) + 56))(*(v0 + 208), v59, 1, *(v0 + 264));
      v72 = [v71 smu_sourceApplication];
      if (v72)
      {
        v73 = v72;
        v215 = sub_1E65E5C78();
        v219 = v74;
      }

      else
      {
        v215 = 0;
        v219 = 0;
      }

      v76 = *(v0 + 288);
      v75 = *(v0 + 296);
      v77 = *(v0 + 264);
      v78 = *(v0 + 208);
      v79 = *(v0 + 184);
      v80 = *(v0 + 192);
      v81 = *(v0 + 168);
      v82 = *(v0 + 176);
      v207 = v78;
      v211 = *(v0 + 160);
      v222(v76, v75, v77);
      sub_1E6077428(v76, v80);
      v222(v79, v75, v77);
      v83 = v79;
      v84 = *(v82 + 20);
      sub_1E6009E5C(v207, v79 + v84);
      v85 = (v79 + *(v82 + 24));
      *v85 = v215;
      v85[1] = v219;
      sub_1E600E0EC(v80, v81, _s8ResourceOMa);
      sub_1E600DD44(v80, type metadata accessor for URLRoute);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v87 = *(v0 + 296);
      v88 = *(v0 + 264);
      v89 = *(v0 + 272);
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload > 1)
        {
          v130 = *(v0 + 248);
          v131 = *(v0 + 216);
          v132 = *(v0 + 168);
          v133 = *(v0 + 296);
          v134 = *(v0 + 264);
          sub_1E600DD44(*(v0 + 184), type metadata accessor for URLContext);
          v135 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
          v201(v130, v133, v134);
          swift_storeEnumTagMultiPayload();
          v92 = *(v89 + 8);
          v92(v132 + v135, v134);
          goto LABEL_63;
        }

        v95 = *(v0 + 168);
        v92 = *(v89 + 8);
        v92(v87, v88);
        sub_1E600DD44(v95, _s8ResourceOMa);
      }

      else
      {
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v90 = *(v0 + 200);
            v91 = *(v0 + 168);
            v92 = *(v89 + 8);
            v93 = *(v0 + 264);
            (v92)(v87);
            sub_1E600DD44(v91, _s8ResourceOMa);
            sub_1E5DFD1CC(v83 + v84, v90, &qword_1ED072340, &qword_1E65EA410);
            v94 = (*(v89 + 48))(v90, 1, v93);
            sub_1E5DFE50C(v90, &qword_1ED072340, &qword_1E65EA410);
            if (v94 != 1 || v219)
            {
              sub_1E600E154(*(v0 + 184), *(v0 + 240), type metadata accessor for URLContext);
            }

            else
            {
              sub_1E600DD44(*(v0 + 184), type metadata accessor for URLContext);
            }

            v141 = *(v0 + 240);
            v142 = *(v0 + 248);
            v143 = *(v0 + 216);
            swift_storeEnumTagMultiPayload();
            sub_1E600E154(v141, v142, type metadata accessor for RouteSource);
          }

          else
          {
            v136 = *(v0 + 248);
            v137 = *(v0 + 216);
            v138 = *(v0 + 184);
            v139 = *(v0 + 168);
            v92 = *(v89 + 8);
            v92(v87, v88);
            sub_1E600DD44(v138, type metadata accessor for URLContext);
            swift_storeEnumTagMultiPayload();
            sub_1E600DD44(v139, _s8ResourceOMa);
          }

          goto LABEL_63;
        }

        if (EnumCaseMultiPayload == 5)
        {
          v96 = *(v0 + 248);
          v97 = *(v0 + 216);
          v98 = *(v0 + 184);
          v92 = *(v89 + 8);
          v92(v87, v88);
          sub_1E600DD44(v98, type metadata accessor for URLContext);
          swift_storeEnumTagMultiPayload();
LABEL_63:
          *(v0 + 632) = v92;
          v144 = *(v0 + 312);
          v145 = *(v0 + 280);
          v147 = *(v0 + 256);
          v146 = *(v0 + 264);
          v148 = *(v0 + 232);
          sub_1E600E154(*(v0 + 248), v147, type metadata accessor for RouteSource);
          v222(v145, v144, v146);
          sub_1E600E0EC(v147, v148, type metadata accessor for RouteSource);
          v149 = sub_1E65E3B48();
          v150 = sub_1E65E6338();
          v151 = os_log_type_enabled(v149, v150);
          v153 = *(v0 + 272);
          v152 = *(v0 + 280);
          v154 = *(v0 + 264);
          v155 = *(v0 + 232);
          if (v151)
          {
            v224 = *(v0 + 224);
            v228 = *(v0 + 216);
            v156 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            v232[0] = v231;
            *v156 = 136315394;
            sub_1E5DFA4D4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0]);
            v157 = sub_1E65E6BC8();
            v158 = v92;
            v159 = v157;
            v161 = v160;
            v158(v152, v154);
            v162 = sub_1E5DFD4B0(v159, v161, v232);

            *(v156 + 4) = v162;
            *(v156 + 12) = 2080;
            sub_1E600E0EC(v155, v224, type metadata accessor for RouteSource);
            v163 = sub_1E65E5CE8();
            v165 = v164;
            sub_1E600DD44(v155, type metadata accessor for RouteSource);
            v166 = sub_1E5DFD4B0(v163, v165, v232);

            *(v156 + 14) = v166;
            _os_log_impl(&dword_1E5DE9000, v149, v150, "Incoming UserActivity with URL: %s source %s", v156, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E694F1C0](v231, -1, -1);
            MEMORY[0x1E694F1C0](v156, -1, -1);
          }

          else
          {

            sub_1E600DD44(v155, type metadata accessor for RouteSource);
            v92(v152, v154);
          }

          v167 = *__swift_project_boxed_opaque_existential_1((*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver), *(*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver + 24));
          v168 = swift_task_alloc();
          *(v0 + 640) = v168;
          *v168 = v0;
          v168[1] = sub_1E60096AC;
          v169 = *(v0 + 312);
          v170 = *(v0 + 256);
          v171 = *(v0 + 144);

          return sub_1E5FFC850(v169, v170, v171, v167);
        }

        v92 = *(v89 + 8);
        v92(v87, v88);
      }

      v140 = *(v0 + 216);
      sub_1E600E154(*(v0 + 184), *(v0 + 248), type metadata accessor for URLContext);
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
    }

LABEL_29:
    sub_1E5FAA54C();
    swift_allocError();
    *v60 = 7;
    swift_willThrow();
    v61 = *(v0 + 528);
    v63 = *(v0 + 496);
    v62 = *(v0 + 504);
    v64 = *(v0 + 488);
    v65 = *(v0 + 464);
    v66 = *(v0 + 440);
    v67 = *(v0 + 416);
    v68 = *(v0 + 424);
    v69 = *(v0 + 408);
    v70 = *(v0 + 384);
    v177 = *(v0 + 368);
    v179 = *(v0 + 360);
    v181 = *(v0 + 352);
    v183 = *(v0 + 328);
    v185 = *(v0 + 320);
    v187 = *(v0 + 312);
    v189 = *(v0 + 304);
    v191 = *(v0 + 296);
    v193 = *(v0 + 288);
    v195 = *(v0 + 280);
    v197 = *(v0 + 256);
    v199 = *(v0 + 248);
    v202 = *(v0 + 240);
    v204 = *(v0 + 232);
    v206 = *(v0 + 224);
    v210 = *(v0 + 208);
    v214 = *(v0 + 200);
    v218 = *(v0 + 192);
    v223 = *(v0 + 184);
    v226 = *(v0 + 168);

    v39 = *(v0 + 8);
    goto LABEL_19;
  }

LABEL_9:
  v20 = [*(v0 + 136) userInfo];
  if (!v20)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_17;
  }

  v21 = v20;
  v22 = sub_1E65E5B08();

  *(v0 + 88) = 0xD000000000000017;
  *(v0 + 96) = 0x80000001E6611440;
  sub_1E65E6848();
  if (!*(v22 + 16) || (v23 = sub_1E6417048(v0 + 16), (v24 & 1) == 0))
  {

    sub_1E6009FC0(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_17;
  }

  sub_1E5DFA11C(*(v22 + 56) + 32 * v23, v0 + 56);
  sub_1E6009FC0(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_17:
    sub_1E5DFE50C(v0 + 56, &qword_1ED072B28, &unk_1E65F06A0);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v29 = *(v0 + 528);
    v31 = *(v0 + 496);
    v30 = *(v0 + 504);
    v32 = *(v0 + 488);
    v33 = *(v0 + 464);
    v34 = *(v0 + 440);
    v36 = *(v0 + 416);
    v35 = *(v0 + 424);
    v37 = *(v0 + 408);
    v38 = *(v0 + 384);
    v178 = *(v0 + 368);
    v180 = *(v0 + 360);
    v182 = *(v0 + 352);
    v184 = *(v0 + 328);
    v186 = *(v0 + 320);
    v188 = *(v0 + 312);
    v190 = *(v0 + 304);
    v192 = *(v0 + 296);
    v194 = *(v0 + 288);
    v196 = *(v0 + 280);
    v198 = *(v0 + 256);
    v200 = *(v0 + 248);
    v203 = *(v0 + 240);
    v205 = *(v0 + 232);
    v209 = *(v0 + 224);
    v213 = *(v0 + 208);
    v217 = *(v0 + 200);
    v221 = *(v0 + 192);
    v225 = *(v0 + 184);
    v229 = *(v0 + 168);

    v39 = *(v0 + 8);
LABEL_19:

    return v39();
  }

  v26 = *(v0 + 504);
  v25 = *(v0 + 512);
  v27 = *(v0 + 104);
  v28 = *(v0 + 112);
  *(v0 + 536) = v27;
  *(v0 + 544) = v28;
  sub_1E600A014(v27, v28);
  sub_1E5DFA4D4(&qword_1ED072B70, MEMORY[0x1E69CC790]);
  sub_1E65DA6A8();
  v99 = *(v0 + 528);
  v100 = *(v0 + 520);
  v102 = *(v0 + 504);
  v101 = *(v0 + 512);
  v103 = *(v0 + 496);
  v104 = *(v0 + 472);
  v105 = *(v0 + 480);
  (*(v100 + 56))(v102, 0, 1, v101);
  (*(v100 + 32))(v99, v102, v101);
  sub_1E65D9BF8();
  v106 = sub_1E65DA858();
  v107 = *(v105 + 8);
  *(v0 + 552) = v107;
  *(v0 + 560) = (v105 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v107(v103, v104);
  v108 = *(v106 + 16);
  if (v108)
  {
    v109 = *(v0 + 456);
    v110 = *(v109 + 16);
    v109 += 16;
    v220 = v110;
    v111 = v106 + ((*(v109 + 64) + 32) & ~*(v109 + 64));
    v216 = *(v109 + 56);
    v208 = *(v0 + 400);
    v212 = (v109 - 8);
    v112 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v227 = v108;
      v230 = *(v0 + 408);
      v220(*(v0 + 464), v111, *(v0 + 448));
      v113 = sub_1E65DAA58();
      v115 = v114;
      sub_1E65DAA58();
      v116 = sub_1E65DAA78();
      sub_1E600AA08(v116);

      v117 = sub_1E65DAA68();
      sub_1E600AA08(v117);

      sub_1E65E2A08();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v232[0] = v112;
      v119 = sub_1E6215038(v113, v115);
      v122 = v112[2];
      v123 = (v120 & 1) == 0;
      v124 = __OFADD__(v122, v123);
      v125 = v122 + v123;
      if (v124)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v119, v120, v121);
      }

      v126 = v120;
      if (v112[3] < v125)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_53;
      }

      v129 = v119;
      sub_1E64242F0();
      v119 = v129;
      v112 = v232[0];
      v128 = *(v0 + 408);
      if (v126)
      {
LABEL_54:
        (*(v208 + 40))(v112[7] + *(v208 + 72) * v119, v128, *(v0 + 392));

        goto LABEL_47;
      }

LABEL_46:
      sub_1E6422E40(v119, v113, v115, v128, v112);
LABEL_47:
      (*v212)(*(v0 + 464), *(v0 + 448));
      v111 += v216;
      v108 = v227 - 1;
      if (v227 == 1)
      {

        goto LABEL_71;
      }
    }

    sub_1E641B0BC(v125, isUniquelyReferenced_nonNull_native);
    v112 = v232[0];
    v119 = sub_1E6215038(v113, v115);
    if ((v126 & 1) != (v127 & 1))
    {

      return sub_1E65E6C68();
    }

LABEL_53:
    v128 = *(v0 + 408);
    if (v126)
    {
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  v112 = MEMORY[0x1E69E7CC8];
LABEL_71:
  *(v0 + 568) = v112;
  v173 = *(v0 + 432);
  v172 = *(v0 + 440);
  *(v0 + 576) = *(*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer);
  *v172 = xmmword_1E65EADB0;
  swift_storeEnumTagMultiPayload();
  *(v0 + 584) = sub_1E65E6058();
  *(v0 + 592) = sub_1E65E6048();
  v174 = sub_1E65E5FC8();
  v176 = v175;
  v119 = sub_1E6008A80;
  v120 = v174;
  v121 = v176;

  return MEMORY[0x1EEE6DFA0](v119, v120, v121);
}

uint64_t sub_1E6008A80()
{
  v1 = v0[74];
  v2 = v0[72];
  v3 = v0[55];

  sub_1E65E4EE8();
  sub_1E600DD44(v3, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6008B14, 0, 0);
}

uint64_t sub_1E6008B14()
{
  v1 = *(v0 + 584);
  *(v0 + 600) = __swift_project_boxed_opaque_existential_1((*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  *(v0 + 120) = xmmword_1E65EADB0;
  *(v0 + 608) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6008BCC, v3, v2);
}

uint64_t sub_1E6008BCC()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[53];

  v4 = *v2;
  sub_1E63350F4(v0 + 15, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E6008C4C, 0, 0);
}

uint64_t sub_1E6008C4C()
{
  v1 = v0[52];
  sub_1E5DFD1CC(v0[53], v1, &qword_1ED072A30, &qword_1E65EEA70);
  v2 = type metadata accessor for NavigationControllerRoutingContext();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[71];
    v4 = v0[68];
    v5 = v0[67];
    v6 = v0[66];
    v7 = v0[65];
    v8 = v0[64];
    v10 = v0[52];
    v9 = v0[53];

    sub_1E600A068(v5, v4);
    sub_1E5DFE50C(v9, &qword_1ED072A30, &qword_1E65EEA70);
    (*(v7 + 8))(v6, v8);
    sub_1E5DFE50C(v10, &qword_1ED072A30, &qword_1E65EEA70);
    v11 = v0[66];
    v13 = v0[62];
    v12 = v0[63];
    v14 = v0[61];
    v15 = v0[58];
    v16 = v0[55];
    v18 = v0[52];
    v17 = v0[53];
    v19 = v0[51];
    v20 = v0[48];
    v58 = v0[46];
    v59 = v0[45];
    v60 = v0[44];
    v61 = v0[41];
    v62 = v0[40];
    v63 = v0[39];
    v64 = v0[38];
    v65 = v0[37];
    v66 = v0[36];
    v67 = v0[35];
    v68 = v0[32];
    v70 = v0[31];
    v72 = v0[30];
    v74 = v0[29];
    v76 = v0[28];
    v78 = v0[26];
    v80 = v0[25];
    v82 = v0[24];
    v84 = v0[23];
    v86 = v0[21];

    v21 = v0[1];

    return v21();
  }

  else
  {
    v23 = v0[66];
    v25 = v0[45];
    v24 = v0[46];
    v26 = v0[43];
    v27 = v0[44];
    v28 = v0[42];
    v29 = v0[40];
    sub_1E65D9BB8();
    v30 = sub_1E65D76F8();
    (*(*(v30 - 8) + 56))(v24, 0, 1, v30);
    v31 = sub_1E65D9BD8();
    v85 = v32;
    v87 = v31;
    sub_1E65D9C08();
    sub_1E61DADA0(v25);
    (*(v26 + 8))(v27, v28);
    v33 = sub_1E65E2CF8();
    (*(*(v33 - 8) + 56))(v25, 0, 1, v33);
    sub_1E65D9BE8();
    v34 = sub_1E65DA7C8();
    v35 = *(v34 - 8);
    if ((*(v35 + 48))(v29, 1, v34) == 1)
    {
      sub_1E5DFE50C(v0[40], &qword_1ED072B58, &qword_1E65EC600);
      v36 = 1;
    }

    else
    {
      v37 = v0[40];
      sub_1E64C6B48(v0[41]);
      (*(v35 + 8))(v37, v34);
      v36 = 0;
    }

    v83 = v0[71];
    v69 = v0[70];
    v38 = v0[69];
    v39 = v0[66];
    v40 = v0[61];
    v41 = v0[59];
    v43 = v0[47];
    v42 = v0[48];
    v81 = v43;
    v73 = v0[46];
    v79 = v0[45];
    v44 = v0[41];
    v77 = v44;
    v45 = v0[27];
    v46 = sub_1E65E1FC8();
    (*(*(v46 - 8) + 56))(v44, v36, 1, v46);
    v75 = sub_1E65D9C18();
    sub_1E65D9BF8();
    v71 = sub_1E65DA868();
    v38(v40, v41);
    v47 = *(v43 + 20);
    swift_storeEnumTagMultiPayload();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
    v49 = (v42 + v48[12]);
    v50 = v48[16];
    v51 = v48[20];
    v52 = v48[24];
    v53 = v48[28];
    v54 = v42 + v48[32];
    sub_1E5DFD1CC(v73, v42, &unk_1ED077760, &unk_1E66011D0);
    *v49 = v87;
    v49[1] = v85;
    sub_1E5DFD1CC(v79, v42 + v50, &qword_1ED072B60, &unk_1E65FA490);
    *(v42 + v51) = v83;
    sub_1E5DFD1CC(v77, v42 + v52, &unk_1ED077750, &unk_1E66011C0);
    *(v42 + v53) = v75;
    *v54 = v71;
    *(v54 + 8) = 0;
    type metadata accessor for RouteResource();
    swift_storeEnumTagMultiPayload();
    sub_1E5DFE50C(v77, &unk_1ED077750, &unk_1E66011C0);
    sub_1E5DFE50C(v79, &qword_1ED072B60, &unk_1E65FA490);
    sub_1E5DFE50C(v73, &unk_1ED077760, &unk_1E66011D0);
    *(v42 + *(v81 + 24)) = MEMORY[0x1E69E7CD0];
    v55 = swift_task_alloc();
    v0[77] = v55;
    *v55 = v0;
    v55[1] = sub_1E6009310;
    v56 = v0[52];
    v57 = v0[48];

    return sub_1E6005CC8(v57, 0, 0, 0);
  }
}

uint64_t sub_1E6009310()
{
  v2 = *v1;
  v3 = *(*v1 + 616);
  v7 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    sub_1E600DD44(*(v2 + 384), type metadata accessor for RouteDestination);
    v4 = sub_1E6009C0C;
  }

  else
  {
    v5 = *(v2 + 416);
    sub_1E600DD44(*(v2 + 384), type metadata accessor for RouteDestination);
    sub_1E600DD44(v5, type metadata accessor for NavigationControllerRoutingContext);
    v4 = sub_1E600947C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E600947C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[53];
  sub_1E600A068(v0[67], v0[68]);
  sub_1E5DFE50C(v4, &qword_1ED072A30, &qword_1E65EEA70);
  (*(v2 + 8))(v1, v3);
  v5 = v0[66];
  v7 = v0[62];
  v6 = v0[63];
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[55];
  v12 = v0[52];
  v11 = v0[53];
  v13 = v0[51];
  v14 = v0[48];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[24];
  v35 = v0[23];
  v36 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E60096AC()
{
  v2 = *(*v1 + 640);
  v5 = *v1;
  *(*v1 + 648) = v0;

  if (v0)
  {
    v3 = sub_1E60099E4;
  }

  else
  {
    v3 = sub_1E60097C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E60097C0()
{
  v1 = v0[79];
  v2 = v0[39];
  v3 = v0[33];
  v4 = v0[34];
  sub_1E600DD44(v0[32], type metadata accessor for RouteSource);
  v1(v2, v3);
  v5 = v0[66];
  v7 = v0[62];
  v6 = v0[63];
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[55];
  v12 = v0[52];
  v11 = v0[53];
  v13 = v0[51];
  v14 = v0[48];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[24];
  v35 = v0[23];
  v36 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E60099E4()
{
  v1 = v0[79];
  v2 = v0[39];
  v3 = v0[33];
  v4 = v0[34];
  sub_1E600DD44(v0[32], type metadata accessor for RouteSource);
  v1(v2, v3);
  v37 = v0[81];
  v5 = v0[66];
  v7 = v0[62];
  v6 = v0[63];
  v8 = v0[61];
  v9 = v0[58];
  v10 = v0[55];
  v11 = v0[52];
  v12 = v0[53];
  v13 = v0[51];
  v14 = v0[48];
  v17 = v0[46];
  v18 = v0[45];
  v19 = v0[44];
  v20 = v0[41];
  v21 = v0[40];
  v22 = v0[39];
  v23 = v0[38];
  v24 = v0[37];
  v25 = v0[36];
  v26 = v0[35];
  v27 = v0[32];
  v28 = v0[31];
  v29 = v0[30];
  v30 = v0[29];
  v31 = v0[28];
  v32 = v0[26];
  v33 = v0[25];
  v34 = v0[24];
  v35 = v0[23];
  v36 = v0[21];

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E6009C0C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[52];
  v4 = v0[53];
  sub_1E600A068(v0[67], v0[68]);
  sub_1E5DFE50C(v4, &qword_1ED072A30, &qword_1E65EEA70);
  (*(v2 + 8))(v1, v3);
  sub_1E600DD44(v5, type metadata accessor for NavigationControllerRoutingContext);
  v38 = v0[78];
  v6 = v0[66];
  v8 = v0[62];
  v7 = v0[63];
  v9 = v0[61];
  v10 = v0[58];
  v11 = v0[55];
  v12 = v0[52];
  v13 = v0[53];
  v14 = v0[51];
  v15 = v0[48];
  v18 = v0[46];
  v19 = v0[45];
  v20 = v0[44];
  v21 = v0[41];
  v22 = v0[40];
  v23 = v0[39];
  v24 = v0[38];
  v25 = v0[37];
  v26 = v0[36];
  v27 = v0[35];
  v28 = v0[32];
  v29 = v0[31];
  v30 = v0[30];
  v31 = v0[29];
  v32 = v0[28];
  v33 = v0[26];
  v34 = v0[25];
  v35 = v0[24];
  v36 = v0[23];
  v37 = v0[21];

  v16 = v0[1];

  return v16();
}

uint64_t sub_1E6009E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1E6009ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B280, &unk_1E660AAC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E600A014(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E600A068(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1E600A0F0(uint64_t a1)
{
  v2 = sub_1E65E1D38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C60, MEMORY[0x1E699EFD8]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F0BE0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600A28C(uint64_t a1)
{
  v2 = sub_1E65DA078();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C68, MEMORY[0x1E69CCB30]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F0EC0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600A428(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
  v4 = sub_1E600DDA4();
  result = MEMORY[0x1E694DC60](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_1E5F8710C(v9, v8, *v6);
      sub_1E60F149C(v10, v9, v8, v7);
      sub_1E5FEE4CC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_1E600A4E8(uint64_t a1)
{
  v2 = sub_1E65DA2D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C58, MEMORY[0x1E69CCC28]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F11BC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600A6B8(uint64_t a1)
{
  v2 = sub_1E65D9758();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BF8, MEMORY[0x1E69CC2A8]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1E600E0EC(v13, v7, MEMORY[0x1E69CC2A8]);
      sub_1E60F16DC(v9, v7);
      sub_1E600DD44(v9, MEMORY[0x1E69CC2A8]);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1E600A878(uint64_t a1)
{
  v2 = type metadata accessor for ItemContext();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1EE2DB730, type metadata accessor for ItemContext);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v16 = result;
  if (v10)
  {
    v13 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v14 = *(v3 + 72);
    do
    {
      sub_1E600E0EC(v13, v7, type metadata accessor for ItemContext);
      sub_1E60F201C(v9, v7);
      sub_1E600DD44(v9, type metadata accessor for ItemContext);
      v13 += v14;
      --v10;
    }

    while (v10);
    return v16;
  }

  return result;
}

uint64_t sub_1E600AA08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E60F225C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E600AAA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600DEF8();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CC5A8], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      sub_1E600DF4C(v8, v7, *v5);
      sub_1E60F23AC(v9, v8, v7, v6);
      sub_1E600DF5C(v9[0], v9[1], v10);
      v5 += 24;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600AB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5FED46C(&qword_1ED072C80, &qword_1ED072C78, &qword_1E65EC628);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v7, v16, v2);
      sub_1E60F2570(v9, v7);
      (*(v14 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600AD24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5FED46C(&qword_1EE2D65D8, &qword_1ED072C70, &qword_1E65EC620);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v14 = v3 + 16;
    v13 = v15;
    v16 = a1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
    v17 = *(v14 + 56);
    do
    {
      v13(v7, v16, v2);
      sub_1E60F2854(v9, v7);
      (*(v14 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600AEC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072080, &qword_1E65EA768);
  v4 = sub_1E600AF84();
  result = MEMORY[0x1E694DC60](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;
      sub_1E600B008(v8, v7, v9);
      sub_1E60F2B38(v10, v8, v7, v9);
      sub_1E600B034(v10[0], v10[1], v11);
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_1E600AF84()
{
  result = qword_1ED072B78;
  if (!qword_1ED072B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072080, &qword_1E65EA768);
    sub_1E5DF46C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072B78);
  }

  return result;
}

uint64_t sub_1E600B008(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E600B01C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E600B01C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1E600B034(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E6001C2C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E600B07C(uint64_t a1)
{
  v2 = sub_1E65E2D18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C40, MEMORY[0x1E699F5F0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F4198(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600B218(uint64_t a1)
{
  v2 = sub_1E65E2C78();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C38, MEMORY[0x1E699F5B0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F3EB8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600B3B4(uint64_t a1)
{
  v2 = sub_1E65E2D38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C30, MEMORY[0x1E699F608]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F3BD8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600B550(uint64_t a1)
{
  v2 = sub_1E65E2A88();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C28, MEMORY[0x1E699F520]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F38F8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600B6EC(uint64_t a1)
{
  v2 = sub_1E65E2698();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C20, MEMORY[0x1E699F3C0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F3618(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600B888(uint64_t a1)
{
  v2 = sub_1E65E26B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C18, MEMORY[0x1E699F3D8]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F3338(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600BA24(uint64_t a1)
{
  v2 = sub_1E65E2B48();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C10, MEMORY[0x1E699F550]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F3058(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600BBC0(uint64_t a1)
{
  v2 = sub_1E65E2BF8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C08, MEMORY[0x1E699F598]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F2D78(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600BD90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600E068();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CC3D8], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E600E0BC(v7, v6, v8);
      sub_1E60F4AF8(v9, v7, v6, v8);
      sub_1E600E0D4(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600BE38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600C604();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CCA30], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E600C658(v7, v6, v8);
      sub_1E60F4928(v9, v7, v6, v8);
      sub_1E600C670(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600BEE0(uint64_t a1)
{
  v2 = sub_1E65D8258();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072CC0, MEMORY[0x1E69CB2E0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F4CC8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600C0B0(uint64_t a1)
{
  v2 = sub_1E65DA6C8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C50, MEMORY[0x1E69CCF28]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F55F0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600C27C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v26 - v16;
  v18 = *(a1 + 16);
  v19 = sub_1E5FED46C(a4, a2, a3);
  result = MEMORY[0x1E694DC60](v18, v10, v19);
  v27 = result;
  if (v18)
  {
    v21 = v11 + 16;
    v26 = *(v11 + 16);
    v22 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v23 = *(v11 + 72);
    v24 = a5;
    v25 = (v21 - 8);
    do
    {
      v26(v15, v22, v10);
      v24(v17, v15);
      (*v25)(v17, v10);
      v22 += v23;
      --v18;
    }

    while (v18);
    return v27;
  }

  return result;
}

uint64_t sub_1E600C468(uint64_t a1)
{
  v2 = sub_1E65D9B08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1EE2D7040, MEMORY[0x1E69CC6C0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F5CD0(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_1E600C604()
{
  result = qword_1EE2D6FF8;
  if (!qword_1EE2D6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6FF8);
  }

  return result;
}

uint64_t sub_1E600C658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1E600C670(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1E600C6BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600E1BC();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E699F540], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E5E53D04(v7, v6, v8);
      sub_1E60F5FB0(v9, v7, v6, v8);
      sub_1E5E53D1C(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600C764(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600C80C();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CD128], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E5E53D04(v7, v6, v8);
      sub_1E60F6180(v9, v7, v6, v8);
      sub_1E5E53D1C(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_1E600C80C()
{
  result = qword_1ED072B80;
  if (!qword_1ED072B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072B80);
  }

  return result;
}

unint64_t sub_1E600C860()
{
  result = qword_1EE2D68A0;
  if (!qword_1EE2D68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68A0);
  }

  return result;
}

uint64_t sub_1E600C8B4(uint64_t a1)
{
  v2 = sub_1E65D76F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1EE2D71A8, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F1A58(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_1E600CA80()
{
  result = qword_1ED072B98;
  if (!qword_1ED072B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072B98);
  }

  return result;
}

unint64_t sub_1E600CAD4()
{
  result = qword_1EE2D65C8;
  if (!qword_1EE2D65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D65C8);
  }

  return result;
}

uint64_t sub_1E600CB28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600CB9C();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E699D6E8], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1E60F67BC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1E600CB9C()
{
  result = qword_1ED072BA0;
  if (!qword_1ED072BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072BA0);
  }

  return result;
}

uint64_t sub_1E600CC58(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1E694DC60](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1E600CCD8(uint64_t a1)
{
  v2 = sub_1E65E33F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072C90, MEMORY[0x1E699EC38]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F694C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600CE74(uint64_t a1)
{
  v2 = sub_1E65E1088();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BF0, MEMORY[0x1E699E030]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F832C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600D010(uint64_t a1)
{
  v2 = sub_1E65E0D28();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BE8, MEMORY[0x1E699DE78]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F804C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600D1AC(uint64_t a1)
{
  v2 = sub_1E65E0FD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BE0, MEMORY[0x1E699DFB0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F7D6C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600D348(uint64_t a1)
{
  v2 = sub_1E65E10D8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BD8, MEMORY[0x1E699E070]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F7A8C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600D4E4(uint64_t a1)
{
  v2 = sub_1E65E0E08();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BD0, MEMORY[0x1E699DEE8]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F77AC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600D680(uint64_t a1)
{
  v2 = sub_1E65E1038();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BC0, MEMORY[0x1E699DFF0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F74CC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600D81C(uint64_t a1)
{
  v2 = sub_1E65E0BC8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BB8, MEMORY[0x1E699DD90]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F71EC(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600D9B8(uint64_t a1)
{
  v2 = sub_1E65E0C18();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BB0, MEMORY[0x1E699DDD0]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F6F0C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_1E600DB54(uint64_t a1)
{
  v2 = sub_1E65E0F68();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_1E5DFA4D4(&qword_1ED072BA8, MEMORY[0x1E699DF68]);
  result = MEMORY[0x1E694DC60](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_1E60F6C2C(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

unint64_t sub_1E600DCF0()
{
  result = qword_1ED072BC8;
  if (!qword_1ED072BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072BC8);
  }

  return result;
}

uint64_t sub_1E600DD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E600DDA4()
{
  result = qword_1ED072C00;
  if (!qword_1ED072C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E5FC7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C00);
  }

  return result;
}

uint64_t sub_1E600DE30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1E60F892C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1E600DEA4()
{
  result = qword_1ED072C48;
  if (!qword_1ED072C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C48);
  }

  return result;
}

unint64_t sub_1E600DEF8()
{
  result = qword_1ED072C88;
  if (!qword_1ED072C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C88);
  }

  return result;
}

uint64_t sub_1E600DF4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E600DF5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E600DF6C()
{
  result = qword_1ED072C98;
  if (!qword_1ED072C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C98);
  }

  return result;
}

unint64_t sub_1E600DFC0()
{
  result = qword_1ED072CB0;
  if (!qword_1ED072CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CB0);
  }

  return result;
}

unint64_t sub_1E600E014()
{
  result = qword_1EE2D6788;
  if (!qword_1EE2D6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6788);
  }

  return result;
}

unint64_t sub_1E600E068()
{
  result = qword_1ED072CB8;
  if (!qword_1ED072CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CB8);
  }

  return result;
}

uint64_t sub_1E600E0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1E600E0D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1E600E0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E600E154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E600E1BC()
{
  result = qword_1ED072CC8;
  if (!qword_1ED072CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CC8);
  }

  return result;
}

uint64_t sub_1E600E214()
{
  v1 = 0x7263736275736E75;
  if (*v0 != 1)
  {
    v1 = 0x6269726373627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1E600E27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E600EA4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E600E2B0(uint64_t a1)
{
  v2 = sub_1E600E88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E2EC(uint64_t a1)
{
  v2 = sub_1E600E88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E600E334(uint64_t a1)
{
  v2 = sub_1E600E8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E370(uint64_t a1)
{
  v2 = sub_1E600E8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E600E3AC(uint64_t a1)
{
  v2 = sub_1E600E988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E3E8(uint64_t a1)
{
  v2 = sub_1E600E988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E600E424(uint64_t a1)
{
  v2 = sub_1E600E934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E460(uint64_t a1)
{
  v2 = sub_1E600E934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppSubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](a1);
  return sub_1E65E6D78();
}

uint64_t AppSubscriptionState.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CD0, &qword_1E65EC640);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CD8, &qword_1E65EC648);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CE0, &qword_1E65EC650);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CE8, &qword_1E65EC658);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E600E88C();
  sub_1E65E6DA8();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1E600E934();
      sub_1E65E6B18();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1E600E8E0();
      v21 = v27;
      sub_1E65E6B18();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1E600E988();
    sub_1E65E6B18();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

unint64_t sub_1E600E88C()
{
  result = qword_1ED072CF0;
  if (!qword_1ED072CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CF0);
  }

  return result;
}

unint64_t sub_1E600E8E0()
{
  result = qword_1ED072CF8;
  if (!qword_1ED072CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CF8);
  }

  return result;
}

unint64_t sub_1E600E934()
{
  result = qword_1ED072D00;
  if (!qword_1ED072D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D00);
  }

  return result;
}

unint64_t sub_1E600E988()
{
  result = qword_1ED072D08;
  if (!qword_1ED072D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D08);
  }

  return result;
}

uint64_t sub_1E600E9F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E600EB70(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1E600EA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E600EB70(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D58, &qword_1E65ECA80);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D60, &qword_1E65ECA88);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D68, &qword_1E65ECA90);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D70, &qword_1E65ECA98);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1E600E88C();
  v18 = v39;
  sub_1E65E6D98();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = sub_1E65E6AF8();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_1E5FBE3E4();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1E600E934();
          sub_1E65E6A68();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v40);
          return v12;
        }

        v45 = 2;
        sub_1E600E8E0();
        v29 = v15;
        sub_1E65E6A68();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1E600E988();
        v29 = v15;
        sub_1E65E6A68();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = sub_1E65E68F8();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v27 = &type metadata for AppSubscriptionState;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v40);
  return v12;
}

uint64_t getEnumTagSinglePayload for ToastActionPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToastActionPriority(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E600F278()
{
  result = qword_1ED072D10;
  if (!qword_1ED072D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D10);
  }

  return result;
}

unint64_t sub_1E600F2D0()
{
  result = qword_1ED072D18;
  if (!qword_1ED072D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D18);
  }

  return result;
}

unint64_t sub_1E600F328()
{
  result = qword_1ED072D20;
  if (!qword_1ED072D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D20);
  }

  return result;
}

unint64_t sub_1E600F380()
{
  result = qword_1ED072D28;
  if (!qword_1ED072D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D28);
  }

  return result;
}

unint64_t sub_1E600F3D8()
{
  result = qword_1ED072D30;
  if (!qword_1ED072D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D30);
  }

  return result;
}

unint64_t sub_1E600F430()
{
  result = qword_1ED072D38;
  if (!qword_1ED072D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D38);
  }

  return result;
}

unint64_t sub_1E600F488()
{
  result = qword_1ED072D40;
  if (!qword_1ED072D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D40);
  }

  return result;
}

unint64_t sub_1E600F4E0()
{
  result = qword_1ED072D48;
  if (!qword_1ED072D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D48);
  }

  return result;
}

unint64_t sub_1E600F538()
{
  result = qword_1ED072D50;
  if (!qword_1ED072D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D50);
  }

  return result;
}

uint64_t sub_1E600F5B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v45 = a3;
  v46 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D78, &qword_1E65ECAA0);
  v49 = *(v8 - 8);
  v50 = v8;
  v9 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v42 - v10;
  v11 = type metadata accessor for AppComposer();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65E2348();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = sub_1E65E2308();
  v48 = *(v51 - 8);
  v17 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v44 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *a1;
  sub_1E5DF650C(a2, v53);
  v19 = swift_allocObject();
  sub_1E5DF599C(v53, v19 + 16);
  v20 = a1;
  sub_1E5E1DEAC(a1, v14);
  v21 = *(v12 + 80);
  v22 = (v21 + 16) & ~v21;
  v43 = v22 + v13;
  v23 = swift_allocObject();
  sub_1E5E1FA80(v14, v23 + v22);
  sub_1E65E2338();
  sub_1E65E22F8();
  sub_1E5E1DEAC(v20, v14);
  v24 = swift_allocObject();
  v25 = v46;
  *(v24 + 16) = v45;
  *(v24 + 24) = v25;
  sub_1E5E1FA80(v14, v24 + ((v21 + 32) & ~v21));
  type metadata accessor for AppFeature();
  sub_1E6010A40(&qword_1EE2DBD90, type metadata accessor for AppFeature);
  v45 = sub_1E6010A40(&qword_1EE2D6260, MEMORY[0x1E699F268]);

  sub_1E65E4DE8();
  sub_1E5E1DEAC(v20, v14);
  v26 = *a5;
  v27 = a5[3];
  v28 = a5[5];
  v29 = a5[7];
  v30 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = a5[9];
  v32 = swift_allocObject();
  sub_1E5E1FA80(v14, v32 + v22);
  v33 = (v32 + v30);
  v34 = *(a5 + 3);
  v33[2] = *(a5 + 2);
  v33[3] = v34;
  v33[4] = *(a5 + 4);
  v35 = *(a5 + 1);
  *v33 = *a5;
  v33[1] = v35;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1E6010D94;
  *(v36 + 24) = v32;

  v37 = v44;
  v39 = v51;
  v38 = v52;
  v40 = sub_1E65E4F08();

  (*(v49 + 8))(v38, v50);
  (*(v48 + 8))(v37, v39);
  return v40;
}

uint64_t sub_1E600FAD4(uint64_t a1)
{
  v1[4] = a1;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0) - 8) + 64) + 15;
  v1[5] = swift_task_alloc();
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490) - 8) + 64) + 15;
  v1[6] = swift_task_alloc();
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0) - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination();
  v1[8] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E600FC10, 0, 0);
}

uint64_t sub_1E600FC10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v23 = v3;
  v24 = v1;
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v22 = v6;
  v25 = v5[3];
  v26 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v25);
  v7 = sub_1E65D76F8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = sub_1E65E2CF8();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = sub_1E65E1FC8();
  (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
  v10 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  v11 = *(v1 + 20);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v13 = (v2 + v12[12]);
  v14 = v12[16];
  v15 = v12[20];
  v16 = v12[24];
  v17 = v12[28];
  v18 = v2 + v12[32];
  sub_1E5DFD1CC(v4, v2, &unk_1ED077760, &unk_1E66011D0);
  *v13 = 0;
  v13[1] = 0;
  sub_1E5DFD1CC(v23, v2 + v14, &qword_1ED072B60, &unk_1E65FA490);
  *(v2 + v15) = v10;
  sub_1E5DFD1CC(v22, v2 + v16, &unk_1ED077750, &unk_1E66011C0);
  *(v2 + v17) = 0;
  *v18 = 0;
  *(v18 + 8) = 1;
  type metadata accessor for RouteResource();
  swift_storeEnumTagMultiPayload();
  sub_1E5DFE50C(v22, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v23, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v4, &unk_1ED077760, &unk_1E66011D0);
  *(v2 + *(v24 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v19 = swift_task_alloc();
  *(v0 + 80) = v19;
  *v19 = v0;
  v19[1] = sub_1E600FF10;
  v20 = *(v0 + 72);

  return RoutingContext.presentDestination(_:style:priority:)(v20, (v0 + 16), (v0 + 25), v25, v26);
}

uint64_t sub_1E600FF10()
{
  v2 = *(*v1 + 80);
  v3 = *(*v1 + 72);
  v4 = *v1;
  v4[11] = v0;

  sub_1E60111F8(v3);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6010098, 0, 0);
  }

  else
  {
    v5 = v4[9];
    v7 = v4[6];
    v6 = v4[7];
    v8 = v4[5];

    v9 = v4[1];

    return v9();
  }
}

uint64_t sub_1E6010098()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[5];

  v5 = v0[1];
  v6 = v0[11];

  return v5();
}

uint64_t sub_1E6010124()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E600FAD4(v0 + 16);
}

uint64_t sub_1E60101D8()
{
  v1 = v0[2];
  v2 = v1 + *(type metadata accessor for AppComposer() + 20);
  v3 = v2 + *(type metadata accessor for AppEnvironment() + 100);
  v4 = RemoteBrowsingService.showWorkoutPlanCreationPrompt.getter();
  v0[3] = v5;
  v9 = (v4 + *v4);
  v6 = v4[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_1E60102EC;

  return v9();
}

uint64_t sub_1E60102EC()
{
  v2 = *(*v1 + 32);
  v5 = *v1;
  *(*v1 + 40) = v0;

  if (v0)
  {
    v3 = sub_1E5F9D2C8;
  }

  else
  {
    v3 = sub_1E5F9D5CC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6010400()
{
  v2 = *(type metadata accessor for AppComposer() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60101B8(v0 + v3);
}

uint64_t sub_1E60104CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40[1] = a2;
  v41 = a4;
  v42 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v40 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v40 - v13;
  v15 = sub_1E65D7848();
  v40[0] = *(v15 - 8);
  v16 = *(v40[0] + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E23A8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = v40 - v25;
  if (a3)
  {
    v27 = a1 + *(type metadata accessor for AppState() + 108);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    (*(v20 + 16))(v24, v27 + *(v28 + 28), v19);
    v29 = *(v41 + *(type metadata accessor for AppComposer() + 20) + 8);

    sub_1E65DAE38();
    sub_1E65DAE38();
    return sub_1E65E22A8();
  }

  else
  {
    v31 = type metadata accessor for AppState();
    v32 = a1 + *(v31 + 108);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    (*(v20 + 16))(v26, v32 + *(v33 + 28), v19);
    v34 = *(v31 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v14);
    sub_1E5DFE50C(v10, &qword_1ED071F78, &unk_1E65EA3F0);
    v35 = v40[0];
    v36 = *(v40[0] + 48);
    if (v36(v14, 1, v15) == 1)
    {
      sub_1E65D77C8();
      v37 = v36(v14, 1, v15);
      v38 = v41;
      if (v37 != 1)
      {
        sub_1E5DFE50C(v14, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v35 + 32))(v18, v14, v15);
      v38 = v41;
    }

    v39 = *(v38 + *(type metadata accessor for AppComposer() + 20) + 8);
    sub_1E65DAE38();
    sub_1E65DAE38();
    return sub_1E65E22B8();
  }
}

uint64_t sub_1E60108C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E60104CC(a1, v6, v7, v8, a2);
}

uint64_t sub_1E6010944(uint64_t a1)
{
  v2 = sub_1E65E23A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E22C8();
  v7 = a1 + *(type metadata accessor for AppState() + 108);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  return (*(v3 + 40))(v7 + *(v8 + 28), v6, v2);
}

uint64_t sub_1E6010A40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6010A88(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v7 = type metadata accessor for AppComposer();
  v33 = *(v7 - 8);
  v8 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E22E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v28 - v16;
  v29 = *a1;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  (*(v11 + 16))(v13, a2, v10);
  sub_1E5E1DEAC(v34, v9);
  v28[1] = *a4;
  v19 = *(a4 + 40);
  v30 = *(a4 + 24);
  v31 = v19;
  v32 = *(a4 + 56);
  v34 = *(a4 + 72);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = (v12 + *(v33 + 80) + v20) & ~*(v33 + 80);
  v22 = (v8 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  *(v23 + 32) = v29;
  (*(v11 + 32))(v23 + v20, v13, v10);
  sub_1E5E1FA80(v9, v23 + v21);
  v24 = (v23 + v22);
  v25 = *(a4 + 48);
  v24[2] = *(a4 + 32);
  v24[3] = v25;
  v24[4] = *(a4 + 64);
  v26 = *(a4 + 16);
  *v24 = *a4;
  v24[1] = v26;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v17, &unk_1E65ECAC8, v23);
}

uint64_t sub_1E6010D94(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return sub_1E6010A88(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E6010E40(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v7 = *a1;
  return v4(&v7, a3);
}

uint64_t sub_1E6010E80(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E22E8() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E5DFA78C;

  return sub_1E62FC388(a1, v11, v12, v13, v1 + v6, v1 + v9, v1 + v10);
}

unint64_t sub_1E601100C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D80, &qword_1E65ECAD0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D88, &qword_1E65ECAD8);
    v8 = sub_1E65E6A28();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v10, v6, &qword_1ED072D80, &qword_1E65ECAD0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1E6215038(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1E65E2A38();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1E60111F8(uint64_t a1)
{
  v2 = type metadata accessor for RouteDestination();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SeymourAchievementProgress.transformed()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 32);
  if (v6)
  {
    v7 = 0;
    result = v3 & 1;
  }

  else
  {
    v7 = v1[3];
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6 & 1;
  return result;
}

uint64_t sub_1E60112B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v139 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v130 = v112 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D98, &qword_1E65ECAE8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v112 - v11;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DA0, &qword_1E65ECAF0);
  v13 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v135 = (v112 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DA8, &qword_1E65ECAF8);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v136 = v112 - v17;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DB0, &qword_1E65ECB00);
  v18 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v128 = v112 - v19;
  v20 = sub_1E65E4188();
  v118 = *(v20 - 8);
  v119 = v20;
  v21 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v117 = v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DB8, &qword_1E65ECB08);
  v115 = *(v23 - 8);
  v116 = v23;
  v24 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v114 = v112 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DC0, &qword_1E65ECB10);
  v121 = *(v26 - 8);
  v122 = v26;
  v27 = *(v121 + 64);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v120 = v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v124 = v112 - v30;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DC8, &qword_1E65ECB18);
  v31 = *(*(v125 - 8) + 64);
  MEMORY[0x1EEE9AC00](v125);
  v129 = (v112 - v32);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DD0, &qword_1E65ECB20);
  v33 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v127 = v112 - v34;
  *&v138 = sub_1E65D72D8();
  *&v137 = *(v138 - 8);
  v35 = *(v137 + 64);
  v36 = MEMORY[0x1EEE9AC00](v138);
  v38 = v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v132 = v112 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v131 = v112 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = v112 - v44;
  sub_1E5DFD1CC(a1, v112 - v44, &qword_1ED072640, &qword_1E65EB958);
  v46 = type metadata accessor for SectionHeaderSubtitleDescriptor();
  if ((*(*(v46 - 8) + 48))(v45, 1, v46) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E60123A0();
    return sub_1E65E4138();
  }

  else
  {
    v112[2] = v15;
    v112[3] = v9;
    v113 = v12;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v48 = v130;
      sub_1E6012620(v45, v130);
      sub_1E5DFD1CC(v48, v7, &qword_1ED072D90, &qword_1E66040F0);
      v49 = v137;
      v50 = v138;
      if ((*(v137 + 48))(v7, 1, v138) == 1)
      {
        sub_1E5DFE50C(v7, &qword_1ED072D90, &qword_1E66040F0);
        v155 = 0u;
        v156[0] = 0u;
        LOBYTE(v156[1]) = 1;
        sub_1E65E4138();
      }

      else
      {
        (*(v49 + 32))(v38, v7, v50);
        *&v155 = sub_1E65D7238();
        *(&v155 + 1) = v93;
        *&v156[0] = v94 & 1;
        *(&v156[0] + 1) = v95;
        LOBYTE(v156[1]) = 0;
        sub_1E65E4138();
        (*(v49 + 8))(v38, v50);
      }

      v96 = *v158;
      v97 = v158[16];
      v137 = v157;
      v138 = *v158;
      v98 = v135;
      *v135 = v157;
      v98[1] = v96;
      *(v98 + 32) = v97;
      swift_storeEnumTagMultiPayload();
      v99 = v137;
      v100 = v138;
      sub_1E6012690(v137, *(&v137 + 1), v138, *(&v138 + 1), v97);
      sub_1E6012690(v99, *(&v99 + 1), v100, *(&v100 + 1), v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE8, &qword_1E65ECB38);
      sub_1E601242C();
      sub_1E601259C();
      v101 = v136;
      sub_1E65E4138();
      sub_1E5DFD1CC(v101, v113, &qword_1ED072DA8, &qword_1E65ECAF8);
      swift_storeEnumTagMultiPayload();
      sub_1E60123A0();
      sub_1E65E4138();
      sub_1E60126E4(v99, *(&v99 + 1), v100, *(&v100 + 1), v97);
      sub_1E60126E4(v99, *(&v99 + 1), v100, *(&v100 + 1), v97);
      sub_1E5DFE50C(v101, &qword_1ED072DA8, &qword_1E65ECAF8);
      return sub_1E5DFE50C(v130, &qword_1ED072D90, &qword_1E66040F0);
    }

    else
    {
      v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
      v52 = *(v137 + 32);
      v53 = v131;
      v54 = v138;
      v52(v131, v45, v138);
      v55 = v132;
      v52(v132, &v45[v51], v54);
      v56 = type metadata accessor for AppComposer();
      v57 = v123;
      if (*(v123 + *(v56 + 20) + 8) > 2u)
      {
        v102 = sub_1E65E3F68();
        LOBYTE(v155) = 0;
        sub_1E60127DC(v53, v55, &v157);
        *(&v160[3] + 7) = *&v158[32];
        *(&v160[2] + 7) = *&v158[16];
        *(&v160[1] + 7) = *v158;
        *(v160 + 7) = v157;
        v103 = v160[0];
        v104 = v128;
        *(v128 + 33) = v160[1];
        v105 = v160[3];
        *(v104 + 49) = v160[2];
        *(v104 + 65) = v105;
        v106 = v155;
        *v104 = v102;
        *(v104 + 1) = 0x4024000000000000;
        v104[16] = v106;
        *(v104 + 10) = *(&v160[3] + 15);
        *(v104 + 17) = v103;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE0, &qword_1E65ECB30);
        sub_1E60124E4();
        sub_1E5FED46C(&qword_1EE2D4B70, &qword_1ED072DE0, &qword_1E65ECB30);
        v92 = v127;
        sub_1E65E4138();
      }

      else
      {
        v58 = sub_1E65E4BA8();
        v59 = v129;
        *v129 = v58;
        v59[1] = v60;
        v61 = sub_1E65E43F8();
        MEMORY[0x1EEE9AC00](v61);
        v112[-2] = v53;
        v112[-1] = v55;
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE0, &qword_1E65ECB30);
        v63 = sub_1E5FED46C(&qword_1EE2D4B70, &qword_1ED072DE0, &qword_1E65ECB30);
        v64 = v114;
        v130 = v62;
        v112[1] = v63;
        sub_1E65E3C18();
        v65 = v117;
        sub_1E65E4168();
        v66 = sub_1E65E4418();
        sub_1E65E4408();
        sub_1E65E4408();
        if (sub_1E65E4408() != v66)
        {
          sub_1E65E4408();
        }

        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF8, &qword_1E65ECB40);
        v68 = v129 + *(v67 + 44);
        sub_1E5FED46C(&qword_1ED072E00, &qword_1ED072DB8, &qword_1E65ECB08);
        v69 = v124;
        v70 = v116;
        sub_1E65E48A8();
        (*(v118 + 8))(v65, v119);
        (*(v115 + 8))(v64, v70);
        v119 = sub_1E65E3F68();
        v141 = 1;
        sub_1E6012990(v57, &v157);
        v150 = *&v158[112];
        v151 = *&v158[128];
        v152 = *&v158[144];
        v153 = *&v158[160];
        v146 = *&v158[48];
        v147 = *&v158[64];
        v148 = *&v158[80];
        v149 = *&v158[96];
        v142 = v157;
        v143 = *v158;
        v144 = *&v158[16];
        v145 = *&v158[32];
        v154[8] = *&v158[112];
        v154[9] = *&v158[128];
        v154[10] = *&v158[144];
        v154[11] = *&v158[160];
        v154[4] = *&v158[48];
        v154[5] = *&v158[64];
        v154[6] = *&v158[80];
        v154[7] = *&v158[96];
        v154[0] = v157;
        v154[1] = *v158;
        v154[2] = *&v158[16];
        v154[3] = *&v158[32];
        sub_1E5DFD1CC(&v142, &v155, &qword_1ED072E08, &qword_1E65ECB48);
        sub_1E5DFE50C(v154, &qword_1ED072E08, &qword_1E65ECB48);
        *&v140[135] = v150;
        *&v140[151] = v151;
        *&v140[167] = v152;
        *&v140[183] = v153;
        *&v140[71] = v146;
        *&v140[87] = v147;
        *&v140[103] = v148;
        *&v140[119] = v149;
        *&v140[7] = v142;
        *&v140[23] = v143;
        *&v140[39] = v144;
        *&v140[55] = v145;
        v71 = v141;
        v72 = v120;
        v73 = v121;
        v74 = *(v121 + 16);
        v75 = v69;
        v76 = v122;
        v74(v120, v75, v122);
        v74(v68, v72, v76);
        v77 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E10, &qword_1E65ECB50) + 48);
        *(&v156[9] + 1) = *&v140[144];
        *(&v156[10] + 1) = *&v140[160];
        *(&v156[11] + 1) = *&v140[176];
        *(&v156[5] + 1) = *&v140[80];
        *(&v156[6] + 1) = *&v140[96];
        *(&v156[7] + 1) = *&v140[112];
        *(&v156[8] + 1) = *&v140[128];
        *(&v156[1] + 1) = *&v140[16];
        *(&v156[2] + 1) = *&v140[32];
        *(&v156[3] + 1) = *&v140[48];
        v78 = &v68[v77];
        v79 = v119;
        v155 = v119;
        LOBYTE(v156[0]) = v71;
        *&v156[12] = *&v140[191];
        *(&v156[4] + 1) = *&v140[64];
        *(v156 + 1) = *v140;
        v80 = v156[10];
        *(v78 + 10) = v156[9];
        *(v78 + 11) = v80;
        *(v78 + 12) = v156[11];
        *(v78 + 26) = *&v156[12];
        v81 = v156[6];
        *(v78 + 6) = v156[5];
        *(v78 + 7) = v81;
        v82 = v156[8];
        *(v78 + 8) = v156[7];
        *(v78 + 9) = v82;
        v83 = v156[2];
        *(v78 + 2) = v156[1];
        *(v78 + 3) = v83;
        v84 = v156[4];
        *(v78 + 4) = v156[3];
        *(v78 + 5) = v84;
        v85 = v156[0];
        *v78 = v155;
        *(v78 + 1) = v85;
        sub_1E5DFD1CC(&v155, &v157, &qword_1ED072E18, &qword_1E65ECB58);
        v86 = *(v73 + 8);
        v86(v124, v76);
        *&v158[145] = *&v140[144];
        *&v158[161] = *&v140[160];
        *v159 = *&v140[176];
        *&v158[81] = *&v140[80];
        *&v158[97] = *&v140[96];
        *&v158[113] = *&v140[112];
        *&v158[129] = *&v140[128];
        *&v158[17] = *&v140[16];
        *&v158[33] = *&v140[32];
        *&v158[49] = *&v140[48];
        *&v158[65] = *&v140[64];
        v157 = v79;
        v158[0] = v71;
        *&v159[15] = *&v140[191];
        *&v158[1] = *v140;
        sub_1E5DFE50C(&v157, &qword_1ED072E18, &qword_1E65ECB58);
        v86(v72, v76);
        v87 = sub_1E65E3DF8();
        v88 = sub_1E65E4428();
        v89 = v128;
        v90 = v129;
        v91 = v129 + *(v125 + 36);
        *v91 = v87;
        v91[8] = v88;
        sub_1E5DFD1CC(v90, v89, &qword_1ED072DC8, &qword_1E65ECB18);
        swift_storeEnumTagMultiPayload();
        sub_1E60124E4();
        v92 = v127;
        sub_1E65E4138();
        sub_1E5DFE50C(v90, &qword_1ED072DC8, &qword_1E65ECB18);
      }

      v107 = v113;
      sub_1E5DFD1CC(v92, v135, &qword_1ED072DD0, &qword_1E65ECB20);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE8, &qword_1E65ECB38);
      sub_1E601242C();
      sub_1E601259C();
      v108 = v92;
      v109 = v136;
      sub_1E65E4138();
      sub_1E5DFD1CC(v109, v107, &qword_1ED072DA8, &qword_1E65ECAF8);
      swift_storeEnumTagMultiPayload();
      sub_1E60123A0();
      sub_1E65E4138();
      sub_1E5DFE50C(v109, &qword_1ED072DA8, &qword_1E65ECAF8);
      sub_1E5DFE50C(v108, &qword_1ED072DD0, &qword_1E65ECB20);
      v110 = *(v137 + 8);
      v111 = v138;
      v110(v132, v138);
      return v110(v131, v111);
    }
  }
}

unint64_t sub_1E60123A0()
{
  result = qword_1EE2D4C80;
  if (!qword_1EE2D4C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DA8, &qword_1E65ECAF8);
    sub_1E601242C();
    sub_1E601259C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4C80);
  }

  return result;
}

unint64_t sub_1E601242C()
{
  result = qword_1EE2D4D28;
  if (!qword_1EE2D4D28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DD0, &qword_1E65ECB20);
    sub_1E60124E4();
    sub_1E5FED46C(&qword_1EE2D4B70, &qword_1ED072DE0, &qword_1E65ECB30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D28);
  }

  return result;
}

unint64_t sub_1E60124E4()
{
  result = qword_1EE2D4E50;
  if (!qword_1EE2D4E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DC8, &qword_1E65ECB18);
    sub_1E5FED46C(&qword_1EE2D4B60, &qword_1ED072DD8, &qword_1E65ECB28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E50);
  }

  return result;
}

unint64_t sub_1E601259C()
{
  result = qword_1EE2D4D08;
  if (!qword_1EE2D4D08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072DE8, &qword_1E65ECB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4D08);
  }

  return result;
}

uint64_t sub_1E6012620(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6012690(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1E60126D4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E60126D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E60126E4(uint64_t result, uint64_t a2, char a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    sub_1E6012728(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1E6012728(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

__n128 sub_1E6012738@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65E3F68();
  sub_1E60127DC(a1, a2, v9);
  *&v8[55] = v9[3];
  *&v8[39] = v9[2];
  *&v8[23] = v9[1];
  *&v8[7] = v9[0];
  *(a3 + 33) = *&v8[16];
  result = *&v8[32];
  *(a3 + 49) = *&v8[32];
  *(a3 + 65) = *&v8[48];
  *a3 = v6;
  *(a3 + 8) = 0x4024000000000000;
  *(a3 + 16) = 0;
  *(a3 + 80) = *&v8[63];
  *(a3 + 17) = *v8;
  return result;
}

uint64_t sub_1E60127DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65D72D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 16);
  v11(v10, a1, v6);
  v12 = sub_1E65E46A8();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v11(v10, a2, v6);
  v19 = sub_1E65E46A8();
  v21 = v20;
  v22 = v16 & 1;
  v28 = v16 & 1;
  v30 = v16 & 1;
  v24 = v23 & 1;
  v29 = v23 & 1;
  *a3 = v12;
  *(a3 + 8) = v14;
  *(a3 + 16) = v22;
  *(a3 + 24) = v18;
  *(a3 + 32) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v23 & 1;
  *(a3 + 56) = v25;
  sub_1E60126D4(v12, v14, v22);

  sub_1E60126D4(v19, v21, v24);

  sub_1E6012728(v19, v21, v24);

  sub_1E6012728(v12, v14, v28);
}

uint64_t sub_1E6012990@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a1;
  v37 = sub_1E65E07B8();
  v39 = *(v37 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - v8;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E20, &qword_1E65ECB60);
  v10 = swift_allocObject();
  v34 = xmmword_1E65EB9E0;
  *(v10 + 16) = xmmword_1E65EB9E0;
  v11 = objc_opt_self();
  v12 = [v11 systemBackgroundColor];
  sub_1E65E4968();
  v13 = sub_1E65E49B8();

  *(v10 + 32) = v13;
  *(v10 + 40) = sub_1E65E4998();
  MEMORY[0x1E694C510](v10);
  sub_1E65E4C28();
  sub_1E65E4C38();
  sub_1E65E3DA8();
  v36 = *v36;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0668();
  v14 = *(v38 + 8);
  v38 += 8;
  v33 = v14;
  v14(v9, v6);
  sub_1E65E0798();
  v15 = *(v39 + 8);
  v39 += 8;
  v15(v5, v37);
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v48 = v54;
  v49 = v55;
  *&v50 = v56;
  v16 = swift_allocObject();
  *(v16 + 16) = v34;
  v17 = [v11 systemBackgroundColor];
  sub_1E65E4968();
  v18 = sub_1E65E49B8();

  *(v16 + 32) = v18;
  *(v16 + 40) = sub_1E65E4998();
  MEMORY[0x1E694C510](v16);
  sub_1E65E4C38();
  sub_1E65E4C28();
  sub_1E65E3DA8();
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0668();
  v33(v9, v6);
  sub_1E65E07A8();
  v15(v5, v37);
  sub_1E65E4BA8();
  sub_1E65E3CF8();
  v42 = v57;
  v43 = v58;
  *&v44 = v59;
  v19 = v49;
  v20 = v50;
  v60[2] = v50;
  v60[3] = v51;
  v21 = v51;
  v60[4] = v52;
  v60[0] = v48;
  v60[1] = v49;
  v62[0] = v57;
  v62[1] = v58;
  v22 = v45;
  v62[4] = v46;
  v23 = v44;
  v62[2] = v44;
  v62[3] = v45;
  v25 = v57;
  v24 = v58;
  *(&v40[1] + 7) = v58;
  *(v40 + 7) = v57;
  *(&v40[4] + 7) = v46;
  *(&v40[3] + 7) = v45;
  *(&v40[2] + 7) = v44;
  *a2 = v48;
  *(a2 + 16) = v19;
  v26 = v52;
  *(a2 + 48) = v21;
  *(a2 + 64) = v26;
  v27 = v47;
  *(&v40[5] + 7) = v47;
  *(a2 + 32) = v20;
  v28 = v40[0];
  *(a2 + 113) = v40[1];
  *(a2 + 97) = v28;
  v29 = v40[4];
  *(a2 + 176) = *(&v40[4] + 15);
  *(a2 + 161) = v29;
  v30 = v40[2];
  *(a2 + 145) = v40[3];
  *(a2 + 129) = v30;
  v61 = v53;
  v41 = 1;
  v63 = v27;
  *(a2 + 80) = v53;
  *(a2 + 88) = 0;
  *(a2 + 96) = 1;
  v64[0] = v25;
  v64[1] = v24;
  v65 = v47;
  v64[3] = v22;
  v64[4] = v46;
  v64[2] = v23;
  sub_1E5DFD1CC(v60, v66, &qword_1ED072E28, &qword_1E65ECB88);
  sub_1E5DFD1CC(v62, v66, &qword_1ED072E28, &qword_1E65ECB88);
  sub_1E5DFE50C(v64, &qword_1ED072E28, &qword_1E65ECB88);
  v66[2] = v50;
  v66[3] = v51;
  v66[4] = v52;
  v67 = v53;
  v66[0] = v48;
  v66[1] = v49;
  return sub_1E5DFE50C(v66, &qword_1ED072E28, &qword_1E65ECB88);
}

uint64_t sub_1E6012F24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E38, &qword_1E65ECBF8);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_1E6012F9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E3DE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v16 - v11;
  MEMORY[0x1E694C310](v10, a1, &type metadata for SidebarPillDisabled, a2);
  v13 = sub_1E6013128();
  v16[0] = a2;
  v16[1] = v13;
  swift_getWitnessTable();
  sub_1E5FEE4C8(v9);
  v14 = *(v5 + 8);
  v14(v9, v4);
  sub_1E5FEE4C8(v12);
  return (v14)(v12, v4);
}

unint64_t sub_1E6013128()
{
  result = qword_1ED072E30;
  if (!qword_1ED072E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072E30);
  }

  return result;
}

unint64_t sub_1E60131A8()
{
  result = qword_1ED072E40;
  if (!qword_1ED072E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072E38, &qword_1E65ECBF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072E40);
  }

  return result;
}

uint64_t sub_1E601320C@<X0>(char *a1@<X8>)
{
  v2 = sub_1E65D8F28();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D9908();
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65D72D8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = sub_1E65D8C68();
  v11 = *(v49 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65DCED8();
  v45 = v16;
  v46 = v15;
  sub_1E65DCE68();
  v17 = sub_1E65DCCF8();
  v19 = v18;
  if (v17 == sub_1E65DCCF8() && v19 == v20)
  {

    v21 = MEMORY[0x1E69CBA28];
  }

  else
  {
    v22 = sub_1E65E6C18();

    v21 = MEMORY[0x1E69CBAA0];
    if (v22)
    {
      v21 = MEMORY[0x1E69CBA28];
    }
  }

  (*(v11 + 104))(v14, *v21, v49);
  sub_1E65DCF58();
  v23 = sub_1E65E5D58();
  v43 = v24;
  v44 = v23;
  v25 = sub_1E65DCE68();
  (*(v6 + 104))(v50, **(&unk_1E8797330 + v25), v51);
  sub_1E65DCE68();
  v26 = sub_1E65DCCF8();
  v28 = v27;
  if (v26 == sub_1E65DCCF8() && v28 == v29)
  {

    v30 = MEMORY[0x1E69CBC98];
  }

  else
  {
    v31 = sub_1E65E6C18();

    v30 = MEMORY[0x1E69CBC90];
    if (v31)
    {
      v30 = MEMORY[0x1E69CBC98];
    }
  }

  v33 = v47;
  v32 = v48;
  (*(v47 + 104))(v5, *v30, v48);
  v34 = type metadata accessor for ItemMetrics();
  v35 = v34[10];
  v36 = *MEMORY[0x1E69CCA80];
  v37 = sub_1E65D9F88();
  (*(*(v37 - 8) + 104))(&a1[v35], v36, v37);
  v38 = v45;
  *a1 = v46;
  *(a1 + 1) = v38;
  (*(v11 + 32))(&a1[v34[5]], v14, v49);
  v39 = &a1[v34[6]];
  v40 = v43;
  *v39 = v44;
  v39[1] = v40;
  (*(v6 + 32))(&a1[v34[7]], v50, v51);
  return (*(v33 + 32))(&a1[v34[8]], v5, v32);
}

uint64_t sub_1E6013678()
{
  v15 = sub_1E65D8F28();
  v0 = *(v15 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65DD238();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v5 = *(sub_1E65D86A8() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  if ((v4 & 1) == 0)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1E65EA670;
    sub_1E65DCDA8();
    v14 = v12;
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65DCDE8();
    sub_1E65DCE08();
    (*(v0 + 104))(v3, *MEMORY[0x1E69CBC88], v15);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    goto LABEL_5;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E65EB9E0;
  sub_1E65DD258();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v9 = *MEMORY[0x1E69CBCB0];
  v14 = *(v0 + 104);
  v14(v3, v9, v15);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E65DCDA8();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  result = sub_1E65DCDE8();
  if (!__OFADD__(result, 1))
  {
    v13[1] = result + 1;
    sub_1E65DCE08();
    v13[0] = v11;
    v14(v3, *MEMORY[0x1E69CBC88], v15);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
LABEL_5:
    sub_1E65D8678();
    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E60139B4()
{
  v0 = sub_1E65D8F28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  v5 = *(sub_1E65D86A8() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1E65EB9E0;
  sub_1E65DCB28();
  v10 = v9;
  v11 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v18 = v12;
  result = sub_1E65DCB78();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v16[0] = v10;
    v16[1] = v11;
    v16[2] = v8 + v7;
    sub_1E65DCB68();
    v16[3] = v6;
    v14 = *MEMORY[0x1E69CBCD0];
    v17 = v8;
    v15 = *(v1 + 104);
    v15(v4, v14, v0);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    sub_1E65DD248();
    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    sub_1E65DCB48();
    v15(v4, *MEMORY[0x1E69CBCB0], v0);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    sub_1E65D8678();
    return v17;
  }

  return result;
}

unint64_t sub_1E6013C48()
{
  v0 = sub_1E65DD218();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  if (v0 == 1)
  {
    *(inited + 16) = xmmword_1E65EA8E0;
    *(inited + 32) = 4;
    sub_1E65DD1F8();
    sub_1E65E6848();
    *(inited + 80) = 5;
    sub_1E65DD1E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E5FEE0FC();
    sub_1E65E6848();
    *(inited + 128) = 6;
  }

  else
  {
    *(inited + 16) = xmmword_1E65EB9E0;
    *(inited + 32) = 5;
    sub_1E65DD1E8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
    sub_1E5FEE0FC();
    sub_1E65E6848();
    *(inited + 80) = 6;
  }

  sub_1E65DD208();
  sub_1E65E6848();
  v2 = sub_1E6427784(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_1E6013E58@<X0>(uint64_t a1@<X8>)
{
  v36[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v36 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v36 - v15;
  v17 = sub_1E65DD288();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = v36 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v36 - v22;
  sub_1E65DCFB8();
  sub_1E65DD088();
  sub_1E65DD268();
  sub_1E6014B9C(v23, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v25 = MEMORY[0x1E69CBDA0];
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      v26 = *(v21 + 1);

      v27 = *(v21 + 3);

      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E48, &qword_1E65ECC00);
      sub_1E5DFE50C(&v21[*(v28 + 64)], &qword_1ED072E50, &qword_1E65ECC08);
    }

    else
    {
      sub_1E6014B40(v21);
    }

    v25 = MEMORY[0x1E69CBD38];
  }

  v29 = *v25;
  v30 = sub_1E65D8F38();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v16, v29, v30);
  (*(v31 + 56))(v16, 0, 1, v30);
  v32 = sub_1E65D74E8();
  (*(*(v32 - 8) + 56))(v12, 1, 1, v32);
  v33 = sub_1E65D9908();
  (*(*(v33 - 8) + 56))(v8, 1, 1, v33);
  v34 = sub_1E65D9F88();
  (*(*(v34 - 8) + 56))(v4, 1, 1, v34);

  sub_1E65D7A28();
  return sub_1E6014B40(v23);
}

unint64_t sub_1E6014274()
{
  v0 = sub_1E65DD288();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v17[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E65DCFB8();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = *v3;
      v7 = v3[1];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1E65EA670;
      *(inited + 32) = 6;
      v18 = v6;
      v19 = v7;
      sub_1E65E6848();
      v9 = sub_1E6427784(inited);
      swift_setDeallocating();
      sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
      return v9;
    }

    if (EnumCaseMultiPayload != 1)
    {
      v10 = *v3;
      v11 = v3[1];
      v12 = v3[2];
      v13 = v3[3];
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E48, &qword_1E65ECC00) + 64);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
      v15 = swift_initStackObject();
      *(v15 + 16) = xmmword_1E65EB9E0;
      *(v15 + 32) = 6;
      v18 = v10;
      v19 = v11;
      sub_1E65E6848();
      *(v15 + 80) = 5;
      v18 = v12;
      v19 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
      sub_1E5FEE0FC();
      sub_1E65E6848();
      v16 = sub_1E6427784(v15);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072988, &qword_1E65EC128);
      swift_arrayDestroy();
      sub_1E5DFE50C(v3 + v14, &qword_1ED072E50, &qword_1E65ECC08);
      return v16;
    }

    sub_1E6014B40(v3);
  }

  return sub_1E6427784(MEMORY[0x1E69E7CC0]);
}

uint64_t sub_1E60144DC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E65D72D8();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1E65D8C68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v73 - v10;
  sub_1E65DCF18();
  if (v12)
  {

    v74 = sub_1E65DCED8();
    v76 = v13;
    sub_1E65DCE68();
    v14 = sub_1E65DCCF8();
    v16 = v15;
    if (v14 == sub_1E65DCCF8() && v16 == v17)
    {

      v18 = MEMORY[0x1E69CBA28];
    }

    else
    {
      v26 = sub_1E65E6C18();

      v18 = MEMORY[0x1E69CBAA0];
      if (v26)
      {
        v18 = MEMORY[0x1E69CBA28];
      }
    }

    (*(v5 + 104))(v9, *v18, v4);
    sub_1E65DCF58();
    v75 = sub_1E65E5D58();
    v28 = v27;
    v29 = type metadata accessor for ItemMetrics();
    v30 = v29[7];
    v31 = **(&unk_1E8797330 + sub_1E65DCE68());
    v32 = sub_1E65D9908();
    (*(*(v32 - 8) + 104))(a1 + v30, v31, v32);
    v33 = a1 + v29[8];
    v34 = sub_1E65DCE68();
    v35 = MEMORY[0x1E69CCA78];
    if (v34 <= 3)
    {
      v44 = MEMORY[0x1E69CBCA8];
      v45 = MEMORY[0x1E69CCA78];
      v46 = MEMORY[0x1E69CBC98];
      if (v34 != 2)
      {
        v46 = MEMORY[0x1E69CBCD8];
        v45 = MEMORY[0x1E69CCA78];
      }

      if (v34)
      {
        v44 = MEMORY[0x1E69CBC90];
        v35 = MEMORY[0x1E69CCA78];
      }

      v47 = v34 <= 1;
      if (v34 <= 1)
      {
        v42 = v44;
      }

      else
      {
        v42 = v46;
      }

      if (v47)
      {
        v43 = v35;
      }

      else
      {
        v43 = v45;
      }
    }

    else
    {
      v36 = MEMORY[0x1E69CBCD8];
      v37 = MEMORY[0x1E69CCA78];
      v38 = MEMORY[0x1E69CBCC0];
      if (v34 != 7)
      {
        v38 = MEMORY[0x1E69CBCD8];
        v37 = MEMORY[0x1E69CCA78];
      }

      if (v34 != 6)
      {
        v36 = v38;
        v35 = v37;
      }

      v39 = MEMORY[0x1E69CCA78];
      v40 = MEMORY[0x1E69CBCD8];
      if (v34 != 4)
      {
        v40 = MEMORY[0x1E69CBCD8];
        v39 = MEMORY[0x1E69CCA78];
      }

      v41 = v34 <= 5;
      if (v34 <= 5)
      {
        v42 = v40;
      }

      else
      {
        v42 = v36;
      }

      if (v41)
      {
        v43 = v39;
      }

      else
      {
        v43 = v35;
      }
    }

    v11 = v9;
    v19 = v74;
  }

  else
  {
    v19 = sub_1E65DCED8();
    v76 = v20;
    sub_1E65DCE68();
    v21 = sub_1E65DCCF8();
    v23 = v22;
    if (v21 == sub_1E65DCCF8() && v23 == v24)
    {

      v25 = MEMORY[0x1E69CBA28];
    }

    else
    {
      v48 = sub_1E65E6C18();

      v25 = MEMORY[0x1E69CBAA0];
      if (v48)
      {
        v25 = MEMORY[0x1E69CBA28];
      }
    }

    (*(v5 + 104))(v11, *v25, v4);
    sub_1E65DCF58();
    v75 = sub_1E65E5D58();
    v28 = v49;
    v29 = type metadata accessor for ItemMetrics();
    v50 = v29[7];
    v51 = **(&unk_1E8797330 + sub_1E65DCE68());
    v52 = sub_1E65D9908();
    (*(*(v52 - 8) + 104))(a1 + v50, v51, v52);
    v33 = a1 + v29[8];
    v53 = sub_1E65DCE68();
    v54 = MEMORY[0x1E69CCA80];
    if (v53 <= 3)
    {
      v61 = MEMORY[0x1E69CBCA8];
      v62 = MEMORY[0x1E69CCA80];
      v63 = MEMORY[0x1E69CBC98];
      if (v53 != 2)
      {
        v63 = MEMORY[0x1E69CBCD8];
        v62 = MEMORY[0x1E69CCA80];
      }

      if (v53)
      {
        v61 = MEMORY[0x1E69CBC90];
        v54 = MEMORY[0x1E69CCA80];
      }

      v64 = v53 <= 1;
      if (v53 <= 1)
      {
        v42 = v61;
      }

      else
      {
        v42 = v63;
      }

      if (v64)
      {
        v43 = v54;
      }

      else
      {
        v43 = v62;
      }
    }

    else
    {
      v55 = MEMORY[0x1E69CBCD8];
      v56 = MEMORY[0x1E69CCA80];
      v57 = MEMORY[0x1E69CBCC0];
      if (v53 != 7)
      {
        v57 = MEMORY[0x1E69CBCD8];
        v56 = MEMORY[0x1E69CCA80];
      }

      if (v53 != 6)
      {
        v55 = v57;
        v54 = v56;
      }

      v58 = MEMORY[0x1E69CCA80];
      v59 = MEMORY[0x1E69CBCD8];
      if (v53 != 4)
      {
        v59 = MEMORY[0x1E69CBCD8];
        v58 = MEMORY[0x1E69CCA80];
      }

      v60 = v53 <= 5;
      if (v53 <= 5)
      {
        v42 = v59;
      }

      else
      {
        v42 = v55;
      }

      if (v60)
      {
        v43 = v58;
      }

      else
      {
        v43 = v54;
      }
    }
  }

  v65 = *v42;
  v66 = sub_1E65D8F28();
  (*(*(v66 - 8) + 104))(v33, v65, v66);
  v67 = v29[10];
  v68 = *v43;
  v69 = sub_1E65D9F88();
  (*(*(v69 - 8) + 104))(a1 + v67, v68, v69);
  v70 = v76;
  *a1 = v19;
  a1[1] = v70;
  (*(v5 + 32))(a1 + v29[5], v11, v4);
  v71 = (a1 + v29[6]);
  *v71 = v75;
  v71[1] = v28;
  type metadata accessor for ItemMetrics();
  return (*(*(v29 - 1) + 56))(a1, 0, 1, v29);
}

uint64_t sub_1E6014B40(uint64_t a1)
{
  v2 = sub_1E65DD288();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6014B9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DD288();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6014C00@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v226 = a5;
  v202 = a4;
  v236 = a3;
  LODWORD(v214) = a2;
  v227 = a1;
  v232 = a6;
  v231 = sub_1E65DADF8();
  v219 = *(v231 - 8);
  v8 = *(v219 + 64);
  MEMORY[0x1EEE9AC00](v231);
  v217 = &v182 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D76F8();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v207 = &v182 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  v197 = *(v13 - 8);
  v14 = *(v197 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v208 = &v182 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v216 = &v182 - v17;
  v18 = sub_1E65D7848();
  v196 = *(v18 - 8);
  v19 = *(v196 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v195 = &v182 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1E65E5C28();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v194 = &v182 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65E5C08();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v193 = &v182 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1E65D7F88();
  v205 = *(v204 - 8);
  v27 = *(v205 + 8);
  MEMORY[0x1EEE9AC00](v204);
  v203 = &v182 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_1E65DAEB8();
  v200 = *(v201 - 8);
  v29 = *(v200 + 64);
  v30 = MEMORY[0x1EEE9AC00](v201);
  v198 = &v182 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v199 = &v182 - v32;
  v213 = sub_1E65D9AC8();
  v212 = *(v213 - 8);
  v33 = *(v212 + 64);
  MEMORY[0x1EEE9AC00](v213);
  v35 = &v182 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = sub_1E65D7268();
  v234 = *(v224 - 8);
  v36 = *(v234 + 64);
  MEMORY[0x1EEE9AC00](v224);
  v222 = &v182 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_1E65D72D8();
  v233 = *(v223 - 8);
  v38 = *(v233 + 64);
  v39 = MEMORY[0x1EEE9AC00](v223);
  v220 = &v182 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v221 = &v182 - v41;
  v230 = sub_1E65E0748();
  v218 = *(v230 - 8);
  v42 = *(v218 + 64);
  v43 = MEMORY[0x1EEE9AC00](v230);
  v206 = &v182 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v228 = &v182 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v237 = &v182 - v47;
  v48 = sub_1E65D8BB8();
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v51 = &v182 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ArtworkContent();
  v53 = *(*(v52 - 8) + 64);
  MEMORY[0x1EEE9AC00](v52 - 8);
  v55 = &v182 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = type metadata accessor for ArtworkDescriptor();
  v56 = *(*(v225 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v225);
  v211 = &v182 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v235 = &v182 - v59;
  v229 = sub_1E65D9CC8();
  v215 = *(v229 - 8);
  v60 = *(v215 + 64);
  v61 = MEMORY[0x1EEE9AC00](v229);
  v209 = &v182 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v182 - v63;
  v65 = sub_1E65D80C8();
  LOBYTE(v67) = v65;
  if ((v68 & 1) == 0)
  {
    sub_1E5F87058(v65, v66, 0);
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
    v72 = *(*(v71 - 8) + 56);
    v73 = v71;
    v74 = v232;

    return v72(v74, 1, 1, v73);
  }

  sub_1E65D8078();
  v210 = v64;
  sub_1E65D9C88();
  sub_1E65D8128();
  sub_1E63EB15C(v55);
  sub_1E6016A94(v51, MEMORY[0x1E69CB950]);
  sub_1E65D81D8();
  v185 = v18;
  if (v69)
  {

    if (sub_1E65D80D8() > 0)
    {
      v70 = &unk_1F5FA8220;
LABEL_10:
      v76 = sub_1E5F9B6D0(v70);
      goto LABEL_12;
    }
  }

  else if (sub_1E65D80D8() >= 1)
  {
    v70 = &unk_1F5FA81F8;
    goto LABEL_10;
  }

  v76 = MEMORY[0x1E69E7CD0];
LABEL_12:
  v186 = v13;
  v77 = sub_1E65DAE38();
  v78 = sub_1E65DAE38();
  v79 = sub_1E65E4B48();
  v80 = 4.0;
  if (v79)
  {
    v80 = 8.0;
  }

  v81 = 16.0;
  if (v79)
  {
    v81 = 18.0;
  }

  if (v77 == v78)
  {
    v82 = v81;
  }

  else
  {
    v82 = v80;
  }

  if (v77 == v78)
  {
    v83 = 12.0;
  }

  else
  {
    v83 = 8.0;
  }

  v84 = v235;
  sub_1E6016C3C(v55, v235, type metadata accessor for ArtworkContent);
  v85 = v225;
  *(v84 + *(v225 + 20)) = v76;
  v86 = v84 + v85[6];
  *v86 = 0;
  *(v86 + 8) = v82;
  *(v86 + 16) = v82;
  *(v86 + 24) = v83;
  *(v84 + v85[7]) = 1;
  v87 = (v84 + v85[8]);
  *v87 = 0;
  v87[1] = 0;
  v88 = sub_1E65D8248();
  v89 = v220;
  sub_1E63C4134(v227, v226, v88, v220);

  if (qword_1EE2D7250 != -1)
  {
LABEL_81:
    swift_once();
  }

  v187 = sub_1E65D7348();
  __swift_project_value_buffer(v187, qword_1EE2EA220);
  v90 = v234;
  v91 = *(v234 + 104);
  v92 = v222;
  v190 = *MEMORY[0x1E69686E8];
  v93 = v224;
  v214 = v234 + 104;
  v192 = v91;
  v91(v222);
  v94 = sub_1E6016A4C(&qword_1EE2D7280, MEMORY[0x1E6968848]);
  v95 = v223;
  v188 = v94;
  sub_1E65D73C8();
  v96 = *(v90 + 8);
  v234 = v90 + 8;
  v189 = v96;
  v96(v92, v93);
  v97 = *(v233 + 8);
  v233 += 8;
  v191 = v97;
  v97(v89, v95);
  sub_1E65E0738();
  v98 = sub_1E65D9AA8();
  v100 = v99;
  MEMORY[0x1E6941490]();
  v101 = sub_1E65D9AA8();
  v103 = v102;
  (*(v212 + 8))(v35, v213);
  if (v98 == v101 && v100 == v103)
  {
    v104 = 1;
  }

  else
  {
    v104 = sub_1E65E6C18();
  }

  v105 = v229;
  v106 = v230;
  v107 = v215;

  v108 = sub_1E65D8198();
  v109 = sub_1E65D9AA8();
  v111 = sub_1E637CA94(v109, v110, v108);

  v112 = MEMORY[0x1E69E7CC0];
  if (v104 & 1) == 0 && (v111)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
    v113 = *(v219 + 72);
    v114 = (*(v219 + 80) + 32) & ~*(v219 + 80);
    v115 = swift_allocObject();
    *(v115 + 16) = xmmword_1E65EB9E0;
    v116 = (v115 + v114);
    *v116 = sub_1E65D9AA8();
    v116[1] = v117;
    swift_storeEnumTagMultiPayload();
    *(v116 + v113) = 1;
    swift_storeEnumTagMultiPayload();
    v112 = v115;
  }

  v89 = v106;
  v118 = 1 << v67;
  v119 = v232;
  v120 = v218;
  v35 = v237;
  v121 = v228;
  v67 = v235;
  v122 = v210;
  if ((v118 & 0xE5) != 0)
  {

    (*(v120 + 8))(v35, v89);
    sub_1E6016A94(v67, type metadata accessor for ArtworkDescriptor);
    (*(v107 + 8))(v122, v105);
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
    return (*(*(v123 - 8) + 56))(v119, 1, 1, v123);
  }

  v236 = v112;
  v124 = v7;
  v7 = v211;
  if ((v118 & 0x112) != 0)
  {
    goto LABEL_33;
  }

  v184 = v124;
  v134 = sub_1E65D8078();
  if (!*(v202 + 2))
  {
LABEL_57:

    goto LABEL_33;
  }

  v213 = sub_1E6215038(v134, v135);
  v137 = v136;
  v35 = v237;
  v120 = v218;

  if ((v137 & 1) == 0)
  {
LABEL_33:
    (*(v107 + 16))(v209, v210, v105);
    sub_1E60169E8(v67, v7);
    (*(v120 + 16))(v121, v35, v89);
    v125 = sub_1E65D80A8();
    v239 = v236;
    sub_1E5FA9E2C(v125);
    v126 = v220;
    sub_1E63C4134(v227, v226, v239, v220);

    if (qword_1EE2D7248 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v187, qword_1EE2EA208);
    v127 = v222;
    v128 = v224;
    v192(v222, v190, v224);
    v129 = v223;
    sub_1E65D73C8();
    v189(v127, v128);
    v191(v126, v129);
    sub_1E65E0738();
    sub_1E65D76E8();
    sub_1E6016A4C(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor);
    sub_1E6016A4C(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor);
    sub_1E6016A4C(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor);
    v130 = MEMORY[0x1E69CC888];
    sub_1E6016A4C(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
    sub_1E6016A4C(&qword_1EE2D7030, v130);
    sub_1E6016A4C(&qword_1EE2D7028, v130);
    v131 = v232;
    v132 = v229;
    sub_1E65DF698();
    (*(v120 + 8))(v237, v230);
    sub_1E6016A94(v235, type metadata accessor for ArtworkDescriptor);
    (*(v107 + 8))(v210, v132);
    goto LABEL_36;
  }

  v138 = v200;
  v139 = v198;
  v89 = v201;
  (*(v200 + 16))(v198, *(v202 + 7) + *(v200 + 72) * v213, v201);
  (*(v138 + 32))(v199, v139, v89);
  v140 = sub_1E65DAE88();
  v67 = v140 + 56;
  v141 = 1 << *(v140 + 32);
  v142 = -1;
  if (v141 < 64)
  {
    v142 = ~(-1 << v141);
  }

  v107 = v142 & *(v140 + 56);
  v120 = (v141 + 63) >> 6;
  v202 = v205 + 16;
  v198 = v205 + 8;
  v212 = v140;

  v35 = 0;
  v183 = 0;
  v121 = 0;
  v7 = v204;
  while (v107)
  {
    v213 = v121;
LABEL_48:
    v144 = __clz(__rbit64(v107));
    v107 &= v107 - 1;
    v145 = v205;
    v146 = v203;
    (*(v205 + 2))(v203, *(v212 + 48) + *(v205 + 9) * (v144 | (v35 << 6)), v7);
    v147 = sub_1E65D7F78();
    v89 = v148;
    v105 = v149;
    v145[1](v146, v7);
    if ((v105 & 1) == 0)
    {
      sub_1E5F87058(v147, v89, 0);
      goto LABEL_54;
    }

    if (v147 == 2)
    {
      v121 = v213 + 1;
      if (__OFADD__(v213, 1))
      {
        __break(1u);
LABEL_82:
        swift_once();
        goto LABEL_79;
      }
    }

    else
    {
LABEL_54:
      v150 = __OFADD__(v183++, 1);
      v121 = v213;
      if (v150)
      {
        __break(1u);
        goto LABEL_57;
      }
    }
  }

  while (1)
  {
    v143 = (v35 + 1);
    if (__OFADD__(v35, 1))
    {
      __break(1u);
      goto LABEL_81;
    }

    if (v143 >= v120)
    {
      break;
    }

    v107 = *(v67 + 8 * v143);
    ++v35;
    if (v107)
    {
      v213 = v121;
      v35 = v143;
      goto LABEL_48;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E68, &qword_1E65ECC18);
  v151 = *(v197 + 72);
  v152 = (*(v197 + 80) + 32) & ~*(v197 + 80);
  v153 = swift_allocObject();
  v154 = (v153 + v152);
  v155 = v183;
  v213 = v153;
  if (v183 <= 0 && v121 <= 0)
  {
    v156 = *(v219 + 56);
    v157 = v231;
    v156(v153 + v152, 1, 1, v231);
    goto LABEL_65;
  }

  *v154 = 1;
  v158 = v231;
  swift_storeEnumTagMultiPayload();
  v156 = *(v219 + 56);
  v212 = (v219 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v156(v154, 0, 1, v158);
  if (v155 <= 0)
  {
    v157 = v158;
LABEL_65:
    v156(&v154[v151], 1, 1, v157);
    v156(&v154[2 * v151], 1, 1, v157);
    v164 = &v154[3 * v151];
    if (v121 < 1)
    {
      goto LABEL_68;
    }

LABEL_66:
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v239 = v121;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v166 = [objc_opt_self() bundleForClass_];
    (*(v196 + 16))(v195, v227, v185);
    *v164 = sub_1E65E5D48();
    v164[1] = v167;
    swift_storeEnumTagMultiPayload();
    v156(v164, 0, 1, v157);
  }

  else
  {
    v205 = &v154[v151];
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v239 = v155;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    v159 = swift_getObjCClassFromMetadata();
    v160 = [objc_opt_self() bundleForClass_];
    (*(v196 + 16))(v195, v227, v185);
    v161 = sub_1E65E5D48();
    v162 = v205;
    *v205 = v161;
    *(v162 + 1) = v163;
    swift_storeEnumTagMultiPayload();
    v156(v162, 0, 1, v158);
    if (v121 > 0)
    {
      v154[2 * v151] = 0;
      swift_storeEnumTagMultiPayload();
      v156(&v154[2 * v151], 0, 1, v158);
      v164 = &v154[3 * v151];
      v157 = v158;
      goto LABEL_66;
    }

    v156(&v154[2 * v151], 1, 1, v158);
    v164 = &v154[3 * v151];
    v157 = v158;
LABEL_68:
    v156(v164, 1, 1, v157);
  }

  v168 = v208;
  v169 = (v219 + 48);
  v170 = MEMORY[0x1E69E7CC0];
  v171 = 4;
  v172 = v154;
  v173 = v216;
  do
  {
    sub_1E6016AF4(v172, v173);
    sub_1E6016B64(v173, v168);
    if ((*v169)(v168, 1, v157) == 1)
    {
      sub_1E6016BD4(v168);
    }

    else
    {
      sub_1E6016C3C(v168, v217, MEMORY[0x1E69CD300]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v170 = sub_1E64F6308(0, v170[2] + 1, 1, v170);
      }

      v175 = v170[2];
      v174 = v170[3];
      if (v175 >= v174 >> 1)
      {
        v170 = sub_1E64F6308(v174 > 1, v175 + 1, 1, v170);
      }

      v170[2] = v175 + 1;
      sub_1E6016C3C(v217, v170 + ((*(v219 + 80) + 32) & ~*(v219 + 80)) + *(v219 + 72) * v175, MEMORY[0x1E69CD300]);
      v157 = v231;
      v168 = v208;
    }

    v172 += v151;
    --v171;
  }

  while (v171);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v7 = v215;
  (*(v215 + 16))(v209, v210, v229);
  sub_1E60169E8(v235, v211);
  v120 = v218;
  (*(v218 + 16))(v228, v237, v230);
  v176 = sub_1E65D80A8();
  v238 = v236;
  sub_1E5FA9E2C(v176);
  sub_1E5FA9E2C(v170);
  v146 = v220;
  sub_1E63C4134(v227, v226, v238, v220);

  if (qword_1EE2D7248 != -1)
  {
    goto LABEL_82;
  }

LABEL_79:
  __swift_project_value_buffer(v187, qword_1EE2EA208);
  v177 = v222;
  v178 = v224;
  v192(v222, v190, v224);
  v179 = v223;
  sub_1E65D73C8();
  v189(v177, v178);
  v191(v146, v179);
  sub_1E65E0738();
  sub_1E65D76E8();
  sub_1E6016A4C(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor);
  sub_1E6016A4C(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor);
  v180 = MEMORY[0x1E69CC888];
  sub_1E6016A4C(&qword_1EE2D7018, MEMORY[0x1E69CC888]);
  sub_1E6016A4C(&qword_1EE2D7030, v180);
  sub_1E6016A4C(&qword_1EE2D7028, v180);
  v131 = v232;
  v181 = v229;
  sub_1E65DF698();
  (*(v200 + 8))(v199, v201);
  (*(v120 + 8))(v237, v230);
  sub_1E6016A94(v235, type metadata accessor for ArtworkDescriptor);
  (*(v7 + 8))(v210, v181);
LABEL_36:
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  return (*(*(v133 - 8) + 56))(v131, 0, 1, v133);
}

uint64_t sub_1E60169E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArtworkDescriptor();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6016A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1E6016A94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6016AF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6016B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6016BD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E60, &qword_1E65ECC10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6016C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6016CA4(uint64_t a1)
{
  v39 = sub_1E65D9CC8();
  v3 = *(v39 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v31 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1E601C17C(0, v6, 0);
    v42 = v43;
    v8 = a1 + 56;
    v9 = -1 << *(a1 + 32);
    result = sub_1E65E6748();
    v10 = result;
    v11 = 0;
    v36 = v3 + 8;
    v37 = v3 + 16;
    v32 = a1 + 64;
    v33 = v6;
    v34 = v3;
    v35 = a1 + 56;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v14 = *(a1 + 36);
      v40 = v11;
      v41 = v14;
      v15 = v38;
      v16 = v39;
      (*(v3 + 16))(v38, *(a1 + 48) + *(v3 + 72) * v10, v39);
      v17 = sub_1E65D9C98();
      v19 = v18;
      result = (*(v3 + 8))(v15, v16);
      v20 = v42;
      v43 = v42;
      v22 = *(v42 + 16);
      v21 = *(v42 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_1E601C17C((v21 > 1), v22 + 1, 1);
        v20 = v43;
      }

      *(v20 + 16) = v22 + 1;
      v23 = v20 + 24 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v19;
      *(v23 + 48) = 1;
      v12 = 1 << *(a1 + 32);
      if (v10 >= v12)
      {
        goto LABEL_23;
      }

      v8 = v35;
      v24 = *(v35 + 8 * v13);
      if ((v24 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      v42 = v20;
      if (v41 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v25 = v24 & (-2 << (v10 & 0x3F));
      if (v25)
      {
        v12 = __clz(__rbit64(v25)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v3 = v34;
      }

      else
      {
        v26 = v13 << 6;
        v27 = v13 + 1;
        v28 = (v32 + 8 * v13);
        v3 = v34;
        while (v27 < (v12 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1E5F87098(v10, v41, 0);
            v12 = __clz(__rbit64(v29)) + v26;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v10, v41, 0);
      }

LABEL_4:
      v11 = v40 + 1;
      v10 = v12;
      if (v40 + 1 == v33)
      {
        return v42;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}